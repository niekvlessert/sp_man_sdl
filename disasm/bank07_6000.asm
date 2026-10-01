; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank07_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank07.bin

	org 06000h

	jp 08003h		;6000
	ld a,(0ca41h)		;6003
	or a			;6006
	jr nz,l601dh		;6007
	ld a,(0ce76h)		;6009
sub_600ch:
	or a			;600c
	ret nz			;600d
	ld a,(0ce75h)		;600e
	or a			;6011
	ret nz			;6012
	call 08026h		;6013
	call 082deh		;6016
	call 0826dh		;6019
	ret			;601c
l601dh:
	ld bc,00500h		;601d
l6020h:
	dec bc			;6020
	ld a,b			;6021
	or c			;6022
	jr nz,l6020h		;6023
	ret			;6025
	ld iy,0ca40h		;6026
	call 08039h		;602a
	ret			;602d
	ld iy,0cac0h		;602e
	call 08039h		;6032
	ld iy,0cae0h		;6035
	ld a,(iy+000h)		;6039
	and a			;603c
	ret z			;603d
	exx			;603e
	ld l,(iy+008h)		;603f
	dec l			;6042
	ld h,(iy+013h)		;6043
	ld e,(iy+00ah)		;6046
	dec e			;6049
	ld a,(iy+014h)		;604a
	and 07fh		;604d
	ld d,a			;604f
	exx			;6050
	ld ix,0ce80h		;6051
	ld b,014h		;6055
l6057h:
	push bc			;6057
	ld a,(ix+000h)		;6058
	cp 05fh			;605b
	jr z,l609ch		;605d
	dec a			;605f
	cp 07fh			;6060
	jr nc,l609ch		;6062
	ld a,(ix+015h)		;6064
	and 0b0h		;6067
	cp 0b0h			;6069
	jr nz,l609ch		;606b
	exx			;606d
	ld c,(ix+00ah)		;606e
	ld b,(ix+014h)		;6071
	res 7,b			;6074
	ld a,b			;6076
	add a,d			;6077
	ld b,a			;6078
	ld a,e			;6079
	sub c			;607a
	add a,d			;607b
	cp b			;607c
	jr nc,l609bh		;607d
	ex de,hl		;607f
	ld c,(ix+008h)		;6080
	ld b,(ix+013h)		;6083
	ld a,b			;6086
	add a,d			;6087
	ld b,a			;6088
	ld a,e			;6089
	sub c			;608a
	add a,d			;608b
	cp b			;608c
	ex de,hl		;608d
	jr nc,l609bh		;608e
	push hl			;6090
	push de			;6091
	push ix			;6092
	call 080e9h		;6094
	pop ix			;6097
	pop de			;6099
	pop hl			;609a
l609bh:
	exx			;609b
l609ch:
	pop bc			;609c
	ld de,00040h		;609d
	add ix,de		;60a0
	djnz l6057h		;60a2
	ret			;60a4
	ld de,0fff3h		;60a5
	add hl,de		;60a8
	ld c,(hl)		;60a9
	inc l			;60aa
	inc l			;60ab
	ld e,(hl)		;60ac
	ld a,009h		;60ad
	add a,l			;60af
	ld l,a			;60b0
	jr nc,l60b4h		;60b1
	inc h			;60b3
l60b4h:
	ld b,(hl)		;60b4
	inc l			;60b5
	ld a,(hl)		;60b6
	and 07fh		;60b7
	ld d,a			;60b9
	push de			;60ba
	exx			;60bb
	pop bc			;60bc
	exx			;60bd
	ld e,(iy+008h)		;60be
	ld d,(iy+013h)		;60c1
	exx			;60c4
	ld e,(iy+00ah)		;60c5
	ld a,(iy+014h)		;60c8
	and 07fh		;60cb
	ld d,a			;60cd
	exx			;60ce
	ret			;60cf
	ld a,b			;60d0
	add a,d			;60d1
	ld b,a			;60d2
	ld a,e			;60d3
	sub c			;60d4
	add a,d			;60d5
	cp b			;60d6
	ret nc			;60d7
	exx			;60d8
	ld a,b			;60d9
	add a,d			;60da
	ld b,a			;60db
	ld a,e			;60dc
	sub c			;60dd
	add a,d			;60de
	cp b			;60df
	exx			;60e0
	ret			;60e1
	ld a,l			;60e2
	sub 014h		;60e3
	ld l,a			;60e5
	push hl			;60e6
	pop ix			;60e7
	call 0815eh		;60e9
l60ech:
	push bc			;60ec
	call 0816bh		;60ed
l60f0h:
	push bc			;60f0
	call 08198h		;60f1
	jr c,l60fbh		;60f4
	call 080d0h		;60f6
	jr c,l610dh		;60f9
l60fbh:
	pop bc			;60fb
	djnz l60f0h		;60fc
	pop bc			;60fe
	ld hl,(0cb14h)		;60ff
	ld de,00006h		;6102
	add hl,de		;6105
	ld (0cb14h),hl		;6106
	djnz l60ech		;6109
	or a			;610b
	ret			;610c
l610dh:
	pop bc			;610d
	pop bc			;610e
	push ix			;610f
	push iy			;6111
	call 0813fh		;6113
	call 0815ah		;6116
	push ix			;6119
	push iy			;611b
	pop ix			;611d
	pop iy			;611f
	call 0813fh		;6121
	call 0815ah		;6124
	ld a,(ix+000h)		;6127
	cp 004h			;612a
	jr nz,l6139h		;612c
	ld e,0e8h		;612e
	ld b,001h		;6130
	call sub_78e6h		;6132
	ld (ix+000h),000h	;6135
l6139h:
	pop iy			;6139
	pop ix			;613b
	scf			;613d
	ret			;613e
	ld a,(ix+000h)		;613f
	ld c,001h		;6142
	cp 004h			;6144
	jr z,l6154h		;6146
	sub 002h		;6148
	cp 008h			;614a
	jr nc,l6150h		;614c
	ld c,002h		;614e
l6150h:
	ld (iy+004h),c		;6150
	ret			;6153
l6154h:
	ld a,(ix+006h)		;6154
	ld c,a			;6157
	jr l6150h		;6158
	call sub_600ch		;615a
	ret			;615d
	ld a,(iy+000h)		;615e
	ld b,(iy+005h)		;6161
	call 08178h		;6164
	ld (0cb14h),hl		;6167
	ret			;616a
	ld a,(ix+000h)		;616b
	ld b,(ix+005h)		;616e
	call 08178h		;6171
	ld (0cb16h),hl		;6174
	ret			;6177
	dec a			;6178
	ld h,000h		;6179
	ld l,a			;617b
	ld de,08496h		;617c
	add hl,de		;617f
	ld c,(hl)		;6180
	ld de,08496h		;6181
	ld l,a			;6184
	ld h,000h		;6185
	add hl,hl		;6187
	add hl,de		;6188
	ld e,(hl)		;6189
	inc hl			;618a
	ld d,(hl)		;618b
	ld l,b			;618c
	ld h,000h		;618d
	add hl,hl		;618f
	add hl,de		;6190
	ld a,(hl)		;6191
	inc hl			;6192
	ld h,(hl)		;6193
	ld l,a			;6194
	ld b,(hl)		;6195
	inc hl			;6196
	ret			;6197
	call 081b0h		;6198
	ret c			;619b
	push bc			;619c
	push de			;619d
	call 081c9h		;619e
	jp c,0469dh		;61a1
	push bc			;61a4
	push de			;61a5
	exx			;61a6
	pop de			;61a7
	exx			;61a8
	pop de			;61a9
	exx			;61aa
	pop bc			;61ab
	exx			;61ac
	pop bc			;61ad
	or a			;61ae
	ret			;61af
	ld e,(iy+009h)		;61b0
	ld d,(iy+00ah)		;61b3
	ld l,(iy+007h)		;61b6
	ld h,(iy+008h)		;61b9
	ld bc,(0cb14h)		;61bc
	push bc			;61c0
	call 081e0h		;61c1
	pop hl			;61c4
	ld (0cb14h),hl		;61c5
	ret			;61c8
	ld e,(ix+009h)		;61c9
	ld d,(ix+00ah)		;61cc
	ld l,(ix+007h)		;61cf
	ld h,(ix+008h)		;61d2
	ld bc,(0cb16h)		;61d5
	call 081e0h		;61d9
	ld (0cb16h),hl		;61dc
	ret			;61df
	add hl,hl		;61e0
	add hl,hl		;61e1
	add hl,hl		;61e2
	ld a,h			;61e3
	ex de,hl		;61e4
	add hl,hl		;61e5
	add hl,hl		;61e6
	add hl,hl		;61e7
	ex af,af'		;61e8
	ld a,h			;61e9
	ex af,af'		;61ea
	ld l,c			;61eb
	ld h,b			;61ec
	inc hl			;61ed
	add a,(hl)		;61ee
	ld c,a			;61ef
	inc hl			;61f0
	ex af,af'		;61f1
	add a,(hl)		;61f2
	ld b,a			;61f3
	ex af,af'		;61f4
	inc hl			;61f5
	inc hl			;61f6
	inc hl			;61f7
	ld a,(hl)		;61f8
	or a			;61f9
	jp z,08216h		;61fa
	inc hl			;61fd
	push hl			;61fe
	ld de,08219h		;61ff
	ld l,a			;6202
	ld h,000h		;6203
	add hl,hl		;6205
	add hl,hl		;6206
	add hl,de		;6207
	ld a,(hl)		;6208
	add a,c			;6209
	ld c,a			;620a
	inc hl			;620b
	ld a,b			;620c
	ld b,(hl)		;620d
	inc hl			;620e
	add a,(hl)		;620f
	ld e,a			;6210
	inc hl			;6211
	ld d,(hl)		;6212
	pop hl			;6213
	or a			;6214
	ret			;6215
	inc hl			;6216
	scf			;6217
	ret			;6218
	ex af,af'		;6219
	ld b,003h		;621a
	ld a,(bc)		;621c
	add hl,bc		;621d
	inc b			;621e
	ld b,006h		;621f
	rlca			;6221
	ld (bc),a		;6222
	nop			;6223
	djnz l6226h		;6224
l6226h:
	djnz l6228h		;6226
l6228h:
	djnz l6230h		;6228
	inc b			;622a
	ld b,004h		;622b
	nop			;622d
	djnz l6235h		;622e
l6230h:
	ld b,000h		;6230
	nop			;6232
	djnz $+18		;6233
l6235h:
	ld (bc),a		;6235
	ld (bc),a		;6236
	ld c,00eh		;6237
	inc b			;6239
	inc b			;623a
	inc c			;623b
	inc c			;623c
	nop			;623d
	nop			;623e
	nop			;623f
	nop			;6240
	ld (bc),a		;6241
	ld c,000h		;6242
	djnz l6246h		;6244
l6246h:
	djnz l624fh		;6246
	ld (bc),a		;6248
	rlca			;6249
	ld (bc),a		;624a
	nop			;624b
	djnz l6254h		;624c
	inc b			;624e
l624fh:
	nop			;624f
	djnz l6256h		;6250
	ex af,af'		;6252
	nop			;6253
l6254h:
	djnz l6256h		;6254
l6256h:
	djnz $+9		;6256
	ld (bc),a		;6258
	nop			;6259
	djnz l6262h		;625a
	inc b			;625c
	nop			;625d
	djnz l6264h		;625e
	ex af,af'		;6260
	inc b			;6261
l6262h:
	ex af,af'		;6262
	nop			;6263
l6264h:
	djnz l6268h		;6264
	inc c			;6266
	nop			;6267
l6268h:
	djnz l626bh		;6268
	rrca			;626a
l626bh:
	nop			;626b
	djnz l626bh		;626c
	ld hl,0ca40h		;626e
	call 08280h		;6271
	ret			;6274
	ld iy,0cac0h		;6275
	call 08280h		;6279
	ld iy,0cae0h		;627c
	ld ix,0d460h		;6280
	ld b,012h		;6284
	exx			;6286
	ld l,(iy+008h)		;6287
	dec l			;628a
	ld h,(iy+013h)		;628b
	ld e,(iy+00ah)		;628e
	dec e			;6291
	ld a,(iy+014h)		;6292
	and 07fh		;6295
	ld d,a			;6297
	exx			;6298
l6299h:
	push bc			;6299
	ld a,(ix+000h)		;629a
	or a			;629d
	jr z,l62d5h		;629e
	bit 4,(ix+015h)		;62a0
	jr z,l62d5h		;62a4
	exx			;62a6
	ld c,(ix+00ah)		;62a7
	ld b,(ix+014h)		;62aa
	res 7,b			;62ad
	ld a,b			;62af
	add a,d			;62b0
	ld b,a			;62b1
	ld a,e			;62b2
	sub c			;62b3
	add a,d			;62b4
	cp b			;62b5
	jr nc,l62d4h		;62b6
	ex de,hl		;62b8
	ld c,(ix+008h)		;62b9
	ld b,(ix+013h)		;62bc
	ld a,b			;62bf
	add a,d			;62c0
	ld b,a			;62c1
	ld a,e			;62c2
	sub c			;62c3
	add a,d			;62c4
	cp b			;62c5
	ex de,hl		;62c6
	jr nc,l62d4h		;62c7
	push hl			;62c9
	push de			;62ca
	push ix			;62cb
	call 080e9h		;62cd
	pop ix			;62d0
	pop de			;62d2
	pop hl			;62d3
l62d4h:
	exx			;62d4
l62d5h:
	pop bc			;62d5
	ld de,00020h		;62d6
	add ix,de		;62d9
	djnz l6299h		;62db
	ret			;62dd
	call 082e5h		;62de
	call 08320h		;62e1
	ret			;62e4
	ld hl,0d700h		;62e5
	call 083bdh		;62e8
	ld hl,0cc40h		;62eb
	ld a,008h		;62ee
	ld bc,00020h		;62f0
	ld d,0d7h		;62f3
l62f5h:
	ex af,af'		;62f5
	ld a,(hl)		;62f6
	or a			;62f7
	jr z,l631ah		;62f8
	set 3,l			;62fa
	ld a,(hl)		;62fc
	inc a			;62fd
	jp m,08315h		;62fe
	add a,a			;6301
	add a,a			;6302
	add a,a			;6303
	and 0f0h		;6304
	ld e,a			;6306
	set 1,l			;6307
	ld a,(hl)		;6309
	inc a			;630a
	jp m,08313h		;630b
	rrca			;630e
	and 00fh		;630f
	or e			;6311
	ld e,a			;6312
	res 1,l			;6313
	res 3,l			;6315
	ld a,001h		;6317
	ld (de),a		;6319
l631ah:
	add hl,bc		;631a
	ex af,af'		;631b
	dec a			;631c
	jr nz,l62f5h		;631d
	ret			;631f
	ld hl,0ce80h		;6320
	ld b,014h		;6323
	ld d,0d7h		;6325
l6327h:
	push bc			;6327
	ld a,(hl)		;6328
	cp 05fh			;6329
	jr z,l637eh		;632b
	dec a			;632d
	jp m,0837eh		;632e
	ld bc,00015h		;6331
	add hl,bc		;6334
	ld a,(hl)		;6335
	and 0b0h		;6336
	xor 0b0h		;6338
	jr nz,l637eh		;633a
	sbc hl,bc		;633c
	set 3,l			;633e
	ld a,(hl)		;6340
	add a,a			;6341
	add a,a			;6342
	add a,a			;6343
	and 0f0h		;6344
	ld e,a			;6346
	set 1,l			;6347
	ld a,(hl)		;6349
	rrca			;634a
	and 00fh		;634b
	or e			;634d
	ld e,a			;634e
	ld a,009h		;634f
	add a,l			;6351
	ld l,a			;6352
	ld c,(hl)		;6353
	res 7,c			;6354
	inc hl			;6356
	ld b,(hl)		;6357
	res 7,b			;6358
	srl b			;635a
	srl c			;635c
l635eh:
	push bc			;635e
	push de			;635f
l6360h:
	ld a,(de)		;6360
	inc e			;6361
	jr z,l6373h		;6362
	or a			;6364
	jr nz,l638ah		;6365
	dec b			;6367
	jr z,l6373h		;6368
	ld a,(de)		;636a
	inc e			;636b
	jr z,l6373h		;636c
	or a			;636e
	jr nz,l638ah		;636f
	djnz l6360h		;6371
l6373h:
	pop de			;6373
	ld a,e			;6374
	add a,010h		;6375
	ld e,a			;6377
	pop bc			;6378
	jr c,l637eh		;6379
	dec c			;637b
	jr nz,l635eh		;637c
l637eh:
	ld a,l			;637e
	and 0e0h		;637f
	ld l,a			;6381
	ld bc,00040h		;6382
	add hl,bc		;6385
l6386h:
	pop bc			;6386
	djnz l6327h		;6387
	ret			;6389
l638ah:
	pop bc			;638a
	pop bc			;638b
	push hl			;638c
	push de			;638d
	call 08395h		;638e
	pop de			;6391
	pop hl			;6392
	jr l637eh		;6393
	ld a,l			;6395
	and 0e0h		;6396
	ld l,a			;6398
	push hl			;6399
	pop iy			;639a
	ld hl,0cc40h		;639c
	ld b,008h		;639f
l63a1h:
	push hl			;63a1
	push bc			;63a2
	ld a,(hl)		;63a3
	or a			;63a4
	jr z,l63b4h		;63a5
	ld de,00015h		;63a7
	add hl,de		;63aa
	call 080a5h		;63ab
	call 080d0h		;63ae
	call c,080e2h		;63b1
l63b4h:
	pop bc			;63b4
	pop hl			;63b5
	ld de,00020h		;63b6
	add hl,de		;63b9
	djnz l63a1h		;63ba
	ret			;63bc
	xor a			;63bd
	ld l,a			;63be
	ld (hl),a		;63bf
	inc l			;63c0
	ld (hl),a		;63c1
	inc l			;63c2
	ld (hl),a		;63c3
	inc l			;63c4
	ld (hl),a		;63c5
	inc l			;63c6
	ld (hl),a		;63c7
	inc l			;63c8
	ld (hl),a		;63c9
	inc l			;63ca
	ld (hl),a		;63cb
	inc l			;63cc
	ld (hl),a		;63cd
	inc l			;63ce
	jp nz,083bfh		;63cf
	ret			;63d2
	rst 38h			;63d3
	rst 38h			;63d4
	rst 38h			;63d5
	rst 38h			;63d6
	rst 38h			;63d7
	rst 38h			;63d8
	rst 38h			;63d9
	rst 38h			;63da
	rst 38h			;63db
	rst 38h			;63dc
	rst 38h			;63dd
	rst 38h			;63de
	rst 38h			;63df
	rst 38h			;63e0
	rst 38h			;63e1
	rst 38h			;63e2
	rst 38h			;63e3
	rst 38h			;63e4
	rst 38h			;63e5
	rst 38h			;63e6
	rst 38h			;63e7
	rst 38h			;63e8
	rst 38h			;63e9
	rst 38h			;63ea
	rst 38h			;63eb
	rst 38h			;63ec
	rst 38h			;63ed
	rst 38h			;63ee
	rst 38h			;63ef
	rst 38h			;63f0
	rst 38h			;63f1
	rst 38h			;63f2
	rst 38h			;63f3
	rst 38h			;63f4
	rst 38h			;63f5
	rst 38h			;63f6
	rst 38h			;63f7
	rst 38h			;63f8
	rst 38h			;63f9
	rst 38h			;63fa
	rst 38h			;63fb
	rst 38h			;63fc
	rst 38h			;63fd
	rst 38h			;63fe
	rst 38h			;63ff
	jr nc,l6386h		;6400
	dec (hl)		;6402
	add a,h			;6403
	add hl,sp		;6404
	add a,h			;6405
	add hl,sp		;6406
	add a,h			;6407
l6408h:
	ld b,b			;6408
	add a,h			;6409
	ld c,b			;640a
	add a,h			;640b
	ld c,l			;640c
	add a,h			;640d
	ld c,l			;640e
	add a,h			;640f
	ld d,d			;6410
	add a,h			;6411
	ld d,(hl)		;6412
	add a,h			;6413
	ld e,e			;6414
	add a,h			;6415
	ld h,e			;6416
	add a,h			;6417
	ld l,d			;6418
	add a,h			;6419
	ld (hl),d		;641a
	add a,h			;641b
	ld (hl),h		;641c
	add a,h			;641d
	ld a,d			;641e
	add a,h			;641f
	ld a,(hl)		;6420
	add a,h			;6421
	add a,d			;6422
	add a,h			;6423
	add a,h			;6424
	add a,h			;6425
	ld (hl),d		;6426
	add a,h			;6427
	add a,(hl)		;6428
	add a,h			;6429
	adc a,d			;642a
	add a,h			;642b
	sub b			;642c
	add a,h			;642d
	sub e			;642e
	add a,h			;642f
	nop			;6430
	ld (bc),a		;6431
	ld bc,0ff03h		;6432
	inc bc			;6435
	nop			;6436
	inc bc			;6437
	rst 38h			;6438
	ld (bc),a		;6439
	nop			;643a
	nop			;643b
	inc bc			;643c
	inc bc			;643d
	ld bc,002ffh		;643e
	nop			;6441
	ld (bc),a		;6442
	ld bc,00003h		;6443
	inc bc			;6446
	rst 38h			;6447
	ld (bc),a		;6448
	ld (bc),a		;6449
	nop			;644a
	ld (bc),a		;644b
	rst 38h			;644c
	inc bc			;644d
	ld bc,00301h		;644e
	rst 38h			;6451
	ld bc,00003h		;6452
	rst 38h			;6455
	nop			;6456
	inc bc			;6457
	nop			;6458
	ld (bc),a		;6459
	rst 38h			;645a
	ld (bc),a		;645b
	nop			;645c
	ld (bc),a		;645d
	ld bc,00102h		;645e
	ld (bc),a		;6461
	rst 38h			;6462
	ld (bc),a		;6463
	ld bc,00003h		;6464
	nop			;6467
	ld (bc),a		;6468
	rst 38h			;6469
	nop			;646a
	ld (bc),a		;646b
	nop			;646c
	inc bc			;646d
l646eh:
	inc bc			;646e
	ld bc,0ff02h		;646f
	ld bc,003ffh		;6472
	ld bc,00002h		;6475
	ld (bc),a		;6478
	rst 38h			;6479
	ld bc,00103h		;647a
	rst 38h			;647d
	inc bc			;647e
	ld bc,0ff03h		;647f
	ld (bc),a		;6482
	rst 38h			;6483
	inc bc			;6484
	rst 38h			;6485
	inc bc			;6486
	nop			;6487
	ld (bc),a		;6488
	rst 38h			;6489
	ld (bc),a		;648a
	ld (bc),a		;648b
	nop			;648c
	nop			;648d
	ld (bc),a		;648e
	rst 38h			;648f
	nop			;6490
	ld (bc),a		;6491
	rst 38h			;6492
	nop			;6493
	inc bc			;6494
	rst 38h			;6495
	push bc			;6496
	xor c			;6497
	exx			;6498
	xor c			;6499
	pop hl			;649a
	xor c			;649b
	ex (sp),hl		;649c
	xor c			;649d
	rlca			;649e
	xor d			;649f
	rlca			;64a0
	xor d			;64a1
	rlca			;64a2
	xor d			;64a3
	add hl,bc		;64a4
	xor d			;64a5
	add hl,de		;64a6
	xor d			;64a7
	dec de			;64a8
	xor d			;64a9
	dec sp			;64aa
	xor d			;64ab
	dec sp			;64ac
	xor d			;64ad
	dec sp			;64ae
l64afh:
	xor d			;64af
	ld b,c			;64b0
	xor d			;64b1
	ld b,c			;64b2
	xor d			;64b3
	ld (028ach),hl		;64b4
	xor h			;64b7
	ld l,0ach		;64b8
	ld (036ach),a		;64ba
	xor h			;64bd
	ld (hl),0ach		;64be
	jr c,l646eh		;64c0
	ld a,(03cach)		;64c2
	xor h			;64c5
	ld b,b			;64c6
	xor h			;64c7
	ld c,d			;64c8
	xor h			;64c9
	inc (hl)		;64ca
	xor a			;64cb
	ld (hl),0afh		;64cc
	ld (hl),0afh		;64ce
	ld l,l			;64d0
	xor l			;64d1
	ld l,a			;64d2
	xor l			;64d3
	ld a,c			;64d4
	xor l			;64d5
	ld a,c			;64d6
	xor l			;64d7
	add a,c			;64d8
	xor l			;64d9
	add a,c			;64da
	xor l			;64db
	add a,e			;64dc
	xor l			;64dd
	add a,e			;64de
	xor l			;64df
	add a,a			;64e0
	xor l			;64e1
	ld c,d			;64e2
	xor (hl)		;64e3
	ld c,(hl)		;64e4
	xor (hl)		;64e5
	ld c,(hl)		;64e6
	xor (hl)		;64e7
	ld c,(hl)		;64e8
	xor (hl)		;64e9
	ld d,b			;64ea
	xor (hl)		;64eb
	ld d,b			;64ec
	xor (hl)		;64ed
	ld d,d			;64ee
	xor (hl)		;64ef
	ld d,(hl)		;64f0
	xor (hl)		;64f1
	ld d,(hl)		;64f2
	xor (hl)		;64f3
	ld e,b			;64f4
	xor (hl)		;64f5
	ld e,d			;64f6
	xor (hl)		;64f7
	inc a			;64f8
	xor a			;64f9
	inc a			;64fa
	xor a			;64fb
	ld a,0afh		;64fc
	jr c,l64afh		;64fe
	ld a,0afh		;6500
	ld l,l			;6502
	xor a			;6503
	ld (hl),l		;6504
	xor a			;6505
	ld (hl),l		;6506
	xor a			;6507
	ld (hl),l		;6508
	xor a			;6509
	ld (hl),l		;650a
	xor a			;650b
	add a,l			;650c
	xor a			;650d
	add a,l			;650e
	xor a			;650f
	add a,l			;6510
	xor a			;6511
	add a,l			;6512
	xor a			;6513
	add hl,bc		;6514
	or b			;6515
	ld de,011b0h		;6516
	or b			;6519
	inc de			;651a
	or b			;651b
	xor e			;651c
	or b			;651d
	xor a			;651e
	or b			;651f
	or c			;6520
	or b			;6521
	or c			;6522
	or b			;6523
	or c			;6524
	or b			;6525
	cp c			;6526
	or b			;6527
	cp l			;6528
	or b			;6529
	sbc a,e			;652a
	or c			;652b
	sbc a,l			;652c
	or c			;652d
	xor l			;652e
	or c			;652f
	sbc a,l			;6530
	or c			;6531
	or c			;6532
	or c			;6533
	or c			;6534
	or c			;6535
	and b			;6536
	or d			;6537
	and b			;6538
	or d			;6539
	and b			;653a
	or d			;653b
	and b			;653c
	or d			;653d
	adc a,c			;653e
	xor l			;653f
	and b			;6540
	or d			;6541
	and b			;6542
	or d			;6543
	and d			;6544
	or d			;6545
	and b			;6546
	or d			;6547
	and b			;6548
	or d			;6549
	and b			;654a
	or d			;654b
	ccf			;654c
	or b			;654d
	and b			;654e
	or d			;654f
	and (hl)		;6550
	or d			;6551
	and b			;6552
	or d			;6553
	xor h			;6554
	or d			;6555
	or b			;6556
	or d			;6557
	add a,0b2h		;6558
	adc a,0b2h		;655a
	ld e,(hl)		;655c
	xor (hl)		;655d
	adc a,0b2h		;655e
	or h			;6560
	or d			;6561
	or (hl)			;6562
	or d			;6563
	adc a,a			;6564
	xor l			;6565
	and b			;6566
	or d			;6567
	and b			;6568
	or d			;6569
	and b			;656a
	or d			;656b
	and b			;656c
	or d			;656d
	and b			;656e
	or d			;656f
	call c,0e2b2h		;6570
	or d			;6573
	sub 0b2h		;6574
	and b			;6576
	or d			;6577
	and b			;6578
	or d			;6579
	and b			;657a
l657bh:
	or d			;657b
	ret c			;657c
	or d			;657d
	jp c,0a0b2h		;657e
	or d			;6581
	and b			;6582
	or d			;6583
	or l			;6584
	or c			;6585
	or l			;6586
	or c			;6587
	and b			;6588
	or d			;6589
	and b			;658a
	or d			;658b
	pop bc			;658c
	or b			;658d
	and b			;658e
	or d			;658f
	and b			;6590
	or d			;6591
	and b			;6592
	or d			;6593
	and b			;6594
	or d			;6595
	call po,0e487h		;6596
	add a,a			;6599
	call po,0f687h		;659a
	add a,a			;659d
	or 087h			;659e
	or 087h			;65a0
	or 087h			;65a2
	or 087h			;65a4
	or 087h			;65a6
	or 087h			;65a8
	or 087h			;65aa
	or 087h			;65ac
	or 087h			;65ae
	rst 38h			;65b0
	sbc a,e			;65b1
	or 087h			;65b2
	ld a,088h		;65b4
	ld a,088h		;65b6
	ld a,088h		;65b8
	ld a,088h		;65ba
	ld a,088h		;65bc
	ld e,h			;65be
	adc a,b			;65bf
	ld e,h			;65c0
	adc a,b			;65c1
	ld e,h			;65c2
	adc a,b			;65c3
	ld e,h			;65c4
	adc a,b			;65c5
	ld e,h			;65c6
	adc a,b			;65c7
	ld e,h			;65c8
	adc a,b			;65c9
	and 095h		;65ca
	and 095h		;65cc
	ld (hl),d		;65ce
	adc a,d			;65cf
	ld (hl),d		;65d0
	adc a,d			;65d1
	ld (hl),d		;65d2
	adc a,d			;65d3
	ld (hl),h		;65d4
	adc a,d			;65d5
	add a,h			;65d6
	adc a,d			;65d7
	add a,h			;65d8
	adc a,d			;65d9
	adc a,b			;65da
	adc a,d			;65db
	adc a,b			;65dc
	adc a,d			;65dd
	cp b			;65de
	adc a,d			;65df
	cp b			;65e0
	adc a,d			;65e1
	or c			;65e2
	adc a,a			;65e3
	or c			;65e4
	adc a,a			;65e5
	or a			;65e6
	adc a,a			;65e7
	rst 0			;65e8
	adc a,a			;65e9
	rst 0			;65ea
	adc a,a			;65eb
	res 1,a			;65ec
	res 1,a			;65ee
	res 1,a			;65f0
	out (08fh),a		;65f2
	out (08fh),a		;65f4
	out (08fh),a		;65f6
	jp pe,0fa95h		;65f8
	sub l			;65fb
	jp m,0fa95h		;65fc
	sub l			;65ff
	jp m,l7195h		;6600
	sub (hl)		;6603
	ld (hl),c		;6604
	sub (hl)		;6605
	ld a,e			;6606
	sub (hl)		;6607
	ld a,a			;6608
	sub (hl)		;6609
	ld a,a			;660a
	sub (hl)		;660b
	sbc a,c			;660c
	sub (hl)		;660d
	jp (hl)			;660e
	adc a,a			;660f
	xor l			;6610
	sub (hl)		;6611
	xor l			;6612
	sub (hl)		;6613
	rst 10h			;6614
	sbc a,d			;6615
	rst 10h			;6616
	sbc a,d			;6617
	rst 28h			;6618
	sbc a,d			;6619
	rst 28h			;661a
	sbc a,d			;661b
	inc de			;661c
	sbc a,h			;661d
	inc de			;661e
	sbc a,h			;661f
	inc de			;6620
	sbc a,h			;6621
	ld e,a			;6622
	and (hl)		;6623
	inc de			;6624
	sbc a,h			;6625
	add hl,de		;6626
	sbc a,h			;6627
	add hl,de		;6628
	sbc a,h			;6629
	or e			;662a
	sbc a,(hl)		;662b
	or e			;662c
	sbc a,(hl)		;662d
	or e			;662e
	sbc a,(hl)		;662f
	or e			;6630
	sbc a,(hl)		;6631
	or e			;6632
	sbc a,(hl)		;6633
	or a			;6634
	sbc a,(hl)		;6635
	dec hl			;6636
	and (hl)		;6637
	dec hl			;6638
	and (hl)		;6639
	dec hl			;663a
	and (hl)		;663b
	dec hl			;663c
	and (hl)		;663d
	cp h			;663e
	adc a,d			;663f
	ret nc			;6640
	adc a,d			;6641
	dec hl			;6642
	and (hl)		;6643
	dec hl			;6644
	and (hl)		;6645
	call c,0138ah		;6646
	sbc a,a			;6649
	dec hl			;664a
	and (hl)		;664b
	dec hl			;664c
	and (hl)		;664d
	dec hl			;664e
	and (hl)		;664f
	dec hl			;6650
	and (hl)		;6651
	dec hl			;6652
	and (hl)		;6653
	dec hl			;6654
	and (hl)		;6655
	dec hl			;6656
	and (hl)		;6657
	dec hl			;6658
	and (hl)		;6659
	dec hl			;665a
	and (hl)		;665b
	out (08fh),a		;665c
	dec hl			;665e
	and (hl)		;665f
	dec hl			;6660
	and (hl)		;6661
	dec hl			;6662
	and (hl)		;6663
	dec hl			;6664
	and (hl)		;6665
	dec hl			;6666
	and (hl)		;6667
	scf			;6668
	and (hl)		;6669
	ld b,c			;666a
	and (hl)		;666b
	dec hl			;666c
	and (hl)		;666d
	dec hl			;666e
	and (hl)		;666f
	dec hl			;6670
	and (hl)		;6671
	dec hl			;6672
	and (hl)		;6673
	dec hl			;6674
	and (hl)		;6675
	call m,02b95h		;6676
	and (hl)		;6679
	add hl,de		;667a
	sbc a,h			;667b
	dec hl			;667c
	and (hl)		;667d
	dec hl			;667e
	and (hl)		;667f
	defb 0ddh,09bh,0ddh ;illegal sequence	;6680
	sbc a,e			;6683
	cp e			;6684
	sbc a,(hl)		;6685
	ld bc,0a39fh		;6686
	sub (hl)		;6689
	add hl,hl		;668a
	sbc a,h			;668b
	dec hl			;668c
	and (hl)		;668d
	dec hl			;668e
	and (hl)		;668f
	dec hl			;6690
	and (hl)		;6691
	dec hl			;6692
	and (hl)		;6693
l6694h:
	dec hl			;6694
	and (hl)		;6695
	rst 38h			;6696
	rst 38h			;6697
	rst 38h			;6698
	rst 38h			;6699
	rst 38h			;669a
	rst 38h			;669b
	rst 38h			;669c
	rst 38h			;669d
	rst 38h			;669e
	rst 38h			;669f
	rst 38h			;66a0
	rst 38h			;66a1
	rst 38h			;66a2
	rst 38h			;66a3
	rst 38h			;66a4
	rst 38h			;66a5
	rst 38h			;66a6
	rst 38h			;66a7
	rst 38h			;66a8
	rst 38h			;66a9
	rst 38h			;66aa
	rst 38h			;66ab
	rst 38h			;66ac
	rst 38h			;66ad
	rst 38h			;66ae
	rst 38h			;66af
	rst 38h			;66b0
	rst 38h			;66b1
l66b2h:
	rst 38h			;66b2
	rst 38h			;66b3
l66b4h:
	rst 38h			;66b4
	rst 38h			;66b5
	rst 38h			;66b6
	rst 38h			;66b7
	rst 38h			;66b8
	rst 38h			;66b9
	rst 38h			;66ba
	rst 38h			;66bb
	rst 38h			;66bc
	rst 38h			;66bd
	rst 38h			;66be
	rst 38h			;66bf
	call po,0f486h		;66c0
	add a,(hl)		;66c3
	inc b			;66c4
	add a,a			;66c5
	inc d			;66c6
	add a,a			;66c7
	inc h			;66c8
	add a,a			;66c9
	inc (hl)		;66ca
	add a,a			;66cb
	ld b,h			;66cc
	add a,a			;66cd
	ld b,h			;66ce
	add a,a			;66cf
	ld d,h			;66d0
	add a,a			;66d1
	ld h,h			;66d2
	add a,a			;66d3
	ld (hl),h		;66d4
	add a,a			;66d5
l66d6h:
	add a,h			;66d6
	add a,a			;66d7
	sub h			;66d8
	add a,a			;66d9
	and h			;66da
	add a,a			;66db
	or h			;66dc
	add a,a			;66dd
	call nz,0c487h		;66de
	add a,a			;66e1
	call nc,00387h		;66e2
	ld de,02214h		;66e5
	dec h			;66e8
	inc sp			;66e9
	ld b,a			;66ea
	ld b,l			;66eb
	ld (hl),c		;66ec
	sub e			;66ed
	ld (hl),e		;66ee
	or l			;66ef
	jr nc,l66b2h		;66f0
	jr nc,l66b4h		;66f2
	ld sp,04211h		;66f4
	ld (03353h),hl		;66f7
	djnz l673eh		;66fa
	jr nz,$+85		;66fc
	jr nc,l6694h		;66fe
l6700h:
	ld d,b			;6700
	or b			;6701
	inc sp			;6702
	jp 01202h		;6703
	inc bc			;6706
	inc hl			;6707
	inc b			;6708
	inc (hl)		;6709
	dec b			;670a
	ld b,l			;670b
	ld d,d			;670c
	ld d,h			;670d
	ld b,b			;670e
	sub b			;670f
	ld b,c			;6710
	or e			;6711
	jr nc,l66d6h		;6712
	ld bc,00212h		;6714
	inc hl			;6717
	inc bc			;6718
	inc (hl)		;6719
	inc b			;671a
	ld b,l			;671b
	ld h,b			;671c
	ld d,h			;671d
	ld b,b			;671e
	sub d			;671f
	ld d,b			;6720
	or e			;6721
	inc b			;6722
	ret nz			;6723
	ld h,(hl)		;6724
	ld d,010h		;6725
	ld hl,03220h		;6727
	ld sp,04243h		;672a
	ld d,h			;672d
	ld d,b			;672e
	sub b			;672f
l6730h:
	ld b,b			;6730
	or b			;6731
l6732h:
	ld h,b			;6732
	ret nz			;6733
l6734h:
	dec d			;6734
	ld (de),a		;6735
	ld (hl),024h		;6736
	ld d,a			;6738
	ld (hl),002h		;6739
	ld b,b			;673b
	inc de			;673c
	ld d,b			;673d
l673eh:
	inc b			;673e
	sub c			;673f
	inc b			;6740
	sub c			;6741
	inc b			;6742
	sub c			;6743
	ld bc,00112h		;6744
	inc hl			;6747
	ld (de),a		;6748
	inc (hl)		;6749
	inc hl			;674a
	ld b,l			;674b
	jr nc,l6700h		;674c
	ld b,b			;674e
	jp 0c340h		;674f
l6752h:
	ld b,b			;6752
	jp 00114h		;6753
l6756h:
	jr nc,$+18		;6756
	ld d,b			;6758
	ld hl,03470h		;6759
	dec h			;675c
	ld b,d			;675d
	ld (04752h),hl		;675e
	sub h			;6761
	ld b,a			;6762
	sub h			;6763
	jr nc,$+18		;6764
	ld b,b			;6766
	ld hl,03350h		;6767
	ld h,b			;676a
	ld b,h			;676b
	ld (hl),c		;676c
	sub e			;676d
	ld (hl),e		;676e
	or l			;676f
	jr nc,l6732h		;6770
	jr nc,l6734h		;6772
	ld sp,04211h		;6774
	ld (03353h),hl		;6777
	ld b,b			;677a
	ld b,c			;677b
	ld d,b			;677c
	ld d,e			;677d
	ld h,b			;677e
	sub h			;677f
l6780h:
	ld d,b			;6780
	or b			;6781
	inc sp			;6782
	jp 01130h		;6783
	ld b,b			;6786
	ld (03350h),hl		;6787
	ld h,b			;678a
	ld b,h			;678b
	ld d,d			;678c
	ld d,h			;678d
	ld b,b			;678e
	sub b			;678f
	ld b,c			;6790
	or e			;6791
	jr nc,l6756h		;6792
	jr nc,$+18		;6794
	ld b,b			;6796
	ld hl,03350h		;6797
	ld h,b			;679a
	ld b,h			;679b
	ld h,b			;679c
	ld d,b			;679d
	jr nz,l6730h		;679e
	ld b,b			;67a0
	or b			;67a1
	inc b			;67a2
	ret nz			;67a3
	ld h,l			;67a4
	ld d,030h		;67a5
	ld hl,03140h		;67a7
	ld h,c			;67aa
	ld b,h			;67ab
	ld (hl),b		;67ac
	ld d,(hl)		;67ad
	ld d,b			;67ae
	sub b			;67af
	ld b,b			;67b0
	or b			;67b1
	ld h,b			;67b2
	ret nz			;67b3
	ld b,b			;67b4
	ld de,02350h		;67b5
	ld h,b			;67b8
	inc (hl)		;67b9
	ld (bc),a		;67ba
	ld b,b			;67bb
	inc de			;67bc
	ld d,b			;67bd
	jr nz,$-110		;67be
	jr nz,l6752h		;67c0
	jr nz,$-110		;67c2
	ld bc,00112h		;67c4
	inc hl			;67c7
	ld (de),a		;67c8
	inc (hl)		;67c9
	inc hl			;67ca
	ld b,l			;67cb
	jr nc,l6780h		;67cc
	ld b,b			;67ce
	jp 0c340h		;67cf
	ld b,b			;67d2
	jp 00040h		;67d3
	jr nc,l67e8h		;67d6
	ld d,b			;67d8
	ld hl,03470h		;67d9
	ld (hl),b		;67dc
	ld b,b			;67dd
	ld (l7052h),hl		;67de
	sub h			;67e1
	ld (hl),b		;67e2
	sub h			;67e3
	or 087h			;67e4
	cp 087h			;67e6
l67e8h:
	ld b,088h		;67e8
	ld c,088h		;67ea
	ld d,088h		;67ec
	ld e,088h		;67ee
	ld h,088h		;67f0
	ld l,088h		;67f2
	ld (hl),088h		;67f4
	nop			;67f6
	nop			;67f7
	ld (bc),a		;67f8
	ld (bc),a		;67f9
	adc a,0cfh		;67fa
	ret nc			;67fc
	pop de			;67fd
	nop			;67fe
	nop			;67ff
	ld (bc),a		;6800
	ld (bc),a		;6801
	jp nc,0d4d3h		;6802
	push de			;6805
	nop			;6806
	nop			;6807
	ld (bc),a		;6808
	ld (bc),a		;6809
	sub 0d7h		;680a
	ret c			;680c
	exx			;680d
	nop			;680e
	nop			;680f
	ld (bc),a		;6810
	ld (bc),a		;6811
	jp c,0dcdbh		;6812
	defb 0ddh,000h,000h ;illegal sequence	;6815
	ld (bc),a		;6818
	ld (bc),a		;6819
	sbc a,0dfh		;681a
	ret po			;681c
	pop hl			;681d
	nop			;681e
	nop			;681f
	ld (bc),a		;6820
	ld (bc),a		;6821
	jp po,0e4e3h		;6822
	push hl			;6825
	nop			;6826
	nop			;6827
	ld (bc),a		;6828
	ld (bc),a		;6829
	and 0e7h		;682a
	ret pe			;682c
	jp (hl)			;682d
	nop			;682e
	nop			;682f
	ld (bc),a		;6830
	ld (bc),a		;6831
	jp po,0e4e3h		;6832
	push hl			;6835
	nop			;6836
	nop			;6837
	ld (bc),a		;6838
	ld (bc),a		;6839
	and 0e7h		;683a
	ret pe			;683c
	jp (hl)			;683d
	ld e,h			;683e
	adc a,b			;683f
	sub d			;6840
	adc a,b			;6841
	ret z			;6842
	adc a,b			;6843
	call pe,00888h		;6844
	adc a,c			;6847
	inc l			;6848
	adc a,c			;6849
	ld d,b			;684a
	adc a,c			;684b
	ld (hl),a		;684c
	adc a,c			;684d
	and e			;684e
	adc a,c			;684f
	rst 8			;6850
	adc a,c			;6851
	or 089h			;6852
	ld (de),a		;6854
	adc a,d			;6855
	ld (hl),08ah		;6856
	ld h,d			;6858
	adc a,d			;6859
	ld l,d			;685a
	adc a,d			;685b
	nop			;685c
	nop			;685d
	dec b			;685e
	ld a,(bc)		;685f
	nop			;6860
	ld bc,05002h		;6861
	ld d,c			;6864
	ld d,d			;6865
	ld d,e			;6866
	inc bc			;6867
	nop			;6868
	nop			;6869
	inc b			;686a
	ld d,h			;686b
	ld d,l			;686c
	ld d,(hl)		;686d
	ld d,a			;686e
	ld e,b			;686f
	ld e,c			;6870
	ld e,d			;6871
	dec b			;6872
	ld b,000h		;6873
	nop			;6875
	rlca			;6876
	ld e,e			;6877
	ld e,h			;6878
	ld e,l			;6879
	ld e,(hl)		;687a
	ld e,a			;687b
	ld h,b			;687c
	ex af,af'		;687d
	nop			;687e
	nop			;687f
	nop			;6880
	nop			;6881
	nop			;6882
	nop			;6883
	nop			;6884
	add hl,bc		;6885
	ld h,c			;6886
	ld a,(bc)		;6887
	nop			;6888
	nop			;6889
	nop			;688a
	nop			;688b
	nop			;688c
	nop			;688d
	nop			;688e
	nop			;688f
	dec bc			;6890
	ld h,d			;6891
	nop			;6892
	nop			;6893
	dec b			;6894
	ld a,(bc)		;6895
	nop			;6896
	nop			;6897
	nop			;6898
	nop			;6899
	nop			;689a
	nop			;689b
	nop			;689c
	nop			;689d
	dec bc			;689e
	ld h,d			;689f
	nop			;68a0
	nop			;68a1
	nop			;68a2
	nop			;68a3
	nop			;68a4
	nop			;68a5
	nop			;68a6
	add hl,bc		;68a7
	ld h,c			;68a8
	ld a,(bc)		;68a9
	nop			;68aa
	nop			;68ab
	rlca			;68ac
	ld e,e			;68ad
	ld e,h			;68ae
	ld e,l			;68af
	ld e,(hl)		;68b0
	ld e,a			;68b1
	ld h,b			;68b2
	ex af,af'		;68b3
	inc b			;68b4
	ld d,h			;68b5
	ld d,l			;68b6
	ld d,(hl)		;68b7
	ld d,a			;68b8
	ld e,b			;68b9
	ld e,c			;68ba
	ld e,d			;68bb
	dec b			;68bc
	ld b,000h		;68bd
	ld bc,05002h		;68bf
	ld d,c			;68c2
	ld d,d			;68c3
	ld d,e			;68c4
	inc bc			;68c5
	nop			;68c6
	nop			;68c7
	nop			;68c8
	nop			;68c9
	ex af,af'		;68ca
	inc b			;68cb
	nop			;68cc
	ld h,063h		;68cd
	ld h,h			;68cf
	nop			;68d0
	daa			;68d1
	ld h,l			;68d2
	ld h,(hl)		;68d3
	ld l,d			;68d4
	ld l,e			;68d5
	rst 0			;68d6
	ld l,h			;68d7
	ld (hl),c		;68d8
	ld (hl),d		;68d9
	ret z			;68da
	ld (hl),e		;68db
	ld (hl),c		;68dc
	ld (hl),d		;68dd
	ret z			;68de
	ld (hl),e		;68df
	ld l,d			;68e0
	ld l,e			;68e1
	rst 0			;68e2
	ld l,h			;68e3
	nop			;68e4
	daa			;68e5
	ld h,l			;68e6
	ld h,(hl)		;68e7
	nop			;68e8
	ld h,063h		;68e9
	ld h,h			;68eb
	ld bc,006fch		;68ec
	inc b			;68ef
	sub (hl)		;68f0
	rla			;68f1
	jr l68f4h		;68f2
l68f4h:
	nop			;68f4
	nop			;68f5
	add hl,de		;68f6
	sub a			;68f7
	nop			;68f8
	nop			;68f9
	nop			;68fa
	sbc a,b			;68fb
	nop			;68fc
	nop			;68fd
	nop			;68fe
	sbc a,b			;68ff
	nop			;6900
	nop			;6901
	add hl,de		;6902
	sub a			;6903
	sub (hl)		;6904
	rla			;6905
	jr l6908h		;6906
l6908h:
	nop			;6908
	call m,00408h		;6909
	ld a,(de)		;690c
	nop			;690d
	nop			;690e
	nop			;690f
	dec de			;6910
	sbc a,c			;6911
	inc e			;6912
	nop			;6913
	nop			;6914
	nop			;6915
	dec e			;6916
	sbc a,d			;6917
	nop			;6918
	nop			;6919
	nop			;691a
	ld e,000h		;691b
	nop			;691d
	nop			;691e
	ld e,000h		;691f
	nop			;6921
	dec e			;6922
	sbc a,d			;6923
	dec de			;6924
	sbc a,c			;6925
	inc e			;6926
	nop			;6927
	ld a,(de)		;6928
	nop			;6929
	nop			;692a
	nop			;692b
	nop			;692c
	call m,00408h		;692d
	sbc a,e			;6930
	jr l6933h		;6931
l6933h:
	nop			;6933
	nop			;6934
	jr nz,l6958h		;6935
	ld (00000h),hl		;6937
	inc h			;693a
	sbc a,h			;693b
	nop			;693c
	nop			;693d
	inc hl			;693e
	dec h			;693f
	nop			;6940
	nop			;6941
	inc hl			;6942
	dec h			;6943
	nop			;6944
	nop			;6945
	inc h			;6946
	sbc a,h			;6947
	nop			;6948
	jr nz,l696ch		;6949
	ld (0189bh),hl		;694b
	nop			;694e
	nop			;694f
	defb 0fdh,004h,007h ;illegal sequence	;6950
	dec b			;6953
	nop			;6954
	ld hl,(02bach)		;6955
l6958h:
	inc l			;6958
	dec l			;6959
	ld l,0adh		;695a
	cpl			;695c
	nop			;695d
	xor (hl)		;695e
	nop			;695f
	xor a			;6960
	nop			;6961
	nop			;6962
	xor c			;6963
	xor d			;6964
	sbc a,l			;6965
	sbc a,(hl)		;6966
	sbc a,a			;6967
	ld h,a			;6968
	ld l,b			;6969
	ld l,c			;696a
	and b			;696b
l696ch:
	and c			;696c
	ld l,l			;696d
	ld l,(hl)		;696e
	ld l,a			;696f
	ld (hl),b		;6970
	or c			;6971
	ld (hl),h		;6972
	ld (hl),l		;6973
	halt			;6974
	ld (hl),a		;6975
	ld a,b			;6976
	call m,00804h		;6977
	dec b			;697a
	jr nc,l69aeh		;697b
	nop			;697d
	nop			;697e
	nop			;697f
	and d			;6980
	nop			;6981
	nop			;6982
	nop			;6983
	nop			;6984
	and e			;6985
	nop			;6986
	inc sp			;6987
	inc (hl)		;6988
	and (hl)		;6989
	and h			;698a
	ld (0b0a7h),a		;698b
	nop			;698e
	xor c			;698f
	and l			;6990
	xor b			;6991
	sbc a,(hl)		;6992
	sbc a,a			;6993
	ld h,a			;6994
	ld l,b			;6995
	ld l,c			;6996
	and b			;6997
	and c			;6998
	ld l,l			;6999
	ld l,(hl)		;699a
	ld l,a			;699b
	ld (hl),b		;699c
	or c			;699d
	ld (hl),h		;699e
	ld (hl),l		;699f
	halt			;69a0
	ld (hl),a		;69a1
	ld a,b			;69a2
	inc b			;69a3
	inc b			;69a4
	ex af,af'		;69a5
	dec b			;69a6
	ld (hl),h		;69a7
	ld (hl),l		;69a8
	halt			;69a9
	ld (hl),a		;69aa
	ld a,b			;69ab
	ld l,l			;69ac
	ld l,(hl)		;69ad
l69aeh:
	ld l,a			;69ae
	ld (hl),b		;69af
	or c			;69b0
	ld h,a			;69b1
	ld l,b			;69b2
	ld l,c			;69b3
	and b			;69b4
	and c			;69b5
	xor c			;69b6
	xor d			;69b7
	xor b			;69b8
	sbc a,(hl)		;69b9
	sbc a,a			;69ba
	and h			;69bb
	ld (0b0a7h),a		;69bc
	nop			;69bf
	and e			;69c0
	nop			;69c1
	inc sp			;69c2
	inc (hl)		;69c3
	and (hl)		;69c4
	and d			;69c5
	nop			;69c6
	nop			;69c7
	nop			;69c8
	nop			;69c9
	jr nc,l69fdh		;69ca
	nop			;69cc
	nop			;69cd
	nop			;69ce
	inc b			;69cf
	inc b			;69d0
	rlca			;69d1
	dec b			;69d2
	ld (hl),h		;69d3
l69d4h:
	ld (hl),l		;69d4
	halt			;69d5
	ld (hl),a		;69d6
	ld a,b			;69d7
	ld l,l			;69d8
	ld l,(hl)		;69d9
	ld l,a			;69da
	ld (hl),b		;69db
	or c			;69dc
	ld h,a			;69dd
	ld l,b			;69de
	ld l,c			;69df
	and b			;69e0
	and c			;69e1
	xor c			;69e2
	xor d			;69e3
	sbc a,l			;69e4
	sbc a,(hl)		;69e5
	sbc a,a			;69e6
	xor (hl)		;69e7
l69e8h:
	nop			;69e8
	xor a			;69e9
	nop			;69ea
	nop			;69eb
	dec l			;69ec
	ld l,0adh		;69ed
	cpl			;69ef
	nop			;69f0
	nop			;69f1
	ld hl,(02bach)		;69f2
	inc l			;69f5
	ld bc,00609h		;69f6
	inc b			;69f9
	dec c			;69fa
	ld a,(hl)		;69fb
	ld a,a			;69fc
l69fdh:
	add a,b			;69fd
	ld a,e			;69fe
	add a,c			;69ff
	add a,d			;6a00
	add a,e			;6a01
	ld a,c			;6a02
	ld a,d			;6a03
	or e			;6a04
	jr z,l6a80h		;6a05
	ld a,d			;6a07
	or d			;6a08
	jr z,$+125		;6a09
	add a,c			;6a0b
	add a,d			;6a0c
	add a,e			;6a0d
	dec c			;6a0e
	ld a,(hl)		;6a0f
	ld a,a			;6a10
	add a,b			;6a11
	nop			;6a12
	add hl,bc		;6a13
	ex af,af'		;6a14
	inc b			;6a15
	nop			;6a16
	rrca			;6a17
	add a,h			;6a18
	add a,l			;6a19
	ld c,086h		;6a1a
	add a,a			;6a1c
	adc a,b			;6a1d
	ld a,h			;6a1e
	adc a,c			;6a1f
	adc a,d			;6a20
	adc a,e			;6a21
	ld a,c			;6a22
	ld a,d			;6a23
	or e			;6a24
	jr z,l6aa0h		;6a25
	ld a,d			;6a27
	or d			;6a28
	jr z,l6aa7h		;6a29
	adc a,c			;6a2b
	adc a,d			;6a2c
	adc a,e			;6a2d
	ld c,086h		;6a2e
	add a,a			;6a30
	adc a,b			;6a31
	nop			;6a32
	rrca			;6a33
	add a,h			;6a34
	add a,l			;6a35
	rst 38h			;6a36
	add hl,bc		;6a37
	ld a,(bc)		;6a38
	inc b			;6a39
	nop			;6a3a
	ld (de),a		;6a3b
	adc a,h			;6a3c
	inc de			;6a3d
	ld de,08e8dh		;6a3e
	adc a,a			;6a41
	djnz l69d4h		;6a42
	sub c			;6a44
	sub d			;6a45
	ld a,l			;6a46
	sub e			;6a47
	sub h			;6a48
	sub l			;6a49
	ld a,c			;6a4a
	ld a,d			;6a4b
	or e			;6a4c
	jr z,l6ac8h		;6a4d
l6a4fh:
	ld a,d			;6a4f
	or d			;6a50
	jr z,l6ad0h		;6a51
	sub e			;6a53
	sub h			;6a54
	sub l			;6a55
	djnz l69e8h		;6a56
	sub c			;6a58
	sub d			;6a59
	ld de,08e8dh		;6a5a
	adc a,a			;6a5d
	nop			;6a5e
	ld (de),a		;6a5f
	adc a,h			;6a60
	inc de			;6a61
	ld (bc),a		;6a62
	ld (bc),a		;6a63
	inc b			;6a64
	ld bc,0cac9h		;6a65
	jp z,002c9h		;6a68
	ld (bc),a		;6a6b
	inc b			;6a6c
	ld bc,0cbabh		;6a6d
	res 5,e			;6a70
	ld b,l			;6a72
	adc a,l			;6a73
	ld e,l			;6a74
	adc a,l			;6a75
	ld h,l			;6a76
	adc a,l			;6a77
	ld l,l			;6a78
	adc a,l			;6a79
	ld (hl),l		;6a7a
	adc a,l			;6a7b
	ld e,l			;6a7c
	adc a,l			;6a7d
	ld e,l			;6a7e
	adc a,l			;6a7f
l6a80h:
	ld e,l			;6a80
	adc a,l			;6a81
	ld e,l			;6a82
	adc a,l			;6a83
	ld hl,02d8dh		;6a84
	adc a,l			;6a87
	and c			;6a88
	adc a,l			;6a89
	or c			;6a8a
	adc a,l			;6a8b
	pop bc			;6a8c
	adc a,l			;6a8d
	pop de			;6a8e
	adc a,l			;6a8f
	pop hl			;6a90
	adc a,l			;6a91
	pop af			;6a92
	adc a,l			;6a93
	ld bc,0118eh		;6a94
	adc a,(hl)		;6a97
	ld hl,0438eh		;6a98
	adc a,(hl)		;6a9b
	ld h,l			;6a9c
	adc a,(hl)		;6a9d
	add a,a			;6a9e
	adc a,(hl)		;6a9f
l6aa0h:
	xor c			;6aa0
	adc a,(hl)		;6aa1
	res 1,(hl)		;6aa2
	defb 0edh ;next byte illegal after ed	;6aa4
	adc a,(hl)		;6aa5
	rrca			;6aa6
l6aa7h:
	adc a,a			;6aa7
	ld sp,0418fh		;6aa8
	adc a,a			;6aab
	ld d,c			;6aac
	adc a,a			;6aad
	ld h,c			;6aae
	adc a,a			;6aaf
	ld (hl),c		;6ab0
	adc a,a			;6ab1
	add a,c			;6ab2
	adc a,a			;6ab3
	sub c			;6ab4
	adc a,a			;6ab5
	and c			;6ab6
	adc a,a			;6ab7
	ld a,l			;6ab8
	adc a,l			;6ab9
	adc a,c			;6aba
	adc a,l			;6abb
	call c,0038ah		;6abc
	adc a,e			;6abf
	dec h			;6ac0
	adc a,e			;6ac1
	jr nc,l6a4fh		;6ac2
	ld b,d			;6ac4
	adc a,e			;6ac5
	ld e,e			;6ac6
	adc a,e			;6ac7
l6ac8h:
	ld (hl),h		;6ac8
	adc a,e			;6ac9
	ld a,(hl)		;6aca
	adc a,e			;6acb
	adc a,(hl)		;6acc
	adc a,e			;6acd
	and h			;6ace
	adc a,e			;6acf
l6ad0h:
	ret nz			;6ad0
	adc a,e			;6ad1
	inc d			;6ad2
	adc a,h			;6ad3
	ld l,b			;6ad4
	adc a,h			;6ad5
	cp h			;6ad6
	adc a,h			;6ad7
	djnz $-113		;6ad8
	inc e			;6ada
	adc a,l			;6adb
	nop			;6adc
	nop			;6add
	dec b			;6ade
	rlca			;6adf
	nop			;6ae0
	nop			;6ae1
	nop			;6ae2
	nop			;6ae3
	nop			;6ae4
	nop			;6ae5
	nop			;6ae6
	nop			;6ae7
	nop			;6ae8
	nop			;6ae9
	nop			;6aea
	nop			;6aeb
	nop			;6aec
	nop			;6aed
	nop			;6aee
	nop			;6aef
	nop			;6af0
	nop			;6af1
	nop			;6af2
	or h			;6af3
	and a			;6af4
	nop			;6af5
	nop			;6af6
	nop			;6af7
	or a			;6af8
	and (hl)		;6af9
	sub e			;6afa
	sub h			;6afb
	nop			;6afc
	or a			;6afd
	and (hl)		;6afe
	sub e			;6aff
	sub h			;6b00
	sub l			;6b01
	sub (hl)		;6b02
	nop			;6b03
	nop			;6b04
	dec b			;6b05
	ld b,000h		;6b06
	nop			;6b08
	nop			;6b09
	inc de			;6b0a
	dec d			;6b0b
	nop			;6b0c
	nop			;6b0d
	nop			;6b0e
	cp b			;6b0f
	ld de,0b918h		;6b10
	xor b			;6b13
	xor c			;6b14
	xor c			;6b15
	xor d			;6b16
	xor e			;6b17
	nop			;6b18
	add a,(hl)		;6b19
	dec hl			;6b1a
	inc l			;6b1b
	sub d			;6b1c
	sbc a,e			;6b1d
	nop			;6b1e
	and b			;6b1f
	ld a,(de)		;6b20
	inc e			;6b21
	and l			;6b22
	sbc a,d			;6b23
	nop			;6b24
	nop			;6b25
	nop			;6b26
	ld bc,00007h		;6b27
	adc a,a			;6b2a
	add a,a			;6b2b
	sub a			;6b2c
	sbc a,a			;6b2d
	sbc a,a			;6b2e
	sbc a,a			;6b2f
	nop			;6b30
	nop			;6b31
	ld (bc),a		;6b32
	rlca			;6b33
	nop			;6b34
	adc a,a			;6b35
	add a,a			;6b36
	sub a			;6b37
	sbc a,a			;6b38
	sbc a,a			;6b39
	sbc a,a			;6b3a
	cp b			;6b3b
	ld de,0b918h		;6b3c
	sbc a,l			;6b3f
	sub c			;6b40
	nop			;6b41
	nop			;6b42
	nop			;6b43
	inc bc			;6b44
	rlca			;6b45
	nop			;6b46
	adc a,a			;6b47
	add a,a			;6b48
	sub a			;6b49
	sbc a,a			;6b4a
	sbc a,a			;6b4b
	sbc a,a			;6b4c
	cp b			;6b4d
	ld de,0b918h		;6b4e
	sbc a,l			;6b51
	sub c			;6b52
	nop			;6b53
	nop			;6b54
	ld (de),a		;6b55
	inc d			;6b56
	nop			;6b57
	nop			;6b58
	nop			;6b59
	nop			;6b5a
	nop			;6b5b
	nop			;6b5c
	inc bc			;6b5d
	rlca			;6b5e
	nop			;6b5f
	adc a,a			;6b60
	add a,a			;6b61
	sub a			;6b62
	sbc a,a			;6b63
	sbc a,a			;6b64
	sbc a,a			;6b65
	cp b			;6b66
	ld de,0b918h		;6b67
	sbc a,l			;6b6a
	sub c			;6b6b
	nop			;6b6c
	nop			;6b6d
	ld (de),a		;6b6e
	inc d			;6b6f
	nop			;6b70
	nop			;6b71
	nop			;6b72
	nop			;6b73
	nop			;6b74
	nop			;6b75
	ld bc,09006h		;6b76
	dec de			;6b79
	dec e			;6b7a
	sbc a,h			;6b7b
	sbc a,e			;6b7c
	nop			;6b7d
	nop			;6b7e
	nop			;6b7f
	ld (bc),a		;6b80
	ld b,090h		;6b81
	dec de			;6b83
	dec e			;6b84
	sbc a,h			;6b85
	sbc a,e			;6b86
	nop			;6b87
	sbc a,l			;6b88
	sub c			;6b89
	nop			;6b8a
	sbc a,(hl)		;6b8b
	xor e			;6b8c
	nop			;6b8d
	nop			;6b8e
	nop			;6b8f
	inc bc			;6b90
	ld b,090h		;6b91
	dec de			;6b93
	dec e			;6b94
	sbc a,h			;6b95
	sbc a,e			;6b96
	nop			;6b97
	sbc a,l			;6b98
	sub c			;6b99
	nop			;6b9a
	sbc a,(hl)		;6b9b
	xor e			;6b9c
	nop			;6b9d
	nop			;6b9e
	nop			;6b9f
	cp b			;6ba0
	ld de,0b918h		;6ba1
	nop			;6ba4
	nop			;6ba5
	inc b			;6ba6
	ld b,090h		;6ba7
	dec de			;6ba9
	dec e			;6baa
	sbc a,h			;6bab
	sbc a,e			;6bac
	nop			;6bad
	sbc a,l			;6bae
	sub c			;6baf
	nop			;6bb0
	sbc a,(hl)		;6bb1
	xor e			;6bb2
	nop			;6bb3
	nop			;6bb4
	nop			;6bb5
	cp b			;6bb6
	ld de,0b918h		;6bb7
	nop			;6bba
	nop			;6bbb
	nop			;6bbc
	ld (de),a		;6bbd
	inc d			;6bbe
	nop			;6bbf
	nop			;6bc0
	nop			;6bc1
	ld a,(bc)		;6bc2
	ex af,af'		;6bc3
	nop			;6bc4
	ld l,c			;6bc5
	ld l,b			;6bc6
	ld h,b			;6bc7
	ld h,(hl)		;6bc8
	ld l,e			;6bc9
	nop			;6bca
	nop			;6bcb
	nop			;6bcc
	ld h,c			;6bcd
	ld h,d			;6bce
	ld h,e			;6bcf
	ld h,a			;6bd0
	ld h,h			;6bd1
	ld (hl),l		;6bd2
	nop			;6bd3
	nop			;6bd4
	ld l,a			;6bd5
	ld (hl),h		;6bd6
	ld l,l			;6bd7
	ld h,l			;6bd8
	ld l,d			;6bd9
	ld (hl),b		;6bda
	nop			;6bdb
	nop			;6bdc
	halt			;6bdd
	adc a,b			;6bde
	add a,d			;6bdf
	add a,e			;6be0
	ld a,a			;6be1
	ld a,c			;6be2
	nop			;6be3
	nop			;6be4
	xor h			;6be5
	adc a,a			;6be6
	ld bc,08e02h		;6be7
	or b			;6bea
	nop			;6beb
	nop			;6bec
	nop			;6bed
	cp h			;6bee
	inc hl			;6bef
	inc h			;6bf0
	cp l			;6bf1
	nop			;6bf2
	nop			;6bf3
	nop			;6bf4
	or h			;6bf5
	adc a,l			;6bf6
	add hl,bc		;6bf7
	ld a,(bc)		;6bf8
	sub b			;6bf9
	cp b			;6bfa
	nop			;6bfb
	nop			;6bfc
	ld a,b			;6bfd
	ld a,l			;6bfe
	add a,c			;6bff
	add a,b			;6c00
	ld a,(hl)		;6c01
	ld a,h			;6c02
	nop			;6c03
	ld sp,07173h		;6c04
	ld l,(hl)		;6c07
	ld (hl),c		;6c08
	ld (hl),d		;6c09
	ld l,h			;6c0a
	ld (l657bh),a		;6c0b
	ld a,(03a3ah)		;6c0e
	ld a,(l7c5bh)		;6c11
	nop			;6c14
	nop			;6c15
	ld a,(bc)		;6c16
	ex af,af'		;6c17
	nop			;6c18
	ld l,c			;6c19
	ld l,b			;6c1a
	ld h,b			;6c1b
	ld h,(hl)		;6c1c
	ld l,e			;6c1d
	nop			;6c1e
	nop			;6c1f
	nop			;6c20
	ld h,c			;6c21
	ld h,d			;6c22
	ld h,e			;6c23
	ld h,a			;6c24
	ld h,h			;6c25
	ld (hl),l		;6c26
	nop			;6c27
	nop			;6c28
	ld l,a			;6c29
	ld (hl),h		;6c2a
	ld l,l			;6c2b
	ld h,l			;6c2c
	ld l,d			;6c2d
	ld (hl),b		;6c2e
	nop			;6c2f
	nop			;6c30
	ld (hl),a		;6c31
	adc a,d			;6c32
	add a,h			;6c33
	add a,l			;6c34
	adc a,c			;6c35
	ld a,d			;6c36
	nop			;6c37
	nop			;6c38
	xor l			;6c39
	sub e			;6c3a
	inc bc			;6c3b
	inc b			;6c3c
	sub d			;6c3d
	or c			;6c3e
	nop			;6c3f
	nop			;6c40
	nop			;6c41
	cp h			;6c42
	inc hl			;6c43
	inc h			;6c44
	cp l			;6c45
	nop			;6c46
	nop			;6c47
	nop			;6c48
	or l			;6c49
	sub c			;6c4a
	dec bc			;6c4b
	inc c			;6c4c
	sub h			;6c4d
	cp c			;6c4e
	nop			;6c4f
	nop			;6c50
	halt			;6c51
	add a,b			;6c52
	add a,(hl)		;6c53
	add a,a			;6c54
	adc a,e			;6c55
	ld a,e			;6c56
	nop			;6c57
	ld sp,07173h		;6c58
	ld l,(hl)		;6c5b
	ld (hl),c		;6c5c
	ld (hl),d		;6c5d
	ld l,h			;6c5e
	ld (l657bh),a		;6c5f
	ld a,(03a3ah)		;6c62
	ld a,(l7c5bh)		;6c65
	nop			;6c68
	nop			;6c69
	ld a,(bc)		;6c6a
	ex af,af'		;6c6b
	nop			;6c6c
	ld l,c			;6c6d
	ld l,b			;6c6e
	ld h,b			;6c6f
	ld h,(hl)		;6c70
	ld l,e			;6c71
	nop			;6c72
	nop			;6c73
	nop			;6c74
	ld h,c			;6c75
	ld h,d			;6c76
	ld h,e			;6c77
	ld h,a			;6c78
	ld h,h			;6c79
	ld (hl),l		;6c7a
	nop			;6c7b
	nop			;6c7c
	ld l,a			;6c7d
	ld (hl),h		;6c7e
	ld l,l			;6c7f
	ld h,l			;6c80
	ld l,d			;6c81
	ld (hl),b		;6c82
	nop			;6c83
	nop			;6c84
	halt			;6c85
	add a,b			;6c86
	add a,(hl)		;6c87
	add a,a			;6c88
	adc a,e			;6c89
	ld a,e			;6c8a
	nop			;6c8b
	nop			;6c8c
	xor (hl)		;6c8d
	sub a			;6c8e
	dec b			;6c8f
	ld b,096h		;6c90
l6c92h:
	or d			;6c92
	nop			;6c93
	nop			;6c94
	nop			;6c95
	cp h			;6c96
	inc hl			;6c97
	inc h			;6c98
	cp l			;6c99
	nop			;6c9a
	nop			;6c9b
	nop			;6c9c
	or (hl)			;6c9d
	sub l			;6c9e
	dec c			;6c9f
	ld c,098h		;6ca0
	cp d			;6ca2
	nop			;6ca3
	nop			;6ca4
	ld (hl),a		;6ca5
	adc a,d			;6ca6
	add a,h			;6ca7
	add a,l			;6ca8
	adc a,c			;6ca9
	ld a,d			;6caa
	nop			;6cab
	ld sp,07173h		;6cac
	ld l,(hl)		;6caf
	ld (hl),c		;6cb0
	ld (hl),d		;6cb1
	ld l,h			;6cb2
	ld (l657bh),a		;6cb3
	ld a,(03a3ah)		;6cb6
	ld a,(l7c5bh)		;6cb9
	nop			;6cbc
	nop			;6cbd
	ld a,(bc)		;6cbe
	ex af,af'		;6cbf
	nop			;6cc0
	ld l,c			;6cc1
	ld l,b			;6cc2
	ld h,b			;6cc3
	ld h,(hl)		;6cc4
	ld l,e			;6cc5
	nop			;6cc6
l6cc7h:
	nop			;6cc7
	nop			;6cc8
	ld h,c			;6cc9
	ld h,d			;6cca
	ld h,e			;6ccb
	ld h,a			;6ccc
	ld h,h			;6ccd
	ld (hl),l		;6cce
	nop			;6ccf
	nop			;6cd0
	ld l,a			;6cd1
	ld (hl),h		;6cd2
l6cd3h:
	ld l,l			;6cd3
	ld h,l			;6cd4
	ld l,d			;6cd5
	ld (hl),b		;6cd6
	nop			;6cd7
	nop			;6cd8
	ld a,b			;6cd9
	ld a,l			;6cda
	add a,c			;6cdb
	add a,b			;6cdc
	ld a,(hl)		;6cdd
	ld a,h			;6cde
	nop			;6cdf
	nop			;6ce0
	xor a			;6ce1
	sbc a,e			;6ce2
	rlca			;6ce3
	ex af,af'		;6ce4
	sbc a,d			;6ce5
	or e			;6ce6
	nop			;6ce7
	nop			;6ce8
	nop			;6ce9
	cp h			;6cea
	inc hl			;6ceb
	inc h			;6cec
	cp l			;6ced
	nop			;6cee
	nop			;6cef
	nop			;6cf0
	or a			;6cf1
	sbc a,c			;6cf2
	rrca			;6cf3
	djnz l6c92h		;6cf4
	cp e			;6cf6
	nop			;6cf7
	nop			;6cf8
	halt			;6cf9
	adc a,b			;6cfa
	add a,d			;6cfb
	add a,e			;6cfc
	ld a,a			;6cfd
	ld a,c			;6cfe
	nop			;6cff
	ld sp,07173h		;6d00
	ld l,(hl)		;6d03
	ld (hl),c		;6d04
	ld (hl),d		;6d05
	ld l,h			;6d06
	ld (l657bh),a		;6d07
	ld a,(03a3ah)		;6d0a
	ld a,(l7c5bh)		;6d0d
	nop			;6d10
	nop			;6d11
	ld bc,l6408h		;6d12
	ld h,(hl)		;6d15
	add a,b			;6d16
	add a,b			;6d17
	add a,b			;6d18
	add a,b			;6d19
	ld e,h			;6d1a
	ld e,d			;6d1b
	nop			;6d1c
	nop			;6d1d
	ld bc,00001h		;6d1e
	nop			;6d21
	nop			;6d22
	ld (bc),a		;6d23
	inc b			;6d24
	ld d,020h		;6d25
	dec l			;6d27
	ld d,017h		;6d28
	ld hl,0178ah		;6d2a
	nop			;6d2d
	nop			;6d2e
	ld (bc),a		;6d2f
	inc b			;6d30
	ld l,024h		;6d31
	ld h,02eh		;6d33
	adc a,(hl)		;6d35
	cpl			;6d36
	jr nc,l6cc7h		;6d37
	nop			;6d39
	nop			;6d3a
	ld (bc),a		;6d3b
	inc b			;6d3c
	or (hl)			;6d3d
	and c			;6d3e
	and d			;6d3f
	or (hl)			;6d40
	adc a,(hl)		;6d41
	cpl			;6d42
	jr nc,l6cd3h		;6d43
	ld (bc),a		;6d45
	ld (bc),a		;6d46
	ld (bc),a		;6d47
	inc b			;6d48
	or d			;6d49
	ld e,022h		;6d4a
	xor a			;6d4c
	adc a,l			;6d4d
	rra			;6d4e
	inc hl			;6d4f
	and h			;6d50
	ld (bc),a		;6d51
	ld (bc),a		;6d52
	ld (bc),a		;6d53
	inc b			;6d54
	or e			;6d55
	or l			;6d56
	or c			;6d57
	xor a			;6d58
	adc a,l			;6d59
	adc a,e			;6d5a
	adc a,h			;6d5b
	and h			;6d5c
	nop			;6d5d
	nop			;6d5e
	ld (bc),a		;6d5f
	ld (bc),a		;6d60
	ld bc,00302h		;6d61
	inc b			;6d64
	nop			;6d65
	nop			;6d66
	ld (bc),a		;6d67
	ld (bc),a		;6d68
	dec b			;6d69
	ld b,007h		;6d6a
	ex af,af'		;6d6c
	nop			;6d6d
	nop			;6d6e
	ld (bc),a		;6d6f
	ld (bc),a		;6d70
	add hl,bc		;6d71
	ld a,(bc)		;6d72
	dec bc			;6d73
	inc c			;6d74
	nop			;6d75
	nop			;6d76
	ld (bc),a		;6d77
	ld (bc),a		;6d78
	dec c			;6d79
	ld c,00fh		;6d7a
	djnz l6d7eh		;6d7c
l6d7eh:
	nop			;6d7e
	ld (bc),a		;6d7f
	inc b			;6d80
	xor h			;6d81
	dec h			;6d82
	daa			;6d83
	xor l			;6d84
	sbc a,b			;6d85
	add hl,hl		;6d86
	ld hl,(00099h)		;6d87
	nop			;6d8a
	ld (bc),a		;6d8b
	inc b			;6d8c
	xor h			;6d8d
	jr z,l6da9h		;6d8e
	xor l			;6d90
	sbc a,b			;6d91
	add hl,hl		;6d92
	ld hl,(00099h)		;6d93
	nop			;6d96
	ld (bc),a		;6d97
	inc b			;6d98
	xor (hl)		;6d99
	nop			;6d9a
	nop			;6d9b
	or b			;6d9c
	sbc a,b			;6d9d
	adc a,b			;6d9e
	adc a,c			;6d9f
	sbc a,c			;6da0
	nop			;6da1
	nop			;6da2
	inc b			;6da3
	inc bc			;6da4
	or h			;6da5
	ld l,b			;6da6
	ld (hl),d		;6da7
	or d			;6da8
l6da9h:
	ld d,e			;6da9
	ld d,c			;6daa
	nop			;6dab
	sbc a,c			;6dac
	sbc a,h			;6dad
	cp h			;6dae
	jp nz,000a5h		;6daf
	nop			;6db2
	inc b			;6db3
	inc bc			;6db4
	or (hl)			;6db5
	ld l,b			;6db6
	ld (hl),d		;6db7
	cp b			;6db8
	ld l,c			;6db9
	ld l,l			;6dba
	nop			;6dbb
	xor e			;6dbc
	sbc a,a			;6dbd
	jp nz,08d8fh		;6dbe
	nop			;6dc1
	nop			;6dc2
	inc b			;6dc3
	inc bc			;6dc4
	or h			;6dc5
	ld l,b			;6dc6
	ld (hl),d		;6dc7
	or d			;6dc8
	ld d,e			;6dc9
	ld d,c			;6dca
	nop			;6dcb
	sbc a,d			;6dcc
	sbc a,(hl)		;6dcd
	cp e			;6dce
	cp d			;6dcf
	cp l			;6dd0
	nop			;6dd1
	nop			;6dd2
	inc b			;6dd3
	inc bc			;6dd4
	or (hl)			;6dd5
	ld l,b			;6dd6
	ld (hl),d		;6dd7
	cp b			;6dd8
	ld l,c			;6dd9
	ld e,h			;6dda
	nop			;6ddb
	and a			;6ddc
	and c			;6ddd
	cp d			;6dde
	cp l			;6ddf
	cp (hl)			;6de0
	nop			;6de1
	nop			;6de2
	inc b			;6de3
	inc bc			;6de4
	or h			;6de5
	ld l,b			;6de6
	ld (hl),d		;6de7
	or d			;6de8
	ld d,e			;6de9
	ld d,c			;6dea
	nop			;6deb
	sbc a,c			;6dec
	sbc a,h			;6ded
	cp l			;6dee
	cp (hl)			;6def
	and l			;6df0
	nop			;6df1
	nop			;6df2
	inc b			;6df3
	inc bc			;6df4
	or (hl)			;6df5
	ld l,b			;6df6
	ld (hl),d		;6df7
	cp b			;6df8
	ld l,c			;6df9
	ld l,l			;6dfa
	nop			;6dfb
	xor e			;6dfc
	sbc a,a			;6dfd
	cp (hl)			;6dfe
	adc a,a			;6dff
	adc a,l			;6e00
	nop			;6e01
	nop			;6e02
	inc b			;6e03
	inc bc			;6e04
	or h			;6e05
	ld l,b			;6e06
	ld (hl),d		;6e07
	or d			;6e08
	ld d,e			;6e09
	ld d,c			;6e0a
	nop			;6e0b
	sbc a,d			;6e0c
	sbc a,(hl)		;6e0d
	cp e			;6e0e
	cp d			;6e0f
	cp h			;6e10
	nop			;6e11
	nop			;6e12
	inc b			;6e13
	inc bc			;6e14
	or (hl)			;6e15
	ld l,b			;6e16
	ld (hl),d		;6e17
	cp b			;6e18
	ld l,c			;6e19
	ld e,h			;6e1a
	nop			;6e1b
	and a			;6e1c
	and c			;6e1d
	cp d			;6e1e
	cp h			;6e1f
	jp nz,00301h		;6e20
	inc bc			;6e23
	ld a,(bc)		;6e24
	ld c,a			;6e25
	ld d,b			;6e26
	ld d,d			;6e27
	ld c,l			;6e28
	ld c,a			;6e29
	ld d,b			;6e2a
	ld d,d			;6e2b
	ld c,l			;6e2c
	ld c,a			;6e2d
	ld d,b			;6e2e
	adc a,(hl)		;6e2f
	sub d			;6e30
	sub h			;6e31
	sub b			;6e32
	adc a,(hl)		;6e33
	sub d			;6e34
	sub h			;6e35
	sub b			;6e36
	adc a,(hl)		;6e37
	sub d			;6e38
	sub c			;6e39
	sbc a,b			;6e3a
	cp (hl)			;6e3b
	and l			;6e3c
	sub c			;6e3d
	cp h			;6e3e
	jp nz,091a5h		;6e3f
	sbc a,b			;6e42
	ld bc,00303h		;6e43
	ld a,(bc)		;6e46
	ld d,d			;6e47
	ld c,l			;6e48
	ld l,h			;6e49
	ld l,(hl)		;6e4a
	ld d,d			;6e4b
	ld c,l			;6e4c
	ld l,h			;6e4d
	ld l,(hl)		;6e4e
	ld d,d			;6e4f
	ld c,l			;6e50
	sub (hl)		;6e51
	and h			;6e52
	and e			;6e53
	and (hl)		;6e54
	sub (hl)		;6e55
	and h			;6e56
	and e			;6e57
	and (hl)		;6e58
	sub (hl)		;6e59
	and h			;6e5a
	sbc a,b			;6e5b
	cp (hl)			;6e5c
	and l			;6e5d
	adc a,l			;6e5e
	cp h			;6e5f
	jp nz,08da5h		;6e60
	sbc a,b			;6e63
	cp (hl)			;6e64
	ld bc,00303h		;6e65
	ld a,(bc)		;6e68
	ld d,d			;6e69
	ld c,l			;6e6a
	ld c,a			;6e6b
	ld d,b			;6e6c
	ld d,d			;6e6d
	ld c,l			;6e6e
	ld c,a			;6e6f
	ld d,b			;6e70
	ld d,d			;6e71
	ld c,l			;6e72
	sub h			;6e73
	sub b			;6e74
	adc a,(hl)		;6e75
	sub d			;6e76
	sub h			;6e77
	sub b			;6e78
	adc a,(hl)		;6e79
	sub d			;6e7a
	sub h			;6e7b
	sub b			;6e7c
	cp (hl)			;6e7d
	and l			;6e7e
	sub c			;6e7f
	cp h			;6e80
	jp nz,091a5h		;6e81
	sbc a,b			;6e84
	cp (hl)			;6e85
	and l			;6e86
	ld bc,00303h		;6e87
	ld a,(bc)		;6e8a
	ld l,h			;6e8b
	ld l,(hl)		;6e8c
	ld d,d			;6e8d
	ld c,l			;6e8e
	ld l,h			;6e8f
	ld l,(hl)		;6e90
	ld d,d			;6e91
	ld c,l			;6e92
	ld l,h			;6e93
	ld l,(hl)		;6e94
	and e			;6e95
	and (hl)		;6e96
	sub (hl)		;6e97
	and h			;6e98
	and e			;6e99
	and (hl)		;6e9a
	sub (hl)		;6e9b
	and h			;6e9c
	and e			;6e9d
	and (hl)		;6e9e
	and l			;6e9f
	adc a,l			;6ea0
	cp h			;6ea1
	jp nz,08da5h		;6ea2
	sbc a,b			;6ea5
	cp (hl)			;6ea6
	and l			;6ea7
	adc a,l			;6ea8
	ld bc,00303h		;6ea9
	ld a,(bc)		;6eac
	ld c,a			;6ead
	ld d,b			;6eae
	ld d,d			;6eaf
	ld c,l			;6eb0
	ld c,a			;6eb1
	ld d,b			;6eb2
	ld d,d			;6eb3
	ld c,l			;6eb4
	ld c,a			;6eb5
	ld d,b			;6eb6
	adc a,(hl)		;6eb7
	sub d			;6eb8
	sub h			;6eb9
	sub b			;6eba
	adc a,(hl)		;6ebb
	sub d			;6ebc
	sub h			;6ebd
	sub b			;6ebe
	adc a,(hl)		;6ebf
	sub d			;6ec0
	sub c			;6ec1
	cp h			;6ec2
	jp nz,091a5h		;6ec3
	sbc a,b			;6ec6
	cp (hl)			;6ec7
	and l			;6ec8
	sub c			;6ec9
	cp h			;6eca
	ld bc,00303h		;6ecb
	ld a,(bc)		;6ece
	ld d,d			;6ecf
	ld c,l			;6ed0
	ld l,h			;6ed1
	ld l,(hl)		;6ed2
	ld d,d			;6ed3
	ld c,l			;6ed4
	ld l,h			;6ed5
	ld l,(hl)		;6ed6
	ld d,d			;6ed7
	ld c,l			;6ed8
	sub (hl)		;6ed9
	and h			;6eda
	and e			;6edb
	and (hl)		;6edc
	sub (hl)		;6edd
	and h			;6ede
	and e			;6edf
	and (hl)		;6ee0
	sub (hl)		;6ee1
	and h			;6ee2
	cp h			;6ee3
	jp nz,08da5h		;6ee4
	sbc a,b			;6ee7
	cp (hl)			;6ee8
	and l			;6ee9
	adc a,l			;6eea
	cp h			;6eeb
	jp nz,00301h		;6eec
	inc bc			;6eef
	ld a,(bc)		;6ef0
	ld d,d			;6ef1
	ld c,l			;6ef2
	ld c,a			;6ef3
	ld d,b			;6ef4
	ld d,d			;6ef5
	ld c,l			;6ef6
	ld c,a			;6ef7
	ld d,b			;6ef8
	ld d,d			;6ef9
	ld c,l			;6efa
	sub h			;6efb
	sub b			;6efc
	adc a,(hl)		;6efd
	sub d			;6efe
	sub h			;6eff
	sub b			;6f00
	adc a,(hl)		;6f01
	sub d			;6f02
	sub h			;6f03
	sub b			;6f04
	jp nz,091a5h		;6f05
	sbc a,b			;6f08
	cp (hl)			;6f09
	and l			;6f0a
	sub c			;6f0b
	cp h			;6f0c
	jp nz,001a5h		;6f0d
	inc bc			;6f10
	inc bc			;6f11
	ld a,(bc)		;6f12
	ld l,h			;6f13
	ld l,(hl)		;6f14
	ld d,d			;6f15
	ld c,l			;6f16
	ld l,h			;6f17
	ld l,(hl)		;6f18
	ld d,d			;6f19
	ld c,l			;6f1a
	ld l,h			;6f1b
	ld l,(hl)		;6f1c
	and e			;6f1d
	and (hl)		;6f1e
	sub (hl)		;6f1f
	and h			;6f20
	and e			;6f21
	and (hl)		;6f22
	sub (hl)		;6f23
	and h			;6f24
	and e			;6f25
	and (hl)		;6f26
	and l			;6f27
	adc a,l			;6f28
	sbc a,b			;6f29
	cp (hl)			;6f2a
	and l			;6f2b
	adc a,l			;6f2c
	cp h			;6f2d
	jp nz,08da5h		;6f2e
	nop			;6f31
	dec c			;6f32
	inc b			;6f33
	inc bc			;6f34
	ld e,e			;6f35
	ld a,l			;6f36
	or l			;6f37
	ld l,e			;6f38
	ld l,d			;6f39
	or e			;6f3a
	sbc a,l			;6f3b
	sbc a,e			;6f3c
	nop			;6f3d
	cp (hl)			;6f3e
	cp e			;6f3f
	cp d			;6f40
	nop			;6f41
	dec c			;6f42
	inc b			;6f43
	inc bc			;6f44
	ld e,e			;6f45
	ld a,l			;6f46
	or a			;6f47
	ld c,h			;6f48
	ld (hl),e		;6f49
	cp c			;6f4a
l6f4bh:
	and b			;6f4b
	xor b			;6f4c
	nop			;6f4d
	and l			;6f4e
	sub e			;6f4f
	cp h			;6f50
	nop			;6f51
	dec c			;6f52
	inc b			;6f53
	inc bc			;6f54
	ld e,e			;6f55
	ld a,l			;6f56
	or l			;6f57
	ld l,e			;6f58
	ld l,d			;6f59
	or e			;6f5a
	xor c			;6f5b
	sbc a,e			;6f5c
	or c			;6f5d
	sub l			;6f5e
	cp h			;6f5f
	jp nz,00d00h		;6f60
	inc b			;6f63
	inc bc			;6f64
	ld e,e			;6f65
	ld a,l			;6f66
	or a			;6f67
	ld c,(hl)		;6f68
	ld (hl),e		;6f69
	cp c			;6f6a
	and d			;6f6b
	xor d			;6f6c
	nop			;6f6d
	cp h			;6f6e
	jp nz,000bbh		;6f6f
	dec c			;6f72
	inc b			;6f73
	inc bc			;6f74
	ld e,e			;6f75
	ld a,l			;6f76
	or l			;6f77
	ld l,e			;6f78
	ld l,d			;6f79
	or e			;6f7a
	sbc a,l			;6f7b
	sbc a,e			;6f7c
	nop			;6f7d
	jp nz,0babbh		;6f7e
	nop			;6f81
	dec c			;6f82
	inc b			;6f83
	inc bc			;6f84
	ld e,e			;6f85
	ld a,l			;6f86
	or a			;6f87
	ld c,h			;6f88
	ld (hl),e		;6f89
	cp c			;6f8a
	and b			;6f8b
	xor b			;6f8c
	nop			;6f8d
	and l			;6f8e
	sub e			;6f8f
	cp l			;6f90
	nop			;6f91
	dec c			;6f92
	inc b			;6f93
	inc bc			;6f94
	ld e,e			;6f95
	ld a,l			;6f96
	or l			;6f97
	ld l,e			;6f98
	ld l,d			;6f99
	or e			;6f9a
	xor c			;6f9b
	sbc a,e			;6f9c
	or c			;6f9d
	sub l			;6f9e
	cp l			;6f9f
	cp (hl)			;6fa0
	nop			;6fa1
	dec c			;6fa2
	inc b			;6fa3
	inc bc			;6fa4
	ld e,e			;6fa5
	ld a,l			;6fa6
	or a			;6fa7
	ld c,(hl)		;6fa8
	ld (hl),e		;6fa9
	cp c			;6faa
	and d			;6fab
	xor d			;6fac
	nop			;6fad
	sbc a,b			;6fae
	cp (hl)			;6faf
	cp e			;6fb0
	ld sp,hl		;6fb1
	adc a,a			;6fb2
	ld c,l			;6fb3
	sub b			;6fb4
	and c			;6fb5
	sub b			;6fb6
	push af			;6fb7
	sub b			;6fb8
	defb 0fdh,090h,005h ;illegal sequence	;6fb9
	sub c			;6fbc
	dec c			;6fbd
	sub c			;6fbe
	dec d			;6fbf
	sub c			;6fc0
	dec e			;6fc1
	sub c			;6fc2
	dec h			;6fc3
	sub c			;6fc4
	dec l			;6fc5
	sub c			;6fc6
	dec (hl)		;6fc7
	sub c			;6fc8
	ld b,c			;6fc9
	sub c			;6fca
	ld h,c			;6fcb
	sub c			;6fcc
	ld h,a			;6fcd
	sub c			;6fce
	ld l,l			;6fcf
	sub c			;6fd0
	ld (hl),e		;6fd1
	sub c			;6fd2
	ld a,c			;6fd3
	sub c			;6fd4
	dec (hl)		;6fd5
	sub d			;6fd6
	add a,c			;6fd7
	sub d			;6fd8
	cp e			;6fd9
	sub d			;6fda
	ex (sp),hl		;6fdb
	sub d			;6fdc
	rrca			;6fdd
	sub e			;6fde
	ld c,e			;6fdf
	sub e			;6fe0
	add a,c			;6fe1
	sub e			;6fe2
	add a,093h		;6fe3
	add a,093h		;6fe5
	rst 10h			;6fe7
	sub c			;6fe8
	add a,093h		;6fe9
	ld a,(bc)		;6feb
	sub h			;6fec
	ld c,(hl)		;6fed
	sub h			;6fee
	sub d			;6fef
	sub h			;6ff0
	sub 094h		;6ff1
	ld a,(de)		;6ff3
	sub l			;6ff4
	ld e,(hl)		;6ff5
	sub l			;6ff6
	and d			;6ff7
	sub l			;6ff8
	nop			;6ff9
	nop			;6ffa
	ex af,af'		;6ffb
	ld a,(bc)		;6ffc
	nop			;6ffd
	nop			;6ffe
	nop			;6fff
	ld (de),a		;7000
	ld b,h			;7001
	ld b,b			;7002
	inc d			;7003
	nop			;7004
	nop			;7005
	nop			;7006
	nop			;7007
	nop			;7008
	dec e			;7009
	jr z,l704bh		;700a
	cpl			;700c
	ld b,d			;700d
	ld a,(de)		;700e
	nop			;700f
	nop			;7010
	nop			;7011
	add hl,de		;7012
	ld b,e			;7013
	ld c,d			;7014
	inc l			;7015
	ld e,01fh		;7016
	inc (hl)		;7018
	dec sp			;7019
	rrca			;701a
	inc c			;701b
	add hl,sp		;701c
	ld b,l			;701d
	ld e,01fh		;701e
	jr nz,l7043h		;7020
	ld l,047h		;7022
	djnz $+15		;7024
	ld b,(hl)		;7026
	inc a			;7027
	jr nz,l704bh		;7028
	ld (03d23h),hl		;702a
	ld b,c			;702d
	ld de,0350eh		;702e
	ld sp,02733h		;7031
	dec h			;7034
	ld (01548h),a		;7035
	nop			;7038
	nop			;7039
	nop			;703a
	rla			;703b
	ld c,c			;703c
	ld a,030h		;703d
	scf			;703f
	jr l7042h		;7040
l7042h:
	nop			;7042
l7043h:
	nop			;7043
	nop			;7044
	nop			;7045
	inc de			;7046
	ld a,(01638h)		;7047
	nop			;704a
l704bh:
	nop			;704b
	nop			;704c
	nop			;704d
	nop			;704e
	ex af,af'		;704f
	ld a,(bc)		;7050
	nop			;7051
l7052h:
	nop			;7052
	nop			;7053
	ld (de),a		;7054
	ld b,h			;7055
	ld b,b			;7056
	inc d			;7057
	nop			;7058
	nop			;7059
	nop			;705a
	nop			;705b
	nop			;705c
	inc e			;705d
	jr z,l709fh		;705e
	cpl			;7060
	ld (hl),01ah		;7061
	nop			;7063
	nop			;7064
	nop			;7065
	dec de			;7066
	ld hl,(02b29h)		;7067
	ld (03423h),hl		;706a
	dec sp			;706d
	rrca			;706e
	inc c			;706f
	add hl,sp		;7070
	ld b,l			;7071
	ld (02523h),hl		;7072
	ld (0472eh),a		;7075
	djnz $+15		;7078
	ld b,(hl)		;707a
	inc a			;707b
	dec h			;707c
	ld (01f1eh),a		;707d
	dec a			;7080
	ld b,c			;7081
	ld de,0350eh		;7082
	ld sp,02624h		;7085
	jr nz,l70abh		;7088
	ld c,b			;708a
	dec d			;708b
	nop			;708c
	nop			;708d
	nop			;708e
	rla			;708f
	ld c,c			;7090
	ld a,030h		;7091
	scf			;7093
	jr l7096h		;7094
l7096h:
	nop			;7096
	nop			;7097
	nop			;7098
	nop			;7099
	inc de			;709a
	ld a,(01638h)		;709b
	nop			;709e
l709fh:
	nop			;709f
	nop			;70a0
	nop			;70a1
	nop			;70a2
	ex af,af'		;70a3
	ld a,(bc)		;70a4
	nop			;70a5
	nop			;70a6
	nop			;70a7
	ld (de),a		;70a8
	ld b,h			;70a9
	ld b,b			;70aa
l70abh:
	inc d			;70ab
	nop			;70ac
	nop			;70ad
	nop			;70ae
	nop			;70af
	nop			;70b0
	inc e			;70b1
	jr z,l70f3h		;70b2
	cpl			;70b4
	ld (hl),01ah		;70b5
	nop			;70b7
	nop			;70b8
	nop			;70b9
	dec de			;70ba
	ld hl,(00b29h)		;70bb
	ld a,(bc)		;70be
	call z,03b34h		;70bf
	rrca			;70c2
	inc c			;70c3
	add hl,sp		;70c4
	ld b,l			;70c5
	ld a,(bc)		;70c6
	call z,009cdh		;70c7
	ld l,047h		;70ca
	djnz $+15		;70cc
	ld b,(hl)		;70ce
	inc a			;70cf
	call 00a09h		;70d0
	call z,0413dh		;70d3
	ld de,0350eh		;70d6
	ld sp,02733h		;70d9
	call 04809h		;70dc
	dec d			;70df
	nop			;70e0
	nop			;70e1
	nop			;70e2
	rla			;70e3
	ld c,c			;70e4
	ld a,030h		;70e5
	scf			;70e7
	jr l70eah		;70e8
l70eah:
	nop			;70ea
	nop			;70eb
	nop			;70ec
	nop			;70ed
	inc de			;70ee
	ld a,(01638h)		;70ef
	nop			;70f2
l70f3h:
	nop			;70f3
	nop			;70f4
	nop			;70f5
	nop			;70f6
	ld (bc),a		;70f7
	ld (bc),a		;70f8
	ld bc,0b802h		;70f9
	cp c			;70fc
	nop			;70fd
	nop			;70fe
	ld (bc),a		;70ff
	ld (bc),a		;7100
	inc bc			;7101
	inc b			;7102
	cp d			;7103
	cp e			;7104
	nop			;7105
	nop			;7106
	ld (bc),a		;7107
	ld (bc),a		;7108
	dec b			;7109
	ld b,0b8h		;710a
	cp c			;710c
	nop			;710d
	nop			;710e
	ld (bc),a		;710f
	ld (bc),a		;7110
	rlca			;7111
	ex af,af'		;7112
	cp d			;7113
	cp e			;7114
	nop			;7115
	nop			;7116
	ld (bc),a		;7117
	ld (bc),a		;7118
	cp h			;7119
	cp l			;711a
	add hl,bc		;711b
	ld a,(bc)		;711c
	nop			;711d
	nop			;711e
	ld (bc),a		;711f
	ld (bc),a		;7120
	cp (hl)			;7121
	cp a			;7122
	dec bc			;7123
	inc c			;7124
	nop			;7125
	nop			;7126
	ld (bc),a		;7127
	ld (bc),a		;7128
	cp h			;7129
	cp l			;712a
	dec c			;712b
	ld c,000h		;712c
	nop			;712e
	ld (bc),a		;712f
	ld (bc),a		;7130
	cp (hl)			;7131
	cp a			;7132
	rrca			;7133
	djnz l7136h		;7134
l7136h:
	nop			;7136
	ld (bc),a		;7137
	inc b			;7138
	xor d			;7139
	xor h			;713a
	xor l			;713b
	xor e			;713c
	or h			;713d
	or l			;713e
	or (hl)			;713f
	or a			;7140
	nop			;7141
	nop			;7142
	ld (bc),a		;7143
	inc b			;7144
	or b			;7145
	or c			;7146
	or d			;7147
	or e			;7148
	xor b			;7149
	xor (hl)		;714a
	xor a			;714b
	xor c			;714c
	nop			;714d
	nop			;714e
	ld (bc),a		;714f
	inc b			;7150
	nop			;7151
	nop			;7152
	nop			;7153
	nop			;7154
	ret nz			;7155
	pop bc			;7156
	jp nz,000c3h		;7157
	nop			;715a
	ld bc,0c404h		;715b
	push bc			;715e
	add a,0c7h		;715f
	nop			;7161
	nop			;7162
	ld (bc),a		;7163
	ld bc,0cdcch		;7164
	nop			;7167
	nop			;7168
	ld bc,0ca02h		;7169
	rlc c			;716c
	nop			;716e
	ld bc,0cc02h		;716f
	call 00000h		;7172
	ld bc,0ca02h		;7175
	rlc b			;7178
	nop			;717a
	add hl,bc		;717b
	ld a,(bc)		;717c
	nop			;717d
	nop			;717e
	nop			;717f
	nop			;7180
	sbc a,b			;7181
	sbc a,c			;7182
	add hl,sp		;7183
	ld e,c			;7184
	xor d			;7185
	xor a			;7186
	nop			;7187
	nop			;7188
	nop			;7189
	sbc a,d			;718a
	ld a,d			;718b
	ld l,a			;718c
	ld e,d			;718d
	ld a,(01f3bh)		;718e
	nop			;7191
	nop			;7192
	nop			;7193
	or c			;7194
l7195h:
	and a			;7195
	ld (hl),b		;7196
	ld e,e			;7197
	ld (hl),h		;7198
	adc a,a			;7199
	jr nz,l719ch		;719a
l719ch:
	nop			;719c
	sub a			;719d
	or (hl)			;719e
	or a			;719f
	ccf			;71a0
	ld (hl),d		;71a1
	xor a			;71a2
	ld (hl),b		;71a3
	ld c,(hl)		;71a4
	nop			;71a5
	nop			;71a6
	sbc a,b			;71a7
	cp d			;71a8
	cp e			;71a9
	ld d,h			;71aa
	or c			;71ab
	ld b,b			;71ac
	dec h			;71ad
	ld h,000h		;71ae
	nop			;71b0
	sbc a,c			;71b1
	sbc a,l			;71b2
	ld a,e			;71b3
	ld d,e			;71b4
	or b			;71b5
	scf			;71b6
	jr c,l71f2h		;71b7
	nop			;71b9
	sbc a,c			;71ba
	ld d,c			;71bb
	ld c,l			;71bc
	ld a,c			;71bd
	ld l,(hl)		;71be
	ld l,a			;71bf
	ld (hl),e		;71c0
	ld (hl),l		;71c1
	ret nz			;71c2
	sbc a,c			;71c3
	ld d,c			;71c4
	ld c,l			;71c5
	xor d			;71c6
	xor h			;71c7
	xor d			;71c8
	xor e			;71c9
	jp 05762h		;71ca
	ld d,c			;71cd
	ld c,l			;71ce
	xor (hl)		;71cf
	and (hl)		;71d0
	xor (hl)		;71d1
	and (hl)		;71d2
	ld (hl),c		;71d3
	ld e,(hl)		;71d4
	ld h,b			;71d5
	ld h,c			;71d6
	nop			;71d7
	nop			;71d8
	add hl,bc		;71d9
	ld a,(bc)		;71da
	ld l,(hl)		;71db
	xor e			;71dc
	adc a,h			;71dd
	and h			;71de
	sbc a,(hl)		;71df
	nop			;71e0
	nop			;71e1
	nop			;71e2
	nop			;71e3
	nop			;71e4
	inc e			;71e5
	ld c,b			;71e6
	ret nz			;71e7
	pop bc			;71e8
	jp nz,09ec3h		;71e9
	nop			;71ec
	nop			;71ed
	nop			;71ee
	dec e			;71ef
	ld (hl),a		;71f0
	ld h,h			;71f1
l71f2h:
	ld h,(hl)		;71f2
	ld l,b			;71f3
	adc a,c			;71f4
	add a,d			;71f5
	and e			;71f6
	nop			;71f7
	nop			;71f8
	ld (hl),h		;71f9
	ld b,e			;71fa
	ld h,l			;71fb
	ld h,h			;71fc
	ld l,c			;71fd
	ld l,l			;71fe
	sbc a,(hl)		;71ff
	sbc a,a			;7200
	nop			;7201
	nop			;7202
	daa			;7203
	jr z,l724dh		;7204
	ld e,e			;7206
	ld h,e			;7207
	ld c,a			;7208
	ld h,e			;7209
	ld c,a			;720a
	and e			;720b
	nop			;720c
	add hl,hl		;720d
	ld hl,(l772bh)		;720e
	ld e,d			;7211
	ld e,h			;7212
	ld e,d			;7213
	ld e,h			;7214
	halt			;7215
	and l			;7216
	dec (hl)		;7217
	ld (hl),03bh		;7218
	inc a			;721a
	add a,d			;721b
	add a,d			;721c
	add a,d			;721d
	add a,0c7h		;721e
	or d			;7220
	ld e,l			;7221
	ret z			;7222
	ret			;7223
	add a,0cbh		;7224
	ret z			;7226
	ret			;7227
	push bc			;7228
	jp nz,058b3h		;7229
	adc a,b			;722c
	adc a,c			;722d
	adc a,d			;722e
	adc a,e			;722f
	adc a,b			;7230
	adc a,c			;7231
	adc a,h			;7232
	and c			;7233
	nop			;7234
	nop			;7235
	nop			;7236
	add hl,bc		;7237
	ex af,af'		;7238
	nop			;7239
	nop			;723a
	nop			;723b
	nop			;723c
	nop			;723d
	xor a			;723e
	ld l,(hl)		;723f
	nop			;7240
	nop			;7241
	nop			;7242
	nop			;7243
	nop			;7244
	dec sp			;7245
	rra			;7246
	inc e			;7247
	ld c,b			;7248
	nop			;7249
	nop			;724a
	nop			;724b
	halt			;724c
l724dh:
	ld l,h			;724d
	jr nz,$+31		;724e
	ld (hl),a		;7250
	nop			;7251
	nop			;7252
	jr nc,l72aeh		;7253
	dec l			;7255
	dec a			;7256
	ld b,c			;7257
	ld b,e			;7258
	nop			;7259
	ld d,l			;725a
	inc l			;725b
	dec l			;725c
	ld l,02fh		;725d
	ld b,d			;725f
	nop			;7260
	xor l			;7261
	ld sp,02e2dh		;7262
	ld l,b			;7265
	ld c,c			;7266
	nop			;7267
	nop			;7268
	rra			;7269
	inc e			;726a
	ld (03433h),a		;726b
	nop			;726e
	nop			;726f
	nop			;7270
	jr nz,l7290h		;7271
	ld d,b			;7273
	and a			;7274
	nop			;7275
	nop			;7276
	nop			;7277
	nop			;7278
	ld c,d			;7279
	ld c,e			;727a
	ld d,(hl)		;727b
	nop			;727c
	nop			;727d
	nop			;727e
	nop			;727f
	nop			;7280
	nop			;7281
	nop			;7282
	ld b,009h		;7283
	nop			;7285
	nop			;7286
	nop			;7287
	nop			;7288
	nop			;7289
	nop			;728a
	xor a			;728b
	ld l,(hl)		;728c
	nop			;728d
	nop			;728e
	nop			;728f
l7290h:
	nop			;7290
	add a,h			;7291
	ld c,l			;7292
	ld c,(hl)		;7293
	rra			;7294
	inc e			;7295
	ld c,b			;7296
	or b			;7297
	and (hl)		;7298
	ld c,a			;7299
	ld d,b			;729a
	ld d,c			;729b
	ld a,c			;729c
	jr nz,l72bch		;729d
	ld (hl),a		;729f
	rra			;72a0
	inc e			;72a1
	ld b,h			;72a2
	ld b,l			;72a3
	ld b,(hl)		;72a4
	ld h,a			;72a5
	ld c,h			;72a6
	ld (hl),h		;72a7
	ld b,e			;72a8
	jr nz,l72c8h		;72a9
	ld c,b			;72ab
	ld l,d			;72ac
	ld l,e			;72ad
l72aeh:
	ld a,b			;72ae
	nop			;72af
	nop			;72b0
	nop			;72b1
	and b			;72b2
	ld l,h			;72b3
	ld d,d			;72b4
	nop			;72b5
	nop			;72b6
	nop			;72b7
	nop			;72b8
	nop			;72b9
	nop			;72ba
	nop			;72bb
l72bch:
	nop			;72bc
	inc b			;72bd
	add hl,bc		;72be
	sub (hl)		;72bf
	sub a			;72c0
	sbc a,l			;72c1
	sbc a,h			;72c2
	ld (hl),d		;72c3
	add a,c			;72c4
	adc a,b			;72c5
	xor (hl)		;72c6
	ld l,(hl)		;72c7
l72c8h:
	rra			;72c8
	inc e			;72c9
	ld c,e			;72ca
	ld c,h			;72cb
	ld c,h			;72cc
	ld c,h			;72cd
	ld e,l			;72ce
	rra			;72cf
	inc e			;72d0
	jr nz,l72f0h		;72d1
	add a,b			;72d3
	inc a			;72d4
	inc a			;72d5
	inc a			;72d6
	adc a,d			;72d7
	jr nz,l72f7h		;72d8
	sbc a,e			;72da
	cp b			;72db
	cp c			;72dc
	ld h,(hl)		;72dd
	ld a,0a8h		;72de
	xor c			;72e0
	ld c,(hl)		;72e1
	ld (hl),h		;72e2
	nop			;72e3
	nop			;72e4
	dec b			;72e5
	ex af,af'		;72e6
	sub (hl)		;72e7
	sub a			;72e8
	sbc a,(hl)		;72e9
	nop			;72ea
	nop			;72eb
	nop			;72ec
	nop			;72ed
	nop			;72ee
	rra			;72ef
l72f0h:
	inc e			;72f0
	ld d,d			;72f1
	ld c,d			;72f2
	sbc a,a			;72f3
	sbc a,(hl)		;72f4
	nop			;72f5
	nop			;72f6
l72f7h:
	jr nz,l7316h		;72f7
	ld b,a			;72f9
	ld d,e			;72fa
	ld d,h			;72fb
	xor b			;72fc
	xor l			;72fd
	ld l,(hl)		;72fe
	add a,a			;72ff
	ld e,h			;7300
	ld (hl),c		;7301
	dec a			;7302
	ld a,03fh		;7303
	rra			;7305
	inc e			;7306
	nop			;7307
	nop			;7308
	nop			;7309
	adc a,(hl)		;730a
	ld h,e			;730b
	ld h,c			;730c
	jr nz,l732ch		;730d
	nop			;730f
	nop			;7310
	ex af,af'		;7311
	rlca			;7312
	sub (hl)		;7313
	sub a			;7314
	nop			;7315
l7316h:
	nop			;7316
	nop			;7317
	nop			;7318
	nop			;7319
	rra			;731a
	inc e			;731b
	and l			;731c
	nop			;731d
	nop			;731e
	nop			;731f
	nop			;7320
	jr nz,l7340h		;7321
	ld e,(hl)		;7323
	and b			;7324
	nop			;7325
	nop			;7326
	nop			;7327
	or d			;7328
	ld a,b			;7329
	ld e,a			;732a
	ld d,(hl)		;732b
l732ch:
	and b			;732c
	nop			;732d
	nop			;732e
	nop			;732f
	or l			;7330
	ld b,b			;7331
	ld a,e			;7332
	ld d,(hl)		;7333
	and b			;7334
	nop			;7335
	nop			;7336
	nop			;7337
	ld a,l			;7338
	ld b,b			;7339
	ld a,(hl)		;733a
	ld l,l			;733b
	add a,(hl)		;733c
	nop			;733d
	nop			;733e
	nop			;733f
l7340h:
	ld (hl),e		;7340
	ld b,c			;7341
	rra			;7342
	inc e			;7343
	nop			;7344
	nop			;7345
	nop			;7346
	nop			;7347
	ld h,l			;7348
	jr nz,l7368h		;7349
	nop			;734b
	nop			;734c
	ld a,(bc)		;734d
	dec b			;734e
	sub (hl)		;734f
	sub a			;7350
	nop			;7351
	nop			;7352
	nop			;7353
	rra			;7354
	inc e			;7355
	sbc a,b			;7356
	nop			;7357
	nop			;7358
	jr nz,l7378h		;7359
	xor c			;735b
	and c			;735c
	nop			;735d
	ld a,h			;735e
	ld (hl),l		;735f
	ld d,a			;7360
	and d			;7361
	nop			;7362
	or h			;7363
	ld b,d			;7364
	ld d,l			;7365
	ld c,c			;7366
	nop			;7367
l7368h:
	or e			;7368
	ld l,c			;7369
	ld b,e			;736a
	add a,e			;736b
	and c			;736c
	nop			;736d
	ld l,d			;736e
	ld b,h			;736f
	ld e,b			;7370
	and d			;7371
	nop			;7372
	ld l,e			;7373
	ld b,l			;7374
	adc a,l			;7375
	add a,l			;7376
	nop			;7377
l7378h:
	adc a,e			;7378
	ld b,(hl)		;7379
	rra			;737a
	inc e			;737b
	nop			;737c
	nop			;737d
	ld h,a			;737e
	jr nz,l739eh		;737f
	nop			;7381
	nop			;7382
	dec b			;7383
	dec c			;7384
	nop			;7385
	nop			;7386
	nop			;7387
	nop			;7388
	nop			;7389
	inc bc			;738a
	inc b			;738b
	dec b			;738c
	nop			;738d
	nop			;738e
	nop			;738f
	nop			;7390
	nop			;7391
	nop			;7392
	ld (bc),a		;7393
	ld d,010h		;7394
	dec h			;7396
	ld h,027h		;7397
	jr z,$+8		;7399
	rlca			;739b
	ex af,af'		;739c
	nop			;739d
l739eh:
	nop			;739e
	ld a,(bc)		;739f
	jr $+15			;73a0
	rrca			;73a2
	inc de			;73a3
	inc de			;73a4
	add hl,hl		;73a5
	ld hl,(0212bh)		;73a6
	dec de			;73a9
	rla			;73aa
	ld de,0191ah		;73ab
	ld c,014h		;73ae
	add hl,bc		;73b0
	ld e,01eh		;73b1
	inc hl			;73b3
	inc h			;73b4
	ld (de),a		;73b5
	dec d			;73b6
	dec d			;73b7
	ld (01a00h),hl		;73b8
	dec bc			;73bb
	inc c			;73bc
	nop			;73bd
	nop			;73be
	nop			;73bf
	nop			;73c0
	nop			;73c1
	nop			;73c2
	nop			;73c3
	nop			;73c4
	nop			;73c5
	nop			;73c6
	nop			;73c7
	inc b			;73c8
	djnz l73cbh		;73c9
l73cbh:
	nop			;73cb
	nop			;73cc
	nop			;73cd
	nop			;73ce
	nop			;73cf
	nop			;73d0
	nop			;73d1
	nop			;73d2
	nop			;73d3
	nop			;73d4
	nop			;73d5
	nop			;73d6
	add a,0c7h		;73d7
	or d			;73d9
	nop			;73da
	nop			;73db
	nop			;73dc
	nop			;73dd
	nop			;73de
	nop			;73df
	nop			;73e0
	ret z			;73e1
	ret			;73e2
	add a,0cbh		;73e3
	ret z			;73e5
	ret			;73e6
	push bc			;73e7
	jp nz,000b3h		;73e8
	nop			;73eb
	nop			;73ec
	nop			;73ed
	nop			;73ee
	nop			;73ef
	nop			;73f0
	adc a,b			;73f1
	adc a,c			;73f2
	adc a,d			;73f3
	adc a,e			;73f4
	adc a,b			;73f5
	adc a,c			;73f6
	adc a,h			;73f7
	and c			;73f8
	nop			;73f9
	add a,l			;73fa
	add a,e			;73fb
	add a,(hl)		;73fc
	ld a,d			;73fd
	add a,h			;73fe
	ld a,l			;73ff
	add a,(hl)		;7400
	ld a,d			;7401
	add a,l			;7402
	add a,e			;7403
	add a,(hl)		;7404
	ld a,d			;7405
	add a,h			;7406
	sub c			;7407
	sub e			;7408
	sub h			;7409
	nop			;740a
	nop			;740b
	inc b			;740c
	djnz l740fh		;740d
l740fh:
	nop			;740f
	nop			;7410
	nop			;7411
	nop			;7412
	nop			;7413
	nop			;7414
	nop			;7415
	nop			;7416
	nop			;7417
	nop			;7418
	nop			;7419
	nop			;741a
	add a,0c7h		;741b
	or h			;741d
	nop			;741e
	nop			;741f
	nop			;7420
	nop			;7421
	nop			;7422
	nop			;7423
	nop			;7424
	add a,0cbh		;7425
	call z,0c6cdh		;7427
	set 1,d			;742a
	pop bc			;742c
	or l			;742d
	nop			;742e
	nop			;742f
	nop			;7430
	nop			;7431
	nop			;7432
	nop			;7433
	nop			;7434
	adc a,l			;7435
	adc a,(hl)		;7436
	adc a,a			;7437
	cp h			;7438
	adc a,l			;7439
	adc a,(hl)		;743a
	cp l			;743b
	and d			;743c
	nop			;743d
	add a,e			;743e
	add a,(hl)		;743f
	add a,a			;7440
	add a,h			;7441
	ld a,l			;7442
	add a,(hl)		;7443
	add a,a			;7444
	add a,l			;7445
	add a,e			;7446
	add a,(hl)		;7447
	add a,a			;7448
	add a,h			;7449
	ld a,l			;744a
	add a,(hl)		;744b
	sub l			;744c
	sub d			;744d
	nop			;744e
	nop			;744f
	inc b			;7450
	djnz l7453h		;7451
l7453h:
	nop			;7453
	nop			;7454
	nop			;7455
	nop			;7456
	nop			;7457
	nop			;7458
	nop			;7459
	nop			;745a
	nop			;745b
	nop			;745c
	nop			;745d
	nop			;745e
	add a,0c7h		;745f
	or d			;7461
	nop			;7462
	nop			;7463
	nop			;7464
	nop			;7465
	nop			;7466
	nop			;7467
	nop			;7468
	add a,0cbh		;7469
	ret z			;746b
	ret			;746c
	add a,0cbh		;746d
	push bc			;746f
	jp nz,000b3h		;7470
	nop			;7473
	nop			;7474
	nop			;7475
	nop			;7476
	nop			;7477
	nop			;7478
	adc a,d			;7479
	adc a,e			;747a
	adc a,b			;747b
	adc a,c			;747c
	adc a,d			;747d
	adc a,e			;747e
	cp (hl)			;747f
	and c			;7480
	nop			;7481
	add a,(hl)		;7482
	ld a,d			;7483
	add a,h			;7484
	ld a,l			;7485
	add a,(hl)		;7486
	ld a,d			;7487
	add a,l			;7488
	add a,e			;7489
	add a,(hl)		;748a
	ld a,d			;748b
	add a,h			;748c
	ld a,l			;748d
	add a,(hl)		;748e
	sub (hl)		;748f
	sub d			;7490
	add a,c			;7491
	nop			;7492
	nop			;7493
	inc b			;7494
	djnz l7497h		;7495
l7497h:
	nop			;7497
	nop			;7498
	nop			;7499
	nop			;749a
	nop			;749b
	nop			;749c
	nop			;749d
	nop			;749e
	nop			;749f
	nop			;74a0
	nop			;74a1
	nop			;74a2
	add a,0c7h		;74a3
	or h			;74a5
	nop			;74a6
	nop			;74a7
	nop			;74a8
	nop			;74a9
	nop			;74aa
	nop			;74ab
	nop			;74ac
	call z,0c6cdh		;74ad
	set 1,h			;74b0
	call 0c1c4h		;74b2
	or l			;74b5
	nop			;74b6
	nop			;74b7
	nop			;74b8
	nop			;74b9
	nop			;74ba
	nop			;74bb
	nop			;74bc
	adc a,a			;74bd
	cp h			;74be
	adc a,l			;74bf
	adc a,(hl)		;74c0
	adc a,a			;74c1
	cp h			;74c2
	cp a			;74c3
	and h			;74c4
	nop			;74c5
	add a,a			;74c6
	add a,h			;74c7
	ld a,l			;74c8
	add a,(hl)		;74c9
	add a,a			;74ca
	add a,l			;74cb
	add a,e			;74cc
	add a,(hl)		;74cd
	add a,a			;74ce
	add a,h			;74cf
	ld a,l			;74d0
	add a,(hl)		;74d1
	add a,a			;74d2
	add a,l			;74d3
	add a,c			;74d4
	sub e			;74d5
	nop			;74d6
	nop			;74d7
	inc b			;74d8
	djnz l74dbh		;74d9
l74dbh:
	nop			;74db
	nop			;74dc
	nop			;74dd
	nop			;74de
	nop			;74df
	nop			;74e0
	nop			;74e1
	nop			;74e2
	nop			;74e3
	nop			;74e4
	nop			;74e5
	nop			;74e6
	add a,0c7h		;74e7
	or d			;74e9
	nop			;74ea
	nop			;74eb
	nop			;74ec
	nop			;74ed
	nop			;74ee
	nop			;74ef
	nop			;74f0
	ret z			;74f1
	ret			;74f2
	add a,0cbh		;74f3
	ret z			;74f5
	ret			;74f6
	push bc			;74f7
	jp nz,000b3h		;74f8
	nop			;74fb
	nop			;74fc
	nop			;74fd
	nop			;74fe
	nop			;74ff
	nop			;7500
	adc a,b			;7501
	adc a,c			;7502
	adc a,d			;7503
	adc a,e			;7504
	adc a,b			;7505
	adc a,c			;7506
	adc a,h			;7507
	and c			;7508
	nop			;7509
	add a,h			;750a
	ld a,l			;750b
	add a,(hl)		;750c
	ld a,d			;750d
	add a,l			;750e
	add a,e			;750f
	add a,(hl)		;7510
	ld a,d			;7511
	add a,h			;7512
	ld a,l			;7513
	add a,(hl)		;7514
	ld a,d			;7515
	add a,l			;7516
	add a,c			;7517
	sub e			;7518
	sub h			;7519
	nop			;751a
	nop			;751b
	inc b			;751c
	djnz l751fh		;751d
l751fh:
	nop			;751f
	nop			;7520
	nop			;7521
	nop			;7522
	nop			;7523
	nop			;7524
	nop			;7525
	nop			;7526
	nop			;7527
	nop			;7528
	nop			;7529
	nop			;752a
	add a,0c7h		;752b
	or h			;752d
	nop			;752e
	nop			;752f
	nop			;7530
	nop			;7531
	nop			;7532
	nop			;7533
	nop			;7534
	add a,0cbh		;7535
	call z,0c6cdh		;7537
	set 1,d			;753a
	pop bc			;753c
	or l			;753d
	nop			;753e
	nop			;753f
	nop			;7540
	nop			;7541
	nop			;7542
	nop			;7543
	nop			;7544
	adc a,l			;7545
	adc a,(hl)		;7546
	adc a,a			;7547
	cp h			;7548
	adc a,l			;7549
	adc a,(hl)		;754a
	cp l			;754b
	and d			;754c
	nop			;754d
	ld a,l			;754e
	add a,(hl)		;754f
	add a,a			;7550
	add a,l			;7551
	add a,e			;7552
	add a,(hl)		;7553
	add a,a			;7554
	add a,h			;7555
	ld a,l			;7556
	add a,(hl)		;7557
	add a,a			;7558
	add a,l			;7559
	add a,e			;755a
	add a,(hl)		;755b
	sub l			;755c
	sub b			;755d
	nop			;755e
	nop			;755f
	inc b			;7560
	djnz l7563h		;7561
l7563h:
	nop			;7563
	nop			;7564
	nop			;7565
	nop			;7566
	nop			;7567
	nop			;7568
	nop			;7569
	nop			;756a
	nop			;756b
	nop			;756c
	nop			;756d
	nop			;756e
	add a,0c7h		;756f
	or d			;7571
	nop			;7572
	nop			;7573
	nop			;7574
	nop			;7575
	nop			;7576
	nop			;7577
	nop			;7578
	add a,0cbh		;7579
	ret z			;757b
	ret			;757c
	add a,0cbh		;757d
	push bc			;757f
	jp nz,000b3h		;7580
	nop			;7583
	nop			;7584
	nop			;7585
	nop			;7586
	nop			;7587
	nop			;7588
	adc a,d			;7589
	adc a,e			;758a
	adc a,b			;758b
	adc a,c			;758c
	adc a,d			;758d
	adc a,e			;758e
	cp (hl)			;758f
	and c			;7590
	nop			;7591
	add a,(hl)		;7592
	ld a,d			;7593
	add a,l			;7594
	add a,e			;7595
	add a,(hl)		;7596
	ld a,d			;7597
	add a,h			;7598
	ld a,l			;7599
	add a,(hl)		;759a
	ld a,d			;759b
	add a,l			;759c
	add a,e			;759d
	add a,(hl)		;759e
	sub (hl)		;759f
	sub b			;75a0
	sub c			;75a1
	nop			;75a2
	nop			;75a3
	inc b			;75a4
	djnz l75a7h		;75a5
l75a7h:
	nop			;75a7
	nop			;75a8
	nop			;75a9
	nop			;75aa
	nop			;75ab
	nop			;75ac
	nop			;75ad
	nop			;75ae
	nop			;75af
	nop			;75b0
	nop			;75b1
	nop			;75b2
	add a,0c7h		;75b3
	or h			;75b5
	nop			;75b6
	nop			;75b7
	nop			;75b8
	nop			;75b9
	nop			;75ba
	nop			;75bb
	nop			;75bc
	call z,0c6cdh		;75bd
	set 1,h			;75c0
	call 0c1c4h		;75c2
	or l			;75c5
	nop			;75c6
	nop			;75c7
	nop			;75c8
	nop			;75c9
	nop			;75ca
	nop			;75cb
	nop			;75cc
	adc a,a			;75cd
	cp h			;75ce
	adc a,l			;75cf
	adc a,(hl)		;75d0
	adc a,a			;75d1
	cp h			;75d2
	cp a			;75d3
	and h			;75d4
	nop			;75d5
	add a,a			;75d6
	add a,l			;75d7
	add a,e			;75d8
	add a,(hl)		;75d9
	add a,a			;75da
	add a,h			;75db
	ld a,l			;75dc
	add a,(hl)		;75dd
	add a,a			;75de
	add a,l			;75df
	add a,e			;75e0
	add a,(hl)		;75e1
	add a,a			;75e2
	add a,h			;75e3
	sub c			;75e4
	sub e			;75e5
	ld bc,00d96h		;75e6
	sub (hl)		;75e9
	ld d,c			;75ea
	sub (hl)		;75eb
	ld e,c			;75ec
	sub (hl)		;75ed
	ld h,c			;75ee
	sub (hl)		;75ef
	ld l,c			;75f0
	sub (hl)		;75f1
	ld sp,03996h		;75f2
	sub (hl)		;75f5
	ld b,c			;75f6
	sub (hl)		;75f7
	ld c,c			;75f8
	sub (hl)		;75f9
	call m,00095h		;75fa
	nop			;75fd
	ld bc,0cd01h		;75fe
	nop			;7601
	nop			;7602
	ld (bc),a		;7603
	inc b			;7604
	call nz,0c1c0h		;7605
	push bc			;7608
	cp h			;7609
	cp l			;760a
	cp (hl)			;760b
	cp a			;760c
	nop			;760d
	nop			;760e
	ld (bc),a		;760f
	inc b			;7610
	cp h			;7611
	cp l			;7612
	cp (hl)			;7613
	cp a			;7614
	call nz,0c1c0h		;7615
	push bc			;7618
	nop			;7619
	nop			;761a
	ld (bc),a		;761b
	inc b			;761c
	add a,0c7h		;761d
	ret z			;761f
	ret			;7620
	cp h			;7621
	jp nz,0bfc3h		;7622
	nop			;7625
	nop			;7626
	ld (bc),a		;7627
	inc b			;7628
	cp h			;7629
	jp nz,0bfc3h		;762a
	add a,0c7h		;762d
	ret z			;762f
	ret			;7630
	nop			;7631
	nop			;7632
	ld (bc),a		;7633
	ld (bc),a		;7634
	or a			;7635
	cp b			;7636
	xor a			;7637
	or b			;7638
	nop			;7639
	nop			;763a
	ld (bc),a		;763b
	ld (bc),a		;763c
	or a			;763d
	cp b			;763e
	or c			;763f
	or d			;7640
	nop			;7641
	nop			;7642
	ld (bc),a		;7643
	ld (bc),a		;7644
	or a			;7645
	cp b			;7646
	or e			;7647
	or h			;7648
	nop			;7649
	nop			;764a
	ld (bc),a		;764b
	ld (bc),a		;764c
	or a			;764d
	cp b			;764e
	or l			;764f
	or (hl)			;7650
	nop			;7651
	nop			;7652
	ld (bc),a		;7653
	ld (bc),a		;7654
	xor a			;7655
	or b			;7656
	or a			;7657
	cp b			;7658
	nop			;7659
	nop			;765a
	ld (bc),a		;765b
	ld (bc),a		;765c
	or c			;765d
	or d			;765e
	or a			;765f
	cp b			;7660
	nop			;7661
	nop			;7662
	ld (bc),a		;7663
	ld (bc),a		;7664
	or e			;7665
	or h			;7666
	or a			;7667
	cp b			;7668
	nop			;7669
	nop			;766a
	ld (bc),a		;766b
	ld (bc),a		;766c
	or l			;766d
	or (hl)			;766e
	or a			;766f
	cp b			;7670
	add a,c			;7671
	sub a			;7672
	ld h,h			;7673
	sub a			;7674
	ld b,a			;7675
	sub a			;7676
	sbc a,(hl)		;7677
	sub a			;7678
	cp e			;7679
	sub a			;767a
	ex de,hl		;767b
	sub (hl)		;767c
	add hl,de		;767d
	sub a			;767e
	ld b,09ah		;767f
	dec bc			;7681
	sbc a,d			;7682
	dec e			;7683
	sbc a,d			;7684
	cpl			;7685
	sbc a,d			;7686
	ld b,c			;7687
	sbc a,d			;7688
	ld d,e			;7689
	sbc a,d			;768a
	ld h,l			;768b
	sbc a,d			;768c
	ld (hl),a		;768d
	sbc a,d			;768e
	add a,a			;768f
	sbc a,d			;7690
	sub a			;7691
	sbc a,d			;7692
	and a			;7693
	sbc a,d			;7694
	or a			;7695
	sbc a,d			;7696
	rst 0			;7697
	sbc a,d			;7698
	ret c			;7699
	sub a			;769a
	daa			;769b
	sbc a,b			;769c
	ld e,a			;769d
	sbc a,b			;769e
	xor (hl)		;769f
	sbc a,b			;76a0
	and 098h		;76a1
	adc a,d			;76a3
	sbc a,c			;76a4
	and (hl)		;76a5
	sbc a,c			;76a6
	cp d			;76a7
	sbc a,c			;76a8
	adc a,099h		;76a9
	jp pe,01699h		;76ab
	or h			;76ae
	ex af,af'		;76af
	or l			;76b0
	ld c,b			;76b1
	or l			;76b2
	add a,h			;76b3
	or l			;76b4
	ret nz			;76b5
	or l			;76b6
	call m,038b5h		;76b7
	or (hl)			;76ba
	ld (hl),h		;76bb
	or (hl)			;76bc
	or b			;76bd
	or (hl)			;76be
	call pe,028b6h		;76bf
	or a			;76c2
	dec sp			;76c3
	or a			;76c4
	ld c,(hl)		;76c5
	or a			;76c6
	ld e,e			;76c7
	or a			;76c8
	ld l,(hl)		;76c9
	or a			;76ca
	add a,h			;76cb
	or a			;76cc
	sbc a,d			;76cd
	or a			;76ce
	xor d			;76cf
	or a			;76d0
	ret nz			;76d1
	or a			;76d2
	sub 0b7h		;76d3
	and 0b7h		;76d5
	or 0b7h			;76d7
	ld b,0b8h		;76d9
	inc e			;76db
	cp b			;76dc
	inc l			;76dd
	cp b			;76de
	inc a			;76df
	cp b			;76e0
	ld c,h			;76e1
	cp b			;76e2
	ld e,h			;76e3
	cp b			;76e4
	ld (hl),d		;76e5
	cp b			;76e6
	adc a,b			;76e7
	cp b			;76e8
	sbc a,(hl)		;76e9
	cp b			;76ea
	nop			;76eb
	nop			;76ec
	rlca			;76ed
	ld b,080h		;76ee
	ld (hl),d		;76f0
	or (hl)			;76f1
	or a			;76f2
	xor h			;76f3
	adc a,l			;76f4
	and h			;76f5
	xor (hl)		;76f6
	xor a			;76f7
	cp e			;76f8
	ret nz			;76f9
	adc a,h			;76fa
	nop			;76fb
	and a			;76fc
	and (hl)		;76fd
	call z,000a7h		;76fe
	or e			;7701
	sbc a,c			;7702
	ld d,d			;7703
	ld d,e			;7704
	sbc a,b			;7705
	call nz,0a700h		;7706
	and l			;7709
	cp (hl)			;770a
	and a			;770b
	nop			;770c
	and h			;770d
	xor (hl)		;770e
	or b			;770f
	cp h			;7710
	ret nz			;7711
	adc a,h			;7712
	add a,b			;7713
	ld (hl),d		;7714
	or h			;7715
	or l			;7716
	xor h			;7717
	adc a,l			;7718
	nop			;7719
	nop			;771a
	rlca			;771b
	ld b,080h		;771c
	ld (hl),d		;771e
	or (hl)			;771f
	or a			;7720
	xor h			;7721
	adc a,l			;7722
	and h			;7723
	xor (hl)		;7724
	xor a			;7725
	cp e			;7726
	ret nz			;7727
	adc a,h			;7728
	nop			;7729
	xor b			;772a
l772bh:
	and (hl)		;772b
	call z,000a8h		;772c
	nop			;772f
	nop			;7730
	nop			;7731
	nop			;7732
	nop			;7733
	nop			;7734
	nop			;7735
	sub h			;7736
	and l			;7737
	cp (hl)			;7738
	sub h			;7739
	nop			;773a
	and h			;773b
	xor (hl)		;773c
	or b			;773d
	cp h			;773e
	ret nz			;773f
	adc a,h			;7740
	add a,b			;7741
	ld (hl),d		;7742
	or h			;7743
	or l			;7744
	xor h			;7745
	adc a,l			;7746
	nop			;7747
	nop			;7748
	dec b			;7749
	dec b			;774a
	dec a			;774b
	sbc a,l			;774c
	sub e			;774d
	sbc a,(hl)		;774e
	ld b,c			;774f
	ld a,054h		;7750
	ld d,a			;7752
	ld e,e			;7753
	ld b,d			;7754
	and b			;7755
	and c			;7756
	ld e,b			;7757
	ld e,c			;7758
	sub d			;7759
	sbc a,h			;775a
	ld d,(hl)		;775b
	ld l,(hl)		;775c
	ld e,d			;775d
	dec (hl)		;775e
	ld (hl),038h		;775f
	sub e			;7761
	sbc a,a			;7762
	scf			;7763
	nop			;7764
	nop			;7765
	dec b			;7766
	dec b			;7767
	dec a			;7768
	sbc a,l			;7769
	rst 0			;776a
	sbc a,(hl)		;776b
	ld b,c			;776c
	ld a,054h		;776d
	and d			;776f
	ld e,e			;7770
	ld b,d			;7771
	sub d			;7772
	ld d,l			;7773
	ld e,b			;7774
	ld e,c			;7775
	sub d			;7776
	sbc a,h			;7777
	ld d,(hl)		;7778
	ld l,(hl)		;7779
	ld e,d			;777a
	dec (hl)		;777b
	ld (hl),038h		;777c
	sub e			;777e
	sbc a,a			;777f
	scf			;7780
	nop			;7781
	nop			;7782
	dec b			;7783
	dec b			;7784
	dec a			;7785
	sbc a,l			;7786
	sub e			;7787
	sbc a,(hl)		;7788
	ld b,c			;7789
	ld a,054h		;778a
	ld d,a			;778c
	ld e,e			;778d
	ld b,d			;778e
	sub d			;778f
	ld d,l			;7790
	ld e,b			;7791
	cp b			;7792
	and b			;7793
	sbc a,h			;7794
	ld d,(hl)		;7795
	ld l,(hl)		;7796
	ld e,d			;7797
	dec (hl)		;7798
	ld (hl),038h		;7799
	sub e			;779b
	sbc a,a			;779c
	scf			;779d
	nop			;779e
	nop			;779f
	dec b			;77a0
	dec b			;77a1
	dec a			;77a2
	sbc a,l			;77a3
	sub e			;77a4
	sbc a,(hl)		;77a5
	ld b,c			;77a6
	ld a,054h		;77a7
	ld d,a			;77a9
	ld e,e			;77aa
	ld b,d			;77ab
	sub d			;77ac
	ld d,l			;77ad
	ld e,b			;77ae
	ld e,c			;77af
	sub d			;77b0
	sbc a,h			;77b1
	ld d,(hl)		;77b2
	jp 0355ah		;77b3
	ld (hl),038h		;77b6
	rst 0			;77b8
	sbc a,a			;77b9
	scf			;77ba
	nop			;77bb
	nop			;77bc
	dec b			;77bd
	dec b			;77be
	dec a			;77bf
	sbc a,l			;77c0
	rst 0			;77c1
	sbc a,(hl)		;77c2
	ld b,c			;77c3
	ld a,054h		;77c4
	sub a			;77c6
	ld e,e			;77c7
	ld b,d			;77c8
	and b			;77c9
	cp c			;77ca
	nop			;77cb
	cp c			;77cc
	and b			;77cd
	sbc a,h			;77ce
	ld d,(hl)		;77cf
	ret z			;77d0
	ld e,d			;77d1
	dec (hl)		;77d2
	ld (hl),038h		;77d3
	rst 0			;77d5
	sbc a,a			;77d6
	scf			;77d7
	nop			;77d8
	nop			;77d9
	dec b			;77da
	rrca			;77db
	nop			;77dc
	nop			;77dd
	nop			;77de
	nop			;77df
	nop			;77e0
	nop			;77e1
	nop			;77e2
	nop			;77e3
	nop			;77e4
	ld bc,00302h		;77e5
	inc b			;77e8
	dec b			;77e9
	ld b,000h		;77ea
	nop			;77ec
	nop			;77ed
	nop			;77ee
	ld de,01312h		;77ef
	ld d,b			;77f2
	ld d,c			;77f3
	ld d,d			;77f4
	ld d,d			;77f5
	ld d,e			;77f6
	ld d,h			;77f7
	ld d,l			;77f8
	ld d,(hl)		;77f9
	nop			;77fa
	ld d,017h		;77fb
	ld h,c			;77fd
	ld h,d			;77fe
	ld h,e			;77ff
	ld h,h			;7800
	ld h,l			;7801
	ld h,(hl)		;7802
	ld h,a			;7803
	ld l,b			;7804
	ld l,c			;7805
	ld l,d			;7806
	ld l,e			;7807
	ld d,d			;7808
	add hl,de		;7809
	ld (hl),l		;780a
	ld a,(de)		;780b
	halt			;780c
	dec de			;780d
	inc e			;780e
	dec e			;780f
	ld e,01fh		;7810
	jr nz,l7835h		;7812
	ld (02020h),hl		;7814
	ld (00026h),hl		;7817
	nop			;781a
	nop			;781b
	nop			;781c
	daa			;781d
	nop			;781e
	nop			;781f
	nop			;7820
	nop			;7821
	nop			;7822
	nop			;7823
	nop			;7824
	nop			;7825
	nop			;7826
	nop			;7827
	nop			;7828
	inc b			;7829
	dec c			;782a
	rlca			;782b
	ex af,af'		;782c
	add hl,bc		;782d
	ld a,(bc)		;782e
	dec bc			;782f
	dec b			;7830
	inc c			;7831
	dec c			;7832
	ld c,00fh		;7833
l7835h:
	djnz l7837h		;7835
l7837h:
	nop			;7837
	ld d,d			;7838
	ld d,a			;7839
	ld e,b			;783a
	ld e,c			;783b
	ld e,d			;783c
	ld e,e			;783d
	ld e,h			;783e
	ld e,l			;783f
	ld e,(hl)		;7840
	ld e,a			;7841
	ld h,b			;7842
	inc d			;7843
	dec d			;7844
	ld h,a			;7845
	ld l,h			;7846
	ld l,l			;7847
	ld l,(hl)		;7848
	ld h,a			;7849
	ld l,a			;784a
	ld (hl),b		;784b
	ld (hl),c		;784c
	ld (hl),d		;784d
	ld e,a			;784e
	ld (hl),e		;784f
	ld (hl),h		;7850
	jr l7875h		;7851
	inc hl			;7853
	nop			;7854
	inc hl			;7855
	jr nz,$+38		;7856
	ld (hl),a		;7858
	ld a,b			;7859
	ld a,c			;785a
	ld a,d			;785b
	ld a,e			;785c
	ld a,h			;785d
	nop			;785e
	nop			;785f
	nop			;7860
	dec b			;7861
	rrca			;7862
	ld h,000h		;7863
	nop			;7865
	nop			;7866
	nop			;7867
	daa			;7868
	nop			;7869
	nop			;786a
	nop			;786b
	nop			;786c
	nop			;786d
	nop			;786e
	nop			;786f
	nop			;7870
	nop			;7871
	add hl,de		;7872
	ld (hl),l		;7873
	ld a,(de)		;7874
l7875h:
	halt			;7875
	dec de			;7876
	inc e			;7877
	dec e			;7878
	ld e,01fh		;7879
	jr nz,l789eh		;787b
	rra			;787d
	jr nz,l78a0h		;787e
	ld (01600h),hl		;7880
	rla			;7883
	ld h,c			;7884
	ld h,d			;7885
	ld h,e			;7886
	ld h,h			;7887
	ld h,l			;7888
	ld h,(hl)		;7889
	ld h,a			;788a
	ld l,b			;788b
	ld l,c			;788c
	ld l,d			;788d
	ld l,e			;788e
	ld d,d			;788f
	nop			;7890
	nop			;7891
	nop			;7892
	nop			;7893
	ld de,01312h		;7894
	ld d,b			;7897
l7898h:
	ld d,c			;7898
	ld d,d			;7899
	ld d,d			;789a
	ld d,e			;789b
	ld d,h			;789c
	ld d,l			;789d
l789eh:
	ld d,(hl)		;789e
	nop			;789f
l78a0h:
	nop			;78a0
	nop			;78a1
	nop			;78a2
	nop			;78a3
	nop			;78a4
	nop			;78a5
	nop			;78a6
	nop			;78a7
	ld bc,00302h		;78a8
	inc b			;78ab
	dec b			;78ac
	ld b,000h		;78ad
	nop			;78af
	inc b			;78b0
	dec c			;78b1
	ld (00023h),hl		;78b2
	inc hl			;78b5
	jr nz,l78dch		;78b6
	ld (hl),a		;78b8
	ld a,b			;78b9
	ld a,c			;78ba
	ld a,d			;78bb
	ld a,e			;78bc
	ld a,h			;78bd
	nop			;78be
	ld h,a			;78bf
	ld l,h			;78c0
	ld l,l			;78c1
	ld l,(hl)		;78c2
	ld h,a			;78c3
	ld l,a			;78c4
	ld (hl),b		;78c5
	ld (hl),c		;78c6
	ld (hl),d		;78c7
	ld e,a			;78c8
	ld (hl),e		;78c9
	ld (hl),h		;78ca
	jr l791fh		;78cb
	ld d,a			;78cd
	ld e,b			;78ce
	ld e,c			;78cf
	ld e,d			;78d0
	ld e,e			;78d1
	ld e,h			;78d2
	ld e,l			;78d3
	ld e,(hl)		;78d4
	ld e,a			;78d5
	ld h,b			;78d6
	inc d			;78d7
	dec d			;78d8
	rlca			;78d9
	ex af,af'		;78da
	add hl,bc		;78db
l78dch:
	ld a,(bc)		;78dc
	dec bc			;78dd
	dec b			;78de
	inc c			;78df
	dec c			;78e0
	ld c,00fh		;78e1
	djnz l78e5h		;78e3
l78e5h:
	nop			;78e5
sub_78e6h:
	nop			;78e6
	nop			;78e7
	djnz l78f4h		;78e8
	nop			;78ea
	nop			;78eb
	nop			;78ec
	nop			;78ed
	nop			;78ee
	nop			;78ef
	nop			;78f0
	dec h			;78f1
l78f2h:
	ld a,l			;78f2
	nop			;78f3
l78f4h:
	ld a,(hl)		;78f4
	ld a,a			;78f5
	add a,b			;78f6
	ld h,a			;78f7
	add a,c			;78f8
	add a,d			;78f9
	add a,e			;78fa
	add a,h			;78fb
	add a,l			;78fc
	ld a,(03b00h)		;78fd
	add a,(hl)		;7900
	add a,a			;7901
	adc a,b			;7902
	adc a,c			;7903
	adc a,d			;7904
	adc a,e			;7905
	add a,l			;7906
	ld a,(00000h)		;7907
	jr z,l7898h		;790a
	adc a,l			;790c
	adc a,(hl)		;790d
	ld (hl),h		;790e
	adc a,a			;790f
	sub b			;7910
	nop			;7911
	nop			;7912
	nop			;7913
	nop			;7914
	sub c			;7915
	sub d			;7916
	sub e			;7917
	sub h			;7918
	sub l			;7919
	sub (hl)		;791a
	sub a			;791b
	nop			;791c
	nop			;791d
	nop			;791e
l791fh:
	sbc a,b			;791f
	sbc a,c			;7920
	sbc a,d			;7921
	sbc a,e			;7922
	sbc a,h			;7923
	sbc a,l			;7924
	sbc a,(hl)		;7925
	nop			;7926
	nop			;7927
	nop			;7928
	sbc a,a			;7929
	and b			;792a
	and c			;792b
	and d			;792c
	and e			;792d
	ld d,e			;792e
	add hl,hl		;792f
	nop			;7930
	nop			;7931
	nop			;7932
	and h			;7933
	and l			;7934
	and l			;7935
	and l			;7936
	and l			;7937
	and (hl)		;7938
	add hl,hl		;7939
	nop			;793a
	nop			;793b
	nop			;793c
	and h			;793d
	and l			;793e
	and l			;793f
	and l			;7940
	and l			;7941
	and (hl)		;7942
	add hl,hl		;7943
	nop			;7944
	nop			;7945
	nop			;7946
	and h			;7947
	cp c			;7948
	cp d			;7949
	and d			;794a
	and e			;794b
	ld d,e			;794c
	add hl,hl		;794d
	nop			;794e
	nop			;794f
	nop			;7950
	sbc a,b			;7951
	sbc a,d			;7952
	cp e			;7953
	cp e			;7954
	sbc a,e			;7955
	sbc a,l			;7956
	sbc a,(hl)		;7957
	nop			;7958
	nop			;7959
	nop			;795a
	add a,a			;795b
	sbc a,c			;795c
	sbc a,c			;795d
	sbc a,e			;795e
	sub l			;795f
	sub (hl)		;7960
	sub a			;7961
	nop			;7962
	nop			;7963
	jr z,l78f2h		;7964
	cp b			;7966
	sub d			;7967
	add a,d			;7968
	adc a,a			;7969
	sub b			;796a
	nop			;796b
	nop			;796c
	dec sp			;796d
	add a,(hl)		;796e
	add a,a			;796f
	adc a,b			;7970
	adc a,c			;7971
l7972h:
	adc a,d			;7972
	adc a,e			;7973
	add a,l			;7974
	ld a,(l7f7eh)		;7975
	add a,b			;7978
	ld h,a			;7979
	add a,c			;797a
	add a,d			;797b
	add a,e			;797c
	add a,h			;797d
	add a,l			;797e
	ld a,(00000h)		;797f
	nop			;7982
	nop			;7983
	nop			;7984
	nop			;7985
	nop			;7986
	dec h			;7987
	ld a,l			;7988
	nop			;7989
	nop			;798a
	nop			;798b
	ex af,af'		;798c
	inc bc			;798d
	nop			;798e
	nop			;798f
	jr z,l7992h		;7990
l7992h:
	ld l,0a7h		;7992
	cpl			;7994
	xor b			;7995
	xor c			;7996
	ld hl,(0cb36h)		;7997
	ld hl,(0cb36h)		;799a
	cpl			;799d
	xor b			;799e
	xor c			;799f
	nop			;79a0
	ld l,0a7h		;79a1
	nop			;79a3
	nop			;79a4
	jr z,l79a7h		;79a5
l79a7h:
	ld bc,00208h		;79a7
	nop			;79aa
	jr z,l79ddh		;79ab
	xor l			;79ad
	xor (hl)		;79ae
	xor a			;79af
	or b			;79b0
	res 6,b			;79b1
	res 5,(hl)		;79b3
	xor a			;79b5
	jr nc,$-81		;79b6
	nop			;79b8
	jr z,l79bbh		;79b9
l79bbh:
	ld bc,00208h		;79bb
	dec (hl)		;79be
	jr c,l7972h		;79bf
	or d			;79c1
	or e			;79c2
	or h			;79c3
	or l			;79c4
	res 6,l			;79c5
	res 6,e			;79c7
	or h			;79c9
	or c			;79ca
	or d			;79cb
	dec (hl)		;79cc
	jr c,l79cfh		;79cd
l79cfh:
	nop			;79cf
	ex af,af'		;79d0
	inc bc			;79d1
	nop			;79d2
	ld (03137h),a		;79d3
	or (hl)			;79d6
	or a			;79d7
	inc sp			;79d8
	inc (hl)		;79d9
	call z,00000h		;79da
l79ddh:
	rlc b			;79dd
	nop			;79df
	defb 0cbh,033h ;sli e	;79e0
	inc (hl)		;79e2
	call z,0b631h		;79e3
	or a			;79e6
	nop			;79e7
	ld (00037h),a		;79e8
	nop			;79eb
	ex af,af'		;79ec
	inc bc			;79ed
	xor d			;79ee
	dec hl			;79ef
	inc l			;79f0
	dec l			;79f1
	xor e			;79f2
	xor h			;79f3
	nop			;79f4
	add hl,sp		;79f5
	call 00000h		;79f6
	rlc b			;79f9
	nop			;79fb
	rlc b			;79fc
	add hl,sp		;79fe
	call 0ab2dh		;79ff
	xor h			;7a02
	xor d			;7a03
	dec hl			;7a04
	inc l			;7a05
	nop			;7a06
	nop			;7a07
	ld bc,00001h		;7a08
	nop			;7a0b
	nop			;7a0c
	ld c,001h		;7a0d
	call nz,000c5h		;7a0f
	nop			;7a12
	nop			;7a13
	nop			;7a14
	nop			;7a15
	nop			;7a16
	nop			;7a17
	nop			;7a18
	nop			;7a19
	nop			;7a1a
	ret			;7a1b
	jp z,00000h		;7a1c
	ld c,001h		;7a1f
	call nz,0c6c5h		;7a21
	rst 0			;7a24
	nop			;7a25
	nop			;7a26
	nop			;7a27
	nop			;7a28
	nop			;7a29
	nop			;7a2a
	rst 0			;7a2b
	ret z			;7a2c
	ret			;7a2d
	jp z,00000h		;7a2e
	ld c,001h		;7a31
	call nz,0c6c5h		;7a33
	rst 0			;7a36
	ret z			;7a37
	ret			;7a38
	nop			;7a39
	nop			;7a3a
	push bc			;7a3b
	add a,0c7h		;7a3c
	ret z			;7a3e
	ret			;7a3f
	jp z,00000h		;7a40
	ld c,001h		;7a43
	call nz,0c6c5h		;7a45
	rst 0			;7a48
	ret z			;7a49
	ret			;7a4a
	jp z,0c5c4h		;7a4b
	add a,0c7h		;7a4e
	ret z			;7a50
	ret			;7a51
	jp z,00000h		;7a52
	ld c,001h		;7a55
	jp z,0c5c4h		;7a57
	add a,0c7h		;7a5a
	ret z			;7a5c
	ret			;7a5d
	jp z,0c5c4h		;7a5e
	add a,0c7h		;7a61
	ret z			;7a63
	ret			;7a64
	nop			;7a65
	nop			;7a66
	ld c,001h		;7a67
	ret			;7a69
	jp z,0c5c4h		;7a6a
	add a,0c7h		;7a6d
	ret z			;7a6f
	ret			;7a70
	jp z,0c5c4h		;7a71
	add a,0c7h		;7a74
	ret z			;7a76
	nop			;7a77
	nop			;7a78
	inc c			;7a79
	ld bc,000c6h		;7a7a
	nop			;7a7d
	nop			;7a7e
	nop			;7a7f
	nop			;7a80
	nop			;7a81
	nop			;7a82
	nop			;7a83
	nop			;7a84
	nop			;7a85
	jp z,00000h		;7a86
	inc c			;7a89
	ld bc,0c7c6h		;7a8a
	ret z			;7a8d
	nop			;7a8e
	nop			;7a8f
	nop			;7a90
	nop			;7a91
	nop			;7a92
	nop			;7a93
	ret z			;7a94
	ret			;7a95
	jp z,00000h		;7a96
	inc c			;7a99
	ld bc,0c7c6h		;7a9a
	ret z			;7a9d
	ret			;7a9e
	jp z,00000h		;7a9f
	add a,0c7h		;7aa2
l7aa4h:
	ret z			;7aa4
	ret			;7aa5
	jp z,00000h		;7aa6
	inc c			;7aa9
	ld bc,0c7c6h		;7aaa
	ret z			;7aad
	ret			;7aae
	jp z,0c5c4h		;7aaf
	add a,0c7h		;7ab2
	ret z			;7ab4
	ret			;7ab5
	jp z,00000h		;7ab6
	inc c			;7ab9
	ld bc,0c6c5h		;7aba
	rst 0			;7abd
	ret z			;7abe
	ret			;7abf
	jp z,0c5c4h		;7ac0
	add a,0c7h		;7ac3
	ret z			;7ac5
	ret			;7ac6
	nop			;7ac7
	nop			;7ac8
	inc c			;7ac9
	ld bc,0c5c4h		;7aca
	add a,0c7h		;7acd
	ret z			;7acf
	ret			;7ad0
	jp z,0c5c4h		;7ad1
	add a,0c7h		;7ad4
	ret z			;7ad6
	dec b			;7ad7
	sbc a,e			;7ad8
	add hl,de		;7ad9
	sbc a,e			;7ada
	dec l			;7adb
	sbc a,e			;7adc
	ld b,c			;7add
	sbc a,e			;7ade
	ld d,l			;7adf
	sbc a,e			;7ae0
	ld l,c			;7ae1
	sbc a,e			;7ae2
	ld a,l			;7ae3
	sbc a,e			;7ae4
	adc a,l			;7ae5
	sbc a,e			;7ae6
	sbc a,c			;7ae7
	sbc a,e			;7ae8
	and c			;7ae9
	sbc a,e			;7aea
	or l			;7aeb
	sbc a,e			;7aec
	ret			;7aed
	sbc a,e			;7aee
	pop af			;7aef
	sbc a,d			;7af0
	inc bc			;7af1
	defb 0fdh,002h,008h ;illegal sequence	;7af2
	jr nz,l7aa4h		;7af5
	or e			;7af7
	dec hl			;7af8
	ld d,(hl)		;7af9
	cp e			;7afa
	or l			;7afb
	ld c,e			;7afc
	rla			;7afd
	inc h			;7afe
	inc e			;7aff
	ld (0474dh),hl		;7b00
	ld c,a			;7b03
	ld b,d			;7b04
	nop			;7b05
	nop			;7b06
	inc b			;7b07
	inc b			;7b08
	sub h			;7b09
	sbc a,e			;7b0a
	sbc a,h			;7b0b
	sub h			;7b0c
	sub l			;7b0d
	sub (hl)		;7b0e
	sub (hl)		;7b0f
	sbc a,(hl)		;7b10
	sub a			;7b11
	sbc a,b			;7b12
	and c			;7b13
	and b			;7b14
	sbc a,c			;7b15
	sbc a,d			;7b16
	and e			;7b17
	and d			;7b18
	nop			;7b19
	nop			;7b1a
	inc b			;7b1b
	inc b			;7b1c
	xor e			;7b1d
	xor h			;7b1e
	or l			;7b1f
	or h			;7b20
	xor c			;7b21
	xor d			;7b22
	or e			;7b23
	or d			;7b24
	and a			;7b25
	xor b			;7b26
	xor b			;7b27
	or b			;7b28
	and (hl)		;7b29
	xor l			;7b2a
	xor (hl)		;7b2b
	and (hl)		;7b2c
	nop			;7b2d
	nop			;7b2e
	ex af,af'		;7b2f
	ld (bc),a		;7b30
	call z,000cdh		;7b31
	nop			;7b34
	nop			;7b35
	nop			;7b36
	nop			;7b37
	nop			;7b38
	nop			;7b39
	nop			;7b3a
	nop			;7b3b
	nop			;7b3c
	nop			;7b3d
	nop			;7b3e
	call z,000cdh		;7b3f
	nop			;7b42
	ex af,af'		;7b43
	ld (bc),a		;7b44
	call z,0cccdh		;7b45
	call 00000h		;7b48
	nop			;7b4b
	nop			;7b4c
	nop			;7b4d
	nop			;7b4e
	nop			;7b4f
	nop			;7b50
	call z,0cccdh		;7b51
	call 00000h		;7b54
	ex af,af'		;7b57
	ld (bc),a		;7b58
	call z,0cccdh		;7b59
	call 0cdcch		;7b5c
	nop			;7b5f
	nop			;7b60
	nop			;7b61
	nop			;7b62
	call z,0cccdh		;7b63
	call 0cdcch		;7b66
	nop			;7b69
	nop			;7b6a
	ex af,af'		;7b6b
	ld (bc),a		;7b6c
	call z,0cccdh		;7b6d
	call 0cdcch		;7b70
	call z,0cccdh		;7b73
	call 0cdcch		;7b76
	call z,0cccdh		;7b79
	call 00001h		;7b7c
	ld b,002h		;7b7f
	call z,0cccdh		;7b81
	call 0cdcch		;7b84
	call z,0cccdh		;7b87
	call 0cdcch		;7b8a
	ld (bc),a		;7b8d
	nop			;7b8e
	inc b			;7b8f
	ld (bc),a		;7b90
	call z,0cccdh		;7b91
	call 0cdcch		;7b94
	call z,003cdh		;7b97
	nop			;7b9a
	ld (bc),a		;7b9b
	ld (bc),a		;7b9c
l7b9dh:
	call z,0cccdh		;7b9d
	call 00000h		;7ba0
l7ba3h:
	ex af,af'		;7ba3
	ld (bc),a		;7ba4
	add a,b			;7ba5
	add a,e			;7ba6
	nop			;7ba7
	nop			;7ba8
	nop			;7ba9
	nop			;7baa
	nop			;7bab
	nop			;7bac
	nop			;7bad
	nop			;7bae
	nop			;7baf
	nop			;7bb0
	nop			;7bb1
	nop			;7bb2
	add a,b			;7bb3
	add a,e			;7bb4
	nop			;7bb5
	nop			;7bb6
	ex af,af'		;7bb7
	ld (bc),a		;7bb8
	add a,c			;7bb9
	add a,h			;7bba
	nop			;7bbb
	nop			;7bbc
	nop			;7bbd
	nop			;7bbe
	nop			;7bbf
	nop			;7bc0
	nop			;7bc1
	nop			;7bc2
	nop			;7bc3
	nop			;7bc4
	nop			;7bc5
	nop			;7bc6
	add a,c			;7bc7
	add a,h			;7bc8
	nop			;7bc9
	nop			;7bca
	ex af,af'		;7bcb
	ld (bc),a		;7bcc
	add a,d			;7bcd
	add a,l			;7bce
	nop			;7bcf
	nop			;7bd0
	nop			;7bd1
	nop			;7bd2
	nop			;7bd3
	nop			;7bd4
	nop			;7bd5
	nop			;7bd6
	nop			;7bd7
	nop			;7bd8
	nop			;7bd9
	nop			;7bda
	add a,d			;7bdb
	add a,l			;7bdc
	and h			;7bdd
	cp c			;7bde
	inc c			;7bdf
	cp d			;7be0
	jr l7b9dh		;7be1
	inc h			;7be3
	cp d			;7be4
	jr nc,$-68		;7be5
	jr c,l7ba3h		;7be7
	ld b,b			;7be9
	cp d			;7bea
	ld d,(hl)		;7beb
	cp d			;7bec
	ld l,b			;7bed
	cp d			;7bee
	ld a,h			;7bef
	cp d			;7bf0
	sub b			;7bf1
	cp d			;7bf2
	sbc a,l			;7bf3
	cp d			;7bf4
	or e			;7bf5
	cp d			;7bf6
	ret			;7bf7
	cp d			;7bf8
	ret c			;7bf9
	cp d			;7bfa
	jp p,00cbah		;7bfb
	cp e			;7bfe
	ld c,e			;7bff
	sbc a,l			;7c00
	ld a,a			;7c01
	sbc a,l			;7c02
	or e			;7c03
	sbc a,l			;7c04
	rst 28h			;7c05
	sbc a,l			;7c06
	inc bc			;7c07
	sbc a,(hl)		;7c08
	cpl			;7c09
	sbc a,(hl)		;7c0a
	ld h,e			;7c0b
	sbc a,(hl)		;7c0c
	sbc a,a			;7c0d
	sbc a,(hl)		;7c0e
	ex (sp),hl		;7c0f
	and (hl)		;7c10
	ld b,c			;7c11
	and a			;7c12
	ld a,a			;7c13
	sbc a,h			;7c14
	jp 0079ch		;7c15
	sbc a,l			;7c18
	ccf			;7c19
	sbc a,h			;7c1a
	ld b,a			;7c1b
	sbc a,h			;7c1c
	ld c,a			;7c1d
	sbc a,h			;7c1e
	ld d,a			;7c1f
	sbc a,h			;7c20
	ld e,a			;7c21
	sbc a,h			;7c22
	ld h,a			;7c23
	sbc a,h			;7c24
	ld l,a			;7c25
	sbc a,h			;7c26
	ld (hl),a		;7c27
	sbc a,h			;7c28
	inc d			;7c29
	cp e			;7c2a
	ret nz			;7c2b
	cp e			;7c2c
	add a,h			;7c2d
	cp h			;7c2e
	ld h,b			;7c2f
	cp l			;7c30
	or d			;7c31
	cp l			;7c32
	inc b			;7c33
	cp (hl)			;7c34
	ld d,(hl)		;7c35
	cp (hl)			;7c36
	xor b			;7c37
	cp (hl)			;7c38
	jp m,04cbeh		;7c39
	cp a			;7c3c
	sbc a,(hl)		;7c3d
	cp a			;7c3e
	nop			;7c3f
	nop			;7c40
	ld (bc),a		;7c41
	ld (bc),a		;7c42
	cp (hl)			;7c43
	cp a			;7c44
	ld bc,00002h		;7c45
	nop			;7c48
	ld (bc),a		;7c49
	ld (bc),a		;7c4a
	ret nz			;7c4b
	pop bc			;7c4c
	ld bc,00002h		;7c4d
	nop			;7c50
	ld (bc),a		;7c51
	ld (bc),a		;7c52
	jp 001c2h		;7c53
	ld (bc),a		;7c56
	nop			;7c57
	nop			;7c58
	ld (bc),a		;7c59
	ld (bc),a		;7c5a
l7c5bh:
	push bc			;7c5b
	call nz,00201h		;7c5c
	nop			;7c5f
	nop			;7c60
	ld (bc),a		;7c61
	ld (bc),a		;7c62
	inc bc			;7c63
	inc b			;7c64
	add a,0c7h		;7c65
	nop			;7c67
	nop			;7c68
	ld (bc),a		;7c69
	ld (bc),a		;7c6a
	inc bc			;7c6b
	inc b			;7c6c
	ret z			;7c6d
	ret			;7c6e
	nop			;7c6f
	nop			;7c70
	ld (bc),a		;7c71
	ld (bc),a		;7c72
	inc bc			;7c73
	inc b			;7c74
	set 1,d			;7c75
	nop			;7c77
	nop			;7c78
	ld (bc),a		;7c79
	ld (bc),a		;7c7a
	inc bc			;7c7b
	inc b			;7c7c
	call 0fdcch		;7c7d
	defb 0fdh,008h,008h ;illegal sequence	;7c80
	nop			;7c83
	xor c			;7c84
	xor h			;7c85
	ld b,e			;7c86
	ld b,e			;7c87
	cp l			;7c88
	cp d			;7c89
	nop			;7c8a
	or l			;7c8b
	xor b			;7c8c
	ld b,(hl)		;7c8d
	ld b,h			;7c8e
	ld b,h			;7c8f
	ld b,(hl)		;7c90
	cp c			;7c91
	xor (hl)		;7c92
	ld a,054h		;7c93
	ld d,l			;7c95
	ld b,l			;7c96
	ld b,l			;7c97
	ld d,l			;7c98
	ld d,h			;7c99
	or b			;7c9a
	ld c,c			;7c9b
	ld b,b			;7c9c
	ld c,e			;7c9d
	inc de			;7c9e
	cpl			;7c9f
	ld c,e			;7ca0
	ld b,b			;7ca1
	ld l,h			;7ca2
	nop			;7ca3
	ld c,c			;7ca4
	ld c,e			;7ca5
	dec d			;7ca6
	ld sp,0404bh		;7ca7
	ld l,h			;7caa
	nop			;7cab
	nop			;7cac
	scf			;7cad
	ld b,d			;7cae
	ld b,d			;7caf
	ld c,d			;7cb0
	ld b,a			;7cb1
	or h			;7cb2
	nop			;7cb3
	nop			;7cb4
	nop			;7cb5
	jr nc,l7cf9h		;7cb6
	ld c,b			;7cb8
	or (hl)			;7cb9
	or a			;7cba
	nop			;7cbb
	nop			;7cbc
	nop			;7cbd
	nop			;7cbe
	jr nc,l7ce9h		;7cbf
	cp b			;7cc1
	nop			;7cc2
	defb 0fdh,0fdh,008h ;illegal sequence	;7cc3
	ex af,af'		;7cc6
	nop			;7cc7
	xor c			;7cc8
	xor h			;7cc9
	ld b,e			;7cca
	ld b,e			;7ccb
	cp l			;7ccc
	cp d			;7ccd
	nop			;7cce
	sbc a,l			;7ccf
	xor b			;7cd0
	ld b,(hl)		;7cd1
	ld b,h			;7cd2
	ld b,h			;7cd3
	ld b,(hl)		;7cd4
	cp c			;7cd5
	and h			;7cd6
	sbc a,a			;7cd7
	ld d,h			;7cd8
	ld d,l			;7cd9
	ld b,l			;7cda
	ld b,l			;7cdb
	ld d,l			;7cdc
	ld d,h			;7cdd
	ld (0406ch),hl		;7cde
	ld c,e			;7ce1
	inc de			;7ce2
	cpl			;7ce3
	ld c,e			;7ce4
	ld b,b			;7ce5
	ld l,a			;7ce6
	ld l,h			;7ce7
	ld b,b			;7ce8
l7ce9h:
	ld c,e			;7ce9
	dec d			;7cea
	ld sp,l6f4bh		;7ceb
	nop			;7cee
	and e			;7cef
	ld b,a			;7cf0
	ld c,d			;7cf1
	ld b,d			;7cf2
	ld b,d			;7cf3
	dec de			;7cf4
	nop			;7cf5
	nop			;7cf6
	and (hl)		;7cf7
	and l			;7cf8
l7cf9h:
	ld c,b			;7cf9
	ld b,c			;7cfa
	inc d			;7cfb
	nop			;7cfc
	nop			;7cfd
	nop			;7cfe
	nop			;7cff
	and a			;7d00
	inc c			;7d01
	inc d			;7d02
	nop			;7d03
	nop			;7d04
	nop			;7d05
	nop			;7d06
	defb 0fdh,0fdh,008h ;illegal sequence	;7d07
	ex af,af'		;7d0a
	nop			;7d0b
	nop			;7d0c
	nop			;7d0d
	dec bc			;7d0e
	ld b,e			;7d0f
	cp l			;7d10
	cp d			;7d11
	nop			;7d12
	nop			;7d13
	nop			;7d14
	dec bc			;7d15
	ld b,h			;7d16
	ld b,h			;7d17
	ld b,(hl)		;7d18
	cp c			;7d19
	xor (hl)		;7d1a
	nop			;7d1b
	dec bc			;7d1c
	ld d,l			;7d1d
	ld b,l			;7d1e
	ld b,l			;7d1f
	ld d,l			;7d20
	ld d,h			;7d21
	or b			;7d22
	dec bc			;7d23
	ld b,b			;7d24
	ld c,e			;7d25
	inc de			;7d26
	cpl			;7d27
	ld c,e			;7d28
	ld b,b			;7d29
	ld l,h			;7d2a
	ld l,h			;7d2b
	ld b,b			;7d2c
	ld c,e			;7d2d
	dec d			;7d2e
	ld sp,0404bh		;7d2f
	ld l,h			;7d32
	and e			;7d33
	ld b,a			;7d34
	ld c,d			;7d35
	ld b,d			;7d36
	ld b,d			;7d37
	ld c,d			;7d38
	ld b,a			;7d39
	or h			;7d3a
	and (hl)		;7d3b
	and l			;7d3c
	ld c,b			;7d3d
	ld b,c			;7d3e
	ld b,c			;7d3f
	ld c,b			;7d40
	or (hl)			;7d41
	or a			;7d42
	nop			;7d43
	and (hl)		;7d44
	sbc a,h			;7d45
	ld l,l			;7d46
	ld l,l			;7d47
	xor l			;7d48
	or a			;7d49
	nop			;7d4a
	nop			;7d4b
	nop			;7d4c
	dec b			;7d4d
	ex af,af'		;7d4e
	nop			;7d4f
	or l			;7d50
	jr nc,l7d5fh		;7d51
	dec de			;7d53
	ld sp,000b7h		;7d54
	nop			;7d57
	cp c			;7d58
	ld (03e2fh),hl		;7d59
	scf			;7d5c
	sbc a,h			;7d5d
	nop			;7d5e
l7d5fh:
	nop			;7d5f
	cp b			;7d60
	ld d,h			;7d61
	ld d,l			;7d62
	ld l,l			;7d63
	ld l,h			;7d64
	sbc a,l			;7d65
	nop			;7d66
	nop			;7d67
	or h			;7d68
	ld b,007h		;7d69
	dec d			;7d6b
	inc d			;7d6c
	or (hl)			;7d6d
	nop			;7d6e
	nop			;7d6f
	nop			;7d70
	cp d			;7d71
	dec b			;7d72
	inc de			;7d73
	sbc a,a			;7d74
	nop			;7d75
	nop			;7d76
	nop			;7d77
	nop			;7d78
	nop			;7d79
	nop			;7d7a
	nop			;7d7b
	nop			;7d7c
	nop			;7d7d
	nop			;7d7e
	nop			;7d7f
	nop			;7d80
	ld b,008h		;7d81
	or l			;7d83
	ld c,l			;7d84
	ld e,a			;7d85
	ld h,b			;7d86
	ld h,c			;7d87
	ld e,a			;7d88
	ld l,a			;7d89
	or a			;7d8a
	nop			;7d8b
	or l			;7d8c
	jr nc,l7d9bh		;7d8d
	dec de			;7d8f
	ld sp,000b7h		;7d90
	nop			;7d93
	cp c			;7d94
	ld (03e2fh),hl		;7d95
	scf			;7d98
	sbc a,h			;7d99
	nop			;7d9a
l7d9bh:
	nop			;7d9b
	cp b			;7d9c
	ld d,h			;7d9d
	ld d,l			;7d9e
	ld l,l			;7d9f
	ld l,h			;7da0
	sbc a,l			;7da1
	nop			;7da2
	nop			;7da3
	or h			;7da4
	ld b,007h		;7da5
	dec d			;7da7
	inc d			;7da8
	or (hl)			;7da9
	nop			;7daa
	nop			;7dab
	nop			;7dac
	cp d			;7dad
	dec b			;7dae
	inc de			;7daf
	sbc a,a			;7db0
	nop			;7db1
	nop			;7db2
	nop			;7db3
	nop			;7db4
	rlca			;7db5
	ex af,af'		;7db6
	or l			;7db7
	ld c,l			;7db8
	ld e,a			;7db9
	ld h,b			;7dba
	ld h,c			;7dbb
	ld e,a			;7dbc
	ld l,a			;7dbd
	or a			;7dbe
	nop			;7dbf
	or l			;7dc0
	jr nc,l7dcfh		;7dc1
	dec de			;7dc3
	ld sp,000b7h		;7dc4
	nop			;7dc7
	nop			;7dc8
	and a			;7dc9
	xor b			;7dca
	xor c			;7dcb
	cp l			;7dcc
	nop			;7dcd
	nop			;7dce
l7dcfh:
	nop			;7dcf
	cp c			;7dd0
	and e			;7dd1
	and h			;7dd2
	and l			;7dd3
	and (hl)		;7dd4
	sbc a,h			;7dd5
	nop			;7dd6
	nop			;7dd7
	ld c,d			;7dd8
	ld c,e			;7dd9
	ld b,a			;7dda
	ld b,c			;7ddb
	ld b,l			;7ddc
	ld b,h			;7ddd
	nop			;7dde
	nop			;7ddf
	ld c,b			;7de0
	ld b,(hl)		;7de1
	dec hl			;7de2
	add hl,hl		;7de3
	ld b,b			;7de4
	ld b,d			;7de5
	nop			;7de6
	nop			;7de7
	or h			;7de8
	ld c,c			;7de9
	ld hl,(04328h)		;7dea
	or (hl)			;7ded
	nop			;7dee
	nop			;7def
	nop			;7df0
	ld (bc),a		;7df1
	ex af,af'		;7df2
	nop			;7df3
	or l			;7df4
	jr nc,l7e03h		;7df5
	dec de			;7df7
	ld sp,000b7h		;7df8
	nop			;7dfb
	nop			;7dfc
	xor h			;7dfd
	xor l			;7dfe
	xor (hl)		;7dff
	or b			;7e00
	nop			;7e01
	nop			;7e02
l7e03h:
	ld (bc),a		;7e03
	nop			;7e04
	dec b			;7e05
	ex af,af'		;7e06
	nop			;7e07
	nop			;7e08
	cp d			;7e09
	dec b			;7e0a
	inc de			;7e0b
	sbc a,a			;7e0c
	nop			;7e0d
	nop			;7e0e
	nop			;7e0f
	or h			;7e10
	ld b,007h		;7e11
	dec d			;7e13
	inc d			;7e14
	or (hl)			;7e15
	nop			;7e16
	nop			;7e17
	cp b			;7e18
	ld d,h			;7e19
	ld d,l			;7e1a
	ld l,l			;7e1b
	ld l,h			;7e1c
	sbc a,l			;7e1d
	nop			;7e1e
	nop			;7e1f
	cp c			;7e20
	ld (03e2fh),hl		;7e21
	scf			;7e24
	sbc a,h			;7e25
	nop			;7e26
	nop			;7e27
	or l			;7e28
	jr nc,l7e37h		;7e29
	dec de			;7e2b
	ld sp,000b7h		;7e2c
	ld bc,00600h		;7e2f
	ex af,af'		;7e32
	nop			;7e33
	nop			;7e34
	cp d			;7e35
	dec b			;7e36
l7e37h:
	inc de			;7e37
	sbc a,a			;7e38
	nop			;7e39
	nop			;7e3a
	nop			;7e3b
	or h			;7e3c
	ld b,007h		;7e3d
	dec d			;7e3f
	inc d			;7e40
	or (hl)			;7e41
	nop			;7e42
	nop			;7e43
	cp b			;7e44
	ld d,h			;7e45
	ld d,l			;7e46
	ld l,l			;7e47
	ld l,h			;7e48
	sbc a,l			;7e49
	nop			;7e4a
	nop			;7e4b
	cp c			;7e4c
	ld (03e2fh),hl		;7e4d
	scf			;7e50
	sbc a,h			;7e51
	nop			;7e52
	nop			;7e53
	or l			;7e54
	jr nc,l7e63h		;7e55
	dec de			;7e57
	ld sp,000b7h		;7e58
	or l			;7e5b
	ld c,l			;7e5c
	ld e,a			;7e5d
	ld h,b			;7e5e
	ld h,c			;7e5f
	ld e,a			;7e60
	ld l,a			;7e61
	or a			;7e62
l7e63h:
	nop			;7e63
	nop			;7e64
	rlca			;7e65
	ex af,af'		;7e66
	nop			;7e67
	or h			;7e68
	ld c,c			;7e69
	ld hl,(04328h)		;7e6a
	or (hl)			;7e6d
	nop			;7e6e
	nop			;7e6f
	ld c,b			;7e70
	ld b,(hl)		;7e71
	dec hl			;7e72
	add hl,hl		;7e73
	ld b,b			;7e74
	ld b,d			;7e75
	nop			;7e76
	nop			;7e77
	ld c,d			;7e78
	ld c,e			;7e79
	ld b,a			;7e7a
	ld b,c			;7e7b
	ld b,l			;7e7c
	ld b,h			;7e7d
	nop			;7e7e
	nop			;7e7f
	cp c			;7e80
	and e			;7e81
	and h			;7e82
	and l			;7e83
	and (hl)		;7e84
	sbc a,h			;7e85
	nop			;7e86
	nop			;7e87
	nop			;7e88
	and a			;7e89
	xor b			;7e8a
	xor c			;7e8b
	cp l			;7e8c
	nop			;7e8d
	nop			;7e8e
	nop			;7e8f
	or l			;7e90
	jr nc,l7e9fh		;7e91
	dec de			;7e93
	ld sp,000b7h		;7e94
	or l			;7e97
	ld c,l			;7e98
	ld e,a			;7e99
	ld h,b			;7e9a
	ld h,c			;7e9b
	ld e,a			;7e9c
	ld l,a			;7e9d
	or a			;7e9e
l7e9fh:
	dec b			;7e9f
	nop			;7ea0
	ld (bc),a		;7ea1
	ex af,af'		;7ea2
	nop			;7ea3
	nop			;7ea4
	xor h			;7ea5
	xor l			;7ea6
	xor (hl)		;7ea7
	or b			;7ea8
	nop			;7ea9
	nop			;7eaa
	nop			;7eab
	or l			;7eac
	jr nc,l7ebbh		;7ead
	dec de			;7eaf
	ld sp,000b7h		;7eb0
	dec l			;7eb3
	and d			;7eb4
	ld b,b			;7eb5
	and d			;7eb6
	or l			;7eb7
	and c			;7eb8
	pop af			;7eb9
	and c			;7eba
l7ebbh:
	ld d,e			;7ebb
	and d			;7ebc
	rlca			;7ebd
	and e			;7ebe
	ld b,e			;7ebf
	and e			;7ec0
	ld a,a			;7ec1
	and e			;7ec2
	ld b,e			;7ec3
	and h			;7ec4
	ld e,a			;7ec5
	and h			;7ec6
	ld a,e			;7ec7
	and h			;7ec8
	sub a			;7ec9
	and h			;7eca
	or e			;7ecb
	and h			;7ecc
	cp e			;7ecd
	and h			;7ece
	jp 0cba4h		;7ecf
	and h			;7ed2
	rst 10h			;7ed3
	and h			;7ed4
	rst 20h			;7ed5
	and h			;7ed6
	rst 30h			;7ed7
	and h			;7ed8
	dec de			;7ed9
	and l			;7eda
	inc de			;7edb
	and l			;7edc
	dec bc			;7edd
	and l			;7ede
	inc hl			;7edf
	and l			;7ee0
	dec hl			;7ee1
	and l			;7ee2
	inc sp			;7ee3
	and l			;7ee4
	dec sp			;7ee5
	and l			;7ee6
	ld b,e			;7ee7
	and l			;7ee8
	ld c,a			;7ee9
	and l			;7eea
	ld e,a			;7eeb
	and l			;7eec
	ld (hl),e		;7eed
	and l			;7eee
	adc a,e			;7eef
	and l			;7ef0
	and a			;7ef1
	and l			;7ef2
	rst 0			;7ef3
	and l			;7ef4
	rst 20h			;7ef5
	and l			;7ef6
	rlca			;7ef7
	and (hl)		;7ef8
	inc de			;7ef9
	and (hl)		;7efa
	rra			;7efb
	and (hl)		;7efc
	inc de			;7efd
	and (hl)		;7efe
	rlca			;7eff
	and (hl)		;7f00
	jp (hl)			;7f01
	and b			;7f02
	add hl,bc		;7f03
	and c			;7f04
	add hl,hl		;7f05
	and c			;7f06
	ld c,c			;7f07
	and c			;7f08
	ld a,h			;7f09
	and (hl)		;7f0a
	adc a,a			;7f0b
	and (hl)		;7f0c
	xor a			;7f0d
	and (hl)		;7f0e
	ex (sp),hl		;7f0f
	and (hl)		;7f10
	ld b,c			;7f11
	and a			;7f12
	scf			;7f13
	sbc a,a			;7f14
	inc a			;7f15
	sbc a,a			;7f16
	ld b,l			;7f17
	sbc a,a			;7f18
	ld d,e			;7f19
	sbc a,a			;7f1a
	ld h,(hl)		;7f1b
	sbc a,a			;7f1c
	ld a,(hl)		;7f1d
	sbc a,a			;7f1e
	sbc a,e			;7f1f
	sbc a,a			;7f20
	cp l			;7f21
	sbc a,a			;7f22
	call po,0109fh		;7f23
	and b			;7f26
	scf			;7f27
	sbc a,a			;7f28
	ld b,c			;7f29
	and b			;7f2a
	ld c,d			;7f2b
	and b			;7f2c
	ld e,b			;7f2d
	and b			;7f2e
	ld l,e			;7f2f
	and b			;7f30
	add a,e			;7f31
	and b			;7f32
	and b			;7f33
	and b			;7f34
	jp nz,000a0h		;7f35
	nop			;7f38
	ld bc,00001h		;7f39
	rst 38h			;7f3c
	nop			;7f3d
	ld bc,00205h		;7f3e
	xor (hl)		;7f41
	xor a			;7f42
	sbc a,c			;7f43
	sbc a,d			;7f44
	cp 000h			;7f45
	ld (bc),a		;7f47
	dec b			;7f48
	ld (bc),a		;7f49
	xor (hl)		;7f4a
	xor a			;7f4b
	sbc a,c			;7f4c
	sbc a,d			;7f4d
	dec de			;7f4e
	sub a			;7f4f
	sbc a,b			;7f50
	sbc a,e			;7f51
	sbc a,h			;7f52
	defb 0fdh,000h,003h ;illegal sequence	;7f53
	dec b			;7f56
	ld (bc),a		;7f57
	xor (hl)		;7f58
	xor a			;7f59
	sbc a,c			;7f5a
	sbc a,d			;7f5b
	dec de			;7f5c
	sub a			;7f5d
	sbc a,b			;7f5e
	sbc a,e			;7f5f
	sbc a,h			;7f60
	inc e			;7f61
	sbc a,l			;7f62
	sbc a,(hl)		;7f63
	sbc a,c			;7f64
	sbc a,d			;7f65
	call m,00400h		;7f66
	dec b			;7f69
	ld (bc),a		;7f6a
	xor (hl)		;7f6b
	xor a			;7f6c
	sbc a,c			;7f6d
	sbc a,d			;7f6e
	dec de			;7f6f
	sub a			;7f70
	sbc a,b			;7f71
	sbc a,e			;7f72
	sbc a,h			;7f73
	inc e			;7f74
	sbc a,l			;7f75
	sbc a,(hl)		;7f76
	sbc a,c			;7f77
	sbc a,d			;7f78
	dec de			;7f79
	sub a			;7f7a
	sbc a,b			;7f7b
	sbc a,e			;7f7c
	sbc a,h			;7f7d
l7f7eh:
	ei			;7f7e
	nop			;7f7f
	dec b			;7f80
	dec b			;7f81
	ld (bc),a		;7f82
	xor (hl)		;7f83
	xor a			;7f84
	sbc a,c			;7f85
	sbc a,d			;7f86
	dec de			;7f87
	sub a			;7f88
	sbc a,b			;7f89
	sbc a,e			;7f8a
	sbc a,h			;7f8b
	inc e			;7f8c
	sbc a,l			;7f8d
	sbc a,(hl)		;7f8e
	sbc a,c			;7f8f
	sbc a,d			;7f90
	dec de			;7f91
	sub a			;7f92
	sbc a,b			;7f93
	sbc a,e			;7f94
	sbc a,h			;7f95
	inc e			;7f96
	sbc a,l			;7f97
	sbc a,(hl)		;7f98
	sbc a,c			;7f99
	sbc a,d			;7f9a
	jp m,00600h		;7f9b
	dec b			;7f9e
	ld (bc),a		;7f9f
	xor (hl)		;7fa0
	xor a			;7fa1
	sbc a,c			;7fa2
	sbc a,d			;7fa3
	dec de			;7fa4
	sub a			;7fa5
	sbc a,b			;7fa6
	sbc a,e			;7fa7
	sbc a,h			;7fa8
	inc e			;7fa9
	sbc a,l			;7faa
	sbc a,(hl)		;7fab
	sbc a,c			;7fac
	sbc a,d			;7fad
	dec de			;7fae
	sub a			;7faf
	sbc a,b			;7fb0
	sbc a,e			;7fb1
	sbc a,h			;7fb2
	inc e			;7fb3
	sbc a,l			;7fb4
	sbc a,(hl)		;7fb5
	sbc a,c			;7fb6
	sbc a,d			;7fb7
	dec de			;7fb8
	sub a			;7fb9
	sbc a,b			;7fba
	sbc a,e			;7fbb
	sbc a,h			;7fbc
	ld sp,hl		;7fbd
	nop			;7fbe
	rlca			;7fbf
	dec b			;7fc0
	ld (bc),a		;7fc1
	xor (hl)		;7fc2
	xor a			;7fc3
	sbc a,c			;7fc4
	sbc a,d			;7fc5
	dec de			;7fc6
	sub a			;7fc7
	sbc a,b			;7fc8
	sbc a,e			;7fc9
	sbc a,h			;7fca
	inc e			;7fcb
	sbc a,l			;7fcc
	sbc a,(hl)		;7fcd
	sbc a,c			;7fce
	sbc a,d			;7fcf
	dec de			;7fd0
	sub a			;7fd1
	sbc a,b			;7fd2
	sbc a,e			;7fd3
	sbc a,h			;7fd4
	inc e			;7fd5
	sbc a,l			;7fd6
	sbc a,(hl)		;7fd7
	sbc a,c			;7fd8
	sbc a,d			;7fd9
	dec de			;7fda
	sub a			;7fdb
	sbc a,b			;7fdc
	sbc a,e			;7fdd
	sbc a,h			;7fde
	inc e			;7fdf
	sbc a,l			;7fe0
	sbc a,(hl)		;7fe1
	sbc a,c			;7fe2
	sbc a,d			;7fe3
	ret m			;7fe4
	nop			;7fe5
	ex af,af'		;7fe6
	dec b			;7fe7
	ld (bc),a		;7fe8
	xor (hl)		;7fe9
	xor a			;7fea
	sbc a,c			;7feb
	sbc a,d			;7fec
	dec de			;7fed
	sub a			;7fee
	sbc a,b			;7fef
	sbc a,e			;7ff0
	sbc a,h			;7ff1
	inc e			;7ff2
	sbc a,l			;7ff3
	sbc a,(hl)		;7ff4
	sbc a,c			;7ff5
	sbc a,d			;7ff6
	dec de			;7ff7
	sub a			;7ff8
	sbc a,b			;7ff9
	sbc a,e			;7ffa
	sbc a,h			;7ffb
	inc e			;7ffc
	sbc a,l			;7ffd
	sbc a,(hl)		;7ffe
	sbc a,c			;7fff

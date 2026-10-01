; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank10_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank10.bin

	org 06000h

	push af			;6000
	call 08032h		;6001
	pop af			;6004
	ld hl,08189h		;6005
	call 0468eh		;6008
	call 08046h		;600b
	ret			;600e
	call 08032h		;600f
	ld a,(0ca10h)		;6012
	ld hl,08177h		;6015
	call 0468eh		;6018
	call 08046h		;601b
	ret			;601e
	call 08029h		;601f
	call 0803bh		;6022
	call 08371h		;6025
	ret			;6028
	ld hl,0de00h		;6029
	ld bc,000ffh		;602c
	jp 08226h		;602f
	ld hl,0de00h		;6032
	ld bc,000cdh		;6035
	jp 08226h		;6038
	push af			;603b
	ld hl,083fdh		;603c
	call 08046h		;603f
	pop af			;6042
	call 0815fh		;6043
	push hl			;6046
	ld hl,0d700h		;6047
	ld bc,000ffh		;604a
	call 08226h		;604d
	pop ix			;6050
	ld a,(ix+000h)		;6052
	inc a			;6055
	call nz,08069h		;6056
l6059h:
	inc ix			;6059
	call 0818fh		;605b
	call 081c2h		;605e
	jr c,l6059h		;6061
	inc ix			;6063
	call 08209h		;6065
	ret			;6068
	push ix			;6069
	pop hl			;606b
	call 04ce0h		;606c
	push hl			;606f
	pop ix			;6070
	ret			;6072
	ld a,(00007h)		;6073
	ld c,a			;6076
	ld de,00000h		;6077
	ld a,0ffh		;607a
l607ch:
	out (c),a		;607c
	dec e			;607e
	jr nz,l607ch		;607f
	dec d			;6081
	jr nz,l607ch		;6082
	ret			;6084
	xor a			;6085
	ld b,000h		;6086
l6088h:
	out (c),a		;6088
	inc a			;608a
	djnz l6088h		;608b
	ret			;608d
	ld a,008h		;608e
	call 08157h		;6090
	bit 5,a			;6093
	jr z,l60afh		;6095
	bit 6,a			;6097
	jr z,l60a6h		;6099
	call 080d6h		;609b
	ret z			;609e
	call 080ech		;609f
	call 080f8h		;60a2
	ret			;60a5
l60a6h:
	ld a,(0c0b2h)		;60a6
	dec a			;60a9
	and 003h		;60aa
	ret z			;60ac
	jr l60b6h		;60ad
l60afh:
	ld a,(0c0b2h)		;60af
	and 003h		;60b2
	ret z			;60b4
	inc a			;60b5
l60b6h:
	set 7,a			;60b6
	ld (0c0b2h),a		;60b8
	and 003h		;60bb
	rrca			;60bd
	rrca			;60be
	push ix			;60bf
	push bc			;60c1
	push af			;60c2
	ld b,a			;60c3
	ld c,017h		;60c4
	call 00047h		;60c6
	pop af			;60c9
	pop bc			;60ca
	pop ix			;60cb
l60cdh:
	ld a,008h		;60cd
	call 08157h		;60cf
	inc a			;60d2
	ret z			;60d3
	jr l60cdh		;60d4
	ld a,002h		;60d6
	call 08157h		;60d8
	push af			;60db
	ld a,003h		;60dc
	call 08157h		;60de
	pop bc			;60e1
	rl b			;60e2
	rla			;60e4
	rl b			;60e5
	rla			;60e7
	cpl			;60e8
	and 07fh		;60e9
	ret			;60eb
	ld c,0ffh		;60ec
l60eeh:
	rrca			;60ee
	inc c			;60ef
	jr nc,l60eeh		;60f0
	ld a,c			;60f2
	ret			;60f3
	ld (0c0b5h),a		;60f4
	ret			;60f7
	ld (0c0b4h),a		;60f8
	call 04e82h		;60fb
	push ix			;60fe
	and 001h		;6100
	push hl			;6102
	push af			;6103
	ld de,02000h		;6104
	add hl,de		;6107
	push bc			;6108
	ld b,006h		;6109
l610bh:
	sra a			;610b
	rr h			;610d
	rr l			;610f
	djnz l610bh		;6111
	pop bc			;6113
	ld a,000h		;6114
	or h			;6116
	ld h,a			;6117
	ld a,07fh		;6118
	or l			;611a
	ld l,a			;611b
	or h			;611c
	push bc			;611d
	push af			;611e
	ld b,h			;611f
	ld c,00ah		;6120
	call 00047h		;6122
	pop af			;6125
	pop bc			;6126
	push bc			;6127
	push af			;6128
	ld b,l			;6129
	ld c,003h		;612a
	call 00047h		;612c
	pop af			;612f
	pop bc			;6130
	pop af			;6131
	pop hl			;6132
	push bc			;6133
	ld b,003h		;6134
l6136h:
	sra a			;6136
	rr h			;6138
	rr l			;613a
	djnz l6136h		;613c
	pop bc			;613e
	ld a,h			;613f
	or 003h			;6140
	push bc			;6142
	push af			;6143
	ld b,a			;6144
	ld c,004h		;6145
	call 00047h		;6147
	pop af			;614a
	pop bc			;614b
	pop ix			;614c
	ret			;614e
	ld a,007h		;614f
	call 08157h		;6151
	bit 3,a			;6154
	ret			;6156
	push ix			;6157
	call 00141h		;6159
	pop ix			;615c
	ret			;615e
	ld hl,08165h		;615f
	jp 0468eh		;6162
	ld b,(hl)		;6165
	add a,h			;6166
	ld a,a			;6167
	add a,(hl)		;6168
	ld d,087h		;6169
	ret nc			;616b
	adc a,b			;616c
	cp d			;616d
	adc a,c			;616e
	xor (hl)		;616f
	adc a,e			;6170
	ld h,h			;6171
	adc a,(hl)		;6172
	ld d,(hl)		;6173
	sub c			;6174
	add a,d			;6175
	sub c			;6176
	ld c,c			;6177
	add a,(hl)		;6178
	add hl,bc		;6179
	add a,a			;617a
	or h			;617b
	adc a,b			;617c
	sbc a,e			;617d
	adc a,c			;617e
	sub d			;617f
	adc a,e			;6180
	add hl,hl		;6181
	adc a,(hl)		;6182
	ld c,h			;6183
	sub c			;6184
	ld (hl),d		;6185
	sub c			;6186
	add a,d			;6187
	sub c			;6188
	ld d,(hl)		;6189
	add a,(hl)		;618a
	ld b,l			;618b
	adc a,(hl)		;618c
	ld h,(hl)		;618d
	add a,(hl)		;618e
	ld hl,0d710h		;618f
	ld bc,000efh		;6192
	call 08226h		;6195
l6198h:
	ld a,(ix+000h)		;6198
	inc a			;619b
	inc ix			;619c
	ret z			;619e
	dec a			;619f
	jr z,l61b7h		;61a0
	dec a			;61a2
	call 081bah		;61a3
	ld l,a			;61a6
	ld h,000h		;61a7
	ld de,0d710h		;61a9
	add hl,de		;61ac
l61adh:
	ld a,(hl)		;61ad
	or a			;61ae
	inc hl			;61af
	jr nz,l61adh		;61b0
	dec hl			;61b2
	inc c			;61b3
	ld (hl),c		;61b4
	jr l6198h		;61b5
l61b7h:
	inc c			;61b7
	jr l6198h		;61b8
	add a,a			;61ba
	add a,a			;61bb
	ld b,a			;61bc
	add a,a			;61bd
	add a,a			;61be
	add a,a			;61bf
	sub b			;61c0
	ret			;61c1
l61c2h:
	ld a,(ix+000h)		;61c2
	inc a			;61c5
	or a			;61c6
	ret z			;61c7
	cp 0ffh			;61c8
	scf			;61ca
	ret z			;61cb
	ld l,(ix+003h)		;61cc
	ld h,(ix+004h)		;61cf
	ld a,(ix+007h)		;61d2
	call 0827bh		;61d5
	ld a,(ix+000h)		;61d8
	call 082e8h		;61db
	ld d,(ix+002h)		;61de
	ld a,(ix+001h)		;61e1
	call 08233h		;61e4
	ld a,(ix+007h)		;61e7
	ld l,(ix+005h)		;61ea
	ld h,(ix+006h)		;61ed
	call 0827bh		;61f0
	ld a,(ix+000h)		;61f3
	call 082fch		;61f6
	ld d,(ix+002h)		;61f9
	ld a,(ix+001h)		;61fc
	call 0822eh		;61ff
	ld bc,00008h		;6202
	add ix,bc		;6205
	jr l61c2h		;6207
l6209h:
	ld h,0deh		;6209
	ld l,(ix+001h)		;620b
	ld a,(ix+002h)		;620e
	sub l			;6211
	inc a			;6212
	ld b,a			;6213
	ld a,(ix+000h)		;6214
	cp 0ffh			;6217
	ret z			;6219
l621ah:
	ld (hl),a		;621a
	inc hl			;621b
	djnz l621ah		;621c
	inc ix			;621e
	inc ix			;6220
	inc ix			;6222
	jr l6209h		;6224
	ld (hl),000h		;6226
	ld d,h			;6228
	ld e,l			;6229
	inc de			;622a
	ldir			;622b
	ret			;622d
	push af			;622e
	ld a,020h		;622f
	jr l6235h		;6231
	push af			;6233
	xor a			;6234
l6235h:
	ld (0c93eh),a		;6235
	pop af			;6238
	ld bc,00800h		;6239
l623ch:
	add a,a			;623c
	push af			;623d
	push bc			;623e
	push de			;623f
	call c,0824ah		;6240
	pop de			;6243
	pop bc			;6244
	pop af			;6245
	inc c			;6246
	djnz l623ch		;6247
	ret			;6249
	ld a,c			;624a
	call 081bah		;624b
	ld c,a			;624e
	ld b,000h		;624f
	ld hl,0d710h		;6251
	add hl,bc		;6254
l6255h:
	ld a,(hl)		;6255
	inc hl			;6256
	or a			;6257
	ret z			;6258
	dec a			;6259
	push hl			;625a
	push de			;625b
	call 08263h		;625c
	pop de			;625f
	pop hl			;6260
	jr l6255h		;6261
	ld l,d			;6263
	ld h,000h		;6264
	add hl,hl		;6266
	add hl,hl		;6267
	add hl,hl		;6268
	push hl			;6269
	call 04e8ah		;626a
	pop de			;626d
	add hl,de		;626e
	ex de,hl		;626f
	ld hl,0d800h		;6270
	ld bc,(0d700h)		;6273
	call 046adh		;6277
	ret			;627a
	ld de,0d800h		;627b
	call 082bah		;627e
	call 08290h		;6281
	ld h,d			;6284
	ld l,e			;6285
	or a			;6286
	ld bc,0d800h		;6287
	sbc hl,bc		;628a
	ld (0d700h),hl		;628c
	ret			;628f
l6290h:
	ld a,(hl)		;6290
	inc l			;6291
	call z,082d2h		;6292
	or a			;6295
	ret z			;6296
	ld b,a			;6297
	and 07fh		;6298
	cp b			;629a
	jr z,l62afh		;629b
	or a			;629d
	jr z,l6290h		;629e
	ld c,a			;62a0
	ld b,000h		;62a1
l62a3h:
	ld a,(hl)		;62a3
	ld (de),a		;62a4
	inc de			;62a5
	inc l			;62a6
	call z,082d2h		;62a7
	dec c			;62aa
	jr nz,l62a3h		;62ab
	jr l6290h		;62ad
l62afh:
	ld a,(hl)		;62af
	inc l			;62b0
	call z,082d2h		;62b1
l62b4h:
	ld (de),a		;62b4
	inc de			;62b5
	djnz l62b4h		;62b6
	jr l6290h		;62b8
	push af			;62ba
	ld a,h			;62bb
	and 0e0h		;62bc
	rlca			;62be
	rlca			;62bf
	rlca			;62c0
	add a,00ch		;62c1
	pop bc			;62c3
	add a,b			;62c4
	ld (0d703h),a		;62c5
	call 04c23h		;62c8
	ld a,h			;62cb
	and 01fh		;62cc
	add a,0a0h		;62ce
	ld h,a			;62d0
	ret			;62d1
	push af			;62d2
	inc h			;62d3
	ld a,h			;62d4
	cp 0c0h			;62d5
	jr c,l62e6h		;62d7
	sub 020h		;62d9
	ld h,a			;62db
	ld a,(0d703h)		;62dc
	inc a			;62df
	ld (0d703h),a		;62e0
	call 04c23h		;62e3
l62e6h:
	pop af			;62e6
	ret			;62e7
	push de			;62e8
	push af			;62e9
	ex de,hl		;62ea
	bit 0,a			;62eb
	call nz,08307h		;62ed
	pop af			;62f0
	pop de			;62f1
	push de			;62f2
	push af			;62f3
	bit 1,a			;62f4
	call nz,08341h		;62f6
	pop af			;62f9
	pop de			;62fa
	ret			;62fb
	push de			;62fc
	push af			;62fd
	ex de,hl		;62fe
	bit 0,a			;62ff
	call nz,08307h		;6301
	pop af			;6304
	pop de			;6305
	ret			;6306
	ld bc,(0d700h)		;6307
	srl b			;630b
	rr c			;630d
	srl b			;630f
	rr c			;6311
	srl b			;6313
	rr c			;6315
	ld a,b			;6317
	or c			;6318
l6319h:
	jr z,l6319h		;6319
	ld hl,0d800h		;631b
	ld de,0d807h		;631e
l6321h:
	push de			;6321
	push bc			;6322
	call 08334h		;6323
	pop bc			;6326
	pop de			;6327
	inc de			;6328
	ld hl,00007h		;6329
	add hl,de		;632c
	ex de,hl		;632d
	dec bc			;632e
	ld a,b			;632f
	or c			;6330
	jr nz,l6321h		;6331
	ret			;6333
	ld b,004h		;6334
l6336h:
	ld c,(hl)		;6336
	ld a,(de)		;6337
	ex de,hl		;6338
	ld (hl),c		;6339
	ld (de),a		;633a
	ex de,hl		;633b
	inc hl			;633c
	dec de			;633d
	djnz l6336h		;633e
	ret			;6340
	ld de,(0d700h)		;6341
	ld hl,0d800h		;6345
l6348h:
	ld a,(hl)		;6348
	rr a			;6349
	rl c			;634b
	rr a			;634d
	rl c			;634f
	rr a			;6351
	rl c			;6353
	rr a			;6355
	rl c			;6357
	rr a			;6359
	rl c			;635b
	rr a			;635d
	rl c			;635f
	rr a			;6361
	rl c			;6363
	rr a			;6365
	rl c			;6367
	ld (hl),c		;6369
	inc hl			;636a
	dec de			;636b
	ld a,d			;636c
	or e			;636d
	jr nz,l6348h		;636e
	ret			;6370
	ld a,(0ca10h)		;6371
	cp 007h			;6374
l6376h:
	ret z			;6376
	ld hl,0df00h		;6377
	ld bc,0007fh		;637a
	call 04648h		;637d
	ld hl,092b8h		;6380
	call 08389h		;6383
	call 083b6h		;6386
	push hl			;6389
	pop ix			;638a
l638ch:
	ld a,(ix+000h)		;638c
	or a			;638f
	ret z			;6390
	ld h,(ix+003h)		;6391
	ld l,(ix+002h)		;6394
	ld a,(ix+004h)		;6397
	call 0827bh		;639a
	ld a,(ix+000h)		;639d
	ld l,(ix+001h)		;63a0
	call 083d5h		;63a3
	ld a,(ix+001h)		;63a6
	ld l,(ix+005h)		;63a9
	ld h,0dfh		;63ac
	ld (hl),a		;63ae
	ld bc,00006h		;63af
	add ix,bc		;63b2
	jr l638ch		;63b4
	ld a,(0ca10h)		;63b6
	ld hl,083c0h		;63b9
	call 0468eh		;63bc
	ret			;63bf
	rst 10h			;63c0
	sub d			;63c1
	ld h,093h		;63c2
	ld a,e			;63c4
	sub e			;63c5
	cp b			;63c6
	sub e			;63c7
	ex (sp),hl		;63c8
	sub e			;63c9
	ld c,094h		;63ca
	ccf			;63cc
	sub h			;63cd
	ld a,h			;63ce
	sub h			;63cf
	ld a,l			;63d0
	sub h			;63d1
	call nc,00083h		;63d2
	ld de,0c800h		;63d5
	ld h,000h		;63d8
	add hl,hl		;63da
	add hl,hl		;63db
	add hl,hl		;63dc
	add hl,de		;63dd
	ld b,003h		;63de
l63e0h:
	rrca			;63e0
	push hl			;63e1
	push af			;63e2
	push bc			;63e3
	call c,083f1h		;63e4
	pop bc			;63e7
	pop af			;63e8
	pop hl			;63e9
	ld de,00800h		;63ea
	add hl,de		;63ed
	djnz l63e0h		;63ee
	ret			;63f0
	ex de,hl		;63f1
	ld hl,0d800h		;63f2
	ld bc,(0d700h)		;63f5
	call 046ach		;63f9
	ret			;63fc
	ld (hl),b		;63fd
	ld h,b			;63fe
	rla			;63ff
	ld (hl),c		;6400
	ld b,l			;6401
	add a,h			;6402
	ld (hl),b		;6403
	and a			;6404
	inc sp			;6405
	out (077h),a		;6406
	rst 20h			;6408
	nop			;6409
	ret p			;640a
	rst 38h			;640b
	ld bc,00101h		;640c
	ld bc,00101h		;640f
	ld bc,00101h		;6412
	ld bc,00101h		;6415
	ld bc,00101h		;6418
	ld bc,00101h		;641b
	ld bc,00101h		;641e
	ld bc,00101h		;6421
	ld bc,00101h		;6424
	ld bc,000ffh		;6427
	add a,b			;642a
	nop			;642b
	ccf			;642c
	ld b,b			;642d
	ccf			;642e
	ld b,b			;642f
	nop			;6430
	nop			;6431
	add a,b			;6432
	adc a,048h		;6433
	ld b,b			;6435
	dec hl			;6436
	ld b,c			;6437
	nop			;6438
	nop			;6439
	add a,b			;643a
	ex de,hl		;643b
	dec d			;643c
	ld c,d			;643d
	sub a			;643e
	ld c,c			;643f
	inc b			;6440
	rst 38h			;6441
	inc h			;6442
	adc a,0e9h		;6443
	rst 38h			;6445
	ld (bc),a		;6446
	nop			;6447
	inc b			;6448
	djnz $+24		;6449
	ld hl,03227h		;644b
	nop			;644e
	ld b,b			;644f
	ld (00052h),hl		;6450
	sub b			;6453
	ld b,a			;6454
	or (hl)			;6455
	ld h,0c3h		;6456
	rst 38h			;6458
	nop			;6459
	nop			;645a
	nop			;645b
	nop			;645c
	dec b			;645d
	inc b			;645e
	ex af,af'		;645f
	ld bc,00506h		;6460
	inc b			;6463
	ex af,af'		;6464
	rlca			;6465
	ld b,005h		;6466
	inc b			;6468
	rlca			;6469
	rlca			;646a
	ld b,005h		;646b
	inc bc			;646d
	inc bc			;646e
	ld (bc),a		;646f
	ld bc,00000h		;6470
	nop			;6473
	nop			;6474
	rst 38h			;6475
	nop			;6476
	rst 38h			;6477
	nop			;6478
	or e			;6479
	ld b,e			;647a
	or (hl)			;647b
	ld b,e			;647c
	nop			;647d
	nop			;647e
	rst 38h			;647f
	add a,0b9h		;6480
	ld b,e			;6482
	call c,00043h		;6483
	nop			;6486
	add a,b			;6487
	cp c			;6488
	rst 18h			;6489
	ld b,e			;648a
	ld b,b			;648b
	ld b,h			;648c
	nop			;648d
l648eh:
	nop			;648e
	pop af			;648f
	ld sp,04e3eh		;6490
	ld c,d			;6493
	ld c,(hl)		;6494
l6495h:
	nop			;6495
	nop			;6496
	add a,b			;6497
	ld c,h			;6498
	ld e,d			;6499
	ld c,(hl)		;649a
	defb 0fdh,04fh,000h ;illegal sequence	;649b
	nop			;649e
	add a,b			;649f
	adc a,l			;64a0
	jr c,$+83		;64a1
	ld sp,00052h		;64a3
	nop			;64a6
	add a,b			;64a7
	or c			;64a8
	push hl			;64a9
	ld d,d			;64aa
	jr l6500h		;64ab
	nop			;64ad
	nop			;64ae
	defb 0fdh,001h,059h ;illegal sequence	;64af
	ld d,e			;64b2
	jp nc,00054h		;64b3
	nop			;64b6
	ld h,c			;64b7
	inc sp			;64b8
	ld (hl),056h		;64b9
	jp pe,00056h		;64bb
	nop			;64be
	ld a,c			;64bf
	ld c,a			;64c0
	ld (hl),l		;64c1
	ld d,a			;64c2
	sbc a,058h		;64c3
	nop			;64c5
	nop			;64c6
	ld a,l			;64c7
	add a,(hl)		;64c8
	ex af,af'		;64c9
	ld e,d			;64ca
	ret c			;64cb
	ld e,e			;64cc
	nop			;64cd
	nop			;64ce
	jr nz,l648eh		;64cf
	ld e,a			;64d1
	ld e,l			;64d2
	ld (hl),b		;64d3
	ld e,l			;64d4
	nop			;64d5
	nop			;64d6
	inc e			;64d7
	ld (05d83h),a		;64d8
	ccf			;64db
	ld e,(hl)		;64dc
	nop			;64dd
	nop			;64de
	inc e			;64df
	add a,(hl)		;64e0
	call 0db5eh		;64e1
	ld e,(hl)		;64e4
	nop			;64e5
	nop			;64e6
	jr $-67			;64e7
	jp po,0f95eh		;64e9
	ld e,(hl)		;64ec
	nop			;64ed
	nop			;64ee
	inc e			;64ef
	ret nz			;64f0
	rrca			;64f1
	ld e,a			;64f2
sub_64f3h:
	jr l6554h		;64f3
	nop			;64f5
	nop			;64f6
	ex af,af'		;64f7
	ld sp,05f21h		;64f8
	jr z,l655ch		;64fb
	nop			;64fd
	nop			;64fe
	ex af,af'		;64ff
l6500h:
	ld l,e			;6500
	dec l			;6501
	ld e,a			;6502
	add hl,sp		;6503
	ld e,a			;6504
	nop			;6505
	nop			;6506
	ex af,af'		;6507
	ld a,d			;6508
	ld c,d			;6509
	ld e,a			;650a
	ld d,h			;650b
	ld e,a			;650c
	nop			;650d
	nop			;650e
	ex af,af'		;650f
	add a,d			;6510
	ld e,c			;6511
	ld e,a			;6512
	ld h,e			;6513
	ld e,a			;6514
	nop			;6515
	nop			;6516
	ex af,af'		;6517
	xor d			;6518
	ld l,l			;6519
	ld e,a			;651a
	ld a,a			;651b
	ld e,a			;651c
	nop			;651d
	nop			;651e
	ex af,af'		;651f
	cp c			;6520
	sub b			;6521
	ld e,a			;6522
	sbc a,a			;6523
	ld e,a			;6524
	nop			;6525
	nop			;6526
	inc b			;6527
	ld sp,05fabh		;6528
	or h			;652b
	ld e,a			;652c
	nop			;652d
	nop			;652e
	inc b			;652f
	ld c,a			;6530
	or a			;6531
	ld e,a			;6532
	ld e,b			;6533
	ld h,c			;6534
	nop			;6535
	nop			;6536
	inc b			;6537
	and (hl)		;6538
	cp (hl)			;6539
	ld h,d			;653a
	defb 0ddh,062h ;ld ixh,d	;653b
	nop			;653d
	nop			;653e
	inc b			;653f
	or h			;6540
	push af			;6541
	ld h,d			;6542
	scf			;6543
	ld h,e			;6544
	nop			;6545
	nop			;6546
	ld (bc),a		;6547
	ld bc,l6376h		;6548
	dec b			;654b
	ld h,h			;654c
	nop			;654d
	nop			;654e
	ld (bc),a		;654f
	inc de			;6550
	halt			;6551
	ld h,e			;6552
	dec b			;6553
l6554h:
	ld h,h			;6554
	nop			;6555
	nop			;6556
	ld (bc),a		;6557
	ld sp,l6495h		;6558
	and d			;655b
l655ch:
	ld h,h			;655c
	nop			;655d
	nop			;655e
	ld (bc),a		;655f
	ld c,e			;6560
	and a			;6561
	ld h,h			;6562
	or e			;6563
	ld h,h			;6564
	nop			;6565
	nop			;6566
	ld (bc),a		;6567
	ld h,b			;6568
	cp (hl)			;6569
	ld h,h			;656a
	adc a,l			;656b
	ld h,l			;656c
	nop			;656d
	nop			;656e
	ld (bc),a		;656f
	adc a,l			;6570
	ld a,b			;6571
	ld h,(hl)		;6572
	jp m,00066h		;6573
	nop			;6576
	ld (bc),a		;6577
l6578h:
	xor h			;6578
	ld a,h			;6579
	ld h,a			;657a
	dec c			;657b
	ld l,b			;657c
	nop			;657d
	nop			;657e
	ld bc,08a32h		;657f
	ld l,b			;6582
	ex (sp),hl		;6583
	ld l,b			;6584
	nop			;6585
	nop			;6586
	rst 38h			;6587
	adc a,048h		;6588
	ld b,b			;658a
	in a,(042h)		;658b
	nop			;658d
	nop			;658e
	rst 38h			;658f
	ex de,hl		;6590
	dec d			;6591
	ld c,d			;6592
	sub 049h		;6593
	inc b			;6595
	cp 005h			;6596
	dec b			;6598
	dec b			;6599
	inc b			;659a
	nop			;659b
	nop			;659c
	nop			;659d
	nop			;659e
	nop			;659f
	nop			;65a0
	nop			;65a1
	nop			;65a2
	nop			;65a3
	nop			;65a4
	nop			;65a5
	nop			;65a6
	nop			;65a7
	nop			;65a8
	nop			;65a9
	nop			;65aa
	nop			;65ab
	nop			;65ac
	nop			;65ad
	nop			;65ae
	ld bc,00302h		;65af
	nop			;65b2
	rst 38h			;65b3
	nop			;65b4
	ret po			;65b5
	ld bc,07b10h		;65b6
	jr nc,l6637h		;65b9
	inc b			;65bb
	nop			;65bc
	ret nz			;65bd
	inc l			;65be
	cp 07ch			;65bf
	ld e,l			;65c1
	ld a,l			;65c2
	inc b			;65c3
	nop			;65c4
	ret nz			;65c5
	sub b			;65c6
	xor (hl)		;65c7
l65c8h:
	ld a,l			;65c8
	defb 0ddh,07dh ;ld a,ixl	;65c9
	inc b			;65cb
	nop			;65cc
l65cdh:
	add a,b			;65cd
	add hl,sp		;65ce
	jp m,02f7dh		;65cf
	ld a,(hl)		;65d2
	inc b			;65d3
	nop			;65d4
	add a,b			;65d5
	sbc a,b			;65d6
	ld c,(hl)		;65d7
	ld a,(hl)		;65d8
	ld (hl),c		;65d9
	ld a,(hl)		;65da
	inc b			;65db
	nop			;65dc
	ld b,b			;65dd
	add hl,sp		;65de
	ld a,(hl)		;65df
	ld a,(hl)		;65e0
	ex (sp),hl		;65e1
	add a,b			;65e2
	inc b			;65e3
	nop			;65e4
	ld b,b			;65e5
	sbc a,b			;65e6
	jp p,0c981h		;65e7
	add a,d			;65ea
	inc b			;65eb
	nop			;65ec
	jr nz,$+46		;65ed
	dec sp			;65ef
	add a,e			;65f0
	and l			;65f1
	add a,l			;65f2
	inc b			;65f3
	nop			;65f4
	jr nz,l6578h		;65f5
	inc sp			;65f7
	add a,a			;65f8
	ld h,(hl)		;65f9
	adc a,c			;65fa
	inc b			;65fb
	nop			;65fc
	jr l65ffh		;65fd
l65ffh:
	or e			;65ff
	ld b,e			;6600
	or (hl)			;6601
	ld b,e			;6602
	nop			;6603
	nop			;6604
	jr l65cdh		;6605
	cp c			;6607
	ld b,e			;6608
	call c,00043h		;6609
	nop			;660c
	djnz l65c8h		;660d
	rst 18h			;660f
	ld b,e			;6610
	ld b,b			;6611
	ld b,h			;6612
	nop			;6613
	nop			;6614
	jr l6618h		;6615
	add a,h			;6617
l6618h:
	ld b,h			;6618
	call z,00044h		;6619
	nop			;661c
	djnz $+18		;661d
	cp 044h			;661f
	xor h			;6621
	ld b,l			;6622
	nop			;6623
	nop			;6624
	ex af,af'		;6625
	djnz l6633h		;6626
	ld b,(hl)		;6628
	inc (hl)		;6629
	ld c,d			;662a
	nop			;662b
	nop			;662c
	ret m			;662d
	adc a,048h		;662e
	ld b,b			;6630
	in a,(042h)		;6631
l6633h:
	nop			;6633
	nop			;6634
	ret m			;6635
	ex de,hl		;6636
l6637h:
	dec d			;6637
	ld c,d			;6638
	sub 049h		;6639
	inc b			;663b
	nop			;663c
	ld b,b			;663d
	ret nz			;663e
	nop			;663f
	ld b,b			;6640
	ld e,040h		;6641
	nop			;6643
	rst 38h			;6644
	inc bc			;6645
	cp l			;6646
	push bc			;6647
	rst 38h			;6648
	rst 38h			;6649
	rst 38h			;664a
	rst 38h			;664b
	ld b,a			;664c
	ld bc,00210h		;664d
	ld de,0031eh		;6650
	rra			;6653
	adc a,l			;6654
	rst 38h			;6655
	rst 38h			;6656
	rst 38h			;6657
	rst 38h			;6658
	inc bc			;6659
	dec c			;665a
	adc a,a			;665b
	inc bc			;665c
	and (hl)		;665d
	or c			;665e
	ld b,a			;665f
	or (hl)			;6660
	cp e			;6661
	inc bc			;6662
	cp h			;6663
	call 0ffffh		;6664
	rst 38h			;6667
	rst 38h			;6668
	ld b,a			;6669
	ld bc,04710h		;666a
	ld d,030h		;666d
	ld (bc),a		;666f
	ld de,00211h		;6670
	jr l668dh		;6673
	inc bc			;6675
	inc sp			;6676
	adc a,h			;6677
	ld (bc),a		;6678
	adc a,l			;6679
	xor e			;667a
	inc bc			;667b
	cp l			;667c
	push bc			;667d
	rst 38h			;667e
	jr nz,$+3		;667f
	ld sp,04212h		;6681
	inc hl			;6684
	inc b			;6685
	ld sp,04306h		;6686
	rlca			;6689
	ld d,l			;668a
	nop			;668b
	sub b			;668c
l668dh:
	ld d,(hl)		;668d
	or (hl)			;668e
	inc de			;668f
	jp 001ffh		;6690
	ld bc,00101h		;6693
	ld (bc),a		;6696
	ld (bc),a		;6697
	inc bc			;6698
	inc bc			;6699
	rst 38h			;669a
	nop			;669b
	add a,b			;669c
	ld bc,04000h		;669d
	add a,d			;66a0
	ld b,b			;66a1
	inc b			;66a2
	nop			;66a3
	add a,b			;66a4
	ld de,040f0h		;66a5
	ld h,042h		;66a8
	inc b			;66aa
	nop			;66ab
	add a,b			;66ac
	ld c,e			;66ad
l66aeh:
	sub (hl)		;66ae
	ld b,e			;66af
	xor h			;66b0
	ld b,l			;66b1
	inc b			;66b2
	nop			;66b3
	add a,b			;66b4
	xor b			;66b5
	ld e,b			;66b6
	ld b,a			;66b7
	ld (hl),l		;66b8
	ld c,b			;66b9
	inc b			;66ba
	nop			;66bb
	ld b,b			;66bc
	ld bc,0b0f1h		;66bd
	sub l			;66c0
	or d			;66c1
	nop			;66c2
	ld bc,00120h		;66c3
	pop af			;66c6
	or b			;66c7
	sub l			;66c8
	or d			;66c9
	nop			;66ca
	nop			;66cb
	ld b,b			;66cc
	ld d,b			;66cd
	call nz,0d4b3h		;66ce
	or (hl)			;66d1
	nop			;66d2
	ld bc,05020h		;66d3
	call nz,0d4b3h		;66d6
	or (hl)			;66d9
	nop			;66da
	nop			;66db
	ld h,b			;66dc
	call nz,0b94eh		;66dd
	add a,(hl)		;66e0
	cp c			;66e1
	nop			;66e2
	nop			;66e3
	ld b,b			;66e4
	res 1,c			;66e5
	cp c			;66e7
	and e			;66e8
	cp c			;66e9
	nop			;66ea
	ld bc,0cb20h		;66eb
	adc a,c			;66ee
	cp c			;66ef
	and e			;66f0
	cp c			;66f1
	nop			;66f2
	nop			;66f3
	jr nz,l66aeh		;66f4
	or (hl)			;66f6
	cp c			;66f7
	ret pe			;66f8
	cp c			;66f9
	nop			;66fa
	rst 38h			;66fb
	ld b,a			;66fc
	ld bc,00310h		;66fd
	ld de,0474ah		;6700
	xor h			;6703
	cp a			;6704
	inc bc			;6705
	ret nz			;6706
	call 0ffffh		;6707
	rst 38h			;670a
	rst 38h			;670b
	inc bc			;670c
	ld d,b			;670d
	cp l			;670e
	ld b,a			;670f
	set 1,l			;6710
	ld (bc),a		;6712
	call nz,0ffcah		;6713
	nop			;6716
	nop			;6717
	jr nc,$+19		;6718
	ld h,c			;671a
	inc h			;671b
	ld (hl),h		;671c
	ld (hl),074h		;671d
	ld b,h			;671f
	ld (l7252h),hl		;6720
	sub d			;6723
	ld b,(hl)		;6724
	or (hl)			;6725
	inc d			;6726
	jp 001ffh		;6727
	ld bc,00202h		;672a
	inc bc			;672d
	inc b			;672e
	dec b			;672f
	ld b,0ffh		;6730
	nop			;6732
	rst 38h			;6733
	nop			;6734
	ld b,l			;6735
	ld b,b			;6736
	ld b,d			;6737
	ld b,b			;6738
	nop			;6739
	nop			;673a
	add a,b			;673b
	ld bc,06918h		;673c
	ld c,h			;673f
	ld l,c			;6740
	nop			;6741
	nop			;6742
	add a,b			;6743
	ld l,(hl)		;6744
	ld h,h			;6745
	ld l,c			;6746
	add hl,hl		;6747
	ld l,e			;6748
	nop			;6749
	nop			;674a
	ld b,b			;674b
	ld bc,l6bf9h		;674c
	add hl,hl		;674f
	ld l,h			;6750
	nop			;6751
	nop			;6752
	ld b,b			;6753
	ld l,c			;6754
	ld b,b			;6755
	ld l,h			;6756
	ld hl,(0006eh)		;6757
	nop			;675a
	ret nz			;675b
	add hl,bc		;675c
	jr nz,l67ceh		;675d
	ret pe			;675f
	ld (hl),c		;6760
	nop			;6761
	nop			;6762
	ret nz			;6763
	and a			;6764
	dec c			;6765
	ld (hl),h		;6766
	ld b,l			;6767
	ld (hl),h		;6768
	nop			;6769
	nop			;676a
	add a,b			;676b
	xor a			;676c
	ld a,h			;676d
	ld (hl),h		;676e
	adc a,074h		;676f
	nop			;6771
	ld bc,0af40h		;6772
	ld a,h			;6775
	ld (hl),h		;6776
	adc a,074h		;6777
	nop			;6779
	nop			;677a
	ret nz			;677b
	cp c			;677c
	inc e			;677d
	ld (hl),l		;677e
	ld l,075h		;677f
	nop			;6781
	nop			;6782
	add a,b			;6783
	cp h			;6784
	ld c,b			;6785
l6786h:
	ld (hl),l		;6786
	xor h			;6787
	ld (hl),l		;6788
	nop			;6789
	ld bc,0bc40h		;678a
	ld c,b			;678d
	ld (hl),l		;678e
	xor h			;678f
	ld (hl),l		;6790
	nop			;6791
	nop			;6792
	ret nz			;6793
	jp z,l7613h		;6794
	inc (hl)		;6797
	halt			;6798
	nop			;6799
	nop			;679a
	ret nz			;679b
	ld e,b			;679c
	cp c			;679d
	ld b,e			;679e
	call c,00043h		;679f
	nop			;67a2
	jr nz,$+3		;67a3
	call z,01a9eh		;67a5
	sbc a,a			;67a8
	nop			;67a9
	nop			;67aa
	jr nc,l67bdh		;67ab
	ccf			;67ad
	sbc a,a			;67ae
	ld e,h			;67af
	sbc a,a			;67b0
	nop			;67b1
	nop			;67b2
	jr nz,l67fdh		;67b3
	ld l,l			;67b5
	sbc a,a			;67b6
	inc e			;67b7
	and c			;67b8
	nop			;67b9
	nop			;67ba
l67bbh:
	jr nc,$-109		;67bb
l67bdh:
	adc a,h			;67bd
	and d			;67be
	rst 28h			;67bf
	and d			;67c0
	nop			;67c1
l67c2h:
	nop			;67c2
	jr nc,l6786h		;67c3
	ld d,h			;67c5
	and e			;67c6
l67c7h:
	ld a,e			;67c7
	and e			;67c8
	nop			;67c9
	nop			;67ca
	jr nc,$-54		;67cb
	and h			;67cd
l67ceh:
	and e			;67ce
	or (hl)			;67cf
	and e			;67d0
	nop			;67d1
	nop			;67d2
	djnz l67d6h		;67d3
	ret z			;67d5
l67d6h:
	and e			;67d6
	ld (de),a		;67d7
	and h			;67d8
	nop			;67d9
	nop			;67da
	djnz l67eah		;67db
	ld b,a			;67dd
	and h			;67de
	ld d,e			;67df
	and h			;67e0
	nop			;67e1
	nop			;67e2
	djnz l6815h		;67e3
	ld h,e			;67e5
	and h			;67e6
	pop bc			;67e7
	and (hl)		;67e8
	nop			;67e9
l67eah:
	nop			;67ea
	jr $-85			;67eb
	rst 30h			;67ed
	xor b			;67ee
	adc a,h			;67ef
	xor c			;67f0
	nop			;67f1
	nop			;67f2
	jr l67bbh		;67f3
	ld a,(de)		;67f5
	xor d			;67f6
	ld h,0aah		;67f7
	nop			;67f9
	nop			;67fa
	jr l67c7h		;67fb
l67fdh:
	inc (hl)		;67fd
	xor d			;67fe
	ld d,(hl)		;67ff
	xor d			;6800
	nop			;6801
	nop			;6802
	ex af,af'		;6803
	ld bc,0aa77h		;6804
	ind			;6807
	nop			;6809
	nop			;680a
	ex af,af'		;680b
	jr nz,l6846h		;680c
	xor e			;680e
	xor a			;680f
	xor e			;6810
	nop			;6811
	inc bc			;6812
	ex af,af'		;6813
	dec sp			;6814
l6815h:
	jr c,l67c2h		;6815
	xor a			;6817
	xor e			;6818
	nop			;6819
	nop			;681a
	ex af,af'		;681b
	ld a,(0ac48h)		;681c
	ld c,l			;681f
	xor h			;6820
	nop			;6821
	nop			;6822
	ex af,af'		;6823
	ld d,l			;6824
	ld d,e			;6825
	xor h			;6826
	xor e			;6827
	xor h			;6828
	nop			;6829
	nop			;682a
	ex af,af'		;682b
	ld h,l			;682c
	dec d			;682d
	xor l			;682e
	add hl,sp		;682f
	xor l			;6830
	nop			;6831
	ld (bc),a		;6832
	ex af,af'		;6833
	ld l,h			;6834
	dec d			;6835
	xor l			;6836
	add hl,sp		;6837
	xor l			;6838
	nop			;6839
	nop			;683a
	ex af,af'		;683b
	ld (hl),e		;683c
	ld l,l			;683d
	xor l			;683e
	ret p			;683f
	xor (hl)		;6840
	nop			;6841
	nop			;6842
	ex af,af'		;6843
	cp h			;6844
	ccf			;6845
l6846h:
	or b			;6846
	adc a,h			;6847
	or b			;6848
	nop			;6849
	nop			;684a
	ex af,af'		;684b
	ret z			;684c
	ret nc			;684d
	or b			;684e
	pop hl			;684f
	or b			;6850
	nop			;6851
	rst 38h			;6852
	inc bc			;6853
	add hl,bc		;6854
	dec bc			;6855
	ld b,a			;6856
	ld e,023h		;6857
	inc bc			;6859
	inc h			;685a
	inc h			;685b
	ld b,a			;685c
	dec h			;685d
	dec h			;685e
	ld (bc),a		;685f
	ld h,027h		;6860
	inc bc			;6862
	jr z,l688fh		;6863
	ld b,a			;6865
	dec hl			;6866
	inc l			;6867
	inc bc			;6868
	dec l			;6869
	dec l			;686a
	ld (bc),a		;686b
	ld l,030h		;686c
	inc bc			;686e
	ld sp,04731h		;686f
	ld (00332h),a		;6872
	inc sp			;6875
	inc sp			;6876
	ld (bc),a		;6877
	inc (hl)		;6878
	inc (hl)		;6879
	inc bc			;687a
	dec (hl)		;687b
	scf			;687c
	ld (bc),a		;687d
	jr c,l68c1h		;687e
	inc bc			;6880
	ld b,d			;6881
	ld b,e			;6882
	ld (bc),a		;6883
	ld b,h			;6884
	ld b,a			;6885
	inc bc			;6886
	ld c,b			;6887
l6888h:
	ld c,d			;6888
	ld b,a			;6889
	ld d,(hl)		;688a
	ld d,a			;688b
	ld b,a			;688c
	ld h,b			;688d
	ld l,b			;688e
l688fh:
	inc bc			;688f
	ld l,c			;6890
l6891h:
	and (hl)		;6891
	dec de			;6892
	and a			;6893
	xor (hl)		;6894
	ld b,a			;6895
	xor a			;6896
	cp b			;6897
	inc bc			;6898
	cp c			;6899
	cp e			;689a
	ld (bc),a		;689b
	cp h			;689c
	cp h			;689d
	ld b,a			;689e
	cp l			;689f
	cp (hl)			;68a0
	ld (bc),a		;68a1
	cp a			;68a2
	cp a			;68a3
	ld b,a			;68a4
	ret nz			;68a5
	pop bc			;68a6
	inc bc			;68a7
	jp nz,00bc3h		;68a8
	jp z,003cbh		;68ab
	call z,000cdh		;68ae
	jp z,0ffcbh		;68b1
	nop			;68b4
	nop			;68b5
	ld (bc),a		;68b6
	ld (de),a		;68b7
	inc bc			;68b8
	inc hl			;68b9
	inc b			;68ba
	inc (hl)		;68bb
	dec b			;68bc
	ld b,l			;68bd
	ld d,d			;68be
	ld d,h			;68bf
	ld b,b			;68c0
l68c1h:
	sub b			;68c1
	ld b,c			;68c2
	or e			;68c3
	jr nc,l6888h		;68c4
	rst 38h			;68c6
	rst 38h			;68c7
	rst 38h			;68c8
	inc bc			;68c9
	jr nc,l6891h		;68ca
	ld b,a			;68cc
	add a,0cdh		;68cd
	rst 38h			;68cf
	ld (bc),a		;68d0
	nop			;68d1
	inc de			;68d2
	ld de,02224h		;68d3
	ld b,b			;68d6
	jr nc,l694ch		;68d7
	ld b,e			;68d9
	ld (hl),b		;68da
	ld d,l			;68db
	ld (05692h),hl		;68dc
	or (hl)			;68df
	inc de			;68e0
	jp 001ffh		;68e1
	ld bc,00101h		;68e4
	ld (bc),a		;68e7
	ld (bc),a		;68e8
	inc bc			;68e9
	inc bc			;68ea
	rst 38h			;68eb
	nop			;68ec
	add a,b			;68ed
	ld bc,l7647h		;68ee
	inc l			;68f1
	ld a,b			;68f2
	nop			;68f3
	nop			;68f4
	add a,b			;68f5
	ld d,d			;68f6
	halt			;68f7
	ld a,c			;68f8
	ret z			;68f9
	ld a,c			;68fa
	nop			;68fb
	nop			;68fc
	add a,b			;68fd
	ld e,h			;68fe
	dec b			;68ff
	ld a,d			;6900
	and e			;6901
	ld a,h			;6902
	nop			;6903
	nop			;6904
	ld b,b			;6905
	ld bc,0955fh		;6906
	jp (hl)			;6909
	sub l			;690a
	inc b			;690b
	ld bc,00120h		;690c
	ld e,a			;690f
	sub l			;6910
	jp (hl)			;6911
	sub l			;6912
	inc b			;6913
	nop			;6914
	ld b,b			;6915
	ld d,b			;6916
	ld (hl),097h		;6917
	rst 30h			;6919
	sbc a,c			;691a
	inc b			;691b
	ld bc,05020h		;691c
	ld (hl),097h		;691f
	rst 30h			;6921
	sbc a,c			;6922
	inc b			;6923
	nop			;6924
	ld b,b			;6925
	rla			;6926
	dec (hl)		;6927
	sub (hl)		;6928
	and 096h		;6929
	inc b			;692b
	ld bc,01720h		;692c
	dec (hl)		;692f
	sub (hl)		;6930
	and 096h		;6931
	inc b			;6933
	nop			;6934
	ld h,b			;6935
	or d			;6936
	ld e,d			;6937
	sbc a,h			;6938
	ld l,h			;6939
	sbc a,h			;693a
	inc b			;693b
	nop			;693c
	ld b,b			;693d
	rst 0			;693e
	ld (hl),a		;693f
	sbc a,h			;6940
	and c			;6941
	sbc a,h			;6942
	inc b			;6943
	ld bc,0c720h		;6944
	ld (hl),a		;6947
	sbc a,h			;6948
	and c			;6949
	sbc a,h			;694a
	inc b			;694b
l694ch:
	nop			;694c
	ld h,b			;694d
	call z,09ccbh		;694e
	defb 0ddh,09ch ;sbc a,ixh	;6951
	inc b			;6953
	rst 38h			;6954
	ld b,a			;6955
	ld d,d			;6956
	ld e,e			;6957
	inc bc			;6958
	ld e,h			;6959
	sbc a,e			;695a
	ld b,a			;695b
	ld l,(hl)		;695c
	ld l,(hl)		;695d
	ld (bc),a		;695e
	sub d			;695f
	sub e			;6960
	ld (bc),a		;6961
	sbc a,b			;6962
	sbc a,c			;6963
	inc bc			;6964
	and e			;6965
	or d			;6966
	inc bc			;6967
	cp d			;6968
	jp nz,0c503h		;6969
	add a,003h		;696c
	ret z			;696e
	call 0af02h		;696f
	or b			;6972
	ld (bc),a		;6973
	cp e			;6974
	cp h			;6975
	add a,e			;6976
	ld (hl),d		;6977
	ld (hl),d		;6978
	add a,e			;6979
	add a,b			;697a
	add a,b			;697b
	add a,e			;697c
	adc a,h			;697d
	adc a,l			;697e
	add a,e			;697f
	sub h			;6980
	sub h			;6981
	add a,e			;6982
	and h			;6983
	and h			;6984
	ld (bc),a		;6985
	and a			;6986
	xor b			;6987
	add a,e			;6988
	xor h			;6989
	xor h			;698a
	add a,e			;698b
	xor (hl)		;698c
	xor (hl)		;698d
	add a,e			;698e
	ret nz			;698f
	ret nz			;6990
	ld b,a			;6991
	and l			;6992
	and (hl)		;6993
	ld b,a			;6994
	call z,047cch		;6995
	cp (hl)			;6998
	cp (hl)			;6999
	rst 38h			;699a
	nop			;699b
	nop			;699c
	ld bc,00212h		;699d
	inc hl			;69a0
l69a1h:
	inc bc			;69a1
	inc (hl)		;69a2
	inc b			;69a3
	ld b,l			;69a4
	ld h,b			;69a5
	ld d,h			;69a6
	ld b,b			;69a7
	sub d			;69a8
	ld d,b			;69a9
	or e			;69aa
	inc b			;69ab
	ret nz			;69ac
	rst 38h			;69ad
	rst 38h			;69ae
	rst 38h			;69af
	inc bc			;69b0
	ld d,b			;69b1
	ld h,d			;69b2
	ld (bc),a		;69b3
	ld h,e			;69b4
	or d			;69b5
	ld b,a			;69b6
	rst 0			;69b7
	call 022ffh		;69b8
	ld (bc),a		;69bb
	djnz l69ceh		;69bc
	jr nc,l69e0h		;69be
	ld d,b			;69c0
	jr nc,l69c8h		;69c1
	ld b,b			;69c3
	scf			;69c4
	ld d,l			;69c5
	ld (hl),b		;69c6
	sub b			;69c7
l69c8h:
	ld d,(hl)		;69c8
	or (hl)			;69c9
	inc de			;69ca
	jp 001ffh		;69cb
l69ceh:
	ld bc,00101h		;69ce
	inc b			;69d1
	inc b			;69d2
	inc b			;69d3
	inc b			;69d4
	inc bc			;69d5
	inc bc			;69d6
	inc bc			;69d7
	inc bc			;69d8
	ld (bc),a		;69d9
	ld (bc),a		;69da
	ld (bc),a		;69db
	ld (bc),a		;69dc
	dec b			;69dd
	dec b			;69de
	dec b			;69df
l69e0h:
	dec b			;69e0
	rst 38h			;69e1
	nop			;69e2
	ret p			;69e3
	ld bc,07ee0h		;69e4
	rst 30h			;69e7
	ld a,(hl)		;69e8
	nop			;69e9
	ld (bc),a		;69ea
	ret p			;69eb
	inc b			;69ec
	ret po			;69ed
	ld a,(hl)		;69ee
	rst 30h			;69ef
	ld a,(hl)		;69f0
	nop			;69f1
	ld bc,007f0h		;69f2
	ret po			;69f5
	ld a,(hl)		;69f6
	rst 30h			;69f7
	ld a,(hl)		;69f8
	nop			;69f9
	inc bc			;69fa
	ret p			;69fb
	ld a,(bc)		;69fc
	ret po			;69fd
	ld a,(hl)		;69fe
	rst 30h			;69ff
	ld a,(hl)		;6a00
	nop			;6a01
	nop			;6a02
	ret p			;6a03
	dec c			;6a04
	inc c			;6a05
	ld a,a			;6a06
	ld (hl),07fh		;6a07
	nop			;6a09
	ld bc,013f0h		;6a0a
	inc c			;6a0d
	ld a,a			;6a0e
	ld (hl),07fh		;6a0f
	nop			;6a11
	nop			;6a12
	ret p			;6a13
	add hl,de		;6a14
	ld e,e			;6a15
	ld a,a			;6a16
	and (hl)		;6a17
	ld a,a			;6a18
	nop			;6a19
l6a1ah:
	nop			;6a1a
	ret p			;6a1b
	cp b			;6a1c
	rst 30h			;6a1d
	ld a,a			;6a1e
	djnz l69a1h		;6a1f
	nop			;6a21
l6a22h:
	nop			;6a22
	ret p			;6a23
	call z,08041h		;6a24
	ld b,(hl)		;6a27
	add a,b			;6a28
	nop			;6a29
	nop			;6a2a
	ret p			;6a2b
	sub h			;6a2c
	ld c,c			;6a2d
	add a,b			;6a2e
	adc a,c			;6a2f
	add a,b			;6a30
	nop			;6a31
	ld (bc),a		;6a32
	ret p			;6a33
	sbc a,l			;6a34
	ld c,c			;6a35
	add a,b			;6a36
	adc a,c			;6a37
	add a,b			;6a38
	nop			;6a39
	ld bc,0a6f0h		;6a3a
	ld c,c			;6a3d
	add a,b			;6a3e
	adc a,c			;6a3f
	add a,b			;6a40
	nop			;6a41
	ld bc,0a6f0h		;6a42
	ld c,c			;6a45
	add a,b			;6a46
	adc a,c			;6a47
	add a,b			;6a48
	nop			;6a49
	inc bc			;6a4a
	ret p			;6a4b
	xor a			;6a4c
	ld c,c			;6a4d
	add a,b			;6a4e
	adc a,c			;6a4f
	add a,b			;6a50
	nop			;6a51
	nop			;6a52
l6a53h:
	ret p			;6a53
	add a,b			;6a54
	out (080h),a		;6a55
	ret po			;6a57
	add a,b			;6a58
	nop			;6a59
	ld (bc),a		;6a5a
	ret p			;6a5b
	add a,e			;6a5c
	out (080h),a		;6a5d
	ret po			;6a5f
	add a,b			;6a60
	nop			;6a61
	nop			;6a62
	add a,b			;6a63
	cp (hl)			;6a64
	pop af			;6a65
	add a,b			;6a66
	ret m			;6a67
	add a,b			;6a68
	nop			;6a69
	ld bc,0c580h		;6a6a
	pop af			;6a6d
	add a,b			;6a6e
	ret m			;6a6f
	add a,b			;6a70
	nop			;6a71
	nop			;6a72
l6a73h:
	ld b,b			;6a73
	cp (hl)			;6a74
	rst 38h			;6a75
	add a,b			;6a76
	inc b			;6a77
	add a,c			;6a78
	nop			;6a79
	ld bc,0c540h		;6a7a
	rst 38h			;6a7d
	add a,b			;6a7e
	inc b			;6a7f
	add a,c			;6a80
	nop			;6a81
	nop			;6a82
l6a83h:
	jr nz,$-64		;6a83
	dec bc			;6a85
	add a,c			;6a86
	ld (de),a		;6a87
	add a,c			;6a88
	nop			;6a89
	ld bc,0c520h		;6a8a
	dec bc			;6a8d
	add a,c			;6a8e
	ld (de),a		;6a8f
	add a,c			;6a90
	nop			;6a91
	nop			;6a92
	djnz l6a53h		;6a93
	add hl,de		;6a95
	add a,c			;6a96
	jr nz,l6a1ah		;6a97
	nop			;6a99
	ld bc,0c510h		;6a9a
	add hl,de		;6a9d
	add a,c			;6a9e
	jr nz,l6a22h		;6a9f
	nop			;6aa1
	nop			;6aa2
	ret p			;6aa3
	adc a,048h		;6aa4
	ld b,b			;6aa6
	inc bc			;6aa7
	ld b,d			;6aa8
	nop			;6aa9
	nop			;6aaa
	ex af,af'		;6aab
	ld bc,0ba12h		;6aac
	jr z,$-68		;6aaf
	nop			;6ab1
	ld (bc),a		;6ab2
	ex af,af'		;6ab3
	inc b			;6ab4
	ld (de),a		;6ab5
	cp d			;6ab6
	jr z,l6a73h		;6ab7
	nop			;6ab9
	ld bc,00708h		;6aba
	ld (de),a		;6abd
	cp d			;6abe
	jr z,$-68		;6abf
	nop			;6ac1
	inc bc			;6ac2
	ex af,af'		;6ac3
	ld a,(bc)		;6ac4
	ld (de),a		;6ac5
	cp d			;6ac6
	jr z,l6a83h		;6ac7
	nop			;6ac9
	nop			;6aca
	ex af,af'		;6acb
	dec c			;6acc
	ld (047bah),a		;6acd
	cp d			;6ad0
	nop			;6ad1
	ld bc,01308h		;6ad2
	ld (047bah),a		;6ad5
	cp d			;6ad8
	nop			;6ad9
	nop			;6ada
	ex af,af'		;6adb
	dec h			;6adc
	ld d,d			;6add
	cp d			;6ade
	ld d,l			;6adf
	cp d			;6ae0
	nop			;6ae1
	nop			;6ae2
	ex af,af'		;6ae3
	ld l,b			;6ae4
	ld e,b			;6ae5
	cp d			;6ae6
	and l			;6ae7
	cp d			;6ae8
	nop			;6ae9
	ld (bc),a		;6aea
	ex af,af'		;6aeb
	ld (hl),d		;6aec
	ld e,b			;6aed
	cp d			;6aee
	and l			;6aef
	cp d			;6af0
	nop			;6af1
	nop			;6af2
	ex af,af'		;6af3
	xor h			;6af4
	call p,01abah		;6af5
	cp e			;6af8
	nop			;6af9
	nop			;6afa
	ex af,af'		;6afb
	cp h			;6afc
	ld e,l			;6afd
	cp e			;6afe
	ld l,c			;6aff
	cp e			;6b00
	nop			;6b01
	ld bc,0bf08h		;6b02
	ld e,l			;6b05
	cp e			;6b06
	ld l,c			;6b07
	cp e			;6b08
	nop			;6b09
	nop			;6b0a
	ex af,af'		;6b0b
	ld h,083h		;6b0c
	cp e			;6b0e
	or a			;6b0f
	cp e			;6b10
	nop			;6b11
	ld bc,02d08h		;6b12
	add a,e			;6b15
	cp e			;6b16
	or a			;6b17
	cp e			;6b18
	nop			;6b19
	ld (bc),a		;6b1a
	ex af,af'		;6b1b
	inc (hl)		;6b1c
	add a,e			;6b1d
	cp e			;6b1e
	or a			;6b1f
	cp e			;6b20
	nop			;6b21
	inc bc			;6b22
	ex af,af'		;6b23
	dec sp			;6b24
	add a,e			;6b25
	cp e			;6b26
	or a			;6b27
	cp e			;6b28
	nop			;6b29
	nop			;6b2a
	ex af,af'		;6b2b
	ld b,d			;6b2c
	ret pe			;6b2d
	cp e			;6b2e
	di			;6b2f
	cp e			;6b30
	nop			;6b31
	ld bc,04408h		;6b32
	ret pe			;6b35
	cp e			;6b36
	di			;6b37
	cp e			;6b38
	nop			;6b39
	nop			;6b3a
	ex af,af'		;6b3b
	ld a,h			;6b3c
	ld (bc),a		;6b3d
	cp h			;6b3e
	ld a,(000bch)		;6b3f
	ld bc,08408h		;6b42
	ld (bc),a		;6b45
	cp h			;6b46
	ld a,(000bch)		;6b47
	ld (bc),a		;6b4a
	ex af,af'		;6b4b
	adc a,h			;6b4c
	ld (bc),a		;6b4d
	cp h			;6b4e
	ld a,(000bch)		;6b4f
	inc bc			;6b52
	ex af,af'		;6b53
	sub h			;6b54
	ld (bc),a		;6b55
	cp h			;6b56
	ld a,(000bch)		;6b57
	nop			;6b5a
	ex af,af'		;6b5b
	sbc a,h			;6b5c
	ld a,c			;6b5d
	cp h			;6b5e
	xor a			;6b5f
	cp h			;6b60
	nop			;6b61
	ld (bc),a		;6b62
	ex af,af'		;6b63
	and h			;6b64
	ld a,c			;6b65
	cp h			;6b66
	xor a			;6b67
	cp h			;6b68
	nop			;6b69
	nop			;6b6a
	ex af,af'		;6b6b
	jp nz,0bcebh		;6b6c
	inc e			;6b6f
	cp l			;6b70
	nop			;6b71
	ld (bc),a		;6b72
	ex af,af'		;6b73
	ret z			;6b74
	ex de,hl		;6b75
	cp h			;6b76
	inc e			;6b77
	cp l			;6b78
	nop			;6b79
	nop			;6b7a
	ex af,af'		;6b7b
	ld h,b			;6b7c
	ld c,e			;6b7d
	cp l			;6b7e
	ld d,l			;6b7f
	cp l			;6b80
	nop			;6b81
	ld (bc),a		;6b82
	ex af,af'		;6b83
	ld h,d			;6b84
	ld c,e			;6b85
	cp l			;6b86
	ld d,l			;6b87
	cp l			;6b88
	nop			;6b89
	rst 38h			;6b8a
	inc bc			;6b8b
	ld h,b			;6b8c
	xor e			;6b8d
	inc bc			;6b8e
	xor h			;6b8f
	call 000ffh		;6b90
	nop			;6b93
	ld h,(hl)		;6b94
	ld d,010h		;6b95
	ld hl,03220h		;6b97
	ld sp,04243h		;6b9a
	ld d,h			;6b9d
	nop			;6b9e
	sub b			;6b9f
	ld b,b			;6ba0
	or b			;6ba1
	ld h,b			;6ba2
	ret nz			;6ba3
	rst 38h			;6ba4
	rst 38h			;6ba5
	rst 38h			;6ba6
	ld (bc),a		;6ba7
	ld h,b			;6ba8
	xor e			;6ba9
	ld b,a			;6baa
	xor h			;6bab
	call 003ffh		;6bac
	nop			;6baf
	jr nc,$+20		;6bb0
	ld d,c			;6bb2
	inc h			;6bb3
	ld (hl),e		;6bb4
	ld (hl),024h		;6bb5
	ld b,b			;6bb7
	ld b,l			;6bb8
	ld d,b			;6bb9
	nop			;6bba
	sub b			;6bbb
	ld d,(hl)		;6bbc
	or (hl)			;6bbd
	inc de			;6bbe
	jp 001ffh		;6bbf
	ld bc,00101h		;6bc2
	inc bc			;6bc5
	inc bc			;6bc6
	ld (bc),a		;6bc7
	ld (bc),a		;6bc8
	ld bc,00101h		;6bc9
	inc b			;6bcc
	ld bc,00401h		;6bcd
	inc b			;6bd0
	ld bc,00404h		;6bd1
	dec b			;6bd4
	inc b			;6bd5
	inc b			;6bd6
	dec b			;6bd7
	ld b,001h		;6bd8
	ld bc,00101h		;6bda
	rst 38h			;6bdd
	nop			;6bde
	ret po			;6bdf
	ld bc,08127h		;6be0
	ld d,d			;6be3
	add a,c			;6be4
	nop			;6be5
	nop			;6be6
	ret po			;6be7
	cp (hl)			;6be8
	add a,h			;6be9
	add a,c			;6bea
	and (hl)		;6beb
	add a,c			;6bec
	nop			;6bed
	ld (bc),a		;6bee
	ret po			;6bef
	jp nz,08184h		;6bf0
	and (hl)		;6bf3
	add a,c			;6bf4
	nop			;6bf5
	ld bc,0c6e0h		;6bf6
l6bf9h:
	add a,h			;6bf9
	add a,c			;6bfa
	and (hl)		;6bfb
	add a,c			;6bfc
	nop			;6bfd
	inc bc			;6bfe
	ret po			;6bff
	jp z,08184h		;6c00
	and (hl)		;6c03
	add a,c			;6c04
	nop			;6c05
	nop			;6c06
	ret po			;6c07
	ex af,af'		;6c08
	ret z			;6c09
	add a,c			;6c0a
	and b			;6c0b
	add a,d			;6c0c
	nop			;6c0d
	ld (bc),a		;6c0e
	ret po			;6c0f
	inc h			;6c10
	ret z			;6c11
	add a,c			;6c12
	and b			;6c13
l6c14h:
	add a,d			;6c14
	nop			;6c15
	nop			;6c16
	ret po			;6c17
	ld b,b			;6c18
	inc h			;6c19
	add a,e			;6c1a
	sub c			;6c1b
	add a,l			;6c1c
	nop			;6c1d
	nop			;6c1e
	ret po			;6c1f
	sbc a,h			;6c20
	add a,d			;6c21
	add a,a			;6c22
	nop			;6c23
	adc a,b			;6c24
	nop			;6c25
	ld (bc),a		;6c26
	ret po			;6c27
	xor l			;6c28
	add a,d			;6c29
	add a,a			;6c2a
	nop			;6c2b
	adc a,b			;6c2c
	nop			;6c2d
	nop			;6c2e
	ld b,b			;6c2f
	dec b			;6c30
	ld b,(hl)		;6c31
	adc a,b			;6c32
	ld h,b			;6c33
	adc a,b			;6c34
	nop			;6c35
	ld (bc),a		;6c36
	ld b,b			;6c37
	inc de			;6c38
	ld b,(hl)		;6c39
	adc a,b			;6c3a
	ld h,b			;6c3b
	adc a,b			;6c3c
	nop			;6c3d
	nop			;6c3e
	ld b,b			;6c3f
	inc c			;6c40
	halt			;6c41
	adc a,b			;6c42
	add a,b			;6c43
	adc a,b			;6c44
	nop			;6c45
	nop			;6c46
	ld b,b			;6c47
	dec de			;6c48
	adc a,d			;6c49
	adc a,b			;6c4a
	sub h			;6c4b
	adc a,b			;6c4c
	nop			;6c4d
	nop			;6c4e
	ld b,b			;6c4f
	ld (0889eh),hl		;6c50
	xor b			;6c53
	adc a,b			;6c54
	nop			;6c55
	ld (bc),a		;6c56
	ld b,b			;6c57
	scf			;6c58
	sbc a,(hl)		;6c59
	adc a,b			;6c5a
	xor b			;6c5b
	adc a,b			;6c5c
	nop			;6c5d
	nop			;6c5e
	ld b,b			;6c5f
	jr z,l6c14h		;6c60
	adc a,b			;6c62
	call nc,00088h		;6c63
	nop			;6c66
	ld b,b			;6c67
	cpl			;6c68
	or 088h			;6c69
	rst 38h			;6c6b
	adc a,b			;6c6c
	nop			;6c6d
	ld (bc),a		;6c6e
	ld b,b			;6c6f
	ld a,0f6h		;6c70
	adc a,b			;6c72
	rst 38h			;6c73
	adc a,b			;6c74
	nop			;6c75
	nop			;6c76
	ld b,b			;6c77
	jr nc,l6c83h		;6c78
	adc a,c			;6c7a
	inc de			;6c7b
	adc a,c			;6c7c
	nop			;6c7d
	ld (bc),a		;6c7e
	ld b,b			;6c7f
	ld sp,08909h		;6c80
l6c83h:
	inc de			;6c83
	adc a,c			;6c84
	nop			;6c85
	nop			;6c86
	ld b,b			;6c87
	ld b,b			;6c88
	dec e			;6c89
	adc a,c			;6c8a
	ld c,h			;6c8b
	adc a,c			;6c8c
	nop			;6c8d
	ld (bc),a		;6c8e
	ld b,b			;6c8f
	ld b,(hl)		;6c90
	dec e			;6c91
	adc a,c			;6c92
	ld c,h			;6c93
	adc a,c			;6c94
	nop			;6c95
	nop			;6c96
	ld b,b			;6c97
	ld c,l			;6c98
	ld a,d			;6c99
	adc a,c			;6c9a
	add a,h			;6c9b
	adc a,c			;6c9c
	nop			;6c9d
	ld (bc),a		;6c9e
	ld b,b			;6c9f
	ld l,a			;6ca0
	ld a,d			;6ca1
	adc a,c			;6ca2
	add a,h			;6ca3
	adc a,c			;6ca4
	nop			;6ca5
	nop			;6ca6
	ld b,b			;6ca7
	ld d,h			;6ca8
	adc a,(hl)		;6ca9
	adc a,c			;6caa
	sbc a,l			;6cab
	adc a,c			;6cac
	nop			;6cad
	ld (bc),a		;6cae
	ld b,b			;6caf
	ld l,h			;6cb0
	adc a,(hl)		;6cb1
	adc a,c			;6cb2
	sbc a,l			;6cb3
	adc a,c			;6cb4
	nop			;6cb5
	nop			;6cb6
	ld b,b			;6cb7
	ld e,a			;6cb8
	xor l			;6cb9
	adc a,c			;6cba
	rst 0			;6cbb
	adc a,c			;6cbc
	nop			;6cbd
	nop			;6cbe
	ld b,b			;6cbf
	sbc a,a			;6cc0
	defb 0ddh,089h,0e7h ;illegal sequence	;6cc1
	adc a,c			;6cc4
	nop			;6cc5
	nop			;6cc6
	ld b,b			;6cc7
	and e			;6cc8
	rst 28h			;6cc9
	adc a,c			;6cca
	daa			;6ccb
	adc a,d			;6ccc
	nop			;6ccd
	nop			;6cce
	ld b,b			;6ccf
	xor h			;6cd0
	ld e,a			;6cd1
	adc a,d			;6cd2
	ld a,c			;6cd3
	adc a,d			;6cd4
	nop			;6cd5
	nop			;6cd6
	ld b,b			;6cd7
	or b			;6cd8
	sub e			;6cd9
	adc a,d			;6cda
	sbc a,l			;6cdb
	adc a,d			;6cdc
	nop			;6cdd
	nop			;6cde
	ld b,b			;6cdf
	or h			;6ce0
	and a			;6ce1
	adc a,d			;6ce2
	in a,(08ah)		;6ce3
	nop			;6ce5
	nop			;6ce6
	ld b,b			;6ce7
	cp l			;6ce8
	add hl,bc		;6ce9
	adc a,e			;6cea
	inc de			;6ceb
	adc a,e			;6cec
	nop			;6ced
	nop			;6cee
	ld b,b			;6cef
	sbc a,h			;6cf0
	dec e			;6cf1
	adc a,e			;6cf2
	add hl,hl		;6cf3
	adc a,e			;6cf4
	nop			;6cf5
	ld bc,00520h		;6cf6
	ld b,(hl)		;6cf9
	adc a,b			;6cfa
	ld h,b			;6cfb
	adc a,b			;6cfc
	nop			;6cfd
	inc bc			;6cfe
	jr nz,l6d14h		;6cff
	ld b,(hl)		;6d01
	adc a,b			;6d02
	ld h,b			;6d03
	adc a,b			;6d04
	nop			;6d05
	ld bc,00c20h		;6d06
	halt			;6d09
	adc a,b			;6d0a
	add a,b			;6d0b
	adc a,b			;6d0c
	nop			;6d0d
	ld bc,01b20h		;6d0e
	adc a,d			;6d11
	adc a,b			;6d12
	sub h			;6d13
l6d14h:
	adc a,b			;6d14
	nop			;6d15
	ld bc,02220h		;6d16
	sbc a,(hl)		;6d19
	adc a,b			;6d1a
	xor b			;6d1b
	adc a,b			;6d1c
	nop			;6d1d
	inc bc			;6d1e
	jr nz,$+57		;6d1f
	sbc a,(hl)		;6d21
	adc a,b			;6d22
	xor b			;6d23
	adc a,b			;6d24
	nop			;6d25
	ld bc,02820h		;6d26
	or d			;6d29
	adc a,b			;6d2a
	call nc,00088h		;6d2b
	ld bc,02f20h		;6d2e
	or 088h			;6d31
	rst 38h			;6d33
	adc a,b			;6d34
	nop			;6d35
	inc bc			;6d36
	jr nz,l6d77h		;6d37
	or 088h			;6d39
	rst 38h			;6d3b
	adc a,b			;6d3c
	nop			;6d3d
	ld bc,03020h		;6d3e
	add hl,bc		;6d41
	adc a,c			;6d42
	inc de			;6d43
	adc a,c			;6d44
	nop			;6d45
	inc bc			;6d46
	jr nz,l6d7ah		;6d47
	add hl,bc		;6d49
	adc a,c			;6d4a
	inc de			;6d4b
	adc a,c			;6d4c
	nop			;6d4d
	ld bc,04020h		;6d4e
	dec e			;6d51
	adc a,c			;6d52
	ld c,h			;6d53
	adc a,c			;6d54
	nop			;6d55
	inc bc			;6d56
	jr nz,$+72		;6d57
	dec e			;6d59
	adc a,c			;6d5a
	ld c,h			;6d5b
	adc a,c			;6d5c
	nop			;6d5d
	ld bc,04d20h		;6d5e
	ld a,d			;6d61
	adc a,c			;6d62
	add a,h			;6d63
	adc a,c			;6d64
	nop			;6d65
	inc bc			;6d66
	jr nz,l6dd8h		;6d67
	ld a,d			;6d69
	adc a,c			;6d6a
	add a,h			;6d6b
	adc a,c			;6d6c
	nop			;6d6d
	ld bc,05420h		;6d6e
	adc a,(hl)		;6d71
	adc a,c			;6d72
	sbc a,l			;6d73
	adc a,c			;6d74
	nop			;6d75
	inc bc			;6d76
l6d77h:
	jr nz,l6de5h		;6d77
	adc a,(hl)		;6d79
l6d7ah:
	adc a,c			;6d7a
	sbc a,l			;6d7b
	adc a,c			;6d7c
	nop			;6d7d
	ld bc,05f20h		;6d7e
	xor l			;6d81
	adc a,c			;6d82
	rst 0			;6d83
	adc a,c			;6d84
	nop			;6d85
	ld bc,09f20h		;6d86
	defb 0ddh,089h,0e7h ;illegal sequence	;6d89
	adc a,c			;6d8c
	nop			;6d8d
	ld bc,0a320h		;6d8e
	rst 28h			;6d91
	adc a,c			;6d92
	daa			;6d93
	adc a,d			;6d94
	nop			;6d95
	ld bc,0ac20h		;6d96
	ld e,a			;6d99
	adc a,d			;6d9a
	ld a,c			;6d9b
	adc a,d			;6d9c
	nop			;6d9d
	ld bc,0b020h		;6d9e
	sub e			;6da1
	adc a,d			;6da2
	sbc a,l			;6da3
	adc a,d			;6da4
	nop			;6da5
	ld bc,0b420h		;6da6
	and a			;6da9
	adc a,d			;6daa
	in a,(08ah)		;6dab
	nop			;6dad
	ld bc,0bd20h		;6dae
	add hl,bc		;6db1
	adc a,e			;6db2
	inc de			;6db3
	adc a,e			;6db4
	nop			;6db5
	ld bc,09c20h		;6db6
	dec e			;6db9
	adc a,e			;6dba
	add hl,hl		;6dbb
	adc a,e			;6dbc
	nop			;6dbd
	nop			;6dbe
	djnz $-71		;6dbf
	ccf			;6dc1
	adc a,e			;6dc2
	rst 8			;6dc3
	adc a,e			;6dc4
	inc b			;6dc5
	nop			;6dc6
	ex af,af'		;6dc7
	ld bc,08c2dh		;6dc8
	ld e,h			;6dcb
	adc a,h			;6dcc
	inc b			;6dcd
	nop			;6dce
	ex af,af'		;6dcf
	ld a,(bc)		;6dd0
	and d			;6dd1
	adc a,h			;6dd2
	ld c,(hl)		;6dd3
	adc a,l			;6dd4
	inc b			;6dd5
	ld (bc),a		;6dd6
	ex af,af'		;6dd7
l6dd8h:
	inc h			;6dd8
	and d			;6dd9
	adc a,h			;6dda
	ld c,(hl)		;6ddb
	adc a,l			;6ddc
	inc b			;6ddd
	nop			;6dde
	inc c			;6ddf
	sub a			;6de0
	ld (bc),a		;6de1
	adc a,(hl)		;6de2
	ld sp,hl		;6de3
	adc a,(hl)		;6de4
l6de5h:
	inc b			;6de5
	nop			;6de6
	ex af,af'		;6de7
	or a			;6de8
	ret m			;6de9
	adc a,a			;6dea
	dec h			;6deb
	sub b			;6dec
	inc b			;6ded
	ld (bc),a		;6dee
	ex af,af'		;6def
	cp (hl)			;6df0
	ret m			;6df1
	adc a,a			;6df2
	dec h			;6df3
	sub b			;6df4
	inc b			;6df5
	nop			;6df6
	ex af,af'		;6df7
	push bc			;6df8
	ld b,e			;6df9
	sub b			;6dfa
l6dfbh:
	adc a,c			;6dfb
	sub b			;6dfc
	inc b			;6dfd
	nop			;6dfe
	inc b			;6dff
	ld bc,090aeh		;6e00
	pop bc			;6e03
	sub c			;6e04
	inc b			;6e05
	ld (bc),a		;6e06
	inc b			;6e07
	ld hl,(090aeh)		;6e08
	pop bc			;6e0b
	sub c			;6e0c
	inc b			;6e0d
	nop			;6e0e
	inc b			;6e0f
	ld d,e			;6e10
	ld a,e			;6e11
	sub d			;6e12
	defb 0fdh,093h,004h ;illegal sequence	;6e13
	nop			;6e16
	inc b			;6e17
	or a			;6e18
	ld b,b			;6e19
	sub l			;6e1a
	ld d,d			;6e1b
	sub l			;6e1c
	inc b			;6e1d
	rst 38h			;6e1e
	ld b,a			;6e1f
	ld bc,04704h		;6e20
	cp (hl)			;6e23
	call 00503h		;6e24
	ld (hl),b		;6e27
	rst 38h			;6e28
	nop			;6e29
	nop			;6e2a
	dec d			;6e2b
	ld (de),a		;6e2c
	ld (hl),024h		;6e2d
	ld d,a			;6e2f
	ld (hl),002h		;6e30
	ld b,b			;6e32
	inc de			;6e33
	ld d,b			;6e34
	inc b			;6e35
	sub c			;6e36
	ld (hl),b		;6e37
	or c			;6e38
	jr nc,l6dfbh		;6e39
	rst 38h			;6e3b
	rst 38h			;6e3c
	rst 38h			;6e3d
	inc bc			;6e3e
	ld bc,047b6h		;6e3f
	call z,0ffcdh		;6e42
	rst 38h			;6e45
	rst 38h			;6e46
	rst 38h			;6e47
	ld b,a			;6e48
	ld bc,04704h		;6e49
	cp (hl)			;6e4c
	call 00503h		;6e4d
	ld (hl),b		;6e50
	ld (bc),a		;6e51
	jr z,l6e7fh		;6e52
	ld (bc),a		;6e54
	ld b,b			;6e55
	ld c,e			;6e56
	ld b,a			;6e57
	and e			;6e58
	xor c			;6e59
	inc bc			;6e5a
	xor h			;6e5b
	xor (hl)		;6e5c
	inc bc			;6e5d
	and b			;6e5e
	and b			;6e5f
	ld b,a			;6e60
	cp l			;6e61
	cp l			;6e62
	rst 38h			;6e63
	jr nc,l6e66h		;6e64
l6e66h:
	ld b,b			;6e66
	djnz l6eb9h		;6e67
	jr nz,l6e7dh		;6e69
	ld (04424h),a		;6e6b
	inc (hl)		;6e6e
	ld d,(hl)		;6e6f
	ld h,h			;6e70
	sub a			;6e71
	ld b,a			;6e72
	or (hl)			;6e73
	ld h,0c3h		;6e74
	rst 38h			;6e76
	ld bc,00302h		;6e77
	inc b			;6e7a
	inc b			;6e7b
	dec b			;6e7c
l6e7dh:
	ld b,006h		;6e7d
l6e7fh:
	rlca			;6e7f
	rlca			;6e80
	rlca			;6e81
	rlca			;6e82
	rst 38h			;6e83
	nop			;6e84
	ret po			;6e85
	ld bc,08b35h		;6e86
	sub l			;6e89
	adc a,e			;6e8a
	nop			;6e8b
	ld bc,00d80h		;6e8c
	di			;6e8f
	adc a,e			;6e90
	sub (hl)		;6e91
	adc a,h			;6e92
	nop			;6e93
	nop			;6e94
	ld (hl),b		;6e95
	dec c			;6e96
	di			;6e97
	adc a,e			;6e98
	sub (hl)		;6e99
	adc a,h			;6e9a
	nop			;6e9b
	ld bc,02480h		;6e9c
	ld a,(0808dh)		;6e9f
	adc a,l			;6ea2
	nop			;6ea3
	inc bc			;6ea4
	add a,b			;6ea5
	ld l,03ah		;6ea6
	adc a,l			;6ea8
	add a,b			;6ea9
	adc a,l			;6eaa
	nop			;6eab
	nop			;6eac
	ld h,b			;6ead
	inc h			;6eae
	ld a,(0808dh)		;6eaf
	adc a,l			;6eb2
	nop			;6eb3
	ld (bc),a		;6eb4
	ld h,b			;6eb5
	ld l,03ah		;6eb6
	adc a,l			;6eb8
l6eb9h:
	add a,b			;6eb9
	adc a,l			;6eba
	nop			;6ebb
	ld bc,04480h		;6ebc
	push bc			;6ebf
	adc a,l			;6ec0
	rst 20h			;6ec1
	adc a,l			;6ec2
	nop			;6ec3
	nop			;6ec4
	ld h,h			;6ec5
	jp z,08dc5h		;6ec6
	rst 20h			;6ec9
	adc a,l			;6eca
	nop			;6ecb
	nop			;6ecc
	call m,00858h		;6ecd
	adc a,(hl)		;6ed0
	ld (hl),08eh		;6ed1
	nop			;6ed3
	ld (bc),a		;6ed4
	call m,0085eh		;6ed5
	adc a,(hl)		;6ed8
	ld (hl),08eh		;6ed9
	nop			;6edb
	ld bc,064fch		;6edc
	ex af,af'		;6edf
	adc a,(hl)		;6ee0
	ld (hl),08eh		;6ee1
	nop			;6ee3
l6ee4h:
	inc bc			;6ee4
	call m,0086ah		;6ee5
	adc a,(hl)		;6ee8
	ld (hl),08eh		;6ee9
	nop			;6eeb
	nop			;6eec
	call m,05970h		;6eed
	adc a,(hl)		;6ef0
	xor 08eh		;6ef1
	nop			;6ef3
	nop			;6ef4
	sub b			;6ef5
l6ef6h:
	sub b			;6ef6
	ld d,c			;6ef7
	adc a,a			;6ef8
	xor a			;6ef9
	adc a,a			;6efa
	nop			;6efb
	nop			;6efc
	add a,b			;6efd
l6efeh:
	cp h			;6efe
	ret m			;6eff
	adc a,a			;6f00
	dec d			;6f01
	sub b			;6f02
	nop			;6f03
	ld bc,03890h		;6f04
	daa			;6f07
	sub b			;6f08
	ld a,l			;6f09
	sub b			;6f0a
	nop			;6f0b
	nop			;6f0c
	jr nz,l6f47h		;6f0d
	daa			;6f0f
	sub b			;6f10
	ld a,l			;6f11
	sub b			;6f12
	nop			;6f13
	nop			;6f14
	ld b,b			;6f15
	jr c,l6ef6h		;6f16
	sub b			;6f18
	ld e,d			;6f19
	sub c			;6f1a
	nop			;6f1b
	ld (bc),a		;6f1c
	ld b,b			;6f1d
	ld c,b			;6f1e
	sbc a,090h		;6f1f
	ld e,d			;6f21
l6f22h:
	sub c			;6f22
	nop			;6f23
	nop			;6f24
	ret c			;6f25
	add a,e			;6f26
	jp nz,01c91h		;6f27
	sub d			;6f2a
	nop			;6f2b
	nop			;6f2c
	ld b,b			;6f2d
	adc a,(hl)		;6f2e
	ld l,e			;6f2f
	sub d			;6f30
	rlca			;6f31
	sub e			;6f32
	nop			;6f33
	ld (bc),a		;6f34
	ld b,b			;6f35
	and d			;6f36
	ld l,e			;6f37
	sub d			;6f38
	rlca			;6f39
	sub e			;6f3a
	nop			;6f3b
	nop			;6f3c
	ld b,b			;6f3d
	cp d			;6f3e
	ld c,(hl)		;6f3f
	sub e			;6f40
	sub l			;6f41
	sub e			;6f42
	nop			;6f43
	nop			;6f44
	ld h,b			;6f45
	or (hl)			;6f46
l6f47h:
	ret c			;6f47
	sub e			;6f48
	rst 30h			;6f49
l6f4ah:
	sub e			;6f4a
	nop			;6f4b
	nop			;6f4c
	inc h			;6f4d
	ld b,a			;6f4e
	ld d,094h		;6f4f
	ld (hl),a		;6f51
	sub h			;6f52
	nop			;6f53
	nop			;6f54
l6f55h:
	inc h			;6f55
	sub b			;6f56
	call z,0fa94h		;6f57
	sub h			;6f5a
	nop			;6f5b
	ld bc,05680h		;6f5c
	jr z,l6ef6h		;6f5f
	ld a,(00095h)		;6f61
	nop			;6f64
	jr nz,l6fbdh		;6f65
	jr z,l6efeh		;6f67
	ld a,(00095h)		;6f69
	ld bc,0a080h		;6f6c
	ld c,h			;6f6f
	sub l			;6f70
	adc a,e			;6f71
	sub l			;6f72
	nop			;6f73
	nop			;6f74
	jr nz,$-94		;6f75
	ld c,h			;6f77
	sub l			;6f78
	adc a,e			;6f79
	sub l			;6f7a
	nop			;6f7b
	ld bc,0c380h		;6f7c
	cp c			;6f7f
	sub l			;6f80
	di			;6f81
	sub l			;6f82
	nop			;6f83
	nop			;6f84
	jr nz,l6f4ah		;6f85
	cp c			;6f87
	sub l			;6f88
	di			;6f89
	sub l			;6f8a
	nop			;6f8b
	nop			;6f8c
	djnz l6f94h		;6f8d
	daa			;6f8f
	sub (hl)		;6f90
	ld h,c			;6f91
	sub (hl)		;6f92
	nop			;6f93
l6f94h:
	ld (bc),a		;6f94
	djnz l6fa3h		;6f95
	daa			;6f97
	sub (hl)		;6f98
	ld h,c			;6f99
	sub (hl)		;6f9a
	nop			;6f9b
	nop			;6f9c
	djnz l6f22h		;6f9d
	sub b			;6f9f
	sub (hl)		;6fa0
	cp l			;6fa1
	sub (hl)		;6fa2
l6fa3h:
	nop			;6fa3
	nop			;6fa4
	djnz l6f47h		;6fa5
	jp z,0f896h		;6fa7
	sub (hl)		;6faa
	nop			;6fab
	ld (bc),a		;6fac
	djnz l6f55h		;6fad
	jp z,0f896h		;6faf
	sub (hl)		;6fb2
	nop			;6fb3
	nop			;6fb4
	ex af,af'		;6fb5
	ld bc,09716h		;6fb6
	ld l,d			;6fb9
	sbc a,b			;6fba
	nop			;6fbb
	ld (bc),a		;6fbc
l6fbdh:
	ex af,af'		;6fbd
	inc l			;6fbe
	ld d,097h		;6fbf
	ld l,d			;6fc1
	sbc a,b			;6fc2
	nop			;6fc3
	nop			;6fc4
	ex af,af'		;6fc5
	sbc a,a			;6fc6
	ld l,b			;6fc7
	sbc a,c			;6fc8
	cp e			;6fc9
	sbc a,c			;6fca
	nop			;6fcb
	nop			;6fcc
	ex af,af'		;6fcd
	xor h			;6fce
	rst 20h			;6fcf
	sbc a,c			;6fd0
	add hl,hl		;6fd1
	sbc a,d			;6fd2
	nop			;6fd3
	ld (bc),a		;6fd4
	ex af,af'		;6fd5
	or h			;6fd6
	rst 20h			;6fd7
	sbc a,c			;6fd8
	add hl,hl		;6fd9
	sbc a,d			;6fda
	nop			;6fdb
	nop			;6fdc
	ex af,af'		;6fdd
	cp h			;6fde
	ld e,h			;6fdf
	sbc a,d			;6fe0
	call po,0009ah		;6fe1
	nop			;6fe4
	inc b			;6fe5
	ld bc,09b5dh		;6fe6
	ld (hl),l		;6fe9
	sbc a,h			;6fea
	nop			;6feb
	ld (bc),a		;6fec
	inc b			;6fed
	inc h			;6fee
	ld e,l			;6fef
	sbc a,e			;6ff0
	ld (hl),l		;6ff1
	sbc a,h			;6ff2
	nop			;6ff3
	nop			;6ff4
	inc b			;6ff5
	sbc a,c			;6ff6
	ld (de),a		;6ff7
	sbc a,l			;6ff8
	ld l,09dh		;6ff9
	nop			;6ffb
	nop			;6ffc
	inc b			;6ffd
	xor l			;6ffe
	ld h,a			;6fff
	sbc a,l			;7000
	ld b,a			;7001
	sbc a,(hl)		;7002
	nop			;7003
	nop			;7004
	ld (bc),a		;7005
	ld bc,09cedh		;7006
	ld (hl),c		;7009
	sbc a,l			;700a
	inc b			;700b
	nop			;700c
	ld (bc),a		;700d
	ld a,(de)		;700e
	sbc a,e			;700f
	sbc a,l			;7010
	ld (hl),d		;7011
	sbc a,a			;7012
	inc b			;7013
	nop			;7014
	ld (bc),a		;7015
	ld d,a			;7016
	ld e,c			;7017
	and b			;7018
	and l			;7019
	and b			;701a
	inc b			;701b
l701ch:
	nop			;701c
	ld (bc),a		;701d
	sra b			;701e
	ld a,c			;7020
	inc sp			;7021
	ld a,c			;7022
	inc b			;7023
	nop			;7024
	ld (bc),a		;7025
	srl a			;7026
	ld b,b			;7028
	inc a			;7029
	ld b,b			;702a
	nop			;702b
	cp 000h			;702c
	nop			;702e
	nop			;702f
	nop			;7030
	nop			;7031
	nop			;7032
	nop			;7033
	nop			;7034
	nop			;7035
	nop			;7036
	nop			;7037
	nop			;7038
	dec b			;7039
	ld b,007h		;703a
	ex af,af'		;703c
	rst 38h			;703d
	nop			;703e
	ex af,af'		;703f
	ld bc,l6ee4h		;7040
	dec a			;7043
	ld l,a			;7044
	inc b			;7045
	nop			;7046
	ex af,af'		;7047
	jr nz,l70c0h		;7048
	ld l,a			;704a
	or 06fh			;704b
	inc b			;704d
	nop			;704e
	inc b			;704f
	ld bc,l7070h		;7050
	ret			;7053
	ld (hl),b		;7054
	inc b			;7055
	nop			;7056
	inc b			;7057
	ld c,002h		;7058
	ld (hl),c		;705a
	rra			;705b
	ld (hl),c		;705c
	inc b			;705d
	nop			;705e
	inc b			;705f
	inc de			;7060
	ld (hl),071h		;7061
	ld (hl),a		;7063
	ld (hl),c		;7064
	inc b			;7065
	nop			;7066
	inc b			;7067
	jr nz,l701ch		;7068
	ld (hl),c		;706a
	ld e,h			;706b
	ld (hl),h		;706c
	inc b			;706d
	nop			;706e
	inc b			;706f
l7070h:
	add a,h			;7070
	xor l			;7071
	halt			;7072
	rst 20h			;7073
	halt			;7074
	inc b			;7075
	nop			;7076
	inc b			;7077
	adc a,e			;7078
	ld a,(de)		;7079
	ld (hl),a		;707a
	ld c,a			;707b
	ld (hl),a		;707c
	inc b			;707d
	nop			;707e
	inc b			;707f
	sub d			;7080
	add a,e			;7081
	ld (hl),a		;7082
	xor a			;7083
	ld (hl),a		;7084
	inc b			;7085
	nop			;7086
	inc b			;7087
	sbc a,d			;7088
	jp nc,00c77h		;7089
	ld a,b			;708c
	inc b			;708d
	nop			;708e
	ld b,0a5h		;708f
	ld b,(hl)		;7091
	ld a,b			;7092
	ld l,(hl)		;7093
	ld a,b			;7094
	inc b			;7095
	nop			;7096
	inc b			;7097
	xor (hl)		;7098
	add a,l			;7099
	ld a,b			;709a
	jp nz,00478h		;709b
	nop			;709e
	ld b,0c8h		;709f
	ld e,079h		;70a1
	dec h			;70a3
	ld a,c			;70a4
	inc b			;70a5
	nop			;70a6
	inc b			;70a7
	sra b			;70a8
	ld a,c			;70aa
	inc sp			;70ab
	ld a,c			;70ac
	inc b			;70ad
	ld bc,0cb02h		;70ae
	jr z,l712ch		;70b1
	inc sp			;70b3
	ld a,c			;70b4
	inc b			;70b5
	ld bc,00102h		;70b6
	ld (hl),b		;70b9
	ld (hl),b		;70ba
	ret			;70bb
	ld (hl),b		;70bc
	inc b			;70bd
	nop			;70be
	ld (bc),a		;70bf
l70c0h:
	ld c,03ah		;70c0
	ld a,c			;70c2
	ld d,l			;70c3
	ld a,c			;70c4
	inc b			;70c5
	ld bc,01302h		;70c6
	ld (hl),071h		;70c9
	ld (hl),a		;70cb
	ld (hl),c		;70cc
	inc b			;70cd
	ld bc,02002h		;70ce
	or d			;70d1
	ld (hl),c		;70d2
	ld e,h			;70d3
	ld (hl),h		;70d4
	inc b			;70d5
	nop			;70d6
	ld (bc),a		;70d7
	add a,h			;70d8
	ld l,d			;70d9
	ld a,c			;70da
	and h			;70db
	ld a,c			;70dc
	inc b			;70dd
	ld bc,08b02h		;70de
	ld a,(de)		;70e1
	ld (hl),a		;70e2
	ld c,a			;70e3
	ld (hl),a		;70e4
	inc b			;70e5
	nop			;70e6
	ld (bc),a		;70e7
	sub d			;70e8
	call 00379h		;70e9
	ld a,d			;70ec
	inc b			;70ed
	ld bc,09a02h		;70ee
	jp nc,00c77h		;70f1
	ld a,b			;70f4
	inc b			;70f5
	nop			;70f6
	ld (bc),a		;70f7
	xor (hl)		;70f8
	ld l,07ah		;70f9
	ld l,b			;70fb
	ld a,d			;70fc
	inc b			;70fd
	ld bc,00101h		;70fe
	call po,03d6eh		;7101
	ld l,a			;7104
	inc b			;7105
	ld bc,02001h		;7106
	halt			;7109
	ld l,a			;710a
	or 06fh			;710b
	inc b			;710d
	nop			;710e
	inc b			;710f
	ret nz			;7110
	pop bc			;7111
	ld a,d			;7112
	jp nc,0047ah		;7113
	ld bc,0c002h		;7116
	pop bc			;7119
	ld a,d			;711a
	jp nc,0047ah		;711b
	nop			;711e
	inc b			;711f
	jp nz,07addh		;7120
	or 07ah			;7123
	inc b			;7125
	ld (bc),a		;7126
	inc b			;7127
	push bc			;7128
	defb 0ddh,07ah,0f6h ;illegal sequence	;7129
l712ch:
	ld a,d			;712c
	inc b			;712d
	ld bc,0c202h		;712e
	defb 0ddh,07ah,0f6h ;illegal sequence	;7131
	ld a,d			;7134
	inc b			;7135
	inc bc			;7136
	ld (bc),a		;7137
	push bc			;7138
	defb 0ddh,07ah,0f6h ;illegal sequence	;7139
	ld a,d			;713c
	inc b			;713d
	rst 38h			;713e
	inc bc			;713f
	ld bc,00257h		;7140
	jp 047c5h		;7143
	add a,0c9h		;7146
	inc bc			;7148
	jp z,0ffcdh		;7149
	rst 38h			;714c
	rst 38h			;714d
	rst 38h			;714e
	ld (bc),a		;714f
	ld bc,00257h		;7150
	xor h			;7153
	call 000ffh		;7154
	nop			;7157
	inc bc			;7158
	djnz l716fh		;7159
	ld hl,03225h		;715b
	ld (hl),043h		;715e
	ld b,a			;7160
	ld d,l			;7161
	ld (05692h),hl		;7162
	or (hl)			;7165
	inc d			;7166
	call nz,0ffffh		;7167
	rst 38h			;716a
	inc bc			;716b
	ld a,(de)		;716c
	ld d,(hl)		;716d
	inc bc			;716e
l716fh:
	set 1,l			;716f
	rst 38h			;7171
	rst 38h			;7172
	rst 38h			;7173
	rst 38h			;7174
	inc bc			;7175
	jr nz,l71f7h		;7176
	ld (bc),a		;7178
	add a,b			;7179
	cp a			;717a
	ld b,a			;717b
	ret nz			;717c
	rst 0			;717d
	ld b,a			;717e
	set 1,l			;717f
	rst 38h			;7181
	ld bc,00201h		;7182
	ld (de),a		;7185
	inc bc			;7186
	inc hl			;7187
	jr nz,$+51		;7188
	jr nc,l71ceh		;718a
	ld b,b			;718c
	ld d,e			;718d
	ld d,b			;718e
	sub h			;718f
	jr nc,$-78		;7190
	ld d,b			;7192
	ret nz			;7193
	rst 38h			;7194
	ld bc,00302h		;7195
	rlca			;7198
	ld bc,00302h		;7199
	rlca			;719c
	ld bc,00302h		;719d
	rlca			;71a0
	ld bc,00302h		;71a1
	rlca			;71a4
	rst 38h			;71a5
	nop			;71a6
	jr nz,l71b9h		;71a7
	ld c,e			;71a9
	and c			;71aa
	adc a,c			;71ab
	and c			;71ac
	inc b			;71ad
	ld bc,01080h		;71ae
	ld c,e			;71b1
	and c			;71b2
	adc a,c			;71b3
l71b4h:
	and c			;71b4
	inc b			;71b5
	nop			;71b6
	ld h,b			;71b7
	dec de			;71b8
l71b9h:
	jp z,0d9a1h		;71b9
	and c			;71bc
	inc b			;71bd
	ld bc,01b80h		;71be
	jp z,0d9a1h		;71c1
	and c			;71c4
	inc b			;71c5
	nop			;71c6
	jr nz,l71e9h		;71c7
	ex de,hl		;71c9
	and c			;71ca
	ld b,l			;71cb
	and l			;71cc
	inc b			;71cd
l71ceh:
	ld bc,02080h		;71ce
	ex de,hl		;71d1
	and c			;71d2
	ld b,l			;71d3
	and l			;71d4
	inc b			;71d5
	nop			;71d6
	ld h,b			;71d7
	sbc a,l			;71d8
	rst 0			;71d9
	xor b			;71da
	ret c			;71db
	xor b			;71dc
	inc b			;71dd
	ld bc,09d80h		;71de
	rst 0			;71e1
	xor b			;71e2
	ret c			;71e3
	xor b			;71e4
	inc b			;71e5
	nop			;71e6
	ret po			;71e7
	sbc a,c			;71e8
l71e9h:
	and (hl)		;71e9
	xor b			;71ea
	cp b			;71eb
	xor b			;71ec
	inc b			;71ed
	ld bc,09be0h		;71ee
	and (hl)		;71f1
	xor b			;71f2
	cp b			;71f3
	xor b			;71f4
	inc b			;71f5
	nop			;71f6
l71f7h:
	ld h,b			;71f7
	sub a			;71f8
	add a,l			;71f9
	xor b			;71fa
	sub a			;71fb
	xor b			;71fc
	inc b			;71fd
	ld bc,09780h		;71fe
	add a,l			;7201
	xor b			;7202
	sub a			;7203
	xor b			;7204
	inc b			;7205
	nop			;7206
	and b			;7207
	and b			;7208
l7209h:
	jp pe,036a8h		;7209
	xor c			;720c
	inc b			;720d
	ld bc,0a040h		;720e
	jp pe,036a8h		;7211
	xor c			;7214
	inc b			;7215
	nop			;7216
	ld h,b			;7217
	or b			;7218
	add a,b			;7219
	xor c			;721a
	sbc a,b			;721b
	xor c			;721c
	inc b			;721d
	nop			;721e
	and b			;721f
	or e			;7220
	or b			;7221
	xor c			;7222
	rst 0			;7223
l7224h:
	xor c			;7224
	inc b			;7225
	nop			;7226
	ld b,b			;7227
	jr nz,l7209h		;7228
	xor c			;722a
	ld l,d			;722b
	xor d			;722c
	inc b			;722d
	ld bc,04040h		;722e
	rst 18h			;7231
	xor c			;7232
	ld l,d			;7233
	xor d			;7234
	inc b			;7235
	nop			;7236
	ld b,b			;7237
	ld h,b			;7238
	ld sp,hl		;7239
	xor d			;723a
	sbc a,b			;723b
	xor e			;723c
	inc b			;723d
	ld bc,08040h		;723e
	ld sp,hl		;7241
	xor d			;7242
	sbc a,b			;7243
	xor e			;7244
	inc b			;7245
	nop			;7246
	ret po			;7247
	xor e			;7248
	ld b,l			;7249
	xor h			;724a
	ld l,a			;724b
	xor h			;724c
	inc b			;724d
	nop			;724e
	ld b,b			;724f
	cp a			;7250
	sub h			;7251
l7252h:
	xor h			;7252
	ld sp,hl		;7253
	xor h			;7254
	inc b			;7255
	nop			;7256
	add a,b			;7257
	cp c			;7258
	ld l,d			;7259
	xor l			;725a
	and c			;725b
	xor l			;725c
	inc b			;725d
	nop			;725e
	ld b,b			;725f
	cp e			;7260
	exx			;7261
	xor l			;7262
	ret m			;7263
	xor l			;7264
	inc b			;7265
	nop			;7266
	jr nz,l7224h		;7267
	add hl,de		;7269
	xor (hl)		;726a
	ld a,0aeh		;726b
	inc b			;726d
	cp 001h			;726e
	ld bc,00001h		;7270
	ld (bc),a		;7273
	ld (bc),a		;7274
	ld (bc),a		;7275
	nop			;7276
	inc bc			;7277
	inc bc			;7278
	inc bc			;7279
l727ah:
	nop			;727a
	inc b			;727b
	inc b			;727c
	inc b			;727d
	nop			;727e
	rst 38h			;727f
	nop			;7280
	and b			;7281
	ld bc,0a0c4h		;7282
	sbc a,0a0h		;7285
	inc b			;7287
	inc bc			;7288
	ld d,b			;7289
	ld bc,0a0c4h		;728a
	sbc a,0a0h		;728d
	inc b			;728f
	nop			;7290
	jr nc,l7297h		;7291
	push af			;7293
	and b			;7294
	rlca			;7295
	and c			;7296
l7297h:
	inc b			;7297
	inc bc			;7298
	ret nz			;7299
	inc b			;729a
	push af			;729b
	and b			;729c
	rlca			;729d
	and c			;729e
	inc b			;729f
	nop			;72a0
	ld d,b			;72a1
	ld b,019h		;72a2
	and c			;72a4
	inc sp			;72a5
	and c			;72a6
	inc b			;72a7
	inc bc			;72a8
	and b			;72a9
	ld b,019h		;72aa
	and c			;72ac
	inc sp			;72ad
	and c			;72ae
	inc b			;72af
	rst 38h			;72b0
	inc bc			;72b1
	jr nz,l727ah		;72b2
	ld b,a			;72b4
	rst 0			;72b5
	set 7,a			;72b6
	rlca			;72b8
	nop			;72b9
	xor d			;72ba
	ld c,d			;72bb
	inc b			;72bc
	dec c			;72bd
	rlca			;72be
	inc a			;72bf
	jp z,0044bh		;72c0
	dec c			;72c3
	rlca			;72c4
	call m,0501fh		;72c5
	inc b			;72c8
	ld h,b			;72c9
	rlca			;72ca
	call z,04fe6h		;72cb
	inc b			;72ce
	ld h,a			;72cf
	rlca			;72d0
	call c,0504bh		;72d1
	inc b			;72d4
	ld h,d			;72d5
	nop			;72d6
	inc bc			;72d7
	ld c,h			;72d8
	pop hl			;72d9
	ld c,e			;72da
	inc b			;72db
	ld (de),a		;72dc
	inc bc			;72dd
	ld c,h			;72de
	pop hl			;72df
	ld c,e			;72e0
	inc b			;72e1
	ld l,b			;72e2
	inc bc			;72e3
	ld d,h			;72e4
	inc de			;72e5
	ld c,l			;72e6
	inc b			;72e7
	jr l72edh		;72e8
	ld e,h			;72ea
	sub c			;72eb
	ld c,l			;72ec
l72edh:
	inc b			;72ed
	dec d			;72ee
	inc bc			;72ef
	ld l,h			;72f0
	ld h,h			;72f1
	ld c,h			;72f2
	inc b			;72f3
	ld de,08401h		;72f4
	add a,(hl)		;72f7
	ld d,c			;72f8
	inc b			;72f9
	ld e,002h		;72fa
	add a,h			;72fc
	ld sp,00451h		;72fd
	ld d,l			;7300
	inc bc			;7301
	and b			;7302
	rlca			;7303
	ld d,d			;7304
	inc b			;7305
	rra			;7306
	inc bc			;7307
	ret z			;7308
	jr nc,l735bh		;7309
	inc b			;730b
	ld (hl),b		;730c
	inc bc			;730d
	ld h,h			;730e
	ld c,a			;730f
	ld c,l			;7310
	inc b			;7311
	djnz l7317h		;7312
	sub h			;7314
	ld (hl),e		;7315
	ld d,c			;7316
l7317h:
	inc b			;7317
	ld h,c			;7318
	inc b			;7319
	ld d,b			;731a
	sbc a,l			;731b
	ld l,h			;731c
	inc b			;731d
	ld h,h			;731e
	inc b			;731f
	sbc a,b			;7320
	and 052h		;7321
	inc b			;7323
	ld b,b			;7324
	nop			;7325
	rlca			;7326
	ret c			;7327
	in a,(04fh)		;7328
	inc b			;732a
	ld h,a			;732b
	inc bc			;732c
	call z,04d13h		;732d
	inc b			;7330
	jr $+5			;7331
	ld c,h			;7333
	ld (00456h),a		;7334
	djnz l733ch		;7337
	ld h,h			;7339
	ld (hl),h		;733a
	ld d,(hl)		;733b
l733ch:
	inc b			;733c
	daa			;733d
	inc bc			;733e
	ld e,h			;733f
	dec d			;7340
	ld c,(hl)		;7341
	inc b			;7342
	ld d,001h		;7343
	adc a,h			;7345
	sbc a,b			;7346
	ld c,(hl)		;7347
	inc b			;7348
	add hl,de		;7349
	inc bc			;734a
	ld d,h			;734b
	out (04dh),a		;734c
	inc b			;734e
	inc de			;734f
	ld bc,02384h		;7350
	ld c,h			;7353
	inc b			;7354
	ld (de),a		;7355
	ld bc,l71b4h		;7356
	ld d,l			;7359
	inc b			;735a
l735bh:
	inc l			;735b
	ld (bc),a		;735c
	cp h			;735d
	xor 053h		;735e
	inc b			;7360
	ld sp,0a402h		;7361
	xor h			;7364
	ld d,e			;7365
	inc b			;7366
	cpl			;7367
	ld (bc),a		;7368
	xor h			;7369
	jp (hl)			;736a
	ld d,l			;736b
	inc b			;736c
	ld hl,(08402h)		;736d
	ld (hl),b		;7370
	ld d,h			;7371
	inc b			;7372
	dec l			;7373
	inc b			;7374
	add a,b			;7375
	call pe,0046dh		;7376
	dec sp			;7379
	nop			;737a
	ld bc,013ach		;737b
	ld c,l			;737e
	inc b			;737f
	jr l7383h		;7380
	ld c,h			;7382
l7383h:
	out (04dh),a		;7383
	inc b			;7385
	inc de			;7386
	ld bc,l7554h		;7387
	ld e,b			;738a
	inc b			;738b
	dec e			;738c
	ld bc,0f75ch		;738d
	ld d,a			;7390
	inc b			;7391
	inc sp			;7392
	ld bc,l748ch		;7393
	ld d,a			;7396
	inc b			;7397
	dec (hl)		;7398
	ld bc,0b7b4h		;7399
	ld e,b			;739c
	inc b			;739d
	ld (hl),l		;739e
	ld bc,030c0h		;739f
	ld d,b			;73a2
	inc b			;73a3
	ld (hl),b		;73a4
	ld bc,0d9b8h		;73a5
	ld e,b			;73a8
	inc b			;73a9
	ld b,l			;73aa
	ld bc,01a9ch		;73ab
	ld e,c			;73ae
	inc b			;73af
	dec h			;73b0
	ld bc,l746ch		;73b1
	ld d,(hl)		;73b4
	inc b			;73b5
	daa			;73b6
	nop			;73b7
	ld bc,056bch		;73b8
	ld c,(hl)		;73bb
	inc b			;73bc
	rla			;73bd
	ld bc,0704ch		;73be
	ld d,h			;73c1
	inc b			;73c2
	dec l			;73c3
	ld bc,0985ch		;73c4
	ld c,(hl)		;73c7
	inc b			;73c8
	add hl,de		;73c9
	ld bc,03d84h		;73ca
	ld e,d			;73cd
	inc b			;73ce
	scf			;73cf
	ld bc,09da4h		;73d0
	ld e,c			;73d3
	inc b			;73d4
	ld l,(hl)		;73d5
	ld bc,0c094h		;73d6
	ld e,d			;73d9
	inc b			;73da
	ld l,a			;73db
	ld b,0c4h		;73dc
	ld b,d			;73de
	ld e,e			;73df
	inc b			;73e0
	ld e,b			;73e1
	nop			;73e2
	ld bc,034ach		;73e3
	ld e,a			;73e6
	inc b			;73e7
	jr l73ebh		;73e8
	ld c,h			;73ea
l73ebh:
	call p,0045eh		;73eb
	inc de			;73ee
	ld bc,0f054h		;73ef
	ld e,l			;73f2
	inc b			;73f3
	ld hl,l7401h		;73f4
	ld (hl),h		;73f7
	ld d,(hl)		;73f8
	inc b			;73f9
	daa			;73fa
	ld bc,0399ch		;73fb
	ld h,b			;73fe
	inc b			;73ff
	ld c,c			;7400
l7401h:
	ld bc,030b4h		;7401
	ld d,b			;7404
	inc b			;7405
	ld (hl),b		;7406
	ld (bc),a		;7407
	ld l,b			;7408
	ld l,a			;7409
	ld e,e			;740a
	inc b			;740b
	ld e,h			;740c
	nop			;740d
	ld bc,03f84h		;740e
	ld h,c			;7411
	inc b			;7412
	ld c,b			;7413
	ld bc,0bc54h		;7414
	ld h,b			;7417
	inc b			;7418
	ld c,d			;7419
	ld bc,0ae7ch		;741a
	ld l,c			;741d
	inc b			;741e
	ld c,l			;741f
	ld bc,0f764h		;7420
	ld e,a			;7423
	inc b			;7424
	ld b,h			;7425
	ld bc,0566ch		;7426
	ld c,(hl)		;7429
	inc b			;742a
	rla			;742b
	ld bc,0ac4ch		;742c
	ld d,e			;742f
	inc b			;7430
	cpl			;7431
	ld bc,030d4h		;7432
	ld d,b			;7435
	inc b			;7436
	ld (hl),b		;7437
	ld (bc),a		;7438
	ld c,h			;7439
	ld h,c			;743a
	ld h,c			;743b
	inc b			;743c
	ld a,h			;743d
	nop			;743e
	ld bc,01554h		;743f
	ld c,(hl)		;7442
	inc b			;7443
	ld d,001h		;7444
	ld c,h			;7446
	xor (hl)		;7447
	ld l,c			;7448
	inc b			;7449
	ld c,l			;744a
	ld bc,0355ch		;744b
	ld h,l			;744e
	inc b			;744f
	ld a,(de)		;7450
	inc b			;7451
	call nc,sub_64f3h	;7452
	inc b			;7455
	dec de			;7456
	inc b			;7457
	ld c,h			;7458
	ld l,069h		;7459
	inc b			;745b
	ld (hl),h		;745c
	inc b			;745d
	ld d,h			;745e
	ret p			;745f
	ld l,c			;7460
	inc b			;7461
	ld d,b			;7462
	inc b			;7463
	ld (hl),h		;7464
	call pe,0046dh		;7465
	ld a,b			;7468
	inc b			;7469
	adc a,h			;746a
	halt			;746b
l746ch:
	ld e,a			;746c
	inc b			;746d
	ld b,d			;746e
	inc b			;746f
	and b			;7470
	pop bc			;7471
	ld l,d			;7472
	inc b			;7473
	inc hl			;7474
	inc b			;7475
	xor b			;7476
	ld a,a			;7477
	ld l,d			;7478
	inc b			;7479
	ld b,e			;747a
	nop			;747b
	nop			;747c
	ld bc,0b150h		;747d
	ld l,e			;7480
	inc b			;7481
	ld c,h			;7482
	ld bc,0b150h		;7483
	ld l,e			;7486
	inc b			;7487
	ld c,(hl)		;7488
	ld bc,01894h		;7489
l748ch:
	ld l,e			;748c
	inc b			;748d
	ld e,(hl)		;748e
	ld bc,01894h		;748f
	ld l,e			;7492
	inc b			;7493
	ld h,(hl)		;7494
	nop			;7495
	rst 38h			;7496
	rst 38h			;7497
	rst 38h			;7498
	rst 38h			;7499
	rst 38h			;749a
	rst 38h			;749b
	rst 38h			;749c
	rst 38h			;749d
	rst 38h			;749e
	rst 38h			;749f
	rst 38h			;74a0
	rst 38h			;74a1
	rst 38h			;74a2
	rst 38h			;74a3
	rst 38h			;74a4
	rst 38h			;74a5
	rst 38h			;74a6
	rst 38h			;74a7
	rst 38h			;74a8
	rst 38h			;74a9
	rst 38h			;74aa
	rst 38h			;74ab
	rst 38h			;74ac
	rst 38h			;74ad
	rst 38h			;74ae
	rst 38h			;74af
	rst 38h			;74b0
	rst 38h			;74b1
	rst 38h			;74b2
	rst 38h			;74b3
	rst 38h			;74b4
	rst 38h			;74b5
	rst 38h			;74b6
	rst 38h			;74b7
	rst 38h			;74b8
	rst 38h			;74b9
	rst 38h			;74ba
	rst 38h			;74bb
	rst 38h			;74bc
	rst 38h			;74bd
	rst 38h			;74be
	rst 38h			;74bf
	rst 38h			;74c0
	rst 38h			;74c1
	rst 38h			;74c2
	rst 38h			;74c3
	rst 38h			;74c4
	rst 38h			;74c5
	rst 38h			;74c6
	rst 38h			;74c7
	rst 38h			;74c8
	rst 38h			;74c9
	rst 38h			;74ca
	rst 38h			;74cb
	rst 38h			;74cc
	rst 38h			;74cd
	rst 38h			;74ce
	rst 38h			;74cf
	rst 38h			;74d0
	rst 38h			;74d1
	rst 38h			;74d2
	rst 38h			;74d3
	rst 38h			;74d4
	rst 38h			;74d5
	rst 38h			;74d6
	rst 38h			;74d7
	rst 38h			;74d8
	rst 38h			;74d9
	rst 38h			;74da
	rst 38h			;74db
	rst 38h			;74dc
	rst 38h			;74dd
	rst 38h			;74de
	rst 38h			;74df
	rst 38h			;74e0
	rst 38h			;74e1
	rst 38h			;74e2
	rst 38h			;74e3
	rst 38h			;74e4
	rst 38h			;74e5
	rst 38h			;74e6
	rst 38h			;74e7
	rst 38h			;74e8
	rst 38h			;74e9
	rst 38h			;74ea
	rst 38h			;74eb
	rst 38h			;74ec
	rst 38h			;74ed
	rst 38h			;74ee
	rst 38h			;74ef
	rst 38h			;74f0
	rst 38h			;74f1
	rst 38h			;74f2
	rst 38h			;74f3
	rst 38h			;74f4
	rst 38h			;74f5
	rst 38h			;74f6
	rst 38h			;74f7
	rst 38h			;74f8
	rst 38h			;74f9
	rst 38h			;74fa
	rst 38h			;74fb
	rst 38h			;74fc
	rst 38h			;74fd
	rst 38h			;74fe
	rst 38h			;74ff
	inc b			;7500
	inc bc			;7501
	dec b			;7502
	inc bc			;7503
	ld b,003h		;7504
	rlca			;7506
	inc bc			;7507
	inc b			;7508
	inc bc			;7509
	ex af,af'		;750a
	inc bc			;750b
	add hl,bc		;750c
	inc bc			;750d
	ld a,(bc)		;750e
	inc bc			;750f
	ret pe			;7510
	ld bc,001e9h		;7511
	jp pe,0ff01h		;7514
	inc b			;7517
	rst 38h			;7518
	inc b			;7519
	rst 38h			;751a
	inc b			;751b
	rst 38h			;751c
	inc b			;751d
	rst 38h			;751e
	inc b			;751f
	rst 38h			;7520
	inc b			;7521
	rst 38h			;7522
	inc b			;7523
	rst 38h			;7524
	inc b			;7525
	rst 38h			;7526
	inc b			;7527
	rst 38h			;7528
	inc b			;7529
	rst 38h			;752a
	inc b			;752b
	rst 38h			;752c
	inc b			;752d
	rst 38h			;752e
	inc b			;752f
	rst 38h			;7530
	inc b			;7531
	rst 38h			;7532
	inc b			;7533
	rst 38h			;7534
	inc b			;7535
	rst 38h			;7536
	inc b			;7537
	sub d			;7538
	ld (bc),a		;7539
	sub e			;753a
	ld (bc),a		;753b
	sub h			;753c
	ld (bc),a		;753d
	rst 38h			;753e
	inc b			;753f
	dec bc			;7540
	inc bc			;7541
	inc c			;7542
	inc bc			;7543
	nop			;7544
	nop			;7545
	ld bc,00200h		;7546
	nop			;7549
	inc bc			;754a
	nop			;754b
	inc b			;754c
	nop			;754d
	dec b			;754e
	nop			;754f
	ld b,000h		;7550
	rlca			;7552
	nop			;7553
l7554h:
	ex af,af'		;7554
	nop			;7555
	add hl,bc		;7556
	nop			;7557
	ld a,(bc)		;7558
	nop			;7559
	dec bc			;755a
	nop			;755b
	inc c			;755c
	nop			;755d
	dec c			;755e
	nop			;755f
	ld c,000h		;7560
	rrca			;7562
	nop			;7563
	djnz l7566h		;7564
l7566h:
	ld de,01200h		;7566
	nop			;7569
	inc de			;756a
	nop			;756b
	add a,e			;756c
	ld (bc),a		;756d
	add a,h			;756e
	ld (bc),a		;756f
	add a,l			;7570
	ld (bc),a		;7571
	add a,(hl)		;7572
	ld (bc),a		;7573
	add a,a			;7574
	ld (bc),a		;7575
	rst 38h			;7576
	inc b			;7577
	sub l			;7578
	ld (bc),a		;7579
	sub (hl)		;757a
	ld (bc),a		;757b
	sub a			;757c
	ld (bc),a		;757d
	rst 38h			;757e
	inc b			;757f
	dec c			;7580
	inc bc			;7581
	ld c,003h		;7582
	inc d			;7584
	nop			;7585
	dec d			;7586
	nop			;7587
	ld d,000h		;7588
	rla			;758a
	nop			;758b
	jr l758eh		;758c
l758eh:
	add hl,de		;758e
	nop			;758f
	ld a,(de)		;7590
	nop			;7591
	dec de			;7592
	nop			;7593
	inc e			;7594
	nop			;7595
	dec e			;7596
	nop			;7597
	ld e,000h		;7598
	rra			;759a
	nop			;759b
	jr nz,l759eh		;759c
l759eh:
	ld hl,02200h		;759e
	nop			;75a1
	inc hl			;75a2
	nop			;75a3
	inc h			;75a4
	nop			;75a5
	dec h			;75a6
	nop			;75a7
	ld h,000h		;75a8
	daa			;75aa
	nop			;75ab
	adc a,b			;75ac
	ld (bc),a		;75ad
	adc a,c			;75ae
	ld (bc),a		;75af
	adc a,d			;75b0
	ld (bc),a		;75b1
	adc a,e			;75b2
	ld (bc),a		;75b3
	adc a,h			;75b4
	ld (bc),a		;75b5
	rst 38h			;75b6
	inc b			;75b7
	sbc a,b			;75b8
	ld (bc),a		;75b9
	sbc a,c			;75ba
	ld (bc),a		;75bb
	sbc a,d			;75bc
	ld (bc),a		;75bd
	rst 38h			;75be
	inc b			;75bf
	or b			;75c0
	inc b			;75c1
	or c			;75c2
	inc b			;75c3
	jr z,l75c6h		;75c4
l75c6h:
	add hl,hl		;75c6
	nop			;75c7
	ld hl,(02b00h)		;75c8
	nop			;75cb
	inc l			;75cc
	nop			;75cd
	dec l			;75ce
	nop			;75cf
	ld l,000h		;75d0
	cpl			;75d2
	nop			;75d3
	jr nc,l75d6h		;75d4
l75d6h:
	ld sp,03200h		;75d6
	nop			;75d9
	inc sp			;75da
	nop			;75db
	inc (hl)		;75dc
	nop			;75dd
	dec (hl)		;75de
	nop			;75df
	ld (hl),000h		;75e0
	scf			;75e2
	nop			;75e3
	jr c,l75e6h		;75e4
l75e6h:
	add hl,sp		;75e6
	nop			;75e7
	ld a,(03b00h)		;75e8
	nop			;75eb
	adc a,l			;75ec
	ld (bc),a		;75ed
	adc a,(hl)		;75ee
	ld (bc),a		;75ef
	adc a,a			;75f0
	ld (bc),a		;75f1
	sub b			;75f2
	ld (bc),a		;75f3
	sub c			;75f4
	ld (bc),a		;75f5
	rst 38h			;75f6
	inc b			;75f7
	rrca			;75f8
	inc bc			;75f9
	sbc a,e			;75fa
	ld (bc),a		;75fb
	sbc a,h			;75fc
	ld (bc),a		;75fd
	rst 38h			;75fe
	inc b			;75ff
	or (hl)			;7600
	inc b			;7601
	or a			;7602
	inc b			;7603
	inc a			;7604
	nop			;7605
	dec a			;7606
	nop			;7607
	ld a,000h		;7608
	ccf			;760a
	nop			;760b
	ld b,b			;760c
	nop			;760d
	ld b,c			;760e
	nop			;760f
	ld b,d			;7610
	nop			;7611
	ld b,e			;7612
l7613h:
	nop			;7613
	ld b,h			;7614
	nop			;7615
	ld b,l			;7616
	nop			;7617
	ld b,(hl)		;7618
	nop			;7619
	ld b,a			;761a
	nop			;761b
	ld a,000h		;761c
	ld c,b			;761e
	nop			;761f
	ld c,c			;7620
	nop			;7621
	ld c,d			;7622
	nop			;7623
	ld c,e			;7624
	nop			;7625
	ld c,h			;7626
	nop			;7627
	ld c,l			;7628
	nop			;7629
	ld c,(hl)		;762a
	nop			;762b
	rrca			;762c
	inc bc			;762d
	sbc a,l			;762e
	ld (bc),a		;762f
	sbc a,(hl)		;7630
	ld (bc),a		;7631
	sbc a,a			;7632
	ld (bc),a		;7633
	and b			;7634
	ld (bc),a		;7635
	and c			;7636
	ld (bc),a		;7637
	and d			;7638
	ld (bc),a		;7639
	and e			;763a
	ld (bc),a		;763b
	and h			;763c
	ld (bc),a		;763d
	rrca			;763e
	inc bc			;763f
	or d			;7640
	inc b			;7641
	or e			;7642
	inc b			;7643
	ld c,a			;7644
	nop			;7645
	ld d,b			;7646
l7647h:
	nop			;7647
	ld d,c			;7648
	nop			;7649
	ld d,d			;764a
	nop			;764b
	ld d,e			;764c
	nop			;764d
	ld d,h			;764e
	nop			;764f
	ld d,l			;7650
	nop			;7651
	ld d,(hl)		;7652
	nop			;7653
	ld d,a			;7654
	nop			;7655
	ld e,b			;7656
	nop			;7657
	ld e,c			;7658
	nop			;7659
	ld e,d			;765a
	nop			;765b
	ld e,e			;765c
	nop			;765d
	ld e,h			;765e
	nop			;765f
	ld e,l			;7660
	nop			;7661
	ld e,(hl)		;7662
	nop			;7663
	ld e,a			;7664
	nop			;7665
	ld h,b			;7666
	nop			;7667
	ld h,c			;7668
	nop			;7669
	ld h,d			;766a
	nop			;766b
	rrca			;766c
	inc bc			;766d
	and l			;766e
	ld (bc),a		;766f
	and (hl)		;7670
	ld (bc),a		;7671
	and a			;7672
	ld (bc),a		;7673
	xor b			;7674
	ld (bc),a		;7675
	xor c			;7676
	ld (bc),a		;7677
	xor d			;7678
	ld (bc),a		;7679
	xor e			;767a
	ld (bc),a		;767b
	xor h			;767c
	ld (bc),a		;767d
	rrca			;767e
	inc bc			;767f
	cp b			;7680
	inc b			;7681
	cp c			;7682
	inc b			;7683
	ld h,e			;7684
	nop			;7685
	ld h,h			;7686
	nop			;7687
	ld h,l			;7688
	nop			;7689
	ld h,(hl)		;768a
	nop			;768b
	ld h,a			;768c
	nop			;768d
	ld l,b			;768e
	nop			;768f
	ld l,c			;7690
	nop			;7691
	ld l,d			;7692
	nop			;7693
	ld l,e			;7694
	nop			;7695
	ld l,h			;7696
	nop			;7697
	ld l,l			;7698
	nop			;7699
	ld l,(hl)		;769a
	nop			;769b
	ld l,a			;769c
	nop			;769d
	ld (hl),b		;769e
	nop			;769f
	ld a,000h		;76a0
	ld (hl),c		;76a2
	nop			;76a3
	ld (hl),d		;76a4
	nop			;76a5
	ld (hl),e		;76a6
	nop			;76a7
	ld (hl),h		;76a8
	nop			;76a9
	ld (hl),l		;76aa
	nop			;76ab
	rrca			;76ac
	inc bc			;76ad
	xor l			;76ae
	ld (bc),a		;76af
	xor (hl)		;76b0
	ld (bc),a		;76b1
	xor a			;76b2
	ld (bc),a		;76b3
	or b			;76b4
	ld (bc),a		;76b5
	or c			;76b6
	ld (bc),a		;76b7
	or d			;76b8
	ld (bc),a		;76b9
	or e			;76ba
	ld (bc),a		;76bb
	or h			;76bc
	ld (bc),a		;76bd
	rrca			;76be
	inc bc			;76bf
	or h			;76c0
	inc b			;76c1
	or l			;76c2
	inc b			;76c3
	halt			;76c4
	nop			;76c5
	ld (hl),a		;76c6
	nop			;76c7
	ld a,b			;76c8
	nop			;76c9
	ld a,c			;76ca
	nop			;76cb
	ld a,d			;76cc
	nop			;76cd
	ld a,e			;76ce
	nop			;76cf
	ld a,h			;76d0
	nop			;76d1
	ld a,l			;76d2
	nop			;76d3
	ld a,(hl)		;76d4
	nop			;76d5
	ld a,a			;76d6
	nop			;76d7
	add a,b			;76d8
	nop			;76d9
	add a,c			;76da
	nop			;76db
	add a,d			;76dc
	nop			;76dd
	add a,e			;76de
	nop			;76df
	ld a,000h		;76e0
	ld a,000h		;76e2
	add a,h			;76e4
	nop			;76e5
	add a,l			;76e6
	nop			;76e7
	add a,(hl)		;76e8
	nop			;76e9
	add a,a			;76ea
	nop			;76eb
	rrca			;76ec
	inc bc			;76ed
	or l			;76ee
	ld (bc),a		;76ef
	or (hl)			;76f0
	ld (bc),a		;76f1
	or a			;76f2
	ld (bc),a		;76f3
	cp b			;76f4
	ld (bc),a		;76f5
	cp c			;76f6
	ld (bc),a		;76f7
	cp d			;76f8
	ld (bc),a		;76f9
	cp e			;76fa
	ld (bc),a		;76fb
	cp h			;76fc
	ld (bc),a		;76fd
	cp l			;76fe
	ld (bc),a		;76ff
	cp d			;7700
	inc b			;7701
	cp e			;7702
	inc b			;7703
	adc a,b			;7704
	nop			;7705
	adc a,c			;7706
	nop			;7707
	adc a,d			;7708
	nop			;7709
	adc a,e			;770a
	nop			;770b
	adc a,h			;770c
	nop			;770d
	adc a,l			;770e
	nop			;770f
	adc a,(hl)		;7710
	nop			;7711
	adc a,a			;7712
	nop			;7713
	sub b			;7714
	nop			;7715
	sub c			;7716
	nop			;7717
	sub d			;7718
	nop			;7719
	sub e			;771a
	nop			;771b
	sub h			;771c
	nop			;771d
	sub l			;771e
	nop			;771f
	ld a,000h		;7720
	sub (hl)		;7722
	nop			;7723
	sub a			;7724
	nop			;7725
	sbc a,b			;7726
	nop			;7727
	ld a,000h		;7728
	sbc a,c			;772a
	nop			;772b
	rrca			;772c
	inc bc			;772d
	cp (hl)			;772e
	ld (bc),a		;772f
	cp a			;7730
	ld (bc),a		;7731
	ret nz			;7732
	ld (bc),a		;7733
	pop bc			;7734
	ld (bc),a		;7735
	jp nz,0c302h		;7736
	ld (bc),a		;7739
	call nz,0c502h		;773a
	ld (bc),a		;773d
	add a,002h		;773e
	cp h			;7740
	inc b			;7741
	cp l			;7742
	inc b			;7743
	sbc a,d			;7744
	nop			;7745
	sbc a,e			;7746
	nop			;7747
	sbc a,h			;7748
	nop			;7749
	sbc a,l			;774a
	nop			;774b
	sbc a,(hl)		;774c
	nop			;774d
	sbc a,a			;774e
	nop			;774f
	and b			;7750
	nop			;7751
	and c			;7752
	nop			;7753
	and d			;7754
	nop			;7755
	and e			;7756
	nop			;7757
	and h			;7758
	nop			;7759
	and l			;775a
	nop			;775b
	and (hl)		;775c
	nop			;775d
	and a			;775e
	nop			;775f
	ld a,000h		;7760
	ld a,000h		;7762
	xor b			;7764
	nop			;7765
	xor c			;7766
	nop			;7767
	xor d			;7768
	nop			;7769
	xor e			;776a
	nop			;776b
	rrca			;776c
	inc bc			;776d
	rst 0			;776e
	ld (bc),a		;776f
	ret z			;7770
	ld (bc),a		;7771
	ret			;7772
	ld (bc),a		;7773
	jp z,0cb02h		;7774
	ld (bc),a		;7777
	call z,0cd02h		;7778
	ld (bc),a		;777b
	adc a,002h		;777c
	rrca			;777e
	inc bc			;777f
	cp (hl)			;7780
	inc b			;7781
	cp a			;7782
	inc b			;7783
	xor e			;7784
	nop			;7785
	xor h			;7786
	nop			;7787
	xor l			;7788
	nop			;7789
	xor (hl)		;778a
	nop			;778b
	xor a			;778c
	nop			;778d
	or b			;778e
	nop			;778f
	or c			;7790
	nop			;7791
	or d			;7792
	nop			;7793
	or e			;7794
	nop			;7795
	or h			;7796
	nop			;7797
	or l			;7798
	nop			;7799
	or (hl)			;779a
	nop			;779b
	or a			;779c
	nop			;779d
	cp b			;779e
	nop			;779f
	ld a,000h		;77a0
	cp c			;77a2
	nop			;77a3
	cp d			;77a4
	nop			;77a5
	cp e			;77a6
	nop			;77a7
	cp h			;77a8
	nop			;77a9
	ld a,000h		;77aa
	rrca			;77ac
	inc bc			;77ad
	rst 8			;77ae
	ld (bc),a		;77af
	ret nc			;77b0
	ld (bc),a		;77b1
	pop de			;77b2
	ld (bc),a		;77b3
	jp nc,0d302h		;77b4
	ld (bc),a		;77b7
	call nc,0d502h		;77b8
	ld (bc),a		;77bb
	rrca			;77bc
	inc bc			;77bd
	rrca			;77be
	inc bc			;77bf
	ex de,hl		;77c0
	ld bc,001efh		;77c1
	ld a,000h		;77c4
	cp l			;77c6
	nop			;77c7
	cp (hl)			;77c8
	nop			;77c9
	cp a			;77ca
	nop			;77cb
	ret nz			;77cc
	nop			;77cd
	pop bc			;77ce
	nop			;77cf
	jp nz,0c300h		;77d0
	nop			;77d3
	call nz,0c500h		;77d4
	nop			;77d7
	add a,000h		;77d8
	rst 0			;77da
	nop			;77db
	ret z			;77dc
	nop			;77dd
	ld a,000h		;77de
	ld a,000h		;77e0
	ret			;77e2
	nop			;77e3
	jp z,0cb00h		;77e4
	nop			;77e7
	call z,0cd00h		;77e8
	nop			;77eb
	sub 002h		;77ec
	rst 10h			;77ee
	ld (bc),a		;77ef
	ret c			;77f0
	ld (bc),a		;77f1
	exx			;77f2
	ld (bc),a		;77f3
	jp c,0db02h		;77f4
	ld (bc),a		;77f7
	rrca			;77f8
	inc bc			;77f9
	rrca			;77fa
	inc bc			;77fb
	rrca			;77fc
	inc bc			;77fd
	rrca			;77fe
	inc bc			;77ff
	call pe,0f001h		;7800
	ld bc,000ceh		;7803
	rst 8			;7806
	nop			;7807
	ret nc			;7808
	nop			;7809
	pop de			;780a
	nop			;780b
	jp nc,0d300h		;780c
	nop			;780f
	call nc,0d500h		;7810
	nop			;7813
	sub 000h		;7814
	rst 10h			;7816
	nop			;7817
	ret c			;7818
	nop			;7819
	exx			;781a
	nop			;781b
	ld a,000h		;781c
	ld a,000h		;781e
	ld a,000h		;7820
	jp c,0db00h		;7822
	nop			;7825
	call c,0dd00h		;7826
	nop			;7829
	sbc a,000h		;782a
	rrca			;782c
	inc bc			;782d
	call c,0dd02h		;782e
	ld (bc),a		;7831
	sbc a,002h		;7832
	rrca			;7834
	inc bc			;7835
	rrca			;7836
	inc bc			;7837
	rrca			;7838
	inc bc			;7839
	rrca			;783a
	inc bc			;783b
	rrca			;783c
	inc bc			;783d
	rrca			;783e
	inc bc			;783f
	defb 0edh ;next byte illegal after ed	;7840
	ld bc,004ffh		;7841
	rlc c			;7844
	rlc c			;7846
	add a,001h		;7848
	rlc c			;784a
	add a,001h		;784c
	rlc c			;784e
	ret			;7850
	ld bc,001c6h		;7851
	rlc c			;7854
	rlc c			;7856
	add a,001h		;7858
	rst 0			;785a
	ld bc,001cbh		;785b
	ret			;785e
	ld bc,001c6h		;785f
	ret			;7862
	ld bc,001c6h		;7863
	rst 0			;7866
	ld bc,001c8h		;7867
	ret			;786a
	ld bc,000dfh		;786b
	ret po			;786e
	nop			;786f
	pop hl			;7870
	nop			;7871
	jp po,0e300h		;7872
	nop			;7875
	call po,0e500h		;7876
	nop			;7879
	cp a			;787a
	ld bc,001c0h		;787b
	ld (de),a		;787e
	ld (bc),a		;787f
	xor 001h		;7880
	xor l			;7882
	inc b			;7883
	rlc c			;7884
	ret			;7886
	ld bc,001c5h		;7887
	rlc c			;788a
	ret z			;788c
	ld bc,001cbh		;788d
	rst 0			;7890
	ld bc,001cbh		;7891
	rlc c			;7894
	rlc c			;7896
	rlc c			;7898
	ret z			;789a
	ld bc,001c4h		;789b
	rlc c			;789e
	rst 0			;78a0
	ld bc,001c8h		;78a1
	ret z			;78a4
	ld bc,001cbh		;78a5
	push bc			;78a8
	ld bc,001cah		;78a9
	ret p			;78ac
	nop			;78ad
	pop af			;78ae
	nop			;78af
	jp p,0f300h		;78b0
	nop			;78b3
	call p,0f500h		;78b4
	nop			;78b7
	or 000h			;78b8
	pop bc			;78ba
	ld bc,00213h		;78bb
	inc d			;78be
	ld (bc),a		;78bf
	pop af			;78c0
	ld bc,004ffh		;78c1
	rlc c			;78c4
	rlc c			;78c6
	rlc c			;78c8
	add a,001h		;78ca
	rlc c			;78cc
	add a,001h		;78ce
	rlc c			;78d0
	rlc c			;78d2
	ret			;78d4
	ld bc,001cbh		;78d5
	rst 0			;78d8
	ld bc,001c9h		;78d9
	rlc c			;78dc
	rlc c			;78de
	rlc c			;78e0
	add a,001h		;78e2
	rlc c			;78e4
	rlc c			;78e6
	rlc c			;78e8
	rlc c			;78ea
	inc b			;78ec
	ld bc,00105h		;78ed
	ld b,001h		;78f0
	rlca			;78f2
	ld bc,00108h		;78f3
	add hl,bc		;78f6
	ld bc,0010ah		;78f7
	ld d,002h		;78fa
	rla			;78fc
	ld (bc),a		;78fd
	jr $+4			;78fe
	jp p,0ff01h		;7900
	inc b			;7903
	rlc c			;7904
	ret z			;7906
	ld bc,001cbh		;7907
	add a,001h		;790a
	rlc c			;790c
	call nz,0c701h		;790e
	ld bc,001cbh		;7911
	ret z			;7914
	ld bc,001c6h		;7915
	rlc c			;7918
	rst 0			;791a
	ld bc,001c6h		;791b
	rlc c			;791e
	add a,001h		;7920
	rlc c			;7922
	rlc c			;7924
	rlc c			;7926
	call nz,0cb01h		;7928
	ld bc,00118h		;792b
	add hl,de		;792e
	ld bc,0011ah		;792f
	dec de			;7932
	ld bc,0011ch		;7933
	dec e			;7936
	ld bc,00219h		;7937
	ld a,(de)		;793a
	ld (bc),a		;793b
	dec de			;793c
	ld (bc),a		;793d
	inc e			;793e
	ld (bc),a		;793f
	rst 38h			;7940
	inc b			;7941
	rst 38h			;7942
	inc b			;7943
	rlc c			;7944
	add a,001h		;7946
	ret			;7948
	ld bc,001cbh		;7949
	ret			;794c
	ld bc,001c7h		;794d
	rlc c			;7950
	ret			;7952
	ld bc,001c6h		;7953
	call nz,0c701h		;7956
	ld bc,001cbh		;7959
	rlc c			;795c
	ret			;795e
	ld bc,001c9h		;795f
	add a,001h		;7962
	rst 0			;7964
	ld bc,001c6h		;7965
	rlc c			;7968
	ret z			;796a
	ld bc,0012bh		;796b
	inc l			;796e
	ld bc,0012dh		;796f
	ld l,001h		;7972
	cpl			;7974
	ld bc,00130h		;7975
	dec e			;7978
	ld (bc),a		;7979
	ld e,002h		;797a
	rra			;797c
	ld (bc),a		;797d
	rrca			;797e
	inc bc			;797f
	rst 38h			;7980
	inc b			;7981
	rst 38h			;7982
	inc b			;7983
	rlc c			;7984
	call nz,0cb01h		;7986
	ld bc,001c6h		;7989
	rst 0			;798c
	ld bc,001cbh		;798d
	rst 0			;7990
	ld bc,001c6h		;7991
	rlc c			;7994
	rlc c			;7996
	rst 0			;7998
	ld bc,001cbh		;7999
	add a,001h		;799c
	rlc c			;799e
	push bc			;79a0
	ld bc,001cbh		;79a1
	rst 0			;79a4
	ld bc,001c8h		;79a5
	rst 0			;79a8
	ld bc,001cbh		;79a9
	ccf			;79ac
	ld bc,00140h		;79ad
	ld b,c			;79b0
	ld bc,00142h		;79b1
	ld b,e			;79b4
	ld bc,00144h		;79b5
	jr nz,$+4		;79b8
	ld hl,01c02h		;79ba
	ld (bc),a		;79bd
	rrca			;79be
	inc bc			;79bf
	rst 38h			;79c0
	inc b			;79c1
	rst 38h			;79c2
	inc b			;79c3
	ret z			;79c4
	ld bc,001cbh		;79c5
	rlc c			;79c8
	push bc			;79ca
	ld bc,001c7h		;79cb
	rlc c			;79ce
	rlc c			;79d0
	rlc c			;79d2
	rst 0			;79d4
	ld bc,001cbh		;79d5
	rlc c			;79d8
	rlc c			;79da
	rlc c			;79dc
	rlc c			;79de
	rlc c			;79e0
	add a,001h		;79e2
	rlc c			;79e4
	jp z,0cb01h		;79e6
	ld bc,001c6h		;79e9
	ld d,d			;79ec
	ld bc,00153h		;79ed
	ld d,h			;79f0
	ld bc,00155h		;79f1
	ld d,(hl)		;79f4
	ld bc,00157h		;79f5
	ld (02302h),hl		;79f8
	ld (bc),a		;79fb
	rrca			;79fc
	inc bc			;79fd
	rrca			;79fe
	inc bc			;79ff
	rst 38h			;7a00
	inc b			;7a01
	rst 38h			;7a02
	inc b			;7a03
	rlc c			;7a04
	add a,001h		;7a06
	rst 0			;7a08
	ld bc,001cbh		;7a09
	rlc c			;7a0c
	add a,001h		;7a0e
	rlc c			;7a10
	rlc c			;7a12
	rlc c			;7a14
	ret z			;7a16
	ld bc,001c6h		;7a17
	rlc c			;7a1a
	rlc c			;7a1c
	rst 0			;7a1e
	ld bc,001c7h		;7a1f
	rlc c			;7a22
	rlc c			;7a24
	rlc c			;7a26
	rlc c			;7a28
	rlc c			;7a2a
	ld h,d			;7a2c
	ld bc,0015bh		;7a2d
	ld h,e			;7a30
	ld bc,00164h		;7a31
	ld h,l			;7a34
	ld bc,00224h		;7a35
	dec h			;7a38
	ld (bc),a		;7a39
	rrca			;7a3a
	inc bc			;7a3b
	rrca			;7a3c
	inc bc			;7a3d
	rrca			;7a3e
	inc bc			;7a3f
	rst 38h			;7a40
	inc b			;7a41
	rst 38h			;7a42
	inc b			;7a43
	rlc c			;7a44
	rst 0			;7a46
	ld bc,001cbh		;7a47
	rlc c			;7a4a
	rlc c			;7a4c
	rlc c			;7a4e
	rlc c			;7a50
	add a,001h		;7a52
	rlc c			;7a54
	add a,001h		;7a56
	rlc c			;7a58
	rlc c			;7a5a
	rst 0			;7a5c
	ld bc,001cbh		;7a5d
	rlc c			;7a60
	rlc c			;7a62
	rlc c			;7a64
	add a,001h		;7a66
	jp z,0cb01h		;7a68
	ld bc,0017eh		;7a6b
	ld h,002h		;7a6e
	daa			;7a70
	ld (bc),a		;7a71
	jr z,l7a76h		;7a72
	add hl,hl		;7a74
	ld (bc),a		;7a75
l7a76h:
	ld hl,(00f02h)		;7a76
	inc bc			;7a79
	rrca			;7a7a
	inc bc			;7a7b
	rrca			;7a7c
	inc bc			;7a7d
	rrca			;7a7e
	inc bc			;7a7f
	rst 38h			;7a80
	inc b			;7a81
	rst 38h			;7a82
	inc b			;7a83
	ret z			;7a84
	ld bc,001cbh		;7a85
	ret z			;7a88
	ld bc,001c7h		;7a89
	ret z			;7a8c
	ld bc,001c4h		;7a8d
	add a,001h		;7a90
	rst 0			;7a92
	ld bc,001cbh		;7a93
	rlc c			;7a96
	rlc c			;7a98
	ret z			;7a9a
	ld bc,001c6h		;7a9b
	rlc c			;7a9e
	rlc c			;7aa0
	rlc c			;7aa2
	ret z			;7aa4
	ld bc,001cbh		;7aa5
	add a,001h		;7aa8
	rlc c			;7aaa
	dec hl			;7aac
	ld (bc),a		;7aad
	inc l			;7aae
	ld (bc),a		;7aaf
	dec l			;7ab0
	ld (bc),a		;7ab1
	ld l,002h		;7ab2
	cpl			;7ab4
	ld (bc),a		;7ab5
	rrca			;7ab6
	inc bc			;7ab7
	rrca			;7ab8
	inc bc			;7ab9
	rrca			;7aba
	inc bc			;7abb
	rrca			;7abc
	inc bc			;7abd
	rrca			;7abe
	inc bc			;7abf
	rst 38h			;7ac0
	inc b			;7ac1
	rst 38h			;7ac2
	inc b			;7ac3
	jp z,0c601h		;7ac4
	ld bc,001cbh		;7ac7
	rlc c			;7aca
	add a,001h		;7acc
	add a,001h		;7ace
	rst 0			;7ad0
	ld bc,001c6h		;7ad1
	rlc c			;7ad4
	rlc c			;7ad6
	jp z,0c401h		;7ad8
	ld bc,001cbh		;7adb
	rst 0			;7ade
	ld bc,001c7h		;7adf
	add a,001h		;7ae2
	ret			;7ae4
	ld bc,001cbh		;7ae5
	ret z			;7ae8
	ld bc,001c7h		;7ae9
	jr nc,$+4		;7aec
	ld sp,03202h		;7aee
	ld (bc),a		;7af1
	inc sp			;7af2
	ld (bc),a		;7af3
	rrca			;7af4
	inc bc			;7af5
	rrca			;7af6
	inc bc			;7af7
	rrca			;7af8
	inc bc			;7af9
	rrca			;7afa
	inc bc			;7afb
	rrca			;7afc
	inc bc			;7afd
	rrca			;7afe
	inc bc			;7aff
	rst 38h			;7b00
	inc b			;7b01
	rst 38h			;7b02
	inc b			;7b03
	add a,001h		;7b04
	rlc c			;7b06
	call nz,0cb01h		;7b08
	ld bc,001c9h		;7b0b
	jp z,0c801h		;7b0e
	ld bc,001c5h		;7b11
	rlc c			;7b14
	rst 0			;7b16
	ld bc,001c6h		;7b17
	ret z			;7b1a
	ld bc,001cah		;7b1b
	rlc c			;7b1e
	rlc c			;7b20
	push bc			;7b22
	ld bc,001cbh		;7b23
	ret z			;7b26
	ld bc,001cbh		;7b27
	rst 0			;7b2a
	ld bc,00234h		;7b2b
	dec (hl)		;7b2e
	ld (bc),a		;7b2f
	ld (hl),002h		;7b30
	rrca			;7b32
	inc bc			;7b33
	rrca			;7b34
	inc bc			;7b35
	rrca			;7b36
	inc bc			;7b37
	rrca			;7b38
	inc bc			;7b39
	rrca			;7b3a
	inc bc			;7b3b
	rrca			;7b3c
	inc bc			;7b3d
	rrca			;7b3e
	inc bc			;7b3f
	rst 38h			;7b40
	inc b			;7b41
	call z,0cd01h		;7b42
	ld bc,001cch		;7b45
	call 0cc01h		;7b48
	ld bc,001cdh		;7b4b
	call z,0cd01h		;7b4e
	ld bc,001d4h		;7b51
	push de			;7b54
	ld bc,001d6h		;7b55
	rst 10h			;7b58
	ld bc,001cch		;7b59
	call 0cc01h		;7b5c
	ld bc,001cdh		;7b5f
	call z,0cd01h		;7b62
	ld bc,001cch		;7b65
	call 0df01h		;7b68
	ld (bc),a		;7b6b
	ret po			;7b6c
	ld (bc),a		;7b6d
	pop hl			;7b6e
	ld (bc),a		;7b6f
	jp po,0e302h		;7b70
	ld (bc),a		;7b73
	rst 38h			;7b74
	inc b			;7b75
	rst 38h			;7b76
	inc b			;7b77
	rst 38h			;7b78
	inc b			;7b79
	rst 38h			;7b7a
	inc b			;7b7b
	rst 38h			;7b7c
	inc b			;7b7d
	rst 38h			;7b7e
	inc b			;7b7f
	rst 38h			;7b80
	inc b			;7b81
	adc a,001h		;7b82
	rst 8			;7b84
	ld bc,001ceh		;7b85
	rst 8			;7b88
	ld bc,001ceh		;7b89
	rst 8			;7b8c
	ld bc,001ceh		;7b8d
	rst 8			;7b90
	ld bc,001d4h		;7b91
	push de			;7b94
	ld bc,001d6h		;7b95
	rst 10h			;7b98
	ld bc,001ceh		;7b99
	rst 8			;7b9c
	ld bc,001ceh		;7b9d
	rst 8			;7ba0
	ld bc,001ceh		;7ba1
	rst 8			;7ba4
	ld bc,001ceh		;7ba5
	rst 8			;7ba8
	ld bc,002e4h		;7ba9
	push hl			;7bac
	ld (bc),a		;7bad
	and 002h		;7bae
	rst 20h			;7bb0
	ld (bc),a		;7bb1
	ret pe			;7bb2
	ld (bc),a		;7bb3
	cp 002h			;7bb4
	rst 38h			;7bb6
	ld (bc),a		;7bb7
	nop			;7bb8
	inc bc			;7bb9
	scf			;7bba
	ld (bc),a		;7bbb
	jr c,l7bc0h		;7bbc
	rst 38h			;7bbe
	inc b			;7bbf
l7bc0h:
	rst 38h			;7bc0
	inc b			;7bc1
	ret nc			;7bc2
	ld bc,001d0h		;7bc3
	ret nc			;7bc6
	ld bc,001d0h		;7bc7
	ret nc			;7bca
	ld bc,001d0h		;7bcb
	ret nc			;7bce
	ld bc,001d0h		;7bcf
	call nc,0d501h		;7bd2
	ld bc,001d6h		;7bd5
	rst 10h			;7bd8
	ld bc,001d0h		;7bd9
	ret nc			;7bdc
	ld bc,001d0h		;7bdd
	ret nc			;7be0
	ld bc,001d0h		;7be1
	ret nc			;7be4
	ld bc,001d0h		;7be5
	ret nc			;7be8
	ld bc,0030fh		;7be9
	rrca			;7bec
	inc bc			;7bed
	jp (hl)			;7bee
	ld (bc),a		;7bef
	jp pe,00f02h		;7bf0
	inc bc			;7bf3
	ld bc,00203h		;7bf4
	inc bc			;7bf7
	inc bc			;7bf8
	inc bc			;7bf9
	add hl,sp		;7bfa
	ld (bc),a		;7bfb
	ld a,(03b02h)		;7bfc
	ld (bc),a		;7bff
	rst 38h			;7c00
	inc b			;7c01
	pop de			;7c02
	ld bc,001d2h		;7c03
	pop de			;7c06
	ld bc,001d2h		;7c07
	pop de			;7c0a
	ld bc,001d2h		;7c0b
	pop de			;7c0e
	ld bc,001d2h		;7c0f
	call nc,0d501h		;7c12
	ld bc,001d6h		;7c15
	rst 10h			;7c18
	ld bc,001d1h		;7c19
	jp nc,0d101h		;7c1c
	ld bc,001d2h		;7c1f
	pop de			;7c22
	ld bc,001d2h		;7c23
	pop de			;7c26
	ld bc,001d2h		;7c27
	ex de,hl		;7c2a
	ld (bc),a		;7c2b
	call pe,0ed02h		;7c2c
	ld (bc),a		;7c2f
	xor 002h		;7c30
	rst 28h			;7c32
	ld (bc),a		;7c33
	ret p			;7c34
	ld (bc),a		;7c35
	pop af			;7c36
	ld (bc),a		;7c37
	jp p,00f02h		;7c38
	inc bc			;7c3b
	inc a			;7c3c
	ld (bc),a		;7c3d
	dec a			;7c3e
	ld (bc),a		;7c3f
	rst 38h			;7c40
	inc b			;7c41
	call z,0cd01h		;7c42
	ld bc,001cch		;7c45
	call 0cc01h		;7c48
	ld bc,001cdh		;7c4b
	call z,0cd01h		;7c4e
	ld bc,001d4h		;7c51
	push de			;7c54
	ld bc,001d6h		;7c55
	rst 10h			;7c58
	ld bc,001cch		;7c59
	call 0cc01h		;7c5c
	ld bc,001cdh		;7c5f
	call z,0cd01h		;7c62
	ld bc,001cch		;7c65
	call 0f301h		;7c68
	ld (bc),a		;7c6b
	call p,0f502h		;7c6c
	ld (bc),a		;7c6f
	or 002h			;7c70
	rst 30h			;7c72
	ld (bc),a		;7c73
	ret m			;7c74
	ld (bc),a		;7c75
	ld sp,hl		;7c76
	ld (bc),a		;7c77
	jp m,03e02h		;7c78
	ld (bc),a		;7c7b
	ccf			;7c7c
	ld (bc),a		;7c7d
	ld b,b			;7c7e
	ld (bc),a		;7c7f
	rst 38h			;7c80
	inc b			;7c81
	adc a,001h		;7c82
	rst 8			;7c84
	ld bc,001ceh		;7c85
	rst 8			;7c88
	ld bc,001ceh		;7c89
	rst 8			;7c8c
	ld bc,001ceh		;7c8d
	rst 8			;7c90
	ld bc,001d4h		;7c91
	push de			;7c94
	ld bc,001d6h		;7c95
	rst 10h			;7c98
	ld bc,001ceh		;7c99
	rst 8			;7c9c
	ld bc,001ceh		;7c9d
	rst 8			;7ca0
	ld bc,001ceh		;7ca1
	rst 8			;7ca4
	ld bc,001ceh		;7ca5
	rst 8			;7ca8
	ld bc,0030fh		;7ca9
	rrca			;7cac
	inc bc			;7cad
	rrca			;7cae
	inc bc			;7caf
	rrca			;7cb0
	inc bc			;7cb1
	call m,0fb02h		;7cb2
	ld (bc),a		;7cb5
	defb 0fdh,002h,00fh ;illegal sequence	;7cb6
	inc bc			;7cb9
	ld b,c			;7cba
	ld (bc),a		;7cbb
	ld b,d			;7cbc
	ld (bc),a		;7cbd
	ld b,e			;7cbe
	ld (bc),a		;7cbf
	rst 38h			;7cc0
	inc b			;7cc1
	out (001h),a		;7cc2
	out (001h),a		;7cc4
	out (001h),a		;7cc6
	out (001h),a		;7cc8
	out (001h),a		;7cca
	out (001h),a		;7ccc
	out (001h),a		;7cce
	out (001h),a		;7cd0
	call nc,0d501h		;7cd2
	ld bc,001d6h		;7cd5
	rst 10h			;7cd8
	ld bc,001d3h		;7cd9
	out (001h),a		;7cdc
	out (001h),a		;7cde
	out (001h),a		;7ce0
	out (001h),a		;7ce2
	out (001h),a		;7ce4
	out (001h),a		;7ce6
	out (001h),a		;7ce8
	rst 38h			;7cea
	inc b			;7ceb
	rst 38h			;7cec
	inc b			;7ced
	rst 38h			;7cee
	inc b			;7cef
	rst 38h			;7cf0
	inc b			;7cf1
	rst 38h			;7cf2
	inc b			;7cf3
	rst 38h			;7cf4
	inc b			;7cf5
	rst 38h			;7cf6
	inc b			;7cf7
	rst 38h			;7cf8
	inc b			;7cf9
	rst 38h			;7cfa
	inc b			;7cfb
	rst 38h			;7cfc
	inc b			;7cfd
	rst 38h			;7cfe
	inc b			;7cff
	rst 38h			;7d00
	inc b			;7d01
	rst 38h			;7d02
	inc b			;7d03
	rst 38h			;7d04
	inc b			;7d05
	rst 38h			;7d06
	inc b			;7d07
	rst 38h			;7d08
	inc b			;7d09
	rst 38h			;7d0a
	inc b			;7d0b
	rst 38h			;7d0c
	inc b			;7d0d
	rst 38h			;7d0e
	inc b			;7d0f
	rst 38h			;7d10
	inc b			;7d11
	rst 38h			;7d12
	inc b			;7d13
	rst 38h			;7d14
	inc b			;7d15
	rst 38h			;7d16
	inc b			;7d17
	rst 38h			;7d18
	inc b			;7d19
	rst 38h			;7d1a
	inc b			;7d1b
	rst 38h			;7d1c
	inc b			;7d1d
	rst 38h			;7d1e
	inc b			;7d1f
	rst 38h			;7d20
	inc b			;7d21
	rst 38h			;7d22
	inc b			;7d23
	rst 38h			;7d24
	inc b			;7d25
	rst 38h			;7d26
	inc b			;7d27
	rst 38h			;7d28
	inc b			;7d29
	di			;7d2a
	ld bc,001f4h		;7d2b
	push af			;7d2e
	ld bc,001f6h		;7d2f
	rst 30h			;7d32
	ld bc,001f8h		;7d33
	rst 38h			;7d36
	inc b			;7d37
	inc bc			;7d38
	ld (bc),a		;7d39
	inc b			;7d3a
	ld (bc),a		;7d3b
	rst 38h			;7d3c
	inc b			;7d3d
	dec b			;7d3e
	ld (bc),a		;7d3f
	rst 38h			;7d40
	inc b			;7d41
	rst 18h			;7d42
	nop			;7d43
	ret po			;7d44
	nop			;7d45
	pop hl			;7d46
	nop			;7d47
	jp po,0e300h		;7d48
	nop			;7d4b
	call po,0e500h		;7d4c
	nop			;7d4f
	and 000h		;7d50
	rst 20h			;7d52
	nop			;7d53
	ret pe			;7d54
	nop			;7d55
	jp (hl)			;7d56
	nop			;7d57
	and 000h		;7d58
	rst 20h			;7d5a
	nop			;7d5b
	jp pe,0eb00h		;7d5c
	nop			;7d5f
	jp (hl)			;7d60
	nop			;7d61
	call pe,0ed00h		;7d62
	nop			;7d65
	xor 000h		;7d66
	rst 28h			;7d68
	nop			;7d69
	ld sp,hl		;7d6a
	ld bc,001fah		;7d6b
	inc c			;7d6e
	ld (bc),a		;7d6f
	ei			;7d70
	ld bc,001fch		;7d71
	inc c			;7d74
	ld (bc),a		;7d75
	rst 38h			;7d76
	inc b			;7d77
	ld b,002h		;7d78
	rst 38h			;7d7a
	inc b			;7d7b
	rlca			;7d7c
	ld (bc),a		;7d7d
	ex af,af'		;7d7e
	ld (bc),a		;7d7f
	rst 38h			;7d80
	inc b			;7d81
	ret p			;7d82
	nop			;7d83
	pop af			;7d84
	nop			;7d85
	jp p,0f300h		;7d86
	nop			;7d89
	call p,0f500h		;7d8a
	nop			;7d8d
	or 000h			;7d8e
	rst 30h			;7d90
	nop			;7d91
	ret m			;7d92
	nop			;7d93
	ld sp,hl		;7d94
	nop			;7d95
	jp m,0fb00h		;7d96
	nop			;7d99
	call m,0fd00h		;7d9a
	nop			;7d9d
	cp 000h			;7d9e
	rst 38h			;7da0
	nop			;7da1
	nop			;7da2
	ld bc,00101h		;7da3
	ld (bc),a		;7da6
	ld bc,00103h		;7da7
	defb 0fdh,001h,0feh ;illegal sequence	;7daa
	ld bc,001ffh		;7dad
	nop			;7db0
	ld (bc),a		;7db1
	rst 38h			;7db2
	inc b			;7db3
	rst 38h			;7db4
	ld bc,004ffh		;7db5
	add hl,bc		;7db8
	ld (bc),a		;7db9
	ld a,(bc)		;7dba
	ld (bc),a		;7dbb
	dec bc			;7dbc
	ld (bc),a		;7dbd
	rst 38h			;7dbe
	inc b			;7dbf
	rst 38h			;7dc0
	inc b			;7dc1
	inc b			;7dc2
	ld bc,00105h		;7dc3
	ld b,001h		;7dc6
	rlca			;7dc8
	ld bc,00108h		;7dc9
	add hl,bc		;7dcc
	ld bc,0010ah		;7dcd
	dec bc			;7dd0
	ld bc,0010ch		;7dd1
	dec c			;7dd4
	ld bc,0010eh		;7dd5
	rrca			;7dd8
	ld bc,00110h		;7dd9
	ld de,01201h		;7ddc
	ld bc,00113h		;7ddf
	inc d			;7de2
	ld bc,00115h		;7de3
	ld d,001h		;7de6
	rla			;7de8
	ld bc,00201h		;7de9
	ld (bc),a		;7dec
	ld (bc),a		;7ded
	rst 38h			;7dee
	inc b			;7def
	rst 38h			;7df0
	inc b			;7df1
	rst 38h			;7df2
	inc b			;7df3
	rst 38h			;7df4
	inc b			;7df5
	rst 38h			;7df6
	inc b			;7df7
	dec c			;7df8
	ld (bc),a		;7df9
	ld b,002h		;7dfa
	ld c,002h		;7dfc
	rrca			;7dfe
	ld (bc),a		;7dff
	rst 38h			;7e00
	inc b			;7e01
	jr l7e05h		;7e02
	add hl,de		;7e04
l7e05h:
	ld bc,0011ah		;7e05
	dec de			;7e08
	ld bc,0011ch		;7e09
	dec e			;7e0c
	ld bc,0011eh		;7e0d
	rra			;7e10
	ld bc,0011fh		;7e11
	jr nz,$+3		;7e14
	ld hl,02201h		;7e16
	ld bc,00123h		;7e19
	inc h			;7e1c
	ld bc,00125h		;7e1d
	ld h,001h		;7e20
	daa			;7e22
	ld bc,00128h		;7e23
	add hl,hl		;7e26
	ld bc,0012ah		;7e27
	rst 38h			;7e2a
	inc b			;7e2b
	rst 38h			;7e2c
	inc b			;7e2d
	rst 38h			;7e2e
	inc b			;7e2f
	rst 38h			;7e30
	inc b			;7e31
	rst 38h			;7e32
	inc b			;7e33
	rst 38h			;7e34
	inc b			;7e35
	rst 38h			;7e36
	inc b			;7e37
	rst 38h			;7e38
	inc b			;7e39
	rst 38h			;7e3a
	inc b			;7e3b
	djnz $+4		;7e3c
	ld de,0ff02h		;7e3e
	inc b			;7e41
	dec hl			;7e42
	ld bc,0012ch		;7e43
	dec l			;7e46
	ld bc,0012eh		;7e47
	cpl			;7e4a
	ld bc,00130h		;7e4b
	ld sp,03201h		;7e4e
	ld bc,00133h		;7e51
	inc (hl)		;7e54
	ld bc,00135h		;7e55
	ld (hl),001h		;7e58
	scf			;7e5a
	ld bc,00138h		;7e5b
	add hl,sp		;7e5e
	ld bc,0013ah		;7e5f
	dec sp			;7e62
	ld bc,0013ch		;7e63
	dec a			;7e66
	ld bc,0013eh		;7e67
	rst 38h			;7e6a
	inc b			;7e6b
	rst 38h			;7e6c
	inc b			;7e6d
	rst 38h			;7e6e
	inc b			;7e6f
	rst 38h			;7e70
	inc b			;7e71
	rst 38h			;7e72
	inc b			;7e73
	rst 38h			;7e74
	inc b			;7e75
	rst 38h			;7e76
	inc b			;7e77
	rst 38h			;7e78
	inc b			;7e79
	rst 38h			;7e7a
	inc b			;7e7b
	rst 38h			;7e7c
	inc b			;7e7d
	rst 38h			;7e7e
	inc b			;7e7f
	rst 38h			;7e80
	inc b			;7e81
	ccf			;7e82
	ld bc,00140h		;7e83
	ld b,c			;7e86
	ld bc,00142h		;7e87
	ld b,e			;7e8a
	ld bc,00144h		;7e8b
	ld b,l			;7e8e
	ld bc,00146h		;7e8f
	ld b,a			;7e92
	ld bc,00148h		;7e93
	ld c,c			;7e96
	ld bc,0014ah		;7e97
	ld c,e			;7e9a
	ld bc,0014ch		;7e9b
	ld c,l			;7e9e
	ld bc,0014eh		;7e9f
	ld c,a			;7ea2
	ld bc,00150h		;7ea3
	ld d,b			;7ea6
	ld bc,00149h		;7ea7
	rst 38h			;7eaa
	inc b			;7eab
	rst 38h			;7eac
	inc b			;7ead
	rst 38h			;7eae
	inc b			;7eaf
	rst 38h			;7eb0
	inc b			;7eb1
	rst 38h			;7eb2
	inc b			;7eb3
	rst 38h			;7eb4
	inc b			;7eb5
	rst 38h			;7eb6
	inc b			;7eb7
	rst 38h			;7eb8
	inc b			;7eb9
	rst 38h			;7eba
	inc b			;7ebb
	rst 38h			;7ebc
	inc b			;7ebd
	rst 38h			;7ebe
	inc b			;7ebf
	rst 38h			;7ec0
	inc b			;7ec1
	ld d,d			;7ec2
	ld bc,00153h		;7ec3
	ld d,h			;7ec6
	ld bc,00155h		;7ec7
	ld d,(hl)		;7eca
	ld bc,00157h		;7ecb
	ld e,b			;7ece
	ld bc,00159h		;7ecf
	ld e,d			;7ed2
	ld bc,0015bh		;7ed3
	ld e,e			;7ed6
	ld bc,0015bh		;7ed7
	ld e,h			;7eda
	ld bc,0015dh		;7edb
	ld e,(hl)		;7ede
	ld bc,0015fh		;7edf
	ld h,b			;7ee2
	ld bc,00161h		;7ee3
	ld e,e			;7ee6
	ld bc,0015bh		;7ee7
	rst 38h			;7eea
	inc b			;7eeb
	rst 38h			;7eec
	inc b			;7eed
	rst 38h			;7eee
	inc b			;7eef
	rst 38h			;7ef0
	inc b			;7ef1
	rst 38h			;7ef2
	inc b			;7ef3
	rst 38h			;7ef4
	inc b			;7ef5
	rst 38h			;7ef6
	inc b			;7ef7
	rst 38h			;7ef8
	inc b			;7ef9
	rst 38h			;7efa
	inc b			;7efb
	rst 38h			;7efc
	inc b			;7efd
	rst 38h			;7efe
	inc b			;7eff
	rst 38h			;7f00
	inc b			;7f01
	ld h,d			;7f02
	ld bc,0015bh		;7f03
	ld h,e			;7f06
	ld bc,00164h		;7f07
	ld h,l			;7f0a
	ld bc,00166h		;7f0b
	ld h,a			;7f0e
	ld bc,00168h		;7f0f
	ld l,c			;7f12
	ld bc,0016ah		;7f13
	ld l,e			;7f16
	ld bc,0016ch		;7f17
	ld l,l			;7f1a
	ld bc,0016eh		;7f1b
	ld l,a			;7f1e
	ld bc,00170h		;7f1f
	ld (hl),c		;7f22
	ld bc,00172h		;7f23
	ld (hl),e		;7f26
	ld bc,00174h		;7f27
	rst 38h			;7f2a
	inc b			;7f2b
	rst 38h			;7f2c
	inc b			;7f2d
	rst 38h			;7f2e
	inc b			;7f2f
	rst 38h			;7f30
	inc b			;7f31
	rst 38h			;7f32
	inc b			;7f33
	rst 38h			;7f34
	inc b			;7f35
	rst 38h			;7f36
	inc b			;7f37
	rst 38h			;7f38
	inc b			;7f39
	rst 38h			;7f3a
	inc b			;7f3b
	rst 38h			;7f3c
	inc b			;7f3d
	rst 38h			;7f3e
	inc b			;7f3f
	rst 38h			;7f40
	inc b			;7f41
	ld (hl),l		;7f42
	ld bc,00176h		;7f43
	ld (hl),a		;7f46
	ld bc,00178h		;7f47
	ld a,c			;7f4a
	ld bc,0017ah		;7f4b
	ld a,e			;7f4e
	ld bc,0017ch		;7f4f
	ld a,l			;7f52
	ld bc,0017eh		;7f53
	ld a,a			;7f56
	ld bc,00180h		;7f57
	add a,c			;7f5a
	ld bc,00182h		;7f5b
	add a,e			;7f5e
	ld bc,00179h		;7f5f
	add a,h			;7f62
	ld bc,00185h		;7f63
	add a,(hl)		;7f66
	ld bc,00187h		;7f67
	rst 38h			;7f6a
	inc b			;7f6b
	rst 38h			;7f6c
	inc b			;7f6d
	rst 38h			;7f6e
	inc b			;7f6f
	rst 38h			;7f70
	inc b			;7f71
	rst 38h			;7f72
	inc b			;7f73
	rst 38h			;7f74
	inc b			;7f75
	rst 38h			;7f76
	inc b			;7f77
	rst 38h			;7f78
	inc b			;7f79
	rst 38h			;7f7a
	inc b			;7f7b
	rst 38h			;7f7c
	inc b			;7f7d
	rst 38h			;7f7e
	inc b			;7f7f
	rst 38h			;7f80
	inc b			;7f81
	adc a,b			;7f82
	ld bc,00189h		;7f83
	adc a,e			;7f86
	ld bc,0018ah		;7f87
	adc a,h			;7f8a
	ld bc,0018dh		;7f8b
	adc a,(hl)		;7f8e
	ld bc,0018fh		;7f8f
	sub b			;7f92
	ld bc,00191h		;7f93
	sub d			;7f96
	ld bc,00193h		;7f97
	sub h			;7f9a
	ld bc,00195h		;7f9b
	sub (hl)		;7f9e
	ld bc,00197h		;7f9f
	sbc a,b			;7fa2
	ld bc,00199h		;7fa3
	adc a,a			;7fa6
	ld bc,0019ah		;7fa7
	rst 38h			;7faa
	inc b			;7fab
	rst 38h			;7fac
	inc b			;7fad
	rst 38h			;7fae
	inc b			;7faf
	rst 38h			;7fb0
	inc b			;7fb1
	rst 38h			;7fb2
	inc b			;7fb3
	rst 38h			;7fb4
	inc b			;7fb5
	rst 38h			;7fb6
	inc b			;7fb7
	rst 38h			;7fb8
	inc b			;7fb9
	rst 38h			;7fba
	inc b			;7fbb
	rst 38h			;7fbc
	inc b			;7fbd
	rst 38h			;7fbe
	inc b			;7fbf
	rst 38h			;7fc0
	inc b			;7fc1
	sbc a,e			;7fc2
	ld bc,0019ch		;7fc3
	sbc a,l			;7fc6
	ld bc,0019eh		;7fc7
	sbc a,a			;7fca
	ld bc,001a0h		;7fcb
	and c			;7fce
	ld bc,001a2h		;7fcf
	and e			;7fd2
	ld bc,001a4h		;7fd3
	and l			;7fd6
	ld bc,001a6h		;7fd7
	and a			;7fda
	ld bc,001a8h		;7fdb
	xor c			;7fde
	ld bc,001aah		;7fdf
	xor e			;7fe2
	ld bc,001ach		;7fe3
	xor l			;7fe6
	ld bc,001aeh		;7fe7
	rst 38h			;7fea
	inc b			;7feb
	rst 38h			;7fec
	inc b			;7fed
	rst 38h			;7fee
	inc b			;7fef
	rst 38h			;7ff0
	inc b			;7ff1
	rst 38h			;7ff2
	inc b			;7ff3
	rst 38h			;7ff4
	inc b			;7ff5
	rst 38h			;7ff6
	inc b			;7ff7
	rst 38h			;7ff8
	inc b			;7ff9
	rst 38h			;7ffa
	inc b			;7ffb
	rst 38h			;7ffc
	inc b			;7ffd
	rst 38h			;7ffe
	inc b			;7fff

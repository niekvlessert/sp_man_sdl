; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank27_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank27.bin

	org 06000h

	rst 38h			;6000
	dec de			;6001
	rst 38h			;6002
	nop			;6003
	rst 38h			;6004
	ld de,04000h		;6005
	ld bc,01311h		;6008
	rla			;600b
	dec de			;600c
	ld (bc),a		;600d
	inc l			;600e
	ld l,030h		;600f
	ld (00334h),a		;6011
	dec l			;6014
	cpl			;6015
	ld sp,03533h		;6016
	ld (bc),a		;6019
	ld bc,01e1ch		;601a
	jr nz,$+36		;601d
	inc bc			;601f
	ld bc,01f1dh		;6020
	ld hl,00223h		;6023
	ld (hl),038h		;6026
	ld a,(00d3ch)		;6028
	inc bc			;602b
	scf			;602c
	add hl,sp		;602d
	dec sp			;602e
	dec a			;602f
	ld c,002h		;6030
	ld bc,01814h		;6032
	ld d,01ah		;6035
	inc bc			;6037
	inc l			;6038
	ld l,030h		;6039
	ld (00234h),a		;603b
	dec l			;603e
	cpl			;603f
	ld sp,03533h		;6040
	inc bc			;6043
	ld bc,02a24h		;6044
	jr z,l606bh		;6047
	ld (bc),a		;6049
	ld bc,02b25h		;604a
	add hl,hl		;604d
	inc hl			;604e
	inc bc			;604f
	ld (hl),038h		;6050
	ld a,(00d3ch)		;6052
	ld (bc),a		;6055
	scf			;6056
	add hl,sp		;6057
	dec sp			;6058
	dec a			;6059
	ld c,003h		;605a
	ld bc,01210h		;605c
	ld d,01bh		;605f
	ld (bc),a		;6061
	ld bc,01311h		;6062
	rla			;6065
	dec de			;6066
	inc bc			;6067
	inc c			;6068
	ld b,005h		;6069
l606bh:
	ld b,008h		;606b
	ld (bc),a		;606d
	ld bc,01814h		;606e
	ld d,01ah		;6071
	inc bc			;6073
	ld bc,01915h		;6074
	rla			;6077
	dec de			;6078
	ld (bc),a		;6079
	inc l			;607a
	ld l,030h		;607b
	ld (00334h),a		;607d
	dec l			;6080
	cpl			;6081
	ld sp,03533h		;6082
	ld (bc),a		;6085
	ld bc,02624h		;6086
	jr z,$+36		;6089
	inc bc			;608b
	ld bc,02725h		;608c
	add hl,hl		;608f
	inc hl			;6090
	ld (bc),a		;6091
	ld (hl),038h		;6092
	ld a,(00d3ch)		;6094
	inc bc			;6097
	scf			;6098
	add hl,sp		;6099
	dec sp			;609a
	dec a			;609b
	ld c,002h		;609c
	ld bc,00f15h		;609e
	ld d,01ah		;60a1
	inc bc			;60a3
	inc l			;60a4
	ld l,030h		;60a5
	ld (00234h),a		;60a7
	dec l			;60aa
	cpl			;60ab
	ld sp,03533h		;60ac
	inc bc			;60af
	ld bc,01e1ch		;60b0
	jr nz,$+36		;60b3
	ld (bc),a		;60b5
	ld bc,01f1dh		;60b6
	ld hl,00323h		;60b9
	ld (hl),038h		;60bc
	ld a,(00d3ch)		;60be
	ld (bc),a		;60c1
	scf			;60c2
	add hl,sp		;60c3
	dec sp			;60c4
	dec a			;60c5
	ld c,003h		;60c6
	ld bc,01915h		;60c8
	ld d,01ah		;60cb
	ld (bc),a		;60cd
	inc l			;60ce
	ld l,030h		;60cf
	ld (00334h),a		;60d1
	dec l			;60d4
	cpl			;60d5
	ld sp,03533h		;60d6
	ld (bc),a		;60d9
	ld bc,02e2ch		;60da
	jr nc,$+54		;60dd
	inc bc			;60df
	ld bc,02f2dh		;60e0
	ld sp,00235h		;60e3
	ld bc,00901h		;60e6
	ld a,(bc)		;60e9
	dec bc			;60ea
	and (hl)		;60eb
	ld bc,00101h		;60ec
	ld bc,0a501h		;60ef
	ld bc,00101h		;60f2
	ld bc,0a701h		;60f5
	rst 38h			;60f8
	inc e			;60f9
	ld a,(0ffa4h)		;60fa
	ld de,04000h		;60fd
	rst 38h			;6100
	nop			;6101
	ld bc,00101h		;6102
	ld bc,0a501h		;6105
	ld bc,00101h		;6108
	ld bc,0a701h		;610b
	ld bc,00101h		;610e
	ld bc,0a501h		;6111
	ld bc,00101h		;6114
	ld bc,0a701h		;6117
	ld bc,00101h		;611a
	ld bc,0a501h		;611d
	ld bc,00101h		;6120
	ld bc,0a701h		;6123
	ld bc,00101h		;6126
	ld bc,0a501h		;6129
	rst 38h			;612c
	inc de			;612d
	ld a,(001a4h)		;612e
	ld bc,00101h		;6131
	ld bc,0ffa7h		;6134
	ld a,(de)		;6137
	rst 38h			;6138
	rla			;6139
	ld bc,011ffh		;613a
	dec b			;613d
	jr c,$+3		;613e
	ld bc,05901h		;6140
	ld a,0a5h		;6143
	ld bc,05801h		;6145
	ld e,d			;6148
	ccf			;6149
	ld b,l			;614a
	ld bc,00101h		;614b
	ld d,l			;614e
	ld b,b			;614f
	ld b,(hl)		;6150
	ld bc,00101h		;6151
	ld d,(hl)		;6154
	ld b,c			;6155
	ld b,a			;6156
	ld bc,05701h		;6157
	ld e,e			;615a
	ld b,h			;615b
	ld c,b			;615c
	ld bc,00101h		;615d
	ld e,(hl)		;6160
	ld d,b			;6161
	and a			;6162
	ld bc,00101h		;6163
	ld e,a			;6166
	ld d,c			;6167
	and l			;6168
	ld bc,l6888h		;6169
	ld l,(hl)		;616c
	ld c,c			;616d
	ld b,l			;616e
	ld bc,0a889h		;616f
	ld l,a			;6172
	ld b,b			;6173
	ld b,(hl)		;6174
	ld bc,0a98ah		;6175
	ld l,h			;6178
	ld b,c			;6179
	ld b,a			;617a
	ld bc,00101h		;617b
	ld l,l			;617e
	ld b,h			;617f
	ld c,b			;6180
	ld bc,00101h		;6181
	ld h,c			;6184
	ld c,l			;6185
	and a			;6186
	ld bc,00101h		;6187
	ld bc,0a54eh		;618a
	ld bc,00101h		;618d
	ld bc,0a74ch		;6190
	ld bc,00101h		;6193
	ld bc,0a54fh		;6196
	ld bc,00101h		;6199
	ld bc,0a74eh		;619c
	ld bc,00101h		;619f
	ld bc,0a54fh		;61a2
	ld bc,00101h		;61a5
	ld (hl),b		;61a8
	ld d,e			;61a9
	and a			;61aa
	ld bc,00101h		;61ab
	ld h,d			;61ae
	ld d,h			;61af
	and l			;61b0
	ld bc,00101h		;61b1
	ld bc,0a74fh		;61b4
	ld bc,00101h		;61b7
	ld bc,0a54eh		;61ba
	ld bc,00101h		;61bd
	ld bc,0a74fh		;61c0
	ld bc,00101h		;61c3
	ld (hl),b		;61c6
	ld d,e			;61c7
	and a			;61c8
	ld bc,00101h		;61c9
	xor l			;61cc
	xor h			;61cd
	and l			;61ce
	ld bc,00101h		;61cf
	ld bc,0a74fh		;61d2
	ld bc,00101h		;61d5
	ld bc,0a54fh		;61d8
	ld bc,00101h		;61db
	xor d			;61de
	xor e			;61df
	and a			;61e0
	ld bc,00101h		;61e1
	xor l			;61e4
	xor h			;61e5
	and l			;61e6
	ld bc,00101h		;61e7
	ld bc,0a74fh		;61ea
	ld bc,00101h		;61ed
	ld bc,0a54eh		;61f0
	ld bc,00101h		;61f3
	ld bc,0a74fh		;61f6
	ld bc,00101h		;61f9
	ld (hl),b		;61fc
	ld d,e			;61fd
	and l			;61fe
	ld bc,00101h		;61ff
	ld e,h			;6202
	ld b,d			;6203
	ld b,l			;6204
	ld bc,00101h		;6205
	ld e,l			;6208
	ld b,e			;6209
	ld b,(hl)		;620a
	ld bc,l6301h		;620b
	ld h,a			;620e
	ld b,c			;620f
	ld b,a			;6210
	ld bc,06401h		;6211
	ld l,e			;6214
	ld b,h			;6215
	ld c,b			;6216
	ld bc,l6888h		;6217
	ld l,a			;621a
	ld c,e			;621b
	and a			;621c
	ld bc,l6989h		;621d
	ld l,h			;6220
	ld c,d			;6221
	and l			;6222
	ld bc,l6a8ah		;6223
	ld l,l			;6226
	ld c,c			;6227
	ld b,l			;6228
	ld bc,00101h		;6229
	ld d,l			;622c
	ld b,b			;622d
	ld b,(hl)		;622e
	ld bc,00101h		;622f
	ld h,(hl)		;6232
	ld b,c			;6233
	ld b,a			;6234
	ld bc,00101h		;6235
	ld (hl),c		;6238
	ld b,h			;6239
	ld c,b			;623a
	ld bc,00101h		;623b
	ld h,d			;623e
	ld d,h			;623f
	and a			;6240
	ld bc,00101h		;6241
	ld bc,0a54fh		;6244
	ld bc,00101h		;6247
	ld bc,0a74ch		;624a
	ld bc,00101h		;624d
	ld (hl),b		;6250
	ld d,e			;6251
	and l			;6252
	ld bc,00101h		;6253
	ld h,d			;6256
	ld d,h			;6257
	and l			;6258
	ld bc,00101h		;6259
	ld bc,0a552h		;625c
	rst 38h			;625f
	rra			;6260
	dec b			;6261
	rst 38h			;6262
	ld (de),a		;6263
	ld bc,00101h		;6264
	ld bc,0a74fh		;6267
	ld bc,00101h		;626a
	ld (hl),b		;626d
	ld d,e			;626e
	and l			;626f
	ld bc,00101h		;6270
	ld h,b			;6273
	ld c,c			;6274
	ld b,l			;6275
	ld bc,00101h		;6276
	ld d,l			;6279
	ld b,b			;627a
	ld b,(hl)		;627b
	ld bc,00101h		;627c
	ld d,(hl)		;627f
	ld b,c			;6280
	ld b,a			;6281
	ld bc,05701h		;6282
	ld e,e			;6285
	ld b,h			;6286
	ld c,b			;6287
	ld bc,00101h		;6288
	ld e,a			;628b
	ld c,e			;628c
	and a			;628d
	ld bc,0018bh		;628e
	ld l,(hl)		;6291
	ld c,d			;6292
	and l			;6293
	ld bc,l728bh+1		;6294
	ld l,a			;6297
	ld c,c			;6298
	ld b,l			;6299
	ld bc,l738dh		;629a
	ld l,h			;629d
	ld b,b			;629e
	ld b,(hl)		;629f
	ld a,d			;62a0
	adc a,(hl)		;62a1
	ld (hl),l		;62a2
	ld l,a			;62a3
	ld b,c			;62a4
	nop			;62a5
	ld a,e			;62a6
	adc a,a			;62a7
	ld h,l			;62a8
	ld l,h			;62a9
	nop			;62aa
	nop			;62ab
	ld a,h			;62ac
	adc a,a			;62ad
	ld h,l			;62ae
	nop			;62af
	nop			;62b0
	nop			;62b1
	ld a,h			;62b2
	adc a,a			;62b3
	nop			;62b4
	nop			;62b5
	nop			;62b6
	nop			;62b7
	ld a,h			;62b8
	nop			;62b9
	nop			;62ba
	nop			;62bb
	nop			;62bc
	nop			;62bd
	cp 0ffh			;62be
	ld de,03801h		;62c0
	rst 38h			;62c3
	inc b			;62c4
	rst 38h			;62c5
	dec de			;62c6
	ld bc,00101h		;62c7
	ld bc,00101h		;62ca
	ld bc,l7601h		;62cd
	ld (hl),a		;62d0
	ld a,b			;62d1
	ld a,c			;62d2
	ld a,(hl)		;62d3
	ld a,a			;62d4
	ld a,l			;62d5
	ld bc,00101h		;62d6
	ld bc,00101h		;62d9
	ld bc,00101h		;62dc
	add a,h			;62df
	add a,l			;62e0
	add a,l			;62e1
	add a,l			;62e2
	sub b			;62e3
	add a,l			;62e4
	rst 38h			;62e5
	ld de,03802h		;62e6
	ld bc,00101h		;62e9
	ld bc,00101h		;62ec
	ld bc,00101h		;62ef
	ld bc,00101h		;62f2
	ld bc,00101h		;62f5
	ld bc,00101h		;62f8
	ld bc,00101h		;62fb
	ld bc,00101h		;62fe
l6301h:
	ld bc,00101h		;6301
	ld bc,00101h		;6304
	rst 38h			;6307
	ld de,03803h		;6308
	ld bc,00101h		;630b
	ld bc,00101h		;630e
	ld bc,00101h		;6311
	ld bc,00101h		;6314
	ld bc,00101h		;6317
	ld bc,00101h		;631a
	ld bc,00101h		;631d
	ld bc,00101h		;6320
	ld bc,00101h		;6323
	ld bc,00101h		;6326
	rst 38h			;6329
	dec de			;632a
	rst 38h			;632b
	rla			;632c
	ld bc,000ffh		;632d
	rst 38h			;6330
	ld de,03804h		;6331
	rst 38h			;6334
	dec e			;6335
	ld bc,00101h		;6336
l6339h:
	ld bc,l7d90h		;6339
	ld bc,00101h		;633c
	ld bc,07985h		;633f
	ld bc,00101h		;6342
	ld bc,l7d91h		;6345
	ld bc,00101h		;6348
	ld bc,l7e85h		;634b
	ld bc,00101h		;634e
	ld bc,l7f86h		;6351
	ld bc,09401h		;6354
	sbc a,b			;6357
	sbc a,h			;6358
	add a,b			;6359
	ld bc,09501h		;635a
	sbc a,c			;635d
	sbc a,l			;635e
	add a,c			;635f
	ld bc,09601h		;6360
	sbc a,d			;6363
	sbc a,(hl)		;6364
	add a,d			;6365
	ld bc,09701h		;6366
	sbc a,e			;6369
	sbc a,a			;636a
	add a,e			;636b
	ld bc,00101h		;636c
	ld bc,l7e87h		;636f
	ld bc,00101h		;6372
	ld bc,l7f86h		;6375
	ld bc,00101h		;6378
	ld bc,080a0h		;637b
	ld bc,00101h		;637e
	ld bc,081a1h		;6381
	ld bc,00101h		;6384
	ld bc,082a2h		;6387
	ld bc,00101h		;638a
	ld bc,083a3h		;638d
	rst 38h			;6390
	djnz l6339h		;6391
	and e			;6393
	ld bc,00101h		;6394
	ld bc,09392h		;6397
	ld bc,00101h		;639a
	ld bc,0a401h		;639d
	ld bc,00101h		;63a0
	ld bc,09201h		;63a3
	rst 38h			;63a6
	jr $+1			;63a7
	dec de			;63a9
	rst 38h			;63aa
	rla			;63ab
	ld bc,00bffh		;63ac
	rst 38h			;63af
	add hl,de		;63b0
	nop			;63b1
	ld bc,00101h		;63b2
	ld bc,00101h		;63b5
	ld bc,00101h		;63b8
	ld bc,00101h		;63bb
	ld bc,00101h		;63be
	rst 38h			;63c1
	inc de			;63c2
	ld c,l			;63c3
	and h			;63c4
	ld bc,00101h		;63c5
	ld bc,00101h		;63c8
	ld bc,00101h		;63cb
	ld bc,00101h		;63ce
	ld bc,00101h		;63d1
	rst 38h			;63d4
	ld de,0b805h		;63d5
	ld bc,00101h		;63d8
	ld bc,00101h		;63db
	ld bc,00101h		;63de
	ld bc,00101h		;63e1
	ld bc,00101h		;63e4
	ld bc,00101h		;63e7
	ld bc,00101h		;63ea
	ld bc,00101h		;63ed
	ld bc,00101h		;63f0
	ld bc,00101h		;63f3
	ld bc,00101h		;63f6
	ld bc,00101h		;63f9
	ld bc,00101h		;63fc
	ld bc,00101h		;63ff
	ld bc,00101h		;6402
	ld bc,00101h		;6405
	ld bc,00101h		;6408
	ld bc,00101h		;640b
	ld bc,00101h		;640e
	ld bc,00101h		;6411
	rst 38h			;6414
	rla			;6415
	ld (bc),a		;6416
	rst 38h			;6417
	nop			;6418
	ld bc,00101h		;6419
	ld bc,00101h		;641c
l641fh:
	ld bc,00101h		;641f
	ld bc,00101h		;6422
	ld bc,00101h		;6425
	ld bc,00101h		;6428
	ld bc,00101h		;642b
	ld bc,00101h		;642e
	rst 38h			;6431
	ld de,00806h		;6432
	cp 0ffh			;6435
	ld e,0ffh		;6437
	ld d,014h		;6439
	ld bc,01030h		;643b
	ld d,b			;643e
	ld hl,03470h		;643f
	dec h			;6442
	ld b,d			;6443
	ld (04752h),hl		;6444
	sub h			;6447
	ld b,a			;6448
	or (hl)			;6449
	ld h,0c3h		;644a
	cp 000h			;644c
	nop			;644e
	inc bc			;644f
	ld de,02214h		;6450
	dec h			;6453
	inc sp			;6454
	ld b,a			;6455
	ld b,l			;6456
	ld (l7152h),hl		;6457
	sub e			;645a
	ld (hl),e		;645b
	or l			;645c
	jr nc,l641fh		;645d
	cp 0feh			;645f
	rst 38h			;6461
	dec de			;6462
	rst 38h			;6463
	nop			;6464
	dec b			;6465
	ld c,(hl)		;6466
	ld c,d			;6467
	ld d,h			;6468
	dec b			;6469
	ld h,004h		;646a
	ld c,a			;646c
	ld c,c			;646d
	ld d,l			;646e
	inc b			;646f
	daa			;6470
	dec b			;6471
	ld d,c			;6472
	ld c,d			;6473
	ld d,(hl)		;6474
	dec b			;6475
	ld h,004h		;6476
	ld d,d			;6478
	ld c,d			;6479
	ld d,e			;647a
	inc b			;647b
	daa			;647c
	dec b			;647d
	ld c,(hl)		;647e
	ld c,d			;647f
	ld d,h			;6480
	dec b			;6481
	ld h,004h		;6482
	ld c,a			;6484
	ld c,c			;6485
	ld d,l			;6486
	inc b			;6487
	daa			;6488
	dec b			;6489
	ld d,c			;648a
	ld c,d			;648b
	ld d,(hl)		;648c
	dec b			;648d
	ld h,004h		;648e
	ld d,d			;6490
	ld c,d			;6491
	ld d,e			;6492
	inc b			;6493
	daa			;6494
	inc b			;6495
	ld c,(hl)		;6496
	ld c,d			;6497
	ld d,h			;6498
	inc b			;6499
	ld hl,(04f05h)		;649a
	ld c,c			;649d
	ld d,l			;649e
	inc b			;649f
	daa			;64a0
	inc b			;64a1
	ld d,c			;64a2
	ld c,d			;64a3
	ld d,(hl)		;64a4
	dec b			;64a5
	ld h,005h		;64a6
	ld d,d			;64a8
	ld c,d			;64a9
	ld d,e			;64aa
	inc b			;64ab
	daa			;64ac
	inc b			;64ad
	ld c,(hl)		;64ae
	ld c,d			;64af
	ld d,h			;64b0
	inc e			;64b1
	ld hl,(04f05h)		;64b2
	ld c,c			;64b5
	ld d,l			;64b6
	inc b			;64b7
	daa			;64b8
	inc b			;64b9
	ld d,c			;64ba
	ld c,d			;64bb
	ld d,(hl)		;64bc
	dec b			;64bd
	ld h,005h		;64be
	ld d,d			;64c0
	ld c,d			;64c1
	ld d,e			;64c2
	inc b			;64c3
	daa			;64c4
	ld (de),a		;64c5
	ld c,(hl)		;64c6
	ld c,d			;64c7
	ld d,h			;64c8
	inc b			;64c9
	daa			;64ca
	ld (bc),a		;64cb
	ld b,049h		;64cc
	ld d,l			;64ce
	dec b			;64cf
	inc e			;64d0
	inc bc			;64d1
	rlca			;64d2
	ld c,d			;64d3
	ld d,(hl)		;64d4
	inc b			;64d5
	ld h,02ah		;64d6
	ld d,d			;64d8
	ld c,d			;64d9
	ld d,e			;64da
	dec b			;64db
	daa			;64dc
	add hl,hl		;64dd
	ld c,(hl)		;64de
	ld c,d			;64df
	ld d,h			;64e0
	inc e			;64e1
	ld hl,(04f2ah)		;64e2
	ld c,c			;64e5
	ld d,l			;64e6
	ld h,01ch		;64e7
	inc bc			;64e9
	rlca			;64ea
	ld c,d			;64eb
	ld d,(hl)		;64ec
	inc b			;64ed
	ld h,02ah		;64ee
	inc c			;64f0
	ld c,d			;64f1
	ld d,e			;64f2
	dec b			;64f3
	daa			;64f4
	rrca			;64f5
	ld c,(hl)		;64f6
	ld c,d			;64f7
	ld d,h			;64f8
	inc b			;64f9
	ld h,001h		;64fa
	ld c,a			;64fc
	ld c,c			;64fd
	ld d,l			;64fe
	add hl,hl		;64ff
	inc e			;6500
	ld (bc),a		;6501
	ld b,04ah		;6502
	ld d,(hl)		;6504
	add hl,hl		;6505
	inc e			;6506
	inc de			;6507
	dec c			;6508
	ld c,d			;6509
	ld d,e			;650a
	dec b			;650b
	daa			;650c
	rrca			;650d
	ld c,(hl)		;650e
	ld c,d			;650f
	ld d,h			;6510
	inc b			;6511
	ld h,001h		;6512
	ld c,a			;6514
	ld c,c			;6515
	ld d,l			;6516
	dec b			;6517
	daa			;6518
	ld (de),a		;6519
	ld d,c			;651a
	ld c,d			;651b
	ld d,(hl)		;651c
	inc b			;651d
	ld h,001h		;651e
	ld d,d			;6520
	ld c,d			;6521
	ld d,e			;6522
	dec b			;6523
	daa			;6524
	ld (de),a		;6525
	ld c,(hl)		;6526
	ld c,d			;6527
	ld d,h			;6528
	inc b			;6529
	ld h,001h		;652a
	ld c,a			;652c
	ld c,c			;652d
	ld d,l			;652e
	dec b			;652f
	daa			;6530
	ld (de),a		;6531
	ld d,c			;6532
	ld c,d			;6533
	ld d,(hl)		;6534
	inc b			;6535
	ld h,002h		;6536
	ld c,(hl)		;6538
	ld c,d			;6539
	ld d,e			;653a
	dec b			;653b
	daa			;653c
	ld hl,(04a4dh)		;653d
	ld d,h			;6540
	dec b			;6541
	ld hl,(04d2ah)		;6542
	ld c,d			;6545
	ld d,e			;6546
	nop			;6547
	ld hl,(05110h)		;6548
	ld c,c			;654b
	ld d,(hl)		;654c
	inc b			;654d
	add hl,sp		;654e
	rst 38h			;654f
	nop			;6550
	rst 38h			;6551
	ld (de),a		;6552
	ld de,04a52h		;6553
	ld d,e			;6556
	dec b			;6557
	dec sp			;6558
	ld (de),a		;6559
	ld c,(hl)		;655a
	ld c,d			;655b
	ld d,h			;655c
	rla			;655d
	inc sp			;655e
	ld (bc),a		;655f
	ld b,049h		;6560
	ld d,l			;6562
	dec (hl)		;6563
	ld (hl),013h		;6564
	dec c			;6566
	ld c,d			;6567
	ld d,(hl)		;6568
	inc b			;6569
	dec (hl)		;656a
	dec d			;656b
	ld d,c			;656c
	ld c,d			;656d
	ld d,e			;656e
	nop			;656f
	dec b			;6570
	ld (de),a		;6571
	ld c,(hl)		;6572
	ld c,d			;6573
	ld d,h			;6574
	dec b			;6575
	inc b			;6576
	inc bc			;6577
	rlca			;6578
	ld c,c			;6579
	ld d,l			;657a
	inc b			;657b
	nop			;657c
	add hl,hl		;657d
	ld hl,(0564ah)		;657e
	nop			;6581
	inc b			;6582
	add hl,hl		;6583
	ld hl,(03129h)		;6584
	scf			;6587
	inc hl			;6588
	inc bc			;6589
	ld hl,(01c29h)		;658a
	add hl,hl		;658d
	inc e			;658e
	nop			;658f
	ld hl,(01c29h)		;6590
	add hl,hl		;6593
	ld hl,(00000h)		;6594
	add hl,hl		;6597
	inc e			;6598
	add hl,hl		;6599
	ld hl,(00000h)		;659a
	nop			;659d
	inc e			;659e
	add hl,hl		;659f
	ld hl,(00000h)		;65a0
	nop			;65a3
	nop			;65a4
	add hl,hl		;65a5
	inc e			;65a6
	nop			;65a7
	nop			;65a8
	nop			;65a9
	nop			;65aa
	nop			;65ab
	inc e			;65ac
	rst 38h			;65ad
	ld a,(de)		;65ae
	rst 38h			;65af
	dec de			;65b0
	rst 38h			;65b1
	ld bc,02929h		;65b2
	jr c,l65bbh		;65b5
	dec b			;65b7
	nop			;65b8
	inc b			;65b9
	dec b			;65ba
l65bbh:
	nop			;65bb
	inc b			;65bc
	nop			;65bd
	inc b			;65be
	inc e			;65bf
	inc e			;65c0
	inc e			;65c1
	inc l			;65c2
	ld hl,(02a2ch)		;65c3
	inc b			;65c6
	dec b			;65c7
	inc b			;65c8
	inc b			;65c9
	nop			;65ca
	inc b			;65cb
	nop			;65cc
	inc l			;65cd
	inc l			;65ce
	inc l			;65cf
	inc l			;65d0
	add hl,hl		;65d1
	add hl,hl		;65d2
	add hl,hl		;65d3
	nop			;65d4
	inc b			;65d5
	ld a,005h		;65d6
	inc b			;65d8
	dec b			;65d9
	inc b			;65da
	inc e			;65db
	inc e			;65dc
	inc e			;65dd
	inc e			;65de
	inc e			;65df
	inc l			;65e0
	inc e			;65e1
	inc l			;65e2
	inc e			;65e3
	dec e			;65e4
	ld c,c			;65e5
	ld c,d			;65e6
	ld c,d			;65e7
	ld c,c			;65e8
	dec hl			;65e9
	dec hl			;65ea
	dec hl			;65eb
	dec hl			;65ec
	dec hl			;65ed
	dec hl			;65ee
	add hl,hl		;65ef
	add hl,hl		;65f0
	inc l			;65f1
	ld e,005h		;65f2
	inc b			;65f4
	nop			;65f5
	inc b			;65f6
	add hl,hl		;65f7
	add hl,hl		;65f8
	add hl,hl		;65f9
	add hl,hl		;65fa
	add hl,hl		;65fb
	add hl,hl		;65fc
	add hl,hl		;65fd
	inc e			;65fe
	inc e			;65ff
	dec e			;6600
	ld c,d			;6601
	ld c,c			;6602
	ld c,d			;6603
	ld c,d			;6604
	ld c,d			;6605
	ld c,c			;6606
	ld c,d			;6607
	dec h			;6608
	jr z,l6630h		;6609
	jr z,l6632h		;660b
	add hl,hl		;660d
	ld e,000h		;660e
	inc b			;6610
	dec b			;6611
	nop			;6612
	inc b			;6613
	dec b			;6614
	inc b			;6615
	dec b			;6616
	inc l			;6617
	inc l			;6618
	inc l			;6619
	inc l			;661a
	ld d,l			;661b
	inc e			;661c
	inc e			;661d
	inc e			;661e
	ld c,h			;661f
	ld c,h			;6620
	ld c,h			;6621
	ld c,h			;6622
	ld c,h			;6623
	ld c,h			;6624
	ld c,h			;6625
	ld hl,(02a2ah)		;6626
	ld d,l			;6629
	ld d,l			;662a
	add hl,hl		;662b
	add hl,hl		;662c
	ld d,c			;662d
	ld d,d			;662e
	rra			;662f
l6630h:
	ld c,a			;6630
	ld d,c			;6631
l6632h:
	ld d,d			;6632
	ld c,(hl)		;6633
	ld d,d			;6634
	ld d,c			;6635
	ld d,d			;6636
	ld d,l			;6637
	ld d,l			;6638
	ld d,l			;6639
	inc e			;663a
	inc e			;663b
	inc e			;663c
	ld e,056h		;663d
	ld d,e			;663f
	ld d,h			;6640
	ld d,e			;6641
	ld d,(hl)		;6642
	ld d,e			;6643
	ld d,(hl)		;6644
	ld d,l			;6645
	ld d,l			;6646
	ld d,l			;6647
	ld d,l			;6648
	add hl,hl		;6649
	add hl,hl		;664a
	dec e			;664b
	add hl,de		;664c
	add hl,de		;664d
	add hl,de		;664e
	add hl,de		;664f
	add hl,de		;6650
	add hl,de		;6651
	add hl,de		;6652
	ld d,l			;6653
	ld d,l			;6654
	ld d,l			;6655
	ld d,l			;6656
	ld d,l			;6657
	inc e			;6658
	inc e			;6659
	inc e			;665a
	dec sp			;665b
	add hl,sp		;665c
	ld a,(03a39h)		;665d
	dec sp			;6660
	ld d,l			;6661
	ld d,l			;6662
	ld d,l			;6663
	ld d,l			;6664
	ld d,l			;6665
	ld d,l			;6666
	rst 38h			;6667
	dec de			;6668
	rst 38h			;6669
	nop			;666a
	inc l			;666b
	ld hl,(05351h)		;666c
	add hl,de		;666f
	add hl,sp		;6670
	inc l			;6671
	ld hl,(0564dh)		;6672
	add hl,de		;6675
	ld hl,(04c11h)		;6676
	ld d,c			;6679
	ld d,e			;667a
	add hl,de		;667b
	dec sp			;667c
	ld (de),a		;667d
	ld c,h			;667e
	ld c,(hl)		;667f
	ld d,h			;6680
	add hl,de		;6681
	add hl,sp		;6682
	ld de,04f4ch		;6683
	ld d,l			;6686
	inc d			;6687
	jr $+1			;6688
	rla			;668a
	ld bc,04c12h		;668b
	ld d,d			;668e
	ld d,(hl)		;668f
	add hl,de		;6690
	dec sp			;6691
	ld de,04f4ch		;6692
	ld d,l			;6695
	add hl,de		;6696
	add hl,sp		;6697
	ld (de),a		;6698
	ld c,h			;6699
	ld d,d			;669a
	ld d,(hl)		;669b
	add hl,de		;669c
	ld a,(00918h)		;669d
	ld d,c			;66a0
	ld d,e			;66a1
	ld a,(de)		;66a2
	jr $+20			;66a3
	ld c,h			;66a5
	ld d,d			;66a6
	ld d,(hl)		;66a7
	add hl,de		;66a8
	add hl,sp		;66a9
	ld d,b			;66aa
	ld c,h			;66ab
	ld c,a			;66ac
	ld d,l			;66ad
	add hl,de		;66ae
	ld a,(04c12h)		;66af
	ld d,d			;66b2
	ld d,(hl)		;66b3
	add hl,de		;66b4
	dec sp			;66b5
	jr l66f9h		;66b6
	ld d,c			;66b8
	ld d,e			;66b9
	add hl,de		;66ba
	add hl,sp		;66bb
	dec de			;66bc
	ld b,c			;66bd
	ld c,(hl)		;66be
	ld d,h			;66bf
	add hl,de		;66c0
	ld a,(04c12h)		;66c1
	ld c,a			;66c4
	ld d,l			;66c5
	add hl,de		;66c6
	inc e			;66c7
	ld d,b			;66c8
	ld c,h			;66c9
	ld d,d			;66ca
	ld d,(hl)		;66cb
	ld a,(de)		;66cc
	jr $+20			;66cd
	ld c,h			;66cf
	ld d,c			;66d0
	ld d,e			;66d1
	dec de			;66d2
	inc h			;66d3
	inc a			;66d4
	ld c,h			;66d5
	ld c,(hl)		;66d6
	ld d,h			;66d7
	add hl,de		;66d8
	add hl,sp		;66d9
	ld (de),a		;66da
	ld c,h			;66db
	ld d,c			;66dc
	ld d,e			;66dd
	add hl,de		;66de
	ld a,(04c3ch)		;66df
	ld d,d			;66e2
	ld d,(hl)		;66e3
	add hl,de		;66e4
	dec sp			;66e5
	ld (de),a		;66e6
	ld c,h			;66e7
	ld c,a			;66e8
	ld d,l			;66e9
	add hl,de		;66ea
	add hl,sp		;66eb
	ld a,(de)		;66ec
	jr l66f9h		;66ed
	ld d,h			;66ef
	add hl,de		;66f0
	ld a,(de)		;66f1
	ld (de),a		;66f2
	ld c,h			;66f3
	ld d,c			;66f4
	ld d,e			;66f5
	add hl,de		;66f6
	dec sp			;66f7
	inc a			;66f8
l66f9h:
	ld c,h			;66f9
	ld d,d			;66fa
	ld d,(hl)		;66fb
	add hl,de		;66fc
	add hl,sp		;66fd
	ld (de),a		;66fe
	ld c,h			;66ff
	ld c,a			;6700
	ld d,l			;6701
	add hl,de		;6702
	ld a,(04c3ch)		;6703
	ld c,(hl)		;6706
	ld d,h			;6707
	add hl,de		;6708
	dec sp			;6709
	ld (de),a		;670a
	ld c,h			;670b
	ld d,c			;670c
	ld d,e			;670d
	add hl,de		;670e
	add hl,sp		;670f
	inc a			;6710
	ld c,h			;6711
	ld c,(hl)		;6712
	ld d,h			;6713
	add hl,de		;6714
	ld a,(04c12h)		;6715
	ld d,c			;6718
	ld d,e			;6719
	add hl,de		;671a
	dec sp			;671b
	ld a,(bc)		;671c
	ld c,h			;671d
	ld d,d			;671e
	ld a,(de)		;671f
	jr l672ch		;6720
	ld (de),a		;6722
	ld c,h			;6723
	ld d,c			;6724
	ld d,e			;6725
	add hl,de		;6726
	ld a,(04c3ch)		;6727
	ld d,d			;672a
	ld d,(hl)		;672b
l672ch:
	add hl,de		;672c
	dec sp			;672d
	jr l675ah		;672e
	ld c,a			;6730
	ld d,l			;6731
	add hl,de		;6732
	ld a,(de)		;6733
	dec de			;6734
	ld hl,(05652h)		;6735
	add hl,de		;6738
	dec de			;6739
	rst 38h			;673a
	rla			;673b
	ld bc,000ffh		;673c
	inc a			;673f
	ld c,h			;6740
	ld d,c			;6741
	ld d,e			;6742
	add hl,de		;6743
	add hl,sp		;6744
	ld (de),a		;6745
	ld c,h			;6746
	ld d,d			;6747
	ld d,(hl)		;6748
	add hl,de		;6749
	ld a,(04c3ch)		;674a
	ld c,a			;674d
	ld d,l			;674e
	add hl,de		;674f
	dec sp			;6750
	ld (de),a		;6751
	ld c,h			;6752
	ld c,(hl)		;6753
	ld d,h			;6754
	add hl,de		;6755
	dec hl			;6756
	ld hl,(0202ah)		;6757
l675ah:
	ld b,d			;675a
	add hl,hl		;675b
	inc l			;675c
	inc l			;675d
	add hl,hl		;675e
	jr nz,l67a3h		;675f
	add hl,hl		;6761
	inc l			;6762
	ld hl,(03f46h)		;6763
	jr nc,$+77		;6766
	ld hl,(0412ch)		;6768
	ld c,(hl)		;676b
	ld d,h			;676c
	ld b,b			;676d
	inc l			;676e
	ld hl,(05141h)		;676f
	ld d,e			;6772
	ld b,b			;6773
	ld hl,(04c04h)		;6774
	ld c,(hl)		;6777
	ld d,h			;6778
	add hl,de		;6779
	dec b			;677a
	dec b			;677b
	ld c,h			;677c
	ld d,c			;677d
	ld d,e			;677e
	add hl,de		;677f
	nop			;6780
	inc e			;6781
	inc l			;6782
	ld hl,(01921h)		;6783
	dec sp			;6786
	inc e			;6787
	inc l			;6788
	ld hl,(01953h)		;6789
	add hl,hl		;678c
	inc e			;678d
	inc l			;678e
	ld hl,(02f2eh)		;678f
	add hl,hl		;6792
	cp 0ffh			;6793
	ld a,(de)		;6795
	rst 38h			;6796
	dec de			;6797
	rst 38h			;6798
	rla			;6799
	ld bc,003ffh		;679a
	add hl,hl		;679d
	add hl,hl		;679e
	add hl,hl		;679f
	inc b			;67a0
	nop			;67a1
	inc (hl)		;67a2
l67a3h:
	inc b			;67a3
	ld sp,04448h		;67a4
	ld hl,(04a4ah)		;67a7
	ld c,c			;67aa
	ld c,d			;67ab
	inc hl			;67ac
	jr c,$+6		;67ad
	dec b			;67af
	nop			;67b0
	inc b			;67b1
	ld h,02ah		;67b2
	ld hl,(04743h)		;67b4
	ld c,d			;67b7
	ld c,c			;67b8
	ld c,d			;67b9
	ld hl,(02a2ah)		;67ba
	ld (hl),039h		;67bd
	ld hl,(00400h)		;67bf
	ld b,l			;67c2
	inc b			;67c3
	inc hl			;67c4
	add hl,hl		;67c5
	add hl,hl		;67c6
	add hl,hl		;67c7
	inc b			;67c8
	nop			;67c9
	dec b			;67ca
	nop			;67cb
	inc hl			;67cc
	inc e			;67cd
	inc e			;67ce
	inc e			;67cf
	nop			;67d0
	dec b			;67d1
	ld hl,(03339h)		;67d2
	ld c,b			;67d5
	inc (hl)		;67d6
	ld hl,(04a47h)		;67d7
	add hl,hl		;67da
	add hl,hl		;67db
	add hl,hl		;67dc
	ld b,e			;67dd
	ld c,c			;67de
	ld b,h			;67df
	ld c,d			;67e0
	ld c,c			;67e1
	ld hl,(02a2ah)		;67e2
	jr c,l67e7h		;67e5
l67e7h:
	inc b			;67e7
	dec b			;67e8
	ld b,a			;67e9
	dec b			;67ea
	nop			;67eb
	scf			;67ec
	inc e			;67ed
	inc e			;67ee
	inc e			;67ef
	inc b			;67f0
	nop			;67f1
	inc b			;67f2
	ld a,03dh		;67f3
	add hl,hl		;67f5
	add hl,hl		;67f6
	add hl,hl		;67f7
	ld c,d			;67f8
	ld c,c			;67f9
	add hl,hl		;67fa
	add hl,hl		;67fb
	add hl,hl		;67fc
	ld c,b			;67fd
	inc (hl)		;67fe
	ld hl,(00400h)		;67ff
	ld hl,(02a2ah)		;6802
	jr c,l680ch		;6805
	nop			;6807
	inc b			;6808
	dec b			;6809
	nop			;680a
	inc hl			;680b
l680ch:
	ld hl,(00038h)		;680c
	inc b			;680f
	ld b,a			;6810
	inc b			;6811
	inc b			;6812
	nop			;6813
	inc b			;6814
	dec l			;6815
	dec l			;6816
	dec l			;6817
	ld c,d			;6818
	ld c,c			;6819
	ld c,d			;681a
	ld (02932h),hl		;681b
	add hl,hl		;681e
	add hl,hl		;681f
	inc b			;6820
	dec b			;6821
	nop			;6822
	inc hl			;6823
	add hl,hl		;6824
	inc e			;6825
	inc e			;6826
	inc e			;6827
	dec b			;6828
	nop			;6829
	inc e			;682a
	inc e			;682b
	inc e			;682c
	rst 38h			;682d
	dec de			;682e
	rst 38h			;682f
	rla			;6830
	ld bc,000ffh		;6831
	rst 38h			;6834
	dec e			;6835
	inc a			;6836
	inc b			;6837
	dec b			;6838
	ld b,d			;6839
	ld d,027h		;683a
	inc a			;683c
	dec b			;683d
	nop			;683e
	ld c,d			;683f
	dec b			;6840
	ld h,050h		;6841
	ld c,d			;6843
	inc b			;6844
	ld c,d			;6845
	inc b			;6846
	daa			;6847
	inc a			;6848
	ld c,d			;6849
	ld b,a			;684a
	ld c,d			;684b
	ld c,d			;684c
	ld h,050h		;684d
	dec b			;684f
	nop			;6850
	ld c,d			;6851
	dec b			;6852
	daa			;6853
	inc a			;6854
	nop			;6855
	inc b			;6856
	ld c,c			;6857
	nop			;6858
	ld h,018h		;6859
	ld a,(bc)		;685b
	dec b			;685c
	ld c,d			;685d
	ld a,(de)		;685e
	jr l689dh		;685f
	dec b			;6861
	nop			;6862
	ld c,d			;6863
	dec b			;6864
	ld a,(01affh)		;6865
	ld d,b			;6868
	inc b			;6869
	inc b			;686a
	ld c,c			;686b
	nop			;686c
	dec sp			;686d
	inc a			;686e
	ld b,a			;686f
	dec b			;6870
	ld c,d			;6871
	inc b			;6872
	ld h,050h		;6873
	dec b			;6875
	nop			;6876
	ld c,d			;6877
	dec b			;6878
	ld a,(01a18h)		;6879
	jr l6888h		;687c
	nop			;687e
	ld a,(de)		;687f
	ld d,b			;6880
	inc b			;6881
	dec b			;6882
	ld c,c			;6883
	inc b			;6884
	add hl,sp		;6885
	inc a			;6886
	dec b			;6887
l6888h:
	nop			;6888
	ld c,d			;6889
	dec b			;688a
	ld a,(00050h)		;688b
	inc b			;688e
	ld c,d			;688f
	inc b			;6890
	dec sp			;6891
	inc a			;6892
	inc b			;6893
	dec b			;6894
	ld c,d			;6895
	ld a,(de)		;6896
	jr $+26			;6897
	ld a,(bc)		;6899
	nop			;689a
	ld c,d			;689b
	dec b			;689c
l689dh:
	ld a,(0003ch)		;689d
	inc b			;68a0
	ld c,c			;68a1
	nop			;68a2
	add hl,sp		;68a3
	ld d,b			;68a4
	inc b			;68a5
	dec b			;68a6
	ld c,d			;68a7
	inc b			;68a8
	dec sp			;68a9
	inc a			;68aa
	dec b			;68ab
	nop			;68ac
	inc b			;68ad
	dec b			;68ae
	add hl,sp		;68af
	ld hl,(00400h)		;68b0
	dec b			;68b3
	inc b			;68b4
	ld a,(0042ah)		;68b5
	dec b			;68b8
	inc b			;68b9
	dec b			;68ba
	add hl,sp		;68bb
	ld hl,(02a05h)		;68bc
	inc hl			;68bf
	inc hl			;68c0
	inc e			;68c1
	ld hl,(02a00h)		;68c2
	dec de			;68c5
	inc h			;68c6
	inc e			;68c7
	nop			;68c8
	inc b			;68c9
	dec b			;68ca
	nop			;68cb
	inc b			;68cc
	nop			;68cd
	dec b			;68ce
	nop			;68cf
	inc b			;68d0
	dec b			;68d1
	nop			;68d2
	inc b			;68d3
	inc b			;68d4
	dec b			;68d5
	nop			;68d6
	inc b			;68d7
	dec b			;68d8
	nop			;68d9
	nop			;68da
	inc b			;68db
	dec b			;68dc
	nop			;68dd
	inc b			;68de
	dec b			;68df
	rst 38h			;68e0
	add hl,de		;68e1
	nop			;68e2
	dec b			;68e3
	nop			;68e4
	inc b			;68e5
	dec b			;68e6
	nop			;68e7
	inc b			;68e8
	inc b			;68e9
	dec b			;68ea
	nop			;68eb
	inc b			;68ec
	dec b			;68ed
	nop			;68ee
	nop			;68ef
	inc b			;68f0
	dec b			;68f1
	nop			;68f2
	inc b			;68f3
	dec b			;68f4
	inc b			;68f5
	dec b			;68f6
	nop			;68f7
	inc b			;68f8
	nop			;68f9
	dec b			;68fa
	rst 38h			;68fb
	inc de			;68fc
	ld c,d			;68fd
	xor c			;68fe
l68ffh:
	inc b			;68ff
	dec b			;6900
	nop			;6901
	inc b			;6902
	nop			;6903
	dec b			;6904
	rst 38h			;6905
	jr l695fh		;6906
	ld d,a			;6908
	ld d,a			;6909
	ld d,a			;690a
	ld d,a			;690b
	ld d,a			;690c
	rst 38h			;690d
	inc de			;690e
	ld e,l			;690f
	xor c			;6910
	rst 38h			;6911
	ld de,02001h		;6912
	rst 38h			;6915
	rla			;6916
	ld (bc),a		;6917
	ld d,a			;6918
	ld d,a			;6919
	ld d,a			;691a
	ld d,a			;691b
	ld d,a			;691c
	ld d,a			;691d
	ld d,a			;691e
	ld d,a			;691f
	ld d,a			;6920
	ld d,a			;6921
	ld d,a			;6922
	ld d,a			;6923
	ld d,a			;6924
	ld d,a			;6925
	ld d,a			;6926
	ld d,a			;6927
	ld d,a			;6928
	ld d,a			;6929
	ld d,a			;692a
	ld d,a			;692b
	ld d,a			;692c
	ld d,a			;692d
	ld d,a			;692e
	ld d,a			;692f
	ld d,a			;6930
	ld d,a			;6931
	ld d,a			;6932
	ld d,a			;6933
	ld d,a			;6934
	ld d,a			;6935
	ld d,a			;6936
	ld d,a			;6937
	ld d,a			;6938
	ld d,a			;6939
	ld d,a			;693a
	ld d,a			;693b
	ld d,a			;693c
	ld d,a			;693d
	ld d,a			;693e
	ld d,a			;693f
	ld d,a			;6940
	ld d,a			;6941
	ld d,a			;6942
	ld d,a			;6943
	ld d,a			;6944
	ld d,a			;6945
	ld d,a			;6946
	ld d,a			;6947
	rst 38h			;6948
	inc d			;6949
	nop			;694a
	nop			;694b
	nop			;694c
	djnz l694fh		;694d
l694fh:
	jr nz,l6951h		;694f
l6951h:
	jr nc,l6953h		;6951
l6953h:
	ld b,b			;6953
	nop			;6954
	ld d,b			;6955
	nop			;6956
	sub b			;6957
	nop			;6958
	or b			;6959
	nop			;695a
	ret nz			;695b
	cp 000h			;695c
	nop			;695e
l695fh:
	ld sp,04211h		;695f
	ld (03353h),hl		;6962
	djnz l69a9h		;6965
	jr nz,$+85		;6967
	jr nc,l68ffh		;6969
	ld d,b			;696b
	or b			;696c
	inc sp			;696d
	jp 0fffeh		;696e
	dec de			;6971
	rst 38h			;6972
	add hl,bc		;6973
	rst 38h			;6974
	ld de,02000h		;6975
	nop			;6978
	nop			;6979
	nop			;697a
	nop			;697b
	nop			;697c
	jr nc,l697fh		;697d
l697fh:
	nop			;697f
	nop			;6980
	nop			;6981
	nop			;6982
	ld sp,00000h		;6983
	nop			;6986
	nop			;6987
	nop			;6988
l6989h:
	ld (00007h),a		;6989
	nop			;698c
	nop			;698d
	nop			;698e
	inc sp			;698f
	ld bc,00005h		;6990
	nop			;6993
	nop			;6994
	inc (hl)		;6995
	ld hl,00006h		;6996
	nop			;6999
	nop			;699a
	ld hl,(00012h)		;699b
	nop			;699e
	nop			;699f
	nop			;69a0
	jr z,l69c0h		;69a1
	ld (bc),a		;69a3
	nop			;69a4
	nop			;69a5
	nop			;69a6
	add hl,hl		;69a7
	ld d,b			;69a8
l69a9h:
	ld (bc),a		;69a9
	nop			;69aa
	nop			;69ab
	dec hl			;69ac
	ld l,015h		;69ad
	rla			;69af
	nop			;69b0
	nop			;69b1
	dec (hl)		;69b2
	ld a,(00152h)		;69b3
	dec b			;69b6
	nop			;69b7
	ld (hl),03bh		;69b8
	ld d,e			;69ba
	ld hl,00006h		;69bb
	add hl,sp		;69be
	inc a			;69bf
l69c0h:
	ld c,010h		;69c0
	nop			;69c2
	nop			;69c3
	dec a			;69c4
	ld a,01fh		;69c5
	nop			;69c7
	nop			;69c8
	nop			;69c9
	nop			;69ca
	ld hl,(00012h)		;69cb
	nop			;69ce
	nop			;69cf
	nop			;69d0
	ld sp,00011h		;69d1
	nop			;69d4
	nop			;69d5
	dec hl			;69d6
	ld l,01fh		;69d7
	nop			;69d9
	nop			;69da
	nop			;69db
	inc l			;69dc
	ld a,020h		;69dd
	dec b			;69df
	nop			;69e0
	nop			;69e1
	nop			;69e2
	ld hl,(00619h)		;69e3
	nop			;69e6
	nop			;69e7
	nop			;69e8
	inc sp			;69e9
	ld d,c			;69ea
	ld (bc),a		;69eb
	nop			;69ec
	nop			;69ed
	ld h,03bh		;69ee
	dec d			;69f0
	rla			;69f1
	nop			;69f2
	ld h,03bh		;69f3
	ld b,h			;69f5
	inc d			;69f6
	ld bc,02d05h		;69f7
	ld c,c			;69fa
	jr c,l6a15h		;69fb
	ld hl,00006h		;69fd
	dec l			;6a00
	cpl			;6a01
	ld c,010h		;6a02
	nop			;6a04
	nop			;6a05
	nop			;6a06
	ld c,d			;6a07
	rra			;6a08
	nop			;6a09
	nop			;6a0a
	nop			;6a0b
	nop			;6a0c
	add hl,hl		;6a0d
	inc de			;6a0e
	nop			;6a0f
	nop			;6a10
	nop			;6a11
	nop			;6a12
	jr z,l6a34h		;6a13
l6a15h:
	nop			;6a15
	nop			;6a16
	nop			;6a17
	nop			;6a18
	add hl,hl		;6a19
	inc de			;6a1a
	nop			;6a1b
	nop			;6a1c
	nop			;6a1d
	nop			;6a1e
	ld hl,(0001fh)		;6a1f
	nop			;6a22
	nop			;6a23
	nop			;6a24
	daa			;6a25
	inc de			;6a26
	nop			;6a27
	nop			;6a28
	nop			;6a29
	nop			;6a2a
	jr z,l6a4ch		;6a2b
	nop			;6a2d
	nop			;6a2e
	nop			;6a2f
	nop			;6a30
	add hl,hl		;6a31
	inc de			;6a32
	nop			;6a33
l6a34h:
	nop			;6a34
	nop			;6a35
	nop			;6a36
	ld hl,(0001fh)		;6a37
	nop			;6a3a
	nop			;6a3b
	nop			;6a3c
	add hl,hl		;6a3d
	inc de			;6a3e
	nop			;6a3f
	nop			;6a40
	nop			;6a41
	nop			;6a42
	jr z,l6a64h		;6a43
	nop			;6a45
	nop			;6a46
	nop			;6a47
	nop			;6a48
	add hl,hl		;6a49
	inc de			;6a4a
	nop			;6a4b
l6a4ch:
	nop			;6a4c
	nop			;6a4d
	nop			;6a4e
	ld hl,(0001fh)		;6a4f
	nop			;6a52
	nop			;6a53
	nop			;6a54
	daa			;6a55
	inc de			;6a56
	nop			;6a57
	nop			;6a58
	nop			;6a59
	nop			;6a5a
	jr z,l6a7ch		;6a5b
	nop			;6a5d
	nop			;6a5e
	nop			;6a5f
	nop			;6a60
	add hl,hl		;6a61
	inc de			;6a62
	nop			;6a63
l6a64h:
	nop			;6a64
	nop			;6a65
	nop			;6a66
	ld hl,(009ffh)		;6a67
	rst 38h			;6a6a
	ld de,02000h		;6a6b
	rra			;6a6e
	nop			;6a6f
	nop			;6a70
	nop			;6a71
	nop			;6a72
	add hl,hl		;6a73
	inc de			;6a74
	nop			;6a75
	nop			;6a76
	nop			;6a77
	nop			;6a78
	jr z,l6a9ah		;6a79
	nop			;6a7b
l6a7ch:
	nop			;6a7c
	nop			;6a7d
	nop			;6a7e
	add hl,hl		;6a7f
	inc de			;6a80
	nop			;6a81
	nop			;6a82
	nop			;6a83
	nop			;6a84
	ld hl,(0001fh)		;6a85
	nop			;6a88
	nop			;6a89
l6a8ah:
	nop			;6a8a
	daa			;6a8b
	inc de			;6a8c
	nop			;6a8d
	nop			;6a8e
	nop			;6a8f
	nop			;6a90
	jr z,l6ab2h		;6a91
	nop			;6a93
	nop			;6a94
	nop			;6a95
	nop			;6a96
	add hl,hl		;6a97
	inc de			;6a98
	nop			;6a99
l6a9ah:
	nop			;6a9a
	nop			;6a9b
	nop			;6a9c
	ld hl,(01affh)		;6a9d
	ld d,007h		;6aa0
	nop			;6aa2
	nop			;6aa3
	ld b,b			;6aa4
	ld b,d			;6aa5
	inc b			;6aa6
	ex af,af'		;6aa7
	nop			;6aa8
	nop			;6aa9
	ld b,c			;6aaa
	ld b,e			;6aab
	ld c,00dh		;6aac
	nop			;6aae
	nop			;6aaf
	add hl,sp		;6ab0
	inc a			;6ab1
l6ab2h:
	djnz l6ab4h		;6ab2
l6ab4h:
	nop			;6ab4
	nop			;6ab5
	dec a			;6ab6
	ld a,000h		;6ab7
	nop			;6ab9
	nop			;6aba
	nop			;6abb
	nop			;6abc
	jr z,l6abfh		;6abd
l6abfh:
	nop			;6abf
	nop			;6ac0
	nop			;6ac1
	nop			;6ac2
	add hl,hl		;6ac3
	ld a,(bc)		;6ac4
	nop			;6ac5
	nop			;6ac6
	nop			;6ac7
	nop			;6ac8
	ld c,e			;6ac9
	dec bc			;6aca
	rrca			;6acb
	nop			;6acc
	nop			;6acd
	ld h,03bh		;6ace
	jr l6aeeh		;6ad0
	nop			;6ad2
	nop			;6ad3
	dec l			;6ad4
	ld c,h			;6ad5
	add hl,bc		;6ad6
	nop			;6ad7
	nop			;6ad8
	nop			;6ad9
	nop			;6ada
	ld c,l			;6adb
	add hl,de		;6adc
	ld (bc),a		;6add
	nop			;6ade
	nop			;6adf
	nop			;6ae0
	ccf			;6ae1
	ld a,(de)		;6ae2
	ld (bc),a		;6ae3
	nop			;6ae4
	nop			;6ae5
	ld b,l			;6ae6
	ld b,a			;6ae7
	inc hl			;6ae8
	rlca			;6ae9
	nop			;6aea
	nop			;6aeb
	ld b,c			;6aec
	ld c,b			;6aed
l6aeeh:
	inc h			;6aee
	ex af,af'		;6aef
	nop			;6af0
	nop			;6af1
	ld b,(hl)		;6af2
	scf			;6af3
	dec h			;6af4
	ld (00007h),hl		;6af5
	nop			;6af8
	add hl,hl		;6af9
	jr l6b1dh		;6afa
	ld b,000h		;6afc
	nop			;6afe
	ld sp,009ffh		;6aff
	rst 38h			;6b02
	ld de,02000h		;6b03
	dec de			;6b06
	djnz l6b09h		;6b07
l6b09h:
	nop			;6b09
	nop			;6b0a
	ld (0001fh),a		;6b0b
	nop			;6b0e
	nop			;6b0f
	nop			;6b10
	ld hl,(00054h)		;6b11
	nop			;6b14
	nop			;6b15
	nop			;6b16
	jr z,l6b1ch		;6b17
	nop			;6b19
	nop			;6b1a
	nop			;6b1b
l6b1ch:
	nop			;6b1c
l6b1dh:
	add hl,hl		;6b1d
	ld d,l			;6b1e
	nop			;6b1f
	nop			;6b20
	nop			;6b21
	nop			;6b22
	ld (00716h),a		;6b23
	nop			;6b26
	nop			;6b27
	dec hl			;6b28
	ld l,024h		;6b29
	ex af,af'		;6b2b
	nop			;6b2c
	nop			;6b2d
	inc l			;6b2e
	ld a,025h		;6b2f
	ld (00007h),hl		;6b31
	nop			;6b34
	ld hl,(01affh)		;6b35
	jr l6b5bh		;6b38
	ld b,000h		;6b3a
	nop			;6b3c
	add hl,hl		;6b3d
	dec de			;6b3e
	djnz l6b41h		;6b3f
l6b41h:
	nop			;6b41
	nop			;6b42
	ld hl,(00013h)		;6b43
	nop			;6b46
	nop			;6b47
	nop			;6b48
	add hl,hl		;6b49
	rra			;6b4a
	nop			;6b4b
	nop			;6b4c
	nop			;6b4d
	dec hl			;6b4e
	ld l,012h		;6b4f
	nop			;6b51
	nop			;6b52
	ld b,b			;6b53
	ld d,(hl)		;6b54
	ld b,e			;6b55
	dec h			;6b56
	ld e,000h		;6b57
	ld b,c			;6b59
	cpl			;6b5a
l6b5bh:
	inc a			;6b5b
	jr l6b7ah		;6b5c
	nop			;6b5e
	ld b,(hl)		;6b5f
	ld c,d			;6b60
	ld c,l			;6b61
	ld de,00000h		;6b62
	nop			;6b65
	inc l			;6b66
	ld c,(hl)		;6b67
	rst 38h			;6b68
	add hl,bc		;6b69
	rst 38h			;6b6a
	ld de,02000h		;6b6b
	rst 38h			;6b6e
	add hl,de		;6b6f
	nop			;6b70
	rra			;6b71
	nop			;6b72
	nop			;6b73
	nop			;6b74
	nop			;6b75
	add hl,hl		;6b76
	inc de			;6b77
	nop			;6b78
	nop			;6b79
l6b7ah:
	nop			;6b7a
	nop			;6b7b
	jr z,l6b9dh		;6b7c
	nop			;6b7e
	nop			;6b7f
	nop			;6b80
	nop			;6b81
	add hl,hl		;6b82
	inc de			;6b83
	nop			;6b84
	nop			;6b85
	nop			;6b86
	nop			;6b87
	ld hl,(0001fh)		;6b88
	nop			;6b8b
	nop			;6b8c
	nop			;6b8d
	daa			;6b8e
	inc de			;6b8f
	nop			;6b90
	nop			;6b91
	nop			;6b92
	nop			;6b93
l6b94h:
	jr z,l6b94h		;6b94
	rst 38h			;6b96
	inc de			;6b97
	ld c,d			;6b98
	xor c			;6b99
	rst 38h			;6b9a
	dec d			;6b9b
	rst 38h			;6b9c
l6b9dh:
	jr $+1			;6b9d
	ld de,00001h		;6b9f
	rst 38h			;6ba2
	rla			;6ba3
	ld bc,014ffh		;6ba4
	rst 38h			;6ba7
	ld d,0ffh		;6ba8
	dec de			;6baa
	rst 38h			;6bab
	add hl,bc		;6bac
	ld (hl),004h		;6bad
	ex af,af'		;6baf
	inc b			;6bb0
	dec hl			;6bb1
	inc (hl)		;6bb2
	ld b,(hl)		;6bb3
	dec b			;6bb4
	add hl,bc		;6bb5
	dec b			;6bb6
	add hl,bc		;6bb7
	inc h			;6bb8
	ld c,a			;6bb9
	ld b,00ah		;6bba
	ld b,00ah		;6bbc
	dec h			;6bbe
	ld c,a			;6bbf
	rlca			;6bc0
	ex af,af'		;6bc1
	rlca			;6bc2
	ex af,af'		;6bc3
	ld h,035h		;6bc4
	inc b			;6bc6
	ex af,af'		;6bc7
	inc b			;6bc8
	ld hl,(05233h)		;6bc9
	dec b			;6bcc
	add hl,bc		;6bcd
	dec b			;6bce
	dec l			;6bcf
	dec c			;6bd0
	ld (hl),006h		;6bd1
	ex af,af'		;6bd3
	ld b,02bh		;6bd4
	inc sp			;6bd6
	ld c,a			;6bd7
	rlca			;6bd8
	ex af,af'		;6bd9
	rlca			;6bda
	ex af,af'		;6bdb
	dec de			;6bdc
	ld b,l			;6bdd
	inc b			;6bde
	ex af,af'		;6bdf
	inc b			;6be0
	ex af,af'		;6be1
	inc de			;6be2
	ld e,b			;6be3
	dec b			;6be4
	add hl,bc		;6be5
	dec b			;6be6
	add hl,bc		;6be7
	ld a,e			;6be8
	ld d,b			;6be9
	ld b,00ah		;6bea
	ld b,027h		;6bec
	dec a			;6bee
	ld e,c			;6bef
	rlca			;6bf0
	ex af,af'		;6bf1
	rlca			;6bf2
	ex af,af'		;6bf3
	ld a,e			;6bf4
	ld e,(hl)		;6bf5
	inc b			;6bf6
	ex af,af'		;6bf7
	inc b			;6bf8
	ex af,af'		;6bf9
	inc e			;6bfa
	ld e,l			;6bfb
	dec b			;6bfc
	add hl,bc		;6bfd
	dec b			;6bfe
	add hl,bc		;6bff
	dec e			;6c00
	ld d,c			;6c01
	ld b,00ah		;6c02
	ld b,02ah		;6c04
	jr nc,l6c5bh		;6c06
	rlca			;6c08
	ex af,af'		;6c09
	rlca			;6c0a
	dec hl			;6c0b
	ld (0045eh),a		;6c0c
	ex af,af'		;6c0f
	inc b			;6c10
	ex af,af'		;6c11
	ld e,05bh		;6c12
	dec b			;6c14
	add hl,bc		;6c15
	dec b			;6c16
	add hl,bc		;6c17
	rra			;6c18
	ld d,c			;6c19
	ld b,00ah		;6c1a
	ld b,02ah		;6c1c
	jr nc,l6c56h		;6c1e
	rlca			;6c20
	ex af,af'		;6c21
	rlca			;6c22
	dec hl			;6c23
	inc (hl)		;6c24
	ld c,a			;6c25
	inc b			;6c26
	ex af,af'		;6c27
	inc b			;6c28
	ex af,af'		;6c29
	jr l6c7bh		;6c2a
	dec b			;6c2c
	add hl,bc		;6c2d
	dec b			;6c2e
	add hl,bc		;6c2f
	add hl,de		;6c30
	dec (hl)		;6c31
	ld b,00ah		;6c32
	ld b,027h		;6c34
	inc (hl)		;6c36
	inc sp			;6c37
	jr nc,l6c6ah		;6c38
	ccf			;6c3a
	ex af,af'		;6c3b
	jr $+88			;6c3c
	ld a,e			;6c3e
	ld h,a			;6c3f
	ld l,h			;6c40
	ld (hl),b		;6c41
	add hl,de		;6c42
	ld d,d			;6c43
	ld h,b			;6c44
	ld l,b			;6c45
	ld b,071h		;6c46
	rrca			;6c48
	ld d,a			;6c49
	ld h,c			;6c4a
	ld l,c			;6c4b
	ld l,l			;6c4c
	ld (hl),d		;6c4d
	add hl,de		;6c4e
	ld d,(hl)		;6c4f
	ld h,d			;6c50
	ex af,af'		;6c51
	dec b			;6c52
	ld (hl),e		;6c53
	jr l6ca8h		;6c54
l6c56h:
	ld h,e			;6c56
	ex af,af'		;6c57
	ld b,074h		;6c58
	inc h			;6c5a
l6c5bh:
	jr c,l6cc1h		;6c5b
	add hl,bc		;6c5d
	rlca			;6c5e
	ld (hl),l		;6c5f
	ld h,001h		;6c60
	ld h,l			;6c62
	ld l,d			;6c63
	ld l,(hl)		;6c64
	halt			;6c65
	add hl,de		;6c66
	ld d,h			;6c67
	ld h,(hl)		;6c68
	ld l,e			;6c69
l6c6ah:
	ld l,a			;6c6a
	ld (0fe24h),hl		;6c6b
	rst 38h			;6c6e
	ld b,0ffh		;6c6f
	dec de			;6c71
	ld sp,02431h		;6c72
	dec h			;6c75
	ld h,017h		;6c76
	ld a,(bc)		;6c78
	jr nc,l6caeh		;6c79
l6c7bh:
	dec d			;6c7b
	add hl,bc		;6c7c
	ex af,af'		;6c7d
	ex af,af'		;6c7e
	add hl,bc		;6c7f
	ex af,af'		;6c80
	jr nc,l6c98h		;6c81
	inc b			;6c83
	dec b			;6c84
	dec b			;6c85
	ld b,007h		;6c86
	inc b			;6c88
	ld (de),a		;6c89
	dec a			;6c8a
	ld bc,00109h		;6c8b
	ld (bc),a		;6c8e
	add hl,bc		;6c8f
	inc bc			;6c90
	jr nc,l6ccch		;6c91
	ld a,(03b39h)		;6c93
	ld a,(bc)		;6c96
	inc a			;6c97
l6c98h:
	add hl,sp		;6c98
	ld a,(00832h)		;6c99
	add hl,bc		;6c9c
	ex af,af'		;6c9d
	ex af,af'		;6c9e
	add hl,bc		;6c9f
	ex af,af'		;6ca0
	dec a			;6ca1
	ld (00504h),a		;6ca2
	ld b,007h		;6ca5
	inc b			;6ca7
l6ca8h:
	dec b			;6ca8
	ld d,h			;6ca9
	ld c,d			;6caa
	ld b,e			;6cab
	add hl,bc		;6cac
	ex af,af'		;6cad
l6caeh:
	ex af,af'		;6cae
	add hl,bc		;6caf
	ld a,(bc)		;6cb0
	jr nc,l6ccbh		;6cb1
	dec d			;6cb3
	dec b			;6cb4
	inc a			;6cb5
	ld a,(0043bh)		;6cb6
	jr nc,l6cedh		;6cb9
	inc bc			;6cbb
	add hl,bc		;6cbc
	ld bc,00902h		;6cbd
	inc bc			;6cc0
l6cc1h:
	jr nc,l6cf5h		;6cc1
	inc b			;6cc3
	add hl,bc		;6cc4
	dec b			;6cc5
	ld b,009h		;6cc6
	rlca			;6cc8
	jr nc,l6d15h		;6cc9
l6ccbh:
	ld b,h			;6ccb
l6ccch:
	ld d,l			;6ccc
	ex af,af'		;6ccd
	ex af,af'		;6cce
	ld b,c			;6ccf
	ld b,h			;6cd0
	ld c,e			;6cd1
	ld d,018h		;6cd2
	dec d			;6cd4
	inc b			;6cd5
	dec b			;6cd6
	ld (01826h),hl		;6cd7
	ld (00901h),a		;6cda
	inc bc			;6cdd
	ld (bc),a		;6cde
	add hl,bc		;6cdf
	inc bc			;6ce0
	jr nc,l6d2dh		;6ce1
	ld b,e			;6ce3
	add hl,bc		;6ce4
	ld a,l			;6ce5
	ld b,h			;6ce6
	ld b,(hl)		;6ce7
	ld b,h			;6ce8
	ld c,e			;6ce9
	jr l6d01h		;6cea
	inc b			;6cec
l6cedh:
	ld a,h			;6ced
	ld d,024h		;6cee
	dec h			;6cf0
	ld h,032h		;6cf1
	inc bc			;6cf3
	add hl,bc		;6cf4
l6cf5h:
	ld bc,00902h		;6cf5
	ld (bc),a		;6cf8
	ld bc,0474ah		;6cf9
	ld c,b			;6cfc
	ld c,c			;6cfd
	ld b,a			;6cfe
	ld c,b			;6cff
	ld c,c			;6d00
l6d01h:
	ld b,a			;6d01
	rst 38h			;6d02
	dec de			;6d03
	rst 38h			;6d04
	add hl,bc		;6d05
	rst 38h			;6d06
	dec e			;6d07
	ld b,a			;6d08
	ld (bc),a		;6d09
	ld d,04ah		;6d0a
	ld (0ff18h),a		;6d0c
	add hl,bc		;6d0f
	ld c,b			;6d10
	inc bc			;6d11
	dec d			;6d12
	ld b,e			;6d13
	inc b			;6d14
l6d15h:
	add hl,de		;6d15
	ld b,(hl)		;6d16
	add hl,bc		;6d17
	inc b			;6d18
	add hl,bc		;6d19
	dec b			;6d1a
	inc h			;6d1b
	ld c,c			;6d1c
	ld bc,00a05h		;6d1d
	ld b,025h		;6d20
	ld b,a			;6d22
	ld (bc),a		;6d23
	ld b,008h		;6d24
	rlca			;6d26
	ld h,048h		;6d27
	inc bc			;6d29
	rlca			;6d2a
	ex af,af'		;6d2b
	ld (hl),a		;6d2c
l6d2dh:
	ld a,c			;6d2d
	ld b,(hl)		;6d2e
	add hl,bc		;6d2f
	inc b			;6d30
	add hl,bc		;6d31
	ld a,b			;6d32
	ld a,d			;6d33
	ld b,(hl)		;6d34
	ld bc,00a05h		;6d35
	inc b			;6d38
	inc h			;6d39
	rst 38h			;6d3a
	ld a,(de)		;6d3b
	ld sp,00651h		;6d3c
	ex af,af'		;6d3f
	dec b			;6d40
	ld h,037h		;6d41
	ld d,e			;6d43
	rlca			;6d44
	ex af,af'		;6d45
	ld b,015h		;6d46
	ld b,(hl)		;6d48
	add hl,bc		;6d49
	dec b			;6d4a
	add hl,bc		;6d4b
	rlca			;6d4c
	ld a,e			;6d4d
	ld b,a			;6d4e
	ld bc,00a06h		;6d4f
	inc b			;6d52
	dec e			;6d53
	ld c,b			;6d54
	ld (bc),a		;6d55
	rlca			;6d56
	ex af,af'		;6d57
	jr z,l6d8ah		;6d58
	ld d,b			;6d5a
	inc bc			;6d5b
	inc b			;6d5c
	ex af,af'		;6d5d
	ld l,00dh		;6d5e
	ld b,(hl)		;6d60
	add hl,bc		;6d61
	dec b			;6d62
	add hl,bc		;6d63
	inc b			;6d64
	inc h			;6d65
	ld c,c			;6d66
	ld bc,00a06h		;6d67
	dec b			;6d6a
	ld h,051h		;6d6b
	ld (bc),a		;6d6d
	dec b			;6d6e
	ex af,af'		;6d6f
	jr z,l6da5h		;6d70
	ld d,e			;6d72
	inc bc			;6d73
	ld b,008h		;6d74
	add hl,hl		;6d76
	cpl			;6d77
	ld e,d			;6d78
	add hl,bc		;6d79
	rlca			;6d7a
	add hl,bc		;6d7b
	inc b			;6d7c
	ld a,e			;6d7d
	ld e,h			;6d7e
	ld bc,00a05h		;6d7f
	rlca			;6d82
	dec e			;6d83
	jr nc,l6dc6h		;6d84
	ld b,008h		;6d86
	jr z,l6dbah		;6d88
l6d8ah:
	ld d,e			;6d8a
	inc bc			;6d8b
	rlca			;6d8c
	ex af,af'		;6d8d
	djnz l6dc4h		;6d8e
	ld e,d			;6d90
	add hl,bc		;6d91
	inc b			;6d92
	add hl,bc		;6d93
	ld b,018h		;6d94
	ld e,h			;6d96
	ld bc,00a05h		;6d97
	rlca			;6d9a
	dec de			;6d9b
	jr nc,l6ddeh		;6d9c
	ld b,008h		;6d9e
	ld a,(de)		;6da0
	jr nz,l6dddh		;6da1
	inc bc			;6da3
	rlca			;6da4
l6da5h:
	ex af,af'		;6da5
	dec b			;6da6
	inc de			;6da7
	dec sp			;6da8
	add hl,bc		;6da9
	inc b			;6daa
	add hl,bc		;6dab
	ld b,07bh		;6dac
	dec b			;6dae
	ld bc,00a05h		;6daf
	rlca			;6db2
	ld h,b			;6db3
	ld b,003h		;6db4
	ld b,008h		;6db6
	dec b			;6db8
	inc e			;6db9
l6dbah:
	inc a			;6dba
	add hl,bc		;6dbb
	rlca			;6dbc
	add hl,bc		;6dbd
	ld b,01dh		;6dbe
	ld a,(00401h)		;6dc0
	ld a,(bc)		;6dc3
l6dc4h:
	rlca			;6dc4
	inc d			;6dc5
l6dc6h:
	ld d,a			;6dc6
	jr nc,l6ddbh		;6dc7
	jr nc,l6dfbh		;6dc9
l6dcbh:
	jr nz,l6dcbh		;6dcb
	rst 38h			;6dcd
	dec de			;6dce
	rst 38h			;6dcf
	ld b,02fh		;6dd0
	ld (bc),a		;6dd2
	add hl,bc		;6dd3
	ld bc,00903h		;6dd4
	inc bc			;6dd7
	ld e,a			;6dd8
	ld a,00ah		;6dd9
l6ddbh:
	add hl,bc		;6ddb
	ld a,(bc)		;6ddc
l6dddh:
	ex af,af'		;6ddd
l6ddeh:
	add hl,bc		;6dde
	ex af,af'		;6ddf
	ld hl,00732h		;6de0
	inc b			;6de3
	dec b			;6de4
	ld b,007h		;6de5
	inc b			;6de7
	jr nc,l6e28h		;6de8
	ld bc,00209h		;6dea
	inc bc			;6ded
	add hl,bc		;6dee
	inc bc			;6def
	ld hl,0444ah		;6df0
	ld d,l			;6df3
	inc b			;6df4
	dec b			;6df5
	ld b,c			;6df6
	ld b,h			;6df7
	ld c,e			;6df8
	jr l6e0ch		;6df9
l6dfbh:
	dec d			;6dfb
	ld bc,01202h		;6dfc
	ld de,0ff16h		;6dff
	add hl,de		;6e02
	nop			;6e03
	ex af,af'		;6e04
	ex af,af'		;6e05
	add hl,bc		;6e06
	ld b,007h		;6e07
	add hl,bc		;6e09
	ld a,(bc)		;6e0a
	ex af,af'		;6e0b
l6e0ch:
	ld (bc),a		;6e0c
	ld bc,00209h		;6e0d
	ld bc,00309h		;6e10
	ld (bc),a		;6e13
	dec b			;6e14
	ld b,007h		;6e15
	inc b			;6e17
	dec bc			;6e18
	dec b			;6e19
	ld b,004h		;6e1a
	ex af,af'		;6e1c
	ex af,af'		;6e1d
	add hl,bc		;6e1e
	ld a,(bc)		;6e1f
	ex af,af'		;6e20
	add hl,bc		;6e21
	ld a,(bc)		;6e22
	ex af,af'		;6e23
	ld bc,00903h		;6e24
	ld (bc),a		;6e27
l6e28h:
	ld bc,00109h		;6e28
	ld (bc),a		;6e2b
	rst 38h			;6e2c
	inc de			;6e2d
	ld c,d			;6e2e
	xor c			;6e2f
	inc b			;6e30
	dec b			;6e31
	ld b,007h		;6e32
	dec b			;6e34
	ld b,007h		;6e35
	dec bc			;6e37
	rst 38h			;6e38
	dec d			;6e39
	rst 38h			;6e3a
	jr $+1			;6e3b
	ld de,00001h		;6e3d
	rst 38h			;6e40
	rla			;6e41
	ld (bc),a		;6e42
	rst 38h			;6e43
	inc d			;6e44
	rst 38h			;6e45
	ld d,0ffh		;6e46
	dec de			;6e48
	rst 38h			;6e49
	ex af,af'		;6e4a
	rst 38h			;6e4b
	ld de,02000h		;6e4c
	nop			;6e4f
	inc bc			;6e50
	ld a,(bc)		;6e51
	dec d			;6e52
	ld hl,00125h		;6e53
	inc bc			;6e56
	ld a,(bc)		;6e57
	dec d			;6e58
	ld hl,00125h		;6e59
	inc bc			;6e5c
	ld a,(bc)		;6e5d
	dec d			;6e5e
	ld hl,00125h		;6e5f
	inc bc			;6e62
	ld a,(bc)		;6e63
	dec d			;6e64
	ld hl,00127h		;6e65
	inc bc			;6e68
	ld a,(bc)		;6e69
	dec d			;6e6a
	ld hl,00225h		;6e6b
	inc bc			;6e6e
	ld a,(bc)		;6e6f
	dec d			;6e70
	ld hl,00125h		;6e71
	inc bc			;6e74
	ld a,(bc)		;6e75
	dec d			;6e76
	ld hl,00125h		;6e77
	inc bc			;6e7a
	ld a,(bc)		;6e7b
	dec d			;6e7c
	ld hl,00125h		;6e7d
	inc bc			;6e80
	ld a,(bc)		;6e81
	dec d			;6e82
	ld hl,00125h		;6e83
	inc bc			;6e86
	ld a,(bc)		;6e87
	dec d			;6e88
	ld hl,00124h		;6e89
	inc bc			;6e8c
	ld a,(bc)		;6e8d
	dec d			;6e8e
	ld hl,00025h		;6e8f
	inc bc			;6e92
	ld a,(bc)		;6e93
	dec d			;6e94
	ld hl,00125h		;6e95
	inc bc			;6e98
	ld a,(bc)		;6e99
	dec d			;6e9a
	ld hl,00125h		;6e9b
	inc bc			;6e9e
	ld a,(bc)		;6e9f
	dec d			;6ea0
	ld hl,00125h		;6ea1
	inc bc			;6ea4
	ld a,(bc)		;6ea5
	dec d			;6ea6
	ld hl,00127h		;6ea7
	inc bc			;6eaa
	ld a,(bc)		;6eab
	dec d			;6eac
	ld hl,00225h		;6ead
	inc bc			;6eb0
	ld a,(bc)		;6eb1
	dec d			;6eb2
	ld hl,00125h		;6eb3
	inc bc			;6eb6
	ld a,(bc)		;6eb7
	dec d			;6eb8
	ld hl,00125h		;6eb9
	inc bc			;6ebc
	ld a,(bc)		;6ebd
	dec d			;6ebe
	ld hl,00125h		;6ebf
	inc bc			;6ec2
	ld a,(bc)		;6ec3
	dec d			;6ec4
	ld hl,00125h		;6ec5
	inc bc			;6ec8
	ld a,(bc)		;6ec9
	dec d			;6eca
	ld hl,00124h		;6ecb
	inc bc			;6ece
	ld a,(bc)		;6ecf
	dec d			;6ed0
	ld hl,00025h		;6ed1
	inc bc			;6ed4
	ld a,(bc)		;6ed5
	dec d			;6ed6
	ld hl,00125h		;6ed7
	inc bc			;6eda
	ld a,(bc)		;6edb
	dec d			;6edc
	ld hl,00125h		;6edd
	inc bc			;6ee0
	ld a,(bc)		;6ee1
	dec d			;6ee2
	ld hl,00125h		;6ee3
	inc bc			;6ee6
	ld a,(bc)		;6ee7
	dec d			;6ee8
	ld hl,00127h		;6ee9
	inc bc			;6eec
	ld a,(bc)		;6eed
	dec d			;6eee
	ld hl,00225h		;6eef
	inc bc			;6ef2
	ld a,(bc)		;6ef3
	dec d			;6ef4
	ld hl,00125h		;6ef5
	inc bc			;6ef8
	ld a,(bc)		;6ef9
	dec d			;6efa
	ld hl,00125h		;6efb
	inc bc			;6efe
	ld a,(bc)		;6eff
	dec d			;6f00
	ld hl,00125h		;6f01
	inc bc			;6f04
	ld a,(bc)		;6f05
	dec d			;6f06
	ld hl,00125h		;6f07
	inc bc			;6f0a
	ld a,(bc)		;6f0b
	ld (de),a		;6f0c
	ld hl,00124h		;6f0d
	inc bc			;6f10
	ld a,(bc)		;6f11
	dec d			;6f12
	ld hl,00025h		;6f13
	inc bc			;6f16
	ld a,(bc)		;6f17
	dec d			;6f18
	ld hl,00125h		;6f19
	inc bc			;6f1c
	ld a,(bc)		;6f1d
	dec d			;6f1e
	ld hl,00125h		;6f1f
	inc bc			;6f22
	ld a,(bc)		;6f23
	ld (de),a		;6f24
	ld hl,00127h		;6f25
	inc bc			;6f28
	ld a,(bc)		;6f29
	dec d			;6f2a
	ld hl,00125h		;6f2b
	inc bc			;6f2e
	ld a,(bc)		;6f2f
	ld (de),a		;6f30
	ld hl,00225h		;6f31
	inc bc			;6f34
	ld a,(bc)		;6f35
	dec d			;6f36
	ld hl,00125h		;6f37
	inc bc			;6f3a
	ld a,(bc)		;6f3b
	ld (de),a		;6f3c
	ld hl,00125h		;6f3d
	inc bc			;6f40
	ld a,(bc)		;6f41
	dec d			;6f42
	ld hl,00125h		;6f43
	inc bc			;6f46
	ld a,(bc)		;6f47
	dec d			;6f48
	ld hl,00124h		;6f49
	inc bc			;6f4c
	ld a,(bc)		;6f4d
	ld (de),a		;6f4e
	ld hl,00125h		;6f4f
	inc bc			;6f52
	ld a,(bc)		;6f53
	dec d			;6f54
	ld hl,00025h		;6f55
	inc bc			;6f58
	rlca			;6f59
	inc de			;6f5a
	ld hl,00125h		;6f5b
	inc bc			;6f5e
	ld b,012h		;6f5f
	ld hl,00125h		;6f61
	inc bc			;6f64
	ld a,(bc)		;6f65
	dec d			;6f66
	ld hl,00127h		;6f67
	inc bc			;6f6a
	ld a,(bc)		;6f6b
	dec d			;6f6c
	ld hl,00125h		;6f6d
	inc bc			;6f70
	rlca			;6f71
	inc de			;6f72
	ld hl,00225h		;6f73
	dec b			;6f76
	ex af,af'		;6f77
	inc d			;6f78
	ld hl,00125h		;6f79
	inc bc			;6f7c
	ld a,(bc)		;6f7d
	dec d			;6f7e
	ld hl,00125h		;6f7f
	inc bc			;6f82
	ld a,(bc)		;6f83
	dec d			;6f84
	ld hl,00125h		;6f85
	inc bc			;6f88
	rlca			;6f89
	inc de			;6f8a
	ld hl,00124h		;6f8b
	inc bc			;6f8e
	ld b,015h		;6f8f
	ld hl,00125h		;6f91
	inc bc			;6f94
	rlca			;6f95
	inc de			;6f96
	ld hl,00025h		;6f97
	inc bc			;6f9a
	ld a,(bc)		;6f9b
	dec d			;6f9c
	ld hl,00125h		;6f9d
	inc b			;6fa0
	ex af,af'		;6fa1
	inc d			;6fa2
	ld (00125h),hl		;6fa3
	inc bc			;6fa6
	ld b,012h		;6fa7
	ld hl,00127h		;6fa9
	inc bc			;6fac
	rlca			;6fad
	inc de			;6fae
	ld hl,00125h		;6faf
	inc bc			;6fb2
	ld a,(bc)		;6fb3
	dec d			;6fb4
	ld hl,00225h		;6fb5
	inc bc			;6fb8
	ld a,(bc)		;6fb9
	dec d			;6fba
	ld hl,00125h		;6fbb
	inc bc			;6fbe
	ld a,(bc)		;6fbf
	dec d			;6fc0
	ld hl,00125h		;6fc1
	dec b			;6fc4
	add hl,de		;6fc5
	inc d			;6fc6
	ld hl,00125h		;6fc7
	inc bc			;6fca
	ld a,(bc)		;6fcb
	dec d			;6fcc
	ld hl,00124h		;6fcd
	inc bc			;6fd0
	ld a,(bc)		;6fd1
	dec d			;6fd2
	ld hl,00125h		;6fd3
	inc bc			;6fd6
	rlca			;6fd7
	inc de			;6fd8
	ld hl,00025h		;6fd9
	inc b			;6fdc
	ex af,af'		;6fdd
	inc d			;6fde
	ld (00125h),hl		;6fdf
	dec b			;6fe2
	add hl,de		;6fe3
	ld d,026h		;6fe4
	dec h			;6fe6
	ld bc,00603h		;6fe7
	dec d			;6fea
	ld hl,00127h		;6feb
	inc bc			;6fee
	rlca			;6fef
	inc de			;6ff0
	ld hl,00125h		;6ff1
	inc b			;6ff4
	add hl,de		;6ff5
	inc d			;6ff6
	ld (00225h),hl		;6ff7
	inc bc			;6ffa
	rlca			;6ffb
	inc de			;6ffc
	ld hl,0ff25h		;6ffd
	ex af,af'		;7000
	rst 38h			;7001
	ld de,02000h		;7002
	ld bc,00805h		;7005
	inc d			;7008
	ld hl,00125h		;7009
	inc bc			;700c
	ld b,012h		;700d
	ld hl,00125h		;700f
	dec b			;7012
	add hl,de		;7013
	inc d			;7014
	ld h,024h		;7015
	ld bc,00703h		;7017
	inc de			;701a
	ld hl,00125h		;701b
	inc b			;701e
	add hl,de		;701f
	inc d			;7020
	ld (00025h),hl		;7021
	inc bc			;7024
	ld b,015h		;7025
	ld hl,00125h		;7027
	inc bc			;702a
	rlca			;702b
	inc de			;702c
	ld hl,00125h		;702d
	dec b			;7030
	add hl,de		;7031
	ld d,026h		;7032
	daa			;7034
	ld bc,00a03h		;7035
	ld (de),a		;7038
	ld hl,00125h		;7039
	inc bc			;703c
	rlca			;703d
	inc de			;703e
	ld hl,00225h		;703f
	inc bc			;7042
	ld b,012h		;7043
	ld hl,00125h		;7045
	inc bc			;7048
	ld a,(bc)		;7049
	ld (de),a		;704a
	ld hl,00125h		;704b
	inc bc			;704e
	ld a,(bc)		;704f
	ld (de),a		;7050
	ld hl,00125h		;7051
	inc bc			;7054
	ld a,(bc)		;7055
	dec d			;7056
	ld hl,00124h		;7057
	inc bc			;705a
	ld a,(bc)		;705b
	ld (de),a		;705c
	ld hl,00125h		;705d
	inc bc			;7060
	ld a,(bc)		;7061
	dec d			;7062
	ld hl,0ff25h		;7063
	ld a,(de)		;7066
	nop			;7067
	inc bc			;7068
	dec bc			;7069
	ld e,021h		;706a
	dec h			;706c
	ld bc,00f03h		;706d
	jr z,l7093h		;7070
	dec h			;7072
	ld bc,00a03h		;7073
	dec d			;7076
	ld hl,00127h		;7077
	inc bc			;707a
	ld a,(bc)		;707b
	dec d			;707c
	ld hl,00125h		;707d
	inc bc			;7080
	dec bc			;7081
	ld e,021h		;7082
	dec h			;7084
	ld (bc),a		;7085
	inc bc			;7086
	rrca			;7087
	jr z,l70abh		;7088
	dec h			;708a
	ld bc,00a03h		;708b
	dec d			;708e
	ld hl,00125h		;708f
	inc bc			;7092
l7093h:
	ld a,(bc)		;7093
	dec d			;7094
	ld hl,00125h		;7095
	inc bc			;7098
	dec bc			;7099
	ld e,021h		;709a
	inc h			;709c
	ld bc,00f03h		;709d
	jr z,l70c3h		;70a0
	dec h			;70a2
	ld bc,00a03h		;70a3
	dec d			;70a6
	ld hl,00025h		;70a7
	inc bc			;70aa
l70abh:
	rlca			;70ab
	inc de			;70ac
	ld hl,00125h		;70ad
	inc bc			;70b0
	dec bc			;70b1
	ld e,021h		;70b2
	dec h			;70b4
	ld bc,00f03h		;70b5
	jr z,l70dbh		;70b8
	daa			;70ba
	ld bc,00703h		;70bb
	inc de			;70be
	ld hl,00125h		;70bf
	inc b			;70c2
l70c3h:
	ex af,af'		;70c3
	inc d			;70c4
	ld h,025h		;70c5
	ld (bc),a		;70c7
	inc bc			;70c8
	dec bc			;70c9
	ld e,021h		;70ca
	dec h			;70cc
	ld bc,00f03h		;70cd
	jr z,l70f3h		;70d0
	dec h			;70d2
	ld bc,00805h		;70d3
	ld a,(de)		;70d6
	ld hl,00125h		;70d7
	inc bc			;70da
l70dbh:
	ld a,(bc)		;70db
	ld (de),a		;70dc
	ld hl,00124h		;70dd
	inc bc			;70e0
	dec bc			;70e1
	ld e,021h		;70e2
	dec h			;70e4
	ld bc,00f03h		;70e5
	jr z,l710bh		;70e8
	dec h			;70ea
	nop			;70eb
	inc bc			;70ec
	ld a,(bc)		;70ed
	dec d			;70ee
	ld hl,00125h		;70ef
	inc bc			;70f2
l70f3h:
	rlca			;70f3
	inc de			;70f4
	ld hl,00125h		;70f5
	inc bc			;70f8
	ld a,(bc)		;70f9
	ld e,021h		;70fa
	daa			;70fc
	ld bc,00a03h		;70fd
	jr z,$+35		;7100
	dec h			;7102
	ld bc,00b03h		;7103
	dec d			;7106
	ld hl,00125h		;7107
	inc bc			;710a
l710bh:
	rrca			;710b
	dec d			;710c
	ld hl,00027h		;710d
	inc bc			;7110
	rlca			;7111
	inc de			;7112
	ld hl,00125h		;7113
	inc b			;7116
	ex af,af'		;7117
	jr $+40			;7118
	dec h			;711a
	ld bc,00a03h		;711b
	ld e,021h		;711e
	daa			;7120
	ld bc,00a03h		;7121
	jr z,l7147h		;7124
	dec h			;7126
	ld bc,00b03h		;7127
	ld (de),a		;712a
	ld hl,00225h		;712b
	inc bc			;712e
	rrca			;712f
	rla			;7130
	ld hl,00125h		;7131
	inc bc			;7134
	ld a,(bc)		;7135
	dec de			;7136
	ld hl,00125h		;7137
	inc bc			;713a
	add hl,hl		;713b
	jr z,l715fh		;713c
	daa			;713e
	ld bc,00f03h		;713f
	dec d			;7142
	ld hl,00125h		;7143
	inc bc			;7146
l7147h:
	ld b,017h		;7147
	ld hl,00125h		;7149
	inc bc			;714c
	add hl,hl		;714d
	dec de			;714e
	ld hl,00025h		;714f
l7152h:
	inc bc			;7152
	ld c,01bh		;7153
	ld hl,00125h		;7155
	inc bc			;7158
	ld c,02bh		;7159
	ld hl,00125h		;715b
	inc bc			;715e
l715fh:
	inc hl			;715f
	ld (de),a		;7160
	ld hl,00124h		;7161
	inc bc			;7164
	ld a,(bc)		;7165
	ld e,021h		;7166
	dec h			;7168
	ld bc,00b03h		;7169
	jr z,$+35		;716c
	dec h			;716e
	ld (bc),a		;716f
	inc bc			;7170
	dec c			;7171
	inc de			;7172
	ld hl,00125h		;7173
	inc bc			;7176
	rrca			;7177
	ld (de),a		;7178
	ld hl,00125h		;7179
	inc b			;717c
	ex af,af'		;717d
	inc d			;717e
	ld h,027h		;717f
	ld bc,02903h		;7181
	rla			;7184
	ld hl,00125h		;7185
	inc bc			;7188
	rrca			;7189
	jr z,l71adh		;718a
	dec h			;718c
	ld bc,00a03h		;718d
	dec d			;7190
	ld hl,00025h		;7191
	inc bc			;7194
	add hl,hl		;7195
	rla			;7196
	ld hl,00125h		;7197
	inc bc			;719a
	rrca			;719b
	jr z,l71bfh		;719c
	dec h			;719e
	ld bc,00a03h		;719f
	dec d			;71a2
	ld hl,00124h		;71a3
	inc bc			;71a6
	add hl,hl		;71a7
	rla			;71a8
	ld hl,00125h		;71a9
	inc bc			;71ac
l71adh:
	ld c,01bh		;71ad
	ld hl,00125h		;71af
	inc bc			;71b2
	dec bc			;71b3
	ld e,021h		;71b4
	dec h			;71b6
	nop			;71b7
	inc bc			;71b8
	inc hl			;71b9
	dec hl			;71ba
	ld hl,00125h		;71bb
	inc bc			;71be
l71bfh:
	ld a,(bc)		;71bf
	dec d			;71c0
	ld hl,00127h		;71c1
	inc bc			;71c4
	dec bc			;71c5
	ld e,021h		;71c6
	dec h			;71c8
	ld bc,02303h		;71c9
	dec de			;71cc
	ld hl,00125h		;71cd
	inc bc			;71d0
	ld a,(bc)		;71d1
	dec hl			;71d2
	ld hl,00225h		;71d3
	inc bc			;71d6
	dec bc			;71d7
	dec d			;71d8
	ld hl,00125h		;71d9
	inc bc			;71dc
	inc hl			;71dd
	ld e,021h		;71de
	dec h			;71e0
	ld bc,00a03h		;71e1
	dec de			;71e4
	ld hl,00124h		;71e5
	inc bc			;71e8
	dec bc			;71e9
	dec hl			;71ea
	ld hl,00125h		;71eb
	inc bc			;71ee
	ld c,015h		;71ef
	ld hl,00125h		;71f1
	inc bc			;71f4
	ld de,02120h		;71f5
	dec h			;71f8
	nop			;71f9
	inc bc			;71fa
	ld a,(bc)		;71fb
	dec hl			;71fc
	ld hl,00125h		;71fd
	inc bc			;7200
	dec bc			;7201
	dec d			;7202
	ld hl,00127h		;7203
	inc bc			;7206
	ld c,01eh		;7207
	ld hl,00125h		;7209
	inc bc			;720c
	inc hl			;720d
	dec hl			;720e
	ld hl,00125h		;720f
	inc bc			;7212
	ld a,(bc)		;7213
	dec d			;7214
	ld hl,00225h		;7215
	inc bc			;7218
	ld a,(bc)		;7219
	dec d			;721a
	ld hl,00125h		;721b
	inc bc			;721e
	ld a,(bc)		;721f
	dec d			;7220
	ld hl,00125h		;7221
	inc bc			;7224
	dec bc			;7225
	ld e,021h		;7226
	inc h			;7228
	ld bc,00f03h		;7229
	dec hl			;722c
	ld hl,00125h		;722d
	inc bc			;7230
	ld a,(bc)		;7231
	dec d			;7232
	ld hl,00125h		;7233
	inc bc			;7236
	ld a,(bc)		;7237
	ld e,021h		;7238
	dec h			;723a
	nop			;723b
	inc bc			;723c
	dec bc			;723d
	jr z,l7261h		;723e
	dec h			;7240
	ld bc,02303h		;7241
	ld (de),a		;7244
	ld hl,00127h		;7245
	inc bc			;7248
	ld a,(bc)		;7249
	dec d			;724a
	ld hl,00125h		;724b
	inc bc			;724e
	add hl,hl		;724f
	rla			;7250
	ld hl,00125h		;7251
	inc bc			;7254
	ld c,01bh		;7255
	ld hl,00225h		;7257
	inc bc			;725a
	ld c,01bh		;725b
	ld hl,00125h		;725d
	inc bc			;7260
l7261h:
	dec c			;7261
	inc e			;7262
	ld hl,00125h		;7263
	inc bc			;7266
	rrca			;7267
	jr z,l728bh		;7268
	inc h			;726a
	ld bc,00a03h		;726b
	ld (de),a		;726e
	ld hl,00125h		;726f
	inc bc			;7272
	ld a,(bc)		;7273
	ld (de),a		;7274
	ld hl,00125h		;7275
	inc bc			;7278
	dec bc			;7279
	ld e,021h		;727a
	dec h			;727c
	nop			;727d
	inc bc			;727e
	ld c,01bh		;727f
	ld hl,00125h		;7281
	inc bc			;7284
	ld c,01bh		;7285
	ld hl,00127h		;7287
	inc bc			;728a
l728bh:
	ld c,01bh		;728b
	ld hl,00125h		;728d
	inc bc			;7290
	dec bc			;7291
	ld e,021h		;7292
	dec h			;7294
	ld bc,00e03h		;7295
	dec de			;7298
	ld hl,00225h		;7299
	inc b			;729c
	add hl,bc		;729d
	dec e			;729e
	ld (00125h),hl		;729f
	inc bc			;72a2
	ld c,01bh		;72a3
	ld hl,0ff25h		;72a5
	add hl,de		;72a8
	nop			;72a9
	rst 38h			;72aa
	ex af,af'		;72ab
	rst 38h			;72ac
	ld de,02000h		;72ad
	ld bc,00f03h		;72b0
	jr z,l72d6h		;72b3
	inc h			;72b5
	ld bc,00a03h		;72b6
	dec d			;72b9
	ld hl,00125h		;72ba
	inc bc			;72bd
	ld a,(bc)		;72be
	dec d			;72bf
	ld hl,00225h		;72c0
	inc bc			;72c3
	ld a,(bc)		;72c4
	dec d			;72c5
	ld hl,02127h		;72c6
	inc bc			;72c9
	ld a,(bc)		;72ca
	dec d			;72cb
	ld hl,02103h		;72cc
	inc bc			;72cf
	ld a,(bc)		;72d0
	dec d			;72d1
	ld hl,02103h		;72d2
	inc bc			;72d5
l72d6h:
	ld a,(bc)		;72d6
	dec d			;72d7
	ld hl,02103h		;72d8
	inc bc			;72db
	ld a,(bc)		;72dc
	dec d			;72dd
	ld hl,02103h		;72de
	inc bc			;72e1
	ld a,(bc)		;72e2
	dec d			;72e3
	ld hl,02103h		;72e4
	inc bc			;72e7
	ld a,(bc)		;72e8
	dec d			;72e9
	ld hl,02103h		;72ea
	inc bc			;72ed
	ld a,(bc)		;72ee
	dec d			;72ef
	ld hl,0ff03h		;72f0
	inc de			;72f3
	ld e,0b3h		;72f4
	ld hl,00a03h		;72f6
	dec d			;72f9
	ld hl,0ff03h		;72fa
	ld de,02004h		;72fd
	rst 38h			;7300
	rla			;7301
	ld bc,00321h		;7302
	ld a,(bc)		;7305
	dec d			;7306
	ld hl,02103h		;7307
	inc bc			;730a
	ld a,(bc)		;730b
	dec d			;730c
	ld hl,02103h		;730d
	inc bc			;7310
	ld a,(bc)		;7311
	dec d			;7312
	ld hl,02103h		;7313
	inc bc			;7316
	ld a,(bc)		;7317
	dec d			;7318
	ld hl,0fe03h		;7319
	rst 38h			;731c
	ld d,000h		;731d
	nop			;731f
	nop			;7320
	djnz l7323h		;7321
l7323h:
	jr nz,l7365h		;7323
l7325h:
	jr nc,l732ch		;7325
	ld b,b			;7327
	scf			;7328
	ld d,l			;7329
	ld h,b			;732a
	sub b			;732b
l732ch:
	ld b,b			;732c
	or b			;732d
	ld h,b			;732e
	ret nz			;732f
l7330h:
	rst 38h			;7330
	rst 38h			;7331
	dec de			;7332
	rst 38h			;7333
	nop			;7334
	djnz l7341h		;7335
	ex af,af'		;7337
	rrca			;7338
	inc bc			;7339
	jr c,l734dh		;733a
	dec bc			;733c
	add hl,bc		;733d
	rrca			;733e
	inc b			;733f
	scf			;7340
l7341h:
	djnz l734dh		;7341
	inc c			;7343
	ld b,001h		;7344
	jr c,l7359h		;7346
	dec bc			;7348
	dec c			;7349
	rlca			;734a
	dec b			;734b
	scf			;734c
l734dh:
	djnz $+13		;734d
	ld c,007h		;734f
	ld bc,01139h		;7351
	ld a,(bc)		;7354
	ex af,af'		;7355
	ld b,003h		;7356
	inc (hl)		;7358
l7359h:
	djnz $+13		;7359
	add hl,bc		;735b
	rlca			;735c
	inc b			;735d
	ld d,e			;735e
	ld de,0080ah		;735f
	ld b,018h		;7362
	ld e,a			;7364
l7365h:
	djnz l736ah		;7365
	ld bc,02618h		;7367
l736ah:
	ld a,(de)		;736a
	ld de,01804h		;736b
	add hl,de		;736e
	ld e,(hl)		;736f
	inc e			;7370
	djnz l7374h		;7371
	ld b,(hl)		;7373
l7374h:
	ld a,(de)		;7374
	ld e,h			;7375
	ld a,(de)		;7376
	ld de,04704h		;7377
	inc b			;737a
	dec sp			;737b
	ld bc,00310h		;737c
	dec b			;737f
	ld (bc),a		;7380
	inc a			;7381
	ld a,011h		;7382
	ld (bc),a		;7384
	ld bc,03d03h		;7385
	ld c,(hl)		;7388
	ld d,c			;7389
	ld hl,02718h		;738a
l738dh:
	add hl,hl		;738d
	ld c,c			;738e
	ld sp,02625h		;738f
	jr z,l73beh		;7392
	ld sp,0fffeh		;7394
	dec b			;7397
	rst 38h			;7398
	dec de			;7399
	ld sp,05453h		;739a
	ld d,l			;739d
	dec h			;739e
	ld d,01ah		;739f
	ld (bc),a		;73a1
	inc bc			;73a2
	ld (bc),a		;73a3
	inc b			;73a4
	ld bc,04352h		;73a5
	ld c,c			;73a8
	ld sp,05f53h		;73a9
	ld a,(de)		;73ac
	jr $+27			;73ad
	ld a,(de)		;73af
	ld bc,00203h		;73b0
	inc b			;73b3
	dec b			;73b4
	ld c,d			;73b5
	ld c,e			;73b6
	ld b,d			;73b7
	jr nc,l740dh		;73b8
	ld e,a			;73ba
	ld a,(de)		;73bb
	ld (bc),a		;73bc
	inc e			;73bd
l73beh:
	ld a,(de)		;73be
	ld (bc),a		;73bf
	ld (bc),a		;73c0
	ld (bc),a		;73c1
	inc b			;73c2
	ld (bc),a		;73c3
	jr l7439h		;73c4
	ld d,(hl)		;73c6
	ld sp,05f53h		;73c7
	ld a,(de)		;73ca
	ld (bc),a		;73cb
	ld (bc),a		;73cc
	ld (bc),a		;73cd
	ld (bc),a		;73ce
	jr l7417h		;73cf
	ld b,a			;73d1
	dec b			;73d2
	jr l73fbh		;73d3
	ld d,(hl)		;73d5
	jr nc,l742bh		;73d6
	ld e,a			;73d8
	ld a,(de)		;73d9
	ld (bc),a		;73da
	ld (bc),a		;73db
	ld (bc),a		;73dc
	add hl,bc		;73dd
	jr l7406h		;73de
	ld b,l			;73e0
	jr c,$+95		;73e1
	ld (hl),h		;73e3
	ld d,(hl)		;73e4
	ld sp,05f53h		;73e5
	ld a,(de)		;73e8
	inc b			;73e9
	inc bc			;73ea
	inc b			;73eb
	inc bc			;73ec
	jr l7415h		;73ed
	ld d,(hl)		;73ef
	ld sp,03130h		;73f0
	jr nc,l7425h		;73f3
	ld d,e			;73f5
	ld e,a			;73f6
	ld a,(de)		;73f7
	ld bc,00304h		;73f8
l73fbh:
	ld bc,02618h		;73fb
	ld e,(hl)		;73fe
	ld e,a			;73ff
	rla			;7400
	ld de,03111h		;7401
	ld d,e			;7404
	ld e,a			;7405
l7406h:
	ld a,(de)		;7406
	ld bc,04a02h		;7407
	ld c,e			;740a
	ld d,e			;740b
	ld e,a			;740c
l740dh:
	ld a,(de)		;740d
	inc e			;740e
	ld a,(de)		;740f
	ld bc,03002h		;7410
	ld d,e			;7413
	ld b,b			;7414
l7415h:
	ld l,005h		;7415
l7417h:
	ld bc,02a03h		;7417
	dec hl			;741a
	ld e,a			;741b
	ld a,(de)		;741c
	ld bc,00301h		;741d
	inc b			;7420
	ld sp,05753h		;7421
	ld d,(hl)		;7424
l7425h:
	ld b,c			;7425
	dec a			;7426
	ld (bc),a		;7427
	ld (bc),a		;7428
	ld (bc),a		;7429
	inc e			;742a
l742bh:
	ld a,(de)		;742b
	inc b			;742c
	jr l7475h		;742d
	ld b,a			;742f
	jr nc,l7485h		;7430
	ld d,a			;7432
	ld d,(hl)		;7433
	ld sp,04142h		;7434
	dec a			;7437
	ld (bc),a		;7438
l7439h:
	dec b			;7439
	ld bc,01803h		;743a
	add hl,de		;743d
	ld a,(de)		;743e
	ld sp,05753h		;743f
	ld d,(hl)		;7442
	ld sp,03130h		;7443
	ld b,d			;7446
	ld b,c			;7447
	ld c,b			;7448
	scf			;7449
	scf			;744a
	ld e,l			;744b
	ld h,045h		;744c
	rst 38h			;744e
	dec de			;744f
	rst 38h			;7450
	add hl,bc		;7451
	rst 38h			;7452
	ld de,02001h		;7453
	rst 38h			;7456
	dec e			;7457
	ld h,01ah		;7458
	ld bc,01918h		;745a
	ld b,l			;745d
	rst 38h			;745e
	add hl,bc		;745f
	rst 38h			;7460
	ld de,02001h		;7461
	ld e,(hl)		;7464
	inc e			;7465
	ld bc,01a46h		;7466
	jr c,$+97		;7469
	ld a,(de)		;746b
	inc bc			;746c
	ld b,a			;746d
	ld (bc),a		;746e
	scf			;746f
	rla			;7470
	ld bc,00104h		;7471
	inc bc			;7474
l7475h:
	jr c,$+19		;7475
	ld (bc),a		;7477
	inc bc			;7478
	inc b			;7479
	inc b			;747a
	scf			;747b
	djnz l7481h		;747c
	inc b			;747e
	inc bc			;747f
	ld (bc),a		;7480
l7481h:
	jr c,$+19		;7481
	inc b			;7483
	ld (bc),a		;7484
l7485h:
	inc bc			;7485
	ld bc,0105dh		;7486
	dec de			;7489
	inc b			;748a
	inc b			;748b
	jr $+40			;748c
	rst 38h			;748e
	ld a,(de)		;748f
	dec d			;7490
	inc e			;7491
	dec b			;7492
	ld bc,04546h		;7493
	ld d,01ah		;7496
	rrca			;7498
	ld bc,03847h		;7499
	rla			;749c
	ld a,(bc)		;749d
	inc c			;749e
	rlca			;749f
	ld bc,01037h		;74a0
	dec bc			;74a3
	ld b,00fh		;74a4
	dec b			;74a6
	jr c,l74bah		;74a7
	ld a,(bc)		;74a9
	dec c			;74aa
	rlca			;74ab
	ld (bc),a		;74ac
	scf			;74ad
	djnz $+13		;74ae
	ld b,00fh		;74b0
	dec b			;74b2
	jr c,l74c6h		;74b3
	ld a,(bc)		;74b5
	ld c,007h		;74b6
	add hl,bc		;74b8
	scf			;74b9
l74bah:
	djnz l74d7h		;74ba
	rrca			;74bc
	ld (bc),a		;74bd
	ld (bc),a		;74be
	ld e,l			;74bf
	dec d			;74c0
	inc e			;74c1
	inc b			;74c2
	inc bc			;74c3
	jr l74ech		;74c4
l74c6h:
	ld d,01ah		;74c6
	inc bc			;74c8
	jr $+27			;74c9
	ld d,(hl)		;74cb
	rla			;74cc
	inc bc			;74cd
	inc b			;74ce
	ld b,(hl)		;74cf
	ld a,(de)		;74d0
	ld sp,00410h		;74d1
	rrca			;74d4
	ld b,a			;74d5
	inc b			;74d6
l74d7h:
	jr nc,$+19		;74d7
	ld a,(bc)		;74d9
	inc c			;74da
	ld b,002h		;74db
	ld sp,00b10h		;74dd
	dec c			;74e0
	nop			;74e1
	rlca			;74e2
	jr nc,$+19		;74e3
	inc bc			;74e5
	rrca			;74e6
	ld (bc),a		;74e7
	rrca			;74e8
	ld sp,00b10h		;74e9
l74ech:
	dec c			;74ec
	nop			;74ed
	ld b,030h		;74ee
	ld de,00d0ah		;74f0
	rlca			;74f3
	inc bc			;74f4
	ld sp,00310h		;74f5
	rrca			;74f8
	inc b			;74f9
	inc b			;74fa
	jr nc,$+79		;74fb
	ccf			;74fd
	ld bc,04a04h		;74fe
	inc (hl)		;7501
	inc d			;7502
	ld c,l			;7503
	inc bc			;7504
	ld a,(0324bh)		;7505
	inc d			;7508
	inc d			;7509
	dec b			;750a
	jr c,$+51		;750b
	inc sp			;750d
	inc d			;750e
	inc l			;750f
	inc b			;7510
	ld d,b			;7511
	inc (hl)		;7512
	dec (hl)		;7513
	inc l			;7514
	dec l			;7515
	inc bc			;7516
	ld (bc),a		;7517
	ld c,a			;7518
	inc (hl)		;7519
	djnz l7520h		;751a
	inc b			;751c
	ld bc,03003h		;751d
l7520h:
	ld de,00202h		;7520
	inc bc			;7523
	ld (bc),a		;7524
	ld sp,00510h		;7525
	inc bc			;7528
	inc b			;7529
	ld bc,01130h		;752a
	ld bc,00304h		;752d
	ld (bc),a		;7530
	ld sp,00210h		;7531
	ld (bc),a		;7534
	ld bc,03003h		;7535
	ld de,00303h		;7538
	dec b			;753b
	inc b			;753c
	ld sp,00410h		;753d
	inc b			;7540
	ld bc,03002h		;7541
	ld de,00201h		;7544
	inc b			;7547
	inc bc			;7548
	ld sp,00510h		;7549
	inc bc			;754c
	ld (bc),a		;754d
	inc b			;754e
	jr nc,$+19		;754f
	ld bc,05104h		;7551
	ld bc,01031h		;7554
	inc bc			;7557
	ld (bc),a		;7558
	ld sp,03003h		;7559
	ld de,00304h		;755c
	cpl			;755f
	inc b			;7560
	ld sp,00110h		;7561
	inc b			;7564
	inc bc			;7565
	ld (bc),a		;7566
	jr nc,l757ah		;7567
	ld (bc),a		;7569
	ld (bc),a		;756a
	ld bc,03103h		;756b
	djnz $+6		;756e
	inc bc			;7570
	dec b			;7571
	inc b			;7572
	jr nc,$+19		;7573
	ld (bc),a		;7575
	inc b			;7576
	ld bc,03102h		;7577
l757ah:
	djnz l757fh		;757a
	ld (bc),a		;757c
	dec b			;757d
	inc bc			;757e
l757fh:
	jr nc,l7592h		;757f
	inc b			;7581
	ld (bc),a		;7582
	add hl,bc		;7583
	inc b			;7584
	ld sp,00210h		;7585
	inc bc			;7588
	inc b			;7589
	ld c,d			;758a
	inc (hl)		;758b
	ld de,00402h		;758c
	ld a,(0324bh)		;758f
l7592h:
	djnz l7595h		;7592
	ld (bc),a		;7594
l7595h:
	scf			;7595
	ld sp,01133h		;7596
	dec b			;7599
	inc bc			;759a
	jr c,l75d1h		;759b
	dec (hl)		;759d
	djnz l75a1h		;759e
	inc b			;75a0
l75a1h:
	ld d,b			;75a1
	ld sp,01134h		;75a2
	ld (bc),a		;75a5
	ld (bc),a		;75a6
	ld (bc),a		;75a7
	ld c,a			;75a8
	inc sp			;75a9
	djnz l75aeh		;75aa
	ld (bc),a		;75ac
	ld (bc),a		;75ad
l75aeh:
	ld (bc),a		;75ae
	inc (hl)		;75af
	ld de,0604ch		;75b0
	ld (bc),a		;75b3
	inc bc			;75b4
	ld sp,03612h		;75b5
	ld e,b			;75b8
	ld (bc),a		;75b9
	inc b			;75ba
	jr nc,$+4		;75bb
	ld bc,00103h		;75bd
	ld (bc),a		;75c0
	ld sp,00513h		;75c1
	ld (bc),a		;75c4
	inc bc			;75c5
	inc bc			;75c6
	jr nc,$+19		;75c7
	ld bc,00402h		;75c9
	inc b			;75cc
	ld sp,00312h		;75cd
	inc b			;75d0
l75d1h:
	ld bc,03002h		;75d1
	ld (bc),a		;75d4
	inc b			;75d5
	ld (bc),a		;75d6
	ld d,c			;75d7
	inc bc			;75d8
	ld sp,00213h		;75d9
	ld (bc),a		;75dc
	cpl			;75dd
	inc b			;75de
	jr nc,l75f2h		;75df
	inc bc			;75e1
	ld (bc),a		;75e2
	ld (bc),a		;75e3
	ld (bc),a		;75e4
	inc (hl)		;75e5
	ld (de),a		;75e6
	inc b			;75e7
	dec b			;75e8
	ld (bc),a		;75e9
	inc bc			;75ea
	jr nc,$+4		;75eb
	ld bc,0030fh		;75ed
	inc b			;75f0
	inc (hl)		;75f1
l75f2h:
	inc de			;75f2
	ld a,(bc)		;75f3
	dec c			;75f4
	ld b,04ah		;75f5
	jr nc,l760ah		;75f7
	dec bc			;75f9
	ld b,00fh		;75fa
	ld c,e			;75fc
	dec hl			;75fd
	djnz l760ah		;75fe
	rlca			;7600
l7601h:
	rrca			;7601
	jr nc,l761ah		;7602
	ld de,00e0bh		;7604
	ld b,031h		;7607
	ld a,(de)		;7609
l760ah:
	djnz l760dh		;760a
	rrca			;760c
l760dh:
	ld (bc),a		;760d
	ld sp,01102h		;760e
	ld (bc),a		;7611
	dec de			;7612
	ld (bc),a		;7613
	ld sp,01003h		;7614
	jr l7635h		;7617
	ld (bc),a		;7619
l761ah:
	ld e,e			;761a
	inc b			;761b
	dec d			;761c
	add hl,de		;761d
	ld a,(de)		;761e
	ld bc,00203h		;761f
	ld d,01ah		;7622
	inc bc			;7624
	dec b			;7625
	inc b			;7626
	inc bc			;7627
	rla			;7628
	ld bc,00104h		;7629
	ld (bc),a		;762c
	inc b			;762d
	ld (00204h),hl		;762e
	ld c,d			;7631
	ld d,c			;7632
	jr $+83			;7633
l7635h:
	ld d,c			;7635
	ld d,c			;7636
	inc (hl)		;7637
	ld d,e			;7638
	ld d,a			;7639
	inc (hl)		;763a
	dec (hl)		;763b
	dec (hl)		;763c
	ld d,e			;763d
	ld b,b			;763e
	ld d,(hl)		;763f
	cp 0ffh			;7640
	dec de			;7642
	rst 38h			;7643
	dec b			;7644
	rst 38h			;7645
	ld de,02006h		;7646
	ld sp,05335h		;7649
	ld e,a			;764c
	ld a,(de)		;764d
	inc bc			;764e
	inc b			;764f
	ld bc,00402h		;7650
	inc bc			;7653
	jr l767ch		;7654
	ld d,(hl)		;7656
	ld sp,03031h		;7657
	ld d,e			;765a
	ld e,a			;765b
	ld a,(de)		;765c
	ld a,(bc)		;765d
	dec bc			;765e
	jr l76a7h		;765f
	ld b,a			;7661
	ld (bc),a		;7662
	jr l768bh		;7663
	ld d,(hl)		;7665
	ld sp,03034h		;7666
	ld d,e			;7669
	ld e,a			;766a
	ld a,(de)		;766b
	dec b			;766c
	inc c			;766d
	jr l76e3h		;766e
	ld d,(hl)		;7670
	jr nc,l76c6h		;7671
	ld b,b			;7673
	ld d,(hl)		;7674
	ld sp,03534h		;7675
	ld d,e			;7678
	ld e,a			;7679
	ld a,(de)		;767a
	inc bc			;767b
l767ch:
	inc bc			;767c
	ld bc,05626h		;767d
	ld sp,04053h		;7680
	ld d,(hl)		;7683
	ld sp,03131h		;7684
	ld d,e			;7687
	ld e,a			;7688
	ld a,(de)		;7689
	ld (bc),a		;768a
l768bh:
	ld bc,02618h		;768b
	ld d,(hl)		;768e
	jr nc,l76e4h		;768f
	ld b,b			;7691
	ld d,(hl)		;7692
	ld sp,03131h		;7693
	ld d,e			;7696
	ld b,b			;7697
	ld l,002h		;7698
	inc bc			;769a
	inc b			;769b
	inc e			;769c
	ld a,(de)		;769d
	ccf			;769e
	ld d,e			;769f
	ld b,b			;76a0
	ld d,(hl)		;76a1
	ld sp,03131h		;76a2
	ld d,e			;76a5
	ld b,b			;76a6
l76a7h:
	ld d,(hl)		;76a7
	rra			;76a8
	ld (bc),a		;76a9
	ld (bc),a		;76aa
	ld bc,00203h		;76ab
	jr $+40			;76ae
	ld d,(hl)		;76b0
	ld sp,03131h		;76b1
	ld d,e			;76b4
	ld b,b			;76b5
	ld d,(hl)		;76b6
	ld sp,04620h		;76b7
	ld b,a			;76ba
	dec b			;76bb
	add hl,bc		;76bc
	jr l76e5h		;76bd
	ld d,(hl)		;76bf
	ld sp,03131h		;76c0
	ld d,e			;76c3
	ld b,b			;76c4
	ld d,(hl)		;76c5
l76c6h:
	ld sp,05f53h		;76c6
	ld a,(de)		;76c9
	inc bc			;76ca
	inc b			;76cb
	jr l76f4h		;76cc
	ld d,(hl)		;76ce
	ld sp,03131h		;76cf
	ld d,e			;76d2
	ld b,b			;76d3
	ld d,(hl)		;76d4
	ld sp,05f53h		;76d5
	ld a,(de)		;76d8
	ld bc,01805h		;76d9
	ld h,056h		;76dc
	ld sp,01bffh		;76de
	rst 38h			;76e1
	inc bc			;76e2
l76e3h:
	ld b,b			;76e3
l76e4h:
	ld e,(hl)		;76e4
l76e5h:
	ld e,h			;76e5
	ld b,a			;76e6
	dec de			;76e7
	ld e,d			;76e8
	ld e,(hl)		;76e9
	ld e,a			;76ea
	ld e,(hl)		;76eb
	ld e,a			;76ec
	ld a,(de)		;76ed
	inc bc			;76ee
	inc b			;76ef
	jr l770bh		;76f0
	ld a,(de)		;76f2
	rst 38h			;76f3
l76f4h:
	add hl,de		;76f4
	nop			;76f5
	ld e,a			;76f6
	ld a,(de)		;76f7
	inc b			;76f8
	inc bc			;76f9
	dec de			;76fa
	inc e			;76fb
	ld a,(de)		;76fc
	ld bc,013ffh		;76fd
	ld l,c			;7700
	or a			;7701
	ld a,(de)		;7702
	ld bc,00403h		;7703
	ld (bc),a		;7706
	ld bc,00403h		;7707
	rst 38h			;770a
l770bh:
	ld de,00002h		;770b
	rst 38h			;770e
	rla			;770f
	ld bc,00000h		;7710
	nop			;7713
	nop			;7714
	nop			;7715
	nop			;7716
	nop			;7717
	nop			;7718
	nop			;7719
	nop			;771a
	nop			;771b
	nop			;771c
	nop			;771d
	nop			;771e
	nop			;771f
	nop			;7720
	nop			;7721
	nop			;7722
	nop			;7723
	nop			;7724
	nop			;7725
	nop			;7726
	nop			;7727
	nop			;7728
	rst 38h			;7729
	ld de,00003h		;772a
	nop			;772d
	nop			;772e
	nop			;772f
	nop			;7730
	nop			;7731
	nop			;7732
	nop			;7733
	nop			;7734
	nop			;7735
	nop			;7736
	nop			;7737
	nop			;7738
	nop			;7739
	nop			;773a
	nop			;773b
	nop			;773c
	rst 38h			;773d
	ld de,00004h		;773e
	nop			;7741
	nop			;7742
	nop			;7743
	nop			;7744
	nop			;7745
	nop			;7746
	nop			;7747
	nop			;7748
	ld h,c			;7749
	ld h,d			;774a
	ld h,e			;774b
	nop			;774c
	nop			;774d
	ld h,h			;774e
	ld h,l			;774f
	ld h,(hl)		;7750
	rst 38h			;7751
	ld de,00005h		;7752
	ld h,a			;7755
	ld l,b			;7756
	ld l,c			;7757
	nop			;7758
	nop			;7759
	ld l,l			;775a
	ld l,(hl)		;775b
	ld l,a			;775c
	ld l,d			;775d
	ld l,e			;775e
	ld l,h			;775f
	nop			;7760
	nop			;7761
	ld (hl),b		;7762
	ld (hl),c		;7763
	ld (hl),d		;7764
	rst 38h			;7765
	dec e			;7766
	rst 38h			;7767
	ld d,000h		;7768
	nop			;776a
	nop			;776b
	ld b,b			;776c
	nop			;776d
	ld d,b			;776e
	cp 0ffh			;776f
	dec de			;7771
	rst 38h			;7772
	add hl,bc		;7773
	rst 38h			;7774
	ld de,00000h		;7775
	ld l,b			;7778
	ld l,b			;7779
	ld (hl),e		;777a
	nop			;777b
	ld d,h			;777c
	ld e,b			;777d
	ld h,l			;777e
	ld h,l			;777f
	ld l,l			;7780
	nop			;7781
	ld d,d			;7782
	ld e,c			;7783
	ld l,h			;7784
	ld h,(hl)		;7785
	dec a			;7786
	ld b,e			;7787
	ld b,(hl)		;7788
	ld d,l			;7789
	ld l,b			;778a
	ld h,c			;778b
	ld b,c			;778c
	ld b,h			;778d
	ld b,a			;778e
	ld b,a			;778f
	inc e			;7790
	ld l,e			;7791
	ccf			;7792
	ld b,l			;7793
	inc b			;7794
	inc b			;7795
	dec e			;7796
	ld e,a			;7797
	ld (hl),d		;7798
	ld c,(hl)		;7799
	dec b			;779a
	dec b			;779b
	ld hl,l7325h		;779c
	ld (de),a		;779f
	ex af,af'		;77a0
	add hl,bc		;77a1
	ld h,026h		;77a2
	nop			;77a4
	ld c,010h		;77a5
	djnz $+37		;77a7
	daa			;77a9
	nop			;77aa
	rrca			;77ab
	ld de,02411h		;77ac
	jr z,l77fch		;77af
	inc de			;77b1
	dec d			;77b2
	ld b,01ch		;77b3
	ld l,l			;77b5
	ld b,b			;77b6
	ld b,e			;77b7
	ld b,(hl)		;77b8
	inc bc			;77b9
	sbc a,e			;77ba
	ld (hl),c		;77bb
	ld b,c			;77bc
	ld b,h			;77bd
	sbc a,l			;77be
	sbc a,a			;77bf
	sbc a,h			;77c0
	ld (hl),b		;77c1
	ld b,d			;77c2
	ld b,l			;77c3
	sbc a,(hl)		;77c4
	and b			;77c5
	ld (00016h),a		;77c6
	rla			;77c9
	add hl,de		;77ca
	jr l7839h		;77cb
	ld d,b			;77cd
	ld c,e			;77ce
	ld c,a			;77cf
	scf			;77d0
	ld e,b			;77d1
	dec hl			;77d2
	ld h,c			;77d3
	ld a,(de)		;77d4
	ld d,04ch		;77d5
	inc b			;77d7
	ld l,062h		;77d8
	dec de			;77da
	ld b,e			;77db
	ld b,(hl)		;77dc
	ex af,af'		;77dd
	dec l			;77de
	ld h,e			;77df
	ld a,044h		;77e0
	ld b,a			;77e2
	rlca			;77e3
	ld l,h			;77e4
	ld d,b			;77e5
	ccf			;77e6
	ld b,l			;77e7
	ld (hl),001h		;77e8
	dec hl			;77ea
	ld h,a			;77eb
	ld c,c			;77ec
	ld e,d			;77ed
	ld d,l			;77ee
	ld (bc),a		;77ef
	ld h,064h		;77f0
	ld c,d			;77f2
	ld a,(de)		;77f3
	ld d,(hl)		;77f4
	rlca			;77f5
	daa			;77f6
	ld l,b			;77f7
	rla			;77f8
	dec de			;77f9
	scf			;77fa
	ld e,b			;77fb
l77fch:
	dec l			;77fc
	ld h,b			;77fd
	nop			;77fe
	nop			;77ff
	ld d,e			;7800
	inc b			;7801
	ld l,h			;7802
	ld c,l			;7803
	ld l,c			;7804
	jr c,l783eh		;7805
	inc d			;7807
	ld (01633h),a		;7808
	nop			;780b
	ld d,e			;780c
	rlca			;780d
	ld l,h			;780e
	ld c,l			;780f
	ld l,c			;7810
	add hl,sp		;7811
	scf			;7812
	ld bc,l742bh		;7813
	dec a			;7816
	ld b,e			;7817
	ld b,(hl)		;7818
	ld (bc),a		;7819
	inc l			;781a
	ld (hl),l		;781b
	ld b,c			;781c
	ld b,h			;781d
	ld b,a			;781e
	rlca			;781f
	dec l			;7820
	inc a			;7821
	ld l,(hl)		;7822
	ld b,l			;7823
	ld (hl),058h		;7824
	add hl,hl		;7826
	ld l,a			;7827
	ld (hl),e		;7828
	rla			;7829
	add hl,de		;782a
	jr l7857h		;782b
	ld d,b			;782d
	ld c,e			;782e
	ld d,a			;782f
	dec sp			;7830
	ld e,b			;7831
	dec l			;7832
	ld h,d			;7833
	ld b,b			;7834
	ld b,e			;7835
	ld b,(hl)		;7836
	inc b			;7837
	ld h,l			;7838
l7839h:
	ld (hl),b		;7839
	jr $+70			;783a
	ld b,a			;783c
	rlca			;783d
l783eh:
	ld l,d			;783e
	ld (hl),c		;783f
	rla			;7840
	ld b,l			;7841
	ld (hl),058h		;7842
	ld h,l			;7844
	ld h,l			;7845
	jr l789ah		;7846
	ld e,c			;7848
	inc b			;7849
	ld l,h			;784a
	ld d,b			;784b
	dec (hl)		;784c
	ld d,a			;784d
	dec sp			;784e
	dec b			;784f
	jr nc,l78b9h		;7850
	nop			;7852
	inc c			;7853
	ld a,(bc)		;7854
	djnz l7888h		;7855
l7857h:
	ld (hl),l		;7857
	nop			;7858
	dec c			;7859
	dec bc			;785a
	dec bc			;785b
	ld l,h			;785c
	ld d,b			;785d
	dec (hl)		;785e
	jr c,l78bch		;785f
	ld d,l			;7861
	dec hl			;7862
	ld e,a			;7863
	ld (hl),d		;7864
	nop			;7865
	rla			;7866
	inc b			;7867
	ld l,068h		;7868
	ld a,(de)		;786a
	add hl,sp		;786b
	scf			;786c
	ex af,af'		;786d
	dec l			;786e
	ld h,l			;786f
	dec de			;7870
	ld e,h			;7871
	ld e,(hl)		;7872
	rlca			;7873
	ld l,h			;7874
	ld d,b			;7875
	ld c,e			;7876
	jr c,l78b0h		;7877
	ld e,b			;7879
	ld (01633h),a		;787a
	nop			;787d
	rla			;787e
	jr l78e6h		;787f
	ld h,b			;7881
	nop			;7882
	ld a,(0555bh)		;7883
	dec hl			;7886
	ld e,a			;7887
l7888h:
	ld (hl),d		;7888
	nop			;7889
	ld d,c			;788a
	inc b			;788b
	ld (l7330h),hl		;788c
	inc c			;788f
	ld a,(bc)		;7890
	djnz $+49		;7891
	ld sp,00d00h		;7893
	dec bc			;7896
	dec bc			;7897
	ld e,07bh		;7898
l789ah:
	add a,d			;789a
	adc a,b			;789b
	sub b			;789c
	jr nz,l7916h		;789d
	ld a,h			;789f
	nop			;78a0
	adc a,c			;78a1
	sub c			;78a2
	inc (hl)		;78a3
	ld e,07bh		;78a4
	add a,e			;78a6
	adc a,d			;78a7
	sub b			;78a8
	jr nz,l7922h		;78a9
	ld a,h			;78ab
	nop			;78ac
	adc a,c			;78ad
	sub c			;78ae
	inc (hl)		;78af
l78b0h:
	ld e,07bh		;78b0
	add a,d			;78b2
	adc a,b			;78b3
	sub b			;78b4
	jr nz,$+121		;78b5
	ld a,h			;78b7
	nop			;78b8
l78b9h:
	adc a,c			;78b9
	sub c			;78ba
	inc (hl)		;78bb
l78bch:
	ld e,07bh		;78bc
	add a,d			;78be
	adc a,b			;78bf
	sub b			;78c0
	jr nz,l793ah		;78c1
	ld a,h			;78c3
	nop			;78c4
	adc a,c			;78c5
	sub c			;78c6
	inc (hl)		;78c7
	rst 38h			;78c8
	rla			;78c9
	ld (bc),a		;78ca
	rst 38h			;78cb
	ld de,00001h		;78cc
	rst 38h			;78cf
	inc de			;78d0
	dec (hl)		;78d1
	cp c			;78d2
	ld e,07bh		;78d3
	add a,d			;78d5
	adc a,b			;78d6
	sub b			;78d7
	jr nz,l7951h		;78d8
	ld a,h			;78da
	nop			;78db
	adc a,c			;78dc
	sub c			;78dd
	inc (hl)		;78de
	ld e,07bh		;78df
	add a,e			;78e1
	adc a,d			;78e2
	sub b			;78e3
	jr nz,l795dh		;78e4
l78e6h:
	ld a,l			;78e6
	nop			;78e7
	adc a,e			;78e8
	sub d			;78e9
	inc (hl)		;78ea
	ld e,07eh		;78eb
	add a,h			;78ed
	adc a,h			;78ee
	sub e			;78ef
	sub a			;78f0
	rst 38h			;78f1
	add hl,de		;78f2
	add a,h			;78f3
	ld a,b			;78f4
	ld a,a			;78f5
	add a,l			;78f6
	adc a,l			;78f7
	sub h			;78f8
	sbc a,b			;78f9
	ld a,c			;78fa
	add a,b			;78fb
	add a,(hl)		;78fc
	adc a,(hl)		;78fd
	sub l			;78fe
	sbc a,c			;78ff
	ld a,d			;7900
	add a,c			;7901
	add a,a			;7902
	adc a,a			;7903
	sub (hl)		;7904
	sbc a,d			;7905
	cp 0ffh			;7906
	ld d,0ffh		;7908
	ld a,(de)		;790a
	rst 38h			;790b
	add hl,bc		;790c
	rst 38h			;790d
	rla			;790e
	ld (bc),a		;790f
	rst 38h			;7910
	ld a,(de)		;7911
	rst 38h			;7912
	add hl,bc		;7913
	rst 38h			;7914
	rla			;7915
l7916h:
	ld bc,019ffh		;7916
	nop			;7919
	rst 38h			;791a
	ld a,(de)		;791b
	rst 38h			;791c
	add hl,bc		;791d
	rst 38h			;791e
	inc de			;791f
	ld c,d			;7920
	xor c			;7921
l7922h:
	rst 38h			;7922
	dec d			;7923
	rst 38h			;7924
	jr $+1			;7925
	ld de,00001h		;7927
	rst 38h			;792a
	rla			;792b
	ld bc,014ffh		;792c
	rst 38h			;792f
	inc de			;7930
	dec (hl)		;7931
	cp c			;7932
	rst 38h			;7933
	ld d,030h		;7934
	nop			;7936
	ld b,b			;7937
	djnz l798ah		;7938
l793ah:
	jr nz,$+20		;793a
	ld (04424h),a		;793c
	inc (hl)		;793f
	ld d,(hl)		;7940
	ld h,h			;7941
	sub a			;7942
	scf			;7943
	or h			;7944
	ld b,h			;7945
	rst 0			;7946
	cp 0ffh			;7947
	dec de			;7949
	rst 38h			;794a
	add hl,bc		;794b
	rst 38h			;794c
	ld de,00002h		;794d
	rst 38h			;7950
l7951h:
	rla			;7951
	ld (bc),a		;7952
	ld bc,00f05h		;7953
	dec c			;7956
	add hl,bc		;7957
	inc b			;7958
	ld (bc),a		;7959
	ld b,009h		;795a
	dec bc			;795c
l795dh:
	dec c			;795d
	ld c,004h		;795e
	rlca			;7960
	ld b,009h		;7961
	rrca			;7963
	dec c			;7964
	add hl,bc		;7965
	ex af,af'		;7966
	ld (bc),a		;7967
	ld bc,00b09h		;7968
	dec bc			;796b
	inc b			;796c
	rlca			;796d
	inc bc			;796e
	inc c			;796f
	ex af,af'		;7970
	nop			;7971
	dec c			;7972
	dec c			;7973
	rlca			;7974
	ld (bc),a		;7975
	inc bc			;7976
	ld c,004h		;7977
	add hl,bc		;7979
	dec c			;797a
	ld b,008h		;797b
	ex af,af'		;797d
	dec b			;797e
	dec bc			;797f
	rrca			;7980
	dec c			;7981
	inc b			;7982
	rlca			;7983
	ld c,007h		;7984
	add hl,bc		;7986
	inc b			;7987
	dec bc			;7988
	inc b			;7989
l798ah:
	dec c			;798a
	ld b,005h		;798b
	dec bc			;798d
	dec c			;798e
	ld c,00dh		;798f
	ld c,00dh		;7991
	add hl,bc		;7993
	dec bc			;7994
	ex af,af'		;7995
	dec bc			;7996
	dec c			;7997
	ld c,00dh		;7998
	ld bc,00701h		;799a
	inc b			;799d
	ex af,af'		;799e
	dec bc			;799f
	dec c			;79a0
	inc bc			;79a1
	inc c			;79a2
	ex af,af'		;79a3
	dec c			;79a4
	dec b			;79a5
	rlca			;79a6
	ex af,af'		;79a7
	ld a,(bc)		;79a8
	ld bc,00504h		;79a9
	ld c,009h		;79ac
	dec b			;79ae
	ex af,af'		;79af
	ld c,00dh		;79b0
	rlca			;79b2
	ex af,af'		;79b3
	inc b			;79b4
	dec c			;79b5
	dec b			;79b6
	add hl,bc		;79b7
	dec bc			;79b8
	add hl,bc		;79b9
	rlca			;79ba
	dec bc			;79bb
	ld c,00dh		;79bc
	ld c,004h		;79be
	ld c,00dh		;79c0
	rrca			;79c2
	dec bc			;79c3
	inc b			;79c4
	ld bc,00e08h		;79c5
	rlca			;79c8
	ld b,005h		;79c9
	ld c,00dh		;79cb
	dec bc			;79cd
	inc b			;79ce
	ld (bc),a		;79cf
	inc c			;79d0
	ld bc,00706h		;79d1
	add hl,bc		;79d4
	dec c			;79d5
	rrca			;79d6
	ld c,001h		;79d7
	inc b			;79d9
	ld b,00eh		;79da
	add hl,bc		;79dc
	ex af,af'		;79dd
	rlca			;79de
	ld (bc),a		;79df
	ex af,af'		;79e0
	dec b			;79e1
	inc b			;79e2
	inc b			;79e3
	dec b			;79e4
	inc bc			;79e5
	dec bc			;79e6
	add hl,bc		;79e7
	dec c			;79e8
	ld b,004h		;79e9
	ex af,af'		;79eb
	ex af,af'		;79ec
	ld c,009h		;79ed
	add hl,bc		;79ef
	inc bc			;79f0
	ld c,009h		;79f1
	rrca			;79f3
	dec bc			;79f4
	dec b			;79f5
	rlca			;79f6
	dec c			;79f7
	inc b			;79f8
	add hl,bc		;79f9
	ld c,001h		;79fa
	inc b			;79fc
	dec bc			;79fd
	dec b			;79fe
	inc bc			;79ff
	ex af,af'		;7a00
	add hl,bc		;7a01
	dec b			;7a02
	rlca			;7a03
	dec b			;7a04
	add hl,bc		;7a05
	rlca			;7a06
	rlca			;7a07
	ld bc,00b09h		;7a08
	rrca			;7a0b
	ld c,004h		;7a0c
	add hl,bc		;7a0e
	rrca			;7a0f
	dec bc			;7a10
	dec c			;7a11
	rrca			;7a12
	inc b			;7a13
	dec bc			;7a14
	rrca			;7a15
	dec bc			;7a16
	inc b			;7a17
	nop			;7a18
	inc b			;7a19
	nop			;7a1a
	dec bc			;7a1b
	nop			;7a1c
	nop			;7a1d
	dec bc			;7a1e
	nop			;7a1f
	dec bc			;7a20
	nop			;7a21
	nop			;7a22
	rrca			;7a23
	nop			;7a24
	rrca			;7a25
	nop			;7a26
	nop			;7a27
	nop			;7a28
	nop			;7a29
	nop			;7a2a
	nop			;7a2b
	nop			;7a2c
	nop			;7a2d
l7a2eh:
	nop			;7a2e
	nop			;7a2f
	nop			;7a30
	nop			;7a31
	nop			;7a32
	nop			;7a33
	nop			;7a34
	nop			;7a35
	nop			;7a36
	nop			;7a37
	nop			;7a38
	nop			;7a39
	nop			;7a3a
	nop			;7a3b
	nop			;7a3c
	nop			;7a3d
	nop			;7a3e
	nop			;7a3f
	nop			;7a40
	nop			;7a41
	nop			;7a42
	rst 38h			;7a43
	add hl,de		;7a44
	nop			;7a45
	nop			;7a46
	nop			;7a47
	nop			;7a48
	nop			;7a49
	nop			;7a4a
	nop			;7a4b
	nop			;7a4c
	nop			;7a4d
	nop			;7a4e
	nop			;7a4f
	nop			;7a50
	nop			;7a51
	nop			;7a52
	nop			;7a53
	nop			;7a54
	nop			;7a55
	nop			;7a56
	nop			;7a57
	nop			;7a58
	nop			;7a59
	nop			;7a5a
	nop			;7a5b
	nop			;7a5c
	nop			;7a5d
	rst 38h			;7a5e
	dec d			;7a5f
	rst 38h			;7a60
	jr $+1			;7a61
	ld de,00003h		;7a63
	rst 38h			;7a66
	inc de			;7a67
	ld l,h			;7a68
	cp d			;7a69
	rst 38h			;7a6a
	inc d			;7a6b
	nop			;7a6c
	nop			;7a6d
	ld bc,00112h		;7a6e
	inc hl			;7a71
	ld (de),a		;7a72
	inc (hl)		;7a73
	inc hl			;7a74
	ld b,l			;7a75
	ld d,b			;7a76
	ld d,b			;7a77
	ld d,b			;7a78
	sub b			;7a79
	jr nc,l7a2eh		;7a7a
	ld b,b			;7a7c
	jp 0fffeh		;7a7d
	dec de			;7a80
	rst 38h			;7a81
	add hl,bc		;7a82
	rst 38h			;7a83
	ld de,00000h		;7a84
	nop			;7a87
	inc c			;7a88
	ld c,00dh		;7a89
	ld hl,00128h		;7a8b
	dec c			;7a8e
	rrca			;7a8f
	ld c,00ch		;7a90
	add hl,hl		;7a92
	ld (bc),a		;7a93
	ld c,00ch		;7a94
	rrca			;7a96
	dec c			;7a97
	ld hl,(00f03h)		;7a98
	dec c			;7a9b
	inc c			;7a9c
	ld c,02bh		;7a9d
	nop			;7a9f
	inc c			;7aa0
	ld c,00dh		;7aa1
	ld hl,00128h		;7aa3
	dec c			;7aa6
	rrca			;7aa7
	ld c,00ch		;7aa8
	add hl,hl		;7aaa
	inc b			;7aab
	djnz $+14		;7aac
	dec de			;7aae
	ld (hl),035h		;7aaf
	dec b			;7ab1
	ld de,01c17h		;7ab2
	ld (0002ch),hl		;7ab5
	rrca			;7ab8
	ld c,00ch		;7ab9
	ld hl,00628h		;7abb
	inc c			;7abe
	rrca			;7abf
	dec c			;7ac0
	ld c,02dh		;7ac1
	inc (hl)		;7ac3
	dec c			;7ac4
	inc c			;7ac5
	ld c,00fh		;7ac6
	ld l,007h		;7ac8
	ld (de),a		;7aca
	dec c			;7acb
	rrca			;7acc
	inc hl			;7acd
	cpl			;7ace
	ex af,af'		;7acf
	inc de			;7ad0
	ld c,01dh		;7ad1
	inc h			;7ad3
	jr nc,l7adfh		;7ad4
	inc d			;7ad6
	jr l7af7h		;7ad7
	dec h			;7ad9
	ld sp,0150ah		;7ada
	add hl,de		;7add
	rra			;7ade
l7adfh:
	ld h,032h		;7adf
	dec bc			;7ae1
	ld d,01ah		;7ae2
	jr nz,l7b0dh		;7ae4
	inc sp			;7ae6
	cp 0ffh			;7ae7
	ld d,0ffh		;7ae9
	rst 38h			;7aeb
	rst 38h			;7aec
	rst 38h			;7aed
	rst 38h			;7aee
	rst 38h			;7aef
	rst 38h			;7af0
	rst 38h			;7af1
	rst 38h			;7af2
	rst 38h			;7af3
	rst 38h			;7af4
	rst 38h			;7af5
	rst 38h			;7af6
l7af7h:
	rst 38h			;7af7
	rst 38h			;7af8
	rst 38h			;7af9
	rst 38h			;7afa
	rst 38h			;7afb
	rst 38h			;7afc
	rst 38h			;7afd
	rst 38h			;7afe
	rst 38h			;7aff
	rst 38h			;7b00
	rst 38h			;7b01
	rst 38h			;7b02
	rst 38h			;7b03
	rst 38h			;7b04
	rst 38h			;7b05
	rst 38h			;7b06
	rst 38h			;7b07
	rst 38h			;7b08
	rst 38h			;7b09
	rst 38h			;7b0a
	rst 38h			;7b0b
	rst 38h			;7b0c
l7b0dh:
	rst 38h			;7b0d
	rst 38h			;7b0e
	rst 38h			;7b0f
	rst 38h			;7b10
	rst 38h			;7b11
	rst 38h			;7b12
	rst 38h			;7b13
	rst 38h			;7b14
	rst 38h			;7b15
	rst 38h			;7b16
	rst 38h			;7b17
	rst 38h			;7b18
	rst 38h			;7b19
	rst 38h			;7b1a
	rst 38h			;7b1b
	rst 38h			;7b1c
	rst 38h			;7b1d
	rst 38h			;7b1e
	rst 38h			;7b1f
	rst 38h			;7b20
	rst 38h			;7b21
	rst 38h			;7b22
	rst 38h			;7b23
	rst 38h			;7b24
	rst 38h			;7b25
	rst 38h			;7b26
	rst 38h			;7b27
	rst 38h			;7b28
	rst 38h			;7b29
	rst 38h			;7b2a
	rst 38h			;7b2b
	rst 38h			;7b2c
	rst 38h			;7b2d
	rst 38h			;7b2e
	rst 38h			;7b2f
	rst 38h			;7b30
	rst 38h			;7b31
	rst 38h			;7b32
	rst 38h			;7b33
	rst 38h			;7b34
	rst 38h			;7b35
	rst 38h			;7b36
	rst 38h			;7b37
	rst 38h			;7b38
	rst 38h			;7b39
	rst 38h			;7b3a
	rst 38h			;7b3b
	rst 38h			;7b3c
	rst 38h			;7b3d
	rst 38h			;7b3e
	rst 38h			;7b3f
	rst 38h			;7b40
	rst 38h			;7b41
	rst 38h			;7b42
	rst 38h			;7b43
	rst 38h			;7b44
	rst 38h			;7b45
	rst 38h			;7b46
	rst 38h			;7b47
	rst 38h			;7b48
	rst 38h			;7b49
	rst 38h			;7b4a
	rst 38h			;7b4b
	rst 38h			;7b4c
	rst 38h			;7b4d
	rst 38h			;7b4e
	rst 38h			;7b4f
	rst 38h			;7b50
	rst 38h			;7b51
	rst 38h			;7b52
	rst 38h			;7b53
	rst 38h			;7b54
	rst 38h			;7b55
	rst 38h			;7b56
	rst 38h			;7b57
	rst 38h			;7b58
	rst 38h			;7b59
	rst 38h			;7b5a
	rst 38h			;7b5b
	rst 38h			;7b5c
	rst 38h			;7b5d
	rst 38h			;7b5e
	rst 38h			;7b5f
	rst 38h			;7b60
	rst 38h			;7b61
	rst 38h			;7b62
	rst 38h			;7b63
	rst 38h			;7b64
	rst 38h			;7b65
	rst 38h			;7b66
	rst 38h			;7b67
	rst 38h			;7b68
	rst 38h			;7b69
	rst 38h			;7b6a
	rst 38h			;7b6b
	rst 38h			;7b6c
	rst 38h			;7b6d
	rst 38h			;7b6e
	rst 38h			;7b6f
	rst 38h			;7b70
	rst 38h			;7b71
	rst 38h			;7b72
	rst 38h			;7b73
	rst 38h			;7b74
	rst 38h			;7b75
	rst 38h			;7b76
	rst 38h			;7b77
	rst 38h			;7b78
	rst 38h			;7b79
	rst 38h			;7b7a
	rst 38h			;7b7b
	rst 38h			;7b7c
	rst 38h			;7b7d
	rst 38h			;7b7e
	rst 38h			;7b7f
	rst 38h			;7b80
	rst 38h			;7b81
	rst 38h			;7b82
	rst 38h			;7b83
	rst 38h			;7b84
	rst 38h			;7b85
	rst 38h			;7b86
	rst 38h			;7b87
	rst 38h			;7b88
	rst 38h			;7b89
	rst 38h			;7b8a
	rst 38h			;7b8b
	rst 38h			;7b8c
	rst 38h			;7b8d
	rst 38h			;7b8e
	rst 38h			;7b8f
	rst 38h			;7b90
	rst 38h			;7b91
	rst 38h			;7b92
	rst 38h			;7b93
	rst 38h			;7b94
	rst 38h			;7b95
	rst 38h			;7b96
	rst 38h			;7b97
	rst 38h			;7b98
	rst 38h			;7b99
	rst 38h			;7b9a
	rst 38h			;7b9b
	rst 38h			;7b9c
	rst 38h			;7b9d
	rst 38h			;7b9e
	rst 38h			;7b9f
	rst 38h			;7ba0
	rst 38h			;7ba1
	rst 38h			;7ba2
	rst 38h			;7ba3
	rst 38h			;7ba4
	rst 38h			;7ba5
	rst 38h			;7ba6
	rst 38h			;7ba7
	rst 38h			;7ba8
	rst 38h			;7ba9
	rst 38h			;7baa
	rst 38h			;7bab
	rst 38h			;7bac
	rst 38h			;7bad
	rst 38h			;7bae
	rst 38h			;7baf
	rst 38h			;7bb0
	rst 38h			;7bb1
	rst 38h			;7bb2
	rst 38h			;7bb3
	rst 38h			;7bb4
	rst 38h			;7bb5
	rst 38h			;7bb6
	rst 38h			;7bb7
	rst 38h			;7bb8
	rst 38h			;7bb9
	rst 38h			;7bba
	rst 38h			;7bbb
	rst 38h			;7bbc
	rst 38h			;7bbd
	rst 38h			;7bbe
	rst 38h			;7bbf
	rst 38h			;7bc0
	rst 38h			;7bc1
	rst 38h			;7bc2
	rst 38h			;7bc3
	rst 38h			;7bc4
	rst 38h			;7bc5
	rst 38h			;7bc6
	rst 38h			;7bc7
	rst 38h			;7bc8
	rst 38h			;7bc9
	rst 38h			;7bca
	rst 38h			;7bcb
	rst 38h			;7bcc
	rst 38h			;7bcd
	rst 38h			;7bce
	rst 38h			;7bcf
	rst 38h			;7bd0
	rst 38h			;7bd1
	rst 38h			;7bd2
	rst 38h			;7bd3
	rst 38h			;7bd4
	rst 38h			;7bd5
	rst 38h			;7bd6
	rst 38h			;7bd7
	rst 38h			;7bd8
	rst 38h			;7bd9
	rst 38h			;7bda
	rst 38h			;7bdb
	rst 38h			;7bdc
	rst 38h			;7bdd
	rst 38h			;7bde
	rst 38h			;7bdf
	rst 38h			;7be0
	rst 38h			;7be1
	rst 38h			;7be2
	rst 38h			;7be3
	rst 38h			;7be4
	rst 38h			;7be5
	rst 38h			;7be6
	rst 38h			;7be7
	rst 38h			;7be8
	rst 38h			;7be9
	rst 38h			;7bea
	rst 38h			;7beb
	rst 38h			;7bec
	rst 38h			;7bed
	rst 38h			;7bee
	rst 38h			;7bef
	rst 38h			;7bf0
	rst 38h			;7bf1
	rst 38h			;7bf2
	rst 38h			;7bf3
	rst 38h			;7bf4
	rst 38h			;7bf5
	rst 38h			;7bf6
	rst 38h			;7bf7
	rst 38h			;7bf8
	rst 38h			;7bf9
	rst 38h			;7bfa
	rst 38h			;7bfb
	rst 38h			;7bfc
	rst 38h			;7bfd
	rst 38h			;7bfe
	rst 38h			;7bff
	rst 38h			;7c00
	rst 38h			;7c01
	rst 38h			;7c02
	rst 38h			;7c03
	rst 38h			;7c04
	rst 38h			;7c05
	rst 38h			;7c06
	rst 38h			;7c07
	rst 38h			;7c08
	rst 38h			;7c09
	rst 38h			;7c0a
	rst 38h			;7c0b
	rst 38h			;7c0c
	rst 38h			;7c0d
	rst 38h			;7c0e
	rst 38h			;7c0f
	rst 38h			;7c10
	rst 38h			;7c11
	rst 38h			;7c12
	rst 38h			;7c13
	rst 38h			;7c14
	rst 38h			;7c15
	rst 38h			;7c16
	rst 38h			;7c17
	rst 38h			;7c18
	rst 38h			;7c19
	rst 38h			;7c1a
	rst 38h			;7c1b
	rst 38h			;7c1c
	rst 38h			;7c1d
	rst 38h			;7c1e
	rst 38h			;7c1f
	rst 38h			;7c20
	rst 38h			;7c21
	rst 38h			;7c22
	rst 38h			;7c23
	rst 38h			;7c24
	rst 38h			;7c25
	rst 38h			;7c26
	rst 38h			;7c27
	rst 38h			;7c28
	rst 38h			;7c29
	rst 38h			;7c2a
	rst 38h			;7c2b
	rst 38h			;7c2c
	rst 38h			;7c2d
	rst 38h			;7c2e
	rst 38h			;7c2f
	rst 38h			;7c30
	rst 38h			;7c31
	rst 38h			;7c32
	rst 38h			;7c33
	rst 38h			;7c34
	rst 38h			;7c35
	rst 38h			;7c36
	rst 38h			;7c37
	rst 38h			;7c38
	rst 38h			;7c39
	rst 38h			;7c3a
	rst 38h			;7c3b
	rst 38h			;7c3c
	rst 38h			;7c3d
	rst 38h			;7c3e
	rst 38h			;7c3f
	rst 38h			;7c40
	rst 38h			;7c41
	rst 38h			;7c42
	rst 38h			;7c43
	rst 38h			;7c44
	rst 38h			;7c45
	rst 38h			;7c46
	rst 38h			;7c47
	rst 38h			;7c48
	rst 38h			;7c49
	rst 38h			;7c4a
	rst 38h			;7c4b
	rst 38h			;7c4c
	rst 38h			;7c4d
	rst 38h			;7c4e
	rst 38h			;7c4f
	rst 38h			;7c50
	rst 38h			;7c51
	rst 38h			;7c52
	rst 38h			;7c53
	rst 38h			;7c54
	rst 38h			;7c55
	rst 38h			;7c56
	rst 38h			;7c57
	rst 38h			;7c58
	rst 38h			;7c59
	rst 38h			;7c5a
	rst 38h			;7c5b
	rst 38h			;7c5c
	rst 38h			;7c5d
	rst 38h			;7c5e
	rst 38h			;7c5f
	rst 38h			;7c60
	rst 38h			;7c61
	rst 38h			;7c62
	rst 38h			;7c63
	rst 38h			;7c64
	rst 38h			;7c65
	rst 38h			;7c66
	rst 38h			;7c67
	rst 38h			;7c68
	rst 38h			;7c69
	rst 38h			;7c6a
	rst 38h			;7c6b
	rst 38h			;7c6c
	rst 38h			;7c6d
	rst 38h			;7c6e
	rst 38h			;7c6f
	rst 38h			;7c70
	rst 38h			;7c71
	rst 38h			;7c72
	rst 38h			;7c73
	rst 38h			;7c74
	rst 38h			;7c75
	rst 38h			;7c76
	rst 38h			;7c77
	rst 38h			;7c78
	rst 38h			;7c79
	rst 38h			;7c7a
	rst 38h			;7c7b
	rst 38h			;7c7c
	rst 38h			;7c7d
	rst 38h			;7c7e
	rst 38h			;7c7f
	rst 38h			;7c80
	rst 38h			;7c81
	rst 38h			;7c82
	rst 38h			;7c83
	rst 38h			;7c84
	rst 38h			;7c85
	rst 38h			;7c86
	rst 38h			;7c87
	rst 38h			;7c88
	rst 38h			;7c89
	rst 38h			;7c8a
	rst 38h			;7c8b
	rst 38h			;7c8c
	rst 38h			;7c8d
	rst 38h			;7c8e
	rst 38h			;7c8f
	rst 38h			;7c90
	rst 38h			;7c91
	rst 38h			;7c92
	rst 38h			;7c93
	rst 38h			;7c94
	rst 38h			;7c95
	rst 38h			;7c96
	rst 38h			;7c97
	rst 38h			;7c98
	rst 38h			;7c99
	rst 38h			;7c9a
	rst 38h			;7c9b
	rst 38h			;7c9c
	rst 38h			;7c9d
	rst 38h			;7c9e
	rst 38h			;7c9f
	rst 38h			;7ca0
	rst 38h			;7ca1
	rst 38h			;7ca2
	rst 38h			;7ca3
	rst 38h			;7ca4
	rst 38h			;7ca5
	rst 38h			;7ca6
	rst 38h			;7ca7
	rst 38h			;7ca8
	rst 38h			;7ca9
	rst 38h			;7caa
	rst 38h			;7cab
	rst 38h			;7cac
	rst 38h			;7cad
	rst 38h			;7cae
	rst 38h			;7caf
	rst 38h			;7cb0
	rst 38h			;7cb1
	rst 38h			;7cb2
	rst 38h			;7cb3
	rst 38h			;7cb4
	rst 38h			;7cb5
	rst 38h			;7cb6
	rst 38h			;7cb7
	rst 38h			;7cb8
	rst 38h			;7cb9
	rst 38h			;7cba
	rst 38h			;7cbb
	rst 38h			;7cbc
	rst 38h			;7cbd
	rst 38h			;7cbe
	rst 38h			;7cbf
	rst 38h			;7cc0
	rst 38h			;7cc1
	rst 38h			;7cc2
	rst 38h			;7cc3
	rst 38h			;7cc4
	rst 38h			;7cc5
	rst 38h			;7cc6
	rst 38h			;7cc7
	rst 38h			;7cc8
	rst 38h			;7cc9
	rst 38h			;7cca
	rst 38h			;7ccb
	rst 38h			;7ccc
	rst 38h			;7ccd
	rst 38h			;7cce
	rst 38h			;7ccf
	rst 38h			;7cd0
	rst 38h			;7cd1
	rst 38h			;7cd2
	rst 38h			;7cd3
	rst 38h			;7cd4
	rst 38h			;7cd5
	rst 38h			;7cd6
	rst 38h			;7cd7
	rst 38h			;7cd8
	rst 38h			;7cd9
	rst 38h			;7cda
	rst 38h			;7cdb
	rst 38h			;7cdc
	rst 38h			;7cdd
	rst 38h			;7cde
	rst 38h			;7cdf
	rst 38h			;7ce0
	rst 38h			;7ce1
	rst 38h			;7ce2
	rst 38h			;7ce3
	rst 38h			;7ce4
	rst 38h			;7ce5
	rst 38h			;7ce6
	rst 38h			;7ce7
	rst 38h			;7ce8
	rst 38h			;7ce9
	rst 38h			;7cea
	rst 38h			;7ceb
	rst 38h			;7cec
	rst 38h			;7ced
	rst 38h			;7cee
	rst 38h			;7cef
	rst 38h			;7cf0
	rst 38h			;7cf1
	rst 38h			;7cf2
	rst 38h			;7cf3
	rst 38h			;7cf4
	rst 38h			;7cf5
	rst 38h			;7cf6
	rst 38h			;7cf7
	rst 38h			;7cf8
	rst 38h			;7cf9
	rst 38h			;7cfa
	rst 38h			;7cfb
	rst 38h			;7cfc
	rst 38h			;7cfd
	rst 38h			;7cfe
	rst 38h			;7cff
	rst 38h			;7d00
	rst 38h			;7d01
	rst 38h			;7d02
	rst 38h			;7d03
	rst 38h			;7d04
	rst 38h			;7d05
	rst 38h			;7d06
	rst 38h			;7d07
	rst 38h			;7d08
	rst 38h			;7d09
	rst 38h			;7d0a
	rst 38h			;7d0b
	rst 38h			;7d0c
	rst 38h			;7d0d
	rst 38h			;7d0e
	rst 38h			;7d0f
	rst 38h			;7d10
	rst 38h			;7d11
	rst 38h			;7d12
	rst 38h			;7d13
	rst 38h			;7d14
	rst 38h			;7d15
	rst 38h			;7d16
	rst 38h			;7d17
	rst 38h			;7d18
	rst 38h			;7d19
	rst 38h			;7d1a
	rst 38h			;7d1b
	rst 38h			;7d1c
	rst 38h			;7d1d
	rst 38h			;7d1e
	rst 38h			;7d1f
	rst 38h			;7d20
	rst 38h			;7d21
	rst 38h			;7d22
	rst 38h			;7d23
	rst 38h			;7d24
	rst 38h			;7d25
	rst 38h			;7d26
	rst 38h			;7d27
	rst 38h			;7d28
	rst 38h			;7d29
	rst 38h			;7d2a
	rst 38h			;7d2b
	rst 38h			;7d2c
	rst 38h			;7d2d
	rst 38h			;7d2e
	rst 38h			;7d2f
	rst 38h			;7d30
	rst 38h			;7d31
	rst 38h			;7d32
	rst 38h			;7d33
	rst 38h			;7d34
	rst 38h			;7d35
	rst 38h			;7d36
	rst 38h			;7d37
	rst 38h			;7d38
	rst 38h			;7d39
	rst 38h			;7d3a
	rst 38h			;7d3b
	rst 38h			;7d3c
	rst 38h			;7d3d
	rst 38h			;7d3e
	rst 38h			;7d3f
	rst 38h			;7d40
	rst 38h			;7d41
	rst 38h			;7d42
	rst 38h			;7d43
	rst 38h			;7d44
	rst 38h			;7d45
	rst 38h			;7d46
	rst 38h			;7d47
	rst 38h			;7d48
	rst 38h			;7d49
	rst 38h			;7d4a
	rst 38h			;7d4b
	rst 38h			;7d4c
	rst 38h			;7d4d
	rst 38h			;7d4e
	rst 38h			;7d4f
	rst 38h			;7d50
	rst 38h			;7d51
	rst 38h			;7d52
	rst 38h			;7d53
	rst 38h			;7d54
	rst 38h			;7d55
	rst 38h			;7d56
	rst 38h			;7d57
	rst 38h			;7d58
	rst 38h			;7d59
	rst 38h			;7d5a
	rst 38h			;7d5b
	rst 38h			;7d5c
	rst 38h			;7d5d
	rst 38h			;7d5e
	rst 38h			;7d5f
	rst 38h			;7d60
	rst 38h			;7d61
	rst 38h			;7d62
	rst 38h			;7d63
	rst 38h			;7d64
	rst 38h			;7d65
	rst 38h			;7d66
	rst 38h			;7d67
	rst 38h			;7d68
	rst 38h			;7d69
	rst 38h			;7d6a
	rst 38h			;7d6b
	rst 38h			;7d6c
	rst 38h			;7d6d
	rst 38h			;7d6e
	rst 38h			;7d6f
	rst 38h			;7d70
	rst 38h			;7d71
	rst 38h			;7d72
	rst 38h			;7d73
	rst 38h			;7d74
	rst 38h			;7d75
	rst 38h			;7d76
	rst 38h			;7d77
	rst 38h			;7d78
	rst 38h			;7d79
	rst 38h			;7d7a
	rst 38h			;7d7b
	rst 38h			;7d7c
	rst 38h			;7d7d
	rst 38h			;7d7e
	rst 38h			;7d7f
	rst 38h			;7d80
	rst 38h			;7d81
	rst 38h			;7d82
	rst 38h			;7d83
	rst 38h			;7d84
	rst 38h			;7d85
	rst 38h			;7d86
	rst 38h			;7d87
	rst 38h			;7d88
	rst 38h			;7d89
	rst 38h			;7d8a
	rst 38h			;7d8b
	rst 38h			;7d8c
	rst 38h			;7d8d
	rst 38h			;7d8e
	rst 38h			;7d8f
l7d90h:
	rst 38h			;7d90
l7d91h:
	rst 38h			;7d91
	rst 38h			;7d92
	rst 38h			;7d93
	rst 38h			;7d94
	rst 38h			;7d95
	rst 38h			;7d96
	rst 38h			;7d97
	rst 38h			;7d98
	rst 38h			;7d99
	rst 38h			;7d9a
	rst 38h			;7d9b
	rst 38h			;7d9c
	rst 38h			;7d9d
	rst 38h			;7d9e
	rst 38h			;7d9f
	rst 38h			;7da0
	rst 38h			;7da1
	rst 38h			;7da2
	rst 38h			;7da3
	rst 38h			;7da4
	rst 38h			;7da5
	rst 38h			;7da6
	rst 38h			;7da7
	rst 38h			;7da8
	rst 38h			;7da9
	rst 38h			;7daa
	rst 38h			;7dab
	rst 38h			;7dac
	rst 38h			;7dad
	rst 38h			;7dae
	rst 38h			;7daf
	rst 38h			;7db0
	rst 38h			;7db1
	rst 38h			;7db2
	rst 38h			;7db3
	rst 38h			;7db4
	rst 38h			;7db5
	rst 38h			;7db6
	rst 38h			;7db7
	rst 38h			;7db8
	rst 38h			;7db9
	rst 38h			;7dba
	rst 38h			;7dbb
	rst 38h			;7dbc
	rst 38h			;7dbd
	rst 38h			;7dbe
	rst 38h			;7dbf
	rst 38h			;7dc0
	rst 38h			;7dc1
	rst 38h			;7dc2
	rst 38h			;7dc3
	rst 38h			;7dc4
	rst 38h			;7dc5
	rst 38h			;7dc6
	rst 38h			;7dc7
	rst 38h			;7dc8
	rst 38h			;7dc9
	rst 38h			;7dca
	rst 38h			;7dcb
	rst 38h			;7dcc
	rst 38h			;7dcd
	rst 38h			;7dce
	rst 38h			;7dcf
	rst 38h			;7dd0
	rst 38h			;7dd1
	rst 38h			;7dd2
	rst 38h			;7dd3
	rst 38h			;7dd4
	rst 38h			;7dd5
	rst 38h			;7dd6
	rst 38h			;7dd7
	rst 38h			;7dd8
	rst 38h			;7dd9
	rst 38h			;7dda
	rst 38h			;7ddb
	rst 38h			;7ddc
	rst 38h			;7ddd
	rst 38h			;7dde
	rst 38h			;7ddf
	rst 38h			;7de0
	rst 38h			;7de1
	rst 38h			;7de2
	rst 38h			;7de3
	rst 38h			;7de4
	rst 38h			;7de5
	rst 38h			;7de6
	rst 38h			;7de7
	rst 38h			;7de8
	rst 38h			;7de9
	rst 38h			;7dea
	rst 38h			;7deb
	rst 38h			;7dec
	rst 38h			;7ded
	rst 38h			;7dee
	rst 38h			;7def
	rst 38h			;7df0
	rst 38h			;7df1
	rst 38h			;7df2
	rst 38h			;7df3
	rst 38h			;7df4
	rst 38h			;7df5
	rst 38h			;7df6
	rst 38h			;7df7
	rst 38h			;7df8
	rst 38h			;7df9
	rst 38h			;7dfa
	rst 38h			;7dfb
	rst 38h			;7dfc
	rst 38h			;7dfd
	rst 38h			;7dfe
	rst 38h			;7dff
	rst 38h			;7e00
	rst 38h			;7e01
	rst 38h			;7e02
	rst 38h			;7e03
	rst 38h			;7e04
	rst 38h			;7e05
	rst 38h			;7e06
	rst 38h			;7e07
	rst 38h			;7e08
	rst 38h			;7e09
	rst 38h			;7e0a
	rst 38h			;7e0b
	rst 38h			;7e0c
	rst 38h			;7e0d
	rst 38h			;7e0e
	rst 38h			;7e0f
	rst 38h			;7e10
	rst 38h			;7e11
	rst 38h			;7e12
	rst 38h			;7e13
	rst 38h			;7e14
	rst 38h			;7e15
	rst 38h			;7e16
	rst 38h			;7e17
	rst 38h			;7e18
	rst 38h			;7e19
	rst 38h			;7e1a
	rst 38h			;7e1b
	rst 38h			;7e1c
	rst 38h			;7e1d
	rst 38h			;7e1e
	rst 38h			;7e1f
	rst 38h			;7e20
	rst 38h			;7e21
	rst 38h			;7e22
	rst 38h			;7e23
	rst 38h			;7e24
	rst 38h			;7e25
	rst 38h			;7e26
	rst 38h			;7e27
	rst 38h			;7e28
	rst 38h			;7e29
	rst 38h			;7e2a
	rst 38h			;7e2b
	rst 38h			;7e2c
	rst 38h			;7e2d
	rst 38h			;7e2e
	rst 38h			;7e2f
	rst 38h			;7e30
	rst 38h			;7e31
	rst 38h			;7e32
	rst 38h			;7e33
	rst 38h			;7e34
	rst 38h			;7e35
	rst 38h			;7e36
	rst 38h			;7e37
	rst 38h			;7e38
	rst 38h			;7e39
	rst 38h			;7e3a
	rst 38h			;7e3b
	rst 38h			;7e3c
	rst 38h			;7e3d
	rst 38h			;7e3e
	rst 38h			;7e3f
	rst 38h			;7e40
	rst 38h			;7e41
	rst 38h			;7e42
	rst 38h			;7e43
	rst 38h			;7e44
	rst 38h			;7e45
	rst 38h			;7e46
	rst 38h			;7e47
	rst 38h			;7e48
	rst 38h			;7e49
	rst 38h			;7e4a
	rst 38h			;7e4b
	rst 38h			;7e4c
	rst 38h			;7e4d
	rst 38h			;7e4e
	rst 38h			;7e4f
	rst 38h			;7e50
	rst 38h			;7e51
	rst 38h			;7e52
	rst 38h			;7e53
	rst 38h			;7e54
	rst 38h			;7e55
	rst 38h			;7e56
	rst 38h			;7e57
	rst 38h			;7e58
	rst 38h			;7e59
	rst 38h			;7e5a
	rst 38h			;7e5b
	rst 38h			;7e5c
	rst 38h			;7e5d
	rst 38h			;7e5e
	rst 38h			;7e5f
	rst 38h			;7e60
	rst 38h			;7e61
	rst 38h			;7e62
	rst 38h			;7e63
	rst 38h			;7e64
	rst 38h			;7e65
	rst 38h			;7e66
	rst 38h			;7e67
	rst 38h			;7e68
	rst 38h			;7e69
	rst 38h			;7e6a
	rst 38h			;7e6b
	rst 38h			;7e6c
	rst 38h			;7e6d
	rst 38h			;7e6e
	rst 38h			;7e6f
	rst 38h			;7e70
	rst 38h			;7e71
	rst 38h			;7e72
	rst 38h			;7e73
	rst 38h			;7e74
	rst 38h			;7e75
	rst 38h			;7e76
	rst 38h			;7e77
	rst 38h			;7e78
	rst 38h			;7e79
	rst 38h			;7e7a
	rst 38h			;7e7b
	rst 38h			;7e7c
	rst 38h			;7e7d
	rst 38h			;7e7e
	rst 38h			;7e7f
	rst 38h			;7e80
	rst 38h			;7e81
	rst 38h			;7e82
	rst 38h			;7e83
	rst 38h			;7e84
l7e85h:
	rst 38h			;7e85
	rst 38h			;7e86
l7e87h:
	rst 38h			;7e87
	rst 38h			;7e88
	rst 38h			;7e89
	rst 38h			;7e8a
	rst 38h			;7e8b
	rst 38h			;7e8c
	rst 38h			;7e8d
	rst 38h			;7e8e
	rst 38h			;7e8f
	rst 38h			;7e90
	rst 38h			;7e91
	rst 38h			;7e92
	rst 38h			;7e93
	rst 38h			;7e94
	rst 38h			;7e95
	rst 38h			;7e96
	rst 38h			;7e97
	rst 38h			;7e98
	rst 38h			;7e99
	rst 38h			;7e9a
	rst 38h			;7e9b
	rst 38h			;7e9c
	rst 38h			;7e9d
	rst 38h			;7e9e
	rst 38h			;7e9f
	rst 38h			;7ea0
	rst 38h			;7ea1
	rst 38h			;7ea2
	rst 38h			;7ea3
	rst 38h			;7ea4
	rst 38h			;7ea5
	rst 38h			;7ea6
	rst 38h			;7ea7
	rst 38h			;7ea8
	rst 38h			;7ea9
	rst 38h			;7eaa
	rst 38h			;7eab
	rst 38h			;7eac
	rst 38h			;7ead
	rst 38h			;7eae
	rst 38h			;7eaf
	rst 38h			;7eb0
	rst 38h			;7eb1
	rst 38h			;7eb2
	rst 38h			;7eb3
	rst 38h			;7eb4
	rst 38h			;7eb5
	rst 38h			;7eb6
	rst 38h			;7eb7
	rst 38h			;7eb8
	rst 38h			;7eb9
	rst 38h			;7eba
	rst 38h			;7ebb
	rst 38h			;7ebc
	rst 38h			;7ebd
	rst 38h			;7ebe
	rst 38h			;7ebf
	rst 38h			;7ec0
	rst 38h			;7ec1
	rst 38h			;7ec2
	rst 38h			;7ec3
	rst 38h			;7ec4
	rst 38h			;7ec5
	rst 38h			;7ec6
	rst 38h			;7ec7
	rst 38h			;7ec8
	rst 38h			;7ec9
	rst 38h			;7eca
	rst 38h			;7ecb
	rst 38h			;7ecc
	rst 38h			;7ecd
	rst 38h			;7ece
	rst 38h			;7ecf
	rst 38h			;7ed0
	rst 38h			;7ed1
	rst 38h			;7ed2
	rst 38h			;7ed3
	rst 38h			;7ed4
	rst 38h			;7ed5
	rst 38h			;7ed6
	rst 38h			;7ed7
	rst 38h			;7ed8
	rst 38h			;7ed9
	rst 38h			;7eda
	rst 38h			;7edb
	rst 38h			;7edc
	rst 38h			;7edd
	rst 38h			;7ede
	rst 38h			;7edf
	rst 38h			;7ee0
	rst 38h			;7ee1
	rst 38h			;7ee2
	rst 38h			;7ee3
	rst 38h			;7ee4
	rst 38h			;7ee5
	rst 38h			;7ee6
	rst 38h			;7ee7
	rst 38h			;7ee8
	rst 38h			;7ee9
	rst 38h			;7eea
	rst 38h			;7eeb
	rst 38h			;7eec
	rst 38h			;7eed
	rst 38h			;7eee
	rst 38h			;7eef
	rst 38h			;7ef0
	rst 38h			;7ef1
	rst 38h			;7ef2
	rst 38h			;7ef3
	rst 38h			;7ef4
	rst 38h			;7ef5
	rst 38h			;7ef6
	rst 38h			;7ef7
	rst 38h			;7ef8
	rst 38h			;7ef9
	rst 38h			;7efa
	rst 38h			;7efb
	rst 38h			;7efc
	rst 38h			;7efd
	rst 38h			;7efe
	rst 38h			;7eff
	rst 38h			;7f00
	rst 38h			;7f01
	rst 38h			;7f02
	rst 38h			;7f03
	rst 38h			;7f04
	rst 38h			;7f05
	rst 38h			;7f06
	rst 38h			;7f07
	rst 38h			;7f08
	rst 38h			;7f09
	rst 38h			;7f0a
	rst 38h			;7f0b
	rst 38h			;7f0c
	rst 38h			;7f0d
	rst 38h			;7f0e
	rst 38h			;7f0f
	rst 38h			;7f10
	rst 38h			;7f11
	rst 38h			;7f12
	rst 38h			;7f13
	rst 38h			;7f14
	rst 38h			;7f15
	rst 38h			;7f16
	rst 38h			;7f17
	rst 38h			;7f18
	rst 38h			;7f19
	rst 38h			;7f1a
	rst 38h			;7f1b
	rst 38h			;7f1c
	rst 38h			;7f1d
	rst 38h			;7f1e
	rst 38h			;7f1f
	rst 38h			;7f20
	rst 38h			;7f21
	rst 38h			;7f22
	rst 38h			;7f23
	rst 38h			;7f24
	rst 38h			;7f25
	rst 38h			;7f26
	rst 38h			;7f27
	rst 38h			;7f28
	rst 38h			;7f29
	rst 38h			;7f2a
	rst 38h			;7f2b
	rst 38h			;7f2c
	rst 38h			;7f2d
	rst 38h			;7f2e
	rst 38h			;7f2f
	rst 38h			;7f30
	rst 38h			;7f31
	rst 38h			;7f32
	rst 38h			;7f33
	rst 38h			;7f34
	rst 38h			;7f35
	rst 38h			;7f36
	rst 38h			;7f37
	rst 38h			;7f38
	rst 38h			;7f39
	rst 38h			;7f3a
	rst 38h			;7f3b
	rst 38h			;7f3c
	rst 38h			;7f3d
	rst 38h			;7f3e
	rst 38h			;7f3f
	rst 38h			;7f40
	rst 38h			;7f41
	rst 38h			;7f42
	rst 38h			;7f43
	rst 38h			;7f44
	rst 38h			;7f45
	rst 38h			;7f46
	rst 38h			;7f47
	rst 38h			;7f48
	rst 38h			;7f49
	rst 38h			;7f4a
	rst 38h			;7f4b
	rst 38h			;7f4c
	rst 38h			;7f4d
	rst 38h			;7f4e
	rst 38h			;7f4f
	rst 38h			;7f50
	rst 38h			;7f51
	rst 38h			;7f52
	rst 38h			;7f53
	rst 38h			;7f54
	rst 38h			;7f55
	rst 38h			;7f56
	rst 38h			;7f57
	rst 38h			;7f58
	rst 38h			;7f59
	rst 38h			;7f5a
	rst 38h			;7f5b
	rst 38h			;7f5c
	rst 38h			;7f5d
	rst 38h			;7f5e
	rst 38h			;7f5f
	rst 38h			;7f60
	rst 38h			;7f61
	rst 38h			;7f62
	rst 38h			;7f63
	rst 38h			;7f64
	rst 38h			;7f65
	rst 38h			;7f66
	rst 38h			;7f67
	rst 38h			;7f68
	rst 38h			;7f69
	rst 38h			;7f6a
	rst 38h			;7f6b
	rst 38h			;7f6c
	rst 38h			;7f6d
	rst 38h			;7f6e
	rst 38h			;7f6f
	rst 38h			;7f70
	rst 38h			;7f71
	rst 38h			;7f72
	rst 38h			;7f73
	rst 38h			;7f74
	rst 38h			;7f75
	rst 38h			;7f76
	rst 38h			;7f77
	rst 38h			;7f78
	rst 38h			;7f79
	rst 38h			;7f7a
	rst 38h			;7f7b
	rst 38h			;7f7c
	rst 38h			;7f7d
	rst 38h			;7f7e
	rst 38h			;7f7f
	rst 38h			;7f80
	rst 38h			;7f81
	rst 38h			;7f82
	rst 38h			;7f83
	rst 38h			;7f84
	rst 38h			;7f85
l7f86h:
	rst 38h			;7f86
	rst 38h			;7f87
	rst 38h			;7f88
	rst 38h			;7f89
	rst 38h			;7f8a
	rst 38h			;7f8b
	rst 38h			;7f8c
	rst 38h			;7f8d
	rst 38h			;7f8e
	rst 38h			;7f8f
	rst 38h			;7f90
	rst 38h			;7f91
	rst 38h			;7f92
	rst 38h			;7f93
	rst 38h			;7f94
	rst 38h			;7f95
	rst 38h			;7f96
	rst 38h			;7f97
	rst 38h			;7f98
	rst 38h			;7f99
	rst 38h			;7f9a
	rst 38h			;7f9b
	rst 38h			;7f9c
	rst 38h			;7f9d
	rst 38h			;7f9e
	rst 38h			;7f9f
	rst 38h			;7fa0
	rst 38h			;7fa1
	rst 38h			;7fa2
	rst 38h			;7fa3
	rst 38h			;7fa4
	rst 38h			;7fa5
	rst 38h			;7fa6
	rst 38h			;7fa7
	rst 38h			;7fa8
	rst 38h			;7fa9
	rst 38h			;7faa
	rst 38h			;7fab
	rst 38h			;7fac
	rst 38h			;7fad
	rst 38h			;7fae
	rst 38h			;7faf
	rst 38h			;7fb0
	rst 38h			;7fb1
	rst 38h			;7fb2
	rst 38h			;7fb3
	rst 38h			;7fb4
	rst 38h			;7fb5
	rst 38h			;7fb6
	rst 38h			;7fb7
	rst 38h			;7fb8
	rst 38h			;7fb9
	rst 38h			;7fba
	rst 38h			;7fbb
	rst 38h			;7fbc
	rst 38h			;7fbd
	rst 38h			;7fbe
	rst 38h			;7fbf
	rst 38h			;7fc0
	rst 38h			;7fc1
	rst 38h			;7fc2
	rst 38h			;7fc3
	rst 38h			;7fc4
	rst 38h			;7fc5
	rst 38h			;7fc6
	rst 38h			;7fc7
	rst 38h			;7fc8
	rst 38h			;7fc9
	rst 38h			;7fca
	rst 38h			;7fcb
	rst 38h			;7fcc
	rst 38h			;7fcd
	rst 38h			;7fce
	rst 38h			;7fcf
	rst 38h			;7fd0
	rst 38h			;7fd1
	rst 38h			;7fd2
	rst 38h			;7fd3
	rst 38h			;7fd4
	rst 38h			;7fd5
	rst 38h			;7fd6
	rst 38h			;7fd7
	rst 38h			;7fd8
	rst 38h			;7fd9
	rst 38h			;7fda
	rst 38h			;7fdb
	rst 38h			;7fdc
	rst 38h			;7fdd
	rst 38h			;7fde
	rst 38h			;7fdf
	rst 38h			;7fe0
	rst 38h			;7fe1
	rst 38h			;7fe2
	rst 38h			;7fe3
	rst 38h			;7fe4
	rst 38h			;7fe5
	rst 38h			;7fe6
	rst 38h			;7fe7
	rst 38h			;7fe8
	rst 38h			;7fe9
	rst 38h			;7fea
	rst 38h			;7feb
	rst 38h			;7fec
	rst 38h			;7fed
	rst 38h			;7fee
	rst 38h			;7fef
	rst 38h			;7ff0
	rst 38h			;7ff1
	rst 38h			;7ff2
	rst 38h			;7ff3
	rst 38h			;7ff4
	rst 38h			;7ff5
	rst 38h			;7ff6
	rst 38h			;7ff7
	rst 38h			;7ff8
	rst 38h			;7ff9
	rst 38h			;7ffa
	rst 38h			;7ffb
	rst 38h			;7ffc
	rst 38h			;7ffd
	rst 38h			;7ffe
	rst 38h			;7fff

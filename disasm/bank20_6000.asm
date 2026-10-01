; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank20_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank20.bin

	org 06000h

	nop			;6000
	rrca			;6001
	ld bc,00004h		;6002
	add a,a			;6005
	ret nz			;6006
	ret m			;6007
	nop			;6008
	nop			;6009
	ccf			;600a
	call m,003f0h		;600b
	nop			;600e
	adc a,e			;600f
	add a,b			;6010
	ret nz			;6011
	ret po			;6012
	ret nc			;6013
	adc a,b			;6014
	call m,0f0fch		;6015
	add a,b			;6018
	call m,00400h		;6019
	add a,b			;601c
	add a,(hl)		;601d
	rrca			;601e
	rst 38h			;601f
	call m,0e0fch		;6020
	ld a,a			;6023
	inc bc			;6024
	ccf			;6025
	adc a,b			;6026
	add a,b			;6027
	call m,08000h		;6028
	add a,b			;602b
	ld bc,0f8fch		;602c
	inc b			;602f
	ret p			;6030
	adc a,h			;6031
	ret nz			;6032
	djnz l6065h		;6033
	ld h,b			;6035
	nop			;6036
	inc bc			;6037
	rst 38h			;6038
	ret m			;6039
	inc bc			;603a
	ld bc,00000h		;603b
	inc bc			;603e
	ret p			;603f
	inc bc			;6040
	ret m			;6041
	ld (bc),a		;6042
	call m,01f89h		;6043
	ccf			;6046
	ld a,a			;6047
	call m,0c0f0h		;6048
	ret m			;604b
	ret nz			;604c
	ld bc,00006h		;604d
	add a,(hl)		;6050
	ld a,a			;6051
	nop			;6052
	ret nz			;6053
	ld a,a			;6054
	ccf			;6055
	ccf			;6056
	inc bc			;6057
	rra			;6058
	adc a,c			;6059
	ld a,a			;605a
	ccf			;605b
	rra			;605c
	ret p			;605d
	ret m			;605e
	call m,0f0feh		;605f
	ld bc,00005h		;6062
l6065h:
	add a,h			;6065
	cp 07dh			;6066
	ret po			;6068
	rst 38h			;6069
	ld b,0f0h		;606a
	inc bc			;606c
	ret m			;606d
l606eh:
	ld (bc),a		;606e
	ret p			;606f
	adc a,b			;6070
	rra			;6071
	ccf			;6072
	ccf			;6073
	rst 38h			;6074
	nop			;6075
	ret p			;6076
	call m,005c3h		;6077
	rst 38h			;607a
	add a,a			;607b
	rra			;607c
	inc bc			;607d
	nop			;607e
	call m,0320eh		;607f
	cp 003h			;6082
	ld a,a			;6084
	inc bc			;6085
	ccf			;6086
	xor d			;6087
	rra			;6088
	jp 03f0fh		;6089
	jr nc,$-62		;608c
	add a,b			;608e
	nop			;608f
	nop			;6090
	rlca			;6091
	ei			;6092
	ret m			;6093
	call m,0fce0h		;6094
	ret m			;6097
	ret po			;6098
	rst 38h			;6099
	nop			;609a
	ret nz			;609b
	ret po			;609c
	ret po			;609d
sub_609eh:
	call m,0e0f8h		;609e
	nop			;60a1
	ret nz			;60a2
	ret nz			;60a3
	rlca			;60a4
	ld bc,00301h		;60a5
	rlca			;60a8
	nop			;60a9
	ret po			;60aa
	ret po			;60ab
	jr c,l606eh		;60ac
	nop			;60ae
	nop			;60af
	cp 007h			;60b0
	dec b			;60b2
	nop			;60b3
	add a,d			;60b4
	ld a,a			;60b5
	rra			;60b6
	inc bc			;60b7
	ret p			;60b8
	inc bc			;60b9
	ret m			;60ba
	inc bc			;60bb
	call m,0f28eh		;60bc
	jp po,080c2h		;60bf
	cp 0fch			;60c2
	ret p			;60c4
	nop			;60c5
	nop			;60c6
	ret p			;60c7
	ld a,a			;60c8
	inc bc			;60c9
	ccf			;60ca
	rrca			;60cb
	inc b			;60cc
	inc bc			;60cd
	adc a,b			;60ce
	ld bc,03f07h		;60cf
	rra			;60d2
	rlca			;60d3
	nop			;60d4
	ret po			;60d5
	jp 0f805h		;60d6
	adc a,b			;60d9
	rst 28h			;60da
	rrca			;60db
	rlca			;60dc
	inc bc			;60dd
	ld de,08cf8h		;60de
	ld b,000h		;60e1
	ld (bc),a		;60e3
	djnz l60e8h		;60e4
	ret po			;60e6
	ld (bc),a		;60e7
l60e8h:
	call po,04307h		;60e8
	ld h,a			;60eb
	ld (0310ch),a		;60ec
	rrca			;60ef
	ld b,b			;60f0
	inc b			;60f1
	ld b,e			;60f2
	dec b			;60f3
	ld (04318h),a		;60f4
	ld b,0e4h		;60f7
	ld c,d			;60f9
	ld b,e			;60fa
	ld (bc),a		;60fb
	ld c,081h		;60fc
	call po,04308h		;60fe
l6101h:
	inc bc			;6101
	call po,04303h		;6102
	add a,(hl)		;6105
	ld (03221h),a		;6106
	ld b,e			;6109
	ld (00421h),a		;610a
	pop af			;610d
	add a,e			;610e
	jp p,042e2h		;610f
	rlca			;6112
	ld b,e			;6113
	rlca			;6114
	ld (0310bh),a		;6115
	ex af,af'		;6118
	ld (02117h),a		;6119
	ld b,0f1h		;611c
	add hl,bc		;611e
	ld hl,0f106h		;611f
	ld a,(bc)		;6122
	ld (de),a		;6123
	inc b			;6124
	pop af			;6125
	add a,c			;6126
	ld (de),a		;6127
	dec c			;6128
	inc hl			;6129
	ld a,(bc)		;612a
	jr nz,l612fh		;612b
	ld l,002h		;612d
l612fh:
	ld b,d			;612f
	add a,h			;6130
	ld (04242h),a		;6131
	ld hl,01409h		;6134
	ld (bc),a		;6137
	ld b,e			;6138
	ld (bc),a		;6139
	ex (sp),hl		;613a
	inc b			;613b
	call po,02302h		;613c
	ld (bc),a		;613f
	pop hl			;6140
	inc b			;6141
	call po,04303h		;6142
	ld (bc),a		;6145
	ex (sp),hl		;6146
	ld (bc),a		;6147
	call po,04303h		;6148
	add a,e			;614b
	call po,04343h		;614c
	ex af,af'		;614f
	ld (0e281h),a		;6150
	inc bc			;6153
	ret po			;6154
	dec b			;6155
	call po,04205h		;6156
	inc b			;6159
	ld (02103h),a		;615a
	add a,d			;615d
	ld (00421h),a		;615e
	rra			;6161
	ld (bc),a		;6162
	di			;6163
	dec b			;6164
	ld (02103h),a		;6165
	adc a,c			;6168
	ld (0f441h),a		;6169
	call p,02121h		;616c
	cpl			;616f
	cpl			;6170
	ld hl,0f106h		;6171
	add a,c			;6174
	di			;6175
	ld b,032h		;6176
	ld b,031h		;6178
	inc bc			;617a
	ret po			;617b
	inc bc			;617c
	call po,04309h		;617d
	add a,l			;6180
	ld (0f1f1h),a		;6181
	ret p			;6184
	djnz l618eh		;6185
	jr nz,l618ch		;6187
	jp po,04281h		;6189
l618ch:
	rlca			;618c
	ld b,e			;618d
l618eh:
	ld (bc),a		;618e
	ld (04002h),a		;618f
	add a,l			;6192
	ld b,e			;6193
	ld (01f21h),a		;6194
	jp p,02305h		;6197
l619ah:
	add a,a			;619a
	inc de			;619b
	ld hl,02f21h		;619c
	ld c,00eh		;619f
	call po,0430ah		;61a1
	add a,h			;61a4
	jr nc,l619ah		;61a5
	di			;61a7
	ld b,b			;61a8
	ld a,(bc)		;61a9
	ld b,e			;61aa
	ld b,0e4h		;61ab
	ld (bc),a		;61ad
	ld b,e			;61ae
	add a,e			;61af
	ld b,d			;61b0
	pop hl			;61b1
	pop hl			;61b2
	inc b			;61b3
	call po,0438ah		;61b4
	ld b,d			;61b7
	pop hl			;61b8
	pop hl			;61b9
	call po,0f1e4h		;61ba
	pop af			;61bd
	ld bc,003f0h		;61be
	ret po			;61c1
	inc bc			;61c2
	ld b,b			;61c3
	add a,c			;61c4
	ld a,004h		;61c5
	call po,04307h		;61c7
	dec b			;61ca
	ld (03102h),a		;61cb
	ld (bc),a		;61ce
	ld hl,02f81h		;61cf
	inc b			;61d2
	ld b,d			;61d3
	add a,c			;61d4
	ld b,e			;61d5
	inc bc			;61d6
	ld (04003h),a		;61d7
	ld (bc),a		;61da
	ld b,e			;61db
	inc bc			;61dc
	ld (04304h),a		;61dd
	ld (bc),a		;61e0
	ex (sp),hl		;61e1
	ld (bc),a		;61e2
	call po,03202h		;61e3
	add a,(hl)		;61e6
	ld hl,04331h		;61e7
	ld (0ff21h),a		;61ea
	dec b			;61ed
	ld hl,0f103h		;61ee
	nop			;61f1
	ld b,000h		;61f2
	add a,d			;61f4
	inc bc			;61f5
	rrca			;61f6
	inc bc			;61f7
	nop			;61f8
	add a,l			;61f9
	inc bc			;61fa
	ccf			;61fb
	rst 38h			;61fc
	rst 38h			;61fd
	call m,00004h		;61fe
	ld (bc),a		;6201
	ld bc,00382h		;6202
	rlca			;6205
	inc b			;6206
	nop			;6207
	add a,h			;6208
	ret po			;6209
	call m,0e0f8h		;620a
	inc bc			;620d
	nop			;620e
	add a,d			;620f
	inc bc			;6210
	ccf			;6211
	inc bc			;6212
	rst 38h			;6213
	dec b			;6214
	nop			;6215
	inc bc			;6216
	rst 38h			;6217
	ld b,000h		;6218
	add a,d			;621a
	ret po			;621b
	call m,00003h		;621c
	add a,d			;621f
	ret nz			;6220
	ret m			;6221
	inc bc			;6222
	rst 38h			;6223
	adc a,b			;6224
	nop			;6225
	add a,b			;6226
	ret nz			;6227
	ret po			;6228
	ret p			;6229
	ret m			;622a
	call m,004feh		;622b
	nop			;622e
	inc bc			;622f
	add a,b			;6230
	inc bc			;6231
l6232h:
	ret nz			;6232
	inc bc			;6233
	ret po			;6234
	inc bc			;6235
	ret p			;6236
	adc a,b			;6237
	ret nz			;6238
	call m,0c0f0h		;6239
	nop			;623c
	nop			;623d
	add a,b			;623e
	add a,b			;623f
	inc b			;6240
	nop			;6241
	add a,(hl)		;6242
	ret p			;6243
	rst 38h			;6244
	rra			;6245
	inc bc			;6246
	add a,b			;6247
	ret nz			;6248
	inc bc			;6249
	ret po			;624a
	sub b			;624b
	ret p			;624c
	call p,007f6h		;624d
	ld a,a			;6250
	ret p			;6251
	nop			;6252
	ret po			;6253
	call m,0e0feh		;6254
	rlca			;6257
	ld a,a			;6258
	ret p			;6259
	nop			;625a
	rst 38h			;625b
	inc bc			;625c
	ret p			;625d
	inc b			;625e
	rst 38h			;625f
	sbc a,(hl)		;6260
	ld a,a			;6261
	rrca			;6262
	call m,0f6fdh		;6263
	rrca			;6266
	rrca			;6267
	rra			;6268
	rra			;6269
	ccf			;626a
	ccf			;626b
	ld a,a			;626c
	nop			;626d
	ret po			;626e
	ret po			;626f
	jr c,l6232h		;6270
	ret p			;6272
	call m,0c0f9h		;6273
	cp 00fh			;6276
	ld a,a			;6278
	inc bc			;6279
	rra			;627a
	inc bc			;627b
	add a,b			;627c
	add a,b			;627d
	ret p			;627e
	inc b			;627f
	rst 38h			;6280
	ld (bc),a		;6281
	nop			;6282
	or c			;6283
	add a,e			;6284
	inc c			;6285
	nop			;6286
	ret m			;6287
	rst 0			;6288
	ccf			;6289
	rra			;628a
	rlca			;628b
	inc bc			;628c
	inc bc			;628d
	rst 38h			;628e
	ret p			;628f
	rlca			;6290
	ccf			;6291
	rra			;6292
	rlca			;6293
	inc bc			;6294
	inc bc			;6295
	rst 38h			;6296
	ret p			;6297
	rlca			;6298
	ccf			;6299
	rra			;629a
	rlca			;629b
	rlca			;629c
	rrca			;629d
	rra			;629e
	ccf			;629f
	ld a,a			;62a0
	ld a,a			;62a1
	rst 38h			;62a2
	rlca			;62a3
	rlca			;62a4
	rrca			;62a5
	rra			;62a6
	ccf			;62a7
	ld a,a			;62a8
	ld a,a			;62a9
	ret m			;62aa
	ret m			;62ab
	nop			;62ac
	ret nz			;62ad
	ret nz			;62ae
	ret m			;62af
	ret m			;62b0
	call m,0fffeh		;62b1
	call m,0fe03h		;62b4
	inc b			;62b7
	rst 38h			;62b8
	inc bc			;62b9
	ret p			;62ba
	inc bc			;62bb
	ret m			;62bc
	ld (bc),a		;62bd
	call m,08088h		;62be
	ret nz			;62c1
	ret po			;62c2
	ret p			;62c3
	ret m			;62c4
	call m,0fffeh		;62c5
	nop			;62c8
	rrca			;62c9
	ret po			;62ca
	add a,c			;62cb
	call po,0e007h		;62cc
	dec b			;62cf
	ld b,b			;62d0
	ld (bc),a		;62d1
	ret po			;62d2
	ld (bc),a		;62d3
	call po,0e005h		;62d4
	add hl,sp		;62d7
	ld b,b			;62d8
	add a,c			;62d9
	ret nc			;62da
	dec b			;62db
	add a,b			;62dc
	ld (bc),a		;62dd
	ld b,b			;62de
	ld (bc),a		;62df
	ld b,e			;62e0
	ex af,af'		;62e1
	jr nc,$+4		;62e2
	ex (sp),hl		;62e4
	ld b,0e4h		;62e5
	ld (bc),a		;62e7
	ex (sp),hl		;62e8
	inc b			;62e9
	call po,04382h		;62ea
	ld (04306h),a		;62ed
	ld (bc),a		;62f0
	ld (03081h),a		;62f1
	inc b			;62f4
	ld (03103h),a		;62f5
	ld (bc),a		;62f8
	ld b,b			;62f9
	adc a,(hl)		;62fa
	ld a,0e4h		;62fb
	call po,03243h		;62fd
	ld (04040h),a		;6300
	ld b,e			;6303
	ld (02132h),a		;6304
	ld hl,00531h		;6307
	inc (hl)		;630a
	ld (bc),a		;630b
	ld hl,0ff8eh		;630c
	ld b,b			;630f
	call po,043e4h		;6310
	ld b,e			;6313
	jp po,0e4e4h		;6314
	ret po			;6317
	ld c,(hl)		;6318
	ld c,(hl)		;6319
	ld b,e			;631a
	ex (sp),hl		;631b
	inc bc			;631c
	call po,0e08ah		;631d
	ld c,(hl)		;6320
l6321h:
	ld c,(hl)		;6321
	ld b,e			;6322
	ex (sp),hl		;6323
	jp po,0e4e4h		;6324
	ld b,b			;6327
	jr nc,l632fh		;6328
	ret po			;632a
	add a,e			;632b
	call po,03040h		;632c
l632fh:
	inc b			;632f
	ret po			;6330
	add a,(hl)		;6331
	call po,0f143h		;6332
	pop af			;6335
	rrca			;6336
	rrca			;6337
	inc e			;6338
	ld (bc),a		;6339
	nop			;633a
	adc a,l			;633b
	ret p			;633c
	ret po			;633d
	ret nz			;633e
	add a,b			;633f
	nop			;6340
	nop			;6341
	cp 0fch			;6342
	ret m			;6344
	ret p			;6345
	ret po			;6346
	ret nz			;6347
	add a,b			;6348
	ld b,000h		;6349
	and d			;634b
	cp 0fch			;634c
	ret m			;634e
	ret p			;634f
	ret po			;6350
	ret nz			;6351
	add a,b			;6352
	nop			;6353
	nop			;6354
	ld bc,00003h		;6355
	ret p			;6358
	nop			;6359
	rrca			;635a
	rrca			;635b
	ld a,a			;635c
	inc bc			;635d
	cp 0fch			;635e
	ret m			;6360
	ret p			;6361
	ret po			;6362
	ret nz			;6363
	add a,b			;6364
	ret po			;6365
	call m,0e0feh		;6366
	cp a			;6369
	rst 18h			;636a
	rst 28h			;636b
	xor 0ech		;636c
	inc bc			;636e
	ret p			;636f
	adc a,h			;6370
	ret nz			;6371
	add a,b			;6372
	nop			;6373
	nop			;6374
	cp 003h			;6375
	ret m			;6377
	rrca			;6378
	rra			;6379
	ccf			;637a
	nop			;637b
	nop			;637c
	inc bc			;637d
	rst 38h			;637e
	add a,d			;637f
	rlca			;6380
	rrca			;6381
	dec c			;6382
	rst 38h			;6383
	and d			;6384
	ret p			;6385
	rrca			;6386
	ret m			;6387
	ret p			;6388
	ret p			;6389
	ret po			;638a
	ret po			;638b
	pop bc			;638c
	pop bc			;638d
	add a,e			;638e
	daa			;638f
	ld h,d			;6390
	ld b,(hl)		;6391
	call nz,0888ch		;6392
	add hl,de		;6395
	ld de,03efeh		;6396
	ld h,d			;6399
	ld b,(hl)		;639a
	add a,08eh		;639b
	adc a,(hl)		;639d
	ld e,080h		;639e
	jp 0fcffh		;63a0
	ret p			;63a3
	ret nz			;63a4
	add a,b			;63a5
	cp 003h			;63a6
	rst 38h			;63a8
	adc a,c			;63a9
	cp 0f1h			;63aa
	rrca			;63ac
	rst 38h			;63ad
	rst 38h			;63ae
	rlca			;63af
	rst 20h			;63b0
	sbc a,a			;63b1
	ld a,a			;63b2
	inc b			;63b3
	rst 38h			;63b4
	adc a,b			;63b5
	nop			;63b6
	ret p			;63b7
	ccf			;63b8
	rlca			;63b9
	call m,0f0f8h		;63ba
	ret po			;63bd
	inc bc			;63be
	nop			;63bf
	add a,e			;63c0
	ld a,a			;63c1
	inc bc			;63c2
	ret p			;63c3
	inc bc			;63c4
	rst 38h			;63c5
	add a,a			;63c6
	nop			;63c7
	rlca			;63c8
	ret po			;63c9
	cp 09fh			;63ca
	bit 1,c			;63cc
	inc b			;63ce
	rrca			;63cf
	inc bc			;63d0
	nop			;63d1
	adc a,h			;63d2
	rlca			;63d3
	rst 38h			;63d4
	ret p			;63d5
	inc bc			;63d6
	ret po			;63d7
	cp 003h			;63d8
	rlca			;63da
	rrca			;63db
	rra			;63dc
	ccf			;63dd
	ld a,a			;63de
	inc bc			;63df
	rst 38h			;63e0
	add a,e			;63e1
	inc c			;63e2
	ld c,a			;63e3
	ret nz			;63e4
	inc b			;63e5
	nop			;63e6
	add a,l			;63e7
	call m,0f0f0h		;63e8
	rst 18h			;63eb
	rst 18h			;63ec
	inc bc			;63ed
	rst 28h			;63ee
	inc bc			;63ef
	rst 30h			;63f0
	rlca			;63f1
	rst 38h			;63f2
	add a,c			;63f3
	ret m			;63f4
	inc b			;63f5
	rst 38h			;63f6
	add a,(hl)		;63f7
	call m,000e0h		;63f8
	nop			;63fb
	ret po			;63fc
	call m,0ff04h		;63fd
	cp h			;6400
	ret p			;6401
	nop			;6402
	rlca			;6403
	ld b,0f7h		;6404
	rst 30h			;6406
	rst 8			;6407
	rra			;6408
	ccf			;6409
	ccf			;640a
	rra			;640b
	ccf			;640c
	ld a,a			;640d
	and 0c6h		;640e
	adc a,(hl)		;6410
	adc a,(hl)		;6411
	ld e,000h		;6412
	ret nz			;6414
	ld a,b			;6415
	ccf			;6416
	jr c,l6435h		;6417
	ld c,0ffh		;6419
	nop			;641b
	inc bc			;641c
	ld e,0f0h		;641d
	inc bc			;641f
	ld a,(hl)		;6420
	ccf			;6421
	rst 38h			;6422
	nop			;6423
	ret nz			;6424
	jr c,l642eh		;6425
	nop			;6427
	nop			;6428
	rlca			;6429
	ccf			;642a
	rst 38h			;642b
	ret nz			;642c
	nop			;642d
l642eh:
	ret p			;642e
	nop			;642f
	nop			;6430
	rst 38h			;6431
	rst 38h			;6432
	nop			;6433
	ret nz			;6434
l6435h:
	jr c,l643eh		;6435
	nop			;6437
	nop			;6438
	rst 38h			;6439
	rst 38h			;643a
	add a,b			;643b
	rst 38h			;643c
	inc bc			;643d
l643eh:
	add a,b			;643e
	add a,e			;643f
	rst 38h			;6440
	add a,b			;6441
	add a,b			;6442
	inc bc			;6443
	rst 30h			;6444
	sbc a,(hl)		;6445
	or 0c5h			;6446
	djnz $+65		;6448
	ld h,b			;644a
	rra			;644b
	ccf			;644c
	ld a,a			;644d
	cp 0feh			;644e
	nop			;6450
	nop			;6451
	rst 38h			;6452
	add a,c			;6453
	rrca			;6454
	ld a,a			;6455
	ld sp,0c763h		;6456
	ccf			;6459
	rst 0			;645a
	call z,01989h		;645b
	ld sp,0c763h		;645e
	ccf			;6461
	rst 0			;6462
	ld b,h			;6463
	rlca			;6464
	call nz,04481h		;6465
	inc b			;6468
	call nz,0fe84h		;6469
	call m,080f8h		;646c
	ld b,0f0h		;646f
	add a,(hl)		;6471
	nop			;6472
	ret m			;6473
	rlca			;6474
l6475h:
	xor a			;6475
	xor d			;6476
	xor d			;6477
	inc bc			;6478
	rst 38h			;6479
	add a,h			;647a
	ld c,e			;647b
	xor a			;647c
	cp a			;647d
	cp a			;647e
	inc b			;647f
	rst 38h			;6480
	xor b			;6481
	rrca			;6482
	rra			;6483
	ccf			;6484
	ld a,a			;6485
	rst 38h			;6486
	rst 38h			;6487
	cp 0fch			;6488
	call m,0c0f0h		;648a
	inc bc			;648d
	rrca			;648e
	ccf			;648f
	rst 38h			;6490
	rst 38h			;6491
	rlca			;6492
	jr c,l6475h		;6493
	ret nz			;6495
	ret po			;6496
	rst 20h			;6497
	ret p			;6498
	ret p			;6499
	ccf			;649a
	rrca			;649b
	inc bc			;649c
	ret nz			;649d
	ret p			;649e
	call m,0ffffh		;649f
	ret p			;64a2
	rrca			;64a3
	rst 38h			;64a4
	xor e			;64a5
	rst 38h			;64a6
	defb 0fdh,0f4h,0d2h ;illegal sequence	;64a7
	dec b			;64aa
	ret p			;64ab
	adc a,e			;64ac
	nop			;64ad
	ld d,l			;64ae
	ld d,l			;64af
	add a,e			;64b0
	add a,c			;64b1
	add a,c			;64b2
	jp 07f47h		;64b3
	add a,a			;64b6
	add a,a			;64b7
	inc bc			;64b8
	xor d			;64b9
	add a,(hl)		;64ba
	ld hl,(05fffh)		;64bb
	ld a,a			;64be
	rst 38h			;64bf
	rst 38h			;64c0
	inc b			;64c1
	xor d			;64c2
	inc bc			;64c3
	rst 38h			;64c4
	add a,d			;64c5
	ret m			;64c6
	rst 38h			;64c7
	inc bc			;64c8
	xor d			;64c9
	add a,e			;64ca
	ld hl,(0ffffh)		;64cb
	ex af,af'		;64ce
	call m,07f87h		;64cf
	ccf			;64d2
	rra			;64d3
	rrca			;64d4
	rlca			;64d5
	inc bc			;64d6
	ld bc,00007h		;64d7
	adc a,(hl)		;64da
	ret nz			;64db
	ret m			;64dc
	rst 38h			;64dd
	rst 38h			;64de
	nop			;64df
	ret po			;64e0
	cp 09fh			;64e1
	bit 1,c			;64e3
	ld bc,00f01h		;64e5
	ld a,a			;64e8
	inc b			;64e9
	rst 38h			;64ea
	adc a,b			;64eb
	ccf			;64ec
	ld a,a			;64ed
	rst 38h			;64ee
	rst 38h			;64ef
	ld bc,00703h		;64f0
	rrca			;64f3
	dec b			;64f4
	nop			;64f5
	add a,h			;64f6
	inc bc			;64f7
	ld e,0f0h		;64f8
	ret nz			;64fa
	dec b			;64fb
	nop			;64fc
	add a,d			;64fd
	rlca			;64fe
	ccf			;64ff
	inc bc			;6500
	nop			;6501
	sub d			;6502
	call m,0ff1fh		;6503
	rst 38h			;6506
	ret m			;6507
	nop			;6508
	inc bc			;6509
	rra			;650a
	rst 38h			;650b
	ret m			;650c
	pop bc			;650d
	rrca			;650e
	ret m			;650f
	rrca			;6510
	inc bc			;6511
	dec c			;6512
	dec (hl)		;6513
	jp pe,08a03h		;6514
	add a,h			;6517
	ex (sp),hl		;6518
	pop af			;6519
	ret m			;651a
	rrca			;651b
	inc bc			;651c
	rst 38h			;651d
	adc a,a			;651e
	nop			;651f
	ld h,e			;6520
	or c			;6521
	in a,(0ffh)		;6522
	rst 38h			;6524
	rrca			;6525
	nop			;6526
	rst 38h			;6527
	inc bc			;6528
	ret nz			;6529
	ret p			;652a
	call m,0f0c0h		;652b
	add hl,bc		;652e
	rrca			;652f
	sbc a,h			;6530
	rst 38h			;6531
	nop			;6532
	rrca			;6533
	rrca			;6534
	ld a,a			;6535
	inc bc			;6536
	ret p			;6537
	rst 38h			;6538
	rst 38h			;6539
	add a,d			;653a
	rlca			;653b
	rst 38h			;653c
	rst 38h			;653d
	nop			;653e
	nop			;653f
	rst 38h			;6540
	nop			;6541
	rst 38h			;6542
	call m,01fe3h		;6543
	rst 38h			;6546
	nop			;6547
	nop			;6548
	rst 38h			;6549
	inc sp			;654a
	rst 38h			;654b
	rst 38h			;654c
	inc b			;654d
	nop			;654e
	adc a,c			;654f
	ret m			;6550
	ret nz			;6551
	ret po			;6552
	ret p			;6553
	ret m			;6554
	inc a			;6555
	inc bc			;6556
	inc bc			;6557
	rst 38h			;6558
	inc bc			;6559
	ret m			;655a
	inc bc			;655b
	inc b			;655c
	ld (bc),a		;655d
	rlca			;655e
	add a,c			;655f
	ld bc,00f05h		;6560
	inc bc			;6563
	nop			;6564
	adc a,a			;6565
	rrca			;6566
	rst 38h			;6567
	ret p			;6568
	nop			;6569
	ret p			;656a
	nop			;656b
	nop			;656c
	rst 30h			;656d
	ret p			;656e
	ret p			;656f
	nop			;6570
	nop			;6571
	cp 08eh			;6572
	add a,(hl)		;6574
	inc b			;6575
	ret po			;6576
	xor h			;6577
	ret m			;6578
	pop bc			;6579
	rrca			;657a
	ret m			;657b
	cp 0c2h			;657c
	ld bc,0f0fch		;657e
	jp 0f01fh		;6581
	pop bc			;6584
	pop bc			;6585
	nop			;6586
	cp 0f8h			;6587
	add a,e			;6589
	ld a,a			;658a
	nop			;658b
	ret nz			;658c
	inc bc			;658d
	rrca			;658e
	inc a			;658f
	ret p			;6590
	ret nz			;6591
	add a,b			;6592
	cp 0f1h			;6593
	rst 0			;6595
	ld a,h			;6596
	nop			;6597
	add a,b			;6598
	pop bc			;6599
	rst 38h			;659a
	rst 38h			;659b
	ret p			;659c
	call m,0c1c7h		;659d
	ld b,b			;65a0
	ld b,b			;65a1
	ld h,b			;65a2
	pop af			;65a3
	nop			;65a4
	ld b,0f4h		;65a5
	dec c			;65a7
	ld b,e			;65a8
	add hl,bc		;65a9
	ld (04283h),a		;65aa
	ld (00332h),a		;65ad
	ld hl,03283h		;65b0
	ld hl,00521h		;65b3
	call p,05482h		;65b6
	add a,h			;65b9
	inc b			;65ba
	call po,0320ch		;65bb
	add a,e			;65be
	ld hl,021f2h		;65bf
	inc b			;65c2
	jp p,0f12dh		;65c3
	inc bc			;65c6
	push af			;65c7
	inc b			;65c8
	defb 0fdh,081h,0d8h ;illegal sequence	;65c9
	ld (de),a		;65cc
	pop af			;65cd
	ld (bc),a		;65ce
	di			;65cf
	ld b,032h		;65d0
	inc bc			;65d2
	ld hl,0f105h		;65d3
	add a,e			;65d6
	ld hl,0f1f1h		;65d7
	inc bc			;65da
	push af			;65db
	add a,e			;65dc
	ld hl,02132h		;65dd
	ex af,af'		;65e0
	rra			;65e1
	add a,e			;65e2
	jp p,03221h		;65e3
	ex af,af'		;65e6
	ld b,d			;65e7
	add a,d			;65e8
	ld b,e			;65e9
	ld (0f105h),a		;65ea
	add a,e			;65ed
	ld hl,04332h		;65ee
	ld (00632h),hl		;65f1
	ld hl,0f203h		;65f4
	ex af,af'		;65f7
	pop af			;65f8
	ld (bc),a		;65f9
	di			;65fa
	add a,c			;65fb
	jp p,0f105h		;65fc
	add a,e			;65ff
	jp p,0f231h		;6600
	dec b			;6603
	pop af			;6604
	inc bc			;6605
	jp p,03282h		;6606
	ld b,d			;6609
	inc bc			;660a
	call po,04302h		;660b
	ld (bc),a		;660e
	ld (de),a		;660f
	ld b,0f1h		;6610
	ld (bc),a		;6612
	ld (04302h),a		;6613
	ld (bc),a		;6616
	call po,04381h		;6617
	inc b			;661a
	ld (02105h),a		;661b
	inc bc			;661e
	pop af			;661f
	inc bc			;6620
	ret po			;6621
	add a,e			;6622
	call po,04343h		;6623
	dec b			;6626
	jp p,0f89ah		;6627
	defb 0fdh,0fdh,0f5h ;illegal sequence	;662a
	call m,0f8f8h		;662d
	defb 0fdh,0f8h,0fdh ;illegal sequence	;6630
	defb 0fdh,0f5h,0fch ;illegal sequence	;6633
	defb 0fdh,0fdh,0f8h ;illegal sequence	;6636
	ret m			;6639
	cp 0feh			;663a
	ret m			;663c
	cp 0fdh			;663d
	defb 0fdh,0f8h,0f8h ;illegal sequence	;663f
	defb 0fdh,004h,0f4h ;illegal sequence	;6642
	ld (bc),a		;6645
	ld b,e			;6646
	ld (bc),a		;6647
	ld (02181h),a		;6648
	inc b			;664b
	rra			;664c
	add a,d			;664d
	push af			;664e
	defb 0fdh,005h,0f5h ;illegal sequence	;664f
	ld (bc),a		;6652
	defb 0fdh,005h,0f5h ;illegal sequence	;6653
	add a,d			;6656
	ld b,c			;6657
	ld b,d			;6658
	ld b,043h		;6659
	inc bc			;665b
	ld hl,0f106h		;665c
	add a,h			;665f
	jp p,03221h		;6660
	ld sp,02106h		;6663
	ex af,af'		;6666
	pop af			;6667
	dec b			;6668
	push af			;6669
	add a,e			;666a
	ld (02121h),a		;666b
	inc bc			;666e
	rra			;666f
	add a,c			;6670
	defb 0fdh,003h,0f5h ;illegal sequence	;6671
	ld (bc),a		;6674
	defb 0fdh,003h,0f5h ;illegal sequence	;6675
	add a,a			;6678
	ld e,l			;6679
	defb 0fdh,0f8h,0fdh ;illegal sequence	;667a
	push af			;667d
	push af			;667e
	defb 0fdh,003h,0f5h ;illegal sequence	;667f
	add a,e			;6682
	defb 0fdh,0f8h,0fdh ;illegal sequence	;6683
	inc b			;6686
	push af			;6687
	ld (bc),a		;6688
	pop af			;6689
	add a,e			;668a
	defb 0fdh,0f8h,0fdh ;illegal sequence	;668b
	inc bc			;668e
	push af			;668f
	add a,(hl)		;6690
	ld sp,041e1h		;6691
	ld sp,03121h		;6694
	dec d			;6697
	ld hl,0f102h		;6698
	inc bc			;669b
	push af			;669c
	add a,c			;669d
	di			;669e
	dec bc			;669f
	inc hl			;66a0
	dec bc			;66a1
	jp p,0f581h		;66a2
	ld b,032h		;66a5
	dec b			;66a7
	jp p,02181h		;66a8
	inc bc			;66ab
	jp p,0f105h		;66ac
	ld (bc),a		;66af
	defb 0fdh,002h,0f5h ;illegal sequence	;66b0
	add a,c			;66b3
	ld (0f203h),a		;66b4
	adc a,b			;66b7
	defb 0fdh,0f8h,0fdh ;illegal sequence	;66b8
	push af			;66bb
	ld sp,hl		;66bc
	ei			;66bd
	ld sp,hl		;66be
	jp p,01f04h		;66bf
	add a,d			;66c2
	ld sp,hl		;66c3
	or 003h			;66c4
	call m,0f104h		;66c6
	inc bc			;66c9
	ld hl,0328ah		;66ca
	ld hl,03221h		;66cd
	ld c,(hl)		;66d0
	inc (hl)		;66d1
	inc (hl)		;66d2
	inc hl			;66d3
	inc hl			;66d4
	ld (de),a		;66d5
	inc bc			;66d6
	pop af			;66d7
	add a,h			;66d8
	ld hl,02132h		;66d9
	ld hl,0f106h		;66dc
	ld (bc),a		;66df
	ld hl,01f07h		;66e0
	ld (bc),a		;66e3
	inc hl			;66e4
	ld (bc),a		;66e5
	call po,0f102h		;66e6
	ld (bc),a		;66e9
	ld hl,01f04h		;66ea
	dec b			;66ed
	ld hl,0f103h		;66ee
	inc bc			;66f1
	ld hl,0f105h		;66f2
	add a,l			;66f5
	ld b,d			;66f6
	jp po,03243h		;66f7
	ld hl,01f04h		;66fa
	add a,c			;66fd
	call p,03203h		;66fe
	ld (bc),a		;6701
	ld hl,03f02h		;6702
	add a,c			;6705
	ld sp,01f03h		;6706
	inc bc			;6709
	push af			;670a
	ld (bc),a		;670b
	push bc			;670c
	ld (bc),a		;670d
	rst 8			;670e
	ld (bc),a		;670f
	defb 0fdh,003h,0f5h ;illegal sequence	;6710
	ld (bc),a		;6713
	defb 0fdh,004h,0d8h ;illegal sequence	;6714
	add a,h			;6717
	push de			;6718
	push af			;6719
	ld e,l			;671a
	ld e,l			;671b
	inc bc			;671c
	ret c			;671d
	inc bc			;671e
	push de			;671f
	inc bc			;6720
	push af			;6721
	add a,e			;6722
	ret m			;6723
	defb 0fdh,0fdh,003h ;illegal sequence	;6724
	ret c			;6727
	ld (bc),a		;6728
	push de			;6729
	ld b,0f5h		;672a
	add a,e			;672c
	ret m			;672d
	defb 0fdh,0fdh,003h ;illegal sequence	;672e
	ld e,l			;6731
	nop			;6732
	rst 38h			;6733
	cp 0f8h			;6734
	cp 0fch			;6736
	pop af			;6738
	jp 0f80fh		;6739
	di			;673c
	defb 0edh ;next byte illegal after ed	;673d
	jp nc,0edd2h		;673e
	di			;6741
	rst 38h			;6742
	rst 38h			;6743
	ld bc,0fef8h		;6744
	call m,0c3f1h		;6747
	rrca			;674a
	ret m			;674b
	rrca			;674c
	rst 38h			;674d
	cp 086h			;674e
	inc bc			;6750
	inc bc			;6751
	ld bc,00ffch		;6752
	call m,0c0f0h		;6755
	ld a,a			;6758
	rst 38h			;6759
	rst 38h			;675a
	call m,00707h		;675b
	ld b,e			;675e
	ld b,e			;675f
	ld h,c			;6760
	ld b,b			;6761
	ld b,b			;6762
	ld h,b			;6763
	add a,b			;6764
	ld a,b			;6765
	rlca			;6766
	rst 38h			;6767
	rst 38h			;6768
	cp 08eh			;6769
	add a,(hl)		;676b
	ret c			;676c
	call pe,0f3efh		;676d
	call m,0ffffh		;6770
	ret m			;6773
	dec de			;6774
	scf			;6775
	rst 30h			;6776
	rst 8			;6777
	ccf			;6778
	ret m			;6779
	ex af,af'		;677a
	ret p			;677b
	call pe,0f3efh		;677c
	call m,0080fh		;677f
	rlca			;6782
	rlca			;6783
	ret z			;6784
	ex af,af'		;6785
	jr nc,$-62		;6786
	nop			;6788
	nop			;6789
	rrca			;678a
	ex af,af'		;678b
	xor d			;678c
	or (hl)			;678d
	ex (sp),ix		;678e
	rst 38h			;6790
	rra			;6791
	djnz l67a3h		;6792
	call pe,0f3efh		;6794
	call m,0f0ffh		;6797
	add a,b			;679a
	ld (hl),b		;679b
	scf			;679c
	rst 30h			;679d
	rst 8			;679e
	ccf			;679f
	rst 0			;67a0
	add a,b			;67a1
	rlca			;67a2
l67a3h:
	rlca			;67a3
	ret c			;67a4
	ret c			;67a5
	call pe,0f3efh		;67a6
	call m,08087h		;67a9
	nop			;67ac
	nop			;67ad
	ld bc,00379h		;67ae
	inc bc			;67b1
	ld bc,0fc99h		;67b2
	ld a,03eh		;67b5
	rst 38h			;67b7
	cp 0f8h			;67b8
	add a,e			;67ba
	ld a,a			;67bb
	nop			;67bc
	nop			;67bd
	inc bc			;67be
	rrca			;67bf
	ccf			;67c0
	ld a,a			;67c1
	rst 38h			;67c2
	rst 38h			;67c3
	call m,00000h		;67c4
	cp h			;67c7
	cp h			;67c8
	sbc a,(hl)		;67c9
	ld b,b			;67ca
	ld b,b			;67cb
	ld h,b			;67cc
	dec b			;67cd
	nop			;67ce
	add a,l			;67cf
	ld bc,08671h		;67d0
	ld h,b			;67d3
	ld b,b			;67d4
	inc bc			;67d5
	nop			;67d6
	adc a,e			;67d7
	ld bc,08671h		;67d8
	ret po			;67db
	ret po			;67dc
	ret nz			;67dd
	add a,b			;67de
	add a,b			;67df
	ld bc,08671h		;67e0
	rlca			;67e3
	nop			;67e4
	inc bc			;67e5
	ld bc,00304h		;67e6
	ld (bc),a		;67e9
	ld bc,00007h		;67ea
	add a,d			;67ed
	rlca			;67ee
	ld bc,00006h		;67ef
	add a,l			;67f2
	rlca			;67f3
	nop			;67f4
	ret nz			;67f5
	ret nz			;67f6
	ret m			;67f7
	inc bc			;67f8
	rst 38h			;67f9
	sbc a,l			;67fa
	ld bc,0ffffh		;67fb
	ld a,a			;67fe
	ccf			;67ff
	rrca			;6800
	rlca			;6801
	rlca			;6802
	ld e,0ffh		;6803
	rst 38h			;6805
	ld a,a			;6806
	ccf			;6807
	rrca			;6808
	rlca			;6809
	rlca			;680a
	rra			;680b
	jp nc,04242h		;680c
	add a,d			;680f
	ret p			;6810
	ret po			;6811
	ret nz			;6812
	add a,b			;6813
	ret nz			;6814
	ret nz			;6815
	ret po			;6816
	ret po			;6817
	dec b			;6818
	nop			;6819
	xor e			;681a
	ret nz			;681b
	ld a,b			;681c
	ccf			;681d
	rrca			;681e
	rlca			;681f
	rlca			;6820
	rra			;6821
	rst 38h			;6822
	call m,0f1f8h		;6823
	inc e			;6826
	ret c			;6827
	ret nz			;6828
	ret nz			;6829
	call m,0f8fch		;682a
	pop af			;682d
	call m,0381ch		;682e
	ld (hl),b		;6831
	add a,b			;6832
	ret nz			;6833
	ret po			;6834
	ret p			;6835
	ret m			;6836
	call m,080feh		;6837
	call m,0fcf8h		;683a
	ex (sp),hl		;683d
	ld a,h			;683e
	ld (hl),b		;683f
	nop			;6840
	nop			;6841
	add a,b			;6842
	ret nz			;6843
	ret po			;6844
	ret p			;6845
	inc b			;6846
	ret m			;6847
	adc a,e			;6848
	rrca			;6849
	rst 38h			;684a
	rst 38h			;684b
	nop			;684c
l684dh:
	inc bc			;684d
	ld a,(hl)		;684e
	ccf			;684f
	rst 38h			;6850
	rra			;6851
	jr nc,l68c4h		;6852
	inc bc			;6854
	ret p			;6855
	sbc a,e			;6856
	nop			;6857
	ret p			;6858
	rst 38h			;6859
	rst 38h			;685a
	nop			;685b
	nop			;685c
	ret p			;685d
	ccf			;685e
	nop			;685f
	ret p			;6860
	ld bc,00000h		;6861
	call m,0f0c0h		;6864
	rrca			;6867
	rrca			;6868
	ret m			;6869
	ex (sp),hl		;686a
	rst 0			;686b
	adc a,a			;686c
	ret po			;686d
	ret po			;686e
	cp 084h			;686f
	rst 38h			;6871
	inc bc			;6872
	nop			;6873
	add a,l			;6874
	ld (hl),b		;6875
	ret po			;6876
	ccf			;6877
	ld h,b			;6878
	rst 38h			;6879
	inc bc			;687a
	nop			;687b
	add a,h			;687c
	ld (hl),b		;687d
	ret po			;687e
	ccf			;687f
	ld h,e			;6880
	inc b			;6881
	ret po			;6882
	and l			;6883
	ret m			;6884
	ret nz			;6885
	add a,b			;6886
	rlca			;6887
	rlca			;6888
	pop af			;6889
	ex (sp),hl		;688a
	rst 0			;688b
	rst 0			;688c
	inc e			;688d
	ld c,0ffh		;688e
	rrca			;6890
	rst 38h			;6891
	call m,00fffh		;6892
	ccf			;6895
	nop			;6896
	ret p			;6897
	cp a			;6898
	rrca			;6899
	jp 03cf0h		;689a
	rra			;689d
	adc a,a			;689e
	rst 0			;689f
	rst 38h			;68a0
	rst 38h			;68a1
	add a,a			;68a2
	add a,l			;68a3
	add a,l			;68a4
	rst 38h			;68a5
	jp nz,0e0c2h		;68a6
	inc c			;68a9
	ret nz			;68aa
	inc bc			;68ab
	add a,b			;68ac
	add a,c			;68ad
l68aeh:
	ret po			;68ae
	inc c			;68af
	ret nz			;68b0
	inc bc			;68b1
	add a,b			;68b2
	ld (bc),a		;68b3
	rra			;68b4
	and (hl)		;68b5
	rrca			;68b6
	ccf			;68b7
	ld a,a			;68b8
	jr c,l6937h		;68b9
	jr c,$+1		;68bb
	rst 38h			;68bd
	rra			;68be
	inc bc			;68bf
	ret po			;68c0
	add a,b			;68c1
	add a,b			;68c2
	nop			;68c3
l68c4h:
	nop			;68c4
	inc bc			;68c5
	call m,sub_7fe0h	;68c6
	jr c,$+126		;68c9
	jr c,l684dh		;68cb
	nop			;68cd
	nop			;68ce
	inc bc			;68cf
	ret po			;68d0
	add a,b			;68d1
	add a,b			;68d2
	nop			;68d3
	rst 38h			;68d4
	cp 07ch			;68d5
	nop			;68d7
	nop			;68d8
	ld a,b			;68d9
	nop			;68da
	add a,e			;68db
	ex af,af'		;68dc
	ret po			;68dd
	ld (bc),a		;68de
	dec de			;68df
	sbc a,(hl)		;68e0
	scf			;68e1
	rst 30h			;68e2
	rst 8			;68e3
	ccf			;68e4
	rst 38h			;68e5
	ret m			;68e6
	or (hl)			;68e7
	xor d			;68e8
	or (hl)			;68e9
	ex (sp),ix		;68ea
	rst 38h			;68ec
	add a,a			;68ed
	add a,b			;68ee
	xor d			;68ef
	or (hl)			;68f0
	ex (sp),ix		;68f1
	rst 38h			;68f3
	rst 38h			;68f4
	ret p			;68f5
	djnz l68aeh		;68f6
	ex (sp),ix		;68f8
	rst 38h			;68fa
	rst 38h			;68fb
	ret p			;68fc
	add a,b			;68fd
	ld (hl),b		;68fe
	inc bc			;68ff
	ret p			;6900
	dec b			;6901
	nop			;6902
	add a,l			;6903
	ret z			;6904
	ex af,af'		;6905
	jr nc,$-62		;6906
	nop			;6908
	inc bc			;6909
	cp 085h			;690a
	scf			;690c
	rst 30h			;690d
	rst 8			;690e
	ccf			;690f
	rst 38h			;6910
	inc bc			;6911
	cp 006h			;6912
	rrca			;6914
	sub (hl)		;6915
	rst 38h			;6916
	ret p			;6917
	call pe,0f3efh		;6918
	call m,0dde3h		;691b
	or (hl)			;691e
	xor d			;691f
	call pe,0f3efh		;6920
	call m,0e3ffh		;6923
	or (ix-004h)		;6926
	di			;6929
	rst 28h			;692a
	call pe,0d804h		;692b
	add a,h			;692e
	ccf			;692f
	rst 8			;6930
	rst 30h			;6931
	scf			;6932
	inc b			;6933
	dec de			;6934
	add a,l			;6935
	rst 38h			;6936
l6937h:
	call m,0eff3h		;6937
	call pe,0d803h		;693a
	add a,l			;693d
	rst 38h			;693e
	ccf			;693f
	rst 8			;6940
	rst 30h			;6941
	scf			;6942
	inc bc			;6943
	dec de			;6944
	adc a,h			;6945
	call pe,0f3efh		;6946
	call m,0ffffh		;6949
	ex (sp),hl		;694c
	defb 0ddh,03fh,0cfh ;illegal sequence	;694d
	rst 30h			;6950
	scf			;6951
	inc b			;6952
	dec de			;6953
	ld (bc),a		;6954
	rst 38h			;6955
	adc a,(hl)		;6956
	call m,0eff3h		;6957
	call pe,0d8d8h		;695a
	rst 38h			;695d
	rst 38h			;695e
	ccf			;695f
	rst 8			;6960
	rst 30h			;6961
	scf			;6962
	dec de			;6963
	dec de			;6964
	nop			;6965
	add a,c			;6966
	add a,b			;6967
	ld b,0d8h		;6968
	add a,(hl)		;696a
	push de			;696b
	jp p,0f3f3h		;696c
	jp p,003f2h		;696f
	pop af			;6972
	add a,c			;6973
	ret m			;6974
	ld b,0d8h		;6975
	add a,l			;6977
	push de			;6978
	pop af			;6979
	pop af			;697a
	push af			;697b
	push af			;697c
	inc bc			;697d
	defb 0fdh,082h,0d8h ;illegal sequence	;697e
	pop af			;6981
	inc bc			;6982
	defb 0fdh,003h,0d5h ;illegal sequence	;6983
	add a,(hl)		;6986
	ret c			;6987
	ld sp,0f51fh		;6988
	ld e,l			;698b
	ld e,l			;698c
	inc bc			;698d
	push af			;698e
	add a,d			;698f
	di			;6990
	ld sp,0f103h		;6991
	inc bc			;6994
	push af			;6995
	rlca			;6996
	pop af			;6997
	add a,c			;6998
	di			;6999
	dec b			;699a
	pop af			;699b
	ld (bc),a		;699c
	di			;699d
	add a,c			;699e
	ld sp,0f104h		;699f
	ld (bc),a		;69a2
	di			;69a3
	add a,c			;69a4
	ld sp,01f07h		;69a5
	ld (bc),a		;69a8
	di			;69a9
	add a,c			;69aa
	jp p,0f104h		;69ab
	ld (bc),a		;69ae
	di			;69af
	add a,c			;69b0
	ld sp,0f105h		;69b1
	ld (bc),a		;69b4
	di			;69b5
	add a,c			;69b6
	ld sp,0f104h		;69b7
	ld (bc),a		;69ba
	di			;69bb
	add a,e			;69bc
	ld sp,0f21fh		;69bd
	dec b			;69c0
	pop af			;69c1
	ld (bc),a		;69c2
	di			;69c3
	inc b			;69c4
	ld d,b			;69c5
	inc bc			;69c6
	defb 0fdh,084h ;add a,iyh	;69c7
	ret c			;69c9
	ld d,b			;69ca
	push de			;69cb
	push de			;69cc
	inc bc			;69cd
	ret c			;69ce
	ld (bc),a		;69cf
	push de			;69d0
	inc b			;69d1
	ret nc			;69d2
	inc bc			;69d3
	push de			;69d4
	add a,c			;69d5
	ret c			;69d6
	inc bc			;69d7
	ld d,b			;69d8
	ld (bc),a		;69d9
	push de			;69da
	inc bc			;69db
	push af			;69dc
	rlca			;69dd
	ld d,b			;69de
	add a,d			;69df
	push af			;69e0
	jr nc,l69e7h		;69e1
	jr nz,l69e7h		;69e3
	ld d,b			;69e5
	add a,e			;69e6
l69e7h:
	push af			;69e7
	ld sp,00310h		;69e8
	ret p			;69eb
	ld (bc),a		;69ec
	ld d,b			;69ed
	add a,c			;69ee
	push af			;69ef
	add hl,bc		;69f0
	or b			;69f1
	inc bc			;69f2
	sub b			;69f3
	ld (bc),a		;69f4
	ld h,b			;69f5
	add hl,bc		;69f6
	ret nz			;69f7
	add a,c			;69f8
	ret po			;69f9
	rlca			;69fa
	ret p			;69fb
	add a,e			;69fc
	ret po			;69fd
	pop af			;69fe
	pop af			;69ff
l6a00h:
	dec b			;6a00
	rrca			;6a01
	add a,c			;6a02
	or b			;6a03
	dec b			;6a04
	ret nz			;6a05
	add a,e			;6a06
	ret p			;6a07
	ld d,b			;6a08
	di			;6a09
	dec b			;6a0a
	ret nz			;6a0b
	adc a,(hl)		;6a0c
	ret p			;6a0d
	ld d,b			;6a0e
	cp 0f8h			;6a0f
	defb 0fdh,0f5h,0f5h ;illegal sequence	;6a11
	ret p			;6a14
	ret po			;6a15
	ret nc			;6a16
	ld d,b			;6a17
	ret po			;6a18
	add a,b			;6a19
	ret nc			;6a1a
	dec b			;6a1b
	ld d,b			;6a1c
	inc bc			;6a1d
	pop af			;6a1e
	and c			;6a1f
	ret p			;6a20
	ld d,b			;6a21
l6a22h:
	ret p			;6a22
	ld d,b			;6a23
	cp 0feh			;6a24
	jp p,0f4f3h		;6a26
	ld b,b			;6a29
	jr nc,l6a5ch		;6a2a
	djnz l6a22h		;6a2c
	call p,0f2f3h		;6a2e
	ret p			;6a31
	jr nz,$+50		;6a32
	ld b,b			;6a34
	jr nz,$+66		;6a35
	jr nc,$+34		;6a37
	djnz l6a5bh		;6a39
	djnz $+35		;6a3b
	call p,0f3f4h		;6a3d
	di			;6a40
	inc b			;6a41
	jr nc,$+7		;6a42
	djnz $+5		;6a44
	ret p			;6a46
	add a,c			;6a47
	cp 003h			;6a48
	ld b,e			;6a4a
	adc a,e			;6a4b
	ld sp,0f1f2h		;6a4c
	pop af			;6a4f
	jp p,03232h		;6a50
	ld hl,01f21h		;6a53
	rra			;6a56
	inc b			;6a57
	ld hl,02302h		;6a58
l6a5bh:
	ld (bc),a		;6a5b
l6a5ch:
	ld hl,0f191h		;6a5c
	jp p,021f2h		;6a5f
	ld hl,02132h		;6a62
	ld hl,0e332h		;6a65
	ld b,d			;6a68
	ld b,c			;6a69
	ld sp,0f2f3h		;6a6a
	call p,003f3h		;6a6d
	call po,0e302h		;6a70
	add a,e			;6a73
	ld b,d			;6a74
	call p,003f3h		;6a75
	call po,0e302h		;6a78
	add a,a			;6a7b
	ld b,d			;6a7c
	call p,0c5f3h		;6a7d
	push bc			;6a80
	rst 8			;6a81
	rst 8			;6a82
	inc bc			;6a83
	cp 08bh			;6a84
	call po,0423eh		;6a86
	ld b,c			;6a89
	ld sp,0f23fh		;6a8a
	pop af			;6a8d
	pop af			;6a8e
	ld hl,00321h		;6a8f
	ld (02102h),a		;6a92
	add a,a			;6a95
	pop af			;6a96
	or 0f9h			;6a97
	ei			;6a99
	ld sp,hl		;6a9a
	or 0f9h			;6a9b
	dec b			;6a9d
	ei			;6a9e
	adc a,b			;6a9f
	ld sp,hl		;6aa0
	call m,0f9fch		;6aa1
	call m,010f0h		;6aa4
	jr nc,$+5		;6aa7
	ld b,b			;6aa9
l6aaah:
	add a,l			;6aaa
	jr nc,l6acdh		;6aab
	ret p			;6aad
	jr nz,l6ae0h		;6aae
	inc bc			;6ab0
	ld b,b			;6ab1
	adc a,c			;6ab2
	jr nc,l6ad5h		;6ab3
	ret p			;6ab5
	djnz l6ad8h		;6ab6
	jr nz,l6aaah		;6ab8
	jr nz,l6aech		;6aba
	inc bc			;6abc
	ld b,b			;6abd
	adc a,e			;6abe
	jr nc,l6ae1h		;6abf
	ret p			;6ac1
	jr nz,$+50		;6ac2
	ld b,b			;6ac4
	ret p			;6ac5
	ret p			;6ac6
	ld h,b			;6ac7
	sub b			;6ac8
	or b			;6ac9
	inc bc			;6aca
	ex de,hl		;6acb
	inc bc			;6acc
l6acdh:
	call m,0f682h		;6acd
	sub (hl)		;6ad0
	inc bc			;6ad1
	cp c			;6ad2
	inc bc			;6ad3
	pop af			;6ad4
l6ad5h:
	add a,d			;6ad5
	ld sp,hl		;6ad6
	or b			;6ad7
l6ad8h:
	inc bc			;6ad8
	ex de,hl		;6ad9
	ld (bc),a		;6ada
	jp p,01183h		;6adb
	or 096h			;6ade
l6ae0h:
	ex af,af'		;6ae0
l6ae1h:
	cp c			;6ae1
	ld (bc),a		;6ae2
	sub (hl)		;6ae3
	adc a,c			;6ae4
	add a,096h		;6ae5
	sub l			;6ae7
	sbc a,l			;6ae8
	sbc a,b			;6ae9
	ld l,l			;6aea
	ld h,l			;6aeb
l6aech:
	ld h,l			;6aec
	call 0f107h		;6aed
	add a,e			;6af0
	di			;6af1
	jp p,004f2h		;6af2
	pop af			;6af5
	ld (bc),a		;6af6
	di			;6af7
	add a,c			;6af8
	jp p,0f105h		;6af9
	ld (bc),a		;6afc
	di			;6afd
	dec b			;6afe
	pop af			;6aff
	ld (bc),a		;6b00
	di			;6b01
	add a,e			;6b02
	ld sp,021f2h		;6b03
	dec bc			;6b06
	rra			;6b07
	add a,e			;6b08
	jp p,0f4f3h		;6b09
	dec b			;6b0c
	pop af			;6b0d
	adc a,e			;6b0e
	call p,0f2f3h		;6b0f
	call p,02323h		;6b12
	ld (de),a		;6b15
	ld (de),a		;6b16
	pop af			;6b17
	pop af			;6b18
	ld hl,0f104h		;6b19
	inc b			;6b1c
	jp p,0f105h		;6b1d
	rlca			;6b20
	jp p,0f302h		;6b21
	add a,c			;6b24
	jp p,0f103h		;6b25
	inc b			;6b28
	jp p,0f103h		;6b29
	inc b			;6b2c
	jp p,0f302h		;6b2d
	ex af,af'		;6b30
	jp p,0f107h		;6b31
	ex af,af'		;6b34
	jp p,0f104h		;6b35
	inc b			;6b38
	jp p,0f304h		;6b39
	ld b,0f2h		;6b3c
	nop			;6b3e
	ex af,af'		;6b3f
	add a,c			;6b40
	ex af,af'		;6b41
	add a,b			;6b42
	ld (bc),a		;6b43
	add a,c			;6b44
	adc a,(hl)		;6b45
	add a,b			;6b46
	add a,a			;6b47
	add a,h			;6b48
	add a,h			;6b49
	call m,sub_7e00h	;6b4a
	ld e,(hl)		;6b4d
	ld a,02ah		;6b4e
	ld d,042h		;6b50
	ld h,b			;6b52
	djnz l6b5dh		;6b53
	ld a,(hl)		;6b55
	sbc a,c			;6b56
	nop			;6b57
	inc l			;6b58
	nop			;6b59
	inc a			;6b5a
	inc a			;6b5b
	nop			;6b5c
l6b5dh:
	inc a			;6b5d
	nop			;6b5e
	nop			;6b5f
	ld (hl),h		;6b60
	nop			;6b61
	ld b,000h		;6b62
	ld b,07ah		;6b64
	nop			;6b66
	inc h			;6b67
	nop			;6b68
	inc a			;6b69
	add a,b			;6b6a
	cp h			;6b6b
	add a,b			;6b6c
	nop			;6b6d
	inc l			;6b6e
	nop			;6b6f
	inc bc			;6b70
	ld l,c			;6b71
	add a,c			;6b72
	defb 0fdh,006h,081h ;illegal sequence	;6b73
	adc a,l			;6b76
	ld e,(hl)		;6b77
	dec a			;6b78
	dec (hl)		;6b79
	ld d,c			;6b7a
	add hl,hl		;6b7b
	nop			;6b7c
	nop			;6b7d
	ld e,c			;6b7e
	jr nz,l6bdah		;6b7f
	ld a,c			;6b81
	nop			;6b82
	nop			;6b83
	inc bc			;6b84
	cp 0aeh			;6b85
	add a,c			;6b87
	add a,b			;6b88
	add a,b			;6b89
	nop			;6b8a
	nop			;6b8b
	ld bc,00175h		;6b8c
	ld b,000h		;6b8f
	ld a,h			;6b91
	ld bc,l6101h		;6b92
	jp 0c301h		;6b95
	ld bc,001c3h		;6b98
	jp l6a00h		;6b9b
	ld l,d			;6b9e
	nop			;6b9f
	nop			;6ba0
	ld a,a			;6ba1
	rst 38h			;6ba2
	nop			;6ba3
	cp 0a2h			;6ba4
	cp 03eh			;6ba6
	rst 38h			;6ba8
	rst 18h			;6ba9
	add a,c			;6baa
	nop			;6bab
	add a,b			;6bac
	or h			;6bad
	add a,b			;6bae
	ld h,d			;6baf
	ld l,d			;6bb0
	ld h,d			;6bb1
	ex af,af'		;6bb2
	nop			;6bb3
	ld b,007h		;6bb4
	inc a			;6bb6
	add a,h			;6bb7
	nop			;6bb8
	inc l			;6bb9
	inc l			;6bba
	nop			;6bbb
	inc b			;6bbc
	ld a,(hl)		;6bbd
	adc a,l			;6bbe
	nop			;6bbf
	inc (hl)		;6bc0
	inc (hl)		;6bc1
	add a,b			;6bc2
	add a,b			;6bc3
	cp h			;6bc4
	add a,b			;6bc5
	inc h			;6bc6
	nop			;6bc7
	ld l,c			;6bc8
	ld l,c			;6bc9
	nop			;6bca
	nop			;6bcb
	inc bc			;6bcc
	ld a,a			;6bcd
	nop			;6bce
	ld d,054h		;6bcf
	dec d			;6bd1
	ld b,b			;6bd2
	add a,c			;6bd3
	ld d,b			;6bd4
	rlca			;6bd5
	ld b,b			;6bd6
	add a,e			;6bd7
	ld d,b			;6bd8
	nop			;6bd9
l6bdah:
	ld d,h			;6bda
	dec b			;6bdb
	ld b,b			;6bdc
	add a,c			;6bdd
	ld d,b			;6bde
	inc bc			;6bdf
	ld b,b			;6be0
	inc bc			;6be1
	ld d,b			;6be2
	add a,d			;6be3
	ld b,b			;6be4
	nop			;6be5
	rlca			;6be6
	ld d,h			;6be7
	ex af,af'		;6be8
	ld b,b			;6be9
	ld (bc),a		;6bea
	ld d,b			;6beb
	ld b,040h		;6bec
	dec b			;6bee
	ld d,h			;6bef
	dec b			;6bf0
	ld d,b			;6bf1
	add a,c			;6bf2
	ld b,b			;6bf3
	inc bc			;6bf4
	ld d,b			;6bf5
	adc a,l			;6bf6
	ld d,h			;6bf7
	ld b,b			;6bf8
	ld d,h			;6bf9
	ld b,b			;6bfa
	ld d,h			;6bfb
	ld b,b			;6bfc
	ld d,h			;6bfd
	ld d,b			;6bfe
	ld d,b			;6bff
	ld b,b			;6c00
	ld b,b			;6c01
	ld b,l			;6c02
	ld b,l			;6c03
	rlca			;6c04
	dec b			;6c05
	ld (bc),a		;6c06
	ld d,h			;6c07
	ld (bc),a		;6c08
	ld d,b			;6c09
	ld (bc),a		;6c0a
	ld b,b			;6c0b
	add a,c			;6c0c
	ld d,b			;6c0d
	inc b			;6c0e
	ld b,b			;6c0f
	adc a,l			;6c10
	ld d,b			;6c11
	ld d,h			;6c12
	nop			;6c13
	ld d,h			;6c14
	nop			;6c15
	ld d,h			;6c16
	nop			;6c17
	ld d,h			;6c18
	ld d,b			;6c19
	ld d,b			;6c1a
	ld b,b			;6c1b
	ld b,b			;6c1c
	ld d,b			;6c1d
	inc b			;6c1e
	ld b,b			;6c1f
	add a,e			;6c20
	ld d,b			;6c21
	ld b,b			;6c22
	ld d,b			;6c23
	inc bc			;6c24
	ld b,b			;6c25
	inc bc			;6c26
	ld d,b			;6c27
	ld (bc),a		;6c28
	ld b,b			;6c29
	inc b			;6c2a
	ld b,l			;6c2b
	nop			;6c2c
	xor e			;6c2d
	ld (hl),b		;6c2e
	ret po			;6c2f
	ret po			;6c30
	ret nz			;6c31
	ret nz			;6c32
	rst 38h			;6c33
	ccf			;6c34
	jr nz,l6c45h		;6c35
	rlca			;6c37
	rlca			;6c38
	inc bc			;6c39
	inc bc			;6c3a
	call m,0380ch		;6c3b
	cp l			;6c3e
	rst 0			;6c3f
	add a,c			;6c40
	cp l			;6c41
	rst 0			;6c42
	add a,c			;6c43
	cp l			;6c44
l6c45h:
	rst 0			;6c45
	add a,c			;6c46
	rst 38h			;6c47
	rst 0			;6c48
	add a,l			;6c49
	rst 38h			;6c4a
	rst 0			;6c4b
	add a,l			;6c4c
	rst 38h			;6c4d
	rst 0			;6c4e
	add a,l			;6c4f
	rst 38h			;6c50
	rst 0			;6c51
	cp l			;6c52
	rst 38h			;6c53
	rst 0			;6c54
	cp l			;6c55
	inc a			;6c56
	ld a,(hl)		;6c57
	nop			;6c58
	dec e			;6c59
	ld (hl),h		;6c5a
	nop			;6c5b
	sub e			;6c5c
	jp p,0fef3h		;6c5d
	cp 013h			;6c60
	ld hl,09121h		;6c62
	pop af			;6c65
	jp p,0f3f3h		;6c66
	ld (de),a		;6c69
	ld (de),a		;6c6a
	sub c			;6c6b
	sub c			;6c6c
	jp p,0f3f3h		;6c6d
	inc bc			;6c70
	jp p,0f185h		;6c71
	jp p,0f1f1h		;6c74
	jp p,0f103h		;6c77
	ld (bc),a		;6c7a
	ld sp,hl		;6c7b
	add a,c			;6c7c
	pop af			;6c7d
	rlca			;6c7e
	ld sp,hl		;6c7f
	add a,d			;6c80
	ret p			;6c81
	sub b			;6c82
	inc bc			;6c83
	ld hl,03202h		;6c84
	add a,d			;6c87
	ex (sp),hl		;6c88
	ld (0e303h),a		;6c89
	adc a,l			;6c8c
	ld (032e3h),a		;6c8d
	ld (03221h),a		;6c90
	ld (02121h),a		;6c93
	ld (02121h),a		;6c96
	add hl,de		;6c99
	inc bc			;6c9a
	ld hl,01984h		;6c9b
	ld hl,01921h		;6c9e
	nop			;6ca1
	adc a,(hl)		;6ca2
	rlca			;6ca3
	ccf			;6ca4
	rst 38h			;6ca5
	rrca			;6ca6
	ret m			;6ca7
	ret nz			;6ca8
	ret m			;6ca9
	ret nz			;6caa
	ret nz			;6cab
	ret m			;6cac
	ccf			;6cad
	rlca			;6cae
	rlca			;6caf
	ret po			;6cb0
	ld b,01fh		;6cb1
	inc b			;6cb3
	ret po			;6cb4
	add a,l			;6cb5
	ld a,a			;6cb6
	rra			;6cb7
	inc bc			;6cb8
	rra			;6cb9
	inc bc			;6cba
	dec b			;6cbb
	rlca			;6cbc
	dec b			;6cbd
	ret m			;6cbe
	add a,d			;6cbf
	rst 38h			;6cc0
	ld h,c			;6cc1
	dec b			;6cc2
	rrca			;6cc3
	add a,h			;6cc4
	call m,0f0f0h		;6cc5
	jr nc,l6ccdh		;6cc8
	or 083h			;6cca
	adc a,c			;6ccc
l6ccdh:
	adc a,a			;6ccd
	rst 8			;6cce
	dec b			;6ccf
	pop hl			;6cd0
	inc bc			;6cd1
	add a,c			;6cd2
	add a,c			;6cd3
	rst 8			;6cd4
	inc b			;6cd5
	adc a,c			;6cd6
	add a,h			;6cd7
	adc a,a			;6cd8
	ld c,a			;6cd9
	ld c,a			;6cda
	pop af			;6cdb
	inc bc			;6cdc
	ret p			;6cdd
	add a,l			;6cde
	ld (hl),b		;6cdf
	ret nz			;6ce0
	call m,0fffch		;6ce1
	ld b,080h		;6ce4
	add a,c			;6ce6
	add a,c			;6ce7
	inc bc			;6ce8
	add a,b			;6ce9
	add a,c			;6cea
	rst 38h			;6ceb
	dec b			;6cec
	add a,b			;6ced
	add a,c			;6cee
	rst 38h			;6cef
	dec b			;6cf0
	add a,b			;6cf1
	add a,e			;6cf2
	add a,c			;6cf3
	nop			;6cf4
	inc a			;6cf5
	ex af,af'		;6cf6
	ld a,(hl)		;6cf7
	inc b			;6cf8
	pop bc			;6cf9
	ld (bc),a		;6cfa
	add a,c			;6cfb
	adc a,h			;6cfc
	ret nz			;6cfd
	ret p			;6cfe
	nop			;6cff
	nop			;6d00
	ret p			;6d01
	ret nz			;6d02
	nop			;6d03
	nop			;6d04
	add hl,bc		;6d05
	add hl,bc		;6d06
	rst 38h			;6d07
	rst 8			;6d08
	inc b			;6d09
	add hl,bc		;6d0a
	add a,(hl)		;6d0b
	add a,b			;6d0c
	nop			;6d0d
	nop			;6d0e
	ret po			;6d0f
	call m,004c0h		;6d10
	nop			;6d13
	add a,h			;6d14
	ret p			;6d15
	cp 0f0h			;6d16
	ret nz			;6d18
	inc b			;6d19
	nop			;6d1a
	adc a,c			;6d1b
	ld h,d			;6d1c
	add hl,bc		;6d1d
	ret			;6d1e
	add hl,bc		;6d1f
	add hl,bc		;6d20
	ret			;6d21
	ld a,0f8h		;6d22
	ret nz			;6d24
	inc bc			;6d25
	nop			;6d26
	inc b			;6d27
	ld a,a			;6d28
	ld (bc),a		;6d29
	ret p			;6d2a
	sub a			;6d2b
	rrca			;6d2c
	ld a,a			;6d2d
	rst 38h			;6d2e
	rst 38h			;6d2f
	rrca			;6d30
	inc bc			;6d31
	rst 38h			;6d32
	rrca			;6d33
	rrca			;6d34
	pop de			;6d35
	ret z			;6d36
	ld l,b			;6d37
	nop			;6d38
	rrca			;6d39
	rrca			;6d3a
	ld (hl),b		;6d3b
	rrca			;6d3c
	ld a,a			;6d3d
	adc a,a			;6d3e
	ret p			;6d3f
	ld c,h			;6d40
	ld h,h			;6d41
	cpl			;6d42
	ld b,0f0h		;6d43
	add a,c			;6d45
	ret nz			;6d46
	inc bc			;6d47
	nop			;6d48
l6d49h:
	add a,e			;6d49
	ret po			;6d4a
	ret m			;6d4b
	ret po			;6d4c
	nop			;6d4d
	inc bc			;6d4e
	jr nz,l6d54h		;6d4f
	ld (02102h),a		;6d51
l6d54h:
	ld (bc),a		;6d54
	inc hl			;6d55
	ld (bc),a		;6d56
	ld hl,0198ch		;6d57
	ld sp,hl		;6d5a
	ld sp,hl		;6d5b
l6d5ch:
	ld hl,02132h		;6d5c
	add hl,de		;6d5f
	sbc a,a			;6d60
	sbc a,a			;6d61
	sub c			;6d62
	ld (de),a		;6d63
	ld (de),a		;6d64
	inc bc			;6d65
	di			;6d66
	ld (bc),a		;6d67
	ld (02189h),a		;6d68
	add hl,de		;6d6b
	sbc a,a			;6d6c
	jp p,02323h		;6d6d
	ld (de),a		;6d70
	sub c			;6d71
	ld sp,hl		;6d72
	inc b			;6d73
	rra			;6d74
	add a,e			;6d75
	ld sp,01223h		;6d76
	inc bc			;6d79
	sub c			;6d7a
	inc bc			;6d7b
	sbc a,a			;6d7c
	add a,d			;6d7d
	add hl,hl		;6d7e
	add hl,de		;6d7f
	inc b			;6d80
l6d81h:
	ld sp,hl		;6d81
	ld (bc),a		;6d82
	pop af			;6d83
	inc bc			;6d84
	ld sp,hl		;6d85
	add a,c			;6d86
	pop af			;6d87
	inc bc			;6d88
	ld sp,hl		;6d89
	add a,d			;6d8a
	jp p,009f1h		;6d8b
	ld sp,hl		;6d8e
	ld (bc),a		;6d8f
	sub c			;6d90
	add a,e			;6d91
	sub d			;6d92
	jp p,003f2h		;6d93
	di			;6d96
	sbc a,a			;6d97
	jp p,0f9f1h		;6d98
	di			;6d9b
	jp p,0f1f1h		;6d9c
	jp p,0f2f3h		;6d9f
	pop af			;6da2
	ld sp,hl		;6da3
	ld sp,hl		;6da4
	jp p,0f3f3h		;6da5
	jp p,0f9f1h		;6da8
	sub b			;6dab
	sub b			;6dac
	djnz l6dceh		;6dad
	cpl			;6daf
	cpl			;6db0
	ccf			;6db1
	ccf			;6db2
	cpl			;6db3
	rra			;6db4
	jp p,003f2h		;6db5
	pop af			;6db8
	add a,d			;6db9
	ld sp,hl		;6dba
	jr nz,l6dc1h		;6dbb
	jr nc,$+5		;6dbd
	jr nz,l6d49h		;6dbf
l6dc1h:
	jp p,09191h		;6dc1
	ld sp,hl		;6dc4
	ld sp,hl		;6dc5
	sub d			;6dc6
	sub c			;6dc7
	ld sp,hl		;6dc8
	inc bc			;6dc9
	sub b			;6dca
	add a,d			;6dcb
	jr nz,$+50		;6dcc
l6dceh:
	ld b,020h		;6dce
	add a,d			;6dd0
	jr nc,$+34		;6dd1
	dec b			;6dd3
	djnz l6d5ch		;6dd4
	jr nz,$-109		;6dd6
	ld sp,hl		;6dd8
	jp p,0f991h		;6dd9
	ld b,032h		;6ddc
	inc bc			;6dde
	ld hl,02382h		;6ddf
	ld hl,01905h		;6de2
	add a,h			;6de5
	jr nz,l6e1ah		;6de6
	ld (00421h),a		;6de8
	rra			;6deb
	ld (bc),a		;6dec
	jr nz,$+6		;6ded
	ccf			;6def
	adc a,e			;6df0
	jp p,0f1f3h		;6df1
	ld sp,hl		;6df4
	ld sp,hl		;6df5
	pop af			;6df6
	inc de			;6df7
	ld (01921h),a		;6df8
	jr nc,l6e02h		;6dfb
	jr nz,l6d81h		;6dfd
	jr nc,$+18		;6dff
	nop			;6e01
l6e02h:
	ld (bc),a		;6e02
	add a,e			;6e03
	inc b			;6e04
	ld a,(hl)		;6e05
	add a,a			;6e06
	add a,c			;6e07
	ld a,(bc)		;6e08
	adc a,e			;6e09
	add a,b			;6e0a
	add a,b			;6e0b
	ccf			;6e0c
	ccf			;6e0d
	inc bc			;6e0e
	call p,0f791h		;6e0f
	call p,003f4h		;6e12
	inc bc			;6e15
	call m,00b0bh		;6e16
	sbc a,a			;6e19
l6e1ah:
	rra			;6e1a
	rra			;6e1b
	ret po			;6e1c
	ret po			;6e1d
	djnz l6e90h		;6e1e
	ld b,b			;6e20
	rst 38h			;6e21
	inc bc			;6e22
	adc a,d			;6e23
	inc bc			;6e24
	ld (hl),h		;6e25
	add a,h			;6e26
	ld a,(hl)		;6e27
	ex af,af'		;6e28
	ex af,af'		;6e29
	adc a,e			;6e2a
	dec b			;6e2b
	add a,b			;6e2c
	add a,l			;6e2d
	ld h,(hl)		;6e2e
	jr l6e49h		;6e2f
	or 076h			;6e31
	inc bc			;6e33
	add a,c			;6e34
	add a,h			;6e35
	ld l,b			;6e36
	ld h,b			;6e37
	ld e,061h		;6e38
	inc bc			;6e3a
	add a,b			;6e3b
	add a,h			;6e3c
	ld l,b			;6e3d
	add a,c			;6e3e
	add a,c			;6e3f
	rst 38h			;6e40
	inc bc			;6e41
	adc a,e			;6e42
	and l			;6e43
	adc a,d			;6e44
	ld (hl),h		;6e45
	adc a,h			;6e46
	inc bc			;6e47
	inc bc			;6e48
l6e49h:
	ld a,(bc)		;6e49
	adc a,e			;6e4a
	res 1,e			;6e4b
	rrca			;6e4d
	adc a,c			;6e4e
	add a,c			;6e4f
	ld a,(hl)		;6e50
	nop			;6e51
	add a,e			;6e52
	or 0feh			;6e53
	cp 040h			;6e55
	add a,b			;6e57
	ld l,b			;6e58
	ld l,b			;6e59
	inc bc			;6e5a
	ccf			;6e5b
	ld b,b			;6e5c
	add a,b			;6e5d
	rst 38h			;6e5e
	ld a,h			;6e5f
	add a,c			;6e60
	add a,c			;6e61
	ld a,a			;6e62
	ld a,a			;6e63
	ld a,(hl)		;6e64
	ld a,(hl)		;6e65
	inc a			;6e66
	inc a			;6e67
	jp 00003h		;6e68
	ld (bc),a		;6e6b
	dec bc			;6e6c
	inc bc			;6e6d
	ld (hl),h		;6e6e
	add a,(hl)		;6e6f
	add a,e			;6e70
	ld a,h			;6e71
	ld a,h			;6e72
	inc bc			;6e73
	rst 38h			;6e74
	ld (hl),b		;6e75
	inc bc			;6e76
	add a,b			;6e77
	ld (bc),a		;6e78
	ld l,b			;6e79
	add a,h			;6e7a
	inc bc			;6e7b
	ccf			;6e7c
	call p,00474h		;6e7d
	ld a,h			;6e80
	ld (bc),a		;6e81
	add a,e			;6e82
	add a,c			;6e83
	add a,b			;6e84
	inc bc			;6e85
	jp 03c81h		;6e86
	inc bc			;6e89
	rst 30h			;6e8a
	inc bc			;6e8b
	dec bc			;6e8c
	ld (bc),a		;6e8d
	inc bc			;6e8e
	inc bc			;6e8f
l6e90h:
	call m,03c85h		;6e90
	inc e			;6e93
	ld h,e			;6e94
	add a,b			;6e95
	add a,b			;6e96
	inc bc			;6e97
	ld l,b			;6e98
	add a,h			;6e99
	add a,c			;6e9a
	ld b,d			;6e9b
	inc a			;6e9c
	ld (hl),h		;6e9d
	inc bc			;6e9e
	ld a,h			;6e9f
	add a,e			;6ea0
	add a,e			;6ea1
	ex af,af'		;6ea2
	inc bc			;6ea3
	inc bc			;6ea4
	jp 03d86h		;6ea5
	cp 0f7h			;6ea8
	add a,c			;6eaa
	rst 30h			;6eab
	call p,sub_7403h	;6eac
	adc a,d			;6eaf
	halt			;6eb0
	add a,c			;6eb1
	ld l,b			;6eb2
	ld h,b			;6eb3
	rlca			;6eb4
	rlca			;6eb5
	jr c,$+66		;6eb6
	add a,b			;6eb8
	ld l,b			;6eb9
	inc bc			;6eba
	ld (hl),h		;6ebb
	add a,l			;6ebc
	ld bc,08381h		;6ebd
	add a,e			;6ec0
	ld a,(hl)		;6ec1
	inc bc			;6ec2
	ld a,a			;6ec3
	inc bc			;6ec4
	dec bc			;6ec5
	ld (bc),a		;6ec6
	adc a,a			;6ec7
	adc a,d			;6ec8
	jp 03c3ch		;6ec9
	rst 30h			;6ecc
	or 076h			;6ecd
	rst 30h			;6ecf
	halt			;6ed0
	ret nz			;6ed1
	jr z,l6ed7h		;6ed2
	ld l,b			;6ed4
	add a,e			;6ed5
	add a,b			;6ed6
l6ed7h:
	rlca			;6ed7
	ccf			;6ed8
	inc bc			;6ed9
	add a,c			;6eda
	add a,c			;6edb
sub_6edch:
	push af			;6edc
	inc b			;6edd
	ld (hl),h		;6ede
	add a,e			;6edf
	ret nz			;6ee0
	rra			;6ee1
	ld h,b			;6ee2
	inc bc			;6ee3
	add a,b			;6ee4
	sub d			;6ee5
	dec bc			;6ee6
	jp 0fcfch		;6ee7
	jp 03c3ch		;6eea
	rst 30h			;6eed
	call p,04074h		;6eee
	add a,b			;6ef1
	ret nz			;6ef2
	jr z,l6f5dh		;6ef3
	ld l,b			;6ef5
	ld bc,0000fh		;6ef6
	sbc a,l			;6ef9
	ld hl,03232h		;6efa
	ld hl,09f19h		;6efd
	sbc a,a			;6f00
	sub c			;6f01
	ld (02132h),a		;6f02
	sub c			;6f05
	ld sp,hl		;6f06
	ld sp,hl		;6f07
	sub c			;6f08
	inc hl			;6f09
	ld hl,02132h		;6f0a
	sub c			;6f0d
	ld sp,hl		;6f0e
	ld sp,hl		;6f0f
	sub c			;6f10
	ld (de),a		;6f11
	ld (de),a		;6f12
	sub c			;6f13
	ld sp,hl		;6f14
	ld sp,hl		;6f15
	sub c			;6f16
	inc bc			;6f17
	ld hl,09102h		;6f18
	sbc a,c			;6f1b
	ld (de),a		;6f1c
	inc hl			;6f1d
	ex (sp),hl		;6f1e
	ex (sp),hl		;6f1f
	ld (02121h),a		;6f20
	ld (03132h),a		;6f23
	add hl,hl		;6f26
	rra			;6f27
	ld sp,hl		;6f28
	pop af			;6f29
	ld sp,hl		;6f2a
	pop af			;6f2b
	ld (de),a		;6f2c
	ld (09121h),a		;6f2d
	ld sp,hl		;6f30
	rra			;6f31
	ld hl,0f121h		;6f32
	inc bc			;6f35
	ld sp,hl		;6f36
	adc a,l			;6f37
	sub c			;6f38
	ld hl,09ff1h		;6f39
	sbc a,a			;6f3c
	sub c			;6f3d
	sub c			;6f3e
	ld (de),a		;6f3f
	ld (de),a		;6f40
	ld (0f9f9h),a		;6f41
	ld de,03203h		;6f44
	add a,e			;6f47
	ld hl,091f9h		;6f48
	inc bc			;6f4b
	ld sp,hl		;6f4c
	sub l			;6f4d
	ld hl,02132h		;6f4e
	add hl,de		;6f51
	ld sp,hl		;6f52
	pop af			;6f53
	ld hl,0f121h		;6f54
	pop af			;6f57
	ld sp,hl		;6f58
	ld sp,hl		;6f59
	ld hl,0f121h		;6f5a
l6f5dh:
	sbc a,a			;6f5d
	sub c			;6f5e
	ld (de),a		;6f5f
	ld (09121h),a		;6f60
	inc bc			;6f63
	ld sp,hl		;6f64
	inc bc			;6f65
	ld hl,03202h		;6f66
	add a,a			;6f69
	ld hl,0f919h		;6f6a
	ld sp,hl		;6f6d
	sub c			;6f6e
	ld hl,00321h		;6f6f
	ld sp,hl		;6f72
	sub h			;6f73
	sub c			;6f74
	ld hl,0f121h		;6f75
	pop af			;6f78
	ld (032e3h),a		;6f79
	ld hl,09f19h		;6f7c
	sbc a,a			;6f7f
	add hl,de		;6f80
	ld (01921h),a		;6f81
	sbc a,a			;6f84
	sbc a,a			;6f85
	sub c			;6f86
	ld (de),a		;6f87
	inc bc			;6f88
	inc hl			;6f89
	add a,a			;6f8a
	ld (de),a		;6f8b
	sub c			;6f8c
	ld sp,hl		;6f8d
	ld sp,hl		;6f8e
	sub c			;6f8f
	ld (de),a		;6f90
	sub c			;6f91
	inc bc			;6f92
	ld sp,hl		;6f93
	add a,c			;6f94
	sub c			;6f95
	inc bc			;6f96
	ld hl,0f18ch		;6f97
	ld sp,hl		;6f9a
	jp p,02132h		;6f9b
	add hl,de		;6f9e
	sbc a,a			;6f9f
	sbc a,a			;6fa0
	ld (02132h),a		;6fa1
	add hl,de		;6fa4
	inc bc			;6fa5
	sbc a,a			;6fa6
	adc a,h			;6fa7
	sub c			;6fa8
l6fa9h:
	ld hl,03221h		;6fa9
	ex (sp),hl		;6fac
	ex (sp),hl		;6fad
	ld (0f121h),a		;6fae
	ld hl,09121h		;6fb1
	inc bc			;6fb4
	ld sp,hl		;6fb5
	sbc a,e			;6fb6
	pop af			;6fb7
	ld hl,0e3e3h		;6fb8
	ld (0f1f2h),a		;6fbb
	ld sp,hl		;6fbe
	cpl			;6fbf
	ld hl,01ff9h		;6fc0
	rra			;6fc3
	ld hl,03232h		;6fc4
	ld hl,0f91fh		;6fc7
	ld sp,hl		;6fca
	sub c			;6fcb
	ld hl,0e332h		;6fcc
	ld (09121h),a		;6fcf
	inc b			;6fd2
	ld hl,0319eh		;6fd3
	pop af			;6fd6
	pop af			;6fd7
	sub c			;6fd8
	add hl,hl		;6fd9
	ld hl,03221h		;6fda
	ex (sp),hl		;6fdd
	ex (sp),hl		;6fde
	ld (0f121h),a		;6fdf
	ld sp,hl		;6fe2
	ld sp,hl		;6fe3
	sub c			;6fe4
	ld (de),a		;6fe5
	ld (02121h),a		;6fe6
	add hl,de		;6fe9
	ld sp,hl		;6fea
	ld sp,hl		;6feb
	sub c			;6fec
	ld hl,0e332h		;6fed
	ld sp,hl		;6ff0
	ld sp,hl		;6ff1
	sub c			;6ff2
	inc bc			;6ff3
	ld hl,0f102h		;6ff4
	nop			;6ff7
	dec b			;6ff8
	nop			;6ff9
	adc a,e			;6ffa
	inc bc			;6ffb
	rra			;6ffc
	inc bc			;6ffd
	nop			;6ffe
	nop			;6fff
	ld bc,07f0fh		;7000
	rrca			;7003
	ld a,(hl)		;7004
	ret p			;7005
	ld b,000h		;7006
	add a,d			;7008
	jr c,$-27		;7009
	inc b			;700b
	nop			;700c
	add a,c			;700d
	dec bc			;700e
	inc bc			;700f
	in a,(002h)		;7010
	nop			;7012
	add a,c			;7013
	inc b			;7014
	inc bc			;7015
	ld l,h			;7016
l7017h:
	add a,d			;7017
	sbc a,c			;7018
	ret			;7019
	dec b			;701a
	nop			;701b
	add a,c			;701c
	ld bc,00307h		;701d
	add a,e			;7020
	ld bc,00000h		;7021
	nop			;7024
	rlca			;7025
	jr nz,l6fa9h		;7026
	ld (02005h),a		;7028
	inc bc			;702b
	ld (0100ch),a		;702c
	add a,e			;702f
	sub b			;7030
	djnz l7063h		;7031
	inc bc			;7033
	djnz l7038h		;7034
	sub b			;7036
	add a,h			;7037
l7038h:
	djnz l705ah		;7038
	di			;703a
	jp p,02008h		;703b
	inc bc			;703e
	djnz l7046h		;703f
	sub b			;7041
	nop			;7042
	inc bc			;7043
	nop			;7044
	sub d			;7045
l7046h:
	inc a			;7046
	ld a,(hl)		;7047
	cp l			;7048
	rst 0			;7049
	add a,c			;704a
	ld bc,00e07h		;704b
	dec e			;704e
	dec sp			;704f
	dec sp			;7050
	halt			;7051
	halt			;7052
	ret nz			;7053
	nop			;7054
	ld (hl),b		;7055
	ret nz			;7056
	add a,b			;7057
	inc bc			;7058
	nop			;7059
l705ah:
	adc a,l			;705a
	add a,b			;705b
	ret po			;705c
	ld (hl),b		;705d
	cp b			;705e
	call c,sub_6edch	;705f
	ld l,(hl)		;7062
l7063h:
	inc bc			;7063
	nop			;7064
	ld c,003h		;7065
	ld bc,00003h		;7067
	inc b			;706a
	call pe,0fc84h		;706b
	rra			;706e
	rlca			;706f
	ld bc,03704h		;7070
	sub h			;7073
	ccf			;7074
	ret m			;7075
	ret po			;7076
	add a,b			;7077
	rlca			;7078
	rra			;7079
	ccf			;707a
	ld a,a			;707b
	ld a,a			;707c
	ret p			;707d
	ret po			;707e
	call m,0f8e0h		;707f
	call m,0fefeh		;7082
	rrca			;7085
	rlca			;7086
	ccf			;7087
	nop			;7088
	inc bc			;7089
	sub b			;708a
	add a,l			;708b
	djnz $+34		;708c
	pop af			;708e
	jp p,022f3h		;708f
	jr nc,l7017h		;7092
	jr nz,l70a6h		;7094
	sub b			;7096
	inc bc			;7097
	di			;7098
	ld (bc),a		;7099
	jr nc,$-123		;709a
	jr nz,$+18		;709c
	sub b			;709e
	inc bc			;709f
	di			;70a0
	dec b			;70a1
	or b			;70a2
	add a,e			;70a3
	set 7,h			;70a4
l70a6h:
	call m,0b005h		;70a6
	add a,e			;70a9
	set 7,h			;70aa
	call m,09900h		;70ac
	cp 0f0h			;70af
	add a,b			;70b1
	rrca			;70b2
	ld a,a			;70b3
	ret p			;70b4
	add a,e			;70b5
	rlca			;70b6
	nop			;70b7
	rrca			;70b8
	rst 38h			;70b9
	ret p			;70ba
	ret p			;70bb
	pop af			;70bc
	ld bc,04f01h		;70bd
	ld l,c			;70c0
	ld a,c			;70c1
	add hl,sp		;70c2
	add hl,sp		;70c3
	rra			;70c4
	sbc a,a			;70c5
	adc a,a			;70c6
sub_70c7h:
	call m,0f003h		;70c7
	adc a,h			;70ca
	rrca			;70cb
	rlca			;70cc
	ld a,a			;70cd
	ld bc,0070bh		;70ce
	ld l,a			;70d1
	cp e			;70d2
	ld a,a			;70d3
	call m,00fe0h		;70d4
	ex af,af'		;70d7
	ret po			;70d8
	inc b			;70d9
l70dah:
	ld (hl),b		;70da
	ld (bc),a		;70db
	jr c,$-116		;70dc
	inc e			;70de
	rra			;70df
	rrca			;70e0
	rlca			;70e1
	add a,b			;70e2
	add a,b			;70e3
	ret nz			;70e4
	ret po			;70e5
	ld (hl),b		;70e6
	inc a			;70e7
	ld b,011h		;70e8
	ld (bc),a		;70ea
	add hl,bc		;70eb
	adc a,b			;70ec
	rra			;70ed
	ret m			;70ee
	ld h,b			;70ef
	ld h,b			;70f0
	rst 38h			;70f1
	ld a,a			;70f2
	ret po			;70f3
	rst 38h			;70f4
	add hl,bc		;70f5
	ret po			;70f6
	ld (bc),a		;70f7
	rst 38h			;70f8
	add a,c			;70f9
	rra			;70fa
	inc bc			;70fb
	nop			;70fc
	add a,(hl)		;70fd
	ret p			;70fe
	rst 38h			;70ff
	ret p			;7100
	add a,b			;7101
	add a,b			;7102
	ret p			;7103
	inc bc			;7104
	add a,b			;7105
	adc a,e			;7106
	ex af,af'		;7107
	inc b			;7108
	ld b,003h		;7109
	ld a,a			;710b
	ld a,a			;710c
	ccf			;710d
	rrca			;710e
	ld bc,07f0fh		;710f
	dec b			;7112
	rst 38h			;7113
	add a,c			;7114
	rst 8			;7115
	rlca			;7116
	ret nz			;7117
	and h			;7118
	rlca			;7119
	ccf			;711a
l711bh:
	rrca			;711b
	rrca			;711c
	ld c,0feh		;711d
	ld c,07eh		;711f
	rra			;7121
	ret m			;7122
	ret nz			;7123
	call m,003e0h		;7124
	rra			;7127
	call m,00000h		;7128
	rrca			;712b
	ld a,a			;712c
	rlca			;712d
	ccf			;712e
	ld b,l			;712f
	rst 38h			;7130
	ex af,af'		;7131
	rst 28h			;7132
	call po,0f204h		;7133
	jp m,0ff01h		;7136
	rra			;7139
	rrca			;713a
	ld bc,00401h		;713b
	nop			;713e
	add a,c			;713f
	rst 38h			;7140
	ld b,0f0h		;7141
	add a,l			;7143
	nop			;7144
	rrca			;7145
	adc a,a			;7146
	ld d,b			;7147
	jr nc,l714eh		;7148
	djnz l70dah		;714a
	rst 0			;714c
	add a,e			;714d
l714eh:
	add a,b			;714e
	inc c			;714f
	rra			;7150
	ccf			;7151
	rrca			;7152
	rrca			;7153
	nop			;7154
	ret po			;7155
	rst 38h			;7156
	rra			;7157
	rra			;7158
	inc bc			;7159
	rlca			;715a
	nop			;715b
	add a,h			;715c
	ret po			;715d
	cp 0c0h			;715e
	ret m			;7160
	rlca			;7161
	rst 38h			;7162
	sub b			;7163
	add a,c			;7164
	rst 38h			;7165
	rst 38h			;7166
	add a,b			;7167
	push de			;7168
	push bc			;7169
	ret m			;716a
	rrca			;716b
	rst 38h			;716c
	rst 38h			;716d
	rrca			;716e
	ld bc,03f0fh		;716f
	rst 38h			;7172
	rst 38h			;7173
	dec b			;7174
	rrca			;7175
	add a,l			;7176
	rst 38h			;7177
	ret p			;7178
	ld c,a			;7179
	ret p			;717a
	ret p			;717b
	inc bc			;717c
	nop			;717d
	inc b			;717e
	rrca			;717f
	ld (bc),a		;7180
	ret p			;7181
	dec b			;7182
	rst 38h			;7183
	inc bc			;7184
	ret p			;7185
	add a,(hl)		;7186
	rrca			;7187
	ret po			;7188
	jr nz,l711bh		;7189
	ret nc			;718b
	rst 38h			;718c
	ld b,080h		;718d
	adc a,l			;718f
	add a,c			;7190
	rst 38h			;7191
	ret po			;7192
	rst 38h			;7193
	rra			;7194
	nop			;7195
	nop			;7196
	rst 38h			;7197
	rst 38h			;7198
	rrca			;7199
	rrca			;719a
	ret p			;719b
	ret p			;719c
	inc bc			;719d
	nop			;719e
	dec b			;719f
	rrca			;71a0
	ld (bc),a		;71a1
	ret p			;71a2
	ld (bc),a		;71a3
	nop			;71a4
	ld (bc),a		;71a5
	ld a,a			;71a6
	ld (bc),a		;71a7
	nop			;71a8
	add a,c			;71a9
	add a,b			;71aa
	inc bc			;71ab
	rst 38h			;71ac
	add a,e			;71ad
	rrca			;71ae
	ret p			;71af
	ret p			;71b0
	dec b			;71b1
	rst 38h			;71b2
	adc a,d			;71b3
	cp 0f0h			;71b4
	add a,b			;71b6
	cp 0feh			;71b7
	ret p			;71b9
	add a,b			;71ba
	ld bc,01010h		;71bb
	ld b,011h		;71be
	nop			;71c0
	inc bc			;71c1
	ld hl,09109h		;71c2
	add a,c			;71c5
	rra			;71c6
	dec b			;71c7
	ld sp,hl		;71c8
	add a,h			;71c9
	jp p,0f9f1h		;71ca
	ld sp,hl		;71cd
	inc bc			;71ce
	pop af			;71cf
	add a,(hl)		;71d0
	ld sp,hl		;71d1
	sub c			;71d2
	ld (de),a		;71d3
	ld (de),a		;71d4
	sub c			;71d5
	sub c			;71d6
	ld b,0f9h		;71d7
	ld (bc),a		;71d9
	pop af			;71da
	inc de			;71db
	ld hl,0f104h		;71dc
	dec bc			;71df
	ld sp,hl		;71e0
	add a,h			;71e1
	pop af			;71e2
	ld hl,03232h		;71e3
	inc b			;71e6
	ex (sp),hl		;71e7
	add a,l			;71e8
	ld (0e2e3h),a		;71e9
	ld (00932h),a		;71ec
	ld hl,09104h		;71ef
	ld (bc),a		;71f2
	ld (de),a		;71f3
	ld (bc),a		;71f4
	pop af			;71f5
	dec b			;71f6
	ld sp,hl		;71f7
	ld d,091h		;71f8
	add a,h			;71fa
	ld sp,hl		;71fb
	rra			;71fc
	ld hl,00521h		;71fd
	ld (02102h),a		;7200
	rlca			;7203
	sub c			;7204
	rrca			;7205
	ld sp,hl		;7206
	rlca			;7207
	add hl,de		;7208
	adc a,d			;7209
	sbc a,a			;720a
	jp p,01921h		;720b
	sbc a,a			;720e
	sbc a,a			;720f
	sub c			;7210
	sub c			;7211
	pop af			;7212
	pop af			;7213
	inc bc			;7214
	jp p,0f104h		;7215
	inc bc			;7218
	ld hl,09281h		;7219
	inc b			;721c
	ld sp,hl		;721d
	add a,c			;721e
	pop af			;721f
	rlca			;7220
	add hl,de		;7221
	inc b			;7222
	rra			;7223
	add hl,bc		;7224
	sub c			;7225
	inc b			;7226
	ld sp,hl		;7227
	add a,e			;7228
	pop af			;7229
	ld sp,hl		;722a
	ld sp,hl		;722b
	inc bc			;722c
	pop af			;722d
	add a,e			;722e
	jp p,0f2f3h		;722f
	inc bc			;7232
	pop af			;7233
	add a,h			;7234
	ld sp,hl		;7235
	cpl			;7236
	ld (de),a		;7237
	sub c			;7238
	dec b			;7239
	ld sp,hl		;723a
	dec b			;723b
	sub c			;723c
	add a,h			;723d
	ld sp,hl		;723e
	cpl			;723f
	sbc a,a			;7240
	sbc a,a			;7241
	ld b,019h		;7242
	add a,l			;7244
	ld hl,09f19h		;7245
	sbc a,a			;7248
	pop af			;7249
	inc b			;724a
	ld sp,hl		;724b
	add a,c			;724c
	jp p,0f303h		;724d
	add a,d			;7250
	jp p,004f1h		;7251
	ld sp,hl		;7254
	ld (bc),a		;7255
	pop af			;7256
	ld (bc),a		;7257
	sub d			;7258
	add a,h			;7259
	rst 38h			;725a
	sub d			;725b
	ld sp,hl		;725c
	ld sp,hl		;725d
	dec b			;725e
	sub c			;725f
	add a,l			;7260
	rra			;7261
	ld hl,0f992h		;7262
	ld sp,hl		;7265
	inc b			;7266
	sub c			;7267
	add hl,bc		;7268
	ld (de),a		;7269
	ld b,091h		;726a
	inc bc			;726c
	ld (02104h),a		;726d
	adc a,c			;7270
	sub c			;7271
	jp p,0f9f1h		;7272
	pop af			;7275
	pop af			;7276
	ld sp,hl		;7277
	pop af			;7278
	ld sp,hl		;7279
	nop			;727a
	ex af,af'		;727b
	adc a,e			;727c
	adc a,b			;727d
	sbc a,a			;727e
	add a,a			;727f
	jr c,$+65		;7280
	rrca			;7282
	ld a,a			;7283
	nop			;7284
	add a,b			;7285
	ex af,af'		;7286
	add a,c			;7287
	ex af,af'		;7288
	ld a,a			;7289
	inc b			;728a
	ld bc,0ff04h		;728b
	ex af,af'		;728e
	add a,c			;728f
	sub b			;7290
	rst 38h			;7291
	rst 0			;7292
	cp l			;7293
	rst 38h			;7294
	rst 0			;7295
	cp l			;7296
	rst 38h			;7297
	rst 0			;7298
	cp l			;7299
	rst 38h			;729a
	rst 0			;729b
	cp l			;729c
	rst 38h			;729d
	rst 0			;729e
	cp l			;729f
	rst 38h			;72a0
	ex af,af'		;72a1
	nop			;72a2
	rlca			;72a3
	adc a,e			;72a4
	inc bc			;72a5
	rst 38h			;72a6
	ld b,081h		;72a7
	add a,c			;72a9
	rst 38h			;72aa
	rlca			;72ab
	xor d			;72ac
	dec b			;72ad
	ld a,a			;72ae
	add a,(hl)		;72af
	nop			;72b0
	ld a,a			;72b1
	ld a,a			;72b2
	rst 38h			;72b3
	nop			;72b4
	nop			;72b5
	dec b			;72b6
	rst 38h			;72b7
	sub b			;72b8
	ld sp,hl		;72b9
	pop hl			;72ba
	nop			;72bb
	ret nz			;72bc
	call m,00701h		;72bd
	ld bc,01d03h		;72c0
	pop hl			;72c3
	rra			;72c4
	rlca			;72c5
	rlca			;72c6
	rrca			;72c7
	rra			;72c8
	ex af,af'		;72c9
	adc a,e			;72ca
	inc b			;72cb
	ld a,a			;72cc
	inc bc			;72cd
	ld bc,00382h		;72ce
	rst 38h			;72d1
	rlca			;72d2
	ld a,a			;72d3
	add a,h			;72d4
	rst 38h			;72d5
	jp 03c00h		;72d6
	inc c			;72d9
	ld a,(hl)		;72da
	ex af,af'		;72db
	add a,b			;72dc
	ex af,af'		;72dd
	ld a,(hl)		;72de
	add a,h			;72df
	ld a,a			;72e0
	ccf			;72e1
	rrca			;72e2
	nop			;72e3
	inc bc			;72e4
	add a,b			;72e5
	add a,d			;72e6
	ret nz			;72e7
	rst 38h			;72e8
	rlca			;72e9
	ld bc,0ff81h		;72ea
	rrca			;72ed
	ld bc,0bd81h		;72ee
	dec b			;72f1
	and l			;72f2
	adc a,(hl)		;72f3
	cp l			;72f4
	rst 38h			;72f5
	nop			;72f6
	rlca			;72f7
	rrca			;72f8
	dec e			;72f9
	add hl,sp		;72fa
	ld (hl),c		;72fb
	ld h,c			;72fc
	ret nz			;72fd
	ret nz			;72fe
	add a,b			;72ff
	add a,b			;7300
	rrca			;7301
	inc bc			;7302
	rra			;7303
	add a,l			;7304
	rrca			;7305
	nop			;7306
	nop			;7307
	rst 38h			;7308
	rst 38h			;7309
	dec b			;730a
	nop			;730b
	ld (bc),a		;730c
	rst 38h			;730d
	ex af,af'		;730e
	nop			;730f
	adc a,l			;7310
	rrca			;7311
	rst 38h			;7312
	rst 38h			;7313
	add a,b			;7314
	ret p			;7315
	ld bc,01c02h		;7316
	ret po			;7319
	rlca			;731a
	ret po			;731b
	ret p			;731c
	ret p			;731d
	dec b			;731e
	add a,b			;731f
	add a,e			;7320
	rst 38h			;7321
	nop			;7322
	nop			;7323
	dec b			;7324
	ld bc,0ff9ch		;7325
	nop			;7328
	nop			;7329
	ret nz			;732a
	ret po			;732b
	ld (hl),b		;732c
	sbc a,b			;732d
	call po,0011eh		;732e
	nop			;7331
	inc bc			;7332
	rlca			;7333
	ld c,019h		;7334
	daa			;7336
	ld a,b			;7337
	add a,b			;7338
	nop			;7339
	add a,b			;733a
	ret po			;733b
	ret p			;733c
	cp b			;733d
	sbc a,h			;733e
	adc a,(hl)		;733f
	add a,(hl)		;7340
	add a,e			;7341
	inc bc			;7342
	inc bc			;7343
	ld bc,00003h		;7344
	add a,e			;7347
	ld a,a			;7348
	rlca			;7349
	rra			;734a
	inc b			;734b
	rst 38h			;734c
	add a,(hl)		;734d
	ld bc,0810fh		;734e
	rst 38h			;7351
	rst 38h			;7352
	nop			;7353
	inc bc			;7354
	ld d,l			;7355
	adc a,c			;7356
	nop			;7357
	add a,b			;7358
	ret p			;7359
	adc a,a			;735a
	ret p			;735b
	ret p			;735c
	inc a			;735d
	ld a,(hl)		;735e
	nop			;735f
	inc bc			;7360
	rst 38h			;7361
	add a,c			;7362
	call m,00004h		;7363
	add a,e			;7366
	ret p			;7367
	ret po			;7368
	add a,b			;7369
	inc bc			;736a
	nop			;736b
	add a,(hl)		;736c
	ld bc,l7f03h		;736d
	ld a,a			;7370
	rst 38h			;7371
	nop			;7372
	inc bc			;7373
	ld d,l			;7374
	dec b			;7375
	nop			;7376
	ld (bc),a		;7377
	rst 38h			;7378
	ld (bc),a		;7379
	nop			;737a
	ld (bc),a		;737b
	rst 38h			;737c
	add a,l			;737d
	nop			;737e
	rst 38h			;737f
	rst 38h			;7380
	nop			;7381
	nop			;7382
	inc c			;7383
	rst 38h			;7384
	ld (bc),a		;7385
	nop			;7386
	ld (bc),a		;7387
	rst 38h			;7388
	inc bc			;7389
	nop			;738a
	ld (bc),a		;738b
	rst 38h			;738c
	ld (bc),a		;738d
	nop			;738e
	ld (bc),a		;738f
	rst 38h			;7390
	ld (bc),a		;7391
	nop			;7392
	ld (bc),a		;7393
	rst 38h			;7394
	ld (bc),a		;7395
	nop			;7396
	ld (bc),a		;7397
	rst 38h			;7398
	ld (bc),a		;7399
	nop			;739a
	ld (bc),a		;739b
	rst 38h			;739c
	inc bc			;739d
	nop			;739e
	ld (bc),a		;739f
	rst 38h			;73a0
	ld (bc),a		;73a1
	nop			;73a2
	inc bc			;73a3
	rst 38h			;73a4
	ld (bc),a		;73a5
	nop			;73a6
	ld (bc),a		;73a7
	ld a,a			;73a8
	ld (bc),a		;73a9
	rst 38h			;73aa
	inc b			;73ab
	add a,c			;73ac
	sub a			;73ad
	rst 38h			;73ae
	add a,c			;73af
	add a,c			;73b0
	rst 38h			;73b1
	rst 38h			;73b2
	ld h,(hl)		;73b3
	cp e			;73b4
	cp e			;73b5
	ld b,b			;73b6
	and a			;73b7
	and a			;73b8
	ret nc			;73b9
	out (069h),a		;73ba
	cp 0bbh			;73bc
	ld (bc),a		;73be
	push hl			;73bf
	push hl			;73c0
	dec bc			;73c1
	res 2,(hl)		;73c2
	ld a,a			;73c4
	add hl,de		;73c5
	cp e			;73c6
	add a,c			;73c7
	ei			;73c8
	inc bc			;73c9
	rrca			;73ca
	inc bc			;73cb
	ret p			;73cc
	add a,h			;73cd
	rrca			;73ce
	cp e			;73cf
	cp e			;73d0
	ei			;73d1
	inc bc			;73d2
	rrca			;73d3
	ld (bc),a		;73d4
	ret p			;73d5
	inc b			;73d6
	cp e			;73d7
	add a,a			;73d8
	rst 38h			;73d9
	nop			;73da
	nop			;73db
	rst 38h			;73dc
	cp e			;73dd
	cp e			;73de
	cp a			;73df
	inc bc			;73e0
	ret p			;73e1
	ld (bc),a		;73e2
	rrca			;73e3
	add a,c			;73e4
	cp a			;73e5
	inc bc			;73e6
	ret p			;73e7
	inc bc			;73e8
	rrca			;73e9
	add a,e			;73ea
	ret p			;73eb
	rst 38h			;73ec
	rst 38h			;73ed
	inc bc			;73ee
	nop			;73ef
	ld (bc),a		;73f0
	rst 38h			;73f1
	add a,l			;73f2
	nop			;73f3
	add a,b			;73f4
	add a,b			;73f5
	ret nz			;73f6
	rlca			;73f7
	inc bc			;73f8
	add a,b			;73f9
	add a,c			;73fa
	nop			;73fb
	nop			;73fc
	add a,d			;73fd
	sub c			;73fe
	ld (de),a		;73ff
	rlca			;7400
	sub c			;7401
	add a,c			;7402
sub_7403h:
	sub d			;7403
	inc bc			;7404
	ld (02102h),a		;7405
	inc bc			;7408
	sub c			;7409
	add a,c			;740a
	ld (de),a		;740b
	inc bc			;740c
	sub c			;740d
	add a,c			;740e
	ld sp,hl		;740f
	dec b			;7410
	sub c			;7411
	dec l			;7412
	ld sp,hl		;7413
	add a,c			;7414
	sub c			;7415
	add hl,bc		;7416
	ld sp,hl		;7417
	add a,e			;7418
	pop af			;7419
	jp p,004f1h		;741a
	ld sp,hl		;741d
	add a,e			;741e
	pop af			;741f
	jp p,004f1h		;7420
	ld sp,hl		;7423
	add a,e			;7424
	sub c			;7425
	ld (de),a		;7426
	inc hl			;7427
	inc b			;7428
	ld a,002h		;7429
	pop af			;742b
	ld (bc),a		;742c
	ld (de),a		;742d
	dec b			;742e
	sub c			;742f
	ld (bc),a		;7430
	sub d			;7431
	add a,h			;7432
	ld (09121h),a		;7433
	sub c			;7436
	inc b			;7437
	ld sp,hl		;7438
	ld b,091h		;7439
	inc bc			;743b
	ld (de),a		;743c
	add a,e			;743d
	sub c			;743e
	ld (de),a		;743f
	ld (de),a		;7440
	dec b			;7441
	sub c			;7442
	dec b			;7443
	ld sp,hl		;7444
	add a,(hl)		;7445
	sub c			;7446
	ld (de),a		;7447
	inc hl			;7448
	ld a,023h		;7449
	inc hl			;744b
	inc b			;744c
	ld (de),a		;744d
	ld a,(bc)		;744e
	ld (02181h),a		;744f
	ld b,032h		;7452
	ld b,021h		;7454
	add a,h			;7456
	ld (02121h),a		;7457
	add hl,de		;745a
	ld b,021h		;745b
	dec b			;745d
	pop af			;745e
	add a,l			;745f
	ld sp,hl		;7460
	pop af			;7461
	jp p,0fef3h		;7462
	inc bc			;7465
	di			;7466
	add a,a			;7467
	ld sp,hl		;7468
	pop af			;7469
	jp p,0f2f3h		;746a
	jp p,004f1h		;746d
	jp p,0f105h		;7470
	add a,h			;7473
	jp p,0f2f3h		;7474
	pop af			;7477
	dec b			;7478
	ld sp,hl		;7479
	ld (bc),a		;747a
	pop af			;747b
	rlca			;747c
	jp p,03206h		;747d
	ld (bc),a		;7480
	sub c			;7481
	ld (bc),a		;7482
	ld sp,hl		;7483
	dec b			;7484
	sub c			;7485
	ld (bc),a		;7486
	ld sp,hl		;7487
	ld a,(bc)		;7488
	sub c			;7489
	ld b,0f9h		;748a
	add a,c			;748c
	sub c			;748d
	dec b			;748e
	ld hl,01903h		;748f
	ld (bc),a		;7492
	ld sp,hl		;7493
	inc bc			;7494
	pop af			;7495
	dec b			;7496
	ld sp,hl		;7497
	inc b			;7498
	pop af			;7499
	ld c,0f9h		;749a
	ld (bc),a		;749c
	pop af			;749d
	inc c			;749e
	ld sp,hl		;749f
	rlca			;74a0
	sub c			;74a1
	ld b,0f9h		;74a2
	add a,d			;74a4
	jp p,004f1h		;74a5
	ld sp,hl		;74a8
	add a,h			;74a9
	pop af			;74aa
	ld hl,03232h		;74ab
	djnz l74d1h		;74ae
	inc b			;74b0
	sub c			;74b1
	ld (bc),a		;74b2
	ld sp,hl		;74b3
	add a,d			;74b4
	jp p,003f1h		;74b5
	ld sp,hl		;74b8
	inc b			;74b9
	sub c			;74ba
	ld (bc),a		;74bb
	jp p,0f102h		;74bc
	inc bc			;74bf
	sub c			;74c0
	ld (bc),a		;74c1
	pop af			;74c2
	ld (bc),a		;74c3
	sub d			;74c4
	inc c			;74c5
	jp p,02302h		;74c6
	dec b			;74c9
	rra			;74ca
	ld (bc),a		;74cb
	inc hl			;74cc
	ld (bc),a		;74cd
	ld a,002h		;74ce
	add hl,hl		;74d0
l74d1h:
	inc b			;74d1
	sbc a,a			;74d2
	ld (bc),a		;74d3
	ld hl,09f02h		;74d4
	ld (bc),a		;74d7
	ld (de),a		;74d8
	inc bc			;74d9
	sbc a,a			;74da
	inc b			;74db
	ld hl,0f905h		;74dc
	inc bc			;74df
	sub c			;74e0
	rlca			;74e1
	ld sp,hl		;74e2
	add a,a			;74e3
	pop af			;74e4
	ld sp,hl		;74e5
	ld sp,hl		;74e6
	ld de,0f1f9h		;74e7
	jp p,0f907h		;74ea
	add a,c			;74ed
	pop af			;74ee
	rlca			;74ef
	ld sp,hl		;74f0
	and d			;74f1
	pop af			;74f2
	sub e			;74f3
	inc de			;74f4
	inc hl			;74f5
	inc de			;74f6
	sub d			;74f7
	sub d			;74f8
	sub c			;74f9
	pop af			;74fa
	jp p,01393h		;74fb
	inc hl			;74fe
	inc de			;74ff
	sub d			;7500
	sub d			;7501
	sub c			;7502
	pop af			;7503
	jp p,01393h		;7504
	inc hl			;7507
	inc de			;7508
	sub d			;7509
	sub d			;750a
	ld sp,hl		;750b
	ld sp,hl		;750c
	sub c			;750d
	ld (de),a		;750e
	ld (de),a		;750f
	sub c			;7510
	ld sp,hl		;7511
	ld sp,hl		;7512
	pop af			;7513
	inc bc			;7514
	ld sp,hl		;7515
	add a,(hl)		;7516
	sub c			;7517
	ld (de),a		;7518
	ld (de),a		;7519
	sub c			;751a
	sub c			;751b
	pop af			;751c
	inc b			;751d
	ld sp,hl		;751e
	ld (bc),a		;751f
	ld hl,0f181h		;7520
	inc bc			;7523
	ld sp,hl		;7524
	adc a,d			;7525
	sub c			;7526
	ld (de),a		;7527
	ld (de),a		;7528
	sub c			;7529
	ld sp,hl		;752a
	ld sp,hl		;752b
	sub c			;752c
	ld (de),a		;752d
	ld (de),a		;752e
	sub c			;752f
	inc bc			;7530
	ld sp,hl		;7531
	ld (bc),a		;7532
	add hl,de		;7533
	inc bc			;7534
	rra			;7535
	ld (bc),a		;7536
	add hl,hl		;7537
	add a,h			;7538
	sub c			;7539
	add hl,hl		;753a
	add hl,hl		;753b
	jp p,03204h		;753c
	nop			;753f
	sub b			;7540
	rlca			;7541
	ccf			;7542
	rlca			;7543
	ld a,0f0h		;7544
	add a,b			;7546
	ret m			;7547
	ret nz			;7548
	ret po			;7549
	call m,sub_7ce0h	;754a
	rrca			;754d
	ld bc,0031fh		;754e
	nop			;7551
	ld (bc),a		;7552
	jr nz,l7559h		;7553
	ld (02102h),a		;7555
	ld (bc),a		;7558
l7559h:
	jr nz,l755fh		;7559
	ld (02102h),a		;755b
	nop			;755e
l755fh:
	dec b			;755f
	rst 38h			;7560
	adc a,e			;7561
	defb 0fdh,003h,00fh ;illegal sequence	;7562
	nop			;7565
	nop			;7566
	inc b			;7567
	ld b,00fh		;7568
	ld a,a			;756a
	rrca			;756b
	rrca			;756c
	dec b			;756d
	nop			;756e
	sub e			;756f
	add a,b			;7570
	ret nz			;7571
	pop af			;7572
	nop			;7573
	ld bc,00301h		;7574
	rlca			;7577
	rlca			;7578
	rrca			;7579
	rrca			;757a
	nop			;757b
	nop			;757c
	add a,b			;757d
	ret po			;757e
	or 082h			;757f
	push bc			;7581
	jp nz,00006h		;7582
	add a,(hl)		;7585
	add a,b			;7586
	ret po			;7587
	rra			;7588
	rrca			;7589
	rlca			;758a
	inc bc			;758b
	inc b			;758c
	nop			;758d
	ld (bc),a		;758e
	ret po			;758f
	add a,c			;7590
	ret nz			;7591
	inc bc			;7592
	nop			;7593
	adc a,(hl)		;7594
	add a,b			;7595
	ret nz			;7596
	ld bc,00f0fh		;7597
	rlca			;759a
	inc bc			;759b
	rlca			;759c
	inc bc			;759d
	inc bc			;759e
	ret nz			;759f
	ret nz			;75a0
	ret po			;75a1
	ret po			;75a2
	inc bc			;75a3
	ret p			;75a4
	add a,d			;75a5
	ret m			;75a6
	jr nz,l75ach		;75a7
	ccf			;75a9
	adc a,c			;75aa
l75abh:
	rra			;75ab
l75ach:
	rrca			;75ac
	rlca			;75ad
	inc bc			;75ae
	rra			;75af
	rra			;75b0
	ccf			;75b1
	rlca			;75b2
	ld bc,00007h		;75b3
	sbc a,h			;75b6
	ld bc,00f07h		;75b7
	rra			;75ba
	ld bc,00703h		;75bb
	rlca			;75be
	rrca			;75bf
	rrca			;75c0
	rra			;75c1
	rra			;75c2
	nop			;75c3
	ld bc,00f07h		;75c4
	rra			;75c7
	ccf			;75c8
	ld a,a			;75c9
	ld a,a			;75ca
	inc bc			;75cb
	inc bc			;75cc
	rlca			;75cd
	rlca			;75ce
	rrca			;75cf
	rrca			;75d0
	rra			;75d1
	rra			;75d2
	ld b,000h		;75d3
	ld (bc),a		;75d5
	ld bc,00002h		;75d6
	adc a,(hl)		;75d9
	ld bc,00703h		;75da
	rrca			;75dd
	rrca			;75de
	rra			;75df
	nop			;75e0
	ret nz			;75e1
	ret p			;75e2
	ret m			;75e3
	call m,0fefch		;75e4
	cp 000h			;75e7
	ld b,005h		;75e9
	inc b			;75eb
	sub b			;75ec
	add a,(hl)		;75ed
	or b			;75ee
	ld d,b			;75ef
	sub b			;75f0
	sub b			;75f1
	cp c			;75f2
	ld e,e			;75f3
	add hl,bc		;75f4
	sub b			;75f5
	add a,c			;75f6
	ld d,b			;75f7
	dec b			;75f8
	sub b			;75f9
	inc bc			;75fa
	or b			;75fb
	inc bc			;75fc
	sub b			;75fd
	inc bc			;75fe
	cp c			;75ff
	rlca			;7600
	sub b			;7601
	ld (bc),a		;7602
	or b			;7603
	add a,d			;7604
	ld d,b			;7605
	or b			;7606
	dec b			;7607
	sub b			;7608
	add a,d			;7609
	ld d,b			;760a
	or b			;760b
	inc b			;760c
	sub b			;760d
	ld (bc),a		;760e
	or b			;760f
	add a,c			;7610
	ld d,b			;7611
	rlca			;7612
	sub b			;7613
	add a,c			;7614
	or b			;7615
	rlca			;7616
	sub b			;7617
	add a,e			;7618
	cp c			;7619
	sub b			;761a
	ld d,b			;761b
	inc b			;761c
	or b			;761d
	add a,l			;761e
	ld d,b			;761f
	or l			;7620
	sbc a,e			;7621
	sub b			;7622
	or b			;7623
	ex af,af'		;7624
	sub b			;7625
	inc bc			;7626
	jr nc,l75abh		;7627
	jr nz,l763bh		;7629
	dec c			;762b
	ld b,b			;762c
	add a,d			;762d
	jr nc,l7652h		;762e
	ld a,(de)		;7630
	ld b,b			;7631
	ld b,030h		;7632
	nop			;7634
	dec b			;7635
	nop			;7636
	add a,e			;7637
	add a,b			;7638
	ld a,b			;7639
	rlca			;763a
l763bh:
	rlca			;763b
	nop			;763c
	add a,d			;763d
	ret nz			;763e
	ccf			;763f
	inc b			;7640
	nop			;7641
	add a,d			;7642
	rlca			;7643
	jr l764ch		;7644
	nop			;7646
	add a,(hl)		;7647
	add a,b			;7648
	ld b,b			;7649
	jr nz,l7664h		;764a
l764ch:
	inc b			;764c
	inc bc			;764d
	dec bc			;764e
	nop			;764f
	add a,e			;7650
	ret nz			;7651
l7652h:
	ld a,001h		;7652
	inc b			;7654
	nop			;7655
	add a,d			;7656
	ld bc,0051eh		;7657
	nop			;765a
	add a,h			;765b
	ret p			;765c
	ld c,001h		;765d
	ld bc,00004h		;765f
	adc a,b			;7662
	ret p			;7663
l7664h:
	inc c			;7664
	inc bc			;7665
	ld bc,01820h		;7666
	inc b			;7669
	inc bc			;766a
	ex af,af'		;766b
	nop			;766c
	add a,h			;766d
	ret nz			;766e
	jr nc,l767dh		;766f
	inc bc			;7671
	rlca			;7672
	nop			;7673
	add a,d			;7674
	add a,b			;7675
	inc e			;7676
	ld c,000h		;7677
	add a,c			;7679
	inc bc			;767a
	inc bc			;767b
	nop			;767c
l767dh:
	add a,l			;767d
	ret nz			;767e
	jr nc,l768dh		;767f
	inc bc			;7681
	ld bc,00005h		;7682
	inc bc			;7685
	ccf			;7686
	dec b			;7687
l7688h:
	nop			;7688
	add a,e			;7689
	rlca			;768a
	ccf			;768b
	rlca			;768c
l768dh:
	inc bc			;768d
	nop			;768e
	add a,e			;768f
	add a,b			;7690
	ret nz			;7691
	ret nz			;7692
	inc b			;7693
	ret po			;7694
	ld (bc),a		;7695
	ret nz			;7696
	add a,c			;7697
	add a,b			;7698
	dec b			;7699
	nop			;769a
	sub d			;769b
	inc bc			;769c
	rlca			;769d
	rrca			;769e
	rra			;769f
	ld a,07ch		;76a0
	nop			;76a2
	nop			;76a3
	ld bc,00f07h		;76a4
	ld e,03ch		;76a7
	ld a,b			;76a9
	inc e			;76aa
	ld (hl),b		;76ab
	ret nz			;76ac
	add a,b			;76ad
	dec b			;76ae
	nop			;76af
	ld (bc),a		;76b0
l76b1h:
	ld bc,00302h		;76b1
	ld (bc),a		;76b4
	rlca			;76b5
	adc a,a			;76b6
	rrca			;76b7
	ret m			;76b8
	ret p			;76b9
	ret po			;76ba
	ret nz			;76bb
	ret nz			;76bc
	add a,b			;76bd
	add a,b			;76be
	nop			;76bf
	ret p			;76c0
	ret po			;76c1
	ret nz			;76c2
	ret nz			;76c3
	add a,b			;76c4
	add a,b			;76c5
	rlca			;76c6
	nop			;76c7
	add a,e			;76c8
	ld bc,00707h		;76c9
	inc bc			;76cc
	nop			;76cd
	add a,h			;76ce
	jr nc,l76b1h		;76cf
	ret nz			;76d1
	add a,b			;76d2
	inc bc			;76d3
	nop			;76d4
	add a,c			;76d5
	ld bc,00305h		;76d6
	ld b,000h		;76d9
	add a,d			;76db
	ld bc,00407h		;76dc
	nop			;76df
	add a,h			;76e0
	rra			;76e1
	pop hl			;76e2
	ld c,0f8h		;76e3
	nop			;76e5
	dec b			;76e6
	jr nc,l76f9h		;76e7
l76e9h:
	ld d,b			;76e9
	ex af,af'		;76ea
	or b			;76eb
	jr l773eh		;76ec
	rlca			;76ee
	or b			;76ef
	inc bc			;76f0
	ld d,b			;76f1
	dec b			;76f2
	jr nz,$+5		;76f3
	ld d,b			;76f5
	add a,c			;76f6
	jr nz,l7711h		;76f7
l76f9h:
	ld d,b			;76f9
	inc de			;76fa
l76fbh:
	or b			;76fb
	inc b			;76fc
	ld d,b			;76fd
	ld b,020h		;76fe
	add a,e			;7700
	call c,0dc87h		;7701
	rlca			;7704
	djnz l7688h		;7705
	ld hl,0c012h		;7707
	ex af,af'		;770a
	sub b			;770b
	add a,(hl)		;770c
	ld d,b			;770d
	or b			;770e
	or b			;770f
	ld d,b			;7710
l7711h:
	or b			;7711
	sub b			;7712
	inc bc			;7713
	ld d,b			;7714
	ld b,0b0h		;7715
	add a,d			;7717
	ld d,b			;7718
	or b			;7719
	dec b			;771a
	sub b			;771b
	add a,e			;771c
	or b			;771d
	ld d,b			;771e
	or b			;771f
	ld (de),a		;7720
	sub b			;7721
	ld (bc),a		;7722
	ld d,b			;7723
	inc b			;7724
	or b			;7725
	rlca			;7726
	ld d,b			;7727
	ld (bc),a		;7728
	sub b			;7729
	add a,e			;772a
	or b			;772b
	ld d,b			;772c
	or b			;772d
	dec c			;772e
	sub b			;772f
	add a,h			;7730
	or b			;7731
	sub l			;7732
l7733h:
	cp c			;7733
	sub b			;7734
	nop			;7735
	in a,(000h)		;7736
	ex af,af'		;7738
	inc c			;7739
	ld a,a			;773a
	ld e,0c1h		;773b
	inc e			;773d
l773eh:
	inc a			;773e
	nop			;773f
	ld (bc),a		;7740
	inc bc			;7741
	jr nc,l7765h		;7742
	sub c			;7744
	out (0c3h),a		;7745
	jr l77c8h		;7747
	inc a			;7749
	rst 38h			;774a
	jp 01881h		;774b
	inc a			;774e
	ld b,b			;774f
	ld h,b			;7750
	ret p			;7751
	ld sp,hl		;7752
	add a,c			;7753
	ret z			;7754
	call z,03fc7h		;7755
	rra			;7758
	pop af			;7759
	adc a,a			;775a
	pop af			;775b
	ret m			;775c
	ret nz			;775d
	nop			;775e
	rrca			;775f
	rrca			;7760
	ld a,a			;7761
	ret z			;7762
	add a,b			;7763
	nop			;7764
l7765h:
	nop			;7765
	jr l76e9h		;7766
	ccf			;7768
	ld b,b			;7769
	add hl,sp		;776a
	nop			;776b
	nop			;776c
	add hl,bc		;776d
	ccf			;776e
	jp 02193h		;776f
	ld h,c			;7772
	rrca			;7773
	ld b,a			;7774
	inc b			;7775
	ld a,d			;7776
	inc a			;7777
	jr l76fbh		;7778
	jp 03cffh		;777a
	nop			;777d
	add hl,bc		;777e
	rst 0			;777f
	jp 08a83h		;7780
	ld a,(de)		;7783
	dec a			;7784
	rst 8			;7785
l7786h:
	add a,a			;7786
	jp 03c80h		;7787
	ld a,(hl)		;778a
	jp 01881h		;778b
	inc a			;778e
	ld e,0f1h		;778f
	ld b,003h		;7791
	ret po			;7793
	adc a,a			;7794
	jr nz,l7797h		;7795
l7797h:
	add a,e			;7797
	inc a			;7798
	add a,c			;7799
	rst 38h			;779a
	ld b,b			;779b
	sbc a,h			;779c
	ex af,af'		;779d
	nop			;779e
	ld de,0c189h		;779f
	ret po			;77a2
	jr c,l77a8h		;77a3
	ret nz			;77a5
	and c			;77a6
	rlca			;77a7
l77a8h:
	add a,e			;77a8
	add a,e			;77a9
	rst 0			;77aa
	ld a,l			;77ab
	ld (bc),a		;77ac
	ccf			;77ad
	nop			;77ae
	inc a			;77af
	jr l7733h		;77b0
	jp 03cffh		;77b2
	nop			;77b5
	add hl,bc		;77b6
	set 0,(hl)		;77b7
	adc a,h			;77b9
	sub b			;77ba
	ret m			;77bb
	pop hl			;77bc
	rst 18h			;77bd
	jp nz,03c00h		;77be
	jr l7786h		;77c1
	pop bc			;77c3
	pop hl			;77c4
	ex (sp),hl		;77c5
	ld a,0c0h		;77c6
l77c8h:
	inc bc			;77c8
	call m,0fe02h		;77c9
	add a,l			;77cc
	ret nz			;77cd
	ld a,a			;77ce
	rra			;77cf
	rra			;77d0
	ccf			;77d1
	dec b			;77d2
	add a,c			;77d3
	or c			;77d4
	add a,b			;77d5
	ld a,h			;77d6
	jr nc,l7855h		;77d7
	call m,sub_7c78h	;77d9
	ld (hl),b		;77dc
	add a,c			;77dd
	add a,c			;77de
	inc bc			;77df
	rra			;77e0
	inc bc			;77e1
	rra			;77e2
	inc bc			;77e3
	rra			;77e4
	ret m			;77e5
	add a,b			;77e6
	inc bc			;77e7
	ld a,a			;77e8
	rlca			;77e9
	ld a,a			;77ea
	inc bc			;77eb
	rra			;77ec
	nop			;77ed
	rlca			;77ee
	inc bc			;77ef
	ld a,a			;77f0
	rrca			;77f1
	ld a,a			;77f2
	pop af			;77f3
	defb 0fdh,000h,0feh ;illegal sequence	;77f4
	call m,09cf8h		;77f7
	call c,0f8fch		;77fa
	add a,b			;77fd
	ret p			;77fe
	call m,0e080h		;77ff
	ret m			;7802
	cp 0ffh			;7803
	ld bc,00303h		;7805
	and b			;7808
	nop			;7809
	ccf			;780a
	ld a,03ch		;780b
	rra			;780d
	rst 38h			;780e
	nop			;780f
	nop			;7810
	rst 38h			;7811
	ld (bc),a		;7812
l7813h:
	ld a,078h		;7813
	ld a,a			;7815
	dec bc			;7816
	rst 38h			;7817
	nop			;7818
	inc bc			;7819
	rrca			;781a
	rrca			;781b
	rra			;781c
	rst 38h			;781d
	rst 38h			;781e
	nop			;781f
	nop			;7820
	rst 38h			;7821
	rst 38h			;7822
	nop			;7823
	ld l,0e0h		;7824
	and b			;7826
	rst 38h			;7827
	nop			;7828
	inc b			;7829
	jp z,0ff84h		;782a
	nop			;782d
	rst 38h			;782e
	rst 38h			;782f
	inc b			;7830
	sub l			;7831
	ld (bc),a		;7832
	cp 08bh			;7833
	nop			;7835
	cp 081h			;7836
	ld a,h			;7838
	inc a			;7839
	ld a,h			;783a
	inc a			;783b
	nop			;783c
	inc bc			;783d
	rrca			;783e
	ld a,a			;783f
	inc bc			;7840
	inc a			;7841
	ld (bc),a		;7842
	ccf			;7843
	rst 0			;7844
	rst 8			;7845
	pop af			;7846
	cp 07ch			;7847
	ld a,b			;7849
	ld a,b			;784a
	rra			;784b
	rlca			;784c
	ld a,a			;784d
	rlca			;784e
	ld a,a			;784f
	inc bc			;7850
	ret po			;7851
	rra			;7852
	ld c,000h		;7853
l7855h:
	nop			;7855
	rrca			;7856
	ld a,a			;7857
	inc bc			;7858
	rlca			;7859
	nop			;785a
	jp z,0ffffh		;785b
	ret m			;785e
	nop			;785f
	cp 0feh			;7860
	nop			;7862
	sub l			;7863
	rst 38h			;7864
	ret po			;7865
	ret po			;7866
	add a,b			;7867
	inc bc			;7868
	ld b,02dh		;7869
	cp 0f0h			;786b
	ret nz			;786d
	call m,03c7ch		;786e
	inc a			;7871
	jr l7877h		;7872
	rlca			;7874
	rrca			;7875
	rra			;7876
l7877h:
	ccf			;7877
	ld a,01eh		;7878
	inc e			;787a
	adc a,(hl)		;787b
	cp (hl)			;787c
	adc a,(hl)		;787d
	cp (hl)			;787e
	cp (hl)			;787f
	sbc a,(hl)		;7880
	cp 098h			;7881
	ld sp,hl		;7883
	ld bc,l7d61h		;7884
	ld (hl),c		;7887
	ld a,l			;7888
	ld a,a			;7889
	sbc a,c			;788a
	rra			;788b
	inc bc			;788c
	ccf			;788d
	adc a,e			;788e
	nop			;788f
	rst 28h			;7890
	ret po			;7891
	ret nz			;7892
	rra			;7893
	ccf			;7894
	ccf			;7895
	rra			;7896
	nop			;7897
	rst 28h			;7898
	ret po			;7899
	inc b			;789a
	ret nz			;789b
	adc a,e			;789c
	cp 043h			;789d
	ld h,b			;789f
	ret po			;78a0
	ret nz			;78a1
	nop			;78a2
	ld bc,07f0fh		;78a3
	ret p			;78a6
	add a,b			;78a7
	inc bc			;78a8
	nop			;78a9
	ld (bc),a		;78aa
	rst 38h			;78ab
	adc a,b			;78ac
	add a,b			;78ad
	rst 38h			;78ae
	nop			;78af
	add a,b			;78b0
	add a,b			;78b1
	nop			;78b2
	ret m			;78b3
	call m,0fe05h		;78b4
	ld (bc),a		;78b7
	rst 38h			;78b8
	adc a,(hl)		;78b9
	rrca			;78ba
	ret po			;78bb
	ret m			;78bc
	rra			;78bd
	inc bc			;78be
	ld bc,00000h		;78bf
	ld a,a			;78c2
	ld a,a			;78c3
	nop			;78c4
	rrca			;78c5
	ret po			;78c6
	ld a,(hl)		;78c7
	ld b,001h		;78c8
	add a,(hl)		;78ca
	call m,03ff8h		;78cb
	ret m			;78ce
	ret nz			;78cf
	add a,b			;78d0
	inc bc			;78d1
	nop			;78d2
	add a,l			;78d3
	rst 38h			;78d4
	ret p			;78d5
	ret m			;78d6
	call m,004fch		;78d7
	cp 081h			;78da
	rst 38h			;78dc
	rlca			;78dd
	and b			;78de
	add a,c			;78df
	rst 38h			;78e0
	dec b			;78e1
	ret nz			;78e2
	add a,d			;78e3
	rst 38h			;78e4
	add a,b			;78e5
	ex af,af'		;78e6
	cp 003h			;78e7
	and b			;78e9
	add a,l			;78ea
	rst 38h			;78eb
	rlca			;78ec
	rra			;78ed
	inc bc			;78ee
	ld bc,08004h		;78ef
	add a,h			;78f2
l78f3h:
	ccf			;78f3
	inc bc			;78f4
	ret po			;78f5
	ld a,(hl)		;78f6
	ld b,0feh		;78f7
	adc a,a			;78f9
	call m,000f8h		;78fa
	ld a,a			;78fd
	ret m			;78fe
	ret po			;78ff
	ret nz			;7900
	add a,b			;7901
	add a,b			;7902
	nop			;7903
	ccf			;7904
	ccf			;7905
	ld a,a			;7906
	ld a,a			;7907
	rst 38h			;7908
	inc bc			;7909
	and b			;790a
	ld (bc),a		;790b
	ret nz			;790c
	add a,c			;790d
	rst 38h			;790e
	dec b			;790f
	ret nz			;7910
	ex af,af'		;7911
	cp 008h			;7912
	and b			;7914
	add a,d			;7915
	add a,b			;7916
	rst 38h			;7917
	ld b,0c0h		;7918
	ex af,af'		;791a
	ld bc,0a002h		;791b
	add a,a			;791e
	nop			;791f
	rra			;7920
	rra			;7921
	inc e			;7922
	inc bc			;7923
	nop			;7924
	nop			;7925
	inc b			;7926
	ccf			;7927
	add a,e			;7928
	rra			;7929
	ret nz			;792a
	inc a			;792b
	ld b,0feh		;792c
	add a,d			;792e
	call m,003f8h		;792f
	nop			;7932
	add a,e			;7933
	ret nz			;7934
	jr c,l793eh		;7935
	inc bc			;7937
	nop			;7938
	add a,(hl)		;7939
	rst 38h			;793a
	nop			;793b
	nop			;793c
	ret m			;793d
l793eh:
	ld b,001h		;793e
	ld b,000h		;7940
	add a,e			;7942
	ret p			;7943
	rrca			;7944
	ld bc,00003h		;7945
	add a,a			;7948
	ret nz			;7949
	jr nc,l795ah		;794a
	ld bc,0f000h		;794c
	rrca			;794f
	inc bc			;7950
	nop			;7951
	adc a,l			;7952
	ret m			;7953
	rlca			;7954
	nop			;7955
	nop			;7956
	ld b,b			;7957
	jr nz,l796ah		;7958
l795ah:
	ex af,af'		;795a
	ld b,001h		;795b
	nop			;795d
	ld (hl),b		;795e
	rrca			;795f
	inc b			;7960
	nop			;7961
	add a,d			;7962
	rlca			;7963
	ret m			;7964
	ex af,af'		;7965
	jr c,l78f3h		;7966
	nop			;7968
	inc bc			;7969
l796ah:
	rlca			;796a
	rrca			;796b
	ld e,03ch		;796c
	jr c,l79a8h		;796e
	nop			;7970
	ret p			;7971
	jr c,l7979h		;7972
	nop			;7974
	adc a,l			;7975
	jr c,l79b4h		;7976
	inc e			;7978
l7979h:
	inc e			;7979
	ret nz			;797a
	ret p			;797b
	ret m			;797c
	call m,00f00h		;797d
	inc e			;7980
	jr c,l79f3h		;7981
	inc bc			;7983
	ret po			;7984
	add a,e			;7985
	rrca			;7986
	ld c,01eh		;7987
	inc bc			;7989
	inc e			;798a
	inc b			;798b
	jr c,$+6		;798c
	ld (hl),b		;798e
	add a,c			;798f
	ret p			;7990
	ld b,0e0h		;7991
	adc a,e			;7993
	ret p			;7994
	ret m			;7995
	ld a,(hl)		;7996
	inc bc			;7997
	add a,c			;7998
	ret nz			;7999
	ret po			;799a
	ld a,b			;799b
	inc a			;799c
	inc e			;799d
	call m,00004h		;799e
	adc a,c			;79a1
	add a,b			;79a2
	ret p			;79a3
	call m,01ffch		;79a4
	ld a,a			;79a7
l79a8h:
	cp 0f8h			;79a8
	ret po			;79aa
	inc bc			;79ab
	ret nz			;79ac
	ld (bc),a		;79ad
	ret po			;79ae
	ld (bc),a		;79af
	ret p			;79b0
	and c			;79b1
	ld (hl),b		;79b2
	ld a,b			;79b3
l79b4h:
	jr c,$+58		;79b4
	rlca			;79b6
	inc bc			;79b7
	ld bc,0e080h		;79b8
	ret m			;79bb
	ccf			;79bc
	ccf			;79bd
	add a,b			;79be
	ret nz			;79bf
	ret po			;79c0
	ret p			;79c1
	ld a,b			;79c2
	inc a			;79c3
	inc e			;79c4
	call m,0ff7fh		;79c5
	nop			;79c8
	nop			;79c9
	rst 38h			;79ca
	ld (bc),a		;79cb
	ld a,03ch		;79cc
	nop			;79ce
	nop			;79cf
	ret p			;79d0
	call m,004fch		;79d1
	nop			;79d4
	ld (bc),a		;79d5
	ld bc,00302h		;79d6
	ld (bc),a		;79d9
	rlca			;79da
	ld (bc),a		;79db
	rrca			;79dc
	ld (bc),a		;79dd
	ld e,003h		;79de
	inc a			;79e0
	add a,(hl)		;79e1
	ld e,00fh		;79e2
	ld c,01eh		;79e4
	inc e			;79e6
	inc a			;79e7
	inc b			;79e8
	jr c,$-124		;79e9
	ret po			;79eb
	add a,b			;79ec
	ld b,000h		;79ed
	add a,d			;79ef
	ret po			;79f0
	ld b,b			;79f1
	inc bc			;79f2
l79f3h:
	nop			;79f3
	inc bc			;79f4
	ret m			;79f5
	nop			;79f6
	adc a,e			;79f7
	sub b			;79f8
	ld d,b			;79f9
	or b			;79fa
	sub b			;79fb
	cp c			;79fc
	or l			;79fd
	push hl			;79fe
	and l			;79ff
	ld d,b			;7a00
	ld d,b			;7a01
	sub b			;7a02
	dec b			;7a03
	cp c			;7a04
	adc a,h			;7a05
	ld d,b			;7a06
	sub b			;7a07
	cp c			;7a08
	cp c			;7a09
	or l			;7a0a
	or l			;7a0b
	and l			;7a0c
	push hl			;7a0d
	ld d,b			;7a0e
	or b			;7a0f
	sub b			;7a10
	sub b			;7a11
	inc b			;7a12
	cp c			;7a13
	adc a,c			;7a14
	sub b			;7a15
	cp c			;7a16
	or l			;7a17
	or l			;7a18
	cp c			;7a19
	sub b			;7a1a
	or b			;7a1b
	or b			;7a1c
	or l			;7a1d
	inc bc			;7a1e
	sbc a,e			;7a1f
	inc bc			;7a20
	or b			;7a21
	add a,h			;7a22
	ld d,b			;7a23
	or l			;7a24
	cp c			;7a25
	cp c			;7a26
	inc b			;7a27
	or b			;7a28
	add a,c			;7a29
	sub b			;7a2a
	inc b			;7a2b
	cp c			;7a2c
	ld (bc),a		;7a2d
	sub b			;7a2e
	ld (bc),a		;7a2f
	cp c			;7a30
	add a,d			;7a31
	push hl			;7a32
	and l			;7a33
	inc bc			;7a34
	or l			;7a35
	add hl,bc		;7a36
	cp c			;7a37
l7a38h:
	ld (bc),a		;7a38
	or l			;7a39
	inc b			;7a3a
	cp c			;7a3b
	ld (bc),a		;7a3c
	or l			;7a3d
	sub d			;7a3e
	and l			;7a3f
	push hl			;7a40
	cp c			;7a41
	or l			;7a42
	and l			;7a43
	or l			;7a44
	sbc a,e			;7a45
	add hl,bc		;7a46
	ld d,b			;7a47
	ld d,b			;7a48
	or l			;7a49
	and l			;7a4a
	or l			;7a4b
	or l			;7a4c
	cp c			;7a4d
	sub b			;7a4e
	ld d,b			;7a4f
	ld d,b			;7a50
	ld b,0b9h		;7a51
	ld (bc),a		;7a53
	nop			;7a54
	inc b			;7a55
	or l			;7a56
	ld (bc),a		;7a57
	cp c			;7a58
	ld (bc),a		;7a59
	sub b			;7a5a
	add a,d			;7a5b
	push hl			;7a5c
	and l			;7a5d
	inc bc			;7a5e
	or l			;7a5f
	rlca			;7a60
	cp c			;7a61
	inc bc			;7a62
	sub b			;7a63
	inc bc			;7a64
	cp c			;7a65
	add a,c			;7a66
	ex de,hl		;7a67
	inc b			;7a68
	or l			;7a69
	sub (hl)		;7a6a
	cp c			;7a6b
	sub b			;7a6c
	or b			;7a6d
	ld d,b			;7a6e
	or b			;7a6f
	sub b			;7a70
	sub b			;7a71
	cp c			;7a72
	or l			;7a73
	or l			;7a74
	sbc a,e			;7a75
	sub b			;7a76
	ld hl,04332h		;7a77
	call po,0b043h		;7a7a
	djnz l7aa0h		;7a7d
	ld hl,00332h		;7a7f
	ld b,e			;7a82
	sub (hl)		;7a83
	ld (01021h),a		;7a84
	djnz l7aaah		;7a87
	ld hl,03232h		;7a89
	ld sp,02131h		;7a8c
l7a8fh:
	ld hl,03232h		;7a8f
	ld b,e			;7a92
	ld b,e			;7a93
	ld hl,03221h		;7a94
	ld (04343h),a		;7a97
	inc bc			;7a9a
	ld b,c			;7a9b
	add a,d			;7a9c
	ld hl,00532h		;7a9d
l7aa0h:
	ld b,e			;7aa0
	inc bc			;7aa1
	djnz l7aa9h		;7aa2
	ld hl,01083h		;7aa4
	jr nz,l7abeh		;7aa7
l7aa9h:
	inc bc			;7aa9
l7aaah:
	djnz l7a38h		;7aaa
	ld hl,02143h		;7aac
	ld (0f132h),a		;7aaf
	pop af			;7ab2
	ld hl,04321h		;7ab3
	ld b,e			;7ab6
	call po,02103h		;7ab7
	add a,c			;7aba
l7abbh:
	ld (04303h),a		;7abb
l7abeh:
	ld (bc),a		;7abe
	jp po,02102h		;7abf
	ld (bc),a		;7ac2
	inc (hl)		;7ac3
	adc a,c			;7ac4
	call po,0e443h		;7ac5
	cpl			;7ac8
	cpl			;7ac9
	pop af			;7aca
	ret m			;7acb
	defb 0fdh,0fdh,003h ;illegal sequence	;7acc
	inc hl			;7acf
	ld (bc),a		;7ad0
	pop af			;7ad1
	adc a,h			;7ad2
	ret m			;7ad3
	defb 0fdh,0fdh,010h ;illegal sequence	;7ad4
	ld hl,0f021h		;7ad7
	pop af			;7ada
	ld hl,02143h		;7adb
	ld hl,01004h		;7ade
	add a,h			;7ae1
	ld hl,04332h		;7ae2
	ld hl,01304h		;7ae5
	add a,d			;7ae8
	ld hl,00332h		;7ae9
	ld b,e			;7aec
	ld (bc),a		;7aed
	ld (02104h),a		;7aee
	inc bc			;7af1
	call po,04387h		;7af2
	ld (02132h),a		;7af5
	ld hl,0fefeh		;7af8
	inc bc			;7afb
	ld b,e			;7afc
	add a,(hl)		;7afd
	ld (02121h),a		;7afe
	cp 0feh			;7b01
	ld b,e			;7b03
	inc b			;7b04
	ld hl,03181h		;7b05
	inc b			;7b08
	djnz l7a8fh		;7b09
	ld hl,04332h		;7b0b
	call po,01005h		;7b0e
	add a,l			;7b11
	ld hl,04332h		;7b12
	ld hl,00321h		;7b15
	ld (04302h),a		;7b18
	add a,d			;7b1b
	call po,00321h		;7b1c
	ld (04303h),a		;7b1f
	add a,e			;7b22
	call po,02020h		;7b23
	inc b			;7b26
	djnz $-121		;7b27
	ld b,c			;7b29
	ld hl,03040h		;7b2a
	jr nz,l7b32h		;7b2d
	djnz l7abbh		;7b2f
	ld b,c			;7b31
l7b32h:
	ld hl,00304h		;7b32
	ld (bc),a		;7b35
	ld (bc),a		;7b36
	pop af			;7b37
	ld hl,02141h		;7b38
	inc bc			;7b3b
	ld b,b			;7b3c
	add a,c			;7b3d
	jr nc,l7b44h		;7b3e
	ld (04002h),a		;7b40
	ld (bc),a		;7b43
l7b44h:
	ld (01302h),a		;7b44
	ld (bc),a		;7b47
	ld (04002h),a		;7b48
	add a,h			;7b4b
	jr nc,l7b6eh		;7b4c
	ld (de),a		;7b4e
	inc (hl)		;7b4f
	inc b			;7b50
	inc hl			;7b51
	add a,c			;7b52
	ld hl,0f104h		;7b53
	ld (bc),a		;7b56
	ld hl,02303h		;7b57
	ld (bc),a		;7b5a
	ld sp,0f102h		;7b5b
	adc a,c			;7b5e
	ld sp,03243h		;7b5f
	ld (00321h),a		;7b62
	jr nz,l7b77h		;7b65
	ld b,b			;7b67
	dec b			;7b68
	ld b,e			;7b69
	ld (bc),a		;7b6a
	ld (de),a		;7b6b
	add a,c			;7b6c
	ld b,b			;7b6d
l7b6eh:
	dec b			;7b6e
	jr nc,$-123		;7b6f
	ld hl,01f1fh		;7b71
	dec bc			;7b74
	ld b,e			;7b75
	add a,d			;7b76
l7b77h:
	ld (00321h),a		;7b77
	ld b,e			;7b7a
	inc bc			;7b7b
	ld (0219eh),a		;7b7c
	rra			;7b7f
	ld b,e			;7b80
	ld (04343h),a		;7b81
	ld (01010h),a		;7b84
	pop af			;7b87
	pop af			;7b88
	ld hl,03243h		;7b89
	ld hl,03244h		;7b8c
	ld (0f1f2h),a		;7b8f
	ld (01f21h),a		;7b92
	ld b,e			;7b95
	ld sp,02030h		;7b96
	djnz l7babh		;7b99
	ld b,b			;7b9b
	ld b,043h		;7b9c
	add a,h			;7b9e
l7b9fh:
	ld b,b			;7b9f
	jr nc,l7bc2h		;7ba0
	djnz $+6		;7ba2
	ld b,e			;7ba4
	add a,d			;7ba5
	ld (00521h),a		;7ba6
	ld b,e			;7ba9
	add a,h			;7baa
l7babh:
	ld (01f21h),a		;7bab
	ld b,e			;7bae
	inc b			;7baf
	ld (02181h),a		;7bb0
	ex af,af'		;7bb3
	ld b,e			;7bb4
	add a,c			;7bb5
	ld hl,04305h		;7bb6
	add a,h			;7bb9
	ld (0f121h),a		;7bba
	inc (hl)		;7bbd
	inc b			;7bbe
	inc hl			;7bbf
	add a,d			;7bc0
	ld (de),a		;7bc1
l7bc2h:
	pop af			;7bc2
	inc bc			;7bc3
	ld b,e			;7bc4
	add a,d			;7bc5
	ld (0032fh),a		;7bc6
	pop af			;7bc9
	dec b			;7bca
	inc (hl)		;7bcb
	add a,h			;7bcc
	ld (0f1f2h),a		;7bcd
	ld b,e			;7bd0
	inc b			;7bd1
	ld (03002h),a		;7bd2
	inc b			;7bd5
	jr nz,l7be1h		;7bd6
	ld d,b			;7bd8
	add hl,bc		;7bd9
	or b			;7bda
	ld (bc),a		;7bdb
	ld d,b			;7bdc
	inc b			;7bdd
	jr nz,l7beah		;7bde
	ld d,b			;7be0
l7be1h:
	inc b			;7be1
	or b			;7be2
	dec c			;7be3
	ld d,b			;7be4
l7be5h:
	ld (bc),a		;7be5
	or b			;7be6
	ld b,090h		;7be7
	add a,c			;7be9
l7beah:
	ld d,b			;7bea
	inc bc			;7beb
	or b			;7bec
	adc a,c			;7bed
	ld d,b			;7bee
	or b			;7bef
	sub b			;7bf0
	sub b			;7bf1
	or b			;7bf2
	ld d,b			;7bf3
	ld d,b			;7bf4
	sub b			;7bf5
	or l			;7bf6
	ld b,0b0h		;7bf7
	inc bc			;7bf9
	sub b			;7bfa
	dec b			;7bfb
	djnz $-118		;7bfc
	ld d,b			;7bfe
	sub b			;7bff
	or b			;7c00
	ld d,b			;7c01
	or b			;7c02
	sub b			;7c03
	sub b			;7c04
	or b			;7c05
	ld b,090h		;7c06
	add a,e			;7c08
	or b			;7c09
	ld d,b			;7c0a
	or b			;7c0b
	dec bc			;7c0c
	sub b			;7c0d
	add a,e			;7c0e
	or b			;7c0f
	ld d,b			;7c10
	or b			;7c11
	inc b			;7c12
	sub b			;7c13
	add a,e			;7c14
	or b			;7c15
	ld d,b			;7c16
	or b			;7c17
	dec b			;7c18
	djnz l7b9fh		;7c19
	sub b			;7c1b
	or b			;7c1c
	ld d,b			;7c1d
	sub l			;7c1e
	inc b			;7c1f
	sub b			;7c20
	add a,e			;7c21
	or b			;7c22
	ld d,b			;7c23
	or b			;7c24
	ld b,090h		;7c25
	add a,e			;7c27
	or b			;7c28
	ld d,b			;7c29
	or b			;7c2a
	inc bc			;7c2b
	sub b			;7c2c
	inc bc			;7c2d
	djnz $-124		;7c2e
	ld (00413h),a		;7c30
	sub b			;7c33
	adc a,h			;7c34
	or b			;7c35
	ld d,b			;7c36
	or b			;7c37
	djnz l7c6ch		;7c38
	ld b,d			;7c3a
	ld b,d			;7c3b
	pop af			;7c3c
	pop af			;7c3d
	ld hl,l6321h		;7c3e
	inc bc			;7c41
	or b			;7c42
	add a,d			;7c43
	ld d,b			;7c44
	sub l			;7c45
	ld c,090h		;7c46
	add a,h			;7c48
	or b			;7c49
	ld d,b			;7c4a
	ld d,b			;7c4b
	or b			;7c4c
	inc bc			;7c4d
	sub b			;7c4e
	add a,e			;7c4f
	or b			;7c50
	ld d,b			;7c51
	or b			;7c52
	djnz l7be5h		;7c53
l7c55h:
	add a,e			;7c55
	pop de			;7c56
	add a,e			;7c57
	pop de			;7c58
	nop			;7c59
	sub b			;7c5a
	add a,e			;7c5b
	adc a,(hl)		;7c5c
	defb 0fdh,0f7h,09fh ;illegal sequence	;7c5d
	rst 38h			;7c60
	cp 0f8h			;7c61
	ret m			;7c63
	cp 0ffh			;7c64
	add a,a			;7c66
	add a,c			;7c67
	inc c			;7c68
	ld c,h			;7c69
	add a,c			;7c6a
	nop			;7c6b
l7c6ch:
	ld b,0c7h		;7c6c
	dec b			;7c6e
	ret nz			;7c6f
	ld (bc),a		;7c70
	rst 0			;7c71
	ld (bc),a		;7c72
	rst 20h			;7c73
	add a,c			;7c74
	rst 0			;7c75
	nop			;7c76
	xor b			;7c77
sub_7c78h:
	ld a,a			;7c78
	rst 38h			;7c79
	nop			;7c7a
	nop			;7c7b
	jp 01881h		;7c7c
	jp 0e7c3h		;7c7f
	ld a,(hl)		;7c82
	inc a			;7c83
	ret nz			;7c84
	inc a			;7c85
	inc bc			;7c86
	ret po			;7c87
	ld a,a			;7c88
	rst 38h			;7c89
	nop			;7c8a
	nop			;7c8b
	rst 38h			;7c8c
	nop			;7c8d
	inc a			;7c8e
	ld a,(hl)		;7c8f
	jr l7c55h		;7c90
	jp l7ee7h		;7c92
	inc a			;7c95
	inc bc			;7c96
	ret po			;7c97
	ld a,(hl)		;7c98
	jr $-59			;7c99
	jp l7ee7h		;7c9b
	inc a			;7c9e
	ret po			;7c9f
	nop			;7ca0
	add a,a			;7ca1
	ld (04242h),a		;7ca2
	ld de,0f6f6h		;7ca5
	and 003h		;7ca8
	ld h,l			;7caa
	add a,d			;7cab
	ld h,d			;7cac
	ld h,c			;7cad
	inc bc			;7cae
	ld sp,02184h		;7caf
	ld (04242h),a		;7cb2
	inc bc			;7cb5
	pop af			;7cb6
	ld (bc),a		;7cb7
	ld h,d			;7cb8
	add a,c			;7cb9
	and 003h		;7cba
	ld h,l			;7cbc
	add a,(hl)		;7cbd
	ld h,e			;7cbe
	ld h,c			;7cbf
	ld sp,l6321h		;7cc0
	and 003h		;7cc3
	ld h,l			;7cc5
	ld (bc),a		;7cc6
	ld h,d			;7cc7
	add a,c			;7cc8
	ld hl,09000h		;7cc9
	add a,028h		;7ccc
	ld sp,0ffffh		;7cce
	dec c			;7cd1
	sub d			;7cd2
	ld h,c			;7cd3
	ld h,(hl)		;7cd4
	adc a,b			;7cd5
	ld d,0ffh		;7cd6
	rst 38h			;7cd8
	ld b,a			;7cd9
	adc a,b			;7cda
	jr nc,l7cddh		;7cdb
l7cddh:
	add a,d			;7cdd
	ret nz			;7cde
	rst 20h			;7cdf
sub_7ce0h:
	inc b			;7ce0
	call pe,0e784h		;7ce1
	ret nz			;7ce4
	ret nz			;7ce5
	rst 20h			;7ce6
	inc b			;7ce7
	call pe,0e782h		;7ce8
	ret nz			;7ceb
	nop			;7cec
	add a,l			;7ced
	ld b,08fh		;7cee
	ret po			;7cf0
	call m,00a0fh		;7cf1
	nop			;7cf4
	ld (bc),a		;7cf5
	rrca			;7cf6
	rlca			;7cf7
	nop			;7cf8
	add a,e			;7cf9
	ccf			;7cfa
	rrca			;7cfb
	inc bc			;7cfc
	ex af,af'		;7cfd
	nop			;7cfe
	ld (bc),a		;7cff
	rrca			;7d00
	add a,e			;7d01
	ret p			;7d02
	otir			;7d03
	rlca			;7d05
	nop			;7d06
	ld (bc),a		;7d07
	ld bc,00383h		;7d08
	rlca			;7d0b
	rlca			;7d0c
	ex af,af'		;7d0d
	rrca			;7d0e
	inc b			;7d0f
	rlca			;7d10
	ld (bc),a		;7d11
	inc bc			;7d12
	add a,c			;7d13
	ld bc,00008h		;7d14
	add a,l			;7d17
l7d18h:
	ld bc,00303h		;7d18
	rlca			;7d1b
	rlca			;7d1c
	rlca			;7d1d
	nop			;7d1e
	add a,c			;7d1f
	rlca			;7d20
	dec b			;7d21
	nop			;7d22
	add a,e			;7d23
	rrca			;7d24
	rst 38h			;7d25
	rst 38h			;7d26
	inc b			;7d27
	nop			;7d28
	add a,h			;7d29
	ld bc,00703h		;7d2a
	rlca			;7d2d
	ex af,af'		;7d2e
	rrca			;7d2f
	inc b			;7d30
	rlca			;7d31
	ld (bc),a		;7d32
	inc bc			;7d33
	add a,c			;7d34
	ld bc,00004h		;7d35
	adc a,l			;7d38
	rlca			;7d39
	ccf			;7d3a
	ld a,a			;7d3b
	rst 38h			;7d3c
	ei			;7d3d
	inc bc			;7d3e
	inc bc			;7d3f
	rlca			;7d40
	rlca			;7d41
	rrca			;7d42
	rra			;7d43
	ld a,a			;7d44
	ld sp,hl		;7d45
	dec b			;7d46
	nop			;7d47
	add a,(hl)		;7d48
l7d49h:
	rra			;7d49
	ret m			;7d4a
	cp 0fch			;7d4b
	ret p			;7d4d
	ret nz			;7d4e
	dec b			;7d4f
	nop			;7d50
	adc a,d			;7d51
	ld bc,0fff3h		;7d52
	rra			;7d55
	rlca			;7d56
	ld bc,00000h		;7d57
	rlca			;7d5a
	ld bc,0000ah		;7d5b
	add a,l			;7d5e
	rst 38h			;7d5f
	add a,a			;7d60
l7d61h:
	ld (hl),b		;7d61
	ret po			;7d62
	ret p			;7d63
	inc c			;7d64
	rst 38h			;7d65
	add a,a			;7d66
	ccf			;7d67
	rrca			;7d68
	call m,0c0ffh		;7d69
	ld a,a			;7d6c
	rrca			;7d6d
	inc b			;7d6e
	nop			;7d6f
	nop			;7d70
	add a,c			;7d71
	ld d,h			;7d72
	inc bc			;7d73
	ld b,e			;7d74
	jr nz,l7db7h		;7d75
	inc bc			;7d77
	ld d,h			;7d78
	add a,c			;7d79
	ld d,c			;7d7a
	ld d,a			;7d7b
	ld d,b			;7d7c
	add a,c			;7d7d
	ld d,h			;7d7e
	rlca			;7d7f
	ld d,b			;7d80
	add a,c			;7d81
	ld d,d			;7d82
	ld b,030h		;7d83
	ld (bc),a		;7d85
	ld b,e			;7d86
	ex af,af'		;7d87
	jr nz,l7d8dh		;7d88
	ld hl,02081h		;7d8a
l7d8dh:
	ld de,00530h		;7d8d
	ld (0030dh),a		;7d90
	ld (bc),a		;7d93
	jr nz,l7d18h		;7d94
	ld (00520h),a		;7d96
	jr nc,l7d9bh		;7d99
l7d9bh:
	and l			;7d9b
	inc bc			;7d9c
	rlca			;7d9d
	ld e,0fch		;7d9e
	ld h,c			;7da0
	add a,d			;7da1
	rst 0			;7da2
	jr nc,l7d49h		;7da3
	and h			;7da5
	call m,09cb6h		;7da6
	sbc a,h			;7da9
	cp h			;7daa
	ld a,(hl)		;7dab
	rst 28h			;7dac
	rst 0			;7dad
	add a,0c3h		;7dae
	add a,a			;7db0
	add a,a			;7db1
	adc a,b			;7db2
	sub b			;7db3
	sbc a,h			;7db4
	sbc a,h			;7db5
	cp h			;7db6
l7db7h:
	ld a,(hl)		;7db7
	rst 28h			;7db8
	rst 0			;7db9
	add a,0c3h		;7dba
	add a,a			;7dbc
	add a,a			;7dbd
	adc a,b			;7dbe
	sub b			;7dbf
	or c			;7dc0
	inc bc			;7dc1
	ret po			;7dc2
	add a,c			;7dc3
	or c			;7dc4
	inc bc			;7dc5
	ret po			;7dc6
	xor h			;7dc7
	ret p			;7dc8
	ret m			;7dc9
	call m,0f6d8h		;7dca
	call pe,0dac8h		;7dcd
	and h			;7dd0
	and h			;7dd1
	call m,0f0b6h		;7dd2
	ret m			;7dd5
	call m,006d8h		;7dd6
	adc a,a			;7dd9
	ret po			;7dda
	call m,085d0h		;7ddb
	inc bc			;7dde
	rlca			;7ddf
	ld d,00eh		;7de0
	ld b,00eh		;7de2
	ld d,00eh		;7de4
	ld b,00eh		;7de6
	rlca			;7de8
	inc bc			;7de9
	adc a,e			;7dea
	ld sp,0f8c0h		;7deb
	ld a,a			;7dee
	add a,a			;7def
	nop			;7df0
	add a,a			;7df1
	rst 0			;7df2
	adc a,a			;7df3
	inc b			;7df4
	ld bc,08102h		;7df5
	adc a,d			;7df8
	pop bc			;7df9
	ld h,e			;7dfa
	nop			;7dfb
	nop			;7dfc
	ld b,b			;7dfd
	ld h,b			;7dfe
	ld h,b			;7dff
sub_7e00h:
	ret nz			;7e00
	add a,b			;7e01
	ex af,af'		;7e02
	ld b,000h		;7e03
	add a,(hl)		;7e05
	ld b,b			;7e06
	ld h,b			;7e07
	ld h,b			;7e08
	ret nz			;7e09
	add a,b			;7e0a
	ex af,af'		;7e0b
	inc b			;7e0c
	nop			;7e0d
	add a,e			;7e0e
	pop hl			;7e0f
	ld (hl),e		;7e10
	ld e,005h		;7e11
	nop			;7e13
	add a,h			;7e14
	di			;7e15
	pop bc			;7e16
	add a,c			;7e17
	add a,c			;7e18
	inc b			;7e19
	ld bc,08102h		;7e1a
	adc a,d			;7e1d
l7e1eh:
	pop bc			;7e1e
	ld h,e			;7e1f
	ret nz			;7e20
	cp b			;7e21
	cp 01ch			;7e22
	nop			;7e24
	sbc a,c			;7e25
	adc a,a			;7e26
	add a,a			;7e27
	inc b			;7e28
	nop			;7e29
	add a,h			;7e2a
	add a,h			;7e2b
	ex af,af'		;7e2c
	ld bc,0040fh		;7e2d
	rst 38h			;7e30
	sbc a,b			;7e31
	ld bc,l7813h		;7e32
	call nz,08382h		;7e35
	add a,e			;7e38
	rst 20h			;7e39
	inc c			;7e3a
	jr nc,l7e1eh		;7e3b
	jp 0eec7h		;7e3d
	sbc a,b			;7e40
	nop			;7e41
	jr $+18			;7e42
	jr nz,l7e66h		;7e44
	nop			;7e46
	sbc a,c			;7e47
	adc a,a			;7e48
	add a,a			;7e49
	inc b			;7e4a
	nop			;7e4b
	adc a,h			;7e4c
	ld bc,l7813h		;7e4d
	call nz,00000h		;7e50
	ld hl,08443h		;7e53
	ex af,af'		;7e56
	ld bc,0080fh		;7e57
	nop			;7e5a
	sub a			;7e5b
	add a,d			;7e5c
	add a,e			;7e5d
	add a,e			;7e5e
	rst 20h			;7e5f
	rst 38h			;7e60
	ret nz			;7e61
	ld a,a			;7e62
	rrca			;7e63
	nop			;7e64
	rra			;7e65
l7e66h:
	ret m			;7e66
	cp 01eh			;7e67
	ld e,0feh		;7e69
	call m,sub_70c7h	;7e6b
	ret po			;7e6e
	ret po			;7e6f
	pop hl			;7e70
	ld (hl),e		;7e71
	ld e,005h		;7e72
	nop			;7e74
	xor 0c0h		;7e75
	ret po			;7e77
	jr nc,l7e92h		;7e78
	inc bc			;7e7a
	rrca			;7e7b
	ld e,038h		;7e7c
	jr c,$+114		;7e7e
	ret po			;7e80
	ret po			;7e81
	jr l7efch		;7e82
	ret p			;7e84
	ret po			;7e85
	ret po			;7e86
	add a,b			;7e87
	nop			;7e88
	nop			;7e89
	inc e			;7e8a
	ld bc,00e00h		;7e8b
	jr $+18			;7e8e
	jr nz,l7eb2h		;7e90
l7e92h:
	rst 0			;7e92
	xor 098h		;7e93
	nop			;7e95
	ld bc,0fff3h		;7e96
	rra			;7e99
	nop			;7e9a
	rrca			;7e9b
	rst 38h			;7e9c
	rst 38h			;7e9d
	call m,087e9h		;7e9e
	rst 20h			;7ea1
	ld e,01eh		;7ea2
	cp 0fch			;7ea4
	rlca			;7ea6
	sbc a,(hl)		;7ea7
	call z,098c0h		;7ea8
	call z,l68c4h		;7eab
	ld (hl),b		;7eae
	ld a,(hl)		;7eaf
	ld e,c			;7eb0
	ld e,c			;7eb1
l7eb2h:
	ld a,h			;7eb2
	ld (0a6a3h),hl		;7eb3
	inc e			;7eb6
	ld bc,00e00h		;7eb7
	ld l,(hl)		;7eba
	and (hl)		;7ebb
	and 09ch		;7ebc
	inc bc			;7ebe
	rrca			;7ebf
	ld e,038h		;7ec0
	or a			;7ec2
	call sub_609eh		;7ec3
	di			;7ec6
	pop bc			;7ec7
	add a,c			;7ec8
	add a,c			;7ec9
	ld (hl),b		;7eca
	ld a,(hl)		;7ecb
	ld e,c			;7ecc
	ld e,c			;7ecd
	ld l,(hl)		;7ece
	and (hl)		;7ecf
	and 09ch		;7ed0
	ccf			;7ed2
	ld a,a			;7ed3
	rst 38h			;7ed4
	ei			;7ed5
	or 0ech			;7ed6
	ret z			;7ed8
	jp c,08261h		;7ed9
	rst 0			;7edc
	jr nc,l7f1eh		;7edd
	rrca			;7edf
	inc bc			;7ee0
	nop			;7ee1
	ret po			;7ee2
	add a,b			;7ee3
	inc b			;7ee4
	nop			;7ee5
	rst 10h			;7ee6
l7ee7h:
	ld hl,00743h		;7ee7
	sbc a,(hl)		;7eea
	call z,098c0h		;7eeb
	call z,l68c4h		;7eee
	ret p			;7ef1
	pop hl			;7ef2
	ex (sp),hl		;7ef3
	add a,0b8h		;7ef4
	ret nz			;7ef6
	ld a,l			;7ef7
	add a,098h		;7ef8
	ld a,(hl)		;7efa
	pop hl			;7efb
l7efch:
	add a,c			;7efc
	inc bc			;7efd
	rlca			;7efe
	ld e,0fch		;7eff
	cp b			;7f01
	ret nz			;7f02
l7f03h:
	ld a,l			;7f03
	add a,098h		;7f04
	ld a,(hl)		;7f06
	pop hl			;7f07
	add a,c			;7f08
	ret nz			;7f09
	cp b			;7f0a
	cp 01ch			;7f0b
	jp nz,080c0h		;7f0d
	rst 38h			;7f10
	ld a,b			;7f11
	ret m			;7f12
	ret m			;7f13
	add a,b			;7f14
	inc c			;7f15
	jr nc,$-29		;7f16
	jp 0c0c2h		;7f18
	add a,b			;7f1b
	rst 38h			;7f1c
	ld a,b			;7f1d
l7f1eh:
	ret m			;7f1e
	ret m			;7f1f
	add a,b			;7f20
	rrca			;7f21
	rra			;7f22
	ld a,a			;7f23
	ld sp,hl		;7f24
	ret p			;7f25
	pop hl			;7f26
	ex (sp),hl		;7f27
	add a,00fh		;7f28
	ret p			;7f2a
	otir			;7f2b
	or a			;7f2d
	call sub_609eh		;7f2e
	add a,b			;7f31
	pop af			;7f32
	ret nz			;7f33
	ret m			;7f34
	ret nz			;7f35
	ret m			;7f36
	ld a,a			;7f37
	add a,a			;7f38
	ret po			;7f39
	ret m			;7f3a
	ret po			;7f3b
	ret m			;7f3c
	ret p			;7f3d
	inc bc			;7f3e
	rst 38h			;7f3f
	or b			;7f40
	nop			;7f41
	add a,a			;7f42
	ld (hl),b		;7f43
	ret po			;7f44
	ld a,h			;7f45
	ld (0a6a3h),hl		;7f46
	ret nz			;7f49
	ret po			;7f4a
	jr nc,l7f65h		;7f4b
	jr $+122		;7f4d
	ret p			;7f4f
	ret po			;7f50
	call m,087e9h		;7f51
	rst 20h			;7f54
	ret nc			;7f55
	add a,l			;7f56
	inc bc			;7f57
	rlca			;7f58
	rlca			;7f59
	inc bc			;7f5a
	adc a,e			;7f5b
	ld sp,0f180h		;7f5c
	ret nz			;7f5f
	ret m			;7f60
	rst 38h			;7f61
	add a,a			;7f62
	rst 0			;7f63
	adc a,a			;7f64
l7f65h:
	adc a,h			;7f65
	ret m			;7f66
	ret po			;7f67
	ret m			;7f68
	adc a,h			;7f69
	ret m			;7f6a
	ret po			;7f6b
	ret m			;7f6c
	ret po			;7f6d
	ret m			;7f6e
	ret po			;7f6f
	ret m			;7f70
	nop			;7f71
	add a,d			;7f72
	ld d,d			;7f73
	ld d,e			;7f74
	ex af,af'		;7f75
	ld d,h			;7f76
	dec h			;7f77
	ld b,e			;7f78
	rlca			;7f79
	ld d,h			;7f7a
	dec b			;7f7b
	ld b,e			;7f7c
	ld (bc),a		;7f7d
	ld d,h			;7f7e
	dec b			;7f7f
	ld b,e			;7f80
	inc c			;7f81
	ld d,e			;7f82
	rlca			;7f83
	ld b,e			;7f84
	add a,c			;7f85
	ld (02109h),a		;7f86
	dec de			;7f89
	ld sp,04108h		;7f8a
	add a,c			;7f8d
	ld sp,02108h		;7f8e
	add a,e			;7f91
	ld sp,03243h		;7f92
	ld b,a			;7f95
	ld hl,03282h		;7f96
	jr nz,l7f9eh		;7f99
	jr nc,l7f9fh		;7f9b
	ld b,e			;7f9d
l7f9eh:
	add a,c			;7f9e
l7f9fh:
	ld d,h			;7f9f
	inc b			;7fa0
	dec d			;7fa1
	inc bc			;7fa2
	ld b,c			;7fa3
	ld (bc),a		;7fa4
	ld sp,04107h		;7fa5
	add a,c			;7fa8
	ld d,c			;7fa9
	inc b			;7faa
	ld b,c			;7fab
	inc bc			;7fac
	ld d,c			;7fad
	inc b			;7fae
	ld b,c			;7faf
	inc bc			;7fb0
	ld d,c			;7fb1
	dec b			;7fb2
	ld b,c			;7fb3
	ld c,021h		;7fb4
	ld (bc),a		;7fb6
	jr nz,l7fbch		;7fb7
	ld d,b			;7fb9
	add a,l			;7fba
	ld d,c			;7fbb
l7fbch:
	ld d,h			;7fbc
	ld d,h			;7fbd
	ld b,e			;7fbe
	ld d,h			;7fbf
	inc bc			;7fc0
	dec d			;7fc1
	add a,a			;7fc2
	ld b,d			;7fc3
	ld d,e			;7fc4
	ld b,c			;7fc5
	ld sp,04131h		;7fc6
	ld d,c			;7fc9
	inc b			;7fca
	ld d,d			;7fcb
	add a,(hl)		;7fcc
	ld b,d			;7fcd
	ld (02132h),a		;7fce
	ld sp,00341h		;7fd1
	ld hl,04290h		;7fd4
	ld b,c			;7fd7
	ld b,c			;7fd8
	ld sp,04141h		;7fd9
	ld d,c			;7fdc
	ld d,c			;7fdd
	ld d,h			;7fde
	ld d,h			;7fdf
sub_7fe0h:
	ld b,e			;7fe0
	ld b,e			;7fe1
	ld b,c			;7fe2
	ld b,c			;7fe3
	ld sp,00321h		;7fe4
	ld d,d			;7fe7
	ld (bc),a		;7fe8
	ld b,d			;7fe9
	ld (bc),a		;7fea
	ld b,c			;7feb
	add a,c			;7fec
	ld sp,05003h		;7fed
	add hl,bc		;7ff0
	ld d,h			;7ff1
	inc b			;7ff2
	ld b,b			;7ff3
	ld b,041h		;7ff4
	ld (bc),a		;7ff6
	ld hl,04287h		;7ff7
	ld d,e			;7ffa
	ld b,c			;7ffb
	ld sp,04131h		;7ffc
	ld d,c			;7fff

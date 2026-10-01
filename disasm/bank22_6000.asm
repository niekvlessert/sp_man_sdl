; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank22_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank22.bin

	org 06000h

	nop			;6000
	nop			;6001
	nop			;6002
	nop			;6003
	nop			;6004
	cp 0feh			;6005
	cp 00eh			;6007
	jp p,0f2feh		;6009
	ld (bc),a		;600c
sub_600dh:
	ld c,0feh		;600d
	cp 0feh			;600f
	nop			;6011
	nop			;6012
	nop			;6013
	call m,08083h		;6014
	rst 8			;6017
	or b			;6018
	add a,b			;6019
	ld (hl),b		;601a
	ld a,a			;601b
	ld (hl),b		;601c
	rrca			;601d
	rrca			;601e
	rrca			;601f
	nop			;6020
	nop			;6021
	nop			;6022
	nop			;6023
	nop			;6024
	nop			;6025
	nop			;6026
	nop			;6027
	nop			;6028
	nop			;6029
	nop			;602a
	nop			;602b
	inc bc			;602c
	rst 38h			;602d
	inc bc			;602e
	rst 28h			;602f
	rra			;6030
	rrca			;6031
	ld a,0ffh		;6032
	ld a,0fch		;6034
	ei			;6036
	ret m			;6037
	ld a,a			;6038
	ld a,a			;6039
	ld a,a			;603a
	nop			;603b
	nop			;603c
	nop			;603d
	nop			;603e
	nop			;603f
	nop			;6040
	nop			;6041
	nop			;6042
	nop			;6043
	ret nz			;6044
	rst 38h			;6045
	ret nz			;6046
	cp a			;6047
	ret nz			;6048
	add a,b			;6049
	rst 38h			;604a
	nop			;604b
	nop			;604c
	nop			;604d
	rst 38h			;604e
	nop			;604f
	rst 38h			;6050
	rst 38h			;6051
	rst 38h			;6052
	ld bc,00101h		;6053
	nop			;6056
	nop			;6057
	nop			;6058
	nop			;6059
	nop			;605a
	nop			;605b
	rst 38h			;605c
	inc bc			;605d
	inc bc			;605e
	rst 38h			;605f
	nop			;6060
	nop			;6061
	rst 38h			;6062
	ccf			;6063
	ccf			;6064
	ld a,(hl)		;6065
	pop af			;6066
	ld (hl),b		;6067
	rst 38h			;6068
	rst 38h			;6069
	rst 38h			;606a
	ret m			;606b
	add a,a			;606c
	add a,b			;606d
	ld a,a			;606e
	ld (hl),b		;606f
	ld (hl),b		;6070
	rrca			;6071
	inc c			;6072
	inc c			;6073
	rst 38h			;6074
	nop			;6075
	nop			;6076
	rst 38h			;6077
	rst 38h			;6078
	rst 38h			;6079
	call m,0fcfch		;607a
	ld (hl),b		;607d
	sub b			;607e
	djnz $+1		;607f
	rst 38h			;6081
	rst 38h			;6082
	inc bc			;6083
	call m,0ff00h		;6084
	nop			;6087
	nop			;6088
	rst 38h			;6089
	nop			;608a
	nop			;608b
	cp 03eh			;608c
	ld a,0e0h		;608e
	ret po			;6090
	ret po			;6091
	nop			;6092
	nop			;6093
	nop			;6094
	nop			;6095
	nop			;6096
	nop			;6097
	add a,b			;6098
	add a,b			;6099
	add a,b			;609a
	add a,b			;609b
	add a,b			;609c
	add a,b			;609d
	ret nz			;609e
	ld b,b			;609f
	ld b,b			;60a0
	ret nz			;60a1
	ld b,b			;60a2
	ld b,b			;60a3
	inc bc			;60a4
	ld (bc),a		;60a5
	ld (bc),a		;60a6
	ld bc,00101h		;60a7
	nop			;60aa
	nop			;60ab
	nop			;60ac
	nop			;60ad
	nop			;60ae
	nop			;60af
	nop			;60b0
	nop			;60b1
	nop			;60b2
	nop			;60b3
	nop			;60b4
l60b5h:
	nop			;60b5
	nop			;60b6
	nop			;60b7
l60b8h:
	nop			;60b8
	nop			;60b9
	nop			;60ba
	nop			;60bb
	call m,00203h		;60bc
l60bfh:
	ret m			;60bf
	rlca			;60c0
	rlca			;60c1
	ret m			;60c2
	add a,a			;60c3
	add a,a			;60c4
	ld (hl),b		;60c5
	ld c,a			;60c6
	ld c,a			;60c7
	jr nc,l60f9h		;60c8
	cpl			;60ca
	djnz l60ech		;60cb
	rla			;60cd
	ex af,af'		;60ce
	rrca			;60cf
	dec bc			;60d0
	inc b			;60d1
	rlca			;60d2
l60d3h:
	dec b			;60d3
	ret nz			;60d4
	ld b,b			;60d5
	ld b,b			;60d6
	ld h,b			;60d7
	and b			;60d8
	jr nz,l613bh		;60d9
	and b			;60db
	jr nz,$+98		;60dc
	and b			;60de
	jr nz,l6111h		;60df
	ret nc			;60e1
	sub b			;60e2
	jr nc,l60b5h		;60e3
	sub b			;60e5
	jr nc,l60b8h		;60e6
	sub b			;60e8
	jr l60d3h		;60e9
	ret z			;60eb
l60ech:
	ld (bc),a		;60ec
	inc bc			;60ed
l60eeh:
	ld (bc),a		;60ee
	ld bc,00101h		;60ef
	nop			;60f2
	nop			;60f3
	nop			;60f4
	nop			;60f5
	nop			;60f6
	nop			;60f7
	nop			;60f8
l60f9h:
	nop			;60f9
	nop			;60fa
	nop			;60fb
	nop			;60fc
	nop			;60fd
	nop			;60fe
	nop			;60ff
	nop			;6100
	nop			;6101
	nop			;6102
	nop			;6103
	jr l60eeh		;6104
	ret z			;6106
	jr $-22			;6107
	ex af,af'		;6109
	call m,0fcfch		;610a
	ld h,h			;610d
	ld b,h			;610e
	ld a,h			;610f
	inc a			;6110
l6111h:
	inc a			;6111
	inc a			;6112
	nop			;6113
	nop			;6114
	nop			;6115
	nop			;6116
	nop			;6117
	nop			;6118
	nop			;6119
	nop			;611a
	nop			;611b
	nop			;611c
	nop			;611d
	nop			;611e
	nop			;611f
	nop			;6120
	nop			;6121
l6122h:
	nop			;6122
	nop			;6123
	nop			;6124
l6125h:
	ld bc,00101h		;6125
	ld (bc),a		;6128
	inc bc			;6129
	inc bc			;612a
	inc b			;612b
	rlca			;612c
	rlca			;612d
	ex af,af'		;612e
l612fh:
	rrca			;612f
	ld c,010h		;6130
	rra			;6132
	inc e			;6133
	jr nc,l6166h		;6134
	jr nc,$+106		;6136
	ld c,b			;6138
	ld a,b			;6139
	sub b			;613a
l613bh:
	ret p			;613b
	ret p			;613c
	djnz l612fh		;613d
	ret nc			;613f
	jr nz,l6122h		;6140
	and b			;6142
	jr nz,l6125h		;6143
	jr nz,l6187h		;6145
	ret nz			;6147
	ld b,b			;6148
	ld b,b			;6149
	ret nz			;614a
	ld b,b			;614b
	nop			;614c
	nop			;614d
	nop			;614e
	nop			;614f
	nop			;6150
	nop			;6151
	nop			;6152
	nop			;6153
	nop			;6154
	ld bc,00101h		;6155
	ld bc,00101h		;6158
	ccf			;615b
	ccf			;615c
	ccf			;615d
	jp m,0cfffh		;615e
	or d			;6161
	rst 38h			;6162
	ld e,a			;6163
	jr nz,l61a5h		;6164
l6166h:
	jr c,l61a8h		;6166
	ld a,a			;6168
	ld a,b			;6169
	sbc a,a			;616a
	pop hl			;616b
	pop hl			;616c
	rst 38h			;616d
	rra			;616e
	rra			;616f
	jp m,0e2e6h		;6170
	or 0feh			;6173
	or 01eh			;6175
	cp 0feh			;6177
	rlca			;6179
	ei			;617a
	add a,e			;617b
	ld b,007h		;617c
	dec b			;617e
	rrca			;617f
	rrca			;6180
	ex af,af'		;6181
	rra			;6182
	rra			;6183
	rra			;6184
	djnz l61a6h		;6185
l6187h:
	djnz l6198h		;6187
	inc c			;6189
	inc c			;618a
	inc bc			;618b
	inc bc			;618c
	inc bc			;618d
l618eh:
	nop			;618e
	nop			;618f
	nop			;6190
	nop			;6191
	nop			;6192
	nop			;6193
	call po,03fffh		;6194
	ret			;6197
l6198h:
	rst 38h			;6198
	rst 38h			;6199
	ld de,0ddffh		;619a
	jr nc,l618eh		;619d
	jr nz,$+1		;619f
	ld b,c			;61a1
	ld b,c			;61a2
	rst 38h			;61a3
	rst 38h			;61a4
l61a5h:
	rst 38h			;61a5
l61a6h:
	rlca			;61a6
	inc b			;61a7
l61a8h:
	inc b			;61a8
	inc bc			;61a9
	inc bc			;61aa
	inc bc			;61ab
	rst 38h			;61ac
	rst 38h			;61ad
	rst 38h			;61ae
	nop			;61af
	rst 38h			;61b0
	ld a,h			;61b1
	rst 38h			;61b2
	rst 38h			;61b3
	rst 38h			;61b4
	cp 086h			;61b5
	add a,(hl)		;61b7
	call m,0fcfch		;61b8
	ret p			;61bb
	ret p			;61bc
	ret p			;61bd
	ret p			;61be
	djnz l61d1h		;61bf
	ret pe			;61c1
	jr l61cch		;61c2
	add a,c			;61c4
	cp 0ffh			;61c5
	cp 080h			;61c7
	add a,c			;61c9
	rst 38h			;61ca
	rst 38h			;61cb
l61cch:
	rst 38h			;61cc
	nop			;61cd
	nop			;61ce
	nop			;61cf
	nop			;61d0
l61d1h:
	nop			;61d1
	nop			;61d2
	nop			;61d3
	nop			;61d4
	nop			;61d5
	nop			;61d6
	nop			;61d7
	nop			;61d8
	nop			;61d9
	nop			;61da
	nop			;61db
	ret z			;61dc
	cp b			;61dd
	xor b			;61de
	ld b,h			;61df
	ld a,h			;61e0
	ld (hl),h		;61e1
	inc h			;61e2
	inc a			;61e3
	inc (hl)		;61e4
	ld (de),a		;61e5
	ld e,01ah		;61e6
	ld c,00ah		;61e8
	ld c,006h		;61ea
	ld b,006h		;61ec
	nop			;61ee
	nop			;61ef
	nop			;61f0
	nop			;61f1
	nop			;61f2
	nop			;61f3
	nop			;61f4
	nop			;61f5
	nop			;61f6
	nop			;61f7
	nop			;61f8
	nop			;61f9
	ld bc,00101h		;61fa
	inc bc			;61fd
	ld (bc),a		;61fe
	inc bc			;61ff
	inc b			;6200
	rlca			;6201
	ld b,009h		;6202
	rrca			;6204
	rrca			;6205
	ld de,01d1fh		;6206
	ld (03a3eh),hl		;6209
	nop			;620c
	nop			;620d
	nop			;620e
	nop			;620f
	nop			;6210
	nop			;6211
	nop			;6212
	nop			;6213
	nop			;6214
	rrca			;6215
	rrca			;6216
	rrca			;6217
	ld a,03fh		;6218
	inc sp			;621a
sub_621bh:
	ld (hl),h		;621b
	ld a,a			;621c
	ld c,a			;621d
	ld sp,hl		;621e
l621fh:
	rst 38h			;621f
	sbc a,a			;6220
	jp po,l62ffh		;6221
	ld b,d			;6224
	ld a,(hl)		;6225
	ld (hl),d		;6226
	sbc a,h			;6227
	call pe,sub_7cech	;6228
	ld d,h			;622b
	ld d,h			;622c
	cp 0feh			;622d
	cp 087h			;622f
	ei			;6231
	ex (sp),hl		;6232
	cp a			;6233
	rst 38h			;6234
	rst 38h			;6235
	ld b,b			;6236
	rst 38h			;6237
	call m,0ff7fh		;6238
	ld a,a			;623b
	nop			;623c
	nop			;623d
	nop			;623e
	nop			;623f
	nop			;6240
	nop			;6241
	nop			;6242
	nop			;6243
	nop			;6244
	nop			;6245
	nop			;6246
	nop			;6247
	call m,0fcfch		;6248
	adc a,h			;624b
	call p,0f48ch		;624c
	add a,h			;624f
	adc a,h			;6250
	call m,0fcfch		;6251
	rst 38h			;6254
	call nz,sub_7fc4h	;6255
	ld a,a			;6258
	ld a,a			;6259
	nop			;625a
	nop			;625b
	nop			;625c
	nop			;625d
	nop			;625e
	nop			;625f
	nop			;6260
	nop			;6261
	nop			;6262
	nop			;6263
	nop			;6264
	nop			;6265
	nop			;6266
	nop			;6267
	nop			;6268
	nop			;6269
	nop			;626a
	nop			;626b
	rst 38h			;626c
	rrca			;626d
	rrca			;626e
	ret m			;626f
	ret m			;6270
	ret m			;6271
	ret m			;6272
	ret m			;6273
	ret m			;6274
	ret pe			;6275
	sbc a,b			;6276
	adc a,b			;6277
	ld c,b			;6278
	ld a,b			;6279
	ld c,b			;627a
	inc h			;627b
	inc a			;627c
	inc (hl)		;627d
	inc e			;627e
	inc d			;627f
	inc e			;6280
	inc c			;6281
	inc c			;6282
	inc c			;6283
	nop			;6284
	nop			;6285
	nop			;6286
	nop			;6287
	nop			;6288
	nop			;6289
	nop			;628a
	nop			;628b
	nop			;628c
	nop			;628d
	nop			;628e
	nop			;628f
	nop			;6290
	nop			;6291
	nop			;6292
	ld bc,00101h		;6293
	rrca			;6296
	rrca			;6297
	rrca			;6298
	dec a			;6299
	ccf			;629a
	inc sp			;629b
	inc c			;629c
	inc c			;629d
	inc c			;629e
	inc e			;629f
	inc d			;62a0
	inc e			;62a1
	inc h			;62a2
	inc a			;62a3
	inc (hl)		;62a4
l62a5h:
	ld c,b			;62a5
	ld a,b			;62a6
	ld l,b			;62a7
	adc a,b			;62a8
	ret m			;62a9
	ret pe			;62aa
	jr l62a5h		;62ab
	ret c			;62ad
	call m,0ecech		;62ae
	ld a,a			;62b1
	rst 38h			;62b2
	rst 38h			;62b3
	ld a,d			;62b4
	ld a,a			;62b5
	ld b,a			;62b6
	call po,09fffh		;62b7
	rst 38h			;62ba
	ret z			;62bb
	ret z			;62bc
	ccf			;62bd
	ccf			;62be
	ccf			;62bf
	inc bc			;62c0
	ld (bc),a		;62c1
	ld (bc),a		;62c2
	ld bc,00101h		;62c3
	nop			;62c6
	nop			;62c7
	nop			;62c8
	nop			;62c9
	nop			;62ca
	nop			;62cb
	adc a,c			;62cc
	cp 0f9h			;62cd
	rst 38h			;62cf
	rst 38h			;62d0
	rst 38h			;62d1
	ret p			;62d2
	jr nc,$+50		;62d3
	ret p			;62d5
	ret p			;62d6
	ret p			;62d7
l62d8h:
	ret p			;62d8
	jr nc,$+50		;62d9
	sub b			;62db
	ret p			;62dc
	ret nc			;62dd
	ld (hl),b		;62de
	ld d,b			;62df
	ld (hl),b		;62e0
	jr nc,l6313h		;62e1
	jr nc,l62e5h		;62e3
l62e5h:
	nop			;62e5
	nop			;62e6
	nop			;62e7
	nop			;62e8
	nop			;62e9
	nop			;62ea
	nop			;62eb
	nop			;62ec
	jr nz,l630fh		;62ed
	jr nz,l6361h		;62ef
	ld d,b			;62f1
	ld (hl),b		;62f2
	or b			;62f3
	ret nc			;62f4
	ret nc			;62f5
	jr nz,l62d8h		;62f6
	and b			;62f8
	call m,03c3ch		;62f9
	ld e,01fh		;62fc
	inc de			;62fe
l62ffh:
	inc a			;62ff
	ccf			;6300
	daa			;6301
	inc hl			;6302
	dec a			;6303
	ld hl,01e1fh		;6304
	ld e,001h		;6307
	ld bc,00001h		;6309
	nop			;630c
	nop			;630d
	nop			;630e
l630fh:
	nop			;630f
	nop			;6310
	nop			;6311
	nop			;6312
l6313h:
	nop			;6313
	sub (hl)		;6314
	ld a,d			;6315
	halt			;6316
	call m,0fcfch		;6317
	ret po			;631a
	and b			;631b
	and b			;631c
	ret nz			;631d
	ld b,b			;631e
	ld b,b			;631f
	ld b,b			;6320
	ret nz			;6321
	ld b,b			;6322
	ret nz			;6323
	add a,b			;6324
	ret nz			;6325
	nop			;6326
	nop			;6327
	nop			;6328
	nop			;6329
	nop			;632a
	nop			;632b
	ld (bc),a		;632c
	nop			;632d
	ld (bc),a		;632e
	nop			;632f
	ld b,004h		;6330
	djnz $+30		;6332
	jr l633ah		;6334
	nop			;6336
	nop			;6337
	ld h,l			;6338
	ld a,(hl)		;6339
l633ah:
	rra			;633a
	ld c,07ah		;633b
	ld a,(bc)		;633d
	jr nz,l636ch		;633e
	jr z,l6346h		;6340
	nop			;6342
	inc b			;6343
	nop			;6344
	nop			;6345
l6346h:
	nop			;6346
	ld (bc),a		;6347
	nop			;6348
	ld (bc),a		;6349
	nop			;634a
	inc b			;634b
	inc b			;634c
	inc h			;634d
	ccf			;634e
	ld e,028h		;634f
	inc e			;6351
	ex af,af'		;6352
	inc b			;6353
	nop			;6354
	inc b			;6355
	nop			;6356
	nop			;6357
	nop			;6358
	nop			;6359
	nop			;635a
	nop			;635b
	nop			;635c
	nop			;635d
	nop			;635e
	nop			;635f
	nop			;6360
l6361h:
	nop			;6361
	inc b			;6362
	nop			;6363
	inc b			;6364
	djnz l6385h		;6365
	ld a,(bc)		;6367
	ex af,af'		;6368
	inc c			;6369
	ex af,af'		;636a
	nop			;636b
l636ch:
	nop			;636c
	nop			;636d
	nop			;636e
	nop			;636f
	nop			;6370
	nop			;6371
	nop			;6372
	nop			;6373
	inc c			;6374
	inc c			;6375
	inc c			;6376
	ld e,01ah		;6377
	ld (de),a		;6379
	ld d,01eh		;637a
	ld a,(de)		;637c
	ld d,01eh		;637d
	ld a,(de)		;637f
	rla			;6380
	rra			;6381
	rra			;6382
	cpl			;6383
	ccf			;6384
l6385h:
	add hl,sp		;6385
	dec hl			;6386
	dec a			;6387
	add hl,sp		;6388
	cpl			;6389
	ccf			;638a
	scf			;638b
	nop			;638c
	nop			;638d
	nop			;638e
	nop			;638f
	nop			;6390
l6391h:
	nop			;6391
	nop			;6392
	nop			;6393
	nop			;6394
	nop			;6395
	nop			;6396
	nop			;6397
	nop			;6398
	nop			;6399
	nop			;639a
	nop			;639b
	nop			;639c
	nop			;639d
	rrca			;639e
	rrca			;639f
	rrca			;63a0
	ld (hl),b		;63a1
	ld a,a			;63a2
	ld a,a			;63a3
	ld hl,(0323eh)		;63a4
	ld hl,(0323eh)		;63a7
	ld d,a			;63aa
	ld a,a			;63ab
	ld h,a			;63ac
	ld e,a			;63ad
	ld a,a			;63ae
	ld l,c			;63af
	ld e,e			;63b0
	ld a,l			;63b1
	ld l,c			;63b2
	and a			;63b3
	rst 38h			;63b4
	rst 0			;63b5
	ld e,d			;63b6
	cp 09ah			;63b7
	xor 0feh		;63b9
	or 003h			;63bb
	inc bc			;63bd
	inc bc			;63be
	inc c			;63bf
	rrca			;63c0
	rrca			;63c1
	inc de			;63c2
	rra			;63c3
	ld e,02fh		;63c4
	ccf			;63c6
	ld sp,l7f51h		;63c7
	ld b,c			;63ca
	rst 0			;63cb
	cp b			;63cc
	add a,b			;63cd
	rst 38h			;63ce
	add a,a			;63cf
	add a,a			;63d0
	ret m			;63d1
	rst 38h			;63d2
	ret m			;63d3
	adc a,a			;63d4
	rst 38h			;63d5
	ret m			;63d6
	ld (hl),h		;63d7
	rst 38h			;63d8
	add a,h			;63d9
	rst 0			;63da
	call m,01f04h		;63db
	ex (sp),hl		;63de
	inc bc			;63df
	call m,01c1fh		;63e0
	rst 20h			;63e3
	rst 38h			;63e4
	and 01ah		;63e5
	rst 38h			;63e7
	inc c			;63e8
	rst 28h			;63e9
	ret m			;63ea
	jr l6391h		;63eb
	call m,sub_7c44h	;63ed
	cp h			;63f0
	inc a			;63f1
	call po,sub_647ch	;63f2
	or 0feh			;63f5
	jp m,0fefeh		;63f7
	jp z,0febah		;63fa
	ld hl,(03fffh)		;63fd
	daa			;6400
	defb 0fdh,0ffh,0cdh ;illegal sequence	;6401
	ld bc,00101h		;6404
	ld c,00fh		;6407
	ld c,01dh		;6409
	rla			;640b
	inc d			;640c
	add hl,hl		;640d
	ccf			;640e
	jr z,l646bh		;640f
	ld a,a			;6411
	ld l,c			;6412
	ld (hl),d		;6413
	ld a,a			;6414
	ld d,c			;6415
	sub 0ffh		;6416
	sub c			;6418
	and a			;6419
	rst 38h			;641a
	and b			;641b
	rlca			;641c
	rst 38h			;641d
	nop			;641e
	ret m			;641f
	rst 38h			;6420
	rlca			;6421
	ccf			;6422
	rst 38h			;6423
	ret nz			;6424
	ccf			;6425
	rst 38h			;6426
	adc a,07fh		;6427
	ld sp,hl		;6429
	sbc a,c			;642a
	ld e,l			;642b
	jp p,0d592h		;642c
	jp m,0d712h		;642f
	ret m			;6432
	djnz l6454h		;6433
	rst 38h			;6435
	rst 20h			;6436
	ccf			;6437
	ccf			;6438
	ret nz			;6439
	rst 38h			;643a
	rst 38h			;643b
	jp 09f9fh		;643c
	ld h,h			;643f
	ret m			;6440
	rst 38h			;6441
	ld l,b			;6442
	rst 38h			;6443
	rst 38h			;6444
	adc a,a			;6445
	rst 38h			;6446
	rst 38h			;6447
	adc a,b			;6448
	push af			;6449
	rst 38h			;644a
	sub d			;644b
	rst 30h			;644c
	defb 0fdh,03dh,0cfh ;illegal sequence	;644d
	rst 38h			;6450
	di			;6451
	dec sp			;6452
	rst 38h			;6453
l6454h:
	rst 0			;6454
	pop af			;6455
	rst 38h			;6456
	adc a,a			;6457
	rst 0			;6458
	rst 38h			;6459
	ld a,c			;645a
	dec l			;645b
	rst 38h			;645c
	ld sp,0bfedh		;645d
	or c			;6460
	exx			;6461
	rst 38h			;6462
	ld d,c			;6463
	defb 0edh ;next byte illegal after ed	;6464
	cp a			;6465
	and d			;6466
	defb 0edh ;next byte illegal after ed	;6467
	cp a			;6468
	and d			;6469
	ld l,a			;646a
l646bh:
	ld e,a			;646b
	ld b,b			;646c
	ld e,e			;646d
	ld l,a			;646e
	ld b,h			;646f
	ld e,e			;6470
	ld (hl),h		;6471
	ld b,b			;6472
	ld e,(hl)		;6473
	ld a,a			;6474
	ld b,b			;6475
	or (hl)			;6476
	rst 38h			;6477
	xor b			;6478
	cp a			;6479
	ret pe			;647a
	add a,b			;647b
sub_647ch:
	sbc a,d			;647c
	defb 0fdh,010h,09dh ;illegal sequence	;647d
	rst 28h			;6480
	ex af,af'		;6481
	ccf			;6482
	rst 8			;6483
	add hl,bc		;6484
	ld a,a			;6485
	add a,(hl)		;6486
	ld b,0bch		;6487
	ld b,e			;6489
	nop			;648a
	ld a,d			;648b
	add a,a			;648c
	ld bc,08f72h		;648d
	nop			;6490
	pop af			;6491
	ld c,000h		;6492
	xor 0ffh		;6494
	and c			;6496
	xor 0ffh		;6497
	and c			;6499
	xor 0bfh		;649a
	ld hl,0ff46h		;649c
	ld b,c			;649f
	ld h,a			;64a0
	rst 18h			;64a1
	ld b,b			;64a2
	ld h,c			;64a3
	rst 18h			;64a4
	ld b,b			;64a5
	ld (hl),b		;64a6
	rst 8			;64a7
	ld b,b			;64a8
	ld a,a			;64a9
	jp 0f143h		;64aa
	rst 18h			;64ad
	ld d,c			;64ae
	di			;64af
	defb 0fdh,031h,076h ;illegal sequence	;64b0
	jp m,07eb2h		;64b3
	jp p,0aeb2h		;64b6
	jp p,l7c22h		;64b9
	call po,0fc64h		;64bc
	call pe,0dcech		;64bf
	call pe,0bccch		;64c2
	rst 38h			;64c5
	add a,b			;64c6
	xor h			;64c7
	rst 38h			;64c8
	sub b			;64c9
	adc a,h			;64ca
	rst 38h			;64cb
	or b			;64cc
	add a,h			;64cd
	rst 38h			;64ce
	cp b			;64cf
	ld d,e			;64d0
	ld a,a			;64d1
	ld c,h			;64d2
	ccf			;64d3
	ccf			;64d4
	ccf			;64d5
	ld a,d			;64d6
	ld a,d			;64d7
	ld a,a			;64d8
	ld (hl),a		;64d9
	ld (hl),a		;64da
	ld e,a			;64db
	or 009h			;64dc
	nop			;64de
	call m,00003h		;64df
	pop af			;64e2
	rrca			;64e3
	ld bc,0ff0fh		;64e4
	rrca			;64e7
	defb 0fdh,0fdh,03fh ;illegal sequence	;64e8
	rst 20h			;64eb
	rst 38h			;64ec
	rst 0			;64ed
	rst 38h			;64ee
	rst 38h			;64ef
	rst 38h			;64f0
	sbc a,a			;64f1
	defb 0fdh,01fh,0feh ;illegal sequence	;64f2
	cp 0ffh			;64f5
	defb 0fdh,0f8h,0fah ;illegal sequence	;64f7
	push af			;64fa
	ret m			;64fb
	ld d,d			;64fc
	ld (hl),a		;64fd
	ei			;64fe
	ld d,e			;64ff
	rst 38h			;6500
	rst 38h			;6501
	cp 0ffh			;6502
	rst 38h			;6504
	ld a,b			;6505
	ld a,h			;6506
	rst 38h			;6507
	ld b,b			;6508
	ld h,a			;6509
	ret m			;650a
	ld h,b			;650b
	call p,0547ch		;650c
	ld (hl),h		;650f
	ld a,h			;6510
	call nc,0fcf4h		;6511
	call p,0fcech		;6514
	xor h			;6517
	xor b			;6518
	ret m			;6519
	jr z,l6588h		;651a
	cp h			;651c
	inc l			;651d
	call m,0445ch		;651e
	call pe,0c4d4h		;6521
	cp a			;6524
	rst 38h			;6525
	rst 38h			;6526
	or 0f7h			;6527
	cp h			;6529
	rst 38h			;652a
	rst 38h			;652b
	cp a			;652c
	exx			;652d
	rst 38h			;652e
	or c			;652f
	rst 8			;6530
	rst 38h			;6531
	sbc a,a			;6532
	exx			;6533
	rst 38h			;6534
	add a,(hl)		;6535
	ld h,a			;6536
	ld a,b			;6537
	ld b,b			;6538
	ld h,a			;6539
	ld a,b			;653a
	ld b,b			;653b
	rst 38h			;653c
	ei			;653d
	rst 38h			;653e
	ld e,a			;653f
	rst 18h			;6540
	ld a,a			;6541
	rst 38h			;6542
	rst 38h			;6543
	cp 0feh			;6544
	rst 38h			;6546
	ret m			;6547
	ret c			;6548
	rst 38h			;6549
	ret po			;654a
	or c			;654b
	rst 8			;654c
	ld b,c			;654d
	pop bc			;654e
	ccf			;654f
	ld bc,l7f89h		;6550
	dec b			;6553
	rst 38h			;6554
	rst 38h			;6555
	sbc a,a			;6556
	adc a,0ffh		;6557
	ex af,af'		;6559
	adc a,c			;655a
	cp 008h			;655b
	rst 8			;655d
	ld sp,hl		;655e
	ret			;655f
	rst 20h			;6560
	cp a			;6561
	and a			;6562
	or (hl)			;6563
	ld e,(hl)		;6564
	ld d,d			;6565
	or 01eh			;6566
	ld (de),a		;6568
	ld e,h			;6569
	cp h			;656a
	inc d			;656b
	ld a,b			;656c
	ret z			;656d
	ld c,b			;656e
	call pe,0ecfch		;656f
	cp h			;6572
	cp h			;6573
	and h			;6574
	inc l			;6575
	inc (hl)		;6576
	inc h			;6577
	inc a			;6578
	inc l			;6579
	inc l			;657a
	jr c,l65b5h		;657b
	jr z,$+58		;657d
	jr c,l65b9h		;657f
l6581h:
	nop			;6581
	nop			;6582
	nop			;6583
	ld h,a			;6584
	ld a,b			;6585
	ld b,b			;6586
	scf			;6587
l6588h:
	jr c,l65aah		;6588
	inc sp			;658a
	inc a			;658b
	jr nz,l65a7h		;658c
	ld e,010h		;658e
	inc c			;6590
	rrca			;6591
	ex af,af'		;6592
	rlca			;6593
	rlca			;6594
	inc b			;6595
	inc bc			;6596
	inc bc			;6597
	inc bc			;6598
	nop			;6599
	nop			;659a
	nop			;659b
	sub l			;659c
	ld a,a			;659d
	add hl,bc		;659e
	ret			;659f
	ccf			;65a0
	ld bc,01ee1h		;65a1
	nop			;65a4
	cp 001h			;65a5
l65a7h:
	nop			;65a7
	ld a,c			;65a8
	add a,a			;65a9
l65aah:
	nop			;65aa
	rlca			;65ab
	rst 38h			;65ac
	ld bc,0fefeh		;65ad
	ld b,0f8h		;65b0
	ret m			;65b2
	ret m			;65b3
	cp h			;65b4
l65b5h:
	call m,0f814h		;65b5
	ret m			;65b8
l65b9h:
	xor b			;65b9
	ret p			;65ba
	ret p			;65bb
	ret nc			;65bc
	ld h,b			;65bd
	ret po			;65be
	jr nz,l6581h		;65bf
	ret nz			;65c1
	ld b,b			;65c2
	add a,b			;65c3
	add a,b			;65c4
	add a,b			;65c5
	nop			;65c6
	nop			;65c7
	nop			;65c8
	nop			;65c9
	nop			;65ca
	nop			;65cb
	inc a			;65cc
	inc a			;65cd
	inc a			;65ce
	inc l			;65cf
	inc h			;65d0
	inc a			;65d1
	inc a			;65d2
	inc a			;65d3
	inc a			;65d4
	inc l			;65d5
	inc (hl)		;65d6
	inc (hl)		;65d7
	inc l			;65d8
	inc (hl)		;65d9
	inc (hl)		;65da
	inc l			;65db
	inc (hl)		;65dc
	inc (hl)		;65dd
	inc l			;65de
	inc (hl)		;65df
	inc (hl)		;65e0
	ld l,032h		;65e1
	ld (0322eh),a		;65e3
	ld (0322eh),a		;65e6
	ld (03a26h),a		;65e9
	ld a,(03a26h)		;65ec
	ld a,(03927h)		;65ef
	add hl,sp		;65f2
	daa			;65f3
	add hl,sp		;65f4
	add hl,sp		;65f5
	daa			;65f6
	add hl,sp		;65f7
	add hl,sp		;65f8
	daa			;65f9
	add hl,sp		;65fa
	add hl,sp		;65fb
	inc hl			;65fc
	dec a			;65fd
	dec a			;65fe
	inc hl			;65ff
	inc a			;6600
	inc a			;6601
	inc hl			;6602
	inc a			;6603
	inc a			;6604
	inc hl			;6605
	inc a			;6606
	inc a			;6607
	inc sp			;6608
	inc l			;6609
	inc l			;660a
	inc sp			;660b
	inc l			;660c
	inc l			;660d
	rra			;660e
	ld de,01f11h		;660f
	rra			;6612
	rra			;6613
	nop			;6614
	nop			;6615
	nop			;6616
	nop			;6617
	nop			;6618
	nop			;6619
	nop			;661a
	nop			;661b
l661ch:
	nop			;661c
	nop			;661d
	nop			;661e
	nop			;661f
	ld bc,00101h		;6620
	ld bc,00101h		;6623
	ld bc,00101h		;6626
	ld (bc),a		;6629
	inc bc			;662a
	inc bc			;662b
	dec sp			;662c
	inc a			;662d
	inc a			;662e
	ld e,a			;662f
	ld h,a			;6630
	ld h,a			;6631
	add a,b			;6632
	rst 38h			;6633
	rst 38h			;6634
	adc a,a			;6635
	rst 38h			;6636
	rst 38h			;6637
	ccf			;6638
	rst 38h			;6639
	rst 38h			;663a
	jr c,$+1		;663b
	rst 38h			;663d
	ld (hl),e		;663e
	rst 38h			;663f
	rst 38h			;6640
	ld h,(hl)		;6641
	rst 38h			;6642
	cp 0c0h			;6643
	ret nz			;6645
	ret nz			;6646
	ret po			;6647
	jr nz,l666ah		;6648
	jr nc,l661ch		;664a
	ret nc			;664c
	ret m			;664d
	ret pe			;664e
	ret pe			;664f
	ret m			;6650
	ret m			;6651
	ret m			;6652
	inc e			;6653
	call p,0ecf4h		;6654
	call m,014fch		;6657
	call m,0001ch		;665a
	nop			;665d
	nop			;665e
	nop			;665f
	nop			;6660
	nop			;6661
	nop			;6662
	nop			;6663
	nop			;6664
	nop			;6665
	nop			;6666
	nop			;6667
	ld a,a			;6668
	ld a,a			;6669
l666ah:
	ld a,a			;666a
	ld (hl),b		;666b
	ld e,a			;666c
	ld a,a			;666d
	ld e,a			;666e
	ld d,b			;666f
	ld (hl),b		;6670
	ld a,a			;6671
	ld a,a			;6672
	ld a,a			;6673
	ld (bc),a		;6674
	inc bc			;6675
	inc bc			;6676
	ld (bc),a		;6677
	inc bc			;6678
	inc bc			;6679
	ld b,007h		;667a
	rlca			;667c
	ld a,(de)		;667d
	rra			;667e
	rra			;667f
	jp po,0ffffh		;6680
	ld bc,0ffffh		;6683
	rst 38h			;6686
	ld bc,0ff01h		;6687
	pop af			;668a
	pop af			;668b
	inc h			;668c
	rst 38h			;668d
	call m,0bfc8h		;668e
	cp b			;6691
	ret z			;6692
	rst 38h			;6693
	ei			;6694
	ret z			;6695
	rst 38h			;6696
	ei			;6697
	ret nc			;6698
	rst 38h			;6699
	ret p			;669a
	ld d,b			;669b
	rst 38h			;669c
	call p,0ff51h		;669d
	call p,0ff13h		;66a0
	call p,0fa0eh		;66a3
	ld a,(bc)		;66a6
	ld a,(bc)		;66a7
	cp 00eh			;66a8
	ld b,0feh		;66aa
	ld b,007h		;66ac
	rst 38h			;66ae
	rlca			;66af
	ld b,0ffh		;66b0
	rlca			;66b2
	jp nz,003ffh		;66b3
	ex (sp),hl		;66b6
	cp 002h			;66b7
	di			;66b9
	rst 38h			;66ba
	inc bc			;66bb
	nop			;66bc
	nop			;66bd
	nop			;66be
	nop			;66bf
	nop			;66c0
	nop			;66c1
	nop			;66c2
	nop			;66c3
	nop			;66c4
	nop			;66c5
	nop			;66c6
	nop			;66c7
	cp 0feh			;66c8
	cp 00eh			;66ca
	jp m,0fafeh		;66cc
	ld a,(bc)		;66cf
	ld c,0feh		;66d0
	cp 0feh			;66d2
	rrca			;66d4
	dec c			;66d5
	dec c			;66d6
	inc bc			;66d7
	ld (bc),a		;66d8
	ld (bc),a		;66d9
	inc bc			;66da
	ld (bc),a		;66db
	ld (bc),a		;66dc
	ld bc,00101h		;66dd
	ld bc,00101h		;66e0
	nop			;66e3
	nop			;66e4
sub_66e5h:
	nop			;66e5
	nop			;66e6
	nop			;66e7
	nop			;66e8
	nop			;66e9
	nop			;66ea
	nop			;66eb
	inc de			;66ec
	rst 38h			;66ed
	call p,0bf57h		;66ee
	or b			;66f1
	rst 10h			;66f2
	ld a,a			;66f3
	ld (hl),b		;66f4
	push de			;66f5
	ld a,a			;66f6
	ld (hl),d		;66f7
	rst 10h			;66f8
	ld a,a			;66f9
	ld (hl),b		;66fa
	ex de,hl		;66fb
	rst 38h			;66fc
	ret m			;66fd
	ld l,d			;66fe
	ld a,a			;66ff
	ld a,c			;6700
	ld l,e			;6701
	ld a,a			;6702
	ld a,b			;6703
	jp p,002feh		;6704
	jp m,002feh		;6707
	jp m,002feh		;670a
	jp m,002feh		;670d
	jp m,002feh		;6710
	jp m,002feh		;6713
	call p,004fch		;6716
	call p,004fch		;6719
	dec (hl)		;671c
	ccf			;671d
	inc a			;671e
	dec (hl)		;671f
	ccf			;6720
l6721h:
	inc a			;6721
	ld a,(02e2fh)		;6722
	dec a			;6725
	daa			;6726
	daa			;6727
	cpl			;6728
	inc sp			;6729
	inc sp			;672a
	ld l,032h		;672b
	ld (03a26h),a		;672d
	ld a,(0342ch)		;6730
	inc (hl)		;6733
	call p,004fch		;6734
	ret pe			;6737
	ret m			;6738
	ex af,af'		;6739
	ret pe			;673a
	ret m			;673b
	ex af,af'		;673c
	djnz $-14		;673d
	djnz l6721h		;673f
	ret po			;6741
	ret po			;6742
	nop			;6743
	nop			;6744
	nop			;6745
	nop			;6746
	nop			;6747
	nop			;6748
	nop			;6749
	nop			;674a
	nop			;674b
	inc l			;674c
	inc (hl)		;674d
	inc (hl)		;674e
	inc l			;674f
	inc (hl)		;6750
	inc (hl)		;6751
	inc l			;6752
l6753h:
	inc (hl)		;6753
	inc (hl)		;6754
	jr z,l678fh		;6755
	jr c,$+58		;6757
	jr z,l6783h		;6759
	jr c,$+58		;675b
	jr c,l6797h		;675d
	jr z,$+58		;675f
	jr c,l679bh		;6761
	jr c,l6753h		;6763
	rst 38h			;6765
	and c			;6766
	xor 0ffh		;6767
	and c			;6769
	xor 0bfh		;676a
	ld hl,0ff46h		;676c
	ld b,c			;676f
	ld h,a			;6770
	rst 18h			;6771
	ld b,b			;6772
	ld h,c			;6773
	rst 18h			;6774
	ld b,b			;6775
	ld (hl),b		;6776
	rst 8			;6777
	ld b,b			;6778
	ld a,a			;6779
	jp nz,0f143h		;677a
	rst 18h			;677d
	ld d,c			;677e
	di			;677f
	defb 0fdh,031h,076h ;illegal sequence	;6780
l6783h:
	jp m,07eb2h		;6783
	jp p,0aeb2h		;6786
	jp p,l7c22h		;6789
	call nz,0ec74h		;678c
l678fh:
	inc d			;678f
	call m,038c4h		;6790
	call m,0fcffh		;6793
	rst 38h			;6796
l6797h:
	defb 0fdh,0f8h,0fbh ;illegal sequence	;6797
	push af			;679a
l679bh:
	ret m			;679b
	ld d,e			;679c
	ld (hl),a		;679d
	ei			;679e
	ld d,e			;679f
	rst 38h			;67a0
	rst 38h			;67a1
	cp 0ffh			;67a2
	rst 38h			;67a4
	ld a,b			;67a5
	ld a,h			;67a6
	rst 38h			;67a7
	ld b,b			;67a8
	ld h,a			;67a9
	ret m			;67aa
	ld h,b			;67ab
	ld l,0d0h		;67ac
	cp 07ch			;67ae
	add a,h			;67b0
	call m,sub_6c94h	;67b1
	call p,sub_6c9ch	;67b4
	call m,098e8h		;67b7
	ld l,b			;67ba
	ld l,h			;67bb
	cp h			;67bc
	inc l			;67bd
	call m,0445ch		;67be
	call pe,0c4d4h		;67c1
	xor 0ffh		;67c4
	and c			;67c6
	xor 0ffh		;67c7
	and c			;67c9
	xor 0bfh		;67ca
	ld hl,0ff46h		;67cc
	ld b,c			;67cf
	ld l,a			;67d0
	out (04ch),a		;67d1
	ld l,a			;67d3
	pop de			;67d4
	ld c,(hl)		;67d5
	ld a,a			;67d6
	ret nz			;67d7
	ld e,a			;67d8
	ld a,a			;67d9
	ret nz			;67da
	ld e,a			;67db
	pop af			;67dc
	rst 18h			;67dd
	ld d,c			;67de
	rst 30h			;67df
	ret m			;67e0
	scf			;67e1
	ld a,a			;67e2
	ret po			;67e3
	cp a			;67e4
	ld a,(hl)		;67e5
	pop bc			;67e6
	cp a			;67e7
	ret p			;67e8
	rrca			;67e9
	rst 38h			;67ea
	ex (sp),hl		;67eb
	inc e			;67ec
	rst 38h			;67ed
	ret nz			;67ee
	ccf			;67ef
	rst 38h			;67f0
	nop			;67f1
	rst 38h			;67f2
	rst 38h			;67f3
	call m,0ffe3h		;67f4
	call m,0ffe3h		;67f7
	ret m			;67fa
	rst 0			;67fb
	ld e,a			;67fc
	ld (hl),d		;67fd
	call 0f87fh		;67fe
	rst 0			;6801
	rst 38h			;6802
	ret m			;6803
	rst 0			;6804
	ld a,a			;6805
	ld a,b			;6806
	rst 0			;6807
	ld a,a			;6808
	ld a,h			;6809
	jp 0fc7fh		;680a
	jp 0fcbfh		;680d
	jp 08e3fh		;6810
	pop af			;6813
	rrca			;6814
	adc a,0f9h		;6815
	rst 8			;6817
	rst 20h			;6818
	cp b			;6819
	and a			;681a
	or a			;681b
	ld e,h			;681c
	ld d,e			;681d
	rst 30h			;681e
	ld e,013h		;681f
	ld e,l			;6821
	cp h			;6822
	dec d			;6823
	xor 0ffh		;6824
	and c			;6826
	cp 0cfh			;6827
	or c			;6829
	xor 097h		;682a
	ld a,c			;682c
	add a,a			;682d
	ld a,d			;682e
	defb 0fdh,087h,07bh ;illegal sequence	;682f
	call m,09b65h		;6832
	ld a,h			;6835
	ld a,b			;6836
	rst 0			;6837
	ld a,b			;6838
	ld a,a			;6839
	jp 0f943h		;683a
	rst 0			;683d
	ld e,c			;683e
	rst 30h			;683f
	adc a,c			;6840
	ld a,l			;6841
	jp po,0fe1ch		;6842
	sub a			;6845
	ld l,b			;6846
	rst 38h			;6847
	cp (hl)			;6848
	ld b,d			;6849
	cp 0cch			;684a
	inc (hl)		;684c
	call m,0b4cch		;684d
	call m,0ccfch		;6850
	call m,0f1ffh		;6853
	rst 38h			;6856
	rst 38h			;6857
	ret po			;6858
	rst 38h			;6859
	ret p			;685a
	rst 8			;685b
	ld a,a			;685c
	ld h,b			;685d
	rst 18h			;685e
	ld a,a			;685f
	ret po			;6860
	rst 18h			;6861
	rst 38h			;6862
l6863h:
	ret p			;6863
	rst 8			;6864
	ld a,a			;6865
	ld (hl),e		;6866
	call z,sub_6f7fh	;6867
	ret p			;686a
	ld l,(hl)		;686b
	call p,0d4fch		;686c
	call p,0d47ch		;686f
	call p,0f47ch		;6872
	call pe,0ec3ch		;6875
	ret pe			;6878
	jr c,l6863h		;6879
	call pe,0ac3ch		;687b
	call m,0c45ch		;687e
	call pe,0c4d4h		;6881
	xor 0ffh		;6884
	and c			;6886
	xor 0ffh		;6887
	and c			;6889
	xor 0bfh		;688a
	ld hl,0ff46h		;688c
	ld b,c			;688f
	ld h,a			;6890
	sbc a,041h		;6891
	ld h,e			;6893
	call c,sub_7643h	;6894
	ret			;6897
	ld b,a			;6898
	ld a,a			;6899
	ret nz			;689a
	ld b,e			;689b
	pop af			;689c
	rst 18h			;689d
	ld d,c			;689e
	di			;689f
	defb 0fdh,031h,076h ;illegal sequence	;68a0
	jp m,07eb2h		;68a3
	jp p,0eeb2h		;68a6
	ld (07ce2h),a		;68a9
	add a,h			;68ac
	call po,0cc3ch		;68ad
	call m,08c7ch		;68b0
	call pe,0f8ffh		;68b3
	rst 38h			;68b6
	rst 38h			;68b7
	ret p			;68b8
	rst 38h			;68b9
	rst 38h			;68ba
	ret nz			;68bb
	ld a,a			;68bc
	ld (hl),c		;68bd
	adc a,(hl)		;68be
	ld a,a			;68bf
	ret po			;68c0
	rst 18h			;68c1
	rst 38h			;68c2
	ret po			;68c3
	rst 18h			;68c4
	ld a,a			;68c5
	ld (hl),c		;68c6
	adc a,07fh		;68c7
	ld a,a			;68c9
	ret po			;68ca
	ld a,a			;68cb
	call p,0f41ch		;68cc
	call m,0dc30h		;68cf
	call p,0fc68h		;68d2
	jp p,0be6ch		;68d5
	jp p,0fe2ch		;68d8
	call pe,0ec30h		;68db
	call m,0c45ch		;68de
	call pe,0c454h		;68e1
	ld b,006h		;68e4
	add hl,sp		;68e6
	ccf			;68e7
	ld h,a			;68e8
	ld a,c			;68e9
	sbc a,(hl)		;68ea
	and 0fch		;68eb
	add a,h			;68ed
	ld a,h			;68ee
	ld h,h			;68ef
	ld e,012h		;68f0
	inc c			;68f2
	inc c			;68f3
	ret nz			;68f4
	ret nz			;68f5
	cp h			;68f6
	call m,0fe82h		;68f7
	ld b,d			;68fa
	ld a,(hl)		;68fb
	ld b,a			;68fc
	ld a,c			;68fd
	ld a,a			;68fe
	ld b,c			;68ff
	ccf			;6900
	add hl,sp		;6901
	rlca			;6902
	rlca			;6903
	ld h,b			;6904
	ld h,b			;6905
	ld d,b			;6906
	ld (hl),b		;6907
	ld c,h			;6908
	ld a,h			;6909
	ld h,a			;690a
	ld e,a			;690b
	inc hl			;690c
	ld a,033h		;690d
	ld l,03bh		;690f
	ld h,039h		;6911
l6913h:
	daa			;6913
	ret p			;6914
	djnz l6913h		;6915
	inc c			;6917
	rst 38h			;6918
	inc bc			;6919
	rra			;691a
	ret po			;691b
	rlca			;691c
	ret m			;691d
	ret nz			;691e
	ccf			;691f
	cp 001h			;6920
	call 00033h		;6922
	nop			;6925
	nop			;6926
	nop			;6927
	nop			;6928
	nop			;6929
	ret nz			;692a
	ret nz			;692b
	ret po			;692c
	jr nz,l693fh		;692d
	ret p			;692f
	ld (hl),b		;6930
	sub b			;6931
	ret p			;6932
	ret p			;6933
	inc l			;6934
	inc sp			;6935
	ld l,031h		;6936
	rra			;6938
	djnz l6952h		;6939
	jr l6954h		;693b
	jr l694ah		;693d
l693fh:
	inc c			;693f
	inc b			;6940
	rlca			;6941
	inc bc			;6942
	inc bc			;6943
	cp l			;6944
	jp 0e79bh		;6945
	ld d,h			;6948
	ld l,h			;6949
l694ah:
	ld c,b			;694a
	ld a,b			;694b
	jr z,l6986h		;694c
	jr z,l6988h		;694e
	jr z,l698ah		;6950
l6952h:
	jr c,l698ch		;6952
l6954h:
	ret nz			;6954
	ret nz			;6955
	cp h			;6956
	call m,0f28eh		;6957
	ld b,d			;695a
	ld a,(hl)		;695b
	ld b,a			;695c
l695dh:
	ld a,c			;695d
	ld a,a			;695e
	ld b,c			;695f
	ccf			;6960
	add hl,sp		;6961
	rlca			;6962
	rlca			;6963
	inc c			;6964
	inc c			;6965
	ld (de),a		;6966
	ld e,01eh		;6967
	ld (de),a		;6969
	inc c			;696a
	inc c			;696b
	nop			;696c
	nop			;696d
	nop			;696e
	nop			;696f
	nop			;6970
	nop			;6971
	nop			;6972
	nop			;6973
	inc bc			;6974
	inc bc			;6975
	dec b			;6976
	rlca			;6977
	dec bc			;6978
	dec c			;6979
	rla			;697a
	add hl,de		;697b
	ld h,03ah		;697c
	ld b,(hl)		;697e
	ld a,d			;697f
	adc a,(hl)		;6980
	jp p,0f40ch		;6981
	ld (bc),a		;6984
	inc bc			;6985
l6986h:
	inc b			;6986
	rlca			;6987
l6988h:
	jr c,l69c9h		;6988
l698ah:
	ld b,c			;698a
	ld a,(hl)		;698b
l698ch:
	ld b,a			;698c
	ld a,b			;698d
	ccf			;698e
	daa			;698f
	jr l69aah		;6990
	nop			;6992
	nop			;6993
	inc e			;6994
	call po,0c838h		;6995
	ld (hl),b		;6998
	sub b			;6999
	ret po			;699a
	jr nz,l695dh		;699b
	ret nz			;699d
	nop			;699e
	nop			;699f
	nop			;69a0
	nop			;69a1
	nop			;69a2
	nop			;69a3
	add a,0c6h		;69a4
	xor c			;69a6
	rst 28h			;69a7
	jp (hl)			;69a8
	xor a			;69a9
l69aah:
	ld d,e			;69aa
	ld e,l			;69ab
	inc de			;69ac
	dec e			;69ad
	daa			;69ae
	add hl,sp		;69af
	ld b,a			;69b0
	ld a,c			;69b1
	add a,a			;69b2
	ld sp,hl		;69b3
	ld l,a			;69b4
	ld d,c			;69b5
	ld a,a			;69b6
	ld b,c			;69b7
	ld a,022h		;69b8
	ld a,022h		;69ba
	ld a,026h		;69bc
	inc e			;69be
	inc d			;69bf
	inc e			;69c0
	inc d			;69c1
	inc c			;69c2
	inc c			;69c3
	nop			;69c4
	ld (hl),b		;69c5
	ld (hl),b		;69c6
	ld d,b			;69c7
	ld e,b			;69c8
l69c9h:
	jr z,l6a1bh		;69c9
	sbc a,0aeh		;69cb
	and (hl)		;69cd
	cp c			;69ce
	ld e,c			;69cf
	and (hl)		;69d0
	cp c			;69d1
	ld d,c			;69d2
	ld b,e			;69d3
	call c,023b0h		;69d4
	ld a,h			;69d7
	ld d,b			;69d8
	ex af,af'		;69d9
	scf			;69da
	jr nc,l69ddh		;69db
l69ddh:
	inc bc			;69dd
	inc bc			;69de
	ld bc,00605h		;69df
	ld bc,00605h		;69e2
	ld bc,00605h		;69e5
l69e8h:
	ld (bc),a		;69e8
l69e9h:
	dec de			;69e9
	dec e			;69ea
	inc b			;69eb
	and 0fah		;69ec
	jr l698ch		;69ee
	call po,0f800h		;69f0
	ld a,b			;69f3
	nop			;69f4
	ld a,a			;69f5
	ld a,b			;69f6
	djnz l69e8h		;69f7
	adc a,b			;69f9
	ld h,h			;69fa
	sbc a,e			;69fb
	sbc a,b			;69fc
	ld d,d			;69fd
	xor l			;69fe
	cp h			;69ff
	xor b			;6a00
	ld h,e			;6a01
	ld e,(hl)		;6a02
	sub h			;6a03
	ld (hl),e		;6a04
	ld l,(hl)		;6a05
	ex af,af'		;6a06
	cp e			;6a07
	or 044h			;6a08
	sbc a,a			;6a0a
	jp m,08e21h		;6a0b
	call m,0c710h		;6a0e
	ld a,h			;6a11
	ex af,af'		;6a12
	rst 20h			;6a13
	ccf			;6a14
	add a,l			;6a15
	ld a,h			;6a16
	dec de			;6a17
	ret po			;6a18
	rra			;6a19
	rrca			;6a1a
l6a1bh:
	ret po			;6a1b
	rra			;6a1c
	nop			;6a1d
	ret m			;6a1e
	rlca			;6a1f
	nop			;6a20
	ld a,(hl)		;6a21
	add a,c			;6a22
	nop			;6a23
	add a,b			;6a24
	ld a,(hl)		;6a25
	ld (0de00h),hl		;6a26
	ld a,(hl)		;6a29
	inc h			;6a2a
	adc a,e			;6a2b
	ld sp,hl		;6a2c
	ld b,h			;6a2d
	ld a,e			;6a2e
	cp c			;6a2f
	inc c			;6a30
	di			;6a31
	pop af			;6a32
	ex af,af'		;6a33
	rst 30h			;6a34
	ld sp,0be00h		;6a35
	ld (0fc00h),hl		;6a38
	call m,sub_7800h	;6a3b
	ld a,b			;6a3e
	jr c,l6a85h		;6a3f
	ld a,h			;6a41
	inc b			;6a42
	ld b,d			;6a43
	ld a,(hl)		;6a44
	nop			;6a45
	ld a,c			;6a46
	ld a,a			;6a47
	nop			;6a48
	ld a,c			;6a49
	ld a,a			;6a4a
	ld a,b			;6a4b
	add a,c			;6a4c
	rst 38h			;6a4d
	nop			;6a4e
	add a,e			;6a4f
	rst 38h			;6a50
	nop			;6a51
	ld a,h			;6a52
	ld a,h			;6a53
	nop			;6a54
	ld h,b			;6a55
	ld h,b			;6a56
	jr nz,l69e9h		;6a57
	ret p			;6a59
	ld d,b			;6a5a
	ret z			;6a5b
	cp b			;6a5c
	jr z,l6ac3h		;6a5d
	ld e,h			;6a5f
	inc d			;6a60
	ld (00a2eh),a		;6a61
	add hl,de		;6a64
	rla			;6a65
	inc b			;6a66
	dec c			;6a67
	dec bc			;6a68
	nop			;6a69
	rlca			;6a6a
	rlca			;6a6b
	nop			;6a6c
	nop			;6a6d
	nop			;6a6e
	nop			;6a6f
	nop			;6a70
	nop			;6a71
	nop			;6a72
	inc bc			;6a73
	add a,b			;6a74
	add a,b			;6a75
	nop			;6a76
	nop			;6a77
	nop			;6a78
	nop			;6a79
	nop			;6a7a
	rst 38h			;6a7b
	nop			;6a7c
	nop			;6a7d
	nop			;6a7e
	nop			;6a7f
	nop			;6a80
	nop			;6a81
	ld bc,00007h		;6a82
l6a85h:
	nop			;6a85
	add a,b			;6a86
	add a,b			;6a87
	add a,b			;6a88
	nop			;6a89
	nop			;6a8a
	nop			;6a8b
	nop			;6a8c
	add a,b			;6a8d
	add a,b			;6a8e
	add a,b			;6a8f
	add a,b			;6a90
	add a,b			;6a91
	add a,b			;6a92
	add a,b			;6a93
	nop			;6a94
	nop			;6a95
	ld bc,0df00h		;6a96
	nop			;6a99
	ld a,a			;6a9a
	add a,b			;6a9b
	rst 38h			;6a9c
	nop			;6a9d
	or b			;6a9e
	ld c,a			;6a9f
	nop			;6aa0
	rst 38h			;6aa1
	ld bc,000feh		;6aa2
	nop			;6aa5
	call m,0fe00h		;6aa6
	nop			;6aa9
	call m,0cc00h		;6aaa
	jr nc,l6ac7h		;6aad
	ret po			;6aaf
	call m,0fe00h		;6ab0
	nop			;6ab3
	nop			;6ab4
	rst 38h			;6ab5
	nop			;6ab6
	rst 38h			;6ab7
	nop			;6ab8
	rst 38h			;6ab9
	nop			;6aba
	rst 38h			;6abb
	nop			;6abc
	rst 38h			;6abd
l6abeh:
	nop			;6abe
	rst 38h			;6abf
	nop			;6ac0
	rst 38h			;6ac1
	nop			;6ac2
l6ac3h:
	rst 38h			;6ac3
	rst 38h			;6ac4
	nop			;6ac5
	ccf			;6ac6
l6ac7h:
	ret nz			;6ac7
	nop			;6ac8
	rst 38h			;6ac9
	nop			;6aca
	rst 38h			;6acb
	nop			;6acc
	rst 38h			;6acd
	nop			;6ace
	rst 38h			;6acf
	nop			;6ad0
	rst 38h			;6ad1
	nop			;6ad2
l6ad3h:
	rst 38h			;6ad3
	add a,b			;6ad4
	nop			;6ad5
	ret p			;6ad6
	nop			;6ad7
	inc a			;6ad8
	ret nz			;6ad9
	ld c,0f0h		;6ada
l6adch:
	nop			;6adc
	cp 006h			;6add
	ret m			;6adf
	ld a,a			;6ae0
	add a,b			;6ae1
	ret p			;6ae2
	nop			;6ae3
	nop			;6ae4
	rst 38h			;6ae5
	rra			;6ae6
	ret po			;6ae7
	ret m			;6ae8
	rlca			;6ae9
	ret p			;6aea
	rrca			;6aeb
	rst 38h			;6aec
	nop			;6aed
	rst 38h			;6aee
	nop			;6aef
	ret nz			;6af0
	nop			;6af1
	nop			;6af2
	nop			;6af3
	ccf			;6af4
	ret nz			;6af5
	cp 000h			;6af6
	inc a			;6af8
	ret nz			;6af9
	jr l6adch		;6afa
	ret m			;6afc
	nop			;6afd
	ret p			;6afe
	nop			;6aff
	nop			;6b00
	nop			;6b01
	nop			;6b02
	nop			;6b03
	nop			;6b04
	rst 38h			;6b05
	nop			;6b06
	rst 38h			;6b07
	ld h,e			;6b08
	sbc a,h			;6b09
	ld (hl),c		;6b0a
	adc a,(hl)		;6b0b
	ld a,h			;6b0c
	add a,e			;6b0d
	rst 38h			;6b0e
	nop			;6b0f
	ld sp,hl		;6b10
	jr l6ad3h		;6b11
	nop			;6b13
	ld bc,00f01h		;6b14
	ld c,036h		;6b17
	dec a			;6b19
	ld c,l			;6b1a
	halt			;6b1b
	cp e			;6b1c
	call 09dfbh		;6b1d
	halt			;6b20
	ld a,d			;6b21
	ld d,01ah		;6b22
	ret nz			;6b24
	ret nz			;6b25
	ld (hl),b		;6b26
	ret p			;6b27
	ret z			;6b28
	ld a,b			;6b29
	call p,0fa8ch		;6b2a
	and 01dh		;6b2d
	inc de			;6b2f
	dec c			;6b30
	dec bc			;6b31
	dec c			;6b32
	dec bc			;6b33
	nop			;6b34
	nop			;6b35
	ld c,00eh		;6b36
	ld de,02e1fh		;6b38
	ld sp,06e5fh		;6b3b
	ld (hl),c		;6b3e
	ld d,c			;6b3f
	ld (hl),c		;6b40
	ld (hl),c		;6b41
	ld (bc),a		;6b42
	inc bc			;6b43
	rla			;6b44
	dec de			;6b45
	ld d,01bh		;6b46
	scf			;6b48
	ld a,(0fbd7h)		;6b49
	or (hl)			;6b4c
	jp c,0bd7bh		;6b4d
	ld c,e			;6b50
	call sub_66e5h		;6b51
	ld (bc),a		;6b54
	inc bc			;6b55
	ld h,l			;6b56
	ld h,(hl)		;6b57
	and l			;6b58
	rst 20h			;6b59
	xor e			;6b5a
	defb 0edh ;next byte illegal after ed	;6b5b
	jp c,l6abeh		;6b5c
	ld e,(hl)		;6b5f
	dec sp			;6b60
	cpl			;6b61
	ld a,(de)		;6b62
	rra			;6b63
	dec c			;6b64
	dec bc			;6b65
	ld d,01dh		;6b66
	cpl			;6b68
	ld (hl),02fh		;6b69
	scf			;6b6b
	ld e,l			;6b6c
	ld l,(hl)		;6b6d
	ld e,l			;6b6e
	ld l,(hl)		;6b6f
	ld e,e			;6b70
	ld l,l			;6b71
	ld e,e			;6b72
	ld l,l			;6b73
	ld b,a			;6b74
	ld b,a			;6b75
	and c			;6b76
	pop hl			;6b77
	rst 18h			;6b78
	cp (hl)			;6b79
	ld h,b			;6b7a
	ld e,a			;6b7b
	ccf			;6b7c
	jr nz,$+33		;6b7d
	rra			;6b7f
	nop			;6b80
	nop			;6b81
	nop			;6b82
	nop			;6b83
	sub 0b5h		;6b84
	sub 0b5h		;6b86
	out (0b2h),a		;6b88
	ld e,e			;6b8a
	ld l,e			;6b8b
	ld l,a			;6b8c
	ld d,(hl)		;6b8d
	jr nc,$+49		;6b8e
	rra			;6b90
	djnz $+17		;6b91
	rrca			;6b93
	call c,03bdbh		;6b94
	inc (hl)		;6b97
	ld (hl),a		;6b98
	jp (hl)			;6b99
	adc a,0b2h		;6b9a
	dec a			;6b9c
	call 033fch		;6b9d
	rst 8			;6ba0
	call z,00303h		;6ba1
	adc a,l			;6ba4
	adc a,e			;6ba5
	call sub_764bh		;6ba6
	or (hl)			;6ba9
	sbc a,a			;6baa
	ld l,a			;6bab
	ret po			;6bac
	sbc a,a			;6bad
	ld a,a			;6bae
	ld h,b			;6baf
	rra			;6bb0
	rra			;6bb1
	nop			;6bb2
	nop			;6bb3
	inc bc			;6bb4
	inc bc			;6bb5
	dec c			;6bb6
	rrca			;6bb7
	inc sp			;6bb8
	dec a			;6bb9
	adc a,0f2h		;6bba
	inc a			;6bbc
	call z,030f0h		;6bbd
	ret nz			;6bc0
	ret nz			;6bc1
	nop			;6bc2
	nop			;6bc3
	call 0febah		;6bc4
	sbc a,l			;6bc7
	rst 38h			;6bc8
	or 0ddh			;6bc9
	in a,(c)		;6bcb
	sbc a,b			;6bcd
	ret po			;6bce
	ld h,b			;6bcf
	add a,b			;6bd0
	add a,b			;6bd1
	nop			;6bd2
	nop			;6bd3
	ld h,b			;6bd4
	ld h,b			;6bd5
	ld h,b			;6bd6
	sbc a,b			;6bd7
	sbc a,b			;6bd8
	ret m			;6bd9
	call pe,094ech		;6bda
	ld (hl),h		;6bdd
	ld (hl),h		;6bde
	ld l,h			;6bdf
	ld a,(de)		;6be0
	ld a,(de)		;6be1
	ld d,01ah		;6be2
	ld a,(de)		;6be4
	ld d,03eh		;6be5
	ld a,03eh		;6be7
	jp nz,0defeh		;6be9
	sbc a,e			;6bec
	sbc a,e			;6bed
	sub l			;6bee
	ld (hl),a		;6bef
	ld (hl),a		;6bf0
	ex de,hl		;6bf1
	sbc a,(hl)		;6bf2
	sbc a,a			;6bf3
	ld (hl),a		;6bf4
	call pe,09eefh		;6bf5
	ld a,b			;6bf8
	ld a,a			;6bf9
	ld l,h			;6bfa
	inc sp			;6bfb
	inc a			;6bfc
	jr nc,$-23		;6bfd
	ret m			;6bff
	ret p			;6c00
	rst 8			;6c01
	pop af			;6c02
	ld b,c			;6c03
	inc bc			;6c04
	inc bc			;6c05
	inc bc			;6c06
	push bc			;6c07
	add a,0c4h		;6c08
	ld a,d			;6c0a
	defb 0fdh,0f8h,004h ;illegal sequence	;6c0b
	ei			;6c0e
	nop			;6c0f
	call m,00003h		;6c10
	call m,00003h		;6c13
	rst 38h			;6c16
	ld a,h			;6c17
	ld a,h			;6c18
	rst 38h			;6c19
	cp 0feh			;6c1a
	inc b			;6c1c
	call m,0880ch		;6c1d
	ld a,b			;6c20
	jr l6c40h		;6c21
	defb 0fdh,03dh,01fh ;illegal sequence	;6c23
	rst 30h			;6c26
	scf			;6c27
	rra			;6c28
	ret p			;6c29
	jr nc,l6c3ah		;6c2a
	ld sp,hl		;6c2c
	jr l6cabh		;6c2d
	di			;6c2f
	ld (hl),b		;6c30
	cp 0ffh			;6c31
	cp 00fh			;6c33
l6c35h:
	rrca			;6c35
	rrca			;6c36
	jr nc,l6c69h		;6c37
	ccf			;6c39
l6c3ah:
	rst 8			;6c3a
	rst 8			;6c3b
	ret p			;6c3c
	ccf			;6c3d
	ccf			;6c3e
	rst 8			;6c3f
l6c40h:
	ret p			;6c40
	ret p			;6c41
	ret nc			;6c42
	jr nc,l6c35h		;6c43
	jr nc,l6c66h		;6c45
	rst 38h			;6c47
	rra			;6c48
	nop			;6c49
	rst 38h			;6c4a
	nop			;6c4b
	add a,b			;6c4c
	add a,b			;6c4d
	add a,b			;6c4e
	ld h,b			;6c4f
	ld h,b			;6c50
	ret po			;6c51
	sub b			;6c52
	sub b			;6c53
	ld (hl),b		;6c54
	call m,08cfch		;6c55
	ld (hl),h		;6c58
	ld a,h			;6c59
	ld a,h			;6c5a
	call z,0fcfch		;6c5b
	ld a,(de)		;6c5e
	jp m,03ad6h		;6c5f
	jp m,0d536h		;6c62
	push de			;6c65
l6c66h:
	or a			;6c66
	rst 28h			;6c67
	rst 28h			;6c68
l6c69h:
	rst 18h			;6c69
	ld a,(hl)		;6c6a
	ld a,a			;6c6b
	ld a,(hl)		;6c6c
	ld b,c			;6c6d
	ld a,(hl)		;6c6e
	ld (hl),b		;6c6f
	ld (hl),b		;6c70
	ld a,a			;6c71
	ld a,(hl)		;6c72
	call m,0fdffh		;6c73
	ccf			;6c76
	ccf			;6c77
	rst 38h			;6c78
	rst 38h			;6c79
	ex (sp),hl		;6c7a
	inc hl			;6c7b
	cp a			;6c7c
	jp l7f83h		;6c7d
	add a,a			;6c80
	rlca			;6c81
	rst 38h			;6c82
	rlca			;6c83
	rlca			;6c84
	rst 38h			;6c85
	rrca			;6c86
	rrca			;6c87
	ld a,a			;6c88
	adc a,a			;6c89
	ld c,03fh		;6c8a
	adc a,08dh		;6c8c
	dec c			;6c8e
	call p,08627h		;6c8f
	cp 08fh			;6c92
sub_6c94h:
	rst 38h			;6c94
	rst 38h			;6c95
	ei			;6c96
	rst 38h			;6c97
	ret m			;6c98
	rst 20h			;6c99
	rst 38h			;6c9a
	ret po			;6c9b
sub_6c9ch:
	rst 18h			;6c9c
	rst 18h			;6c9d
	rst 0			;6c9e
	jr c,l6cf9h		;6c9f
	ld c,b			;6ca1
	or a			;6ca2
	rst 18h			;6ca3
	ld c,b			;6ca4
	or a			;6ca5
	cp (hl)			;6ca6
	add a,b			;6ca7
	ld a,a			;6ca8
	ld a,b			;6ca9
	nop			;6caa
l6cabh:
	rst 38h			;6cab
	rst 38h			;6cac
	rst 38h			;6cad
	rst 38h			;6cae
	rst 38h			;6caf
	ld (hl),a		;6cb0
	exx			;6cb1
	sbc a,002h		;6cb2
	defb 0fdh,0feh,000h ;illegal sequence	;6cb4
	rst 38h			;6cb7
	rst 38h			;6cb8
	add a,b			;6cb9
	ld a,a			;6cba
	jp l7f80h		;6cbb
	dec e			;6cbe
	inc e			;6cbf
	rst 38h			;6cc0
	cp (hl)			;6cc1
	ld a,0e3h		;6cc2
	add a,a			;6cc4
	ret m			;6cc5
	add a,b			;6cc6
	rst 38h			;6cc7
	ret nz			;6cc8
	ret nz			;6cc9
	cp 0c1h			;6cca
	ld b,c			;6ccc
	cp 0e1h			;6ccd
	ld h,b			;6ccf
	call m,0a263h		;6cd0
	ld sp,hl		;6cd3
	daa			;6cd4
	push hl			;6cd5
	pop af			;6cd6
	cpl			;6cd7
	jp (hl)			;6cd8
	ex (sp),hl		;6cd9
	ccf			;6cda
	di			;6cdb
	ld c,l			;6cdc
	call 0cd4bh		;6cdd
	call 08dcbh		;6ce0
	adc a,l			;6ce3
	adc a,e			;6ce4
	adc a,l			;6ce5
	adc a,l			;6ce6
	adc a,e			;6ce7
	adc a,l			;6ce8
	adc a,l			;6ce9
	adc a,e			;6cea
	call 0cbcdh		;6ceb
	ld c,l			;6cee
	call 05a4bh		;6cef
	jp c,0ff56h		;6cf2
	rst 20h			;6cf5
	rst 20h			;6cf6
	rst 38h			;6cf7
	rst 0			;6cf8
l6cf9h:
	rst 0			;6cf9
	ld a,a			;6cfa
	ld c,a			;6cfb
	rst 8			;6cfc
	rst 38h			;6cfd
	rst 8			;6cfe
	ld c,h			;6cff
	cp a			;6d00
	sbc a,099h		;6d01
	cp a			;6d03
	call c,08f9bh		;6d04
	call m,0469bh		;6d07
	ld a,(hl)		;6d0a
	ld c,l			;6d0b
	jp 0c6ffh		;6d0c
	pop hl			;6d0f
	rst 38h			;6d10
l6d11h:
	ex (sp),hl		;6d11
	ret p			;6d12
	rst 38h			;6d13
	pop af			;6d14
	ret p			;6d15
	rst 38h			;6d16
	jr nc,l6d11h		;6d17
	rra			;6d19
	ret m			;6d1a
	sbc a,b			;6d1b
	rrca			;6d1c
	ret m			;6d1d
	ld l,h			;6d1e
	ld h,a			;6d1f
	call m,0f3f6h		;6d20
	sbc a,(hl)		;6d23
	rst 38h			;6d24
	nop			;6d25
	rst 38h			;6d26
	pop hl			;6d27
	nop			;6d28
	rst 38h			;6d29
	sbc a,(hl)		;6d2a
	sbc a,(hl)		;6d2b
	rst 38h			;6d2c
	ld a,a			;6d2d
	rst 38h			;6d2e
	pop hl			;6d2f
	ld hl,07ee1h		;6d30
l6d33h:
	rra			;6d33
	pop af			;6d34
	ld a,00fh		;6d35
	rst 38h			;6d37
	rra			;6d38
	nop			;6d39
	rst 38h			;6d3a
	rrca			;6d3b
	or e			;6d3c
	inc sp			;6d3d
	defb 0edh ;next byte illegal after ed	;6d3e
	rst 18h			;6d3f
	ld de,0effeh		;6d40
	add hl,bc		;6d43
	rst 30h			;6d44
	ld (hl),d		;6d45
	inc bc			;6d46
	rst 38h			;6d47
	rst 38h			;6d48
	ex (sp),hl		;6d49
	ld a,a			;6d4a
	sbc a,a			;6d4b
	ret p			;6d4c
	rst 38h			;6d4d
	rra			;6d4e
	ret p			;6d4f
	sbc a,a			;6d50
	jr c,l6d33h		;6d51
	ccf			;6d53
	ld b,a			;6d54
	ld a,d			;6d55
	jp po,0f68fh		;6d56
	add a,01fh		;6d59
	call po,03f84h		;6d5b
	rst 0			;6d5e
	rlca			;6d5f
	cp a			;6d60
	jp 0f883h		;6d61
	rst 0			;6d64
l6d65h:
	jp 047f8h		;6d65
	ret nz			;6d68
	pop af			;6d69
	ld l,a			;6d6a
	pop hl			;6d6b
	ld e,d			;6d6c
	jp c,05a56h		;6d6d
	jp c,l7656h		;6d70
	or 06eh			;6d73
	ret pe			;6d75
	ret pe			;6d76
	ret c			;6d77
	ret pe			;6d78
	ret pe			;6d79
	ret m			;6d7a
	jr z,l6d65h		;6d7b
	ret m			;6d7d
	ld l,b			;6d7e
	ret pe			;6d7f
	ld a,b			;6d80
	ret c			;6d81
	ret c			;6d82
	ret m			;6d83
	ld e,e			;6d84
	ld e,e			;6d85
	ld l,l			;6d86
	ld l,a			;6d87
	ld l,a			;6d88
	ld d,l			;6d89
	cpl			;6d8a
	cpl			;6d8b
	dec (hl)		;6d8c
	cpl			;6d8d
	cpl			;6d8e
	dec (hl)		;6d8f
	ld (hl),037h		;6d90
	ld hl,(01716h)		;6d92
	ld a,(de)		;6d95
	ld a,(de)		;6d96
	dec de			;6d97
l6d98h:
	ld d,00eh		;6d98
	rrca			;6d9a
	ld a,(bc)		;6d9b
	ex (sp),hl		;6d9c
	cp a			;6d9d
	and a			;6d9e
	ld sp,hl		;6d9f
	cp a			;6da0
	cp e			;6da1
	call m,03d3fh		;6da2
	cp 07fh			;6da5
	ld a,(hl)		;6da7
	rst 38h			;6da8
	ld a,e			;6da9
	ld a,a			;6daa
	ld a,a			;6dab
	di			;6dac
	ld a,a			;6dad
	ld a,d			;6dae
	jp p,03a7fh		;6daf
	jp p,09e7dh		;6db2
	sbc a,e			;6db5
	ld l,(hl)		;6db6
	rst 28h			;6db7
	adc a,e			;6db8
	rst 38h			;6db9
	ld e,a			;6dba
	rst 10h			;6dbb
	ex de,hl		;6dbc
	ld a,0ffh		;6dbd
	ld h,d			;6dbf
	sbc a,(hl)		;6dc0
	ld a,a			;6dc1
	ld a,0c0h		;6dc2
	cp a			;6dc4
	sbc a,(hl)		;6dc5
	ret po			;6dc6
	rst 18h			;6dc7
	ret nz			;6dc8
	ret p			;6dc9
	ld l,a			;6dca
	ret po			;6dcb
	nop			;6dcc
	rst 38h			;6dcd
	nop			;6dce
	jr c,l6d98h		;6dcf
	nop			;6dd1
	ld a,h			;6dd2
	cp e			;6dd3
l6dd4h:
	jr c,l6dd4h		;6dd4
	ld a,l			;6dd6
	ld b,h			;6dd7
	adc a,0ffh		;6dd8
	or d			;6dda
	sbc a,d			;6ddb
	cp e			;6ddc
	and 092h		;6ddd
	sub e			;6ddf
	xor 0c6h		;6de0
	ld b,l			;6de2
	ld a,h			;6de3
	scf			;6de4
	rst 20h			;6de5
	ld a,07fh		;6de6
	rst 8			;6de8
	ld a,c			;6de9
	ld l,l			;6dea
	call sub_7b7ah		;6deb
	exx			;6dee
	ld h,(hl)		;6def
	ld (hl),l		;6df0
	pop af			;6df1
	ld c,a			;6df2
	ld a,a			;6df3
	rst 38h			;6df4
	ld b,(hl)		;6df5
	ccf			;6df6
	rst 38h			;6df7
	ld h,c			;6df8
	ld a,0ffh		;6df9
	ccf			;6dfb
	ld (hl),d		;6dfc
	ld l,0e2h		;6dfd
	ld (hl),d		;6dff
	ld l,0e2h		;6e00
	ex (sp),hl		;6e02
	cp a			;6e03
	di			;6e04
	and e			;6e05
	cp a			;6e06
	di			;6e07
	and b			;6e08
	cp a			;6e09
	ld h,b			;6e0a
	pop bc			;6e0b
	cp 060h			;6e0c
	add a,e			;6e0e
	defb 0fdh,0c1h,007h ;illegal sequence	;6e0f
	ld sp,hl		;6e12
	add a,c			;6e13
	ret p			;6e14
	ret p			;6e15
	ret p			;6e16
	sub b			;6e17
	ret p			;6e18
	ret p			;6e19
	adc a,h			;6e1a
	call m,01f9ch		;6e1b
	ex (sp),hl		;6e1e
	inc bc			;6e1f
	rst 38h			;6e20
	rra			;6e21
	rra			;6e22
	ret po			;6e23
	ret po			;6e24
	ret po			;6e25
	nop			;6e26
	nop			;6e27
	nop			;6e28
	nop			;6e29
	nop			;6e2a
	nop			;6e2b
	rra			;6e2c
	ld sp,hl		;6e2d
	ld a,0cfh		;6e2e
	cp h			;6e30
	sbc a,a			;6e31
	ld h,a			;6e32
	ld e,a			;6e33
	rst 8			;6e34
	pop af			;6e35
	rst 28h			;6e36
	ld h,a			;6e37
	ret c			;6e38
	rst 10h			;6e39
	pop de			;6e3a
	ld l,02dh		;6e3b
	inc a			;6e3d
	ld l,a			;6e3e
	ld l,(hl)		;6e3f
	ld d,(hl)		;6e40
	ld e,e			;6e41
	ld e,e			;6e42
	ld l,e			;6e43
	ret m			;6e44
	or a			;6e45
	ld (hl),b		;6e46
	ret p			;6e47
	ccf			;6e48
	ret m			;6e49
	ex (sp),hl		;6e4a
	call m,0c7f0h		;6e4b
	ei			;6e4e
	ex (sp),hl		;6e4f
	rrca			;6e50
	rst 30h			;6e51
	rst 0			;6e52
	rrca			;6e53
	rst 30h			;6e54
	ld b,0deh		;6e55
	ld l,00dh		;6e57
	cp 08eh			;6e59
	adc a,c			;6e5b
	ld a,h			;6e5c
	cp e			;6e5d
	jr c,l6e98h		;6e5e
	rst 0			;6e60
	nop			;6e61
	ret nz			;6e62
	ccf			;6e63
	nop			;6e64
	ret po			;6e65
	rst 18h			;6e66
	ret nz			;6e67
	pop af			;6e68
	xor 0e0h		;6e69
	rst 38h			;6e6b
	ret p			;6e6c
	ld (hl),b		;6e6d
	rst 38h			;6e6e
	ret p			;6e6f
	jr nc,$+129		;6e70
	ld (hl),b		;6e72
	or b			;6e73
	nop			;6e74
	rst 38h			;6e75
	ld a,000h		;6e76
	rst 38h			;6e78
	nop			;6e79
	rrca			;6e7a
	ret p			;6e7b
	nop			;6e7c
	ccf			;6e7d
	rst 8			;6e7e
	rrca			;6e7f
	rst 38h			;6e80
	ccf			;6e81
	ccf			;6e82
	rst 38h			;6e83
	ld a,a			;6e84
	ld a,b			;6e85
	call m,0e3fch		;6e86
	ld sp,hl		;6e89
	ld sp,hl		;6e8a
	sub 00eh		;6e8b
	jp p,03e02h		;6e8d
	jp nz,0fc02h		;6e90
	inc b			;6e93
	inc b			;6e94
	call m,08484h		;6e95
l6e98h:
	call m,0cccch		;6e98
	or 0f6h			;6e9b
	jp m,0fafah		;6e9d
	halt			;6ea0
	adc a,l			;6ea1
	adc a,l			;6ea2
	adc a,e			;6ea3
	rst 38h			;6ea4
	pop af			;6ea5
	ld sp,0e1ffh		;6ea6
	ld h,c			;6ea9
	rst 38h			;6eaa
	ret nz			;6eab
	ret nz			;6eac
	ld a,a			;6ead
	ld a,a			;6eae
	ld a,a			;6eaf
	ret m			;6eb0
	ret m			;6eb1
	rst 38h			;6eb2
	rlca			;6eb3
	rlca			;6eb4
	ret m			;6eb5
	rst 38h			;6eb6
	rst 38h			;6eb7
	rlca			;6eb8
	ret m			;6eb9
	ret m			;6eba
	ret m			;6ebb
	rst 38h			;6ebc
	rst 38h			;6ebd
	ei			;6ebe
	rst 38h			;6ebf
	ld sp,hl		;6ec0
	rst 20h			;6ec1
	defb 0fdh,0e0h,0dfh ;illegal sequence	;6ec2
	ei			;6ec5
	pop af			;6ec6
	ld l,03fh		;6ec7
	dec (hl)		;6ec9
	jp pe,031bfh		;6eca
	xor 0ffh		;6ecd
	ld h,d			;6ecf
	defb 0ddh,07fh,040h ;illegal sequence	;6ed0
	rst 38h			;6ed3
	rst 38h			;6ed4
	rst 38h			;6ed5
	rst 38h			;6ed6
	sbc a,l			;6ed7
	sub l			;6ed8
	ei			;6ed9
	cp 062h			;6eda
	ex (sp),iy		;6edc
	ld bc,0fdfeh		;6ede
	inc a			;6ee1
	rst 18h			;6ee2
	cp 07eh			;6ee3
	and e			;6ee5
	ex (sp),hl		;6ee6
	ex (sp),hl		;6ee7
	ld e,l			;6ee8
	defb 0ddh,0c1h,0beh ;illegal sequence	;6ee9
	ex (sp),hl		;6eec
	add a,b			;6eed
	rst 38h			;6eee
	defb 0ddh,01ch,0ffh ;illegal sequence	;6eef
	cp (hl)			;6ef2
	cp (hl)			;6ef3
	ex (sp),hl		;6ef4
	ld h,e			;6ef5
	ex (sp),hl		;6ef6
	defb 0ddh,03dh,0e1h ;illegal sequence	;6ef7
	ld a,a			;6efa
	dec de			;6efb
	jp p,00f3dh		;6efc
	rst 38h			;6eff
	rra			;6f00
	nop			;6f01
	rst 38h			;6f02
	rrca			;6f03
	sbc a,0c0h		;6f04
	cp a			;6f06
	rst 28h			;6f07
l6f08h:
	ld h,b			;6f08
	rst 18h			;6f09
	push af			;6f0a
	ld sp,0eeefh		;6f0b
	rrca			;6f0e
	ei			;6f0f
	rst 38h			;6f10
	ld h,e			;6f11
	rst 38h			;6f12
	sbc a,a			;6f13
	ret p			;6f14
	rst 38h			;6f15
	jr l6f08h		;6f16
	sbc a,a			;6f18
	scf			;6f19
	rst 20h			;6f1a
	ccf			;6f1b
	cpl			;6f1c
	rst 28h			;6f1d
	jr c,l6f8dh		;6f1e
	call 05b7ah		;6f20
	exx			;6f23
	halt			;6f24
	ld e,l			;6f25
	pop de			;6f26
	ld a,(hl)		;6f27
	ld (hl),l		;6f28
	pop af			;6f29
	ld c,a			;6f2a
	ld a,a			;6f2b
	rst 38h			;6f2c
	ld b,(hl)		;6f2d
	ccf			;6f2e
	rst 38h			;6f2f
	ld h,c			;6f30
	ld a,0ffh		;6f31
	ccf			;6f33
	rst 38h			;6f34
	rst 20h			;6f35
	rst 20h			;6f36
	rst 38h			;6f37
	rst 0			;6f38
	rst 0			;6f39
	ld a,a			;6f3a
	ld c,a			;6f3b
	rst 8			;6f3c
	rst 38h			;6f3d
	rst 8			;6f3e
	ld c,h			;6f3f
	cp a			;6f40
	sbc a,099h		;6f41
	cp (hl)			;6f43
	call c,08d9bh		;6f44
	defb 0fdh,09bh,047h ;illegal sequence	;6f47
	ld a,a			;6f4a
	ld c,l			;6f4b
	jp 0c6ffh		;6f4c
	pop hl			;6f4f
	rst 38h			;6f50
	ex (sp),hl		;6f51
	ret p			;6f52
	rst 38h			;6f53
	pop af			;6f54
	ret p			;6f55
	rst 38h			;6f56
	jr nc,l6f71h		;6f57
	rra			;6f59
	ret m			;6f5a
	ret pe			;6f5b
	rst 28h			;6f5c
	ret m			;6f5d
	call p,01cf7h		;6f5e
	sbc a,(hl)		;6f61
	sbc a,e			;6f62
	ld l,(hl)		;6f63
	ld a,(hl)		;6f64
	dec de			;6f65
	xor 0efh		;6f66
	adc a,e			;6f68
	rst 38h			;6f69
	ld e,a			;6f6a
	rst 10h			;6f6b
	ex de,hl		;6f6c
	ld a,0ffh		;6f6d
	ld h,d			;6f6f
	sbc a,(hl)		;6f70
l6f71h:
	ld a,a			;6f71
	ld a,0c0h		;6f72
	cp a			;6f74
	sbc a,(hl)		;6f75
	ret po			;6f76
	rst 18h			;6f77
	ret nz			;6f78
	ret p			;6f79
	ld l,a			;6f7a
	ret po			;6f7b
	ex (sp),hl		;6f7c
	cp a			;6f7d
	and (hl)		;6f7e
sub_6f7fh:
	ld sp,hl		;6f7f
	cp a			;6f80
	cp e			;6f81
	call m,03d3fh		;6f82
	cp 07fh			;6f85
	ld a,(hl)		;6f87
	rst 38h			;6f88
	ld a,e			;6f89
	ld a,a			;6f8a
	ld a,a			;6f8b
	pop af			;6f8c
l6f8dh:
	ld a,a			;6f8d
	ld a,c			;6f8e
	ret p			;6f8f
	ld a,a			;6f90
	ld a,0feh		;6f91
	ld a,a			;6f93
	rra			;6f94
	rst 38h			;6f95
l6f96h:
	add hl,sp		;6f96
	call 09ebdh		;6f97
	ld h,a			;6f9a
	ld e,a			;6f9b
	rst 8			;6f9c
	pop af			;6f9d
	rst 28h			;6f9e
	ld h,a			;6f9f
	ret c			;6fa0
	rst 10h			;6fa1
	pop de			;6fa2
	ld l,02dh		;6fa3
	inc a			;6fa5
	ld l,a			;6fa6
	ld l,(hl)		;6fa7
	ld d,(hl)		;6fa8
	ld e,e			;6fa9
	ld e,e			;6faa
	ld l,e			;6fab
	ret m			;6fac
	scf			;6fad
	ret p			;6fae
	ret p			;6faf
	rst 38h			;6fb0
	jr c,l6f96h		;6fb1
	inc a			;6fb3
	ret p			;6fb4
	rst 0			;6fb5
	ei			;6fb6
	ex (sp),hl		;6fb7
	rrca			;6fb8
	rst 30h			;6fb9
	rst 0			;6fba
	rrca			;6fbb
	rst 30h			;6fbc
	ld b,0deh		;6fbd
	ld l,00dh		;6fbf
	cp 08eh			;6fc1
	adc a,c			;6fc3
	or d			;6fc4
	xor (hl)		;6fc5
	jp po,0aeb2h		;6fc6
	jp po,0bfa3h		;6fc9
	di			;6fcc
	and e			;6fcd
	cp a			;6fce
	di			;6fcf
	and b			;6fd0
	cp a			;6fd1
	ld h,b			;6fd2
	pop bc			;6fd3
	cp 060h			;6fd4
	add a,e			;6fd6
	defb 0fdh,0c1h,007h ;illegal sequence	;6fd7
	ld sp,hl		;6fda
	add a,c			;6fdb
	add a,a			;6fdc
	ret m			;6fdd
	add a,b			;6fde
	rst 38h			;6fdf
	ret nz			;6fe0
	ret nz			;6fe1
	cp 041h			;6fe2
	pop bc			;6fe4
	cp 0e1h			;6fe5
	ld h,b			;6fe7
	call m,0e223h		;6fe8
	ld sp,hl		;6feb
	daa			;6fec
	push hl			;6fed
	ld (hl),c		;6fee
	cpl			;6fef
	jp (hl)			;6ff0
	ex (sp),hl		;6ff1
	cp a			;6ff2
	di			;6ff3
	nop			;6ff4
	nop			;6ff5
	nop			;6ff6
	nop			;6ff7
	nop			;6ff8
	nop			;6ff9
	nop			;6ffa
	rst 38h			;6ffb
	nop			;6ffc
	nop			;6ffd
	nop			;6ffe
	nop			;6fff
	nop			;7000
	nop			;7001
	nop			;7002
	ret m			;7003
	nop			;7004
	nop			;7005
	nop			;7006
	nop			;7007
	ld bc,00101h		;7008
	inc bc			;700b
	ld bc,00301h		;700c
	inc bc			;700f
	inc bc			;7010
	rlca			;7011
	rlca			;7012
	nop			;7013
	nop			;7014
	nop			;7015
	nop			;7016
	nop			;7017
	nop			;7018
	nop			;7019
	nop			;701a
	ld e,000h		;701b
	nop			;701d
	nop			;701e
	nop			;701f
	nop			;7020
	nop			;7021
	nop			;7022
	rrca			;7023
	ret nz			;7024
	add a,b			;7025
	add a,b			;7026
	add a,b			;7027
	nop			;7028
	nop			;7029
	nop			;702a
	nop			;702b
	rst 38h			;702c
	rst 38h			;702d
	rst 38h			;702e
	rst 38h			;702f
	rst 38h			;7030
	rst 38h			;7031
	rst 38h			;7032
	rst 38h			;7033
	ret nz			;7034
	ret nz			;7035
	add a,b			;7036
	add a,b			;7037
	add a,b			;7038
	nop			;7039
	nop			;703a
	nop			;703b
	nop			;703c
	nop			;703d
	nop			;703e
	nop			;703f
	nop			;7040
	nop			;7041
	nop			;7042
	nop			;7043
	nop			;7044
	ld bc,00100h		;7045
	nop			;7048
	ld bc,00100h		;7049
	nop			;704c
	nop			;704d
	nop			;704e
	nop			;704f
	nop			;7050
	nop			;7051
	nop			;7052
	nop			;7053
	nop			;7054
	nop			;7055
	ld bc,00200h		;7056
	ld bc,00305h		;7059
	nop			;705c
	nop			;705d
	ld bc,00000h		;705e
	ld bc,00100h		;7061
	nop			;7064
	ld bc,00100h		;7065
	nop			;7068
	ld bc,00000h		;7069
	nop			;706c
	nop			;706d
	nop			;706e
	nop			;706f
	ld bc,00301h		;7070
	inc bc			;7073
	inc bc			;7074
	ld (bc),a		;7075
	inc bc			;7076
	ld (bc),a		;7077
	di			;7078
	jp p,0f5f6h		;7079
	nop			;707c
	nop			;707d
	ld bc,00101h		;707e
	ld bc,00303h		;7081
	inc bc			;7084
	inc bc			;7085
	rlca			;7086
	ld b,007h		;7087
	ld b,007h		;7089
	ld b,000h		;708b
	nop			;708d
	nop			;708e
	nop			;708f
	add a,b			;7090
	add a,b			;7091
	ret nz			;7092
	ret nz			;7093
	ret po			;7094
	ld h,b			;7095
	ld (hl),b		;7096
	or b			;7097
	jr c,$-38		;7098
	inc e			;709a
	call pe,0b070h		;709b
	ld (hl),b		;709e
	or b			;709f
	ret po			;70a0
	ld h,b			;70a1
	ret po			;70a2
	ld h,b			;70a3
	ret po			;70a4
	ld h,b			;70a5
	ret po			;70a6
	ld h,b			;70a7
	ret nz			;70a8
	ret nz			;70a9
	ret nz			;70aa
	ret nz			;70ab
	ld (hl),b		;70ac
	or b			;70ad
	ld (hl),b		;70ae
	or b			;70af
	ld (hl),b		;70b0
	or b			;70b1
	ret po			;70b2
	ld h,b			;70b3
	ret po			;70b4
	ret po			;70b5
	ret po			;70b6
	ret po			;70b7
	ret po			;70b8
	ld h,b			;70b9
	ret nz			;70ba
	ret nz			;70bb
	rst 38h			;70bc
	nop			;70bd
	nop			;70be
	rst 38h			;70bf
	nop			;70c0
	rst 38h			;70c1
	nop			;70c2
	rst 38h			;70c3
	nop			;70c4
	rst 38h			;70c5
	rst 38h			;70c6
	rst 38h			;70c7
	rst 38h			;70c8
	rst 38h			;70c9
	nop			;70ca
	nop			;70cb
	nop			;70cc
	nop			;70cd
	nop			;70ce
	nop			;70cf
	nop			;70d0
	nop			;70d1
	nop			;70d2
	nop			;70d3
	ld bc,00300h		;70d4
	nop			;70d7
	ld b,001h		;70d8
	ld b,001h		;70da
	nop			;70dc
	nop			;70dd
	nop			;70de
	nop			;70df
	nop			;70e0
	nop			;70e1
	nop			;70e2
	nop			;70e3
	ld b,b			;70e4
	nop			;70e5
	ret nz			;70e6
	nop			;70e7
	ld h,b			;70e8
	add a,b			;70e9
	and b			;70ea
	ret nz			;70eb
	nop			;70ec
	nop			;70ed
	nop			;70ee
	nop			;70ef
	nop			;70f0
	nop			;70f1
	nop			;70f2
	nop			;70f3
	nop			;70f4
	nop			;70f5
	nop			;70f6
	nop			;70f7
	ld b,000h		;70f8
	rrca			;70fa
	ld (bc),a		;70fb
	or h			;70fc
	ld a,b			;70fd
	ld c,a			;70fe
	inc a			;70ff
	daa			;7100
	rra			;7101
	add hl,de		;7102
	rlca			;7103
	dec b			;7104
	inc bc			;7105
	ld (bc),a		;7106
	ld bc,00102h		;7107
	ld (bc),a		;710a
	ld bc,00102h		;710b
	ld (bc),a		;710e
	ld bc,001c2h		;710f
	ld (093c1h),hl		;7112
	ret po			;7115
	set 6,b			;7116
	ret			;7118
	ret p			;7119
	ret			;711a
	ret p			;711b
	cp a			;711c
	ret nz			;711d
	ret nz			;711e
	rst 38h			;711f
	rst 38h			;7120
	rst 38h			;7121
	rst 38h			;7122
	ret nz			;7123
	pop hl			;7124
	add a,b			;7125
	pop bc			;7126
	add a,b			;7127
	jp 0c780h		;7128
	add a,c			;712b
	ret nz			;712c
	ld bc,08163h		;712d
	or e			;7130
	pop bc			;7131
	jp nc,0b6e1h		;7132
	jp nz,0c2a6h		;7135
	call pe,04c86h		;7138
	add a,h			;713b
	ld b,001h		;713c
	inc b			;713e
	inc bc			;713f
	adc a,c			;7140
l7141h:
	rlca			;7141
	ld (hl),c		;7142
	adc a,a			;7143
	add a,e			;7144
	rst 38h			;7145
	rst 0			;7146
	rst 38h			;7147
	cp 0ffh			;7148
	cp 0ffh			;714a
	xor (hl)		;714c
	jp 0c679h		;714d
	ld (hl),a		;7150
	ret m			;7151
	ld (hl),h		;7152
	ret m			;7153
	ld l,b			;7154
	ret p			;7155
	ld e,b			;7156
	ret po			;7157
	ld d,c			;7158
	ret po			;7159
	ld de,0dfe0h		;715a
	inc b			;715d
	sbc a,a			;715e
	rrca			;715f
	ccf			;7160
	ex af,af'		;7161
	jr c,l7174h		;7162
	ld a,b			;7164
	djnz $-22		;7165
	jr nc,l7141h		;7167
	ld h,b			;7169
	or b			;716a
	ld b,b			;716b
	nop			;716c
	nop			;716d
	add a,b			;716e
	nop			;716f
	ret nz			;7170
	nop			;7171
	ret p			;7172
	nop			;7173
l7174h:
	sbc a,b			;7174
	ld h,b			;7175
	ld l,h			;7176
	ret p			;7177
	ld h,h			;7178
	ret m			;7179
	sub h			;717a
	ret m			;717b
	nop			;717c
	nop			;717d
	nop			;717e
	nop			;717f
	inc bc			;7180
	nop			;7181
	dec c			;7182
	inc bc			;7183
	rra			;7184
	rlca			;7185
	cpl			;7186
	rra			;7187
	ld de,04233h		;7188
	ld hl,00000h		;718b
l718eh:
	ld b,c			;718e
	nop			;718f
	ld b,e			;7190
	add a,c			;7191
	inc bc			;7192
	pop bc			;7193
	and d			;7194
	pop bc			;7195
	rst 0			;7196
	jp po,0c6abh		;7197
	ld c,a			;719a
	add a,(hl)		;719b
	scf			;719c
	ld c,0bfh		;719d
	ld a,(hl)		;719f
	call m,0e0c2h		;71a0
	add a,b			;71a3
	add a,h			;71a4
	nop			;71a5
	ld a,(bc)		;71a6
	inc b			;71a7
	ld a,(0dc0ch)		;71a8
	jr nc,l71adh		;71ab
l71adh:
	nop			;71ad
	nop			;71ae
	nop			;71af
	nop			;71b0
	nop			;71b1
	nop			;71b2
	nop			;71b3
	ld bc,00200h		;71b4
	ld bc,0030ch		;71b7
	rla			;71ba
	ld c,000h		;71bb
	nop			;71bd
	inc c			;71be
	ld bc,0071eh		;71bf
	add hl,hl		;71c2
	ld e,066h		;71c3
	jr c,l71dfh		;71c5
	ret po			;71c7
	ld h,b			;71c8
	add a,b			;71c9
	add a,b			;71ca
	nop			;71cb
	add a,b			;71cc
	nop			;71cd
	ret nz			;71ce
	add a,b			;71cf
	add a,b			;71d0
	nop			;71d1
	add a,b			;71d2
	nop			;71d3
	nop			;71d4
	nop			;71d5
	nop			;71d6
	nop			;71d7
	nop			;71d8
	nop			;71d9
	nop			;71da
	nop			;71db
	adc a,b			;71dc
	or b			;71dd
	ex af,af'		;71de
l71dfh:
	jr nc,$+10		;71df
	jr nc,l7214h		;71e1
	jr nz,$+51		;71e3
	jr nz,l7217h		;71e5
	ld hl,03f32h		;71e7
	push af			;71ea
	jr c,l718eh		;71eb
	ld h,b			;71ed
	nop			;71ee
	ret nz			;71ef
	nop			;71f0
	ret nz			;71f1
	ld b,b			;71f2
	ret nz			;71f3
	ret nz			;71f4
	pop bc			;71f5
	ret nz			;71f6
	jp 0e743h		;71f7
	ld h,(hl)		;71fa
	rst 38h			;71fb
	sub a			;71fc
	rrca			;71fd
	ld sp,l621fh		;71fe
	ld sp,0e346h		;7201
	rlca			;7204
	jp nz,0864bh		;7205
	sub a			;7208
	rrca			;7209
	and a			;720a
	rra			;720b
	or b			;720c
	ret nz			;720d
	ret nz			;720e
	nop			;720f
	inc bc			;7210
	nop			;7211
	rrca			;7212
	inc bc			;7213
l7214h:
	dec (hl)		;7214
	ld c,0d2h		;7215
l7217h:
	inc a			;7217
	call pe,090f0h		;7218
	ret po			;721b
	ld a,(hl)		;721c
	inc e			;721d
	cp h			;721e
	ld (hl),b		;721f
	ret p			;7220
	ret nz			;7221
	ld b,b			;7222
	add a,b			;7223
	nop			;7224
	nop			;7225
	nop			;7226
	nop			;7227
	nop			;7228
	nop			;7229
	nop			;722a
	nop			;722b
	ld l,c			;722c
	ret p			;722d
	xor b			;722e
	ld (hl),b		;722f
	ld l,b			;7230
	jr nc,$+102		;7231
	jr c,l72a1h		;7233
	jr nc,l71dfh		;7235
	ld (hl),b		;7237
	ld c,b			;7238
	jr nc,l72abh		;7239
	nop			;723b
	add a,e			;723c
	ld a,h			;723d
	add a,038h		;723e
	ld a,b			;7240
	nop			;7241
	nop			;7242
	nop			;7243
	nop			;7244
	nop			;7245
	nop			;7246
	nop			;7247
	nop			;7248
	nop			;7249
	nop			;724a
	nop			;724b
	rla			;724c
	rrca			;724d
	djnz l725fh		;724e
	rrca			;7250
	nop			;7251
	nop			;7252
	nop			;7253
	nop			;7254
	nop			;7255
	nop			;7256
	nop			;7257
	nop			;7258
	nop			;7259
	nop			;725a
	nop			;725b
	nop			;725c
	nop			;725d
	nop			;725e
l725fh:
	nop			;725f
	nop			;7260
	nop			;7261
	nop			;7262
	nop			;7263
	nop			;7264
	jr c,l7267h		;7265
l7267h:
	nop			;7267
	ld b,(hl)		;7268
	jr c,l726bh		;7269
l726bh:
	or e			;726b
	ld a,h			;726c
	nop			;726d
	ld a,c			;726e
	cp 000h			;726f
	sbc a,l			;7271
	sbc a,(hl)		;7272
	ld h,b			;7273
	dec bc			;7274
	rlca			;7275
	nop			;7276
	ld b,00eh		;7277
	ld bc,00c14h		;7279
	inc bc			;727c
	jr z,$+26		;727d
	rlca			;727f
l7280h:
	ld de,00e31h		;7280
l7283h:
	ld b,a			;7283
	daa			;7284
	jr l72afh		;7285
	ld l,a			;7287
	djnz $-110		;7288
	ld e,a			;728a
	jr nz,$+15		;728b
	ld c,0f0h		;728d
	dec c			;728f
	ld c,0f0h		;7290
	ld a,(de)		;7292
	inc e			;7293
	ret po			;7294
	ld (0c03ch),a		;7295
	ret po			;7298
	call m,08800h		;7299
	ret p			;729c
	nop			;729d
	djnz l7280h		;729e
	nop			;72a0
l72a1h:
	ret nz			;72a1
	nop			;72a2
	nop			;72a3
	xor b			;72a4
	jr nc,l72e7h		;72a5
	and b			;72a7
	or b			;72a8
	ld b,b			;72a9
	add a,b			;72aa
l72abh:
	and b			;72ab
	ld b,b			;72ac
l72adh:
	add a,b			;72ad
	and b			;72ae
l72afh:
	ld b,b			;72af
	add a,b			;72b0
	and b			;72b1
	ld b,b			;72b2
	add a,b			;72b3
	and b			;72b4
	ld b,b			;72b5
	add a,b			;72b6
	and b			;72b7
	ld b,b			;72b8
	and b			;72b9
	or b			;72ba
	ld b,b			;72bb
	add a,b			;72bc
	add a,b			;72bd
	nop			;72be
	nop			;72bf
	ld a,b			;72c0
	nop			;72c1
	jr c,l7283h		;72c2
	nop			;72c4
	ld a,a			;72c5
	ld a,a			;72c6
	nop			;72c7
	ld h,b			;72c8
	ret po			;72c9
	rra			;72ca
	jr nz,l72adh		;72cb
	rra			;72cd
	or b			;72ce
	ld (hl),b		;72cf
	rrca			;72d0
	ld e,b			;72d1
l72d2h:
	jr c,$+9		;72d2
	djnz l72efh		;72d4
	ret po			;72d6
	jr nc,l7312h		;72d7
	ret nz			;72d9
	jr c,l730dh		;72da
	ret nz			;72dc
	ld h,b			;72dd
	ld (hl),c		;72de
	add a,b			;72df
	ld d,b			;72e0
	ld h,c			;72e1
	add a,b			;72e2
	add a,b			;72e3
	pop hl			;72e4
	nop			;72e5
	and b			;72e6
l72e7h:
	jp 04300h		;72e7
	add a,e			;72ea
	nop			;72eb
	nop			;72ec
	nop			;72ed
	nop			;72ee
l72efh:
	nop			;72ef
	nop			;72f0
	nop			;72f1
	nop			;72f2
	nop			;72f3
	nop			;72f4
	nop			;72f5
	nop			;72f6
	nop			;72f7
	nop			;72f8
	nop			;72f9
	nop			;72fa
	nop			;72fb
	nop			;72fc
	nop			;72fd
	nop			;72fe
	nop			;72ff
	ex af,af'		;7300
	jr l7313h		;7301
	nop			;7303
	ret m			;7304
l7305h:
	ret m			;7305
	ret m			;7306
	ret c			;7307
	jr z,l72d2h		;7308
	add hl,sp		;730a
	jp (hl)			;730b
	add hl,bc		;730c
l730dh:
	add hl,sp		;730d
	jp (hl)			;730e
l730fh:
	add hl,bc		;730f
	dec sp			;7310
	ex de,hl		;7311
l7312h:
	dec bc			;7312
l7313h:
	dec sp			;7313
	ex de,hl		;7314
	dec bc			;7315
	dec sp			;7316
	ex de,hl		;7317
	ld a,(bc)		;7318
	ccf			;7319
	rst 28h			;731a
	ld c,0f8h		;731b
	ret m			;731d
	ret m			;731e
	ret m			;731f
	ret m			;7320
	ret m			;7321
	sbc a,b			;7322
	ld l,b			;7323
	adc a,b			;7324
	jr l730fh		;7325
	ex af,af'		;7327
	ld e,b			;7328
	ret pe			;7329
	ex af,af'		;732a
	ld e,b			;732b
	ret pe			;732c
	ex af,af'		;732d
	ld e,b			;732e
	ret pe			;732f
	ex af,af'		;7330
	ld e,b			;7331
	ret pe			;7332
	ex af,af'		;7333
	ld c,00eh		;7334
	dec c			;7336
	rrca			;7337
	ld c,00dh		;7338
	inc e			;733a
	dec e			;733b
	dec de			;733c
	rra			;733d
	jr l7358h		;733e
	rra			;7340
	rra			;7341
	rra			;7342
	inc a			;7343
	dec sp			;7344
	scf			;7345
	inc a			;7346
	dec sp			;7347
	scf			;7348
	ld (hl),b		;7349
	ld (hl),a		;734a
	ld l,a			;734b
	inc bc			;734c
	inc bc			;734d
	inc bc			;734e
	rlca			;734f
	rlca			;7350
	ld b,007h		;7351
	rlca			;7353
	ld b,00eh		;7354
	ld c,00dh		;7356
l7358h:
	rrca			;7358
	inc c			;7359
	inc c			;735a
	rrca			;735b
	rrca			;735c
	rrca			;735d
	ld e,01dh		;735e
	dec de			;7360
l7361h:
	ld e,01dh		;7361
	dec de			;7363
	ld e,b			;7364
	ret pe			;7365
	ex af,af'		;7366
	ld e,c			;7367
	jp (hl)			;7368
	add hl,bc		;7369
	ld e,c			;736a
	jp (hl)			;736b
	add hl,bc		;736c
	ei			;736d
	dec de			;736e
	dec de			;736f
	rst 38h			;7370
	rst 38h			;7371
	rst 38h			;7372
	ld e,a			;7373
	rst 28h			;7374
	ld c,05fh		;7375
	rst 28h			;7377
	ld c,05eh		;7378
	xor 00dh		;737a
	pop bc			;737c
	rst 18h			;737d
	jr nc,l7361h		;737e
	rst 18h			;7380
	jr nc,l7305h		;7381
	cp a			;7383
	ld h,b			;7384
	jp nz,l60bfh		;7385
	rst 38h			;7388
	nop			;7389
	nop			;738a
	rst 38h			;738b
	rst 38h			;738c
	rst 38h			;738d
	add a,l			;738e
	ld a,(hl)		;738f
	ret nz			;7390
	dec b			;7391
	cp 080h			;7392
	ld h,b			;7394
	add a,c			;7395
	rra			;7396
	add a,b			;7397
	ld bc,0007fh		;7398
	nop			;739b
	rst 38h			;739c
	rst 38h			;739d
	nop			;739e
	rst 38h			;739f
	rst 38h			;73a0
	nop			;73a1
	nop			;73a2
	rst 38h			;73a3
	rst 38h			;73a4
	rst 38h			;73a5
	rst 38h			;73a6
	ld bc,0fe00h		;73a7
	inc bc			;73aa
	ld bc,0f6f9h		;73ab
	rst 38h			;73ae
	cp c			;73af
	or (hl)			;73b0
	cp a			;73b1
	cp e			;73b2
	or h			;73b3
	cp (hl)			;73b4
	ccf			;73b5
	jr nc,l73f4h		;73b6
	ccf			;73b8
	jr nc,l73ebh		;73b9
	ccf			;73bb
	ccf			;73bc
	ccf			;73bd
	ld a,03eh		;73be
	ld a,030h		;73c0
	jr nc,l73f4h		;73c2
	dec bc			;73c4
	defb 0fdh,081h,003h ;illegal sequence	;73c5
	defb 0fdh,001h,0ffh ;illegal sequence	;73c8
	inc bc			;73cb
	inc bc			;73cc
	rst 38h			;73cd
	rra			;73ce
	rra			;73cf
	ret m			;73d0
	ret m			;73d1
	ret m			;73d2
	ret nz			;73d3
	ret nz			;73d4
	ret nz			;73d5
	nop			;73d6
	nop			;73d7
	nop			;73d8
	nop			;73d9
	nop			;73da
	nop			;73db
	cp a			;73dc
	and (hl)		;73dd
	or l			;73de
	cp (hl)			;73df
	xor l			;73e0
	xor e			;73e1
	inc e			;73e2
	rra			;73e3
	dec de			;73e4
	add hl,sp		;73e5
	ld a,037h		;73e6
	ccf			;73e8
	jr nc,l741bh		;73e9
l73ebh:
	ld a,a			;73eb
	ld a,a			;73ec
	ld a,a			;73ed
	rst 38h			;73ee
	rst 38h			;73ef
	rst 38h			;73f0
	nop			;73f1
	nop			;73f2
	nop			;73f3
l73f4h:
	cp 005h			;73f4
	inc bc			;73f6
	cp 0fdh			;73f7
	rst 38h			;73f9
	ld b,005h		;73fa
	rlca			;73fc
	rlca			;73fd
	inc b			;73fe
	rlca			;73ff
	rlca			;7400
	inc b			;7401
	inc b			;7402
	rlca			;7403
	rlca			;7404
	rlca			;7405
l7406h:
	rlca			;7406
	rlca			;7407
	rlca			;7408
l7409h:
	nop			;7409
	nop			;740a
	nop			;740b
	ld (hl),b		;740c
	ret nc			;740d
	djnz $+114		;740e
	ret nc			;7410
	djnz $+114		;7411
	ret nc			;7413
	djnz l7406h		;7414
	ld d,b			;7416
	djnz l7409h		;7417
	jr nc,$+50		;7419
l741bh:
	ret p			;741b
l741ch:
	ret p			;741c
	ret p			;741d
	ret p			;741e
l741fh:
	ret p			;741f
	ret p			;7420
	nop			;7421
	nop			;7422
	nop			;7423
	inc l			;7424
	call p,0fc04h		;7425
	inc c			;7428
	inc c			;7429
	ret m			;742a
	ret m			;742b
	ret m			;742c
	add a,b			;742d
	add a,b			;742e
	add a,b			;742f
	nop			;7430
	nop			;7431
	nop			;7432
	nop			;7433
	nop			;7434
	nop			;7435
	nop			;7436
	nop			;7437
	nop			;7438
	nop			;7439
	nop			;743a
	nop			;743b
	ex de,hl		;743c
	and 0dch		;743d
	ld (hl),e		;743f
	ld (hl),d		;7440
	ld l,h			;7441
	ld a,(hl)		;7442
	ld a,l			;7443
	ld (hl),b		;7444
	ld a,03dh		;7445
	jr nc,l7465h		;7447
	dec de			;7449
	jr l746bh		;744a
	rra			;744c
	rra			;744d
	rrca			;744e
	rrca			;744f
	rrca			;7450
	nop			;7451
	nop			;7452
	nop			;7453
	cp 0feh			;7454
	cp 0feh			;7456
	cp 0feh			;7458
	call c,08c6ch		;745a
	inc e			;745d
	call pe,0b80ch		;745e
	ret c			;7461
	jr l741ch		;7462
	ret c			;7464
l7465h:
	jr l741fh		;7465
	ret c			;7467
	jr l74dah		;7468
	or b			;746a
l746bh:
	jr nc,l7489h		;746b
	call pe,00e0ch		;746d
	or 006h			;7470
	rlca			;7472
	ei			;7473
	inc bc			;7474
	rst 38h			;7475
	rlca			;7476
	rlca			;7477
	rst 38h			;7478
	rst 38h			;7479
	rst 38h			;747a
	ld a,a			;747b
	ei			;747c
	ld (bc),a		;747d
	rst 38h			;747e
	or 005h			;747f
	rst 38h			;7481
	xor 00dh		;7482
	nop			;7484
	nop			;7485
	nop			;7486
	nop			;7487
	nop			;7488
l7489h:
	nop			;7489
	rrca			;748a
	rrca			;748b
	rrca			;748c
	rra			;748d
	rra			;748e
	rra			;748f
	rra			;7490
	jr l74b2h		;7491
	jr c,l74d0h		;7493
	scf			;7495
	inc a			;7496
	dec sp			;7497
	scf			;7498
	ld a,d			;7499
	ld (hl),l		;749a
	ld l,a			;749b
	nop			;749c
	nop			;749d
	nop			;749e
	nop			;749f
	nop			;74a0
	nop			;74a1
	ret m			;74a2
	ret m			;74a3
	ret m			;74a4
	call m,0fcfch		;74a5
	call m,0ec0ch		;74a8
	ld a,0e6h		;74ab
	add a,03eh		;74ad
	and 0c6h		;74af
	ld h,a			;74b1
l74b2h:
	in a,(083h)		;74b2
	sbc a,h			;74b4
	sbc a,e			;74b5
	sub a			;74b6
	sbc a,h			;74b7
	sbc a,e			;74b8
	sub a			;74b9
	call c,0d7dbh		;74ba
	rst 38h			;74bd
	ld (hl),b		;74be
	ld (hl),b		;74bf
	rst 38h			;74c0
	ld a,a			;74c1
	ld a,a			;74c2
	ld a,h			;74c3
	cp e			;74c4
	scf			;74c5
	inc a			;74c6
	in a,(017h)		;74c7
	inc a			;74c9
	in a,(017h)		;74ca
	ld b,l			;74cc
	cp (hl)			;74cd
	ret nz			;74ce
	dec bc			;74cf
l74d0h:
	defb 0fdh,081h,08bh ;illegal sequence	;74d0
	ld a,l			;74d3
	add a,c			;74d4
	rst 38h			;74d5
	inc bc			;74d6
	inc bc			;74d7
	rst 38h			;74d8
	rst 38h			;74d9
l74dah:
	rst 38h			;74da
	rla			;74db
	ei			;74dc
	inc bc			;74dd
	rla			;74de
	ei			;74df
	inc bc			;74e0
	ld l,0f6h		;74e1
	ld b,0f7h		;74e3
	ld d,(hl)		;74e5
	sub l			;74e6
	ccf			;74e7
	sbc a,01dh		;74e8
	ld a,(hl)		;74ea
	defb 0ddh,01bh,07eh ;illegal sequence	;74eb
	defb 0ddh,01bh,07eh ;illegal sequence	;74ee
	defb 0ddh,01bh,07eh ;illegal sequence	;74f1
	defb 0ddh,01bh,07ch ;illegal sequence	;74f4
	in a,(017h)		;74f7
	ld a,h			;74f9
	in a,(017h)		;74fa
l74fch:
	ld a,h			;74fc
	in a,(017h)		;74fd
	ld a,h			;74ff
	in a,(017h)		;7500
l7502h:
	ld a,b			;7502
	rst 10h			;7503
	rrca			;7504
	rst 38h			;7505
	jr nz,$+34		;7506
	rst 38h			;7508
	rst 38h			;7509
	rst 38h			;750a
	jr nc,l74fch		;750b
	rra			;750d
	ld sp,01feeh		;750e
	jr nc,l7502h		;7511
	ld e,01ch		;7513
	ex de,hl		;7515
	rrca			;7516
	inc c			;7517
	rst 30h			;7518
	rlca			;7519
	inc c			;751a
	rst 30h			;751b
	rlca			;751c
	cp 00fh			;751d
	rrca			;751f
	cp 0ffh			;7520
	rst 38h			;7522
	cp 0f7h			;7523
	rlca			;7525
	call m,00fefh		;7526
	call m,00fefh		;7529
	inc bc			;752c
	rst 38h			;752d
	ret m			;752e
	inc bc			;752f
	rst 38h			;7530
	nop			;7531
	ld bc,000ffh		;7532
	nop			;7535
	rst 38h			;7536
	nop			;7537
	nop			;7538
	rst 38h			;7539
	nop			;753a
	rst 38h			;753b
	nop			;753c
	rst 38h			;753d
	nop			;753e
	cp 0ffh			;753f
	nop			;7541
	defb 0fdh,0feh,02eh ;illegal sequence	;7542
	or 006h			;7545
	ld l,0f6h		;7547
	ld b,05ch		;7549
	call pe,05c0ch		;754b
	call pe,05c0ch		;754e
	call pe,0b80ch		;7551
	ret c			;7554
	jr $-70			;7555
	ret c			;7557
	jr $-70			;7558
	ret c			;755a
	jr l757ah		;755b
	call pe,00e0bh		;755d
	or 005h			;7560
	ld c,0f6h		;7562
	dec b			;7564
	rlca			;7565
	ei			;7566
	ld (bc),a		;7567
	rst 38h			;7568
	rlca			;7569
	rlca			;756a
	rst 38h			;756b
	rst 38h			;756c
	rst 38h			;756d
	ld a,a			;756e
	rst 30h			;756f
	rlca			;7570
	defb 0fdh,0edh,00dh ;illegal sequence	;7571
	rrca			;7574
	cp 0e0h			;7575
	add a,a			;7577
	ld a,(hl)		;7578
	ret p			;7579
l757ah:
	add a,a			;757a
	ld a,a			;757b
	ret p			;757c
	ld b,e			;757d
	ccf			;757e
	ret m			;757f
	and c			;7580
	sbc a,a			;7581
	ld a,h			;7582
	and c			;7583
	sbc a,a			;7584
	ld a,h			;7585
	pop de			;7586
	adc a,0beh		;7587
	jp (hl)			;7589
	and 0deh		;758a
	call m,01fdbh		;758c
	call m,037bbh		;758f
	call m,037bbh		;7592
	call m,sub_777bh	;7595
	rst 38h			;7598
	ret p			;7599
	ret p			;759a
	rst 18h			;759b
	rst 18h			;759c
	rst 18h			;759d
	sbc a,h			;759e
	sbc a,e			;759f
	sub a			;75a0
	inc e			;75a1
	dec de			;75a2
	rla			;75a3
	inc e			;75a4
	dec de			;75a5
l75a6h:
	rla			;75a6
	inc e			;75a7
	dec de			;75a8
	rla			;75a9
	inc e			;75aa
	dec de			;75ab
	rla			;75ac
	dec de			;75ad
	inc e			;75ae
	ld d,01fh		;75af
	djnz l75c3h		;75b1
l75b3h:
	rra			;75b3
	rra			;75b4
	rra			;75b5
	rra			;75b6
	rra			;75b7
l75b8h:
	rra			;75b8
	nop			;75b9
l75bah:
	nop			;75ba
	nop			;75bb
	ret c			;75bc
	ret m			;75bd
	jr l75b8h		;75be
	ret c			;75c0
	jr l75b3h		;75c1
l75c3h:
	or b			;75c3
	jr nc,l75a6h		;75c4
	ld h,b			;75c6
	ld h,b			;75c7
	ret nz			;75c8
	ret nz			;75c9
	ret nz			;75ca
	add a,b			;75cb
	add a,b			;75cc
	add a,b			;75cd
	nop			;75ce
	nop			;75cf
	nop			;75d0
	nop			;75d1
	nop			;75d2
	nop			;75d3
	rst 38h			;75d4
	ld a,e			;75d5
	inc bc			;75d6
	cp 076h			;75d7
	ld b,07ch		;75d9
	xor h			;75db
l75dch:
	inc c			;75dc
	ld a,h			;75dd
	xor h			;75de
	inc c			;75df
	jr c,l75bah		;75e0
	jr l75dch		;75e2
	ret m			;75e4
	ret m			;75e5
	ret p			;75e6
	ret p			;75e7
	ret p			;75e8
	nop			;75e9
	nop			;75ea
	nop			;75eb
	nop			;75ec
	nop			;75ed
	nop			;75ee
	nop			;75ef
	nop			;75f0
	nop			;75f1
	rst 38h			;75f2
	rst 38h			;75f3
	rst 38h			;75f4
	rst 38h			;75f5
	rst 38h			;75f6
	rst 38h			;75f7
	rst 38h			;75f8
	nop			;75f9
	rst 38h			;75fa
	nop			;75fb
	rst 38h			;75fc
	rst 38h			;75fd
	nop			;75fe
	rst 38h			;75ff
	rst 38h			;7600
	nop			;7601
	rst 38h			;7602
	rst 38h			;7603
	rst 38h			;7604
	rst 38h			;7605
	nop			;7606
	rst 38h			;7607
	rst 38h			;7608
	nop			;7609
	rst 38h			;760a
	nop			;760b
	nop			;760c
	rst 38h			;760d
	rst 38h			;760e
	rst 38h			;760f
	rst 38h			;7610
	rst 38h			;7611
	rst 38h			;7612
	rst 38h			;7613
	rst 38h			;7614
	rst 38h			;7615
	rst 38h			;7616
	nop			;7617
	rst 38h			;7618
	rst 38h			;7619
	nop			;761a
	rst 38h			;761b
	nop			;761c
	rst 38h			;761d
	rst 38h			;761e
	nop			;761f
	rst 38h			;7620
	nop			;7621
	nop			;7622
	rst 38h			;7623
l7624h:
	nop			;7624
	nop			;7625
	rst 38h			;7626
	nop			;7627
	nop			;7628
	rst 38h			;7629
	nop			;762a
	rst 38h			;762b
	nop			;762c
	rst 38h			;762d
	nop			;762e
	rst 38h			;762f
	rst 38h			;7630
	nop			;7631
	rst 38h			;7632
	rst 38h			;7633
	nop			;7634
	rst 38h			;7635
	rst 38h			;7636
	nop			;7637
	rst 38h			;7638
	nop			;7639
	nop			;763a
	rst 38h			;763b
	nop			;763c
	nop			;763d
	rst 38h			;763e
	nop			;763f
	nop			;7640
	rst 38h			;7641
	nop			;7642
sub_7643h:
	rst 38h			;7643
	rst 38h			;7644
	rst 38h			;7645
	rst 38h			;7646
	rst 38h			;7647
	rst 38h			;7648
	nop			;7649
	nop			;764a
sub_764bh:
	nop			;764b
	nop			;764c
	rst 38h			;764d
	rst 38h			;764e
	nop			;764f
	rst 38h			;7650
	rst 38h			;7651
	djnz l7624h		;7652
	xor a			;7654
	ld l,c			;7655
l7656h:
	ret pe			;7656
	ld (hl),037h		;7657
	sub h			;7659
	ld a,b			;765a
	dec sp			;765b
	adc a,b			;765c
	ld a,h			;765d
	rst 38h			;765e
	sub h			;765f
	ld (hl),h		;7660
	ld a,a			;7661
	inc d			;7662
	call p,00000h		;7663
	nop			;7666
	nop			;7667
	nop			;7668
	nop			;7669
	nop			;766a
	rra			;766b
	rra			;766c
	nop			;766d
	rra			;766e
	rra			;766f
	ld (bc),a		;7670
	ld a,(00d35h)		;7671
	ld a,l			;7674
	ld h,(hl)		;7675
	ld b,072h		;7676
	ld l,a			;7678
	rra			;7679
	pop af			;767a
	rst 8			;767b
	rlca			;767c
	inc a			;767d
	inc sp			;767e
	inc bc			;767f
	jr c,l76b9h		;7680
	inc bc			;7682
	jr c,l76bch		;7683
	rrca			;7685
	ld a,b			;7686
	ld h,a			;7687
	rlca			;7688
	ld (hl),b		;7689
	ld l,a			;768a
	rra			;768b
	pop af			;768c
	rst 8			;768d
	rrca			;768e
	pop hl			;768f
	rst 18h			;7690
	ld c,0e0h		;7691
	rst 18h			;7693
	rlca			;7694
	ld (hl),b		;7695
	ld l,a			;7696
	rlca			;7697
	ld (hl),b		;7698
	ld l,a			;7699
	rra			;769a
	pop af			;769b
	rst 8			;769c
	ld c,0e0h		;769d
	rst 18h			;769f
	ccf			;76a0
	jp po,01f9eh		;76a1
	jp nz,01dbeh		;76a4
	ret nz			;76a7
	cp (hl)			;76a8
	ld a,a			;76a9
	call nz,01f3ch		;76aa
l76adh:
	ret nz			;76ad
	cp (hl)			;76ae
	rra			;76af
	jp nz,01fbeh		;76b0
	ret nz			;76b3
	cp (hl)			;76b4
	rra			;76b5
	jp nz,01fbeh		;76b6
l76b9h:
	ret nz			;76b9
	cp (hl)			;76ba
	rra			;76bb
l76bch:
	jp nz,01fbeh		;76bc
	ret nz			;76bf
	cp (hl)			;76c0
	rra			;76c1
	jp nz,000beh		;76c2
	ld bc,00001h		;76c5
	rra			;76c8
	rra			;76c9
	nop			;76ca
	cp 0ffh			;76cb
	nop			;76cd
	ret po			;76ce
	rst 38h			;76cf
	add a,c			;76d0
	add a,b			;76d1
	ld a,(hl)		;76d2
	di			;76d3
	ld (hl),b		;76d4
	adc a,h			;76d5
	ld a,a			;76d6
	ld a,b			;76d7
	ret po			;76d8
	cp 011h			;76d9
	ret p			;76db
	nop			;76dc
	ld bc,00001h		;76dd
	rra			;76e0
	rra			;76e1
	nop			;76e2
	ld e,01fh		;76e3
	inc bc			;76e5
	dec de			;76e6
	inc d			;76e7
	inc bc			;76e8
	add hl,de		;76e9
	rla			;76ea
	inc bc			;76eb
	jr l7705h		;76ec
	inc bc			;76ee
	jr l7708h		;76ef
	inc bc			;76f1
	jr l770bh		;76f2
	nop			;76f4
	cp 0ffh			;76f5
	nop			;76f7
	ret p			;76f8
	rst 38h			;76f9
	ld hl,09ee0h		;76fa
	add hl,sp		;76fd
	ret c			;76fe
	and (hl)		;76ff
	ccf			;7700
	adc a,0b8h		;7701
	dec sp			;7703
	sub (hl)		;7704
l7705h:
	ld (hl),d		;7705
	dec sp			;7706
	sub h			;7707
l7708h:
	ld (hl),d		;7708
	dec sp			;7709
	sub (hl)		;770a
l770bh:
	ld (hl),d		;770b
	pop af			;770c
	inc c			;770d
	add a,e			;770e
	di			;770f
	adc a,b			;7710
	add a,a			;7711
	di			;7712
	ex af,af'		;7713
	add a,a			;7714
	jp p,08788h		;7715
	di			;7718
	ex af,af'		;7719
	add a,(hl)		;771a
	push hl			;771b
	sub b			;771c
	adc a,(hl)		;771d
	rst 20h			;771e
	djnz l76adh		;771f
	rst 20h			;7721
	sub b			;7722
	adc a,h			;7723
	sbc a,a			;7724
	ld b,d			;7725
	ld a,09dh		;7726
	ld b,b			;7728
	ld a,09fh		;7729
	ld b,b			;772b
	inc a			;772c
	sbc a,a			;772d
	ld b,h			;772e
	inc a			;772f
	sbc a,e			;7730
	ld b,b			;7731
	inc a			;7732
	ccf			;7733
	add a,b			;7734
	ld a,b			;7735
	ccf			;7736
	adc a,b			;7737
	ld a,b			;7738
	scf			;7739
	add a,b			;773a
	ld a,b			;773b
	ld a,a			;773c
	djnz $+1		;773d
	ccf			;773f
	nop			;7740
	ret po			;7741
	ld a,a			;7742
	nop			;7743
	ret nz			;7744
	ld a,a			;7745
	nop			;7746
	add a,b			;7747
	rst 38h			;7748
	nop			;7749
	nop			;774a
	nop			;774b
	rst 38h			;774c
	rst 38h			;774d
	nop			;774e
	rst 38h			;774f
	rst 38h			;7750
	nop			;7751
	nop			;7752
	nop			;7753
	cp 005h			;7754
	call m,003fch		;7756
	nop			;7759
	cp 001h			;775a
	nop			;775c
	rst 38h			;775d
	nop			;775e
	nop			;775f
	rst 38h			;7760
	nop			;7761
	nop			;7762
	nop			;7763
	rst 38h			;7764
	rst 38h			;7765
	nop			;7766
	rst 38h			;7767
	rst 38h			;7768
	nop			;7769
	nop			;776a
	nop			;776b
	ld a,a			;776c
	djnz $+1		;776d
	ld a,a			;776f
	nop			;7770
	ret po			;7771
	ld a,a			;7772
	nop			;7773
	ret nz			;7774
	ld a,a			;7775
	nop			;7776
	add a,b			;7777
	rst 38h			;7778
	nop			;7779
	nop			;777a
sub_777bh:
	nop			;777b
	nop			;777c
	rst 38h			;777d
	ld a,a			;777e
	nop			;777f
	rst 38h			;7780
	ccf			;7781
	nop			;7782
	rst 38h			;7783
	nop			;7784
	nop			;7785
	nop			;7786
	nop			;7787
	nop			;7788
	nop			;7789
	nop			;778a
	rst 38h			;778b
	rst 38h			;778c
	nop			;778d
	rst 38h			;778e
	rst 38h			;778f
	add a,b			;7790
	add a,b			;7791
	ld a,a			;7792
	ld a,a			;7793
	nop			;7794
	rst 38h			;7795
	ccf			;7796
	nop			;7797
	rst 38h			;7798
	ld a,a			;7799
	rrca			;779a
	rst 38h			;779b
	nop			;779c
	nop			;779d
	nop			;779e
	nop			;779f
	nop			;77a0
	nop			;77a1
	nop			;77a2
	rst 38h			;77a3
	rst 38h			;77a4
	nop			;77a5
	rst 38h			;77a6
	rst 38h			;77a7
	nop			;77a8
	nop			;77a9
	rst 38h			;77aa
	rst 38h			;77ab
	nop			;77ac
	rst 38h			;77ad
	rst 38h			;77ae
	nop			;77af
	rst 38h			;77b0
	rst 38h			;77b1
	rst 38h			;77b2
	rst 38h			;77b3
	nop			;77b4
	nop			;77b5
	nop			;77b6
	nop			;77b7
	nop			;77b8
	nop			;77b9
	nop			;77ba
	rst 38h			;77bb
	rst 38h			;77bc
	nop			;77bd
	rst 38h			;77be
	rst 38h			;77bf
	ld bc,0fe01h		;77c0
	rst 38h			;77c3
	ld (bc),a		;77c4
	call m,004ffh		;77c5
	ret m			;77c8
	rst 38h			;77c9
	ret m			;77ca
	ret p			;77cb
	rrca			;77cc
	pop hl			;77cd
	rst 18h			;77ce
	rrca			;77cf
	ret po			;77d0
	rst 18h			;77d1
	rlca			;77d2
	ld (hl),b		;77d3
	ld l,a			;77d4
	dec b			;77d5
	jr c,l780eh		;77d6
	rlca			;77d8
	jr l77f3h		;77d9
	nop			;77db
	rra			;77dc
	rra			;77dd
	nop			;77de
	rrca			;77df
	rrca			;77e0
	nop			;77e1
	nop			;77e2
	nop			;77e3
	ccf			;77e4
	jp po,01f9eh		;77e5
	ret z			;77e8
	cp h			;77e9
	ccf			;77ea
	add a,b			;77eb
	ld (hl),b		;77ec
	ld a,b			;77ed
	add a,a			;77ee
l77efh:
	ld b,a			;77ef
	ret nz			;77f0
	inc a			;77f1
	inc a			;77f2
l77f3h:
	nop			;77f3
	ret po			;77f4
l77f5h:
	ret po			;77f5
	nop			;77f6
	nop			;77f7
	nop			;77f8
	nop			;77f9
	nop			;77fa
	nop			;77fb
	ld (hl),b		;77fc
	rra			;77fd
l77feh:
	ret p			;77fe
	ld a,h			;77ff
sub_7800h:
	inc de			;7800
	ret p			;7801
	ld a,a			;7802
	djnz l77f5h		;7803
	rst 38h			;7805
	nop			;7806
	nop			;7807
	nop			;7808
	rst 38h			;7809
	rst 38h			;780a
l780bh:
	ld a,a			;780b
	djnz l77feh		;780c
l780eh:
	ld a,h			;780e
	djnz $-11		;780f
	ld a,b			;7811
	djnz l780bh		;7812
	rst 38h			;7814
	rst 38h			;7815
	rst 38h			;7816
	nop			;7817
	rst 38h			;7818
	nop			;7819
	nop			;781a
	rst 38h			;781b
	nop			;781c
	rst 38h			;781d
	nop			;781e
	nop			;781f
	nop			;7820
	rst 38h			;7821
	rst 38h			;7822
	nop			;7823
	rst 38h			;7824
	rst 38h			;7825
	nop			;7826
	rst 38h			;7827
	rst 38h			;7828
	nop			;7829
	nop			;782a
	rst 38h			;782b
	nop			;782c
	rst 38h			;782d
	rst 38h			;782e
	nop			;782f
	rst 38h			;7830
	rst 38h			;7831
	add a,b			;7832
	ld a,(hl)		;7833
	ld a,a			;7834
	ld b,c			;7835
	cp a			;7836
	ld bc,00181h		;7837
	ld a,(hl)		;783a
	add a,c			;783b
	ld bc,0007eh		;783c
	nop			;783f
	rst 38h			;7840
	rst 38h			;7841
	nop			;7842
	rst 38h			;7843
	ld a,b			;7844
	rlca			;7845
	ret p			;7846
	ld (hl),b		;7847
	cpl			;7848
	ret po			;7849
	ret p			;784a
	rrca			;784b
	ret po			;784c
	ret po			;784d
	ld e,a			;784e
	ret nz			;784f
	pop bc			;7850
	cp (hl)			;7851
	add a,b			;7852
	pop bc			;7853
	cp (hl)			;7854
	add a,b			;7855
	add a,d			;7856
	ld a,l			;7857
l7858h:
	ld bc,l7b84h		;7858
	inc bc			;785b
	ld a,a			;785c
	rrca			;785d
	rst 38h			;785e
	ld (hl),b		;785f
	rra			;7860
l7861h:
	ret p			;7861
	ld a,h			;7862
	inc de			;7863
	ret p			;7864
	ld a,a			;7865
	djnz l7858h		;7866
	rst 38h			;7868
	nop			;7869
	nop			;786a
	nop			;786b
	rst 38h			;786c
	rst 38h			;786d
	ld a,a			;786e
	djnz l7861h		;786f
	ld a,h			;7871
	djnz $-11		;7872
	rla			;7874
	jp p,017efh		;7875
	pop af			;7878
	rst 28h			;7879
	rla			;787a
	ld (hl),c		;787b
	ld l,a			;787c
	rla			;787d
	ld (hl),b		;787e
	ld l,a			;787f
	rla			;7880
	ld (hl),b		;7881
	ld l,a			;7882
	dec d			;7883
	ld (hl),b		;7884
	ld l,(hl)		;7885
	rra			;7886
	ld h,b			;7887
	ld h,b			;7888
	nop			;7889
	ld a,a			;788a
	ld a,a			;788b
	cp 011h			;788c
	jp p,003eeh		;788e
	jp p,021fah		;7891
	and 0ffh		;7894
	nop			;7896
	nop			;7897
	nop			;7898
	rst 38h			;7899
	rst 38h			;789a
	jp c,0c66bh		;789b
	sbc a,d			;789e
	add hl,hl		;789f
	add a,08eh		;78a0
	ei			;78a2
	add a,(hl)		;78a3
	ld (hl),h		;78a4
	dec bc			;78a5
	call p,03fe4h		;78a6
	call po,01be4h		;78a9
	call po,000ffh		;78ac
	nop			;78af
	nop			;78b0
	rst 38h			;78b1
	rst 38h			;78b2
	adc a,h			;78b3
	rst 38h			;78b4
	add a,h			;78b5
	sbc a,h			;78b6
	ld (hl),e		;78b7
	adc a,h			;78b8
	inc e			;78b9
	rst 30h			;78ba
	inc c			;78bb
	rrca			;78bc
	pop hl			;78bd
	rst 38h			;78be
	ld e,a			;78bf
	jp nz,05ebfh		;78c0
	pop bc			;78c3
	cp (hl)			;78c4
	ld a,a			;78c5
	add a,b			;78c6
	add a,b			;78c7
	nop			;78c8
	rst 38h			;78c9
	rst 38h			;78ca
	ld e,(hl)		;78cb
	jp 05ebeh		;78cc
	pop bc			;78cf
	cp (hl)			;78d0
	ld e,(hl)		;78d1
	jp 05ebeh		;78d2
	pop bc			;78d5
	cp (hl)			;78d6
	ld e,(hl)		;78d7
	jp 05ebeh		;78d8
	pop bc			;78db
	cp (hl)			;78dc
	ld e,(hl)		;78dd
	jp l7fbeh		;78de
	add a,b			;78e1
	add a,b			;78e2
	nop			;78e3
	rst 38h			;78e4
	rst 38h			;78e5
	ld e,(hl)		;78e6
	jp 05ebeh		;78e7
	pop bc			;78ea
	cp (hl)			;78eb
	rst 0			;78ec
	inc a			;78ed
	jp 07cc5h		;78ee
	jp 03ce5h		;78f1
	ex (sp),hl		;78f4
	push af			;78f5
	inc c			;78f6
	di			;78f7
	rst 38h			;78f8
	nop			;78f9
	nop			;78fa
	nop			;78fb
	rst 38h			;78fc
	rst 38h			;78fd
	cp l			;78fe
	add a,d			;78ff
	ld a,l			;7900
	ld e,(hl)		;7901
	jp 088beh		;7902
	rst 38h			;7905
	add a,e			;7906
	adc a,l			;7907
	cp 080h			;7908
	adc a,l			;790a
	ld a,(hl)		;790b
	add a,b			;790c
	cp 001h			;790d
	ld bc,0ff00h		;790f
	rst 38h			;7912
	adc a,l			;7913
	cp 080h			;7914
	adc a,l			;7916
	ld a,(hl)		;7917
	add a,b			;7918
	adc a,l			;7919
	cp 080h			;791a
	sub l			;791c
	ei			;791d
	add a,d			;791e
	sub l			;791f
	ei			;7920
	add a,d			;7921
	sub l			;7922
	ei			;7923
	add a,d			;7924
	ld sp,hl		;7925
	ld b,006h		;7926
	nop			;7928
	rst 38h			;7929
	rst 38h			;792a
	sub l			;792b
	ei			;792c
	add a,d			;792d
	sub l			;792e
	ld a,e			;792f
	add a,d			;7930
	sub l			;7931
	ei			;7932
	add a,d			;7933
	sub l			;7934
	ld a,e			;7935
	add a,d			;7936
	sub l			;7937
	ei			;7938
	add a,d			;7939
	sub l			;793a
	ld a,e			;793b
	add a,d			;793c
	sub l			;793d
	ei			;793e
	add a,d			;793f
	sub l			;7940
	ld a,e			;7941
	add a,d			;7942
	sub l			;7943
	ei			;7944
	add a,d			;7945
	sub l			;7946
	ld a,e			;7947
	add a,d			;7948
	sub l			;7949
	ei			;794a
	add a,d			;794b
	adc a,l			;794c
	ld a,(hl)		;794d
	add a,b			;794e
	adc a,l			;794f
	cp 080h			;7950
	adc a,l			;7952
	ld a,(hl)		;7953
	add a,b			;7954
	adc a,l			;7955
	cp 080h			;7956
	cp 001h			;7958
	ld bc,0ff00h		;795a
	rst 38h			;795d
	adc a,l			;795e
	ld a,(hl)		;795f
	add a,b			;7960
	adc a,l			;7961
	cp 080h			;7962
	sub l			;7964
	ld a,e			;7965
	add a,d			;7966
	sub l			;7967
	ei			;7968
	add a,d			;7969
	sub l			;796a
	ld a,e			;796b
	add a,d			;796c
	sub l			;796d
	ei			;796e
	add a,d			;796f
	ld sp,hl		;7970
	ld b,006h		;7971
	nop			;7973
l7974h:
	rst 38h			;7974
	rst 38h			;7975
	sub l			;7976
	ei			;7977
	add a,d			;7978
	sub l			;7979
	ei			;797a
	add a,d			;797b
	jr z,l7974h		;797c
	ld b,014h		;797e
	ei			;7980
	inc bc			;7981
	adc a,d			;7982
	defb 0fdh,081h,0fch ;illegal sequence	;7983
	inc bc			;7986
	inc bc			;7987
	nop			;7988
	rst 38h			;7989
	rst 38h			;798a
	jp po,0e01fh		;798b
	pop hl			;798e
	ccf			;798f
	ret po			;7990
	ret p			;7991
	rrca			;7992
	ret p			;7993
	adc a,l			;7994
	ld a,(hl)		;7995
	add a,b			;7996
	call 080beh		;7997
	call 0803eh		;799a
	pop af			;799d
	ld c,000h		;799e
	cp 001h			;79a0
	ld bc,0ff00h		;79a2
	rst 38h			;79a5
	nop			;79a6
	rst 38h			;79a7
	rst 38h			;79a8
	nop			;79a9
	nop			;79aa
	nop			;79ab
	adc a,(hl)		;79ac
	ld sp,hl		;79ad
	add a,(hl)		;79ae
	ld c,07bh		;79af
	add a,(hl)		;79b1
	ld d,0f1h		;79b2
	ld c,016h		;79b4
	di			;79b6
	ld c,016h		;79b7
	pop af			;79b9
	ld c,016h		;79ba
	di			;79bc
	ld c,016h		;79bd
	pop hl			;79bf
	ld c,036h		;79c0
	jp 01c0eh		;79c2
	di			;79c5
	inc c			;79c6
	ld c,h			;79c7
	rst 20h			;79c8
	inc e			;79c9
	ld c,h			;79ca
	ex (sp),hl		;79cb
	inc e			;79cc
	ld c,h			;79cd
	rst 20h			;79ce
	inc e			;79cf
	xor h			;79d0
	jp 0ac1ch		;79d1
	rst 0			;79d4
	inc e			;79d5
	xor h			;79d6
	jp 0ac1ch		;79d7
	rst 0			;79da
	inc e			;79db
	ld (hl),b		;79dc
	rra			;79dd
	ret p			;79de
	ld a,b			;79df
	rrca			;79e0
	ret m			;79e1
	ld a,h			;79e2
	add a,e			;79e3
	ld a,h			;79e4
	inc a			;79e5
	add a,a			;79e6
	ld a,h			;79e7
	ld a,083h		;79e8
	ld a,(hl)		;79ea
	ld e,a			;79eb
	ret nz			;79ec
	ccf			;79ed
	ld l,a			;79ee
	pop hl			;79ef
	rra			;79f0
	ld (hl),a		;79f1
	ret nc			;79f2
	rrca			;79f3
	pop bc			;79f4
	inc e			;79f5
	ex (sp),hl		;79f6
	pop bc			;79f7
	ld a,h			;79f8
	jp 03c89h		;79f9
	jp 0f895h		;79fc
	add a,e			;79ff
	dec d			;7a00
	ld a,b			;7a01
	add a,e			;7a02
	add hl,hl		;7a03
	call p,02907h		;7a04
	call p,05107h		;7a07
	call pe,0a60fh		;7a0a
	pop de			;7a0d
	ld e,0a6h		;7a0e
	out (01eh),a		;7a10
	ld b,(hl)		;7a12
	or c			;7a13
	ld a,046h		;7a14
	or e			;7a16
	ld a,0cfh		;7a17
	jr nc,l7a4bh		;7a19
	nop			;7a1b
	rst 38h			;7a1c
	rst 38h			;7a1d
	add a,a			;7a1e
	ld (hl),c		;7a1f
	ld a,(hl)		;7a20
	add a,(hl)		;7a21
	ld (hl),b		;7a22
	ld a,a			;7a23
	adc a,l			;7a24
	ld a,(hl)		;7a25
	add a,b			;7a26
	adc a,l			;7a27
	cp 080h			;7a28
	adc a,l			;7a2a
	ld a,(hl)		;7a2b
	add a,b			;7a2c
	adc a,l			;7a2d
	cp 080h			;7a2e
	adc a,l			;7a30
	ld a,(hl)		;7a31
	add a,b			;7a32
	adc a,l			;7a33
	cp 080h			;7a34
	adc a,l			;7a36
	ld a,(hl)		;7a37
	add a,b			;7a38
	adc a,l			;7a39
	cp 080h			;7a3a
	ld l,e			;7a3c
	ret c			;7a3d
	rla			;7a3e
	ld l,e			;7a3f
	ret c			;7a40
	rla			;7a41
	ld h,l			;7a42
	call c,sub_621bh	;7a43
	sbc a,01dh		;7a46
	jp 03c3ch		;7a48
l7a4bh:
	nop			;7a4b
	rst 30h			;7a4c
	rst 30h			;7a4d
	ld h,b			;7a4e
	out (013h),a		;7a4f
	ld h,b			;7a51
	pop de			;7a52
	ld de,l7ec5h		;7a53
	ret nz			;7a56
	push bc			;7a57
	ld a,(hl)		;7a58
	ret nz			;7a59
	adc a,d			;7a5a
	dec a			;7a5b
	pop bc			;7a5c
	adc a,d			;7a5d
	defb 0fdh,081h,00ah ;illegal sequence	;7a5e
	ld a,l			;7a61
	add a,c			;7a62
	inc d			;7a63
	ei			;7a64
	inc bc			;7a65
	inc d			;7a66
	jp m,02802h		;7a67
	or 006h			;7a6a
	push bc			;7a6c
	ld e,(hl)		;7a6d
	ret po			;7a6e
	jp z,0c17dh		;7a6f
	adc a,d			;7a72
	cp l			;7a73
	pop bc			;7a74
	call p,0030bh		;7a75
	call m,00202h		;7a78
	nop			;7a7b
	cp 0feh			;7a7c
	nop			;7a7e
	call m,000fch		;7a7f
	nop			;7a82
	nop			;7a83
	ld e,(hl)		;7a84
	jp 05ebeh		;7a85
	pop bc			;7a88
	cp (hl)			;7a89
	ld e,h			;7a8a
	pop bc			;7a8b
	cp (hl)			;7a8c
	ld d,a			;7a8d
	ret nz			;7a8e
	cp b			;7a8f
	ld a,a			;7a90
	add a,b			;7a91
	add a,b			;7a92
	nop			;7a93
	rst 38h			;7a94
	rst 38h			;7a95
	nop			;7a96
	rst 38h			;7a97
	rst 38h			;7a98
	nop			;7a99
	nop			;7a9a
	nop			;7a9b
	sub l			;7a9c
	ei			;7a9d
	add a,d			;7a9e
	sub l			;7a9f
	ei			;7aa0
	add a,d			;7aa1
	dec d			;7aa2
	ld a,e			;7aa3
	add a,d			;7aa4
	push hl			;7aa5
	dec de			;7aa6
	ld (bc),a		;7aa7
	ld sp,hl		;7aa8
	rlca			;7aa9
	ld b,000h		;7aaa
	rst 38h			;7aac
	rst 38h			;7aad
	nop			;7aae
	rst 38h			;7aaf
	rst 38h			;7ab0
	nop			;7ab1
	nop			;7ab2
	nop			;7ab3
	pop af			;7ab4
	rra			;7ab5
	ret p			;7ab6
	pop hl			;7ab7
	rrca			;7ab8
	ret p			;7ab9
	jp po,0e01fh		;7aba
	jp po,0e03fh		;7abd
	jp po,0e03fh		;7ac0
	jp nz,0e01fh		;7ac3
	push bc			;7ac6
	ld a,0c0h		;7ac7
	push bc			;7ac9
	ld a,(hl)		;7aca
	ret nz			;7acb
	cpl			;7acc
	pop hl			;7acd
	rst 18h			;7ace
	ld l,0e3h		;7acf
	sbc a,05fh		;7ad1
	jp 0bfbeh		;7ad3
	add a,h			;7ad6
	ld a,h			;7ad7
	cp a			;7ad8
	add a,h			;7ad9
	ld a,h			;7ada
	ld a,h			;7adb
	dec bc			;7adc
	ret m			;7add
	ret m			;7ade
	rla			;7adf
	ret p			;7ae0
	ld sp,hl		;7ae1
	ld d,0f0h		;7ae2
	rst 38h			;7ae4
	rst 38h			;7ae5
	rst 38h			;7ae6
	nop			;7ae7
	rst 38h			;7ae8
	nop			;7ae9
	rst 38h			;7aea
	rst 38h			;7aeb
	nop			;7aec
	rst 38h			;7aed
	cp 000h			;7aee
	rst 38h			;7af0
	cp 000h			;7af1
	cp 07ch			;7af3
	ld bc,000feh		;7af5
	ld bc,0fe01h		;7af8
	cp 071h			;7afb
	rrca			;7afd
	ret p			;7afe
	ld (hl),c		;7aff
	rra			;7b00
	ret p			;7b01
	ld h,c			;7b02
	rrca			;7b03
	ret p			;7b04
	ret po			;7b05
	ccf			;7b06
	ret po			;7b07
	rst 38h			;7b08
	nop			;7b09
	nop			;7b0a
	nop			;7b0b
	rst 38h			;7b0c
	rst 38h			;7b0d
	jp nz,0c07fh		;7b0e
	pop bc			;7b11
	cp (hl)			;7b12
	ret nz			;7b13
	jp nz,081bdh		;7b14
	ld b,d			;7b17
	cp l			;7b18
	ld bc,03ec1h		;7b19
	nop			;7b1c
	ld h,b			;7b1d
	rra			;7b1e
	ret nz			;7b1f
	ld h,b			;7b20
	rra			;7b21
	ret nz			;7b22
	jr nc,l7b34h		;7b23
	ret po			;7b25
	jr l7b2fh		;7b26
	ret p			;7b28
	jr l7b32h		;7b29
	ret p			;7b2b
	adc a,h			;7b2c
	ld a,e			;7b2d
	add a,e			;7b2e
l7b2fh:
	adc a,l			;7b2f
	ei			;7b30
	add a,d			;7b31
l7b32h:
	adc a,l			;7b32
	ld a,e			;7b33
l7b34h:
	add a,d			;7b34
	ld sp,hl		;7b35
	ld b,006h		;7b36
	nop			;7b38
	rst 38h			;7b39
	rst 38h			;7b3a
	adc a,(hl)		;7b3b
	jp m,08d81h		;7b3c
	ld a,h			;7b3f
	add a,e			;7b40
	adc a,l			;7b41
	call m,0b683h		;7b42
	adc a,c			;7b45
	halt			;7b46
	ld l,(hl)		;7b47
	dec sp			;7b48
	and 06eh		;7b49
	add hl,de		;7b4b
	and 0ffh		;7b4c
	nop			;7b4e
	nop			;7b4f
	nop			;7b50
	rst 38h			;7b51
	rst 38h			;7b52
	adc a,(hl)		;7b53
	dec sp			;7b54
	add a,086h		;7b55
	ld (hl),c		;7b57
	adc a,(hl)		;7b58
	add a,(hl)		;7b59
	ld (hl),e		;7b5a
	adc a,(hl)		;7b5b
	inc c			;7b5c
	inc bc			;7b5d
	ret m			;7b5e
	add a,(hl)		;7b5f
	ld bc,0067ch		;7b60
	add a,c			;7b63
	call m,0807fh		;7b64
	add a,b			;7b67
	nop			;7b68
	rst 38h			;7b69
	rst 38h			;7b6a
	rra			;7b6b
	push bc			;7b6c
	call m,0833fh		;7b6d
	ret m			;7b70
	ccf			;7b71
	adc a,e			;7b72
	ret m			;7b73
	pop af			;7b74
	ld l,0e0h		;7b75
	jp po,0c15dh		;7b77
sub_7b7ah:
	jp po,0c15dh		;7b7a
	call m,00303h		;7b7d
	nop			;7b80
	rst 38h			;7b81
	rst 38h			;7b82
	add a,h			;7b83
l7b84h:
	ld a,e			;7b84
	add a,e			;7b85
	sbc a,03dh		;7b86
	pop bc			;7b88
	sbc a,03dh		;7b89
	pop bc			;7b8b
	add a,l			;7b8c
	cp 080h			;7b8d
	add a,l			;7b8f
	ld a,(hl)		;7b90
	add a,b			;7b91
	adc a,d			;7b92
	ld a,l			;7b93
	add a,c			;7b94
	ld a,(bc)		;7b95
	defb 0fdh,001h,00ah ;illegal sequence	;7b96
	defb 0fdh,001h,0e4h ;illegal sequence	;7b99
	dec de			;7b9c
	inc bc			;7b9d
	ret m			;7b9e
	rlca			;7b9f
	rlca			;7ba0
	nop			;7ba1
	cp 0feh			;7ba2
	sub d			;7ba4
	ld a,l			;7ba5
	add a,c			;7ba6
	sub d			;7ba7
	defb 0fdh,081h,012h ;illegal sequence	;7ba8
	ld a,l			;7bab
	add a,c			;7bac
	call p,0030bh		;7bad
	ret m			;7bb0
	ld b,006h		;7bb1
	nop			;7bb3
	cp 0feh			;7bb4
	nop			;7bb6
	call m,000fch		;7bb7
	nop			;7bba
sub_7bbbh:
	nop			;7bbb
	ld e,a			;7bbc
	pop bc			;7bbd
	cp a			;7bbe
	ld e,a			;7bbf
	jp nz,05ebfh		;7bc0
	pop bc			;7bc3
	cp (hl)			;7bc4
	ld a,a			;7bc5
	add a,b			;7bc6
	add a,b			;7bc7
	nop			;7bc8
	rst 38h			;7bc9
	rst 38h			;7bca
	ld e,(hl)		;7bcb
	jp 05ebeh		;7bcc
	pop bc			;7bcf
	cp (hl)			;7bd0
	ld e,(hl)		;7bd1
	jp 00bbeh		;7bd2
	jr l7beeh		;7bd5
	dec bc			;7bd7
	jr l7bf1h		;7bd8
	dec bc			;7bda
	sbc a,b			;7bdb
	sub a			;7bdc
	rrca			;7bdd
	ret nc			;7bde
	ret nc			;7bdf
	nop			;7be0
	rst 38h			;7be1
	rst 38h			;7be2
	adc a,e			;7be3
	ld a,b			;7be4
	ld (hl),a		;7be5
	ld c,e			;7be6
	cp b			;7be7
	scf			;7be8
	xor e			;7be9
	ret c			;7bea
	rla			;7beb
	nop			;7bec
	rst 38h			;7bed
l7beeh:
	rst 38h			;7bee
	ex af,af'		;7bef
	ret z			;7bf0
l7bf1h:
	or a			;7bf1
	inc d			;7bf2
	call nc,sub_7bbbh	;7bf3
	jp z,03d3ch		;7bf6
	add a,h			;7bf9
	ld a,(hl)		;7bfa
	ei			;7bfb
	adc a,d			;7bfc
	ld a,d			;7bfd
	ld a,e			;7bfe
	ld a,(bc)		;7bff
	jp m,00273h		;7c00
	jp m,02fc0h		;7c03
	ld c,0c1h		;7c06
	cpl			;7c08
	inc c			;7c09
	ret nz			;7c0a
	ld l,00dh		;7c0b
	nop			;7c0d
	inc e			;7c0e
	inc e			;7c0f
	nop			;7c10
	rst 38h			;7c11
	rst 38h			;7c12
	pop bc			;7c13
	inc l			;7c14
	dec bc			;7c15
	rst 0			;7c16
	inc l			;7c17
	inc bc			;7c18
	jp 00729h		;7c19
	dec c			;7c1c
	ret po			;7c1d
	sbc a,03eh		;7c1e
	push hl			;7c20
	sbc a,h			;7c21
l7c22h:
	ld a,(de)		;7c22
	pop bc			;7c23
	cp h			;7c24
	nop			;7c25
	add a,b			;7c26
	add a,b			;7c27
	nop			;7c28
	rst 38h			;7c29
	rst 38h			;7c2a
	ld a,l			;7c2b
	ld (de),a		;7c2c
	pop af			;7c2d
	ld l,a			;7c2e
	ld (bc),a		;7c2f
	pop af			;7c30
	defb 0fdh,020h,0e3h ;illegal sequence	;7c31
	and b			;7c34
	ld c,(hl)		;7c35
	dec c			;7c36
	and e			;7c37
	ld c,(hl)		;7c38
l7c39h:
	add hl,bc		;7c39
	and c			;7c3a
	ld c,h			;7c3b
	dec bc			;7c3c
	add a,a			;7c3d
	ld e,h			;7c3e
	inc de			;7c3f
	add a,e			;7c40
	ld e,b			;7c41
	rla			;7c42
	adc a,a			;7c43
sub_7c44h:
	add hl,sp		;7c44
	daa			;7c45
	add a,(hl)		;7c46
	jr nc,l7c78h		;7c47
	rra			;7c49
	ld (hl),d		;7c4a
	ld c,(hl)		;7c4b
	dec sp			;7c4c
	add a,b			;7c4d
	ld a,h			;7c4e
	rst 38h			;7c4f
	adc a,b			;7c50
	ld a,b			;7c51
	halt			;7c52
	ld bc,0fef8h		;7c53
	ld de,000f0h		;7c56
	nop			;7c59
	nop			;7c5a
	nop			;7c5b
	rst 38h			;7c5c
	rst 38h			;7c5d
	ld (0dde0h),iy		;7c5e
	ld (bc),a		;7c62
	ret po			;7c63
	adc a,a			;7c64
	jr nz,l7ca3h		;7c65
	adc a,(hl)		;7c67
	inc h			;7c68
	inc a			;7c69
	ld c,060h		;7c6a
	ld a,h			;7c6c
	ld c,065h		;7c6d
	ld a,l			;7c6f
	nop			;7c70
	ld h,e			;7c71
	ld h,e			;7c72
	nop			;7c73
	rst 38h			;7c74
	rst 38h			;7c75
	ex af,af'		;7c76
	ex (sp),hl		;7c77
l7c78h:
	jp m,0e701h		;7c78
	call p,sub_600dh	;7c7b
	ld e,(hl)		;7c7e
	ccf			;7c7f
	call po,0189ch		;7c80
l7c83h:
	ret nz			;7c83
	cp h			;7c84
	ld a,b			;7c85
	ret z			;7c86
	dec sp			;7c87
	nop			;7c88
	nop			;7c89
	nop			;7c8a
	nop			;7c8b
	rst 38h			;7c8c
	rst 38h			;7c8d
	ld l,b			;7c8e
	nop			;7c8f
	ret p			;7c90
	ret m			;7c91
	inc h			;7c92
	ret po			;7c93
	jp 00728h		;7c94
	rst 8			;7c97
	ld a,(0c706h)		;7c98
	jr nc,l7cabh		;7c9b
	rst 0			;7c9d
	inc (hl)		;7c9e
	inc c			;7c9f
	rst 0			;7ca0
	jr nc,$+14		;7ca1
l7ca3h:
	sbc a,a			;7ca3
	ld (hl),b		;7ca4
	ex af,af'		;7ca5
	adc a,a			;7ca6
	ld h,b			;7ca7
	jr l7c39h		;7ca8
	ld h,b			;7caa
l7cabh:
	jr l7cbch		;7cab
	call p,03f00h		;7cad
	adc a,000h		;7cb0
	ccf			;7cb2
	ccf			;7cb3
	nop			;7cb4
	nop			;7cb5
	ret nz			;7cb6
	ret nz			;7cb7
	nop			;7cb8
	rst 38h			;7cb9
	rst 38h			;7cba
	rra			;7cbb
l7cbch:
	pop bc			;7cbc
	rst 38h			;7cbd
	rra			;7cbe
	ld (bc),a		;7cbf
	cp 00eh			;7cc0
	dec b			;7cc2
	call m,0dc01h		;7cc3
	dec de			;7cc6
	inc bc			;7cc7
	cp b			;7cc8
	scf			;7cc9
	rlca			;7cca
	add hl,sp		;7ccb
	scf			;7ccc
	nop			;7ccd
	ld (hl),b		;7cce
	ld (hl),b		;7ccf
	nop			;7cd0
	rst 38h			;7cd1
	rst 38h			;7cd2
	adc a,e			;7cd3
	cp b			;7cd4
	daa			;7cd5
	push bc			;7cd6
	inc e			;7cd7
	inc de			;7cd8
	push bc			;7cd9
	inc e			;7cda
	inc de			;7cdb
	rst 38h			;7cdc
	call m,00ff8h		;7cdd
	call p,03f00h		;7ce0
	adc a,000h		;7ce3
	ccf			;7ce5
	ccf			;7ce6
	nop			;7ce7
	nop			;7ce8
	ret nz			;7ce9
	ret nz			;7cea
	nop			;7ceb
sub_7cech:
	rst 38h			;7cec
	rst 38h			;7ced
	rra			;7cee
	pop bc			;7cef
	rst 38h			;7cf0
	rra			;7cf1
	ld (bc),a		;7cf2
	cp 0ebh			;7cf3
	djnz l7c83h		;7cf5
	cp 091h			;7cf7
	adc a,b			;7cf9
	and 001h		;7cfa
	sbc a,b			;7cfc
	defb 0fdh,082h,090h ;illegal sequence	;7cfd
	ld b,b			;7d00
	nop			;7d01
	nop			;7d02
	nop			;7d03
	rst 38h			;7d04
	rst 38h			;7d05
	or (hl)			;7d06
	ex af,af'		;7d07
	ret nz			;7d08
	or (hl)			;7d09
	adc a,b			;7d0a
	ret nz			;7d0b
	ld d,a			;7d0c
	sub b			;7d0d
	ld c,097h		;7d0e
	ld (0972eh),a		;7d10
	jr nc,l7d43h		;7d13
	ld d,072h		;7d15
	ld l,a			;7d17
	nop			;7d18
	ret po			;7d19
	ret po			;7d1a
	nop			;7d1b
	rst 38h			;7d1c
	rst 38h			;7d1d
	ld d,0f2h		;7d1e
	rst 28h			;7d20
	rla			;7d21
	jp p,l77efh		;7d22
	nop			;7d25
	adc a,(hl)		;7d26
	rst 30h			;7d27
	ld (de),a		;7d28
	ld c,0f7h		;7d29
	djnz l7d3bh		;7d2b
	rst 30h			;7d2d
	ld (de),a		;7d2e
	ld c,0f7h		;7d2f
	djnz l7d41h		;7d31
	rst 30h			;7d33
	ld (de),a		;7d34
	ld c,057h		;7d35
	sub b			;7d37
	ld c,057h		;7d38
	sub d			;7d3a
l7d3bh:
	ld c,000h		;7d3b
	nop			;7d3d
	nop			;7d3e
	nop			;7d3f
	nop			;7d40
l7d41h:
	nop			;7d41
	nop			;7d42
l7d43h:
	nop			;7d43
	sbc a,c			;7d44
	sbc a,c			;7d45
	sbc a,c			;7d46
	sbc a,c			;7d47
	sbc a,c			;7d48
	sbc a,c			;7d49
	sbc a,c			;7d4a
	sbc a,c			;7d4b
	sub l			;7d4c
	ld d,a			;7d4d
	ld (hl),a		;7d4e
	ld (hl),a		;7d4f
	sub l			;7d50
	ld a,a			;7d51
	ld h,(hl)		;7d52
	ld d,a			;7d53
	sub l			;7d54
	ld a,b			;7d55
	rst 38h			;7d56
	inc (hl)		;7d57
	sub l			;7d58
	ld a,b			;7d59
	adc a,b			;7d5a
	ret m			;7d5b
	nop			;7d5c
	nop			;7d5d
	nop			;7d5e
	nop			;7d5f
	nop			;7d60
	nop			;7d61
	nop			;7d62
	nop			;7d63
	sbc a,c			;7d64
	nop			;7d65
	nop			;7d66
	nop			;7d67
	sbc a,c			;7d68
	sub b			;7d69
	nop			;7d6a
	nop			;7d6b
	ld (hl),e		;7d6c
	sbc a,c			;7d6d
	nop			;7d6e
	nop			;7d6f
	ld b,h			;7d70
	add hl,sp		;7d71
	sub b			;7d72
	nop			;7d73
	ld b,h			;7d74
	ld b,e			;7d75
	sbc a,c			;7d76
	nop			;7d77
	ld b,h			;7d78
	ld b,h			;7d79
	add hl,sp		;7d7a
	sub b			;7d7b
	nop			;7d7c
	nop			;7d7d
	nop			;7d7e
	nop			;7d7f
	nop			;7d80
	nop			;7d81
	nop			;7d82
	nop			;7d83
	nop			;7d84
	add hl,bc		;7d85
	sbc a,c			;7d86
	sbc a,c			;7d87
	nop			;7d88
	add hl,bc		;7d89
	sbc a,c			;7d8a
	sbc a,c			;7d8b
	nop			;7d8c
	add hl,bc		;7d8d
	ld d,(hl)		;7d8e
	ld (hl),a		;7d8f
	nop			;7d90
	add hl,bc		;7d91
	ld d,a			;7d92
	ld h,(hl)		;7d93
	nop			;7d94
	add hl,bc		;7d95
	ld d,a			;7d96
	adc a,b			;7d97
	nop			;7d98
	add hl,bc		;7d99
	ld d,a			;7d9a
	adc a,b			;7d9b
	nop			;7d9c
	nop			;7d9d
	nop			;7d9e
	nop			;7d9f
	nop			;7da0
	nop			;7da1
	nop			;7da2
	nop			;7da3
	sbc a,c			;7da4
	sbc a,c			;7da5
	sbc a,c			;7da6
	sbc a,c			;7da7
	sbc a,c			;7da8
	sbc a,c			;7da9
	sbc a,c			;7daa
	sbc a,c			;7dab
	ld (hl),a		;7dac
	ld (hl),a		;7dad
	ld b,e			;7dae
	sub l			;7daf
	ld (hl),a		;7db0
	ld b,h			;7db1
	ld b,e			;7db2
	sub l			;7db3
	ld h,h			;7db4
	ld b,l			;7db5
	ld b,e			;7db6
	sub l			;7db7
	call p,04345h		;7db8
	sub l			;7dbb
	cp d			;7dbc
	nop			;7dbd
	inc c			;7dbe
	cp e			;7dbf
	and b			;7dc0
	nop			;7dc1
	dec bc			;7dc2
	nop			;7dc3
	sbc a,c			;7dc4
	nop			;7dc5
	or b			;7dc6
	nop			;7dc7
	sbc a,c			;7dc8
	sub b			;7dc9
	nop			;7dca
	nop			;7dcb
	ld (hl),e		;7dcc
	sbc a,c			;7dcd
	nop			;7dce
	nop			;7dcf
	ld b,h			;7dd0
	add hl,sp		;7dd1
	sub b			;7dd2
	nop			;7dd3
	ld b,h			;7dd4
	ld b,e			;7dd5
	sbc a,c			;7dd6
	nop			;7dd7
	ld b,h			;7dd8
	ld b,h			;7dd9
	add hl,sp		;7dda
	sub b			;7ddb
	cp h			;7ddc
	rlc b			;7ddd
	nop			;7ddf
	cp h			;7de0
	cp e			;7de1
	nop			;7de2
	nop			;7de3
	cp h			;7de4
	cp c			;7de5
	sbc a,c			;7de6
	sbc a,c			;7de7
	cp h			;7de8
	cp c			;7de9
	sbc a,c			;7dea
	sbc a,c			;7deb
	cp h			;7dec
	cp c			;7ded
	ld d,(hl)		;7dee
	ld (hl),a		;7def
	cp h			;7df0
	cp c			;7df1
	ld d,a			;7df2
	ld h,(hl)		;7df3
	cp h			;7df4
	cp c			;7df5
	ld d,a			;7df6
	adc a,b			;7df7
	cp e			;7df8
	cp c			;7df9
	ld d,a			;7dfa
	adc a,b			;7dfb
	cp e			;7dfc
	or b			;7dfd
	nop			;7dfe
	nop			;7dff
	nop			;7e00
	nop			;7e01
	nop			;7e02
	nop			;7e03
	sbc a,c			;7e04
	sbc a,c			;7e05
	sbc a,c			;7e06
	sbc a,c			;7e07
	sbc a,c			;7e08
	sbc a,c			;7e09
	sbc a,c			;7e0a
	sbc a,c			;7e0b
	ld (hl),a		;7e0c
	ld (hl),a		;7e0d
	ld b,e			;7e0e
	sub l			;7e0f
	ld (hl),a		;7e10
	ld b,h			;7e11
	ld b,e			;7e12
	sub l			;7e13
	ld h,h			;7e14
	ld b,l			;7e15
	ld b,e			;7e16
	sub l			;7e17
	call p,04345h		;7e18
	sub l			;7e1b
	cp e			;7e1c
	cp c			;7e1d
	ld d,a			;7e1e
	adc a,b			;7e1f
	xor e			;7e20
	cp c			;7e21
	ld d,a			;7e22
	adc a,b			;7e23
	sbc a,e			;7e24
	cp c			;7e25
	ld d,a			;7e26
	adc a,b			;7e27
	sbc a,e			;7e28
	cp c			;7e29
	inc sp			;7e2a
	inc sp			;7e2b
	sbc a,d			;7e2c
	cp c			;7e2d
	sbc a,c			;7e2e
	sbc a,c			;7e2f
	ld a,(057b9h)		;7e30
	adc a,b			;7e33
	ld b,e			;7e34
	xor c			;7e35
	ld d,a			;7e36
	adc a,b			;7e37
	ld d,h			;7e38
	xor c			;7e39
	ld d,a			;7e3a
	adc a,b			;7e3b
	ld d,h			;7e3c
	xor c			;7e3d
	ld d,a			;7e3e
	adc a,b			;7e3f
	ld b,l			;7e40
	ld b,e			;7e41
	ld d,a			;7e42
	adc a,b			;7e43
	ld b,h			;7e44
	ld d,h			;7e45
	ld d,a			;7e46
	adc a,b			;7e47
	ld b,h			;7e48
	ld b,l			;7e49
	ld d,a			;7e4a
	adc a,b			;7e4b
	ld b,h			;7e4c
	ld b,l			;7e4d
	ld d,a			;7e4e
	adc a,b			;7e4f
	ld b,h			;7e50
	ld b,h			;7e51
	ld d,a			;7e52
	adc a,b			;7e53
	ld b,h			;7e54
	ld b,h			;7e55
	ld d,a			;7e56
	adc a,b			;7e57
	call p,04544h		;7e58
	adc a,b			;7e5b
	ld a,(bc)		;7e5c
	cp h			;7e5d
	call 000ddh		;7e5e
	xor e			;7e61
	call z,099ddh		;7e62
	xor e			;7e65
	call z,099cch		;7e66
	sbc a,d			;7e69
	cp h			;7e6a
	call z,09a77h		;7e6b
	xor e			;7e6e
	cp e			;7e6f
	ld (hl),a		;7e70
	ld c,c			;7e71
	xor d			;7e72
	cp e			;7e73
	ld h,h			;7e74
	ld b,h			;7e75
	sbc a,d			;7e76
	xor d			;7e77
	ld (hl),h		;7e78
	ld b,h			;7e79
	ld c,c			;7e7a
	sbc a,d			;7e7b
	defb 0ddh,0ddh,0ddh ;illegal sequence	;7e7c
	call z,0ddddh		;7e7f
	call z,0cccbh		;7e82
	call z,0bacbh		;7e85
	call z,0bacbh		;7e88
	xor c			;7e8b
	cp e			;7e8c
	cp e			;7e8d
	xor c			;7e8e
	sub a			;7e8f
	cp e			;7e90
	xor d			;7e91
	sbc a,c			;7e92
	ld d,a			;7e93
	xor d			;7e94
	xor c			;7e95
	sbc a,b			;7e96
	ld b,h			;7e97
	xor d			;7e98
	sbc a,c			;7e99
	adc a,b			;7e9a
	ret m			;7e9b
	sbc a,c			;7e9c
	sbc a,c			;7e9d
	sbc a,c			;7e9e
	sub b			;7e9f
	sbc a,c			;7ea0
	ld (hl),a		;7ea1
	ld d,e			;7ea2
	sbc a,c			;7ea3
	ld (hl),a		;7ea4
	ld (hl),h		;7ea5
	ld b,e			;7ea6
	sbc a,c			;7ea7
	ld (hl),a		;7ea8
	ld b,h			;7ea9
	ld d,e			;7eaa
	sbc a,c			;7eab
	ld h,h			;7eac
	ld b,h			;7ead
	ld d,e			;7eae
	sbc a,c			;7eaf
	call p,05344h		;7eb0
	sbc a,c			;7eb3
	add a,h			;7eb4
	ld b,h			;7eb5
	ld d,e			;7eb6
	sbc a,c			;7eb7
	call p,05344h		;7eb8
	sbc a,c			;7ebb
	nop			;7ebc
	nop			;7ebd
	nop			;7ebe
	nop			;7ebf
	nop			;7ec0
	nop			;7ec1
	nop			;7ec2
	nop			;7ec3
	sbc a,c			;7ec4
l7ec5h:
	sbc a,c			;7ec5
	sbc a,c			;7ec6
	sbc a,c			;7ec7
	sbc a,c			;7ec8
	sbc a,c			;7ec9
	sbc a,c			;7eca
	sbc a,c			;7ecb
	ld (hl),a		;7ecc
	ld (hl),a		;7ecd
	ld (hl),a		;7ece
	inc sp			;7ecf
	ld (hl),a		;7ed0
	ld (hl),a		;7ed1
	ld b,h			;7ed2
	ld b,e			;7ed3
	ld h,h			;7ed4
	ld b,h			;7ed5
	ld d,l			;7ed6
	ld b,e			;7ed7
	ld (hl),h		;7ed8
	ld b,h			;7ed9
	ld d,l			;7eda
	ld b,e			;7edb
	call p,05544h		;7edc
	ld b,e			;7edf
	call p,05544h		;7ee0
	ld b,e			;7ee3
	add a,h			;7ee4
	ld b,h			;7ee5
	ld d,l			;7ee6
	ld b,e			;7ee7
	inc sp			;7ee8
	inc sp			;7ee9
	inc sp			;7eea
	add hl,sp		;7eeb
	sbc a,c			;7eec
	sbc a,c			;7eed
	sbc a,c			;7eee
	sbc a,c			;7eef
	call p,05544h		;7ef0
	ld b,e			;7ef3
	add a,h			;7ef4
	ld b,h			;7ef5
	ld d,l			;7ef6
	ld b,e			;7ef7
	call p,05544h		;7ef8
	ld b,e			;7efb
	ld d,h			;7efc
	add hl,sp		;7efd
	ld d,a			;7efe
	adc a,b			;7eff
	ld b,l			;7f00
	ld b,e			;7f01
	ld d,a			;7f02
	adc a,b			;7f03
	ld b,h			;7f04
	ld d,h			;7f05
	ld d,a			;7f06
	adc a,b			;7f07
	ld b,h			;7f08
	ld b,l			;7f09
	ld d,a			;7f0a
	adc a,b			;7f0b
	ld b,h			;7f0c
	ld b,l			;7f0d
	ld d,a			;7f0e
	adc a,b			;7f0f
	ld b,h			;7f10
	ld b,h			;7f11
	ld d,a			;7f12
	adc a,b			;7f13
	ld b,h			;7f14
	ld b,h			;7f15
	ld d,a			;7f16
	adc a,b			;7f17
	call p,04544h		;7f18
	adc a,b			;7f1b
	rlc b			;7f1c
	nop			;7f1e
	nop			;7f1f
	or b			;7f20
	nop			;7f21
	nop			;7f22
	nop			;7f23
	nop			;7f24
	nop			;7f25
	nop			;7f26
	nop			;7f27
	nop			;7f28
	nop			;7f29
	nop			;7f2a
	nop			;7f2b
	nop			;7f2c
	nop			;7f2d
	nop			;7f2e
	nop			;7f2f
	nop			;7f30
	nop			;7f31
	nop			;7f32
	nop			;7f33
	nop			;7f34
	nop			;7f35
	nop			;7f36
	nop			;7f37
	nop			;7f38
	nop			;7f39
	nop			;7f3a
	nop			;7f3b
	nop			;7f3c
	nop			;7f3d
	nop			;7f3e
	nop			;7f3f
	nop			;7f40
	nop			;7f41
	nop			;7f42
	nop			;7f43
	rst 38h			;7f44
	rst 38h			;7f45
	ret p			;7f46
	ret p			;7f47
	nop			;7f48
	ret p			;7f49
	nop			;7f4a
	rst 38h			;7f4b
	nop			;7f4c
	ret p			;7f4d
	nop			;7f4e
	ret p			;7f4f
	nop			;7f50
l7f51h:
	ret p			;7f51
	nop			;7f52
	ret p			;7f53
	nop			;7f54
	ret p			;7f55
	nop			;7f56
	ret p			;7f57
	nop			;7f58
	nop			;7f59
	nop			;7f5a
	nop			;7f5b
	nop			;7f5c
	nop			;7f5d
	nop			;7f5e
	nop			;7f5f
	nop			;7f60
	nop			;7f61
	nop			;7f62
	nop			;7f63
	nop			;7f64
	ret p			;7f65
	nop			;7f66
	nop			;7f67
	rrca			;7f68
	ret p			;7f69
	nop			;7f6a
	nop			;7f6b
	ret p			;7f6c
	ret p			;7f6d
	nop			;7f6e
	nop			;7f6f
	nop			;7f70
	ret p			;7f71
	nop			;7f72
	nop			;7f73
	nop			;7f74
	ret p			;7f75
	nop			;7f76
	nop			;7f77
	nop			;7f78
	nop			;7f79
	nop			;7f7a
	nop			;7f7b
	rst 38h			;7f7c
	rst 38h			;7f7d
	rst 38h			;7f7e
	rst 38h			;7f7f
l7f80h:
	rst 38h			;7f80
	rst 38h			;7f81
	rst 38h			;7f82
l7f83h:
	rst 38h			;7f83
	rst 38h			;7f84
	rst 38h			;7f85
	rst 38h			;7f86
	rst 38h			;7f87
	rst 38h			;7f88
l7f89h:
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
l7fbeh:
	rst 38h			;7fbe
	rst 38h			;7fbf
	rst 38h			;7fc0
	rst 38h			;7fc1
	rst 38h			;7fc2
	rst 38h			;7fc3
sub_7fc4h:
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

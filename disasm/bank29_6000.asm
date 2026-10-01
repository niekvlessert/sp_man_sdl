; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank29_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank29.bin

	org 06000h

	nop			;6000
l6001h:
	ld de,011c0h		;6001
	add a,b			;6004
	ld de,01120h		;6005
	nop			;6008
	djnz $-30		;6009
	rst 38h			;600b
	cp 002h			;600c
	ret m			;600e
	ld hl,(001e2h)		;600f
	add a,c			;6012
	ld b,b			;6013
	add a,c			;6014
	ret nc			;6015
	add a,d			;6016
	jr nc,$-6		;6017
	ld d,d			;6019
	and b			;601a
	and b			;601b
	and b			;601c
	ret po			;601d
	and c			;601e
	ld b,b			;601f
	sub c			;6020
	add a,b			;6021
	sub d			;6022
	nop			;6023
	sub d			;6024
	add a,b			;6025
	ret m			;6026
	dec e			;6027
	ld sp,hl		;6028
	ld b,b			;6029
	add a,b			;602a
	rst 30h			;602b
	ld b,0f9h		;602c
	ld b,b			;602e
	add a,b			;602f
	rst 30h			;6030
	ex af,af'		;6031
	ld sp,hl		;6032
	ld b,b			;6033
	add a,b			;6034
	rst 30h			;6035
	ld a,(bc)		;6036
	ld sp,hl		;6037
	ld b,b			;6038
	add a,b			;6039
	rst 30h			;603a
	inc c			;603b
	ld sp,hl		;603c
	ld b,b			;603d
	add a,b			;603e
l603fh:
	rst 38h			;603f
	jp nz,0c100h		;6040
	ret nz			;6043
	pop bc			;6044
	add a,b			;6045
	pop bc			;6046
	jr nz,$-61		;6047
	nop			;6049
	ret nz			;604a
	ret po			;604b
	ret nz			;604c
	and b			;604d
	ret nz			;604e
l604fh:
	add a,b			;604f
	jp m,002feh		;6050
	ret po			;6053
	inc bc			;6054
	jp po,l6101h		;6055
	ld h,b			;6058
	inc sp			;6059
	nop			;605a
	ld h,c			;605b
	nop			;605c
l605dh:
	ld h,c			;605d
	ld h,b			;605e
l605fh:
	ld h,c			;605f
	sub b			;6060
	ld h,c			;6061
	ret nc			;6062
	ld h,c			;6063
	ret p			;6064
	ld h,d			;6065
	ld b,b			;6066
	ld h,d			;6067
	add a,b			;6068
	ld h,d			;6069
	ret nc			;606a
	ld h,e			;606b
	nop			;606c
	ld h,e			;606d
	ld b,b			;606e
	ld l,d			;606f
	nop			;6070
	ld l,b			;6071
	nop			;6072
	ld h,(hl)		;6073
	nop			;6074
	ld h,h			;6075
	nop			;6076
	ld h,d			;6077
	nop			;6078
	ld h,c			;6079
	nop			;607a
	ld h,b			;607b
	ret nz			;607c
	djnz l603fh		;607d
	ld c,d			;607f
l6080h:
	nop			;6080
	ld c,b			;6081
	nop			;6082
	ld b,(hl)		;6083
	nop			;6084
	ld b,h			;6085
	nop			;6086
	ld b,d			;6087
	nop			;6088
	ld b,c			;6089
	nop			;608a
	ld b,b			;608b
	ret nz			;608c
	djnz l604fh		;608d
	ld hl,(02800h)		;608f
	nop			;6092
	ld h,000h		;6093
	inc h			;6095
	nop			;6096
	ld (02100h),hl		;6097
	nop			;609a
	jr nz,l605dh		;609b
	djnz l605fh		;609d
	ld a,(de)		;609f
	nop			;60a0
	jr l60a3h		;60a1
l60a3h:
	ld d,000h		;60a3
	inc d			;60a5
	nop			;60a6
	ld (de),a		;60a7
	nop			;60a8
	ld de,01000h		;60a9
	ret nz			;60ac
	nop			;60ad
	ret nz			;60ae
	ld a,(bc)		;60af
	nop			;60b0
	ex af,af'		;60b1
	nop			;60b2
	ld b,000h		;60b3
	inc b			;60b5
	nop			;60b6
	rst 38h			;60b7
	cp 002h			;60b8
	ret m			;60ba
	dec bc			;60bb
	jp po,0b101h		;60bc
	ld h,b			;60bf
	ld b,e			;60c0
	nop			;60c1
	ret m			;60c2
	ld d,d			;60c3
	or c			;60c4
	nop			;60c5
	or c			;60c6
	ld h,b			;60c7
	or c			;60c8
l60c9h:
	sub b			;60c9
	or c			;60ca
	ret nc			;60cb
	or c			;60cc
	ret p			;60cd
	or d			;60ce
	ld b,b			;60cf
	or d			;60d0
	add a,b			;60d1
	or d			;60d2
	ret nc			;60d3
	or e			;60d4
	nop			;60d5
	or e			;60d6
	ld b,b			;60d7
	ret m			;60d8
	ld d,d			;60d9
	ld sp,hl		;60da
	call m,0f780h		;60db
	inc bc			;60de
	ld sp,hl		;60df
	call m,0f780h		;60e0
	ld b,0f9h		;60e3
l60e5h:
	call m,0f780h		;60e5
	ex af,af'		;60e8
	ld sp,hl		;60e9
	call m,0df80h		;60ea
l60edh:
	ld a,(bc)		;60ed
	nop			;60ee
	ex af,af'		;60ef
	nop			;60f0
	ld b,000h		;60f1
	inc b			;60f3
	nop			;60f4
	ld (bc),a		;60f5
	nop			;60f6
	ld bc,00000h		;60f7
	ret nz			;60fa
	rst 38h			;60fb
	xor d			;60fc
	nop			;60fd
	xor b			;60fe
	nop			;60ff
	and (hl)		;6100
l6101h:
	nop			;6101
	and h			;6102
l6103h:
	nop			;6103
	and d			;6104
	nop			;6105
	and c			;6106
	nop			;6107
	and b			;6108
	ret nz			;6109
	nop			;610a
	ret nz			;610b
	jp m,002feh		;610c
	ret po			;610f
	ld bc,001e2h		;6110
	add a,b			;6113
	ret po			;6114
	add a,c			;6115
	jr nc,$-125		;6116
	sub b			;6118
	add a,d			;6119
	nop			;611a
	add a,h			;611b
	nop			;611c
	add a,(hl)		;611d
	nop			;611e
	add a,l			;611f
l6120h:
	nop			;6120
	add a,h			;6121
	nop			;6122
	add a,d			;6123
	nop			;6124
	add a,c			;6125
l6126h:
	sub b			;6126
	add a,c			;6127
	jr nc,$-126		;6128
	ret po			;612a
	add a,b			;612b
	and b			;612c
	ld b,c			;612d
l612eh:
	sub b			;612e
	ld b,c			;612f
	jr nc,$+66		;6130
	ret po			;6132
l6133h:
	ld b,b			;6133
	and b			;6134
	ld sp,03190h		;6135
	jr nc,l616ah		;6138
	ret po			;613a
	jr nc,$-94		;613b
	ld hl,02190h		;613d
	jr nc,$+34		;6140
	ret po			;6142
	jr nz,l60e5h		;6143
	ld de,01190h		;6145
	jr nc,$+18		;6148
	ret po			;614a
	djnz l60edh		;614b
	ld bc,00190h		;614d
	jr nc,l6152h		;6150
l6152h:
	ret po			;6152
	rst 38h			;6153
	cp 002h			;6154
	ret m			;6156
	ld l,a			;6157
	jp po,0c001h		;6158
l615bh:
	ret po			;615b
	pop bc			;615c
	jr nc,l6120h		;615d
	sub b			;615f
	jp nz,0c400h		;6160
	nop			;6163
	ret m			;6164
	ld c,d			;6165
	add a,000h		;6166
	push bc			;6168
	nop			;6169
l616ah:
	call nz,0c200h		;616a
	nop			;616d
	pop bc			;616e
	sub b			;616f
	pop bc			;6170
l6171h:
	jr nc,l6133h		;6171
	ret po			;6173
	ret nz			;6174
	and b			;6175
	ld d,c			;6176
	sub b			;6177
	ld d,c			;6178
	jr nc,$+82		;6179
	ret po			;617b
	ld d,b			;617c
	and b			;617d
	ld sp,03190h		;617e
	jr nc,$+50		;6181
	ret po			;6183
	jr nc,l6126h		;6184
	ld hl,02190h		;6186
	jr nc,$+34		;6189
	ret po			;618b
	jr nz,l612eh		;618c
	ld de,01190h		;618e
	jr nc,l61a3h		;6191
	ret po			;6193
	djnz $-94		;6194
	ld bc,00190h		;6196
	jr nc,l619bh		;6199
l619bh:
	ret po			;619b
	nop			;619c
	and b			;619d
	rst 38h			;619e
	cp 002h			;619f
	ret po			;61a1
	ld (bc),a		;61a2
l61a3h:
	jp po,09001h		;61a3
	ld h,b			;61a6
	and c			;61a7
	add a,b			;61a8
	and d			;61a9
	djnz $-91		;61aa
	ld (hl),b		;61ac
	and h			;61ad
	ret nz			;61ae
	and l			;61af
	nop			;61b0
	and (hl)		;61b1
	jr nc,l615bh		;61b2
	ld d,b			;61b4
	xor b			;61b5
	ld h,b			;61b6
	sub b			;61b7
	ld l,b			;61b8
	rst 30h			;61b9
	ld (bc),a		;61ba
	ld sp,hl		;61bb
	ld de,0f782h		;61bc
	inc b			;61bf
	ld sp,hl		;61c0
	ld de,0f782h		;61c1
	ld b,0f9h		;61c4
	ld de,0df82h		;61c6
l61c9h:
	ld sp,032a0h		;61c9
	ld d,b			;61cc
	ld (033a0h),a		;61cd
	ld d,b			;61d0
	inc (hl)		;61d1
	nop			;61d2
	inc (hl)		;61d3
	or b			;61d4
	dec (hl)		;61d5
	ld d,b			;61d6
	ld (hl),000h		;61d7
	ld (hl),080h		;61d9
	ld (hl),0f0h		;61db
l61ddh:
	scf			;61dd
	ld (hl),b		;61de
	jr c,l6171h		;61df
	rst 38h			;61e1
l61e2h:
	cp 002h			;61e2
	ret m			;61e4
	jr z,l61c9h		;61e5
l61e7h:
	ld bc,l6080h		;61e7
	pop bc			;61ea
	add a,b			;61eb
l61ech:
	jp nz,0c310h		;61ec
	ld (hl),b		;61ef
	call nz,0c5c0h		;61f0
	nop			;61f3
	add a,030h		;61f4
	rst 0			;61f6
	ld d,b			;61f7
	ret z			;61f8
	ld h,b			;61f9
	add a,b			;61fa
	ld l,b			;61fb
l61fch:
	ld sp,hl		;61fc
	ld de,0f882h		;61fd
	ld h,0f7h		;6200
	ld (bc),a		;6202
	ld sp,hl		;6203
	ld de,0f782h		;6204
	ld b,0f9h		;6207
	ld de,0f782h		;6209
	add hl,bc		;620c
	ld sp,hl		;620d
	ld de,0ff82h		;620e
	pop bc			;6211
	and b			;6212
	jp nz,0c250h		;6213
	ret po			;6216
	jp 0c450h		;6217
	nop			;621a
	call nz,0c5b0h		;621b
	ld d,b			;621e
	add a,000h		;621f
	add a,080h		;6221
	add a,0f0h		;6223
	rst 0			;6225
	ld (hl),b		;6226
	ret z			;6227
	sub b			;6228
	ret			;6229
	and b			;622a
	jp z,0fad0h		;622b
	cp 002h			;622e
	jp po,0b201h		;6230
	jr nz,l61e7h		;6233
	ld (hl),b		;6235
	and c			;6236
	jr nc,l61ddh		;6237
	jr nz,l61ddh		;6239
	jr nc,l61e2h		;623b
	nop			;623d
	and c			;623e
	nop			;623f
	and c			;6240
	add a,b			;6241
	and e			;6242
	nop			;6243
	and d			;6244
	add a,b			;6245
	and d			;6246
	nop			;6247
	and c			;6248
	jr nc,l61ech		;6249
	add a,b			;624b
	and d			;624c
	nop			;624d
	and e			;624e
	add a,b			;624f
	and e			;6250
	nop			;6251
	and e			;6252
	ret nz			;6253
	and h			;6254
	jr nz,l61fch		;6255
	nop			;6257
	and c			;6258
	ld b,b			;6259
	and d			;625a
	nop			;625b
	and d			;625c
	add a,b			;625d
	and e			;625e
	nop			;625f
	and c			;6260
	ret nz			;6261
	and d			;6262
	jr nc,$-91		;6263
	jr nz,$-90		;6265
	nop			;6267
	and l			;6268
	nop			;6269
	add a,c			;626a
	ret nz			;626b
	add a,d			;626c
	jr nz,$-124		;626d
	ret nz			;626f
	add a,e			;6270
	nop			;6271
	add a,e			;6272
	ld h,b			;6273
	add a,h			;6274
	nop			;6275
	add a,h			;6276
	add a,b			;6277
	add a,l			;6278
	nop			;6279
l627ah:
	add a,(hl)		;627a
	nop			;627b
	jp po,l7202h		;627c
l627fh:
	nop			;627f
	ld (hl),d		;6280
	add a,b			;6281
	ld (hl),e		;6282
l6283h:
	nop			;6283
	sbc a,074h		;6284
	ld (hl),l		;6286
	halt			;6287
	ld (hl),a		;6288
	ld a,b			;6289
	ld h,h			;628a
	ld h,l			;628b
	ld h,(hl)		;628c
	ld h,a			;628d
	ld l,b			;628e
	ld b,h			;628f
	ld b,l			;6290
	ld b,(hl)		;6291
	ld b,a			;6292
	ld c,b			;6293
	inc h			;6294
	dec h			;6295
	ld h,027h		;6296
	jr z,$+43		;6298
	or 0ffh			;629a
	cp 002h			;629c
	ret m			;629e
	jr z,l6283h		;629f
	ld bc,030c1h		;62a1
	call nz,0c220h		;62a4
	jr nc,$-57		;62a7
	nop			;62a9
	ret m			;62aa
	inc hl			;62ab
	pop bc			;62ac
	nop			;62ad
	pop bc			;62ae
	add a,b			;62af
	jp 0c200h		;62b0
	add a,b			;62b3
	jp nz,0c100h		;62b4
	jr nc,l627ah		;62b7
	add a,b			;62b9
	jp nz,0c300h		;62ba
	add a,b			;62bd
	jp 0c300h		;62be
	ret nz			;62c1
	call nz,0c520h		;62c2
	nop			;62c5
	pop bc			;62c6
	ld b,b			;62c7
	jp nz,0c200h		;62c8
	add a,b			;62cb
	jp 0c100h		;62cc
	ret nz			;62cf
	jp nz,0c330h		;62d0
	jr nz,$-58		;62d3
	nop			;62d5
	push bc			;62d6
	nop			;62d7
	and c			;62d8
	ret nz			;62d9
	and d			;62da
	jr nz,l627fh		;62db
	ret nz			;62dd
	and e			;62de
	nop			;62df
	and e			;62e0
	ld h,b			;62e1
	and h			;62e2
	nop			;62e3
	and h			;62e4
	add a,b			;62e5
	and l			;62e6
	nop			;62e7
	and (hl)		;62e8
	nop			;62e9
	jp po,09202h		;62ea
	nop			;62ed
	sub d			;62ee
	add a,b			;62ef
	sub e			;62f0
	nop			;62f1
	sbc a,094h		;62f2
	sub l			;62f4
	sub (hl)		;62f5
	sub a			;62f6
	sbc a,b			;62f7
	ld h,h			;62f8
	ld h,l			;62f9
	ld h,(hl)		;62fa
	ld h,a			;62fb
l62fch:
	ld l,b			;62fc
	ld b,h			;62fd
	ld b,l			;62fe
	ld b,(hl)		;62ff
	ld b,a			;6300
	ld c,b			;6301
	inc b			;6302
	dec b			;6303
	ld b,007h		;6304
	ex af,af'		;6306
	add hl,bc		;6307
	ld a,(bc)		;6308
	or 0ffh			;6309
	cp 002h			;630b
	jp po,l7001h		;630d
	ld hl,001e3h		;6310
	call po,sub_7005h	;6313
	jr nz,l62fch		;6316
	nop			;6318
	ld (hl),b		;6319
	ld hl,02070h		;631a
	ld h,b			;631d
	ld hl,02060h		;631e
	ld d,b			;6321
	ld (02050h),hl		;6322
	jr nc,l6348h		;6325
	jr nc,l6349h		;6327
	push af			;6329
	djnz $+35		;632a
	djnz l634eh		;632c
	ei			;632e
	ex af,af'		;632f
	jp po,0f501h		;6330
	nop			;6333
	jr nz,l6336h		;6334
l6336h:
	ld (00cfbh),hl		;6336
	rst 38h			;6339
	cp 002h			;633a
	ret m			;633c
	ld hl,(001e2h)		;633d
	add a,b			;6340
	ld hl,054f8h		;6341
	ld (hl),b		;6344
	ld b,b			;6345
	ld b,b			;6346
	ld b,d			;6347
l6348h:
	ld b,b			;6348
l6349h:
	ld b,b			;6349
	ld b,b			;634a
	ld b,e			;634b
	jr nc,$+66		;634c
l634eh:
	ld d,b			;634e
	ld b,d			;634f
	ld d,b			;6350
	ld b,b			;6351
	jr nc,l6396h		;6352
	jr nc,l6396h		;6354
	ret m			;6356
	dec b			;6357
	push af			;6358
	nop			;6359
	ld hl,02000h		;635a
	ei			;635d
	ex af,af'		;635e
	ret m			;635f
	add hl,de		;6360
	push af			;6361
	nop			;6362
	ld hl,02000h		;6363
	ei			;6366
	inc c			;6367
	rst 38h			;6368
	cp 002h			;6369
	ret po			;636b
	ld bc,001e2h		;636c
	ld h,b			;636f
	inc (hl)		;6370
	ld d,b			;6371
	ld e,000h		;6372
	ld e,020h		;6374
	ld a,(de)		;6376
	ld d,b			;6377
	ld (hl),050h		;6378
	dec (hl)		;637a
	ld b,b			;637b
	inc (hl)		;637c
	ld b,b			;637d
	inc sp			;637e
	jr nc,$+54		;637f
	jr nz,l63b6h		;6381
	djnz l63b9h		;6383
	nop			;6385
	inc sp			;6386
	jr nz,l63bfh		;6387
	jr nz,l63c0h		;6389
	djnz l63c1h		;638b
	djnz $+53		;638d
	nop			;638f
	inc (hl)		;6390
	nop			;6391
	inc sp			;6392
	rst 38h			;6393
	cp 002h			;6394
l6396h:
	jp po,0f801h		;6396
	dec h			;6399
	ld (hl),b		;639a
	ld l,b			;639b
	ld d,b			;639c
	inc a			;639d
	nop			;639e
	inc a			;639f
	jr nz,l63d7h		;63a0
	ld d,b			;63a2
	ld l,h			;63a3
	ld b,b			;63a4
	ld l,d			;63a5
	ld b,b			;63a6
	ld l,b			;63a7
	jr nc,$+105		;63a8
	jr nc,l6414h		;63aa
	jr nz,$+105		;63ac
	djnz l6418h		;63ae
	nop			;63b0
	ld h,a			;63b1
	jr nz,l6420h		;63b2
	jr nz,l6420h		;63b4
l63b6h:
	djnz l6420h		;63b6
	nop			;63b8
l63b9h:
	ld h,a			;63b9
	nop			;63ba
	ld l,b			;63bb
	nop			;63bc
	ld h,a			;63bd
	nop			;63be
l63bfh:
	ld l,b			;63bf
l63c0h:
	rst 38h			;63c0
l63c1h:
	cp 002h			;63c1
	ret po			;63c3
	ld bc,001e2h		;63c4
	sub c			;63c7
	jr nz,$-109		;63c8
	add a,b			;63ca
	sub e			;63cb
	nop			;63cc
	sub e			;63cd
	add a,b			;63ce
	sub h			;63cf
	add a,b			;63d0
	sub l			;63d1
	add a,b			;63d2
	sub d			;63d3
	add a,b			;63d4
	sub e			;63d5
	add a,b			;63d6
l63d7h:
	sub h			;63d7
	add a,b			;63d8
	sub l			;63d9
	nop			;63da
	sub l			;63db
	ld h,b			;63dc
	sub l			;63dd
	jp c,0ca95h		;63de
	add a,l			;63e1
	jp c,0ca85h		;63e2
	ld (hl),l		;63e5
	jp c,0ca75h		;63e6
	ld h,l			;63e9
	jp c,023f9h		;63ea
	add a,h			;63ed
	rst 38h			;63ee
	cp 002h			;63ef
	ret m			;63f1
	inc d			;63f2
	jp po,0c101h		;63f3
	jr nz,l63b9h		;63f6
	add a,b			;63f8
	ret m			;63f9
	ld h,h			;63fa
	jp 0c300h		;63fb
	add a,b			;63fe
	call nz,0c580h		;63ff
l6402h:
	add a,b			;6402
	jp nz,0c380h		;6403
	add a,b			;6406
	call nz,0f880h		;6407
	ld c,d			;640a
	push bc			;640b
	nop			;640c
	push bc			;640d
	ld h,b			;640e
	push bc			;640f
	jp c,0cac5h		;6410
	or l			;6413
l6414h:
	jp c,0caa5h		;6414
	sub l			;6417
l6418h:
	jp c,0ca85h		;6418
	ld (hl),l		;641b
	jp c,023f9h		;641c
	add a,h			;641f
l6420h:
	ret po			;6420
	ld bc,l65ffh		;6421
	jp z,014f8h		;6424
	ld d,c			;6427
	jr nz,l647bh		;6428
	add a,b			;642a
	ret m			;642b
	ld h,h			;642c
	ld d,e			;642d
	nop			;642e
	ld d,e			;642f
	add a,b			;6430
	ld d,h			;6431
	add a,b			;6432
	ld d,l			;6433
	add a,b			;6434
	ld d,d			;6435
	add a,b			;6436
	ld d,e			;6437
	add a,b			;6438
	ld d,h			;6439
	add a,b			;643a
	ret m			;643b
	ld c,d			;643c
	ld b,l			;643d
	nop			;643e
	ld b,l			;643f
	ld h,b			;6440
	ld b,l			;6441
	jp c,0ca45h		;6442
	dec (hl)		;6445
	jp c,0ca25h		;6446
	dec d			;6449
	jp c,0ca05h		;644a
	dec b			;644d
	jp c,0ca05h		;644e
	jp m,002feh		;6451
	ret m			;6454
	add hl,de		;6455
	jp po,08601h		;6456
	djnz $-121		;6459
	ld h,h			;645b
	add a,h			;645c
	push bc			;645d
	ld (hl),h		;645e
	nop			;645f
	jp po,l6402h		;6460
	push bc			;6463
	ld h,h			;6464
	nop			;6465
	ld d,h			;6466
	push bc			;6467
	ld d,h			;6468
	jr nc,$+70		;6469
	push bc			;646b
	ld b,h			;646c
	jr nc,$+54		;646d
	push bc			;646f
	inc (hl)		;6470
	jr nc,l6497h		;6471
	push bc			;6473
	inc h			;6474
	jr nc,l648bh		;6475
	push bc			;6477
	inc d			;6478
	jr nc,l647fh		;6479
l647bh:
	push bc			;647b
	inc b			;647c
	jr nc,l6483h		;647d
l647fh:
	push bc			;647f
	inc b			;6480
	jr nc,l6487h		;6481
l6483h:
	push bc			;6483
	inc b			;6484
	jr nc,l648bh		;6485
l6487h:
	push bc			;6487
	rst 38h			;6488
	cp 002h			;6489
l648bh:
	ex (sp),hl		;648b
	ld bc,01ee4h		;648c
	and c			;648f
	ld b,b			;6490
	and d			;6491
	nop			;6492
	call po,sub_7415h	;6493
	add a,b			;6496
l6497h:
	pop hl			;6497
	ld bc,00ae4h		;6498
	dec b			;649b
	call po,0040ch		;649c
	call po,00614h		;649f
	call po,0071ch		;64a2
	call po,0070bh		;64a5
	call po,0060ch		;64a8
	call po,0050dh		;64ab
	call po,0040fh		;64ae
	call po,00311h		;64b1
	call po,00213h		;64b4
	call po,00115h		;64b7
	call po,00117h		;64ba
	call po,0030ah		;64bd
	call po,0020ch		;64c0
l64c3h:
	call po,00414h		;64c3
	call po,0051ch		;64c6
	call po,0050bh		;64c9
	call po,0040ch		;64cc
	call po,0030dh		;64cf
	call po,0020fh		;64d2
	call po,00111h		;64d5
	call po,00113h		;64d8
	call po,00115h		;64db
	call po,00117h		;64de
	call po,0010ah		;64e1
	call po,0010ch		;64e4
	call po,00214h		;64e7
	call po,0031ch		;64ea
	call po,0030bh		;64ed
	call po,0020ch		;64f0
	call po,0020dh		;64f3
	call po,0010fh		;64f6
	call po,00111h		;64f9
	call po,00113h		;64fc
	call po,00015h		;64ff
	call po,00017h		;6502
	ret po			;6505
	dec bc			;6506
	rst 38h			;6507
	cp 002h			;6508
	jp po,0f801h		;650a
	ld h,h			;650d
	pop bc			;650e
	ld b,b			;650f
	push bc			;6510
	nop			;6511
	or a			;6512
	nop			;6513
	ret m			;6514
	dec h			;6515
	and l			;6516
	nop			;6517
	and e			;6518
	nop			;6519
	ret m			;651a
	inc d			;651b
	jp 0c380h		;651c
	ret nc			;651f
	call nz,0c430h		;6520
	add a,b			;6523
	call nz,0c5d0h		;6524
	jr nc,$-56		;6527
	nop			;6529
	and (hl)		;652a
	add a,b			;652b
	add a,a			;652c
	nop			;652d
	ld h,a			;652e
	add a,b			;652f
	ret m			;6530
	dec h			;6531
	ld b,l			;6532
	nop			;6533
	ld b,e			;6534
	nop			;6535
	ret m			;6536
	inc d			;6537
	add a,e			;6538
	add a,b			;6539
	add a,e			;653a
	ret nc			;653b
	add a,h			;653c
	jr nc,l64c3h		;653d
	add a,b			;653f
	add a,h			;6540
	ret nc			;6541
	add a,l			;6542
	jr nc,$-120		;6543
	nop			;6545
	add a,(hl)		;6546
	add a,b			;6547
	ld h,a			;6548
	nop			;6549
	ld b,a			;654a
	add a,b			;654b
	ret m			;654c
	dec h			;654d
	ld b,l			;654e
	nop			;654f
	ld b,e			;6550
	nop			;6551
	ret m			;6552
	inc d			;6553
	ld b,e			;6554
	add a,b			;6555
	ld b,e			;6556
	ret nc			;6557
	ld b,h			;6558
	jr nc,$+70		;6559
	add a,b			;655b
	ld b,h			;655c
	ret nc			;655d
	ld b,l			;655e
	jr nc,$+72		;655f
	nop			;6561
	ld h,080h		;6562
	rla			;6564
	nop			;6565
	rlca			;6566
	add a,b			;6567
	ret m			;6568
	dec h			;6569
	dec b			;656a
	nop			;656b
	inc bc			;656c
	nop			;656d
	ret m			;656e
	inc d			;656f
	inc bc			;6570
	add a,b			;6571
	inc bc			;6572
	ret nc			;6573
	inc b			;6574
	jr nc,l657ah		;6575
	add a,b			;6577
	inc b			;6578
	ret nc			;6579
l657ah:
	dec b			;657a
	jr nc,l6583h		;657b
	nop			;657d
	ld b,080h		;657e
sub_6580h:
	rlca			;6580
	nop			;6581
	rst 38h			;6582
l6583h:
	cp 002h			;6583
	jp po,0a601h		;6585
	nop			;6588
	and e			;6589
	ld b,b			;658a
	and l			;658b
	add a,b			;658c
	pop hl			;658d
	ld bc,019e4h		;658e
	add hl,bc		;6591
	call po,0091ah		;6592
	call po,0091bh		;6595
	call po,0091ch		;6598
	call po,0091bh		;659b
	call po,0091dh		;659e
	call po,0091eh		;65a1
	ex (sp),hl		;65a4
	rlca			;65a5
	call po,0901fh		;65a6
	jr c,$-10		;65a9
	scf			;65ab
	ld (hl),035h		;65ac
	inc (hl)		;65ae
l65afh:
	inc sp			;65af
l65b0h:
	ld (03031h),a		;65b0
	cpl			;65b3
	ld l,02dh		;65b4
	inc l			;65b6
	dec hl			;65b7
	ld hl,(02829h)		;65b8
	daa			;65bb
	ld h,0f6h		;65bc
	ex (sp),hl		;65be
	ld a,(bc)		;65bf
	sub b			;65c0
	dec h			;65c1
	sub b			;65c2
	inc h			;65c3
l65c4h:
	sub b			;65c4
	inc hl			;65c5
	sub b			;65c6
	ld (02190h),hl		;65c7
	sub b			;65ca
	jr nz,l65b0h		;65cb
	dec bc			;65cd
	sub b			;65ce
	rra			;65cf
	sub b			;65d0
	ld e,090h		;65d1
	dec e			;65d3
	add a,b			;65d4
	inc e			;65d5
	ld (hl),b		;65d6
	dec de			;65d7
	ld h,b			;65d8
	ld a,(de)		;65d9
	ex (sp),hl		;65da
	ld de,01950h		;65db
	ld b,b			;65de
	jr l65c4h		;65df
	inc de			;65e1
	jr nz,l65fbh		;65e2
	rst 38h			;65e4
	cp 002h			;65e5
	jp po,0f801h		;65e7
	jr z,l65afh		;65ea
	nop			;65ec
	or e			;65ed
	add a,b			;65ee
	or h			;65ef
	nop			;65f0
	or l			;65f1
	nop			;65f2
	and (hl)		;65f3
	nop			;65f4
	and a			;65f5
	nop			;65f6
	xor b			;65f7
	nop			;65f8
	xor c			;65f9
	nop			;65fa
l65fbh:
	jp po,0aa02h		;65fb
	nop			;65fe
l65ffh:
	xor e			;65ff
	nop			;6600
l6601h:
	xor h			;6601
	nop			;6602
	xor l			;6603
	nop			;6604
	xor (hl)		;6605
	nop			;6606
	ret m			;6607
	ld (bc),a		;6608
	jp po,02007h		;6609
	ld e,e			;660c
	jr nc,l6669h		;660d
	ld b,b			;660f
	ld e,c			;6610
	call p,05758h		;6611
	ld d,(hl)		;6614
	ld d,l			;6615
	ld d,h			;6616
	ld d,e			;6617
	ld d,d			;6618
	ld d,c			;6619
	ld d,b			;661a
	ld c,a			;661b
	ld c,(hl)		;661c
	ld c,l			;661d
	ld c,h			;661e
	ld c,e			;661f
	ld c,d			;6620
	ld c,c			;6621
	ld c,b			;6622
	ld b,a			;6623
	ld b,(hl)		;6624
	or 0e2h			;6625
	ld a,(bc)		;6627
	ld b,b			;6628
	ld b,l			;6629
	ld b,b			;662a
	ld b,h			;662b
	ld b,b			;662c
	ld b,e			;662d
	ld b,b			;662e
	ld b,d			;662f
	ld b,b			;6630
	ld b,c			;6631
	ld b,b			;6632
	ld b,b			;6633
	jp po,0300bh		;6634
	ccf			;6637
	jr nz,l6678h		;6638
	djnz l6679h		;663a
	ret m			;663c
	ld a,(de)		;663d
	jp po,0100eh		;663e
	inc a			;6641
	djnz l667fh		;6642
	djnz l6680h		;6644
	jp po,0000fh		;6646
	add hl,sp		;6649
	rst 38h			;664a
	cp 002h			;664b
	ret po			;664d
	ld bc,001e2h		;664e
	push af			;6651
	ld (hl),c		;6652
	ret nz			;6653
	ld (hl),c		;6654
	add a,b			;6655
	ld (hl),c		;6656
	ld h,b			;6657
	ld (hl),c		;6658
	add a,b			;6659
	ld (hl),c		;665a
	ret nz			;665b
	ei			;665c
l665dh:
	ex af,af'		;665d
	push af			;665e
	ld b,c			;665f
	ret nz			;6660
	ld b,c			;6661
	add a,b			;6662
	ld b,c			;6663
l6664h:
	ld h,b			;6664
	ld b,c			;6665
	add a,b			;6666
	ld b,c			;6667
	ret nz			;6668
l6669h:
	ei			;6669
	ex af,af'		;666a
	rst 38h			;666b
	cp 002h			;666c
	ret m			;666e
	dec b			;666f
	jp po,0f501h		;6670
	pop bc			;6673
	ret nz			;6674
l6675h:
	pop bc			;6675
	add a,b			;6676
	pop bc			;6677
l6678h:
	ld h,b			;6678
l6679h:
	pop bc			;6679
	add a,b			;667a
	pop bc			;667b
	ret nz			;667c
	ei			;667d
	ex af,af'		;667e
l667fh:
	push af			;667f
l6680h:
	ld d,c			;6680
	ret nz			;6681
	ld d,c			;6682
	add a,b			;6683
	ld d,c			;6684
	ld h,b			;6685
	ld d,c			;6686
	add a,b			;6687
	ld d,c			;6688
	ret nz			;6689
	ei			;668a
	ex af,af'		;668b
	ret po			;668c
	ld bc,0feffh		;668d
	ld (bc),a		;6690
	ret po			;6691
	ld bc,001e2h		;6692
	ld (hl),b		;6695
	and b			;6696
	sub b			;6697
	ld l,b			;6698
	jr nc,$+54		;6699
	ld d,b			;669b
	ld l,d			;669c
	jr nz,$+55		;669d
	ret po			;669f
	ld bc,001e2h		;66a0
	jr nc,$-94		;66a3
	ld b,b			;66a5
l66a6h:
	ld l,b			;66a6
	nop			;66a7
	inc (hl)		;66a8
	jr nc,l6715h		;66a9
	nop			;66ab
	dec (hl)		;66ac
	rst 38h			;66ad
	cp 002h			;66ae
	ret m			;66b0
	ld c,d			;66b1
	jp po,l6001h		;66b2
	and b			;66b5
	sub b			;66b6
	ld l,b			;66b7
	jr nz,$+54		;66b8
	ld h,b			;66ba
	ld l,d			;66bb
	djnz l66f3h		;66bc
	ret po			;66be
	ld bc,001e2h		;66bf
	jr nz,l6664h		;66c2
	jr nc,l672eh		;66c4
l66c6h:
	nop			;66c6
	inc (hl)		;66c7
	jr nc,l6734h		;66c8
	nop			;66ca
	dec (hl)		;66cb
	ret po			;66cc
	ld bc,0feffh		;66cd
	ld (bc),a		;66d0
	ret po			;66d1
	ld bc,001e2h		;66d2
	ld h,c			;66d5
	or b			;66d6
	sub l			;66d7
	and b			;66d8
	ld e,b			;66d9
	ld (hl),b		;66da
	jr z,l665dh		;66db
	ret po			;66dd
	ld bc,001e2h		;66de
	ld d,c			;66e1
	or b			;66e2
	ld h,l			;66e3
	and b			;66e4
	ld c,b			;66e5
	ld (hl),b		;66e6
	jr z,l6669h		;66e7
	ret po			;66e9
	ld bc,001e2h		;66ea
	ld hl,035b0h		;66ed
	and b			;66f0
	jr l6763h		;66f1
l66f3h:
	jr l6675h		;66f3
	ret po			;66f5
	ld bc,001e2h		;66f6
	ld bc,005b0h		;66f9
	and b			;66fc
	ex af,af'		;66fd
	ld (hl),b		;66fe
	rst 38h			;66ff
	cp 002h			;6700
	jp po,0f801h		;6702
	ld c,d			;6705
	sub c			;6706
	or b			;6707
	or l			;6708
	and b			;6709
	adc a,b			;670a
	ld (hl),b		;670b
	ld c,b			;670c
	add a,b			;670d
	ret po			;670e
	ld bc,001e2h		;670f
	ld d,c			;6712
	or b			;6713
	ld h,l			;6714
l6715h:
	and b			;6715
	ld c,b			;6716
	ld (hl),b		;6717
	jr z,$-126		;6718
	ret po			;671a
	ld bc,001e2h		;671b
	ld hl,035b0h		;671e
	and b			;6721
	jr l6794h		;6722
	jr l66a6h		;6724
	ret po			;6726
	ld bc,001e2h		;6727
	ld bc,005b0h		;672a
	and b			;672d
l672eh:
	ex af,af'		;672e
	ld (hl),b		;672f
	ret po			;6730
	ld bc,0feffh		;6731
l6734h:
	ld (bc),a		;6734
	ret po			;6735
	ld (bc),a		;6736
	jp po,08101h		;6737
	sub b			;673a
	or l			;673b
	ld h,b			;673c
	ld l,b			;673d
	jr nc,l6748h		;673e
	jr nc,l66c6h		;6740
	nop			;6742
	add a,e			;6743
	nop			;6744
	add a,d			;6745
	add a,b			;6746
	add a,d			;6747
l6748h:
	nop			;6748
	add a,c			;6749
	add a,b			;674a
	add a,c			;674b
	ld b,b			;674c
	ld b,h			;674d
	nop			;674e
	ld b,e			;674f
	nop			;6750
	ld b,d			;6751
	add a,b			;6752
	ld b,d			;6753
	nop			;6754
	ld b,c			;6755
	add a,b			;6756
	ld b,c			;6757
	ld b,b			;6758
	dec b			;6759
	nop			;675a
	inc b			;675b
	nop			;675c
	inc bc			;675d
	nop			;675e
	ld (bc),a		;675f
	add a,b			;6760
	ld (bc),a		;6761
	nop			;6762
l6763h:
	rst 38h			;6763
	cp 002h			;6764
	jp po,0f801h		;6766
	ld c,d			;6769
	pop bc			;676a
	sub b			;676b
	push bc			;676c
	ld h,b			;676d
	ret z			;676e
	jr nc,l67b9h		;676f
	ld b,b			;6771
	ret m			;6772
	inc d			;6773
	or h			;6774
	nop			;6775
	or e			;6776
	nop			;6777
	or d			;6778
	add a,b			;6779
	or d			;677a
	nop			;677b
	or c			;677c
	add a,b			;677d
	or c			;677e
	ld b,b			;677f
	ld d,l			;6780
	nop			;6781
	ld d,h			;6782
	nop			;6783
	ld d,e			;6784
	nop			;6785
	ld d,d			;6786
	add a,b			;6787
	ld d,d			;6788
	nop			;6789
	ld d,c			;678a
	add a,b			;678b
	ld d,c			;678c
	ld b,b			;678d
	inc d			;678e
	nop			;678f
	inc de			;6790
	nop			;6791
	ld (de),a		;6792
	add a,b			;6793
l6794h:
	ld (de),a		;6794
	nop			;6795
	ld de,01180h		;6796
	ld b,b			;6799
	rst 38h			;679a
	cp 002h			;679b
	jp po,l71ffh+2		;679d
	add a,b			;67a0
	push af			;67a1
	ld sp,hl		;67a2
	or d			;67a3
	add a,a			;67a4
	ei			;67a5
	ld (bc),a		;67a6
	ld a,d			;67a7
	nop			;67a8
	rst 30h			;67a9
	inc bc			;67aa
	ld sp,hl		;67ab
	or d			;67ac
	add a,a			;67ad
	rst 18h			;67ae
	ld c,d			;67af
	nop			;67b0
	rst 38h			;67b1
	ld (hl),e		;67b2
	nop			;67b3
	ld (hl),h		;67b4
	nop			;67b5
	ld (hl),l		;67b6
	nop			;67b7
	ld (hl),l		;67b8
l67b9h:
	add a,b			;67b9
	halt			;67ba
	nop			;67bb
	halt			;67bc
	add a,b			;67bd
	ld (hl),a		;67be
	nop			;67bf
	ld (hl),a		;67c0
	add a,b			;67c1
	ld a,b			;67c2
	nop			;67c3
	ld a,b			;67c4
	add a,b			;67c5
	ld a,c			;67c6
	nop			;67c7
	jp m,002feh		;67c8
	ret m			;67cb
	inc c			;67cc
	jp po,0c101h		;67cd
	ld b,b			;67d0
	push af			;67d1
	ld sp,hl		;67d2
	jp po,0fb87h		;67d3
	ld (bc),a		;67d6
	push bc			;67d7
	nop			;67d8
	rst 30h			;67d9
	ex af,af'		;67da
	ld sp,hl		;67db
	jp po,0df87h		;67dc
	ld b,l			;67df
	nop			;67e0
	rst 38h			;67e1
	pop bc			;67e2
	add a,b			;67e3
	jp nz,0c200h		;67e4
	add a,b			;67e7
	jp nz,0c3c0h		;67e8
	nop			;67eb
	jp 0c340h		;67ec
	add a,b			;67ef
	jp 0c4c0h		;67f0
	nop			;67f3
	call nz,0c440h		;67f4
	add a,b			;67f7
	jp m,002feh		;67f8
	xor 001h		;67fb
	jp po,0a201h		;67fd
	ld b,b			;6800
l6801h:
	and e			;6801
	ld (hl),b		;6802
	and h			;6803
	ret nc			;6804
	and (hl)		;6805
	ret p			;6806
	xor b			;6807
	jr nz,$+21		;6808
	ld (hl),b		;680a
	inc d			;680b
	ret nc			;680c
	ld d,0f0h		;680d
	jr $+34			;680f
	sub d			;6811
	ld b,b			;6812
	sub e			;6813
	ld (hl),b		;6814
	sub h			;6815
	ret nc			;6816
	sub (hl)		;6817
	ret nz			;6818
	sub a			;6819
	ld (hl),b		;681a
	sbc a,b			;681b
	jr nz,l685eh		;681c
	rla			;681e
	ld b,b			;681f
	jr l6862h		;6820
	add hl,de		;6822
	ld b,b			;6823
	ld a,(de)		;6824
	ld b,b			;6825
l6826h:
	dec de			;6826
	ld b,b			;6827
	inc e			;6828
	ld b,b			;6829
	dec e			;682a
	ld b,b			;682b
	ld e,040h		;682c
	rra			;682e
	ld d,b			;682f
	jr nz,l6826h		;6830
	ld hl,02322h		;6832
	inc h			;6835
	dec h			;6836
	ld h,027h		;6837
	jr z,l6864h		;6839
	ld hl,(02c2bh)		;683b
	dec l			;683e
	ld l,02fh		;683f
	jr nc,$+51		;6841
	ld (03433h),a		;6843
	dec (hl)		;6846
	ld (hl),037h		;6847
	jr c,l6884h		;6849
	ld a,(03c3bh)		;684b
l684eh:
	dec a			;684e
	ld a,03fh		;684f
	ld b,b			;6851
	ld b,c			;6852
	or 040h			;6853
	ld b,d			;6855
	ld b,b			;6856
	ld b,e			;6857
	jr nc,l689eh		;6858
	jr nc,$+71		;685a
	jr nz,$+72		;685c
l685eh:
	jr nz,l68a7h		;685e
	djnz l68aah		;6860
l6862h:
	djnz l68adh		;6862
l6864h:
	ret po			;6864
	rrca			;6865
	rst 38h			;6866
	cp 002h			;6867
	ret m			;6869
	jr z,l684eh		;686a
	ld bc,040c2h		;686c
	jp 0c470h		;686f
	ret nc			;6872
	add a,0f0h		;6873
	ret z			;6875
	jr nz,l68dbh		;6876
l6878h:
	ld (hl),b		;6878
	ld h,h			;6879
	ret nc			;687a
	ld h,(hl)		;687b
	ret p			;687c
	ld l,b			;687d
	jr nz,l6878h		;687e
	add hl,bc		;6880
	jp nz,0c200h		;6881
l6884h:
	djnz $-60		;6884
	jr nz,$-60		;6886
	jr nc,$-60		;6888
	ld b,b			;688a
	jp nz,0c250h		;688b
	ld h,b			;688e
	jp nz,0c270h		;688f
	add a,b			;6892
	jp nz,0c2a0h		;6893
	ret nz			;6896
	jp nz,0e2e0h		;6897
	ld (bc),a		;689a
	jp 0c300h		;689b
l689eh:
	ld b,b			;689e
	jp 0c380h		;689f
	ret nz			;68a2
	call nz,0c400h		;68a3
	ld b,b			;68a6
l68a7h:
	call nz,0c480h		;68a7
l68aah:
	ret nz			;68aa
	push bc			;68ab
	nop			;68ac
l68adh:
	push bc			;68ad
	ld b,b			;68ae
	push bc			;68af
	add a,b			;68b0
	push bc			;68b1
	ret nz			;68b2
	add a,000h		;68b3
	add a,040h		;68b5
	add a,080h		;68b7
	add a,0c0h		;68b9
	rst 0			;68bb
	nop			;68bc
	rst 0			;68bd
	ld b,b			;68be
	or a			;68bf
	add a,b			;68c0
	and a			;68c1
	ret nz			;68c2
	sbc a,b			;68c3
	nop			;68c4
	adc a,b			;68c5
	ld b,b			;68c6
	ld a,b			;68c7
	add a,b			;68c8
	ld l,b			;68c9
	ret nz			;68ca
	ld e,c			;68cb
	nop			;68cc
	ld c,c			;68cd
	ld b,b			;68ce
	add hl,sp		;68cf
	add a,b			;68d0
	add hl,hl		;68d1
	ret nz			;68d2
	ld a,(de)		;68d3
	nop			;68d4
	ld a,(bc)		;68d5
	ld b,b			;68d6
	rst 38h			;68d7
	cp 002h			;68d8
	pop hl			;68da
l68dbh:
	ld bc,00ee4h		;68db
	ld a,(bc)		;68de
	call po,00911h		;68df
	call po,00814h		;68e2
	call po,00817h		;68e5
	call po,0081ah		;68e8
	call po,0081dh		;68eb
	call po,0081fh		;68ee
	call po,00708h		;68f1
	call po,0070eh		;68f4
	call po,00711h		;68f7
	call po,00714h		;68fa
	call po,00717h		;68fd
	call po,0071ah		;6900
	push af			;6903
	call po,0071ch		;6904
	call po,0071fh		;6907
	ei			;690a
	ex af,af'		;690b
	call po,0050eh		;690c
	call po,00411h		;690f
	call po,00414h		;6912
	call po,00417h		;6915
	call po,0041ah		;6918
	call po,0041dh		;691b
	call po,0041fh		;691e
	call po,00408h		;6921
	call po,0040eh		;6924
	call po,00411h		;6927
	call po,00414h		;692a
	call po,00417h		;692d
	call po,0041ah		;6930
	push af			;6933
	call po,0041ch		;6934
	call po,0041fh		;6937
	ei			;693a
	ex af,af'		;693b
	call po,0010eh		;693c
	call po,00111h		;693f
	call po,00114h		;6942
	call po,00117h		;6945
	call po,0011ah		;6948
	call po,0011dh		;694b
	call po,0011fh		;694e
	call po,00108h		;6951
	call po,0010eh		;6954
	call po,00111h		;6957
	call po,00114h		;695a
	call po,00117h		;695d
	call po,0011ah		;6960
	push af			;6963
	call po,0011ch		;6964
	call po,0011fh		;6967
	ei			;696a
	ex af,af'		;696b
	rst 38h			;696c
	cp 002h			;696d
l696fh:
	jp po,0f801h		;696f
	ld h,0c3h		;6972
	nop			;6974
	call nz,0c500h		;6975
	nop			;6978
	add a,000h		;6979
	jp 0f500h		;697b
	pop bc			;697e
	add a,b			;697f
	pop bc			;6980
	ld h,b			;6981
	pop bc			;6982
	ret po			;6983
	ei			;6984
	ex af,af'		;6985
	ld d,e			;6986
	nop			;6987
	ld d,h			;6988
	nop			;6989
	ld d,l			;698a
	nop			;698b
	ld d,(hl)		;698c
	nop			;698d
	ld d,e			;698e
	nop			;698f
	push af			;6990
	ld d,c			;6991
	add a,b			;6992
	ld d,c			;6993
	ld h,b			;6994
	ld d,c			;6995
	ret po			;6996
	ei			;6997
	ex af,af'		;6998
	inc bc			;6999
	nop			;699a
	inc b			;699b
	nop			;699c
	dec b			;699d
	nop			;699e
	ld b,000h		;699f
	inc bc			;69a1
	nop			;69a2
	push af			;69a3
	ld bc,00180h		;69a4
	ld h,b			;69a7
	ld bc,0fbe0h		;69a8
	ex af,af'		;69ab
	rst 38h			;69ac
	cp 002h			;69ad
	ret po			;69af
	ld bc,001e2h		;69b0
	ld h,h			;69b3
	ld h,b			;69b4
	sub e			;69b5
	ld d,b			;69b6
l69b7h:
	sub h			;69b7
	jr nc,$-105		;69b8
	jr nz,$-104		;69ba
	djnz l69b7h		;69bc
	in a,(089h)		;69be
	rst 38h			;69c0
	cp 002h			;69c1
	ret m			;69c3
	add hl,de		;69c4
	jp po,06401h		;69c5
	ld h,b			;69c8
	ret m			;69c9
	jr z,l696fh		;69ca
	ld d,b			;69cc
	ret m			;69cd
	inc d			;69ce
l69cfh:
	and h			;69cf
	jr nc,$-89		;69d0
	jr nz,$-88		;69d2
	djnz l69cfh		;69d4
	in a,(089h)		;69d6
	ret po			;69d8
	ld bc,0f8ffh		;69d9
	add hl,de		;69dc
	jp po,04401h		;69dd
	ld h,b			;69e0
	ret m			;69e1
	jr z,$+85		;69e2
	ld d,b			;69e4
	ret m			;69e5
l69e6h:
	inc d			;69e6
	ld d,h			;69e7
	jr nc,$+87		;69e8
	jr nz,l6a42h		;69ea
	djnz l69e6h		;69ec
	add hl,de		;69ee
	jp po,02401h		;69ef
	ld h,b			;69f2
	ret m			;69f3
	jr z,$+53		;69f4
	ld d,b			;69f6
	ret m			;69f7
l69f8h:
	inc d			;69f8
	inc (hl)		;69f9
	jr nc,$+55		;69fa
	jr nz,l6a34h		;69fc
	djnz l69f8h		;69fe
	add hl,de		;6a00
	jp po,01401h		;6a01
	ld h,b			;6a04
	ret m			;6a05
	jr z,l6a1bh		;6a06
	ld d,b			;6a08
	ret m			;6a09
	inc d			;6a0a
	inc d			;6a0b
l6a0ch:
	jr nc,$+23		;6a0c
	jr nz,l6a26h		;6a0e
	djnz l6a0ch		;6a10
	cp 002h			;6a12
	ret po			;6a14
	ld bc,001e2h		;6a15
	ld d,b			;6a18
	ld h,(hl)		;6a19
	ld d,b			;6a1a
l6a1bh:
	ld e,b			;6a1b
	ld b,b			;6a1c
	ld h,d			;6a1d
	ld b,b			;6a1e
	ld e,(hl)		;6a1f
	jr nc,$+94		;6a20
	jr nc,$+92		;6a22
	jr nc,l6a7fh		;6a24
l6a26h:
	jr nc,$+90		;6a26
	jr nc,l6a83h		;6a28
	jr nc,$+90		;6a2a
	nop			;6a2c
	ld e,c			;6a2d
	jr nc,l6a96h		;6a2e
	jr nc,l6a8ah		;6a30
	jr nz,l6a96h		;6a32
l6a34h:
	jr nz,l6a94h		;6a34
	djnz l6a94h		;6a36
	djnz l6a94h		;6a38
	djnz l6a95h		;6a3a
	djnz l6a96h		;6a3c
	djnz l6a99h		;6a3e
	djnz l6a9ah		;6a40
l6a42h:
	nop			;6a42
	ld e,c			;6a43
	djnz l6aach		;6a44
	djnz l6aa0h		;6a46
	nop			;6a48
	ld h,d			;6a49
	nop			;6a4a
	ld e,(hl)		;6a4b
	nop			;6a4c
	ld e,h			;6a4d
	nop			;6a4e
	ld e,d			;6a4f
	nop			;6a50
	ld e,c			;6a51
	nop			;6a52
	ld e,b			;6a53
	nop			;6a54
	ld e,c			;6a55
	nop			;6a56
	ld e,b			;6a57
	rst 38h			;6a58
	cp 002h			;6a59
	ret m			;6a5b
	dec h			;6a5c
	jp po,09001h		;6a5d
	ld h,(hl)		;6a60
	sub b			;6a61
	ld e,b			;6a62
	ld h,b			;6a63
	ld h,d			;6a64
	ld h,b			;6a65
	ld e,(hl)		;6a66
	ld d,b			;6a67
	ld e,h			;6a68
	ld d,b			;6a69
	ld e,d			;6a6a
	ld d,b			;6a6b
	ld e,c			;6a6c
	ld b,b			;6a6d
	ld e,b			;6a6e
	ld b,b			;6a6f
	ld e,c			;6a70
	ld b,b			;6a71
	ld e,b			;6a72
	nop			;6a73
	ld e,c			;6a74
	ld b,b			;6a75
	ld h,(hl)		;6a76
	ld b,b			;6a77
	ld e,b			;6a78
	jr nc,l6addh		;6a79
	jr nz,$+96		;6a7b
	jr nz,$+94		;6a7d
l6a7fh:
	jr nz,$+92		;6a7f
	jr nz,l6adch		;6a81
l6a83h:
	jr nz,l6addh		;6a83
	jr nz,l6ae0h		;6a85
	jr nz,$+90		;6a87
	nop			;6a89
l6a8ah:
	ld e,c			;6a8a
	djnz l6af3h		;6a8b
	djnz l6ae7h		;6a8d
	nop			;6a8f
	ld h,d			;6a90
	nop			;6a91
	ld e,(hl)		;6a92
	nop			;6a93
l6a94h:
	ld e,h			;6a94
l6a95h:
	nop			;6a95
l6a96h:
	ld e,d			;6a96
	nop			;6a97
	ld e,c			;6a98
l6a99h:
	nop			;6a99
l6a9ah:
	ld e,b			;6a9a
	nop			;6a9b
	ld e,c			;6a9c
	nop			;6a9d
	ld e,b			;6a9e
	ret po			;6a9f
l6aa0h:
	ld bc,0feffh		;6aa0
	ld (bc),a		;6aa3
	ex (sp),hl		;6aa4
	ld bc,01fe4h		;6aa5
	sub c			;6aa8
	jr nz,$-108		;6aa9
	and b			;6aab
l6aach:
	sub h			;6aac
	add a,b			;6aad
	jp po,05201h		;6aae
	ld b,b			;6ab1
	ld (hl),l		;6ab2
	ld b,b			;6ab3
	ld a,c			;6ab4
	nop			;6ab5
	ret po			;6ab6
	add hl,de		;6ab7
	rst 38h			;6ab8
	cp 002h			;6ab9
	ret m			;6abb
	ld h,h			;6abc
l6abdh:
	jp po,0c101h		;6abd
	jr nz,$-60		;6ac0
	and b			;6ac2
	call nz,0fe80h		;6ac3
	ld bc,00feah		;6ac6
	jp (hl)			;6ac9
	ld b,0f8h		;6aca
	add a,h			;6acc
	rst 8			;6acd
	call nc,0e9b1h		;6ace
l6ad1h:
	ex af,af'		;6ad1
	jp pe,0d402h		;6ad2
	or c			;6ad5
	rst 38h			;6ad6
	cp 001h			;6ad7
	jp pe,0e90ch		;6ad9
l6adch:
	inc bc			;6adc
l6addh:
	ret nz			;6add
	jp (hl)			;6ade
	add hl,bc		;6adf
l6ae0h:
	sub 030h		;6ae0
	djnz l6ad1h		;6ae2
	ex af,af'		;6ae4
	ex de,hl		;6ae5
	add a,c			;6ae6
l6ae7h:
	djnz l6abdh		;6ae7
	add a,c			;6ae9
	jp pe,0810ah		;6aea
	jp pe,08106h		;6aed
	jp pe,08104h		;6af0
l6af3h:
	rst 38h			;6af3
	cp 001h			;6af4
	jp pe,0e90fh		;6af6
	add hl,bc		;6af9
	ret m			;6afa
	add a,a			;6afb
	ret z			;6afc
	sub 030h		;6afd
	djnz $-17		;6aff
	inc b			;6b01
	ex de,hl		;6b02
	add a,c			;6b03
	djnz $-42		;6b04
	add a,c			;6b06
	jp pe,0810ch		;6b07
	jp pe,08108h		;6b0a
	jp pe,08106h		;6b0d
	jp (hl)			;6b10
	inc bc			;6b11
	ret nz			;6b12
	rst 38h			;6b13
	cp 002h			;6b14
	call po,0e31fh		;6b16
	ld bc,080b1h		;6b19
	or d			;6b1c
	add a,b			;6b1d
	and e			;6b1e
	add a,b			;6b1f
	add a,e			;6b20
	add a,b			;6b21
	jp po,0a801h		;6b22
	nop			;6b25
	and a			;6b26
	add a,b			;6b27
	and l			;6b28
	nop			;6b29
	ex (sp),hl		;6b2a
	ld bc,0c0b1h		;6b2b
	or d			;6b2e
	ld b,b			;6b2f
	and e			;6b30
	add a,b			;6b31
	add a,e			;6b32
	nop			;6b33
	jp po,0a601h		;6b34
	nop			;6b37
	and a			;6b38
	nop			;6b39
	and (hl)		;6b3a
	add a,b			;6b3b
	xor b			;6b3c
	nop			;6b3d
	and a			;6b3e
	add a,b			;6b3f
	xor c			;6b40
	nop			;6b41
	and a			;6b42
	add a,b			;6b43
	and a			;6b44
	nop			;6b45
	ld a,b			;6b46
	nop			;6b47
	ld e,c			;6b48
	nop			;6b49
	ld e,b			;6b4a
	nop			;6b4b
	ld d,a			;6b4c
	nop			;6b4d
	ex (sp),hl		;6b4e
	ld bc,08061h		;6b4f
	ld h,d			;6b52
	add a,b			;6b53
	ld d,e			;6b54
	add a,b			;6b55
	inc sp			;6b56
	add a,b			;6b57
	jp po,l6801h		;6b58
	nop			;6b5b
	ld h,a			;6b5c
	add a,b			;6b5d
	ld h,l			;6b5e
	nop			;6b5f
	ex (sp),hl		;6b60
	ld bc,0c061h		;6b61
	ld d,d			;6b64
	ret nz			;6b65
	ld b,e			;6b66
	add a,b			;6b67
	inc sp			;6b68
	nop			;6b69
	jp po,l6601h		;6b6a
	nop			;6b6d
	ld h,a			;6b6e
	nop			;6b6f
	ld h,(hl)		;6b70
	add a,b			;6b71
	ld l,b			;6b72
	nop			;6b73
	ld h,a			;6b74
	add a,b			;6b75
	ld l,c			;6b76
	nop			;6b77
	ld h,a			;6b78
	add a,b			;6b79
	ld h,a			;6b7a
	nop			;6b7b
	ld c,b			;6b7c
	nop			;6b7d
	add hl,sp		;6b7e
	nop			;6b7f
	jr c,l6b82h		;6b80
l6b82h:
	scf			;6b82
	nop			;6b83
	ex (sp),hl		;6b84
	ld bc,08041h		;6b85
	ld b,d			;6b88
	add a,b			;6b89
	ld b,e			;6b8a
	add a,b			;6b8b
	ld b,e			;6b8c
	add a,b			;6b8d
	jp po,04701h		;6b8e
	add a,b			;6b91
	ld b,l			;6b92
	nop			;6b93
	ld c,b			;6b94
	nop			;6b95
	ex (sp),hl		;6b96
	ld bc,0c041h		;6b97
	ld b,d			;6b9a
	ret nz			;6b9b
	inc sp			;6b9c
	add a,b			;6b9d
	inc sp			;6b9e
	nop			;6b9f
	jp po,03701h		;6ba0
	nop			;6ba3
	ld (hl),080h		;6ba4
	jr c,l6ba8h		;6ba6
l6ba8h:
	scf			;6ba8
	add a,b			;6ba9
	add hl,sp		;6baa
	nop			;6bab
	scf			;6bac
	add a,b			;6bad
	scf			;6bae
	nop			;6baf
	jr z,l6bb2h		;6bb0
l6bb2h:
	add hl,bc		;6bb2
	nop			;6bb3
	ex af,af'		;6bb4
	nop			;6bb5
	rlca			;6bb6
	nop			;6bb7
	add hl,bc		;6bb8
	nop			;6bb9
	rst 38h			;6bba
	cp 002h			;6bbb
	ret m			;6bbd
	jr z,$-28		;6bbe
	ld bc,00ff9h		;6bc0
	adc a,h			;6bc3
	sbc a,b			;6bc4
	nop			;6bc5
	ld l,c			;6bc6
	nop			;6bc7
	ld l,b			;6bc8
	nop			;6bc9
	ld h,a			;6bca
	nop			;6bcb
	ld l,c			;6bcc
	nop			;6bcd
	rst 30h			;6bce
	dec b			;6bcf
	ld sp,hl		;6bd0
	rrca			;6bd1
	adc a,h			;6bd2
	rst 18h			;6bd3
	ld e,b			;6bd4
	nop			;6bd5
	add hl,sp		;6bd6
	nop			;6bd7
	jr c,l6bdah		;6bd8
l6bdah:
	scf			;6bda
l6bdbh:
	nop			;6bdb
	add hl,sp		;6bdc
	nop			;6bdd
	ret m			;6bde
	ld h,043h		;6bdf
	nop			;6be1
	ld b,l			;6be2
	djnz l6c2ch		;6be3
	nop			;6be5
	ld b,a			;6be6
	nop			;6be7
	ld b,a			;6be8
	add a,b			;6be9
	ld b,l			;6bea
	nop			;6beb
	ld c,b			;6bec
	nop			;6bed
	ld b,e			;6bee
	add a,b			;6bef
	ld b,h			;6bf0
	add a,b			;6bf1
	scf			;6bf2
	nop			;6bf3
	ld (hl),000h		;6bf4
	scf			;6bf6
	nop			;6bf7
	ld (hl),080h		;6bf8
	jr c,l6bfch		;6bfa
l6bfch:
	scf			;6bfc
	add a,b			;6bfd
	add hl,sp		;6bfe
	nop			;6bff
	scf			;6c00
	add a,b			;6c01
	scf			;6c02
	nop			;6c03
	jr z,l6c06h		;6c04
l6c06h:
	add hl,bc		;6c06
	nop			;6c07
	ex af,af'		;6c08
	nop			;6c09
	rlca			;6c0a
l6c0bh:
	nop			;6c0b
	add hl,bc		;6c0c
	nop			;6c0d
	rst 38h			;6c0e
	jp 0c500h		;6c0f
	djnz l6bdbh		;6c12
	nop			;6c14
	rst 0			;6c15
	nop			;6c16
	rst 0			;6c17
	add a,b			;6c18
	push bc			;6c19
	nop			;6c1a
	ret z			;6c1b
	nop			;6c1c
	jp 0c480h		;6c1d
	add a,b			;6c20
	rst 0			;6c21
	nop			;6c22
	add a,000h		;6c23
	rst 0			;6c25
	nop			;6c26
	add a,080h		;6c27
	ret z			;6c29
	nop			;6c2a
	rst 0			;6c2b
l6c2ch:
	add a,b			;6c2c
	ret			;6c2d
	nop			;6c2e
	rst 0			;6c2f
	add a,b			;6c30
	rst 0			;6c31
	nop			;6c32
	jp m,002feh		;6c33
	call po,0e11fh		;6c36
	ld bc,0e409h		;6c39
	inc de			;6c3c
	ex (sp),hl		;6c3d
	ld bc,04072h		;6c3e
	push af			;6c41
	call po,08013h		;6c42
	ld (hl),h		;6c45
	call po,08019h		;6c46
	sbc a,c			;6c49
	call po,08010h		;6c4a
	ld e,b			;6c4d
	ei			;6c4e
	dec bc			;6c4f
	push af			;6c50
	call po,04013h		;6c51
	ld (hl),h		;6c54
	call po,04019h		;6c55
	sbc a,c			;6c58
	call po,04010h		;6c59
	ld e,b			;6c5c
	ei			;6c5d
	rlca			;6c5e
l6c5fh:
	rst 38h			;6c5f
	cp 002h			;6c60
	ret m			;6c62
	jr z,$-28		;6c63
	ld bc,04062h		;6c65
	ret m			;6c68
	ld h,h			;6c69
	push af			;6c6a
	ld (hl),b		;6c6b
	jp (hl)			;6c6c
	ld h,c			;6c6d
	ld (0b050h),a		;6c6e
	ei			;6c71
	dec bc			;6c72
	push af			;6c73
l6c74h:
	jr nz,l6c5fh		;6c74
	ld hl,01032h		;6c76
	or b			;6c79
	ei			;6c7a
	rlca			;6c7b
	ret po			;6c7c
	ld bc,0feffh		;6c7d
	ld (bc),a		;6c80
	jp po,0ee01h		;6c81
	inc bc			;6c84
	ld h,c			;6c85
	nop			;6c86
	ld (hl),c		;6c87
	jr nz,l6c0bh		;6c88
	ld b,b			;6c8a
	add a,c			;6c8b
	ld h,b			;6c8c
	add a,b			;6c8d
	ld d,(hl)		;6c8e
	add a,b			;6c8f
	ld c,a			;6c90
	ld b,b			;6c91
	ld c,c			;6c92
	ret po			;6c93
	ld bc,001e2h		;6c94
	ld hl,03100h		;6c97
	jr nz,$+67		;6c9a
	ld b,b			;6c9c
	ld b,c			;6c9d
	ld h,b			;6c9e
	ld b,b			;6c9f
	ld d,(hl)		;6ca0
	ld b,b			;6ca1
	ld c,a			;6ca2
	jr nz,l6ceeh		;6ca3
	ret po			;6ca5
	ld bc,001e2h		;6ca6
	ld bc,00100h		;6ca9
	jr nz,l6cafh		;6cac
	ld b,b			;6cae
l6cafh:
	ld bc,00060h		;6caf
	ld d,(hl)		;6cb2
	nop			;6cb3
	ld c,a			;6cb4
	nop			;6cb5
	ld c,c			;6cb6
	rst 38h			;6cb7
	cp 002h			;6cb8
	jp po,0f801h		;6cba
	inc d			;6cbd
	sub c			;6cbe
	nop			;6cbf
	and c			;6cc0
	jr nz,l6c74h		;6cc1
	ld b,b			;6cc3
	or c			;6cc4
	ld h,b			;6cc5
	and b			;6cc6
	ld d,(hl)		;6cc7
	and b			;6cc8
	ld c,a			;6cc9
	ld h,b			;6cca
	ld c,c			;6ccb
	ret po			;6ccc
	ld bc,001e2h		;6ccd
	ld sp,04100h		;6cd0
	jr nz,l6d26h		;6cd3
	ld b,b			;6cd5
	ld d,c			;6cd6
	ld h,b			;6cd7
	ld d,b			;6cd8
	ld d,(hl)		;6cd9
	ld d,b			;6cda
	ld c,a			;6cdb
	jr nc,$+75		;6cdc
	ret po			;6cde
	ld bc,001e2h		;6cdf
	ld bc,00100h		;6ce2
	jr nz,l6ce8h		;6ce5
	ld b,b			;6ce7
l6ce8h:
	ld bc,00060h		;6ce8
	ld d,(hl)		;6ceb
	nop			;6cec
	ld c,a			;6ced
l6ceeh:
	nop			;6cee
	ld c,c			;6cef
	rst 38h			;6cf0
	cp 001h			;6cf1
	jp pe,0e90ah		;6cf3
	ld bc,030d6h		;6cf6
	ex af,af'		;6cf9
	defb 0edh ;next byte illegal after ed	;6cfa
	inc b			;6cfb
	ex de,hl		;6cfc
	add a,c			;6cfd
	ld de,0c1d2h		;6cfe
	inc c			;6d01
	jp nz,006eah		;6d02
	jp nc,0c20ch		;6d05
	jp pe,0d203h		;6d08
	inc c			;6d0b
	rst 38h			;6d0c
	cp 001h			;6d0d
	jp pe,0e90eh		;6d0f
	ld bc,081f8h		;6d12
	call z,030d6h		;6d15
	ex af,af'		;6d18
	defb 0edh ;next byte illegal after ed	;6d19
	inc b			;6d1a
	ex de,hl		;6d1b
	add a,c			;6d1c
	ld de,00cd2h		;6d1d
	jp nz,006eah		;6d20
	jp nc,0c20ch		;6d23
l6d26h:
	jp pe,0d203h		;6d26
	inc c			;6d29
	pop bc			;6d2a
	rst 38h			;6d2b
	cp 002h			;6d2c
	ret po			;6d2e
	ld bc,001e2h		;6d2f
	ld h,c			;6d32
	add a,b			;6d33
	sub d			;6d34
	nop			;6d35
	sub d			;6d36
	add a,b			;6d37
	sub e			;6d38
	nop			;6d39
	sub h			;6d3a
	nop			;6d3b
	sub l			;6d3c
	nop			;6d3d
	sub (hl)		;6d3e
	nop			;6d3f
	sub a			;6d40
	nop			;6d41
	sbc a,b			;6d42
	nop			;6d43
	ld d,b			;6d44
	ld d,e			;6d45
	ld d,b			;6d46
	ld c,c			;6d47
	ret po			;6d48
	ld (bc),a		;6d49
	jp po,03101h		;6d4a
	add a,b			;6d4d
	ld d,d			;6d4e
	nop			;6d4f
	ld d,d			;6d50
	add a,b			;6d51
	ld d,e			;6d52
	nop			;6d53
	ld d,h			;6d54
	nop			;6d55
	ld d,l			;6d56
	nop			;6d57
	ld d,(hl)		;6d58
	nop			;6d59
	ld d,a			;6d5a
	nop			;6d5b
	ld e,b			;6d5c
	nop			;6d5d
	jr nz,l6db3h		;6d5e
	jr nz,l6dabh		;6d60
	ret po			;6d62
	ld (bc),a		;6d63
	jp po,00101h		;6d64
	add a,b			;6d67
	ld (bc),a		;6d68
	nop			;6d69
	ld (de),a		;6d6a
	add a,b			;6d6b
	inc de			;6d6c
	nop			;6d6d
	inc d			;6d6e
	nop			;6d6f
	dec d			;6d70
	nop			;6d71
	ld d,000h		;6d72
	rla			;6d74
	nop			;6d75
	jr l6d78h		;6d76
l6d78h:
	nop			;6d78
	ld d,e			;6d79
	nop			;6d7a
	ld c,c			;6d7b
	rst 38h			;6d7c
	cp 002h			;6d7d
	ret m			;6d7f
	ld d,d			;6d80
	jp po,09101h		;6d81
	add a,b			;6d84
	jp nz,0c200h		;6d85
	add a,b			;6d88
	jp 0c400h		;6d89
	nop			;6d8c
	push bc			;6d8d
	nop			;6d8e
	add a,000h		;6d8f
	rst 0			;6d91
	nop			;6d92
	ret z			;6d93
	nop			;6d94
	ret m			;6d95
	inc d			;6d96
	ld d,b			;6d97
	ld d,e			;6d98
	ld d,b			;6d99
	ld c,c			;6d9a
	ret po			;6d9b
	ld (bc),a		;6d9c
	jp po,0f801h		;6d9d
	ld d,d			;6da0
	ld sp,05280h		;6da1
	nop			;6da4
	ld d,d			;6da5
l6da6h:
	add a,b			;6da6
	ld d,e			;6da7
	nop			;6da8
	ld d,h			;6da9
	nop			;6daa
l6dabh:
	ld d,l			;6dab
	nop			;6dac
l6dadh:
	ld d,(hl)		;6dad
	nop			;6dae
	ld d,a			;6daf
	nop			;6db0
	ld e,b			;6db1
	nop			;6db2
l6db3h:
	ret m			;6db3
	inc d			;6db4
	jr nz,l6e0ah		;6db5
	jr nz,l6e02h		;6db7
	ret po			;6db9
	ld (bc),a		;6dba
	jp po,0f801h		;6dbb
l6dbeh:
	ld d,d			;6dbe
	ld bc,01280h		;6dbf
	nop			;6dc2
	ld (de),a		;6dc3
	add a,b			;6dc4
	inc de			;6dc5
	nop			;6dc6
	inc d			;6dc7
	nop			;6dc8
	dec d			;6dc9
l6dcah:
	nop			;6dca
	ld d,000h		;6dcb
	rla			;6dcd
	nop			;6dce
	jr l6dd1h		;6dcf
l6dd1h:
	ret m			;6dd1
	inc d			;6dd2
	nop			;6dd3
	ld d,e			;6dd4
	nop			;6dd5
	ld c,c			;6dd6
	ret po			;6dd7
	ld bc,0feffh		;6dd8
	ld (bc),a		;6ddb
	pop hl			;6ddc
	ld bc,004e4h		;6ddd
	ld b,0e4h		;6de0
	inc c			;6de2
	rlca			;6de3
	call po,00814h		;6de4
	call po,0091ch		;6de7
	jp po,0f501h		;6dea
	ld (hl),b		;6ded
	or b			;6dee
	ld (hl),c		;6def
	ld h,b			;6df0
	ei			;6df1
	ld a,(bc)		;6df2
	push af			;6df3
	jr nc,l6da6h		;6df4
	ld sp,0fb60h		;6df6
	ld a,(bc)		;6df9
	push af			;6dfa
	djnz l6dadh		;6dfb
	ld de,0fb60h		;6dfd
	ld a,(bc)		;6e00
	rst 38h			;6e01
l6e02h:
	cp 002h			;6e02
	ret m			;6e04
	ld d,d			;6e05
	jp po,0c101h		;6e06
	ld b,b			;6e09
l6e0ah:
	jp nz,0c300h		;6e0a
	add a,b			;6e0d
	push bc			;6e0e
	nop			;6e0f
	ret m			;6e10
	dec h			;6e11
	push af			;6e12
	jp nz,0c1d0h		;6e13
	ld h,b			;6e16
	ei			;6e17
	ld a,(bc)		;6e18
	push af			;6e19
	ld b,d			;6e1a
	ret nc			;6e1b
	ld b,c			;6e1c
	ld h,b			;6e1d
	ei			;6e1e
	ld a,(bc)		;6e1f
	push af			;6e20
	ld (de),a		;6e21
	ret nc			;6e22
	ld de,0fb60h		;6e23
	ld a,(bc)		;6e26
	rst 38h			;6e27
	cp 002h			;6e28
	ret po			;6e2a
	ld bc,001e3h		;6e2b
	call po,05400h		;6e2e
	ld (hl),b		;6e31
	ld (hl),h		;6e32
	and b			;6e33
	add a,h			;6e34
	jr nz,l6dcah		;6e35
l6e37h:
	and b			;6e37
	sub e			;6e38
	jr nz,l6dbeh		;6e39
	djnz l6e90h		;6e3b
	jr nz,$+37		;6e3d
	djnz l6e41h		;6e3f
l6e41h:
	nop			;6e41
	inc h			;6e42
	ld (hl),b		;6e43
	ld d,h			;6e44
	and b			;6e45
	ld h,h			;6e46
	jr nz,l6ebch		;6e47
	and b			;6e49
	ld (hl),e		;6e4a
	jr nz,l6eb0h		;6e4b
	djnz l6e72h		;6e4d
	jr nz,l6e54h		;6e4f
	djnz l6e53h		;6e51
l6e53h:
	nop			;6e53
l6e54h:
	inc d			;6e54
	ld (hl),b		;6e55
	inc d			;6e56
	and b			;6e57
	inc d			;6e58
	jr nz,l6e6eh		;6e59
	and b			;6e5b
	inc de			;6e5c
	jr nz,l6e72h		;6e5d
	djnz l6e74h		;6e5f
	jr nz,$+21		;6e61
	djnz $+1		;6e63
	cp 002h			;6e65
	ret m			;6e67
	ld h,h			;6e68
	jp po,0c401h		;6e69
	ld (hl),b		;6e6c
	ret m			;6e6d
l6e6eh:
	inc hl			;6e6e
	call nz,0c4a0h		;6e6f
l6e72h:
	jr nz,l6e37h		;6e72
l6e74h:
	add a,b			;6e74
	jp 0c320h		;6e75
	djnz l6ecdh		;6e78
	jr nz,$+37		;6e7a
	djnz l6e7eh		;6e7c
l6e7eh:
	nop			;6e7e
	ret m			;6e7f
	ld h,h			;6e80
	ld h,h			;6e81
	ld (hl),b		;6e82
	ret m			;6e83
	inc hl			;6e84
	ld h,h			;6e85
	and b			;6e86
	ld h,h			;6e87
	jr nz,l6eedh		;6e88
l6e8ah:
	and b			;6e8a
	ld h,e			;6e8b
	jr nz,l6ef1h		;6e8c
	djnz l6eb3h		;6e8e
l6e90h:
	jr nz,l6e95h		;6e90
	djnz l6e94h		;6e92
l6e94h:
	nop			;6e94
l6e95h:
	ret m			;6e95
	ld h,h			;6e96
	inc b			;6e97
	ld (hl),b		;6e98
	ret m			;6e99
	inc hl			;6e9a
	inc b			;6e9b
	and b			;6e9c
	inc b			;6e9d
	jr nc,$+5		;6e9e
	and b			;6ea0
	inc bc			;6ea1
	jr nz,$+5		;6ea2
	djnz $+5		;6ea4
	jr nz,$+5		;6ea6
	djnz l6e8ah		;6ea8
	ld bc,0f9ffh		;6eaa
	ret po			;6ead
	adc a,(hl)		;6eae
	push af			;6eaf
l6eb0h:
	add a,c			;6eb0
	add a,b			;6eb1
	add a,c			;6eb2
l6eb3h:
	ld b,b			;6eb3
	ei			;6eb4
	ld (de),a		;6eb5
	push af			;6eb6
	ld d,c			;6eb7
	add a,b			;6eb8
	ld d,c			;6eb9
	ld b,b			;6eba
	ei			;6ebb
l6ebch:
	ex af,af'		;6ebc
	push af			;6ebd
	ld de,01180h		;6ebe
	ld b,b			;6ec1
	ei			;6ec2
	ld b,0ffh		;6ec3
	ld sp,hl		;6ec5
	adc a,(iy-00bh)		;6ec6
	jp 0c200h		;6ec9
	add a,b			;6ecc
l6ecdh:
	ei			;6ecd
	ld (de),a		;6ece
	push af			;6ecf
	ld b,e			;6ed0
	nop			;6ed1
	ld b,d			;6ed2
	add a,b			;6ed3
	ei			;6ed4
	ex af,af'		;6ed5
	push af			;6ed6
	inc bc			;6ed7
	nop			;6ed8
	ld (bc),a		;6ed9
	add a,b			;6eda
	ei			;6edb
	ld b,0e0h		;6edc
	ld bc,0feffh		;6ede
	ld (bc),a		;6ee1
	ret po			;6ee2
	ld bc,001e4h		;6ee3
	ex (sp),hl		;6ee6
	ld bc,09031h		;6ee7
	ld sp,04150h		;6eea
l6eedh:
	adc a,b			;6eed
	ld b,c			;6eee
	ld c,b			;6eef
	ld d,c			;6ef0
l6ef1h:
	add a,b			;6ef1
	ld d,c			;6ef2
	ld b,b			;6ef3
	ld h,c			;6ef4
	add a,b			;6ef5
	ld h,c			;6ef6
	ld b,b			;6ef7
	ld (hl),c		;6ef8
	add a,b			;6ef9
	ld (hl),c		;6efa
	ld b,b			;6efb
	jp m,002feh		;6efc
	ret m			;6eff
	ld h,h			;6f00
	jp po,04301h		;6f01
	jr nz,l6f48h		;6f04
	and b			;6f06
	ld d,e			;6f07
	djnz $+84		;6f08
	sub b			;6f0a
	ld (hl),e		;6f0b
	nop			;6f0c
	ld (hl),d		;6f0d
	add a,b			;6f0e
	sub e			;6f0f
	nop			;6f10
	sub d			;6f11
	add a,b			;6f12
	or e			;6f13
	nop			;6f14
	or d			;6f15
	add a,b			;6f16
	jp m,0e0f9h		;6f17
	adc a,(hl)		;6f1a
	push af			;6f1b
	add a,c			;6f1c
	add a,b			;6f1d
	add a,c			;6f1e
	ld b,b			;6f1f
	ei			;6f20
	inc c			;6f21
	ld d,c			;6f22
	add a,b			;6f23
	ld d,c			;6f24
	ld b,b			;6f25
	jp po,0a301h		;6f26
	nop			;6f29
	and h			;6f2a
	nop			;6f2b
	and l			;6f2c
	nop			;6f2d
	and (hl)		;6f2e
	nop			;6f2f
	and a			;6f30
	nop			;6f31
	ret po			;6f32
	inc bc			;6f33
	jp po,0a301h		;6f34
	add a,b			;6f37
	and h			;6f38
	add a,b			;6f39
	and l			;6f3a
	add a,b			;6f3b
	and e			;6f3c
	ld b,b			;6f3d
	and e			;6f3e
	ld h,b			;6f3f
l6f40h:
	and e			;6f40
	add a,b			;6f41
	and e			;6f42
	and b			;6f43
	and e			;6f44
	ret nz			;6f45
	and e			;6f46
	ret po			;6f47
l6f48h:
	and h			;6f48
	nop			;6f49
	and h			;6f4a
	jr nz,l6ef1h		;6f4b
	ld b,b			;6f4d
	and h			;6f4e
	ld h,b			;6f4f
	and h			;6f50
	add a,b			;6f51
	and h			;6f52
	and b			;6f53
	and h			;6f54
	ret nz			;6f55
	and h			;6f56
	ret po			;6f57
	and l			;6f58
	nop			;6f59
	and l			;6f5a
	jr nz,$-89		;6f5b
	ld b,b			;6f5d
	and l			;6f5e
	ld h,b			;6f5f
	and l			;6f60
	add a,b			;6f61
	and l			;6f62
	ret nz			;6f63
	jp po,09603h		;6f64
	nop			;6f67
	sub (hl)		;6f68
l6f69h:
	ld b,b			;6f69
	add a,(hl)		;6f6a
	add a,b			;6f6b
	add a,(hl)		;6f6c
	ret nz			;6f6d
	ld (hl),a		;6f6e
	nop			;6f6f
	jp po,06704h		;6f70
	ld b,b			;6f73
	ld h,a			;6f74
	add a,b			;6f75
l6f76h:
	ld d,a			;6f76
	ret nz			;6f77
	ld e,b			;6f78
	nop			;6f79
	ld c,b			;6f7a
	ld b,b			;6f7b
l6f7ch:
	jr c,$-126		;6f7c
	jr z,l6f40h		;6f7e
	add hl,de		;6f80
	nop			;6f81
	rst 38h			;6f82
	ld sp,hl		;6f83
	adc a,(iy-00bh)		;6f84
	jp 0c200h		;6f87
	add a,b			;6f8a
	ei			;6f8b
l6f8ch:
	inc c			;6f8c
l6f8dh:
	ld d,e			;6f8d
	nop			;6f8e
	ld d,d			;6f8f
	add a,b			;6f90
	ret m			;6f91
	jr z,l6f76h		;6f92
	ld bc,080c2h		;6f94
	jp 0c400h		;6f97
l6f9ah:
	nop			;6f9a
	push bc			;6f9b
	nop			;6f9c
	add a,000h		;6f9d
	or d			;6f9f
	add a,b			;6fa0
	or e			;6fa1
	nop			;6fa2
	or h			;6fa3
	nop			;6fa4
	ret m			;6fa5
	inc d			;6fa6
	jp 0c340h		;6fa7
	ld h,b			;6faa
l6fabh:
	jp 0c380h		;6fab
	and b			;6fae
	jp 0c3c0h		;6faf
	ret po			;6fb2
	call nz,0c400h		;6fb3
l6fb6h:
	jr nz,l6f7ch		;6fb6
	ld b,b			;6fb8
	call nz,0c460h		;6fb9
	add a,b			;6fbc
	call nz,0c4a0h		;6fbd
	ret nz			;6fc0
	call nz,0c5e0h		;6fc1
	nop			;6fc4
	push bc			;6fc5
	jr nz,l6f8dh		;6fc6
	ld b,b			;6fc8
	push bc			;6fc9
	ld h,b			;6fca
	push bc			;6fcb
	add a,b			;6fcc
	or l			;6fcd
l6fceh:
	ret nz			;6fce
	jp po,0b603h		;6fcf
	nop			;6fd2
	and (hl)		;6fd3
	ld b,b			;6fd4
	and (hl)		;6fd5
	add a,b			;6fd6
	sub (hl)		;6fd7
l6fd8h:
	ret nz			;6fd8
	sub a			;6fd9
	nop			;6fda
	jp po,08704h		;6fdb
	ld b,b			;6fde
	ld (hl),a		;6fdf
	add a,b			;6fe0
	ld h,a			;6fe1
	ret nz			;6fe2
	ld e,b			;6fe3
l6fe4h:
	nop			;6fe4
	ld c,b			;6fe5
	ld b,b			;6fe6
	jr c,l6f69h		;6fe7
	jr z,l6fabh		;6fe9
	add hl,de		;6feb
	nop			;6fec
	add hl,bc		;6fed
	ld b,b			;6fee
	rst 38h			;6fef
l6ff0h:
	cp 002h			;6ff0
	ret po			;6ff2
	ld bc,001e2h		;6ff3
	ld h,d			;6ff6
	sub b			;6ff7
	ld (hl),d		;6ff8
l6ff9h:
	jr nc,l6f7ch		;6ff9
	ret p			;6ffb
	sub c			;6ffc
	xor b			;6ffd
	and c			;6ffe
	ld h,b			;6fff
	and c			;7000
l7001h:
	inc a			;7001
	and c			;7002
l7003h:
	ld b,d			;7003
	and c			;7004
sub_7005h:
	inc a			;7005
	ld h,d			;7006
	sub b			;7007
	ld (hl),d		;7008
	jr nc,l6f8ch		;7009
	ret pe			;700b
	sub c			;700c
l700dh:
	and b			;700d
	and c			;700e
	ld e,b			;700f
	and c			;7010
	inc (hl)		;7011
	and c			;7012
	ld a,(09062h)		;7013
	ld (hl),d		;7016
l7017h:
	jr nc,l6f9ah		;7017
	ret po			;7019
	sub c			;701a
	sbc a,b			;701b
	sub c			;701c
	ld d,b			;701d
	sub c			;701e
	inc l			;701f
	sub c			;7020
	ld (08862h),a		;7021
	ld (hl),d		;7024
	jr z,$-125		;7025
	ret c			;7027
	sub c			;7028
	sub b			;7029
	sub c			;702a
	ld c,b			;702b
	sub c			;702c
	inc h			;702d
	sub c			;702e
	ld hl,(08062h)		;702f
	ld (hl),d		;7032
l7033h:
	jr nz,l6fb6h		;7033
	ret nc			;7035
	sub c			;7036
	adc a,b			;7037
	sub c			;7038
	ld b,b			;7039
	sub c			;703a
l703bh:
	inc e			;703b
	ld h,d			;703c
	ld a,b			;703d
	ld (hl),d		;703e
	jr $-125		;703f
	ret z			;7041
	sub c			;7042
	add a,b			;7043
l7044h:
	sub c			;7044
	jr c,l6fd8h		;7045
	inc d			;7047
	ld h,d			;7048
	ld (hl),b		;7049
	ld (hl),d		;704a
	djnz l6fceh		;704b
	ret nz			;704d
	sub c			;704e
	ld a,b			;704f
	sub c			;7050
	jr nc,l6fe4h		;7051
	inc c			;7053
	ld h,d			;7054
	ld l,b			;7055
	ld (hl),d		;7056
	ex af,af'		;7057
	add a,c			;7058
	cp b			;7059
	sub c			;705a
	ld (hl),b		;705b
	sub c			;705c
	jr z,l6ff0h		;705d
	inc b			;705f
	ld h,d			;7060
	ld h,b			;7061
	ld (hl),c		;7062
	ret po			;7063
	add a,c			;7064
	add a,b			;7065
	sub c			;7066
	jr z,l6ff9h		;7067
	defb 0fdh,062h ;ld iyh,d	;7069
	ld e,b			;706b
	ld (hl),c		;706c
	ret c			;706d
	add a,c			;706e
	ld a,b			;706f
	sub c			;7070
	jr nz,l7003h		;7071
	call p,05062h		;7073
	ld (hl),c		;7076
	ret nc			;7077
	add a,c			;7078
	ld (hl),b		;7079
	sub c			;707a
	jr l700dh		;707b
	call pe,04862h		;707d
	ld (hl),c		;7080
	ret z			;7081
	add a,c			;7082
	ld l,b			;7083
l7084h:
	sub c			;7084
	djnz l7017h		;7085
	call po,04062h		;7087
	ld (hl),c		;708a
	ret nz			;708b
	add a,c			;708c
	ld h,b			;708d
	sub c			;708e
	ex af,af'		;708f
	sub b			;7090
	call c,03862h		;7091
	ld (hl),c		;7094
	cp b			;7095
	add a,c			;7096
	ld e,b			;7097
	sub c			;7098
	nop			;7099
	sub b			;709a
	call nc,03072h		;709b
	add a,c			;709e
	sub b			;709f
l70a0h:
	sub c			;70a0
	jr nz,l7033h		;70a1
	call z,02872h		;70a3
	add a,c			;70a6
	adc a,b			;70a7
	sub c			;70a8
	jr l703bh		;70a9
	call nz,sub_72f5h	;70ab
l70aeh:
	jr nz,$-125		;70ae
	add a,b			;70b0
	sub c			;70b1
	djnz l7044h		;70b2
	cp b			;70b4
	ei			;70b5
	rst 38h			;70b6
	rst 38h			;70b7
	cp 002h			;70b8
l70bah:
	ret m			;70ba
	inc de			;70bb
	jp po,09201h		;70bc
	sub b			;70bf
	and d			;70c0
	jr nc,$-77		;70c1
	defb 0fdh,0c1h,0a8h ;illegal sequence	;70c3
l70c6h:
	pop bc			;70c6
	ld h,b			;70c7
	pop bc			;70c8
	inc a			;70c9
	pop bc			;70ca
	ld b,d			;70cb
	pop bc			;70cc
	inc a			;70cd
	sub d			;70ce
	sub b			;70cf
l70d0h:
	and d			;70d0
	jr nc,l7084h		;70d1
	ret pe			;70d3
	pop bc			;70d4
	and b			;70d5
	pop bc			;70d6
	ld e,b			;70d7
	pop bc			;70d8
	inc (hl)		;70d9
	pop bc			;70da
	ld a,(09092h)		;70db
	and d			;70de
	jr nc,$-77		;70df
	ret po			;70e1
	pop bc			;70e2
	sbc a,b			;70e3
	pop bc			;70e4
	ld d,b			;70e5
	pop bc			;70e6
	inc l			;70e7
l70e8h:
	pop bc			;70e8
	ld (08892h),a		;70e9
	and d			;70ec
	jr z,l70a0h		;70ed
	ret c			;70ef
	pop bc			;70f0
l70f1h:
	sub b			;70f1
	pop bc			;70f2
	ld c,b			;70f3
	pop bc			;70f4
	inc h			;70f5
	pop bc			;70f6
	ld hl,(08092h)		;70f7
	and d			;70fa
l70fbh:
	jr nz,l70aeh		;70fb
	ret nc			;70fd
	pop bc			;70fe
	adc a,b			;70ff
	pop bc			;7100
	ld b,b			;7101
	pop bc			;7102
	inc e			;7103
	sub d			;7104
l7105h:
	ld a,b			;7105
	and d			;7106
	jr l70bah		;7107
	ret z			;7109
	pop bc			;710a
	add a,b			;710b
	pop bc			;710c
	jr c,l70d0h		;710d
l710fh:
	inc d			;710f
	sub d			;7110
	ld (hl),b		;7111
	and d			;7112
	djnz l70c6h		;7113
	ret nz			;7115
	pop bc			;7116
	ld a,b			;7117
	pop bc			;7118
	jr nc,$-61		;7119
	inc c			;711b
	sub d			;711c
	ld l,b			;711d
	and d			;711e
	ex af,af'		;711f
	or c			;7120
	cp b			;7121
	pop bc			;7122
	ld (hl),b		;7123
	pop bc			;7124
	jr z,l70e8h		;7125
	inc b			;7127
	sub d			;7128
l7129h:
	ld h,b			;7129
	and c			;712a
l712bh:
	ret po			;712b
	or c			;712c
	add a,b			;712d
	pop bc			;712e
	jr z,l70f1h		;712f
	ret p			;7131
	sub d			;7132
l7133h:
	ld e,b			;7133
	and c			;7134
	ret c			;7135
	or c			;7136
	ld a,b			;7137
	pop bc			;7138
	jr nz,l70fbh		;7139
	call p,05092h		;713b
	and c			;713e
	ret nc			;713f
	or c			;7140
	ld (hl),b		;7141
	pop bc			;7142
	jr l7105h		;7143
	call pe,04892h		;7145
	and c			;7148
	ret z			;7149
	or c			;714a
	ld l,b			;714b
	pop bc			;714c
	djnz l710fh		;714d
	call po,04092h		;714f
	and c			;7152
	ret nz			;7153
	or c			;7154
	ld h,b			;7155
	pop bc			;7156
	ex af,af'		;7157
	ret nz			;7158
	call c,03892h		;7159
	and c			;715c
	cp b			;715d
	or c			;715e
	ld e,b			;715f
	pop bc			;7160
	nop			;7161
	ret nz			;7162
	call nc,03092h		;7163
	or c			;7166
	sub b			;7167
	pop bc			;7168
	jr nz,l712bh		;7169
	call z,028a2h		;716b
	or c			;716e
	adc a,b			;716f
	pop bc			;7170
	jr l7133h		;7171
	call nz,0a2f5h		;7173
	jr nz,l7129h		;7176
	add a,b			;7178
	pop bc			;7179
	djnz $-62		;717a
	cp h			;717c
	ei			;717d
	rst 38h			;717e
	rst 38h			;717f
	cp 002h			;7180
	pop hl			;7182
	ld (bc),a		;7183
	call po,0080ah		;7184
	call po,00810h		;7187
	call po,00814h		;718a
	call po,0081ah		;718d
	call po,0081fh		;7190
	pop hl			;7193
	ld (bc),a		;7194
	push af			;7195
	ld sp,hl		;7196
	xor c			;7197
	sub c			;7198
	ei			;7199
	inc bc			;719a
	rst 30h			;719b
	ld (bc),a		;719c
	ld sp,hl		;719d
	xor c			;719e
	sub c			;719f
	push af			;71a0
	rst 30h			;71a1
	inc b			;71a2
	ld sp,hl		;71a3
l71a4h:
	xor c			;71a4
	sub c			;71a5
	ei			;71a6
	ld (bc),a		;71a7
	rst 38h			;71a8
	call po,00815h		;71a9
	call po,00816h		;71ac
l71afh:
	call po,00817h		;71af
	call po,00818h		;71b2
	call po,00819h		;71b5
	call po,0081ah		;71b8
	call po,0081bh		;71bb
	call po,0081ch		;71be
	call po,0081dh		;71c1
	call po,0081eh		;71c4
	jp m,002feh		;71c7
	ret m			;71ca
	jr z,l71afh		;71cb
	ld bc,040b1h		;71cd
	or d			;71d0
	jp (hl)			;71d1
	or e			;71d2
	adc a,0b5h		;71d3
	inc (hl)		;71d5
	or (hl)			;71d6
	or (hl)			;71d7
	or a			;71d8
	sbc a,(hl)		;71d9
	or d			;71da
	add a,b			;71db
	and e			;71dc
	nop			;71dd
	and e			;71de
	add a,b			;71df
	and h			;71e0
	nop			;71e1
	and h			;71e2
	add a,b			;71e3
	and l			;71e4
	nop			;71e5
	and l			;71e6
	add a,b			;71e7
	and l			;71e8
	nop			;71e9
	and h			;71ea
	nop			;71eb
	and e			;71ec
	nop			;71ed
	and d			;71ee
	add a,b			;71ef
	push af			;71f0
l71f1h:
	sub d			;71f1
	jr z,$-109		;71f2
	jr z,l71f1h		;71f4
	dec de			;71f6
	push af			;71f7
l71f8h:
	ld b,d			;71f8
	jr z,l723ch		;71f9
	jr z,l71f8h		;71fb
	ld a,(bc)		;71fd
	push af			;71fe
l71ffh:
	ld (02128h),hl		;71ff
l7202h:
	jr z,l71ffh		;7202
	ld a,(bc)		;7204
	push af			;7205
l7206h:
	ld (bc),a		;7206
	jr z,$+3		;7207
	jr z,l7206h		;7209
	add hl,bc		;720b
	rst 38h			;720c
	cp 002h			;720d
	ret po			;720f
	ld bc,001e2h		;7210
	push af			;7213
	ld h,d			;7214
	ld e,a			;7215
	ld (hl),d		;7216
	nop			;7217
	add a,e			;7218
	ld e,a			;7219
	add a,h			;721a
	sub b			;721b
	add a,e			;721c
	ld e,a			;721d
	add a,e			;721e
	jr nc,l71a4h		;721f
	ld h,b			;7221
	add a,e			;7222
	nop			;7223
	add a,d			;7224
	ld h,b			;7225
	add a,e			;7226
	rst 28h			;7227
l7228h:
	add a,h			;7228
	sub b			;7229
	add a,l			;722a
	jr nc,l7228h		;722b
	rlca			;722d
	push af			;722e
	ld b,d			;722f
	ld e,a			;7230
	ld d,d			;7231
	nop			;7232
	ld h,e			;7233
	ld e,a			;7234
	ld h,h			;7235
	sub b			;7236
	ld h,e			;7237
l7238h:
	ld e,a			;7238
	ld h,e			;7239
	jr nc,l729fh		;723a
l723ch:
	ld h,b			;723c
	ld h,e			;723d
	nop			;723e
	ld h,d			;723f
	ld h,b			;7240
	ld h,e			;7241
	rst 28h			;7242
l7243h:
	ld h,h			;7243
	sub b			;7244
	ld h,l			;7245
	jr nc,l7243h		;7246
	inc bc			;7248
	push af			;7249
	ld (bc),a		;724a
	ld e,a			;724b
	ld (de),a		;724c
	nop			;724d
	inc de			;724e
	ld e,a			;724f
	inc d			;7250
	sub b			;7251
	inc de			;7252
	ld e,a			;7253
	inc bc			;7254
	jr nc,l725ah		;7255
	ld h,b			;7257
	inc bc			;7258
	nop			;7259
l725ah:
	ld (bc),a		;725a
	ld h,b			;725b
	inc bc			;725c
	rst 28h			;725d
	inc b			;725e
	sub b			;725f
	rst 38h			;7260
	cp 002h			;7261
	ret m			;7263
	inc hl			;7264
	jp po,0f501h		;7265
	ld (hl),d		;7268
	ld e,a			;7269
	sub d			;726a
	nop			;726b
	jp 0c45fh		;726c
	sub b			;726f
	jp 0c35fh		;7270
	jr nc,l7238h		;7273
	ld h,b			;7275
	jp 0c200h		;7276
	ld h,b			;7279
	jp 0c4efh		;727a
	sub b			;727d
	push bc			;727e
	jr nc,$-3		;727f
	rlca			;7281
	push af			;7282
l7283h:
	ld b,d			;7283
	ld e,a			;7284
	ld d,d			;7285
	nop			;7286
	ld h,e			;7287
	ld e,a			;7288
	ld h,h			;7289
	sub b			;728a
	ld h,e			;728b
	ld e,a			;728c
	ld h,e			;728d
	jr nc,l72f3h		;728e
	ld h,b			;7290
	ld h,e			;7291
	nop			;7292
	ld h,d			;7293
	ld h,b			;7294
	ld h,e			;7295
l7296h:
	rst 28h			;7296
l7297h:
	ld h,h			;7297
	sub b			;7298
	ld h,l			;7299
	jr nc,l7297h		;729a
	inc bc			;729c
	push af			;729d
	ld (bc),a		;729e
l729fh:
	ld e,a			;729f
	ld (de),a		;72a0
	nop			;72a1
	inc de			;72a2
l72a3h:
	ld e,a			;72a3
	inc d			;72a4
l72a5h:
	sub b			;72a5
l72a6h:
	inc de			;72a6
	ld e,a			;72a7
	inc bc			;72a8
	jr nc,l72aeh		;72a9
	ld h,b			;72ab
	inc bc			;72ac
	nop			;72ad
l72aeh:
	ld (bc),a		;72ae
	ld h,b			;72af
	inc bc			;72b0
	rst 28h			;72b1
	inc b			;72b2
	sub b			;72b3
	dec b			;72b4
	jr nc,$+1		;72b5
	cp 002h			;72b7
	ret po			;72b9
	inc bc			;72ba
	jp po,0c201h		;72bb
	djnz l7283h		;72be
	ld b,b			;72c0
	add a,020h		;72c1
	ret z			;72c3
	inc hl			;72c4
	call nz,0c520h		;72c5
	ld (hl),b		;72c8
	rst 0			;72c9
	or b			;72ca
	call nz,0c780h		;72cb
	jr nc,l7296h		;72ce
	add a,b			;72d0
	add a,080h		;72d1
	ret z			;72d3
	nop			;72d4
	push af			;72d5
	add a,0a0h		;72d6
	ret z			;72d8
	nop			;72d9
	push bc			;72da
	jr nc,l72a6h		;72db
	jr nz,l72a3h		;72dd
	ld d,h			;72df
	add a,021h		;72e0
	ret			;72e2
	ld h,b			;72e3
	add a,020h		;72e4
	ei			;72e6
	ld (bc),a		;72e7
	or a			;72e8
	jr nz,l729fh		;72e9
	djnz l72a5h		;72eb
	ld b,e			;72ed
	dec h			;72ee
	ld h,b			;72ef
	cp c			;72f0
	ld h,b			;72f1
	or h			;72f2
l72f3h:
	nop			;72f3
	or l			;72f4
sub_72f5h:
	ld h,b			;72f5
l72f6h:
	or e			;72f6
	jr nc,$-59		;72f7
	jr nc,$-58		;72f9
	ld b,b			;72fb
	push bc			;72fc
	ld d,b			;72fd
	jp 0c562h		;72fe
	nop			;7301
	and h			;7302
	ld b,b			;7303
	add a,e			;7304
	add a,b			;7305
	sub h			;7306
	nop			;7307
l7308h:
	sub l			;7308
	ld b,b			;7309
	sub e			;730a
	add a,b			;730b
l730ch:
	sub d			;730c
	ret nz			;730d
	ld sp,hl		;730e
l730fh:
	sub a			;730f
	sub e			;7310
	rst 30h			;7311
l7312h:
	inc bc			;7312
	ld sp,hl		;7313
	sub a			;7314
l7315h:
	sub e			;7315
	rst 30h			;7316
	dec b			;7317
	ld sp,hl		;7318
	sub a			;7319
	sub e			;731a
	rst 30h			;731b
	ex af,af'		;731c
	ld sp,hl		;731d
	sub a			;731e
	sub e			;731f
	rst 38h			;7320
	cp 002h			;7321
	ret m			;7323
	jr z,l7308h		;7324
	ld bc,010c1h		;7326
	jp 0c640h		;7329
	jr nz,l72f6h		;732c
	inc hl			;732e
	call nz,0c520h		;732f
l7332h:
	ld (hl),b		;7332
	pop bc			;7333
	or b			;7334
	jp nz,0c380h		;7335
	jr nc,l7332h		;7338
	ld h,h			;733a
	jp 0c680h		;733b
	add a,b			;733e
	jp 0f500h		;733f
	jp 0c8a0h		;7342
	nop			;7345
	push bc			;7346
	jr nc,l7312h		;7347
	jr nz,l730fh		;7349
	ld d,h			;734b
	ret m			;734c
	jr z,l7315h		;734d
	ld hl,l60c9h		;734f
	add a,020h		;7352
	ei			;7354
	ld (bc),a		;7355
	or d			;7356
	jr nz,l730ch		;7357
	djnz l730fh		;7359
	ld b,e			;735b
	dec h			;735c
	ld h,b			;735d
	or l			;735e
	ld h,b			;735f
	or h			;7360
	nop			;7361
l7362h:
	or l			;7362
l7363h:
	ld h,b			;7363
	ret m			;7364
	ld h,h			;7365
	or e			;7366
	jr nc,$-60		;7367
	jr nc,l7363h		;7369
	jr z,$-58		;736b
	ld b,b			;736d
	push bc			;736e
	ld d,b			;736f
	jp 0c562h		;7370
	nop			;7373
l7374h:
	and h			;7374
	ld b,b			;7375
	add a,e			;7376
	add a,b			;7377
	sub h			;7378
	nop			;7379
	sub l			;737a
	ld b,b			;737b
	sub e			;737c
	add a,b			;737d
	sub d			;737e
	ret nz			;737f
	rst 30h			;7380
	ld (bc),a		;7381
	ld sp,hl		;7382
	sub a			;7383
	sub e			;7384
	rst 30h			;7385
l7386h:
	ld b,0f9h		;7386
	sub a			;7388
	sub e			;7389
	rst 30h			;738a
	ex af,af'		;738b
	ld sp,hl		;738c
	sub a			;738d
	sub e			;738e
	rst 30h			;738f
	ld a,(bc)		;7390
	ld sp,hl		;7391
	sub a			;7392
	sub e			;7393
	ret po			;7394
	inc bc			;7395
	rst 38h			;7396
	and d			;7397
	jr nz,$-91		;7398
	djnz $-90		;739a
	ld b,e			;739c
	and l			;739d
	ld h,b			;739e
	and l			;739f
	ld h,b			;73a0
	and h			;73a1
	nop			;73a2
	and l			;73a3
	ld h,b			;73a4
	and e			;73a5
	jr nc,$-92		;73a6
	jr nc,$-90		;73a8
	ld b,b			;73aa
	and l			;73ab
	ld d,b			;73ac
	and (hl)		;73ad
	ld h,d			;73ae
	and a			;73af
	nop			;73b0
	xor b			;73b1
	ld b,b			;73b2
	xor c			;73b3
	add a,b			;73b4
	xor d			;73b5
	nop			;73b6
	xor e			;73b7
	ld b,b			;73b8
	xor h			;73b9
	add a,b			;73ba
	xor l			;73bb
	ret nz			;73bc
	jp m,002feh		;73bd
	ret po			;73c0
	ld (bc),a		;73c1
	xor 001h		;73c2
	jp po,05001h		;73c4
	ld b,b			;73c7
	ld d,b			;73c8
	ld h,b			;73c9
	ld b,b			;73ca
	ld b,b			;73cb
	ld b,b			;73cc
	add a,b			;73cd
	ld b,b			;73ce
l73cfh:
	ld h,b			;73cf
	ld b,b			;73d0
	ld b,b			;73d1
	ld b,b			;73d2
	jr nc,l73d5h		;73d3
l73d5h:
	ld h,b			;73d5
	nop			;73d6
	jr nc,l73d9h		;73d7
l73d9h:
	add a,b			;73d9
	ld b,b			;73da
	jr nc,l741dh		;73db
	ld h,b			;73dd
	jr nc,$+66		;73de
	jr nc,l7362h		;73e0
	jr nc,l7444h		;73e2
	jr nc,l7426h		;73e4
	jr nc,l7418h		;73e6
	ret po			;73e8
	inc bc			;73e9
	jp po,02001h		;73ea
	ld b,b			;73ed
	jr nz,$+98		;73ee
	jr nz,l7432h		;73f0
	jr nz,l7374h		;73f2
	jr nz,l7456h		;73f4
	jr nz,l7438h		;73f6
	jr nz,l742ah		;73f8
	ret po			;73fa
	inc bc			;73fb
	jp po,01001h		;73fc
	ld b,b			;73ff
	djnz l7462h		;7400
	djnz l7444h		;7402
	djnz l7386h		;7404
	djnz l7468h		;7406
	djnz $+66		;7408
	djnz l743ch		;740a
	ret po			;740c
	inc bc			;740d
	jp po,00001h		;740e
	ld b,b			;7411
	nop			;7412
	ld h,b			;7413
	nop			;7414
sub_7415h:
	ld b,b			;7415
	nop			;7416
	add a,b			;7417
l7418h:
	nop			;7418
	ld h,b			;7419
	rst 38h			;741a
	cp 002h			;741b
l741dh:
	ret m			;741d
	dec c			;741e
	jp po,09001h		;741f
	ld b,b			;7422
	sub b			;7423
	ld h,b			;7424
	add a,b			;7425
l7426h:
	ld b,b			;7426
	add a,b			;7427
	add a,b			;7428
	add a,b			;7429
l742ah:
	ld h,b			;742a
	add a,b			;742b
	ld b,b			;742c
	ld (hl),b		;742d
	jr nc,l7430h		;742e
l7430h:
	ld h,b			;7430
	nop			;7431
l7432h:
	ld b,b			;7432
	nop			;7433
	add a,b			;7434
	ld d,b			;7435
	ld b,b			;7436
	ld b,b			;7437
l7438h:
	ld h,b			;7438
	ld b,b			;7439
	ld b,b			;743a
	ld b,b			;743b
l743ch:
	add a,b			;743c
	ld b,b			;743d
	ld h,b			;743e
	ld b,b			;743f
	ld b,b			;7440
	jr nc,l7473h		;7441
	ret po			;7443
l7444h:
	inc bc			;7444
	jp po,02001h		;7445
	ld b,b			;7448
	jr nz,l74abh		;7449
	jr nz,l748dh		;744b
	jr nz,l73cfh		;744d
	jr nz,l74b1h		;744f
	jr nz,l7493h		;7451
	jr nz,l7485h		;7453
	ret po			;7455
l7456h:
	inc bc			;7456
	jp po,00001h		;7457
	ld b,b			;745a
	nop			;745b
	ld h,b			;745c
	nop			;745d
	ld b,b			;745e
	nop			;745f
l7460h:
	add a,b			;7460
	nop			;7461
l7462h:
	ld h,b			;7462
	nop			;7463
	ld b,b			;7464
	nop			;7465
	jr nc,l7460h		;7466
l7468h:
	add hl,de		;7468
	ret po			;7469
	inc bc			;746a
	jp po,00001h		;746b
	ld b,b			;746e
	nop			;746f
	ld h,b			;7470
	nop			;7471
	ld b,b			;7472
l7473h:
	nop			;7473
	add a,b			;7474
	nop			;7475
	ld h,b			;7476
	nop			;7477
	ld b,b			;7478
	nop			;7479
	jr nc,$+1		;747a
	cp 001h			;747c
	pop af			;747e
	ld h,d			;747f
	jp (hl)			;7480
	add hl,bc		;7481
	jp pe,0d002h		;7482
l7485h:
	ld c,a			;7485
	ld c,a			;7486
	add a,(iy-06ch)		;7487
	cp 001h			;748a
	pop af			;748c
l748dh:
	ld h,d			;748d
	jp (hl)			;748e
	add hl,bc		;748f
	jp pe,0d002h		;7490
l7493h:
	ld l,a			;7493
	ld l,a			;7494
	defb 0fdh,094h ;sub iyh	;7495
	sub h			;7497
	cp 001h			;7498
	pop af			;749a
	ld h,d			;749b
	jp (hl)			;749c
	add hl,bc		;749d
	jp pe,0d002h		;749e
	cpl			;74a1
	cpl			;74a2
	defb 0fdh,0a2h,094h ;illegal sequence	;74a3
	cp 001h			;74a6
	ret m			;74a8
	dec b			;74a9
	pop af			;74aa
l74abh:
	ld h,e			;74ab
	jp (hl)			;74ac
	add hl,bc		;74ad
	jp pe,0d201h		;74ae
l74b1h:
	sbc a,a			;74b1
	defb 0fdh,0b1h,094h ;illegal sequence	;74b2
	cp 001h			;74b5
	ret m			;74b7
	dec b			;74b8
	pop af			;74b9
	ld h,e			;74ba
	jp (hl)			;74bb
	add hl,bc		;74bc
	jp pe,0d201h		;74bd
	ld c,a			;74c0
	defb 0fdh,0c0h,094h ;illegal sequence	;74c1
	cp 001h			;74c4
	ret m			;74c6
	dec b			;74c7
	pop af			;74c8
	ld h,e			;74c9
	jp (hl)			;74ca
	add hl,bc		;74cb
	jp pe,0d201h		;74cc
	cpl			;74cf
	defb 0fdh,0cfh,094h ;illegal sequence	;74d0
	cp 001h			;74d3
	ret m			;74d5
	dec b			;74d6
	pop af			;74d7
	ld (hl),d		;74d8
	jp (hl)			;74d9
	add hl,bc		;74da
	jp pe,0d102h		;74db
	cp a			;74de
	defb 0fdh,0deh,094h ;illegal sequence	;74df
	cp 001h			;74e2
	ret m			;74e4
	dec b			;74e5
	pop af			;74e6
	ld h,d			;74e7
	xor 001h		;74e8
	jp (hl)			;74ea
	add hl,bc		;74eb
	jp pe,0d101h		;74ec
	cp a			;74ef
	defb 0fdh,0efh,094h ;illegal sequence	;74f0
	cp 002h			;74f3
	jp po,0ee01h		;74f5
	inc bc			;74f8
	and h			;74f9
	add a,b			;74fa
	and h			;74fb
	ret nz			;74fc
	and l			;74fd
	nop			;74fe
	and l			;74ff
	add a,b			;7500
	and (hl)		;7501
	nop			;7502
	and (hl)		;7503
	add a,b			;7504
	and a			;7505
	nop			;7506
	and a			;7507
	add a,b			;7508
	push af			;7509
	rst 30h			;750a
	ld (bc),a		;750b
	ld sp,hl		;750c
	in a,(096h)		;750d
	ei			;750f
	inc bc			;7510
	rst 30h			;7511
	dec b			;7512
	ld sp,hl		;7513
	in a,(096h)		;7514
	rst 30h			;7516
	ex af,af'		;7517
	ld sp,hl		;7518
	in a,(096h)		;7519
	rst 30h			;751b
	ld a,(bc)		;751c
	ld sp,hl		;751d
	in a,(096h)		;751e
	rst 30h			;7520
	inc c			;7521
	ld sp,hl		;7522
	in a,(096h)		;7523
	rst 38h			;7525
	cp 002h			;7526
	ret po			;7528
	ld bc,001e2h		;7529
	and h			;752c
	add a,b			;752d
	and h			;752e
	ret nz			;752f
	and l			;7530
	nop			;7531
	and l			;7532
	add a,b			;7533
	and (hl)		;7534
	nop			;7535
	and (hl)		;7536
	add a,b			;7537
	and a			;7538
	nop			;7539
	and a			;753a
	add a,b			;753b
	jp po,l6001h+1		;753c
	rlca			;753f
	call p,00908h		;7540
	ld a,(bc)		;7543
	dec bc			;7544
	inc c			;7545
	dec c			;7546
	ld c,00fh		;7547
	djnz l755ch		;7549
	ld (de),a		;754b
	inc de			;754c
	inc d			;754d
	dec d			;754e
	ld d,017h		;754f
	jr l756ch		;7551
	ld a,(de)		;7553
	dec de			;7554
	inc e			;7555
	dec e			;7556
	or 050h			;7557
	ld e,0f4h		;7559
	rra			;755b
l755ch:
	jr nz,$+35		;755c
	ld (02423h),hl		;755e
	dec h			;7561
	ld h,027h		;7562
	jr z,$+43		;7564
	ld hl,(02c2bh)		;7566
	dec l			;7569
	ld l,02fh		;756a
l756ch:
	jr nc,$+51		;756c
	ld (03433h),a		;756e
	dec (hl)		;7571
	ld (hl),0f6h		;7572
	ld b,b			;7574
	scf			;7575
	call p,03938h		;7576
	ld a,(03c3bh)		;7579
	dec a			;757c
	ccf			;757d
	or 030h			;757e
	ld b,c			;7580
	jr nz,$+68		;7581
	djnz $+69		;7583
	nop			;7585
	ld b,h			;7586
	ret po			;7587
	ld a,(bc)		;7588
	rst 38h			;7589
	cp 002h			;758a
	pop hl			;758c
	ld bc,013e4h		;758d
	ex af,af'		;7590
	call po,00b1dh		;7591
	call po,00c1fh		;7594
	call po,00b1eh		;7597
	call po,00a1dh		;759a
	call po,00a1ch		;759d
	pop hl			;75a0
	inc bc			;75a1
	call po,00b02h		;75a2
	call po,00a03h		;75a5
	call po,00904h		;75a8
	call po,00a05h		;75ab
	call po,00906h		;75ae
	call po,00907h		;75b1
	call po,00909h		;75b4
	call po,0090bh		;75b7
	call po,0090ch		;75ba
	call po,0090dh		;75bd
	call po,0090eh		;75c0
	call po,0090fh		;75c3
	call po,00910h		;75c6
	call po,00911h		;75c9
	call po,00912h		;75cc
	call po,00913h		;75cf
	call po,00914h		;75d2
	call po,00915h		;75d5
	call po,00916h		;75d8
	call po,00917h		;75db
	call po,00918h		;75de
	call po,00919h		;75e1
	call po,0091ah		;75e4
	call po,0091bh		;75e7
	call po,0091dh		;75ea
	call po,0091fh		;75ed
	add hl,bc		;75f0
	ex af,af'		;75f1
	rlca			;75f2
	ld b,005h		;75f3
	inc b			;75f5
	inc bc			;75f6
	inc bc			;75f7
	ld (bc),a		;75f8
	ld (bc),a		;75f9
	ld bc,00001h		;75fa
	nop			;75fd
	ret po			;75fe
	rrca			;75ff
	rst 38h			;7600
	cp 002h			;7601
	jp po,0f801h		;7603
	ld h,b			;7606
	jp 0c300h		;7607
	ld b,b			;760a
	jp 0c480h		;760b
	nop			;760e
	call nz,0c580h		;760f
	nop			;7612
	push bc			;7613
	add a,b			;7614
	add a,000h		;7615
	jp nz,0c280h		;7617
	and b			;761a
	jp nz,0c3d0h		;761b
	nop			;761e
	jp 0c340h		;761f
	add a,b			;7622
	jp 0c4c0h		;7623
	nop			;7626
	call nz,0f940h		;7627
	ld (bc),a		;762a
	sub a			;762b
	ret po			;762c
	inc d			;762d
	rst 38h			;762e
	cp 002h			;762f
	jp po,0f801h		;7631
	ld h,b			;7634
	jp 0c380h		;7635
	ret nz			;7638
	call nz,0c400h		;7639
	add a,b			;763c
	push bc			;763d
	nop			;763e
	push bc			;763f
	add a,b			;7640
	add a,000h		;7641
	add a,080h		;7643
	jp nz,0c2c0h		;7645
	ret po			;7648
	jp 0c320h		;7649
	ld b,b			;764c
	jp 0c380h		;764d
	ret nz			;7650
	call nz,0c400h		;7651
	ld b,b			;7654
	ld sp,hl		;7655
	ld (bc),a		;7656
	sub a			;7657
	ret po			;7658
	dec d			;7659
	rst 38h			;765a
	cp 002h			;765b
	jp po,0f801h		;765d
	ld h,b			;7660
	call nz,0c480h		;7661
	ret nz			;7664
	push bc			;7665
	nop			;7666
	push bc			;7667
	add a,b			;7668
	add a,000h		;7669
	add a,080h		;766b
	rst 0			;766d
	nop			;766e
	rst 0			;766f
	add a,b			;7670
	ret m			;7671
	ld e,d			;7672
	push af			;7673
	ld sp,hl		;7674
	in a,(096h)		;7675
	ei			;7677
	inc bc			;7678
	rst 30h			;7679
	inc b			;767a
	ld sp,hl		;767b
	in a,(096h)		;767c
	rst 30h			;767e
	rlca			;767f
	ld sp,hl		;7680
	in a,(096h)		;7681
	rst 30h			;7683
	ld a,(bc)		;7684
	ld sp,hl		;7685
	in a,(096h)		;7686
	rst 30h			;7688
	inc c			;7689
	ld sp,hl		;768a
	in a,(096h)		;768b
	rst 38h			;768d
	cp 002h			;768e
	jp po,0f801h		;7690
	dec d			;7693
	call nz,0c480h		;7694
	ret nz			;7697
	push bc			;7698
	nop			;7699
	push bc			;769a
	add a,b			;769b
	add a,000h		;769c
	add a,080h		;769e
	rst 0			;76a0
	nop			;76a1
	rst 0			;76a2
l76a3h:
	add a,b			;76a3
	ld sp,hl		;76a4
	ld (bc),a		;76a5
	sub a			;76a6
	ret po			;76a7
	dec e			;76a8
	rst 38h			;76a9
	cp 002h			;76aa
	jp po,0ee01h		;76ac
	ex af,af'		;76af
	call nz,0c480h		;76b0
	ret nz			;76b3
	push bc			;76b4
	nop			;76b5
	push bc			;76b6
	add a,b			;76b7
	add a,000h		;76b8
	add a,080h		;76ba
	rst 0			;76bc
	nop			;76bd
	rst 0			;76be
	add a,b			;76bf
	push af			;76c0
	ld sp,hl		;76c1
	ld l,l			;76c2
	sub a			;76c3
	ei			;76c4
	inc bc			;76c5
	rst 30h			;76c6
	inc b			;76c7
	ld sp,hl		;76c8
	ld l,l			;76c9
	sub a			;76ca
	rst 30h			;76cb
	rlca			;76cc
	ld sp,hl		;76cd
	ld l,l			;76ce
	sub a			;76cf
	rst 30h			;76d0
	ld a,(bc)		;76d1
	ld sp,hl		;76d2
	ld l,l			;76d3
	sub a			;76d4
	rst 30h			;76d5
	inc c			;76d6
	ld sp,hl		;76d7
	ld l,l			;76d8
	sub a			;76d9
	rst 38h			;76da
	jp 0c300h		;76db
	jr nz,l76a3h		;76de
	ld h,b			;76e0
	jp 0c380h		;76e1
	ret nz			;76e4
	call nz,0c400h		;76e5
	ld b,b			;76e8
	call nz,0c480h		;76e9
	ret nz			;76ec
	push bc			;76ed
	nop			;76ee
	push bc			;76ef
	ld b,b			;76f0
	push bc			;76f1
	add a,b			;76f2
	push bc			;76f3
	ret nz			;76f4
	add a,000h		;76f5
	add a,040h		;76f7
	add a,080h		;76f9
	add a,0c0h		;76fb
	rst 0			;76fd
	nop			;76fe
	rst 0			;76ff
	ld b,b			;7700
	jp m,002e2h		;7701
	call nz,0c480h		;7704
	ret nz			;7707
	push bc			;7708
	nop			;7709
	push bc			;770a
	ld b,b			;770b
	push bc			;770c
	add a,b			;770d
	push bc			;770e
	ret nz			;770f
	add a,000h		;7710
	add a,040h		;7712
	add a,080h		;7714
	add a,0c0h		;7716
	rst 0			;7718
	nop			;7719
	rst 0			;771a
	ld b,b			;771b
	rst 0			;771c
	add a,b			;771d
	rst 0			;771e
	ret nz			;771f
	ret z			;7720
	nop			;7721
	ret z			;7722
	ld b,b			;7723
	ret z			;7724
	add a,b			;7725
	ret z			;7726
	ret nz			;7727
	ret			;7728
	nop			;7729
	ret			;772a
	ld b,b			;772b
	ret			;772c
	add a,b			;772d
	ret			;772e
	ret nz			;772f
l7730h:
	jp z,0ca00h		;7730
	ld b,b			;7733
	jp z,0ca80h		;7734
	ret nz			;7737
	rlc b			;7738
	bit 0,b			;773a
	res 0,b			;773c
l773eh:
	set 0,b			;773e
	call z,0cc00h		;7740
	ld b,b			;7743
	call z,0cc80h		;7744
	ret nz			;7747
	call 0cd00h		;7748
	ld b,b			;774b
	call 0cd80h		;774c
	ret nz			;774f
	adc a,000h		;7750
	adc a,040h		;7752
	adc a,080h		;7754
	adc a,0a0h		;7756
	adc a,0c0h		;7758
	adc a,0e0h		;775a
	rst 8			;775c
	nop			;775d
	rst 8			;775e
	jr nz,l7730h		;775f
	ld b,b			;7761
	xor a			;7762
	ld h,b			;7763
	adc a,a			;7764
	add a,b			;7765
	ld l,a			;7766
	and b			;7767
	ld c,a			;7768
	ret nz			;7769
	cpl			;776a
	ret p			;776b
	jp m,080c1h		;776c
	pop bc			;776f
	sub b			;7770
	pop bc			;7771
	or b			;7772
	pop bc			;7773
	ret nz			;7774
	pop bc			;7775
	ret po			;7776
	jp nz,0c200h		;7777
	jr nz,l773eh		;777a
	ld b,b			;777c
	jp nz,0c260h		;777d
	add a,b			;7780
	jp nz,0c2a0h		;7781
	ret nz			;7784
	jp nz,0c3e0h		;7785
	nop			;7788
	jp 0c320h		;7789
	ld b,b			;778c
	jp 0c360h		;778d
	add a,b			;7790
	jp 0faa0h		;7791
	cp 002h			;7794
	ret po			;7796
	ld bc,001e2h		;7797
	push af			;779a
	and c			;779b
	add a,b			;779c
	and l			;779d
	nop			;779e
	and (hl)		;779f
	nop			;77a0
	and l			;77a1
	nop			;77a2
	and (hl)		;77a3
	nop			;77a4
	and a			;77a5
	nop			;77a6
	xor b			;77a7
	nop			;77a8
	xor c			;77a9
	nop			;77aa
	xor d			;77ab
	nop			;77ac
	and c			;77ad
	or b			;77ae
	and e			;77af
	nop			;77b0
	and h			;77b1
	nop			;77b2
	and l			;77b3
	nop			;77b4
	and (hl)		;77b5
	nop			;77b6
	and a			;77b7
	nop			;77b8
	xor b			;77b9
	nop			;77ba
	xor c			;77bb
	nop			;77bc
	xor d			;77bd
	nop			;77be
	xor e			;77bf
	nop			;77c0
	xor h			;77c1
	nop			;77c2
	xor l			;77c3
	nop			;77c4
	xor (hl)		;77c5
	nop			;77c6
	xor a			;77c7
	nop			;77c8
	ei			;77c9
	ld (bc),a		;77ca
	and d			;77cb
	add a,b			;77cc
	and l			;77cd
	nop			;77ce
	and (hl)		;77cf
	nop			;77d0
	and a			;77d1
	nop			;77d2
	and l			;77d3
	nop			;77d4
	and h			;77d5
	nop			;77d6
	and (hl)		;77d7
	nop			;77d8
	and a			;77d9
	nop			;77da
	and c			;77db
	add a,b			;77dc
	and h			;77dd
	nop			;77de
	and l			;77df
	nop			;77e0
	and e			;77e1
	add a,b			;77e2
	and h			;77e3
	add a,b			;77e4
	and l			;77e5
	nop			;77e6
	sub h			;77e7
	ld b,b			;77e8
	add a,e			;77e9
	add a,b			;77ea
	ld sp,hl		;77eb
	ld c,(hl)		;77ec
	sbc a,d			;77ed
	rst 30h			;77ee
	ld (bc),a		;77ef
	ld sp,hl		;77f0
	ld c,(hl)		;77f1
	sbc a,d			;77f2
	rst 30h			;77f3
	inc b			;77f4
	ld sp,hl		;77f5
	ld c,(hl)		;77f6
	sbc a,d			;77f7
	rst 30h			;77f8
	ld b,0f9h		;77f9
	ld c,(hl)		;77fb
	sbc a,d			;77fc
	rst 30h			;77fd
	add hl,bc		;77fe
	ld sp,hl		;77ff
	ld c,(hl)		;7800
	sbc a,d			;7801
	rst 38h			;7802
	cp 002h			;7803
	jp po,0f501h		;7805
	and c			;7808
	add a,b			;7809
	and d			;780a
	add a,b			;780b
	and e			;780c
	nop			;780d
	and d			;780e
	add a,b			;780f
	and e			;7810
	nop			;7811
	and e			;7812
	add a,b			;7813
	and c			;7814
l7815h:
	or b			;7815
	and d			;7816
	add a,b			;7817
	and d			;7818
	nop			;7819
	and d			;781a
	add a,b			;781b
	and e			;781c
	nop			;781d
	and e			;781e
	add a,b			;781f
	and h			;7820
	nop			;7821
	and h			;7822
	add a,b			;7823
	and l			;7824
	nop			;7825
	and l			;7826
	add a,b			;7827
	and (hl)		;7828
	nop			;7829
	and (hl)		;782a
	add a,b			;782b
	and a			;782c
	nop			;782d
	and a			;782e
	add a,b			;782f
	ei			;7830
	ld (bc),a		;7831
	push af			;7832
	ld (hl),c		;7833
	add a,b			;7834
	ld (hl),d		;7835
	add a,b			;7836
	ld (hl),e		;7837
	nop			;7838
	ld (hl),e		;7839
	add a,b			;783a
	ld (hl),c		;783b
	or b			;783c
	ld (hl),c		;783d
	add a,b			;783e
	ld (hl),d		;783f
	nop			;7840
	ld (hl),d		;7841
	add a,b			;7842
	ld (hl),e		;7843
	nop			;7844
	ld (hl),e		;7845
	add a,b			;7846
	ei			;7847
	ld (bc),a		;7848
	ld h,c			;7849
	add a,b			;784a
	ld h,c			;784b
	and b			;784c
	ld h,c			;784d
	ret nz			;784e
	jp po,l6103h		;784f
	ret po			;7852
	ld h,d			;7853
	nop			;7854
	ld h,d			;7855
	jr nz,$+100		;7856
	ld b,b			;7858
	ld h,d			;7859
	ld h,b			;785a
	ld h,d			;785b
	add a,b			;785c
	ld h,d			;785d
	and b			;785e
	ld h,d			;785f
	ret nz			;7860
	ld h,d			;7861
	ret po			;7862
	ld h,e			;7863
	nop			;7864
	ld h,e			;7865
	jr nz,$+101		;7866
	ld b,b			;7868
	ld h,e			;7869
	ld h,b			;786a
	ld h,e			;786b
	add a,b			;786c
	ld h,e			;786d
	ret nz			;786e
	ld h,h			;786f
	nop			;7870
	ld h,h			;7871
	ld b,b			;7872
	ld h,h			;7873
	add a,b			;7874
	ld h,h			;7875
	ret nz			;7876
	ld h,l			;7877
	nop			;7878
	ld h,l			;7879
	ld b,b			;787a
	ld h,l			;787b
	add a,b			;787c
	ld h,l			;787d
	ret nz			;787e
	ld h,(hl)		;787f
	nop			;7880
	ld h,(hl)		;7881
	ld b,b			;7882
	ld h,(hl)		;7883
	add a,b			;7884
	ld h,(hl)		;7885
	ret nz			;7886
	ld h,a			;7887
	nop			;7888
	ld h,a			;7889
	ld b,b			;788a
	ld h,a			;788b
	add a,b			;788c
	ld h,a			;788d
	ret nz			;788e
	ld e,b			;788f
	nop			;7890
	ld c,b			;7891
	ld b,b			;7892
	jr c,l7815h		;7893
	jr z,$-62		;7895
	add hl,de		;7897
	nop			;7898
	ret po			;7899
	inc c			;789a
	rst 38h			;789b
	cp 002h			;789c
	push af			;789e
	ex (sp),hl		;789f
	ld bc,01fe4h		;78a0
	call nz,sub_6580h	;78a3
	nop			;78a6
	pop hl			;78a7
	ld bc,01de4h		;78a8
	add hl,bc		;78ab
	add hl,bc		;78ac
	call po,0071fh		;78ad
	dec b			;78b0
	ex (sp),hl		;78b1
	ld bc,080c4h		;78b2
	ld h,e			;78b5
	nop			;78b6
	pop hl			;78b7
	ld (bc),a		;78b8
	call po,0091bh		;78b9
	call po,0091ch		;78bc
	call po,0091dh		;78bf
	pop hl			;78c2
	ld bc,01ee4h		;78c3
	add hl,bc		;78c6
	ex af,af'		;78c7
	rlca			;78c8
	call po,0061fh		;78c9
	dec b			;78cc
	inc b			;78cd
	ei			;78ce
	ld (bc),a		;78cf
	push af			;78d0
	ex (sp),hl		;78d1
	ld bc,01fe4h		;78d2
	and h			;78d5
	add a,b			;78d6
	dec (hl)		;78d7
	nop			;78d8
	pop hl			;78d9
	ld bc,01de4h		;78da
	ld b,0e4h		;78dd
	rra			;78df
	inc bc			;78e0
	ex (sp),hl		;78e1
	ld bc,080a4h		;78e2
	inc sp			;78e5
	nop			;78e6
	pop hl			;78e7
	ld bc,01be4h		;78e8
	ld b,006h		;78eb
	call po,0051ch		;78ed
	dec b			;78f0
	ei			;78f1
	ld (bc),a		;78f2
	ex (sp),hl		;78f3
	ld bc,01fe4h		;78f4
	and h			;78f7
	add a,b			;78f8
	ld h,l			;78f9
	nop			;78fa
	pop hl			;78fb
	ld (bc),a		;78fc
	call po,0091dh		;78fd
	pop hl			;7900
	ld b,009h		;7901
l7903h:
	call po,0091eh		;7903
	add hl,bc		;7906
	pop hl			;7907
	rlca			;7908
	call po,0091fh		;7909
	add hl,bc		;790c
	add hl,bc		;790d
	add hl,bc		;790e
	add hl,bc		;790f
	ex af,af'		;7910
	rlca			;7911
	ld b,005h		;7912
	inc b			;7914
	inc bc			;7915
	ld (bc),a		;7916
	ld bc,0e000h		;7917
	inc bc			;791a
	rst 38h			;791b
	cp 002h			;791c
	ret m			;791e
	jr z,l7903h		;791f
	ld bc,0c1f5h		;7921
	add a,b			;7924
	push bc			;7925
	nop			;7926
	add a,000h		;7927
	push bc			;7929
	nop			;792a
	add a,000h		;792b
	rst 0			;792d
	nop			;792e
	ld sp,hl		;792f
	ret			;7930
	sbc a,d			;7931
	ret m			;7932
	ld e,d			;7933
	ei			;7934
	ld (bc),a		;7935
	or d			;7936
	add a,b			;7937
	or l			;7938
	nop			;7939
	or (hl)			;793a
	nop			;793b
	or a			;793c
	nop			;793d
	or l			;793e
	nop			;793f
	or h			;7940
	nop			;7941
	or (hl)			;7942
	nop			;7943
	or a			;7944
	nop			;7945
	ret m			;7946
	jr z,$-61		;7947
	add a,b			;7949
	call nz,0c500h		;794a
	nop			;794d
	jp 0c580h		;794e
	nop			;7951
	and h			;7952
	ld b,b			;7953
	add a,e			;7954
	add a,b			;7955
	ld sp,hl		;7956
	ld c,(hl)		;7957
	sbc a,d			;7958
	rst 30h			;7959
	ld (bc),a		;795a
	ld sp,hl		;795b
	ld c,(hl)		;795c
	sbc a,d			;795d
	rst 30h			;795e
	inc b			;795f
	ld sp,hl		;7960
	ld c,(hl)		;7961
	sbc a,d			;7962
	rst 30h			;7963
	ld b,0f9h		;7964
	ld c,(hl)		;7966
	sbc a,d			;7967
	rst 30h			;7968
	add hl,bc		;7969
	ld sp,hl		;796a
	ld c,(hl)		;796b
	sbc a,d			;796c
	ret po			;796d
	ex af,af'		;796e
	rst 38h			;796f
	cp 002h			;7970
	ret m			;7972
	inc c			;7973
	jp po,0f501h		;7974
	pop bc			;7977
	add a,b			;7978
	push bc			;7979
	nop			;797a
	add a,000h		;797b
	push bc			;797d
	nop			;797e
	add a,000h		;797f
	rst 0			;7981
	nop			;7982
	ld sp,hl		;7983
	ret			;7984
	sbc a,d			;7985
	ei			;7986
	ld (bc),a		;7987
	ld sp,hl		;7988
	and 09ah		;7989
	add a,000h		;798b
	call nz,0c580h		;798d
	add a,b			;7990
	push bc			;7991
	nop			;7992
	or h			;7993
	nop			;7994
	or l			;7995
	add a,b			;7996
	and h			;7997
	add a,b			;7998
	sub e			;7999
	nop			;799a
	add a,e			;799b
	add a,b			;799c
	ld sp,hl		;799d
	ld c,(hl)		;799e
	sbc a,d			;799f
	rst 30h			;79a0
	ld (bc),a		;79a1
	ld sp,hl		;79a2
	ld c,(hl)		;79a3
	sbc a,d			;79a4
	rst 30h			;79a5
	inc b			;79a6
	ld sp,hl		;79a7
	ld c,(hl)		;79a8
	sbc a,d			;79a9
	rst 30h			;79aa
	ld b,0f9h		;79ab
	ld c,(hl)		;79ad
	sbc a,d			;79ae
	rst 30h			;79af
	add hl,bc		;79b0
	ld sp,hl		;79b1
	ld c,(hl)		;79b2
	sbc a,d			;79b3
	ret po			;79b4
	ld (bc),a		;79b5
	rst 38h			;79b6
	cp 002h			;79b7
	ret m			;79b9
	ld h,b			;79ba
	jp po,0f501h		;79bb
	pop bc			;79be
	add a,b			;79bf
	push bc			;79c0
	nop			;79c1
	add a,000h		;79c2
	push bc			;79c4
	nop			;79c5
	add a,000h		;79c6
	rst 0			;79c8
	nop			;79c9
	ret z			;79ca
	nop			;79cb
	ret			;79cc
	nop			;79cd
	jp z,0f900h		;79ce
	ret			;79d1
	sbc a,d			;79d2
	ei			;79d3
	ld (bc),a		;79d4
	ld sp,hl		;79d5
	and 09ah		;79d6
	call nz,0c580h		;79d8
	nop			;79db
	or h			;79dc
	nop			;79dd
	and h			;79de
	add a,b			;79df
	sub e			;79e0
	nop			;79e1
	ld sp,hl		;79e2
	ld c,(hl)		;79e3
	sbc a,d			;79e4
	rst 30h			;79e5
	ld (bc),a		;79e6
	ld sp,hl		;79e7
	ld c,(hl)		;79e8
	sbc a,d			;79e9
	rst 30h			;79ea
	inc b			;79eb
	ld sp,hl		;79ec
	ld c,(hl)		;79ed
	sbc a,d			;79ee
	rst 30h			;79ef
	ld b,0f9h		;79f0
	ld c,(hl)		;79f2
	sbc a,d			;79f3
	rst 30h			;79f4
	add hl,bc		;79f5
	ld sp,hl		;79f6
	ld c,(hl)		;79f7
	sbc a,d			;79f8
	rst 38h			;79f9
	cp 002h			;79fa
	jp po,0f803h		;79fc
	ld h,b			;79ff
	jp nz,0c280h		;7a00
	and b			;7a03
	jp nz,0c3d0h		;7a04
	nop			;7a07
	jp 0c340h		;7a08
	add a,b			;7a0b
	jp 0c2c0h		;7a0c
	add a,b			;7a0f
	jp nz,0c2a0h		;7a10
	ret nc			;7a13
	jp 0c300h		;7a14
	ld b,b			;7a17
	jp 0c380h		;7a18
	ret nz			;7a1b
	call nz,0c400h		;7a1c
	ld b,b			;7a1f
	ld sp,hl		;7a20
	ld l,l			;7a21
	sbc a,d			;7a22
	rst 38h			;7a23
	cp 002h			;7a24
	jp po,0f803h		;7a26
	ld h,b			;7a29
	jp nz,0c2c0h		;7a2a
	ret po			;7a2d
	jp 0c320h		;7a2e
	ld b,b			;7a31
	jp 0c380h		;7a32
	ret nz			;7a35
	call nz,0c200h		;7a36
	ret nz			;7a39
	jp nz,0c3e0h		;7a3a
	jr nz,$-59		;7a3d
	ld b,b			;7a3f
	jp 0c380h		;7a40
	ret nz			;7a43
	call nz,0c400h		;7a44
	ld b,b			;7a47
	ld sp,hl		;7a48
	ld l,l			;7a49
	sbc a,d			;7a4a
	ret po			;7a4b
	inc bc			;7a4c
	rst 38h			;7a4d
	jp po,09401h		;7a4e
	nop			;7a51
	sub h			;7a52
	ld b,b			;7a53
	sub h			;7a54
	add a,b			;7a55
	sub h			;7a56
	ret nz			;7a57
	jp po,09502h		;7a58
	nop			;7a5b
	sub l			;7a5c
	ld b,b			;7a5d
	sub l			;7a5e
	add a,b			;7a5f
	sub l			;7a60
	ret nz			;7a61
	jp po,09603h		;7a62
	nop			;7a65
	sub (hl)		;7a66
	ld b,b			;7a67
	sub (hl)		;7a68
	add a,b			;7a69
	sub (hl)		;7a6a
	ret nz			;7a6b
	jp m,080c4h		;7a6c
	call nz,0c5c0h		;7a6f
	nop			;7a72
	push bc			;7a73
	ld b,b			;7a74
	push bc			;7a75
	add a,b			;7a76
	push bc			;7a77
	ret nz			;7a78
	add a,000h		;7a79
	add a,040h		;7a7b
	add a,080h		;7a7d
	add a,0c0h		;7a7f
	rst 0			;7a81
	nop			;7a82
	rst 0			;7a83
	ld b,b			;7a84
	rst 0			;7a85
	add a,b			;7a86
	rst 0			;7a87
	ret nz			;7a88
	ret z			;7a89
	nop			;7a8a
	ret z			;7a8b
	ld b,b			;7a8c
	ret z			;7a8d
	add a,b			;7a8e
	ret z			;7a8f
	ret nz			;7a90
	ret			;7a91
	nop			;7a92
	ret			;7a93
	ld b,b			;7a94
	ret			;7a95
	add a,b			;7a96
	ret			;7a97
	ret nz			;7a98
	jp z,0ca00h		;7a99
	ld b,b			;7a9c
	jp z,0ca80h		;7a9d
	ret nz			;7aa0
l7aa1h:
	rlc b			;7aa1
	bit 0,b			;7aa3
	res 0,b			;7aa5
	set 0,b			;7aa7
	call z,0bc00h		;7aa9
	ld b,b			;7aac
	xor h			;7aad
	add a,b			;7aae
	sbc a,h			;7aaf
	ret nz			;7ab0
	adc a,l			;7ab1
	nop			;7ab2
	ld a,l			;7ab3
	ld b,b			;7ab4
	ld l,l			;7ab5
	add a,b			;7ab6
	ld e,l			;7ab7
	ret nz			;7ab8
	ld c,(hl)		;7ab9
	nop			;7aba
	ld a,040h		;7abb
	ld l,080h		;7abd
	ld e,0a0h		;7abf
	ld c,0c0h		;7ac1
	ld c,0e0h		;7ac3
	rrca			;7ac5
	nop			;7ac6
	jp m,0c1ffh		;7ac7
	or b			;7aca
	jp 0c400h		;7acb
	nop			;7ace
	push bc			;7acf
	nop			;7ad0
	add a,000h		;7ad1
	rst 0			;7ad3
	nop			;7ad4
	ret z			;7ad5
	nop			;7ad6
	ret			;7ad7
	nop			;7ad8
	jp z,0cb00h		;7ad9
	nop			;7adc
	call z,0cd00h		;7add
	nop			;7ae0
	adc a,000h		;7ae1
	rst 8			;7ae3
	nop			;7ae4
	jp m,0000fh		;7ae5
	or d			;7ae8
	add a,b			;7ae9
	or l			;7aea
	nop			;7aeb
	or (hl)			;7aec
	nop			;7aed
	or a			;7aee
	nop			;7aef
	or l			;7af0
	nop			;7af1
	or h			;7af2
	nop			;7af3
	or (hl)			;7af4
	nop			;7af5
	jp nz,0c480h		;7af6
	nop			;7af9
	push bc			;7afa
	nop			;7afb
	jp 0fa80h		;7afc
	rst 38h			;7aff
	inc d			;7b00
	sbc a,e			;7b01
	dec de			;7b02
	sbc a,e			;7b03
	jr z,l7aa1h		;7b04
	dec a			;7b06
	sbc a,e			;7b07
	ld d,(hl)		;7b08
	sbc a,e			;7b09
	ld l,e			;7b0a
	sbc a,e			;7b0b
	add a,h			;7b0c
	sbc a,e			;7b0d
	sbc a,l			;7b0e
	sbc a,e			;7b0f
	cp b			;7b10
	sbc a,e			;7b11
	push de			;7b12
	sbc a,e			;7b13
	pop hl			;7b14
	ld bc,000e4h		;7b15
	rlca			;7b18
	dec b			;7b19
	rst 38h			;7b1a
	ex (sp),hl		;7b1b
	ld bc,000e4h		;7b1c
	adc a,d			;7b1f
	nop			;7b20
	pop hl			;7b21
	inc b			;7b22
	ld b,005h		;7b23
	inc b			;7b25
	inc bc			;7b26
	rst 38h			;7b27
	pop hl			;7b28
	ld bc,014e4h		;7b29
	rlca			;7b2c
	jp po,l71ffh+2		;7b2d
	nop			;7b30
	pop hl			;7b31
	ld (bc),a		;7b32
	call po,00310h		;7b33
	ld (bc),a		;7b36
	pop hl			;7b37
	ld bc,006e4h		;7b38
	ld (bc),a		;7b3b
	rst 38h			;7b3c
	jp po,0e501h		;7b3d
	ld a,(bc)		;7b40
	nop			;7b41
	ld b,d			;7b42
	pop bc			;7b43
	or b			;7b44
	ret pe			;7b45
	pop hl			;7b46
	ld bc,008e4h		;7b47
	ex af,af'		;7b4a
	rlca			;7b4b
	ld b,005h		;7b4c
	inc b			;7b4e
	inc bc			;7b4f
	ld (bc),a		;7b50
	ld (bc),a		;7b51
	ld bc,00001h		;7b52
	rst 38h			;7b55
	jp po,0e501h		;7b56
	ld a,(bc)		;7b59
	nop			;7b5a
	ld (hl),b		;7b5b
	nop			;7b5c
	nop			;7b5d
	ret pe			;7b5e
	pop hl			;7b5f
	ld bc,004e4h		;7b60
	rlca			;7b63
	ld b,005h		;7b64
	inc b			;7b66
	inc bc			;7b67
	ld (bc),a		;7b68
	ld bc,0e2ffh		;7b69
	ld bc,02aa1h		;7b6c
	sub c			;7b6f
	ld c,d			;7b70
	add a,c			;7b71
	ld d,l			;7b72
	ld (hl),c		;7b73
	ld h,b			;7b74
	ld h,c			;7b75
	ld l,d			;7b76
	ld d,c			;7b77
	ld (hl),l		;7b78
	ld b,c			;7b79
	add a,b			;7b7a
	ld sp,0218ah		;7b7b
	sub l			;7b7e
	ld de,001a0h		;7b7f
	or b			;7b82
	rst 38h			;7b83
	jp po,0b101h		;7b84
	ld e,d			;7b87
	sub c			;7b88
	add a,b			;7b89
	add a,c			;7b8a
	adc a,d			;7b8b
	ld (hl),c		;7b8c
	sub l			;7b8d
	ld h,c			;7b8e
	and b			;7b8f
	ld d,c			;7b90
	xor d			;7b91
	ld b,c			;7b92
	or l			;7b93
	ld sp,021c0h		;7b94
	jp z,0d511h		;7b97
	ld bc,0ffe0h		;7b9a
	jp po,0b101h		;7b9d
	sub l			;7ba0
	and c			;7ba1
	ret nz			;7ba2
	sub c			;7ba3
	jp z,0d5b1h		;7ba4
	ld (hl),c		;7ba7
	ret po			;7ba8
	ld h,c			;7ba9
	jp pe,0f551h		;7baa
	ld b,d			;7bad
	nop			;7bae
	ld (0220ah),a		;7baf
	dec d			;7bb2
	ld (de),a		;7bb3
	jr nz,l7bb8h		;7bb4
	jr nc,$+1		;7bb6
l7bb8h:
	jp po,0c101h		;7bb8
	ret po			;7bbb
	or d			;7bbc
	djnz $-92		;7bbd
	ld a,(de)		;7bbf
	sub d			;7bc0
	dec h			;7bc1
	add a,d			;7bc2
	jr nc,$+116		;7bc3
	ld a,(04562h)		;7bc5
	ld d,d			;7bc8
	ld d,b			;7bc9
	ld b,d			;7bca
	ld e,d			;7bcb
	ld (02265h),a		;7bcc
	ld (hl),b		;7bcf
	ld (de),a		;7bd0
	ld a,d			;7bd1
	ld (bc),a		;7bd2
	add a,l			;7bd3
	rst 38h			;7bd4
	jp po,0e501h		;7bd5
	ex af,af'		;7bd8
	ld bc,00000h		;7bd9
	ld bc,064e8h		;7bdc
	nop			;7bdf
	ld d,h			;7be0
	add a,b			;7be1
	ld b,l			;7be2
	nop			;7be3
	jp po,00503h		;7be4
	nop			;7be7
	jp po,00401h		;7be8
	nop			;7beb
	inc b			;7bec
	add a,b			;7bed
	dec b			;7bee
	nop			;7bef
	ld b,000h		;7bf0
	rst 38h			;7bf2
	dec bc			;7bf3
	sbc a,h			;7bf4
	ld de,0179ch		;7bf5
	sbc a,h			;7bf8
	dec hl			;7bf9
	sbc a,h			;7bfa
	ld c,d			;7bfb
	sbc a,h			;7bfc
	ld e,l			;7bfd
	sbc a,h			;7bfe
	ld (hl),b		;7bff
	sbc a,h			;7c00
	add a,l			;7c01
	sbc a,h			;7c02
	sbc a,d			;7c03
	sbc a,h			;7c04
	sbc a,d			;7c05
	sbc a,h			;7c06
	cp (hl)			;7c07
	sbc a,h			;7c08
	call c,0e19ch		;7c09
	ld bc,001e4h		;7c0c
	add hl,bc		;7c0f
	rst 38h			;7c10
	pop hl			;7c11
	ld bc,001e4h		;7c12
	rlca			;7c15
	rst 38h			;7c16
	pop hl			;7c17
	ld bc,005e4h		;7c18
	dec b			;7c1b
	call po,00702h		;7c1c
	call po,00800h		;7c1f
	pop hl			;7c22
	inc b			;7c23
	rlca			;7c24
	ld b,005h		;7c25
	inc b			;7c27
	inc bc			;7c28
	ld (bc),a		;7c29
	rst 38h			;7c2a
	ex (sp),hl		;7c2b
	ld bc,005e4h		;7c2c
	ld (hl),b		;7c2f
	dec c			;7c30
	call po,08002h		;7c31
	dec bc			;7c34
	call po,09000h		;7c35
	add hl,bc		;7c38
	ex (sp),hl		;7c39
	inc b			;7c3a
	add a,b			;7c3b
	dec bc			;7c3c
	ld (hl),b		;7c3d
	dec bc			;7c3e
	ld h,b			;7c3f
	dec bc			;7c40
	ld d,b			;7c41
	dec bc			;7c42
	ld b,b			;7c43
	dec bc			;7c44
	jr nc,l7c52h		;7c45
	jr nz,l7c54h		;7c47
	rst 38h			;7c49
	pop hl			;7c4a
	ld bc,014e4h		;7c4b
	dec b			;7c4e
	jp po,05201h		;7c4f
l7c52h:
	nop			;7c52
	pop hl			;7c53
l7c54h:
	ld bc,010e4h		;7c54
	inc b			;7c57
	inc bc			;7c58
	call po,00206h		;7c59
	rst 38h			;7c5c
	pop hl			;7c5d
	ld bc,014e4h		;7c5e
	ld b,0e2h		;7c61
	ld bc,00062h		;7c63
	pop hl			;7c66
	ld bc,010e4h		;7c67
	dec b			;7c6a
l7c6bh:
	inc b			;7c6b
	call po,00206h		;7c6c
	rst 38h			;7c6f
	jp po,l71ffh+2		;7c70
	jr nc,$-29		;7c73
	ld (bc),a		;7c75
	call po,00705h		;7c76
	pop hl			;7c79
	ld (bc),a		;7c7a
	call po,00706h		;7c7b
	call po,00508h		;7c7e
	call po,00404h		;7c81
	rst 38h			;7c84
	jp po,08201h		;7c85
	jr nc,l7c6bh		;7c88
	ld (bc),a		;7c8a
	call po,00805h		;7c8b
	pop hl			;7c8e
	ld (bc),a		;7c8f
	call po,00806h		;7c90
	call po,00608h		;7c93
	call po,00504h		;7c96
	rst 38h			;7c99
	jp po,0e501h		;7c9a
	ld a,(bc)		;7c9d
	nop			;7c9e
	ld (de),a		;7c9f
	call nz,0e800h		;7ca0
	pop hl			;7ca3
	ld bc,008e4h		;7ca4
	add hl,bc		;7ca7
	ex af,af'		;7ca8
	rlca			;7ca9
	ld b,005h		;7caa
	call po,0e10ah		;7cac
	ld (bc),a		;7caf
	ld b,005h		;7cb0
	inc b			;7cb2
	inc bc			;7cb3
	ld (bc),a		;7cb4
	ld bc,0e100h		;7cb5
	ld b,0e4h		;7cb8
	dec bc			;7cba
	ld bc,0ff00h		;7cbb
	jp po,0e501h		;7cbe
	ex af,af'		;7cc1
	ld bc,00000h		;7cc2
	ld bc,064e8h		;7cc5
	nop			;7cc8
	ld d,h			;7cc9
	add a,b			;7cca
	ld b,l			;7ccb
	nop			;7ccc
	jp po,00503h		;7ccd
	nop			;7cd0
	jp po,00401h		;7cd1
	nop			;7cd4
	inc b			;7cd5
	add a,b			;7cd6
	dec b			;7cd7
	nop			;7cd8
	ld b,000h		;7cd9
	rst 38h			;7cdb
	pop hl			;7cdc
	ld bc,008e4h		;7cdd
	dec b			;7ce0
	call po,00807h		;7ce1
	call po,00706h		;7ce4
	call po,00805h		;7ce7
	call po,00804h		;7cea
	call po,00804h		;7ced
	call po,00803h		;7cf0
	call po,00802h		;7cf3
	pop hl			;7cf6
	ld bc,001e4h		;7cf7
	rlca			;7cfa
	ld b,005h		;7cfb
	inc b			;7cfd
	inc bc			;7cfe
	ld (bc),a		;7cff
	rst 38h			;7d00
	cp 001h			;7d01
	jp (hl)			;7d03
	inc b			;7d04
	xor 003h		;7d05
	ex de,hl		;7d07
	add hl,bc		;7d08
	djnz $-20		;7d09
	ex af,af'		;7d0b
	push af			;7d0c
	push bc			;7d0d
	pop de			;7d0e
	ld hl,09151h		;7d0f
	ld hl,09151h		;7d12
	ret nc			;7d15
	ld bc,091d1h		;7d16
	ld d,c			;7d19
	or c			;7d1a
	ld (hl),c		;7d1b
	ei			;7d1c
	rlca			;7d1d
	cp 004h			;7d1e
	ret nc			;7d20
	sub c			;7d21
	sub c			;7d22
	cp 010h			;7d23
	sub c			;7d25
	cp 004h			;7d26
	sub c			;7d28
	sub c			;7d29
	cp 010h			;7d2a
	sub c			;7d2c
	cp 004h			;7d2d
	sub c			;7d2f
	cp 010h			;7d30
	sub c			;7d32
	cp 004h			;7d33
l7d35h:
	jr nc,l7d37h		;7d35
l7d37h:
	jr nc,l7d69h		;7d37
	jr nc,l7d3bh		;7d39
l7d3bh:
	cp 010h			;7d3b
	sub c			;7d3d
	sub c			;7d3e
	sub c			;7d3f
	cp 004h			;7d40
	ret nc			;7d42
	jp (hl)			;7d43
	inc b			;7d44
	push af			;7d45
	sub c			;7d46
	ld bc,00191h		;7d47
	ld sp,010feh		;7d4a
	sub c			;7d4d
	sub c			;7d4e
	cp 004h			;7d4f
	ei			;7d51
	ex af,af'		;7d52
	cp 004h			;7d53
	ret nc			;7d55
	jp (hl)			;7d56
	inc b			;7d57
	push af			;7d58
	sub c			;7d59
	ld bc,00131h		;7d5a
	sub c			;7d5d
	ld bc,00131h		;7d5e
	sub c			;7d61
	ld bc,00131h		;7d62
	ld sp,0fb31h		;7d65
	ld (bc),a		;7d68
l7d69h:
	sub c			;7d69
	ld bc,00131h		;7d6a
	sub c			;7d6d
	ld bc,00131h		;7d6e
	sub c			;7d71
	ld bc,01131h		;7d72
	sub c			;7d75
	jr nc,l7da8h		;7d76
	cp 010h			;7d78
	sub e			;7d7a
	cp 004h			;7d7b
	ret nc			;7d7d
	jp (hl)			;7d7e
	inc b			;7d7f
	push af			;7d80
	sub c			;7d81
	ld bc,00131h		;7d82
	sub c			;7d85
	ld bc,00131h		;7d86
	sub c			;7d89
	ld bc,00131h		;7d8a
	ld sp,0fb31h		;7d8d
	ld (bc),a		;7d90
	sub c			;7d91
	ld bc,00131h		;7d92
	sub c			;7d95
	ld bc,00131h		;7d96
	sub c			;7d99
	ld bc,01131h		;7d9a
	ld sp,0fe11h		;7d9d
	djnz l7d35h		;7da0
	cp 004h			;7da2
	ret nc			;7da4
	jp (hl)			;7da5
	inc b			;7da6
	sub c			;7da7
l7da8h:
	ld bc,00131h		;7da8
	sub c			;7dab
l7dach:
	ld bc,00131h		;7dac
	sub c			;7daf
	ld bc,00131h		;7db0
	sub c			;7db3
	cp 010h			;7db4
	nop			;7db6
	nop			;7db7
l7db8h:
	sub e			;7db8
	cp 004h			;7db9
	sub b			;7dbb
	nop			;7dbc
	ld de,09031h		;7dbd
	nop			;7dc0
	ld de,09031h		;7dc1
	nop			;7dc4
	ld de,09031h		;7dc5
	nop			;7dc8
	ld de,00090h		;7dc9
	ld de,0fe31h		;7dcc
	djnz $-107		;7dcf
	push af			;7dd1
	cp 004h			;7dd2
	sub c			;7dd4
	sub c			;7dd5
	ld bc,00191h		;7dd6
	ld bc,010feh		;7dd9
	sub e			;7ddc
	ei			;7ddd
	inc bc			;7dde
	cp 004h			;7ddf
	ld sp,03131h		;7de1
	ld sp,010feh		;7de4
	sub c			;7de7
	sub c			;7de8
	sub c			;7de9
	sub c			;7dea
	cp 004h			;7deb
	ret nc			;7ded
	jp (hl)			;7dee
	inc b			;7def
	sub c			;7df0
	ld bc,00131h		;7df1
	sub c			;7df4
	ld bc,00131h		;7df5
	sub c			;7df8
	ld bc,00131h		;7df9
	sub c			;7dfc
	ld bc,010feh		;7dfd
	sub e			;7e00
	cp 004h			;7e01
	sub b			;7e03
	nop			;7e04
	ld de,09031h		;7e05
	nop			;7e08
	ld de,09031h		;7e09
	nop			;7e0c
	ld de,09031h		;7e0d
	nop			;7e10
	ld de,00090h		;7e11
	ld de,0fe31h		;7e14
	djnz l7dach		;7e17
	push af			;7e19
	cp 004h			;7e1a
	sub c			;7e1c
	ld bc,09101h		;7e1d
	ld bc,0fe01h		;7e20
	djnz l7db8h		;7e23
	ei			;7e25
	inc bc			;7e26
	cp 004h			;7e27
	ld sp,03131h		;7e29
	ld sp,010feh		;7e2c
	sub c			;7e2f
	sub c			;7e30
	sub c			;7e31
	sub c			;7e32
	defb 0fdh,040h,09dh ;illegal sequence	;7e33
	cp 001h			;7e36
	jp (hl)			;7e38
	inc b			;7e39
	xor 002h		;7e3a
	ex de,hl		;7e3c
	add hl,bc		;7e3d
	djnz $-20		;7e3e
	add hl,bc		;7e40
	push af			;7e41
	pop bc			;7e42
	pop de			;7e43
	ld hl,09151h		;7e44
	ld hl,09151h		;7e47
	ret nc			;7e4a
	ld bc,091d1h		;7e4b
	ld d,c			;7e4e
	or c			;7e4f
	ld (hl),c		;7e50
	ld b,c			;7e51
	ld (hl),c		;7e52
	ei			;7e53
	ex af,af'		;7e54
	cp 001h			;7e55
	jp (hl)			;7e57
	inc b			;7e58
	pop bc			;7e59
	ex de,hl		;7e5a
	ld (de),a		;7e5b
	ld (00beah),hl		;7e5c
	in a,(001h)		;7e5f
	jp p,0f110h		;7e61
	ld b,l			;7e64
	push af			;7e65
	jp nc,09193h		;7e66
	pop de			;7e69
	ld bc,0d201h		;7e6a
	or c			;7e6d
	or c			;7e6e
	ei			;7e6f
	rlca			;7e70
	jp p,0f106h		;7e71
	scf			;7e74
	jp nc,0f295h		;7e75
	djnz $-13		;7e78
	ld b,l			;7e7a
	pop de			;7e7b
	ld bc,0d201h		;7e7c
	or c			;7e7f
	cp 001h			;7e80
	jp (hl)			;7e82
	inc b			;7e83
	pop bc			;7e84
	ex de,hl		;7e85
	ld (bc),a		;7e86
	jr nc,$-20		;7e87
	ld a,(bc)		;7e89
	in a,(004h)		;7e8a
	jp p,0f105h		;7e8c
	ld b,d			;7e8f
	jp nc,0d373h		;7e90
	ld (hl),e		;7e93
	sub e			;7e94
	jp nc,05391h		;7e95
	out (053h),a		;7e98
	ld (hl),e		;7e9a
	jp nc,04371h		;7e9b
	out (043h),a		;7e9e
	ld d,e			;7ea0
	jp nc,02351h		;7ea1
	out (023h),a		;7ea4
	ld b,e			;7ea6
	jp nc,0d340h		;7ea7
	sub b			;7eaa
	and (hl)		;7eab
	sub b			;7eac
	or h			;7ead
	or b			;7eae
	jp nc,03002h		;7eaf
	ld b,d			;7eb2
	ld h,b			;7eb3
	ld (hl),a		;7eb4
	call c,001feh		;7eb5
	jp (hl)			;7eb8
	inc b			;7eb9
	pop bc			;7eba
	ex de,hl		;7ebb
	ld (bc),a		;7ebc
	jr nc,$-20		;7ebd
	ld a,(bc)		;7ebf
	in a,(004h)		;7ec0
	jp p,0f10dh		;7ec2
	ld b,l			;7ec5
	jp nc,0d373h		;7ec6
	ld (hl),e		;7ec9
	sub e			;7eca
	jp nc,05391h		;7ecb
	out (053h),a		;7ece
	ld (hl),e		;7ed0
	jp nc,04371h		;7ed1
	out (043h),a		;7ed4
	ld d,e			;7ed6
	jp nc,02351h		;7ed7
	out (023h),a		;7eda
	ld b,e			;7edc
	jp nc,0d340h		;7edd
	sub b			;7ee0
	and (hl)		;7ee1
	jp nc,02610h		;7ee2
	out (001h),a		;7ee5
	ld b,c			;7ee7
	ld (hl),c		;7ee8
	jp nc,04101h		;7ee9
	ld (hl),c		;7eec
	pop de			;7eed
	ld bc,0dc40h		;7eee
	cp 001h			;7ef1
	jp (hl)			;7ef3
	inc b			;7ef4
	pop bc			;7ef5
	ex de,hl		;7ef6
	ld (bc),a		;7ef7
	jr nz,$-20		;7ef8
	ld a,(bc)		;7efa
	jp p,0f110h		;7efb
	ld b,h			;7efe
	sub 002h		;7eff
	ld (bc),a		;7f01
	jp (hl)			;7f02
	ld (bc),a		;7f03
	jp nc,04030h		;7f04
	jp (hl)			;7f07
	inc b			;7f08
	ld d,b			;7f09
	ld b,c			;7f0a
	ld hl,02101h		;7f0b
	out (0a3h),a		;7f0e
	jp nc,04355h		;7f10
	ld d,e			;7f13
	ld (hl),e		;7f14
	jp (hl)			;7f15
	ld (bc),a		;7f16
	ld (hl),b		;7f17
	add a,b			;7f18
	jp (hl)			;7f19
	inc b			;7f1a
	sub b			;7f1b
	ld (hl),c		;7f1c
	ld d,c			;7f1d
	ld b,c			;7f1e
	ld d,c			;7f1f
	ld hl,0919bh		;7f20
	pop de			;7f23
	dec b			;7f24
	call c,0f5d8h		;7f25
	ret nc			;7f28
	nop			;7f29
	pop de			;7f2a
	ld d,b			;7f2b
	jr nz,$+82		;7f2c
	ei			;7f2e
	inc b			;7f2f
	push af			;7f30
	pop de			;7f31
	or b			;7f32
	ld d,b			;7f33
	jr nz,l7f86h		;7f34
	ei			;7f36
	inc b			;7f37
	push af			;7f38
	pop de			;7f39
	and b			;7f3a
	ld d,b			;7f3b
l7f3ch:
	jr nz,l7f8eh		;7f3c
	ei			;7f3e
	inc b			;7f3f
	push af			;7f40
	sub b			;7f41
	ld d,b			;7f42
	jr nz,$+82		;7f43
	ei			;7f45
	inc bc			;7f46
	sub b			;7f47
	ld d,b			;7f48
	cp 001h			;7f49
	jp (hl)			;7f4b
	inc b			;7f4c
	pop bc			;7f4d
	ex de,hl		;7f4e
	ld (bc),a		;7f4f
	jr nz,l7f3ch		;7f50
	ld a,(bc)		;7f52
	jp p,0f110h		;7f53
	ld b,h			;7f56
	sub 001h		;7f57
	ld bc,002e9h		;7f59
	pop de			;7f5c
	jr nc,l7f9fh		;7f5d
	jp (hl)			;7f5f
	inc b			;7f60
	ld d,b			;7f61
	ld b,c			;7f62
	ld hl,02101h		;7f63
	jp nc,0d1a3h		;7f66
	ld d,l			;7f69
	ld b,e			;7f6a
	ld d,e			;7f6b
	ld (hl),e		;7f6c
	jp (hl)			;7f6d
	ld (bc),a		;7f6e
	ld (hl),b		;7f6f
	add a,b			;7f70
	jp (hl)			;7f71
	inc b			;7f72
	sub b			;7f73
	ld (hl),c		;7f74
	ld d,c			;7f75
	ld b,c			;7f76
	ld d,c			;7f77
	ld hl,0919bh		;7f78
	ret nc			;7f7b
	dec b			;7f7c
	call c,0f5d8h		;7f7d
	ret nc			;7f80
	nop			;7f81
	pop de			;7f82
	ld d,b			;7f83
	jr nz,l7fd6h		;7f84
l7f86h:
	ei			;7f86
	inc b			;7f87
	push af			;7f88
	pop de			;7f89
	or b			;7f8a
	ld d,b			;7f8b
	jr nz,l7fdeh		;7f8c
l7f8eh:
	ei			;7f8e
	inc b			;7f8f
	push af			;7f90
	pop de			;7f91
	and b			;7f92
	ld d,b			;7f93
	jr nz,$+82		;7f94
	ei			;7f96
	inc b			;7f97
	push af			;7f98
	sub b			;7f99
	ld d,b			;7f9a
	jr nz,$+82		;7f9b
	ei			;7f9d
	inc bc			;7f9e
l7f9fh:
	sub b			;7f9f
	ld d,b			;7fa0
	defb 0fdh,055h ;ld d,iyl	;7fa1
	sbc a,(hl)		;7fa3
	cp 001h			;7fa4
	ret m			;7fa6
	ld d,h			;7fa7
	jp (hl)			;7fa8
	inc b			;7fa9
	defb 0ddh,024h ;inc ixh	;7faa
	ld h,l			;7fac
	jp pe,0db0ch		;7fad
	ld bc,0d2f5h		;7fb0
	inc hl			;7fb3
	sub e			;7fb4
	ld d,e			;7fb5
	pop de			;7fb6
	inc bc			;7fb7
	jp nc,07353h		;7fb8
	ld (hl),e		;7fbb
	ei			;7fbc
	ex af,af'		;7fbd
	cp 001h			;7fbe
	ret m			;7fc0
	add a,c			;7fc1
	jp nz,008e9h		;7fc2
	call pe,00aeah		;7fc5
	push de			;7fc8
	dec l			;7fc9
	call nc,0d52dh		;7fca
	dec l			;7fcd
	call nc,080f8h		;7fce
	pop bc			;7fd1
	inc l			;7fd2
	ret m			;7fd3
	jr z,$-21		;7fd4
l7fd6h:
	inc b			;7fd6
	ex de,hl		;7fd7
	ld (0d470h),hl		;7fd8
	ld bc,001feh		;7fdb
l7fdeh:
	ret m			;7fde
	ld h,h			;7fdf
	jp (hl)			;7fe0
	inc b			;7fe1
	ex de,hl		;7fe2
	add hl,bc		;7fe3
	ld b,b			;7fe4
	in a,(003h)		;7fe5
	jp pe,0f50fh		;7fe7
	push de			;7fea
	ld hl,021d4h		;7feb
	push de			;7fee
	ld hl,0d421h		;7fef
	ld hl,021d5h		;7ff2
	ld hl,021d4h		;7ff5
	push de			;7ff8
	ld hl,0d421h		;7ff9
	ld hl,021d5h		;7ffc
	push de			;7fff

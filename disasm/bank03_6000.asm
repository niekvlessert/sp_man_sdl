; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank03_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank03.bin

	org 06000h

l6000h:
	inc bc			;6000
	jr nc,l6018h		;6001
l6003h:
	ld c,l			;6003
	dec b			;6004
	inc b			;6005
	jr nc,l601dh		;6006
	ld c,l			;6008
sub_6009h:
	dec b			;6009
	ld a,(bc)		;600a
	jr nc,l6026h		;600b
	ld c,d			;600d
	dec b			;600e
	ld b,030h		;600f
	dec de			;6011
	ld c,d			;6012
	dec b			;6013
	djnz l6046h		;6014
	dec e			;6016
	ld c,d			;6017
l6018h:
	dec b			;6018
	ld c,030h		;6019
	jr nz,l6067h		;601b
l601dh:
	dec b			;601d
	inc bc			;601e
	jr nc,$+35		;601f
	ld c,d			;6021
	dec b			;6022
	ex af,af'		;6023
	jr nc,$+36		;6024
l6026h:
	ld c,d			;6026
	dec b			;6027
	inc bc			;6028
	jr nc,l604fh		;6029
	ld c,d			;602b
	dec b			;602c
	ld (de),a		;602d
	jr nc,l6056h		;602e
	ld c,d			;6030
	dec b			;6031
	ld (de),a		;6032
	jr nc,l605bh		;6033
	ld c,d			;6035
	dec b			;6036
	inc bc			;6037
	jr nc,l6062h		;6038
	ld c,d			;603a
	dec b			;603b
	inc bc			;603c
	jr nc,l6067h		;603d
	ld c,l			;603f
	dec b			;6040
	ld c,030h		;6041
	jr z,$+79		;6043
	dec b			;6045
l6046h:
	add hl,bc		;6046
	jr nc,$+42		;6047
	ld c,l			;6049
	dec b			;604a
	inc b			;604b
	jr nc,l607eh		;604c
	ld c,d			;604e
l604fh:
	dec b			;604f
	inc bc			;6050
	or b			;6051
	jr nc,l609eh		;6052
	dec b			;6054
	ld (de),a		;6055
l6056h:
	jr nc,l608ah		;6056
	xor d			;6058
	dec b			;6059
	ex af,af'		;605a
l605bh:
	or b			;605b
	ld (0054ah),a		;605c
	inc c			;605f
	jr nc,$+54		;6060
l6062h:
	ld c,d			;6062
	dec b			;6063
	inc bc			;6064
	jr nc,l609dh		;6065
l6067h:
	ld c,d			;6067
	dec b			;6068
	inc bc			;6069
	jr nc,l60a4h		;606a
	ld c,d			;606c
	dec b			;606d
	inc bc			;606e
	or b			;606f
	jr c,l60bch		;6070
	dec b			;6072
	ld (de),a		;6073
l6074h:
	jr nc,l60b1h		;6074
	ld c,l			;6076
	dec b			;6077
	ex af,af'		;6078
	jr nc,l60b6h		;6079
	ld c,l			;607b
	dec b			;607c
	dec c			;607d
l607eh:
	jr nc,l60c0h		;607e
	ld d,c			;6080
	adc a,(hl)		;6081
	ld b,009h		;6082
	rra			;6084
	inc bc			;6085
	ld (bc),a		;6086
	ex af,af'		;6087
	inc b			;6088
	ld b,h			;6089
l608ah:
	ld (de),a		;608a
	djnz l60bdh		;608b
	ld b,b			;608d
	ld c,d			;608e
l608fh:
	dec b			;608f
	inc bc			;6090
	jr nc,$+74		;6091
	ld c,d			;6093
	dec b			;6094
	djnz l60c7h		;6095
	ld c,b			;6097
	ld c,d			;6098
	dec b			;6099
	inc bc			;609a
	jr nc,l60e5h		;609b
l609dh:
	ld c,d			;609d
l609eh:
	dec b			;609e
	ld (de),a		;609f
	jr nc,l60f0h		;60a0
	ld c,d			;60a2
	dec b			;60a3
l60a4h:
	ld (de),a		;60a4
	jr nc,l60f7h		;60a5
l60a7h:
	ld c,l			;60a7
	dec b			;60a8
	inc b			;60a9
	jr nc,l60fch		;60aa
	ld c,l			;60ac
	dec b			;60ad
	ld a,(bc)		;60ae
	jr nc,$+87		;60af
l60b1h:
	ld c,d			;60b1
l60b2h:
	dec b			;60b2
	ld b,030h		;60b3
	ld d,(hl)		;60b5
l60b6h:
	ld c,d			;60b6
	dec b			;60b7
l60b8h:
	add hl,bc		;60b8
	jr nc,$+96		;60b9
	ld c,d			;60bb
l60bch:
	dec b			;60bc
l60bdh:
	inc bc			;60bd
	jr nc,l611eh		;60be
l60c0h:
	jp z,00905h		;60c0
l60c3h:
	jr nc,$+98		;60c3
	ld c,l			;60c5
	dec b			;60c6
l60c7h:
	ex af,af'		;60c7
	jr nc,l612ah		;60c8
l60cah:
	ld d,c			;60ca
	adc a,(hl)		;60cb
	ld b,010h		;60cc
	nop			;60ce
	inc bc			;60cf
	ld (bc),a		;60d0
	ex af,af'		;60d1
	inc b			;60d2
	ld b,h			;60d3
	ld b,010h		;60d4
	jr nc,l6148h		;60d6
	ld d,c			;60d8
	adc a,(hl)		;60d9
	ld b,00dh		;60da
	rra			;60dc
	inc bc			;60dd
	ld (bc),a		;60de
	ex af,af'		;60df
l60e0h:
	inc b			;60e0
	ld b,h			;60e1
	ld (de),a		;60e2
	djnz l6115h		;60e3
l60e5h:
	ld (hl),b		;60e5
	ld d,c			;60e6
	adc a,(hl)		;60e7
	ld b,00dh		;60e8
	rra			;60ea
	inc bc			;60eb
	ld (bc),a		;60ec
	ex af,af'		;60ed
	inc b			;60ee
	ld b,h			;60ef
l60f0h:
	ld b,00ah		;60f0
	jr nc,l6074h		;60f2
	ld e,a			;60f4
l60f5h:
	ld b,001h		;60f5
l60f7h:
	inc b			;60f7
	jr nc,$-126		;60f8
	ld c,005h		;60fa
l60fch:
	inc bc			;60fc
	jr nc,l608fh		;60fd
	ld c,005h		;60ff
	dec c			;6101
	jr nc,l60a7h		;6102
	ld (hl),e		;6104
	ld b,00ah		;6105
l6107h:
	rra			;6107
	jr nc,l60b2h		;6108
	ld (hl),e		;610a
	ld b,090h		;610b
	rra			;610d
	jr nc,l60b8h		;610e
	ld c,005h		;6110
	inc bc			;6112
	jr nc,l60c3h		;6113
l6115h:
	rla			;6115
	dec b			;6116
	inc c			;6117
	jr nc,l60cah		;6118
	ld d,c			;611a
	adc a,(hl)		;611b
	ld b,009h		;611c
l611eh:
	rra			;611e
	inc bc			;611f
	ld (bc),a		;6120
	ex af,af'		;6121
	inc b			;6122
	ld b,h			;6123
l6124h:
	ld b,009h		;6124
	jr nc,l60e0h		;6126
	ld c,005h		;6128
l612ah:
	dec c			;612a
	jr nc,l60f5h		;612b
	ld d,c			;612d
	adc a,(hl)		;612e
	ld b,006h		;612f
	rra			;6131
	inc bc			;6132
	ld (bc),a		;6133
	ex af,af'		;6134
	inc b			;6135
	ld b,h			;6136
l6137h:
	ld b,008h		;6137
	jr nc,l6107h		;6139
	ld c,l			;613b
	dec b			;613c
l613dh:
	ld b,030h		;613d
	rst 8			;613f
	ld c,l			;6140
	dec b			;6141
	ld (bc),a		;6142
	jr nc,$-47		;6143
	ld c,l			;6145
	dec b			;6146
	ld a,(bc)		;6147
l6148h:
	jr nc,l611eh		;6148
	ld (hl),e		;614a
	ld b,083h		;614b
	rra			;614d
	jr nc,l6124h		;614e
	ld (hl),e		;6150
	ld b,00ch		;6151
	rra			;6153
	jr nc,l6137h		;6154
	ld (hl),e		;6156
	ld b,08bh		;6157
	rra			;6159
	jr nc,l613dh		;615a
	ld (hl),e		;615c
	ld b,005h		;615d
	rra			;615f
	jr nc,$-28		;6160
	ld d,c			;6162
	adc a,(hl)		;6163
	ld b,006h		;6164
	rra			;6166
	inc bc			;6167
	ld (bc),a		;6168
	ex af,af'		;6169
	inc b			;616a
	ld b,h			;616b
	djnz l6182h		;616c
l616eh:
	jr nc,$-28		;616e
	ld d,c			;6170
	adc a,(hl)		;6171
	ld b,012h		;6172
	rra			;6174
	inc bc			;6175
l6176h:
	ld (bc),a		;6176
	ex af,af'		;6177
	inc b			;6178
	ld b,h			;6179
	ld b,014h		;617a
	jr nc,$-27		;617c
l617eh:
	ld (hl),e		;617e
	ld b,005h		;617f
	rra			;6181
l6182h:
	jr nc,l616eh		;6182
	rla			;6184
	dec b			;6185
	ex af,af'		;6186
	jr nc,l6176h		;6187
	ld c,005h		;6189
	inc bc			;618b
	jr nc,l617eh		;618c
	ld d,c			;618e
	adc a,(hl)		;618f
	ld b,000h		;6190
	ld a,(de)		;6192
	inc bc			;6193
	ld (bc),a		;6194
	ex af,af'		;6195
	inc b			;6196
	ld b,h			;6197
	ld de,03008h		;6198
	ret m			;619b
	ld d,c			;619c
	adc a,(hl)		;619d
	ld b,013h		;619e
	rra			;61a0
	inc bc			;61a1
	ld (bc),a		;61a2
	ex af,af'		;61a3
	inc b			;61a4
	ld b,h			;61a5
	ld de,03008h		;61a6
	ret m			;61a9
	ld d,c			;61aa
	adc a,(hl)		;61ab
	ld b,010h		;61ac
	nop			;61ae
	inc bc			;61af
	ld (bc),a		;61b0
	ex af,af'		;61b1
	inc b			;61b2
	ld b,h			;61b3
l61b4h:
	ld b,00eh		;61b4
	jr nc,l61b4h		;61b6
	ld (hl),e		;61b8
	ld b,00ah		;61b9
	rra			;61bb
	jr nc,$-2		;61bc
	ld (hl),e		;61be
	ld b,090h		;61bf
	rra			;61c1
l61c2h:
	jr nc,l61c2h		;61c2
	ld c,005h		;61c4
	inc bc			;61c6
	ld sp,01702h		;61c7
	dec b			;61ca
	dec c			;61cb
	ld sp,00e05h		;61cc
	dec b			;61cf
	dec c			;61d0
	ld sp,05110h		;61d1
	adc a,(hl)		;61d4
	ld b,000h		;61d5
	ld (de),a		;61d7
	inc bc			;61d8
	ld (bc),a		;61d9
	ex af,af'		;61da
	inc b			;61db
	ld b,h			;61dc
	inc c			;61dd
	ld a,(bc)		;61de
	ld sp,l7312h		;61df
	ld b,083h		;61e2
	rra			;61e4
	ld sp,l7312h+2		;61e5
	ld b,083h		;61e8
	rra			;61ea
	ld sp,00e16h		;61eb
	dec b			;61ee
	inc bc			;61ef
	ld sp,l7318h		;61f0
	ld b,00eh		;61f3
	rra			;61f5
	ld sp,0731ah		;61f6
	ld b,00eh		;61f9
	rra			;61fb
	ld sp,04a24h		;61fc
	dec b			;61ff
	inc bc			;6200
	ld sp,04a2ch		;6201
	dec b			;6204
	ex af,af'		;6205
	ld sp,05f30h		;6206
	ld b,001h		;6209
	nop			;620b
	ld sp,04a31h		;620c
	dec b			;620f
	inc bc			;6210
	ld sp,04a35h		;6211
	dec b			;6214
	inc bc			;6215
	ld sp,05140h		;6216
	adc a,(hl)		;6219
	ld b,01ah		;621a
	rra			;621c
	inc bc			;621d
	ld (bc),a		;621e
	ex af,af'		;621f
	inc b			;6220
	ld b,h			;6221
	ld (de),a		;6222
	djnz $+51		;6223
	ld c,b			;6225
	ld d,c			;6226
	adc a,(hl)		;6227
	ld b,012h		;6228
	rra			;622a
	inc bc			;622b
	ld (bc),a		;622c
	ex af,af'		;622d
	inc b			;622e
	ld b,h			;622f
	ld (de),a		;6230
	djnz l6273h		;6231
	add hl,bc		;6233
	ld c,b			;6234
	adc a,c			;6235
	inc bc			;6236
	jr $-125		;6237
	ld (bc),a		;6239
	ld c,b			;623a
	ld b,b			;623b
	ld a,(bc)		;623c
	ld c,b			;623d
	adc a,c			;623e
	inc bc			;623f
	dec bc			;6240
	ld (bc),a		;6241
	ld (bc),a		;6242
	ld c,b			;6243
	ld d,b			;6244
	jr nz,l62a6h		;6245
	dec b			;6247
	inc bc			;6248
	ld d,b			;6249
	jr z,l62abh		;624a
	ld b,001h		;624c
	inc bc			;624e
	ld d,b			;624f
	add hl,hl		;6250
	ld a,e			;6251
	dec b			;6252
	rst 38h			;6253
	ld d,b			;6254
	ld hl,(0887ch)		;6255
	ld (bc),a		;6258
	nop			;6259
	ld (bc),a		;625a
	ld a,h			;625b
	ld d,b			;625c
	ld hl,(0887ch)		;625d
	ld (bc),a		;6260
	ld bc,l7c02h		;6261
	nop			;6264
	nop			;6265
	nop			;6266
	djnz l628bh		;6267
	ld c,l			;6269
	dec b			;626a
	ex af,af'		;626b
	djnz l629ch		;626c
	ld c,a			;626e
	adc a,c			;626f
	inc bc			;6270
	add a,d			;6271
	rra			;6272
l6273h:
	ld (bc),a		;6273
	ld d,010h		;6274
	ld l,04fh		;6276
	adc a,c			;6278
	inc bc			;6279
	djnz $+33		;627a
l627ch:
	ld (bc),a		;627c
	ld d,010h		;627d
	jr c,l62d5h		;627f
	adc a,d			;6281
	inc b			;6282
	add a,b			;6283
	inc de			;6284
	nop			;6285
l6286h:
	ld (bc),a		;6286
	ld a,(de)		;6287
	djnz l62c2h		;6288
	ld d,h			;628a
l628bh:
	adc a,d			;628b
	inc b			;628c
	add a,b			;628d
	ld b,011h		;628e
l6290h:
	ld (bc),a		;6290
	ld a,(de)		;6291
	djnz l62cch		;6292
	ld d,h			;6294
	adc a,d			;6295
	inc b			;6296
	dec d			;6297
	inc hl			;6298
	ld bc,01a02h		;6299
l629ch:
	djnz l62e6h		;629c
	ld d,h			;629e
	adc a,d			;629f
	inc b			;62a0
	add a,b			;62a1
	inc de			;62a2
	inc bc			;62a3
	ld (bc),a		;62a4
	ld a,(de)		;62a5
l62a6h:
	djnz l62fch		;62a6
	ld d,h			;62a8
	adc a,d			;62a9
	inc b			;62aa
l62abh:
	dec d			;62ab
	inc de			;62ac
	inc de			;62ad
l62aeh:
	ld (bc),a		;62ae
	ld a,(de)		;62af
	djnz l630eh		;62b0
	ld d,h			;62b2
	adc a,d			;62b3
	inc b			;62b4
	add a,b			;62b5
	inc de			;62b6
	inc b			;62b7
l62b8h:
	ld (bc),a		;62b8
	ld a,(de)		;62b9
	djnz l6318h		;62ba
	ld d,h			;62bc
	adc a,d			;62bd
	inc b			;62be
	add a,b			;62bf
	inc hl			;62c0
	inc de			;62c1
l62c2h:
	ld (bc),a		;62c2
	ld a,(de)		;62c3
	djnz l6322h		;62c4
	ld d,h			;62c6
	adc a,d			;62c7
	inc b			;62c8
	add a,b			;62c9
	inc hl			;62ca
	dec d			;62cb
l62cch:
	ld (bc),a		;62cc
	ld a,(de)		;62cd
	djnz l6340h		;62ce
	ld d,h			;62d0
	adc a,d			;62d1
	inc b			;62d2
	dec d			;62d3
	inc b			;62d4
l62d5h:
	djnz $+4		;62d5
	ld a,(de)		;62d7
	djnz l634ah		;62d8
	ld d,h			;62da
	adc a,d			;62db
l62dch:
	inc b			;62dc
	dec d			;62dd
	inc h			;62de
	inc d			;62df
	ld (bc),a		;62e0
	ld a,(de)		;62e1
	djnz l635ch		;62e2
	ld d,h			;62e4
	adc a,d			;62e5
l62e6h:
	inc b			;62e6
	dec d			;62e7
	inc b			;62e8
	rlca			;62e9
	ld (bc),a		;62ea
	ld a,(de)		;62eb
	djnz l6366h		;62ec
	ld d,h			;62ee
	adc a,d			;62ef
	inc b			;62f0
	dec d			;62f1
	inc (hl)		;62f2
	ld d,002h		;62f3
	ld a,(de)		;62f5
	djnz l627ch		;62f6
l62f8h:
	ld d,h			;62f8
	adc a,d			;62f9
	inc b			;62fa
	dec d			;62fb
l62fch:
	inc bc			;62fc
	ex af,af'		;62fd
	ld (bc),a		;62fe
	ld a,(de)		;62ff
	djnz l6286h		;6300
l6302h:
	ld d,h			;6302
	adc a,d			;6303
	inc b			;6304
	dec d			;6305
	inc de			;6306
	add hl,bc		;6307
	ld (bc),a		;6308
	ld a,(de)		;6309
	djnz l6290h		;630a
l630ch:
	ld d,h			;630c
	adc a,d			;630d
l630eh:
	inc b			;630e
	dec d			;630f
	inc sp			;6310
	rla			;6311
	ld (bc),a		;6312
	ld a,(de)		;6313
	djnz l62aeh		;6314
	ld d,h			;6316
	adc a,d			;6317
l6318h:
	inc b			;6318
	add a,b			;6319
	inc bc			;631a
	dec bc			;631b
	ld (bc),a		;631c
	ld a,(de)		;631d
	djnz l62b8h		;631e
	ld d,h			;6320
	adc a,d			;6321
l6322h:
	inc b			;6322
	add a,b			;6323
	inc h			;6324
	ld de,01a02h		;6325
	djnz l62c2h		;6328
	ld d,h			;632a
	adc a,d			;632b
	inc b			;632c
	dec d			;632d
	inc de			;632e
	inc c			;632f
	ld (bc),a		;6330
	ld a,(de)		;6331
	djnz l62dch		;6332
	ld d,h			;6334
	adc a,d			;6335
	inc b			;6336
	add a,b			;6337
	inc de			;6338
	dec c			;6339
	ld (bc),a		;633a
	ld a,(de)		;633b
	djnz l62e6h		;633c
l633eh:
	ld d,h			;633e
	adc a,d			;633f
l6340h:
	inc b			;6340
	dec d			;6341
	inc de			;6342
	ld c,002h		;6343
	ld a,(de)		;6345
	djnz l62f8h		;6346
	ld d,h			;6348
	adc a,d			;6349
l634ah:
	inc b			;634a
	add a,b			;634b
	inc de			;634c
	rrca			;634d
	ld (bc),a		;634e
	ld a,(de)		;634f
	djnz l6302h		;6350
	ld d,h			;6352
	adc a,d			;6353
	inc b			;6354
	dec d			;6355
	ld h,012h		;6356
	ld (bc),a		;6358
	ld a,(de)		;6359
	djnz l630ch		;635a
l635ch:
	ld d,h			;635c
	adc a,d			;635d
	inc b			;635e
	dec d			;635f
	inc (hl)		;6360
	ld (de),a		;6361
	ld (bc),a		;6362
l6363h:
	ld a,(de)		;6363
	djnz l633eh		;6364
l6366h:
	ld e,a			;6366
	dec b			;6367
	inc bc			;6368
	djnz l6363h		;6369
	ld b,e			;636b
	dec b			;636c
	ex af,af'		;636d
	nop			;636e
	djnz $+28		;636f
l6371h:
	ld d,b			;6371
	ld b,006h		;6372
	rra			;6374
	djnz $+34		;6375
	dec de			;6377
	dec b			;6378
	rst 38h			;6379
	djnz l63a0h		;637a
	ld b,d			;637c
	dec b			;637d
	sub d			;637e
	djnz l63abh		;637f
	ld d,b			;6381
l6382h:
	ld b,096h		;6382
	rra			;6384
	djnz $+51		;6385
	ld b,d			;6387
	dec b			;6388
	ld (bc),a		;6389
	djnz $+54		;638a
	ld d,b			;638c
	ld b,000h		;638d
	rra			;638f
	djnz $+66		;6390
	ld e,a			;6392
	ld b,001h		;6393
	dec b			;6395
	djnz l63dch		;6396
l6398h:
	ld b,d			;6398
	dec b			;6399
	adc a,b			;639a
	djnz $+72		;639b
l639dh:
	ld d,b			;639d
	ld b,096h		;639e
l63a0h:
	ld e,010h		;63a0
	ld c,h			;63a2
	ld b,(hl)		;63a3
	dec b			;63a4
	ld (bc),a		;63a5
	djnz l63fah		;63a6
	ld d,b			;63a8
	ld b,096h		;63a9
l63abh:
	jr $+18			;63ab
	ld d,h			;63ad
	ld d,b			;63ae
	ld b,000h		;63af
	sbc a,(hl)		;63b1
	djnz l640ah		;63b2
	ld b,(hl)		;63b4
	dec b			;63b5
	inc c			;63b6
	djnz l6419h		;63b7
	ld b,(hl)		;63b9
	dec b			;63ba
	ld (bc),a		;63bb
	djnz l6420h		;63bc
	ld d,b			;63be
	ld b,000h		;63bf
	jr l63d3h		;63c1
	ld h,a			;63c3
	ld b,d			;63c4
	dec b			;63c5
	ld (de),a		;63c6
	djnz l6434h		;63c7
	ld b,(hl)		;63c9
	dec b			;63ca
	inc b			;63cb
	djnz l643ah		;63cc
	ld d,b			;63ce
	ld b,096h		;63cf
	jr $+18			;63d1
l63d3h:
	ld l,(hl)		;63d3
	ld d,b			;63d4
	ld b,000h		;63d5
	ld e,010h		;63d7
	ld (hl),d		;63d9
l63dah:
	ld b,(hl)		;63da
	dec b			;63db
l63dch:
	ld c,010h		;63dc
	halt			;63de
	ld d,b			;63df
	ld b,096h		;63e0
	ld e,010h		;63e2
	ld a,b			;63e4
	ld b,(hl)		;63e5
	dec b			;63e6
	ld (bc),a		;63e7
	djnz l6468h		;63e8
	ld b,(hl)		;63ea
	dec b			;63eb
	add hl,bc		;63ec
l63edh:
	djnz l6371h		;63ed
	ld d,b			;63ef
	ld b,000h		;63f0
	ld e,010h		;63f2
	add a,h			;63f4
	ld b,(hl)		;63f5
	dec b			;63f6
	inc b			;63f7
	djnz l6382h		;63f8
l63fah:
	ld d,b			;63fa
	ld b,096h		;63fb
	djnz l640fh		;63fd
	adc a,b			;63ff
	ld b,(hl)		;6400
	dec b			;6401
	ld (bc),a		;6402
	djnz $-114		;6403
	ld b,(hl)		;6405
	dec b			;6406
	dec bc			;6407
	djnz l6398h		;6408
l640ah:
	ld b,(hl)		;640a
	dec b			;640b
	ld (bc),a		;640c
	djnz l639dh		;640d
l640fh:
	ld d,b			;640f
	ld b,096h		;6410
	jr $+18			;6412
	sub b			;6414
	ld d,b			;6415
	ld b,096h		;6416
	sbc a,(hl)		;6418
l6419h:
	djnz l63abh		;6419
	ld b,(hl)		;641b
	dec b			;641c
	djnz l642fh		;641d
	sub h			;641f
l6420h:
	ld b,(hl)		;6420
	dec b			;6421
	ex af,af'		;6422
	djnz $-102		;6423
	ld b,(hl)		;6425
	dec b			;6426
	djnz $+18		;6427
	sbc a,d			;6429
	ld b,(hl)		;642a
	dec b			;642b
	ld (bc),a		;642c
	djnz $-96		;642d
l642fh:
	ld d,b			;642f
	ld b,000h		;6430
	jr $+18			;6432
l6434h:
	sbc a,l			;6434
	ld b,(hl)		;6435
	dec b			;6436
	inc b			;6437
	djnz l63dah		;6438
l643ah:
	ld e,a			;643a
	ld b,001h		;643b
	nop			;643d
	djnz l63edh		;643e
	ld e,a			;6440
	dec b			;6441
	inc bc			;6442
	jr nz,l6445h		;6443
l6445h:
	ld a,b			;6445
	dec b			;6446
	djnz l6449h		;6447
l6449h:
	nop			;6449
	nop			;644a
	djnz l6466h		;644b
	ld e,d			;644d
	dec b			;644e
	add a,d			;644f
	djnz l646bh		;6450
	ld e,d			;6452
	dec b			;6453
	dec d			;6454
	djnz l6477h		;6455
	ld c,(hl)		;6457
	dec b			;6458
	djnz l646bh		;6459
	inc h			;645b
	ld c,(hl)		;645c
	dec b			;645d
	ex af,af'		;645e
	djnz $+39		;645f
	ld c,(hl)		;6461
	dec b			;6462
	inc b			;6463
	djnz l648eh		;6464
l6466h:
	ld c,(hl)		;6466
	dec b			;6467
l6468h:
	ld a,(bc)		;6468
	djnz l6495h		;6469
l646bh:
	ld c,(hl)		;646b
	dec b			;646c
	ld d,010h		;646d
	ld l,04eh		;646f
	dec b			;6471
	ld a,(bc)		;6472
	djnz l64a4h		;6473
	ld c,(hl)		;6475
	dec b			;6476
l6477h:
	ex af,af'		;6477
	djnz l64b0h		;6478
	ld a,c			;647a
	dec b			;647b
	ex af,af'		;647c
	djnz l64beh		;647d
	ld d,c			;647f
	adc a,(hl)		;6480
	ex af,af'		;6481
	ld bc,0031fh		;6482
	ld bc,00320h		;6485
	ld b,b			;6488
	ld (bc),a		;6489
	ld c,h			;648a
	nop			;648b
	nop			;648c
	nop			;648d
l648eh:
	rst 38h			;648e
	rst 38h			;648f
	rst 38h			;6490
	rst 38h			;6491
	rst 38h			;6492
	rst 38h			;6493
	rst 38h			;6494
l6495h:
	rst 38h			;6495
	rst 38h			;6496
	rst 38h			;6497
	rst 38h			;6498
	rst 38h			;6499
	rst 38h			;649a
	rst 38h			;649b
	rst 38h			;649c
	rst 38h			;649d
	rst 38h			;649e
	rst 38h			;649f
	rst 38h			;64a0
	rst 38h			;64a1
	rst 38h			;64a2
	rst 38h			;64a3
l64a4h:
	rst 38h			;64a4
	rst 38h			;64a5
	rst 38h			;64a6
	rst 38h			;64a7
	rst 38h			;64a8
	rst 38h			;64a9
	rst 38h			;64aa
	rst 38h			;64ab
	rst 38h			;64ac
	rst 38h			;64ad
	rst 38h			;64ae
	rst 38h			;64af
l64b0h:
	rst 38h			;64b0
	rst 38h			;64b1
	rst 38h			;64b2
	rst 38h			;64b3
	rst 38h			;64b4
	rst 38h			;64b5
	rst 38h			;64b6
	rst 38h			;64b7
	rst 38h			;64b8
	rst 38h			;64b9
	rst 38h			;64ba
	rst 38h			;64bb
	rst 38h			;64bc
	rst 38h			;64bd
l64beh:
	rst 38h			;64be
	rst 38h			;64bf
	rst 38h			;64c0
	rst 38h			;64c1
	rst 38h			;64c2
	rst 38h			;64c3
	rst 38h			;64c4
	rst 38h			;64c5
	rst 38h			;64c6
	rst 38h			;64c7
	rst 38h			;64c8
	rst 38h			;64c9
	rst 38h			;64ca
	rst 38h			;64cb
	rst 38h			;64cc
	rst 38h			;64cd
	rst 38h			;64ce
	rst 38h			;64cf
	rst 38h			;64d0
	rst 38h			;64d1
	rst 38h			;64d2
	rst 38h			;64d3
	rst 38h			;64d4
	rst 38h			;64d5
	rst 38h			;64d6
	rst 38h			;64d7
	rst 38h			;64d8
	rst 38h			;64d9
	rst 38h			;64da
	rst 38h			;64db
	rst 38h			;64dc
	rst 38h			;64dd
	rst 38h			;64de
	rst 38h			;64df
	rst 38h			;64e0
	rst 38h			;64e1
	rst 38h			;64e2
	rst 38h			;64e3
	rst 38h			;64e4
	rst 38h			;64e5
	rst 38h			;64e6
	rst 38h			;64e7
	rst 38h			;64e8
	rst 38h			;64e9
	rst 38h			;64ea
	rst 38h			;64eb
	rst 38h			;64ec
	rst 38h			;64ed
	rst 38h			;64ee
	rst 38h			;64ef
	rst 38h			;64f0
	rst 38h			;64f1
	rst 38h			;64f2
	rst 38h			;64f3
	rst 38h			;64f4
	rst 38h			;64f5
	rst 38h			;64f6
	rst 38h			;64f7
	rst 38h			;64f8
	rst 38h			;64f9
	rst 38h			;64fa
	rst 38h			;64fb
	rst 38h			;64fc
	rst 38h			;64fd
	rst 38h			;64fe
	rst 38h			;64ff
	rst 38h			;6500
	rst 38h			;6501
	rst 38h			;6502
	rst 38h			;6503
	rst 38h			;6504
	rst 38h			;6505
	rst 38h			;6506
	rst 38h			;6507
	rst 38h			;6508
	rst 38h			;6509
	rst 38h			;650a
	rst 38h			;650b
	rst 38h			;650c
	rst 38h			;650d
	rst 38h			;650e
	rst 38h			;650f
	rst 38h			;6510
	rst 38h			;6511
	rst 38h			;6512
	rst 38h			;6513
	rst 38h			;6514
	rst 38h			;6515
	rst 38h			;6516
	rst 38h			;6517
	rst 38h			;6518
	rst 38h			;6519
	rst 38h			;651a
	rst 38h			;651b
	rst 38h			;651c
	rst 38h			;651d
	rst 38h			;651e
	rst 38h			;651f
	rst 38h			;6520
	rst 38h			;6521
	rst 38h			;6522
	rst 38h			;6523
	rst 38h			;6524
	rst 38h			;6525
	rst 38h			;6526
	rst 38h			;6527
	rst 38h			;6528
	rst 38h			;6529
	rst 38h			;652a
	rst 38h			;652b
	rst 38h			;652c
	rst 38h			;652d
	rst 38h			;652e
	rst 38h			;652f
	rst 38h			;6530
	rst 38h			;6531
	rst 38h			;6532
	rst 38h			;6533
	rst 38h			;6534
	rst 38h			;6535
	rst 38h			;6536
	rst 38h			;6537
	rst 38h			;6538
	rst 38h			;6539
	rst 38h			;653a
	rst 38h			;653b
	rst 38h			;653c
	rst 38h			;653d
	rst 38h			;653e
	rst 38h			;653f
	rst 38h			;6540
	rst 38h			;6541
	rst 38h			;6542
	rst 38h			;6543
	rst 38h			;6544
	rst 38h			;6545
	rst 38h			;6546
	rst 38h			;6547
	rst 38h			;6548
	rst 38h			;6549
	rst 38h			;654a
	rst 38h			;654b
	rst 38h			;654c
	rst 38h			;654d
	rst 38h			;654e
	rst 38h			;654f
	rst 38h			;6550
	rst 38h			;6551
	rst 38h			;6552
	rst 38h			;6553
	rst 38h			;6554
	rst 38h			;6555
	rst 38h			;6556
	rst 38h			;6557
	rst 38h			;6558
	rst 38h			;6559
	rst 38h			;655a
	rst 38h			;655b
	rst 38h			;655c
	rst 38h			;655d
	rst 38h			;655e
	rst 38h			;655f
	rst 38h			;6560
	rst 38h			;6561
	rst 38h			;6562
	rst 38h			;6563
	rst 38h			;6564
	rst 38h			;6565
	rst 38h			;6566
	rst 38h			;6567
	rst 38h			;6568
	rst 38h			;6569
	rst 38h			;656a
	rst 38h			;656b
	rst 38h			;656c
	rst 38h			;656d
	rst 38h			;656e
	rst 38h			;656f
	rst 38h			;6570
	rst 38h			;6571
	rst 38h			;6572
	rst 38h			;6573
	rst 38h			;6574
	rst 38h			;6575
	rst 38h			;6576
	rst 38h			;6577
	rst 38h			;6578
	rst 38h			;6579
	rst 38h			;657a
	rst 38h			;657b
	rst 38h			;657c
	rst 38h			;657d
	rst 38h			;657e
	rst 38h			;657f
	rst 38h			;6580
	rst 38h			;6581
	rst 38h			;6582
	rst 38h			;6583
	rst 38h			;6584
	rst 38h			;6585
	rst 38h			;6586
	rst 38h			;6587
	rst 38h			;6588
	rst 38h			;6589
	rst 38h			;658a
	rst 38h			;658b
	rst 38h			;658c
	rst 38h			;658d
	rst 38h			;658e
	rst 38h			;658f
	rst 38h			;6590
	rst 38h			;6591
	rst 38h			;6592
	rst 38h			;6593
	rst 38h			;6594
	rst 38h			;6595
	rst 38h			;6596
	rst 38h			;6597
	rst 38h			;6598
	rst 38h			;6599
	rst 38h			;659a
	rst 38h			;659b
	rst 38h			;659c
	rst 38h			;659d
	rst 38h			;659e
	rst 38h			;659f
	rst 38h			;65a0
	rst 38h			;65a1
	rst 38h			;65a2
	rst 38h			;65a3
	rst 38h			;65a4
	rst 38h			;65a5
	rst 38h			;65a6
	rst 38h			;65a7
	rst 38h			;65a8
	rst 38h			;65a9
	rst 38h			;65aa
	rst 38h			;65ab
	rst 38h			;65ac
	rst 38h			;65ad
	rst 38h			;65ae
	rst 38h			;65af
	rst 38h			;65b0
	rst 38h			;65b1
	rst 38h			;65b2
	rst 38h			;65b3
	rst 38h			;65b4
	rst 38h			;65b5
	rst 38h			;65b6
	rst 38h			;65b7
	rst 38h			;65b8
	rst 38h			;65b9
	rst 38h			;65ba
	rst 38h			;65bb
	rst 38h			;65bc
	rst 38h			;65bd
	rst 38h			;65be
	rst 38h			;65bf
	rst 38h			;65c0
	rst 38h			;65c1
	rst 38h			;65c2
	rst 38h			;65c3
	rst 38h			;65c4
	rst 38h			;65c5
	rst 38h			;65c6
	rst 38h			;65c7
	rst 38h			;65c8
	rst 38h			;65c9
	rst 38h			;65ca
	rst 38h			;65cb
	rst 38h			;65cc
	rst 38h			;65cd
	rst 38h			;65ce
	rst 38h			;65cf
	rst 38h			;65d0
	rst 38h			;65d1
	rst 38h			;65d2
	rst 38h			;65d3
	rst 38h			;65d4
	rst 38h			;65d5
	rst 38h			;65d6
	rst 38h			;65d7
	rst 38h			;65d8
	rst 38h			;65d9
	rst 38h			;65da
	rst 38h			;65db
	rst 38h			;65dc
	rst 38h			;65dd
	rst 38h			;65de
	rst 38h			;65df
	rst 38h			;65e0
	rst 38h			;65e1
	rst 38h			;65e2
	rst 38h			;65e3
	rst 38h			;65e4
	rst 38h			;65e5
	rst 38h			;65e6
	rst 38h			;65e7
	rst 38h			;65e8
	rst 38h			;65e9
	rst 38h			;65ea
	rst 38h			;65eb
	rst 38h			;65ec
	rst 38h			;65ed
	rst 38h			;65ee
	rst 38h			;65ef
	rst 38h			;65f0
	rst 38h			;65f1
	rst 38h			;65f2
	rst 38h			;65f3
	rst 38h			;65f4
	rst 38h			;65f5
	rst 38h			;65f6
	rst 38h			;65f7
	rst 38h			;65f8
	rst 38h			;65f9
	rst 38h			;65fa
	rst 38h			;65fb
	rst 38h			;65fc
	rst 38h			;65fd
	rst 38h			;65fe
	rst 38h			;65ff
	call 0474bh		;6600
	ld a,000h		;6603
	ld h,000h		;6605
	ld l,h			;6607
	ld b,h			;6608
	ld c,080h		;6609
	ld d,002h		;660b
	call 047fch		;660d
	call 047d2h		;6610
	ld ix,0b40ah		;6613
	call 0ae15h		;6617
	call 04b95h		;661a
	ld a,015h		;661d
	ld hl,05a02h		;661f
	ld de,0b9a3h		;6622
	call 0a68fh		;6625
	jr l667fh		;6628
	ld ix,0b37eh		;662a
	call 0ae15h		;662e
	call 04b95h		;6631
	ld a,015h		;6634
	ld hl,05000h		;6636
	ld de,0ba7bh		;6639
	call 0a68fh		;663c
	call 0a67fh		;663f
	call 047d2h		;6642
	call 0bdc8h		;6645
	ld bc,00017h		;6648
	call 00047h		;664b
	jp 0473eh		;664e
	ld ix,0b260h		;6651
	call 0ae15h		;6655
	jp 04b95h		;6658
	ld a,00ah		;665b
	ld hl,05500h		;665d
	ld de,0b520h		;6660
	call 0a68fh		;6663
	call 047d2h		;6666
	call 0a67fh		;6669
	call 0bdc3h		;666c
	call 047d2h		;666f
	call 0473eh		;6672
	xor a			;6675
	ld h,a			;6676
	ld l,a			;6677
	ld b,a			;6678
	ld c,a			;6679
	ld d,001h		;667a
	jp 047fch		;667c
l667fh:
	call 04b95h		;667f
	call 047d2h		;6682
	xor a			;6685
	ld h,a			;6686
	ld l,a			;6687
	ld b,a			;6688
	ld c,0c0h		;6689
	ld d,a			;668b
	jp 047fch		;668c
	push de			;668f
	push af			;6690
	push hl			;6691
	call 0a6aeh		;6692
	pop hl			;6695
	pop af			;6696
	call 0aea6h		;6697
	pop hl			;669a
	call 0a713h		;669b
	ret			;669e
	call 04a7ah		;669f
	call 04a58h		;66a2
	call 0a749h		;66a5
	push af			;66a8
	call 04b95h		;66a9
	pop af			;66ac
	ret			;66ad
	call 047d2h		;66ae
	ld hl,0a6bdh		;66b1
	ld b,008h		;66b4
	call 04a1fh		;66b6
	call 04760h		;66b9
	ret			;66bc
	nop			;66bd
	ld b,001h		;66be
	ld (01f02h),hl		;66c0
	dec b			;66c3
	rst 28h			;66c4
	ld b,01fh		;66c5
	ex af,af'		;66c7
	ld a,(bc)		;66c8
	add hl,bc		;66c9
	nop			;66ca
	dec bc			;66cb
	ld bc,08016h		;66cc
	ld a,(bc)		;66cf
	adc a,b			;66d0
	nop			;66d1
	sub a			;66d2
	nop			;66d3
	sub d			;66d4
	jr nz,$-124		;66d5
	ld a,(0c908h)		;66d7
	ld c,a			;66da
	bit 0,c			;66db
	ld a,0ffh		;66dd
	jr nz,l6706h		;66df
	bit 1,c			;66e1
	ld a,001h		;66e3
	jr nz,l6706h		;66e5
	ld a,(0c907h)		;66e7
	ld c,a			;66ea
	bit 2,c			;66eb
	ld a,020h		;66ed
	jr nz,l66f6h		;66ef
	bit 3,c			;66f1
	ld a,0e0h		;66f3
	ret z			;66f5
l66f6h:
	ld hl,0e008h		;66f6
	add a,(hl)		;66f9
	ld (hl),a		;66fa
	and 060h		;66fb
	or 01fh			;66fd
	ld b,a			;66ff
	ld c,002h		;6700
	call 00047h		;6702
	ret			;6705
l6706h:
	ld hl,0e009h		;6706
	add a,(hl)		;6709
	ld (hl),a		;670a
	ld b,a			;670b
	ld c,017h		;670c
	call 00047h		;670e
	ei			;6711
	ret			;6712
	push hl			;6713
	ld hl,0e000h		;6714
	ld bc,006ffh		;6717
	call 04648h		;671a
	ld ix,0e100h		;671d
	pop hl			;6721
	ld (ix+002h),l		;6722
	ld (ix+003h),h		;6725
	ld (ix+00eh),00ah	;6728
	ld (ix+00fh),028h	;672c
	ld (ix+012h),014h	;6730
	ld (ix+013h),00ch	;6734
	ld (ix+014h),006h	;6738
	ld (ix+015h),006h	;673c
	set 0,(ix+00dh)		;6740
	set 5,(ix+00dh)		;6744
	ret			;6748
	call 0a754h		;6749
	call 0a767h		;674c
	ld a,(0e0ffh)		;674f
	or a			;6752
	ret			;6753
	ld ix,0e100h		;6754
	ld b,030h		;6758
l675ah:
	push bc			;675a
	call 0a78eh		;675b
	ld bc,00020h		;675e
	add ix,bc		;6761
	pop bc			;6763
	djnz l675ah		;6764
	ret			;6766
	ld b,010h		;6767
l6769h:
	push bc			;6769
	call 0a771h		;676a
	pop bc			;676d
	djnz l6769h		;676e
	ret			;6770
	ld c,b			;6771
	dec c			;6772
	ld ix,0e100h		;6773
	ld b,030h		;6777
l6779h:
	push bc			;6779
	ld a,(ix+00ch)		;677a
	cp c			;677d
	push ix			;677e
	call z,0abb8h		;6780
	pop ix			;6783
	ld bc,00020h		;6785
	add ix,bc		;6788
	pop bc			;678a
	djnz l6779h		;678b
	ret			;678d
	call 0a818h		;678e
	call 0a795h		;6791
	ret			;6794
	ld h,(ix+005h)		;6795
	ld l,(ix+004h)		;6798
	ld d,(ix+009h)		;679b
	ld e,(ix+008h)		;679e
	add hl,de		;67a1
	ld (ix+005h),h		;67a2
	ld (ix+004h),l		;67a5
	ld a,(ix+00dh)		;67a8
	and 00ah		;67ab
	jr z,l67d6h		;67ad
	bit 6,(ix+005h)		;67af
	jr z,l67c9h		;67b3
	ld h,(ix+005h)		;67b5
	ld l,(ix+004h)		;67b8
	ld d,(ix+016h)		;67bb
	ld e,000h		;67be
	add hl,de		;67c0
	ld (ix+005h),h		;67c1
	ld (ix+004h),l		;67c4
	jr l67d6h		;67c7
l67c9h:
	ld a,(ix+005h)		;67c9
	sub (ix+016h)		;67cc
	jr c,l67d6h		;67cf
	ld (ix+005h),a		;67d1
	jr l67c9h		;67d4
l67d6h:
	ld h,(ix+007h)		;67d6
	ld l,(ix+006h)		;67d9
	ld d,(ix+00bh)		;67dc
	ld e,(ix+00ah)		;67df
	add hl,de		;67e2
	ld (ix+007h),h		;67e3
	ld (ix+006h),l		;67e6
	ld a,(ix+00dh)		;67e9
	and 012h		;67ec
	jr z,l6817h		;67ee
	bit 6,(ix+007h)		;67f0
	jr z,l680ah		;67f4
	ld h,(ix+007h)		;67f6
	ld l,(ix+006h)		;67f9
	ld d,(ix+017h)		;67fc
	ld e,000h		;67ff
	add hl,de		;6801
	ld (ix+007h),h		;6802
	ld (ix+006h),l		;6805
	jr l6817h		;6808
l680ah:
	ld a,(ix+007h)		;680a
	sub (ix+017h)		;680d
	jr c,l6817h		;6810
	ld (ix+007h),a		;6812
	jr l680ah		;6815
l6817h:
	ret			;6817
	ld a,(ix+001h)		;6818
	or a			;681b
	jr z,l6823h		;681c
	dec a			;681e
	ld (ix+001h),a		;681f
	ret nz			;6822
l6823h:
	ld l,(ix+002h)		;6823
	ld h,(ix+003h)		;6826
	ld a,h			;6829
	or l			;682a
	ret z			;682b
	ld a,(hl)		;682c
	cp 011h			;682d
	jp nc,04ae0h		;682f
	call 0461ah		;6832
	ld l,d			;6835
	xor b			;6836
	jp nc,025a8h		;6837
	xor c			;683a
	ld c,d			;683b
	xor c			;683c
	ld l,d			;683d
	xor c			;683e
	sub e			;683f
	xor c			;6840
	cp e			;6841
	xor c			;6842
	rst 28h			;6843
	xor c			;6844
	ld c,0aah		;6845
	inc sp			;6847
	xor d			;6848
	ld e,e			;6849
	xor d			;684a
	ld a,l			;684b
	xor d			;684c
	xor (hl)		;684d
	xor d			;684e
	push de			;684f
	xor d			;6850
	di			;6851
	xor d			;6852
	add hl,de		;6853
	xor e			;6854
	dec sp			;6855
	xor e			;6856
	ld l,(ix+002h)		;6857
	ld h,(ix+003h)		;685a
	ret			;685d
	ld (ix+002h),l		;685e
	ld (ix+003h),h		;6861
	ret			;6864
	pop hl			;6865
	call 0a877h		;6866
	jp (hl)			;6869
	call 0a857h		;686a
	inc hl			;686d
	call 0a877h		;686e
	call 0a85eh		;6871
	jp 0a823h		;6874
	ld a,(hl)		;6877
	inc hl			;6878
	ld c,(hl)		;6879
	inc hl			;687a
	ld b,(hl)		;687b
	inc hl			;687c
	ld d,(hl)		;687d
	inc hl			;687e
	ld e,(hl)		;687f
	inc hl			;6880
	ex af,af'		;6881
	ld a,(hl)		;6882
	inc hl			;6883
	push hl			;6884
	push ix			;6885
	call 0a88eh		;6887
	pop ix			;688a
	pop hl			;688c
	ret			;688d
	ld l,a			;688e
	ex af,af'		;688f
	push hl			;6890
	push de			;6891
	push bc			;6892
	push ix			;6893
	call 0ab61h		;6895
	jp c,04699h		;6898
	pop iy			;689b
	pop bc			;689d
	pop de			;689e
	pop hl			;689f
	ld (ix+002h),c		;68a0
	ld (ix+003h),b		;68a3
	ld (ix+00ch),l		;68a6
	ld a,e			;68a9
	push de			;68aa
	call 0aba6h		;68ab
	ld d,(iy+007h)		;68ae
	ld e,(iy+006h)		;68b1
	add hl,de		;68b4
	ld (ix+007h),h		;68b5
	ld (ix+006h),l		;68b8
	pop af			;68bb
	call 0aba6h		;68bc
	ld d,(iy+005h)		;68bf
	ld e,(iy+004h)		;68c2
	add hl,de		;68c5
	ld (ix+005h),h		;68c6
	ld (ix+004h),l		;68c9
	ret			;68cc
	pop hl			;68cd
	call 0a8ddh		;68ce
	jp (hl)			;68d1
	call 0a857h		;68d2
	inc hl			;68d5
	call 0a8ddh		;68d6
	call 0a85eh		;68d9
	ret			;68dc
	ld c,(hl)		;68dd
	inc hl			;68de
	ld b,(hl)		;68df
	inc hl			;68e0
	ld d,(hl)		;68e1
	inc hl			;68e2
	ld e,(hl)		;68e3
	inc hl			;68e4
	push hl			;68e5
	push ix			;68e6
	call 0a8efh		;68e8
	pop ix			;68eb
	pop hl			;68ed
	ret			;68ee
	ld h,b			;68ef
	ld l,c			;68f0
	push de			;68f1
	call 0a917h		;68f2
	ex de,hl		;68f5
	pop de			;68f6
	ld (ix+00eh),h		;68f7
	ld a,b			;68fa
	sub h			;68fb
	inc a			;68fc
	ld (ix+012h),a		;68fd
	ld a,c			;6900
	sub l			;6901
	inc a			;6902
	ld (ix+013h),a		;6903
	ld a,l			;6906
	add a,040h		;6907
	ld (ix+00fh),a		;6909
	ld (ix+010h),d		;690c
	ld (ix+011h),e		;690f
	set 0,(ix+00dh)		;6912
	ret			;6916
	ld d,(hl)		;6917
	inc hl			;6918
	ld e,(hl)		;6919
	inc hl			;691a
	ld b,(hl)		;691b
	inc hl			;691c
	ld c,(hl)		;691d
	inc hl			;691e
	ret			;691f
	pop hl			;6920
	call 0a932h		;6921
	jp (hl)			;6924
	call 0a857h		;6925
	inc hl			;6928
	call 0a932h		;6929
	call 0a85eh		;692c
	jp 0a823h		;692f
	ld a,(hl)		;6932
	inc hl			;6933
	push hl			;6934
	push ix			;6935
	call 0a93eh		;6937
	pop ix			;693a
	pop hl			;693c
	ret			;693d
	or (ix+00dh)		;693e
	ld (ix+00dh),a		;6941
	ret			;6944
	pop hl			;6945
	call 0a955h		;6946
	jp (hl)			;6949
	call 0a857h		;694a
	inc hl			;694d
	call 0a955h		;694e
	call 0a85eh		;6951
	ret			;6954
	ld a,(hl)		;6955
	inc hl			;6956
	push hl			;6957
	push ix			;6958
	call 0a961h		;695a
	pop ix			;695d
	pop hl			;695f
	ret			;6960
	ld (ix+001h),a		;6961
	ret			;6964
	pop hl			;6965
	call 0a976h		;6966
	jp (hl)			;6969
	call 0a857h		;696a
	inc hl			;696d
	call 0a976h		;696e
	ret c			;6971
	call 0a85eh		;6972
	ret			;6975
	ld a,(hl)		;6976
	inc hl			;6977
	push hl			;6978
	push ix			;6979
	call 0a982h		;697b
	pop ix			;697e
	pop hl			;6980
	ret			;6981
	ld hl,0e0f0h		;6982
	ld e,a			;6985
	ld d,000h		;6986
	add hl,de		;6988
	ld a,(hl)		;6989
	or a			;698a
	ret nz			;698b
	scf			;698c
	ret			;698d
	pop hl			;698e
	call 0a9a0h		;698f
	jp (hl)			;6992
	call 0a857h		;6993
	inc hl			;6996
	call 0a9a0h		;6997
	call 0a85eh		;699a
	jp 0a823h		;699d
	ld a,(hl)		;69a0
	inc hl			;69a1
	push hl			;69a2
	push ix			;69a3
	call 0a9ach		;69a5
	pop ix			;69a8
	pop hl			;69aa
	ret			;69ab
	ld hl,0e0f0h		;69ac
	ld e,a			;69af
	ld d,000h		;69b0
	add hl,de		;69b2
	ld (hl),001h		;69b3
	ret			;69b5
	pop hl			;69b6
	call 0a9c8h		;69b7
	jp (hl)			;69ba
	call 0a857h		;69bb
	inc hl			;69be
	call 0a9c8h		;69bf
	call 0a85eh		;69c2
	jp 0a823h		;69c5
	push hl			;69c8
	push ix			;69c9
	call 0a9d2h		;69cb
	pop ix			;69ce
	pop hl			;69d0
	ret			;69d1
	xor a			;69d2
	ld hl,02820h		;69d3
	ld bc,0d090h		;69d6
	ld d,a			;69d9
	call 047fch		;69da
	call 0ab9dh		;69dd
	ld hl,0e0f0h		;69e0
	ld bc,0000fh		;69e3
	call 04648h		;69e6
	ret			;69e9
	pop hl			;69ea
	call 0a9fdh		;69eb
	jp (hl)			;69ee
	call 0a857h		;69ef
	inc hl			;69f2
	call 0a9fdh		;69f3
	ret c			;69f6
	call 0a85eh		;69f7
	jp 0a823h		;69fa
	push hl			;69fd
	push ix			;69fe
	call 0aa07h		;6a00
	pop ix			;6a03
	pop hl			;6a05
	ret			;6a06
	scf			;6a07
	ret			;6a08
	pop hl			;6a09
	call 0aa1bh		;6a0a
	jp (hl)			;6a0d
	call 0a857h		;6a0e
	inc hl			;6a11
	call 0aa1bh		;6a12
	call 0a85eh		;6a15
	jp 0a823h		;6a18
	ld e,(hl)		;6a1b
	inc hl			;6a1c
	ld d,(hl)		;6a1d
	inc hl			;6a1e
	push hl			;6a1f
	push ix			;6a20
	call 0aa29h		;6a22
	pop ix			;6a25
	pop hl			;6a27
	ret			;6a28
	ex de,hl		;6a29
	call 04c94h		;6a2a
	ret			;6a2d
	pop hl			;6a2e
	call 0aa40h		;6a2f
	jp (hl)			;6a32
	call 0a857h		;6a33
	inc hl			;6a36
	call 0aa40h		;6a37
	call 0a85eh		;6a3a
	jp 0a823h		;6a3d
	ld e,(hl)		;6a40
	inc hl			;6a41
	ld d,(hl)		;6a42
	inc hl			;6a43
	push hl			;6a44
	push ix			;6a45
	call 0aa4eh		;6a47
	pop ix			;6a4a
	pop hl			;6a4c
	ret			;6a4d
	ex de,hl		;6a4e
	call 04ce0h		;6a4f
	call 04cf5h		;6a52
	ret			;6a55
	pop hl			;6a56
	call 0aa68h		;6a57
	jp (hl)			;6a5a
	call 0a857h		;6a5b
	inc hl			;6a5e
	call 0aa68h		;6a5f
	call 0a85eh		;6a62
	jp 0a823h		;6a65
	ld e,(hl)		;6a68
	inc hl			;6a69
	ld d,(hl)		;6a6a
	inc hl			;6a6b
	push hl			;6a6c
	push ix			;6a6d
	call 0aa76h		;6a6f
	pop ix			;6a72
	pop hl			;6a74
	ret			;6a75
	ex de,hl		;6a76
	jp (hl)			;6a77
	pop hl			;6a78
	call 0aa88h		;6a79
	jp (hl)			;6a7c
	call 0a857h		;6a7d
	inc hl			;6a80
	call 0aa88h		;6a81
	call 0a85eh		;6a84
	ret			;6a87
	ld d,(hl)		;6a88
	inc hl			;6a89
	ld e,(hl)		;6a8a
	inc hl			;6a8b
	push hl			;6a8c
	push ix			;6a8d
	call 0aa96h		;6a8f
	pop ix			;6a92
	pop hl			;6a94
	ret			;6a95
	ld a,d			;6a96
	rlca			;6a97
	sbc a,a			;6a98
	ld (ix+008h),d		;6a99
	ld (ix+009h),a		;6a9c
	ld a,e			;6a9f
	rlca			;6aa0
	sbc a,a			;6aa1
	ld (ix+00ah),e		;6aa2
	ld (ix+00bh),a		;6aa5
	ret			;6aa8
	pop hl			;6aa9
	call 0aabbh		;6aaa
	jp (hl)			;6aad
	call 0a857h		;6aae
	inc hl			;6ab1
	call 0aabbh		;6ab2
	call 0a85eh		;6ab5
	jp 0a823h		;6ab8
	ld d,(hl)		;6abb
	inc hl			;6abc
	ld e,(hl)		;6abd
	inc hl			;6abe
	push hl			;6abf
	push ix			;6ac0
	call 0aac9h		;6ac2
	pop ix			;6ac5
	pop hl			;6ac7
	ret			;6ac8
	ld (ix+014h),d		;6ac9
	ld (ix+015h),e		;6acc
	ret			;6acf
	pop hl			;6ad0
	call 0aae2h		;6ad1
	jp (hl)			;6ad4
	call 0a857h		;6ad5
	inc hl			;6ad8
	call 0aae2h		;6ad9
	call 0a85eh		;6adc
	jp 0a823h		;6adf
	ld e,(hl)		;6ae2
	inc hl			;6ae3
	ld d,(hl)		;6ae4
	inc hl			;6ae5
	ex de,hl		;6ae6
	ld (ix+002h),l		;6ae7
	ld (ix+003h),h		;6aea
	ret			;6aed
	pop hl			;6aee
	call 0aaffh		;6aef
	jp (hl)			;6af2
	call 0a857h		;6af3
	inc hl			;6af6
	call 0aaffh		;6af7
	ret c			;6afa
	call 0a85eh		;6afb
	ret			;6afe
	push hl			;6aff
	push ix			;6b00
	call 0ab09h		;6b02
	pop ix			;6b05
	pop hl			;6b07
	ret			;6b08
	push ix			;6b09
	pop hl			;6b0b
	ld bc,0001fh		;6b0c
	call 04648h		;6b0f
	scf			;6b12
	ret			;6b13
	pop hl			;6b14
	call 0ab26h		;6b15
	jp (hl)			;6b18
	call 0a857h		;6b19
	inc hl			;6b1c
	call 0ab26h		;6b1d
	call 0a85eh		;6b20
	jp 0a823h		;6b23
	ld a,(hl)		;6b26
	inc hl			;6b27
	push hl			;6b28
	push ix			;6b29
	call 0ab32h		;6b2b
	pop ix			;6b2e
	pop hl			;6b30
	ret			;6b31
	call 04af5h		;6b32
	ret			;6b35
	pop hl			;6b36
	call 0ab48h		;6b37
	jp (hl)			;6b3a
	call 0a857h		;6b3b
	inc hl			;6b3e
	call 0ab48h		;6b3f
	call 0a85eh		;6b42
	jp 0a823h		;6b45
	ld e,(hl)		;6b48
	inc hl			;6b49
	ld d,(hl)		;6b4a
	inc hl			;6b4b
	push hl			;6b4c
	push ix			;6b4d
	call 0ab56h		;6b4f
	pop ix			;6b52
	pop hl			;6b54
	ret			;6b55
	ld a,e			;6b56
	and 0f0h		;6b57
	rrca			;6b59
	rrca			;6b5a
	rrca			;6b5b
	rrca			;6b5c
	call 04776h		;6b5d
	ret			;6b60
	call 0ab83h		;6b61
	ret c			;6b64
	push hl			;6b65
	pop ix			;6b66
	ld bc,0001fh		;6b68
	call 04648h		;6b6b
	ld (ix+000h),001h	;6b6e
	ld (ix+015h),028h	;6b72
	ld (ix+014h),00ah	;6b76
	ld (ix+016h),014h	;6b7a
	ld (ix+017h),00ch	;6b7e
	ret			;6b82
	cp 030h			;6b83
	ccf			;6b85
	ret c			;6b86
	ld l,a			;6b87
	ld h,000h		;6b88
	ld de,0e100h		;6b8a
	add hl,hl		;6b8d
	add hl,hl		;6b8e
	add hl,hl		;6b8f
	add hl,hl		;6b90
	add hl,hl		;6b91
	add hl,de		;6b92
	ret			;6b93
	ld hl,0e100h		;6b94
	ld bc,005ffh		;6b97
	jp 04648h		;6b9a
	ld hl,0e120h		;6b9d
	ld bc,005dfh		;6ba0
	jp 04648h		;6ba3
	ld l,a			;6ba6
	rlca			;6ba7
	sbc a,a			;6ba8
	ld h,a			;6ba9
	add hl,hl		;6baa
	add hl,hl		;6bab
	add hl,hl		;6bac
	add hl,hl		;6bad
	add hl,hl		;6bae
	ret			;6baf
	xor a			;6bb0
	add hl,hl		;6bb1
	adc a,a			;6bb2
	add hl,hl		;6bb3
	adc a,a			;6bb4
	add hl,hl		;6bb5
	adc a,a			;6bb6
	ret			;6bb7
	bit 0,(ix+00dh)		;6bb8
	ret z			;6bbc
	ld a,(ix+012h)		;6bbd
	and (ix+013h)		;6bc0
	inc a			;6bc3
	ret z			;6bc4
	ld a,(ix+00dh)		;6bc5
	bit 1,(ix+00dh)		;6bc8
	jp nz,0acadh		;6bcc
	bit 3,(ix+00dh)		;6bcf
	jp nz,0ac6eh		;6bd3
	bit 4,(ix+00dh)		;6bd6
	jp nz,0ac2fh		;6bda
	ld a,(ix+005h)		;6bdd
	add a,(ix+014h)		;6be0
	ld d,a			;6be3
	ld e,(ix+004h)		;6be4
	ld a,(ix+010h)		;6be7
	call 0aba6h		;6bea
	add hl,de		;6bed
	call 0abb0h		;6bee
	push hl			;6bf1
	ld a,(ix+007h)		;6bf2
	add a,(ix+015h)		;6bf5
	ld d,a			;6bf8
	ld e,(ix+006h)		;6bf9
	ld a,(ix+011h)		;6bfc
	call 0aba6h		;6bff
	add hl,de		;6c02
	call 0abb0h		;6c03
	pop de			;6c06
	ld e,h			;6c07
	push de			;6c08
	push af			;6c09
	ld h,(ix+00eh)		;6c0a
	ld l,(ix+00fh)		;6c0d
	pop af			;6c10
	pop de			;6c11
	ld b,(ix+012h)		;6c12
	ld c,(ix+013h)		;6c15
	bit 5,(ix+00dh)		;6c18
	jr z,l6c23h		;6c1c
	set 6,a			;6c1e
	jp 0ad86h		;6c20
l6c23h:
	bit 2,(ix+00dh)		;6c23
	jp nz,0ad86h		;6c27
	set 7,a			;6c2a
	jp 0ad86h		;6c2c
	push ix			;6c2f
	pop iy			;6c31
	call 0ad76h		;6c33
	ld a,(iy+017h)		;6c36
	sub (iy+007h)		;6c39
	inc a			;6c3c
	inc a			;6c3d
	ld (ix+013h),a		;6c3e
	call 0abddh		;6c41
	call 0ad76h		;6c44
	ld a,(iy+007h)		;6c47
	inc a			;6c4a
	ld (ix+013h),a		;6c4b
	ld a,(iy+00fh)		;6c4e
	add a,(iy+013h)		;6c51
	sub (iy+007h)		;6c54
	dec a			;6c57
	ld (ix+00fh),a		;6c58
	ld l,(iy+006h)		;6c5b
	ld h,0ffh		;6c5e
	ld (ix+007h),h		;6c60
	ld (ix+006h),l		;6c63
	call 0abddh		;6c66
	push iy			;6c69
	pop ix			;6c6b
	ret			;6c6d
	push ix			;6c6e
	pop iy			;6c70
	call 0ad76h		;6c72
	ld a,(iy+016h)		;6c75
	sub (iy+005h)		;6c78
	inc a			;6c7b
	inc a			;6c7c
	ld (ix+012h),a		;6c7d
	call 0abddh		;6c80
	call 0ad76h		;6c83
	ld a,(iy+005h)		;6c86
	inc a			;6c89
	ld (ix+012h),a		;6c8a
	ld a,(iy+00eh)		;6c8d
	add a,(iy+012h)		;6c90
	sub (iy+005h)		;6c93
	dec a			;6c96
	ld (ix+00eh),a		;6c97
	ld l,(iy+004h)		;6c9a
	ld h,0ffh		;6c9d
	ld (ix+005h),h		;6c9f
	ld (ix+004h),l		;6ca2
	call 0abddh		;6ca5
	push iy			;6ca8
	pop ix			;6caa
	ret			;6cac
	push ix			;6cad
	pop iy			;6caf
	call 0ad76h		;6cb1
	ld a,(iy+016h)		;6cb4
	sub (iy+005h)		;6cb7
	inc a			;6cba
	inc a			;6cbb
	ld (ix+012h),a		;6cbc
	ld a,(iy+017h)		;6cbf
	sub (iy+007h)		;6cc2
	inc a			;6cc5
	inc a			;6cc6
	ld (ix+013h),a		;6cc7
	call 0abddh		;6cca
	call 0ad76h		;6ccd
	ld a,(iy+016h)		;6cd0
	sub (iy+005h)		;6cd3
	inc a			;6cd6
	inc a			;6cd7
	ld (ix+012h),a		;6cd8
	ld a,(iy+007h)		;6cdb
	inc a			;6cde
	ld (ix+013h),a		;6cdf
	ld a,(iy+00fh)		;6ce2
	add a,(iy+013h)		;6ce5
	sub (iy+007h)		;6ce8
	dec a			;6ceb
	ld (ix+00fh),a		;6cec
	ld l,(iy+006h)		;6cef
	ld h,0ffh		;6cf2
	ld (ix+007h),h		;6cf4
	ld (ix+006h),l		;6cf7
	call 0abddh		;6cfa
	call 0ad76h		;6cfd
	ld a,(iy+005h)		;6d00
	inc a			;6d03
	ld (ix+012h),a		;6d04
	ld a,(iy+00eh)		;6d07
	add a,(iy+012h)		;6d0a
	sub (iy+005h)		;6d0d
	dec a			;6d10
	ld (ix+00eh),a		;6d11
	ld l,(iy+004h)		;6d14
	ld h,0ffh		;6d17
	ld (ix+005h),h		;6d19
	ld (ix+004h),l		;6d1c
	ld a,(iy+017h)		;6d1f
	sub (iy+007h)		;6d22
	inc a			;6d25
	inc a			;6d26
	ld (ix+013h),a		;6d27
	call 0abddh		;6d2a
	call 0ad76h		;6d2d
	ld a,(iy+005h)		;6d30
	inc a			;6d33
	ld (ix+012h),a		;6d34
	ld a,(iy+00eh)		;6d37
	add a,(iy+012h)		;6d3a
	sub (iy+005h)		;6d3d
	dec a			;6d40
	ld (ix+00eh),a		;6d41
	ld l,(iy+004h)		;6d44
	ld h,0ffh		;6d47
	ld (ix+005h),h		;6d49
	ld (ix+004h),l		;6d4c
	ld a,(iy+007h)		;6d4f
	inc a			;6d52
	ld (ix+013h),a		;6d53
	ld a,(iy+00fh)		;6d56
	add a,(iy+013h)		;6d59
	sub (iy+007h)		;6d5c
	dec a			;6d5f
	ld (ix+00fh),a		;6d60
	ld l,(iy+006h)		;6d63
	ld h,0ffh		;6d66
	ld (ix+007h),h		;6d68
	ld (ix+006h),l		;6d6b
	call 0abddh		;6d6e
	push iy			;6d71
	pop ix			;6d73
	ret			;6d75
	push iy			;6d76
	pop hl			;6d78
	ld ix,0e0c0h		;6d79
	ld de,0e0c0h		;6d7d
	ld bc,00020h		;6d80
	ldir			;6d83
	ret			;6d85
	push de			;6d86
	push af			;6d87
	ld a,b			;6d88
	add a,a			;6d89
	add a,a			;6d8a
	add a,a			;6d8b
	ld b,a			;6d8c
	ld a,c			;6d8d
	add a,a			;6d8e
	add a,a			;6d8f
	add a,a			;6d90
	ld c,a			;6d91
	ld a,l			;6d92
	ld d,a			;6d93
	add a,a			;6d94
	add a,a			;6d95
	add a,a			;6d96
	ld l,a			;6d97
	ld a,d			;6d98
	and 060h		;6d99
	add a,a			;6d9b
	push af			;6d9c
	ld a,h			;6d9d
	add a,a			;6d9e
	add a,a			;6d9f
	add a,a			;6da0
	ld h,a			;6da1
	pop af			;6da2
	pop de			;6da3
	bit 6,d			;6da4
	jr nz,l6dbeh		;6da6
	rlc d			;6da8
	rlc d			;6daa
	rlc d			;6dac
	rlc d			;6dae
	or d			;6db0
	pop de			;6db1
	push ix			;6db2
	push iy			;6db4
	call 0487ch		;6db6
	pop iy			;6db9
	pop ix			;6dbb
	ret			;6dbd
l6dbeh:
	or d			;6dbe
	rlca			;6dbf
	rlca			;6dc0
	and 00fh		;6dc1
	pop de			;6dc3
	push ix			;6dc4
	push iy			;6dc6
	call 04838h		;6dc8
	pop iy			;6dcb
	pop ix			;6dcd
	ret			;6dcf
	ld a,(ix+003h)		;6dd0
	and 007h		;6dd3
	ld h,a			;6dd5
	ld a,(ix+004h)		;6dd6
	ld d,a			;6dd9
	and 01fh		;6dda
	ld e,a			;6ddc
	xor d			;6ddd
	ld d,000h		;6dde
	ld l,a			;6de0
	add hl,hl		;6de1
	add hl,hl		;6de2
	add hl,hl		;6de3
	add hl,de		;6de4
	add hl,hl		;6de5
	add hl,hl		;6de6
	ld de,l6000h		;6de7
	add hl,de		;6dea
	ex de,hl		;6deb
	ld h,(ix+002h)		;6dec
	ld l,(ix+001h)		;6def
	ld a,(ix+000h)		;6df2
	and 01fh		;6df5
	call 0ae07h		;6df7
	ld a,c			;6dfa
	call 04c0eh		;6dfb
	ld a,(ix+005h)		;6dfe
	sub (ix+004h)		;6e01
	inc a			;6e04
	ld b,a			;6e05
	ret			;6e06
	ld c,a			;6e07
	ld a,h			;6e08
	add a,020h		;6e09
	ld h,a			;6e0b
l6e0ch:
	cp 080h			;6e0c
	ret c			;6e0e
	sub 020h		;6e0f
	ld h,a			;6e11
	inc c			;6e12
	jr l6e0ch		;6e13
	call 047d2h		;6e15
l6e18h:
	ld a,(ix+000h)		;6e18
	or a			;6e1b
	ret z			;6e1c
	call 0ae27h		;6e1d
	ld de,00006h		;6e20
	add ix,de		;6e23
	jr l6e18h		;6e25
	ld a,(ix+000h)		;6e27
	and 007h		;6e2a
	ret z			;6e2c
	dec a			;6e2d
	dec a			;6e2e
	jr z,l6e4fh		;6e2f
	dec a			;6e31
	jp z,0ae66h		;6e32
	jp p,0ae7dh		;6e35
	ld b,001h		;6e38
	call 0ae8ch		;6e3a
	ld de,00002h		;6e3d
	add ix,de		;6e40
	call 0add0h		;6e42
	bit 7,(ix+000h)		;6e45
	jp nz,0af24h		;6e49
	jp 0af0eh		;6e4c
l6e4fh:
	ld b,002h		;6e4f
	call 0ae8ch		;6e51
	ld de,00003h		;6e54
	add ix,de		;6e57
	call 0add0h		;6e59
	bit 7,(ix+000h)		;6e5c
	jp nz,0af7dh		;6e60
	jp 0af67h		;6e63
	ld b,004h		;6e66
	call 0ae8ch		;6e68
	ld de,00005h		;6e6b
	add ix,de		;6e6e
	call 0add0h		;6e70
	bit 7,(ix+000h)		;6e73
	jp nz,0afdeh		;6e77
	jp 0afc8h		;6e7a
	inc ix			;6e7d
	call 0add0h		;6e7f
	bit 7,(ix+000h)		;6e82
	jp nz,0b058h		;6e86
	jp 0493dh		;6e89
	push ix			;6e8c
	pop hl			;6e8e
	inc hl			;6e8f
	ld de,0ca00h		;6e90
l6e93h:
	ld a,(hl)		;6e93
	ld c,a			;6e94
	rrca			;6e95
	rrca			;6e96
	rrca			;6e97
	rrca			;6e98
	and 00fh		;6e99
	ld (de),a		;6e9b
	inc hl			;6e9c
	inc de			;6e9d
	ld a,c			;6e9e
	and 00fh		;6e9f
	ld (de),a		;6ea1
	inc de			;6ea2
	djnz l6e93h		;6ea3
	ret			;6ea5
	call 04c0eh		;6ea6
	ld de,02000h		;6ea9
	add hl,de		;6eac
	ld de,00040h		;6ead
l6eb0h:
	ld c,(hl)		;6eb0
	inc hl			;6eb1
	ld b,(hl)		;6eb2
	inc hl			;6eb3
	ld a,b			;6eb4
	and c			;6eb5
	inc a			;6eb6
	ret z			;6eb7
	inc a			;6eb8
	jr z,l6ec2h		;6eb9
	push hl			;6ebb
	push de			;6ebc
	call 0aeceh		;6ebd
	pop de			;6ec0
	pop hl			;6ec1
l6ec2h:
	ld a,d			;6ec2
	inc a			;6ec3
	ld d,a			;6ec4
	cp 020h			;6ec5
	jr nz,l6eb0h		;6ec7
	ld d,000h		;6ec9
	inc e			;6ecb
	jr l6eb0h		;6ecc
	push de			;6ece
	call 0aed7h		;6ecf
	pop de			;6ed2
	call 0aef0h		;6ed3
	ret			;6ed6
	ld a,c			;6ed7
	ld h,a			;6ed8
	and 0e0h		;6ed9
	rr b			;6edb
	rra			;6edd
	rr b			;6ede
	rra			;6ee0
	rr b			;6ee1
	rra			;6ee3
	rrca			;6ee4
	rrca			;6ee5
	and 03fh		;6ee6
	add a,018h		;6ee8
	ld l,a			;6eea
	ld a,h			;6eeb
	and 01fh		;6eec
	ld h,a			;6eee
	ret			;6eef
	push hl			;6ef0
	ld a,e			;6ef1
	ld h,a			;6ef2
	add a,a			;6ef3
	add a,a			;6ef4
	add a,a			;6ef5
	ld e,a			;6ef6
	ld a,h			;6ef7
	and 060h		;6ef8
	rlca			;6efa
	rlca			;6efb
	rlca			;6efc
	res 7,a			;6efd
	push af			;6eff
	ld a,d			;6f00
	add a,a			;6f01
	add a,a			;6f02
	add a,a			;6f03
	ld d,a			;6f04
	pop af			;6f05
	pop hl			;6f06
	ld bc,00101h		;6f07
	call 0ad86h		;6f0a
	ret			;6f0d
	push bc			;6f0e
	push de			;6f0f
	exx			;6f10
	ld hl,0cb00h		;6f11
	exx			;6f14
l6f15h:
	push bc			;6f15
	call 0af3ah		;6f16
	pop bc			;6f19
	djnz l6f15h		;6f1a
	pop de			;6f1c
	pop bc			;6f1d
	ld hl,0cb00h		;6f1e
	jp 0493dh		;6f21
	push bc			;6f24
	push de			;6f25
	exx			;6f26
	ld hl,0cb00h		;6f27
	exx			;6f2a
l6f2bh:
	push bc			;6f2b
	call 0af3ah		;6f2c
	pop bc			;6f2f
	djnz l6f2bh		;6f30
	pop de			;6f32
	pop bc			;6f33
	ld hl,0cb00h		;6f34
	jp 0b058h		;6f37
	ld b,008h		;6f3a
l6f3ch:
	ld e,(hl)		;6f3c
	inc hl			;6f3d
	push bc			;6f3e
	call 0af46h		;6f3f
	pop bc			;6f42
	djnz l6f3ch		;6f43
	ret			;6f45
	ld b,004h		;6f46
l6f48h:
	xor a			;6f48
	rl e			;6f49
	rla			;6f4b
	exx			;6f4c
	ld e,a			;6f4d
	ld d,0cah		;6f4e
	ld a,(de)		;6f50
	add a,a			;6f51
	add a,a			;6f52
	add a,a			;6f53
	add a,a			;6f54
	ld c,a			;6f55
	exx			;6f56
	xor a			;6f57
	rl e			;6f58
	rla			;6f5a
	exx			;6f5b
	ld e,a			;6f5c
	ld d,0cah		;6f5d
	ld a,(de)		;6f5f
	or c			;6f60
	ld (hl),a		;6f61
	inc hl			;6f62
	exx			;6f63
	djnz l6f48h		;6f64
	ret			;6f66
	push bc			;6f67
	push de			;6f68
	exx			;6f69
	ld hl,0cb00h		;6f6a
	exx			;6f6d
l6f6eh:
	push bc			;6f6e
	call 0af93h		;6f6f
	pop bc			;6f72
	djnz l6f6eh		;6f73
	pop de			;6f75
	pop bc			;6f76
	ld hl,0cb00h		;6f77
	jp 0493dh		;6f7a
	push bc			;6f7d
	push de			;6f7e
	exx			;6f7f
	ld hl,0cb00h		;6f80
	exx			;6f83
l6f84h:
	push bc			;6f84
	call 0af93h		;6f85
	pop bc			;6f88
	djnz l6f84h		;6f89
	pop de			;6f8b
	pop bc			;6f8c
	ld hl,0cb00h		;6f8d
	jp 0b058h		;6f90
	ld b,008h		;6f93
l6f95h:
	push bc			;6f95
	call 0af9dh		;6f96
	pop bc			;6f99
	djnz l6f95h		;6f9a
	ret			;6f9c
	ld b,004h		;6f9d
	ld e,(hl)		;6f9f
	inc hl			;6fa0
	ld d,(hl)		;6fa1
	inc hl			;6fa2
l6fa3h:
	xor a			;6fa3
	rl d			;6fa4
	rla			;6fa6
	rl e			;6fa7
	rla			;6fa9
	exx			;6faa
	ld e,a			;6fab
	ld d,0cah		;6fac
	ld a,(de)		;6fae
	add a,a			;6faf
	add a,a			;6fb0
	add a,a			;6fb1
	add a,a			;6fb2
	ld c,a			;6fb3
	exx			;6fb4
	xor a			;6fb5
	rl d			;6fb6
	rla			;6fb8
	rl e			;6fb9
	rla			;6fbb
	exx			;6fbc
	ld e,a			;6fbd
	ld d,0cah		;6fbe
	ld a,(de)		;6fc0
	or c			;6fc1
	ld (hl),a		;6fc2
	inc hl			;6fc3
	exx			;6fc4
	djnz l6fa3h		;6fc5
	ret			;6fc7
	push bc			;6fc8
	push de			;6fc9
	exx			;6fca
	ld hl,0cb00h		;6fcb
	exx			;6fce
l6fcfh:
	push bc			;6fcf
	call 0aff4h		;6fd0
	pop bc			;6fd3
	djnz l6fcfh		;6fd4
	pop de			;6fd6
	pop bc			;6fd7
	ld hl,0cb00h		;6fd8
	jp 0493dh		;6fdb
	push bc			;6fde
	push de			;6fdf
	exx			;6fe0
	ld hl,0cb00h		;6fe1
	exx			;6fe4
l6fe5h:
	push bc			;6fe5
	call 0aff4h		;6fe6
	pop bc			;6fe9
	djnz l6fe5h		;6fea
	pop de			;6fec
	pop bc			;6fed
	ld hl,0cb00h		;6fee
	jp 0b058h		;6ff1
	ld b,008h		;6ff4
l6ff6h:
	push bc			;6ff6
	call 0affeh		;6ff7
	pop bc			;6ffa
	djnz l6ff6h		;6ffb
	ret			;6ffd
	ld b,004h		;6ffe
	ld e,(hl)		;7000
	inc hl			;7001
	ld d,(hl)		;7002
	inc hl			;7003
	ld c,(hl)		;7004
	inc hl			;7005
l7006h:
	xor a			;7006
	rl c			;7007
	rla			;7009
	rl d			;700a
	rla			;700c
	rl e			;700d
	rla			;700f
	exx			;7010
	ld e,a			;7011
	ld d,0cah		;7012
	ld a,(de)		;7014
	add a,a			;7015
	add a,a			;7016
	add a,a			;7017
	add a,a			;7018
	ld c,a			;7019
	exx			;701a
	xor a			;701b
	rl c			;701c
	rla			;701e
	rl d			;701f
	rla			;7021
	rl e			;7022
	rla			;7024
	exx			;7025
	ld e,a			;7026
	ld d,0cah		;7027
	ld a,(de)		;7029
	or c			;702a
	ld (hl),a		;702b
	inc hl			;702c
	exx			;702d
	djnz l7006h		;702e
	ret			;7030
	push de			;7031
	ld a,(00007h)		;7032
	ld c,a			;7035
	ld b,008h		;7036
l7038h:
	push bc			;7038
	ex de,hl		;7039
	xor a			;703a
	call 046f0h		;703b
	ex de,hl		;703e
	ld b,004h		;703f
l7041h:
	ld a,(hl)		;7041
	dec hl			;7042
	rrca			;7043
	rrca			;7044
	rrca			;7045
	rrca			;7046
	out (c),a		;7047
	djnz l7041h		;7049
	ld c,008h		;704b
	add hl,bc		;704d
	ex de,hl		;704e
	ld c,080h		;704f
	add hl,bc		;7051
	ex de,hl		;7052
	pop bc			;7053
	djnz l7038h		;7054
	pop de			;7056
	ret			;7057
	inc hl			;7058
	inc hl			;7059
	inc hl			;705a
l705bh:
	push bc			;705b
	call 0b031h		;705c
	ld a,004h		;705f
	add a,e			;7061
	cp 080h			;7062
	jr nz,l706bh		;7064
	ld a,004h		;7066
	add a,d			;7068
	ld d,a			;7069
	xor a			;706a
l706bh:
	ld e,a			;706b
	pop bc			;706c
	djnz l705bh		;706d
	ret			;706f
	rst 38h			;7070
	rst 38h			;7071
	rst 38h			;7072
	rst 38h			;7073
	nop			;7074
	nop			;7075
	nop			;7076
	nop			;7077
	ld bc,00100h		;7078
	nop			;707b
	ld (bc),a		;707c
	nop			;707d
	ld (bc),a		;707e
	nop			;707f
	inc bc			;7080
	nop			;7081
	inc bc			;7082
	nop			;7083
	inc b			;7084
	nop			;7085
	inc b			;7086
	nop			;7087
	dec b			;7088
	nop			;7089
	dec b			;708a
	nop			;708b
	ld b,000h		;708c
	ld b,000h		;708e
	rlca			;7090
	nop			;7091
	rlca			;7092
	nop			;7093
	ex af,af'		;7094
	nop			;7095
	ex af,af'		;7096
	nop			;7097
	add hl,bc		;7098
	nop			;7099
	add hl,bc		;709a
	nop			;709b
	ld a,(bc)		;709c
	nop			;709d
	ld a,(bc)		;709e
	nop			;709f
	nop			;70a0
	ld bc,00201h		;70a1
	nop			;70a4
	inc bc			;70a5
	ld bc,00004h		;70a6
	dec b			;70a9
	ld bc,00006h		;70aa
	rlca			;70ad
	ld bc,00008h		;70ae
	add hl,bc		;70b1
	ld bc,0000ah		;70b2
	dec bc			;70b5
	nop			;70b6
	inc c			;70b7
	ld bc,0010bh		;70b8
	inc c			;70bb
	nop			;70bc
	dec c			;70bd
	ld bc,0000eh		;70be
	rrca			;70c1
	nop			;70c2
	djnz l70dah		;70c3
	dec h			;70c5
	rra			;70c6
	ccf			;70c7
	dec d			;70c8
	jr nz,l70eah		;70c9
	add hl,hl		;70cb
	ld d,004h		;70cc
	rra			;70ce
	inc c			;70cf
	ld d,001h		;70d0
	ld a,(de)		;70d2
	inc bc			;70d3
	inc e			;70d4
	nop			;70d5
	ld e,003h		;70d6
	dec d			;70d8
	add hl,de		;70d9
l70dah:
	add hl,de		;70da
	dec de			;70db
	dec d			;70dc
	inc e			;70dd
	inc e			;70de
	ld e,01ah		;70df
	ld a,(de)		;70e1
	inc e			;70e2
	dec de			;70e3
	dec e			;70e4
	inc e			;70e5
	rra			;70e6
	ld e,01dh		;70e7
	ld a,(de)		;70e9
l70eah:
	ld e,01bh		;70ea
	rra			;70ec
	dec de			;70ed
	rra			;70ee
	dec de			;70ef
	ld (bc),a		;70f0
	ld bc,00c15h		;70f1
	ld (bc),a		;70f4
	dec c			;70f5
	dec d			;70f6
	jr l710fh		;70f7
	dec c			;70f9
	rra			;70fa
	jr l70feh		;70fb
	add hl,de		;70fd
l70feh:
	ld a,(bc)		;70fe
	rra			;70ff
	ld bc,01421h		;7100
	inc l			;7103
	ld c,021h		;7104
	inc d			;7106
	inc l			;7107
	rlca			;7108
	ld hl,02c14h		;7109
	nop			;710c
	dec l			;710d
	inc de			;710e
l710fh:
	scf			;710f
	dec bc			;7110
	add hl,de		;7111
	inc d			;7112
	rra			;7113
	nop			;7114
	jr c,l711bh		;7115
	dec sp			;7117
	dec b			;7118
	jr c,l7120h		;7119
l711bh:
	jr c,l7122h		;711b
	add hl,sp		;711d
	dec b			;711e
	add hl,sp		;711f
l7120h:
	ld b,038h		;7120
l7122h:
	ld b,038h		;7122
	ld b,039h		;7124
	ld b,039h		;7126
	nop			;7128
	inc a			;7129
	nop			;712a
	inc a			;712b
	rlca			;712c
	jr c,$+9		;712d
	add hl,sp		;712f
	nop			;7130
	dec a			;7131
	nop			;7132
	ccf			;7133
	ld bc,0013ch		;7134
	ccf			;7137
	ld (bc),a		;7138
	inc a			;7139
	inc b			;713a
	ccf			;713b
	ex af,af'		;713c
	add hl,sp		;713d
	ld a,(bc)		;713e
	dec sp			;713f
	dec b			;7140
	ld a,(03b07h)		;7141
	dec b			;7144
	inc a			;7145
	rlca			;7146
	ld a,018h		;7147
	ld (02218h),hl		;7149
	rla			;714c
	ld (02217h),hl		;714d
	add hl,de		;7150
	ld hl,02119h		;7151
	add hl,de		;7154
	jr nz,l7170h		;7155
	jr nz,l7171h		;7157
	jr nz,$+26		;7159
	ld hl,0201ah		;715b
	ld a,(de)		;715e
	ld hl,02017h		;715f
	rla			;7162
	ld hl,02016h		;7163
	ld d,021h		;7166
	dec d			;7168
	jr nz,$+23		;7169
	ld hl,02216h		;716b
	ld d,023h		;716e
l7170h:
	dec d			;7170
l7171h:
	ld (02315h),hl		;7171
	dec e			;7174
	jr nz,l7194h		;7175
	jr nz,$+30		;7177
	ld (0231ch),hl		;7179
	inc e			;717c
	jr nz,l719bh		;717d
	ld hl,0221dh		;717f
	dec e			;7182
	inc hl			;7183
	ld e,021h		;7184
	ld e,022h		;7186
	rra			;7188
	jr nz,l71aah		;7189
	ld hl,0231eh		;718b
	rra			;718e
	inc h			;718f
	rra			;7190
	inc hl			;7191
	rra			;7192
	inc h			;7193
l7194h:
	ld bc,01401h		;7194
	inc c			;7197
	ld bc,0140dh		;7198
l719bh:
	jr $+24			;719b
	djnz $+33		;719d
	dec de			;719f
	dec d			;71a0
	nop			;71a1
	inc e			;71a2
	rlca			;71a3
	inc e			;71a4
	ex af,af'		;71a5
	rra			;71a6
	dec bc			;71a7
	dec e			;71a8
	dec b			;71a9
l71aah:
	rra			;71aa
	rlca			;71ab
	dec e			;71ac
	inc bc			;71ad
	ld e,004h		;71ae
	dec e			;71b0
	ld bc,0021eh		;71b1
	dec e			;71b4
	ld bc,0011dh		;71b5
	rra			;71b8
	ld bc,0011eh		;71b9
	rra			;71bc
	ld bc,0011fh		;71bd
	dec d			;71c0
	ex af,af'		;71c1
	add hl,de		;71c2
	rrca			;71c3
	nop			;71c4
	add hl,de		;71c5
	ld b,01fh		;71c6
	rlca			;71c8
	add hl,de		;71c9
	dec c			;71ca
	rra			;71cb
	ld c,019h		;71cc
	ld de,0121ch		;71ce
	add hl,de		;71d1
	dec d			;71d2
	inc e			;71d3
	ld c,01dh		;71d4
	rrca			;71d6
	ld e,010h		;71d7
	dec e			;71d9
	djnz $+32		;71da
	ld de,0131dh		;71dc
	ld e,018h		;71df
	inc e			;71e1
	dec de			;71e2
	inc hl			;71e3
	inc e			;71e4
	inc e			;71e5
	rra			;71e6
	inc hl			;71e7
	inc d			;71e8
	rra			;71e9
	rla			;71ea
	ld h,010h		;71eb
	rra			;71ed
	inc de			;71ee
	ld h,00ch		;71ef
	jr nz,$+17		;71f1
	daa			;71f3
	inc b			;71f4
	jr nz,$+13		;71f5
	daa			;71f7
	nop			;71f8
	jr z,l71ffh		;71f9
	jr z,l71fdh		;71fb
l71fdh:
	add hl,hl		;71fd
	ex af,af'		;71fe
l71ffh:
	add hl,hl		;71ff
	nop			;7200
	ld hl,(02a07h)		;7201
	nop			;7204
	dec hl			;7205
	add hl,bc		;7206
	dec hl			;7207
	nop			;7208
	inc l			;7209
	ld a,(bc)		;720a
	inc l			;720b
	nop			;720c
	dec l			;720d
	add hl,bc		;720e
	dec l			;720f
	nop			;7210
	ld l,00ah		;7211
	ld l,000h		;7213
	cpl			;7215
	rlca			;7216
	cpl			;7217
	nop			;7218
	jr nc,l7221h		;7219
	jr nc,l721dh		;721b
l721dh:
	ld sp,03107h		;721d
	nop			;7220
l7221h:
	ld (03207h),a		;7221
	nop			;7224
	inc sp			;7225
	ld b,033h		;7226
	nop			;7228
	inc (hl)		;7229
	add hl,bc		;722a
	inc (hl)		;722b
	nop			;722c
	dec (hl)		;722d
	ld b,035h		;722e
	nop			;7230
	ld (hl),007h		;7231
	ld (hl),000h		;7233
	scf			;7235
	rrca			;7236
	scf			;7237
	nop			;7238
	jr c,$+10		;7239
	jr c,l723dh		;723b
l723dh:
	add hl,sp		;723d
	rlca			;723e
	add hl,sp		;723f
	nop			;7240
	ld a,(03a08h)		;7241
	nop			;7244
	dec sp			;7245
	ld bc,0003bh		;7246
	inc a			;7249
	dec b			;724a
	inc a			;724b
	nop			;724c
	dec a			;724d
	inc c			;724e
	dec a			;724f
	ex af,af'		;7250
	jr c,l7267h		;7251
	jr c,l7255h		;7253
l7255h:
	jr nz,l7266h		;7255
	jr nz,$+10		;7257
	inc a			;7259
	ld de,0053ch		;725a
	ccf			;725d
	inc d			;725e
	ccf			;725f
	ld bc,00a0eh		;7260
	ld hl,(0048ch)		;7263
l7266h:
	xor l			;7266
l7267h:
	xor l			;7267
	ld bc,00a0eh		;7268
	jp nz,001bch		;726b
	ret pe			;726e
	jp p,02302h		;726f
	ld b,l			;7272
	ld a,(bc)		;7273
	ld (de),a		;7274
	ld (hl),a		;7275
	nop			;7276
	nop			;7277
	ld a,a			;7278
	ld (bc),a		;7279
	inc hl			;727a
	ld b,l			;727b
	ld a,(bc)		;727c
	ld (bc),a		;727d
	ld h,l			;727e
	ld bc,0c300h		;727f
	ld (bc),a		;7282
	inc hl			;7283
	ld b,l			;7284
	ld a,(bc)		;7285
	ld (de),a		;7286
	ld a,a			;7287
	nop			;7288
	add a,b			;7289
	rst 38h			;728a
	ld (bc),a		;728b
	ld l,b			;728c
	rst 28h			;728d
	ld a,(bc)		;728e
	ld (de),a		;728f
	add a,a			;7290
	ld bc,0cbc4h		;7291
	ld (bc),a		;7294
	ld h,a			;7295
	ret p			;7296
	ld a,(bc)		;7297
	sub d			;7298
	add a,a			;7299
	ld bc,0d7cch		;729a
	ld (bc),a		;729d
	ld a,(bc)		;729e
	ret po			;729f
	ld a,(bc)		;72a0
	ld b,d			;72a1
	cp h			;72a2
	inc b			;72a3
	ret c			;72a4
	rst 18h			;72a5
	ld (bc),a		;72a6
	dec bc			;72a7
	call 0520ah		;72a8
	adc a,b			;72ab
	ld bc,0fff3h		;72ac
	ld (bc),a		;72af
	dec bc			;72b0
	call 0420ah		;72b1
	ld (hl),c		;72b4
	ld (bc),a		;72b5
	nop			;72b6
	ld de,00902h		;72b7
	xor a			;72ba
	ld a,(bc)		;72bb
	and d			;72bc
	adc a,d			;72bd
	inc bc			;72be
	push de			;72bf
	ret pe			;72c0
	ld (bc),a		;72c1
	add hl,bc		;72c2
	xor a			;72c3
	adc a,d			;72c4
	and d			;72c5
	adc a,d			;72c6
	inc bc			;72c7
	jp (hl)			;72c8
	call m,00103h		;72c9
	inc hl			;72cc
	ld b,l			;72cd
	nop			;72ce
	ld a,(bc)		;72cf
	ld h,d			;72d0
	ld (hl),d		;72d1
	ld (bc),a		;72d2
	ld (de),a		;72d3
	ld (hl),003h		;72d4
	ld b,078h		;72d6
	rst 28h			;72d8
	nop			;72d9
	ld a,(bc)		;72da
	jp c,00275h		;72db
	scf			;72de
	ld b,e			;72df
	inc bc			;72e0
	ld bc,0deach		;72e1
	ret p			;72e4
	ld a,(bc)		;72e5
	jp pe,004b9h		;72e6
	ret nz			;72e9
	ret c			;72ea
	inc bc			;72eb
	ld b,078h		;72ec
	sbc a,(hl)		;72ee
	ret p			;72ef
	ld a,(bc)		;72f0
	ld (00389h),hl		;72f1
	nop			;72f4
	inc bc			;72f5
	inc bc			;72f6
	dec bc			;72f7
	call 000efh		;72f8
	ld a,(bc)		;72fb
	add a,d			;72fc
	adc a,c			;72fd
	inc bc			;72fe
	inc b			;72ff
	inc d			;7300
	inc bc			;7301
	ld b,078h		;7302
	rst 28h			;7304
	nop			;7305
	ld a,(bc)		;7306
	jp po,0038bh		;7307
	defb 0fdh,0ffh,003h ;illegal sequence	;730a
	ld b,078h		;730d
	rst 28h			;730f
	nop			;7310
	adc a,d			;7311
l7312h:
	jp po,0048bh		;7312
	ld d,l			;7315
	ld d,a			;7316
	inc bc			;7317
l7318h:
	dec bc			;7318
	call 000e0h		;7319
	ld a,(bc)		;731c
	ld (0048ch),a		;731d
	or b			;7320
	or l			;7321
	inc bc			;7322
	dec bc			;7323
	call 000f0h		;7324
	ld a,(bc)		;7327
	jp nz,0048ch		;7328
	cp h			;732b
	cp a			;732c
	inc bc			;732d
	dec bc			;732e
	call 000e0h		;732f
	ld a,(bc)		;7332
	and d			;7333
	or b			;7334
	inc b			;7335
	or (hl)			;7336
	cp e			;7337
	inc bc			;7338
	ld (hl),078h		;7339
	sbc a,(hl)		;733b
	ret p			;733c
	ld a,(bc)		;733d
	ld (003b1h),a		;733e
	cp e			;7341
	call nc,00203h		;7342
	ld h,a			;7345
	adc a,c			;7346
	rst 28h			;7347
	ld a,(bc)		;7348
	and d			;7349
	or e			;734a
	inc b			;734b
	nop			;734c
	ld hl,(00203h)		;734d
	ld h,a			;7350
	adc a,c			;7351
	rst 28h			;7352
	adc a,d			;7353
	and d			;7354
	or e			;7355
	inc b			;7356
	ld e,b			;7357
	add a,d			;7358
	inc bc			;7359
	ld b,078h		;735a
	rst 28h			;735c
	nop			;735d
	ld a,(bc)		;735e
	xor d			;735f
	or a			;7360
	inc b			;7361
	dec a			;7362
	ld d,h			;7363
	inc bc			;7364
	ld b,078h		;7365
	rst 28h			;7367
	nop			;7368
	adc a,d			;7369
	xor d			;736a
	or a			;736b
	inc b			;736c
	sub l			;736d
	xor h			;736e
	inc b			;736f
	ld a,(bc)		;7370
	ld (0028dh),hl		;7371
	add a,e			;7374
	rst 38h			;7375
	inc b			;7376
	ld a,(bc)		;7377
	jp nz,0039ch		;7378
	dec d			;737b
	or e			;737c
	nop			;737d
	ld bc,0150fh		;737e
	ld l,h			;7381
	ld l,d			;7382
	nop			;7383
	adc a,c			;7384
	adc a,l			;7385
	ld (bc),a		;7386
	ld (bc),a		;7387
	ccf			;7388
	dec d			;7389
	call po,00068h		;738a
	ld (hl),h		;738d
	add a,c			;738e
	ld (bc),a		;738f
	dec c			;7390
	rst 28h			;7391
	dec d			;7392
	sub h			;7393
	ld l,d			;7394
	nop			;7395
	adc a,(hl)		;7396
	sub l			;7397
	ld (bc),a		;7398
	inc b			;7399
	cp a			;739a
	dec d			;739b
	inc d			;739c
	ld l,e			;739d
	nop			;739e
	sub (hl)		;739f
	and c			;73a0
	ld (bc),a		;73a1
	ld l,b			;73a2
	rst 28h			;73a3
	ld a,(bc)		;73a4
	ld (de),a		;73a5
	add a,a			;73a6
	nop			;73a7
	di			;73a8
	jp m,02302h		;73a9
	ld b,l			;73ac
	ld a,(bc)		;73ad
	ld (de),a		;73ae
	ld a,a			;73af
	ld bc,l7f00h		;73b0
	ld (bc),a		;73b3
	inc hl			;73b4
	ld b,l			;73b5
	ld a,(bc)		;73b6
	ld (bc),a		;73b7
	ld h,l			;73b8
	ld (bc),a		;73b9
	nop			;73ba
	jp 00103h		;73bb
	inc hl			;73be
	ld b,l			;73bf
	nop			;73c0
	ld a,(bc)		;73c1
	ld h,d			;73c2
	ld (hl),d		;73c3
	nop			;73c4
	adc a,0f2h		;73c5
	inc bc			;73c7
	ld bc,0cd7ah		;73c8
	rst 28h			;73cb
	dec d			;73cc
	inc b			;73cd
	ld e,(hl)		;73ce
	nop			;73cf
	nop			;73d0
	add hl,sp		;73d1
	inc bc			;73d2
	ld b,078h		;73d3
	cp l			;73d5
	rst 28h			;73d6
	dec d			;73d7
	ld (hl),h		;73d8
	ld h,e			;73d9
	nop			;73da
	ld a,(00352h)		;73db
	ld bc,0cd9ah		;73de
	rst 28h			;73e1
	dec d			;73e2
	call z,00065h		;73e3
	ld d,e			;73e6
	ld h,e			;73e7
	inc bc			;73e8
	ld b,078h		;73e9
	cp l			;73eb
	rst 28h			;73ec
	dec d			;73ed
	ld h,h			;73ee
	ld h,a			;73ef
	nop			;73f0
	ld h,h			;73f1
	ld (hl),e		;73f2
	inc bc			;73f3
	ld (bc),a		;73f4
	ld (hl),08eh		;73f5
	ret p			;73f7
	dec d			;73f8
	call nz,00069h		;73f9
	add a,d			;73fc
	adc a,b			;73fd
	inc bc			;73fe
	ld (bc),a		;73ff
	inc (hl)		;7400
l7401h:
	cp h			;7401
	rst 28h			;7402
	dec d			;7403
	call nc,0006bh		;7404
	and d			;7407
	call 00100h		;7408
	add hl,bc		;740b
	dec d			;740c
	call p,0006fh		;740d
	ld bc,00209h		;7410
	ld a,(bc)		;7413
	cp h			;7414
	dec d			;7415
	inc a			;7416
	ld (hl),b		;7417
	nop			;7418
	ld a,(bc)		;7419
	inc c			;741a
	ld (bc),a		;741b
	dec b			;741c
	ld a,c			;741d
	dec d			;741e
	ld l,h			;741f
	ld (hl),b		;7420
	nop			;7421
	dec c			;7422
	ld c,002h		;7423
	inc bc			;7425
	ld c,c			;7426
	dec d			;7427
	adc a,h			;7428
	ld (hl),b		;7429
	nop			;742a
	rrca			;742b
	ld (de),a		;742c
	ld (bc),a		;742d
	dec bc			;742e
	call 0cc15h		;742f
	ld (hl),b		;7432
	nop			;7433
	inc de			;7434
	dec hl			;7435
	inc bc			;7436
	ld a,(bc)		;7437
	cp h			;7438
	sbc a,0ffh		;7439
	dec d			;743b
	ld e,h			;743c
	ld (hl),d		;743d
	nop			;743e
	inc l			;743f
	ld (00303h),a		;7440
	ld b,l			;7443
	ld h,a			;7444
	adc a,c			;7445
	dec d			;7446
	inc b			;7447
	ld (hl),e		;7448
	nop			;7449
	inc sp			;744a
	ld d,l			;744b
	inc bc			;744c
	inc b			;744d
	ld d,(hl)		;744e
	ld a,b			;744f
	sbc a,a			;7450
	dec d			;7451
	ld c,h			;7452
	halt			;7453
	nop			;7454
	ld d,(hl)		;7455
	ld h,l			;7456
	inc bc			;7457
	inc bc			;7458
	ld d,(hl)		;7459
	ld a,b			;745a
	sbc a,a			;745b
	dec d			;745c
	call z,00077h		;745d
	ld h,(hl)		;7460
	ld l,l			;7461
	inc bc			;7462
	inc bc			;7463
	ld b,l			;7464
	ld a,b			;7465
	sbc a,a			;7466
	dec d			;7467
	adc a,h			;7468
	ld a,b			;7469
	nop			;746a
	ld l,(hl)		;746b
	sub c			;746c
	inc bc			;746d
	inc (hl)		;746e
	ld d,(hl)		;746f
	ld a,b			;7470
	sbc a,a			;7471
	dec d			;7472
	call pe,0007bh		;7473
	sub d			;7476
	sbc a,a			;7477
	inc b			;7478
	dec d			;7479
	inc a			;747a
	ld a,l			;747b
	nop			;747c
	and b			;747d
	or c			;747e
	nop			;747f
	nop			;7480
	ret nc			;7481
	ld (hl),a		;7482
	rst 10h			;7483
	ld b,h			;7484
	inc d			;7485
	jr nc,$+35		;7486
	ld b,c			;7488
	ld (04452h),a		;7489
	ld h,e			;748c
	ld d,l			;748d
	ld bc,00262h		;748e
	ld (hl),e		;7491
	inc b			;7492
	add a,l			;7493
	inc bc			;7494
	sub b			;7495
	rlca			;7496
	and b			;7497
	ld d,b			;7498
	or b			;7499
	ld (hl),b		;749a
	call nz,0d770h		;749b
	ld (hl),a		;749e
	rst 20h			;749f
	nop			;74a0
	ret p			;74a1
	rst 38h			;74a2
	djnz l74b5h		;74a3
	jr nc,$+35		;74a5
	ld b,c			;74a7
	ld (04452h),a		;74a8
	ld h,e			;74ab
	ld d,l			;74ac
	rst 38h			;74ad
	ld (de),a		;74ae
	ld h,c			;74af
	inc hl			;74b0
	ld (hl),d		;74b1
	inc (hl)		;74b2
	add a,e			;74b3
	ld (hl),b		;74b4
l74b5h:
	sub b			;74b5
	rlca			;74b6
	and b			;74b7
	rst 38h			;74b8
	ld h,l			;74b9
	dec d			;74ba
	jr nc,l74deh		;74bb
	ld b,c			;74bd
	ld (04452h),a		;74be
	ld h,e			;74c1
	ld d,l			;74c2
	ld (bc),a		;74c3
	ld h,c			;74c4
	dec d			;74c5
	ld (hl),h		;74c6
	ld (00282h),a		;74c7
	sub b			;74ca
	ld b,0a0h		;74cb
	ld (hl),a		;74cd
	rst 20h			;74ce
	rst 38h			;74cf
	ld (00212h),hl		;74d0
	ld h,c			;74d3
	inc de			;74d4
	ld (hl),d		;74d5
	inc h			;74d6
	add a,e			;74d7
	ld (hl),b		;74d8
	sub b			;74d9
	rlca			;74da
	and b			;74db
	rst 38h			;74dc
	inc bc			;74dd
l74deh:
	ld de,02000h		;74de
	ld bc,00230h		;74e1
	ld b,b			;74e4
	inc bc			;74e5
	ld d,c			;74e6
	nop			;74e7
	ld h,b			;74e8
	ld (bc),a		;74e9
	ld (hl),b		;74ea
	ld bc,00180h		;74eb
	sub b			;74ee
	ld (bc),a		;74ef
	and b			;74f0
	inc d			;74f1
	jp po,033ffh		;74f2
	inc de			;74f5
	ld bc,00322h		;74f6
	inc (hl)		;74f9
	jr nc,l753ch		;74fa
	ld d,l			;74fc
	ld (hl),l		;74fd
	ld (hl),b		;74fe
	or b			;74ff
	rst 38h			;7500
	nop			;7501
	djnz l7504h		;7502
l7504h:
	jr nz,l7506h		;7504
l7506h:
	jr nc,l7508h		;7506
l7508h:
	ld b,b			;7508
	nop			;7509
	ld d,b			;750a
	nop			;750b
	ld h,b			;750c
	nop			;750d
	ld (hl),b		;750e
	nop			;750f
	add a,b			;7510
	nop			;7511
	sub b			;7512
	nop			;7513
	and b			;7514
	nop			;7515
	or b			;7516
	nop			;7517
	ret nz			;7518
	nop			;7519
	ret nc			;751a
	nop			;751b
	ret po			;751c
	nop			;751d
	ret p			;751e
	rst 38h			;751f
	ex af,af'		;7520
	add a,b			;7521
	or h			;7522
	ex af,af'		;7523
	sbc a,b			;7524
	or h			;7525
	ex af,af'		;7526
	and e			;7527
	or h			;7528
	ex af,af'		;7529
	xor (hl)		;752a
	or h			;752b
	rrca			;752c
	ld c,d			;752d
	nop			;752e
l752fh:
	dec h			;752f
	ld d,0b7h		;7530
	nop			;7532
	nop			;7533
	nop			;7534
	nop			;7535
	ld bc,0b586h		;7536
	nop			;7539
	nop			;753a
	rlca			;753b
l753ch:
	nop			;753c
	inc b			;753d
	ld c,c			;753e
	or (hl)			;753f
	ret z			;7540
	ex af,af'		;7541
	inc bc			;7542
	nop			;7543
	inc bc			;7544
	ex af,af'		;7545
	or (hl)			;7546
	or b			;7547
	jr nz,l754fh		;7548
	nop			;754a
	inc d			;754b
	sbc a,d			;754c
	or (hl)			;754d
	ld b,b			;754e
l754fh:
	ld a,(bc)		;754f
	ld bc,01500h		;7550
	and e			;7553
	or (hl)			;7554
	ex af,af'		;7555
	ld b,d			;7556
	ld bc,01403h		;7557
	nop			;755a
	ld e,08eh		;755b
	or l			;755d
	or b			;755e
	nop			;755f
l7560h:
	ld b,000h		;7560
	ld (bc),a		;7562
	defb 0fdh,0b5h ;or iyl	;7563
	ret nz			;7565
	ld a,002h		;7566
	nop			;7568
	ld d,0aeh		;7569
	or (hl)			;756b
	ret pe			;756c
	dec l			;756d
	ld bc,09603h		;756e
	inc bc			;7571
	ld c,b			;7572
	nop			;7573
	jr z,l752fh		;7574
	or (hl)			;7576
	nop			;7577
	nop			;7578
	dec b			;7579
	dec b			;757a
	nop			;757b
	inc bc			;757c
	rlca			;757d
	dec b			;757e
	ld bc,02003h		;757f
	ld b,00dh		;7582
	scf			;7584
	or a			;7585
	ld bc,0b0f4h		;7586
	nop			;7589
	nop			;758a
	ld (bc),a		;758b
	inc b			;758c
	rlca			;758d
	ld bc,0b0f8h		;758e
	ld bc,00b00h		;7591
	jr nz,l7596h		;7594
l7596h:
	inc bc			;7596
	ld c,(hl)		;7597
	nop			;7598
	rra			;7599
	and b			;759a
	or l			;759b
	ret			;759c
	nop			;759d
	ld b,007h		;759e
	ld bc,0b104h		;75a0
	ld (bc),a		;75a3
	nop			;75a4
	dec bc			;75a5
	jr nz,l75a8h		;75a6
l75a8h:
	inc bc			;75a8
	ld (hl),000h		;75a9
	jr nz,l7560h		;75ab
	or l			;75ad
	call z,00600h		;75ae
	ld c,007h		;75b1
	ld bc,0b108h		;75b3
	nop			;75b6
	nop			;75b7
	nop			;75b8
	rra			;75b9
	xor 0b5h		;75ba
	nop			;75bc
	nop			;75bd
	nop			;75be
	dec bc			;75bf
	jr nz,l75c2h		;75c0
l75c2h:
	inc bc			;75c2
	inc d			;75c3
	nop			;75c4
	ld bc,0b5eeh		;75c5
	nop			;75c8
	nop			;75c9
	nop			;75ca
	inc bc			;75cb
	ld (02100h),hl		;75cc
	sub 0b5h		;75cf
	jp nc,00600h		;75d1
	ld c,007h		;75d4
	ld bc,0b100h		;75d6
	nop			;75d9
	nop			;75da
	dec bc			;75db
	jr nz,l75deh		;75dc
l75deh:
	inc bc			;75de
	ld l,000h		;75df
	ld e,0eeh		;75e1
	or l			;75e3
	nop			;75e4
	nop			;75e5
	nop			;75e6
	nop			;75e7
	ld (0b5f0h),hl		;75e8
	nop			;75eb
	nop			;75ec
	ld b,00eh		;75ed
	rlca			;75ef
	ld bc,0b100h		;75f0
	nop			;75f3
	nop			;75f4
	ld (bc),a		;75f5
	inc b			;75f6
	ld (bc),a		;75f7
	ex af,af'		;75f8
	dec bc			;75f9
	jr nz,l75fch		;75fa
l75fch:
	rlca			;75fc
	dec bc			;75fd
	ret p			;75fe
	nop			;75ff
	inc bc			;7600
	ld e,001h		;7601
	call c,000b0h		;7603
	nop			;7606
	rlca			;7607
	ld bc,0b0e0h		;7608
	nop			;760b
	nop			;760c
	dec bc			;760d
	ret p			;760e
	nop			;760f
	inc b			;7610
	ld bc,00b03h		;7611
	nop			;7614
	dec bc			;7615
	or 0b6h			;7616
	ex af,af'		;7618
	nop			;7619
	inc b			;761a
	inc bc			;761b
	dec b			;761c
	nop			;761d
	inc c			;761e
	ld b,0b7h		;761f
	ld (de),a		;7621
	ld a,(bc)		;7622
	inc b			;7623
	inc bc			;7624
	ld bc,00d00h		;7625
	pop hl			;7628
	or (hl)			;7629
	ld a,(bc)		;762a
	dec b			;762b
	inc b			;762c
	inc bc			;762d
	ld (bc),a		;762e
	nop			;762f
	ld c,0f6h		;7630
	or (hl)			;7632
	inc b			;7633
	rlca			;7634
	inc b			;7635
	inc bc			;7636
	inc b			;7637
	nop			;7638
	rla			;7639
l763ah:
	pop hl			;763a
	or (hl)			;763b
	ld (de),a		;763c
	ex af,af'		;763d
	inc b			;763e
	inc bc			;763f
	ld (bc),a		;7640
	nop			;7641
	jr l763ah		;7642
	or (hl)			;7644
	inc d			;7645
	dec b			;7646
	inc b			;7647
	rlca			;7648
	ld bc,0b0d8h		;7649
	nop			;764c
	nop			;764d
	dec bc			;764e
	ret p			;764f
	nop			;7650
	inc b			;7651
	ld bc,00500h		;7652
	pop hl			;7655
	or (hl)			;7656
	ex af,af'		;7657
	nop			;7658
	ld (bc),a		;7659
	inc bc			;765a
	inc b			;765b
	nop			;765c
	ld b,0f6h		;765d
	or (hl)			;765f
	jr l7672h		;7660
	inc b			;7662
	inc bc			;7663
	ld bc,00700h		;7664
	ld b,0b7h		;7667
	jr l766fh		;7669
	ld (bc),a		;766b
	inc bc			;766c
	inc b			;766d
	nop			;766e
l766fh:
	ex af,af'		;766f
	or 0b6h			;7670
l7672h:
	ex af,af'		;7672
	inc b			;7673
	ld (bc),a		;7674
	inc bc			;7675
	inc bc			;7676
	nop			;7677
	add hl,bc		;7678
	pop hl			;7679
	or (hl)			;767a
	nop			;767b
	nop			;767c
	ld (bc),a		;767d
	inc bc			;767e
	ld bc,00a00h		;767f
	or 0b6h			;7682
	jr nz,l768eh		;7684
	inc b			;7686
	inc bc			;7687
	rlca			;7688
	nop			;7689
	add hl,de		;768a
	pop hl			;768b
	or (hl)			;768c
	ld (de),a		;768d
l768eh:
	ld (de),a		;768e
	inc b			;768f
	inc bc			;7690
	ld (bc),a		;7691
	nop			;7692
	ld a,(de)		;7693
	or 0b6h			;7694
	nop			;7696
	nop			;7697
	inc b			;7698
	rlca			;7699
	ld bc,0b0ech		;769a
	nop			;769d
	nop			;769e
	dec bc			;769f
	djnz l76a2h		;76a0
l76a2h:
	rlca			;76a2
	ld bc,0b0e8h		;76a3
	nop			;76a6
	nop			;76a7
	dec bc			;76a8
	ld b,b			;76a9
	nop			;76aa
	inc bc			;76ab
	ld d,b			;76ac
l76adh:
	ld c,001h		;76ad
	call po,000b0h		;76af
	nop			;76b2
	dec bc			;76b3
	jr c,l76b6h		;76b4
l76b6h:
	inc bc			;76b6
	ld a,b			;76b7
	ld c,004h		;76b8
	nop			;76ba
	nop			;76bb
l76bch:
	dec de			;76bc
	call z,06cb6h		;76bd
	ld a,(de)		;76c0
	dec b			;76c1
	inc bc			;76c2
	inc bc			;76c3
	nop			;76c4
	inc e			;76c5
	call z,030b6h		;76c6
	djnz l76d0h		;76c9
	ld c,001h		;76cb
	or h			;76cd
	or b			;76ce
	nop			;76cf
l76d0h:
	nop			;76d0
	ld bc,0b0b8h		;76d1
	nop			;76d4
	nop			;76d5
	ld bc,0b0bch		;76d6
	nop			;76d9
	nop			;76da
	ld bc,0b0c0h		;76db
	nop			;76de
	nop			;76df
	ld c,001h		;76e0
	and b			;76e2
	or b			;76e3
	nop			;76e4
	nop			;76e5
	ld bc,0b0a4h		;76e6
	nop			;76e9
	nop			;76ea
	ld bc,0b0a8h		;76eb
	nop			;76ee
	nop			;76ef
	ld bc,0b0ach		;76f0
	nop			;76f3
	nop			;76f4
	ld c,001h		;76f5
	ld (hl),h		;76f7
	or b			;76f8
	nop			;76f9
	nop			;76fa
	ld bc,0b078h		;76fb
	nop			;76fe
	nop			;76ff
	ld bc,0b07ch		;7700
	nop			;7703
	nop			;7704
	ld c,001h		;7705
	add a,h			;7707
	or b			;7708
	nop			;7709
	nop			;770a
	ld bc,0b088h		;770b
	nop			;770e
	nop			;770f
	ld bc,0b08ch		;7710
	nop			;7713
	nop			;7714
	ld c,010h		;7715
	sub b			;7717
	ld (hl),b		;7718
	inc bc			;7719
	ld (bc),a		;771a
	djnz l76adh		;771b
	ld d,b			;771d
	inc bc			;771e
	ld bc,09010h		;771f
	jr nc,l7727h		;7722
	ld bc,09010h		;7724
l7727h:
	djnz l772ch		;7727
	ld (bc),a		;7729
	djnz l76bch		;772a
l772ch:
	jr nc,l7731h		;772c
	ld bc,09010h		;772e
l7731h:
	ld d,b			;7731
	inc bc			;7732
	ld bc,0160dh		;7733
	or a			;7736
	ex af,af'		;7737
	sbc a,b			;7738
	or h			;7739
	ex af,af'		;773a
	and e			;773b
	or h			;773c
	ex af,af'		;773d
	xor (hl)		;773e
	or h			;773f
	nop			;7740
	dec h			;7741
	ld d,0b7h		;7742
	nop			;7744
	nop			;7745
	nop			;7746
	nop			;7747
	ld bc,0b779h		;7748
	nop			;774b
	nop			;774c
	rrca			;774d
	nop			;774e
	ld (bc),a		;774f
	add a,(hl)		;7750
	or a			;7751
	jr nc,l7764h		;7752
	add hl,bc		;7754
	nop			;7755
	inc bc			;7756
	sbc a,a			;7757
	or a			;7758
	ex af,af'		;7759
	jr l7766h		;775a
	nop			;775c
	inc b			;775d
	or (hl)			;775e
	or a			;775f
	add a,b			;7760
	jr l776eh		;7761
	inc bc			;7763
l7764h:
	jr nc,$+7		;7764
l7766h:
	nop			;7766
	inc bc			;7767
	ex af,af'		;7768
	dec b			;7769
	ld bc,00903h		;776a
	dec b			;776d
l776eh:
	ld (bc),a		;776e
	inc bc			;776f
	dec de			;7770
	dec b			;7771
	inc bc			;7772
	inc bc			;7773
	ld hl,00d06h		;7774
	ld a,b			;7777
	cp b			;7778
	ld bc,0b0f0h		;7779
	nop			;777c
	nop			;777d
	ld (bc),a		;777e
	inc b			;777f
	ld (bc),a		;7780
	ex af,af'		;7781
	dec bc			;7782
	jr nz,l7785h		;7783
l7785h:
	rlca			;7785
	ld bc,0b0cch		;7786
	nop			;7789
	nop			;778a
	dec bc			;778b
	ret m			;778c
	nop			;778d
l778eh:
	inc b			;778e
	ld (bc),a		;778f
	inc bc			;7790
	rlca			;7791
	nop			;7792
	ld b,0cdh		;7793
	or a			;7795
	nop			;7796
	nop			;7797
	add hl,bc		;7798
	inc b			;7799
	inc bc			;779a
	dec bc			;779b
	ret po			;779c
	jr nz,l77a6h		;779d
	ld bc,0b0d0h		;779f
	nop			;77a2
	nop			;77a3
	dec bc			;77a4
	nop			;77a5
l77a6h:
	nop			;77a6
	nop			;77a7
	rrca			;77a8
	ld b,0b8h		;77a9
	nop			;77ab
	nop			;77ac
	add hl,bc		;77ad
	inc b			;77ae
	nop			;77af
	dec bc			;77b0
	ret po			;77b1
	ld b,b			;77b2
	inc bc			;77b3
	inc hl			;77b4
	ld c,001h		;77b5
	call nc,000b0h		;77b7
	nop			;77ba
	dec bc			;77bb
	nop			;77bc
	nop			;77bd
	nop			;77be
	djnz l778eh		;77bf
	or a			;77c1
	nop			;77c2
	nop			;77c3
	add hl,bc		;77c4
	inc b			;77c5
	ld bc,0400bh		;77c6
	jr nz,l77ceh		;77c9
	ld e,00eh		;77cb
	nop			;77cd
l77ceh:
	inc de			;77ce
	pop hl			;77cf
	or (hl)			;77d0
	ex af,af'		;77d1
	nop			;77d2
	add hl,bc		;77d3
	inc bc			;77d4
	inc b			;77d5
	nop			;77d6
	inc d			;77d7
	pop hl			;77d8
	or (hl)			;77d9
	jr l77ech		;77da
	dec bc			;77dc
	inc bc			;77dd
	ld bc,01500h		;77de
	pop hl			;77e1
	or (hl)			;77e2
	jr l77e9h		;77e3
	add hl,bc		;77e5
	inc bc			;77e6
	ld (bc),a		;77e7
	nop			;77e8
l77e9h:
	ld d,0e1h		;77e9
	or (hl)			;77eb
l77ech:
	ex af,af'		;77ec
	inc b			;77ed
	add hl,bc		;77ee
	inc bc			;77ef
	ld bc,01700h		;77f0
	pop hl			;77f3
	or (hl)			;77f4
	nop			;77f5
	nop			;77f6
	dec b			;77f7
	inc bc			;77f8
	ld bc,01800h		;77f9
	pop hl			;77fc
	or (hl)			;77fd
	jr nz,l7808h		;77fe
	dec b			;7800
	inc bc			;7801
	ld bc,0cd0dh		;7802
	or a			;7805
	nop			;7806
	add hl,de		;7807
l7808h:
	pop hl			;7808
	or (hl)			;7809
	ex af,af'		;780a
	nop			;780b
	add hl,bc		;780c
	inc bc			;780d
	inc b			;780e
	nop			;780f
	ld a,(de)		;7810
	pop hl			;7811
	or (hl)			;7812
	jr l7825h		;7813
	dec bc			;7815
	inc bc			;7816
	ld bc,01b00h		;7817
	pop hl			;781a
	or (hl)			;781b
	jr l7822h		;781c
	add hl,bc		;781e
	inc bc			;781f
	ld (bc),a		;7820
	nop			;7821
l7822h:
	inc e			;7822
	pop hl			;7823
	or (hl)			;7824
l7825h:
	ex af,af'		;7825
	inc b			;7826
	add hl,bc		;7827
	inc bc			;7828
	ld bc,01d00h		;7829
	pop hl			;782c
	or (hl)			;782d
	nop			;782e
	nop			;782f
	dec b			;7830
	inc bc			;7831
	ld bc,01e00h		;7832
	pop hl			;7835
	or (hl)			;7836
	jr nz,l7841h		;7837
	dec b			;7839
	inc bc			;783a
	ld bc,0060dh		;783b
	cp b			;783e
	nop			;783f
	inc de			;7840
l7841h:
	pop hl			;7841
	or (hl)			;7842
	ex af,af'		;7843
	nop			;7844
	add hl,bc		;7845
	inc bc			;7846
	inc b			;7847
	nop			;7848
	inc d			;7849
	pop hl			;784a
	or (hl)			;784b
	jr l785eh		;784c
	dec bc			;784e
	inc bc			;784f
	ld bc,01500h		;7850
	pop hl			;7853
	or (hl)			;7854
	jr l785bh		;7855
	add hl,bc		;7857
	inc bc			;7858
	ld (bc),a		;7859
	nop			;785a
l785bh:
	ld d,0e1h		;785b
	or (hl)			;785d
l785eh:
	ex af,af'		;785e
	inc b			;785f
	add hl,bc		;7860
	inc bc			;7861
	ld bc,01700h		;7862
	pop hl			;7865
	or (hl)			;7866
	nop			;7867
	nop			;7868
	dec b			;7869
	inc bc			;786a
	ld bc,01800h		;786b
	pop hl			;786e
	or (hl)			;786f
	jr nz,l787ah		;7870
	dec b			;7872
	inc bc			;7873
	ld bc,03f0dh		;7874
	cp b			;7877
	ex af,af'		;7878
	sbc a,b			;7879
l787ah:
	or h			;787a
	ex af,af'		;787b
	and e			;787c
	or h			;787d
	ex af,af'		;787e
	defb 0ddh,0b4h ;or ixh	;787f
	rrca			;7881
	ld c,(hl)		;7882
	nop			;7883
	rrca			;7884
	call p,000b8h		;7885
	nop			;7888
	rrca			;7889
	nop			;788a
	ld de,0b8fah		;788b
	nop			;788e
	nop			;788f
	rrca			;7890
	nop			;7891
	inc b			;7892
	ld d,0b9h		;7893
	nop			;7895
	ex af,af'		;7896
	ex af,af'		;7897
	nop			;7898
	ld b,01ch		;7899
	cp c			;789b
	ld a,b			;789c
	ld b,b			;789d
	rlca			;789e
	inc bc			;789f
	ld (de),a		;78a0
	rrca			;78a1
	ld c,a			;78a2
	dec b			;78a3
	ld bc,00303h		;78a4
	nop			;78a7
	dec b			;78a8
	jr c,$-69		;78a9
	nop			;78ab
	ret m			;78ac
	rrca			;78ad
l78aeh:
	nop			;78ae
	ld (de),a		;78af
	ld (hl),e		;78b0
	cp c			;78b1
	nop			;78b2
	ret m			;78b3
	rrca			;78b4
	inc bc			;78b5
	inc c			;78b6
	nop			;78b7
	ld bc,0b8e7h		;78b8
	nop			;78bb
	nop			;78bc
	rrca			;78bd
	nop			;78be
	ld (bc),a		;78bf
	nop			;78c0
	cp c			;78c1
	nop			;78c2
	nop			;78c3
	ld c,000h		;78c4
	inc bc			;78c6
	dec bc			;78c7
	cp c			;78c8
	ld d,b			;78c9
	nop			;78ca
	ld c,003h		;78cb
	ld bc,00005h		;78cd
	inc bc			;78d0
	ld bc,0500fh		;78d1
	add hl,bc		;78d4
	cp c			;78d5
	or h			;78d6
	inc bc			;78d7
	dec l			;78d8
	ld b,00dh		;78d9
	and e			;78db
	cp c			;78dc
	inc c			;78dd
	ld bc,00161h		;78de
	inc c			;78e1
	or c			;78e2
	nop			;78e3
	nop			;78e4
	ld c,007h		;78e5
	ld bc,0b0f4h		;78e7
	nop			;78ea
	nop			;78eb
	ld (bc),a		;78ec
	inc b			;78ed
	ld (bc),a		;78ee
	djnz $+13		;78ef
	nop			;78f1
	ret po			;78f2
	rlca			;78f3
	ld bc,0b0fch		;78f4
	nop			;78f7
	nop			;78f8
	ld c,001h		;78f9
	djnz l78aeh		;78fb
	ld d,b			;78fd
	nop			;78fe
	ld c,001h		;78ff
	call m,000b0h		;7901
	nop			;7904
	inc b			;7905
	nop			;7906
	dec bc			;7907
	ret po			;7908
	nop			;7909
	rlca			;790a
	ld bc,0b110h		;790b
	nop			;790e
	nop			;790f
	inc b			;7910
	nop			;7911
	dec bc			;7912
	jr nc,l7915h		;7913
l7915h:
	rlca			;7915
	ld bc,0b10ch		;7916
	nop			;7919
	nop			;791a
	rlca			;791b
	ld bc,0b114h		;791c
	nop			;791f
	nop			;7920
	inc b			;7921
	ld bc,01401h		;7922
	or c			;7925
	nop			;7926
	ld bc,01401h		;7927
	or c			;792a
	nop			;792b
	rst 38h			;792c
	ld bc,0b114h		;792d
	nop			;7930
	defb 0fdh,001h,014h ;illegal sequence	;7931
	or c			;7934
	nop			;7935
	nop			;7936
	rlca			;7937
	inc c			;7938
	nop			;7939
	ld l,l			;793a
	ld bc,0b150h		;793b
	jr nz,$+58		;793e
	ld bc,0b154h		;7940
	jr $+58			;7943
	ld bc,0b158h		;7945
	jr l797ah		;7948
	ld bc,0b15ch		;794a
	djnz l797fh		;794d
	ld bc,0b160h		;794f
	djnz l7984h		;7952
	ld bc,0b164h		;7954
	ex af,af'		;7957
	jr z,l795bh		;7958
	ld l,b			;795a
l795bh:
	or c			;795b
	nop			;795c
	jr nz,l7960h		;795d
	ld c,b			;795f
l7960h:
	or c			;7960
	jr l79a3h		;7961
	ld bc,0b14ch		;7963
	djnz l79a8h		;7966
	ld bc,0b16ch		;7968
	ex af,af'		;796b
	jr c,l796fh		;796c
	ld (hl),b		;796e
l796fh:
	or c			;796f
	nop			;7970
	jr c,l7981h		;7971
	inc c			;7973
	nop			;7974
	ld l,l			;7975
	inc bc			;7976
	ld bc,l7401h		;7977
l797ah:
	or c			;797a
	add a,b			;797b
	jr c,l797fh		;797c
	ld a,b			;797e
l797fh:
	or c			;797f
	add a,b			;7980
l7981h:
	jr nc,l7984h		;7981
	ld a,h			;7983
l7984h:
	or c			;7984
	adc a,b			;7985
	jr nc,l7989h		;7986
	add a,b			;7988
l7989h:
	or c			;7989
	adc a,b			;798a
	jr nc,l798eh		;798b
	add a,h			;798d
l798eh:
	or c			;798e
	sub b			;798f
	jr z,l7993h		;7990
	adc a,b			;7992
l7993h:
	or c			;7993
	sbc a,b			;7994
	jr nz,$+5		;7995
	inc bc			;7997
	ld bc,0b18ch		;7998
	sub b			;799b
	jr c,l799fh		;799c
	sub b			;799e
l799fh:
	or c			;799f
	sbc a,b			;79a0
	jr c,l79b1h		;79a1
l79a3h:
	ex af,af'		;79a3
	sbc a,b			;79a4
	or h			;79a5
	ex af,af'		;79a6
	and e			;79a7
l79a8h:
	or h			;79a8
	ex af,af'		;79a9
	ret nc			;79aa
	or h			;79ab
	nop			;79ac
	dec h			;79ad
	ld d,0b7h		;79ae
	nop			;79b0
l79b1h:
	nop			;79b1
	nop			;79b2
	nop			;79b3
	ld bc,0b9d7h		;79b4
	nop			;79b7
	nop			;79b8
	rlca			;79b9
	nop			;79ba
	ld (bc),a		;79bb
	call po,020b9h		;79bc
	adc a,b			;79bf
	inc b			;79c0
	inc bc			;79c1
	inc bc			;79c2
	dec b			;79c3
	nop			;79c4
	nop			;79c5
	inc bc			;79c6
	rst 28h			;79c7
	cp c			;79c8
	nop			;79c9
	nop			;79ca
	ld (bc),a		;79cb
	dec b			;79cc
	ld bc,l6003h		;79cd
	dec b			;79d0
	rrca			;79d1
	inc bc			;79d2
	ld a,(bc)		;79d3
	dec c			;79d4
	jr nz,$-73		;79d5
	ld bc,0b0f0h		;79d7
	nop			;79da
	nop			;79db
	ld (bc),a		;79dc
	inc b			;79dd
	ld (bc),a		;79de
	djnz l79ech		;79df
	nop			;79e1
	jr nz,l79ebh		;79e2
	ld bc,0b0c4h		;79e4
	nop			;79e7
	nop			;79e8
	dec bc			;79e9
	and b			;79ea
l79ebh:
	ld b,b			;79eb
l79ech:
	inc bc			;79ec
	ld e,00eh		;79ed
	ld bc,0b094h		;79ef
	ld b,l			;79f2
	dec hl			;79f3
	ld bc,0b09ch		;79f4
	ld b,l			;79f7
	dec hl			;79f8
	ld bc,0b070h		;79f9
	ld b,l			;79fc
	dec hl			;79fd
	inc bc			;79fe
	dec b			;79ff
	ld bc,0b128h		;7a00
	ld b,l			;7a03
l7a04h:
	dec hl			;7a04
	ld bc,0b12ch		;7a05
	ld b,a			;7a08
	daa			;7a09
	ld bc,0b130h		;7a0a
	ld c,b			;7a0d
	inc h			;7a0e
	ld bc,0b134h		;7a0f
	ld c,c			;7a12
	inc hl			;7a13
	ld bc,0b138h		;7a14
	ccf			;7a17
	dec h			;7a18
	dec bc			;7a19
	ret po			;7a1a
	jr nz,l7a20h		;7a1b
	ld d,00bh		;7a1d
	ld d,b			;7a1f
l7a20h:
	ret po			;7a20
	inc bc			;7a21
	inc de			;7a22
	ld bc,0b13ch		;7a23
	ld b,e			;7a26
	ld (04001h),hl		;7a27
	or c			;7a2a
	ld b,d			;7a2b
	inc h			;7a2c
	ld bc,0b144h		;7a2d
	ld b,d			;7a30
	ld (04401h),hl		;7a31
	or c			;7a34
	ld a,01eh		;7a35
	ld bc,0b118h		;7a37
	ld a,(0011dh)		;7a3a
	jr $-77			;7a3d
	jr nc,l7a5fh		;7a3f
	ld bc,0b11ch		;7a41
	ld hl,(00120h)		;7a44
	inc e			;7a47
	or c			;7a48
	inc h			;7a49
	inc h			;7a4a
	ld bc,0b120h		;7a4b
	ld hl,0012ah		;7a4e
	jr nz,l7a04h		;7a51
	jr nz,l7a87h		;7a53
	ld bc,0b120h		;7a55
	inc h			;7a58
	dec (hl)		;7a59
	ld bc,0b124h		;7a5a
	ld h,037h		;7a5d
l7a5fh:
	ld bc,0b124h		;7a5f
	add hl,hl		;7a62
	jr c,l7a66h		;7a63
	ld (hl),b		;7a65
l7a66h:
	or b			;7a66
	add hl,hl		;7a67
	jr c,$+5		;7a68
	inc bc			;7a6a
	ld bc,0b094h		;7a6b
	daa			;7a6e
	inc (hl)		;7a6f
	ld bc,0b098h		;7a70
	dec h			;7a73
	dec (hl)		;7a74
	ld bc,0b09ch		;7a75
	inc hl			;7a78
	ld (hl),00eh		;7a79
	ex af,af'		;7a7b
	ld bc,000b5h		;7a7c
	ld bc,0bab3h		;7a7f
	nop			;7a82
	nop			;7a83
	rlca			;7a84
	nop			;7a85
	ld (bc),a		;7a86
l7a87h:
	cp (hl)			;7a87
	cp d			;7a88
	ld c,b			;7a89
	ld c,002h		;7a8a
	nop			;7a8c
	inc bc			;7a8d
	jp c,030bah		;7a8e
	dec d			;7a91
	dec b			;7a92
	inc bc			;7a93
	dec b			;7a94
	add hl,bc		;7a95
	add a,h			;7a96
	or h			;7a97
	rrca			;7a98
	ld d,e			;7a99
	inc bc			;7a9a
	ld (bc),a		;7a9b
	dec b			;7a9c
	ld bc,00803h		;7a9d
	rrca			;7aa0
	ld c,c			;7aa1
	inc bc			;7aa2
	ld d,b			;7aa3
	nop			;7aa4
	inc bc			;7aa5
	cp b			;7aa6
	or (hl)			;7aa7
	nop			;7aa8
	nop			;7aa9
	nop			;7aaa
	inc bc			;7aab
	ld h,h			;7aac
	inc bc			;7aad
	ld (de),a		;7aae
	ld b,00dh		;7aaf
	ld a,(bc)		;7ab1
	cp e			;7ab2
	ld bc,0b194h		;7ab3
	nop			;7ab6
	nop			;7ab7
	ld (bc),a		;7ab8
	ex af,af'		;7ab9
	dec bc			;7aba
	ret nc			;7abb
	nop			;7abc
	rlca			;7abd
	ld bc,0b1c0h		;7abe
	nop			;7ac1
	nop			;7ac2
	dec bc			;7ac3
	nop			;7ac4
	ret p			;7ac5
	inc bc			;7ac6
	ex af,af'		;7ac7
	dec bc			;7ac8
	nop			;7ac9
	nop			;7aca
	inc bc			;7acb
	ld (bc),a		;7acc
	dec bc			;7acd
	nop			;7ace
	djnz l7ad4h		;7acf
	ex af,af'		;7ad1
	dec bc			;7ad2
	nop			;7ad3
l7ad4h:
	nop			;7ad4
	inc bc			;7ad5
	inc bc			;7ad6
	dec c			;7ad7
	cp (hl)			;7ad8
	cp d			;7ad9
	ld bc,0b1e0h		;7ada
	nop			;7add
	nop			;7ade
	inc b			;7adf
	ld bc,0f00bh		;7ae0
	nop			;7ae3
	inc bc			;7ae4
	inc bc			;7ae5
	ld bc,0b1e4h		;7ae6
	nop			;7ae9
	nop			;7aea
	ld bc,0b1f4h		;7aeb
	ret m			;7aee
	nop			;7aef
	ld bc,0b1e4h		;7af0
	nop			;7af3
	nop			;7af4
	dec bc			;7af5
	ret po			;7af6
	nop			;7af7
	ld bc,0b1e8h		;7af8
	nop			;7afb
	nop			;7afc
	ld bc,0b1ech		;7afd
	nop			;7b00
	nop			;7b01
	ld bc,0b1f0h		;7b02
	nop			;7b05
	nop			;7b06
	dec c			;7b07
	ret m			;7b08
	cp d			;7b09
	ex af,af'		;7b0a
	sbc a,b			;7b0b
	or h			;7b0c
	ex af,af'		;7b0d
	xor (hl)		;7b0e
	or h			;7b0f
	ex af,af'		;7b10
	call p,000b4h		;7b11
	ld bc,0bb94h		;7b14
	nop			;7b17
	nop			;7b18
	rlca			;7b19
	inc bc			;7b1a
	dec b			;7b1b
	nop			;7b1c
	rrca			;7b1d
	ld d,0bch		;7b1e
	nop			;7b20
	nop			;7b21
	nop			;7b22
	inc bc			;7b23
	call c,0dc03h		;7b24
	inc bc			;7b27
	ld d,a			;7b28
	nop			;7b29
	ld (bc),a		;7b2a
	and c			;7b2b
	cp e			;7b2c
	inc h			;7b2d
	ld l,b			;7b2e
	ld bc,02203h		;7b2f
	dec b			;7b32
	ld bc,01303h		;7b33
	nop			;7b36
	ld a,(bc)		;7b37
	cp h			;7b38
	cp e			;7b39
	and b			;7b3a
	jr z,l7b43h		;7b3b
	inc bc			;7b3d
	add a,d			;7b3e
	nop			;7b3f
	inc bc			;7b40
	ret			;7b41
	cp e			;7b42
l7b43h:
	ret po			;7b43
	jr l7b4bh		;7b44
	nop			;7b46
	inc b			;7b47
	jp nc,0d8bbh		;7b48
l7b4bh:
	ld b,b			;7b4b
	dec b			;7b4c
	inc bc			;7b4d
	dec l			;7b4e
	nop			;7b4f
	dec b			;7b50
	in a,(0bbh)		;7b51
	ret m			;7b53
	ld b,001h		;7b54
	nop			;7b56
	ld b,004h		;7b57
	cp h			;7b59
	ret nc			;7b5a
	add hl,sp		;7b5b
	ld (bc),a		;7b5c
	inc bc			;7b5d
	ld e,000h		;7b5e
	rlca			;7b60
	dec c			;7b61
	cp h			;7b62
	ret nc			;7b63
	dec c			;7b64
	inc bc			;7b65
	inc bc			;7b66
	ld l,(hl)		;7b67
	nop			;7b68
	ex af,af'		;7b69
	call po,0a8bbh		;7b6a
	dec e			;7b6d
	inc b			;7b6e
	inc bc			;7b6f
	call z,01d00h		;7b70
	call nc,000bch		;7b73
	nop			;7b76
	ld bc,01903h		;7b77
	nop			;7b7a
	ex af,af'		;7b7b
	cp b			;7b7c
	or (hl)			;7b7d
	nop			;7b7e
	nop			;7b7f
	nop			;7b80
	inc bc			;7b81
	jr z,l7b93h		;7b82
	add a,h			;7b84
	inc bc			;7b85
	dec l			;7b86
	ex af,af'		;7b87
	ld bc,003b5h		;7b88
	ld (de),a		;7b8b
	dec b			;7b8c
	rrca			;7b8d
	inc bc			;7b8e
	jr z,l7b97h		;7b8f
	dec c			;7b91
	ld a,e			;7b92
l7b93h:
	cp d			;7b93
	ld bc,0b198h		;7b94
l7b97h:
	nop			;7b97
l7b98h:
	nop			;7b98
	ld (bc),a		;7b99
	inc b			;7b9a
	ld (bc),a		;7b9b
	ex af,af'		;7b9c
	dec bc			;7b9d
	jr nz,l7ba0h		;7b9e
l7ba0h:
	rlca			;7ba0
	ld bc,0b1a0h		;7ba1
	nop			;7ba4
	nop			;7ba5
	dec bc			;7ba6
	nop			;7ba7
	ret nz			;7ba8
	inc b			;7ba9
	ld bc,0100bh		;7baa
	ret nz			;7bad
	inc bc			;7bae
	ld a,(bc)		;7baf
	dec bc			;7bb0
	jr nz,$-46		;7bb1
	inc bc			;7bb3
	ld a,(bc)		;7bb4
	dec bc			;7bb5
	jr nz,l7b98h		;7bb6
	inc bc			;7bb8
	scf			;7bb9
	ld c,007h		;7bba
	ld bc,0b1a4h		;7bbc
	nop			;7bbf
	nop			;7bc0
	dec bc			;7bc1
	ret pe			;7bc2
	nop			;7bc3
	inc bc			;7bc4
	ret z			;7bc5
	inc bc			;7bc6
	ld h,h			;7bc7
	ld c,001h		;7bc8
	call c,000b1h		;7bca
	nop			;7bcd
	dec bc			;7bce
	ld c,b			;7bcf
	nop			;7bd0
	rlca			;7bd1
	ld bc,0b1d8h		;7bd2
	nop			;7bd5
	nop			;7bd6
	dec bc			;7bd7
	ld d,b			;7bd8
	nop			;7bd9
	rlca			;7bda
	ld bc,0b1d4h		;7bdb
	nop			;7bde
	nop			;7bdf
	dec bc			;7be0
	jr c,l7be3h		;7be1
l7be3h:
	rlca			;7be3
	ld bc,0b1c8h		;7be4
	nop			;7be7
	nop			;7be8
	dec bc			;7be9
	jr z,l7bech		;7bea
l7bech:
	inc bc			;7bec
	ld h,b			;7bed
	nop			;7bee
	ld e,090h		;7bef
	cp l			;7bf1
	nop			;7bf2
	nop			;7bf3
	nop			;7bf4
	ld bc,0b1c4h		;7bf5
	nop			;7bf8
	nop			;7bf9
	ld bc,0b1c8h		;7bfa
	nop			;7bfd
	nop			;7bfe
	inc bc			;7bff
	inc b			;7c00
	dec c			;7c01
l7c02h:
	push af			;7c02
	cp e			;7c03
	ld bc,0b1cch		;7c04
	nop			;7c07
	nop			;7c08
	dec bc			;7c09
	jr c,l7c0ch		;7c0a
l7c0ch:
	rlca			;7c0c
	ld bc,0b1d0h		;7c0d
	nop			;7c10
	nop			;7c11
	dec bc			;7c12
	ld d,b			;7c13
	nop			;7c14
	rlca			;7c15
	nop			;7c16
	djnz $-28		;7c17
	cp h			;7c19
	dec sp			;7c1a
	ld h,b			;7c1b
	ld bc,02803h		;7c1c
	nop			;7c1f
	ld de,0bceah		;7c20
	dec hl			;7c23
	ld h,b			;7c24
	ld bc,01903h		;7c25
	nop			;7c28
	ld (de),a		;7c29
	jp p,030bch		;7c2a
	ld h,b			;7c2d
	ld bc,00f03h		;7c2e
	nop			;7c31
	inc de			;7c32
	jp m,028bch		;7c33
	ld h,b			;7c36
	ld bc,02503h		;7c37
	nop			;7c3a
	inc d			;7c3b
	ld (bc),a		;7c3c
	cp l			;7c3d
	inc h			;7c3e
	ld h,b			;7c3f
	ld bc,01903h		;7c40
	nop			;7c43
	dec d			;7c44
	ld a,(bc)		;7c45
	cp l			;7c46
	jr z,l7ca9h		;7c47
	ld bc,00f03h		;7c49
	nop			;7c4c
	ld d,012h		;7c4d
	cp l			;7c4f
	inc h			;7c50
	ld h,b			;7c51
	ld bc,00f03h		;7c52
	nop			;7c55
	rla			;7c56
	ld a,(de)		;7c57
	cp l			;7c58
	jr nc,l7cbbh		;7c59
	ld bc,02303h		;7c5b
	nop			;7c5e
	jr l7c83h		;7c5f
	cp l			;7c61
	inc (hl)		;7c62
	ld h,b			;7c63
	ld bc,01903h		;7c64
	nop			;7c67
	add hl,de		;7c68
	ld hl,(030bdh)		;7c69
	ld h,b			;7c6c
	ld bc,01703h		;7c6d
	nop			;7c70
	ld a,(de)		;7c71
	ld (030bdh),a		;7c72
	ld h,b			;7c75
	ld bc,00d03h		;7c76
	nop			;7c79
	dec de			;7c7a
	ld a,(034bdh)		;7c7b
	ld h,b			;7c7e
	ld bc,02503h		;7c7f
	nop			;7c82
l7c83h:
	ld de,0bd42h		;7c83
	jr z,l7ce8h		;7c86
	ld bc,01903h		;7c88
	nop			;7c8b
	ld (de),a		;7c8c
	ld c,d			;7c8d
	cp l			;7c8e
	inc (hl)		;7c8f
	ld h,b			;7c90
	ld bc,00f03h		;7c91
	nop			;7c94
	inc de			;7c95
	ld d,d			;7c96
	cp l			;7c97
	jr nc,l7cfah		;7c98
	ld bc,03003h		;7c9a
	nop			;7c9d
	inc d			;7c9e
	ld e,d			;7c9f
	cp l			;7ca0
	djnz $+98		;7ca1
	ld bc,01903h		;7ca3
	nop			;7ca6
	dec d			;7ca7
	ld h,d			;7ca8
l7ca9h:
	cp l			;7ca9
	dec hl			;7caa
	ld h,b			;7cab
	ld bc,01403h		;7cac
	nop			;7caf
	ld d,06ah		;7cb0
	cp l			;7cb2
	jr nc,l7d15h		;7cb3
	ld bc,03203h		;7cb5
	nop			;7cb8
	rla			;7cb9
	ld (hl),d		;7cba
l7cbbh:
	cp l			;7cbb
	dec hl			;7cbc
	ld h,b			;7cbd
	ld bc,00e03h		;7cbe
	nop			;7cc1
	jr l7d3eh		;7cc2
	cp l			;7cc4
	ld c,b			;7cc5
	ld h,b			;7cc6
	ld bc,00e03h		;7cc7
	nop			;7cca
	add hl,de		;7ccb
	add a,d			;7ccc
	cp l			;7ccd
	jr c,l7d30h		;7cce
	ld bc,06203h		;7cd0
	ld c,001h		;7cd3
	ld c,h			;7cd5
	or d			;7cd6
	dec de			;7cd7
	ld h,b			;7cd8
	dec bc			;7cd9
	nop			;7cda
	ret po			;7cdb
	inc bc			;7cdc
	ld (0000bh),a		;7cdd
	nop			;7ce0
	rlca			;7ce1
	ld bc,0b1f8h		;7ce2
	nop			;7ce5
	nop			;7ce6
	dec c			;7ce7
l7ce8h:
	adc a,d			;7ce8
	cp l			;7ce9
	ld bc,0b1fch		;7cea
	nop			;7ced
	nop			;7cee
	dec c			;7cef
	adc a,d			;7cf0
	cp l			;7cf1
	ld bc,0b200h		;7cf2
	nop			;7cf5
	nop			;7cf6
	dec c			;7cf7
	adc a,d			;7cf8
	cp l			;7cf9
l7cfah:
	ld bc,0b204h		;7cfa
	nop			;7cfd
	nop			;7cfe
	dec c			;7cff
	adc a,d			;7d00
	cp l			;7d01
	ld bc,0b208h		;7d02
	nop			;7d05
	nop			;7d06
	dec c			;7d07
	adc a,d			;7d08
	cp l			;7d09
	ld bc,0b20ch		;7d0a
	nop			;7d0d
	nop			;7d0e
	dec c			;7d0f
	adc a,d			;7d10
	cp l			;7d11
	ld bc,0b210h		;7d12
l7d15h:
	nop			;7d15
	nop			;7d16
	dec c			;7d17
	adc a,d			;7d18
	cp l			;7d19
	ld bc,0b214h		;7d1a
	nop			;7d1d
	nop			;7d1e
	dec c			;7d1f
	adc a,d			;7d20
	cp l			;7d21
	ld bc,0b218h		;7d22
	nop			;7d25
	nop			;7d26
	dec c			;7d27
	adc a,d			;7d28
	cp l			;7d29
	ld bc,0b21ch		;7d2a
	nop			;7d2d
	nop			;7d2e
	dec c			;7d2f
l7d30h:
	adc a,d			;7d30
	cp l			;7d31
	ld bc,0b220h		;7d32
	nop			;7d35
	nop			;7d36
	dec c			;7d37
	adc a,d			;7d38
	cp l			;7d39
	ld bc,0b224h		;7d3a
	nop			;7d3d
l7d3eh:
	nop			;7d3e
	dec c			;7d3f
	adc a,d			;7d40
	cp l			;7d41
	ld bc,0b228h		;7d42
	nop			;7d45
	nop			;7d46
	dec c			;7d47
	adc a,d			;7d48
	cp l			;7d49
	ld bc,0b22ch		;7d4a
l7d4dh:
	nop			;7d4d
	nop			;7d4e
	dec c			;7d4f
	adc a,d			;7d50
	cp l			;7d51
	ld bc,0b230h		;7d52
l7d55h:
	nop			;7d55
	nop			;7d56
	dec c			;7d57
	adc a,d			;7d58
	cp l			;7d59
	ld bc,0b234h		;7d5a
l7d5dh:
	nop			;7d5d
	nop			;7d5e
	dec c			;7d5f
	adc a,d			;7d60
	cp l			;7d61
	ld bc,0b238h		;7d62
l7d65h:
	nop			;7d65
	nop			;7d66
	dec c			;7d67
	adc a,d			;7d68
	cp l			;7d69
	ld bc,0b23ch		;7d6a
l7d6dh:
	nop			;7d6d
	nop			;7d6e
	dec c			;7d6f
	adc a,d			;7d70
	cp l			;7d71
	ld bc,0b240h		;7d72
	nop			;7d75
	nop			;7d76
	dec c			;7d77
	adc a,d			;7d78
	cp l			;7d79
	ld bc,0b244h		;7d7a
	nop			;7d7d
	nop			;7d7e
	dec c			;7d7f
	adc a,d			;7d80
	cp l			;7d81
	ld bc,0b248h		;7d82
	nop			;7d85
	nop			;7d86
	dec c			;7d87
	adc a,d			;7d88
	cp l			;7d89
	dec bc			;7d8a
	nop			;7d8b
	ret po			;7d8c
	inc bc			;7d8d
	ld l,b			;7d8e
	ld c,010h		;7d8f
	call nz,01070h		;7d91
	or b			;7d94
	ld (hl),b		;7d95
	inc bc			;7d96
	inc bc			;7d97
	djnz l7d5dh		;7d98
	ld h,b			;7d9a
	djnz l7d4dh		;7d9b
	ld d,b			;7d9d
	inc bc			;7d9e
	ld bc,0c210h		;7d9f
	ld d,b			;7da2
	djnz l7d55h		;7da3
	jr nc,l7daah		;7da5
	ld bc,0c110h		;7da7
l7daah:
	ld b,b			;7daa
	djnz l7d5dh		;7dab
	djnz l7db2h		;7dad
	ld bc,0c210h		;7daf
l7db2h:
	ld d,b			;7db2
	djnz l7d65h		;7db3
	jr nc,l7dbah		;7db5
	ld bc,0c310h		;7db7
l7dbah:
	ld h,b			;7dba
	djnz l7d6dh		;7dbb
	ld d,b			;7dbd
	inc bc			;7dbe
	ld bc,0900dh		;7dbf
	cp l			;7dc2
	ld hl,0bee9h		;7dc3
	jr l7dcbh		;7dc6
	ld hl,0bde7h		;7dc8
l7dcbh:
	ld a,001h		;7dcb
	ld (0c91bh),a		;7dcd
	call 0bdd8h		;7dd0
	xor a			;7dd3
	ld (0c91bh),a		;7dd4
	ret			;7dd7
l7dd8h:
	ld e,(hl)		;7dd8
	inc hl			;7dd9
	ld d,(hl)		;7dda
	inc hl			;7ddb
	ld a,d			;7ddc
	or e			;7ddd
	ret z			;7dde
	ld a,0feh		;7ddf
	call sub_6009h		;7de1
	inc hl			;7de4
	jr l7dd8h		;7de5
	nop			;7de7
	and b			;7de8
	ld d,e			;7de9
	ld d,h			;7dea
	ld b,c			;7deb
	ld b,(hl)		;7dec
	ld b,(hl)		;7ded
	nop			;7dee
	nop			;7def
	and h			;7df0
	dec l			;7df1
	ld d,b			;7df2
	ld d,d			;7df3
	ld c,a			;7df4
	ld b,a			;7df5
	ld d,d			;7df6
	ld b,c			;7df7
	ld c,l			;7df8
	dec l			;7df9
	nop			;7dfa
	nop			;7dfb
	xor b			;7dfc
	ld d,h			;7dfd
	ld l,041h		;7dfe
	ld b,h			;7e00
	ld b,c			;7e01
	ld b,e			;7e02
	ld c,b			;7e03
	ld c,c			;7e04
	nop			;7e05
	nop			;7e06
	xor h			;7e07
	ld d,d			;7e08
	ld l,053h		;7e09
	ld b,c			;7e0b
	ld b,a			;7e0c
	ld c,c			;7e0d
	ld d,e			;7e0e
	ld b,c			;7e0f
	ld c,e			;7e10
	ld b,c			;7e11
	nop			;7e12
	nop			;7e13
	or b			;7e14
	dec l			;7e15
	ld b,e			;7e16
	ld c,b			;7e17
	ld b,c			;7e18
	ld d,d			;7e19
	ld b,c			;7e1a
	ld b,e			;7e1b
	ld d,h			;7e1c
	ld b,l			;7e1d
	ld d,d			;7e1e
	dec l			;7e1f
	nop			;7e20
	nop			;7e21
	or h			;7e22
	ld c,b			;7e23
	ld l,04dh		;7e24
	ld b,c			;7e26
	ld c,e			;7e27
	ld c,c			;7e28
	ld d,h			;7e29
	ld b,c			;7e2a
	ld c,(hl)		;7e2b
	ld c,c			;7e2c
	nop			;7e2d
	nop			;7e2e
	cp b			;7e2f
	ld d,h			;7e30
	ld l,04bh		;7e31
	ld c,c			;7e33
	ld c,(hl)		;7e34
	ld c,a			;7e35
	ld d,e			;7e36
	ld c,b			;7e37
	ld c,c			;7e38
	ld d,h			;7e39
	ld b,c			;7e3a
	nop			;7e3b
	nop			;7e3c
	cp h			;7e3d
	ld d,h			;7e3e
	ld l,045h		;7e3f
	ld b,a			;7e41
	ld d,l			;7e42
	ld b,e			;7e43
	ld c,b			;7e44
	ld c,c			;7e45
	nop			;7e46
	nop			;7e47
	ret nz			;7e48
	dec l			;7e49
	ld d,e			;7e4a
	ld c,a			;7e4b
	ld d,l			;7e4c
	ld c,(hl)		;7e4d
	ld b,h			;7e4e
	dec l			;7e4f
	nop			;7e50
	nop			;7e51
	call nz,02e54h		;7e52
	ld d,e			;7e55
	ld b,l			;7e56
	ld c,e			;7e57
	ld c,c			;7e58
	ld d,h			;7e59
	ld c,a			;7e5a
	nop			;7e5b
	nop			;7e5c
	ret z			;7e5d
	ld c,e			;7e5e
	ld l,055h		;7e5f
	ld b,l			;7e61
	ld c,b			;7e62
	ld b,c			;7e63
	ld d,d			;7e64
	ld b,c			;7e65
	nop			;7e66
	nop			;7e67
	call z,02e59h		;7e68
	ld c,l			;7e6b
	ld b,c			;7e6c
	ld c,(hl)		;7e6d
	ld c,(hl)		;7e6e
	ld c,a			;7e6f
	nop			;7e70
	nop			;7e71
	ret nc			;7e72
	dec l			;7e73
	ld d,b			;7e74
	ld b,h			;7e75
	jr nz,$+85		;7e76
	ld d,h			;7e78
	ld b,c			;7e79
	ld b,(hl)		;7e7a
	ld b,(hl)		;7e7b
	dec l			;7e7c
	nop			;7e7d
	nop			;7e7e
	call nc,02e4eh		;7e7f
	ld d,e			;7e82
	ld b,c			;7e83
	ld d,h			;7e84
	ld c,a			;7e85
	ld c,b			;7e86
	nop			;7e87
	nop			;7e88
	ret c			;7e89
	ld c,b			;7e8a
	ld l,053h		;7e8b
	ld d,l			;7e8d
	ld c,l			;7e8e
	ld c,c			;7e8f
	ld b,h			;7e90
	ld b,c			;7e91
	nop			;7e92
	nop			;7e93
	call c,0532dh		;7e94
	ld d,b			;7e97
	ld b,l			;7e98
	ld b,e			;7e99
	ld c,c			;7e9a
	ld b,c			;7e9b
	ld c,h			;7e9c
	jr nz,l7ef3h		;7e9d
	ld c,b			;7e9f
	ld b,c			;7ea0
	ld c,(hl)		;7ea1
	ld c,e			;7ea2
	ld d,e			;7ea3
	dec l			;7ea4
	nop			;7ea5
	nop			;7ea6
	ret po			;7ea7
	ld d,d			;7ea8
	ld l,053h		;7ea9
	ld c,b			;7eab
	ld c,a			;7eac
	ld b,a			;7ead
	ld b,c			;7eae
	ld c,e			;7eaf
	ld c,c			;7eb0
	nop			;7eb1
	nop			;7eb2
	call po,02e4eh		;7eb3
	ld c,l			;7eb6
	ld b,c			;7eb7
	ld d,h			;7eb8
	ld d,e			;7eb9
	ld d,l			;7eba
	ld c,c			;7ebb
	nop			;7ebc
	nop			;7ebd
	ret pe			;7ebe
	ld d,b			;7ebf
	ld d,d			;7ec0
	ld b,l			;7ec1
	ld d,e			;7ec2
	ld b,l			;7ec3
	ld c,(hl)		;7ec4
	ld d,h			;7ec5
	ld b,l			;7ec6
	ld b,h			;7ec7
	nop			;7ec8
	nop			;7ec9
	call pe,05942h		;7eca
	nop			;7ecd
	nop			;7ece
	ret p			;7ecf
	ld c,e			;7ed0
	ld c,a			;7ed1
	ld c,(hl)		;7ed2
	ld b,c			;7ed3
	ld c,l			;7ed4
	ld c,c			;7ed5
	nop			;7ed6
	nop			;7ed7
	call p,02040h		;7ed8
	ld c,e			;7edb
	ld c,a			;7edc
	ld c,(hl)		;7edd
	ld b,c			;7ede
	ld c,l			;7edf
	ld c,c			;7ee0
	jr nz,l7f14h		;7ee1
	add hl,sp		;7ee3
	jr c,l7f1fh		;7ee4
	nop			;7ee6
	nop			;7ee7
	nop			;7ee8
	jr nz,$-30		;7ee9
	ld c,c			;7eeb
	ld c,(hl)		;7eec
	jr nz,l7f43h		;7eed
	ld c,b			;7eef
	ld b,l			;7ef0
	jr nz,l7f46h		;7ef1
l7ef3h:
	ld b,h			;7ef3
	ld l,031h		;7ef4
	jr c,l7f31h		;7ef6
	nop			;7ef8
	nop			;7ef9
	add a,b			;7efa
	ld b,h			;7efb
	ld b,c			;7efc
	ld c,(hl)		;7efd
l7efeh:
	ld b,a			;7efe
	ld b,l			;7eff
l7f00h:
	ld d,d			;7f00
	jr nz,l7f57h		;7f01
	ld c,b			;7f03
	ld d,d			;7f04
	ld b,l			;7f05
	ld b,c			;7f06
	ld d,h			;7f07
	ld b,l			;7f08
	ld c,(hl)		;7f09
	ld b,h			;7f0a
	nop			;7f0b
	jr nz,l7efeh		;7f0c
	ld c,a			;7f0e
	ld d,l			;7f0f
	ld d,d			;7f10
	jr nz,l7f5ah		;7f11
	ld b,c			;7f13
l7f14h:
	ld c,h			;7f14
	ld b,c			;7f15
	ld e,b			;7f16
	ld e,c			;7f17
	nop			;7f18
	inc d			;7f19
	call m,02020h		;7f1a
	jr nz,l7f3fh		;7f1d
l7f1fh:
	jr nz,l7f41h		;7f1f
	jr nz,l7f43h		;7f21
	jr nz,l7f45h		;7f23
	jr nz,l7f47h		;7f25
	jr nz,l7f49h		;7f27
	jr nz,l7f4bh		;7f29
	nop			;7f2b
	nop			;7f2c
	nop			;7f2d
	rst 38h			;7f2e
	rst 38h			;7f2f
	rst 38h			;7f30
l7f31h:
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
l7f3fh:
	rst 38h			;7f3f
	rst 38h			;7f40
l7f41h:
	rst 38h			;7f41
	rst 38h			;7f42
l7f43h:
	rst 38h			;7f43
	rst 38h			;7f44
l7f45h:
	rst 38h			;7f45
l7f46h:
	rst 38h			;7f46
l7f47h:
	rst 38h			;7f47
	rst 38h			;7f48
l7f49h:
	rst 38h			;7f49
	rst 38h			;7f4a
l7f4bh:
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
l7f57h:
	rst 38h			;7f57
	rst 38h			;7f58
	rst 38h			;7f59
l7f5ah:
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

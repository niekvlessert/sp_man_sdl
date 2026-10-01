; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank11_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank11.bin

	org 06000h

	rst 38h			;6000
	inc b			;6001
	xor a			;6002
	ld bc,001b0h		;6003
	or c			;6006
	ld bc,001afh		;6007
	or d			;600a
	ld bc,001b3h		;600b
	or h			;600e
	ld bc,001b5h		;600f
	or (hl)			;6012
	ld bc,001b7h		;6013
	cp b			;6016
	ld bc,001b9h		;6017
	cp d			;601a
	ld bc,001b2h		;601b
	xor a			;601e
	ld bc,001bbh		;601f
	cp h			;6022
	ld bc,001bdh		;6023
	cp (hl)			;6026
	ld bc,001afh		;6027
	rrca			;602a
	inc bc			;602b
	rrca			;602c
	inc bc			;602d
	dec a			;602e
	inc b			;602f
	ld a,004h		;6030
	ccf			;6032
	inc b			;6033
	cp e			;6034
	inc bc			;6035
	sub a			;6036
	inc b			;6037
	sub (hl)		;6038
	inc b			;6039
	sub l			;603a
	inc b			;603b
	rrca			;603c
	inc bc			;603d
	rrca			;603e
	inc bc			;603f
	push de			;6040
	inc bc			;6041
	dec hl			;6042
	inc bc			;6043
	rrca			;6044
	inc bc			;6045
	rrca			;6046
	inc bc			;6047
	rrca			;6048
	inc bc			;6049
	rrca			;604a
	inc bc			;604b
	rrca			;604c
	inc bc			;604d
	rrca			;604e
	inc bc			;604f
	rrca			;6050
	inc bc			;6051
	rrca			;6052
	inc bc			;6053
	rrca			;6054
	inc bc			;6055
	rrca			;6056
	inc bc			;6057
	rrca			;6058
	inc bc			;6059
	rrca			;605a
	inc bc			;605b
	rrca			;605c
	inc bc			;605d
	rrca			;605e
	inc bc			;605f
	rrca			;6060
	inc bc			;6061
	rrca			;6062
	inc bc			;6063
	rrca			;6064
	inc bc			;6065
	jp (hl)			;6066
	inc bc			;6067
	rst 38h			;6068
	inc b			;6069
	rrca			;606a
	inc bc			;606b
	rrca			;606c
	inc bc			;606d
	ld b,b			;606e
	inc b			;606f
	ld b,c			;6070
	inc b			;6071
	ld b,d			;6072
	inc b			;6073
	cp h			;6074
	inc bc			;6075
	sbc a,d			;6076
	inc b			;6077
	sbc a,c			;6078
	inc b			;6079
	sbc a,b			;607a
	inc b			;607b
	rrca			;607c
	inc bc			;607d
	rrca			;607e
	inc bc			;607f
	sub 003h		;6080
	inc l			;6082
	inc bc			;6083
	dec l			;6084
	inc bc			;6085
	rrca			;6086
	inc bc			;6087
	rrca			;6088
	inc bc			;6089
	rrca			;608a
	inc bc			;608b
	rrca			;608c
	inc bc			;608d
	rrca			;608e
	inc bc			;608f
	ld sp,03203h		;6090
	inc bc			;6093
	inc sp			;6094
	inc bc			;6095
	inc (hl)		;6096
	inc bc			;6097
	rrca			;6098
	inc bc			;6099
	rrca			;609a
	inc bc			;609b
	rrca			;609c
	inc bc			;609d
	rrca			;609e
	inc bc			;609f
	rrca			;60a0
	inc bc			;60a1
	jr z,$+5		;60a2
	daa			;60a4
	inc bc			;60a5
	jp pe,0ff03h		;60a6
	inc b			;60a9
	rrca			;60aa
	inc bc			;60ab
	rrca			;60ac
	inc bc			;60ad
	ld b,e			;60ae
	inc b			;60af
	ld b,h			;60b0
	inc b			;60b1
	ld b,l			;60b2
	inc b			;60b3
	cp l			;60b4
	inc bc			;60b5
	sbc a,l			;60b6
	inc b			;60b7
	sbc a,h			;60b8
	inc b			;60b9
	sbc a,e			;60ba
	inc b			;60bb
	rrca			;60bc
	inc bc			;60bd
	rrca			;60be
	inc bc			;60bf
	rst 10h			;60c0
	inc bc			;60c1
	ret c			;60c2
	inc bc			;60c3
	ld l,003h		;60c4
	rrca			;60c6
	inc bc			;60c7
	rrca			;60c8
	inc bc			;60c9
	rrca			;60ca
	inc bc			;60cb
	rrca			;60cc
	inc bc			;60cd
	dec (hl)		;60ce
	inc bc			;60cf
	ld (hl),003h		;60d0
	scf			;60d2
	inc bc			;60d3
	jr c,$+5		;60d4
	add hl,sp		;60d6
	inc bc			;60d7
	ld a,(00f03h)		;60d8
	inc bc			;60db
	rrca			;60dc
	inc bc			;60dd
	rrca			;60de
	inc bc			;60df
	rrca			;60e0
	inc bc			;60e1
	add hl,hl		;60e2
	inc bc			;60e3
	call pe,0eb03h		;60e4
	inc bc			;60e7
	rst 38h			;60e8
	inc b			;60e9
	rrca			;60ea
	inc bc			;60eb
	rrca			;60ec
	inc bc			;60ed
	ld b,(hl)		;60ee
	inc b			;60ef
	ld b,a			;60f0
	inc b			;60f1
	ld c,b			;60f2
	inc b			;60f3
	cp (hl)			;60f4
	inc bc			;60f5
	and b			;60f6
	inc b			;60f7
	sbc a,a			;60f8
	inc b			;60f9
	sbc a,(hl)		;60fa
	inc b			;60fb
	rrca			;60fc
	inc bc			;60fd
	rrca			;60fe
	inc bc			;60ff
l6100h:
	exx			;6100
	inc bc			;6101
	jp c,0db03h		;6102
	inc bc			;6105
	cpl			;6106
	inc bc			;6107
	rrca			;6108
	inc bc			;6109
	dec sp			;610a
	inc bc			;610b
	inc a			;610c
	inc bc			;610d
	dec a			;610e
	inc bc			;610f
	ld a,003h		;6110
	ccf			;6112
	inc bc			;6113
	ld b,b			;6114
	inc bc			;6115
	ld b,c			;6116
	inc bc			;6117
	ld b,d			;6118
	inc bc			;6119
	ld b,e			;611a
	inc bc			;611b
	ld b,h			;611c
	inc bc			;611d
	rrca			;611e
	inc bc			;611f
	ld hl,(0ef03h)		;6120
	inc bc			;6123
	xor 003h		;6124
	defb 0edh ;next byte illegal after ed	;6126
	inc bc			;6127
	rst 38h			;6128
	inc b			;6129
	rrca			;612a
	inc bc			;612b
	rrca			;612c
	inc bc			;612d
	ld c,c			;612e
	inc b			;612f
	ld c,d			;6130
	inc b			;6131
	ld c,e			;6132
	inc b			;6133
	cp a			;6134
	inc bc			;6135
	and e			;6136
	inc b			;6137
	and d			;6138
	inc b			;6139
	and c			;613a
	inc b			;613b
	rrca			;613c
	inc bc			;613d
	rrca			;613e
	inc bc			;613f
	call c,0dd03h		;6140
	inc bc			;6143
	sbc a,003h		;6144
	rst 18h			;6146
	inc bc			;6147
	jr nc,l614dh		;6148
	ld b,l			;614a
	inc bc			;614b
	ld b,(hl)		;614c
l614dh:
	inc bc			;614d
	ld b,a			;614e
	inc bc			;614f
	ld c,b			;6150
	inc bc			;6151
	ld c,c			;6152
	inc bc			;6153
	ld c,d			;6154
	inc bc			;6155
	ld c,e			;6156
	inc bc			;6157
	ld c,h			;6158
	inc bc			;6159
	ld c,l			;615a
	inc bc			;615b
	ld c,(hl)		;615c
	inc bc			;615d
	ld c,a			;615e
	inc bc			;615f
	di			;6160
	inc bc			;6161
	jp p,0f103h		;6162
	inc bc			;6165
	ret p			;6166
	inc bc			;6167
	rst 38h			;6168
	inc b			;6169
	rrca			;616a
	inc bc			;616b
	rrca			;616c
	inc bc			;616d
	ld c,h			;616e
	inc b			;616f
	ld c,l			;6170
	inc b			;6171
	ld c,(hl)		;6172
	inc b			;6173
	ret nz			;6174
	inc bc			;6175
	and (hl)		;6176
	inc b			;6177
	and l			;6178
	inc b			;6179
	and h			;617a
	inc b			;617b
	rrca			;617c
	inc bc			;617d
	rrca			;617e
	inc bc			;617f
	ret po			;6180
	inc bc			;6181
	pop hl			;6182
	inc bc			;6183
	jp po,0e303h		;6184
	inc bc			;6187
	call po,05003h		;6188
	inc bc			;618b
	ld d,c			;618c
	inc bc			;618d
	ld d,d			;618e
	inc bc			;618f
	ld d,e			;6190
	inc bc			;6191
	ld d,h			;6192
	inc bc			;6193
	ld d,l			;6194
	inc bc			;6195
	ld d,(hl)		;6196
	inc bc			;6197
	ld d,a			;6198
	inc bc			;6199
	ld e,b			;619a
	inc bc			;619b
	ld e,c			;619c
	inc bc			;619d
	ret m			;619e
	inc bc			;619f
	rst 30h			;61a0
	inc bc			;61a1
	or 003h			;61a2
	push af			;61a4
	inc bc			;61a5
	call p,0ff03h		;61a6
	inc b			;61a9
	rrca			;61aa
	inc bc			;61ab
	rrca			;61ac
	inc bc			;61ad
	ld c,a			;61ae
	inc b			;61af
	ld d,b			;61b0
	inc b			;61b1
	ld d,c			;61b2
	inc b			;61b3
	pop bc			;61b4
	inc bc			;61b5
	xor c			;61b6
	inc b			;61b7
	xor b			;61b8
	inc b			;61b9
	and a			;61ba
	inc b			;61bb
	rrca			;61bc
	inc bc			;61bd
	rrca			;61be
	inc bc			;61bf
	push hl			;61c0
	inc bc			;61c1
	and 003h		;61c2
	rst 20h			;61c4
	inc bc			;61c5
	ret pe			;61c6
	inc bc			;61c7
	ld e,d			;61c8
	inc bc			;61c9
	ld e,e			;61ca
	inc bc			;61cb
	ld e,h			;61cc
	inc bc			;61cd
	ld e,l			;61ce
	inc bc			;61cf
	ld e,(hl)		;61d0
	inc bc			;61d1
	ld e,a			;61d2
	inc bc			;61d3
	ld h,b			;61d4
	inc bc			;61d5
	ld h,c			;61d6
	inc bc			;61d7
	ld h,d			;61d8
	inc bc			;61d9
	ld h,e			;61da
	inc bc			;61db
	ld h,h			;61dc
	inc bc			;61dd
	ld h,l			;61de
	inc bc			;61df
	call m,0fb03h		;61e0
	inc bc			;61e3
	jp m,0f903h		;61e4
	inc bc			;61e7
	rst 38h			;61e8
	inc b			;61e9
	rrca			;61ea
	inc bc			;61eb
	rrca			;61ec
	inc bc			;61ed
	ld d,d			;61ee
	inc b			;61ef
	ld d,e			;61f0
	inc b			;61f1
	ld d,h			;61f2
	inc b			;61f3
	jp nz,0ac03h		;61f4
	inc b			;61f7
	xor e			;61f8
	inc b			;61f9
	xor d			;61fa
	inc b			;61fb
	rrca			;61fc
	inc bc			;61fd
	rrca			;61fe
	inc bc			;61ff
	ld h,(hl)		;6200
	inc bc			;6201
	ld h,a			;6202
	inc bc			;6203
	ld l,b			;6204
	inc bc			;6205
	ld l,c			;6206
	inc bc			;6207
	ld l,d			;6208
	inc bc			;6209
	ld l,e			;620a
	inc bc			;620b
	ld l,h			;620c
	inc bc			;620d
	ld l,l			;620e
	inc bc			;620f
	ld l,(hl)		;6210
	inc bc			;6211
	ld l,a			;6212
	inc bc			;6213
	ld (hl),b		;6214
	inc bc			;6215
	ld (hl),c		;6216
	inc bc			;6217
	ld (hl),d		;6218
	inc bc			;6219
	ld (hl),e		;621a
	inc bc			;621b
	ld (hl),h		;621c
	inc bc			;621d
	ld (hl),l		;621e
	inc bc			;621f
	and (hl)		;6220
	inc bc			;6221
	and a			;6222
	inc bc			;6223
	xor b			;6224
	inc bc			;6225
	xor c			;6226
	inc bc			;6227
	rst 38h			;6228
	inc b			;6229
	rrca			;622a
	inc bc			;622b
	rrca			;622c
	inc bc			;622d
	defb 0fdh,003h,0feh ;illegal sequence	;622e
	inc bc			;6231
	rst 38h			;6232
	inc bc			;6233
	jp 05703h		;6234
	inc b			;6237
	ld d,(hl)		;6238
	inc b			;6239
	ld d,l			;623a
	inc b			;623b
	rrca			;623c
	inc bc			;623d
	rrca			;623e
	inc bc			;623f
	halt			;6240
	inc bc			;6241
	ld (hl),a		;6242
	inc bc			;6243
	ld a,b			;6244
	inc bc			;6245
	ld a,c			;6246
	inc bc			;6247
	ld a,d			;6248
	inc bc			;6249
	ld a,e			;624a
	inc bc			;624b
	ld a,h			;624c
	inc bc			;624d
	ld a,l			;624e
	inc bc			;624f
	ld a,(hl)		;6250
	inc bc			;6251
	ld a,a			;6252
	inc bc			;6253
	add a,b			;6254
	inc bc			;6255
	add a,c			;6256
	inc bc			;6257
	add a,d			;6258
	inc bc			;6259
	add a,e			;625a
	inc bc			;625b
	add a,h			;625c
	inc bc			;625d
	add a,l			;625e
	inc bc			;625f
	xor d			;6260
	inc bc			;6261
	xor e			;6262
	inc bc			;6263
	or d			;6264
	inc bc			;6265
	xor (hl)		;6266
	inc bc			;6267
	rst 38h			;6268
	inc b			;6269
	rrca			;626a
	inc bc			;626b
	rrca			;626c
	inc bc			;626d
	nop			;626e
	inc b			;626f
	ld bc,00204h		;6270
	inc b			;6273
	call nz,05a03h		;6274
	inc b			;6277
	ld e,c			;6278
	inc b			;6279
	ld e,b			;627a
	inc b			;627b
	rrca			;627c
	inc bc			;627d
	rrca			;627e
	inc bc			;627f
	add a,(hl)		;6280
	inc bc			;6281
	add a,a			;6282
	inc bc			;6283
	adc a,b			;6284
	inc bc			;6285
	adc a,c			;6286
	inc bc			;6287
	adc a,d			;6288
	inc bc			;6289
	adc a,e			;628a
	inc bc			;628b
	adc a,h			;628c
	inc bc			;628d
	adc a,l			;628e
	inc bc			;628f
	adc a,(hl)		;6290
	inc bc			;6291
	adc a,a			;6292
	inc bc			;6293
	sub b			;6294
	inc bc			;6295
	sub c			;6296
	inc bc			;6297
	sub d			;6298
	inc bc			;6299
	sub e			;629a
	inc bc			;629b
	sub h			;629c
	inc bc			;629d
	sub l			;629e
	inc bc			;629f
	xor h			;62a0
	inc bc			;62a1
	xor l			;62a2
	inc bc			;62a3
	xor (hl)		;62a4
	inc bc			;62a5
	xor (hl)		;62a6
	inc bc			;62a7
	rst 38h			;62a8
	inc b			;62a9
	rrca			;62aa
	inc bc			;62ab
	rrca			;62ac
	inc bc			;62ad
	inc bc			;62ae
	inc b			;62af
	inc b			;62b0
	inc b			;62b1
	dec b			;62b2
	inc b			;62b3
	push bc			;62b4
	inc bc			;62b5
	ld e,l			;62b6
	inc b			;62b7
	ld e,h			;62b8
	inc b			;62b9
	ld e,e			;62ba
	inc b			;62bb
	rrca			;62bc
	inc bc			;62bd
	rrca			;62be
	inc bc			;62bf
	sub (hl)		;62c0
	inc bc			;62c1
	sub a			;62c2
	inc bc			;62c3
	sbc a,b			;62c4
	inc bc			;62c5
	sbc a,c			;62c6
	inc bc			;62c7
	sbc a,d			;62c8
	inc bc			;62c9
	sbc a,e			;62ca
	inc bc			;62cb
	sbc a,h			;62cc
	inc bc			;62cd
	sbc a,l			;62ce
	inc bc			;62cf
	sbc a,(hl)		;62d0
	inc bc			;62d1
	sbc a,a			;62d2
	inc bc			;62d3
	and b			;62d4
	inc bc			;62d5
	and c			;62d6
	inc bc			;62d7
	and d			;62d8
	inc bc			;62d9
	and e			;62da
	inc bc			;62db
	and h			;62dc
	inc bc			;62dd
	and l			;62de
	inc bc			;62df
	or b			;62e0
	inc bc			;62e1
	or c			;62e2
	inc bc			;62e3
	or d			;62e4
	inc bc			;62e5
	or e			;62e6
	inc bc			;62e7
	rst 38h			;62e8
	inc b			;62e9
	rrca			;62ea
	inc bc			;62eb
	ld b,004h		;62ec
	rlca			;62ee
	inc b			;62ef
	ex af,af'		;62f0
	inc b			;62f1
	add a,003h		;62f2
	rst 0			;62f4
	inc bc			;62f5
	ret			;62f6
	inc bc			;62f7
	ld h,b			;62f8
	inc b			;62f9
	ld e,a			;62fa
	inc b			;62fb
	ld e,(hl)		;62fc
	inc b			;62fd
	rrca			;62fe
	inc bc			;62ff
	rrca			;6300
	inc bc			;6301
	dec d			;6302
	inc bc			;6303
	ld d,003h		;6304
	rla			;6306
	inc bc			;6307
	jr l630dh		;6308
	call c,0de04h		;630a
l630dh:
	inc b			;630d
	pop bc			;630e
	inc b			;630f
	rst 38h			;6310
	inc b			;6311
	rst 38h			;6312
	inc b			;6313
	rst 38h			;6314
	inc b			;6315
	rst 38h			;6316
	inc b			;6317
	rst 38h			;6318
	inc b			;6319
	rst 38h			;631a
	inc b			;631b
	rst 38h			;631c
	inc b			;631d
	rst 38h			;631e
	inc b			;631f
	rst 38h			;6320
	inc b			;6321
	rst 38h			;6322
	inc b			;6323
	rst 38h			;6324
	inc b			;6325
	rst 38h			;6326
	inc b			;6327
	rst 38h			;6328
	inc b			;6329
	rrca			;632a
	inc bc			;632b
	rrca			;632c
	inc bc			;632d
	add hl,bc		;632e
	inc b			;632f
	ld a,(bc)		;6330
	inc b			;6331
	dec bc			;6332
	inc b			;6333
	ret z			;6334
	inc bc			;6335
	ld h,e			;6336
	inc b			;6337
	ld h,d			;6338
	inc b			;6339
	ld h,c			;633a
	inc b			;633b
	rrca			;633c
	inc bc			;633d
	rrca			;633e
	inc bc			;633f
	add hl,de		;6340
	inc bc			;6341
	ld a,(de)		;6342
	inc bc			;6343
	dec de			;6344
	inc bc			;6345
	inc e			;6346
	inc bc			;6347
	dec e			;6348
	inc bc			;6349
	defb 0ddh,004h,0dfh ;illegal sequence	;634a
	inc b			;634d
	jp nz,00f04h		;634e
	inc bc			;6351
	call 00f04h		;6352
	inc bc			;6355
	rst 38h			;6356
	inc b			;6357
	rst 38h			;6358
	inc b			;6359
	rst 38h			;635a
	inc b			;635b
	rst 38h			;635c
	inc b			;635d
	rst 38h			;635e
	inc b			;635f
	rst 38h			;6360
	inc b			;6361
	rst 38h			;6362
	inc b			;6363
	rst 38h			;6364
	inc b			;6365
	rst 38h			;6366
	inc b			;6367
	rst 38h			;6368
	inc b			;6369
	inc c			;636a
	inc b			;636b
	dec c			;636c
	inc b			;636d
	ld c,004h		;636e
	rrca			;6370
	inc b			;6371
	jp z,0cb03h		;6372
	inc bc			;6375
	call z,sub_6703h	;6376
	inc b			;6379
	ld h,(hl)		;637a
	inc b			;637b
	ld h,l			;637c
	inc b			;637d
	ld h,h			;637e
	inc b			;637f
	ld e,003h		;6380
	rra			;6382
	inc bc			;6383
	jr nz,l6389h		;6384
	ld hl,02203h		;6386
l6389h:
	inc bc			;6389
	rrca			;638a
	inc bc			;638b
	out (004h),a		;638c
	rrca			;638e
	inc bc			;638f
	rrca			;6390
	inc bc			;6391
	adc a,004h		;6392
	rrca			;6394
	inc bc			;6395
	rst 38h			;6396
	inc b			;6397
	rst 38h			;6398
	inc b			;6399
	rst 38h			;639a
	inc b			;639b
	rst 38h			;639c
	inc b			;639d
	rst 38h			;639e
	inc b			;639f
	rst 38h			;63a0
	inc b			;63a1
	rst 38h			;63a2
	inc b			;63a3
	rst 38h			;63a4
	inc b			;63a5
	rst 38h			;63a6
	inc b			;63a7
	rst 38h			;63a8
	inc b			;63a9
	rrca			;63aa
	inc bc			;63ab
	rrca			;63ac
	inc bc			;63ad
	djnz l63b4h		;63ae
	ld de,0cd04h		;63b0
	inc bc			;63b3
l63b4h:
	adc a,003h		;63b4
	rst 8			;63b6
	inc bc			;63b7
	ld l,c			;63b8
	inc b			;63b9
	ld l,b			;63ba
	inc b			;63bb
	rrca			;63bc
	inc bc			;63bd
	rrca			;63be
	inc bc			;63bf
	rrca			;63c0
	inc bc			;63c1
	inc hl			;63c2
	inc bc			;63c3
	inc h			;63c4
	inc bc			;63c5
	dec h			;63c6
	inc bc			;63c7
	ld h,003h		;63c8
	call nc,0d504h		;63ca
	inc b			;63cd
	sub 004h		;63ce
	rst 8			;63d0
	inc b			;63d1
	ret nc			;63d2
	inc b			;63d3
	pop de			;63d4
	inc b			;63d5
	rst 38h			;63d6
	inc b			;63d7
	rst 38h			;63d8
	inc b			;63d9
	rst 38h			;63da
	inc b			;63db
	rst 38h			;63dc
	inc b			;63dd
	rst 38h			;63de
	inc b			;63df
	rst 38h			;63e0
	inc b			;63e1
	rst 38h			;63e2
	inc b			;63e3
	rst 38h			;63e4
	inc b			;63e5
	rst 38h			;63e6
	inc b			;63e7
	rst 38h			;63e8
	inc b			;63e9
	ld (de),a		;63ea
	inc b			;63eb
	inc de			;63ec
	inc b			;63ed
	inc d			;63ee
	inc b			;63ef
	dec d			;63f0
	inc b			;63f1
	ld d,004h		;63f2
	ret nc			;63f4
	inc bc			;63f5
	ld l,(hl)		;63f6
	inc b			;63f7
sub_63f8h:
	ld l,l			;63f8
	inc b			;63f9
	ld l,h			;63fa
	inc b			;63fb
	ld l,e			;63fc
	inc b			;63fd
	ld l,d			;63fe
	inc b			;63ff
	ret nz			;6400
	inc b			;6401
	add a,004h		;6402
	rrca			;6404
	inc bc			;6405
	add a,004h		;6406
	rrca			;6408
	inc bc			;6409
	rrca			;640a
	inc bc			;640b
	out (004h),a		;640c
	rrca			;640e
	inc bc			;640f
	rst 38h			;6410
	inc b			;6411
	rst 38h			;6412
	inc b			;6413
	rst 38h			;6414
	inc b			;6415
	rst 38h			;6416
	inc b			;6417
	rst 38h			;6418
	inc b			;6419
	rst 38h			;641a
	inc b			;641b
	rst 38h			;641c
	inc b			;641d
	rst 38h			;641e
	inc b			;641f
	rst 38h			;6420
	inc b			;6421
	rst 38h			;6422
	inc b			;6423
	rst 38h			;6424
	inc b			;6425
	rst 38h			;6426
	inc b			;6427
	rst 38h			;6428
	inc b			;6429
	rla			;642a
	inc b			;642b
	jr l6432h		;642c
	add hl,de		;642e
	inc b			;642f
	ld a,(de)		;6430
	inc b			;6431
l6432h:
	dec de			;6432
	inc b			;6433
	pop de			;6434
	inc bc			;6435
	ld (hl),e		;6436
	inc b			;6437
	ld (hl),d		;6438
	inc b			;6439
	ld (hl),c		;643a
	inc b			;643b
	ld (hl),b		;643c
	inc b			;643d
	ld l,a			;643e
	inc b			;643f
	jp 0c704h		;6440
	inc b			;6443
	rrca			;6444
	inc bc			;6445
	rst 0			;6446
	inc b			;6447
	rrca			;6448
	inc bc			;6449
	call nc,0d704h		;644a
	inc b			;644d
	ret c			;644e
	inc b			;644f
	rst 38h			;6450
	inc b			;6451
	rst 38h			;6452
	inc b			;6453
	rst 38h			;6454
	inc b			;6455
	rst 38h			;6456
	inc b			;6457
	rst 38h			;6458
	inc b			;6459
	rst 38h			;645a
	inc b			;645b
	rst 38h			;645c
	inc b			;645d
	rst 38h			;645e
	inc b			;645f
	rst 38h			;6460
	inc b			;6461
	rst 38h			;6462
	inc b			;6463
	rst 38h			;6464
	inc b			;6465
	rst 38h			;6466
	inc b			;6467
	rst 38h			;6468
	inc b			;6469
	inc e			;646a
	inc b			;646b
	dec e			;646c
	inc b			;646d
	ld e,004h		;646e
	rra			;6470
	inc b			;6471
	jr nz,l6478h		;6472
	jp nc,l7803h		;6474
	inc b			;6477
l6478h:
	ld (hl),a		;6478
	inc b			;6479
	halt			;647a
	inc b			;647b
	ld (hl),l		;647c
	inc b			;647d
	ld (hl),h		;647e
	inc b			;647f
	call nz,0c804h		;6480
	inc b			;6483
	call z,0cb04h		;6484
	inc b			;6487
	jp z,0d904h		;6488
	inc b			;648b
	jp c,0db04h		;648c
	inc b			;648f
	rst 38h			;6490
	inc b			;6491
	rst 38h			;6492
	inc b			;6493
	rst 38h			;6494
	inc b			;6495
	rst 38h			;6496
	inc b			;6497
	rst 38h			;6498
	inc b			;6499
	rst 38h			;649a
	inc b			;649b
	rst 38h			;649c
	inc b			;649d
	rst 38h			;649e
	inc b			;649f
	rst 38h			;64a0
	inc b			;64a1
	rst 38h			;64a2
	inc b			;64a3
	rst 38h			;64a4
	inc b			;64a5
	rst 38h			;64a6
	inc b			;64a7
	rst 38h			;64a8
	inc b			;64a9
	ld hl,02204h		;64aa
	inc b			;64ad
	inc hl			;64ae
	inc b			;64af
	inc h			;64b0
	inc b			;64b1
	dec h			;64b2
	inc b			;64b3
	out (003h),a		;64b4
	ld a,l			;64b6
	inc b			;64b7
	ld a,h			;64b8
	inc b			;64b9
	ld a,e			;64ba
	inc b			;64bb
	ld a,d			;64bc
	inc b			;64bd
	ld a,c			;64be
	inc b			;64bf
	push bc			;64c0
	inc b			;64c1
	ret			;64c2
	inc b			;64c3
	rrca			;64c4
	inc bc			;64c5
	ret			;64c6
	inc b			;64c7
	rrca			;64c8
	inc bc			;64c9
	rst 38h			;64ca
	inc b			;64cb
	rst 38h			;64cc
	inc b			;64cd
	rst 38h			;64ce
	inc b			;64cf
	rst 38h			;64d0
	inc b			;64d1
	rst 38h			;64d2
	inc b			;64d3
	rst 38h			;64d4
	inc b			;64d5
	rst 38h			;64d6
	inc b			;64d7
	rst 38h			;64d8
	inc b			;64d9
	rst 38h			;64da
	inc b			;64db
	rst 38h			;64dc
	inc b			;64dd
	rst 38h			;64de
	inc b			;64df
	rst 38h			;64e0
	inc b			;64e1
	rst 38h			;64e2
	inc b			;64e3
	rst 38h			;64e4
	inc b			;64e5
	rst 38h			;64e6
	inc b			;64e7
	rst 38h			;64e8
	inc b			;64e9
	ld h,004h		;64ea
	daa			;64ec
	inc b			;64ed
	jr z,$+6		;64ee
	add hl,hl		;64f0
	inc b			;64f1
	ld hl,(0d404h)		;64f2
	inc bc			;64f5
	add a,d			;64f6
	inc b			;64f7
	add a,c			;64f8
	inc b			;64f9
	add a,b			;64fa
	inc b			;64fb
	ld a,a			;64fc
	inc b			;64fd
	ld a,(hl)		;64fe
	inc b			;64ff
	rst 38h			;6500
	rst 38h			;6501
	nop			;6502
	nop			;6503
	ld b,000h		;6504
	add hl,bc		;6506
	ld b,03eh		;6507
	ld bc,000e1h		;6509
	ld e,0e1h		;650c
	pop hl			;650e
	rst 38h			;650f
	rst 38h			;6510
	rst 38h			;6511
	inc b			;6512
	nop			;6513
	dec sp			;6514
	inc b			;6515
	call nz,0003fh		;6516
	rst 38h			;6519
	ld (hl),c		;651a
	rst 38h			;651b
	rst 8			;651c
	rst 38h			;651d
	cp a			;651e
	rst 38h			;651f
	rst 38h			;6520
	rst 38h			;6521
	nop			;6522
	nop			;6523
	jp 03c00h		;6524
	jp 0ff42h		;6527
	rst 38h			;652a
	rst 38h			;652b
	rst 38h			;652c
	rst 38h			;652d
	rst 38h			;652e
	rst 38h			;652f
	rst 38h			;6530
	rst 38h			;6531
	cp 000h			;6532
	ld bc,004feh		;6534
	rst 38h			;6537
	ret p			;6538
	rrca			;6539
	ld b,0f9h		;653a
	ret m			;653c
	rst 38h			;653d
	rst 38h			;653e
	rst 38h			;653f
	rst 38h			;6540
	rst 38h			;6541
	add a,0f8h		;6542
	or c			;6544
	adc a,08eh		;6545
	rst 38h			;6547
	rst 38h			;6548
	rst 38h			;6549
	rst 38h			;654a
	rst 38h			;654b
	add a,b			;654c
	rst 38h			;654d
	ccf			;654e
	ret nz			;654f
	ld b,b			;6550
	rst 38h			;6551
	jp 03f3fh		;6552
	rst 38h			;6555
	rst 38h			;6556
	rst 38h			;6557
	rst 38h			;6558
	rst 38h			;6559
	rst 38h			;655a
	rst 38h			;655b
	rst 38h			;655c
	rst 38h			;655d
	ld h,b			;655e
	rst 38h			;655f
	sbc a,(hl)		;6560
	pop hl			;6561
	rst 38h			;6562
	rst 38h			;6563
	rst 38h			;6564
	rst 38h			;6565
	rst 38h			;6566
	rst 38h			;6567
	rst 38h			;6568
	rst 38h			;6569
	or 0ffh			;656a
	inc bc			;656c
	rst 38h			;656d
	cp h			;656e
	ld b,e			;656f
	add a,c			;6570
	rst 38h			;6571
	rst 38h			;6572
	rst 38h			;6573
	rst 38h			;6574
	rst 38h			;6575
	rst 38h			;6576
	rst 38h			;6577
	inc e			;6578
	rst 38h			;6579
	ld a,e			;657a
	call m,0f8d4h		;657b
	dec hl			;657e
	call c,0ffdch		;657f
	rst 38h			;6582
	rst 38h			;6583
	rst 38h			;6584
	rst 38h			;6585
	rst 38h			;6586
	rst 38h			;6587
	ccf			;6588
	rst 38h			;6589
	ret nz			;658a
	ccf			;658b
	ld a,a			;658c
	nop			;658d
	ret nc			;658e
	jr nz,l65a0h		;658f
	ret p			;6591
	rst 38h			;6592
l6593h:
	rst 38h			;6593
	rst 38h			;6594
	rst 38h			;6595
	rst 38h			;6596
	rst 38h			;6597
	sub 0ffh		;6598
	add hl,hl		;659a
	sub 0d6h		;659b
	nop			;659d
	add hl,hl		;659e
	ld d,(hl)		;659f
l65a0h:
	cp (hl)			;65a0
	ld a,a			;65a1
	ei			;65a2
	rst 38h			;65a3
	call po,09bfbh		;65a4
	ret po			;65a7
	jp po,00000h		;65a8
	nop			;65ab
	jr c,l65aeh		;65ac
l65aeh:
	add a,038h		;65ae
	ld hl,0d8feh		;65b0
	rst 38h			;65b3
	ld a,a			;65b4
	rst 38h			;65b5
	sub a			;65b6
	ld a,a			;65b7
	ld l,b			;65b8
	rla			;65b9
	dec d			;65ba
	ld (bc),a		;65bb
	ld a,(bc)		;65bc
	nop			;65bd
	dec h			;65be
	ld a,(bc)		;65bf
	jp c,0552fh		;65c0
	xor 0eeh		;65c3
	rst 38h			;65c5
	rst 38h			;65c6
	rst 38h			;65c7
	rra			;65c8
	rst 38h			;65c9
	ret pe			;65ca
	rra			;65cb
	rla			;65cc
	ex af,af'		;65cd
	ret pe			;65ce
	djnz l65e8h		;65cf
	ret m			;65d1
	ld a,a			;65d2
	rst 38h			;65d3
	call m,0ffffh		;65d4
	rst 38h			;65d7
	add a,0ffh		;65d8
	ld a,c			;65da
	add a,086h		;65db
	ld b,b			;65dd
	ld a,c			;65de
	ld b,086h		;65df
	ld a,a			;65e1
	rst 38h			;65e2
	rst 38h			;65e3
	call m,08affh		;65e4
	rst 38h			;65e7
l65e8h:
	ld (hl),b		;65e8
	adc a,a			;65e9
	adc a,(hl)		;65ea
	nop			;65eb
	ld h,c			;65ec
	nop			;65ed
	sbc a,(hl)		;65ee
	ld h,c			;65ef
	ld h,c			;65f0
	cp 00ah			;65f1
	push af			;65f3
	dec (hl)		;65f4
	ret nz			;65f5
	ld d,d			;65f6
	add a,c			;65f7
	xor d			;65f8
	ld bc,02a55h		;65f9
	ld (09cfdh),hl		;65fc
	ld l,a			;65ff
	ld l,a			;6600
	rst 38h			;6601
	sub l			;6602
	ex af,af'		;6603
	ld h,h			;6604
	jr l6593h		;6605
	ld (hl),b		;6607
	pop de			;6608
	jr nz,l6621h		;6609
	pop hl			;660b
	ld l,c			;660c
	add a,a			;660d
	rlc a			;660e
	ld d,a			;6610
	adc a,a			;6611
	ld bc,01200h		;6612
	ld bc,003bdh		;6615
	ld b,e			;6618
	ccf			;6619
	cp a			;661a
	ld a,a			;661b
	ld a,a			;661c
	rst 38h			;661d
	rst 38h			;661e
	rst 38h			;661f
	rst 8			;6620
l6621h:
	rst 38h			;6621
	sbc a,a			;6622
	nop			;6623
	ld h,b			;6624
	sbc a,a			;6625
	sbc a,a			;6626
	rst 38h			;6627
	rst 38h			;6628
	rst 38h			;6629
	rst 38h			;662a
	rst 38h			;662b
	ret m			;662c
	rst 38h			;662d
	rst 8			;662e
	ret p			;662f
	jr nc,$-62		;6630
	rlca			;6632
	rst 38h			;6633
	rst 38h			;6634
	rst 38h			;6635
	rst 38h			;6636
	rst 38h			;6637
	call m,0fbffh		;6638
	call m,0ff38h		;663b
	rst 0			;663e
	ccf			;663f
	jr c,l6643h		;6640
	rst 38h			;6642
l6643h:
	rst 38h			;6643
	rst 38h			;6644
	rst 38h			;6645
	rst 38h			;6646
	rst 38h			;6647
	ccf			;6648
	rst 38h			;6649
	pop bc			;664a
	ccf			;664b
	ld a,0c1h		;664c
	jp 0fcfch		;664e
	rst 38h			;6651
	rst 38h			;6652
	rst 38h			;6653
	rst 38h			;6654
	rst 38h			;6655
	rst 38h			;6656
	rst 38h			;6657
	rst 38h			;6658
	rst 38h			;6659
	and b			;665a
	rst 38h			;665b
	ld e,(hl)		;665c
	and c			;665d
	and c			;665e
	ld a,a			;665f
	ld a,a			;6660
	rst 38h			;6661
	rst 38h			;6662
	rst 38h			;6663
	rst 38h			;6664
	rst 38h			;6665
	rst 38h			;6666
	rst 38h			;6667
	rst 38h			;6668
	rst 38h			;6669
	rst 38h			;666a
	rst 38h			;666b
l666ch:
	ld hl,0deffh		;666c
	pop hl			;666f
	pop hl			;6670
	cp 0ffh			;6671
	rst 38h			;6673
	rst 38h			;6674
	rst 38h			;6675
	rst 38h			;6676
	rst 38h			;6677
	rst 38h			;6678
	rst 38h			;6679
	rst 38h			;667a
	rst 38h			;667b
	ld e,c			;667c
	rst 38h			;667d
	adc a,031h		;667e
	ld sp,0e300h		;6680
	rst 38h			;6683
	inc c			;6684
	di			;6685
	ret po			;6686
	ccf			;6687
	nop			;6688
	rst 38h			;6689
	ccf			;668a
	ret nz			;668b
	ret nz			;668c
	nop			;668d
	rrca			;668e
	nop			;668f
	nop			;6690
	nop			;6691
	ld hl,0d7ffh		;6692
	ccf			;6695
	dec hl			;6696
	rst 30h			;6697
	rla			;6698
	rst 38h			;6699
	ret nz			;669a
	ccf			;669b
	jr c,$+9		;669c
	adc a,a			;669e
	nop			;669f
	jp po,0bf00h		;66a0
l66a3h:
	rst 38h			;66a3
	jp po,080ffh		;66a4
	rst 38h			;66a7
	rrca			;66a8
	ret p			;66a9
	jr c,l666ch		;66aa
	jp 09e00h		;66ac
	nop			;66af
	jr nc,l66b2h		;66b0
l66b2h:
	rst 20h			;66b2
	rst 38h			;66b3
	add a,c			;66b4
	rst 38h			;66b5
	add a,l			;66b6
	ld a,d			;66b7
	adc a,030h		;66b8
	cp 000h			;66ba
	ld h,b			;66bc
	nop			;66bd
	ld (bc),a		;66be
	nop			;66bf
	nop			;66c0
	nop			;66c1
	ret p			;66c2
	rst 38h			;66c3
	ld h,a			;66c4
	rst 38h			;66c5
	add hl,sp		;66c6
	rst 38h			;66c7
	adc a,(hl)		;66c8
	ld a,a			;66c9
	ld h,b			;66ca
	rra			;66cb
l66cch:
	ccf			;66cc
	nop			;66cd
	inc bc			;66ce
	nop			;66cf
	nop			;66d0
	nop			;66d1
	ld h,a			;66d2
	cp 0fch			;66d3
	rst 38h			;66d5
	rst 20h			;66d6
	rst 38h			;66d7
	add a,e			;66d8
	rst 38h			;66d9
	jr c,l66a3h		;66da
	rst 20h			;66dc
	nop			;66dd
	ld bc,00800h		;66de
	nop			;66e1
	di			;66e2
	rst 38h			;66e3
	inc c			;66e4
	di			;66e5
	di			;66e6
	ccf			;66e7
	nop			;66e8
	rst 38h			;66e9
	ccf			;66ea
	ret nz			;66eb
	ret nz			;66ec
	nop			;66ed
	rrca			;66ee
	nop			;66ef
	nop			;66f0
	nop			;66f1
l66f2h:
	jr z,$+1		;66f2
	rst 10h			;66f4
	ccf			;66f5
	dec hl			;66f6
	rst 30h			;66f7
	rla			;66f8
	rst 38h			;66f9
	ret nz			;66fa
	ccf			;66fb
	jr c,$+9		;66fc
	adc a,a			;66fe
	nop			;66ff
	jp po,03f00h		;6700
sub_6703h:
	rst 38h			;6703
	cp 0ffh			;6704
	ret po			;6706
	rst 38h			;6707
	adc a,a			;6708
	ret p			;6709
	jr c,l66cch		;670a
	jp 09e00h		;670c
	nop			;670f
	jr nc,l6712h		;6710
l6712h:
	or 0ffh			;6712
	rst 38h			;6714
	rst 38h			;6715
	sbc a,a			;6716
	ld a,a			;6717
	call 0f33fh		;6718
	inc c			;671b
	ld l,h			;671c
	nop			;671d
	inc bc			;671e
	nop			;671f
	ld (bc),a		;6720
	ld bc,0ffffh		;6721
	rst 38h			;6724
	rst 38h			;6725
	rst 38h			;6726
	rst 38h			;6727
	ei			;6728
	rst 38h			;6729
l672ah:
	sub l			;672a
	ld a,e			;672b
	sbc a,l			;672c
	ld h,e			;672d
	ld hl,(0d4c1h)		;672e
	ex de,hl		;6731
	ld d,a			;6732
	adc a,a			;6733
	ld d,h			;6734
	adc a,a			;6735
	ld l,0dfh		;6736
	defb 0ddh,0feh,0ebh ;illegal sequence	;6738
	call m,0fd92h		;673b
	ld h,(hl)		;673e
	sbc a,c			;673f
	sbc a,l			;6740
	ld b,03dh		;6741
	cp 0f6h			;6743
	ret m			;6745
	ex af,af'		;6746
	ret p			;6747
	sub b			;6748
	ld h,b			;6749
	ld hl,042c0h		;674a
	add a,c			;674d
	add a,h			;674e
	inc bc			;674f
	add hl,bc		;6750
l6751h:
	ld b,080h		;6751
	nop			;6753
	nop			;6754
	nop			;6755
	rrca			;6756
	nop			;6757
	ld (hl),b		;6758
	rrca			;6759
	sbc a,d			;675a
	ld h,l			;675b
	ld h,h			;675c
	add a,b			;675d
	adc a,e			;675e
	inc b			;675f
	jr nc,l6771h		;6760
	ld b,001h		;6762
	inc bc			;6764
	nop			;6765
	ret nz			;6766
	nop			;6767
	jr nc,l672ah		;6768
	jr $-30			;676a
	inc b			;676c
	jr c,l66f2h		;676d
	inc c			;676f
	ld h,l			;6770
l6771h:
	add a,d			;6771
	rra			;6772
	rst 38h			;6773
	pop bc			;6774
	ccf			;6775
	ld l,011h		;6776
	ld de,01e00h		;6778
	ld bc,0030ch		;677b
	inc bc			;677e
	nop			;677f
	add a,b			;6780
	nop			;6781
	rst 38h			;6782
	rst 38h			;6783
	call m,093ffh		;6784
	call m,0906ch		;6787
	sub e			;678a
	nop			;678b
	ld a,h			;678c
	add a,e			;678d
	add a,039h		;678e
	add hl,sp		;6790
	nop			;6791
	cp 0ffh			;6792
	ld bc,0aeffh		;6794
	ld d,c			;6797
	ld c,c			;6798
	djnz l6751h		;6799
	nop			;679b
	ld c,c			;679c
	or (hl)			;679d
	and (hl)		;679e
	rst 38h			;679f
	ld d,c			;67a0
	xor 0ceh		;67a1
	ld sp,0ff49h		;67a3
	sub 06fh		;67a6
	scf			;67a8
	ld c,a			;67a9
	and b			;67aa
	ld e,a			;67ab
	ld a,(de)		;67ac
	ret po			;67ad
	ld a,h			;67ae
	add a,b			;67af
	and b			;67b0
	nop			;67b1
	nop			;67b2
	nop			;67b3
	ld (bc),a		;67b4
	nop			;67b5
	jr nz,l67b8h		;67b6
l67b8h:
	djnz l67bah		;67b8
l67bah:
	nop			;67ba
	nop			;67bb
	djnz l67beh		;67bc
l67beh:
	add a,h			;67be
	nop			;67bf
	pop af			;67c0
	nop			;67c1
	adc a,h			;67c2
	nop			;67c3
	nop			;67c4
	nop			;67c5
	nop			;67c6
	nop			;67c7
	nop			;67c8
	nop			;67c9
	nop			;67ca
	nop			;67cb
	nop			;67cc
	nop			;67cd
	inc c			;67ce
	nop			;67cf
	jp 00000h		;67d0
	nop			;67d3
	nop			;67d4
	nop			;67d5
	nop			;67d6
	nop			;67d7
	nop			;67d8
	nop			;67d9
	inc b			;67da
	nop			;67db
	dec c			;67dc
	nop			;67dd
	ld a,(bc)		;67de
	ld bc,00304h		;67df
	nop			;67e2
	nop			;67e3
	nop			;67e4
	nop			;67e5
	nop			;67e6
	nop			;67e7
	ld bc,09400h		;67e8
	nop			;67eb
	ld h,(hl)		;67ec
	nop			;67ed
	or b			;67ee
	ld b,b			;67ef
	ld (hl),b		;67f0
	add a,b			;67f1
	djnz l67f4h		;67f2
l67f4h:
	rrca			;67f4
	nop			;67f5
	ret nz			;67f6
	nop			;67f7
	nop			;67f8
	nop			;67f9
	ld e,000h		;67fa
	ld a,a			;67fc
	nop			;67fd
	ld b,c			;67fe
	ld a,0dch		;67ff
	ccf			;6801
	nop			;6802
	nop			;6803
	add a,b			;6804
	nop			;6805
	ret p			;6806
	nop			;6807
	ld b,h			;6808
	nop			;6809
	ld (01900h),hl		;680a
	nop			;680d
	adc a,b			;680e
	nop			;680f
	call z,00000h		;6810
	ld b,b			;6813
	ld (bc),a		;6814
	nop			;6815
	nop			;6816
	nop			;6817
	nop			;6818
	nop			;6819
	nop			;681a
	nop			;681b
	djnz l681eh		;681c
l681eh:
	add a,h			;681e
	nop			;681f
	ret po			;6820
	nop			;6821
	adc a,h			;6822
	nop			;6823
	nop			;6824
	nop			;6825
	nop			;6826
	nop			;6827
	nop			;6828
	nop			;6829
	nop			;682a
	nop			;682b
	nop			;682c
	nop			;682d
	inc c			;682e
	nop			;682f
	ret nz			;6830
	nop			;6831
	nop			;6832
	nop			;6833
	nop			;6834
	nop			;6835
	nop			;6836
	nop			;6837
	nop			;6838
	nop			;6839
	inc b			;683a
	nop			;683b
	dec c			;683c
	nop			;683d
	add hl,bc		;683e
	nop			;683f
	nop			;6840
	nop			;6841
	ld (bc),a		;6842
	nop			;6843
	ld de,00000h		;6844
	nop			;6847
	nop			;6848
	nop			;6849
	nop			;684a
	nop			;684b
	ld h,b			;684c
	nop			;684d
	sbc a,h			;684e
	nop			;684f
	rst 20h			;6850
	nop			;6851
	call nz,0ac03h		;6852
	ld b,e			;6855
	ld (hl),e		;6856
	inc c			;6857
l6858h:
	inc e			;6858
	nop			;6859
	nop			;685a
	nop			;685b
	nop			;685c
	nop			;685d
	ld bc,0e300h		;685e
	nop			;6861
	xor c			;6862
	ret nc			;6863
	ld (hl),0f9h		;6864
	add a,c			;6866
	ld a,a			;6867
	ld e,h			;6868
	inc hl			;6869
	inc hl			;686a
	nop			;686b
	nop			;686c
	nop			;686d
	add a,a			;686e
	nop			;686f
	ld a,b			;6870
	add a,a			;6871
	ld h,e			;6872
	inc e			;6873
	adc a,h			;6874
	ld (hl),b		;6875
	jr l6858h		;6876
	ld h,b			;6878
	add a,b			;6879
	add a,b			;687a
	nop			;687b
	nop			;687c
	nop			;687d
	rrca			;687e
	nop			;687f
	defb 0fdh,002h,00ah ;illegal sequence	;6880
	inc b			;6883
	inc d			;6884
	ex af,af'		;6885
	jr l6888h		;6886
l6888h:
	jr l688ah		;6888
l688ah:
	jr l688ch		;688a
l688ch:
	ex af,af'		;688c
	nop			;688d
	inc c			;688e
	nop			;688f
	add a,(hl)		;6890
	nop			;6891
	ld e,(hl)		;6892
	ld hl,040a1h		;6893
	adc a,a			;6896
	nop			;6897
	nop			;6898
	nop			;6899
	nop			;689a
	nop			;689b
	nop			;689c
	nop			;689d
	nop			;689e
	nop			;689f
	nop			;68a0
	nop			;68a1
	ld c,d			;68a2
	or c			;68a3
	or l			;68a4
	ex af,af'		;68a5
	adc a,d			;68a6
	inc b			;68a7
	push bc			;68a8
	ld (bc),a		;68a9
	dec sp			;68aa
	ld bc,0010eh		;68ab
	dec b			;68ae
	nop			;68af
	ld bc,0c000h		;68b0
	nop			;68b3
	ld h,b			;68b4
	add a,b			;68b5
	or h			;68b6
	ld b,b			;68b7
	cp b			;68b8
	nop			;68b9
	ld e,h			;68ba
	add a,b			;68bb
	and a			;68bc
	ret nz			;68bd
	ld b,e			;68be
	ret po			;68bf
	jr nc,$-62		;68c0
	ld (bc),a		;68c2
	nop			;68c3
	ld de,00000h		;68c4
	nop			;68c7
	nop			;68c8
	nop			;68c9
	nop			;68ca
	nop			;68cb
	ld h,b			;68cc
	nop			;68cd
	sbc a,a			;68ce
	nop			;68cf
	rst 20h			;68d0
	nop			;68d1
	cp a			;68d2
	ld b,b			;68d3
	ret po			;68d4
	nop			;68d5
	ex af,af'		;68d6
	nop			;68d7
	nop			;68d8
	nop			;68d9
	nop			;68da
	nop			;68db
	nop			;68dc
	nop			;68dd
	nop			;68de
	nop			;68df
	ex (sp),hl		;68e0
	nop			;68e1
	add a,b			;68e2
	nop			;68e3
	nop			;68e4
	nop			;68e5
	nop			;68e6
	nop			;68e7
	nop			;68e8
	nop			;68e9
	nop			;68ea
	nop			;68eb
	ex af,af'		;68ec
	nop			;68ed
	dec b			;68ee
	nop			;68ef
	inc e			;68f0
	nop			;68f1
	cp b			;68f2
	nop			;68f3
	adc a,(hl)		;68f4
	ld (hl),b		;68f5
	and c			;68f6
	ld a,(hl)		;68f7
	sub (hl)		;68f8
	ld a,a			;68f9
	ld a,(bc)		;68fa
	push af			;68fb
	dec a			;68fc
	jp nz,0ffc0h		;68fd
	ld sp,hl		;6900
	rst 38h			;6901
	defb 0fdh,000h,022h ;illegal sequence	;6902
	dec e			;6905
l6906h:
	ret nz			;6906
	ccf			;6907
	add hl,de		;6908
	rst 38h			;6909
	call c,00723h		;690a
	ret m			;690d
	ret m			;690e
	rst 38h			;690f
	ccf			;6910
	rst 38h			;6911
	ret			;6912
	ld b,033h		;6913
	call z,0f847h		;6915
	rst 38h			;6918
	cp 020h			;6919
	rst 38h			;691b
	ld b,a			;691c
	cp a			;691d
	inc l			;691e
	di			;691f
	jp p,058fdh		;6920
	and b			;6923
	jr l6906h		;6924
	sbc a,b			;6926
	ld h,b			;6927
	adc a,b			;6928
	ld (hl),b		;6929
	call nz,0f438h		;692a
	ret z			;692d
	ld e,0e0h		;692e
	jp 09e3ch		;6930
	ld a,a			;6933
	cp a			;6934
	ld a,a			;6935
	cp (hl)			;6936
	ld a,a			;6937
	sbc a,(hl)		;6938
	ld a,a			;6939
	call nz,sub_713fh	;693a
	ld c,01fh		;693d
	nop			;693f
	nop			;6940
	nop			;6941
l6942h:
	ld c,h			;6942
	add a,b			;6943
	ld b,(hl)		;6944
	add a,b			;6945
	ld c,d			;6946
	add a,b			;6947
	rst 0			;6948
	nop			;6949
	adc a,h			;694a
	nop			;694b
	sub b			;694c
	nop			;694d
	inc de			;694e
	nop			;694f
	inc h			;6950
	inc bc			;6951
	ld b,c			;6952
	nop			;6953
	ld b,a			;6954
	nop			;6955
	dec b			;6956
	nop			;6957
	and d			;6958
	nop			;6959
	ld de,00c00h		;695a
	nop			;695d
	pop af			;695e
	nop			;695f
	djnz l6942h		;6960
l6962h:
	add a,b			;6962
	nop			;6963
	ld h,b			;6964
	nop			;6965
	ld h,b			;6966
	nop			;6967
	add a,b			;6968
	nop			;6969
	add a,a			;696a
	nop			;696b
	inc e			;696c
	inc bc			;696d
	inc hl			;696e
	rra			;696f
	daa			;6970
	rra			;6971
	ld bc,00000h		;6972
	rlca			;6975
	rlca			;6976
	jr l6962h		;6977
	ld e,00eh		;6979
	rst 38h			;697b
	ld b,a			;697c
	cp a			;697d
	xor h			;697e
	di			;697f
	jp p,030fdh		;6980
	nop			;6983
	adc a,l			;6984
	nop			;6985
l6986h:
	ld (hl),d		;6986
	adc a,l			;6987
	dec c			;6988
	rst 38h			;6989
	rst 38h			;698a
	rst 38h			;698b
	rst 0			;698c
	rst 38h			;698d
	inc a			;698e
	rst 38h			;698f
	ld a,a			;6990
	rst 38h			;6991
	ld a,l			;6992
	nop			;6993
	adc a,d			;6994
	dec b			;6995
	ret p			;6996
	rrca			;6997
	dec c			;6998
	rst 38h			;6999
	rst 38h			;699a
	rst 38h			;699b
	rst 38h			;699c
	rst 38h			;699d
	rst 38h			;699e
	rst 38h			;699f
	rst 38h			;69a0
	rst 38h			;69a1
	add a,(hl)		;69a2
	ld a,a			;69a3
	ccf			;69a4
	rst 38h			;69a5
	ld a,a			;69a6
	rst 38h			;69a7
	rst 38h			;69a8
	rst 38h			;69a9
	jr nz,$+1		;69aa
	rlca			;69ac
	rst 38h			;69ad
	defb 0fdh,0ffh,0ffh ;illegal sequence	;69ae
	rst 38h			;69b1
	ld b,0f9h		;69b2
	cp c			;69b4
	cp 0ech			;69b5
	rst 38h			;69b7
	rst 38h			;69b8
	rst 38h			;69b9
	cpl			;69ba
	rst 38h			;69bb
	rlca			;69bc
	rst 38h			;69bd
	ret p			;69be
l69bfh:
	rst 38h			;69bf
	cp 0ffh			;69c0
	ld b,c			;69c2
	add a,b			;69c3
	jr nz,l6986h		;69c4
	ret c			;69c6
	jr nz,l69f0h		;69c7
	ret c			;69c9
	jp nz,03dfdh		;69ca
	rst 38h			;69cd
	rst 28h			;69ce
	rst 38h			;69cf
	ccf			;69d0
	rst 38h			;69d1
	add a,b			;69d2
	nop			;69d3
	inc b			;69d4
	nop			;69d5
	inc bc			;69d6
	nop			;69d7
	nop			;69d8
	nop			;69d9
	ret po			;69da
	nop			;69db
	dec de			;69dc
	ret po			;69dd
	sub h			;69de
	ex de,hl		;69df
	and 0f9h		;69e0
	ld b,001h		;69e2
	rra			;69e4
	nop			;69e5
	ld sp,hl		;69e6
	nop			;69e7
	ld a,(bc)		;69e8
	ld bc,00f31h		;69e9
	rst 30h			;69ec
	rrca			;69ed
	rlca			;69ee
	rst 38h			;69ef
l69f0h:
	xor b			;69f0
	rst 10h			;69f1
	and b			;69f2
	ret nz			;69f3
	ld b,a			;69f4
	add a,b			;69f5
	jr c,l69bfh		;69f6
	add a,e			;69f8
	rst 38h			;69f9
	rst 38h			;69fa
	rst 38h			;69fb
	ret pe			;69fc
	rst 38h			;69fd
	rla			;69fe
	ret pe			;69ff
	ret z			;6a00
	ccf			;6a01
	jr nc,l6a04h		;6a02
l6a04h:
	adc a,l			;6a04
	nop			;6a05
	ld (hl),d		;6a06
	adc a,l			;6a07
	dec c			;6a08
	rst 38h			;6a09
	rst 38h			;6a0a
	rst 38h			;6a0b
	ld b,a			;6a0c
	rst 38h			;6a0d
	inc a			;6a0e
	rst 38h			;6a0f
	ld a,a			;6a10
	rst 38h			;6a11
	add a,c			;6a12
	nop			;6a13
	ld a,b			;6a14
	add a,b			;6a15
	ld l,a			;6a16
	sub b			;6a17
	ld b,b			;6a18
	rst 38h			;6a19
	jr $-23			;6a1a
	rst 38h			;6a1c
	ei			;6a1d
	rst 38h			;6a1e
	rst 38h			;6a1f
	rst 38h			;6a20
	rst 38h			;6a21
	ld sp,hl		;6a22
	rst 38h			;6a23
	rst 38h			;6a24
	rst 38h			;6a25
	rst 38h			;6a26
	rst 38h			;6a27
	rst 38h			;6a28
	rst 38h			;6a29
	rst 38h			;6a2a
	rst 38h			;6a2b
	rst 38h			;6a2c
	rst 38h			;6a2d
	rst 38h			;6a2e
	rst 38h			;6a2f
	rst 38h			;6a30
	rst 38h			;6a31
	rrca			;6a32
	rst 38h			;6a33
	ret nz			;6a34
	rst 38h			;6a35
	rst 38h			;6a36
	rst 38h			;6a37
	rst 38h			;6a38
	rst 38h			;6a39
	rst 38h			;6a3a
	rst 38h			;6a3b
	rst 38h			;6a3c
	rst 38h			;6a3d
	rst 38h			;6a3e
	rst 38h			;6a3f
	rst 38h			;6a40
	rst 38h			;6a41
	call p,0ffffh		;6a42
	rst 38h			;6a45
	sub a			;6a46
	rst 38h			;6a47
	rst 38h			;6a48
	rst 38h			;6a49
	rst 38h			;6a4a
	rst 38h			;6a4b
	rst 38h			;6a4c
	rst 38h			;6a4d
	rst 38h			;6a4e
	rst 38h			;6a4f
	rst 38h			;6a50
	rst 38h			;6a51
	adc a,d			;6a52
	ld (hl),l		;6a53
	ret nz			;6a54
	rst 38h			;6a55
	call m,0fdffh		;6a56
	cp 0feh			;6a59
	rst 38h			;6a5b
	defb 0fdh,0ffh,0fah ;illegal sequence	;6a5c
	defb 0fdh,0fdh,0ffh ;illegal sequence	;6a5f
	ret nz			;6a62
	nop			;6a63
	ccf			;6a64
	ret nz			;6a65
	adc a,h			;6a66
	di			;6a67
	cpl			;6a68
	ret nc			;6a69
	ld (hl),c		;6a6a
	adc a,(hl)		;6a6b
	ld b,b			;6a6c
	cp a			;6a6d
	sbc a,e			;6a6e
	ld a,h			;6a6f
	ex af,af'		;6a70
	rst 38h			;6a71
	jp z,04b07h		;6a72
	add a,a			;6a75
	rlc a			;6a76
	ld c,e			;6a78
	add a,a			;6a79
	call nz,0e303h		;6a7a
	nop			;6a7d
	ld (hl),b		;6a7e
	add a,b			;6a7f
	ret c			;6a80
	nop			;6a81
	ret z			;6a82
	ret p			;6a83
	jp pe,0eaf0h		;6a84
	ret p			;6a87
	xor e			;6a88
	ret p			;6a89
	jp nc,034e1h		;6a8a
	jp 00384h		;6a8d
	dec bc			;6a90
	inc b			;6a91
	sbc a,e			;6a92
	rlca			;6a93
	call p,08903h		;6a94
	halt			;6a97
	or (hl)			;6a98
	ld a,a			;6a99
	ld l,a			;6a9a
	rst 38h			;6a9b
	rst 10h			;6a9c
	rst 28h			;6a9d
	xor e			;6a9e
	rst 30h			;6a9f
	ld d,a			;6aa0
	cp a			;6aa1
	ret			;6aa2
	rst 30h			;6aa3
	scf			;6aa4
	rst 8			;6aa5
	adc a,a			;6aa6
	ld a,a			;6aa7
	ld a,a			;6aa8
	rst 38h			;6aa9
	rst 38h			;6aaa
	rst 38h			;6aab
	rst 38h			;6aac
	rst 38h			;6aad
	rst 38h			;6aae
	rst 38h			;6aaf
	rst 38h			;6ab0
	rst 38h			;6ab1
	rst 38h			;6ab2
	rst 38h			;6ab3
	rst 38h			;6ab4
	rst 38h			;6ab5
	rst 38h			;6ab6
	rst 38h			;6ab7
	rst 38h			;6ab8
	rst 38h			;6ab9
	rst 38h			;6aba
	rst 38h			;6abb
	rst 38h			;6abc
	rst 38h			;6abd
	rst 38h			;6abe
	rst 38h			;6abf
	rst 38h			;6ac0
	rst 38h			;6ac1
	rst 38h			;6ac2
	rst 38h			;6ac3
	rst 38h			;6ac4
	rst 38h			;6ac5
	ret m			;6ac6
	rst 38h			;6ac7
	ret m			;6ac8
	rst 38h			;6ac9
	di			;6aca
	rst 38h			;6acb
	rst 38h			;6acc
	rst 38h			;6acd
	rst 38h			;6ace
	rst 38h			;6acf
	rst 38h			;6ad0
	rst 38h			;6ad1
	rst 38h			;6ad2
	rst 38h			;6ad3
	rst 38h			;6ad4
	rst 38h			;6ad5
	ld bc,033ffh		;6ad6
	rst 38h			;6ad9
	rst 38h			;6ada
	rst 38h			;6adb
	ret p			;6adc
	rst 38h			;6add
	rst 28h			;6ade
	ret p			;6adf
	ret c			;6ae0
	rst 20h			;6ae1
	ld sp,hl		;6ae2
	rst 38h			;6ae3
	rst 38h			;6ae4
	rst 38h			;6ae5
	rst 38h			;6ae6
	rst 38h			;6ae7
	rst 38h			;6ae8
	rst 38h			;6ae9
	call m,0f3ffh		;6aea
	rst 38h			;6aed
	ld l,a			;6aee
	rst 38h			;6aef
	ld a,b			;6af0
	rst 38h			;6af1
	sub 0f9h		;6af2
	ld sp,hl		;6af4
	rst 38h			;6af5
	rst 38h			;6af6
	rst 38h			;6af7
	xor a			;6af8
	rst 38h			;6af9
	rst 38h			;6afa
	rst 38h			;6afb
	pop bc			;6afc
	rst 38h			;6afd
	ld a,0c1h		;6afe
	ld a,a			;6b00
	add a,b			;6b01
	ccf			;6b02
	rst 38h			;6b03
	rst 38h			;6b04
	rst 38h			;6b05
	rst 38h			;6b06
	rst 38h			;6b07
	rst 38h			;6b08
	rst 38h			;6b09
	rst 38h			;6b0a
	rst 38h			;6b0b
	rst 30h			;6b0c
	rst 38h			;6b0d
	xor e			;6b0e
	rst 30h			;6b0f
	ld d,a			;6b10
	cp a			;6b11
	rst 38h			;6b12
	rst 38h			;6b13
	rst 38h			;6b14
	rst 38h			;6b15
	rst 38h			;6b16
	rst 38h			;6b17
	rst 38h			;6b18
	rst 38h			;6b19
	rst 38h			;6b1a
	rst 38h			;6b1b
	rst 38h			;6b1c
	rst 38h			;6b1d
	rst 38h			;6b1e
	rst 38h			;6b1f
	rra			;6b20
	rst 38h			;6b21
	rst 38h			;6b22
	rst 38h			;6b23
	rst 38h			;6b24
	rst 38h			;6b25
	rst 38h			;6b26
	rst 38h			;6b27
	rst 38h			;6b28
	rst 38h			;6b29
	rst 38h			;6b2a
	rst 38h			;6b2b
	rst 38h			;6b2c
	rst 38h			;6b2d
	rst 38h			;6b2e
	rst 38h			;6b2f
	inc hl			;6b30
	rst 38h			;6b31
	rst 38h			;6b32
	rst 38h			;6b33
	rst 38h			;6b34
	rst 38h			;6b35
	rst 38h			;6b36
	rst 38h			;6b37
	rst 38h			;6b38
	rst 38h			;6b39
	push hl			;6b3a
	rst 38h			;6b3b
	sbc a,a			;6b3c
	rst 38h			;6b3d
	cp 0ffh			;6b3e
	ld bc,0fffeh		;6b40
	rst 38h			;6b43
	rst 38h			;6b44
	rst 38h			;6b45
	rst 38h			;6b46
	rst 38h			;6b47
	ld e,(hl)		;6b48
	rst 38h			;6b49
	rst 8			;6b4a
	rst 38h			;6b4b
	sbc a,h			;6b4c
	rst 38h			;6b4d
	ld (hl),b		;6b4e
	rst 38h			;6b4f
	adc a,a			;6b50
	ld (hl),b		;6b51
	defb 0fdh,0feh,0c9h ;illegal sequence	;6b52
	cp 0e0h			;6b55
	rst 38h			;6b57
	rst 0			;6b58
	ret m			;6b59
	ld a,0c0h		;6b5a
	pop de			;6b5c
	nop			;6b5d
	sub b			;6b5e
	inc bc			;6b5f
	ld a,l			;6b60
	add a,d			;6b61
	xor 000h		;6b62
	ld a,a			;6b64
	add a,b			;6b65
	ret z			;6b66
	nop			;6b67
	nop			;6b68
	nop			;6b69
	nop			;6b6a
	nop			;6b6b
	ld h,b			;6b6c
	nop			;6b6d
	ret nz			;6b6e
	nop			;6b6f
	add a,h			;6b70
	nop			;6b71
	call p,0db03h		;6b72
	inc h			;6b75
	and h			;6b76
	nop			;6b77
	nop			;6b78
	nop			;6b79
l6b7ah:
	nop			;6b7a
	nop			;6b7b
	nop			;6b7c
	nop			;6b7d
	add hl,de		;6b7e
	nop			;6b7f
	ld h,(hl)		;6b80
	jr $-66			;6b81
	rst 38h			;6b83
	and l			;6b84
	ld a,(hl)		;6b85
	ld e,d			;6b86
	daa			;6b87
	inc h			;6b88
	inc bc			;6b89
	inc bc			;6b8a
	nop			;6b8b
	ld h,d			;6b8c
	inc b			;6b8d
	sub c			;6b8e
	ld c,06ch		;6b8f
	inc bc			;6b91
	add hl,hl		;6b92
	rst 18h			;6b93
	sbc a,a			;6b94
	ld a,a			;6b95
	ld a,l			;6b96
	rst 8			;6b97
	ld c,(hl)		;6b98
	add a,l			;6b99
	add a,l			;6b9a
	nop			;6b9b
	adc a,005h		;6b9c
	add hl,sp		;6b9e
	rst 8			;6b9f
	ld h,a			;6ba0
	sbc a,b			;6ba1
	rst 38h			;6ba2
	rst 38h			;6ba3
	rst 38h			;6ba4
	rst 38h			;6ba5
	ld a,a			;6ba6
	rst 38h			;6ba7
	sbc a,07fh		;6ba8
	ld c,b			;6baa
	ld a,a			;6bab
	sub a			;6bac
	ld a,b			;6bad
	ret m			;6bae
	djnz l6bc8h		;6baf
l6bb1h:
	ex af,af'		;6bb1
	defb 0fdh,0feh,0c9h ;illegal sequence	;6bb2
	cp 0e0h			;6bb5
	rst 38h			;6bb7
	rst 0			;6bb8
	ret m			;6bb9
	ld a,0c0h		;6bba
	ld d,c			;6bbc
	add a,b			;6bbd
	sub b			;6bbe
	inc bc			;6bbf
	ld l,l			;6bc0
	sub d			;6bc1
	rst 8			;6bc2
	rst 38h			;6bc3
	or a			;6bc4
	rst 8			;6bc5
	ld c,d			;6bc6
	add a,a			;6bc7
l6bc8h:
	xor l			;6bc8
	ld b,d			;6bc9
	ld d,d			;6bca
	jr nz,l6b7ah		;6bcb
	ld (hl),d		;6bcd
	ld h,b			;6bce
	rst 38h			;6bcf
	out (0fch),a		;6bd0
	rst 38h			;6bd2
	rst 38h			;6bd3
	cp 0ffh			;6bd4
	defb 0fdh,0feh,01eh ;illegal sequence	;6bd6
	rst 38h			;6bd9
	rst 18h			;6bda
	ccf			;6bdb
	and a			;6bdc
	rra			;6bdd
	ld a,d			;6bde
	add a,a			;6bdf
	push hl			;6be0
	ld e,0d7h		;6be1
	rst 28h			;6be3
	cpl			;6be4
	rst 18h			;6be5
	rst 30h			;6be6
	rrca			;6be7
	jr c,l6bb1h		;6be8
	rst 8			;6bea
	ret p			;6beb
	ccf			;6bec
	ret nz			;6bed
	ld a,(hl)		;6bee
	add a,c			;6bef
	push hl			;6bf0
	dec de			;6bf1
	di			;6bf2
	call m,0f0efh		;6bf3
	exx			;6bf6
	and 03ah		;6bf7
	push bc			;6bf9
	push af			;6bfa
	dec bc			;6bfb
	dec l			;6bfc
	in a,(081h)		;6bfd
	rst 38h			;6bff
sub_6c00h:
	rrca			;6c00
	rst 38h			;6c01
	call p,0cb0bh		;6c02
	ccf			;6c05
	ccf			;6c06
	rst 38h			;6c07
	rst 38h			;6c08
	rst 38h			;6c09
	rst 38h			;6c0a
	rst 38h			;6c0b
	call m,0f1ffh		;6c0c
	cp 0ceh			;6c0f
	ret p			;6c11
	cp h			;6c12
	rst 38h			;6c13
	ei			;6c14
	rst 38h			;6c15
	rst 38h			;6c16
	rst 38h			;6c17
	cp 0ffh			;6c18
	sbc a,c			;6c1a
	cp 06ah			;6c1b
	sbc a,h			;6c1d
	sub c			;6c1e
	ld c,008h		;6c1f
	rlca			;6c21
	ld a,e			;6c22
	rst 38h			;6c23
	rst 38h			;6c24
	rst 38h			;6c25
	ret p			;6c26
	rst 38h			;6c27
	ld b,l			;6c28
	jp m,04fb1h		;6c29
	ld c,a			;6c2c
	ccf			;6c2d
	cp (hl)			;6c2e
	ld a,a			;6c2f
	ld (hl),a		;6c30
	rst 38h			;6c31
	cp a			;6c32
	rst 38h			;6c33
	rst 38h			;6c34
	rst 38h			;6c35
	sbc a,a			;6c36
	rst 38h			;6c37
	ld l,c			;6c38
	sbc a,a			;6c39
	add a,(hl)		;6c3a
l6c3bh:
	ld sp,hl		;6c3b
	exx			;6c3c
	rst 38h			;6c3d
	cp 0ffh			;6c3e
	rst 38h			;6c40
	rst 38h			;6c41
	rst 38h			;6c42
	rst 38h			;6c43
	rst 38h			;6c44
	rst 38h			;6c45
	rst 38h			;6c46
	rst 38h			;6c47
	rst 38h			;6c48
	rst 38h			;6c49
	ld a,a			;6c4a
	rst 38h			;6c4b
	and a			;6c4c
	rst 38h			;6c4d
	inc sp			;6c4e
	rst 8			;6c4f
	jp 0dcffh		;6c50
	inc hl			;6c53
	ld (080ffh),hl		;6c54
	rst 38h			;6c57
	ld a,(hl)		;6c58
	add a,c			;6c59
	add a,c			;6c5a
	nop			;6c5b
	nop			;6c5c
	nop			;6c5d
	nop			;6c5e
	nop			;6c5f
	ret nz			;6c60
	nop			;6c61
	jr nz,$+1		;6c62
l6c64h:
	adc a,03fh		;6c64
	ccf			;6c66
	rst 38h			;6c67
	ld (bc),a		;6c68
	rst 38h			;6c69
	defb 0fdh,002h,006h ;illegal sequence	;6c6a
	nop			;6c6d
	nop			;6c6e
	nop			;6c6f
	nop			;6c70
	nop			;6c71
	jr c,l6c3bh		;6c72
	ld b,e			;6c74
	call m,0f6f9h		;6c75
	ld (bc),a		;6c78
	call m,01ee1h		;6c79
	rra			;6c7c
	nop			;6c7d
	nop			;6c7e
	nop			;6c7f
	nop			;6c80
	nop			;6c81
	jr l6c64h		;6c82
	ld (hl),c		;6c84
	add a,b			;6c85
	adc a,(hl)		;6c86
	ld bc,00877h		;6c87
	cp b			;6c8a
	ld b,b			;6c8b
	ret po			;6c8c
	nop			;6c8d
	nop			;6c8e
	nop			;6c8f
	nop			;6c90
	nop			;6c91
	ld de,0e7e0h		;6c92
	nop			;6c95
	ex af,af'		;6c96
	rlca			;6c97
	ld d,00fh		;6c98
	ld hl,0161eh		;6c9a
	ex af,af'		;6c9d
	ld e,b			;6c9e
	nop			;6c9f
l6ca0h:
	rlca			;6ca0
	nop			;6ca1
	sub d			;6ca2
	inc c			;6ca3
	ld h,l			;6ca4
	sbc a,(hl)		;6ca5
	adc a,b			;6ca6
	rst 38h			;6ca7
	ld b,a			;6ca8
	ret m			;6ca9
	cp b			;6caa
	ld b,b			;6cab
	ld b,b			;6cac
	nop			;6cad
	nop			;6cae
	nop			;6caf
	add a,b			;6cb0
	nop			;6cb1
	add a,c			;6cb2
	ld a,(hl)		;6cb3
	ld e,0e1h		;6cb4
	ld a,c			;6cb6
	add a,b			;6cb7
	add a,b			;6cb8
	nop			;6cb9
	nop			;6cba
	nop			;6cbb
	inc bc			;6cbc
	nop			;6cbd
	ld a,001h		;6cbe
	ret nz			;6cc0
	ccf			;6cc1
	jp m,0fc05h		;6cc2
	inc bc			;6cc5
	rlca			;6cc6
	nop			;6cc7
	nop			;6cc8
	nop			;6cc9
	rrca			;6cca
	nop			;6ccb
	ret p			;6ccc
	rrca			;6ccd
	nop			;6cce
	rst 38h			;6ccf
	rst 38h			;6cd0
	rst 38h			;6cd1
	sbc a,c			;6cd2
	nop			;6cd3
	ld h,(hl)		;6cd4
	sbc a,c			;6cd5
	ret po			;6cd6
	rra			;6cd7
	or (hl)			;6cd8
	add hl,bc		;6cd9
	jp (hl)			;6cda
	nop			;6cdb
	ret nz			;6cdc
	nop			;6cdd
	jr nc,l6ca0h		;6cde
	adc a,a			;6ce0
	ret p			;6ce1
	call pe,02213h		;6ce2
	rst 38h			;6ce5
	add a,b			;6ce6
	rst 38h			;6ce7
	ld a,(hl)		;6ce8
	add a,c			;6ce9
	add a,c			;6cea
	nop			;6ceb
	nop			;6cec
	nop			;6ced
	nop			;6cee
	nop			;6cef
	ret nz			;6cf0
	nop			;6cf1
	ld (de),a		;6cf2
	rst 38h			;6cf3
	defb 0fdh,0feh,0c2h ;illegal sequence	;6cf4
	call m,0c03dh		;6cf7
	pop bc			;6cfa
	nop			;6cfb
	ld (bc),a		;6cfc
	ld bc,00305h		;6cfd
l6d00h:
	inc b			;6d00
	inc bc			;6d01
	inc l			;6d02
	ret nc			;6d03
	ret nc			;6d04
	nop			;6d05
	inc bc			;6d06
	nop			;6d07
	call nz,03903h		;6d08
	add a,0b1h		;6d0b
	adc a,048h		;6d0d
	add a,a			;6d0f
	daa			;6d10
	ret nz			;6d11
	jr nc,l6d14h		;6d12
l6d14h:
	dec bc			;6d14
	nop			;6d15
	ld (bc),a		;6d16
	ld bc,000ffh		;6d17
	ld a,b			;6d1a
	nop			;6d1b
	nop			;6d1c
	nop			;6d1d
	add a,c			;6d1e
	nop			;6d1f
	add a,d			;6d20
	ld bc,0a34dh		;6d21
	exx			;6d24
	daa			;6d25
	and (hl)		;6d26
	ld b,c			;6d27
	ld b,c			;6d28
	nop			;6d29
	ld a,001h		;6d2a
	ld b,b			;6d2c
	ccf			;6d2d
	sbc a,(hl)		;6d2e
	ld a,a			;6d2f
	ld l,a			;6d30
	rst 38h			;6d31
	jr nz,$+1		;6d32
	call 012f2h		;6d34
	ret po			;6d37
	ld l,b			;6d38
	add a,b			;6d39
	add a,b			;6d3a
	nop			;6d3b
	ld b,b			;6d3c
	add a,b			;6d3d
	jr c,l6d00h		;6d3e
l6d40h:
	adc a,h			;6d40
	ret p			;6d41
	sub e			;6d42
	rrca			;6d43
	ld h,a			;6d44
	sbc a,a			;6d45
	adc a,b			;6d46
	rst 38h			;6d47
	ld b,a			;6d48
	ret m			;6d49
	cp b			;6d4a
	ld b,b			;6d4b
	ld b,b			;6d4c
	nop			;6d4d
	nop			;6d4e
	nop			;6d4f
	add a,b			;6d50
	nop			;6d51
	pop bc			;6d52
	rst 38h			;6d53
	sbc a,(hl)		;6d54
	pop hl			;6d55
	ld a,c			;6d56
	add a,b			;6d57
	add a,b			;6d58
	nop			;6d59
	nop			;6d5a
	nop			;6d5b
	inc bc			;6d5c
	nop			;6d5d
	ld a,001h		;6d5e
	pop bc			;6d60
	ccf			;6d61
	inc bc			;6d62
	ei			;6d63
	ret m			;6d64
	rlca			;6d65
	rlca			;6d66
	nop			;6d67
	nop			;6d68
	nop			;6d69
	rrca			;6d6a
	nop			;6d6b
	ret p			;6d6c
	rrca			;6d6d
	inc b			;6d6e
	rst 38h			;6d6f
	rst 38h			;6d70
	rst 38h			;6d71
	sbc a,0ffh		;6d72
	rlca			;6d74
	rst 38h			;6d75
	ret po			;6d76
	rra			;6d77
l6d78h:
	or (hl)			;6d78
	add hl,bc		;6d79
	jp (hl)			;6d7a
	nop			;6d7b
	ret nz			;6d7c
	nop			;6d7d
	jr nc,l6d40h		;6d7e
	rst 8			;6d80
	ret p			;6d81
	ld a,0c0h		;6d82
	jp l7cfch		;6d84
	rst 38h			;6d87
	call m,00303h		;6d88
	nop			;6d8b
	nop			;6d8c
	nop			;6d8d
	nop			;6d8e
	nop			;6d8f
	ret p			;6d90
	nop			;6d91
	nop			;6d92
	nop			;6d93
	ret po			;6d94
	nop			;6d95
	jr l6d78h		;6d96
	call po,074f8h		;6d98
	ret m			;6d9b
	xor b			;6d9c
	ld (hl),b		;6d9d
	ld d,b			;6d9e
	jr nz,l6dc1h		;6d9f
	nop			;6da1
	nop			;6da2
	nop			;6da3
	nop			;6da4
	nop			;6da5
	nop			;6da6
	nop			;6da7
	nop			;6da8
	nop			;6da9
	nop			;6daa
	nop			;6dab
	ld b,b			;6dac
	nop			;6dad
	jr nz,l6db0h		;6dae
l6db0h:
	jr nc,l6db2h		;6db0
l6db2h:
	nop			;6db2
	nop			;6db3
	nop			;6db4
	nop			;6db5
	nop			;6db6
	nop			;6db7
	ld a,h			;6db8
	nop			;6db9
	jp nz,0813ch		;6dba
	ld a,(hl)		;6dbd
	jp l6e3ch		;6dbe
l6dc1h:
	djnz l6dd0h		;6dc1
	ld (bc),a		;6dc3
	ld (hl),c		;6dc4
	ld c,0aah		;6dc5
	inc e			;6dc7
	inc h			;6dc8
	jr l6de3h		;6dc9
	nop			;6dcb
	inc c			;6dcc
	nop			;6dcd
	nop			;6dce
	nop			;6dcf
l6dd0h:
	jr nz,l6dd2h		;6dd0
l6dd2h:
	add a,e			;6dd2
	nop			;6dd3
	inc c			;6dd4
	inc bc			;6dd5
	ld sp,0470fh		;6dd6
	ccf			;6dd9
	sbc a,l			;6dda
	ld a,a			;6ddb
	adc a,d			;6ddc
	ld a,a			;6ddd
	ld b,c			;6dde
	ld a,03ch		;6ddf
	nop			;6de1
	rra			;6de2
l6de3h:
	rst 38h			;6de3
	ld (hl),b		;6de4
	rst 38h			;6de5
	rst 0			;6de6
	ret m			;6de7
	ret c			;6de8
	rst 20h			;6de9
	or l			;6dea
	adc a,057h		;6deb
	adc a,h			;6ded
	sub d			;6dee
	inc c			;6def
	inc a			;6df0
	nop			;6df1
	sbc a,a			;6df2
	rst 38h			;6df3
	ld l,a			;6df4
	sub c			;6df5
	ld (de),a		;6df6
	pop hl			;6df7
	ld h,l			;6df8
	add a,e			;6df9
	add a,l			;6dfa
	inc bc			;6dfb
	ld (bc),a		;6dfc
	ld bc,00001h		;6dfd
	nop			;6e00
	nop			;6e01
l6e02h:
	jr nz,$+1		;6e02
	rst 18h			;6e04
	ccf			;6e05
	jr c,$+1		;6e06
	di			;6e08
	call m,0f0cch		;6e09
	or b			;6e0c
	ret nz			;6e0d
	ld b,e			;6e0e
	add a,b			;6e0f
l6e10h:
	call nz,03e03h		;6e10
	ret nz			;6e13
	call 002f2h		;6e14
	or c			;6e17
	defb 0fdh,002h,003h ;illegal sequence	;6e18
	nop			;6e1b
	nop			;6e1c
	nop			;6e1d
	ret m			;6e1e
	nop			;6e1f
	ld b,0f8h		;6e20
	add a,e			;6e22
	nop			;6e23
	ret p			;6e24
	nop			;6e25
	adc a,(hl)		;6e26
	ld (hl),b		;6e27
	ld h,c			;6e28
	ld e,0d2h		;6e29
	rrca			;6e2b
	xor l			;6e2c
	ld b,e			;6e2d
	ld e,d			;6e2e
	ld hl,01825h		;6e2f
	ret nz			;6e32
	nop			;6e33
	djnz l6e36h		;6e34
l6e36h:
	ld e,b			;6e36
	nop			;6e37
	ld sp,hl		;6e38
	nop			;6e39
	inc hl			;6e3a
	ret nz			;6e3b
l6e3ch:
	ld b,c			;6e3c
	add a,b			;6e3d
	ld b,c			;6e3e
	add a,b			;6e3f
	jr c,l6e02h		;6e40
	inc b			;6e42
	inc bc			;6e43
	inc b			;6e44
	inc bc			;6e45
	jp po,03101h		;6e46
	ret nz			;6e49
	ld c,c			;6e4a
	ret p			;6e4b
	ld c,b			;6e4c
	ret p			;6e4d
	jr nc,l6e10h		;6e4e
	ret nz			;6e50
	nop			;6e51
	cp a			;6e52
	rst 38h			;6e53
	cp a			;6e54
	rst 38h			;6e55
	rst 18h			;6e56
	rst 38h			;6e57
	ld l,a			;6e58
	rst 38h			;6e59
	add a,l			;6e5a
	ld a,a			;6e5b
	ld c,b			;6e5c
	scf			;6e5d
	daa			;6e5e
	nop			;6e5f
	ld b,b			;6e60
	nop			;6e61
	add a,0f8h		;6e62
	ex (sp),hl		;6e64
	call m,0fcf3h		;6e65
	di			;6e68
	call m,0fcc2h		;6e69
	inc e			;6e6c
	ret po			;6e6d
	ret po			;6e6e
	nop			;6e6f
	inc bc			;6e70
	nop			;6e71
	dec c			;6e72
	ld (bc),a		;6e73
l6e74h:
	ld (hl),c		;6e74
	ld c,02ah		;6e75
	inc e			;6e77
	inc h			;6e78
	jr l6e93h		;6e79
	nop			;6e7b
	inc c			;6e7c
	nop			;6e7d
	nop			;6e7e
	nop			;6e7f
	nop			;6e80
	nop			;6e81
	add a,e			;6e82
	nop			;6e83
	inc c			;6e84
	inc bc			;6e85
	inc sp			;6e86
	rrca			;6e87
	ld c,a			;6e88
	ccf			;6e89
	sbc a,l			;6e8a
	ld a,a			;6e8b
	sbc a,d			;6e8c
	ld a,a			;6e8d
	ld b,c			;6e8e
	ld a,03ch		;6e8f
	nop			;6e91
	ccf			;6e92
l6e93h:
	rst 38h			;6e93
	ret p			;6e94
	rst 38h			;6e95
	rst 0			;6e96
	ret m			;6e97
	ret c			;6e98
	rst 20h			;6e99
	or l			;6e9a
	adc a,057h		;6e9b
	adc a,h			;6e9d
	sub d			;6e9e
	inc c			;6e9f
	inc a			;6ea0
	nop			;6ea1
	ret m			;6ea2
	rst 38h			;6ea3
	rst 38h			;6ea4
	ccf			;6ea5
	ret nz			;6ea6
	rst 38h			;6ea7
	cp a			;6ea8
	ret nz			;6ea9
	ld b,h			;6eaa
	add a,b			;6eab
	add a,b			;6eac
	nop			;6ead
	add a,b			;6eae
	nop			;6eaf
	add a,a			;6eb0
	nop			;6eb1
	jr nc,l6e74h		;6eb2
	ret nz			;6eb4
	nop			;6eb5
	nop			;6eb6
	nop			;6eb7
	nop			;6eb8
	nop			;6eb9
	nop			;6eba
	nop			;6ebb
	inc b			;6ebc
	nop			;6ebd
	jr l6ec0h		;6ebe
l6ec0h:
	nop			;6ec0
	nop			;6ec1
	jr nz,l6ec4h		;6ec2
l6ec4h:
	ld d,b			;6ec4
	jr nz,$+122		;6ec5
	nop			;6ec7
	nop			;6ec8
	nop			;6ec9
	nop			;6eca
	nop			;6ecb
	nop			;6ecc
	nop			;6ecd
l6eceh:
	nop			;6ece
	nop			;6ecf
	inc bc			;6ed0
	nop			;6ed1
	sub c			;6ed2
	nop			;6ed3
	ld l,(hl)		;6ed4
	ld de,02e51h		;6ed5
	ld l,000h		;6ed8
	ld (bc),a		;6eda
	nop			;6edb
	ld bc,00000h		;6edc
	nop			;6edf
	ret po			;6ee0
	nop			;6ee1
	ld l,b			;6ee2
	nop			;6ee3
	ret z			;6ee4
	nop			;6ee5
	sub h			;6ee6
	ex af,af'		;6ee7
	inc d			;6ee8
	ex af,af'		;6ee9
	inc h			;6eea
	jr l6f11h		;6eeb
	jr l6f11h		;6eed
	inc e			;6eef
	dec e			;6ef0
	nop			;6ef1
	inc de			;6ef2
	nop			;6ef3
	inc e			;6ef4
	inc bc			;6ef5
	inc bc			;6ef6
	nop			;6ef7
	nop			;6ef8
	nop			;6ef9
	nop			;6efa
	nop			;6efb
	nop			;6efc
	nop			;6efd
	nop			;6efe
	nop			;6eff
	nop			;6f00
	nop			;6f01
	nop			;6f02
	nop			;6f03
	rst 38h			;6f04
	nop			;6f05
	add a,a			;6f06
	ld a,b			;6f07
	ld a,b			;6f08
	nop			;6f09
	nop			;6f0a
	nop			;6f0b
	nop			;6f0c
	nop			;6f0d
	inc bc			;6f0e
	nop			;6f0f
	sbc a,a			;6f10
l6f11h:
	nop			;6f11
	call p,0d400h		;6f12
	ex af,af'		;6f15
	jr z,l6f28h		;6f16
	jr z,l6f2ah		;6f18
	ld c,b			;6f1a
	jr nc,l6eceh		;6f1b
	ld b,b			;6f1d
	pop de			;6f1e
	nop			;6f1f
	or e			;6f20
	nop			;6f21
	ld bc,00e00h		;6f22
	ld bc,00815h		;6f25
l6f28h:
	dec de			;6f28
	nop			;6f29
l6f2ah:
	ld (hl),c		;6f2a
	nop			;6f2b
	ret c			;6f2c
	nop			;6f2d
	adc a,b			;6f2e
	nop			;6f2f
	jr nc,l6f32h		;6f30
l6f32h:
	adc a,b			;6f32
	rlca			;6f33
	adc a,c			;6f34
	rlca			;6f35
	adc a,c			;6f36
	rlca			;6f37
	adc a,h			;6f38
	inc bc			;6f39
	ld b,(hl)		;6f3a
	add a,c			;6f3b
	ld d,c			;6f3c
	nop			;6f3d
	jr nz,l6f40h		;6f3e
l6f40h:
	nop			;6f40
	nop			;6f41
	ld sp,hl		;6f42
	cp 0feh			;6f43
	rst 38h			;6f45
	rst 38h			;6f46
	rst 38h			;6f47
	rst 38h			;6f48
	rst 38h			;6f49
	inc a			;6f4a
	rst 38h			;6f4b
	add a,b			;6f4c
	ld a,a			;6f4d
	rst 20h			;6f4e
	jr l6f8dh		;6f4f
	nop			;6f51
	inc d			;6f52
	ex af,af'		;6f53
	sub d			;6f54
	inc c			;6f55
	ld c,d			;6f56
	add a,h			;6f57
	ld c,d			;6f58
	add a,h			;6f59
	ld c,d			;6f5a
	add a,h			;6f5b
	call z,08400h		;6f5c
	ex af,af'		;6f5f
	jr l6f62h		;6f60
l6f62h:
	add a,h			;6f62
	ld a,b			;6f63
	ld d,h			;6f64
	jr c,l6f9fh		;6f65
	nop			;6f67
	jr l6f6ah		;6f68
l6f6ah:
	nop			;6f6a
	nop			;6f6b
	ld bc,04200h		;6f6c
	nop			;6f6f
	jr nz,l6f72h		;6f70
l6f72h:
	ld bc,00f00h		;6f72
	nop			;6f75
	dec d			;6f76
	ex af,af'		;6f77
	dec de			;6f78
	nop			;6f79
	ld sp,01800h		;6f7a
	nop			;6f7d
	inc sp			;6f7e
	nop			;6f7f
	ld c,h			;6f80
	jr nc,l6f8bh		;6f81
	nop			;6f83
	jp z,09500h		;6f84
	ld a,(bc)		;6f87
	ld a,(bc)		;6f88
	rlca			;6f89
	dec bc			;6f8a
l6f8bh:
	rlca			;6f8b
	inc d			;6f8c
l6f8dh:
	rrca			;6f8d
	ld (01d1dh),hl		;6f8e
	nop			;6f91
	dec l			;6f92
	ld (bc),a		;6f93
	jp nc,0072fh		;6f94
	rst 38h			;6f97
	call m,0e3ffh		;6f98
	call m,0e09ch		;6f9b
	ld h,b			;6f9e
l6f9fh:
	add a,b			;6f9f
	nop			;6fa0
	nop			;6fa1
	add a,b			;6fa2
	nop			;6fa3
	ret nz			;6fa4
	nop			;6fa5
	ld b,b			;6fa6
	add a,b			;6fa7
	ret nz			;6fa8
	nop			;6fa9
	add a,b			;6faa
	nop			;6fab
	inc bc			;6fac
	nop			;6fad
	inc c			;6fae
	inc bc			;6faf
	ld (de),a		;6fb0
	rrca			;6fb1
	nop			;6fb2
	nop			;6fb3
	nop			;6fb4
	nop			;6fb5
	ld bc,00e00h		;6fb6
	ld bc,00e11h		;6fb9
	ld e,000h		;6fbc
	sub b			;6fbe
	nop			;6fbf
	and b			;6fc0
	nop			;6fc1
	ld (hl),b		;6fc2
	nop			;6fc3
	ld e,000h		;6fc4
	pop hl			;6fc6
	nop			;6fc7
	nop			;6fc8
	ret nz			;6fc9
	ret po			;6fca
	nop			;6fcb
	ld e,h			;6fcc
	jr nz,l7007h		;6fcd
	nop			;6fcf
	ld b,b			;6fd0
	nop			;6fd1
	nop			;6fd2
	nop			;6fd3
	nop			;6fd4
	nop			;6fd5
	ret nz			;6fd6
	nop			;6fd7
	ld (hl),h		;6fd8
	nop			;6fd9
l6fdah:
	jr nc,l6fdch		;6fda
l6fdch:
	jr l6fdeh		;6fdc
l6fdeh:
	ex af,af'		;6fde
	nop			;6fdf
	ex af,af'		;6fe0
	nop			;6fe1
	inc b			;6fe2
	inc bc			;6fe3
	inc bc			;6fe4
	nop			;6fe5
	nop			;6fe6
	nop			;6fe7
	jr nz,l6feah		;6fe8
l6feah:
	djnz l6fech		;6fea
l6fech:
	nop			;6fec
	nop			;6fed
	nop			;6fee
	nop			;6fef
	nop			;6ff0
	nop			;6ff1
	nop			;6ff2
	nop			;6ff3
	nop			;6ff4
	nop			;6ff5
	nop			;6ff6
	nop			;6ff7
	nop			;6ff8
	nop			;6ff9
	nop			;6ffa
	nop			;6ffb
	nop			;6ffc
	nop			;6ffd
	nop			;6ffe
	nop			;6fff
	nop			;7000
	nop			;7001
	inc c			;7002
	inc bc			;7003
	ld de,0130fh		;7004
l7007h:
	rrca			;7007
	jr l7011h		;7008
	rlca			;700a
	nop			;700b
	nop			;700c
	nop			;700d
	nop			;700e
	nop			;700f
	nop			;7010
l7011h:
	nop			;7011
	inc e			;7012
	ret po			;7013
	add a,h			;7014
	ret p			;7015
	ret z			;7016
	ret p			;7017
	jr nc,l6fdah		;7018
	ret nz			;701a
	nop			;701b
	nop			;701c
	nop			;701d
	nop			;701e
	nop			;701f
	nop			;7020
	nop			;7021
	nop			;7022
	nop			;7023
	jp z,09000h		;7024
	nop			;7027
	nop			;7028
	nop			;7029
	nop			;702a
	nop			;702b
	nop			;702c
	nop			;702d
	nop			;702e
	nop			;702f
	nop			;7030
	nop			;7031
	ld l,000h		;7032
	djnz l7036h		;7034
l7036h:
	nop			;7036
	nop			;7037
	nop			;7038
	nop			;7039
	nop			;703a
	nop			;703b
	nop			;703c
	nop			;703d
	nop			;703e
	nop			;703f
	nop			;7040
	nop			;7041
	ld a,(bc)		;7042
	nop			;7043
	ld b,000h		;7044
	ex af,af'		;7046
	nop			;7047
	ld bc,00000h		;7048
	nop			;704b
	nop			;704c
	nop			;704d
	nop			;704e
	nop			;704f
	nop			;7050
	nop			;7051
	inc (hl)		;7052
	nop			;7053
	dec hl			;7054
	inc d			;7055
	inc e			;7056
	rlca			;7057
	rra			;7058
	nop			;7059
	rlca			;705a
	nop			;705b
	nop			;705c
	nop			;705d
	nop			;705e
	nop			;705f
	nop			;7060
	nop			;7061
	ld h,b			;7062
	nop			;7063
	cp b			;7064
	ld b,b			;7065
	ld a,h			;7066
	add a,b			;7067
	ld h,000h		;7068
	add a,e			;706a
	nop			;706b
	ld h,b			;706c
	nop			;706d
	jr l7070h		;706e
l7070h:
	nop			;7070
l7071h:
	nop			;7071
	nop			;7072
	nop			;7073
	nop			;7074
	nop			;7075
	add a,e			;7076
	nop			;7077
	djnz l707ah		;7078
l707ah:
	nop			;707a
	nop			;707b
	nop			;707c
	nop			;707d
	add a,b			;707e
	nop			;707f
	nop			;7080
	nop			;7081
	jr c,l7084h		;7082
l7084h:
	ld h,b			;7084
	nop			;7085
	inc b			;7086
	nop			;7087
	nop			;7088
	nop			;7089
	nop			;708a
	nop			;708b
	nop			;708c
	nop			;708d
	nop			;708e
	nop			;708f
	nop			;7090
	nop			;7091
	and b			;7092
	nop			;7093
	pop bc			;7094
	nop			;7095
	ld (bc),a		;7096
	ld bc,0000fh		;7097
	jr c,l709ch		;709a
l709ch:
	nop			;709c
	nop			;709d
	nop			;709e
	nop			;709f
	nop			;70a0
	nop			;70a1
	inc h			;70a2
	jr l7071h		;70a3
	jr nc,l711fh		;70a5
	add a,b			;70a7
	add a,b			;70a8
	nop			;70a9
	nop			;70aa
	nop			;70ab
	nop			;70ac
	nop			;70ad
	nop			;70ae
	nop			;70af
	nop			;70b0
	nop			;70b1
	dec l			;70b2
	ld e,02ah		;70b3
	inc e			;70b5
	daa			;70b6
	jr l70d1h		;70b7
	nop			;70b9
	nop			;70ba
	nop			;70bb
	nop			;70bc
	nop			;70bd
	nop			;70be
	nop			;70bf
	nop			;70c0
	nop			;70c1
	jr nc,l70c4h		;70c2
l70c4h:
	ret nz			;70c4
	nop			;70c5
	nop			;70c6
	nop			;70c7
	nop			;70c8
	nop			;70c9
	nop			;70ca
	nop			;70cb
	nop			;70cc
	nop			;70cd
	nop			;70ce
	nop			;70cf
	nop			;70d0
l70d1h:
	nop			;70d1
	nop			;70d2
	nop			;70d3
	inc bc			;70d4
	nop			;70d5
	inc b			;70d6
	nop			;70d7
	nop			;70d8
	nop			;70d9
	nop			;70da
	nop			;70db
	nop			;70dc
	nop			;70dd
	nop			;70de
	nop			;70df
	nop			;70e0
	nop			;70e1
	jr nc,l70e4h		;70e2
l70e4h:
	ret po			;70e4
	nop			;70e5
	nop			;70e6
	nop			;70e7
	nop			;70e8
	nop			;70e9
	nop			;70ea
	nop			;70eb
	nop			;70ec
	nop			;70ed
	nop			;70ee
	nop			;70ef
	nop			;70f0
	nop			;70f1
	add hl,sp		;70f2
	cp 0d2h			;70f3
	inc a			;70f5
	dec l			;70f6
	djnz $+52		;70f7
	ld bc,013edh		;70f9
	add a,c			;70fc
	ld a,a			;70fd
	ld d,(hl)		;70fe
sub_70ffh:
	add hl,hl		;70ff
	add hl,sp		;7100
	nop			;7101
	dec hl			;7102
	inc b			;7103
	jp nc,0210dh		;7104
	ld e,0c2h		;7107
	inc a			;7109
	inc l			;710a
	ret nc			;710b
	ld d,b			;710c
	add a,b			;710d
	ld b,b			;710e
	add a,b			;710f
	push bc			;7110
	nop			;7111
	inc c			;7112
	nop			;7113
	adc a,b			;7114
	nop			;7115
	nop			;7116
	nop			;7117
	jr l711ah		;7118
l711ah:
	call pe,00d10h		;711a
	ret p			;711d
	rlca			;711e
l711fh:
	ret m			;711f
	adc a,0f0h		;7120
	nop			;7122
	nop			;7123
	nop			;7124
	add a,b			;7125
	ret p			;7126
	nop			;7127
	ld b,d			;7128
	dec a			;7129
	ld l,010h		;712a
	ld a,(de)		;712c
	nop			;712d
	adc a,l			;712e
	nop			;712f
	adc a,000h		;7130
	ld c,a			;7132
	add a,b			;7133
	ld b,a			;7134
	add a,b			;7135
	ld c,e			;7136
	add a,b			;7137
	rst 0			;7138
	nop			;7139
	adc a,b			;713a
	nop			;713b
	sub b			;713c
	nop			;713d
	inc de			;713e
sub_713fh:
	nop			;713f
	inc h			;7140
	inc bc			;7141
	nop			;7142
	nop			;7143
	nop			;7144
	nop			;7145
	jr nz,l7168h		;7146
	jr nz,l716ah		;7148
	nop			;714a
	nop			;714b
	nop			;714c
	nop			;714d
	nop			;714e
	nop			;714f
	nop			;7150
	nop			;7151
	ld b,000h		;7152
	nop			;7154
	nop			;7155
	nop			;7156
	nop			;7157
	nop			;7158
	nop			;7159
	nop			;715a
	nop			;715b
	nop			;715c
	nop			;715d
	nop			;715e
	nop			;715f
	nop			;7160
	nop			;7161
	jr nc,l7164h		;7162
l7164h:
	jr nc,l7166h		;7164
l7166h:
	jr nc,l7168h		;7166
l7168h:
	nop			;7168
	nop			;7169
l716ah:
	nop			;716a
	nop			;716b
	nop			;716c
	nop			;716d
	nop			;716e
	nop			;716f
	nop			;7170
	nop			;7171
	nop			;7172
	nop			;7173
	nop			;7174
	nop			;7175
	nop			;7176
	nop			;7177
	nop			;7178
	nop			;7179
	ld b,b			;717a
	ld h,b			;717b
	ld b,b			;717c
	ld h,b			;717d
	ld b,b			;717e
	ld h,b			;717f
	ld b,b			;7180
	ld h,b			;7181
	nop			;7182
	nop			;7183
	ld b,b			;7184
	add a,b			;7185
	ld b,b			;7186
	add a,b			;7187
	ld b,b			;7188
	add a,b			;7189
	nop			;718a
	nop			;718b
	nop			;718c
	nop			;718d
	nop			;718e
	nop			;718f
	nop			;7190
	nop			;7191
	nop			;7192
	nop			;7193
	nop			;7194
	nop			;7195
	nop			;7196
	nop			;7197
	nop			;7198
	nop			;7199
	nop			;719a
	nop			;719b
	jr l71aeh		;719c
	jr c,l71d0h		;719e
	jr c,l71d2h		;71a0
	ld b,b			;71a2
	ld h,b			;71a3
	nop			;71a4
	nop			;71a5
	nop			;71a6
	nop			;71a7
	nop			;71a8
	nop			;71a9
	nop			;71aa
	nop			;71ab
	nop			;71ac
	nop			;71ad
l71aeh:
	nop			;71ae
	nop			;71af
	djnz $+18		;71b0
	nop			;71b2
	nop			;71b3
	nop			;71b4
	nop			;71b5
	nop			;71b6
	nop			;71b7
	inc c			;71b8
	ex af,af'		;71b9
	inc e			;71ba
	jr l71d9h		;71bb
	jr l71dbh		;71bd
	jr l71ddh		;71bf
	jr l71fbh		;71c1
	jr nc,l71fdh		;71c3
	jr nc,l71ffh		;71c5
	jr nc,l7201h		;71c7
	jr nc,l7203h		;71c9
	jr nc,l7205h		;71cb
	jr nz,l71efh		;71cd
	nop			;71cf
l71d0h:
	nop			;71d0
	nop			;71d1
l71d2h:
	nop			;71d2
	nop			;71d3
	nop			;71d4
	nop			;71d5
	nop			;71d6
	nop			;71d7
	nop			;71d8
l71d9h:
	nop			;71d9
	nop			;71da
l71dbh:
	nop			;71db
	nop			;71dc
l71ddh:
	nop			;71dd
	nop			;71de
	nop			;71df
	ex af,af'		;71e0
	inc c			;71e1
	ld (bc),a		;71e2
	inc bc			;71e3
	ld (bc),a		;71e4
	inc bc			;71e5
	ld (bc),a		;71e6
	inc bc			;71e7
	ld (bc),a		;71e8
	inc bc			;71e9
	ld b,d			;71ea
	ld h,e			;71eb
	ld b,d			;71ec
	ld h,e			;71ed
	ld b,b			;71ee
l71efh:
	ld h,b			;71ef
	ld b,b			;71f0
	ld h,b			;71f1
	inc e			;71f2
	jr l7211h		;71f3
	jr l7213h		;71f5
	djnz l7209h		;71f7
	nop			;71f9
	nop			;71fa
l71fbh:
	nop			;71fb
	nop			;71fc
l71fdh:
	nop			;71fd
	nop			;71fe
l71ffh:
	nop			;71ff
	nop			;7200
l7201h:
	nop			;7201
	ld (bc),a		;7202
l7203h:
	ld b,000h		;7203
l7205h:
	nop			;7205
	nop			;7206
	nop			;7207
	nop			;7208
l7209h:
	nop			;7209
	nop			;720a
	nop			;720b
	nop			;720c
	nop			;720d
	nop			;720e
	nop			;720f
	nop			;7210
l7211h:
	nop			;7211
	ex af,af'		;7212
l7213h:
	inc c			;7213
	ld c,b			;7214
	adc a,h			;7215
	ld c,b			;7216
	adc a,h			;7217
	ld b,b			;7218
	add a,b			;7219
	nop			;721a
	nop			;721b
	nop			;721c
	nop			;721d
	nop			;721e
	nop			;721f
	nop			;7220
	nop			;7221
	nop			;7222
	nop			;7223
	nop			;7224
	nop			;7225
	nop			;7226
	nop			;7227
	nop			;7228
	nop			;7229
	nop			;722a
	nop			;722b
	inc c			;722c
	nop			;722d
	inc c			;722e
	nop			;722f
	inc c			;7230
	nop			;7231
	nop			;7232
	nop			;7233
	ld h,b			;7234
	nop			;7235
	ld h,b			;7236
	nop			;7237
	ld h,b			;7238
	nop			;7239
	ld h,b			;723a
	nop			;723b
	ld h,b			;723c
	nop			;723d
	ld h,b			;723e
	nop			;723f
	ld h,b			;7240
	nop			;7241
	inc c			;7242
	nop			;7243
	nop			;7244
	nop			;7245
	nop			;7246
	nop			;7247
	nop			;7248
	nop			;7249
	nop			;724a
	nop			;724b
	nop			;724c
	nop			;724d
	nop			;724e
	nop			;724f
	nop			;7250
	nop			;7251
	ld h,b			;7252
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
l725dh:
	nop			;725d
	nop			;725e
	nop			;725f
l7260h:
	nop			;7260
	nop			;7261
	rst 0			;7262
	ret m			;7263
	nop			;7264
	rst 0			;7265
	ret m			;7266
	nop			;7267
	add a,(hl)		;7268
	ret m			;7269
	nop			;726a
	ld a,(bc)		;726b
	call p,04e00h		;726c
	ret p			;726f
	nop			;7270
	sbc a,(hl)		;7271
	ret po			;7272
	nop			;7273
	inc a			;7274
	ret nz			;7275
	nop			;7276
	cp h			;7277
	ret nz			;7278
	nop			;7279
	add a,d			;727a
	rst 38h			;727b
	nop			;727c
	ld b,0ffh		;727d
	nop			;727f
	nop			;7280
	rst 38h			;7281
	nop			;7282
	nop			;7283
	rst 38h			;7284
	nop			;7285
	and b			;7286
	rst 38h			;7287
	nop			;7288
	ld b,b			;7289
	rst 38h			;728a
	nop			;728b
	sub h			;728c
	rst 28h			;728d
	nop			;728e
	inc bc			;728f
	call m,sub_6c00h	;7290
	sub b			;7293
	nop			;7294
	inc e			;7295
	ret po			;7296
	nop			;7297
	sbc a,h			;7298
	ret po			;7299
	nop			;729a
	jr c,l725dh		;729b
	nop			;729d
	jr c,l7260h		;729e
	nop			;72a0
	ld a,b			;72a1
	add a,b			;72a2
	nop			;72a3
	ret c			;72a4
	jr nz,l72a7h		;72a5
l72a7h:
	or b			;72a7
	ld b,b			;72a8
	nop			;72a9
	ei			;72aa
	nop			;72ab
	rst 38h			;72ac
	call po,0fb04h		;72ad
	sbc a,e			;72b0
	rra			;72b1
	ret po			;72b2
	jp po,000ffh		;72b3
	rlca			;72b6
	ret m			;72b7
	nop			;72b8
	jr c,$+1		;72b9
	nop			;72bb
	add a,0c7h		;72bc
	jr c,l72e1h		;72be
	ld bc,00cfeh		;72c0
	rrca			;72c3
	ret p			;72c4
	ld sp,0c03eh		;72c5
	call c,000e3h		;72c8
	ex (sp),hl		;72cb
	rra			;72cc
	nop			;72cd
	inc e			;72ce
	rst 38h			;72cf
	nop			;72d0
	jp p,000fdh		;72d1
	add a,c			;72d4
	cp 000h			;72d5
	daa			;72d7
	ret c			;72d8
	nop			;72d9
	ld b,(hl)		;72da
	cp c			;72db
	nop			;72dc
	jr $-23			;72dd
	nop			;72df
	sub b			;72e0
l72e1h:
	rst 28h			;72e1
	nop			;72e2
	ld bc,000feh		;72e3
	rlca			;72e6
	ret m			;72e7
	nop			;72e8
	rra			;72e9
	ret po			;72ea
	nop			;72eb
	rst 38h			;72ec
	nop			;72ed
	nop			;72ee
	rra			;72ef
	ret po			;72f0
	nop			;72f1
	ld (hl),b		;72f2
	add a,b			;72f3
	nop			;72f4
	ld (hl),b		;72f5
	add a,b			;72f6
	nop			;72f7
	ret po			;72f8
	nop			;72f9
	nop			;72fa
	ret po			;72fb
	nop			;72fc
	nop			;72fd
	ret po			;72fe
l72ffh:
	nop			;72ff
	nop			;7300
	ret nz			;7301
	nop			;7302
	nop			;7303
	ret nz			;7304
	nop			;7305
	nop			;7306
	ret nz			;7307
	nop			;7308
	nop			;7309
	and c			;730a
	add a,c			;730b
	ld a,(hl)		;730c
	ld b,e			;730d
	ld b,e			;730e
	cp h			;730f
	add a,a			;7310
	rlca			;7311
	ret m			;7312
	sbc a,(hl)		;7313
	rra			;7314
	ret po			;7315
	ld sp,0c03eh		;7316
	call m,000ffh		;7319
	ld a,a			;731c
	rst 38h			;731d
	nop			;731e
	ex af,af'		;731f
	rst 38h			;7320
	nop			;7321
	nop			;7322
	rst 38h			;7323
	nop			;7324
	pop bc			;7325
	cp 000h			;7326
	add a,a			;7328
	ret m			;7329
	nop			;732a
	ccf			;732b
	ret nz			;732c
	nop			;732d
	cp b			;732e
	ld b,a			;732f
	nop			;7330
	ld b,e			;7331
	rst 38h			;7332
	nop			;7333
	call p,000ffh		;7334
	ld hl,000feh		;7337
	ld a,a			;733a
	add a,b			;733b
	nop			;733c
	rst 38h			;733d
	nop			;733e
	nop			;733f
	rst 38h			;7340
	nop			;7341
	nop			;7342
	rst 38h			;7343
	nop			;7344
	nop			;7345
	ccf			;7346
l7347h:
	ret nz			;7347
	nop			;7348
	ld e,0e0h		;7349
	nop			;734b
	ld a,(hl)		;734c
	add a,b			;734d
	nop			;734e
	call c,00020h		;734f
	add a,b			;7352
	nop			;7353
	nop			;7354
	add a,b			;7355
	nop			;7356
	nop			;7357
	nop			;7358
	nop			;7359
	nop			;735a
	nop			;735b
	nop			;735c
	nop			;735d
	nop			;735e
	nop			;735f
	nop			;7360
	nop			;7361
	nop			;7362
	nop			;7363
	nop			;7364
	nop			;7365
	nop			;7366
	nop			;7367
	nop			;7368
	nop			;7369
	ld h,b			;736a
	sbc a,a			;736b
	nop			;736c
	rra			;736d
	ret po			;736e
	nop			;736f
	sub e			;7370
	call m,0c800h		;7371
	rst 38h			;7374
	nop			;7375
	jr nc,l7347h		;7376
	nop			;7378
	sbc a,a			;7379
	ret po			;737a
	nop			;737b
	ld b,a			;737c
	ret m			;737d
	nop			;737e
	ld b,b			;737f
	rst 38h			;7380
	nop			;7381
	rlca			;7382
	ret m			;7383
	nop			;7384
	ccf			;7385
	ret nz			;7386
	nop			;7387
	ld sp,hl		;7388
	ld b,000h		;7389
	rst 38h			;738b
	nop			;738c
	nop			;738d
	rst 38h			;738e
	nop			;738f
	nop			;7390
	rst 38h			;7391
	nop			;7392
	nop			;7393
	rst 38h			;7394
	nop			;7395
	nop			;7396
	ld a,a			;7397
	add a,b			;7398
	nop			;7399
	cp h			;739a
	ld b,b			;739b
	nop			;739c
	ret m			;739d
	nop			;739e
	nop			;739f
	ret m			;73a0
	nop			;73a1
	nop			;73a2
	ret p			;73a3
	nop			;73a4
	nop			;73a5
	ret p			;73a6
	nop			;73a7
	nop			;73a8
	ret po			;73a9
	nop			;73aa
	nop			;73ab
	ret po			;73ac
	nop			;73ad
l73aeh:
	nop			;73ae
	ret nz			;73af
	nop			;73b0
	nop			;73b1
	nop			;73b2
	rst 38h			;73b3
	nop			;73b4
	and c			;73b5
	cp 000h			;73b6
	rst 8			;73b8
	ret p			;73b9
	nop			;73ba
	sub e			;73bb
	call pe,04100h		;73bc
	cp 000h			;73bf
	ld l,0ffh		;73c1
	nop			;73c3
	sub c			;73c4
	pop af			;73c5
	ld c,055h		;73c6
	ld (hl),c		;73c8
	adc a,(hl)		;73c9
	inc bc			;73ca
	call m,0ff00h		;73cb
	nop			;73ce
	nop			;73cf
	rst 38h			;73d0
	nop			;73d1
	nop			;73d2
	cp 000h			;73d3
	nop			;73d5
	cp 000h			;73d6
	nop			;73d8
	call m,00000h		;73d9
	ld a,b			;73dc
	add a,b			;73dd
	nop			;73de
	ld a,b			;73df
	add a,b			;73e0
	nop			;73e1
	add hl,hl		;73e2
	add hl,sp		;73e3
	add a,0aeh		;73e4
	ccf			;73e6
	ret nz			;73e7
	and c			;73e8
	ld a,0c0h		;73e9
	daa			;73eb
	jr c,l73aeh		;73ec
	ld c,e			;73ee
	ld a,h			;73ef
	add a,b			;73f0
	sub e			;73f1
	call pe,03f00h		;73f2
	ret nz			;73f5
	nop			;73f6
	cp 000h			;73f7
	nop			;73f9
	ld (hl),b		;73fa
	add a,b			;73fb
	nop			;73fc
	ret po			;73fd
	nop			;73fe
	nop			;73ff
	ret po			;7400
	nop			;7401
	nop			;7402
	ret nz			;7403
	nop			;7404
	nop			;7405
	add a,b			;7406
	nop			;7407
	nop			;7408
	add a,b			;7409
	nop			;740a
	nop			;740b
	nop			;740c
	nop			;740d
	nop			;740e
	nop			;740f
	nop			;7410
	nop			;7411
	xor 0ffh		;7412
	nop			;7414
	ld e,a			;7415
	ld a,a			;7416
	add a,b			;7417
	xor b			;7418
	rst 18h			;7419
	nop			;741a
	ld (hl),0c9h		;741b
	nop			;741d
	adc a,a			;741e
	ld (hl),b		;741f
	nop			;7420
	ld a,l			;7421
	jp p,0fd00h		;7422
	and 000h		;7425
	or l			;7427
	adc a,000h		;7428
	inc a			;742a
	ret nz			;742b
	nop			;742c
	inc a			;742d
	ret nz			;742e
	nop			;742f
	ld a,b			;7430
	add a,b			;7431
	nop			;7432
	ret p			;7433
	nop			;7434
	nop			;7435
	ret po			;7436
	nop			;7437
	nop			;7438
	ret nz			;7439
	nop			;743a
	nop			;743b
	ret nz			;743c
	nop			;743d
	nop			;743e
	add a,b			;743f
	nop			;7440
	nop			;7441
	jr nz,l7444h		;7442
l7444h:
	rst 38h			;7444
	adc a,0c0h		;7445
	ccf			;7447
	ccf			;7448
	nop			;7449
	rst 38h			;744a
	ld (bc),a		;744b
	nop			;744c
	rst 38h			;744d
	defb 0fdh,0fdh,002h ;illegal sequence	;744e
	ld b,0ffh		;7451
	nop			;7453
	pop af			;7454
	ld c,000h		;7455
	rst 38h			;7457
	nop			;7458
	nop			;7459
	jr c,$+58		;745a
	rst 0			;745c
	ld b,e			;745d
	inc bc			;745e
	call m,009f9h		;745f
	or 002h			;7462
	inc bc			;7464
	call m,0e1e1h		;7465
	ld e,01fh		;7468
	rst 38h			;746a
	nop			;746b
	ret po			;746c
	rra			;746d
	nop			;746e
	rst 38h			;746f
l7470h:
	nop			;7470
	nop			;7471
	ld a,(de)		;7472
	dec e			;7473
	ret po			;7474
	ld (hl),e		;7475
	ld a,l			;7476
	add a,b			;7477
	adc a,(hl)		;7478
	cp 001h			;7479
	ld (hl),a		;747b
	rst 30h			;747c
	ex af,af'		;747d
	cp b			;747e
	cp a			;747f
	ld b,b			;7480
	rst 20h			;7481
	ret m			;7482
	nop			;7483
	rra			;7484
	ret po			;7485
	nop			;7486
	rst 38h			;7487
	nop			;7488
	nop			;7489
	rrca			;748a
	rrca			;748b
	ret p			;748c
	ld a,b			;748d
	ld a,a			;748e
	add a,b			;748f
	rst 0			;7490
	ret m			;7491
	nop			;7492
	ld a,0c1h		;7493
	nop			;7495
	defb 0fdh,003h,000h ;illegal sequence	;7496
	cp 001h			;7499
	nop			;749b
	ld a,a			;749c
	add a,b			;749d
	nop			;749e
	cp a			;749f
	ld b,b			;74a0
	nop			;74a1
	ld (hl),e		;74a2
	sbc a,h			;74a3
	nop			;74a4
	xor 070h		;74a5
	nop			;74a7
	inc a			;74a8
	ret po			;74a9
	nop			;74aa
	ret c			;74ab
	ret po			;74ac
	nop			;74ad
	jr nc,l7470h		;74ae
	nop			;74b0
	ret po			;74b1
	nop			;74b2
	nop			;74b3
	ret nz			;74b4
	nop			;74b5
	nop			;74b6
	add a,b			;74b7
	nop			;74b8
	nop			;74b9
	ld a,03fh		;74ba
	ret nz			;74bc
	jp 0fc03h		;74bd
	ld a,h			;74c0
	nop			;74c1
	rst 38h			;74c2
	call m,003fch		;74c3
	inc bc			;74c6
	rst 38h			;74c7
	nop			;74c8
	or b			;74c9
	ld c,a			;74ca
	nop			;74cb
	inc c			;74cc
	di			;74cd
	nop			;74ce
	rst 30h			;74cf
	ret m			;74d0
	nop			;74d1
	rrca			;74d2
	ret p			;74d3
	nop			;74d4
	ex (sp),hl		;74d5
	call m,01900h		;74d6
	ld e,0e0h		;74d9
	push hl			;74db
	ld b,0f8h		;74dc
	ld (hl),h		;74de
	rlca			;74df
	ret m			;74e0
	xor b			;74e1
	adc a,a			;74e2
	ld (hl),b		;74e3
	ld d,d			;74e4
	defb 0ddh,020h,02eh ;illegal sequence	;74e5
	pop af			;74e8
	nop			;74e9
	rst 38h			;74ea
	nop			;74eb
	nop			;74ec
	rst 38h			;74ed
	nop			;74ee
	nop			;74ef
	add a,c			;74f0
	ld a,(hl)		;74f1
	nop			;74f2
	ld a,h			;74f3
	rst 38h			;74f4
	nop			;74f5
	jp nz,03cc3h		;74f6
	add a,c			;74f9
	add a,c			;74fa
	ld a,(hl)		;74fb
l74fch:
	jp 03cc3h		;74fc
	ld l,(hl)		;74ff
	rst 28h			;7500
	djnz $+1		;7501
	nop			;7503
	nop			;7504
	rst 38h			;7505
	nop			;7506
	nop			;7507
	rst 38h			;7508
	nop			;7509
	nop			;750a
	cp 001h			;750b
	nop			;750d
	ld a,a			;750e
	add a,b			;750f
	nop			;7510
	ccf			;7511
	ret nz			;7512
	nop			;7513
	ccf			;7514
	ret nz			;7515
	nop			;7516
	ld a,0c0h		;7517
	nop			;7519
	ccf			;751a
	ret nz			;751b
	nop			;751c
	ld a,h			;751d
	add a,b			;751e
l751fh:
	nop			;751f
	ret m			;7520
	nop			;7521
	nop			;7522
	ret p			;7523
	nop			;7524
	nop			;7525
	ret po			;7526
	nop			;7527
	nop			;7528
	add a,b			;7529
	nop			;752a
	nop			;752b
	nop			;752c
	nop			;752d
	nop			;752e
	nop			;752f
	nop			;7530
	nop			;7531
	inc sp			;7532
	inc a			;7533
	ret nz			;7534
	jp 000fch		;7535
	ld c,0f1h		;7538
	nop			;753a
	ccf			;753b
	ret nz			;753c
	nop			;753d
	jr nz,l751fh		;753e
	nop			;7540
	add a,h			;7541
	ld a,a			;7542
	nop			;7543
	jr $+1			;7544
	nop			;7546
	add a,e			;7547
	ld a,h			;7548
	nop			;7549
	daa			;754a
	ret m			;754b
	nop			;754c
	ld d,a			;754d
	ret c			;754e
	jr nz,l75cch		;754f
	call m,08700h		;7551
	ld a,b			;7554
	nop			;7555
	rst 38h			;7556
	nop			;7557
	nop			;7558
	ld a,a			;7559
	add a,b			;755a
	nop			;755b
	rst 38h			;755c
	nop			;755d
	nop			;755e
	ld a,a			;755f
	add a,b			;7560
	nop			;7561
	jr c,$+1		;7562
	nop			;7564
	add a,c			;7565
l7566h:
	ld a,(hl)		;7566
	nop			;7567
	rst 38h			;7568
	nop			;7569
	nop			;756a
	rst 38h			;756b
	nop			;756c
	nop			;756d
	cp 000h			;756e
	nop			;7570
	call m,00000h		;7571
	ret p			;7574
	nop			;7575
	nop			;7576
	ret nz			;7577
	nop			;7578
	nop			;7579
	ld a,b			;757a
	add a,b			;757b
	nop			;757c
	ret p			;757d
	nop			;757e
	nop			;757f
	ret nz			;7580
	nop			;7581
	nop			;7582
	add a,b			;7583
	nop			;7584
	nop			;7585
	nop			;7586
	nop			;7587
	nop			;7588
	nop			;7589
	nop			;758a
	nop			;758b
	nop			;758c
	nop			;758d
	nop			;758e
	nop			;758f
	nop			;7590
	nop			;7591
	dec e			;7592
	jp po,00000h		;7593
	rst 38h			;7596
	nop			;7597
	nop			;7598
	rst 38h			;7599
	nop			;759a
	ld bc,000feh		;759b
	inc bc			;759e
	call m,00e00h		;759f
	ret p			;75a2
	nop			;75a3
	jr c,l7566h		;75a4
	nop			;75a6
	ret nz			;75a7
	nop			;75a8
	nop			;75a9
	rra			;75aa
	ret po			;75ab
	nop			;75ac
	ld a,0c0h		;75ad
	nop			;75af
	ld a,b			;75b0
	add a,b			;75b1
	nop			;75b2
	ret po			;75b3
	nop			;75b4
	nop			;75b5
l75b6h:
	add a,b			;75b6
	nop			;75b7
	nop			;75b8
	nop			;75b9
	nop			;75ba
	nop			;75bb
	nop			;75bc
	nop			;75bd
	nop			;75be
	nop			;75bf
	nop			;75c0
	nop			;75c1
	add a,b			;75c2
	nop			;75c3
	nop			;75c4
	nop			;75c5
	nop			;75c6
	nop			;75c7
	nop			;75c8
	nop			;75c9
	nop			;75ca
	nop			;75cb
l75cch:
	nop			;75cc
	nop			;75cd
	nop			;75ce
	nop			;75cf
	nop			;75d0
	nop			;75d1
	nop			;75d2
	nop			;75d3
	nop			;75d4
	nop			;75d5
	nop			;75d6
	nop			;75d7
	nop			;75d8
	nop			;75d9
	nop			;75da
	nop			;75db
	nop			;75dc
	nop			;75dd
	nop			;75de
	nop			;75df
	nop			;75e0
	nop			;75e1
	nop			;75e2
	ld (bc),a		;75e3
	ld (bc),a		;75e4
	ld bc,01b0bh		;75e5
	inc b			;75e8
l75e9h:
	ld (0023dh),a		;75e9
	ld c,a			;75ec
	ld (hl),b		;75ed
	ld b,03eh		;75ee
	pop bc			;75f0
	ld l,000h		;75f1
	nop			;75f3
	nop			;75f4
	nop			;75f5
	nop			;75f6
	nop			;75f7
	inc h			;75f8
	inc (hl)		;75f9
	ex af,af'		;75fa
	jr c,l763dh		;75fb
	adc a,h			;75fd
	inc a			;75fe
	and h			;75ff
	ld e,b			;7600
	ld d,b			;7601
	ld a,b			;7602
	add a,h			;7603
	add a,b			;7604
	inc e			;7605
	ret po			;7606
	ret nc			;7607
	sub b			;7608
	ld l,b			;7609
	cp a			;760a
	ret nz			;760b
	rrca			;760c
	xor l			;760d
	jp p,04f05h		;760e
	ld (hl),b		;7611
	add hl,bc		;7612
	scf			;7613
	inc a			;7614
	nop			;7615
	inc c			;7616
	rrca			;7617
	nop			;7618
	nop			;7619
	nop			;761a
	nop			;761b
	nop			;761c
	nop			;761d
	nop			;761e
	nop			;761f
	nop			;7620
	nop			;7621
	and b			;7622
	ret po			;7623
	djnz l75b6h		;7624
	ld d,b			;7626
	jr nz,l75e9h		;7627
	ld h,b			;7629
	nop			;762a
	add a,b			;762b
	ret nz			;762c
	nop			;762d
	nop			;762e
	nop			;762f
	nop			;7630
	nop			;7631
	nop			;7632
	nop			;7633
	nop			;7634
	nop			;7635
	nop			;7636
	nop			;7637
	nop			;7638
	nop			;7639
	nop			;763a
	nop			;763b
	nop			;763c
l763dh:
	nop			;763d
	nop			;763e
	nop			;763f
	inc b			;7640
	inc c			;7641
	ld (bc),a		;7642
	ld e,012h		;7643
	add hl,bc		;7645
	ex af,af'		;7646
	ld (hl),001h		;7647
	jr z,l7665h		;7649
	dec b			;764b
	inc h			;764c
	inc e			;764d
	ld (bc),a		;764e
	jr l765dh		;764f
	nop			;7651
	nop			;7652
	nop			;7653
	nop			;7654
	nop			;7655
	nop			;7656
	nop			;7657
	nop			;7658
	nop			;7659
	nop			;765a
	nop			;765b
l765ch:
	nop			;765c
l765dh:
	nop			;765d
	dec bc			;765e
	ld e,001h		;765f
	dec h			;7661
	ld a,001h		;7662
	ld c,h			;7664
l7665h:
	ld a,l			;7665
	ld (bc),a		;7666
	sbc a,l			;7667
	rst 20h			;7668
	jr l766bh		;7669
l766bh:
	nop			;766b
	nop			;766c
	nop			;766d
	nop			;766e
	nop			;766f
	nop			;7670
	nop			;7671
	nop			;7672
	nop			;7673
	nop			;7674
	nop			;7675
	ret nz			;7676
	ret nz			;7677
	nop			;7678
	ret nc			;7679
	djnz l765ch		;767a
	ret po			;767c
	ret po			;767d
	jr l7690h		;767e
	ret pe			;7680
	inc d			;7681
	nop			;7682
	ld bc,00100h		;7683
	ld (bc),a		;7686
	nop			;7687
	inc bc			;7688
	ld (bc),a		;7689
	nop			;768a
	rlca			;768b
	inc b			;768c
	ld bc,00605h		;768d
l7690h:
	ld bc,00a0dh		;7690
	dec b			;7693
	inc bc			;7694
	inc e			;7695
	inc bc			;7696
	inc de			;7697
	inc e			;7698
	inc bc			;7699
	ld a,e			;769a
	add a,(hl)		;769b
	ld (hl),c		;769c
	ei			;769d
	inc b			;769e
	di			;769f
	rst 38h			;76a0
	ld (bc),a		;76a1
	ld sp,hl		;76a2
	call pe,0e41bh		;76a3
	rst 30h			;76a6
	ex af,af'		;76a7
	call p,000ffh		;76a8
	rst 38h			;76ab
	rst 38h			;76ac
	nop			;76ad
	rst 38h			;76ae
	rst 38h			;76af
	nop			;76b0
	rst 38h			;76b1
	ret po			;76b2
	ld d,(hl)		;76b3
	xor b			;76b4
	call m,0d628h		;76b5
	ret nc			;76b8
	inc d			;76b9
	jp pe,0b27eh		;76ba
	ld c,h			;76bd
	cp h			;76be
	or b			;76bf
	ld c,(hl)		;76c0
	ld hl,(004fah)		;76c1
	cp (hl)			;76c4
	ld h,(hl)		;76c5
	sbc a,b			;76c6
	sbc a,b			;76c7
	ld (hl),b		;76c8
	adc a,h			;76c9
	ld d,039h		;76ca
	nop			;76cc
	dec bc			;76cd
	inc a			;76ce
	nop			;76cf
	rla			;76d0
	jr c,l76d3h		;76d1
l76d3h:
	dec de			;76d3
	inc e			;76d4
	nop			;76d5
	inc c			;76d6
	rrca			;76d7
	nop			;76d8
	ld b,00fh		;76d9
	nop			;76db
	inc bc			;76dc
	rlca			;76dd
	nop			;76de
	nop			;76df
	ld bc,0ff00h		;76e0
	nop			;76e3
	rst 38h			;76e4
	rst 38h			;76e5
	nop			;76e6
	rst 38h			;76e7
	cp a			;76e8
	ld b,b			;76e9
	or a			;76ea
	ld e,(hl)		;76eb
	and c			;76ec
	ld e,0bch		;76ed
	jp 0b000h		;76ef
	ld c,a			;76f2
	nop			;76f3
	ld bc,000ffh		;76f4
	ld a,b			;76f7
	call m,0fc00h		;76f8
	ld c,h			;76fb
	or b			;76fc
	cp b			;76fd
	ld c,b			;76fe
	sub b			;76ff
	ret p			;7700
	jr nc,l7703h		;7701
l7703h:
	ret po			;7703
	and b			;7704
	nop			;7705
	add a,b			;7706
	ld b,b			;7707
	nop			;7708
	add a,b			;7709
	add a,b			;770a
	nop			;770b
	nop			;770c
	nop			;770d
	nop			;770e
	nop			;770f
	nop			;7710
	nop			;7711
	ld b,e			;7712
	rst 38h			;7713
	cp e			;7714
	rst 0			;7715
	ld b,l			;7716
	add a,e			;7717
	add a,d			;7718
	ld bc,00142h		;7719
	and l			;771c
	ld b,e			;771d
	ld b,h			;771e
	add a,e			;771f
	adc a,e			;7720
	inc b			;7721
l7722h:
	adc a,b			;7722
	ret p			;7723
	cp e			;7724
	ret nz			;7725
	ld c,h			;7726
	add a,e			;7727
	or e			;7728
	rrca			;7729
	call nz,03b3fh		;772a
	call nz,000c4h		;772d
	ld (bc),a		;7730
	nop			;7731
	nop			;7732
	nop			;7733
	add a,b			;7734
	nop			;7735
	pop bc			;7736
	nop			;7737
	add hl,hl		;7738
	ret nz			;7739
	ld d,d			;773a
	add a,c			;773b
	add a,d			;773c
	ld bc,00003h		;773d
	ld b,001h		;7740
	dec d			;7742
	inc bc			;7743
	ld l,b			;7744
	rla			;7745
	sub e			;7746
	ld a,h			;7747
	inc d			;7748
	ret m			;7749
	ld l,a			;774a
	sub b			;774b
	sbc a,h			;774c
	inc bc			;774d
	ld h,e			;774e
	sbc a,a			;774f
	cp h			;7750
	rst 38h			;7751
	ld d,h			;7752
	rst 38h			;7753
	xor e			;7754
	ld d,h			;7755
	ld d,h			;7756
	nop			;7757
	ld hl,(0d214h)		;7758
	inc a			;775b
	dec a			;775c
	cp 006h			;775d
	ei			;775f
	dec sp			;7760
	ret nz			;7761
	add a,l			;7762
	ld (bc),a		;7763
	ld h,d			;7764
	add a,c			;7765
	sbc a,l			;7766
	ld h,b			;7767
	ld c,c			;7768
	jr nc,l7722h		;7769
	ex af,af'		;776b
	adc a,c			;776c
	ld b,074h		;776d
	adc a,a			;776f
	adc a,(hl)		;7770
	ld a,a			;7771
	rlca			;7772
	nop			;7773
	adc a,e			;7774
	inc b			;7775
	ld a,h			;7776
	add a,b			;7777
	add a,c			;7778
	nop			;7779
	ld e,001h		;777a
	ret po			;777c
	rra			;777d
	ld bc,01fffh		;777e
	rst 38h			;7781
	nop			;7782
	nop			;7783
	rlca			;7784
	nop			;7785
	ld a,b			;7786
	rlca			;7787
	add a,e			;7788
	ld a,a			;7789
	rlca			;778a
	rst 38h			;778b
	ld a,0ffh		;778c
	ld a,h			;778e
	rst 38h			;778f
	ret m			;7790
	rst 38h			;7791
	adc a,03fh		;7792
	inc (hl)		;7794
	rst 38h			;7795
	ret			;7796
	cp 0e3h			;7797
	call m,0fbc4h		;7799
	adc a,l			;779c
	jp p,0d028h		;779d
	ld e,h			;77a0
	add a,b			;77a1
	sub b			;77a2
	ld h,b			;77a3
	ld h,c			;77a4
	add a,b			;77a5
	jp nz,0cc01h		;77a6
	inc bc			;77a9
	sbc a,d			;77aa
	dec b			;77ab
	dec (hl)		;77ac
	ld c,06ah		;77ad
	inc e			;77af
	jp c,0aa3ch		;77b0
	ld (hl),h		;77b3
	ld h,l			;77b4
	ret m			;77b5
	ld a,(bc)		;77b6
	pop af			;77b7
	defb 0edh ;next byte illegal after ed	;77b8
	inc de			;77b9
	sub l			;77ba
	inc bc			;77bb
	ld b,l			;77bc
	inc bc			;77bd
	ld a,d			;77be
	rlca			;77bf
	add a,03fh		;77c0
	cp d			;77c2
	ld c,l			;77c3
	dec h			;77c4
	ret c			;77c5
	sub d			;77c6
	defb 0edh ;next byte illegal after ed	;77c7
	add hl,hl		;77c8
	add a,0aah		;77c9
	call nz,08a75h		;77cb
	cp d			;77ce
	ld bc,001a2h		;77cf
	rst 18h			;77d2
	rst 38h			;77d3
	ld a,a			;77d4
	rst 38h			;77d5
	ld e,a			;77d6
	rst 38h			;77d7
	adc a,(hl)		;77d8
	ld a,a			;77d9
	sbc a,l			;77da
	ld a,(hl)		;77db
	dec sp			;77dc
	call m,0f8e4h		;77dd
	exx			;77e0
	ret po			;77e1
	rst 38h			;77e2
	rst 38h			;77e3
	cp e			;77e4
	rst 38h			;77e5
	ret pe			;77e6
	rst 38h			;77e7
	ld d,0e9h		;77e8
	call pe,0b103h		;77ea
	ld c,0eeh		;77ed
	rra			;77ef
	rra			;77f0
	rst 38h			;77f1
	cp 0ffh			;77f2
	ld a,b			;77f4
	rst 38h			;77f5
	or a			;77f6
	ld a,b			;77f7
	adc a,h			;77f8
	ld (hl),b		;77f9
	ld d,e			;77fa
	xor h			;77fb
	add hl,hl		;77fc
	cp 0f6h			;77fd
	ret m			;77ff
	jp (hl)			;7800
	ret p			;7801
	ld b,b			;7802
l7803h:
	add a,b			;7803
	add a,(hl)		;7804
	nop			;7805
	dec c			;7806
	nop			;7807
	inc e			;7808
	jr nz,l786bh		;7809
	add a,b			;780b
	add a,c			;780c
	nop			;780d
	ret po			;780e
	nop			;780f
	ld d,b			;7810
	nop			;7811
	ld b,b			;7812
	nop			;7813
	ret po			;7814
	nop			;7815
	ld (bc),a		;7816
	nop			;7817
	jr l781ah		;7818
l781ah:
	ld h,c			;781a
	nop			;781b
	add a,d			;781c
	ld bc,00384h		;781d
	dec d			;7820
	inc hl			;7821
	nop			;7822
	nop			;7823
	add a,b			;7824
	nop			;7825
	rrca			;7826
	nop			;7827
	ld (hl),b		;7828
	rrca			;7829
	adc a,e			;782a
	ld a,a			;782b
	jr nz,$+1		;782c
	rst 8			;782e
	rst 38h			;782f
	sbc a,a			;7830
	rst 38h			;7831
	dec b			;7832
	inc bc			;7833
	ld (bc),a		;7834
	ld bc,000e1h		;7835
	jr l781ah		;7838
	adc a,(hl)		;783a
	ret p			;783b
	inc bc			;783c
	call m,0fec1h		;783d
	jp (hl)			;7840
	cp 0d5h			;7841
	jp pe,0ff00h		;7843
	call 03233h		;7846
	ld bc,00186h		;7849
	ld d,c			;784c
	add a,b			;784d
	ld e,a			;784e
	add a,b			;784f
	daa			;7850
	ret c			;7851
	inc e			;7852
	nop			;7853
	nop			;7854
	nop			;7855
	nop			;7856
	nop			;7857
	ld h,b			;7858
	nop			;7859
	ld sp,hl		;785a
	nop			;785b
	ld d,d			;785c
	add a,c			;785d
	add a,l			;785e
	ld (bc),a		;785f
	ex af,af'		;7860
	inc b			;7861
	ld (bc),a		;7862
	nop			;7863
	dec c			;7864
	ld (bc),a		;7865
	ld a,(0ec04h)		;7866
	djnz $+52		;7869
l786bh:
	pop bc			;786b
	push bc			;786c
	ld (bc),a		;786d
	ld e,000h		;786e
	ld a,b			;7870
	nop			;7871
	dec e			;7872
	inc bc			;7873
	ld d,b			;7874
	rrca			;7875
	ld h,a			;7876
	jr l78d1h		;7877
	jr nz,l78deh		;7879
	add a,b			;787b
	adc a,h			;787c
	nop			;787d
	jr nc,l7880h		;787e
l7880h:
	ld h,c			;7880
	nop			;7881
	nop			;7882
	rst 38h			;7883
	jp 03c3ch		;7884
	nop			;7887
	ld b,b			;7888
	nop			;7889
	nop			;788a
	nop			;788b
	rlca			;788c
	nop			;788d
	ccf			;788e
	nop			;788f
	ret m			;7890
	rlca			;7891
	ld b,(hl)		;7892
	ret m			;7893
	xor a			;7894
	ld d,b			;7895
	ld b,b			;7896
	nop			;7897
	nop			;7898
	nop			;7899
	ld a,h			;789a
	nop			;789b
	out (02ch),a		;789c
	call m,00f03h		;789e
	ret p			;78a1
	ld (hl),e		;78a2
	inc c			;78a3
	rst 8			;78a4
	nop			;78a5
	cp e			;78a6
	ld b,b			;78a7
	ld d,l			;78a8
	nop			;78a9
	ld a,(bc)		;78aa
	inc b			;78ab
	add a,l			;78ac
	ld (bc),a		;78ad
	push hl			;78ae
	ld (bc),a		;78af
	ld d,d			;78b0
	and c			;78b1
	cpl			;78b2
	rst 18h			;78b3
	pop de			;78b4
	cpl			;78b5
	ld h,0f9h		;78b6
	and e			;78b8
	ld a,h			;78b9
	ld e,b			;78ba
	daa			;78bb
	jr nz,l78c5h		;78bc
	inc de			;78be
	nop			;78bf
	sub h			;78c0
	nop			;78c1
	push bc			;78c2
	ei			;78c3
	ld (de),a		;78c4
l78c5h:
	rst 28h			;78c5
	ld h,c			;78c6
	sbc a,(hl)		;78c7
	jp 02e3ch		;78c8
	ret nc			;78cb
	ld sp,hl		;78cc
	add a,b			;78cd
	di			;78ce
	nop			;78cf
	add a,(hl)		;78d0
l78d1h:
	ld bc,0c031h		;78d1
	and 001h		;78d4
	ld e,c			;78d6
	rlca			;78d7
	ld h,(hl)		;78d8
	rra			;78d9
	sub c			;78da
	ld a,(hl)		;78db
	ld h,0f9h		;78dc
l78deh:
	ld e,b			;78de
	rst 20h			;78df
l78e0h:
	or c			;78e0
	adc a,0a6h		;78e1
	ld a,b			;78e3
	ld e,b			;78e4
	ret po			;78e5
	and c			;78e6
	ret nz			;78e7
	and d			;78e8
	pop bc			;78e9
	ld b,h			;78ea
	add a,e			;78eb
	ld c,c			;78ec
	add a,(hl)		;78ed
	or (hl)			;78ee
	inc c			;78ef
	dec h			;78f0
	jr l7950h		;78f1
	ld (hl),092h		;78f3
	ld l,h			;78f5
	dec h			;78f6
	ret c			;78f7
	adc a,031h		;78f8
	sub l			;78fa
	ld h,e			;78fb
	and l			;78fc
	ld b,e			;78fd
	jp z,01007h		;78fe
	rrca			;7901
	push de			;7902
	inc bc			;7903
	cp e			;7904
	ld b,a			;7905
	ld b,a			;7906
	cp a			;7907
	cp a			;7908
	rst 38h			;7909
	ld a,a			;790a
	rst 38h			;790b
	rst 38h			;790c
	rst 38h			;790d
	rst 38h			;790e
	rst 38h			;790f
	call m,0a2ffh		;7910
	pop hl			;7913
	and d			;7914
	pop bc			;7915
	and l			;7916
	jp 0c3a5h		;7917
	and d			;791a
	pop bc			;791b
	jp po,051c1h		;791c
	ret po			;791f
	adc a,c			;7920
	ld (hl),b		;7921
	cp a			;7922
	rst 38h			;7923
	cp 0ffh			;7924
	defb 0fdh,0feh,0fah ;illegal sequence	;7926
	defb 0fdh,0fdh,0feh ;illegal sequence	;7929
	sbc a,(hl)		;792c
	rst 38h			;792d
	ld l,a			;792e
	sbc a,a			;792f
	sub a			;7930
	rrca			;7931
	call nz,03ef8h		;7932
	ret nz			;7935
	ld b,b			;7936
	add a,b			;7937
	ccf			;7938
	ret nz			;7939
	adc a,h			;793a
	ld (hl),e		;793b
	push af			;793c
	ld a,(bc)		;793d
	ld hl,0e2feh		;793e
	rst 38h			;7941
	ret po			;7942
	nop			;7943
	nop			;7944
	nop			;7945
	call nz,03b00h		;7946
	call nz,0fec1h		;7949
	jr nc,$-47		;794c
	adc a,h			;794e
	ld (hl),e		;794f
l7950h:
	scf			;7950
	ret m			;7951
	dec hl			;7952
	rla			;7953
	ld de,0080fh		;7954
	rlca			;7957
	ld b,003h		;7958
	push hl			;795a
	inc bc			;795b
	ld b,l			;795c
	add a,e			;795d
	ld c,d			;795e
	add a,l			;795f
	and a			;7960
	ld b,b			;7961
	cp a			;7962
	rst 38h			;7963
	rst 18h			;7964
	rst 38h			;7965
	rst 28h			;7966
	rst 38h			;7967
	ld a,a			;7968
	rst 38h			;7969
	cp a			;796a
	rst 38h			;796b
	rst 30h			;796c
	rst 38h			;796d
	ld a,(hl)		;796e
	rst 38h			;796f
	add a,c			;7970
	ld a,(hl)		;7971
	ret pe			;7972
	rst 38h			;7973
	pop de			;7974
	rst 38h			;7975
	call po,0dbffh		;7976
	call m,0f875h		;7979
	jp z,034f1h		;797c
	jp 002e5h		;797f
	cp b			;7982
	ret nz			;7983
	ld b,b			;7984
	add a,b			;7985
	ret po			;7986
	nop			;7987
	jr c,l798ah		;7988
l798ah:
	rst 0			;798a
	jr c,l79e5h		;798b
	cp a			;798d
	and h			;798e
	rra			;798f
	ld (hl),e		;7990
	inc c			;7991
	ex af,af'		;7992
	nop			;7993
	nop			;7994
	nop			;7995
	nop			;7996
	nop			;7997
	nop			;7998
	nop			;7999
	nop			;799a
	nop			;799b
	add a,b			;799c
	nop			;799d
	ret nz			;799e
	nop			;799f
	ld b,d			;79a0
	add a,b			;79a1
	pop bc			;79a2
	nop			;79a3
	add a,l			;79a4
	ld (bc),a		;79a5
	ld a,(bc)		;79a6
	inc b			;79a7
	inc d			;79a8
	ex af,af'		;79a9
	add hl,sp		;79aa
	nop			;79ab
	and a			;79ac
	nop			;79ad
	ld c,h			;79ae
	inc bc			;79af
	jr l79b9h		;79b0
	add a,a			;79b2
	nop			;79b3
	ld e,001h		;79b4
	jr c,l79bfh		;79b6
	ret po			;79b8
l79b9h:
	rra			;79b9
	add a,e			;79ba
	ld a,a			;79bb
	ld c,0ffh		;79bc
	ccf			;79be
l79bfh:
	rst 38h			;79bf
	ld a,a			;79c0
	rst 38h			;79c1
	add a,c			;79c2
	ld a,a			;79c3
	nop			;79c4
	rst 38h			;79c5
	rra			;79c6
	rst 38h			;79c7
	pop hl			;79c8
	rst 38h			;79c9
	sbc a,a			;79ca
l79cbh:
	rst 38h			;79cb
	rst 38h			;79cc
	rst 38h			;79cd
	rst 38h			;79ce
	rst 38h			;79cf
	rst 38h			;79d0
	rst 38h			;79d1
	or c			;79d2
	cp 00ch			;79d3
	rst 38h			;79d5
	jp nz,l72ffh		;79d6
	rst 38h			;79d9
	ld sp,hl		;79da
	cp 0fah			;79db
	rst 38h			;79dd
	rst 38h			;79de
	rst 38h			;79df
	or 0ffh			;79e0
	cp d			;79e2
	ld b,c			;79e3
	sub c			;79e4
l79e5h:
	ld h,b			;79e5
	sub c			;79e6
	ld h,b			;79e7
	ld sp,023c0h		;79e8
	ret nz			;79eb
	inc hl			;79ec
	ret nz			;79ed
	ld b,d			;79ee
	add a,b			;79ef
	add a,d			;79f0
	nop			;79f1
	sub h			;79f2
	nop			;79f3
	add a,b			;79f4
	nop			;79f5
	ret nz			;79f6
	nop			;79f7
	ld b,(hl)		;79f8
	nop			;79f9
	ld b,l			;79fa
	nop			;79fb
	adc a,000h		;79fc
	add a,(hl)		;79fe
	nop			;79ff
	rla			;7a00
	nop			;7a01
	inc e			;7a02
	inc bc			;7a03
	ld l,h			;7a04
	inc bc			;7a05
	in a,(004h)		;7a06
	sub (hl)		;7a08
	add hl,bc		;7a09
	dec de			;7a0a
	inc b			;7a0b
	inc b			;7a0c
	nop			;7a0d
	rlca			;7a0e
	nop			;7a0f
	ld c,000h		;7a10
	ld d,d			;7a12
	adc a,h			;7a13
	call nc,0e000h		;7a14
	nop			;7a17
	add a,c			;7a18
	nop			;7a19
	ld (bc),a		;7a1a
	ld bc,00324h		;7a1b
	sbc a,b			;7a1e
	rlca			;7a1f
	ld h,e			;7a20
	inc e			;7a21
	ld b,h			;7a22
	jr c,l7a4dh		;7a23
	djnz l7a78h		;7a25
	jr nz,l79cbh		;7a27
	ld b,c			;7a29
	dec h			;7a2a
	jp 08344h		;7a2b
	add a,d			;7a2e
	ld bc,00001h		;7a2f
	dec h			;7a32
	rra			;7a33
	ld c,a			;7a34
	ccf			;7a35
	sbc a,a			;7a36
	ld a,a			;7a37
	ld a,a			;7a38
	rst 38h			;7a39
	jr c,$+1		;7a3a
	ccf			;7a3c
	rst 38h			;7a3d
	rra			;7a3e
	rst 38h			;7a3f
	add a,e			;7a40
	ld a,a			;7a41
	ex (sp),hl		;7a42
	rst 38h			;7a43
	ex (sp),hl		;7a44
	rst 38h			;7a45
	defb 0edh ;next byte illegal after ed	;7a46
	rst 38h			;7a47
	rst 38h			;7a48
	rst 38h			;7a49
	rst 38h			;7a4a
	rst 38h			;7a4b
	ld a,a			;7a4c
l7a4dh:
	rst 38h			;7a4d
	rst 38h			;7a4e
	rst 38h			;7a4f
	ccf			;7a50
	rst 38h			;7a51
	ld h,(hl)		;7a52
	ld sp,hl		;7a53
	and b			;7a54
	rst 38h			;7a55
	ret			;7a56
	rst 30h			;7a57
	scf			;7a58
	ld sp,hl		;7a59
	ret m			;7a5a
	rst 38h			;7a5b
	rst 0			;7a5c
	rst 38h			;7a5d
	call m,0ffffh		;7a5e
	rst 38h			;7a61
	rlc a			;7a62
	defb 0fdh,003h,01ah ;illegal sequence	;7a64
	pop hl			;7a67
	ld hl,(0d5d1h)		;7a68
	ld l,b			;7a6b
	ld d,0e9h		;7a6c
	dec l			;7a6e
	ret p			;7a6f
	add a,l			;7a70
	ret m			;7a71
	defb 0edh ;next byte illegal after ed	;7a72
	jp p,0fef1h		;7a73
	ret po			;7a76
	rst 38h			;7a77
l7a78h:
	rst 30h			;7a78
	rst 38h			;7a79
	ld a,c			;7a7a
	rst 38h			;7a7b
	cp 0ffh			;7a7c
	ccf			;7a7e
	rst 38h			;7a7f
	ccf			;7a80
	rst 38h			;7a81
	jp c,0213ch		;7a82
	ld e,096h		;7a85
	add hl,bc		;7a87
	ld l,c			;7a88
	sub b			;7a89
	sub (hl)		;7a8a
	ld sp,hl		;7a8b
	cp b			;7a8c
	rst 38h			;7a8d
	adc a,0ffh		;7a8e
	call pe,sub_70ffh	;7a90
	nop			;7a93
	sbc a,b			;7a94
	nop			;7a95
	ld h,0c0h		;7a96
	ld e,c			;7a98
	and 096h		;7a99
	ld a,c			;7a9b
	cp h			;7a9c
	ld b,e			;7a9d
	and 001h		;7a9e
	ld e,l			;7aa0
	and b			;7aa1
	rst 38h			;7aa2
	nop			;7aa3
	nop			;7aa4
	nop			;7aa5
	nop			;7aa6
	nop			;7aa7
	add a,b			;7aa8
	nop			;7aa9
	ld a,a			;7aaa
	add a,b			;7aab
	nop			;7aac
	rst 38h			;7aad
	add a,a			;7aae
	ld a,a			;7aaf
	ld a,c			;7ab0
	ld b,00ah		;7ab1
	inc b			;7ab3
	dec d			;7ab4
	ex af,af'		;7ab5
	ld d,009h		;7ab6
	ld l,d			;7ab8
	rra			;7ab9
	ret nc			;7aba
	ccf			;7abb
	dec c			;7abc
	jp p,08072h		;7abd
	adc a,l			;7ac0
	ld (bc),a		;7ac1
	inc e			;7ac2
	nop			;7ac3
	nop			;7ac4
	add a,b			;7ac5
	ld h,b			;7ac6
	add a,b			;7ac7
	sbc a,h			;7ac8
	nop			;7ac9
	ld a,b			;7aca
	add a,b			;7acb
	jp 00400h		;7acc
	inc bc			;7acf
	adc a,e			;7ad0
	rlca			;7ad1
	ld b,h			;7ad2
	add a,b			;7ad3
	adc a,c			;7ad4
	nop			;7ad5
	add a,b			;7ad6
	nop			;7ad7
	add a,b			;7ad8
	nop			;7ad9
	ld bc,00900h		;7ada
	nop			;7add
	ld (de),a		;7ade
	ld bc,00112h		;7adf
	or d			;7ae2
	rrca			;7ae3
	ld h,l			;7ae4
	rra			;7ae5
	ld c,e			;7ae6
	ccf			;7ae7
	sub a			;7ae8
	ld a,a			;7ae9
	cpl			;7aea
	rst 38h			;7aeb
	cpl			;7aec
	rst 38h			;7aed
	ld c,a			;7aee
	rst 38h			;7aef
	ld c,a			;7af0
	rst 38h			;7af1
	rst 38h			;7af2
	rst 38h			;7af3
	rst 38h			;7af4
	rst 38h			;7af5
	rst 38h			;7af6
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
	sbc a,0ffh		;7b0c
	ld a,c			;7b0e
	cp 0f6h			;7b0f
	ret m			;7b11
	defb 0edh ;next byte illegal after ed	;7b12
	cp 0bah			;7b13
	call m,0f8f5h		;7b15
	jp z,0b8f0h		;7b18
	ret nz			;7b1b
	ld b,c			;7b1c
	add a,b			;7b1d
	add a,(hl)		;7b1e
	ld bc,00718h		;7b1f
	inc b			;7b22
	nop			;7b23
	adc a,h			;7b24
	nop			;7b25
	inc b			;7b26
	ex af,af'		;7b27
	jr z,l7b3ah		;7b28
	ret			;7b2a
	jr nc,$+20		;7b2b
	pop hl			;7b2d
	and h			;7b2e
	ld b,b			;7b2f
	ld c,e			;7b30
	add a,h			;7b31
	dec h			;7b32
	ld (bc),a		;7b33
	jr z,$+9		;7b34
	ld c,(hl)		;7b36
	ld bc,04091h		;7b37
l7b3ah:
	inc bc			;7b3a
	nop			;7b3b
	ld d,000h		;7b3c
	jr nz,l7b40h		;7b3e
l7b40h:
	sub c			;7b40
	nop			;7b41
	out (000h),a		;7b42
	xor h			;7b44
	inc de			;7b45
	ld b,c			;7b46
	cp (hl)			;7b47
	ld e,(hl)		;7b48
	and b			;7b49
	and c			;7b4a
	nop			;7b4b
	ld e,001h		;7b4c
	ld h,b			;7b4e
	rra			;7b4f
	add a,e			;7b50
	ld a,h			;7b51
	call nz,03838h		;7b52
	ret nz			;7b55
	ret			;7b56
	nop			;7b57
	ld d,009h		;7b58
	jp (hl)			;7b5a
	djnz $+33		;7b5b
	ret po			;7b5d
	ret po			;7b5e
	nop			;7b5f
	nop			;7b60
	nop			;7b61
	nop			;7b62
	nop			;7b63
	dec bc			;7b64
	nop			;7b65
	jp nc,0ff01h		;7b66
	nop			;7b69
	nop			;7b6a
	nop			;7b6b
	add a,a			;7b6c
	nop			;7b6d
	nop			;7b6e
	nop			;7b6f
	nop			;7b70
	nop			;7b71
	ld h,h			;7b72
	dec de			;7b73
	sbc a,e			;7b74
	nop			;7b75
	ld h,h			;7b76
	sbc a,d			;7b77
	add a,c			;7b78
	ld a,(hl)		;7b79
	defb 0fdh,003h,004h ;illegal sequence	;7b7a
	ld bc,00156h		;7b7d
	ld bc,0ef00h		;7b80
	rst 38h			;7b83
	scf			;7b84
	rst 38h			;7b85
	in a,(03fh)		;7b86
	ld h,a			;7b88
	sbc a,a			;7b89
	sbc a,d			;7b8a
	rst 20h			;7b8b
	ld h,l			;7b8c
	ei			;7b8d
	ld a,(de)		;7b8e
	defb 0fdh,08dh ;adc a,iyl	;7b8f
	ld a,a			;7b91
	sub d			;7b92
	call pe,0f8c4h		;7b93
	call nz,0ccf8h		;7b96
	ret m			;7b99
	jp nz,0e9fch		;7b9a
	cp 0e5h			;7b9d
	cp 0f2h			;7b9f
	defb 0fdh,0afh,07fh ;illegal sequence	;7ba1
	or a			;7ba4
	ld a,a			;7ba5
	ld d,e			;7ba6
	ccf			;7ba7
	ld b,e			;7ba8
	ccf			;7ba9
	inc hl			;7baa
	rra			;7bab
	add hl,de		;7bac
	rlca			;7bad
	ld b,001h		;7bae
	add a,c			;7bb0
	nop			;7bb1
	jp m,0fdffh		;7bb2
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
	ld c,a			;7bc0
	rst 38h			;7bc1
	ld (09ccdh),a		;7bc2
	ex (sp),hl		;7bc5
	pop hl			;7bc6
	cp 0eeh			;7bc7
	rst 38h			;7bc9
	rst 38h			;7bca
	rst 38h			;7bcb
	rst 38h			;7bcc
	rst 38h			;7bcd
	rst 38h			;7bce
	rst 38h			;7bcf
	rst 38h			;7bd0
	rst 38h			;7bd1
	add a,(hl)		;7bd2
	nop			;7bd3
	ld (hl),c		;7bd4
	add a,b			;7bd5
	sub d			;7bd6
	ld h,b			;7bd7
	ld l,l			;7bd8
	jp p,0fff2h		;7bd9
	push hl			;7bdc
	rst 38h			;7bdd
	ret m			;7bde
	rst 38h			;7bdf
	cp 0ffh			;7be0
	ld (0ee0fh),a		;7be2
l7be5h:
	ld de,0003fh		;7be5
	add a,c			;7be8
	nop			;7be9
	ld a,b			;7bea
	add a,b			;7beb
	add a,h			;7bec
	ret m			;7bed
	ld c,d			;7bee
	cp h			;7bef
	sub l			;7bf0
	xor 0b5h		;7bf1
	dec bc			;7bf3
	ld l,h			;7bf4
	add a,e			;7bf5
	ld (de),a		;7bf6
	defb 0edh ;next byte illegal after ed	;7bf7
	and h			;7bf8
	ld e,a			;7bf9
	ld e,c			;7bfa
	ld b,007h		;7bfb
	nop			;7bfd
	nop			;7bfe
	nop			;7bff
	add a,b			;7c00
	nop			;7c01
	ld (bc),a		;7c02
	ld bc,00003h		;7c03
	inc bc			;7c06
	nop			;7c07
	ld de,01000h		;7c08
	nop			;7c0b
	ex af,af'		;7c0c
	nop			;7c0d
	adc a,b			;7c0e
	nop			;7c0f
	call z,04700h		;7c10
	rst 38h			;7c13
	ld b,b			;7c14
	rst 38h			;7c15
	jr nc,$+1		;7c16
	rst 8			;7c18
	ccf			;7c19
	ret po			;7c1a
	rra			;7c1b
	ccf			;7c1c
	nop			;7c1d
	ld (bc),a		;7c1e
	nop			;7c1f
	nop			;7c20
	nop			;7c21
	ex (sp),hl		;7c22
	rst 38h			;7c23
	ld c,0ffh		;7c24
	pop af			;7c26
	cp 00eh			;7c27
	ret p			;7c29
	ret p			;7c2a
	nop			;7c2b
	ld bc,00000h		;7c2c
	nop			;7c2f
	jr c,l7c32h		;7c30
l7c32h:
	adc a,b			;7c32
	ret p			;7c33
	ld (hl),b		;7c34
	add a,b			;7c35
	add a,e			;7c36
	nop			;7c37
	inc c			;7c38
l7c39h:
	nop			;7c39
	ld (hl),e		;7c3a
	nop			;7c3b
	add a,l			;7c3c
	nop			;7c3d
	ld a,(de)		;7c3e
	nop			;7c3f
	sub b			;7c40
	nop			;7c41
	ld h,l			;7c42
	ld a,(de)		;7c43
	jp nc,0ac2ch		;7c44
	djnz l7c39h		;7c47
	nop			;7c49
	pop bc			;7c4a
	nop			;7c4b
	ld (bc),a		;7c4c
	ld bc,00205h		;7c4d
	ex af,af'		;7c50
	rlca			;7c51
	sub b			;7c52
	dec bc			;7c53
	ld l,b			;7c54
	djnz l7be5h		;7c55
	ld (hl),b		;7c57
	pop de			;7c58
	jr nz,$-120		;7c59
	ld h,c			;7c5b
	xor c			;7c5c
	ld b,(hl)		;7c5d
	ld d,l			;7c5e
	adc a,d			;7c5f
	xor d			;7c60
	inc d			;7c61
	ld b,(hl)		;7c62
	add a,c			;7c63
	add hl,sp		;7c64
	add a,006h		;7c65
	ret m			;7c67
	ld a,b			;7c68
	add a,b			;7c69
	and b			;7c6a
	ld b,b			;7c6b
	ld b,b			;7c6c
	add a,b			;7c6d
	add a,a			;7c6e
	nop			;7c6f
	ex af,af'		;7c70
	rlca			;7c71
	inc e			;7c72
	ret po			;7c73
	ret po			;7c74
	nop			;7c75
	ld bc,01e00h		;7c76
	ld bc,01f21h		;7c79
	rst 18h			;7c7c
	ccf			;7c7d
	ld (hl),h		;7c7e
	rst 38h			;7c7f
	set 6,h			;7c80
	nop			;7c82
	nop			;7c83
	jr c,l7c86h		;7c84
l7c86h:
	rst 38h			;7c86
	nop			;7c87
	ex af,af'		;7c88
	rst 38h			;7c89
	rst 38h			;7c8a
	rst 38h			;7c8b
	adc a,b			;7c8c
	rst 38h			;7c8d
	ld (hl),a		;7c8e
	adc a,b			;7c8f
l7c90h:
	adc a,b			;7c90
	ld (hl),a		;7c91
	nop			;7c92
	nop			;7c93
	nop			;7c94
	nop			;7c95
	ret po			;7c96
	nop			;7c97
	ld e,0e0h		;7c98
	pop hl			;7c9a
	cp 03eh			;7c9b
	rst 38h			;7c9d
	call nc,0eb2bh		;7c9e
	djnz l7ca3h		;7ca1
l7ca3h:
	nop			;7ca3
	nop			;7ca4
	nop			;7ca5
	nop			;7ca6
	nop			;7ca7
	nop			;7ca8
	nop			;7ca9
	add a,b			;7caa
	nop			;7cab
	ld h,b			;7cac
	add a,b			;7cad
	jr l7c90h		;7cae
	and h			;7cb0
	ld a,b			;7cb1
	ld b,a			;7cb2
	ccf			;7cb3
	ld sp,0080fh		;7cb4
	rlca			;7cb7
	ld b,h			;7cb8
	inc bc			;7cb9
	inc hl			;7cba
	nop			;7cbb
	add hl,sp		;7cbc
	nop			;7cbd
l7cbeh:
	inc d			;7cbe
	ex af,af'		;7cbf
	inc c			;7cc0
	nop			;7cc1
	cp a			;7cc2
	rst 38h			;7cc3
	rst 28h			;7cc4
	rst 38h			;7cc5
	ld d,a			;7cc6
	rst 28h			;7cc7
	ex (sp),hl		;7cc8
	rst 38h			;7cc9
	dec c			;7cca
	di			;7ccb
	and d			;7ccc
	ld e,l			;7ccd
	call nc,0c92fh		;7cce
	ld (hl),0f9h		;7cd1
	cp 0fch			;7cd3
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
	ld a,a			;7ce0
	rst 38h			;7ce1
	ld (hl),b		;7ce2
	add a,b			;7ce3
	adc a,b			;7ce4
	ld (hl),b		;7ce5
	scf			;7ce6
	ret z			;7ce7
	ld c,b			;7ce8
	or a			;7ce9
	sub c			;7cea
	rst 28h			;7ceb
	jp c,0fcfdh		;7cec
	rst 38h			;7cef
	rst 38h			;7cf0
	rst 38h			;7cf1
	or c			;7cf2
	ld c,a			;7cf3
	ld b,(hl)		;7cf4
	add hl,sp		;7cf5
	ret z			;7cf6
	ccf			;7cf7
	or c			;7cf8
	ld c,046h		;7cf9
	add a,b			;7cfb
l7cfch:
	jr c,l7cbeh		;7cfc
	add a,a			;7cfe
	ld a,b			;7cff
	ld (hl),b		;7d00
	adc a,a			;7d01
	rst 38h			;7d02
	rst 38h			;7d03
	cp a			;7d04
	rst 38h			;7d05
	ld c,l			;7d06
	cp a			;7d07
	or a			;7d08
	rrca			;7d09
	ld l,c			;7d0a
	rlca			;7d0b
	inc d			;7d0c
	inc bc			;7d0d
	ld (bc),a		;7d0e
	ld bc,000c1h		;7d0f
	rst 38h			;7d12
	rst 38h			;7d13
	rst 38h			;7d14
	rst 38h			;7d15
	rst 38h			;7d16
	rst 38h			;7d17
	ld c,a			;7d18
	rst 38h			;7d19
	rst 28h			;7d1a
	rst 38h			;7d1b
	exx			;7d1c
	rst 38h			;7d1d
	rrca			;7d1e
	rst 38h			;7d1f
	ld a,(de)		;7d20
	rst 38h			;7d21
	adc a,(hl)		;7d22
	pop af			;7d23
	ex (sp),hl		;7d24
	call m,0fefdh		;7d25
	cp 0ffh			;7d28
	rst 38h			;7d2a
	rst 38h			;7d2b
	rst 38h			;7d2c
	rst 38h			;7d2d
	rst 38h			;7d2e
	rst 38h			;7d2f
	rra			;7d30
	rst 38h			;7d31
	ret po			;7d32
	nop			;7d33
	sub b			;7d34
	ld h,b			;7d35
	ret z			;7d36
	jr nc,l7d82h		;7d37
	or b			;7d39
	or l			;7d3a
	ret m			;7d3b
	call p,0f4f8h		;7d3c
	ret m			;7d3f
	call po,sub_63f8h	;7d40
	nop			;7d43
	ld b,b			;7d44
	nop			;7d45
	and c			;7d46
	nop			;7d47
	cp h			;7d48
	nop			;7d49
	call po,094b8h		;7d4a
	jr c,l7db9h		;7d4d
	sbc a,h			;7d4f
	sub l			;7d50
	ld c,017h		;7d51
	nop			;7d53
	add a,b			;7d54
	nop			;7d55
	or b			;7d56
	nop			;7d57
	ld l,b			;7d58
	sub b			;7d59
	ret nc			;7d5a
	nop			;7d5b
	nop			;7d5c
	nop			;7d5d
	nop			;7d5e
	nop			;7d5f
	add a,b			;7d60
	nop			;7d61
	jp nc,00000h		;7d62
	nop			;7d65
	ld b,000h		;7d66
	ld e,000h		;7d68
	jr l7d6ch		;7d6a
l7d6ch:
	jr nz,l7d6eh		;7d6c
l7d6eh:
	inc de			;7d6e
	nop			;7d6f
	ld c,a			;7d70
	nop			;7d71
	ld h,b			;7d72
	nop			;7d73
	ret nz			;7d74
	nop			;7d75
	ret po			;7d76
	nop			;7d77
	ld b,d			;7d78
	nop			;7d79
	ld a,(bc)		;7d7a
	nop			;7d7b
	inc hl			;7d7c
	nop			;7d7d
	ld sp,hl		;7d7e
	nop			;7d7f
	sbc a,c			;7d80
	nop			;7d81
l7d82h:
	dec bc			;7d82
	inc b			;7d83
	inc d			;7d84
	ex af,af'		;7d85
	jr l7d88h		;7d86
l7d88h:
	ld sp,l6100h		;7d88
	nop			;7d8b
	ld bc,00300h		;7d8c
	nop			;7d8f
	and d			;7d90
	nop			;7d91
	inc h			;7d92
	jr $+90			;7d93
	jr nz,$-93		;7d95
	nop			;7d97
	ld b,d			;7d98
	ld bc,00385h		;7d99
	ld a,(bc)		;7d9c
	rlca			;7d9d
	inc d			;7d9e
	rrca			;7d9f
	add hl,hl		;7da0
	ld e,037h		;7da1
	rrca			;7da3
	ld c,h			;7da4
	ccf			;7da5
	or d			;7da6
	ld a,h			;7da7
	ld l,a			;7da8
	ret p			;7da9
	sub e			;7daa
	ret po			;7dab
	ld l,(hl)		;7dac
	add a,c			;7dad
	sub l			;7dae
	ex af,af'		;7daf
	ld l,(hl)		;7db0
	ld de,0c33ch		;7db1
	out (00fh),a		;7db4
	ld l,(hl)		;7db6
	dec e			;7db7
	cp (hl)			;7db8
l7db9h:
	ld b,c			;7db9
	ld c,c			;7dba
	add a,a			;7dbb
	or b			;7dbc
	rrca			;7dbd
	ld c,a			;7dbe
	or b			;7dbf
	ld (hl),b		;7dc0
	add a,b			;7dc1
	ld (hl),a		;7dc2
	rst 38h			;7dc3
	ld e,0ffh		;7dc4
	push hl			;7dc6
	ld a,(de)		;7dc7
	djnz $+1		;7dc8
	call m,00affh		;7dca
	defb 0fdh,0d0h,02fh ;illegal sequence	;7dcd
	ld l,001h		;7dd0
	ld d,0f8h		;7dd2
	ld sp,hl		;7dd4
	cp 01eh			;7dd5
	rst 38h			;7dd7
	ex (sp),hl		;7dd8
	rra			;7dd9
	dec d			;7dda
	ex de,hl		;7ddb
	ld hl,(0c5f1h)		;7ddc
	jr c,$+40		;7ddf
	ret m			;7de1
	ld e,d			;7de2
	inc a			;7de3
	xor l			;7de4
	ld e,056h		;7de5
	adc a,a			;7de7
	ld c,d			;7de8
	add a,a			;7de9
	or l			;7dea
	jp 0e152h		;7deb
	xor c			;7dee
	ld (hl),b		;7def
	ld c,c			;7df0
	jr nc,l7dfdh		;7df1
	inc b			;7df3
l7df4h:
	ld a,(bc)		;7df4
	inc b			;7df5
	add a,l			;7df6
	ld (bc),a		;7df7
	add a,l			;7df8
	ld (bc),a		;7df9
	ld b,l			;7dfa
	add a,d			;7dfb
	ld b,d			;7dfc
l7dfdh:
	add a,c			;7dfd
	ld b,d			;7dfe
	add a,c			;7dff
	and d			;7e00
	ld b,c			;7e01
	ld l,d			;7e02
	rla			;7e03
	ld h,l			;7e04
	dec de			;7e05
	ld a,(03d01h)		;7e06
	nop			;7e09
	dec (hl)		;7e0a
	nop			;7e0b
	sub (hl)		;7e0c
	nop			;7e0d
	sub d			;7e0e
	nop			;7e0f
	adc a,c			;7e10
	ld (bc),a		;7e11
	rst 38h			;7e12
	ld a,a			;7e13
	ccf			;7e14
	rst 38h			;7e15
	rra			;7e16
	rst 38h			;7e17
	rra			;7e18
	rst 38h			;7e19
	ld a,a			;7e1a
	rst 38h			;7e1b
	adc a,a			;7e1c
	ld a,a			;7e1d
	xor a			;7e1e
	ld a,a			;7e1f
	ld l,a			;7e20
	rst 38h			;7e21
	add a,l			;7e22
	jp m,0ffe8h		;7e23
	defb 0fdh,0feh,0feh ;illegal sequence	;7e26
	rst 38h			;7e29
	ei			;7e2a
	rst 38h			;7e2b
	cp 0ffh			;7e2c
	rst 38h			;7e2e
	rst 38h			;7e2f
	rst 38h			;7e30
	rst 38h			;7e31
	jr nc,l7df4h		;7e32
	ld c,h			;7e34
	ret p			;7e35
	sub h			;7e36
	ld a,b			;7e37
	ld h,e			;7e38
	sbc a,h			;7e39
	cp c			;7e3a
	add a,00ch		;7e3b
	di			;7e3d
	inc l			;7e3e
l7e3fh:
	di			;7e3f
	sub (hl)		;7e40
	ld sp,hl		;7e41
	ret			;7e42
	scf			;7e43
	dec h			;7e44
	dec de			;7e45
	inc de			;7e46
	rrca			;7e47
	ld a,(bc)		;7e48
	rlca			;7e49
	add hl,bc		;7e4a
	ld b,084h		;7e4b
	inc bc			;7e4d
	add a,d			;7e4e
	ld bc,08142h		;7e4f
	adc a,a			;7e52
	rst 38h			;7e53
	rst 28h			;7e54
	rst 38h			;7e55
	rst 30h			;7e56
	rst 38h			;7e57
	ld d,a			;7e58
	rst 38h			;7e59
	ld d,a			;7e5a
	rst 38h			;7e5b
	ld c,a			;7e5c
	rst 38h			;7e5d
	rst 18h			;7e5e
	rst 38h			;7e5f
	sbc a,a			;7e60
	rst 38h			;7e61
	jp nc,0eaech		;7e62
	call p,0fef1h		;7e65
	jp m,0ffffh		;7e68
	rst 38h			;7e6b
	rst 38h			;7e6c
	rst 38h			;7e6d
	rst 38h			;7e6e
	rst 38h			;7e6f
l7e70h:
	cp 0ffh			;7e70
	ld l,(hl)		;7e72
	add a,a			;7e73
	sub c			;7e74
	ld l,a			;7e75
	ld e,h			;7e76
	daa			;7e77
	ld h,l			;7e78
	inc bc			;7e79
	and (hl)		;7e7a
	ld bc,00061h		;7e7b
	sub c			;7e7e
	ld h,b			;7e7f
	ld de,l78e0h		;7e80
	add a,b			;7e83
	add a,a			;7e84
	ret m			;7e85
	ret m			;7e86
	rst 38h			;7e87
	push af			;7e88
	ei			;7e89
	rst 30h			;7e8a
	ret m			;7e8b
	ret pe			;7e8c
	rst 38h			;7e8d
	ld h,a			;7e8e
	rst 38h			;7e8f
	add hl,hl		;7e90
	rst 30h			;7e91
	ld d,b			;7e92
	jr nz,l7ecdh		;7e93
	nop			;7e95
	ret nz			;7e96
	nop			;7e97
	ld h,b			;7e98
	add a,b			;7e99
	ld e,0e0h		;7e9a
	ex (sp),hl		;7e9c
	inc e			;7e9d
	inc h			;7e9e
	rst 18h			;7e9f
	in a,(0e7h)		;7ea0
	ld (hl),008h		;7ea2
	dec bc			;7ea4
	inc b			;7ea5
	dec b			;7ea6
	ld (bc),a		;7ea7
	ld b,000h		;7ea8
	nop			;7eaa
	nop			;7eab
	nop			;7eac
	nop			;7ead
	add a,b			;7eae
	nop			;7eaf
	ld h,b			;7eb0
	add a,b			;7eb1
	ld b,h			;7eb2
	jr nz,l7ef9h		;7eb3
	jr nz,l7e3fh		;7eb5
	ld b,b			;7eb7
	sub c			;7eb8
	ld b,b			;7eb9
	ld h,c			;7eba
	nop			;7ebb
	ld (bc),a		;7ebc
	ld bc,00103h		;7ebd
	dec b			;7ec0
	inc bc			;7ec1
	ld e,d			;7ec2
	inc a			;7ec3
	ld d,l			;7ec4
	jr c,l7e70h		;7ec5
	ld (hl),b		;7ec7
	ld d,d			;7ec8
l7ec9h:
	pop hl			;7ec9
	ld (0e5c1h),a		;7eca
l7ecdh:
	add a,d			;7ecd
	ld b,(hl)		;7ece
	add a,b			;7ecf
	ld c,e			;7ed0
	add a,h			;7ed1
	sub l			;7ed2
	ld h,d			;7ed3
	ld l,0c0h		;7ed4
	ld e,b			;7ed6
	and b			;7ed7
	or b			;7ed8
	nop			;7ed9
	ld h,c			;7eda
	add a,b			;7edb
	jp nz,08501h		;7edc
	ld (bc),a		;7edf
	adc a,l			;7ee0
	ld (bc),a		;7ee1
	add a,b			;7ee2
	nop			;7ee3
	rlca			;7ee4
	nop			;7ee5
	dec de			;7ee6
	inc b			;7ee7
	ld a,h			;7ee8
	nop			;7ee9
	ret po			;7eea
	nop			;7eeb
	add a,b			;7eec
	nop			;7eed
	nop			;7eee
	nop			;7eef
	nop			;7ef0
	nop			;7ef1
	exx			;7ef2
	nop			;7ef3
	daa			;7ef4
	ret c			;7ef5
	call m,00303h		;7ef6
l7ef9h:
	nop			;7ef9
	ld bc,00000h		;7efa
	nop			;7efd
	nop			;7efe
	nop			;7eff
	nop			;7f00
	nop			;7f01
	pop de			;7f02
	ld l,(hl)		;7f03
	ld l,b			;7f04
	scf			;7f05
	or (hl)			;7f06
	add hl,de		;7f07
	defb 0ddh,088h,0cdh ;illegal sequence	;7f08
	nop			;7f0b
	ld c,d			;7f0c
	inc b			;7f0d
	ld b,000h		;7f0e
	ld b,000h		;7f10
	ld h,h			;7f12
	jr l7ec9h		;7f13
	ex af,af'		;7f15
	ld d,b			;7f16
	adc a,h			;7f17
	ld c,d			;7f18
	add a,h			;7f19
	jp z,0a604h		;7f1a
	ld b,b			;7f1d
	and (hl)		;7f1e
	ld b,b			;7f1f
	and (hl)		;7f20
	ld b,b			;7f21
	and d			;7f22
	ld b,c			;7f23
	and e			;7f24
	ld b,b			;7f25
	ld h,d			;7f26
	nop			;7f27
	ld b,d			;7f28
	nop			;7f29
	ld (bc),a		;7f2a
	nop			;7f2b
	ld (bc),a		;7f2c
	nop			;7f2d
	ld (bc),a		;7f2e
	nop			;7f2f
	dec b			;7f30
	nop			;7f31
	add a,(hl)		;7f32
	nop			;7f33
	add a,l			;7f34
	ld (bc),a		;7f35
	ret nz			;7f36
	ld b,0c9h		;7f37
	ld b,0c9h		;7f39
	ld b,0c5h		;7f3b
	ld (bc),a		;7f3d
	add a,l			;7f3e
	ld (bc),a		;7f3f
	adc a,l			;7f40
	ld (bc),a		;7f41
	or a			;7f42
	ld a,a			;7f43
	or a			;7f44
	ld a,a			;7f45
	rst 18h			;7f46
	ccf			;7f47
	ld d,a			;7f48
	ccf			;7f49
	ld e,a			;7f4a
	ccf			;7f4b
	ld e,a			;7f4c
	ccf			;7f4d
	cpl			;7f4e
	rra			;7f4f
	dec hl			;7f50
	rra			;7f51
	or a			;7f52
	ret m			;7f53
	jp pe,02ff5h		;7f54
	ret p			;7f57
	sbc a,h			;7f58
	ex (sp),hl		;7f59
	jp c,042e7h		;7f5a
	cp a			;7f5d
	ld e,l			;7f5e
	or d			;7f5f
	ld l,e			;7f60
	sub b			;7f61
	jp nz,0c201h		;7f62
	ld bc,041a2h		;7f65
	push bc			;7f68
	inc bc			;7f69
	ld b,h			;7f6a
	add a,e			;7f6b
	adc a,e			;7f6c
	rlca			;7f6d
	ld d,00fh		;7f6e
	dec h			;7f70
	ld e,0afh		;7f71
	rst 18h			;7f73
	rst 18h			;7f74
	rst 38h			;7f75
	xor a			;7f76
	rst 18h			;7f77
	ld e,a			;7f78
	rst 38h			;7f79
	cp a			;7f7a
	ld a,a			;7f7b
	ld a,a			;7f7c
	rst 38h			;7f7d
	rst 18h			;7f7e
	rst 38h			;7f7f
	ld a,a			;7f80
	rst 38h			;7f81
	rst 38h			;7f82
	rst 38h			;7f83
	cp 0ffh			;7f84
	defb 0fdh,0feh,0fdh ;illegal sequence	;7f86
	cp 0feh			;7f89
	call m,0fefdh		;7f8b
	cp 0ffh			;7f8e
	defb 0fdh,0feh,0e1h ;illegal sequence	;7f90
	nop			;7f93
	ld hl,0a2c0h		;7f94
	ld b,c			;7f97
	ld b,d			;7f98
	add a,c			;7f99
	ld b,d			;7f9a
	add a,c			;7f9b
	ld b,c			;7f9c
	add a,b			;7f9d
	ld b,b			;7f9e
	add a,b			;7f9f
	ld b,b			;7fa0
	add a,b			;7fa1
	ld c,d			;7fa2
	push af			;7fa3
	ld l,a			;7fa4
	ret p			;7fa5
	push af			;7fa6
	ret m			;7fa7
	ei			;7fa8
	call m,0fffch		;7fa9
	ld a,0ffh		;7fac
	rst 18h			;7fae
	ccf			;7faf
	cpl			;7fb0
	rra			;7fb1
	inc h			;7fb2
	di			;7fb3
	adc a,c			;7fb4
	ld (hl),b		;7fb5
	ld h,h			;7fb6
	jr l7fcah		;7fb7
	ld c,08ch		;7fb9
	inc bc			;7fbb
	ld b,d			;7fbc
	add a,c			;7fbd
	inc hl			;7fbe
	ret nz			;7fbf
	sub c			;7fc0
	ret po			;7fc1
	sub b			;7fc2
	ret po			;7fc3
	ld e,h			;7fc4
	and b			;7fc5
	xor b			;7fc6
	djnz $+86		;7fc7
	cp b			;7fc9
l7fcah:
	ld a,(l74fch)		;7fca
	ret m			;7fcd
	dec (hl)		;7fce
	ret m			;7fcf
	sbc a,d			;7fd0
	ld a,h			;7fd1
	ld b,h			;7fd2
	inc bc			;7fd3
	ld b,h			;7fd4
	inc bc			;7fd5
	adc a,c			;7fd6
	ld b,089h		;7fd7
	ld b,089h		;7fd9
	ld b,089h		;7fdb
	ld b,089h		;7fdd
	ld b,089h		;7fdf
	ld b,08dh		;7fe1
	nop			;7fe3
	adc a,e			;7fe4
	nop			;7fe5
	dec bc			;7fe6
	nop			;7fe7
	ld (bc),a		;7fe8
	nop			;7fe9
	ld (de),a		;7fea
	nop			;7feb
	ld (de),a		;7fec
	nop			;7fed
	ld (de),a		;7fee
	nop			;7fef
	ld (bc),a		;7ff0
	nop			;7ff1
	ld a,(de)		;7ff2
	nop			;7ff3
	ld d,000h		;7ff4
	inc d			;7ff6
	nop			;7ff7
	inc (hl)		;7ff8
	nop			;7ff9
	inc l			;7ffa
	nop			;7ffb
	ld l,h			;7ffc
	nop			;7ffd
	ld h,(hl)		;7ffe
	nop			;7fff

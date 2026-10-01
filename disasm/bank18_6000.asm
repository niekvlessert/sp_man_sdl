; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank18_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank18.bin

	org 06000h

	adc a,b			;6000
	rst 38h			;6001
	ccf			;6002
l6003h:
	ret po			;6003
	ld (hl),e		;6004
	dec sp			;6005
	ld d,00dh		;6006
	dec a			;6008
	inc bc			;6009
	nop			;600a
	adc a,l			;600b
	ret po			;600c
	ret p			;600d
	jr c,$-38		;600e
	call c,01800h		;6010
	inc l			;6013
	ld l,01ah		;6014
	dec c			;6016
	inc de			;6017
	ccf			;6018
	inc bc			;6019
	nop			;601a
	add a,l			;601b
	ret po			;601c
	ret p			;601d
	ret pe			;601e
	call c,003dch		;601f
	nop			;6022
	adc a,l			;6023
	rlca			;6024
	rrca			;6025
	rla			;6026
	dec sp			;6027
	dec sp			;6028
	nop			;6029
	jr l6060h		;602a
	ld (hl),h		;602c
	ld e,b			;602d
	or b			;602e
	ret z			;602f
	call m,00003h		;6030
	sbc a,d			;6033
	rlca			;6034
	rrca			;6035
	inc e			;6036
	dec de			;6037
	dec sp			;6038
	nop			;6039
	inc bc			;603a
	rlca			;603b
	adc a,0dch		;603c
	ld l,b			;603e
	or b			;603f
	cp h			;6040
	dec a			;6041
	dec c			;6042
	ld d,03bh		;6043
	ld (hl),e		;6045
	ret po			;6046
	ret nz			;6047
	nop			;6048
	call c,038d8h		;6049
	ret p			;604c
	ret po			;604d
	inc bc			;604e
	nop			;604f
	adc a,l			;6050
	ccf			;6051
	inc de			;6052
	dec c			;6053
	ld a,(de)		;6054
	ld l,02ch		;6055
	jr l6059h		;6057
l6059h:
	call c,0e8dch		;6059
	ret p			;605c
	ret po			;605d
	inc bc			;605e
	nop			;605f
l6060h:
	ld (bc),a		;6060
	dec sp			;6061
	add a,e			;6062
	rla			;6063
	rrca			;6064
	rlca			;6065
	inc bc			;6066
	nop			;6067
	adc a,l			;6068
	call m,0b0c8h		;6069
	ld e,b			;606c
	ld (hl),h		;606d
	inc (hl)		;606e
	jr l6071h		;606f
l6071h:
	dec sp			;6071
	dec de			;6072
	inc e			;6073
	rrca			;6074
	rlca			;6075
	inc bc			;6076
	nop			;6077
	adc a,b			;6078
	cp h			;6079
	or b			;607a
	ld l,b			;607b
	call c,007ceh		;607c
	inc bc			;607f
	nop			;6080
	nop			;6081
	ld (bc),a		;6082
	ld c,003h		;6083
	add a,b			;6085
	add a,d			;6086
	ret nc			;6087
	add a,b			;6088
	inc b			;6089
	ret nc			;608a
	ld (bc),a		;608b
	ret po			;608c
	ld (bc),a		;608d
	add a,b			;608e
	ld (bc),a		;608f
	ret nc			;6090
	add a,d			;6091
	ret po			;6092
	add a,b			;6093
	inc bc			;6094
	ret nc			;6095
	add a,c			;6096
	add a,b			;6097
	ld b,0e0h		;6098
	add a,d			;609a
	add a,b			;609b
	ret po			;609c
	inc b			;609d
	ret nc			;609e
	ld (bc),a		;609f
	ret po			;60a0
	add a,(hl)		;60a1
	add a,b			;60a2
	ret po			;60a3
	ret nc			;60a4
	ret nc			;60a5
	ret po			;60a6
	add a,b			;60a7
	inc bc			;60a8
	ret nc			;60a9
	dec b			;60aa
	add a,b			;60ab
	ld (bc),a		;60ac
	ret po			;60ad
	ld (bc),a		;60ae
	add a,b			;60af
	ld (bc),a		;60b0
	ret nc			;60b1
	add a,c			;60b2
	ret po			;60b3
	inc bc			;60b4
	add a,b			;60b5
	add a,(hl)		;60b6
	ret nc			;60b7
	add a,b			;60b8
	ret nc			;60b9
	ret nc			;60ba
	add a,b			;60bb
	ret nc			;60bc
	inc bc			;60bd
	add a,b			;60be
	ld (bc),a		;60bf
	ret po			;60c0
	add a,e			;60c1
	ret nc			;60c2
	add a,b			;60c3
	add a,b			;60c4
	ld b,0e0h		;60c5
	add a,c			;60c7
	add a,b			;60c8
	inc bc			;60c9
	ret nc			;60ca
	add a,(hl)		;60cb
	add a,b			;60cc
	ret po			;60cd
	ret po			;60ce
	ret nc			;60cf
	ret po			;60d0
	add a,b			;60d1
	dec b			;60d2
	ret po			;60d3
	add a,e			;60d4
	ret nc			;60d5
	ret po			;60d6
	add a,b			;60d7
	dec b			;60d8
	ret po			;60d9
	ld (bc),a		;60da
	add a,b			;60db
	inc bc			;60dc
	ret nc			;60dd
	add a,(hl)		;60de
	add a,b			;60df
	ret po			;60e0
	ret po			;60e1
	ret nc			;60e2
	add a,b			;60e3
	add a,b			;60e4
	dec b			;60e5
	ret po			;60e6
	add a,e			;60e7
	ret nc			;60e8
	add a,b			;60e9
	ret nc			;60ea
	inc bc			;60eb
	add a,b			;60ec
	ld (bc),a		;60ed
	ret po			;60ee
	nop			;60ef
	ld (bc),a		;60f0
	ld bc,03982h		;60f1
	rst 0			;60f4
	inc bc			;60f5
	ld b,l			;60f6
	add a,c			;60f7
	add hl,sp		;60f8
	dec b			;60f9
	ld (de),a		;60fa
	ld (bc),a		;60fb
	ld e,002h		;60fc
	nop			;60fe
	ld (bc),a		;60ff
	rst 38h			;6100
	add a,l			;6101
	nop			;6102
	ld a,l			;6103
	ld bc,00001h		;6104
	inc bc			;6107
	ld d,c			;6108
	ld (bc),a		;6109
	ld (hl),c		;610a
	inc bc			;610b
	nop			;610c
	dec bc			;610d
	ld l,b			;610e
	add a,l			;610f
	rst 38h			;6110
	ld sp,031cfh		;6111
	rst 38h			;6114
	rlca			;6115
	ld bc,0ff81h		;6116
	dec bc			;6119
	ld bc,0ff81h		;611a
	inc b			;611d
	ld bc,08005h		;611e
	ld (bc),a		;6121
	nop			;6122
	add a,c			;6123
	rst 38h			;6124
	ex af,af'		;6125
	add a,b			;6126
	dec b			;6127
	ld bc,00002h		;6128
	add a,c			;612b
	rst 38h			;612c
	ex af,af'		;612d
	ld bc,01182h		;612e
	add hl,sp		;6131
	ld c,029h		;6132
	add a,c			;6134
	rst 38h			;6135
	ld b,081h		;6136
	ld (bc),a		;6138
	rst 38h			;6139
	ld b,011h		;613a
	ld (bc),a		;613c
	rst 38h			;613d
	inc b			;613e
	nop			;613f
	ld (bc),a		;6140
	rst 38h			;6141
	add a,c			;6142
	nop			;6143
	rlca			;6144
	ld d,l			;6145
	ld (bc),a		;6146
	rst 38h			;6147
	adc a,b			;6148
	add a,l			;6149
	rst 38h			;614a
	sub c			;614b
	sub c			;614c
	sbc a,a			;614d
	sub l			;614e
	rst 38h			;614f
	rst 38h			;6150
	inc bc			;6151
	add a,c			;6152
	adc a,h			;6153
	rst 38h			;6154
	adc a,l			;6155
	di			;6156
	adc a,l			;6157
	and a			;6158
	and l			;6159
	and l			;615a
	ei			;615b
	sub a			;615c
	rst 38h			;615d
	sub l			;615e
	rst 38h			;615f
	inc b			;6160
	sub l			;6161
	add a,l			;6162
	ld b,b			;6163
	ld h,b			;6164
	rra			;6165
	rra			;6166
	rst 38h			;6167
	rlca			;6168
	ld bc,0f403h		;6169
	adc a,l			;616c
	rst 38h			;616d
	add hl,hl		;616e
	cpl			;616f
	add hl,hl		;6170
	rst 38h			;6171
	add hl,sp		;6172
	add a,e			;6173
	cp 02ah			;6174
	ld hl,(0ff3fh)		;6176
	nop			;6179
	ex af,af'		;617a
	push de			;617b
	adc a,b			;617c
	rst 18h			;617d
	ld d,c			;617e
	pop de			;617f
	ld d,c			;6180
	pop de			;6181
	ld d,c			;6182
	pop de			;6183
	ld d,c			;6184
	ex af,af'		;6185
	di			;6186
	ex af,af'		;6187
	sbc a,(hl)		;6188
	ld (bc),a		;6189
	inc b			;618a
	ld (bc),a		;618b
	add a,h			;618c
	add a,c			;618d
	rst 38h			;618e
	inc bc			;618f
	add a,b			;6190
	add a,c			;6191
	jr nz,l6197h		;6192
	ld hl,0ff84h		;6194
l6197h:
	cp 0feh			;6197
	nop			;6199
	rlca			;619a
	ld bc,0ff81h		;619b
	ex af,af'		;619e
	ld bc,0aa03h		;619f
	ld (bc),a		;61a2
	rst 38h			;61a3
	ld (bc),a		;61a4
	add a,b			;61a5
	adc a,c			;61a6
	rst 38h			;61a7
	nop			;61a8
	nop			;61a9
	inc a			;61aa
	rst 0			;61ab
	add hl,sp		;61ac
	rst 0			;61ad
	add a,e			;61ae
	rst 0			;61af
	inc bc			;61b0
	rlca			;61b1
	inc bc			;61b2
	call p,00002h		;61b3
	inc bc			;61b6
	ex de,hl		;61b7
	add a,c			;61b8
	dec bc			;61b9
	inc b			;61ba
	ei			;61bb
	ld (bc),a		;61bc
	rst 38h			;61bd
	add a,h			;61be
	nop			;61bf
	add a,c			;61c0
	add a,c			;61c1
	rst 38h			;61c2
	rlca			;61c3
	nop			;61c4
	ld (bc),a		;61c5
	rst 38h			;61c6
	add a,c			;61c7
	nop			;61c8
	rlca			;61c9
	ld bc,0ff81h		;61ca
	ex af,af'		;61cd
	push de			;61ce
	inc bc			;61cf
	ld d,l			;61d0
	add a,l			;61d1
	rst 38h			;61d2
	cp 0feh			;61d3
	nop			;61d5
	nop			;61d6
	inc b			;61d7
	jp pe,0e88dh		;61d8
	ex (sp),hl		;61db
	rst 30h			;61dc
	inc b			;61dd
	ld a,a			;61de
	ld h,b			;61df
	rra			;61e0
	rra			;61e1
	ld a,a			;61e2
	ld h,b			;61e3
	ld h,b			;61e4
	nop			;61e5
	nop			;61e6
	rlca			;61e7
	xor 007h		;61e8
	defb 0edh ;next byte illegal after ed	;61ea
	adc a,e			;61eb
	nop			;61ec
	ld a,h			;61ed
	cp a			;61ee
	cp c			;61ef
	xor c			;61f0
	xor c			;61f1
	ld sp,hl		;61f2
	ld bc,0f401h		;61f3
	call p,00703h		;61f6
	ld a,(bc)		;61f9
	call p,0ff81h		;61fa
	rlca			;61fd
	add a,b			;61fe
	add a,c			;61ff
	rst 38h			;6200
	inc b			;6201
	ld d,c			;6202
	add a,h			;6203
	pop de			;6204
	adc a,(hl)		;6205
	sbc a,040h		;6206
	inc bc			;6208
	rst 10h			;6209
	add a,c			;620a
	ret nc			;620b
	inc b			;620c
	rst 18h			;620d
	rlca			;620e
	xor (hl)		;620f
	adc a,c			;6210
	nop			;6211
	inc c			;6212
	ld (de),a		;6213
	inc de			;6214
	ld (de),a		;6215
	inc de			;6216
	ld (de),a		;6217
	inc de			;6218
	ld (de),a		;6219
	djnz $+87		;621a
	adc a,b			;621c
	ld b,l			;621d
	ld a,l			;621e
	ld b,l			;621f
	ld a,l			;6220
	ld b,l			;6221
	ld a,l			;6222
	ld b,l			;6223
	rst 38h			;6224
	nop			;6225
	add a,a			;6226
	call p,0f3f3h		;6227
	push af			;622a
	call p,0f3f4h		;622b
	rlca			;622e
	call p,05404h		;622f
	ld (bc),a		;6232
	ex (sp),hl		;6233
	add a,e			;6234
	ld d,h			;6235
	call po,0055fh		;6236
	call p,05405h		;6239
	ld (bc),a		;623c
	ld b,e			;623d
	sub c			;623e
	rst 38h			;623f
	adc a,l			;6240
	rst 38h			;6241
	adc a,l			;6242
	rst 38h			;6243
	ret pe			;6244
	rst 38h			;6245
	ret pe			;6246
	ret m			;6247
	ret m			;6248
	ld sp,hl		;6249
	ret m			;624a
	ret m			;624b
	push af			;624c
	cp 0f5h			;624d
	call p,0f305h		;624f
	add a,h			;6252
	call p,0fef5h		;6253
	push af			;6256
	rlca			;6257
	call p,0f581h		;6258
	inc b			;625b
	call p,0fe85h		;625c
	push af			;625f
	call p,05454h		;6260
	inc bc			;6263
	di			;6264
	ex af,af'		;6265
	call p,0fe85h		;6266
	push af			;6269
	call p,05454h		;626a
	inc bc			;626d
	di			;626e
	dec d			;626f
	call p,0f581h		;6270
	dec bc			;6273
	di			;6274
	add a,h			;6275
	push af			;6276
	cp 0f5h			;6277
	call p,0f306h		;6279
	ld (bc),a		;627c
	ld d,h			;627d
	ld (bc),a		;627e
	push hl			;627f
	add a,(hl)		;6280
	defb 0fdh,0d8h,08eh ;illegal sequence	;6281
	adc a,(hl)		;6284
	ret c			;6285
	ret c			;6286
	dec b			;6287
	defb 0fdh,081h,0f8h ;illegal sequence	;6288
	dec b			;628b
	defb 0fdh,081h,0f8h ;illegal sequence	;628c
	inc b			;628f
	defb 0fdh,087h,0f9h ;illegal sequence	;6290
	defb 0fdh,0f8h,0fdh ;illegal sequence	;6293
	ld sp,iy		;6296
	ret c			;6298
	inc bc			;6299
	add a,(iy-002h)		;629a
	ret m			;629d
	ret m			;629e
	defb 0fdh,054h ;ld d,iyh	;629f
	ld b,e			;62a1
	ld b,0f3h		;62a2
	add a,a			;62a4
	call p,0fef5h		;62a5
	push af			;62a8
	push hl			;62a9
	ld d,h			;62aa
	ld b,e			;62ab
	dec b			;62ac
	ret m			;62ad
	sbc a,e			;62ae
	call p,0f4f3h		;62af
	call p,0f5f5h		;62b2
	push hl			;62b5
	push hl			;62b6
	call p,0f5f4h		;62b7
	cp 0feh			;62ba
	push af			;62bc
	call p,0f3f3h		;62bd
	call p,0fef5h		;62c0
	push af			;62c3
	call p,0f3f3h		;62c4
	ld b,e			;62c7
	ld d,e			;62c8
	ex (sp),hl		;62c9
	inc bc			;62ca
	ld d,e			;62cb
	add a,l			;62cc
	ld b,e			;62cd
	ccf			;62ce
	ld b,e			;62cf
	ld d,e			;62d0
	ex (sp),hl		;62d1
	inc bc			;62d2
	ld d,e			;62d3
	add a,e			;62d4
	ld b,e			;62d5
	ccf			;62d6
	call p,0f304h		;62d7
	add a,h			;62da
	cp 0f4h			;62db
	inc sp			;62dd
	call p,0f304h		;62de
	add a,c			;62e1
	ex (sp),hl		;62e2
	inc bc			;62e3
	ld b,e			;62e4
	add a,d			;62e5
	push af			;62e6
	cp 003h			;62e7
	call p,0f302h		;62e9
	inc bc			;62ec
	call p,0f58eh		;62ed
	cp 0f5h			;62f0
	call p,0f4f3h		;62f2
	cp 0f3h			;62f5
	di			;62f7
	ld d,h			;62f8
	ld d,h			;62f9
	ld b,e			;62fa
	call p,003f4h		;62fb
	di			;62fe
	add a,c			;62ff
	call p,0f903h		;6300
	adc a,a			;6303
	ld b,e			;6304
	ld c,a			;6305
	ld c,(hl)		;6306
	ld d,h			;6307
	ld d,h			;6308
	ld b,e			;6309
	ld b,e			;630a
	rst 38h			;630b
	ld b,e			;630c
	ld d,e			;630d
	push hl			;630e
	ld d,e			;630f
	ld d,e			;6310
	push hl			;6311
	ld d,h			;6312
	inc b			;6313
	ld c,a			;6314
	add a,c			;6315
	push af			;6316
	ex af,af'		;6317
	call p,04502h		;6318
	ld (bc),a		;631b
	ccf			;631c
	inc b			;631d
	call p,0f582h		;631e
	call p,0f303h		;6321
	add a,l			;6324
	call p,0fef5h		;6325
	cp 0f5h			;6328
	inc bc			;632a
	call p,0fe8dh		;632b
	call p,054f4h		;632e
	ld b,e			;6331
	ld b,e			;6332
	ccf			;6333
	ccf			;6334
	ld c,a			;6335
	ld d,e			;6336
	ex (sp),hl		;6337
	ex (sp),hl		;6338
	ld d,e			;6339
	inc b			;633a
	ld b,e			;633b
	ld (bc),a		;633c
	di			;633d
	ld (bc),a		;633e
	ld b,e			;633f
	dec b			;6340
	ccf			;6341
	add a,h			;6342
	ld c,a			;6343
	ld e,a			;6344
	rst 28h			;6345
	ld e,a			;6346
	rlca			;6347
	ld c,a			;6348
	inc bc			;6349
	ccf			;634a
	inc bc			;634b
	call p,0f502h		;634c
	add a,a			;634f
	cp 0f5h			;6350
	push hl			;6352
	ld d,h			;6353
	ld b,e			;6354
	ld c,a			;6355
	ld c,(hl)		;6356
	inc bc			;6357
	ld d,h			;6358
	add a,c			;6359
	push hl			;635a
	dec b			;635b
	ld d,h			;635c
	add a,(hl)		;635d
	ld b,e			;635e
	push af			;635f
	push af			;6360
	cp 0f5h			;6361
	call p,0f305h		;6363
	add a,l			;6366
	call p,03e35h		;6367
	ld a,053h		;636a
	inc bc			;636c
	ld b,e			;636d
	add a,(hl)		;636e
	ld d,e			;636f
	push hl			;6370
	ld d,e			;6371
	ld d,e			;6372
	push hl			;6373
	ld d,h			;6374
	rlca			;6375
	ld c,a			;6376
	inc bc			;6377
	ccf			;6378
	add a,l			;6379
	call p,0fef5h		;637a
	push af			;637d
	call p,0f303h		;637e
	add a,l			;6381
	call p,0fef5h		;6382
	cp 0f5h			;6385
	inc b			;6387
	call p,0f585h		;6388
	cp 0feh			;638b
	push af			;638d
	call p,0f303h		;638e
	inc b			;6391
	call p,0f302h		;6392
	nop			;6395
	add a,c			;6396
	rst 38h			;6397
	rlca			;6398
	ld bc,0ff81h		;6399
	ld b,080h		;639c
	ld (bc),a		;639e
	rst 38h			;639f
	ld b,001h		;63a0
	add a,c			;63a2
	rst 38h			;63a3
	rlca			;63a4
	ld bc,0ff81h		;63a5
	inc bc			;63a8
	add a,c			;63a9
	add a,c			;63aa
	rst 38h			;63ab
	inc bc			;63ac
	add a,c			;63ad
	ld (bc),a		;63ae
	rst 38h			;63af
	ld c,080h		;63b0
	add a,c			;63b2
	rst 38h			;63b3
	rlca			;63b4
	ld bc,0ff81h		;63b5
	rrca			;63b8
	ld bc,0ff02h		;63b9
	add a,d			;63bc
	add a,b			;63bd
	rst 38h			;63be
	ld (de),a		;63bf
	add a,b			;63c0
	add a,h			;63c1
	rst 38h			;63c2
	add a,b			;63c3
	add a,b			;63c4
	nop			;63c5
	ld b,07fh		;63c6
	ld (bc),a		;63c8
	nop			;63c9
	ld (bc),a		;63ca
	rst 38h			;63cb
	dec b			;63cc
	nop			;63cd
	add a,c			;63ce
	rst 38h			;63cf
	inc b			;63d0
	nop			;63d1
	add a,c			;63d2
	rst 38h			;63d3
	inc bc			;63d4
	nop			;63d5
	rlca			;63d6
	cp 081h			;63d7
	nop			;63d9
	rlca			;63da
	ld a,a			;63db
	add a,c			;63dc
	nop			;63dd
	rlca			;63de
	add a,c			;63df
	add a,c			;63e0
	rst 38h			;63e1
	ld b,009h		;63e2
	inc bc			;63e4
	rst 38h			;63e5
	ld b,080h		;63e6
	ld (bc),a		;63e8
	rst 38h			;63e9
	inc b			;63ea
	nop			;63eb
	inc b			;63ec
	rst 38h			;63ed
	inc b			;63ee
	nop			;63ef
	ld (bc),a		;63f0
	jp m,0ff89h		;63f1
	nop			;63f4
	nop			;63f5
	rst 10h			;63f6
	nop			;63f7
	rst 38h			;63f8
	nop			;63f9
	nop			;63fa
	rst 38h			;63fb
	inc bc			;63fc
	nop			;63fd
	add a,c			;63fe
	rst 38h			;63ff
	inc bc			;6400
	nop			;6401
	add a,c			;6402
	rst 38h			;6403
	inc bc			;6404
	nop			;6405
	add a,c			;6406
	jp m,00006h		;6407
	ld (bc),a		;640a
	rst 38h			;640b
	ld b,000h		;640c
	ld (bc),a		;640e
	jp m,00003h		;640f
	ld b,0ebh		;6412
	add a,h			;6414
	ex (sp),hl		;6415
	ei			;6416
	ei			;6417
	ex (sp),hl		;6418
	ld b,0ebh		;6419
	ld b,07eh		;641b
	add a,d			;641d
	nop			;641e
	sub b			;641f
	inc b			;6420
	dec b			;6421
	ld (bc),a		;6422
	rst 38h			;6423
	ld (bc),a		;6424
	nop			;6425
	dec b			;6426
	ld a,a			;6427
	add a,h			;6428
	rst 38h			;6429
	add a,b			;642a
	add a,b			;642b
	rst 38h			;642c
	dec b			;642d
	nop			;642e
	add a,d			;642f
	rst 38h			;6430
	nop			;6431
	rlca			;6432
	add a,c			;6433
	add a,c			;6434
	rst 38h			;6435
	inc b			;6436
	xor d			;6437
	add a,h			;6438
	rst 38h			;6439
	add a,h			;643a
	add a,h			;643b
	rst 38h			;643c
	ex af,af'		;643d
	sub e			;643e
	add a,c			;643f
	rst 38h			;6440
	ld b,001h		;6441
	add a,c			;6443
	rst 38h			;6444
	rlca			;6445
	add a,b			;6446
	add a,e			;6447
	rst 38h			;6448
	sub b			;6449
	rst 38h			;644a
	ld b,081h		;644b
	add a,d			;644d
	nop			;644e
	rst 38h			;644f
	ld b,080h		;6450
	ld (bc),a		;6452
	rst 38h			;6453
	inc b			;6454
	nop			;6455
	add a,c			;6456
	rst 38h			;6457
	inc bc			;6458
	nop			;6459
	add a,c			;645a
	rst 38h			;645b
	inc bc			;645c
	dec b			;645d
	ld (bc),a		;645e
	rst 38h			;645f
	ld c,005h		;6460
	add a,c			;6462
	rst 38h			;6463
	inc bc			;6464
	dec b			;6465
	add a,e			;6466
	rst 38h			;6467
	nop			;6468
	nop			;6469
	inc bc			;646a
	rst 38h			;646b
	ex af,af'		;646c
	ld bc,08286h		;646d
	jp nz,0c0ffh		;6470
	rst 38h			;6473
	ret nz			;6474
	inc bc			;6475
	rst 38h			;6476
l6477h:
	sbc a,a			;6477
	add a,b			;6478
	rst 38h			;6479
	nop			;647a
	rst 38h			;647b
	nop			;647c
	nop			;647d
	push af			;647e
	nop			;647f
	add a,b			;6480
	rst 38h			;6481
	nop			;6482
	add a,b			;6483
	add a,b			;6484
	rst 38h			;6485
	nop			;6486
	rst 38h			;6487
	dec b			;6488
	dec b			;6489
	rst 38h			;648a
	adc a,c			;648b
	adc a,c			;648c
	rst 38h			;648d
	nop			;648e
	rst 38h			;648f
	ret nz			;6490
	add a,b			;6491
	ret nz			;6492
	rst 38h			;6493
	jp nz,08282h		;6494
	ex af,af'		;6497
	add a,c			;6498
	add a,l			;6499
	nop			;649a
	rst 38h			;649b
	nop			;649c
	nop			;649d
	rst 38h			;649e
	inc bc			;649f
	ld d,l			;64a0
	add a,c			;64a1
	rst 38h			;64a2
	rlca			;64a3
	sub b			;64a4
	add a,c			;64a5
	rst 38h			;64a6
	rlca			;64a7
	inc b			;64a8
	rlca			;64a9
	sub b			;64aa
	add a,c			;64ab
	rst 38h			;64ac
	rlca			;64ad
	inc b			;64ae
	add a,h			;64af
	rst 38h			;64b0
	xor d			;64b1
	rst 38h			;64b2
	rst 38h			;64b3
	inc b			;64b4
	push de			;64b5
	add a,h			;64b6
	nop			;64b7
	ld (hl),b		;64b8
	halt			;64b9
	ld (hl),b		;64ba
	inc bc			;64bb
	ld a,(hl)		;64bc
	inc bc			;64bd
	nop			;64be
	add a,c			;64bf
	rst 38h			;64c0
	ld b,001h		;64c1
	adc a,c			;64c3
	ld sp,030ffh		;64c4
	ld hl,0ff21h		;64c7
	and b			;64ca
	rst 38h			;64cb
	rst 38h			;64cc
	inc bc			;64cd
	ld de,0ff81h		;64ce
	inc bc			;64d1
	ld (bc),a		;64d2
	ld (bc),a		;64d3
	djnz l6477h		;64d4
	rst 38h			;64d6
	nop			;64d7
	rst 38h			;64d8
	ld b,c			;64d9
	ld b,c			;64da
	rst 38h			;64db
	ld bc,0f901h		;64dc
	ld bc,001f9h		;64df
	ld sp,hl		;64e2
	ld bc,0ff00h		;64e3
	ld bc,08101h		;64e6
	adc a,a			;64e9
	adc a,c			;64ea
	ld sp,hl		;64eb
	nop			;64ec
	rst 38h			;64ed
	add a,c			;64ee
	add a,c			;64ef
	rst 38h			;64f0
	inc a			;64f1
	ld a,c			;64f2
	rst 38h			;64f3
	nop			;64f4
	rst 38h			;64f5
	rst 38h			;64f6
	inc bc			;64f7
	dec b			;64f8
	sub a			;64f9
	rst 38h			;64fa
	nop			;64fb
	nop			;64fc
	rst 38h			;64fd
	rst 38h			;64fe
	nop			;64ff
	nop			;6500
	rst 38h			;6501
	rst 38h			;6502
	add hl,bc		;6503
	nop			;6504
	rst 38h			;6505
	rst 38h			;6506
	nop			;6507
	nop			;6508
	rst 38h			;6509
	rst 38h			;650a
	nop			;650b
	rst 38h			;650c
	nop			;650d
	nop			;650e
	rst 38h			;650f
	rst 38h			;6510
	inc bc			;6511
	sub b			;6512
	add a,h			;6513
	rst 38h			;6514
	nop			;6515
	rst 38h			;6516
	rst 38h			;6517
	dec b			;6518
	dec b			;6519
	add a,a			;651a
	rst 38h			;651b
	add a,c			;651c
	add a,c			;651d
	dec b			;651e
	dec b			;651f
	rst 38h			;6520
	dec b			;6521
	rlca			;6522
	ld a,a			;6523
	inc bc			;6524
	rst 38h			;6525
	add a,a			;6526
	nop			;6527
	rst 38h			;6528
	rst 38h			;6529
	djnz l653ch		;652a
	rra			;652c
	rst 38h			;652d
	ld b,001h		;652e
	ld (bc),a		;6530
	rst 38h			;6531
	adc a,h			;6532
	ret nc			;6533
	ld d,b			;6534
	ret nc			;6535
	rst 38h			;6536
	nop			;6537
	nop			;6538
	rst 38h			;6539
	rst 38h			;653a
	nop			;653b
l653ch:
	nop			;653c
	rst 38h			;653d
	rst 38h			;653e
	inc bc			;653f
	nop			;6540
	ld b,0ffh		;6541
	inc bc			;6543
	nop			;6544
	ld (bc),a		;6545
	add a,b			;6546
	add a,c			;6547
	rst 38h			;6548
	inc b			;6549
	add a,b			;654a
	add a,c			;654b
	nop			;654c
	inc bc			;654d
	rst 38h			;654e
	dec b			;654f
	nop			;6550
	rlca			;6551
	ld bc,0ff84h		;6552
	nop			;6555
	rst 38h			;6556
	rst 38h			;6557
	inc bc			;6558
	nop			;6559
	add a,c			;655a
	rst 38h			;655b
	inc bc			;655c
	or 081h			;655d
	rst 38h			;655f
	inc bc			;6560
	nop			;6561
	adc a,c			;6562
	rst 38h			;6563
	nop			;6564
	rst 38h			;6565
	nop			;6566
	nop			;6567
	rst 38h			;6568
	rst 38h			;6569
	and b			;656a
	and b			;656b
	inc bc			;656c
	add a,b			;656d
	adc a,l			;656e
	ret nz			;656f
	rst 38h			;6570
	rst 38h			;6571
	push bc			;6572
	push bc			;6573
	rst 38h			;6574
	nop			;6575
	rst 38h			;6576
	rst 38h			;6577
	nop			;6578
	nop			;6579
	cp a			;657a
	add a,b			;657b
	inc b			;657c
	ld a,(bc)		;657d
	ld (bc),a		;657e
	rst 38h			;657f
	ld (bc),a		;6580
	add a,b			;6581
	add a,h			;6582
	rst 38h			;6583
	nop			;6584
	rst 38h			;6585
	rst 38h			;6586
	inc bc			;6587
	nop			;6588
	and c			;6589
	rst 38h			;658a
	djnz l659dh		;658b
	rst 38h			;658d
	nop			;658e
	rst 38h			;658f
	ei			;6590
	ei			;6591
	nop			;6592
	nop			;6593
	ret nz			;6594
	ret nz			;6595
	rst 38h			;6596
	add a,b			;6597
	ret nz			;6598
	rst 38h			;6599
	ret nz			;659a
	ld (bc),a		;659b
	ld (bc),a		;659c
l659dh:
	rst 38h			;659d
	ld d,b			;659e
	rst 38h			;659f
	add a,b			;65a0
	add a,b			;65a1
	rst 38h			;65a2
	sub b			;65a3
	sub b			;65a4
	rst 38h			;65a5
	nop			;65a6
	rst 38h			;65a7
	add a,h			;65a8
	add a,h			;65a9
	rst 38h			;65aa
	nop			;65ab
	add a,d			;65ac
	di			;65ad
	pop af			;65ae
	rlca			;65af
	ret p			;65b0
	add a,c			;65b1
	pop af			;65b2
	inc bc			;65b3
l65b4h:
	ret p			;65b4
	add a,c			;65b5
	pop af			;65b6
	inc bc			;65b7
	ret p			;65b8
	add a,c			;65b9
	pop af			;65ba
	inc bc			;65bb
	ret p			;65bc
	add a,c			;65bd
	pop af			;65be
	rlca			;65bf
	ret p			;65c0
	add a,c			;65c1
	pop af			;65c2
	ld b,0f0h		;65c3
	add a,c			;65c5
	pop af			;65c6
	inc b			;65c7
	ret p			;65c8
	add a,c			;65c9
	pop af			;65ca
	ld b,0f0h		;65cb
	add a,c			;65cd
	pop af			;65ce
	rlca			;65cf
	ret p			;65d0
	add a,c			;65d1
	pop af			;65d2
	inc b			;65d3
	ret p			;65d4
	add a,c			;65d5
	pop af			;65d6
	ld a,(bc)		;65d7
	ret p			;65d8
	add a,c			;65d9
	pop af			;65da
	ex af,af'		;65db
	ret p			;65dc
	ld d,010h		;65dd
	inc bc			;65df
	rrca			;65e0
	add a,c			;65e1
	rra			;65e2
	rlca			;65e3
	rrca			;65e4
	dec c			;65e5
	djnz l65ebh		;65e6
	rrca			;65e8
	add a,c			;65e9
	rra			;65ea
l65ebh:
	rlca			;65eb
	rrca			;65ec
	add a,c			;65ed
	rra			;65ee
	ld b,00fh		;65ef
	add a,c			;65f1
	pop af			;65f2
	rlca			;65f3
	ret p			;65f4
	add a,c			;65f5
	pop af			;65f6
	rlca			;65f7
	ret p			;65f8
	dec bc			;65f9
	djnz $+5		;65fa
	rrca			;65fc
	dec b			;65fd
	djnz $+5		;65fe
	rrca			;6600
	inc bc			;6601
	djnz l6641h		;6602
	rrca			;6604
	inc bc			;6605
	pop af			;6606
	dec b			;6607
	ret p			;6608
	ld b,001h		;6609
	rlca			;660b
	ld hl,0f008h		;660c
	add a,d			;660f
	pop af			;6610
	jp p,0f103h		;6611
	add a,d			;6614
	jp p,003f0h		;6615
	pop af			;6618
	dec b			;6619
	ret p			;661a
	add a,d			;661b
	pop af			;661c
	jp p,0f005h		;661d
	add a,c			;6620
	pop af			;6621
	dec b			;6622
	ret p			;6623
	add a,c			;6624
	pop af			;6625
	inc b			;6626
	ret p			;6627
	add a,c			;6628
	pop af			;6629
	inc b			;662a
	ret p			;662b
	add a,c			;662c
	pop af			;662d
	rlca			;662e
	ret p			;662f
	inc b			;6630
	djnz l65b4h		;6631
	ld (de),a		;6633
	dec b			;6634
	ld bc,01205h		;6635
	inc bc			;6638
	ret p			;6639
	add a,c			;663a
	ld bc,0f005h		;663b
	ld (bc),a		;663e
sub_663fh:
	pop af			;663f
	ld (bc),a		;6640
l6641h:
	jp p,0f183h		;6641
	jp p,00312h		;6644
	ld bc,0f004h		;6647
	add a,c			;664a
	ld (de),a		;664b
	inc bc			;664c
	ret p			;664d
	ld (bc),a		;664e
	ld bc,0f007h		;664f
	add a,c			;6652
	jp p,0f103h		;6653
	ex af,af'		;6656
	ret p			;6657
	add a,c			;6658
	ld hl,00f07h		;6659
	add a,h			;665c
	ld hl,00f0fh		;665d
	pop af			;6660
	inc b			;6661
	ret p			;6662
	add a,h			;6663
	pop af			;6664
	ret p			;6665
	ret p			;6666
	pop af			;6667
	dec b			;6668
	ret p			;6669
	add a,c			;666a
	pop af			;666b
	inc bc			;666c
	ret p			;666d
	add a,l			;666e
	pop af			;666f
	jp p,0f2f1h		;6670
	pop af			;6673
	ex af,af'		;6674
	ret p			;6675
	ld (bc),a		;6676
	pop af			;6677
	add a,e			;6678
	djnz l669ch		;6679
	djnz l6680h		;667b
	ret p			;667d
	add a,d			;667e
	pop af			;667f
l6680h:
	jp p,0f006h		;6680
	add a,d			;6683
	pop af			;6684
	jp p,0f006h		;6685
	add a,d			;6688
	jp p,006f1h		;6689
	ret p			;668c
	add a,d			;668d
	jp p,006f1h		;668e
	ret p			;6691
	add a,e			;6692
	djnz l66b6h		;6693
	djnz $+9		;6695
	rrca			;6697
	inc bc			;6698
	rra			;6699
	ld b,0f0h		;669a
l669ch:
	add a,c			;669c
	jp p,0f103h		;669d
	add a,d			;66a0
	ret p			;66a1
	pop af			;66a2
	ld b,0f0h		;66a3
	add a,c			;66a5
	pop af			;66a6
	inc bc			;66a7
	ret p			;66a8
	add a,e			;66a9
	pop af			;66aa
	jp p,004f1h		;66ab
	ret p			;66ae
	add a,c			;66af
	pop af			;66b0
	dec c			;66b1
	ret p			;66b2
	add a,c			;66b3
	pop af			;66b4
	rlca			;66b5
l66b6h:
	ret p			;66b6
	ld (bc),a		;66b7
	pop af			;66b8
	add a,c			;66b9
	jr nz,l66c2h		;66ba
	ret p			;66bc
	add a,c			;66bd
	ld bc,0f007h		;66be
	ld (bc),a		;66c1
l66c2h:
	ld bc,0f006h		;66c2
	ld (bc),a		;66c5
	ld bc,0f004h		;66c6
	ld (bc),a		;66c9
	ld bc,0f002h		;66ca
	add a,d			;66cd
	pop af			;66ce
	jp p,01203h		;66cf
	ld (bc),a		;66d2
	ret p			;66d3
	ld (bc),a		;66d4
	ld bc,01202h		;66d5
	ld (bc),a		;66d8
	pop af			;66d9
	add a,c			;66da
	jp p,0f005h		;66db
	add a,d			;66de
	djnz $+35		;66df
	inc b			;66e1
	ld bc,0f007h		;66e2
	add a,l			;66e5
	pop af			;66e6
	jp p,0f1f2h		;66e7
	jp p,0f007h		;66ea
	add a,c			;66ed
	pop af			;66ee
	inc bc			;66ef
	ret p			;66f0
	ld (bc),a		;66f1
	pop af			;66f2
	ld (bc),a		;66f3
	jr nz,l66f8h		;66f4
	rrca			;66f6
	ld (bc),a		;66f7
l66f8h:
	djnz $+9		;66f8
	rrca			;66fa
	inc bc			;66fb
	ld hl,00081h		;66fc
	inc bc			;66ff
	ld hl,01007h		;6700
	ld b,020h		;6703
	ld (bc),a		;6705
	pop af			;6706
	add a,c			;6707
	jp p,0f004h		;6708
	inc bc			;670b
	ld (de),a		;670c
	ld (bc),a		;670d
	ret p			;670e
	inc bc			;670f
	ld hl,01085h		;6710
	ld hl,0f010h		;6713
	ret p			;6716
	ld b,021h		;6717
	inc bc			;6719
	ret p			;671a
	add a,l			;671b
	pop af			;671c
	ret p			;671d
	pop af			;671e
	jp p,003f1h		;671f
	ret p			;6722
	add a,d			;6723
	pop af			;6724
	ret p			;6725
	inc bc			;6726
	ld (de),a		;6727
	dec b			;6728
	rrca			;6729
	add a,e			;672a
	pop af			;672b
	jp p,003f1h		;672c
	ret p			;672f
	add a,d			;6730
	pop af			;6731
	ret p			;6732
	inc bc			;6733
	ld (de),a		;6734
	inc bc			;6735
	rrca			;6736
	ld (bc),a		;6737
	ld bc,0f181h		;6738
	inc b			;673b
	ret p			;673c
	add a,c			;673d
	djnz l6743h		;673e
	rrca			;6740
	add a,h			;6741
	pop af			;6742
l6743h:
	ret p			;6743
	ret p			;6744
	pop af			;6745
	inc bc			;6746
	ret p			;6747
	add a,c			;6748
	pop af			;6749
	inc b			;674a
	ret p			;674b
	add a,h			;674c
	pop af			;674d
	ret p			;674e
	ret p			;674f
	pop af			;6750
	inc b			;6751
	ret p			;6752
	add a,e			;6753
	pop af			;6754
	ret p			;6755
	ret p			;6756
	nop			;6757
	and c			;6758
	rra			;6759
	rlca			;675a
	ld bc,00f02h		;675b
	ccf			;675e
	ccf			;675f
	rra			;6760
	ret m			;6761
	ret p			;6762
l6763h:
	add a,b			;6763
	ld b,b			;6764
	ret p			;6765
	ret m			;6766
	ret m			;6767
	ret p			;6768
	rra			;6769
	ccf			;676a
	ccf			;676b
	rrca			;676c
	ld (bc),a		;676d
	ld bc,01f07h		;676e
	ret p			;6771
	ret m			;6772
	ret m			;6773
	ret p			;6774
	ld b,b			;6775
	add a,b			;6776
	ret p			;6777
	ret m			;6778
	ld a,a			;6779
	inc bc			;677a
	dec bc			;677b
	add a,l			;677c
	ld h,l			;677d
	and l			;677e
	ret p			;677f
	rra			;6780
	cp 003h			;6781
	ret nc			;6783
	adc a,b			;6784
	and (hl)		;6785
	and l			;6786
	rrca			;6787
	ret m			;6788
	rra			;6789
	ret p			;678a
	and l			;678b
	ld h,l			;678c
	inc bc			;678d
	call p,08085h		;678e
	rlca			;6791
	rrca			;6792
	and l			;6793
	and (hl)		;6794
	inc bc			;6795
	cpl			;6796
	adc a,h			;6797
	ld bc,080ffh		;6798
	add a,b			;679b
	sub 0a9h		;679c
	ld a,a			;679e
	ld a,a			;679f
	ccf			;67a0
	ccf			;67a1
	ld b,b			;67a2
	rst 38h			;67a3
	inc bc			;67a4
	ld (hl),e		;67a5
	add a,l			;67a6
	ld b,b			;67a7
	ccf			;67a8
	ccf			;67a9
	ld (bc),a		;67aa
	rst 38h			;67ab
	inc bc			;67ac
	adc a,094h		;67ad
	ld (bc),a		;67af
	call m,001ffh		;67b0
	ld bc,0956bh		;67b3
	cp 0feh			;67b6
	call m,sub_7f3fh	;67b8
	ld a,a			;67bb
	xor c			;67bc
	sub 080h		;67bd
	add a,b			;67bf
	rst 38h			;67c0
	ccf			;67c1
	ld b,b			;67c2
	inc bc			;67c3
	ld (hl),e		;67c4
	add a,l			;67c5
	rst 38h			;67c6
	ld b,b			;67c7
	ld b,b			;67c8
	call m,00302h		;67c9
	adc a,090h		;67cc
	rst 38h			;67ce
	ld (bc),a		;67cf
	ld (bc),a		;67d0
	call m,0fefeh		;67d1
	sub l			;67d4
	ld l,e			;67d5
	ld bc,0ff01h		;67d6
	dec a			;67d9
	dec l			;67da
	rla			;67db
	rst 38h			;67dc
	and (hl)		;67dd
	inc bc			;67de
	cpl			;67df
	adc a,l			;67e0
	call c,017b4h		;67e1
	rst 38h			;67e4
	ld (00b0bh),a		;67e5
	cpl			;67e8
	ccf			;67e9
	ld (hl),017h		;67ea
	rst 38h			;67ec
	ld e,b			;67ed
	inc bc			;67ee
	cpl			;67ef
	adc a,b			;67f0
	call pe,017d8h		;67f1
	rst 38h			;67f4
	ret			;67f5
	dec bc			;67f6
	dec bc			;67f7
	cpl			;67f8
	inc bc			;67f9
	ret nc			;67fa
	adc a,l			;67fb
	and (hl)		;67fc
	rst 38h			;67fd
	rla			;67fe
	dec l			;67ff
	dec a			;6800
	cpl			;6801
	cpl			;6802
	dec bc			;6803
	ld (017ffh),a		;6804
	or h			;6807
	call c,0d003h		;6808
	rst 8			;680b
	ld e,b			;680c
	rst 38h			;680d
	rla			;680e
	ld (hl),03fh		;680f
	cpl			;6811
	cpl			;6812
	dec bc			;6813
	ret			;6814
	rst 38h			;6815
	rla			;6816
	ret c			;6817
	call pe,sub_7c30h	;6818
	ld a,a			;681b
	xor e			;681c
	sub 080h		;681d
	add a,b			;681f
	rst 38h			;6820
	inc hl			;6821
	inc b			;6822
	ld (hl),e		;6823
	call 0ff73h		;6824
	ld b,b			;6827
	ld b,b			;6828
	ld bc,l7a87h		;6829
	or a			;682c
	adc a,0ffh		;682d
	ld (bc),a		;682f
	ld (bc),a		;6830
	call nz,0feeeh		;6831
	defb 0ddh,06bh ;ld ixl,e	;6834
	ld bc,0ff01h		;6836
	rst 38h			;6839
	add a,b			;683a
	add a,b			;683b
	sub 0abh		;683c
	ld a,a			;683e
sub_683fh:
	ld a,h			;683f
	jr nc,l6872h		;6840
	ld b,b			;6842
	rst 38h			;6843
	ld (hl),e		;6844
	call 00473h		;6845
	inc hl			;6848
	inc hl			;6849
	ld (bc),a		;684a
	rst 38h			;684b
	adc a,0b7h		;684c
	ld a,d			;684e
	add a,a			;684f
	ld bc,001ffh		;6850
	ld bc,0dd6bh		;6853
	cp 0eeh			;6856
	call nz,000ffh		;6858
	inc bc			;685b
	rla			;685c
	add a,c			;685d
	ccf			;685e
	rlca			;685f
	rla			;6860
	add a,c			;6861
	call m,01704h		;6862
	add a,d			;6865
	ccf			;6866
	rst 38h			;6867
	ld b,017h		;6868
	add a,c			;686a
	call m,0e804h		;686b
	add a,c			;686e
	nop			;686f
	ex af,af'		;6870
	cpl			;6871
l6872h:
	ex af,af'		;6872
	call p,0a000h		;6873
	add a,b			;6876
	ret nc			;6877
	jr nc,l68aah		;6878
	ret p			;687a
	ret nc			;687b
	ret nc			;687c
	add a,b			;687d
	add a,b			;687e
	ret nc			;687f
	jr nc,l68b2h		;6880
	ret p			;6882
	ret nc			;6883
	ret nc			;6884
	add a,b			;6885
	add a,b			;6886
	ret nc			;6887
	ret nc			;6888
	ret p			;6889
	jr nc,l68bch		;688a
	ret nc			;688c
	add a,b			;688d
	add a,b			;688e
	ret nc			;688f
	ret nc			;6890
	ret p			;6891
	jr nc,l68c4h		;6892
	ret nc			;6894
	add a,b			;6895
	inc bc			;6896
	ret pe			;6897
	add a,h			;6898
	adc a,l			;6899
	di			;689a
	call p,004d8h		;689b
	ret pe			;689e
	adc a,d			;689f
	adc a,l			;68a0
	di			;68a1
	call p,0e8d8h		;68a2
	ret pe			;68a5
	ret c			;68a6
	call p,0d8f3h		;68a7
l68aah:
	inc b			;68aa
	adc a,(hl)		;68ab
	add a,h			;68ac
	ret c			;68ad
	call p,0d8f3h		;68ae
	inc bc			;68b1
l68b2h:
	adc a,(hl)		;68b2
	ld (bc),a		;68b3
	defb 0fdh,0ffh,0d8h ;illegal sequence	;68b4
	ld sp,iy		;68b7
	ret p			;68b9
	ret nc			;68ba
	add a,b			;68bb
l68bch:
	rst 38h			;68bc
	ret pe			;68bd
	ret pe			;68be
	defb 0fdh,09fh,0fdh ;illegal sequence	;68bf
	ret pe			;68c2
	ret pe			;68c3
l68c4h:
	rst 38h			;68c4
	ret pe			;68c5
	ret pe			;68c6
	defb 0fdh,09fh,0fdh ;illegal sequence	;68c7
	ret pe			;68ca
	ret pe			;68cb
	defb 0fdh,0fdh,0d8h ;illegal sequence	;68cc
	ld sp,iy		;68cf
	ret p			;68d1
	ret nc			;68d2
	add a,b			;68d3
	add a,b			;68d4
	ret nc			;68d5
	ret p			;68d6
	ld sp,hl		;68d7
	defb 0fdh,0d8h,0fdh ;illegal sequence	;68d8
	defb 0fdh,0e8h,0e8h ;illegal sequence	;68db
	defb 0fdh,09fh,0fdh ;illegal sequence	;68de
	ret pe			;68e1
	ret pe			;68e2
	rst 38h			;68e3
	ret pe			;68e4
	ret pe			;68e5
	defb 0fdh,09fh,0fdh ;illegal sequence	;68e6
	ret pe			;68e9
	ret pe			;68ea
	rst 38h			;68eb
	add a,b			;68ec
	ret nc			;68ed
	ret p			;68ee
	ld sp,hl		;68ef
	defb 0fdh,0d8h,0fdh ;illegal sequence	;68f0
	defb 0fdh,0d0h,080h ;illegal sequence	;68f3
	ret pe			;68f6
	or 0f6h			;68f7
	defb 0edh ;next byte illegal after ed	;68f9
	rst 38h			;68fa
	adc a,l			;68fb
	ret nc			;68fc
	add a,b			;68fd
	ret c			;68fe
	or 0f6h			;68ff
	ret c			;6901
	rst 38h			;6902
	ret c			;6903
	ret nc			;6904
	add a,b			;6905
	ret pe			;6906
	or 0f6h			;6907
	defb 0edh ;next byte illegal after ed	;6909
	rst 38h			;690a
	adc a,l			;690b
	ret nc			;690c
	add a,b			;690d
	ret c			;690e
	or 0f6h			;690f
	ret c			;6911
	rst 38h			;6912
	ret c			;6913
	ret c			;6914
	rst 38h			;6915
	sbc a,0f6h		;6916
	or 0e8h			;6918
	add a,b			;691a
	ret nc			;691b
	ret c			;691c
	rst 38h			;691d
	ret c			;691e
	or 0f6h			;691f
	ret c			;6921
	add a,b			;6922
	ret nc			;6923
	ret c			;6924
	rst 38h			;6925
	sbc a,0f6h		;6926
	or 0e8h			;6928
	add a,b			;692a
	ret nc			;692b
l692ch:
	ret c			;692c
	rst 38h			;692d
	ret c			;692e
	or 0f6h			;692f
	ret c			;6931
	add a,b			;6932
	ret nc			;6933
	add a,b			;6934
	sub c			;6935
	ret nc			;6936
	ret p			;6937
	di			;6938
	defb 0fdh,0d8h,0fdh ;illegal sequence	;6939
	defb 0fdh,0e0h,0f8h ;illegal sequence	;693c
	ld sp,iy		;693f
	defb 0fdh,0e8h,0e8h ;illegal sequence	;6941
	rst 38h			;6944
	add a,b			;6945
	add a,b			;6946
	inc bc			;6947
	defb 0fdh,002h,0e8h ;illegal sequence	;6948
	add a,a			;694b
	rst 38h			;694c
	add a,b			;694d
	ret nc			;694e
	ret p			;694f
	ld sp,hl		;6950
	defb 0fdh,0d8h,004h ;illegal sequence	;6951
	defb 0fdh,091h,0d8h ;illegal sequence	;6954
	defb 0fdh,0f3h,0f0h ;illegal sequence	;6957
	ret nc			;695a
	add a,b			;695b
	rst 38h			;695c
	ret pe			;695d
	ret pe			;695e
	ld sp,iy		;695f
	defb 0fdh,0f8h,0e0h ;illegal sequence	;6961
	rst 38h			;6964
	ret pe			;6965
	ret pe			;6966
	inc bc			;6967
	defb 0fdh,002h,080h ;illegal sequence	;6968
	ld (bc),a		;696b
	defb 0fdh,099h,0d8h ;illegal sequence	;696c
	ld sp,iy		;696f
	ret p			;6971
	ret nc			;6972
	add a,b			;6973
	cp 0feh			;6974
	ret pe			;6976
	ret pe			;6977
	adc a,l			;6978
	ret p			;6979
	ret pe			;697a
	rst 38h			;697b
	rst 38h			;697c
	adc a,(hl)		;697d
	ret c			;697e
	ret c			;697f
	defb 0fdh,0f0h,0d8h ;illegal sequence	;6980
	rst 38h			;6983
	rst 38h			;6984
	ret pe			;6985
	ret p			;6986
	inc bc			;6987
	ret pe			;6988
	adc a,d			;6989
	adc a,l			;698a
	rst 38h			;698b
	rst 38h			;698c
	ret c			;698d
	ret p			;698e
	ret pe			;698f
	adc a,l			;6990
	adc a,l			;6991
	rst 18h			;6992
	rst 18h			;6993
	djnz l692ch		;6994
	nop			;6996
	ex af,af'		;6997
	ld h,b			;6998
	ld (bc),a		;6999
	and (hl)		;699a
	ld de,00560h		;699b
	and (hl)		;699e
	inc b			;699f
	ld h,b			;69a0
	ld (bc),a		;69a1
	and (hl)		;69a2
	ld (bc),a		;69a3
	jp pe,l6003h		;69a4
	inc bc			;69a7
	and (hl)		;69a8
	add a,c			;69a9
	ld h,b			;69aa
	inc bc			;69ab
	and (hl)		;69ac
	inc b			;69ad
	ld h,b			;69ae
	dec d			;69af
	and (hl)		;69b0
	dec b			;69b1
	ld h,b			;69b2
	inc b			;69b3
	and (hl)		;69b4
	inc b			;69b5
	ld h,b			;69b6
	adc a,e			;69b7
	and (hl)		;69b8
	and 0aeh		;69b9
	xor (hl)		;69bb
	and (hl)		;69bc
l69bdh:
	and (hl)		;69bd
sub_69beh:
	ld h,b			;69be
	ld h,b			;69bf
	and 0a6h		;69c0
	and (hl)		;69c2
	dec b			;69c3
	jp pe,0e683h		;69c4
	and (hl)		;69c7
	and (hl)		;69c8
	dec b			;69c9
	jp pe,0a602h		;69ca
	inc b			;69cd
	jp pe,0a602h		;69ce
	jr l69bdh		;69d1
	ex af,af'		;69d3
	and (hl)		;69d4
	nop			;69d5
	ex af,af'		;69d6
	ld l,a			;69d7
	ld (bc),a		;69d8
	and (hl)		;69d9
	ld de,0056fh		;69da
	and (hl)		;69dd
	inc b			;69de
	ld l,a			;69df
	ld (bc),a		;69e0
	and (hl)		;69e1
	ld (bc),a		;69e2
	jp pe,06f03h		;69e3
	inc bc			;69e6
	and (hl)		;69e7
	add a,c			;69e8
	ld l,a			;69e9
	inc bc			;69ea
	and (hl)		;69eb
	inc b			;69ec
	ld l,a			;69ed
	dec d			;69ee
	and (hl)		;69ef
	dec b			;69f0
	ld l,a			;69f1
	inc b			;69f2
	and (hl)		;69f3
	inc b			;69f4
	ld l,a			;69f5
	adc a,e			;69f6
	and (hl)		;69f7
	and 0aeh		;69f8
	xor (hl)		;69fa
	and (hl)		;69fb
l69fch:
	and (hl)		;69fc
	ld l,a			;69fd
	ld l,a			;69fe
	and 0a6h		;69ff
	and (hl)		;6a01
	dec b			;6a02
	jp pe,0e683h		;6a03
	and (hl)		;6a06
	and (hl)		;6a07
	dec b			;6a08
	jp pe,0a602h		;6a09
	inc b			;6a0c
	jp pe,0a602h		;6a0d
	jr l69fch		;6a10
	ex af,af'		;6a12
	and (hl)		;6a13
	nop			;6a14
	add a,c			;6a15
	ld bc,00305h		;6a16
	ld (bc),a		;6a19
	ld bc,04084h		;6a1a
	add a,b			;6a1d
	cp 0f8h			;6a1e
	inc b			;6a20
	nop			;6a21
	ld (bc),a		;6a22
	add a,b			;6a23
	inc b			;6a24
	ret nz			;6a25
	ei			;6a26
	add a,b			;6a27
	nop			;6a28
	nop			;6a29
	inc a			;6a2a
	ld a,a			;6a2b
	ld c,019h		;6a2c
	djnz $+35		;6a2e
	inc hl			;6a30
	nop			;6a31
	nop			;6a32
	inc a			;6a33
	rst 38h			;6a34
l6a35h:
	jr c,l6a35h		;6a35
	jr l6ab7h		;6a37
	nop			;6a39
l6a3ah:
	jr c,l6a3ah		;6a3a
	jr c,l6a4ah		;6a3c
	inc b			;6a3e
	cp 040h			;6a3f
	inc bc			;6a41
	inc b			;6a42
	ld a,a			;6a43
	ccf			;6a44
	ld a,a			;6a45
	ld a,a			;6a46
	inc bc			;6a47
	daa			;6a48
	ld c,a			;6a49
l6a4ah:
	ld c,a			;6a4a
	cpl			;6a4b
	rrca			;6a4c
	daa			;6a4d
	daa			;6a4e
	inc hl			;6a4f
	ld sp,0f2e4h		;6a50
	ld (hl),d		;6a53
	ld (hl),d		;6a54
	ld h,h			;6a55
	ret po			;6a56
	call m,018feh		;6a57
	rrca			;6a5a
	inc bc			;6a5b
	ld a,a			;6a5c
	ld a,a			;6a5d
	ccf			;6a5e
	rlca			;6a5f
	nop			;6a60
	ld a,a			;6a61
	rst 30h			;6a62
	jp 0f301h		;6a63
	ex (sp),hl		;6a66
	ld bc,03c00h		;6a67
	add a,c			;6a6a
	add a,c			;6a6b
	rst 0			;6a6c
	cp 038h			;6a6d
	cp 07ch			;6a6f
	ld bc,l7f1eh		;6a71
	inc e			;6a74
	inc sp			;6a75
	daa			;6a76
l6a77h:
	ld l,a			;6a77
	ld c,a			;6a78
	add a,e			;6a79
	jr c,l6afah		;6a7a
	inc a			;6a7c
	rrca			;6a7d
	jp 0f9f1h		;6a7e
	cp 0feh			;6a81
	inc b			;6a83
	inc c			;6a84
	jr l6a77h		;6a85
	cp 0f8h			;6a87
	cp c			;6a89
	ld a,(hl)		;6a8a
	ld a,a			;6a8b
	rst 38h			;6a8c
	rst 38h			;6a8d
	cp 07eh			;6a8e
	sbc a,l			;6a90
	ld c,a			;6a91
	cpl			;6a92
	daa			;6a93
	inc hl			;6a94
	ld sp,0001ch		;6a95
	nop			;6a98
	or 0ech			;6a99
	exx			;6a9b
	rst 38h			;6a9c
	cp 078h			;6a9d
	nop			;6a9f
	nop			;6aa0
	ret z			;6aa1
	inc bc			;6aa2
	call po,0ec84h		;6aa3
	call z,0f098h		;6aa6
	nop			;6aa9
	sub b			;6aaa
	nop			;6aab
	ret nz			;6aac
	ld h,b			;6aad
	ld (hl),b		;6aae
	jr c,l6abdh		;6aaf
	ld d,000h		;6ab1
	inc h			;6ab3
	ld d,e			;6ab4
	jr c,$-23		;6ab5
l6ab7h:
	rrca			;6ab7
	dec a			;6ab8
	ld b,070h		;6ab9
	ex af,af'		;6abb
	nop			;6abc
l6abdh:
	add a,(hl)		;6abd
	ld (hl),b		;6abe
	inc e			;6abf
	rst 0			;6ac0
	rst 8			;6ac1
	rst 30h			;6ac2
	call p,00006h		;6ac3
	adc a,h			;6ac6
	jr nc,l6ae9h		;6ac7
	djnz l6adbh		;6ac9
	ex af,af'		;6acb
	ld c,005h		;6acc
	rlca			;6ace
	inc bc			;6acf
	dec b			;6ad0
	nop			;6ad1
	call m,0000bh		;6ad2
	adc a,e			;6ad5
	ret nz			;6ad6
	ld (hl),b		;6ad7
	sbc a,h			;6ad8
	rst 20h			;6ad9
	ld sp,hl		;6ada
l6adbh:
	ld (bc),a		;6adb
	nop			;6adc
	rlca			;6add
	ld c,00ch		;6ade
	jr l6aech		;6ae0
	nop			;6ae2
	add a,d			;6ae3
	ld bc,00e41h		;6ae4
	nop			;6ae7
	sub b			;6ae8
l6ae9h:
	ret nz			;6ae9
	ld h,b			;6aea
	ld (hl),b		;6aeb
l6aech:
	jr c,l6afah		;6aec
	ld d,018h		;6aee
	nop			;6af0
	inc h			;6af1
	ld b,d			;6af2
	ld sp,00718h		;6af3
	rra			;6af6
	inc a			;6af7
	ld b,008h		;6af8
l6afah:
	nop			;6afa
	add a,(hl)		;6afb
	ld d,b			;6afc
	inc (hl)		;6afd
	ld e,0c7h		;6afe
	rst 8			;6b00
	ret m			;6b01
	dec b			;6b02
	nop			;6b03
	adc a,l			;6b04
	jr nc,l6b27h		;6b05
	djnz l6b19h		;6b07
	ex af,af'		;6b09
	ld c,005h		;6b0a
	inc b			;6b0c
	inc bc			;6b0d
	inc bc			;6b0e
	rlca			;6b0f
	ld bc,00afch		;6b10
	nop			;6b13
	adc a,l			;6b14
	ret nz			;6b15
	add a,b			;6b16
	ld (hl),h		;6b17
	cp c			;6b18
l6b19h:
	call c,001e7h		;6b19
	ld (bc),a		;6b1c
	nop			;6b1d
	rlca			;6b1e
	ld c,00ch		;6b1f
	jr l6b2ch		;6b21
	nop			;6b23
	add a,e			;6b24
	ld b,000h		;6b25
l6b27h:
	ld h,b			;6b27
	ld c,000h		;6b28
	adc a,a			;6b2a
	ret nz			;6b2b
l6b2ch:
	ld h,b			;6b2c
	ld (hl),b		;6b2d
	jr c,l6b3ch		;6b2e
	ld d,018h		;6b30
	inc a			;6b32
	ld b,h			;6b33
	ld b,d			;6b34
	ld hl,00f10h		;6b35
	daa			;6b38
	ld (hl),b		;6b39
	ex af,af'		;6b3a
	nop			;6b3b
l6b3ch:
	add a,(hl)		;6b3c
	ld b,b			;6b3d
	ld (hl),h		;6b3e
	ld a,01fh		;6b3f
	rst 0			;6b41
	rst 8			;6b42
	ld b,000h		;6b43
	adc a,h			;6b45
	jr nc,l6b68h		;6b46
	djnz $+18		;6b48
	ex af,af'		;6b4a
	ld c,005h		;6b4b
	inc b			;6b4d
	nop			;6b4e
	rlca			;6b4f
	rlca			;6b50
	ei			;6b51
	dec bc			;6b52
	nop			;6b53
	adc a,e			;6b54
	ret nz			;6b55
	halt			;6b56
	ld (hl),c		;6b57
	cp b			;6b58
	call c,00201h		;6b59
	inc bc			;6b5c
	ld c,00ch		;6b5d
	jr l6b6bh		;6b5f
	nop			;6b61
	add a,d			;6b62
	rst 20h			;6b63
	ld b,010h		;6b64
	nop			;6b66
	adc a,l			;6b67
l6b68h:
	ld a,(bc)		;6b68
	rla			;6b69
	cpl			;6b6a
l6b6bh:
	ld l,a			;6b6b
	rra			;6b6c
	ex af,af'		;6b6d
	rla			;6b6e
	ex af,af'		;6b6f
	rra			;6b70
	ld l,a			;6b71
	cpl			;6b72
	rla			;6b73
	ld a,(bc)		;6b74
	inc bc			;6b75
	nop			;6b76
	adc a,l			;6b77
	add a,b			;6b78
	ld h,b			;6b79
	cp b			;6b7a
	cp (hl)			;6b7b
	ret nz			;6b7c
	sub b			;6b7d
	inc a			;6b7e
	sub b			;6b7f
	ret nz			;6b80
	cp (hl)			;6b81
	cp b			;6b82
	ld h,b			;6b83
	add a,b			;6b84
	dec b			;6b85
	nop			;6b86
	adc a,c			;6b87
	ld a,(bc)		;6b88
	rla			;6b89
	cpl			;6b8a
	ld l,a			;6b8b
	jr l6ba5h		;6b8c
	ld l,b			;6b8e
	rla			;6b8f
	ld a,(bc)		;6b90
	rlca			;6b91
	nop			;6b92
	adc a,c			;6b93
	add a,b			;6b94
	ld h,b			;6b95
	cp b			;6b96
	cp (hl)			;6b97
	ret nz			;6b98
	inc a			;6b99
	cp 070h			;6b9a
	ret nz			;6b9c
	ex af,af'		;6b9d
	nop			;6b9e
	add a,a			;6b9f
	rlca			;6ba0
	rla			;6ba1
	cpl			;6ba2
	ld l,a			;6ba3
	cpl			;6ba4
l6ba5h:
	rla			;6ba5
	rlca			;6ba6
	ld a,(bc)		;6ba7
	nop			;6ba8
	add a,l			;6ba9
	ret nz			;6baa
	call m,0fcfeh		;6bab
	ret nz			;6bae
	add hl,bc		;6baf
	nop			;6bb0
	adc a,c			;6bb1
	ld a,(bc)		;6bb2
	rla			;6bb3
	ld l,b			;6bb4
	rla			;6bb5
	jr l6c27h		;6bb6
	cpl			;6bb8
	rla			;6bb9
	ld a,(bc)		;6bba
	rlca			;6bbb
	nop			;6bbc
	adc a,c			;6bbd
	ret nz			;6bbe
	ld (hl),b		;6bbf
	cp 03ch			;6bc0
	ret nz			;6bc2
	cp (hl)			;6bc3
	cp b			;6bc4
	ld h,b			;6bc5
	add a,b			;6bc6
	inc bc			;6bc7
	nop			;6bc8
	nop			;6bc9
	inc b			;6bca
	nop			;6bcb
	adc a,c			;6bcc
	jr $+16			;6bcd
	ld bc,00f07h		;6bcf
	rlca			;6bd2
	ld bc,0180eh		;6bd3
	add hl,bc		;6bd6
	nop			;6bd7
	add a,l			;6bd8
	ret nz			;6bd9
	ret p			;6bda
	call m,0c0f0h		;6bdb
	dec b			;6bde
	nop			;6bdf
	nop			;6be0
	ret nz			;6be1
	nop			;6be2
	ld bc,00703h		;6be3
	rra			;6be6
	ld d,b			;6be7
	ei			;6be8
	pop de			;6be9
	rst 38h			;6bea
	ld c,e			;6beb
	ccf			;6bec
	rlca			;6bed
	xor a			;6bee
	xor h			;6bef
	inc bc			;6bf0
	nop			;6bf1
	nop			;6bf2
	add a,b			;6bf3
	ret z			;6bf4
	add a,h			;6bf5
	call m,0ff16h		;6bf6
	inc l			;6bf9
	call m,0f048h		;6bfa
	call z,012efh		;6bfd
	call m,00010h		;6c00
	inc bc			;6c03
	rrca			;6c04
	rra			;6c05
	djnz l6c37h		;6c06
	inc b			;6c08
	rst 38h			;6c09
	rst 38h			;6c0a
	ld (hl),h		;6c0b
	ccf			;6c0c
	rlca			;6c0d
	ld d,d			;6c0e
	rst 38h			;6c0f
	rrca			;6c10
	inc bc			;6c11
	nop			;6c12
	ret po			;6c13
	ret p			;6c14
	ret m			;6c15
	call m,000e8h		;6c16
	call m,0b8fch		;6c19
l6c1ch:
	call m,012f2h		;6c1c
	rst 38h			;6c1f
	cp 0fch			;6c20
	nop			;6c22
	or b			;6c23
	nop			;6c24
	inc bc			;6c25
	rrca			;6c26
l6c27h:
	rra			;6c27
	rra			;6c28
	cpl			;6c29
	inc b			;6c2a
	rst 38h			;6c2b
	ld a,a			;6c2c
	ld de,00f1fh		;6c2d
	rst 38h			;6c30
	rst 38h			;6c31
	rra			;6c32
l6c33h:
	rrca			;6c33
	nop			;6c34
	ret po			;6c35
	ret m			;6c36
l6c37h:
	call m,016fch		;6c37
	dec bc			;6c3a
	call m,sub_70fch	;6c3b
	rst 38h			;6c3e
	ld a,(bc)		;6c3f
	rst 38h			;6c40
	rst 38h			;6c41
	cp 0fch			;6c42
	nop			;6c44
	nop			;6c45
	inc bc			;6c46
	ld b,011h		;6c47
	ld a,a			;6c49
	rst 38h			;6c4a
	xor d			;6c4b
	ld (hl),l		;6c4c
	ld c,01fh		;6c4d
	rrca			;6c4f
	ld d,d			;6c50
	xor (hl)		;6c51
	ld de,0040fh		;6c52
	nop			;6c55
	adc a,h			;6c56
	call m,0f4e8h		;6c57
	or h			;6c5a
	ld a,h			;6c5b
	add a,b			;6c5c
	jp m,01affh		;6c5d
	xor d			;6c60
	cp 014h			;6c61
	nop			;6c63
	call 03707h		;6c64
	rst 38h			;6c67
	call po,03342h		;6c68
	ld a,a			;6c6b
	ld a,l			;6c6c
	ld a,(hl)		;6c6d
	ld a,a			;6c6e
	dec sp			;6c6f
	ld a,a			;6c70
	adc a,a			;6c71
l6c72h:
	call nz,00738h		;6c72
	ret po			;6c75
	call pe,027ffh		;6c76
	ld b,d			;6c79
	call nz,0befeh		;6c7a
	ld a,(hl)		;6c7d
	cp 0dch			;6c7e
	cp 0f0h			;6c80
	inc hl			;6c82
	inc e			;6c83
	ret po			;6c84
	nop			;6c85
	ex af,af'		;6c86
	inc b			;6c87
	sbc a,a			;6c88
	ld a,a			;6c89
	ccf			;6c8a
	ld a,(hl)		;6c8b
	ld h,06fh		;6c8c
	ld a,a			;6c8e
	rlca			;6c8f
	ld (bc),a		;6c90
	ld (hl),h		;6c91
	rst 38h			;6c92
	ccf			;6c93
	rlca			;6c94
	nop			;6c95
	djnz l6cb8h		;6c96
	ld sp,hl		;6c98
	cp 0fch			;6c99
	ld a,(hl)		;6c9b
	ld h,h			;6c9c
	xor 0feh		;6c9d
	ret po			;6c9f
	ld b,b			;6ca0
	cpl			;6ca1
	rst 38h			;6ca2
	call m,000e0h		;6ca3
	nop			;6ca6
	rlca			;6ca7
	djnz l6c72h		;6ca8
	adc a,d			;6caa
	ld a,a			;6cab
	ld a,a			;6cac
	cp 07fh			;6cad
	rst 10h			;6caf
	ld a,(00507h)		;6cb0
	nop			;6cb3
	adc a,e			;6cb4
	ret po			;6cb5
	ex af,af'		;6cb6
	inc de			;6cb7
l6cb8h:
	ld d,c			;6cb8
	cp 0feh			;6cb9
	ld a,a			;6cbb
	cp 0ebh			;6cbc
	ld e,h			;6cbe
	ret po			;6cbf
	ld b,000h		;6cc0
	adc a,d			;6cc2
	daa			;6cc3
l6cc4h:
	ccf			;6cc4
	rst 38h			;6cc5
	ld a,a			;6cc6
	ld a,(hl)		;6cc7
	rst 30h			;6cc8
	rst 38h			;6cc9
	rst 38h			;6cca
	ccf			;6ccb
	rlca			;6ccc
	ld b,000h		;6ccd
	adc a,d			;6ccf
	call po,0fffch		;6cd0
	cp 07eh			;6cd3
	rst 28h			;6cd5
	rst 38h			;6cd6
	rst 38h			;6cd7
	call m,006e0h		;6cd8
	nop			;6cdb
	adc a,e			;6cdc
	rlca			;6cdd
	jr l6d4bh		;6cde
	rst 38h			;6ce0
	ld a,l			;6ce1
	ld a,(hl)		;6ce2
	rst 38h			;6ce3
	dec sp			;6ce4
	ret z			;6ce5
	dec (hl)		;6ce6
	rlca			;6ce7
	dec b			;6ce8
	nop			;6ce9
	adc a,e			;6cea
	ret po			;6ceb
	jr l6cc4h		;6cec
	rst 38h			;6cee
	cp (hl)			;6cef
	ld a,(hl)		;6cf0
	rst 38h			;6cf1
	call c,0ac13h		;6cf2
	ret po			;6cf5
	ld b,000h		;6cf6
	adc a,d			;6cf8
	daa			;6cf9
	cp a			;6cfa
	cp 026h			;6cfb
	ld a,a			;6cfd
	add a,h			;6cfe
	call z,037ffh		;6cff
	rlca			;6d02
	ld b,000h		;6d03
	adc a,h			;6d05
	call po,sub_7ffdh	;6d06
	ld h,h			;6d09
	cp 021h			;6d0a
	inc sp			;6d0c
	rst 38h			;6d0d
	call pe,000e0h		;6d0e
	nop			;6d11
	nop			;6d12
	add a,(hl)		;6d13
	nop			;6d14
	rlca			;6d15
	ccf			;6d16
	ld a,a			;6d17
	rst 38h			;6d18
	jp m,0ff06h		;6d19
	adc a,d			;6d1c
	ld a,a			;6d1d
	ld a,005h		;6d1e
	rlca			;6d20
	jr nz,$-46		;6d21
	jp po,0a2fdh		;6d23
	rst 38h			;6d26
	inc b			;6d27
	cp 003h			;6d28
	and d			;6d2a
	sbc a,c			;6d2b
	rst 38h			;6d2c
	jr nc,$-30		;6d2d
	rlca			;6d2f
	jr l6d52h		;6d30
	ld a,a			;6d32
	ld b,b			;6d33
	push af			;6d34
	or b			;6d35
	jr nc,l6d68h		;6d36
	or b			;6d38
	rst 38h			;6d39
	ld c,d			;6d3a
	ld a,a			;6d3b
	ld hl,0071ah		;6d3c
	ret po			;6d3f
	jr nc,$+1		;6d40
	and d			;6d42
	rst 38h			;6d43
	rst 38h			;6d44
	inc bc			;6d45
	jp z,0fe81h		;6d46
	inc b			;6d49
	rst 38h			;6d4a
l6d4bh:
	add a,d			;6d4b
	ret p			;6d4c
	ret po			;6d4d
	nop			;6d4e
	xor c			;6d4f
	rlca			;6d50
	rra			;6d51
l6d52h:
	ld a,h			;6d52
	di			;6d53
	inc c			;6d54
	dec bc			;6d55
	nop			;6d56
	ld c,01eh		;6d57
	nop			;6d59
	rrca			;6d5a
	call m,0030fh		;6d5b
	nop			;6d5e
	nop			;6d5f
	ret nz			;6d60
	ld (hl),0cdh		;6d61
	ld a,(08ef4h)		;6d63
	ld (hl),b		;6d66
	ei			;6d67
l6d68h:
	inc bc			;6d68
	ld (hl),b		;6d69
sub_6d6ah:
	adc a,l			;6d6a
	call pe,0cb36h		;6d6b
	call p,00030h		;6d6e
	nop			;6d71
	inc bc			;6d72
	rrca			;6d73
	rst 38h			;6d74
	inc c			;6d75
l6d76h:
	rrca			;6d76
	ld e,010h		;6d77
	inc bc			;6d79
	rrca			;6d7a
	sub h			;6d7b
	di			;6d7c
	ld a,h			;6d7d
	rra			;6d7e
	rlca			;6d7f
	jr nc,l6d76h		;6d80
	ei			;6d82
	sub 02eh		;6d83
	add hl,bc		;6d85
	rlca			;6d86
	ld h,e			;6d87
	ret m			;6d88
	rlca			;6d89
	adc a,a			;6d8a
	ld (hl),0dah		;6d8b
	ld (iy-040h),000h	;6d8d
	ld (bc),a		;6d91
	nop			;6d92
	adc a,h			;6d93
	xor d			;6d94
	add hl,hl		;6d95
	rra			;6d96
	ld bc,0001dh		;6d97
	dec sp			;6d9a
	nop			;6d9b
	ld bc,0291fh		;6d9c
	xor d			;6d9f
	inc bc			;6da0
	nop			;6da1
	xor a			;6da2
	ld a,031h		;6da3
	ld de,0b4f8h		;6da5
	add a,b			;6da8
	nop			;6da9
	add a,b			;6daa
	dec b			;6dab
	or h			;6dac
	ret m			;6dad
	ld de,03e31h		;6dae
	nop			;6db1
	nop			;6db2
	jp 0ff7fh		;6db3
	rra			;6db6
	ld bc,03b00h		;6db7
	nop			;6dba
	dec e			;6dbb
	ld bc,0ff1fh		;6dbc
	ld a,a			;6dbf
	jp 03e00h		;6dc0
	pop hl			;6dc3
	sbc a,0ffh		;6dc4
	ret m			;6dc6
	call z,0b505h		;6dc7
	dec (hl)		;6dca
	add a,b			;6dcb
	call z,0fff8h		;6dcc
	sbc a,0e1h		;6dcf
	ld a,000h		;6dd1
	add a,a			;6dd3
	ld bc,01706h		;6dd4
	add hl,bc		;6dd7
	add hl,bc		;6dd8
	pop af			;6dd9
	rlca			;6dda
	inc bc			;6ddb
	inc bc			;6ddc
	sbc a,l			;6ddd
	ld bc,009ffh		;6dde
	jp (hl)			;6de1
	rla			;6de2
	ld bc,0fe00h		;6de3
	ld e,0ffh		;6de6
	ld hl,08cffh		;6de8
	cp 0feh			;6deb
	rst 38h			;6ded
	pop af			;6dee
	sbc a,a			;6def
	pop af			;6df0
	ld e,01eh		;6df1
	ret po			;6df3
	nop			;6df4
	ld bc,0ff09h		;6df5
	rst 38h			;6df8
	rst 30h			;6df9
	rlca			;6dfa
	inc bc			;6dfb
	inc bc			;6dfc
	sub (hl)		;6dfd
	rlca			;6dfe
	add hl,bc		;6dff
	rst 38h			;6e00
	rst 38h			;6e01
	rla			;6e02
	ld bc,014eah		;6e03
	cp 0f1h			;6e06
	rst 38h			;6e08
	rst 38h			;6e09
	call m,00606h		;6e0a
	adc a,a			;6e0d
	rst 38h			;6e0e
	ld a,a			;6e0f
	rra			;6e10
	cp 0f4h			;6e11
	jp pe,0b800h		;6e13
	inc bc			;6e16
	rlca			;6e17
	jp z,0ec5ch		;6e18
	out (0d1h),a		;6e1b
	cp 0bbh			;6e1d
	xor d			;6e1f
	cp (hl)			;6e20
	or d			;6e21
	ld (hl),b		;6e22
	ex af,af'		;6e23
	inc b			;6e24
	inc b			;6e25
	ret nz			;6e26
	ret po			;6e27
	ld d,e			;6e28
	add hl,sp		;6e29
	scf			;6e2a
	jp z,l7f8bh		;6e2b
	cp 026h			;6e2e
	ld a,06eh		;6e30
	dec c			;6e32
	djnz l6e55h		;6e33
	jr nz,l6e3bh		;6e35
	ex af,af'		;6e37
	dec b			;6e38
	add a,e			;6e39
	di			;6e3a
l6e3bh:
	ld l,a			;6e3b
	out (037h),a		;6e3c
	ld a,a			;6e3e
	ld (hl),l		;6e3f
	ld a,l			;6e40
	ld l,e			;6e41
	call pe,00206h		;6e42
	ld (bc),a		;6e45
	jr nz,l6e58h		;6e46
	and b			;6e48
	jp nz,0f7cfh		;6e49
	ld c,e			;6e4c
	call pe,0fd04h		;6e4d
	add a,h			;6e50
	ccf			;6e51
	ld (hl),b		;6e52
	ld h,b			;6e53
	ld h,b			;6e54
l6e55h:
	nop			;6e55
	sub d			;6e56
	inc b			;6e57
l6e58h:
	ld b,b			;6e58
	rst 38h			;6e59
	rst 38h			;6e5a
	ei			;6e5b
	ld h,a			;6e5c
	inc e			;6e5d
	rra			;6e5e
	dec bc			;6e5f
	dec c			;6e60
	dec c			;6e61
	ld l,e			;6e62
	sub b			;6e63
	rst 28h			;6e64
	sub b			;6e65
	ld l,a			;6e66
	nop			;6e67
	nop			;6e68
	inc bc			;6e69
	rst 38h			;6e6a
	and c			;6e6b
	ld bc,0ff00h		;6e6c
	ld d,l			;6e6f
	cp 054h			;6e70
	ret m			;6e72
	ld d,b			;6e73
	and b			;6e74
	ld b,b			;6e75
	add a,b			;6e76
	inc e			;6e77
	ld e,021h		;6e78
	ccf			;6e7a
	rst 20h			;6e7b
	ld a,h			;6e7c
	dec de			;6e7d
	rra			;6e7e
	rrca			;6e7f
	dec bc			;6e80
	dec bc			;6e81
	ld l,a			;6e82
	rst 38h			;6e83
	sub b			;6e84
	rst 38h			;6e85
	ld l,a			;6e86
	nop			;6e87
	dec bc			;6e88
	ld d,h			;6e89
	rst 38h			;6e8a
	ld bc,003feh		;6e8b
	rst 38h			;6e8e
	add a,a			;6e8f
	ld d,(hl)		;6e90
	call m,0f0f8h		;6e91
	ld h,b			;6e94
	ret nz			;6e95
	add a,b			;6e96
	nop			;6e97
	ret nz			;6e98
	nop			;6e99
	ld (bc),a		;6e9a
	rlca			;6e9b
	ld a,(hl)		;6e9c
	ld a,h			;6e9d
	cp 041h			;6e9e
	ld hl,(0011eh)		;6ea0
	rlca			;6ea3
	rst 38h			;6ea4
	jp z,0063dh		;6ea5
	nop			;6ea8
	cp b			;6ea9
	cp d			;6eaa
	rst 38h			;6eab
	call m,0cca7h		;6eac
	call m,sub_6d6ah	;6eaf
	rst 30h			;6eb2
	pop de			;6eb3
	sub l			;6eb4
	ld l,d			;6eb5
	ld b,01eh		;6eb6
	ld d,007h		;6eb8
	rra			;6eba
	inc a			;6ebb
	ld a,c			;6ebc
	add a,e			;6ebd
	rst 38h			;6ebe
	ld a,a			;6ebf
	ld a,01eh		;6ec0
	ld bc,00806h		;6ec2
	defb 0fdh,037h,00ah ;illegal sequence	;6ec5
	inc b			;6ec8
	cp b			;6ec9
	rst 38h			;6eca
	call m,0dfcfh		;6ecb
	call m,05efch		;6ece
	ld e,a			;6ed1
	rst 30h			;6ed2
	or a			;6ed3
	di			;6ed4
	and 00eh		;6ed5
	dec e			;6ed7
	xor 003h		;6ed8
	nop			;6eda
	adc a,b			;6edb
	ld (bc),a		;6edc
	rlca			;6edd
	ld a,(hl)		;6ede
	ld a,h			;6edf
	cp 041h			;6ee0
	ld hl,(0031eh)		;6ee2
	nop			;6ee5
	rst 38h			;6ee6
	inc bc			;6ee7
	dec b			;6ee8
	nop			;6ee9
	nop			;6eea
	cp b			;6eeb
	cp d			;6eec
	rst 38h			;6eed
	call m,0caa7h		;6eee
	or 03bh			;6ef1
	dec sp			;6ef3
	ld a,07ch		;6ef4
	di			;6ef6
	xor h			;6ef7
	call nc,00000h		;6ef8
	rlca			;6efb
	rra			;6efc
	inc a			;6efd
	ld a,c			;6efe
	add a,e			;6eff
	rst 38h			;6f00
	ld a,a			;6f01
	ld a,01eh		;6f02
	nop			;6f04
	nop			;6f05
	ld bc,01e07h		;6f06
	nop			;6f09
	nop			;6f0a
	cp b			;6f0b
	rst 38h			;6f0c
	call m,0dfcfh		;6f0d
	cp 0fah			;6f10
	dec a			;6f12
	ccf			;6f13
	ld (hl),l		;6f14
	rst 20h			;6f15
	rst 8			;6f16
	call m,00038h		;6f17
	nop			;6f1a
	ld (bc),a		;6f1b
	ld (hl),l		;6f1c
	dec (hl)		;6f1d
	ld a,h			;6f1e
sub_6f1fh:
	ld a,h			;6f1f
	ld a,(hl)		;6f20
	ld l,037h		;6f21
	rla			;6f23
	ld a,(bc)		;6f24
	inc d			;6f25
	inc h			;6f26
	ld a,b			;6f27
	xor b			;6f28
	nop			;6f29
	nop			;6f2a
	ld b,b			;6f2b
	xor (hl)		;6f2c
	xor h			;6f2d
	ld a,03eh		;6f2e
	ld a,(hl)		;6f30
	inc (hl)		;6f31
	call pe,058e8h		;6f32
	inc (hl)		;6f35
	ld hl,(0151eh)		;6f36
	nop			;6f39
	nop			;6f3a
	ld bc,03777h		;6f3b
	dec hl			;6f3e
	rra			;6f3f
	ld a,e			;6f40
	add hl,sp		;6f41
	inc l			;6f42
	rra			;6f43
	ld c,00ch		;6f44
	inc e			;6f46
	ld a,b			;6f47
	ld e,b			;6f48
	nop			;6f49
	nop			;6f4a
	add a,b			;6f4b
	xor 0ech		;6f4c
	call nc,0def8h		;6f4e
	call c,0f834h		;6f51
	ld a,b			;6f54
	inc l			;6f55
	ld (hl),01eh		;6f56
	ld a,(de)		;6f58
	nop			;6f59
	nop			;6f5a
	dec e			;6f5b
	ld e,l			;6f5c
	rst 38h			;6f5d
	ccf			;6f5e
	push hl			;6f5f
	ld d,e			;6f60
	ld l,a			;6f61
	call c,07cdch		;6f62
	ld a,083h		;6f65
	rst 8			;6f67
	dec (hl)		;6f68
	dec hl			;6f69
	inc bc			;6f6a
	nop			;6f6b
	adc a,b			;6f6c
	ld b,b			;6f6d
	ret po			;6f6e
	ld a,(hl)		;6f6f
	ld a,07fh		;6f70
	add a,d			;6f72
	ld d,h			;6f73
	ld a,b			;6f74
	inc bc			;6f75
	nop			;6f76
	jp po,0a0c0h		;6f77
	nop			;6f7a
	nop			;6f7b
	dec e			;6f7c
	rst 38h			;6f7d
	ccf			;6f7e
	di			;6f7f
	ei			;6f80
	ld a,a			;6f81
	ld e,a			;6f82
	cp h			;6f83
	call m,0e7aeh		;6f84
	di			;6f87
	ccf			;6f88
	inc e			;6f89
	nop			;6f8a
	nop			;6f8b
	ret po			;6f8c
	ret m			;6f8d
	inc a			;6f8e
	sbc a,(hl)		;6f8f
	pop bc			;6f90
	rst 38h			;6f91
	cp 07ch			;6f92
	ld a,b			;6f94
	nop			;6f95
l6f96h:
	nop			;6f96
	add a,b			;6f97
	ret po			;6f98
	ld a,b			;6f99
	dec e			;6f9a
	ld e,l			;6f9b
	rst 38h			;6f9c
	ccf			;6f9d
	push hl			;6f9e
	inc sp			;6f9f
	ccf			;6fa0
	ld d,(hl)		;6fa1
	or (hl)			;6fa2
	rst 28h			;6fa3
	adc a,e			;6fa4
	xor c			;6fa5
	ld d,(hl)		;6fa6
	ld h,b			;6fa7
	ld a,b			;6fa8
	ld l,b			;6fa9
	nop			;6faa
	ld b,b			;6fab
	ret po			;6fac
	ld a,(hl)		;6fad
	ld a,07fh		;6fae
	add a,d			;6fb0
	ld d,h			;6fb1
	ld a,b			;6fb2
	add a,b			;6fb3
	ret po			;6fb4
	rst 38h			;6fb5
	ld d,e			;6fb6
	cp h			;6fb7
	ld h,b			;6fb8
	nop			;6fb9
	dec e			;6fba
	rst 38h			;6fbb
	ccf			;6fbc
	di			;6fbd
	ei			;6fbe
	ccf			;6fbf
	ccf			;6fc0
	ld a,d			;6fc1
	jp m,0edefh		;6fc2
	rst 8			;6fc5
	ld h,a			;6fc6
	ld (hl),b		;6fc7
l6fc8h:
	cp b			;6fc8
	ld (hl),a		;6fc9
	ret po			;6fca
	ret m			;6fcb
	inc a			;6fcc
	sbc a,(hl)		;6fcd
	pop bc			;6fce
	rst 38h			;6fcf
	cp 07ch			;6fd0
	ld a,b			;6fd2
	add a,b			;6fd3
	ld h,b			;6fd4
	djnz l6f96h		;6fd5
	call pe,02050h		;6fd7
	nop			;6fda
	rlca			;6fdb
	nop			;6fdc
	ld (bc),a		;6fdd
	rst 38h			;6fde
	ld c,000h		;6fdf
	ld (bc),a		;6fe1
	rst 38h			;6fe2
	rlca			;6fe3
	nop			;6fe4
	nop			;6fe5
	rlca			;6fe6
	nop			;6fe7
	ld (bc),a		;6fe8
	rst 38h			;6fe9
	ld c,000h		;6fea
	ld (bc),a		;6fec
	rst 38h			;6fed
	ld c,000h		;6fee
	add a,a			;6ff0
	ld bc,00703h		;6ff1
	ld c,01ch		;6ff4
	jr c,l7028h		;6ff6
	inc b			;6ff8
	nop			;6ff9
	add a,a			;6ffa
	inc c			;6ffb
	inc e			;6ffc
	jr c,l706fh		;6ffd
	ret po			;6fff
	ret nz			;7000
	add a,b			;7001
	rlca			;7002
	nop			;7003
	djnz l7006h		;7004
l7006h:
	djnz l6fc8h		;7006
	ld (bc),a		;7008
	nop			;7009
	add a,a			;700a
	jr nc,$+58		;700b
	inc e			;700d
	ld c,007h		;700e
	inc bc			;7010
	ld bc,0000eh		;7011
	adc a,c			;7014
	add a,b			;7015
	ret nz			;7016
	ret po			;7017
	ld (hl),b		;7018
	jr c,l7037h		;7019
	inc c			;701b
	nop			;701c
	nop			;701d
	nop			;701e
	ld b,000h		;701f
	add a,h			;7021
	ld bc,00303h		;7022
	ld bc,0000ch		;7025
l7028h:
	add a,h			;7028
	add a,b			;7029
	ret nz			;702a
	ret nz			;702b
	add a,b			;702c
	ld b,000h		;702d
	nop			;702f
	add a,c			;7030
	nop			;7031
	inc bc			;7032
	ld bc,00687h		;7033
	rrca			;7036
l7037h:
	rrca			;7037
	ld (hl),a		;7038
	rrca			;7039
	rrca			;703a
	ld b,003h		;703b
	ld bc,00006h		;703d
	add a,a			;7040
	ret nz			;7041
	ret po			;7042
	ret po			;7043
	call c,0e0e0h		;7044
	ret nz			;7047
	dec b			;7048
	nop			;7049
	nop			;704a
	inc bc			;704b
	nop			;704c
	adc a,d			;704d
	ld bc,00906h		;704e
l7051h:
	dec bc			;7051
	rla			;7052
	rla			;7053
	dec bc			;7054
	add hl,bc		;7055
	ld b,001h		;7056
l7058h:
	ld b,000h		;7058
	adc a,d			;705a
	add a,b			;705b
	ld h,b			;705c
	sub b			;705d
	ret nc			;705e
	ret pe			;705f
	ret pe			;7060
	ret nc			;7061
	sub b			;7062
	ld h,b			;7063
	add a,b			;7064
	rlca			;7065
	nop			;7066
	adc a,b			;7067
	ld bc,00707h		;7068
	rrca			;706b
	rrca			;706c
	rlca			;706d
	rlca			;706e
l706fh:
	ld bc,00008h		;706f
	adc a,b			;7072
	add a,b			;7073
	ret po			;7074
	ret po			;7075
	ret p			;7076
	ret p			;7077
	ret po			;7078
	ret po			;7079
	add a,b			;707a
	ld b,000h		;707b
	adc a,h			;707d
	inc bc			;707e
	inc c			;707f
	inc de			;7080
	rla			;7081
	ld l,02ch		;7082
	inc l			;7084
	ld l,017h		;7085
	inc de			;7087
	inc c			;7088
	inc bc			;7089
	inc b			;708a
	nop			;708b
	adc a,h			;708c
	ret nz			;708d
	jr nc,l7058h		;708e
	ret pe			;7090
	ld (hl),h		;7091
	inc (hl)		;7092
	inc (hl)		;7093
l7094h:
	ld (hl),h		;7094
	ret pe			;7095
	ret z			;7096
	jr nc,$-62		;7097
	dec b			;7099
	nop			;709a
	adc a,d			;709b
	inc bc			;709c
	rrca			;709d
	rrca			;709e
	ld e,01ch		;709f
	inc e			;70a1
	ld e,00fh		;70a2
	rrca			;70a4
	inc bc			;70a5
	ld b,000h		;70a6
	adc a,d			;70a8
	ret nz			;70a9
	ret p			;70aa
	ret p			;70ab
	ld a,b			;70ac
	jr c,l70e7h		;70ad
	ld a,b			;70af
	ret p			;70b0
	ret p			;70b1
	ret nz			;70b2
	inc b			;70b3
	nop			;70b4
	sbc a,(hl)		;70b5
	inc bc			;70b6
	inc c			;70b7
sub_70b8h:
	ld de,02826h		;70b8
	ld c,b			;70bb
	ld d,b			;70bc
	ld d,b			;70bd
	ld c,b			;70be
	jr z,l70e7h		;70bf
	ld de,0030ch		;70c1
	nop			;70c4
	nop			;70c5
	ret nz			;70c6
	jr nc,l7051h		;70c7
	ld h,h			;70c9
	inc d			;70ca
	ld (de),a		;70cb
	ld a,(bc)		;70cc
	ld a,(bc)		;70cd
	ld (de),a		;70ce
	inc d			;70cf
	ld h,h			;70d0
	adc a,b			;70d1
l70d2h:
	jr nc,l7094h		;70d2
	inc bc			;70d4
	nop			;70d5
	adc a,h			;70d6
	inc bc			;70d7
l70d8h:
	rrca			;70d8
	ld e,018h		;70d9
	jr c,l710dh		;70db
	jr nc,$+58		;70dd
	jr l70ffh		;70df
	rrca			;70e1
	inc bc			;70e2
	inc b			;70e3
	nop			;70e4
	sub b			;70e5
	ret nz			;70e6
l70e7h:
	ret p			;70e7
	ld a,b			;70e8
	jr l7107h		;70e9
	inc c			;70eb
	inc c			;70ec
	inc e			;70ed
	jr l7168h		;70ee
	ret p			;70f0
	ret nz			;70f1
	nop			;70f2
	nop			;70f3
	inc bc			;70f4
	inc b			;70f5
	inc bc			;70f6
	nop			;70f7
	add a,c			;70f8
	ld b,b			;70f9
	inc b			;70fa
	add a,b			;70fb
sub_70fch:
	add a,c			;70fc
	ld b,b			;70fd
	inc bc			;70fe
l70ffh:
	nop			;70ff
	add a,h			;7100
	inc b			;7101
	inc bc			;7102
	ret nz			;7103
	jr nz,l7109h		;7104
	nop			;7106
l7107h:
	add a,c			;7107
	ld (bc),a		;7108
l7109h:
	inc b			;7109
	ld bc,00281h		;710a
l710dh:
	inc bc			;710d
	nop			;710e
	adc a,b			;710f
	jr nz,l70d2h		;7110
	nop			;7112
	inc bc			;7113
	inc c			;7114
	nop			;7115
	jr nz,l7138h		;7116
	inc b			;7118
	ld b,b			;7119
	ld (bc),a		;711a
	jr nz,$-116		;711b
	nop			;711d
	inc c			;711e
	inc bc			;711f
	nop			;7120
	nop			;7121
	ret nz			;7122
	jr nc,l7125h		;7123
l7125h:
	inc b			;7125
	inc b			;7126
	inc b			;7127
	ld (bc),a		;7128
	ld (bc),a		;7129
	inc b			;712a
	add a,h			;712b
	nop			;712c
	jr nc,$-62		;712d
	nop			;712f
	nop			;7130
	ld c,027h		;7131
	add a,d			;7133
	rlca			;7134
	daa			;7135
	ld c,0a4h		;7136
l7138h:
	add a,d			;7138
	and b			;7139
	and h			;713a
	djnz l715ch		;713b
	djnz $-6		;713d
	ld (bc),a		;713f
	rlca			;7140
	adc a,b			;7141
	ld (00010h),hl		;7142
	djnz l7147h		;7145
l7147h:
	djnz l7149h		;7147
l7149h:
	ex af,af'		;7149
	ld b,000h		;714a
	ld (bc),a		;714c
	and b			;714d
	adc a,c			;714e
	add a,h			;714f
	add a,b			;7150
	jr z,$-126		;7151
	add a,b			;7153
	ex af,af'		;7154
	nop			;7155
	jr z,l70d8h		;7156
	dec b			;7158
	nop			;7159
	adc a,c			;715a
	rla			;715b
l715ch:
	rra			;715c
	rla			;715d
	rlca			;715e
	ld a,(bc)		;715f
	rlca			;7160
	ld a,(bc)		;7161
	nop			;7162
	ld (bc),a		;7163
	rlca			;7164
	nop			;7165
	adc a,c			;7166
	ret m			;7167
l7168h:
	ret pe			;7168
	ret c			;7169
	ret p			;716a
	and b			;716b
	ret nc			;716c
	sub b			;716d
	and b			;716e
	add a,b			;716f
	rlca			;7170
	nop			;7171
	nop			;7172
	ld b,000h		;7173
	add a,h			;7175
	ld b,036h		;7176
	ld (hl),006h		;7178
	dec bc			;717a
	nop			;717b
	add a,(hl)		;717c
	inc c			;717d
	inc e			;717e
	call m,01cfch		;717f
	inc c			;7182
	dec b			;7183
	nop			;7184
	nop			;7185
	and b			;7186
	nop			;7187
	ld b,016h		;7188
	add hl,hl		;718a
	ld a,a			;718b
	rlca			;718c
	rlca			;718d
	djnz l71afh		;718e
	rlca			;7190
	rlca			;7191
	ld a,a			;7192
	add hl,hl		;7193
	ld d,006h		;7194
	nop			;7196
	ccf			;7197
	nop			;7198
	nop			;7199
	cp 0fch			;719a
	call m,09afah		;719c
	jp m,0fcfah		;719f
	call m,000feh		;71a2
	nop			;71a5
	ccf			;71a6
	inc bc			;71a7
	nop			;71a8
	adc a,d			;71a9
	ld a,a			;71aa
	add hl,hl		;71ab
	rlca			;71ac
	nop			;71ad
	rrca			;71ae
l71afh:
	nop			;71af
	nop			;71b0
	rlca			;71b1
	add hl,hl		;71b2
	ld a,a			;71b3
	inc b			;71b4
	nop			;71b5
	rst 8			;71b6
	ld a,a			;71b7
	cp 0feh			;71b8
	and h			;71ba
	call m,sub_6f1fh	;71bb
	rrca			;71be
	rra			;71bf
	call m,0fea4h		;71c0
	cp 07fh			;71c3
	nop			;71c5
	nop			;71c6
	ld (bc),a		;71c7
	rlca			;71c8
	xor (hl)		;71c9
	ld d,c			;71ca
	xor a			;71cb
	ld (bc),a		;71cc
	ld (0122fh),a		;71cd
	xor a			;71d0
	ld d,c			;71d1
	xor (hl)		;71d2
	nop			;71d3
	ld bc,l7c00h		;71d4
	ld bc,03cfdh		;71d7
	pop hl			;71da
	ld a,h			;71db
	and h			;71dc
	inc h			;71dd
	cp 0a5h			;71de
	ld a,(hl)		;71e0
	ret po			;71e1
	dec a			;71e2
	ld bc,000fdh		;71e3
	nop			;71e6
	ld bc,0ff00h		;71e7
	xor a			;71ea
	rst 38h			;71eb
	rrca			;71ec
	cpl			;71ed
	ld (0ff1fh),a		;71ee
	xor a			;71f1
	rst 38h			;71f2
	rlca			;71f3
	ld (bc),a		;71f4
	nop			;71f5
	nop			;71f6
	call m,0e100h		;71f7
	defb 0fdh,0fch,07eh ;illegal sequence	;71fa
	rst 38h			;71fd
	dec h			;71fe
	ld a,a			;71ff
	cp 0fdh			;7200
	ret po			;7202
	call m,sub_7c01h	;7203
	nop			;7206
	rlca			;7207
	nop			;7208
	add a,e			;7209
	ld h,c			;720a
	or (hl)			;720b
	or (hl)			;720c
	ld a,(bc)		;720d
	nop			;720e
	adc a,b			;720f
	rrca			;7210
	ld a,(0f078h)		;7211
l7214h:
	ret m			;7214
l7215h:
	ret m			;7215
	rrca			;7216
	ret p			;7217
	ld c,000h		;7218
	add a,c			;721a
	ld h,c			;721b
	add hl,bc		;721c
	nop			;721d
	adc a,b			;721e
	rrca			;721f
	ld h,064h		;7220
	inc c			;7222
	inc b			;7223
	inc b			;7224
	rst 38h			;7225
	ret p			;7226
	inc b			;7227
	nop			;7228
	adc a,c			;7229
	jr nz,l726ch		;722a
	ld (hl),b		;722c
	inc b			;722d
	inc b			;722e
	rlca			;722f
	rlca			;7230
	inc b			;7231
	inc bc			;7232
	inc b			;7233
	ld bc,0000ah		;7234
	add a,d			;7237
	call c,004e8h		;7238
	ret m			;723b
	adc a,l			;723c
	call m,00000h		;723d
	djnz l725ah		;7240
	ex af,af'		;7242
	jr c,$+4		;7243
	ld bc,00707h		;7245
	ld (bc),a		;7248
	ld bc,0000bh		;7249
	adc a,c			;724c
	add a,b			;724d
	ret nz			;724e
	inc a			;724f
	jr l725ah		;7250
	sbc a,b			;7252
	ret pe			;7253
	xor b			;7254
	ld a,h			;7255
	dec b			;7256
	nop			;7257
	add a,c			;7258
	inc bc			;7259
l725ah:
	inc bc			;725a
	ld bc,00092h		;725b
	dec c			;725e
	dec e			;725f
	dec e			;7260
	rra			;7261
	rra			;7262
	inc d			;7263
	dec d			;7264
	ex af,af'		;7265
	nop			;7266
	ld b,b			;7267
	ld b,b			;7268
l7269h:
	add a,b			;7269
	ret nz			;726a
	add a,b			;726b
l726ch:
	nop			;726c
	add a,b			;726d
	ret po			;726e
	inc b			;726f
	ret p			;7270
	sbc a,h			;7271
	jr nz,l7214h		;7272
	nop			;7274
	ld bc,00202h		;7275
	nop			;7278
	ld (bc),a		;7279
	nop			;727a
	nop			;727b
	ld bc,00e07h		;727c
	ld c,00ch		;727f
	ld a,(bc)		;7281
	dec bc			;7282
	ld a,(bc)		;7283
	rlca			;7284
	add a,b			;7285
l7286h:
	nop			;7286
	nop			;7287
	ld b,b			;7288
	nop			;7289
	nop			;728a
	add a,b			;728b
	nop			;728c
	and b			;728d
	inc bc			;728e
	jr nc,l7215h		;728f
	ld d,b			;7291
	ret nc			;7292
	ld d,b			;7293
	ret po			;7294
	rlca			;7295
	nop			;7296
	add a,d			;7297
	dec sp			;7298
	rla			;7299
	inc b			;729a
	rra			;729b
	adc a,h			;729c
	ccf			;729d
	nop			;729e
	nop			;729f
	inc b			;72a0
	ld (bc),a		;72a1
	ld c,020h		;72a2
	jr nz,l7286h		;72a4
	ret po			;72a6
	jr nz,l7269h		;72a7
	inc b			;72a9
	add a,b			;72aa
	ex af,af'		;72ab
	nop			;72ac
	sub l			;72ad
	ld bc,03c03h		;72ae
	jr l72c3h		;72b1
	add hl,de		;72b3
	rla			;72b4
	dec d			;72b5
	ld a,000h		;72b6
	nop			;72b8
	ex af,af'		;72b9
	jr l72cch		;72ba
	inc e			;72bc
	ld b,b			;72bd
	add a,b			;72be
	ret po			;72bf
	ret po			;72c0
	ld b,b			;72c1
	add a,b			;72c2
l72c3h:
	ld a,(bc)		;72c3
	nop			;72c4
	adc a,b			;72c5
	ret p			;72c6
	ld e,h			;72c7
	ld e,00fh		;72c8
	rra			;72ca
	rra			;72cb
l72cch:
	ret p			;72cc
	rrca			;72cd
	dec bc			;72ce
	nop			;72cf
	add a,e			;72d0
	add a,(hl)		;72d1
	ld l,l			;72d2
	ld l,l			;72d3
	ld a,(bc)		;72d4
	nop			;72d5
	adc a,b			;72d6
	ret p			;72d7
	ld h,h			;72d8
	ld h,030h		;72d9
	jr nz,l72fdh		;72db
	rst 38h			;72dd
	rrca			;72de
	ld c,000h		;72df
	add a,c			;72e1
	add a,(hl)		;72e2
	dec b			;72e3
	nop			;72e4
	nop			;72e5
	add a,l			;72e6
	nop			;72e7
	ld bc,00203h		;72e8
	nop			;72eb
	inc b			;72ec
	ld bc,00302h		;72ed
	ld (bc),a		;72f0
	rlca			;72f1
	ld (bc),a		;72f2
	rrca			;72f3
	add a,l			;72f4
	rra			;72f5
	nop			;72f6
	add a,b			;72f7
	add a,b			;72f8
	nop			;72f9
	rlca			;72fa
	add a,b			;72fb
	ld (bc),a		;72fc
l72fdh:
	ret nz			;72fd
	ld (bc),a		;72fe
	ret po			;72ff
	sub c			;7300
	ret p			;7301
	ld bc,00002h		;7302
	ld bc,00303h		;7305
	ld (bc),a		;7308
	inc bc			;7309
	inc bc			;730a
	ld b,006h		;730b
	ld a,(bc)		;730d
	ld a,(bc)		;730e
	ld (de),a		;730f
	ld (de),a		;7310
	rrca			;7311
	inc bc			;7312
	nop			;7313
	sbc a,b			;7314
	add a,b			;7315
	nop			;7316
	nop			;7317
	add a,b			;7318
	nop			;7319
	nop			;731a
	ret nz			;731b
	ret nz			;731c
	and b			;731d
	and b			;731e
	sub b			;731f
	sub b			;7320
	ret po			;7321
	nop			;7322
	jr nc,$+122		;7323
	inc e			;7325
	ld (00805h),hl		;7326
	rlca			;7329
	inc bc			;732a
	ld bc,00b01h		;732b
	nop			;732e
	sub l			;732f
	ld h,b			;7330
	ret po			;7331
	call m,0fcfeh		;7332
	ret m			;7335
	ret p			;7336
	ret po			;7337
	ld b,b			;7338
	nop			;7339
	nop			;733a
	ld b,b			;733b
	nop			;733c
	ld l,h			;733d
	inc a			;733e
	dec de			;733f
	rlca			;7340
	ld b,003h		;7341
	inc bc			;7343
	ld (bc),a		;7344
	inc bc			;7345
	ld bc,00008h		;7346
	adc a,c			;7349
	ret po			;734a
	ld e,h			;734b
	ld (0cc92h),hl		;734c
	ld l,b			;734f
	jr nc,l7372h		;7350
	add a,b			;7352
	rlca			;7353
	nop			;7354
	add a,e			;7355
	ld (hl),d		;7356
	jp m,00a0dh		;7357
	nop			;735a
	adc a,c			;735b
	ld bc,01f07h		;735c
	ld a,a			;735f
	nop			;7360
	rst 38h			;7361
	rra			;7362
	rlca			;7363
	ld bc,0000ah		;7364
	ld (bc),a		;7367
	dec c			;7368
	add a,c			;7369
	ld a,d			;736a
	ld a,(bc)		;736b
	nop			;736c
	adc a,c			;736d
	ld b,019h		;736e
	ld h,c			;7370
	rst 38h			;7371
l7372h:
	rst 38h			;7372
	nop			;7373
	ld h,c			;7374
	add hl,de		;7375
	ld b,009h		;7376
	nop			;7378
	ld (bc),a		;7379
	ld bc,00387h		;737a
	ld bc,00507h		;737d
	ld l,074h		;7380
	ld h,b			;7382
	inc bc			;7383
	nop			;7384
	adc a,c			;7385
	ld b,b			;7386
	ret po			;7387
	ret p			;7388
	ret m			;7389
	call m,0fcfeh		;738a
	ret po			;738d
	ret po			;738e
	ex af,af'		;738f
	nop			;7390
	inc bc			;7391
	ld bc,00295h		;7392
	inc bc			;7395
	ld (bc),a		;7396
	rlca			;7397
	ex af,af'		;7398
	dec de			;7399
	ld e,00ch		;739a
	jr l740eh		;739c
	nop			;739e
	nop			;739f
	ret nz			;73a0
	jr nz,l73d3h		;73a1
	ld c,b			;73a3
	sbc a,h			;73a4
	ld (03c62h),a		;73a5
	ld h,b			;73a8
	ld b,000h		;73a9
	nop			;73ab
	ret nz			;73ac
	add a,a			;73ad
	rrca			;73ae
	rrca			;73af
	adc a,(hl)		;73b0
	rlca			;73b1
	ld c,a			;73b2
	ccf			;73b3
	ld l,027h		;73b4
	daa			;73b6
	ld d,a			;73b7
	and l			;73b8
	ld c,h			;73b9
	add a,a			;73ba
	ld (bc),a		;73bb
	ld bc,0f0e1h		;73bc
	ret p			;73bf
	ld (hl),c		;73c0
	ret po			;73c1
	jp p,l74fch		;73c2
	call po,0eae4h		;73c5
	and l			;73c8
	ld (040e1h),a		;73c9
	add a,b			;73cc
	rrca			;73cd
	sbc a,h			;73ce
	cp b			;73cf
	cp c			;73d0
	cp h			;73d1
	rst 38h			;73d2
l73d3h:
	call m,0fcf9h		;73d3
	cp 03bh			;73d6
	ld l,d			;73d8
	rst 10h			;73d9
	adc a,e			;73da
	dec b			;73db
	ld (bc),a		;73dc
	ret p			;73dd
	add hl,sp		;73de
	dec e			;73df
	sbc a,l			;73e0
	dec a			;73e1
	rst 38h			;73e2
l73e3h:
	ccf			;73e3
	sbc a,a			;73e4
	ccf			;73e5
	ld a,a			;73e6
	call c,0eb56h		;73e7
	pop de			;73ea
	and b			;73eb
	ld b,b			;73ec
	nop			;73ed
	cp e			;73ee
	nop			;73ef
	rlca			;73f0
	inc c			;73f1
	rra			;73f2
	ld e,00ch		;73f3
	ld b,005h		;73f5
	ld (hl),025h		;73f7
	ld d,(hl)		;73f9
	ld d,l			;73fa
	ld d,(hl)		;73fb
	ld d,l			;73fc
	ld a,05eh		;73fd
	nop			;73ff
	ld b,b			;7400
	nop			;7401
	ret m			;7402
	sbc a,b			;7403
	jr c,$-14		;7404
	ret po			;7406
	call m,0f3feh		;7407
	ei			;740a
	ld e,e			;740b
	ei			;740c
	ld l,(hl)		;740d
l740eh:
	ei			;740e
	rlca			;740f
	rrca			;7410
	rra			;7411
	rra			;7412
	ld bc,00913h		;7413
	rlca			;7416
	ccf			;7417
	ld a,(hl)		;7418
	xor l			;7419
	xor a			;741a
	xor l			;741b
	xor a			;741c
	ld a,l			;741d
	cp a			;741e
	ret po			;741f
	ret p			;7420
	ret m			;7421
	ret m			;7422
	ld a,b			;7423
	ret m			;7424
	ret p			;7425
	ret po			;7426
	call m,0df9ah		;7427
	inc bc			;742a
	rst 38h			;742b
	or h			;742c
	cp 0ffh			;742d
	ld e,(hl)		;742f
	ld a,055h		;7430
	ld d,(hl)		;7432
	ld d,l			;7433
	ld d,(hl)		;7434
	dec h			;7435
	ld (hl),005h		;7436
	ld b,00ch		;7438
	ld e,01fh		;743a
	inc c			;743c
	rlca			;743d
	nop			;743e
	ei			;743f
	ld l,(hl)		;7440
	ei			;7441
	ld e,e			;7442
	ei			;7443
	di			;7444
	cp 0fch			;7445
	ret po			;7447
	ret p			;7448
	jr c,l73e3h		;7449
	ret m			;744b
	nop			;744c
	ld b,b			;744d
	nop			;744e
	cp a			;744f
	ld a,l			;7450
	xor a			;7451
	xor l			;7452
	xor a			;7453
	xor l			;7454
	ld a,(hl)		;7455
	ccf			;7456
	rlca			;7457
	add hl,bc		;7458
	inc de			;7459
	ld bc,01f1fh		;745a
	rrca			;745d
	rlca			;745e
	rst 38h			;745f
	cp 003h			;7460
	rst 38h			;7462
	adc a,e			;7463
	rst 18h			;7464
	sbc a,d			;7465
	call m,0f0e0h		;7466
	ret m			;7469
	ld a,b			;746a
	ret m			;746b
	ret m			;746c
	ret p			;746d
	ret po			;746e
	nop			;746f
	ld (bc),a		;7470
	nop			;7471
	sbc a,c			;7472
	inc c			;7473
	inc b			;7474
	daa			;7475
	add hl,de		;7476
	rrca			;7477
	inc b			;7478
	rlca			;7479
	ccf			;747a
	ld l,b			;747b
	ld a,a			;747c
	ccf			;747d
	ld a,a			;747e
	ld l,b			;747f
	ccf			;7480
	inc bc			;7481
	inc b			;7482
	inc bc			;7483
	inc b			;7484
	dec bc			;7485
	rla			;7486
	ret nc			;7487
	rst 38h			;7488
	xor c			;7489
	and b			;748a
	ld e,a			;748b
	inc bc			;748c
	rst 38h			;748d
	add a,d			;748e
	ld e,a			;748f
	and b			;7490
	inc bc			;7491
	nop			;7492
	xor b			;7493
	ld a,(de)		;7494
	inc a			;7495
	ld e,00fh		;7496
	rlca			;7498
	rlca			;7499
	jr z,l751bh		;749a
	ld a,a			;749c
	add hl,hl		;749d
	ld a,a			;749e
	ld a,a			;749f
	ccf			;74a0
	inc c			;74a1
	rlca			;74a2
	inc c			;74a3
	rlca			;74a4
	inc (hl)		;74a5
	ret pe			;74a6
	cpl			;74a7
	rst 38h			;74a8
	cp 05fh			;74a9
	and b			;74ab
	rst 38h			;74ac
	djnz $+1		;74ad
	and b			;74af
	rst 38h			;74b0
	ret nc			;74b1
	ld h,b			;74b2
	ret nc			;74b3
	ld h,b			;74b4
l74b5h:
	ret nc			;74b5
	ret pe			;74b6
	dec bc			;74b7
	rst 38h			;74b8
	dec d			;74b9
	dec b			;74ba
	jp m,0ff03h		;74bb
	and d			;74be
	jp m,00005h		;74bf
	nop			;74c2
	jr nc,l74e5h		;74c3
	call po,0f098h		;74c5
	jr nz,$-30		;74c8
	call m,0fe16h		;74ca
	call m,016feh		;74cd
	call m,0e030h		;74d0
	jr nc,l74b5h		;74d3
	inc l			;74d5
	rla			;74d6
	call p,0ffffh		;74d7
	jp m,0ff05h		;74da
	ex af,af'		;74dd
	rst 38h			;74de
	dec b			;74df
	rst 38h			;74e0
	inc bc			;74e1
	nop			;74e2
	sbc a,a			;74e3
	ld e,b			;74e4
l74e5h:
	inc a			;74e5
	ld a,b			;74e6
	ret p			;74e7
	ret po			;74e8
	ret po			;74e9
	inc d			;74ea
	cp 0feh			;74eb
	sub h			;74ed
	cp 0feh			;74ee
	call m,sub_683fh	;74f0
	ld a,a			;74f3
	ccf			;74f4
	ld a,a			;74f5
	ld l,b			;74f6
	ccf			;74f7
	rlca			;74f8
	inc b			;74f9
	rrca			;74fa
	add hl,de		;74fb
l74fch:
	daa			;74fc
	inc b			;74fd
	inc c			;74fe
	nop			;74ff
	nop			;7500
	and b			;7501
	ld e,a			;7502
	inc bc			;7503
	rst 38h			;7504
	sbc a,b			;7505
	ld e,a			;7506
	and b			;7507
	xor c			;7508
	rst 38h			;7509
	ret nc			;750a
	rla			;750b
	dec bc			;750c
	inc b			;750d
	inc bc			;750e
	inc b			;750f
	inc bc			;7510
	ccf			;7511
	ld a,a			;7512
	ld a,a			;7513
	add hl,hl		;7514
	ld a,a			;7515
	ld a,a			;7516
	jr z,l7520h		;7517
	rlca			;7519
	rrca			;751a
l751bh:
	ld e,03ch		;751b
	ld a,(de)		;751d
	inc bc			;751e
	nop			;751f
l7520h:
	sub d			;7520
	rst 38h			;7521
	and b			;7522
	rst 38h			;7523
	djnz $+1		;7524
	and b			;7526
	ld e,a			;7527
	cp 0ffh			;7528
	cpl			;752a
	ret pe			;752b
	inc (hl)		;752c
	rlca			;752d
	inc c			;752e
	rlca			;752f
	inc c			;7530
	dec b			;7531
	jp m,0ff03h		;7532
	cp b			;7535
	jp m,01505h		;7536
	rst 38h			;7539
	dec bc			;753a
	ret pe			;753b
	ret nc			;753c
	ld h,b			;753d
	ret nc			;753e
	ld h,b			;753f
l7540h:
	ret nc			;7540
	call m,0fe16h		;7541
	call m,016feh		;7544
	call m,020e0h		;7547
	ret p			;754a
	sbc a,b			;754b
	call po,03020h		;754c
	nop			;754f
	nop			;7550
	rst 38h			;7551
	dec b			;7552
	rst 38h			;7553
	ex af,af'		;7554
	rst 38h			;7555
	dec b			;7556
	jp m,0ffffh		;7557
	call p,02c17h		;755a
	ret po			;755d
l755eh:
	jr nc,l7540h		;755e
	jr nc,l755eh		;7560
	cp 0feh			;7562
	sub h			;7564
	cp 0feh			;7565
	inc d			;7567
	ret po			;7568
	ret po			;7569
	ret p			;756a
	ld a,b			;756b
	inc a			;756c
	ld e,b			;756d
	inc bc			;756e
	nop			;756f
	nop			;7570
	inc b			;7571
	nop			;7572
	ld (bc),a		;7573
	xor b			;7574
	adc a,d			;7575
	rst 38h			;7576
	xor b			;7577
	rra			;7578
	ccf			;7579
	ld hl,0003fh		;757a
	add a,b			;757d
	ld a,a			;757e
	ld e,a			;757f
	inc b			;7580
	nop			;7581
	ld (bc),a		;7582
	add a,h			;7583
	adc a,d			;7584
	call m,0ff87h		;7585
	rst 38h			;7588
	xor l			;7589
	rst 38h			;758a
	rlca			;758b
	add hl,bc		;758c
	jp p,004f2h		;758d
	nop			;7590
	adc a,h			;7591
	rst 38h			;7592
	ld d,a			;7593
	xor b			;7594
	rst 38h			;7595
	rra			;7596
	ld hl,03f3fh		;7597
	rst 38h			;759a
	ld a,a			;759b
	cp a			;759c
	and d			;759d
	inc b			;759e
	nop			;759f
	add a,(hl)		;75a0
	call m,08478h		;75a1
	rst 38h			;75a4
	rst 38h			;75a5
	xor l			;75a6
	inc bc			;75a7
	rst 38h			;75a8
	adc a,a			;75a9
	ret p			;75aa
	jp (hl)			;75ab
	add hl,hl		;75ac
	ld d,e			;75ad
	ld e,l			;75ae
	ld a,a			;75af
	nop			;75b0
	ccf			;75b1
	ld hl,01f3fh		;75b2
	xor b			;75b5
	xor b			;75b6
	rst 38h			;75b7
	xor b			;75b8
	inc b			;75b9
	nop			;75ba
	adc a,h			;75bb
	ld (0f2f2h),a		;75bc
	rlca			;75bf
	rst 38h			;75c0
	xor l			;75c1
	rst 38h			;75c2
	rst 38h			;75c3
	add a,a			;75c4
	add a,h			;75c5
	call m,00484h		;75c6
	nop			;75c9
	adc a,h			;75ca
	xor (hl)		;75cb
	cp a			;75cc
	add a,b			;75cd
	rst 38h			;75ce
	ccf			;75cf
	ccf			;75d0
	ld hl,0ff1fh		;75d1
	ld d,a			;75d4
	xor b			;75d5
	rst 38h			;75d6
	inc b			;75d7
	nop			;75d8
	ld (bc),a		;75d9
	jp (hl)			;75da
	add a,c			;75db
	add hl,bc		;75dc
	inc bc			;75dd
	rst 38h			;75de
	add a,(hl)		;75df
	xor l			;75e0
	rst 38h			;75e1
	rst 38h			;75e2
	ld a,b			;75e3
	add a,h			;75e4
	call m,00004h		;75e5
	nop			;75e8
	ld b,0bfh		;75e9
	add a,c			;75eb
	ld h,(hl)		;75ec
	ld b,0ffh		;75ed
	add a,e			;75ef
	jp 0c3ffh		;75f0
	ld b,0fdh		;75f3
	add a,c			;75f5
	ld h,(hl)		;75f6
	add hl,bc		;75f7
	rst 38h			;75f8
	ld b,0bfh		;75f9
	add a,c			;75fb
	ld h,(hl)		;75fc
	add hl,bc		;75fd
	rst 38h			;75fe
	ld b,0fdh		;75ff
	add a,c			;7601
	ld h,(hl)		;7602
	ld b,0ffh		;7603
	add a,e			;7605
	jp 0c3ffh		;7606
	ld b,0ffh		;7609
	add a,a			;760b
	ld h,(hl)		;760c
	rst 38h			;760d
	rst 38h			;760e
	ret p			;760f
	rst 30h			;7610
	rst 30h			;7611
	rst 38h			;7612
	inc bc			;7613
	ld d,a			;7614
	ld b,0ffh		;7615
	add a,a			;7617
	ld h,(hl)		;7618
	rst 38h			;7619
	rst 38h			;761a
	rrca			;761b
	rst 28h			;761c
	rst 28h			;761d
	rst 38h			;761e
	inc bc			;761f
	jp pe,0af04h		;7620
	rlca			;7623
	rst 38h			;7624
	add a,c			;7625
	ret p			;7626
	inc b			;7627
	rst 30h			;7628
	inc b			;7629
	push af			;762a
	rlca			;762b
	rst 38h			;762c
	add a,c			;762d
	rrca			;762e
	inc b			;762f
	rst 28h			;7630
	nop			;7631
	add a,a			;7632
	nop			;7633
	rrca			;7634
	ld a,083h		;7635
	ld (hl),e		;7637
	rrca			;7638
	inc e			;7639
	inc bc			;763a
	rra			;763b
	or (hl)			;763c
	rrca			;763d
	ld (hl),e		;763e
	defb 0fdh,01eh,00fh ;illegal sequence	;763f
	nop			;7642
	jp c,0a874h		;7643
	ld sp,hl		;7646
	call pe,0e4f3h		;7647
	ret nz			;764a
	ret nz			;764b
	call po,0ecffh		;764c
	sub (hl)		;764f
	xor c			;7650
	halt			;7651
	jp c,0100fh		;7652
	ld b,c			;7655
	ld a,l			;7656
	adc a,a			;7657
	ld a,h			;7658
	inc de			;7659
	nop			;765a
	nop			;765b
	djnz l76dah		;765c
	adc a,a			;765e
	inc bc			;765f
	ld h,c			;7660
	djnz $+17		;7661
	and 0cch		;7663
	sbc a,096h		;7665
	di			;7667
	ccf			;7668
	ld a,h			;7669
	ld a,b			;766a
	ld a,b			;766b
	ld a,h			;766c
	ccf			;766d
	di			;766e
	ld sp,hl		;766f
	rst 18h			;7670
	adc a,0e6h		;7671
	nop			;7673
	or b			;7674
	inc bc			;7675
	inc c			;7676
	dec de			;7677
	rra			;7678
	ld a,039h		;7679
	ld h,a			;767b
	ld c,(hl)		;767c
	ld (hl),l		;767d
	dec b			;767e
	dec c			;767f
	jr l7698h		;7680
	cpl			;7682
	dec e			;7683
	ld c,080h		;7684
	ret nz			;7686
	ret po			;7687
	ld d,b			;7688
	nop			;7689
	ret p			;768a
	ld (hl),b		;768b
	ret m			;768c
	sbc a,b			;768d
	jp p,0faeeh		;768e
	call z,094e8h		;7691
	jr c,l7696h		;7694
l7696h:
	inc bc			;7696
	inc b			;7697
l7698h:
	ld bc,01f07h		;7698
	ld a,a			;769b
	ccf			;769c
	halt			;769d
	ld a,(bc)		;769e
	inc de			;769f
	daa			;76a0
	cpl			;76a1
	ccf			;76a2
	rra			;76a3
	scf			;76a4
	inc bc			;76a5
	nop			;76a6
l76a7h:
	inc bc			;76a7
	ret p			;76a8
	cp h			;76a9
	adc a,b			;76aa
	ld (hl),b		;76ab
	call p,0de9eh		;76ac
	adc a,0fch		;76af
l76b1h:
	sbc a,b			;76b1
	call m,0bfd8h		;76b2
	ld a,d			;76b5
	ld c,(hl)		;76b6
	ld sp,00804h		;76b7
	jr l76cch		;76ba
	jr nc,$+50		;76bc
	ld hl,l6763h		;76be
	ld c,d			;76c1
	rra			;76c2
	jr nc,l76b1h		;76c3
	sub d			;76c5
	ld h,c			;76c6
	add a,b			;76c7
	inc bc			;76c8
	inc b			;76c9
	ld e,03ch		;76ca
l76cch:
	ld a,(hl)		;76cc
	call nc,08078h		;76cd
	nop			;76d0
	add a,b			;76d1
	nop			;76d2
	nop			;76d3
	ld a,h			;76d4
	ld b,a			;76d5
	ccf			;76d6
	ld a,a			;76d7
	dec de			;76d8
	rla			;76d9
l76dah:
	daa			;76da
	cpl			;76db
	ld c,a			;76dc
	ld c,a			;76dd
	ld e,a			;76de
l76dfh:
	ld e,09dh		;76df
	cp a			;76e1
	rst 38h			;76e2
	ld (hl),b		;76e3
	inc e			;76e4
	ld a,(hl)		;76e5
	inc bc			;76e6
	rst 38h			;76e7
	add a,(hl)		;76e8
	cp 0fah			;76e9
	or 0eah			;76eb
	call m,003f8h		;76ed
	add a,b			;76f0
	ld (bc),a		;76f1
	nop			;76f2
	and b			;76f3
	ld bc,00703h		;76f4
	ld a,(bc)		;76f7
	nop			;76f8
	rrca			;76f9
	ld c,01fh		;76fa
	add hl,de		;76fc
	ld c,a			;76fd
	ld (hl),a		;76fe
	ld e,a			;76ff
	inc sp			;7700
	rla			;7701
	add hl,hl		;7702
	inc e			;7703
	ret nz			;7704
	jr nc,l76dfh		;7705
	ret m			;7707
	ld a,h			;7708
	sbc a,h			;7709
	and 072h		;770a
	xor (hl)		;770c
	and b			;770d
	or b			;770e
	jr l7779h		;770f
	call p,sub_70b8h	;7711
	inc bc			;7714
	nop			;7715
	inc bc			;7716
	rrca			;7717
	cp h			;7718
	ld de,02f0eh		;7719
	ld a,c			;771c
	ld a,e			;771d
	ld (hl),e		;771e
	ccf			;771f
	add hl,de		;7720
	ccf			;7721
	dec de			;7722
	nop			;7723
	ret nz			;7724
	jr nz,l76a7h		;7725
	ret po			;7727
	ret m			;7728
	cp 0fch			;7729
	ld l,(hl)		;772b
	ld d,b			;772c
	ret z			;772d
	call po,0fcf4h		;772e
	ret m			;7731
	call pe,04937h		;7732
	add a,(hl)		;7735
	ld bc,020c0h		;7736
	ld a,b			;7739
	inc a			;773a
	ld a,(hl)		;773b
	dec hl			;773c
	ld e,001h		;773d
	nop			;773f
	ld bc,00000h		;7740
	ld e,(iy+072h)		;7743
	adc a,h			;7746
	jr nz,l7759h		;7747
	jr l7753h		;7749
	inc c			;774b
	inc c			;774c
	add a,h			;774d
	add a,0e6h		;774e
	ld d,d			;7750
	ret m			;7751
	inc c			;7752
l7753h:
	jr c,l77d3h		;7753
	inc bc			;7755
	rst 38h			;7756
	add a,(hl)		;7757
	ld a,a			;7758
l7759h:
	ld e,a			;7759
	ld l,a			;775a
	ld d,a			;775b
	ccf			;775c
	rra			;775d
	inc bc			;775e
	ld bc,00002h		;775f
	sub b			;7762
	ld a,0e2h		;7763
	call m,0d8feh		;7765
	ret pe			;7768
	call po,0f2f4h		;7769
	jp p,l78fah		;776c
	cp c			;776f
	defb 0fdh,0ffh,00eh ;illegal sequence	;7770
	nop			;7773
	rst 38h			;7774
	nop			;7775
	dec b			;7776
	dec bc			;7777
	rrca			;7778
l7779h:
	add hl,bc		;7779
	ld l,e			;777a
	add a,c			;777b
	rst 38h			;777c
	ld h,a			;777d
	adc a,l			;777e
	rst 38h			;777f
	rst 20h			;7780
	ld b,c			;7781
	nop			;7782
	cpl			;7783
	call p,0a000h		;7784
	ret nc			;7787
	ret p			;7788
	sub b			;7789
	sub 081h		;778a
	rst 38h			;778c
	and 0b1h		;778d
	rst 38h			;778f
	rst 20h			;7790
	add a,d			;7791
	nop			;7792
	call p,0002fh		;7793
	ld b,00ch		;7796
	ld c,00eh		;7798
	ld (hl),h		;779a
	cp 0ffh			;779b
	ld a,b			;779d
	di			;779e
	ld a,(hl)		;779f
	inc a			;77a0
	inc e			;77a1
	ld a,a			;77a2
	ret nc			;77a3
	rst 38h			;77a4
	nop			;77a5
	ld h,b			;77a6
	jr nc,l7819h		;77a7
	ld (hl),b		;77a9
	ld l,07fh		;77aa
	rst 38h			;77ac
	ld e,0cfh		;77ad
	ld a,(hl)		;77af
	inc a			;77b0
l77b1h:
	jr c,l77b1h		;77b1
	dec bc			;77b3
	rst 38h			;77b4
	call p,0002fh		;77b5
	ld b,c			;77b8
	rst 20h			;77b9
	rst 38h			;77ba
	adc a,l			;77bb
	ld h,a			;77bc
	rst 38h			;77bd
	add a,c			;77be
	ld l,e			;77bf
	add hl,bc		;77c0
	rrca			;77c1
	dec bc			;77c2
	dec b			;77c3
	nop			;77c4
	cpl			;77c5
	call p,08200h		;77c6
	rst 20h			;77c9
	rst 38h			;77ca
	or c			;77cb
	and 0ffh		;77cc
	add a,c			;77ce
	sub 090h		;77cf
	ret p			;77d1
	ret nc			;77d2
l77d3h:
	and b			;77d3
	nop			;77d4
	rst 38h			;77d5
	ret nc			;77d6
	ld a,a			;77d7
	inc e			;77d8
	inc a			;77d9
	ld a,(hl)		;77da
	di			;77db
	ld a,b			;77dc
	rst 38h			;77dd
	cp 074h			;77de
	ld c,00eh		;77e0
	inc c			;77e2
	ld b,000h		;77e3
	rst 38h			;77e5
	dec bc			;77e6
	cp 038h			;77e7
	inc a			;77e9
	ld a,(hl)		;77ea
	rst 8			;77eb
	ld e,0ffh		;77ec
	ld a,a			;77ee
	ld l,070h		;77ef
	ld (hl),b		;77f1
	jr nc,l7854h		;77f2
	add a,c			;77f4
	nop			;77f5
	nop			;77f6
	ld (bc),a		;77f7
	rrca			;77f8
	xor (hl)		;77f9
l77fah:
	inc e			;77fa
	rra			;77fb
	ld a,a			;77fc
	ccf			;77fd
	ld b,b			;77fe
	add a,b			;77ff
	ld a,a			;7800
	ld (hl),l		;7801
	cpl			;7802
	ld a,d			;7803
	rra			;7804
	cpl			;7805
	rla			;7806
	inc bc			;7807
	djnz l77fah		;7808
	djnz $+1		;780a
	push bc			;780c
	ld b,l			;780d
	cp a			;780e
	call z,0ed44h		;780f
	cp d			;7812
	push de			;7813
	rst 38h			;7814
	ret p			;7815
	ret p			;7816
	djnz l781ch		;7817
l7819h:
	rla			;7819
	cpl			;781a
	ld a,a			;781b
l781ch:
	ld (hl),b		;781c
	jr nz,l789eh		;781d
	ld a,a			;781f
	add a,b			;7820
	ld a,a			;7821
	jr nc,l78a3h		;7822
	ld a,a			;7824
	inc e			;7825
	rrca			;7826
l7827h:
	rrca			;7827
	inc bc			;7828
	ret p			;7829
	adc a,(hl)		;782a
	push hl			;782b
	ld a,(0ffffh)		;782c
	ld (hl),h		;782f
	call m,0c5ffh		;7830
	rst 38h			;7833
	rst 38h			;7834
	djnz l7827h		;7835
	ret p			;7837
	ld b,b			;7838
	inc b			;7839
	nop			;783a
	add a,(hl)		;783b
	ld a,b			;783c
	ld b,035h		;783d
	inc (hl)		;783f
	ld b,078h		;7840
	inc b			;7842
	nop			;7843
	add a,c			;7844
	ld b,b			;7845
	inc b			;7846
	nop			;7847
	adc a,b			;7848
	ld bc,l6c1ch		;7849
	xor h			;784c
	inc l			;784d
	ld l,h			;784e
	inc e			;784f
	ld bc,00004h		;7850
	and b			;7853
l7854h:
	or b			;7854
	ld b,a			;7855
	rrca			;7856
	rrca			;7857
	inc (hl)		;7858
	inc bc			;7859
	ld bc,03333h		;785a
	ld bc,03403h		;785d
	rrca			;7860
	rrca			;7861
	ld b,a			;7862
	or b			;7863
	nop			;7864
	defb 0edh ;next byte illegal after ed	;7865
	rst 28h			;7866
	defb 0edh ;next byte illegal after ed	;7867
	ld (08cc0h),a		;7868
	call z,08ccch		;786b
	ret nz			;786e
	ld (0efedh),a		;786f
	defb 0edh ;next byte illegal after ed	;7872
	nop			;7873
	nop			;7874
	adc a,h			;7875
	inc bc			;7876
	ld b,00ch		;7877
	rrca			;7879
	ld a,(bc)		;787a
	ld d,b			;787b
	scf			;787c
	dec hl			;787d
	ld a,l			;787e
	ld a,05bh		;787f
	xor l			;7881
	inc bc			;7882
	ld a,d			;7883
	adc a,l			;7884
	xor l			;7885
	ret nz			;7886
	ret po			;7887
	ld (hl),b		;7888
	ret p			;7889
	ld d,b			;788a
	ld a,(bc)		;788b
	call pe,07ed4h		;788c
	or 06bh			;788f
	or l			;7891
	inc bc			;7892
	rst 28h			;7893
	add a,h			;7894
	or l			;7895
	nop			;7896
	ld bc,00303h		;7897
	rrca			;789a
	add a,(hl)		;789b
	ld a,a			;789c
	ld (hl),a		;789d
l789eh:
	ld a,(hl)		;789e
	ld e,a			;789f
	xor h			;78a0
	rst 38h			;78a1
	inc bc			;78a2
l78a3h:
	xor l			;78a3
	add a,h			;78a4
	rst 38h			;78a5
	nop			;78a6
	nop			;78a7
	add a,b			;78a8
	inc bc			;78a9
	ret p			;78aa
	add a,(hl)		;78ab
	cp 0eeh			;78ac
	cp 0fah			;78ae
l78b0h:
	or l			;78b0
	rst 38h			;78b1
	inc bc			;78b2
	or l			;78b3
	add a,c			;78b4
	rst 38h			;78b5
	nop			;78b6
	ld (bc),a		;78b7
	nop			;78b8
	adc a,l			;78b9
	add hl,de		;78ba
	dec bc			;78bb
	rlca			;78bc
	rrca			;78bd
	jr l78c7h		;78be
	rlca			;78c0
	jr $+17			;78c1
l78c3h:
	rlca			;78c3
	dec bc			;78c4
	add hl,de		;78c5
	add hl,de		;78c6
l78c7h:
	inc bc			;78c7
	nop			;78c8
	adc a,(hl)		;78c9
	sbc a,b			;78ca
	ret nc			;78cb
l78cch:
	ret po			;78cc
	ret p			;78cd
	jr l78b0h		;78ce
l78d0h:
	ret po			;78d0
	jr l78c3h		;78d1
	ret po			;78d3
	ret nc			;78d4
	sbc a,b			;78d5
	sbc a,b			;78d6
	nop			;78d7
	nop			;78d8
	adc a,d			;78d9
	ld b,018h		;78da
	inc hl			;78dc
	ld b,h			;78dd
	ld b,b			;78de
	inc bc			;78df
	add a,(hl)		;78e0
	add a,a			;78e1
	rlca			;78e2
	inc bc			;78e3
	inc bc			;78e4
	nop			;78e5
	sub h			;78e6
	ex af,af'		;78e7
	dec c			;78e8
	ld bc,0a0a0h		;78e9
	jr nz,l792eh		;78ec
	inc b			;78ee
	sbc a,l			;78ef
	call 0c04dh		;78f0
	add a,b			;78f3
	ld bc,00012h		;78f4
	inc b			;78f7
	ld d,b			;78f8
	ld b,b			;78f9
l78fah:
	ld bc,00004h		;78fa
	add a,d			;78fd
	add a,b			;78fe
	add a,c			;78ff
	inc bc			;7900
	add a,b			;7901
	sub (hl)		;7902
	ret nz			;7903
	ld b,b			;7904
	ld h,c			;7905
	jr c,$+25		;7906
	ld b,040h		;7908
	jr l78d0h		;790a
	ld (01f1ah),a		;790c
	adc a,l			;790f
	adc a,l			;7910
	add hl,bc		;7911
	ld bc,00002h		;7912
	and 018h		;7915
	ret pe			;7917
	and b			;7918
	nop			;7919
	rst 38h			;791a
	nop			;791b
	ld c,021h		;791c
	ld a,03eh		;791e
	dec a			;7920
	dec de			;7921
	ld (bc),a		;7922
	dec b			;7923
	ld de,02322h		;7924
	inc h			;7927
	inc d			;7928
	ld (de),a		;7929
	ld bc,0f080h		;792a
	add a,h			;792d
l792eh:
	call m,0bcfch		;792e
	ret c			;7931
	ld b,b			;7932
	and b			;7933
	adc a,b			;7934
	ld b,h			;7935
	call nz,02824h		;7936
	ld c,b			;7939
	add a,b			;793a
	ld (bc),a		;793b
	ld de,0411eh		;793c
	ld b,c			;793f
	ld b,e			;7940
	ld h,a			;7941
	ccf			;7942
	ld b,00ah		;7943
	inc de			;7945
	djnz l795ah		;7946
	ld a,(bc)		;7948
	add hl,bc		;7949
	nop			;794a
	ret nz			;794b
	adc a,b			;794c
	ld a,b			;794d
	add a,d			;794e
	add a,d			;794f
	jp nz,0fce6h		;7950
	ld h,b			;7953
	ld d,b			;7954
	ret z			;7955
	ex af,af'		;7956
	ld c,b			;7957
	ld d,b			;7958
	sub b			;7959
l795ah:
	nop			;795a
	nop			;795b
	ld c,021h		;795c
	ld a,03eh		;795e
	dec a			;7960
	dec de			;7961
	ld (bc),a		;7962
	dec b			;7963
	ld de,0090ah		;7964
	ld a,(bc)		;7967
	ld (de),a		;7968
	ld (08004h),hl		;7969
	ret p			;796c
	add a,h			;796d
	call m,0bcfch		;796e
	ret c			;7971
	ld b,b			;7972
	and b			;7973
	adc a,b			;7974
	ld d,b			;7975
	sub b			;7976
	ld d,b			;7977
	ld c,b			;7978
	ld b,h			;7979
	jr nz,$+4		;797a
	ld de,0411eh		;797c
	ld b,c			;797f
	ld b,e			;7980
	ld h,a			;7981
	ccf			;7982
	ld b,00ah		;7983
	rlca			;7985
	inc b			;7986
	dec b			;7987
	add hl,bc		;7988
	ld de,0c002h		;7989
	adc a,b			;798c
	ld a,b			;798d
	add a,d			;798e
	add a,d			;798f
	jp nz,0fce6h		;7990
	ld h,b			;7993
	ld d,b			;7994
	ret po			;7995
	jr nz,$-94		;7996
	sub b			;7998
	adc a,b			;7999
	add a,c			;799a
	ld b,b			;799b
	nop			;799c
	inc b			;799d
	nop			;799e
	adc a,b			;799f
	inc bc			;79a0
	ld b,00dh		;79a1
l79a3h:
	dec bc			;79a3
	dec bc			;79a4
	dec c			;79a5
	ld b,003h		;79a6
	ex af,af'		;79a8
	nop			;79a9
	adc a,b			;79aa
	ret nz			;79ab
	ld h,b			;79ac
	or b			;79ad
	ret nc			;79ae
	ret nc			;79af
	or b			;79b0
	ld h,b			;79b1
	ret nz			;79b2
	add hl,bc		;79b3
	nop			;79b4
	add a,(hl)		;79b5
	ld bc,00703h		;79b6
	rlca			;79b9
	inc bc			;79ba
	ld bc,0000ah		;79bb
	add a,(hl)		;79be
	add a,b			;79bf
	ret nz			;79c0
	ret po			;79c1
	ret po			;79c2
	ret nz			;79c3
	add a,b			;79c4
	rlca			;79c5
	nop			;79c6
	adc a,h			;79c7
	inc bc			;79c8
	ld c,018h		;79c9
	inc de			;79cb
	scf			;79cc
	daa			;79cd
	daa			;79ce
	scf			;79cf
	inc de			;79d0
	jr l79e1h		;79d1
	inc bc			;79d3
	inc b			;79d4
	nop			;79d5
	adc a,h			;79d6
	ret nz			;79d7
	ld (hl),b		;79d8
	jr l79a3h		;79d9
	call pe,0e4e4h		;79db
	call pe,018c8h		;79de
l79e1h:
	ld (hl),b		;79e1
	ret nz			;79e2
	dec b			;79e3
	nop			;79e4
	adc a,d			;79e5
	ld bc,00f07h		;79e6
	rrca			;79e9
	rra			;79ea
	rra			;79eb
	rrca			;79ec
	rrca			;79ed
	rlca			;79ee
	ld bc,00006h		;79ef
	adc a,d			;79f2
	add a,b			;79f3
	ret po			;79f4
	ret p			;79f5
	ret p			;79f6
	ret m			;79f7
	ret m			;79f8
	ret p			;79f9
	ret p			;79fa
	ret po			;79fb
	add a,b			;79fc
	inc bc			;79fd
l79feh:
	nop			;79fe
	add a,(hl)		;79ff
	rlca			;7a00
	inc e			;7a01
	jr nc,l7a67h		;7a02
	ld c,a			;7a04
	rst 8			;7a05
	inc b			;7a06
	sbc a,a			;7a07
	adc a,h			;7a08
	rst 8			;7a09
	ld c,a			;7a0a
	ld h,e			;7a0b
	jr nc,l7a2ah		;7a0c
	rlca			;7a0e
	ret po			;7a0f
	jr c,l7a1eh		;7a10
	add a,0f2h		;7a12
	di			;7a14
	inc b			;7a15
	ld sp,hl		;7a16
	adc a,h			;7a17
	di			;7a18
	jp p,00cc6h		;7a19
	jr c,l79feh		;7a1c
l7a1eh:
	nop			;7a1e
	inc bc			;7a1f
	rrca			;7a20
	rra			;7a21
	ccf			;7a22
	ccf			;7a23
	inc b			;7a24
	ld a,a			;7a25
	ld (bc),a		;7a26
	ccf			;7a27
	adc a,d			;7a28
	rra			;7a29
l7a2ah:
	rrca			;7a2a
	inc bc			;7a2b
	nop			;7a2c
	nop			;7a2d
	ret nz			;7a2e
	ret p			;7a2f
	ret m			;7a30
	call m,004fch		;7a31
	cp 002h			;7a34
	call m,0f884h		;7a36
	ret p			;7a39
	ret nz			;7a3a
	nop			;7a3b
	nop			;7a3c
	rst 38h			;7a3d
	rlca			;7a3e
	rra			;7a3f
	rrca			;7a40
	ld h,a			;7a41
	ld (hl),b		;7a42
	ei			;7a43
	or 0f5h			;7a44
	push af			;7a46
	or 0f3h			;7a47
	ld h,h			;7a49
	ld c,a			;7a4a
	rra			;7a4b
	rra			;7a4c
	rlca			;7a4d
	ret po			;7a4e
	ret m			;7a4f
	ret m			;7a50
	jp p,0cf26h		;7a51
	ld l,a			;7a54
	xor a			;7a55
	xor a			;7a56
	ld l,a			;7a57
	rst 18h			;7a58
	ld c,0e6h		;7a59
	ret p			;7a5b
	ret m			;7a5c
	ret po			;7a5d
	inc bc			;7a5e
	dec de			;7a5f
	dec a			;7a60
	ld a,l			;7a61
	ld a,h			;7a62
	ei			;7a63
	or 0f5h			;7a64
	push af			;7a66
l7a67h:
	add a,03bh		;7a67
	ld a,h			;7a69
	ld a,a			;7a6a
	ccf			;7a6b
	rra			;7a6c
	rlca			;7a6d
	ret po			;7a6e
	ret m			;7a6f
	call m,03efeh		;7a70
	call c,0af63h		;7a73
	xor a			;7a76
	ld l,a			;7a77
	rst 18h			;7a78
	ld a,0beh		;7a79
	cp h			;7a7b
	ret c			;7a7c
	ret nz			;7a7d
	rlca			;7a7e
	rra			;7a7f
	ccf			;7a80
	ld a,a			;7a81
	ld a,h			;7a82
	ei			;7a83
	or 005h			;7a84
	push af			;7a86
l7a87h:
	or 0fbh			;7a87
	ld a,h			;7a89
	ld a,(hl)		;7a8a
	ld a,01eh		;7a8b
	ld b,060h		;7a8d
	ld a,b			;7a8f
	ld a,h			;7a90
	ld a,(hl)		;7a91
	ld a,0dfh		;7a92
	ld l,a			;7a94
	xor a			;7a95
	and b			;7a96
	ld l,a			;7a97
	rst 18h			;7a98
	ld a,0feh		;7a99
	call m,0e0f8h		;7a9b
	rlca			;7a9e
	rra			;7a9f
	ccf			;7aa0
	ld a,a			;7aa1
	ld a,h			;7aa2
	dec sp			;7aa3
	add a,0f5h		;7aa4
	push af			;7aa6
	or 0fbh			;7aa7
	ld a,h			;7aa9
	ld a,l			;7aaa
	dec a			;7aab
	dec de			;7aac
	inc bc			;7aad
	ret nz			;7aae
	ret c			;7aaf
l7ab0h:
	cp h			;7ab0
	cp (hl)			;7ab1
	ld a,0dfh		;7ab2
	ld l,a			;7ab4
	xor a			;7ab5
	xor a			;7ab6
	ld h,e			;7ab7
	call c,0fe3eh		;7ab8
	call m,081f8h		;7abb
	ret po			;7abe
	nop			;7abf
	add a,h			;7ac0
	rlca			;7ac1
	rra			;7ac2
	inc bc			;7ac3
	inc a			;7ac4
	inc bc			;7ac5
	ld a,a			;7ac6
	sub d			;7ac7
	ret p			;7ac8
	xor 0eeh		;7ac9
	sbc a,05eh		;7acb
	ld e,a			;7acd
	rra			;7ace
	rrca			;7acf
	ld bc,0f080h		;7ad0
	ret m			;7ad3
	jp m,l7b7ah		;7ad4
	ld (hl),a		;7ad7
	ld (hl),a		;7ad8
	rrca			;7ad9
l7adah:
	inc bc			;7ada
	cp 0adh			;7adb
	inc a			;7add
	ret nz			;7ade
	ret m			;7adf
	ret po			;7ae0
	rlca			;7ae1
	rra			;7ae2
	ccf			;7ae3
	ld h,e			;7ae4
	dec c			;7ae5
	ld a,07eh		;7ae6
	ld a,(hl)		;7ae8
	ret m			;7ae9
	rst 30h			;7aea
	rst 28h			;7aeb
	ld l,a			;7aec
	ld h,a			;7aed
	scf			;7aee
	inc de			;7aef
	nop			;7af0
	nop			;7af1
	ret z			;7af2
	call pe,0f6e6h		;7af3
	rst 30h			;7af6
	rst 28h			;7af7
	rra			;7af8
	ld a,(hl)		;7af9
	ld a,(hl)		;7afa
	ld a,h			;7afb
	or b			;7afc
	add a,0fch		;7afd
	ret m			;7aff
	ret po			;7b00
	nop			;7b01
	rrca			;7b02
	ccf			;7b03
	ld a,a			;7b04
	ld a,a			;7b05
	pop bc			;7b06
	sbc a,(hl)		;7b07
	ld a,07ch		;7b08
	inc bc			;7b0a
	ld a,e			;7b0b
	adc a,b			;7b0c
	dec sp			;7b0d
	add hl,sp		;7b0e
	inc e			;7b0f
	ld b,060h		;7b10
	jr c,l7ab0h		;7b12
	call c,0de03h		;7b14
	xor c			;7b17
	ld a,07ch		;7b18
l7b1ah:
	ld a,c			;7b1a
	add a,e			;7b1b
	cp 0feh			;7b1c
	call m,000f0h		;7b1e
	rlca			;7b21
	ld bc,03f1eh		;7b22
	ld a,a			;7b25
	ld a,a			;7b26
	pop hl			;7b27
	sbc a,0deh		;7b28
	cp l			;7b2a
	cp l			;7b2b
	dec a			;7b2c
	dec a			;7b2d
	ld e,00fh		;7b2e
	inc bc			;7b30
	ret nz			;7b31
	ret p			;7b32
	ld a,b			;7b33
	cp h			;7b34
	cp h			;7b35
	cp l			;7b36
	cp l			;7b37
	ld a,e			;7b38
	ld a,e			;7b39
	add a,a			;7b3a
	cp 0feh			;7b3b
	call m,08078h		;7b3d
	ret po			;7b40
	nop			;7b41
	inc b			;7b42
	nop			;7b43
	add a,h			;7b44
	inc bc			;7b45
	rlca			;7b46
	ld c,00ch		;7b47
	inc bc			;7b49
	ex af,af'		;7b4a
	add a,d			;7b4b
	inc b			;7b4c
	inc bc			;7b4d
	rlca			;7b4e
	nop			;7b4f
	add a,h			;7b50
	ret nz			;7b51
	ret po			;7b52
	ld (hl),b		;7b53
	jr nc,$+5		;7b54
	djnz l7adah		;7b56
	jr nz,l7b1ah		;7b58
	add hl,bc		;7b5a
	nop			;7b5b
	add a,(hl)		;7b5c
	ld bc,00602h		;7b5d
	rlca			;7b60
	rlca			;7b61
	inc bc			;7b62
	ld a,(bc)		;7b63
	nop			;7b64
	add a,(hl)		;7b65
	add a,b			;7b66
	ld b,b			;7b67
	ld h,b			;7b68
	ret po			;7b69
	ret po			;7b6a
l7b6bh:
	ret nz			;7b6b
	inc b			;7b6c
	nop			;7b6d
	nop			;7b6e
	and b			;7b6f
	nop			;7b70
	ld bc,00203h		;7b71
	ld bc,00001h		;7b74
	nop			;7b77
	inc b			;7b78
	daa			;7b79
l7b7ah:
	ld c,c			;7b7a
	ld d,h			;7b7b
	dec l			;7b7c
	dec de			;7b7d
	add hl,bc		;7b7e
	inc c			;7b7f
	or h			;7b80
	sbc a,b			;7b81
	ld e,h			;7b82
	ld d,h			;7b83
	djnz $-14		;7b84
	and b			;7b86
	ret nz			;7b87
	ld h,b			;7b88
	jr z,l7b6bh		;7b89
	ld d,b			;7b8b
	ld a,b			;7b8c
	ld (0e070h),hl		;7b8d
	inc bc			;7b90
	nop			;7b91
	add a,c			;7b92
	ld bc,00006h		;7b93
	adc a,b			;7b96
	ld h,00bh		;7b97
	inc bc			;7b99
	rlca			;7b9a
	rlca			;7b9b
	inc bc			;7b9c
	ld b,b			;7b9d
	ld h,b			;7b9e
	inc bc			;7b9f
	ret po			;7ba0
	ld b,000h		;7ba1
	ld (bc),a		;7ba3
	add a,b			;7ba4
	xor d			;7ba5
	ret nz			;7ba6
	add a,b			;7ba7
	nop			;7ba8
	daa			;7ba9
	dec l			;7baa
	ld b,l			;7bab
	inc l			;7bac
	dec bc			;7bad
	add hl,bc		;7bae
	ld b,001h		;7baf
	nop			;7bb1
	ld bc,00203h		;7bb2
	ld bc,00001h		;7bb5
	nop			;7bb8
	and d			;7bb9
	ld h,h			;7bba
	ld b,h			;7bbb
	ret po			;7bbc
	ld h,b			;7bbd
	ld b,b			;7bbe
	xor b			;7bbf
	and h			;7bc0
	or h			;7bc1
	sbc a,b			;7bc2
	ld e,h			;7bc3
	ld d,h			;7bc4
	djnz $-14		;7bc5
	and b			;7bc7
	ret nz			;7bc8
	nop			;7bc9
	ld (bc),a		;7bca
	inc bc			;7bcb
	inc bc			;7bcc
	rlca			;7bcd
	rlca			;7bce
	ld bc,00004h		;7bcf
	add a,c			;7bd2
	ld bc,00005h		;7bd3
	ld (bc),a		;7bd6
	add a,b			;7bd7
	add a,a			;7bd8
	nop			;7bd9
	add a,b			;7bda
	add a,b			;7bdb
	ret nz			;7bdc
	ld b,b			;7bdd
	ld b,b			;7bde
	ld h,b			;7bdf
	inc bc			;7be0
	ret po			;7be1
	inc bc			;7be2
	nop			;7be3
	sub c			;7be4
	ld a,(de)		;7be5
	ld a,(bc)		;7be6
	inc sp			;7be7
	inc de			;7be8
	ld c,d			;7be9
	ld a,(bc)		;7bea
	dec h			;7beb
	inc de			;7bec
	daa			;7bed
	dec l			;7bee
	ld b,l			;7bef
	inc l			;7bf0
	dec bc			;7bf1
	add hl,bc		;7bf2
	ld b,001h		;7bf3
	and b			;7bf5
	inc bc			;7bf6
	ld b,b			;7bf7
	sbc a,l			;7bf8
	ret nz			;7bf9
	and b			;7bfa
	and b			;7bfb
	nop			;7bfc
	and d			;7bfd
	ld h,h			;7bfe
	ld b,h			;7bff
l7c00h:
	ret po			;7c00
sub_7c01h:
	ld h,b			;7c01
	ld b,b			;7c02
	xor b			;7c03
	and h			;7c04
	dec b			;7c05
	rlca			;7c06
	rrca			;7c07
	rrca			;7c08
	rlca			;7c09
	rlca			;7c0a
	ld (bc),a		;7c0b
	nop			;7c0c
	nop			;7c0d
	ld (bc),a		;7c0e
	inc bc			;7c0f
	inc bc			;7c10
	rlca			;7c11
	rlca			;7c12
	ld bc,00000h		;7c13
	inc bc			;7c16
	add a,b			;7c17
	dec b			;7c18
	nop			;7c19
	ld (bc),a		;7c1a
	add a,b			;7c1b
	add a,l			;7c1c
	nop			;7c1d
	add a,b			;7c1e
	add a,b			;7c1f
	ret nz			;7c20
	ld b,b			;7c21
	inc bc			;7c22
	nop			;7c23
	sbc a,l			;7c24
	jr l7c4bh		;7c25
	dec hl			;7c27
	inc b			;7c28
	ex af,af'		;7c29
	add hl,hl		;7c2a
	rra			;7c2b
	inc c			;7c2c
	ld (0ede4h),a		;7c2d
sub_7c30h:
	ld b,e			;7c30
	ld (hl),04dh		;7c31
	or c			;7c33
	ld l,h			;7c34
	dec hl			;7c35
	call nz,sub_69beh	;7c36
	add a,d			;7c39
	dec b			;7c3a
	ld hl,l78cch		;7c3b
	ld h,b			;7c3e
	add a,b			;7c3f
	ret nc			;7c40
	ld b,b			;7c41
	inc b			;7c42
	nop			;7c43
	add a,d			;7c44
	jr l7c4bh		;7c45
	inc b			;7c47
	nop			;7c48
	sub e			;7c49
	inc bc			;7c4a
l7c4bh:
	rrca			;7c4b
	rra			;7c4c
	ld e,03ch		;7c4d
	ex af,af'		;7c4f
	ld (bc),a		;7c50
	ld c,01fh		;7c51
	inc e			;7c53
	jr c,l7c96h		;7c54
	nop			;7c56
	nop			;7c57
	ld (bc),a		;7c58
	nop			;7c59
	nop			;7c5a
	add a,b			;7c5b
	add a,b			;7c5c
	dec b			;7c5d
	nop			;7c5e
	sbc a,l			;7c5f
	dec c			;7c60
	dec bc			;7c61
	rlca			;7c62
	add hl,de		;7c63
	ld b,06ch		;7c64
	ld c,l			;7c66
	or c			;7c67
	ld l,h			;7c68
	dec hl			;7c69
	call nz,sub_69beh	;7c6a
	add a,d			;7c6d
	ld c,h			;7c6e
	ccf			;7c6f
	ld h,(hl)		;7c70
	out (054h),a		;7c71
	call z,0ce36h		;7c73
	call c,0e0a0h		;7c76
	ld b,b			;7c79
	nop			;7c7a
	and b			;7c7b
	add a,b			;7c7c
	rlca			;7c7d
	nop			;7c7e
	adc a,b			;7c7f
	ld bc,00213h		;7c80
	ld c,01fh		;7c83
	inc e			;7c85
	jr c,l7cc8h		;7c86
	inc b			;7c88
	nop			;7c89
	add a,l			;7c8a
	add hl,de		;7c8b
	inc a			;7c8c
	jr c,l7cbfh		;7c8d
	ret nz			;7c8f
	ld a,(bc)		;7c90
	nop			;7c91
	sbc a,c			;7c92
	ld bc,0071dh		;7c93
l7c96h:
	add hl,bc		;7c96
	or (hl)			;7c97
	jr l7cf1h		;7c98
	call c,sub_663fh	;7c9a
	out (054h),a		;7c9d
	call z,0ce36h		;7c9f
	ld a,0e7h		;7ca2
	sub e			;7ca4
	ld (hl),067h		;7ca5
	ld c,b			;7ca7
	jr z,l7d20h		;7ca8
	jp nc,00a48h		;7caa
	nop			;7cad
	sub h			;7cae
	ld b,009h		;7caf
	rlca			;7cb1
	ex af,af'		;7cb2
	nop			;7cb3
	nop			;7cb4
	add hl,de		;7cb5
	inc a			;7cb6
	jr c,l7ce9h		;7cb7
	ret nz			;7cb9
	nop			;7cba
	nop			;7cbb
	jr $+126		;7cbc
	ret m			;7cbe
l7cbfh:
	ret m			;7cbf
	ret p			;7cc0
	ret nc			;7cc1
	add a,b			;7cc2
	ex af,af'		;7cc3
	nop			;7cc4
	sub b			;7cc5
	or d			;7cc6
	adc a,l			;7cc7
l7cc8h:
	ld (hl),0d4h		;7cc8
	inc hl			;7cca
	ld a,l			;7ccb
	sub (hl)		;7ccc
	ld b,c			;7ccd
	and b			;7cce
	add a,h			;7ccf
	inc sp			;7cd0
	ld e,006h		;7cd1
	ld bc,0020bh		;7cd3
	inc bc			;7cd6
	nop			;7cd7
	sbc a,d			;7cd8
	jr l7cffh		;7cd9
	call nc,01020h		;7cdb
	sub h			;7cde
	ret m			;7cdf
	jr nc,l7d2eh		;7ce0
	daa			;7ce2
	or a			;7ce3
	jp nz,0406ch		;7ce4
	ld (hl),b		;7ce7
	ret m			;7ce8
l7ce9h:
	jr c,$+30		;7ce9
	ld (bc),a		;7ceb
	nop			;7cec
	nop			;7ced
	ld b,b			;7cee
	nop			;7cef
	nop			;7cf0
l7cf1h:
	ld bc,00701h		;7cf1
	nop			;7cf4
	add a,d			;7cf5
	jr l7d18h		;7cf6
	inc b			;7cf8
	nop			;7cf9
	sub l			;7cfa
	ret nz			;7cfb
	ret p			;7cfc
	ret m			;7cfd
	ld a,b			;7cfe
l7cffh:
	inc a			;7cff
	djnz l7d34h		;7d00
	call m,0cb66h		;7d02
	ld hl,(l6c33h)		;7d05
	ld (hl),e		;7d08
	dec sp			;7d09
	dec b			;7d0a
	rlca			;7d0b
	ld (bc),a		;7d0c
	nop			;7d0d
	dec b			;7d0e
	ld bc,00003h		;7d0f
	sub l			;7d12
	or b			;7d13
	ret nc			;7d14
	ret po			;7d15
	sbc a,b			;7d16
	ld h,b			;7d17
l7d18h:
	ld (hl),0b2h		;7d18
	adc a,l			;7d1a
	ld (hl),0d4h		;7d1b
	inc hl			;7d1d
	ld a,l			;7d1e
	sub (hl)		;7d1f
l7d20h:
	ld b,c			;7d20
	nop			;7d21
	nop			;7d22
	sbc a,b			;7d23
	inc a			;7d24
	inc e			;7d25
	inc c			;7d26
	inc bc			;7d27
	rrca			;7d28
	nop			;7d29
	sub h			;7d2a
	add a,b			;7d2b
	ret z			;7d2c
	ld b,b			;7d2d
l7d2eh:
	ld (hl),b		;7d2e
	ret m			;7d2f
	jr c,$+30		;7d30
	ld (bc),a		;7d32
l7d33h:
	nop			;7d33
l7d34h:
	nop			;7d34
	ld a,h			;7d35
	rst 20h			;7d36
	ret			;7d37
	ld l,h			;7d38
	and 012h		;7d39
	inc d			;7d3b
	ld l,(hl)		;7d3c
	ld c,e			;7d3d
	ld (de),a		;7d3e
	rlca			;7d3f
	nop			;7d40
	sub a			;7d41
	add a,b			;7d42
	cp b			;7d43
	ret po			;7d44
	sub b			;7d45
	ld l,l			;7d46
	jr l7d33h		;7d47
	dec sp			;7d49
	call m,0cb66h		;7d4a
	ld hl,(l6c33h)		;7d4d
	ld (hl),e		;7d50
	nop			;7d51
	jr $+64			;7d52
	rra			;7d54
	rra			;7d55
	rrca			;7d56
	dec bc			;7d57
	ld bc,0000ch		;7d58
	adc a,e			;7d5b
	ld h,b			;7d5c
	sub b			;7d5d
	ret po			;7d5e
	djnz l7d61h		;7d5f
l7d61h:
	nop			;7d61
	sbc a,b			;7d62
	inc a			;7d63
	inc e			;7d64
	inc c			;7d65
	inc bc			;7d66
	ld b,000h		;7d67
	sbc a,d			;7d69
	add a,(hl)		;7d6a
	ld a,b			;7d6b
	adc a,(hl)		;7d6c
	inc sp			;7d6d
	defb 0fdh,002h,0cch ;illegal sequence	;7d6e
	or c			;7d71
	ld (00008h),hl		;7d72
	nop			;7d75
	add a,b			;7d76
	ld h,c			;7d77
	ld (bc),a		;7d78
	nop			;7d79
	in a,(07ch)		;7d7a
	sub e			;7d7c
	defb 0edh ;next byte illegal after ed	;7d7d
	adc a,d			;7d7e
	jp p,0005ch		;7d7f
	ret nc			;7d82
	jr nz,l7d8dh		;7d83
	nop			;7d85
	add a,l			;7d86
	ld (hl),b		;7d87
	call m,0fc7eh		;7d88
	jr nc,l7d97h		;7d8b
l7d8dh:
	nop			;7d8d
	add a,l			;7d8e
	inc bc			;7d8f
	ld l,(hl)		;7d90
	ld a,07ch		;7d91
	inc c			;7d93
	ld b,000h		;7d94
	adc a,(hl)		;7d96
l7d97h:
	add a,b			;7d97
	ld h,c			;7d98
	ld (bc),a		;7d99
	nop			;7d9a
	in a,(07ch)		;7d9b
	sub e			;7d9d
	defb 0edh ;next byte illegal after ed	;7d9e
	adc a,d			;7d9f
	jp p,0005ch		;7da0
	ret nc			;7da3
	jr nz,l7da9h		;7da4
	nop			;7da6
	adc a,b			;7da7
	or b			;7da8
l7da9h:
	ld h,b			;7da9
	call m,03586h		;7daa
	rst 0			;7dad
	ld l,h			;7dae
	jr nc,l7dbdh		;7daf
	nop			;7db1
	add a,l			;7db2
	inc bc			;7db3
	ld l,(hl)		;7db4
	ld a,07ch		;7db5
	inc c			;7db7
	ld a,(bc)		;7db8
	nop			;7db9
	add a,h			;7dba
	ld a,b			;7dbb
	ret m			;7dbc
l7dbdh:
	jr c,l7dcfh		;7dbd
	add hl,bc		;7dbf
	nop			;7dc0
	adc a,b			;7dc1
	or b			;7dc2
	ld h,b			;7dc3
	call m,03586h		;7dc4
	rst 0			;7dc7
	ld l,h			;7dc8
	jr nc,l7dd2h		;7dc9
	nop			;7dcb
	adc a,(hl)		;7dcc
	inc b			;7dcd
	nop			;7dce
l7dcfh:
	ld c,b			;7dcf
	ld a,(de)		;7dd0
	rst 28h			;7dd1
l7dd2h:
	cp e			;7dd2
	ld hl,0446eh		;7dd3
	exx			;7dd6
	cpl			;7dd7
	inc d			;7dd8
	ld c,b			;7dd9
	jr nc,l7de2h		;7dda
	nop			;7ddc
	add a,h			;7ddd
	ld a,b			;7dde
	ret m			;7ddf
	jr c,l7df2h		;7de0
l7de2h:
	dec c			;7de2
	nop			;7de3
	adc a,d			;7de4
	inc b			;7de5
	ld e,01fh		;7de6
	ccf			;7de8
	ld h,010h		;7de9
	nop			;7deb
	jr nz,l7deeh		;7dec
l7deeh:
	nop			;7dee
	nop			;7def
	rst 38h			;7df0
	nop			;7df1
l7df2h:
	ld bc,0bbbah		;7df2
	ld (bc),a		;7df5
	inc b			;7df6
	jr nc,l7e6ah		;7df7
	ld h,c			;7df9
	jr nc,$+6		;7dfa
	ld (bc),a		;7dfc
	cp d			;7dfd
	cp e			;7dfe
	ld bc,00000h		;7dff
	adc a,b			;7e02
	rst 38h			;7e03
	rst 38h			;7e04
	ld a,(hl)		;7e05
	ld e,l			;7e06
	rst 8			;7e07
	rst 0			;7e08
	add a,a			;7e09
	rst 8			;7e0a
	ld a,d			;7e0b
	dec b			;7e0c
	ei			;7e0d
	rst 38h			;7e0e
	adc a,b			;7e0f
	ld a,a			;7e10
	nop			;7e11
	nop			;7e12
	ld b,l			;7e13
	rst 38h			;7e14
	ld b,002h		;7e15
	nop			;7e17
	ld l,c			;7e18
	jr l7e1bh		;7e19
l7e1bh:
	ld (bc),a		;7e1b
	ld b,045h		;7e1c
	rst 38h			;7e1e
	ld bc,03f00h		;7e1f
	ld (hl),a		;7e22
	sbc a,b			;7e23
	ei			;7e24
	dec b			;7e25
	ld a,a			;7e26
	rrca			;7e27
	and a			;7e28
	ld h,a			;7e29
	rrca			;7e2a
	ld (hl),l		;7e2b
	ld a,a			;7e2c
	rst 38h			;7e2d
	sbc a,b			;7e2e
	rst 38h			;7e2f
	ld a,a			;7e30
	nop			;7e31
	ld bc,0bbbah		;7e32
	ld (bc),a		;7e35
	inc b			;7e36
	ld b,00eh		;7e37
	inc c			;7e39
	ld b,004h		;7e3a
	ld (bc),a		;7e3c
	cp d			;7e3d
	cp e			;7e3e
	ld bc,00000h		;7e3f
	adc a,b			;7e42
	rst 38h			;7e43
	rst 38h			;7e44
	ld a,(hl)		;7e45
	ld e,l			;7e46
	rrca			;7e47
	rlca			;7e48
	rlca			;7e49
	rrca			;7e4a
	ld a,d			;7e4b
	dec b			;7e4c
	ei			;7e4d
	rst 38h			;7e4e
	adc a,b			;7e4f
	ld a,a			;7e50
	nop			;7e51
	nop			;7e52
	ld b,l			;7e53
	rst 38h			;7e54
	ld b,002h		;7e55
	nop			;7e57
	dec c			;7e58
	inc bc			;7e59
	nop			;7e5a
	ld (bc),a		;7e5b
	ld b,045h		;7e5c
	rst 38h			;7e5e
	ld bc,03f00h		;7e5f
	ld (hl),a		;7e62
	sbc a,b			;7e63
	ei			;7e64
	dec b			;7e65
	ld a,a			;7e66
	rrca			;7e67
	rlca			;7e68
	rlca			;7e69
l7e6ah:
	rrca			;7e6a
	ld (hl),l		;7e6b
	ld a,a			;7e6c
	rst 38h			;7e6d
	sbc a,b			;7e6e
	rst 38h			;7e6f
	rst 38h			;7e70
	ld a,a			;7e71
	nop			;7e72
	ld de,0ffffh		;7e73
	ld a,(hl)		;7e76
	cp d			;7e77
	di			;7e78
	ex (sp),hl		;7e79
	pop hl			;7e7a
	di			;7e7b
	ld e,(hl)		;7e7c
	and b			;7e7d
	rst 18h			;7e7e
	rst 38h			;7e7f
	ld de,000feh		;7e80
	add a,b			;7e83
	ld e,l			;7e84
	defb 0ddh,040h,020h ;illegal sequence	;7e85
	inc c			;7e88
	adc a,(hl)		;7e89
	add a,(hl)		;7e8a
	inc c			;7e8b
	jr nz,l7eceh		;7e8c
	ld e,l			;7e8e
	defb 0ddh,080h,000h ;illegal sequence	;7e8f
	call m,019eeh		;7e92
	rst 18h			;7e95
	and b			;7e96
	cp 0f0h			;7e97
	push hl			;7e99
	and 0f0h		;7e9a
	xor (hl)		;7e9c
	cp 0ffh			;7e9d
	add hl,de		;7e9f
	rst 38h			;7ea0
	cp 000h			;7ea1
	nop			;7ea3
	and d			;7ea4
	rst 38h			;7ea5
	ld h,b			;7ea6
	ld b,b			;7ea7
	nop			;7ea8
	sub (hl)		;7ea9
	jr l7each		;7eaa
l7each:
	ld b,b			;7eac
	ld h,b			;7ead
	and d			;7eae
	rst 38h			;7eaf
	add a,b			;7eb0
	nop			;7eb1
	nop			;7eb2
	ld de,0ffffh		;7eb3
	ld a,(hl)		;7eb6
	cp d			;7eb7
	ret p			;7eb8
	ret po			;7eb9
	ret po			;7eba
	ret p			;7ebb
	ld e,(hl)		;7ebc
	and b			;7ebd
	rst 18h			;7ebe
	rst 38h			;7ebf
	ld de,000feh		;7ec0
	add a,b			;7ec3
	ld e,l			;7ec4
	defb 0ddh,040h,020h ;illegal sequence	;7ec5
	ld h,b			;7ec8
	ld (hl),b		;7ec9
	jr nc,l7f2ch		;7eca
	jr nz,l7f0eh		;7ecc
l7eceh:
	ld e,l			;7ece
	defb 0ddh,080h,000h ;illegal sequence	;7ecf
	call m,019eeh		;7ed2
	rst 18h			;7ed5
	and b			;7ed6
	cp 0f0h			;7ed7
	ret po			;7ed9
	ret po			;7eda
	ret p			;7edb
	xor (hl)		;7edc
	cp 0ffh			;7edd
	add hl,de		;7edf
	rst 38h			;7ee0
	cp 000h			;7ee1
	nop			;7ee3
	and d			;7ee4
	rst 38h			;7ee5
	ld h,b			;7ee6
	ld b,b			;7ee7
	nop			;7ee8
	or b			;7ee9
	ret nz			;7eea
	nop			;7eeb
	ld b,b			;7eec
	ld h,b			;7eed
	and d			;7eee
	rst 38h			;7eef
	add a,d			;7ef0
	add a,b			;7ef1
	nop			;7ef2
	nop			;7ef3
	sbc a,e			;7ef4
	nop			;7ef5
	ld (bc),a		;7ef6
	inc c			;7ef7
	rrca			;7ef8
	rst 38h			;7ef9
	inc h			;7efa
	ccf			;7efb
	ld bc,0bf83h		;7efc
	ld c,a			;7eff
	scf			;7f00
	dec de			;7f01
	inc b			;7f02
	inc bc			;7f03
	nop			;7f04
	rst 38h			;7f05
	dec d			;7f06
	or l			;7f07
	rst 38h			;7f08
	rst 38h			;7f09
	ld c,c			;7f0a
	rst 38h			;7f0b
	rst 38h			;7f0c
	dec d			;7f0d
l7f0eh:
	jp pe,003eah		;7f0e
	cp 09bh			;7f11
	inc d			;7f13
	jp pe,00100h		;7f14
	inc bc			;7f17
	rst 38h			;7f18
	call m,02c3fh		;7f19
	rst 38h			;7f1c
	ld a,(hl)		;7f1d
l7f1eh:
	call nz,03878h		;7f1e
	inc e			;7f21
	rlca			;7f22
	inc bc			;7f23
	nop			;7f24
	ld d,l			;7f25
	jp pe,0ffffh		;7f26
	ld c,c			;7f29
	rst 38h			;7f2a
	ld c,c			;7f2b
l7f2ch:
	rst 38h			;7f2c
	ex de,hl		;7f2d
	dec b			;7f2e
	dec d			;7f2f
	add a,d			;7f30
	rst 38h			;7f31
	jp pe,0c000h		;7f32
	dec b			;7f35
	dec l			;7f36
	ld (de),a		;7f37
	ld l,l			;7f38
	ld (de),a		;7f39
	cp a			;7f3a
	ret			;7f3b
l7f3ch:
	or (hl)			;7f3c
	ld b,0cfh		;7f3d
sub_7f3fh:
	rrca			;7f3f
	jp p,0529dh		;7f40
	ld (0801fh),a		;7f43
	ret po			;7f46
	nop			;7f47
	call m,0c03ch		;7f48
	ccf			;7f4b
	in a,(0dbh)		;7f4c
	rst 38h			;7f4e
	ret nz			;7f4f
	inc a			;7f50
	ret p			;7f51
	inc c			;7f52
	ld (hl),b		;7f53
	add a,b			;7f54
	ld a,(de)		;7f55
	ld (de),a		;7f56
	dec l			;7f57
	ld (de),a		;7f58
	ld a,a			;7f59
	ld c,a			;7f5a
	rst 38h			;7f5b
	or b			;7f5c
	or b			;7f5d
	ld sp,hl		;7f5e
	rst 38h			;7f5f
	rst 38h			;7f60
	jp p,03f7fh		;7f61
	rra			;7f64
	nop			;7f65
	nop			;7f66
	ret p			;7f67
	nop			;7f68
	call m,0ffc0h		;7f69
	dec de			;7f6c
	nop			;7f6d
	ccf			;7f6e
	ret nz			;7f6f
	call m,0fc0ch		;7f70
	ret p			;7f73
	add a,b			;7f74
	nop			;7f75
	inc bc			;7f76
	nop			;7f77
	adc a,e			;7f78
	inc sp			;7f79
	jr nc,l7f3ch		;7f7a
	ld bc,0031bh		;7f7c
	ld bc,08004h		;7f7f
	jr nc,l7f8bh		;7f82
	dec b			;7f84
	nop			;7f85
	adc a,e			;7f86
	call z,0030ch		;7f87
	add a,b			;7f8a
l7f8bh:
	ret c			;7f8b
	ret nz			;7f8c
	add a,b			;7f8d
	jr nz,l7f91h		;7f8e
	inc c			;7f90
l7f91h:
	ret po			;7f91
	inc bc			;7f92
	nop			;7f93
	ld (bc),a		;7f94
	rlca			;7f95
	sbc a,l			;7f96
	nop			;7f97
	add a,e			;7f98
	ld b,00ch		;7f99
	add hl,de		;7f9b
	jr l7faah		;7f9c
	jp nz,00333h		;7f9e
	nop			;7fa1
	rlca			;7fa2
	nop			;7fa3
	nop			;7fa4
	ret po			;7fa5
	ret po			;7fa6
	nop			;7fa7
	pop bc			;7fa8
	ld h,b			;7fa9
l7faah:
	jr nc,$-102		;7faa
	jr l7fdeh		;7fac
	ld b,e			;7fae
	call z,000c0h		;7faf
	ret po			;7fb2
	nop			;7fb3
	nop			;7fb4
	ret nz			;7fb5
	jr nc,$+81		;7fb6
	or d			;7fb8
	ld c,l			;7fb9
	ld (0091eh),a		;7fba
	ld a,(bc)		;7fbd
	inc b			;7fbe
	dec bc			;7fbf
	ld de,0c62dh		;7fc0
	ld (hl),h		;7fc3
	ld a,b			;7fc4
	djnz $+54		;7fc5
	ld l,b			;7fc7
	push af			;7fc8
	ld e,d			;7fc9
	or a			;7fca
	push de			;7fcb
	ld c,(hl)		;7fcc
	sbc a,h			;7fcd
	ld (hl),h		;7fce
	ld l,h			;7fcf
	sub h			;7fd0
	ld d,h			;7fd1
	ld l,d			;7fd2
	ld hl,(00a15h)		;7fd3
	nop			;7fd6
	jr nc,$+127		;7fd7
	ld a,a			;7fd9
	ld c,a			;7fda
	daa			;7fdb
	rra			;7fdc
	dec c			;7fdd
l7fdeh:
	rrca			;7fde
	rla			;7fdf
	ccf			;7fe0
	ld e,a			;7fe1
	ld a,(hl)		;7fe2
	call m,03058h		;7fe3
	jr c,$+94		;7fe6
	jp m,06de7h		;7fe8
	ccf			;7feb
	cp (hl)			;7fec
	call m,0f2fah		;7fed
	jp m,09dbah		;7ff0
	ld e,l			;7ff3
	dec sp			;7ff4
	ld d,000h		;7ff5
	cp d			;7ff7
	nop			;7ff8
	ld bc,03f09h		;7ff9
	ret			;7ffc
sub_7ffdh:
	cpl			;7ffd
	nop			;7ffe
	dec sp			;7fff

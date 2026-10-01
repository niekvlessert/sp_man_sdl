; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank12_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank12.bin

	org 06000h

	ld (00000h),hl		;6000
	nop			;6003
	nop			;6004
	nop			;6005
	nop			;6006
	nop			;6007
	nop			;6008
	nop			;6009
	nop			;600a
	nop			;600b
	nop			;600c
	nop			;600d
	nop			;600e
	nop			;600f
	nop			;6010
	nop			;6011
	nop			;6012
	nop			;6013
	nop			;6014
	nop			;6015
	nop			;6016
	nop			;6017
	nop			;6018
	nop			;6019
	nop			;601a
	nop			;601b
	nop			;601c
	nop			;601d
	nop			;601e
	nop			;601f
	ld bc,00b00h		;6020
	inc b			;6023
	inc c			;6024
	nop			;6025
	add hl,de		;6026
	nop			;6027
	add hl,de		;6028
	nop			;6029
	ld (l6501h),a		;602a
	ld (bc),a		;602d
	adc a,(hl)		;602e
	nop			;602f
	jr l6032h		;6030
l6032h:
	and (hl)		;6032
	ld b,b			;6033
	and (hl)		;6034
	ld b,b			;6035
	ld b,h			;6036
	add a,b			;6037
	adc a,l			;6038
	nop			;6039
	adc a,c			;603a
	nop			;603b
	dec bc			;603c
	nop			;603d
	ld a,(de)		;603e
	nop			;603f
	ld (hl),000h		;6040
	ld b,h			;6042
	nop			;6043
	add a,h			;6044
	nop			;6045
	adc a,b			;6046
	nop			;6047
	adc a,b			;6048
	nop			;6049
	ld de,01100h		;604a
	nop			;604d
	ld hl,02300h		;604e
	nop			;6051
	add a,l			;6052
	ld (bc),a		;6053
	add a,d			;6054
	nop			;6055
	add a,d			;6056
	nop			;6057
	add a,b			;6058
	nop			;6059
	add a,b			;605a
	nop			;605b
	nop			;605c
	nop			;605d
	nop			;605e
	nop			;605f
	nop			;6060
	nop			;6061
	dec hl			;6062
	rra			;6063
	dec hl			;6064
	rra			;6065
	dec hl			;6066
	rra			;6067
	ld l,a			;6068
	rra			;6069
	ld c,a			;606a
	ccf			;606b
	ld c,a			;606c
	ccf			;606d
	ld e,a			;606e
	ccf			;606f
	rst 18h			;6070
	ccf			;6071
	cp 0ffh			;6072
	defb 0fdh,0feh,0fch ;illegal sequence	;6074
	rst 38h			;6077
	cp 0ffh			;6078
	cp 0ffh			;607a
	rst 38h			;607c
	rst 38h			;607d
	rst 38h			;607e
	rst 38h			;607f
	rst 38h			;6080
	rst 38h			;6081
	or (hl)			;6082
	ld h,b			;6083
	ld e,h			;6084
	ret po			;6085
	xor l			;6086
	ld b,b			;6087
	cp b			;6088
	ld b,b			;6089
	inc (hl)		;608a
	ret z			;608b
	ld e,b			;608c
	ret po			;608d
	pop de			;608e
	ret po			;608f
	and b			;6090
	ret p			;6091
	ld c,d			;6092
	dec a			;6093
	sbc a,d			;6094
	ld a,l			;6095
	sbc a,l			;6096
	ld a,a			;6097
	cp d			;6098
	ld a,l			;6099
	ld l,b			;609a
	ccf			;609b
	cp (hl)			;609c
	ld a,c			;609d
	ld (hl),0f9h		;609e
	add a,l			;60a0
	ld a,b			;60a1
	jp m,0f9fch		;60a2
	cp 0f8h			;60a5
	rst 38h			;60a7
	defb 0fdh,0feh,0feh ;illegal sequence	;60a8
	rst 38h			;60ab
	defb 0fdh,0ffh,0fbh ;illegal sequence	;60ac
	rst 38h			;60af
	ld sp,hl		;60b0
	rst 38h			;60b1
	and b			;60b2
	ret nz			;60b3
l60b4h:
	ld (0cec0h),a		;60b4
	ret p			;60b7
	ld (hl),h		;60b8
	ret m			;60b9
	ld a,d			;60ba
	call m,0feddh		;60bb
	jp po,0e4ffh		;60be
	ei			;60c1
	rla			;60c2
	rrca			;60c3
	rla			;60c4
	rrca			;60c5
l60c6h:
	jr nc,l60d7h		;60c6
	rrca			;60c8
	nop			;60c9
	inc b			;60ca
	inc bc			;60cb
	add a,a			;60cc
	inc bc			;60cd
	adc a,e			;60ce
	rlca			;60cf
	ld b,l			;60d0
	add a,e			;60d1
	djnz l60b4h		;60d2
	jr z,l60c6h		;60d4
	ex af,af'		;60d6
l60d7h:
	ret p			;60d7
	inc d			;60d8
	ret m			;60d9
	call pe,05810h		;60da
	add a,b			;60dd
	ld c,c			;60de
	add a,b			;60df
	dec hl			;60e0
	ret nz			;60e1
	and e			;60e2
	ld a,h			;60e3
	sub 028h		;60e4
	jp z,0a134h		;60e6
	ld e,(hl)		;60e9
	call p,0ca0fh		;60ea
	scf			;60ed
	or l			;60ee
	ld a,e			;60ef
	ld d,h			;60f0
	dec sp			;60f1
	adc a,d			;60f2
	rlca			;60f3
	add a,h			;60f4
	inc bc			;60f5
	call nz,04503h		;60f6
	inc bc			;60f9
	jp po,0a201h		;60fa
	ld bc,00091h		;60fd
	cp b			;6100
	nop			;6101
	add a,c			;6102
	nop			;6103
	adc a,c			;6104
	nop			;6105
	adc a,c			;6106
	nop			;6107
	ld b,b			;6108
	add a,b			;6109
	ld b,d			;610a
	add a,b			;610b
	and c			;610c
	ret nz			;610d
	ld d,b			;610e
	ret po			;610f
	xor b			;6110
	ld (hl),b		;6111
	ld hl,03000h		;6112
	nop			;6115
	sbc a,b			;6116
	nop			;6117
	adc a,(hl)		;6118
	nop			;6119
	ld b,e			;611a
	nop			;611b
	djnz l611eh		;611c
l611eh:
	ld b,000h		;611e
	ld h,b			;6120
	nop			;6121
	add a,b			;6122
	nop			;6123
	ld h,b			;6124
	nop			;6125
	dec c			;6126
	nop			;6127
l6128h:
	nop			;6128
	nop			;6129
	nop			;612a
	nop			;612b
	ret nz			;612c
	nop			;612d
	jr c,l6130h		;612e
l6130h:
	rst 0			;6130
	nop			;6131
	inc c			;6132
	nop			;6133
	ld h,b			;6134
	nop			;6135
	nop			;6136
	nop			;6137
	nop			;6138
	nop			;6139
	nop			;613a
	nop			;613b
	nop			;613c
	nop			;613d
	ld b,b			;613e
	nop			;613f
	nop			;6140
	nop			;6141
	jr nz,l6144h		;6142
l6144h:
	add a,b			;6144
	nop			;6145
	nop			;6146
	nop			;6147
	ld bc,00200h		;6148
	ld bc,00304h		;614b
	dec de			;614e
	inc b			;614f
	ld h,h			;6150
	jr l6188h		;6151
	nop			;6153
	ld l,b			;6154
	nop			;6155
	ret nc			;6156
	nop			;6157
	ld (hl),b		;6158
	add a,b			;6159
	jp nz,08000h		;615a
	nop			;615d
	inc b			;615e
	nop			;615f
	inc b			;6160
	nop			;6161
	ld b,e			;6162
	nop			;6163
	ld b,(hl)		;6164
	nop			;6165
	add a,(hl)		;6166
	nop			;6167
	ld a,(bc)		;6168
	inc b			;6169
	ld (0640ch),a		;616a
	jr $-90			;616d
	jr l6199h		;616f
	djnz l6173h		;6171
l6173h:
	nop			;6173
	jr nz,l6186h		;6174
	jr nz,l6188h		;6176
	ld c,b			;6178
	jr nc,l61c3h		;6179
	jr nc,l6128h		;617b
	djnz l61b2h		;617d
	nop			;617f
	ld (hl),d		;6180
	nop			;6181
	rst 18h			;6182
	ccf			;6183
	adc a,a			;6184
	ld a,a			;6185
l6186h:
	cp a			;6186
	ld a,a			;6187
l6188h:
	adc a,a			;6188
	ld a,a			;6189
	ld e,a			;618a
	cpl			;618b
	ld d,a			;618c
	cpl			;618d
	ld c,e			;618e
	scf			;618f
	ld h,l			;6190
	rra			;6191
	ret c			;6192
	ret po			;6193
	adc a,(hl)		;6194
	ret po			;6195
	rst 10h			;6196
	ret pe			;6197
l6198h:
	add a,e			;6198
l6199h:
	call m,0fea9h		;6199
	dec c			;619c
	cp 06dh			;619d
	sbc a,(hl)		;619f
	sub b			;61a0
	rrca			;61a1
	call z,05a31h		;61a2
	ld hl,00730h		;61a5
	djnz $+9		;61a8
	add a,d			;61aa
	ld bc,0019ah		;61ab
	add a,d			;61ae
	ld bc,000c1h		;61af
l61b2h:
	ld a,a			;61b2
l61b3h:
	rst 38h			;61b3
	ld a,a			;61b4
	rst 38h			;61b5
	rst 38h			;61b6
	rst 38h			;61b7
	cp a			;61b8
	rst 38h			;61b9
	ld e,a			;61ba
	cp a			;61bb
	ld e,a			;61bc
	cp a			;61bd
	xor a			;61be
	rst 18h			;61bf
	cpl			;61c0
	rst 18h			;61c1
	di			;61c2
l61c3h:
	call m,0fffah		;61c3
	jp pe,0f7ffh		;61c6
	rst 38h			;61c9
	rst 38h			;61ca
	rst 38h			;61cb
	rst 38h			;61cc
	rst 38h			;61cd
	rst 38h			;61ce
	rst 38h			;61cf
	rst 38h			;61d0
	rst 38h			;61d1
	ld c,l			;61d2
	add a,e			;61d3
	or l			;61d4
	jp 0916ah		;61d5
	ld e,c			;61d8
	and b			;61d9
	inc e			;61da
	ret po			;61db
	call po,0aaf8h		;61dc
	call p,0ba45h		;61df
	and e			;61e2
	ret nz			;61e3
	ld b,c			;61e4
	add a,b			;61e5
	ld b,b			;61e6
	add a,b			;61e7
	ld (0d1c0h),hl		;61e8
	jr nz,$+46		;61eb
	djnz l6201h		;61ed
	inc c			;61ef
	ld a,(bc)		;61f0
	inc b			;61f1
	sub (hl)		;61f2
	ld a,c			;61f3
	ld h,e			;61f4
	inc e			;61f5
	dec e			;61f6
	ld (bc),a		;61f7
	ld (bc),a		;61f8
	ld bc,00081h		;61f9
	ld b,h			;61fc
	add a,b			;61fd
	cp d			;61fe
	ld b,b			;61ff
	adc a,b			;6200
l6201h:
	ld (hl),b		;6201
	call z,0e600h		;6202
	nop			;6205
	ld h,e			;6206
l6207h:
	nop			;6207
	pop de			;6208
	jr nz,l61b3h		;6209
	djnz $-7		;620b
	jr c,l6198h		;620d
	halt			;620f
	sub a			;6210
	ld h,b			;6211
	ld b,(hl)		;6212
	jr c,l6246h		;6213
	ld c,08eh		;6215
	ld bc,000c3h		;6217
	ld (hl),b		;621a
	nop			;621b
	inc c			;621c
	nop			;621d
	rlca			;621e
	nop			;621f
	add a,c			;6220
	nop			;6221
	inc e			;6222
	nop			;6223
	nop			;6224
	nop			;6225
	ret nz			;6226
	nop			;6227
	cp b			;6228
	ld b,b			;6229
	ld a,a			;622a
	nop			;622b
	nop			;622c
	nop			;622d
	nop			;622e
	nop			;622f
	ret po			;6230
	nop			;6231
	nop			;6232
	nop			;6233
	nop			;6234
	nop			;6235
	nop			;6236
	nop			;6237
	nop			;6238
	nop			;6239
	rlca			;623a
	nop			;623b
	ret m			;623c
	nop			;623d
	nop			;623e
l623fh:
	nop			;623f
	ld bc,00100h		;6240
	nop			;6243
	ld b,001h		;6244
l6246h:
	add hl,de		;6246
	ld b,0fch		;6247
	nop			;6249
	add a,b			;624a
	nop			;624b
	nop			;624c
	nop			;624d
	djnz l6250h		;624e
l6250h:
	ret nz			;6250
	nop			;6251
	sbc a,b			;6252
	ld h,b			;6253
	ld h,b			;6254
	add a,b			;6255
	add a,b			;6256
	nop			;6257
	nop			;6258
	nop			;6259
	nop			;625a
	nop			;625b
	jr l625eh		;625c
l625eh:
	jr nc,l6260h		;625e
l6260h:
	ld h,c			;6260
	nop			;6261
	inc c			;6262
	nop			;6263
	jr l6266h		;6264
l6266h:
	jr z,l6278h		;6266
	jr z,l627ah		;6268
	ld d,c			;626a
	jr nz,$-28		;626b
	ld bc,003c5h		;626d
	adc a,d			;6270
	rlca			;6271
	ld c,b			;6272
	jr nc,l623fh		;6273
	jr nc,l6207h		;6275
	ld h,b			;6277
l6278h:
	sub c			;6278
	ld h,b			;6279
l627ah:
	dec h			;627a
	ret nz			;627b
	xor d			;627c
	pop bc			;627d
	ld l,d			;627e
	add a,a			;627f
	call nc,0160fh		;6280
	jr nz,l62ebh		;6283
	nop			;6285
	xor 000h		;6286
	ld e,d			;6288
	add a,h			;6289
	ld d,h			;628a
	adc a,b			;628b
	inc h			;628c
	sbc a,b			;628d
	call po,0db18h		;628e
	inc a			;6291
	sub d			;6292
	ld l,l			;6293
	cp b			;6294
	ld b,a			;6295
	ld d,(hl)		;6296
	dec sp			;6297
	ld d,h			;6298
	dec sp			;6299
	ld c,l			;629a
	inc sp			;629b
	ld c,e			;629c
	scf			;629d
	xor e			;629e
	ld (hl),a		;629f
	ld (hl),a		;62a0
	rst 38h			;62a1
	cp 0ffh			;62a2
	defb 0fdh,0feh,0fch ;illegal sequence	;62a4
	rst 38h			;62a7
	jp m,0fafdh		;62a8
	defb 0fdh,0fbh,0fch ;illegal sequence	;62ab
	defb 0fdh,0feh,0fch ;illegal sequence	;62ae
	rst 38h			;62b1
	call p,0ac0fh		;62b2
	ld b,a			;62b5
	rst 10h			;62b6
	call pe,0ecd2h		;62b7
	ld a,(02ec4h)		;62ba
	ret nc			;62bd
	ex (sp),hl		;62be
	inc e			;62bf
l62c0h:
	ld l,e			;62c0
	sbc a,h			;62c1
	ld h,c			;62c2
	add a,b			;62c3
	or d			;62c4
	pop bc			;62c5
	ld d,c			;62c6
	ret po			;62c7
	xor c			;62c8
	ld (hl),b		;62c9
	and (hl)		;62ca
	ld a,b			;62cb
	and a			;62cc
	ld a,b			;62cd
	xor e			;62ce
	ld (hl),b		;62cf
	ld c,e			;62d0
	jr nc,l62eah		;62d1
	rst 28h			;62d3
	rst 8			;62d4
	rst 38h			;62d5
	dec hl			;62d6
	rst 38h			;62d7
	ld b,a			;62d8
	cp a			;62d9
	or l			;62da
	ld e,a			;62db
	ld b,a			;62dc
	ccf			;62dd
	inc sp			;62de
	rrca			;62df
	cp l			;62e0
	rlca			;62e1
l62e2h:
	sub h			;62e2
	ex de,hl		;62e3
	add a,0fdh		;62e4
	xor c			;62e6
	or 0b5h			;62e7
	ei			;62e9
l62eah:
	push bc			;62ea
l62ebh:
	ei			;62eb
	jp pe,0f5fdh		;62ec
	ret m			;62ef
	or a			;62f0
	ret m			;62f1
	add a,l			;62f2
	ld (bc),a		;62f3
	add a,d			;62f4
	ld bc,08041h		;62f5
	ld b,c			;62f8
	add a,b			;62f9
	ld b,b			;62fa
	add a,b			;62fb
	and b			;62fc
	ret nz			;62fd
	jr nz,l62c0h		;62fe
	djnz l62e2h		;6300
	ld (hl),078h		;6302
	jp c,02d3ch		;6304
	cp 01ch			;6307
	rst 38h			;6309
	cp 07fh			;630a
	sbc a,(hl)		;630c
	ld a,a			;630d
	or a			;630e
	ld a,a			;630f
	ld c,a			;6310
	ccf			;6311
	ld c,b			;6312
	jr nc,l637bh		;6313
	jr l6329h		;6315
	inc c			;6317
	ret			;6318
	ld b,02ah		;6319
	rst 0			;631b
	call nc,0a8efh		;631c
	rst 0			;631f
	xor c			;6320
	add a,0e0h		;6321
	nop			;6323
	jr nc,l6326h		;6324
l6326h:
	jr l6328h		;6326
l6328h:
	ld (bc),a		;6328
l6329h:
	nop			;6329
	sbc a,h			;632a
	nop			;632b
	add a,(hl)		;632c
	ex af,af'		;632d
	adc a,(hl)		;632e
	nop			;632f
	inc bc			;6330
	nop			;6331
	jr c,l6334h		;6332
l6334h:
	ld bc,00000h		;6334
	nop			;6337
	nop			;6338
	nop			;6339
	nop			;633a
	nop			;633b
	ld h,c			;633c
	nop			;633d
	nop			;633e
	nop			;633f
	ret nz			;6340
	nop			;6341
	ld b,000h		;6342
	djnz l6346h		;6344
l6346h:
	nop			;6346
	nop			;6347
	nop			;6348
	nop			;6349
	nop			;634a
	nop			;634b
	nop			;634c
	nop			;634d
	ld bc,00700h		;634e
	nop			;6351
	ld (bc),a		;6352
	nop			;6353
	inc c			;6354
	nop			;6355
	inc sp			;6356
	nop			;6357
	ld c,(hl)		;6358
	inc bc			;6359
	sub l			;635a
	ld c,06ah		;635b
	inc e			;635d
	sub h			;635e
	ld a,b			;635f
	ld c,h			;6360
	jr nc,$+99		;6361
	nop			;6363
	jp nz,04400h		;6364
	add a,b			;6367
	add a,c			;6368
	nop			;6369
	inc bc			;636a
	nop			;636b
	ld b,001h		;636c
	add hl,bc		;636e
	rlca			;636f
	ld (hl),00fh		;6370
	dec d			;6372
	ld c,065h		;6373
	ld e,09ah		;6375
	ld a,h			;6377
	or (hl)			;6378
	ld a,b			;6379
	ld l,h			;637a
l637bh:
	ret p			;637b
	ret z			;637c
	ret p			;637d
	add hl,de		;637e
	ret po			;637f
	or c			;6380
	ld b,b			;6381
	sub l			;6382
	ld c,02dh		;6383
	ld e,051h		;6385
	ld a,06dh		;6387
	ld (l74abh),a		;6389
	and (hl)		;638c
	ld a,c			;638d
	ld h,c			;638e
	rst 38h			;638f
	ld l,b			;6390
	rst 30h			;6391
	sbc a,03fh		;6392
	xor a			;6394
	ld e,a			;6395
	ld e,a			;6396
	rst 38h			;6397
	ld a,(hl)		;6398
	rst 38h			;6399
	ld e,(hl)		;639a
	rst 38h			;639b
	sbc a,(hl)		;639c
	rst 38h			;639d
	sbc a,l			;639e
	rst 38h			;639f
	ld a,a			;63a0
	rst 38h			;63a1
	call m,0faffh		;63a2
	ld sp,iy		;63a5
	rst 38h			;63a7
	ret m			;63a8
	rst 38h			;63a9
	call m,0d9ffh		;63aa
	rst 38h			;63ad
	push af			;63ae
l63afh:
	ei			;63af
	push de			;63b0
	ei			;63b1
	cp e			;63b2
	call z,0dcabh		;63b3
	push de			;63b6
	xor 0d4h		;63b7
	rst 28h			;63b9
	pop de			;63ba
	xor 05bh		;63bb
	call po,0c07eh		;63bd
	inc sp			;63c0
	ret nz			;63c1
	ld b,l			;63c2
	jr c,l63afh		;63c3
	inc e			;63c5
	xor d			;63c6
	inc e			;63c7
	sub h			;63c8
	ex af,af'		;63c9
	ld d,h			;63ca
	ex af,af'		;63cb
	dec c			;63cc
	nop			;63cd
	inc c			;63ce
	nop			;63cf
	ex af,af'		;63d0
	nop			;63d1
	ld e,e			;63d2
	add a,a			;63d3
	ret z			;63d4
	rlca			;63d5
l63d6h:
	call nz,0910fh		;63d6
	rrca			;63d9
	cp d			;63da
	dec b			;63db
	jr l63e5h		;63dc
	add hl,bc		;63de
	ld b,009h		;63df
	ld b,0ffh		;63e1
	rst 38h			;63e3
	rst 38h			;63e4
l63e5h:
	rst 38h			;63e5
	rst 38h			;63e6
	rst 38h			;63e7
	rst 38h			;63e8
	rst 38h			;63e9
	rst 38h			;63ea
	rst 38h			;63eb
	rst 38h			;63ec
	rst 38h			;63ed
	ld a,a			;63ee
	rst 38h			;63ef
	ld a,a			;63f0
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
	pop af			;63fc
	rst 38h			;63fd
	ld (hl),a		;63fe
	rst 38h			;63ff
	cp a			;6400
	ld a,a			;6401
	sub (hl)		;6402
	ld sp,hl		;6403
	adc a,e			;6404
	ret p			;6405
	halt			;6406
	ret m			;6407
	exx			;6408
	cp 0a1h			;6409
	cp 0c2h			;640b
	call m,0f8c4h		;640d
	or h			;6410
	ret m			;6411
	and b			;6412
	ret nz			;6413
	jr nz,l63d6h		;6414
	and b			;6416
	ld b,b			;6417
	ld h,b			;6418
	nop			;6419
	ld h,b			;641a
	nop			;641b
	ld b,b			;641c
	nop			;641d
	ret nz			;641e
	nop			;641f
	ret nz			;6420
	nop			;6421
	dec hl			;6422
	rra			;6423
	rla			;6424
	rrca			;6425
	ld e,00fh		;6426
	inc de			;6428
	rrca			;6429
	add hl,bc		;642a
	rlca			;642b
	ld a,(bc)		;642c
	rlca			;642d
	dec b			;642e
	inc bc			;642f
	ld (bc),a		;6430
	ld bc,08245h		;6431
	ld b,l			;6434
	add a,d			;6435
	ld b,d			;6436
	add a,c			;6437
	and d			;6438
	pop bc			;6439
	xor c			;643a
	ret nz			;643b
	ld a,c			;643c
	ret po			;643d
	ld (hl),l		;643e
	ret m			;643f
	dec a			;6440
	cp 000h			;6441
	ld bc,00081h		;6443
	ex (sp),hl		;6446
	nop			;6447
	ld c,h			;6448
	add a,b			;6449
	adc a,b			;644a
	nop			;644b
	djnz l644eh		;644c
l644eh:
	nop			;644e
	nop			;644f
	ld (bc),a		;6450
	nop			;6451
	ret nz			;6452
	nop			;6453
	add a,b			;6454
	nop			;6455
	ld bc,00700h		;6456
	nop			;6459
	add hl,bc		;645a
	rlca			;645b
	inc c			;645c
l645dh:
	inc bc			;645d
	rlca			;645e
	nop			;645f
	nop			;6460
	nop			;6461
	dec c			;6462
	nop			;6463
	ld (bc),a		;6464
	ld bc,0038ch		;6465
	ld sp,0ce0eh		;6468
	jr nc,l64a1h		;646b
	ret nz			;646d
	ret nz			;646e
	nop			;646f
	ld h,b			;6470
	nop			;6471
l6472h:
	or b			;6472
	ld b,b			;6473
	ld b,b			;6474
	add a,b			;6475
	ret po			;6476
	nop			;6477
	inc bc			;6478
	nop			;6479
	inc b			;647a
	inc bc			;647b
	dec b			;647c
	inc bc			;647d
	dec de			;647e
	rlca			;647f
	ld (hl),00fh		;6480
	dec l			;6482
	ld e,05bh		;6483
	inc a			;6485
	cp e			;6486
	ld a,h			;6487
	ld h,e			;6488
	call m,0fcd2h		;6489
	and h			;648c
	ret m			;648d
	ld c,h			;648e
	ret p			;648f
	jr l6472h		;6490
	jp po,04501h		;6492
	add a,e			;6495
	adc a,c			;6496
	rlca			;6497
	ld (de),a		;6498
	rrca			;6499
	dec d			;649a
	ld c,026h		;649b
	dec e			;649d
	ld l,b			;649e
	rra			;649f
	pop de			;64a0
l64a1h:
	ld a,0f5h		;64a1
	cp 031h			;64a3
	cp 064h			;64a5
	ei			;64a7
	ld e,a			;64a8
	pop hl			;64a9
	sbc a,l			;64aa
	ex (sp),hl		;64ab
	ld b,e			;64ac
	rst 38h			;64ad
	cpl			;64ae
	rst 18h			;64af
	sbc a,a			;64b0
	ld a,a			;64b1
	jp m,0b6ffh		;64b2
	rst 38h			;64b5
	jp nz,051ffh		;64b6
	cp 0a1h			;64b9
	cp 082h			;64bb
	call m,09864h		;64bd
	ld c,c			;64c0
	or b			;64c1
	ld l,a			;64c2
	sub b			;64c3
	or a			;64c4
	nop			;64c5
	xor h			;64c6
	djnz l650fh		;64c7
	jr c,l6513h		;64c9
	jr nc,l645dh		;64cb
	ld h,b			;64cd
	ret po			;64ce
	nop			;64cf
	add a,b			;64d0
	nop			;64d1
	ex af,af'		;64d2
	nop			;64d3
	jr l64d6h		;64d4
l64d6h:
	djnz l64d8h		;64d6
l64d8h:
	jr nz,l64dah		;64d8
l64dah:
	nop			;64da
	nop			;64db
	nop			;64dc
	nop			;64dd
	nop			;64de
	nop			;64df
	nop			;64e0
	nop			;64e1
	inc d			;64e2
	rrca			;64e3
	ex af,af'		;64e4
	rlca			;64e5
	ld b,001h		;64e6
	dec b			;64e8
	ld (bc),a		;64e9
	ld a,(bc)		;64ea
	dec b			;64eb
	inc c			;64ec
	inc bc			;64ed
	ld c,001h		;64ee
	dec b			;64f0
	ld (bc),a		;64f1
	ccf			;64f2
	rst 38h			;64f3
	cp a			;64f4
	ld a,a			;64f5
	ccf			;64f6
	rst 38h			;64f7
	ld a,a			;64f8
	rst 38h			;64f9
	ld a,a			;64fa
	rst 38h			;64fb
	rst 18h			;64fc
	rst 38h			;64fd
	call m,0bbffh		;64fe
l6501h:
	ld a,h			;6501
	ld (hl),a		;6502
	ret m			;6503
	adc a,b			;6504
	ld a,a			;6505
	dec sp			;6506
	rst 0			;6507
	rst 0			;6508
	rst 38h			;6509
	rst 38h			;650a
	rst 38h			;650b
	ld e,0ffh		;650c
	pop hl			;650e
l650fh:
	ld e,01eh		;650f
	nop			;6511
	add a,a			;6512
l6513h:
	ld a,a			;6513
	ret m			;6514
	rlca			;6515
	rlca			;6516
	rst 38h			;6517
	rst 38h			;6518
	rst 38h			;6519
	jp nz,03dffh		;651a
	jp nz,000c2h		;651d
	nop			;6520
	nop			;6521
	rst 38h			;6522
	rst 38h			;6523
	rst 8			;6524
	ccf			;6525
	dec sp			;6526
	rst 38h			;6527
	call po,00bfbh		;6528
	ret p			;652b
	ret p			;652c
	nop			;652d
	djnz l6530h		;652e
l6530h:
	nop			;6530
	nop			;6531
	rst 38h			;6532
	rst 38h			;6533
	cp 0ffh			;6534
	pop bc			;6536
	cp 03eh			;6537
	ret nz			;6539
	ret nz			;653a
	nop			;653b
	nop			;653c
	nop			;653d
	nop			;653e
	nop			;653f
	ld b,b			;6540
	nop			;6541
	cp 0ffh			;6542
	rrca			;6544
	rst 38h			;6545
	ret p			;6546
	rrca			;6547
l6548h:
	rrca			;6548
	nop			;6549
	nop			;654a
	nop			;654b
	nop			;654c
	nop			;654d
	ld d,b			;654e
	nop			;654f
	ret pe			;6550
	djnz l658fh		;6551
	jp 0ffc3h		;6553
	ld a,0ffh		;6556
	ret nz			;6558
	ccf			;6559
	scf			;655a
	ex af,af'		;655b
	ex af,af'		;655c
	nop			;655d
	ret p			;655e
	nop			;655f
	add a,b			;6560
	nop			;6561
	rst 38h			;6562
	rst 38h			;6563
	ld c,0ffh		;6564
	ld (hl),c		;6566
	adc a,(hl)		;6567
	cp l			;6568
	ld (bc),a		;6569
	rst 0			;656a
	nop			;656b
	ret p			;656c
	nop			;656d
	inc e			;656e
	nop			;656f
	ld (bc),a		;6570
	nop			;6571
	exx			;6572
	rst 20h			;6573
	and (hl)		;6574
	pop bc			;6575
	ld c,l			;6576
	add a,b			;6577
	call nz,08300h		;6578
	nop			;657b
	ld (bc),a		;657c
	nop			;657d
	ld (bc),a		;657e
	nop			;657f
	nop			;6580
	nop			;6581
	ret p			;6582
	rst 38h			;6583
	ret z			;6584
	ret p			;6585
	jr nc,l6548h		;6586
	ret nz			;6588
	nop			;6589
	ret nz			;658a
	nop			;658b
	add a,b			;658c
	nop			;658d
	nop			;658e
l658fh:
	nop			;658f
	nop			;6590
	nop			;6591
	rra			;6592
	rst 38h			;6593
	pop bc			;6594
	ccf			;6595
	inc a			;6596
	inc bc			;6597
	ld (bc),a		;6598
	ld bc,00009h		;6599
	ld l,000h		;659c
	nop			;659e
	nop			;659f
	nop			;65a0
	nop			;65a1
	ld sp,hl		;65a2
	cp 0fch			;65a3
	rst 38h			;65a5
	ccf			;65a6
	rst 38h			;65a7
	exx			;65a8
	ccf			;65a9
	ld h,019h		;65aa
	sbc a,c			;65ac
	nop			;65ad
	nop			;65ae
	nop			;65af
	ld bc,01f00h		;65b0
	rst 38h			;65b3
	pop bc			;65b4
	ccf			;65b5
	inc a			;65b6
	inc bc			;65b7
	ld (bc),a		;65b8
	ld bc,00001h		;65b9
	nop			;65bc
	nop			;65bd
	nop			;65be
	nop			;65bf
	nop			;65c0
	nop			;65c1
	rst 38h			;65c2
	rst 38h			;65c3
	rst 38h			;65c4
	rst 38h			;65c5
	rst 30h			;65c6
	rst 38h			;65c7
	ld l,b			;65c8
	rst 30h			;65c9
	sub a			;65ca
	ld h,b			;65cb
	ld h,b			;65cc
	nop			;65cd
	ld bc,00100h		;65ce
	nop			;65d1
	ld e,l			;65d2
	ld a,0beh		;65d3
	ld a,a			;65d5
	ld a,a			;65d6
	rst 38h			;65d7
	add a,c			;65d8
	rst 38h			;65d9
	ld a,(hl)		;65da
	add a,c			;65db
	add a,c			;65dc
	nop			;65dd
	nop			;65de
	nop			;65df
	dec b			;65e0
	nop			;65e1
	ld (bc),a		;65e2
	ld bc,003fdh		;65e3
	inc bc			;65e6
	rst 38h			;65e7
	rst 38h			;65e8
	rst 38h			;65e9
	add a,h			;65ea
	rst 38h			;65eb
	ld a,e			;65ec
	add a,h			;65ed
	add a,h			;65ee
	nop			;65ef
	ld de,0b300h		;65f0
	call z,0fec5h		;65f3
	cp 0ffh			;65f6
l65f8h:
	ret p			;65f8
	rst 38h			;65f9
	rrca			;65fa
	ret p			;65fb
	ret p			;65fc
	nop			;65fd
	nop			;65fe
	nop			;65ff
	nop			;6600
	nop			;6601
	call p,0e30fh		;6602
	inc e			;6605
	inc e			;6606
	rst 38h			;6607
	ccf			;6608
	rst 38h			;6609
	ret nz			;660a
	ccf			;660b
	ccf			;660c
	nop			;660d
	nop			;660e
	nop			;660f
	nop			;6610
	nop			;6611
	ld bc,0ff00h		;6612
	nop			;6615
	jr l65f8h		;6616
	and b			;6618
	ld b,b			;6619
	rrca			;661a
	nop			;661b
	ret p			;661c
	rrca			;661d
	ld c,0ffh		;661e
	ld sp,hl		;6620
	cp 0c1h			;6621
	nop			;6623
	rst 38h			;6624
	nop			;6625
	nop			;6626
	nop			;6627
	rst 38h			;6628
	nop			;6629
	rlca			;662a
	ret m			;662b
	adc a,b			;662c
	ret p			;662d
	ld (hl),e		;662e
	add a,b			;662f
	inc e			;6630
	and e			;6631
	adc a,c			;6632
	nop			;6633
	and a			;6634
	nop			;6635
	cp 000h			;6636
	ret p			;6638
	nop			;6639
	nop			;663a
	nop			;663b
	rra			;663c
	nop			;663d
	ret po			;663e
	rra			;663f
	rra			;6640
	rst 38h			;6641
	cp a			;6642
	ld b,b			;6643
	ei			;6644
	inc b			;6645
	inc b			;6646
	nop			;6647
	nop			;6648
	nop			;6649
	nop			;664a
	nop			;664b
	call m,00300h		;664c
	call m,0fffch		;664f
	rlca			;6652
	ret m			;6653
	ret nz			;6654
	ccf			;6655
	ccf			;6656
	nop			;6657
	nop			;6658
	nop			;6659
	nop			;665a
	nop			;665b
	nop			;665c
	nop			;665d
	rst 38h			;665e
	nop			;665f
	nop			;6660
	rst 38h			;6661
	ex af,af'		;6662
	add a,b			;6663
	ld (hl),b		;6664
	add a,b			;6665
	add a,b			;6666
	nop			;6667
	nop			;6668
	nop			;6669
	nop			;666a
	nop			;666b
	ccf			;666c
	nop			;666d
	ret nz			;666e
	ccf			;666f
	ccf			;6670
	rst 38h			;6671
	ld bc,00100h		;6672
	nop			;6675
	nop			;6676
	nop			;6677
	inc bc			;6678
	nop			;6679
	call m,00300h		;667a
	call m,0fffch		;667d
	rst 38h			;6680
	rst 38h			;6681
	ex af,af'		;6682
	nop			;6683
	add a,b			;6684
	nop			;6685
	ld h,b			;6686
	nop			;6687
	add a,e			;6688
	nop			;6689
	adc a,b			;668a
	nop			;668b
	add a,c			;668c
	nop			;668d
	ld e,(hl)		;668e
	add a,c			;668f
	ld hl,025dfh		;6690
	nop			;6693
	nop			;6694
	nop			;6695
	ld (hl),000h		;6696
	ret			;6698
	ld (hl),0b6h		;6699
	ld a,a			;669b
	ld l,(hl)		;669c
	rst 38h			;669d
	sub l			;669e
	xor 0aah		;669f
	call nz,00080h		;66a1
	ld a,h			;66a4
	nop			;66a5
	inc hl			;66a6
	inc e			;66a7
	jp 01c3ch		;66a8
	ex (sp),hl		;66ab
	and e			;66ac
	ld c,a			;66ad
l66aeh:
	ld d,a			;66ae
	cpl			;66af
	xor a			;66b0
	ld a,a			;66b1
	nop			;66b2
	nop			;66b3
	ld b,b			;66b4
	nop			;66b5
	ld bc,0e400h		;66b6
	nop			;66b9
	dec de			;66ba
	ret po			;66bb
	and 0f9h		;66bc
	ld sp,hl		;66be
	rst 38h			;66bf
	rst 38h			;66c0
	rst 38h			;66c1
	nop			;66c2
	nop			;66c3
	nop			;66c4
	nop			;66c5
	nop			;66c6
	nop			;66c7
	inc bc			;66c8
	nop			;66c9
	ex af,af'		;66ca
	nop			;66cb
	add a,c			;66cc
	nop			;66cd
	ld e,(hl)		;66ce
	add a,c			;66cf
	ld h,b			;66d0
	sbc a,a			;66d1
	dec h			;66d2
	nop			;66d3
	nop			;66d4
	nop			;66d5
	ld (hl),000h		;66d6
	ret			;66d8
	ld (hl),0b6h		;66d9
	ld a,a			;66db
	ld l,(hl)		;66dc
	rst 38h			;66dd
	dec d			;66de
	xor 06ah		;66df
	add a,h			;66e1
	add a,b			;66e2
	nop			;66e3
	ld a,h			;66e4
	nop			;66e5
	inc hl			;66e6
	inc e			;66e7
	jp 01c3ch		;66e8
	ret po			;66eb
	jr nz,l66aeh		;66ec
	ret nz			;66ee
	nop			;66ef
	nop			;66f0
	nop			;66f1
	ld bc,08000h		;66f2
	nop			;66f5
	ld h,b			;66f6
	add a,b			;66f7
	and (hl)		;66f8
	ld b,b			;66f9
	ld (hl),c		;66fa
	nop			;66fb
	jr l66feh		;66fc
l66feh:
	nop			;66fe
	nop			;66ff
	nop			;6700
	nop			;6701
	nop			;6702
	nop			;6703
	ld b,b			;6704
	nop			;6705
	ld bc,0e400h		;6706
	nop			;6709
	ld b,e			;670a
	nop			;670b
	ld (de),a		;670c
	ld bc,0030dh		;670d
	di			;6710
	rrca			;6711
	rst 38h			;6712
	rst 38h			;6713
	rst 38h			;6714
	rst 38h			;6715
	rst 38h			;6716
	rst 38h			;6717
	rst 28h			;6718
	rst 38h			;6719
	rst 38h			;671a
	rst 38h			;671b
	rst 38h			;671c
	rst 38h			;671d
	rst 38h			;671e
	rst 38h			;671f
	rst 38h			;6720
	rst 38h			;6721
	rst 38h			;6722
	rst 38h			;6723
	rst 38h			;6724
	rst 38h			;6725
	rst 38h			;6726
	rst 38h			;6727
	rst 38h			;6728
	rst 38h			;6729
	rst 28h			;672a
	rst 18h			;672b
	rst 38h			;672c
	rst 38h			;672d
	rst 38h			;672e
	rst 38h			;672f
	rst 38h			;6730
	rst 38h			;6731
	rst 38h			;6732
	rst 38h			;6733
	rst 38h			;6734
	rst 38h			;6735
	rst 38h			;6736
	rst 38h			;6737
	rst 38h			;6738
	rst 38h			;6739
	rst 38h			;673a
	ei			;673b
	rst 38h			;673c
	rst 38h			;673d
	rst 38h			;673e
	rst 38h			;673f
	rst 38h			;6740
	rst 38h			;6741
	rst 38h			;6742
	rst 38h			;6743
	rst 38h			;6744
	rst 38h			;6745
	rst 18h			;6746
	rst 18h			;6747
	rst 38h			;6748
	rst 38h			;6749
	rst 38h			;674a
	rst 38h			;674b
	rst 38h			;674c
	rst 38h			;674d
	rst 38h			;674e
	rst 38h			;674f
	rst 38h			;6750
	rst 38h			;6751
	rst 38h			;6752
	rst 38h			;6753
	rst 38h			;6754
	rst 38h			;6755
	rst 38h			;6756
	rst 38h			;6757
	rst 38h			;6758
	rst 38h			;6759
	rst 38h			;675a
	rst 38h			;675b
	cp a			;675c
	cp a			;675d
	defb 0fdh,0fdh,0ffh ;illegal sequence	;675e
	rst 38h			;6761
	rst 38h			;6762
	rst 38h			;6763
	defb 0fdh,0bdh ;cp iyl	;6764
	rst 38h			;6766
	rst 38h			;6767
	rst 38h			;6768
	rst 38h			;6769
	rst 38h			;676a
	rst 38h			;676b
	rst 18h			;676c
	rst 18h			;676d
	rst 38h			;676e
	rst 38h			;676f
	defb 0fdh,0fdh,0ffh ;illegal sequence	;6770
	rst 38h			;6773
	rst 18h			;6774
	rst 18h			;6775
	rst 38h			;6776
	defb 0fdh,0ffh,0ffh ;illegal sequence	;6777
	rst 38h			;677a
	rst 38h			;677b
	rst 18h			;677c
	rst 18h			;677d
	rst 38h			;677e
	rst 30h			;677f
	rst 38h			;6780
	rst 38h			;6781
	rst 38h			;6782
	rst 38h			;6783
	rst 38h			;6784
	rst 38h			;6785
	rst 38h			;6786
	rst 38h			;6787
	rst 38h			;6788
	rst 38h			;6789
	rst 38h			;678a
	rst 38h			;678b
	rst 38h			;678c
	rst 38h			;678d
	rst 38h			;678e
	rst 38h			;678f
	rst 38h			;6790
	rst 38h			;6791
	nop			;6792
	ld l,h			;6793
	nop			;6794
	ld a,h			;6795
	ld bc,00278h		;6796
	ld (hl),b		;6799
	inc b			;679a
	ld h,b			;679b
	ex af,af'		;679c
	ld b,a			;679d
	djnz l67afh		;679e
	nop			;67a0
	nop			;67a1
	nop			;67a2
	add hl,de		;67a3
	nop			;67a4
	dec e			;67a5
	ret nz			;67a6
	rrca			;67a7
	jr nz,l67b1h		;67a8
	djnz l67afh		;67aa
	ex af,af'		;67ac
	pop af			;67ad
	inc b			;67ae
l67afh:
	ret m			;67af
	nop			;67b0
l67b1h:
	nop			;67b1
	rst 38h			;67b2
	nop			;67b3
	nop			;67b4
	rst 38h			;67b5
	nop			;67b6
	nop			;67b7
	ret po			;67b8
	nop			;67b9
	nop			;67ba
	pop af			;67bb
	nop			;67bc
	ld d,c			;67bd
	nop			;67be
	ld d,c			;67bf
	nop			;67c0
	pop af			;67c1
	rst 38h			;67c2
	nop			;67c3
	nop			;67c4
	rst 38h			;67c5
	nop			;67c6
	nop			;67c7
	rst 38h			;67c8
	nop			;67c9
	nop			;67ca
	rst 38h			;67cb
	nop			;67cc
	ld d,l			;67cd
	nop			;67ce
	ld d,l			;67cf
	nop			;67d0
	rst 38h			;67d1
	nop			;67d2
	rst 38h			;67d3
	nop			;67d4
	nop			;67d5
	nop			;67d6
	nop			;67d7
	nop			;67d8
	nop			;67d9
	rst 38h			;67da
	nop			;67db
	nop			;67dc
	nop			;67dd
	nop			;67de
	rst 38h			;67df
	nop			;67e0
	rst 38h			;67e1
	nop			;67e2
	nop			;67e3
	rrca			;67e4
	nop			;67e5
	ld b,b			;67e6
	ld c,020h		;67e7
	ld b,a			;67e9
	djnz l684fh		;67ea
	ex af,af'		;67ec
	ld h,c			;67ed
	inc b			;67ee
	ld h,b			;67ef
	nop			;67f0
	ld h,h			;67f1
	nop			;67f2
	nop			;67f3
	ret m			;67f4
	nop			;67f5
	ld bc,00238h		;67f6
	ld (hl),c		;67f9
	inc b			;67fa
	pop hl			;67fb
	ex af,af'		;67fc
	pop bc			;67fd
	djnz l6801h		;67fe
	nop			;6800
l6801h:
	ld de,0ff00h		;6801
	nop			;6804
	nop			;6805
	rst 38h			;6806
	nop			;6807
	nop			;6808
	rst 38h			;6809
	nop			;680a
	nop			;680b
	rst 38h			;680c
	nop			;680d
	nop			;680e
	rst 38h			;680f
	nop			;6810
	rst 38h			;6811
	ld hl,021c6h		;6812
	add a,021h		;6815
	add a,021h		;6817
	add a,021h		;6819
	add a,021h		;681b
	add a,021h		;681d
	add a,021h		;681f
	add a,000h		;6821
	ld bc,00100h		;6823
	nop			;6826
	ld bc,00100h		;6827
	nop			;682a
	ld bc,00100h		;682b
	nop			;682e
	ld bc,00100h		;682f
	add a,b			;6832
	nop			;6833
	add a,b			;6834
	nop			;6835
	add a,b			;6836
	nop			;6837
	add a,b			;6838
	nop			;6839
	add a,b			;683a
	nop			;683b
	add a,b			;683c
	nop			;683d
	add a,b			;683e
	nop			;683f
	add a,b			;6840
	nop			;6841
	add a,h			;6842
	ld h,e			;6843
	add a,h			;6844
	ld h,e			;6845
	add a,h			;6846
	ld h,e			;6847
	add a,h			;6848
	ld h,e			;6849
	add a,h			;684a
	ld h,e			;684b
	add a,h			;684c
	ld h,e			;684d
	add a,h			;684e
l684fh:
	ld h,e			;684f
	add a,h			;6850
	ld h,e			;6851
	nop			;6852
	nop			;6853
	nop			;6854
	nop			;6855
	nop			;6856
	nop			;6857
	nop			;6858
	nop			;6859
	nop			;685a
	nop			;685b
	jr l6866h		;685c
	inc e			;685e
	inc c			;685f
	inc e			;6860
	inc c			;6861
	nop			;6862
	nop			;6863
	nop			;6864
	nop			;6865
l6866h:
	nop			;6866
	nop			;6867
	jr nc,l687ah		;6868
	jr c,l6884h		;686a
	jr c,l6886h		;686c
	jr c,l6888h		;686e
	jr c,l688ah		;6870
	ld b,b			;6872
	ret nz			;6873
	ld b,b			;6874
	ret nz			;6875
	ld b,b			;6876
	ret nz			;6877
	ld b,b			;6878
	ret nz			;6879
l687ah:
	ld b,d			;687a
	add a,042h		;687b
	add a,002h		;687d
	ld b,002h		;687f
	ld b,000h		;6881
	nop			;6883
l6884h:
	nop			;6884
	nop			;6885
l6886h:
	nop			;6886
	nop			;6887
l6888h:
	nop			;6888
	nop			;6889
l688ah:
	nop			;688a
	nop			;688b
	nop			;688c
	nop			;688d
	nop			;688e
	nop			;688f
	djnz l68c2h		;6890
	nop			;6892
	nop			;6893
	ld (bc),a		;6894
	ld bc,00102h		;6895
	ld (bc),a		;6898
	ld bc,00000h		;6899
	nop			;689c
	nop			;689d
	nop			;689e
	nop			;689f
	nop			;68a0
	nop			;68a1
	nop			;68a2
	nop			;68a3
	nop			;68a4
	nop			;68a5
	nop			;68a6
	nop			;68a7
	nop			;68a8
	nop			;68a9
	ld (bc),a		;68aa
	ld b,002h		;68ab
	ld b,002h		;68ad
	ld b,002h		;68af
	ld b,01ch		;68b1
	inc c			;68b3
	inc e			;68b4
	inc c			;68b5
	inc e			;68b6
	inc c			;68b7
	inc e			;68b8
	inc c			;68b9
	inc e			;68ba
	inc c			;68bb
	inc e			;68bc
	inc b			;68bd
	inc b			;68be
	nop			;68bf
	nop			;68c0
	nop			;68c1
l68c2h:
	jr c,l68dch		;68c2
	jr c,l68deh		;68c4
	jr c,l68d0h		;68c6
	ex af,af'		;68c8
	nop			;68c9
	nop			;68ca
	nop			;68cb
	nop			;68cc
	nop			;68cd
	nop			;68ce
	nop			;68cf
l68d0h:
	nop			;68d0
	nop			;68d1
	djnz l6904h		;68d2
	ld (de),a		;68d4
	ld sp,03112h		;68d5
	ld (bc),a		;68d8
	ld bc,00000h		;68d9
l68dch:
	nop			;68dc
	nop			;68dd
l68deh:
	nop			;68de
	nop			;68df
	nop			;68e0
	nop			;68e1
	nop			;68e2
	nop			;68e3
	nop			;68e4
	nop			;68e5
	nop			;68e6
	nop			;68e7
	jr nz,l68fah		;68e8
	nop			;68ea
	nop			;68eb
	nop			;68ec
	nop			;68ed
	nop			;68ee
	nop			;68ef
	nop			;68f0
	nop			;68f1
	nop			;68f2
	nop			;68f3
	ld b,000h		;68f4
	ld b,000h		;68f6
	ld b,000h		;68f8
l68fah:
	ld b,000h		;68fa
	ld b,000h		;68fc
	ld b,000h		;68fe
	ld b,000h		;6900
	nop			;6902
	nop			;6903
l6904h:
	nop			;6904
	nop			;6905
	nop			;6906
	nop			;6907
	nop			;6908
	nop			;6909
	nop			;690a
	nop			;690b
	jr nc,l690eh		;690c
l690eh:
	jr nc,l6910h		;690e
l6910h:
	jr nc,l6912h		;6910
l6912h:
	ex af,af'		;6912
	ex af,af'		;6913
	add hl,bc		;6914
	add hl,bc		;6915
	ld bc,00001h		;6916
	nop			;6919
	nop			;691a
	nop			;691b
	nop			;691c
	nop			;691d
	nop			;691e
	nop			;691f
	nop			;6920
	nop			;6921
	nop			;6922
	nop			;6923
	nop			;6924
	nop			;6925
	nop			;6926
	jr nz,l6929h		;6927
l6929h:
	nop			;6929
	nop			;692a
	nop			;692b
	ret po			;692c
	ret po			;692d
	ret po			;692e
	ld a,b			;692f
	sbc a,b			;6930
	nop			;6931
	rst 38h			;6932
	rst 38h			;6933
	halt			;6934
	sbc a,l			;6935
	dec hl			;6936
	add a,h			;6937
	ei			;6938
	ld a,c			;6939
	inc l			;693a
	ld d,e			;693b
	ld d,e			;693c
	nop			;693d
	ccf			;693e
	ccf			;693f
	nop			;6940
	nop			;6941
	sub b			;6942
	nop			;6943
	nop			;6944
	nop			;6945
	nop			;6946
	nop			;6947
	nop			;6948
	nop			;6949
	nop			;694a
	nop			;694b
	nop			;694c
	nop			;694d
	nop			;694e
	nop			;694f
	nop			;6950
	nop			;6951
	ld b,c			;6952
	cp a			;6953
	cp h			;6954
	nop			;6955
	rst 38h			;6956
	ei			;6957
	nop			;6958
	ld b,006h		;6959
	nop			;695b
	nop			;695c
	nop			;695d
	nop			;695e
	nop			;695f
	nop			;6960
	nop			;6961
	nop			;6962
	nop			;6963
	nop			;6964
	nop			;6965
	nop			;6966
	nop			;6967
	nop			;6968
	nop			;6969
	jr nz,$+1		;696a
	ld c,a			;696c
	nop			;696d
	ret m			;696e
	cp b			;696f
	jr nz,l69e2h		;6970
	ld d,b			;6972
	nop			;6973
	jr nc,$+50		;6974
	nop			;6976
	nop			;6977
	nop			;6978
	nop			;6979
	nop			;697a
	nop			;697b
	nop			;697c
	nop			;697d
	nop			;697e
	nop			;697f
	nop			;6980
	nop			;6981
	nop			;6982
	nop			;6983
	nop			;6984
	nop			;6985
	nop			;6986
	nop			;6987
	djnz l698ah		;6988
l698ah:
	nop			;698a
	jr c,l699dh		;698b
	nop			;698d
	djnz l6990h		;698e
l6990h:
	nop			;6990
	nop			;6991
	nop			;6992
	nop			;6993
	nop			;6994
	nop			;6995
	nop			;6996
	nop			;6997
	nop			;6998
	nop			;6999
	nop			;699a
	nop			;699b
	nop			;699c
l699dh:
	inc h			;699d
	jr l69a0h		;699e
l69a0h:
	ld e,d			;69a0
	inc a			;69a1
	nop			;69a2
	inc h			;69a3
	ld h,(hl)		;69a4
	jr l69cbh		;69a5
	ld h,(hl)		;69a7
	jr l6a04h		;69a8
	inc a			;69aa
	nop			;69ab
	inc h			;69ac
	jr l69afh		;69ad
l69afh:
	nop			;69af
	nop			;69b0
	nop			;69b1
	inc a			;69b2
	inc a			;69b3
	nop			;69b4
	ld b,d			;69b5
	ld b,d			;69b6
	inc a			;69b7
	add a,c			;69b8
	add a,c			;69b9
	ld a,(hl)		;69ba
	add a,c			;69bb
	add a,c			;69bc
	ld a,(hl)		;69bd
	add a,c			;69be
	add a,c			;69bf
	ld a,(hl)		;69c0
	add a,c			;69c1
	add a,c			;69c2
	ld a,(hl)		;69c3
	ld b,d			;69c4
	ld b,d			;69c5
	inc a			;69c6
	inc a			;69c7
	inc a			;69c8
	nop			;69c9
	inc a			;69ca
l69cbh:
	nop			;69cb
	inc a			;69cc
	ld a,(hl)		;69cd
	nop			;69ce
	ld h,(hl)		;69cf
	rst 38h			;69d0
	nop			;69d1
	jp 018e7h		;69d2
	add a,c			;69d5
	rst 20h			;69d6
	jr $-125		;69d7
	rst 38h			;69d9
	nop			;69da
	jp 0007eh		;69db
	ld h,(hl)		;69de
	inc a			;69df
	nop			;69e0
	inc a			;69e1
l69e2h:
	nop			;69e2
	nop			;69e3
	nop			;69e4
	jr l69e7h		;69e5
l69e7h:
	nop			;69e7
	inc a			;69e8
	jr l69ebh		;69e9
l69ebh:
	ld h,(hl)		;69eb
	inc h			;69ec
	jr l6a55h		;69ed
	inc h			;69ef
	jr l6a2eh		;69f0
	jr l69f4h		;69f2
l69f4h:
	jr l69f6h		;69f4
l69f6h:
	nop			;69f6
	nop			;69f7
	nop			;69f8
	nop			;69f9
	nop			;69fa
	nop			;69fb
	nop			;69fc
	jr l6a17h		;69fd
	nop			;69ff
	inc h			;6a00
	inc h			;6a01
	jr l6a46h		;6a02
l6a04h:
	ld b,d			;6a04
	inc a			;6a05
	ld b,d			;6a06
	ld b,d			;6a07
	inc a			;6a08
	inc h			;6a09
	inc h			;6a0a
	jr $+26			;6a0b
	jr l6a0fh		;6a0d
l6a0fh:
	nop			;6a0f
	nop			;6a10
	nop			;6a11
	nop			;6a12
	nop			;6a13
	nop			;6a14
	jr l6a17h		;6a15
l6a17h:
	jr l6a55h		;6a17
	nop			;6a19
	inc h			;6a1a
	ld h,(hl)		;6a1b
	jr l6a60h		;6a1c
	ld h,(hl)		;6a1e
	jr l6a63h		;6a1f
	inc a			;6a21
	nop			;6a22
	inc h			;6a23
	jr l6a26h		;6a24
l6a26h:
	jr l6a28h		;6a26
l6a28h:
	nop			;6a28
	nop			;6a29
	nop			;6a2a
	nop			;6a2b
	nop			;6a2c
	nop			;6a2d
l6a2eh:
	nop			;6a2e
	nop			;6a2f
	nop			;6a30
	nop			;6a31
	nop			;6a32
	nop			;6a33
	nop			;6a34
	nop			;6a35
	nop			;6a36
	nop			;6a37
	nop			;6a38
	ld bc,00000h		;6a39
	inc bc			;6a3c
	ld bc,00200h		;6a3d
	ld bc,00000h		;6a40
	nop			;6a43
	nop			;6a44
	nop			;6a45
l6a46h:
	nop			;6a46
	nop			;6a47
	nop			;6a48
	nop			;6a49
	nop			;6a4a
	nop			;6a4b
	nop			;6a4c
	nop			;6a4d
	nop			;6a4e
	nop			;6a4f
	nop			;6a50
	add a,b			;6a51
	nop			;6a52
	nop			;6a53
	ret nz			;6a54
l6a55h:
	add a,b			;6a55
	nop			;6a56
	ld b,b			;6a57
	add a,b			;6a58
	nop			;6a59
	ld bc,00000h		;6a5a
	nop			;6a5d
	nop			;6a5e
	nop			;6a5f
l6a60h:
	nop			;6a60
	nop			;6a61
	nop			;6a62
l6a63h:
	nop			;6a63
	nop			;6a64
	nop			;6a65
	nop			;6a66
	nop			;6a67
	nop			;6a68
	nop			;6a69
	nop			;6a6a
	nop			;6a6b
	nop			;6a6c
	nop			;6a6d
	nop			;6a6e
	nop			;6a6f
	nop			;6a70
	nop			;6a71
	add a,b			;6a72
	nop			;6a73
	nop			;6a74
	nop			;6a75
	nop			;6a76
	nop			;6a77
	nop			;6a78
	nop			;6a79
	nop			;6a7a
	nop			;6a7b
	nop			;6a7c
	nop			;6a7d
	nop			;6a7e
l6a7fh:
	nop			;6a7f
	nop			;6a80
	nop			;6a81
	nop			;6a82
	nop			;6a83
	nop			;6a84
	nop			;6a85
	nop			;6a86
	nop			;6a87
	nop			;6a88
	nop			;6a89
	nop			;6a8a
	nop			;6a8b
	nop			;6a8c
	nop			;6a8d
	nop			;6a8e
	nop			;6a8f
l6a90h:
	nop			;6a90
	nop			;6a91
l6a92h:
	nop			;6a92
	nop			;6a93
	nop			;6a94
	nop			;6a95
	nop			;6a96
	nop			;6a97
	nop			;6a98
	nop			;6a99
	nop			;6a9a
	nop			;6a9b
	nop			;6a9c
	nop			;6a9d
	nop			;6a9e
	nop			;6a9f
	nop			;6aa0
	nop			;6aa1
	add a,b			;6aa2
	add a,b			;6aa3
l6aa4h:
	add a,b			;6aa4
	add a,b			;6aa5
	add a,b			;6aa6
	add a,b			;6aa7
	ld b,b			;6aa8
	ret nz			;6aa9
	ld b,b			;6aaa
	ret nz			;6aab
	ld b,b			;6aac
	ret nz			;6aad
	jr nz,l6a90h		;6aae
	jr nz,l6a92h		;6ab0
	djnz l6aa4h		;6ab2
	sub b			;6ab4
	ld (hl),b		;6ab5
	adc a,b			;6ab6
	ld a,b			;6ab7
	ret z			;6ab8
	jr c,l6a7fh		;6ab9
	inc a			;6abb
l6abch:
	call po,0f21ch		;6abc
	ld c,0f2h		;6abf
	adc a,(hl)		;6ac1
	ld sp,hl		;6ac2
	add a,a			;6ac3
	call m,0fcc3h		;6ac4
	ex (sp),hl		;6ac7
	cp 0f1h			;6ac8
	rst 38h			;6aca
	ret m			;6acb
	rst 38h			;6acc
	ret m			;6acd
	rst 38h			;6ace
	ld a,h			;6acf
	rst 38h			;6ad0
	ld a,000h		;6ad1
	nop			;6ad3
	add a,b			;6ad4
	add a,b			;6ad5
	add a,b			;6ad6
	add a,b			;6ad7
	ld b,b			;6ad8
	ret nz			;6ad9
	jr nz,l6abch		;6ada
	sub b			;6adc
	ld (hl),b		;6add
	ret z			;6ade
	jr c,$-26		;6adf
	inc e			;6ae1
	rst 38h			;6ae2
	rra			;6ae3
	rst 38h			;6ae4
	rrca			;6ae5
	rst 38h			;6ae6
	rlca			;6ae7
	rst 38h			;6ae8
	inc bc			;6ae9
	rst 38h			;6aea
	ld bc,028f7h		;6aeb
	di			;6aee
	inc l			;6aef
	di			;6af0
	inc l			;6af1
	jp p,0f90eh		;6af2
l6af5h:
	add a,a			;6af5
	call m,0fec3h		;6af6
	pop hl			;6af9
	rst 38h			;6afa
	ret p			;6afb
	rst 38h			;6afc
	ret m			;6afd
	rst 38h			;6afe
	inc a			;6aff
	rst 38h			;6b00
	ld e,000h		;6b01
	nop			;6b03
	nop			;6b04
	nop			;6b05
	add a,b			;6b06
	add a,b			;6b07
	ld b,b			;6b08
	ret nz			;6b09
	jr nz,$-30		;6b0a
	sub b			;6b0c
	ld (hl),b		;6b0d
	ret z			;6b0e
	jr c,l6af5h		;6b0f
	inc e			;6b11
	di			;6b12
	inc l			;6b13
	di			;6b14
	inc l			;6b15
	di			;6b16
	inc l			;6b17
	di			;6b18
	inc l			;6b19
	di			;6b1a
	inc l			;6b1b
	ei			;6b1c
	inc h			;6b1d
	rst 38h			;6b1e
	jr $+1			;6b1f
	add a,h			;6b21
	rst 38h			;6b22
	rrca			;6b23
	rst 38h			;6b24
	rlca			;6b25
	rst 38h			;6b26
	ld bc,050efh		;6b27
l6b2ah:
	rst 20h			;6b2a
	ld e,b			;6b2b
	rst 20h			;6b2c
	ld e,b			;6b2d
	rst 20h			;6b2e
	ld e,b			;6b2f
	rst 20h			;6b30
	ld e,b			;6b31
	jp p,0f90eh		;6b32
	add a,a			;6b35
	call m,0fee3h		;6b36
	pop af			;6b39
	rst 38h			;6b3a
	inc a			;6b3b
	rst 38h			;6b3c
	ld c,0ffh		;6b3d
	rlca			;6b3f
	rst 38h			;6b40
	inc bc			;6b41
	nop			;6b42
	nop			;6b43
	nop			;6b44
	nop			;6b45
	ret nz			;6b46
	ret nz			;6b47
	jr nz,l6b2ah		;6b48
	sbc a,b			;6b4a
	ld a,b			;6b4b
	call nz,0f33ch		;6b4c
	rrca			;6b4f
	ret m			;6b50
	rst 0			;6b51
	rst 38h			;6b52
	ret nz			;6b53
	rst 38h			;6b54
	ret po			;6b55
	ld a,a			;6b56
	ret m			;6b57
	cp a			;6b58
	ld a,h			;6b59
	rst 8			;6b5a
	ccf			;6b5b
	rst 30h			;6b5c
	rrca			;6b5d
	ld sp,hl		;6b5e
	add a,a			;6b5f
	cp 0e1h			;6b60
	rst 20h			;6b62
	ld e,c			;6b63
	rst 20h			;6b64
	ld e,c			;6b65
	rst 30h			;6b66
	ld c,c			;6b67
	rst 38h			;6b68
	ld sp,009ffh		;6b69
	rst 38h			;6b6c
	add a,c			;6b6d
	rst 38h			;6b6e
	ret po			;6b6f
	ld a,a			;6b70
	ret m			;6b71
	cp a			;6b72
	ld b,b			;6b73
	cp a			;6b74
	ld b,b			;6b75
	cp a			;6b76
	ld b,b			;6b77
	cp a			;6b78
	ld b,b			;6b79
	cp l			;6b7a
	ld c,d			;6b7b
	cp l			;6b7c
	ld c,d			;6b7d
	defb 0fdh,0cah,0fdh ;illegal sequence	;6b7e
	ld a,(bc)		;6b81
	cp 0f1h			;6b82
l6b84h:
	rst 38h			;6b84
	ld a,h			;6b85
	rst 38h			;6b86
	ld a,a			;6b87
	di			;6b88
	ld a,a			;6b89
	call m,0ff73h		;6b8a
	inc a			;6b8d
	rst 38h			;6b8e
	rlca			;6b8f
	rst 28h			;6b90
	ld d,c			;6b91
	jr nc,l6b84h		;6b92
	adc a,(hl)		;6b94
	ld a,(hl)		;6b95
	pop hl			;6b96
	rra			;6b97
	call m,0ffc3h		;6b98
	ret m			;6b9b
	ccf			;6b9c
	rst 38h			;6b9d
	rst 8			;6b9e
	ccf			;6b9f
	rst 38h			;6ba0
	call pe,0e0ffh		;6ba1
	defb 0fdh,06ah ;ld iyl,d	;6ba4
	defb 0fdh,06ah ;ld iyl,d	;6ba6
	defb 0fdh,06ah ;ld iyl,d	;6ba8
	defb 0fdh,06ah ;ld iyl,d	;6baa
	defb 0fdh,06ah ;ld iyl,d	;6bac
	defb 0fdh,06ah ;ld iyl,d	;6bae
	defb 0fdh,06ah ;ld iyl,d	;6bb0
	sbc a,a			;6bb2
	ld a,(hl)		;6bb3
	rst 20h			;6bb4
	rra			;6bb5
	ei			;6bb6
	rlca			;6bb7
	cp 007h			;6bb8
	cp 007h			;6bba
	xor 057h		;6bbc
	xor 057h		;6bbe
	xor 057h		;6bc0
l6bc2h:
	defb 0fdh,00ah,0ffh ;illegal sequence	;6bc2
	add a,(hl)		;6bc5
	rst 38h			;6bc6
	ret po			;6bc7
	ld a,a			;6bc8
	call m,sub_7f8fh	;6bc9
	di			;6bcc
	rrca			;6bcd
	call m,0ff03h		;6bce
	djnz l6bc2h		;6bd1
	ld d,b			;6bd3
	xor 055h		;6bd4
	xor 055h		;6bd6
	cp 035h			;6bd8
	rst 38h			;6bda
	add a,e			;6bdb
	rst 38h			;6bdc
	ret p			;6bdd
	ld a,a			;6bde
	rst 38h			;6bdf
	adc a,(hl)		;6be0
	ld a,(hl)		;6be1
	scf			;6be2
	ex af,af'		;6be3
	inc h			;6be4
	scf			;6be5
	ex af,af'		;6be6
	inc h			;6be7
	scf			;6be8
	ex af,af'		;6be9
	inc h			;6bea
	scf			;6beb
	ex af,af'		;6bec
	inc h			;6bed
	scf			;6bee
	ex af,af'		;6bef
	inc h			;6bf0
	scf			;6bf1
	ex af,af'		;6bf2
	inc h			;6bf3
	scf			;6bf4
	ex af,af'		;6bf5
	inc h			;6bf6
	scf			;6bf7
	ex af,af'		;6bf8
	inc h			;6bf9
	ld a,a			;6bfa
	ret nz			;6bfb
	jr nz,l6c71h		;6bfc
	rst 8			;6bfe
	jr nz,l6c74h		;6bff
	rst 8			;6c01
	jr nz,l6c77h		;6c02
	rst 8			;6c04
	jr nz,l6c7ah		;6c05
	rst 8			;6c07
	jr nz,l6c7dh		;6c08
	rst 8			;6c0a
	jr nz,l6c80h		;6c0b
	rst 8			;6c0d
	jr nz,l6c88h		;6c0e
	rst 0			;6c10
	jr nz,$+1		;6c11
	nop			;6c13
	inc b			;6c14
	ld a,h			;6c15
	ld a,e			;6c16
	add a,b			;6c17
	ld a,b			;6c18
	ld a,b			;6c19
	add a,a			;6c1a
	ld a,a			;6c1b
	ld a,a			;6c1c
	add a,b			;6c1d
	ld a,a			;6c1e
	ld a,a			;6c1f
	add a,b			;6c20
	ld a,a			;6c21
	ld a,a			;6c22
	add a,b			;6c23
	ccf			;6c24
	ccf			;6c25
	ret nz			;6c26
	ret nz			;6c27
	rst 38h			;6c28
	nop			;6c29
	ret p			;6c2a
	nop			;6c2b
	nop			;6c2c
	nop			;6c2d
	add a,b			;6c2e
	nop			;6c2f
	nop			;6c30
	nop			;6c31
	nop			;6c32
	nop			;6c33
	nop			;6c34
	nop			;6c35
	nop			;6c36
	nop			;6c37
	nop			;6c38
	nop			;6c39
	nop			;6c3a
	rlca			;6c3b
	nop			;6c3c
	nop			;6c3d
	inc c			;6c3e
	inc bc			;6c3f
	nop			;6c40
	inc de			;6c41
l6c42h:
	rrca			;6c42
	nop			;6c43
	inc (hl)		;6c44
	inc c			;6c45
	inc bc			;6c46
	jr z,l6c61h		;6c47
	rlca			;6c49
	nop			;6c4a
	nop			;6c4b
	nop			;6c4c
	nop			;6c4d
	nop			;6c4e
	nop			;6c4f
	nop			;6c50
	nop			;6c51
	nop			;6c52
	ret nz			;6c53
	nop			;6c54
	nop			;6c55
	ld h,b			;6c56
	add a,b			;6c57
	nop			;6c58
	sub b			;6c59
	ret po			;6c5a
	nop			;6c5b
	ld e,b			;6c5c
	ld h,b			;6c5d
	add a,b			;6c5e
	jr z,l6c91h		;6c5f
l6c61h:
	ret nz			;6c61
	nop			;6c62
	nop			;6c63
	nop			;6c64
	rrca			;6c65
	nop			;6c66
	nop			;6c67
	jr c,l6c71h		;6c68
	nop			;6c6a
	ld h,a			;6c6b
	rra			;6c6c
	nop			;6c6d
	ld e,h			;6c6e
	inc a			;6c6f
	inc bc			;6c70
l6c71h:
	ret nc			;6c71
	jr nc,l6c83h		;6c72
l6c74h:
	or b			;6c74
	ld (hl),b		;6c75
	rrca			;6c76
l6c77h:
	and b			;6c77
	ld h,b			;6c78
	rra			;6c79
l6c7ah:
	nop			;6c7a
	nop			;6c7b
	nop			;6c7c
l6c7dh:
	ret po			;6c7d
	nop			;6c7e
	nop			;6c7f
l6c80h:
	jr c,l6c42h		;6c80
	nop			;6c82
l6c83h:
	call z,000f0h		;6c83
	ld (hl),h		;6c86
	ld a,b			;6c87
l6c88h:
	add a,b			;6c88
	ld d,018h		;6c89
	ret po			;6c8b
	ld a,(de)		;6c8c
	inc e			;6c8d
	ret po			;6c8e
	ld a,(bc)		;6c8f
	inc c			;6c90
l6c91h:
	ret p			;6c91
	nop			;6c92
	nop			;6c93
l6c94h:
	nop			;6c94
	rrca			;6c95
	rrca			;6c96
	nop			;6c97
	jr nc,l6ccah		;6c98
	rrca			;6c9a
	ld h,b			;6c9b
	ld h,b			;6c9c
	rra			;6c9d
	ld b,b			;6c9e
	ld b,b			;6c9f
	ccf			;6ca0
	add a,b			;6ca1
	add a,b			;6ca2
	ld a,a			;6ca3
	add a,b			;6ca4
	add a,b			;6ca5
	ld a,a			;6ca6
	add a,b			;6ca7
	add a,b			;6ca8
	ld a,a			;6ca9
	nop			;6caa
	nop			;6cab
	nop			;6cac
	ret po			;6cad
	ret po			;6cae
	nop			;6caf
	jr l6ccah		;6cb0
	ret po			;6cb2
	inc c			;6cb3
	inc c			;6cb4
	ret p			;6cb5
	inc b			;6cb6
	inc b			;6cb7
	ret m			;6cb8
	ld (bc),a		;6cb9
	ld (bc),a		;6cba
	call m,00202h		;6cbb
	call m,00202h		;6cbe
	call m,00000h		;6cc1
	nop			;6cc4
	nop			;6cc5
	nop			;6cc6
	nop			;6cc7
	nop			;6cc8
	nop			;6cc9
l6ccah:
	nop			;6cca
	nop			;6ccb
l6ccch:
	nop			;6ccc
	rlca			;6ccd
	inc bc			;6cce
	nop			;6ccf
	inc c			;6cd0
	rrca			;6cd1
	nop			;6cd2
	djnz l6ce1h		;6cd3
	inc bc			;6cd5
	jr nc,l6cf1h		;6cd6
	rlca			;6cd8
	jr nz,l6cdbh		;6cd9
l6cdbh:
	nop			;6cdb
	nop			;6cdc
	nop			;6cdd
	nop			;6cde
	nop			;6cdf
	nop			;6ce0
l6ce1h:
	nop			;6ce1
	nop			;6ce2
	nop			;6ce3
	nop			;6ce4
	ret nz			;6ce5
	add a,b			;6ce6
	nop			;6ce7
	ld h,b			;6ce8
	ret po			;6ce9
	nop			;6cea
	djnz l6d4dh		;6ceb
	add a,b			;6ced
	jr l6d20h		;6cee
	ret nz			;6cf0
l6cf1h:
	ex af,af'		;6cf1
	add hl,de		;6cf2
	rlca			;6cf3
	jr nz,l6d02h		;6cf4
	inc bc			;6cf6
	jr nc,l6d08h		;6cf7
	nop			;6cf9
	djnz l6cffh		;6cfa
	nop			;6cfc
	inc c			;6cfd
	nop			;6cfe
l6cffh:
	nop			;6cff
	rlca			;6d00
	nop			;6d01
l6d02h:
	nop			;6d02
	nop			;6d03
	nop			;6d04
	nop			;6d05
	nop			;6d06
	nop			;6d07
l6d08h:
	nop			;6d08
	nop			;6d09
	jr nc,l6ccch		;6d0a
	ex af,af'		;6d0c
	ld h,b			;6d0d
	add a,b			;6d0e
	jr l6cf1h		;6d0f
	nop			;6d11
	djnz l6c94h		;6d12
	nop			;6d14
	ld h,b			;6d15
	nop			;6d16
	nop			;6d17
	ret nz			;6d18
	nop			;6d19
	nop			;6d1a
	nop			;6d1b
	nop			;6d1c
	nop			;6d1d
	nop			;6d1e
	nop			;6d1f
l6d20h:
	nop			;6d20
	nop			;6d21
	nop			;6d22
	nop			;6d23
	nop			;6d24
	nop			;6d25
	nop			;6d26
	nop			;6d27
	nop			;6d28
	nop			;6d29
	nop			;6d2a
	nop			;6d2b
	nop			;6d2c
	nop			;6d2d
	nop			;6d2e
	nop			;6d2f
	nop			;6d30
	nop			;6d31
	nop			;6d32
	nop			;6d33
	nop			;6d34
	nop			;6d35
	nop			;6d36
	nop			;6d37
	nop			;6d38
	rst 38h			;6d39
	nop			;6d3a
	nop			;6d3b
	rrca			;6d3c
	adc a,(hl)		;6d3d
	nop			;6d3e
	nop			;6d3f
	rrca			;6d40
	ld a,b			;6d41
	nop			;6d42
	nop			;6d43
	nop			;6d44
	nop			;6d45
	nop			;6d46
	nop			;6d47
	nop			;6d48
	nop			;6d49
	nop			;6d4a
	nop			;6d4b
	nop			;6d4c
l6d4dh:
	nop			;6d4d
	nop			;6d4e
	nop			;6d4f
	nop			;6d50
	nop			;6d51
	nop			;6d52
	nop			;6d53
	nop			;6d54
	nop			;6d55
	rst 38h			;6d56
	rst 38h			;6d57
	rst 38h			;6d58
	rst 38h			;6d59
	rst 30h			;6d5a
	adc a,b			;6d5b
	adc a,b			;6d5c
	adc a,b			;6d5d
	or 066h			;6d5e
	ld h,(hl)		;6d60
	ld h,(hl)		;6d61
	nop			;6d62
	nop			;6d63
	nop			;6d64
	nop			;6d65
	nop			;6d66
	nop			;6d67
	nop			;6d68
	nop			;6d69
	nop			;6d6a
	nop			;6d6b
	nop			;6d6c
	nop			;6d6d
	nop			;6d6e
	nop			;6d6f
	nop			;6d70
	nop			;6d71
	nop			;6d72
	nop			;6d73
	nop			;6d74
	nop			;6d75
	rst 38h			;6d76
	rst 38h			;6d77
	nop			;6d78
	nop			;6d79
	adc a,b			;6d7a
	adc a,b			;6d7b
	rst 38h			;6d7c
	rst 38h			;6d7d
	ld h,(hl)		;6d7e
	ld h,(hl)		;6d7f
	ld (hl),a		;6d80
	ret p			;6d81
	nop			;6d82
	nop			;6d83
	nop			;6d84
	nop			;6d85
	nop			;6d86
	nop			;6d87
	nop			;6d88
	nop			;6d89
	nop			;6d8a
	nop			;6d8b
	nop			;6d8c
	add hl,bc		;6d8d
	nop			;6d8e
	nop			;6d8f
	nop			;6d90
	nop			;6d91
	nop			;6d92
	rrca			;6d93
	rst 38h			;6d94
	rst 38h			;6d95
	nop			;6d96
	rst 38h			;6d97
	adc a,b			;6d98
	adc a,b			;6d99
	rst 38h			;6d9a
	rst 28h			;6d9b
	rst 30h			;6d9c
	ld (hl),a		;6d9d
	ld (hl),a		;6d9e
	nop			;6d9f
	rst 38h			;6da0
	rst 38h			;6da1
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
	nop			;6dac
	nop			;6dad
	add hl,bc		;6dae
	nop			;6daf
	nop			;6db0
	nop			;6db1
	nop			;6db2
	nop			;6db3
	nop			;6db4
	nop			;6db5
	rst 38h			;6db6
	ret p			;6db7
	nop			;6db8
	nop			;6db9
	ld a,a			;6dba
	rst 38h			;6dbb
	ret p			;6dbc
	nop			;6dbd
	rst 30h			;6dbe
	adc a,b			;6dbf
	adc a,a			;6dc0
	nop			;6dc1
	nop			;6dc2
	nop			;6dc3
	rrca			;6dc4
	rst 38h			;6dc5
	nop			;6dc6
	nop			;6dc7
	rrca			;6dc8
	ld a,(hl)		;6dc9
	nop			;6dca
	nop			;6dcb
	rrca			;6dcc
	ld a,b			;6dcd
	nop			;6dce
	nop			;6dcf
	rrca			;6dd0
	ld a,b			;6dd1
	nop			;6dd2
	nop			;6dd3
	rrca			;6dd4
	ld a,b			;6dd5
	nop			;6dd6
	nop			;6dd7
	rrca			;6dd8
	ld a,b			;6dd9
	nop			;6dda
	nop			;6ddb
	rrca			;6ddc
	ld a,b			;6ddd
	nop			;6dde
	nop			;6ddf
	adc a,a			;6de0
	rst 38h			;6de1
	ld l,a			;6de2
	rst 38h			;6de3
	rst 38h			;6de4
	rst 38h			;6de5
	ret m			;6de6
	cp 0eeh			;6de7
	xor 0f7h		;6de9
	ret m			;6deb
	adc a,b			;6dec
	adc a,b			;6ded
	rst 30h			;6dee
	ret m			;6def
	adc a,b			;6df0
	rst 30h			;6df1
	rst 30h			;6df2
	ret m			;6df3
	ld a,b			;6df4
	rst 38h			;6df5
	rst 30h			;6df6
	ret m			;6df7
	adc a,b			;6df8
	adc a,b			;6df9
	rst 30h			;6dfa
	rst 38h			;6dfb
	rst 38h			;6dfc
	rst 38h			;6dfd
	rst 38h			;6dfe
	rst 30h			;6dff
	adc a,b			;6e00
	add a,a			;6e01
	rst 38h			;6e02
	rst 38h			;6e03
	rst 38h			;6e04
	ret m			;6e05
	xor 0e6h		;6e06
	xor 0efh		;6e08
	adc a,b			;6e0a
	adc a,b			;6e0b
	ld l,b			;6e0c
	adc a,b			;6e0d
	adc a,b			;6e0e
	ld l,b			;6e0f
	ld l,b			;6e10
	adc a,a			;6e11
	rst 38h			;6e12
	ret m			;6e13
	ld l,b			;6e14
	rst 38h			;6e15
	adc a,b			;6e16
	adc a,b			;6e17
	ld l,a			;6e18
	rst 30h			;6e19
	rst 38h			;6e1a
	rst 38h			;6e1b
	rst 38h			;6e1c
	rst 30h			;6e1d
	ret m			;6e1e
	adc a,b			;6e1f
	rst 38h			;6e20
	or 088h			;6e21
	adc a,b			;6e23
	ld (hl),a		;6e24
	ld (hl),a		;6e25
	ld (hl),a		;6e26
	ld (hl),a		;6e27
	adc a,(hl)		;6e28
	xor 0f6h		;6e29
	ld (hl),a		;6e2b
	adc a,b			;6e2c
	adc a,b			;6e2d
	rst 38h			;6e2e
	rst 38h			;6e2f
	rst 38h			;6e30
	ld h,a			;6e31
	ld (hl),a		;6e32
	ld a,a			;6e33
	rst 38h			;6e34
	rst 38h			;6e35
	adc a,(hl)		;6e36
	add a,a			;6e37
	rst 30h			;6e38
	adc a,b			;6e39
	adc a,b			;6e3a
	add a,a			;6e3b
	rst 38h			;6e3c
	rst 38h			;6e3d
	ld (hl),a		;6e3e
	halt			;6e3f
	cp 088h			;6e40
	ld a,a			;6e42
	ld (hl),a		;6e43
	ld a,a			;6e44
	ret p			;6e45
	xor 0ffh		;6e46
	rst 30h			;6e48
	ld a,a			;6e49
	adc a,b			;6e4a
	adc a,b			;6e4b
	cp 08fh			;6e4c
	ld (hl),a		;6e4e
	ld (hl),a		;6e4f
	rst 30h			;6e50
	ld a,a			;6e51
	rst 38h			;6e52
	rst 38h			;6e53
	ld b,06fh		;6e54
	add a,a			;6e56
	ld a,a			;6e57
	rst 38h			;6e58
	ret p			;6e59
	rst 38h			;6e5a
	rst 38h			;6e5b
	ret p			;6e5c
	nop			;6e5d
	adc a,b			;6e5e
	add a,a			;6e5f
	ret p			;6e60
	nop			;6e61
	nop			;6e62
	sbc a,b			;6e63
	ld (hl),b		;6e64
	rst 30h			;6e65
	nop			;6e66
	nop			;6e67
	nop			;6e68
	rrca			;6e69
	nop			;6e6a
	nop			;6e6b
	nop			;6e6c
	nop			;6e6d
	nop			;6e6e
	nop			;6e6f
	nop			;6e70
	sbc a,b			;6e71
	nop			;6e72
	nop			;6e73
	nop			;6e74
	nop			;6e75
	nop			;6e76
	nop			;6e77
	nop			;6e78
	nop			;6e79
	nop			;6e7a
	nop			;6e7b
	nop			;6e7c
	nop			;6e7d
	nop			;6e7e
	nop			;6e7f
	nop			;6e80
	nop			;6e81
	add a,b			;6e82
	ld b,066h		;6e83
	ld h,(hl)		;6e85
	or 08fh			;6e86
	rst 38h			;6e88
	rst 38h			;6e89
	sub b			;6e8a
	nop			;6e8b
	nop			;6e8c
	nop			;6e8d
	nop			;6e8e
	nop			;6e8f
	nop			;6e90
	nop			;6e91
	nop			;6e92
	nop			;6e93
	nop			;6e94
	nop			;6e95
	nop			;6e96
	nop			;6e97
	nop			;6e98
	nop			;6e99
	nop			;6e9a
	nop			;6e9b
	nop			;6e9c
	nop			;6e9d
	nop			;6e9e
	nop			;6e9f
	nop			;6ea0
	nop			;6ea1
	or 06fh			;6ea2
	rrca			;6ea4
	rst 38h			;6ea5
	rst 38h			;6ea6
	rst 30h			;6ea7
	rst 38h			;6ea8
	rst 38h			;6ea9
	nop			;6eaa
	rst 38h			;6eab
	rst 38h			;6eac
	ld l,b			;6ead
	nop			;6eae
	nop			;6eaf
	nop			;6eb0
	rst 38h			;6eb1
	nop			;6eb2
	nop			;6eb3
	nop			;6eb4
	nop			;6eb5
	nop			;6eb6
	nop			;6eb7
	nop			;6eb8
	nop			;6eb9
	nop			;6eba
	nop			;6ebb
	nop			;6ebc
	nop			;6ebd
	nop			;6ebe
	nop			;6ebf
	nop			;6ec0
	nop			;6ec1
	ld h,(hl)		;6ec2
	ld l,a			;6ec3
	ret m			;6ec4
	ld (hl),a		;6ec5
	rst 38h			;6ec6
	rst 38h			;6ec7
	adc a,a			;6ec8
	rst 38h			;6ec9
	rst 38h			;6eca
	nop			;6ecb
	ret m			;6ecc
	ld h,(hl)		;6ecd
	ret p			;6ece
	nop			;6ecf
	rrca			;6ed0
	adc a,b			;6ed1
	nop			;6ed2
	nop			;6ed3
	nop			;6ed4
	rst 38h			;6ed5
	nop			;6ed6
	nop			;6ed7
	sub (hl)		;6ed8
	nop			;6ed9
	nop			;6eda
	nop			;6edb
	nop			;6edc
	nop			;6edd
	nop			;6ede
	nop			;6edf
	nop			;6ee0
	nop			;6ee1
	ld (hl),a		;6ee2
	halt			;6ee3
	ret p			;6ee4
	nop			;6ee5
	rst 38h			;6ee6
	rst 38h			;6ee7
	nop			;6ee8
	nop			;6ee9
	ld l,a			;6eea
	nop			;6eeb
	nop			;6eec
	nop			;6eed
	ld a,a			;6eee
	nop			;6eef
	nop			;6ef0
	nop			;6ef1
	rst 38h			;6ef2
	nop			;6ef3
	nop			;6ef4
	nop			;6ef5
	nop			;6ef6
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
	nop			;6f04
	nop			;6f05
	nop			;6f06
	nop			;6f07
	nop			;6f08
	nop			;6f09
	nop			;6f0a
	nop			;6f0b
	nop			;6f0c
	add hl,bc		;6f0d
	nop			;6f0e
	nop			;6f0f
	nop			;6f10
	nop			;6f11
	nop			;6f12
	nop			;6f13
	nop			;6f14
	nop			;6f15
	nop			;6f16
	nop			;6f17
	nop			;6f18
	nop			;6f19
	nop			;6f1a
	nop			;6f1b
	nop			;6f1c
	rrca			;6f1d
	nop			;6f1e
	nop			;6f1f
	nop			;6f20
	rrca			;6f21
	nop			;6f22
	nop			;6f23
	nop			;6f24
	nop			;6f25
	nop			;6f26
	nop			;6f27
	nop			;6f28
	nop			;6f29
	ld (hl),b		;6f2a
	nop			;6f2b
	sub b			;6f2c
	nop			;6f2d
	nop			;6f2e
	nop			;6f2f
	nop			;6f30
	nop			;6f31
	rrca			;6f32
	rst 38h			;6f33
	nop			;6f34
	nop			;6f35
	rst 30h			;6f36
	adc a,(hl)		;6f37
	rst 38h			;6f38
	rst 38h			;6f39
	ld a,a			;6f3a
	rst 38h			;6f3b
	ret m			;6f3c
	adc a,a			;6f3d
	ld a,a			;6f3e
	or 077h			;6f3f
	rst 30h			;6f41
	nop			;6f42
	nop			;6f43
	nop			;6f44
	nop			;6f45
	nop			;6f46
	nop			;6f47
	nop			;6f48
	nop			;6f49
	nop			;6f4a
	nop			;6f4b
	nop			;6f4c
	nop			;6f4d
	nop			;6f4e
	nop			;6f4f
	nop			;6f50
	nop			;6f51
	nop			;6f52
	nop			;6f53
	nop			;6f54
	nop			;6f55
	rst 38h			;6f56
	ret p			;6f57
	nop			;6f58
	nop			;6f59
	ld (hl),a		;6f5a
	ld a,a			;6f5b
	nop			;6f5c
	nop			;6f5d
	adc a,(hl)		;6f5e
	rst 28h			;6f5f
	nop			;6f60
	nop			;6f61
	nop			;6f62
	nop			;6f63
	nop			;6f64
	rst 38h			;6f65
	nop			;6f66
	nop			;6f67
	nop			;6f68
	ret m			;6f69
	nop			;6f6a
	nop			;6f6b
	nop			;6f6c
	or 000h			;6f6d
	nop			;6f6f
	rrca			;6f70
	adc a,a			;6f71
	nop			;6f72
	nop			;6f73
	rrca			;6f74
	ld a,b			;6f75
	rrca			;6f76
	rst 38h			;6f77
	rst 38h			;6f78
	rst 30h			;6f79
	rst 30h			;6f7a
	ld (hl),a		;6f7b
	ld h,(hl)		;6f7c
	rst 38h			;6f7d
	ret m			;6f7e
	adc a,b			;6f7f
	adc a,b			;6f80
	ld a,a			;6f81
	rst 30h			;6f82
	adc a,a			;6f83
	ld h,(hl)		;6f84
	rst 30h			;6f85
	adc a,a			;6f86
	rst 30h			;6f87
	rst 38h			;6f88
	rst 30h			;6f89
	adc a,b			;6f8a
	rst 38h			;6f8b
	ld (hl),a		;6f8c
	rst 38h			;6f8d
	ld l,a			;6f8e
	adc a,b			;6f8f
	rst 38h			;6f90
	ld h,a			;6f91
	rst 38h			;6f92
	ld a,a			;6f93
	adc a,a			;6f94
	ld h,(hl)		;6f95
	rst 38h			;6f96
	ld a,a			;6f97
	ld a,a			;6f98
	ld l,a			;6f99
	rst 38h			;6f9a
	rst 38h			;6f9b
	ld a,a			;6f9c
	ld h,(hl)		;6f9d
	ret m			;6f9e
	rst 38h			;6f9f
	ld a,a			;6fa0
	ld h,(hl)		;6fa1
	ld a,b			;6fa2
	adc a,b			;6fa3
	ret p			;6fa4
	nop			;6fa5
	ld (hl),a		;6fa6
	ld (hl),a		;6fa7
	ret p			;6fa8
	nop			;6fa9
	rst 38h			;6faa
	rst 38h			;6fab
	ret p			;6fac
	nop			;6fad
	adc a,b			;6fae
	xor 0f0h		;6faf
	nop			;6fb1
	ld a,b			;6fb2
	ret pe			;6fb3
	ret p			;6fb4
	nop			;6fb5
	ld a,b			;6fb6
	ret pe			;6fb7
	rst 38h			;6fb8
	ret p			;6fb9
	ld h,a			;6fba
	halt			;6fbb
	or 06fh			;6fbc
	ld a,b			;6fbe
	xor 0f8h		;6fbf
	adc a,a			;6fc1
	or 086h			;6fc2
	ld h,(hl)		;6fc4
	ld a,a			;6fc5
	rrca			;6fc6
	rst 38h			;6fc7
	rst 38h			;6fc8
	rst 38h			;6fc9
	nop			;6fca
	nop			;6fcb
	nop			;6fcc
	rrca			;6fcd
	nop			;6fce
	nop			;6fcf
	nop			;6fd0
	nop			;6fd1
	nop			;6fd2
	nop			;6fd3
	nop			;6fd4
	nop			;6fd5
	nop			;6fd6
	nop			;6fd7
	nop			;6fd8
	nop			;6fd9
	nop			;6fda
	nop			;6fdb
	nop			;6fdc
	nop			;6fdd
	nop			;6fde
	nop			;6fdf
	nop			;6fe0
	nop			;6fe1
	adc a,(hl)		;6fe2
	ld a,a			;6fe3
	ld a,a			;6fe4
	ld h,(hl)		;6fe5
	adc a,b			;6fe6
	ld a,a			;6fe7
	ld a,a			;6fe8
	ld h,(hl)		;6fe9
	ld (hl),a		;6fea
	ld a,a			;6feb
	rst 38h			;6fec
	ld h,(hl)		;6fed
	or 0ffh			;6fee
	adc a,a			;6ff0
	ld l,a			;6ff1
	rrca			;6ff2
	or 07fh			;6ff3
	ld h,(hl)		;6ff5
	rrca			;6ff6
	or 06fh			;6ff7
	ld h,(hl)		;6ff9
	nop			;6ffa
	rst 38h			;6ffb
	ld l,a			;6ffc
	ld h,(hl)		;6ffd
	nop			;6ffe
	rst 30h			;6fff
	rst 38h			;7000
	ld h,(hl)		;7001
	ld a,b			;7002
	ret pe			;7003
	rst 38h			;7004
	ret p			;7005
	ld a,b			;7006
	ret pe			;7007
	ret p			;7008
	nop			;7009
	ld a,b			;700a
	ret pe			;700b
	ret p			;700c
	nop			;700d
	ld a,b			;700e
	ret pe			;700f
	ret p			;7010
	nop			;7011
	ld h,a			;7012
	halt			;7013
	ret p			;7014
	nop			;7015
	ld a,b			;7016
	xor 0f0h		;7017
	nop			;7019
	ld a,b			;701a
	ret pe			;701b
	ret p			;701c
	nop			;701d
	ld a,b			;701e
	ret pe			;701f
	ret p			;7020
	nop			;7021
	nop			;7022
	rrca			;7023
	ld a,a			;7024
	ld h,(hl)		;7025
	nop			;7026
	rrca			;7027
	ld l,a			;7028
	rst 38h			;7029
	nop			;702a
	nop			;702b
	rst 38h			;702c
	ld l,a			;702d
	nop			;702e
	nop			;702f
	rst 38h			;7030
	ld l,b			;7031
	nop			;7032
	nop			;7033
	rrca			;7034
	ld l,b			;7035
	nop			;7036
	nop			;7037
	rrca			;7038
	ld l,b			;7039
	nop			;703a
	nop			;703b
	nop			;703c
	push af			;703d
	nop			;703e
	nop			;703f
	add hl,bc		;7040
	nop			;7041
	ld (hl),a		;7042
	halt			;7043
	ret p			;7044
	nop			;7045
	ld h,(hl)		;7046
	ld l,a			;7047
	ret p			;7048
	nop			;7049
	rst 38h			;704a
	rst 38h			;704b
	add a,b			;704c
	nop			;704d
	ld l,b			;704e
	ld a,a			;704f
	ld l,b			;7050
	add hl,bc		;7051
	ld h,a			;7052
	ret p			;7053
	ld b,080h		;7054
	rst 38h			;7056
	nop			;7057
	nop			;7058
	ld h,b			;7059
	nop			;705a
	nop			;705b
	add hl,bc		;705c
	nop			;705d
	sub b			;705e
	nop			;705f
	nop			;7060
	nop			;7061
	nop			;7062
	nop			;7063
	nop			;7064
	nop			;7065
	nop			;7066
	nop			;7067
	nop			;7068
	nop			;7069
	nop			;706a
	nop			;706b
	nop			;706c
	nop			;706d
	nop			;706e
	nop			;706f
	nop			;7070
	nop			;7071
	nop			;7072
	nop			;7073
	nop			;7074
	nop			;7075
	nop			;7076
	nop			;7077
	nop			;7078
	rrca			;7079
	nop			;707a
	nop			;707b
	nop			;707c
	or 000h			;707d
	nop			;707f
	rrca			;7080
	ld h,a			;7081
	nop			;7082
	nop			;7083
	nop			;7084
	nop			;7085
	nop			;7086
	nop			;7087
	nop			;7088
	nop			;7089
	nop			;708a
	nop			;708b
	nop			;708c
	nop			;708d
	nop			;708e
	rst 38h			;708f
	rst 38h			;7090
	rst 38h			;7091
	rst 38h			;7092
	rst 38h			;7093
	rst 30h			;7094
	ld (hl),a		;7095
	ld h,a			;7096
	ld (hl),a		;7097
	rst 38h			;7098
	ld a,b			;7099
	ld a,b			;709a
	adc a,b			;709b
	ld a,a			;709c
	adc a,(hl)		;709d
	adc a,b			;709e
	ret pe			;709f
	add a,a			;70a0
	ret m			;70a1
	nop			;70a2
	nop			;70a3
	nop			;70a4
	nop			;70a5
	nop			;70a6
	nop			;70a7
	nop			;70a8
	nop			;70a9
	nop			;70aa
	nop			;70ab
	nop			;70ac
	nop			;70ad
	rst 38h			;70ae
	rst 38h			;70af
	rst 38h			;70b0
	ret p			;70b1
	halt			;70b2
	ld h,a			;70b3
	halt			;70b4
	ld l,a			;70b5
	adc a,b			;70b6
	ld l,b			;70b7
	add a,a			;70b8
	ld (hl),a		;70b9
	xor 0e6h		;70ba
	adc a,b			;70bc
	adc a,b			;70bd
	xor 0e6h		;70be
	xor 0eeh		;70c0
	nop			;70c2
	nop			;70c3
	nop			;70c4
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
	nop			;70d1
	rst 38h			;70d2
	ret p			;70d3
	nop			;70d4
	nop			;70d5
	ld (hl),a		;70d6
	ld a,a			;70d7
	rst 38h			;70d8
	nop			;70d9
	ld a,b			;70da
	add a,a			;70db
	ld (hl),a		;70dc
	rst 38h			;70dd
	ld a,(hl)		;70de
	adc a,b			;70df
	adc a,b			;70e0
	ld a,a			;70e1
	nop			;70e2
	nop			;70e3
	nop			;70e4
	nop			;70e5
	nop			;70e6
	nop			;70e7
	nop			;70e8
	rrca			;70e9
	nop			;70ea
	nop			;70eb
	nop			;70ec
	rst 30h			;70ed
	nop			;70ee
	nop			;70ef
	rrca			;70f0
	ld a,a			;70f1
	nop			;70f2
	nop			;70f3
	rrca			;70f4
	rst 38h			;70f5
	nop			;70f6
	rrca			;70f7
	rst 38h			;70f8
	rst 38h			;70f9
	rrca			;70fa
	rst 38h			;70fb
	or 066h			;70fc
	rst 38h			;70fe
	ld a,a			;70ff
	rst 38h			;7100
	rst 38h			;7101
	nop			;7102
	nop			;7103
	sub b			;7104
	nop			;7105
	rst 38h			;7106
	rst 38h			;7107
	rst 38h			;7108
	rst 38h			;7109
	ld a,b			;710a
	adc a,b			;710b
	xor 0e8h		;710c
	rst 38h			;710e
	rst 38h			;710f
	rst 38h			;7110
	rst 38h			;7111
	defb 0fdh,0fdh,0ffh ;illegal sequence	;7112
	rst 18h			;7115
	rst 38h			;7116
	rst 38h			;7117
	rst 38h			;7118
	rst 38h			;7119
	ld h,(hl)		;711a
	ld (hl),a		;711b
	ld a,b			;711c
	rst 28h			;711d
	rst 30h			;711e
	ld (hl),a		;711f
	adc a,(hl)		;7120
	ret pe			;7121
	add hl,bc		;7122
	nop			;7123
	nop			;7124
	sub b			;7125
	ret p			;7126
	nop			;7127
	nop			;7128
	ex af,af'		;7129
	adc a,a			;712a
	ret p			;712b
	ex af,af'		;712c
	ld a,a			;712d
	adc a,b			;712e
	adc a,a			;712f
	add a,a			;7130
	ret p			;7131
	rst 38h			;7132
	add a,a			;7133
	rst 38h			;7134
	nop			;7135
	rst 38h			;7136
	ld (hl),a		;7137
	rst 28h			;7138
	nop			;7139
	ld sp,hl		;713a
	cp 0e8h			;713b
	ret p			;713d
	ld a,a			;713e
	cp 087h			;713f
	ld a,a			;7141
	nop			;7142
	nop			;7143
	nop			;7144
	nop			;7145
	ret p			;7146
	sub b			;7147
	nop			;7148
	nop			;7149
	nop			;714a
	nop			;714b
	nop			;714c
	nop			;714d
	nop			;714e
	nop			;714f
	nop			;7150
	nop			;7151
	nop			;7152
	nop			;7153
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
	nop			;7162
	nop			;7163
	rrca			;7164
	ld (hl),a		;7165
	nop			;7166
	nop			;7167
	or 078h			;7168
	nop			;716a
	nop			;716b
	rst 30h			;716c
	ld a,b			;716d
	nop			;716e
	nop			;716f
	rst 30h			;7170
	adc a,b			;7171
	nop			;7172
	rrca			;7173
	ld h,a			;7174
	adc a,b			;7175
	nop			;7176
	rrca			;7177
	ld h,a			;7178
	adc a,b			;7179
	nop			;717a
	rrca			;717b
	ld h,a			;717c
	ld a,b			;717d
	nop			;717e
	rrca			;717f
	or 077h			;7180
	adc a,b			;7182
	xor 087h		;7183
	ret m			;7185
	adc a,b			;7186
	xor 087h		;7187
	rst 30h			;7189
	adc a,b			;718a
	xor 087h		;718b
	ld l,a			;718d
	adc a,(hl)		;718e
	xor 087h		;718f
	ld l,a			;7191
	adc a,(hl)		;7192
	ret pe			;7193
	add a,a			;7194
	ld l,a			;7195
	xor 088h		;7196
	ld (hl),a		;7198
	ld l,a			;7199
	adc a,b			;719a
	ld (hl),a		;719b
	halt			;719c
	rst 38h			;719d
	ld (hl),a		;719e
	halt			;719f
	ld l,a			;71a0
	rst 38h			;71a1
	xor 0eeh		;71a2
	ld l,(hl)		;71a4
	xor 088h		;71a5
	adc a,b			;71a7
	ld l,b			;71a8
	adc a,b			;71a9
	adc a,(hl)		;71aa
	xor 0e6h		;71ab
	adc a,b			;71ad
	adc a,(hl)		;71ae
	xor 0e6h		;71af
	xor 078h		;71b1
	adc a,b			;71b3
	adc a,b			;71b4
	ld l,b			;71b5
	ld a,b			;71b6
	adc a,b			;71b7
	adc a,b			;71b8
	ld h,a			;71b9
	ld h,a			;71ba
	ld (hl),a		;71bb
	ld (hl),a		;71bc
	ld l,a			;71bd
	ld h,a			;71be
	ld (hl),a		;71bf
	ld h,(hl)		;71c0
	rst 38h			;71c1
	rst 20h			;71c2
	xor 0e8h		;71c3
	add a,a			;71c5
	add a,a			;71c6
	adc a,(hl)		;71c7
	xor 0e8h		;71c8
	adc a,b			;71ca
	ld a,b			;71cb
	adc a,b			;71cc
	adc a,b			;71cd
	xor 07eh		;71ce
	xor 08eh		;71d0
	adc a,b			;71d2
	add a,a			;71d3
	adc a,b			;71d4
	adc a,b			;71d5
	ld (hl),a		;71d6
	ld (hl),a		;71d7
	ld (hl),a		;71d8
	ld (hl),a		;71d9
	ld h,(hl)		;71da
	ld h,(hl)		;71db
	ld h,(hl)		;71dc
	rst 38h			;71dd
	rst 38h			;71de
	rst 38h			;71df
	rst 38h			;71e0
	ld (hl),a		;71e1
	ld a,a			;71e2
	rst 30h			;71e3
	ld a,b			;71e4
	adc a,b			;71e5
	add a,a			;71e6
	ld a,a			;71e7
	rst 38h			;71e8
	ld h,(hl)		;71e9
	adc a,b			;71ea
	add a,a			;71eb
	rst 38h			;71ec
	rst 38h			;71ed
	adc a,b			;71ee
	adc a,b			;71ef
	ld a,a			;71f0
	ld a,b			;71f1
	adc a,b			;71f2
	adc a,b			;71f3
	add a,a			;71f4
	rst 30h			;71f5
	ld (hl),a		;71f6
	ld (hl),a		;71f7
	ld a,a			;71f8
	rst 38h			;71f9
	rst 38h			;71fa
	rst 38h			;71fb
	rst 30h			;71fc
	ld a,a			;71fd
	ld (hl),a		;71fe
	ld (hl),a		;71ff
	ld a,(hl)		;7200
	xor 08fh		;7201
	rst 38h			;7203
	rst 38h			;7204
	add a,a			;7205
	ld h,(hl)		;7206
	ld (hl),a		;7207
	ld l,a			;7208
	rst 38h			;7209
	rst 38h			;720a
	rst 38h			;720b
	rst 38h			;720c
	adc a,b			;720d
	adc a,(hl)		;720e
	ret pe			;720f
	ld (hl),a		;7210
	ld h,(hl)		;7211
	ld (hl),a		;7212
	ld a,a			;7213
	rst 38h			;7214
	rst 38h			;7215
	rst 38h			;7216
	rst 38h			;7217
	ld l,b			;7218
	rst 30h			;7219
	or 08eh			;721a
	ld l,b			;721c
	or 0f6h			;721d
	adc a,(hl)		;721f
	rst 38h			;7220
	rst 38h			;7221
	halt			;7222
	ret m			;7223
	ld (hl),a		;7224
	ld a,a			;7225
	rst 38h			;7226
	ld (hl),a		;7227
	ld a,a			;7228
	rst 38h			;7229
	adc a,b			;722a
	ld l,a			;722b
	rst 38h			;722c
	ld a,b			;722d
	ld l,a			;722e
	rst 38h			;722f
	ret m			;7230
	adc a,(hl)		;7231
	or 07fh			;7232
	adc a,(hl)		;7234
	xor 077h		;7235
	adc a,a			;7237
	ld a,b			;7238
	adc a,b			;7239
	adc a,b			;723a
	adc a,b			;723b
	rst 38h			;723c
	rst 38h			;723d
	ld a,b			;723e
	rst 38h			;723f
	rst 30h			;7240
	adc a,b			;7241
	nop			;7242
	nop			;7243
	nop			;7244
	nop			;7245
	ret p			;7246
	nop			;7247
	nop			;7248
	nop			;7249
	adc a,a			;724a
	nop			;724b
	nop			;724c
	nop			;724d
	xor 0f0h		;724e
	nop			;7250
	nop			;7251
	ret pe			;7252
	ld a,a			;7253
	nop			;7254
	nop			;7255
	add a,a			;7256
	ld l,a			;7257
	nop			;7258
	nop			;7259
	ld h,(hl)		;725a
	ld l,a			;725b
	nop			;725c
	nop			;725d
	rst 38h			;725e
	ret p			;725f
	nop			;7260
	nop			;7261
	nop			;7262
	rrca			;7263
	rst 38h			;7264
	ld h,(hl)		;7265
	nop			;7266
	or 0ffh			;7267
	rst 38h			;7269
	nop			;726a
	ret m			;726b
	ld (hl),a		;726c
	ld (hl),a		;726d
	nop			;726e
	rst 30h			;726f
	ld h,(hl)		;7270
	ld h,(hl)		;7271
	nop			;7272
	rst 30h			;7273
	ld h,(hl)		;7274
	ld h,(hl)		;7275
	nop			;7276
	rst 30h			;7277
	ld h,(hl)		;7278
	ld h,(hl)		;7279
	nop			;727a
	rst 30h			;727b
	ld h,(hl)		;727c
	ld h,(hl)		;727d
	nop			;727e
	rst 30h			;727f
	ld h,(hl)		;7280
	ld h,(hl)		;7281
	ld h,(hl)		;7282
	ld h,(hl)		;7283
	rst 38h			;7284
	or 0ffh			;7285
	rst 38h			;7287
	rst 38h			;7288
	or 08eh			;7289
	xor 087h		;728b
	rst 38h			;728d
	ld (hl),a		;728e
	adc a,b			;728f
	halt			;7290
	rst 30h			;7291
	ld (hl),a		;7292
	adc a,b			;7293
	halt			;7294
	or 077h			;7295
	adc a,b			;7297
	halt			;7298
	or 077h			;7299
	adc a,b			;729b
	halt			;729c
	or 077h			;729d
	adc a,b			;729f
	halt			;72a0
	or 066h			;72a1
	ld h,(hl)		;72a3
	rst 38h			;72a4
	or 0ffh			;72a5
	rst 38h			;72a7
	adc a,b			;72a8
	rst 30h			;72a9
	adc a,(hl)		;72aa
	xor 0e7h		;72ab
	or 078h			;72ad
	adc a,b			;72af
	ret pe			;72b0
	or 078h			;72b1
	adc a,b			;72b3
	rst 20h			;72b4
	or 078h			;72b5
	adc a,b			;72b7
	rst 20h			;72b8
	or 078h			;72b9
	adc a,b			;72bb
	rst 20h			;72bc
	or 076h			;72bd
	ret pe			;72bf
	rst 20h			;72c0
	or 077h			;72c1
	ld (hl),a		;72c3
	ld (hl),a		;72c4
	xor 08eh		;72c5
	xor 0eeh		;72c7
	adc a,b			;72c9
	ld a,(hl)		;72ca
	ret pe			;72cb
	adc a,b			;72cc
	adc a,b			;72cd
	ld a,(hl)		;72ce
	add a,(hl)		;72cf
	add a,(hl)		;72d0
	adc a,b			;72d1
	ld a,(hl)		;72d2
	add a,(hl)		;72d3
	add a,(hl)		;72d4
	adc a,b			;72d5
	ld a,(hl)		;72d6
	adc a,b			;72d7
	adc a,b			;72d8
	ld a,a			;72d9
	ld a,(hl)		;72da
	adc a,b			;72db
	add a,a			;72dc
	rst 30h			;72dd
	ld a,(hl)		;72de
	adc a,b			;72df
	add a,a			;72e0
	or 0eeh			;72e1
	xor 0e8h		;72e3
	adc a,b			;72e5
	adc a,b			;72e6
	adc a,b			;72e7
	adc a,b			;72e8
	adc a,b			;72e9
	adc a,b			;72ea
	adc a,b			;72eb
	adc a,b			;72ec
	adc a,b			;72ed
	adc a,b			;72ee
	adc a,b			;72ef
	adc a,b			;72f0
	adc a,b			;72f1
	adc a,b			;72f2
	ld a,a			;72f3
	rst 38h			;72f4
	adc a,b			;72f5
	rst 38h			;72f6
	ret m			;72f7
	adc a,a			;72f8
	adc a,b			;72f9
	adc a,(hl)		;72fa
	ret pe			;72fb
	ld a,a			;72fc
	adc a,a			;72fd
	ld a,(hl)		;72fe
	add a,a			;72ff
	ld a,a			;7300
	rst 38h			;7301
	rst 38h			;7302
	rst 30h			;7303
	or 06fh			;7304
	rst 38h			;7306
	or 06eh			;7307
	rst 28h			;7309
	rst 38h			;730a
	ld a,(hl)		;730b
	xor 08fh		;730c
	rst 38h			;730e
	ld h,a			;730f
	adc a,b			;7310
	adc a,a			;7311
	rst 38h			;7312
	ld h,a			;7313
	adc a,b			;7314
	adc a,a			;7315
	rst 38h			;7316
	ld h,a			;7317
	adc a,b			;7318
	adc a,a			;7319
	rst 38h			;731a
	ld h,a			;731b
	adc a,b			;731c
	adc a,a			;731d
	rst 38h			;731e
	ld h,a			;731f
	adc a,b			;7320
	rst 38h			;7321
	rst 38h			;7322
	ret m			;7323
	adc a,(hl)		;7324
	xor 0f8h		;7325
	xor 0eeh		;7327
	ret pe			;7329
	rst 38h			;732a
	cp 0e8h			;732b
	adc a,b			;732d
	ld l,a			;732e
	rst 38h			;732f
	ret pe			;7330
	adc a,b			;7331
	ld a,a			;7332
	ld l,a			;7333
	ret pe			;7334
	adc a,b			;7335
	ld a,a			;7336
	ld a,a			;7337
	ret pe			;7338
	adc a,b			;7339
	ld a,a			;733a
	ld a,a			;733b
	ret pe			;733c
	ld (hl),a		;733d
	ld a,a			;733e
	ld l,a			;733f
	ld (hl),a		;7340
	rst 38h			;7341
	ret pe			;7342
	rst 38h			;7343
	nop			;7344
	nop			;7345
	adc a,b			;7346
	ld a,a			;7347
	nop			;7348
	nop			;7349
	adc a,b			;734a
	ld a,a			;734b
	nop			;734c
	nop			;734d
	adc a,b			;734e
	ld a,a			;734f
	nop			;7350
	nop			;7351
	add a,a			;7352
	rst 38h			;7353
	nop			;7354
	nop			;7355
	ld a,a			;7356
	ret p			;7357
	nop			;7358
	nop			;7359
	rst 38h			;735a
	rst 38h			;735b
	nop			;735c
	nop			;735d
	rst 30h			;735e
	rst 38h			;735f
	nop			;7360
	nop			;7361
	nop			;7362
	or 0ffh			;7363
	rst 38h			;7365
	nop			;7366
	rst 30h			;7367
	ld h,(hl)		;7368
	ld h,(hl)		;7369
	nop			;736a
	rst 30h			;736b
	ld h,(hl)		;736c
	ld h,(hl)		;736d
	nop			;736e
	rst 30h			;736f
	ld h,(hl)		;7370
	ld h,(hl)		;7371
	nop			;7372
	rst 30h			;7373
	ld h,(hl)		;7374
	ld h,(hl)		;7375
	nop			;7376
	rst 30h			;7377
	ld h,(hl)		;7378
	ld h,(hl)		;7379
	nop			;737a
	rst 30h			;737b
	ld h,(hl)		;737c
	ld h,(hl)		;737d
	nop			;737e
	rst 30h			;737f
	ld h,(hl)		;7380
	ld h,(hl)		;7381
	ld h,(hl)		;7382
	ld (hl),a		;7383
	ld h,(hl)		;7384
	rst 38h			;7385
	ld (hl),a		;7386
	adc a,b			;7387
	halt			;7388
	rst 30h			;7389
	ld (hl),a		;738a
	adc a,b			;738b
	halt			;738c
	or 077h			;738d
	adc a,b			;738f
	halt			;7390
	or 077h			;7391
	adc a,b			;7393
	halt			;7394
	or 077h			;7395
	adc a,b			;7397
	halt			;7398
	or 077h			;7399
	adc a,b			;739b
	halt			;739c
	or 077h			;739d
	adc a,b			;739f
	halt			;73a0
	or 067h			;73a1
	add a,a			;73a3
	add a,a			;73a4
	or 086h			;73a5
	adc a,(hl)		;73a7
	ret pe			;73a8
	or 076h			;73a9
	adc a,b			;73ab
	rst 20h			;73ac
	or 07fh			;73ad
	ret m			;73af
	rst 20h			;73b0
	or 076h			;73b1
	ld l,b			;73b3
	rst 20h			;73b4
	or 078h			;73b5
	adc a,b			;73b7
	rst 20h			;73b8
	or 078h			;73b9
	adc a,b			;73bb
	rst 20h			;73bc
	or 078h			;73bd
	adc a,b			;73bf
	ret pe			;73c0
	or 07eh			;73c1
	ld a,(hl)		;73c3
	add a,(hl)		;73c4
	or 07eh			;73c5
	rst 38h			;73c7
	add a,(hl)		;73c8
	or 078h			;73c9
	adc a,b			;73cb
	add a,(hl)		;73cc
	or 07eh			;73cd
	adc a,b			;73cf
	add a,(hl)		;73d0
	rst 38h			;73d1
	ld a,(hl)		;73d2
	adc a,b			;73d3
	add a,(hl)		;73d4
	or 078h			;73d5
	adc a,b			;73d7
	add a,(hl)		;73d8
	or 078h			;73d9
	adc a,b			;73db
	add a,(hl)		;73dc
	rst 38h			;73dd
	ld a,b			;73de
	adc a,b			;73df
	add a,(hl)		;73e0
	ld h,(hl)		;73e1
	ld a,(hl)		;73e2
	add a,a			;73e3
	ld a,a			;73e4
	ret m			;73e5
	ld a,(hl)		;73e6
	add a,a			;73e7
	rst 38h			;73e8
	ld h,(hl)		;73e9
	ld a,(hl)		;73ea
	rst 38h			;73eb
	ld a,a			;73ec
	adc a,(hl)		;73ed
	rst 38h			;73ee
	add a,a			;73ef
	ld a,a			;73f0
	halt			;73f1
	ld a,(hl)		;73f2
	adc a,a			;73f3
	rst 38h			;73f4
	rst 38h			;73f5
	ld a,a			;73f6
	rst 38h			;73f7
	ld l,a			;73f8
	rst 38h			;73f9
	rst 38h			;73fa
	ld h,(hl)		;73fb
	adc a,a			;73fc
	rst 30h			;73fd
	ld h,(hl)		;73fe
	adc a,b			;73ff
	adc a,a			;7400
	rst 30h			;7401
	rst 28h			;7402
	ld h,a			;7403
	adc a,a			;7404
	rst 38h			;7405
	ld l,a			;7406
	rst 38h			;7407
	rst 38h			;7408
	rst 38h			;7409
	xor 0ffh		;740a
	adc a,b			;740c
	adc a,a			;740d
	ld h,(hl)		;740e
	cp 0eeh			;740f
	or 0ffh			;7411
	cp 0efh			;7413
	ld h,a			;7415
	rst 38h			;7416
	adc a,b			;7417
	adc a,a			;7418
	ld a,b			;7419
	ld a,a			;741a
	adc a,b			;741b
	rst 30h			;741c
	adc a,b			;741d
	rst 38h			;741e
	adc a,b			;741f
	rst 30h			;7420
	adc a,b			;7421
	ld l,a			;7422
	rst 30h			;7423
	rst 38h			;7424
	rst 38h			;7425
	rst 38h			;7426
	rst 38h			;7427
	rst 38h			;7428
	ld (hl),a		;7429
	rst 38h			;742a
	rst 38h			;742b
	rst 30h			;742c
	ld h,(hl)		;742d
	ld a,a			;742e
	rst 30h			;742f
	halt			;7430
	rst 38h			;7431
	add a,a			;7432
	or 06fh			;7433
	rst 30h			;7435
	adc a,b			;7436
	rst 38h			;7437
	rst 38h			;7438
	ld a,b			;7439
	adc a,b			;743a
	adc a,a			;743b
	rst 30h			;743c
	adc a,b			;743d
	xor 08fh		;743e
	ld a,(hl)		;7440
	xor 076h		;7441
	rst 38h			;7443
	rst 38h			;7444
	rst 38h			;7445
	ld l,a			;7446
	or 088h			;7447
	adc a,(hl)		;7449
	rst 38h			;744a
	ld a,b			;744b
	adc a,b			;744c
	xor 0f7h		;744d
	ld (hl),a		;744f
	ld (hl),a		;7450
	ld (hl),a		;7451
	ld a,a			;7452
	rst 38h			;7453
	rst 38h			;7454
	rst 38h			;7455
	ld (hl),a		;7456
	ld (hl),a		;7457
	ld (hl),a		;7458
	ld (hl),a		;7459
	adc a,b			;745a
	adc a,b			;745b
	adc a,b			;745c
	adc a,(hl)		;745d
	xor 0eeh		;745e
	xor 0eeh		;7460
	rst 38h			;7462
	nop			;7463
	nop			;7464
	nop			;7465
	rst 20h			;7466
	rst 38h			;7467
	nop			;7468
	nop			;7469
	halt			;746a
	ret m			;746b
	ret p			;746c
	nop			;746d
	ld l,a			;746e
	adc a,(hl)		;746f
	rst 28h			;7470
	nop			;7471
	rst 30h			;7472
	xor 088h		;7473
	ret p			;7475
	adc a,(hl)		;7476
	ld a,b			;7477
	add a,a			;7478
	ret p			;7479
	xor 0e7h		;747a
	add a,a			;747c
	ret p			;747d
	xor 088h		;747e
	ld a,a			;7480
	nop			;7481
	nop			;7482
	rst 30h			;7483
	ld h,(hl)		;7484
	ld h,(hl)		;7485
	nop			;7486
	rst 30h			;7487
	ld h,(hl)		;7488
	ld h,(hl)		;7489
	nop			;748a
	rst 30h			;748b
	ld h,(hl)		;748c
	ld h,(hl)		;748d
	nop			;748e
	rst 30h			;748f
	ld h,(hl)		;7490
	ld h,(hl)		;7491
	nop			;7492
	rst 30h			;7493
	ld h,(hl)		;7494
	ld h,(hl)		;7495
	nop			;7496
	rst 30h			;7497
	ld h,(hl)		;7498
	ld h,(hl)		;7499
	nop			;749a
	rst 30h			;749b
	ld h,(hl)		;749c
	ld h,(hl)		;749d
	nop			;749e
	rst 30h			;749f
	ld h,(hl)		;74a0
	ld h,(hl)		;74a1
	ld (hl),a		;74a2
	adc a,b			;74a3
	halt			;74a4
	rst 38h			;74a5
	ld (hl),a		;74a6
	adc a,b			;74a7
	halt			;74a8
	or 077h			;74a9
l74abh:
	adc a,b			;74ab
	halt			;74ac
	or 077h			;74ad
	adc a,b			;74af
	halt			;74b0
	or 077h			;74b1
	adc a,b			;74b3
	halt			;74b4
	or 077h			;74b5
	adc a,b			;74b7
	halt			;74b8
	or 077h			;74b9
	adc a,b			;74bb
	halt			;74bc
	or 077h			;74bd
	adc a,b			;74bf
	halt			;74c0
	or 067h			;74c1
	halt			;74c3
	ld (hl),a		;74c4
	or 078h			;74c5
	ld a,(hl)		;74c7
	rst 20h			;74c8
	or 078h			;74c9
	ld a,b			;74cb
	rst 20h			;74cc
	or 078h			;74cd
	ld a,b			;74cf
	rst 20h			;74d0
	or 078h			;74d1
	ld a,b			;74d3
	rst 20h			;74d4
	or 078h			;74d5
	ld a,b			;74d7
	rst 20h			;74d8
	or 078h			;74d9
	ld a,b			;74db
	rst 20h			;74dc
	or 078h			;74dd
	ld a,b			;74df
	rst 20h			;74e0
	or 078h			;74e1
	ld a,(hl)		;74e3
	add a,(hl)		;74e4
	ld h,(hl)		;74e5
	ld a,b			;74e6
	rst 38h			;74e7
	adc a,b			;74e8
	adc a,b			;74e9
	ld a,b			;74ea
	adc a,b			;74eb
	add a,(hl)		;74ec
	adc a,b			;74ed
	ld a,b			;74ee
	add a,(hl)		;74ef
	add a,(hl)		;74f0
	adc a,b			;74f1
	ld a,b			;74f2
	add a,(hl)		;74f3
	adc a,b			;74f4
	adc a,b			;74f5
	ld a,b			;74f6
	adc a,b			;74f7
	adc a,b			;74f8
	ld (hl),a		;74f9
	ld a,b			;74fa
	adc a,b			;74fb
	ld (hl),a		;74fc
	rst 38h			;74fd
	ld a,b			;74fe
	ld (hl),a		;74ff
	rst 38h			;7500
	xor 088h		;7501
	adc a,b			;7503
	adc a,a			;7504
	rst 38h			;7505
	adc a,b			;7506
	adc a,b			;7507
	adc a,a			;7508
	ret m			;7509
	adc a,b			;750a
	add a,a			;750b
	ld a,a			;750c
	rst 20h			;750d
	add a,a			;750e
	ld a,a			;750f
	cp 087h			;7510
	ld a,a			;7512
	rst 30h			;7513
	ret pe			;7514
	add a,a			;7515
	cp 0f6h			;7516
	adc a,b			;7518
	adc a,a			;7519
	ret pe			;751a
	or 088h			;751b
	adc a,a			;751d
	adc a,b			;751e
	or 088h			;751f
	rst 38h			;7521
	rst 38h			;7522
	adc a,b			;7523
	rst 30h			;7524
	adc a,b			;7525
	rst 38h			;7526
	adc a,b			;7527
	rst 30h			;7528
	adc a,b			;7529
	rst 38h			;752a
	adc a,b			;752b
	rst 30h			;752c
	ld a,b			;752d
	rst 38h			;752e
	ld a,b			;752f
	or 077h			;7530
	rst 38h			;7532
	ld (hl),a		;7533
	or 067h			;7534
	rst 38h			;7536
	ld h,a			;7537
	ld l,a			;7538
	ld h,a			;7539
	rst 38h			;753a
	rst 30h			;753b
	ld a,a			;753c
	ld h,(hl)		;753d
	rst 38h			;753e
	or 077h			;753f
	or 0e8h			;7541
	adc a,a			;7543
	ld (hl),a		;7544
	ld (hl),a		;7545
	adc a,b			;7546
	adc a,a			;7547
	rst 38h			;7548
	rst 38h			;7549
	adc a,b			;754a
	ld a,a			;754b
	rst 38h			;754c
	rst 38h			;754d
	add a,a			;754e
	ld a,a			;754f
	rst 30h			;7550
	ld (hl),a		;7551
	ld (hl),a		;7552
	ld l,a			;7553
	ld h,a			;7554
	adc a,b			;7555
	halt			;7556
	rst 38h			;7557
	rst 38h			;7558
	rst 38h			;7559
	ld h,(hl)		;755a
	rst 38h			;755b
	or 066h			;755c
	ld l,a			;755e
	cp 087h			;755f
	ld (hl),a		;7561
	ld (hl),a		;7562
	ld (hl),a		;7563
	ld (hl),a		;7564
	ld (hl),a		;7565
	rst 38h			;7566
	rst 38h			;7567
	rst 38h			;7568
	rst 38h			;7569
	rst 38h			;756a
	rst 38h			;756b
	rst 38h			;756c
	rst 38h			;756d
	ld (hl),a		;756e
	ld (hl),a		;756f
	ld (hl),a		;7570
	rst 38h			;7571
	adc a,b			;7572
	adc a,b			;7573
	adc a,b			;7574
	halt			;7575
	rst 38h			;7576
	rst 38h			;7577
	rst 38h			;7578
	rst 38h			;7579
	ret p			;757a
	nop			;757b
	nop			;757c
	nop			;757d
	cp a			;757e
	nop			;757f
	nop			;7580
	nop			;7581
	ret pe			;7582
	add a,a			;7583
	ret p			;7584
	nop			;7585
	ld a,b			;7586
	halt			;7587
	ret p			;7588
	nop			;7589
	rst 30h			;758a
	ld l,a			;758b
	nop			;758c
	nop			;758d
	halt			;758e
	ret p			;758f
	nop			;7590
	nop			;7591
	rst 38h			;7592
	nop			;7593
	nop			;7594
	nop			;7595
	nop			;7596
	nop			;7597
	nop			;7598
	nop			;7599
	nop			;759a
	nop			;759b
	nop			;759c
	nop			;759d
	nop			;759e
	nop			;759f
	nop			;75a0
	nop			;75a1
	nop			;75a2
	or 0ffh			;75a3
	rst 38h			;75a5
	nop			;75a6
	rst 30h			;75a7
	ld h,(hl)		;75a8
	ld h,(hl)		;75a9
	nop			;75aa
	rst 30h			;75ab
	ld h,(hl)		;75ac
	ld h,(hl)		;75ad
	nop			;75ae
	or 0ffh			;75af
	rst 38h			;75b1
	nop			;75b2
	or 076h			;75b3
	ld h,(hl)		;75b5
	nop			;75b6
	or 076h			;75b7
	ld h,(hl)		;75b9
	nop			;75ba
	or 076h			;75bb
	ld h,(hl)		;75bd
	nop			;75be
	or 076h			;75bf
	ld h,(hl)		;75c1
	ld h,(hl)		;75c2
	ld (hl),a		;75c3
	ld h,(hl)		;75c4
	or 077h			;75c5
	adc a,b			;75c7
	halt			;75c8
	or 077h			;75c9
	adc a,b			;75cb
	halt			;75cc
	or 066h			;75cd
	ld l,b			;75cf
	halt			;75d0
	rst 38h			;75d1
	ld (hl),a		;75d2
	ld l,b			;75d3
	halt			;75d4
	or 077h			;75d5
	ld l,b			;75d7
	halt			;75d8
	or 077h			;75d9
	ld l,b			;75db
	halt			;75dc
	rst 38h			;75dd
	ld (hl),a		;75de
	ld l,b			;75df
	halt			;75e0
	rst 30h			;75e1
	ld a,b			;75e2
	ld a,b			;75e3
	rst 20h			;75e4
	or 078h			;75e5
	ld a,b			;75e7
	rst 20h			;75e8
	rst 38h			;75e9
	ld a,b			;75ea
	ld a,b			;75eb
	add a,(hl)		;75ec
	rst 30h			;75ed
	ld h,a			;75ee
	ld h,(hl)		;75ef
	ld (hl),a		;75f0
	or 078h			;75f1
	adc a,b			;75f3
	rst 20h			;75f4
	or 076h			;75f5
	ret pe			;75f7
	rst 20h			;75f8
	or 067h			;75f9
	add a,a			;75fb
	add a,(hl)		;75fc
	or 087h			;75fd
	adc a,(hl)		;75ff
	ret pe			;7600
	or 067h			;7601
	rst 38h			;7603
	adc a,(hl)		;7604
	adc a,b			;7605
	rst 38h			;7606
	adc a,b			;7607
	ret pe			;7608
	adc a,b			;7609
	adc a,b			;760a
	ld (hl),a		;760b
	ret pe			;760c
	adc a,b			;760d
	ld (hl),a		;760e
	ld (hl),a		;760f
	ret pe			;7610
	adc a,b			;7611
	ld (hl),a		;7612
	ld (hl),a		;7613
	adc a,b			;7614
	adc a,b			;7615
	ld (hl),a		;7616
	ld (hl),a		;7617
	ret pe			;7618
	adc a,b			;7619
	ld (hl),a		;761a
	ld (hl),a		;761b
	adc a,b			;761c
	ld (hl),a		;761d
	ld (hl),a		;761e
	ld (hl),a		;761f
	add a,a			;7620
	rst 38h			;7621
	adc a,b			;7622
	or 087h			;7623
	rst 38h			;7625
	adc a,b			;7626
	or 07fh			;7627
	rst 38h			;7629
	adc a,b			;762a
	rst 38h			;762b
	or 0f6h			;762c
	adc a,b			;762e
	rst 38h			;762f
	ld h,a			;7630
	rst 38h			;7631
	add a,a			;7632
	or 077h			;7633
	rst 30h			;7635
	ld a,a			;7636
	ld h,a			;7637
	ld a,a			;7638
	ld h,(hl)		;7639
	or 078h			;763a
	ld a,a			;763c
	ld h,(hl)		;763d
	ld h,a			;763e
	add a,a			;763f
	rst 38h			;7640
	or (hl)			;7641
	rst 38h			;7642
	rst 38h			;7643
	ld h,(hl)		;7644
	ld l,a			;7645
	ld l,a			;7646
	rst 38h			;7647
	rst 38h			;7648
	rst 38h			;7649
	rst 30h			;764a
	ld a,a			;764b
	rst 38h			;764c
	rst 38h			;764d
	ret pe			;764e
	ld (hl),a		;764f
	or (hl)			;7650
	ret p			;7651
	adc a,(hl)		;7652
	add a,a			;7653
	or a			;7654
	ret p			;7655
	ld a,b			;7656
	ret pe			;7657
	rst 0			;7658
	ret p			;7659
	ld h,a			;765a
	adc a,h			;765b
	adc a,b			;765c
	ret p			;765d
	ld h,(hl)		;765e
	ret z			;765f
	rst 28h			;7660
	nop			;7661
	rst 38h			;7662
	rst 30h			;7663
	ret pe			;7664
	ld a,e			;7665
	nop			;7666
	or 07eh			;7667
	rst 0			;7669
	nop			;766a
	rrca			;766b
	cp h			;766c
	call pe,00000h		;766d
	ei			;7670
	adc a,000h		;7671
	nop			;7673
	rrca			;7674
	ld h,a			;7675
	nop			;7676
	nop			;7677
	nop			;7678
	rst 38h			;7679
	nop			;767a
	nop			;767b
	ex af,af'		;767c
	ld h,b			;767d
	nop			;767e
	nop			;767f
	add a,(hl)		;7680
	nop			;7681
	ld a,a			;7682
	nop			;7683
	nop			;7684
	nop			;7685
	or a			;7686
	ret p			;7687
	nop			;7688
	nop			;7689
	ld (hl),a		;768a
	ret p			;768b
	nop			;768c
	nop			;768d
	adc a,a			;768e
	nop			;768f
	nop			;7690
	nop			;7691
	ret p			;7692
	nop			;7693
	nop			;7694
	nop			;7695
	nop			;7696
	nop			;7697
	nop			;7698
	nop			;7699
	nop			;769a
	nop			;769b
	nop			;769c
	nop			;769d
	nop			;769e
	nop			;769f
	nop			;76a0
	nop			;76a1
	nop			;76a2
	or 076h			;76a3
	ld h,(hl)		;76a5
	nop			;76a6
	or 076h			;76a7
	ld h,(hl)		;76a9
	nop			;76aa
	or 076h			;76ab
	ld h,(hl)		;76ad
	nop			;76ae
	or 076h			;76af
	ld h,(hl)		;76b1
	nop			;76b2
	rst 38h			;76b3
	ld l,a			;76b4
	rst 38h			;76b5
	nop			;76b6
	adc a,a			;76b7
	rst 38h			;76b8
	rst 38h			;76b9
	ex af,af'		;76ba
	ld a,a			;76bb
	rst 38h			;76bc
	rst 38h			;76bd
	add a,a			;76be
	ld l,a			;76bf
	rst 30h			;76c0
	adc a,b			;76c1
	ld (hl),a		;76c2
	ld l,b			;76c3
	halt			;76c4
	or 077h			;76c5
	ld l,b			;76c7
	halt			;76c8
	or 077h			;76c9
	ld l,b			;76cb
	halt			;76cc
	or 077h			;76cd
	ld h,a			;76cf
	halt			;76d0
	or 066h			;76d1
	or 06fh			;76d3
	or 0ffh			;76d5
	rst 38h			;76d7
	rst 30h			;76d8
	add a,(hl)		;76d9
	rst 38h			;76da
	or 0f7h			;76db
	rst 28h			;76dd
	xor 0e8h		;76de
	rst 30h			;76e0
	rst 28h			;76e1
	halt			;76e2
	adc a,b			;76e3
	rst 20h			;76e4
	or 07fh			;76e5
	ret m			;76e7
	rst 20h			;76e8
	rst 38h			;76e9
	halt			;76ea
	ld l,b			;76eb
	rst 20h			;76ec
	rst 38h			;76ed
	ld a,b			;76ee
	adc a,b			;76ef
	ld (hl),a		;76f0
	rst 38h			;76f1
	ld (hl),a		;76f2
	ld (hl),a		;76f3
	rst 38h			;76f4
	rst 38h			;76f5
	ld l,a			;76f6
	rst 38h			;76f7
	rst 38h			;76f8
	or 0ffh			;76f9
	rst 38h			;76fb
	ld l,a			;76fc
	rst 30h			;76fd
	rst 38h			;76fe
	ld h,a			;76ff
	ld a,a			;7700
	ret m			;7701
	ld (hl),a		;7702
	ld h,(hl)		;7703
	rst 38h			;7704
	or 066h			;7705
	rst 38h			;7707
	rst 38h			;7708
	rst 30h			;7709
	rst 38h			;770a
	or 0ffh			;770b
	ld a,b			;770d
	rst 38h			;770e
	ld h,(hl)		;770f
	ld a,a			;7710
	adc a,b			;7711
	ld h,(hl)		;7712
	ld (hl),a		;7713
	adc a,a			;7714
	ld (hl),a		;7715
	ld (hl),a		;7716
	adc a,b			;7717
	adc a,a			;7718
	ld (hl),a		;7719
	adc a,b			;771a
	adc a,b			;771b
	ld h,(hl)		;771c
	ld a,a			;771d
	adc a,b			;771e
	add a,a			;771f
	or 0ffh			;7720
	ld a,b			;7722
	add a,a			;7723
	or 07bh			;7724
	adc a,b			;7726
	ld a,a			;7727
	rst 38h			;7728
	or 087h			;7729
	ld a,a			;772b
	ret p			;772c
	rst 38h			;772d
	ld (hl),a		;772e
	or 0f0h			;772f
	nop			;7731
	ld a,a			;7732
	add a,(hl)		;7733
	ret p			;7734
	nop			;7735
	rst 38h			;7736
	add a,(hl)		;7737
	ret p			;7738
	nop			;7739
	cp 086h			;773a
	ret p			;773c
	nop			;773d
	cp 086h			;773e
	ret p			;7740
	nop			;7741
	cp h			;7742
	ld a,b			;7743
	ld a,a			;7744
	nop			;7745
	ld h,(hl)		;7746
	ld a,a			;7747
	ret p			;7748
	nop			;7749
	rst 38h			;774a
	ret p			;774b
	nop			;774c
	nop			;774d
	nop			;774e
	nop			;774f
	nop			;7750
	nop			;7751
	nop			;7752
	nop			;7753
	nop			;7754
	nop			;7755
	nop			;7756
	nop			;7757
	nop			;7758
	nop			;7759
	nop			;775a
	nop			;775b
	nop			;775c
	nop			;775d
	nop			;775e
	nop			;775f
	nop			;7760
	nop			;7761
	nop			;7762
	sub b			;7763
	ld h,b			;7764
	nop			;7765
	nop			;7766
	nop			;7767
	add hl,bc		;7768
	nop			;7769
	nop			;776a
	nop			;776b
	nop			;776c
	nop			;776d
	nop			;776e
	nop			;776f
	nop			;7770
	nop			;7771
	nop			;7772
	nop			;7773
	nop			;7774
	nop			;7775
	nop			;7776
	nop			;7777
	nop			;7778
	nop			;7779
	nop			;777a
	nop			;777b
	nop			;777c
	nop			;777d
	nop			;777e
	nop			;777f
	nop			;7780
	nop			;7781
	nop			;7782
	nop			;7783
	nop			;7784
	ex af,af'		;7785
	nop			;7786
	nop			;7787
	nop			;7788
	add a,a			;7789
	nop			;778a
	nop			;778b
	sbc a,c			;778c
	ld l,a			;778d
	nop			;778e
	nop			;778f
	sbc a,c			;7790
	rst 38h			;7791
	nop			;7792
	nop			;7793
	nop			;7794
	add hl,bc		;7795
	nop			;7796
	nop			;7797
	nop			;7798
	nop			;7799
	nop			;779a
	nop			;779b
	nop			;779c
	nop			;779d
	nop			;779e
	nop			;779f
	nop			;77a0
	nop			;77a1
	halt			;77a2
	ret p			;77a3
	inc c			;77a4
	rst 18h			;77a5
	rst 38h			;77a6
	nop			;77a7
	rrca			;77a8
	or 0f0h			;77a9
	nop			;77ab
	nop			;77ac
	rst 38h			;77ad
	nop			;77ae
	nop			;77af
	nop			;77b0
	rst 38h			;77b1
	nop			;77b2
	nop			;77b3
	nop			;77b4
	rrca			;77b5
	nop			;77b6
	nop			;77b7
	nop			;77b8
	rrca			;77b9
	nop			;77ba
	nop			;77bb
	nop			;77bc
	nop			;77bd
	nop			;77be
	nop			;77bf
	nop			;77c0
	nop			;77c1
	call m,0f7d6h		;77c2
	rst 28h			;77c5
	ld h,(hl)		;77c6
	ld h,(hl)		;77c7
	rst 30h			;77c8
	rst 28h			;77c9
	rst 38h			;77ca
	rst 38h			;77cb
	rst 30h			;77cc
	rst 28h			;77cd
	adc a,(hl)		;77ce
	ret pe			;77cf
	or 079h			;77d0
	ld h,(hl)		;77d2
	ld h,(hl)		;77d3
	sbc a,a			;77d4
	ld sp,hl		;77d5
	ld l,a			;77d6
	rst 38h			;77d7
	or 06fh			;77d8
	rst 30h			;77da
	add a,a			;77db
	halt			;77dc
	sbc a,c			;77dd
	rrca			;77de
	ld h,(hl)		;77df
	rst 38h			;77e0
	ld h,(hl)		;77e1
	ld a,a			;77e2
	ld a,b			;77e3
	ld a,a			;77e4
	ld a,b			;77e5
	ld l,a			;77e6
	adc a,b			;77e7
	rst 38h			;77e8
	ld (hl),a		;77e9
	rst 30h			;77ea
	add a,a			;77eb
	rst 38h			;77ec
	halt			;77ed
	sbc a,b			;77ee
	ld a,a			;77ef
	or 066h			;77f0
	sub a			;77f2
	ld a,a			;77f3
	or 06fh			;77f4
	ld (hl),a		;77f6
	rst 38h			;77f7
	ld l,a			;77f8
	rst 38h			;77f9
	ld l,a			;77fa
	rst 38h			;77fb
	rst 38h			;77fc
	or 0ffh			;77fd
	rst 38h			;77ff
	or 077h			;7800
	add a,a			;7802
	halt			;7803
	rst 38h			;7804
	rst 38h			;7805
	halt			;7806
	ld l,a			;7807
	rst 38h			;7808
	ret p			;7809
	ld h,(hl)		;780a
	rst 38h			;780b
	rst 38h			;780c
	nop			;780d
	ld l,a			;780e
	or 0f0h			;780f
	nop			;7811
	rst 38h			;7812
	ld l,a			;7813
	nop			;7814
	nop			;7815
	or 0f0h			;7816
	nop			;7818
	nop			;7819
	ld a,a			;781a
	nop			;781b
	nop			;781c
	nop			;781d
	ret p			;781e
	nop			;781f
	nop			;7820
	nop			;7821
	ret m			;7822
	ld a,a			;7823
	ret p			;7824
	nop			;7825
	rrca			;7826
	rst 38h			;7827
	nop			;7828
	nop			;7829
	nop			;782a
	nop			;782b
	nop			;782c
	nop			;782d
	nop			;782e
	nop			;782f
	nop			;7830
	nop			;7831
	nop			;7832
	nop			;7833
	nop			;7834
	nop			;7835
	nop			;7836
	nop			;7837
	nop			;7838
	nop			;7839
	nop			;783a
	nop			;783b
	nop			;783c
	nop			;783d
	nop			;783e
	nop			;783f
	nop			;7840
	nop			;7841
	nop			;7842
	nop			;7843
	nop			;7844
	nop			;7845
	nop			;7846
	nop			;7847
	nop			;7848
	nop			;7849
	nop			;784a
	nop			;784b
	nop			;784c
	nop			;784d
	nop			;784e
	nop			;784f
	nop			;7850
	ex af,af'		;7851
	nop			;7852
	nop			;7853
	nop			;7854
	ld b,000h		;7855
	nop			;7857
	sbc a,a			;7858
	nop			;7859
	nop			;785a
	nop			;785b
	nop			;785c
	nop			;785d
	nop			;785e
	nop			;785f
	nop			;7860
	nop			;7861
	nop			;7862
	rst 38h			;7863
	rst 38h			;7864
	rst 38h			;7865
	ex af,af'		;7866
	ld l,a			;7867
	rst 38h			;7868
	ld h,(hl)		;7869
	add a,(hl)		;786a
	nop			;786b
	nop			;786c
	rst 30h			;786d
	ld h,b			;786e
	nop			;786f
	nop			;7870
	rrca			;7871
	nop			;7872
	nop			;7873
	nop			;7874
	rrca			;7875
	nop			;7876
	nop			;7877
	nop			;7878
	ret m			;7879
	nop			;787a
	nop			;787b
	sub b			;787c
	add a,b			;787d
	nop			;787e
	nop			;787f
	nop			;7880
	add hl,bc		;7881
	rst 38h			;7882
	ld h,(hl)		;7883
	rst 30h			;7884
	rst 38h			;7885
	ld (hl),a		;7886
	adc a,b			;7887
	rst 38h			;7888
	nop			;7889
	adc a,(hl)		;788a
	adc a,a			;788b
	ret p			;788c
	nop			;788d
	rst 38h			;788e
	ret p			;788f
	nop			;7890
	nop			;7891
	add a,(hl)		;7892
	ret p			;7893
	nop			;7894
	nop			;7895
	ld l,a			;7896
	nop			;7897
	nop			;7898
	nop			;7899
	sub b			;789a
	nop			;789b
	nop			;789c
	nop			;789d
	nop			;789e
	nop			;789f
	nop			;78a0
	nop			;78a1
	nop			;78a2
	nop			;78a3
	nop			;78a4
	nop			;78a5
	nop			;78a6
	nop			;78a7
	nop			;78a8
	nop			;78a9
	nop			;78aa
	nop			;78ab
	nop			;78ac
	nop			;78ad
	nop			;78ae
	nop			;78af
	nop			;78b0
	nop			;78b1
	nop			;78b2
	nop			;78b3
	nop			;78b4
	nop			;78b5
	nop			;78b6
	nop			;78b7
	nop			;78b8
	nop			;78b9
	nop			;78ba
	nop			;78bb
	rst 38h			;78bc
	rst 38h			;78bd
	nop			;78be
	rrca			;78bf
	ret pe			;78c0
	cp 000h			;78c1
	nop			;78c3
	nop			;78c4
	nop			;78c5
	nop			;78c6
	nop			;78c7
	nop			;78c8
	nop			;78c9
	nop			;78ca
	nop			;78cb
	nop			;78cc
	nop			;78cd
	nop			;78ce
	nop			;78cf
	nop			;78d0
	nop			;78d1
	nop			;78d2
	nop			;78d3
	nop			;78d4
	nop			;78d5
	nop			;78d6
	nop			;78d7
	nop			;78d8
	nop			;78d9
	rst 38h			;78da
	rst 38h			;78db
	rst 38h			;78dc
	rst 38h			;78dd
	xor 0eeh		;78de
	xor 08eh		;78e0
	nop			;78e2
	nop			;78e3
	nop			;78e4
	nop			;78e5
	nop			;78e6
	nop			;78e7
	nop			;78e8
	nop			;78e9
	nop			;78ea
	nop			;78eb
	nop			;78ec
	nop			;78ed
	nop			;78ee
	nop			;78ef
	nop			;78f0
	nop			;78f1
	nop			;78f2
	nop			;78f3
	nop			;78f4
	nop			;78f5
	nop			;78f6
	nop			;78f7
	nop			;78f8
	nop			;78f9
	rst 38h			;78fa
	nop			;78fb
	nop			;78fc
	nop			;78fd
	ret pe			;78fe
	rst 38h			;78ff
	rst 38h			;7900
	nop			;7901
	nop			;7902
	nop			;7903
	nop			;7904
	nop			;7905
	nop			;7906
	nop			;7907
	nop			;7908
	nop			;7909
	nop			;790a
	nop			;790b
	nop			;790c
	nop			;790d
	nop			;790e
	nop			;790f
	nop			;7910
	nop			;7911
	nop			;7912
	nop			;7913
	nop			;7914
	nop			;7915
	nop			;7916
	rst 38h			;7917
	rst 38h			;7918
	rst 38h			;7919
	nop			;791a
	rrca			;791b
	adc a,(hl)		;791c
	add a,a			;791d
	rrca			;791e
	rst 38h			;791f
	ld h,a			;7920
	or 000h			;7921
	nop			;7923
	nop			;7924
	nop			;7925
	nop			;7926
	nop			;7927
	nop			;7928
	nop			;7929
	nop			;792a
	nop			;792b
	nop			;792c
	nop			;792d
	sub b			;792e
	nop			;792f
	nop			;7930
	nop			;7931
	nop			;7932
	nop			;7933
	nop			;7934
	nop			;7935
	ret p			;7936
	nop			;7937
	nop			;7938
	nop			;7939
	ld l,a			;793a
	ret p			;793b
	nop			;793c
	nop			;793d
	ld l,a			;793e
	ret p			;793f
	rst 38h			;7940
	ret p			;7941
	nop			;7942
	rrca			;7943
	rst 38h			;7944
	ret m			;7945
	nop			;7946
	rrca			;7947
	ld a,b			;7948
	ret m			;7949
	nop			;794a
	rrca			;794b
	ld a,b			;794c
	ret m			;794d
	nop			;794e
	rrca			;794f
	ld a,b			;7950
	rst 30h			;7951
	nop			;7952
	rrca			;7953
	ld h,a			;7954
	rst 38h			;7955
	nop			;7956
	rrca			;7957
	rst 38h			;7958
	rst 38h			;7959
	add hl,bc		;795a
	ex af,af'		;795b
	rst 38h			;795c
	halt			;795d
	nop			;795e
	ld sp,hl		;795f
	nop			;7960
	ld l,a			;7961
	add a,(hl)		;7962
	adc a,b			;7963
	adc a,b			;7964
	ld a,b			;7965
	rst 38h			;7966
	adc a,b			;7967
	adc a,b			;7968
	ld l,b			;7969
	add a,(hl)		;796a
	add a,a			;796b
	ld (hl),a		;796c
	ret m			;796d
	rst 38h			;796e
	ld a,a			;796f
	rst 38h			;7970
	or 0ffh			;7971
	rst 38h			;7973
	rst 38h			;7974
	rst 38h			;7975
	or 067h			;7976
	ld (hl),a		;7978
	ld h,(hl)		;7979
	rst 38h			;797a
	rst 38h			;797b
	rst 38h			;797c
	rst 38h			;797d
	nop			;797e
	nop			;797f
	add hl,bc		;7980
	nop			;7981
	adc a,b			;7982
	halt			;7983
	ret pe			;7984
	rst 38h			;7985
	ld l,a			;7986
	rst 38h			;7987
	add a,a			;7988
	rst 38h			;7989
	ret m			;798a
	ld l,a			;798b
	rst 38h			;798c
	rst 30h			;798d
	rst 38h			;798e
	rst 38h			;798f
	adc a,a			;7990
	ld a,b			;7991
	rst 38h			;7992
	rst 38h			;7993
	ld a,a			;7994
	ld a,b			;7995
	ld h,(hl)		;7996
	rst 38h			;7997
	ld l,a			;7998
	ld h,a			;7999
	rst 38h			;799a
	rst 38h			;799b
	rst 30h			;799c
	or 009h			;799d
	nop			;799f
	rst 38h			;79a0
	rst 38h			;79a1
	rst 30h			;79a2
	adc a,a			;79a3
	rst 38h			;79a4
	ret pe			;79a5
	rst 38h			;79a6
	halt			;79a7
	ld l,a			;79a8
	ld (hl),a		;79a9
	ld (hl),a		;79aa
	rst 38h			;79ab
	rst 38h			;79ac
	rst 38h			;79ad
	ret pe			;79ae
	ld a,a			;79af
	rst 38h			;79b0
	adc a,b			;79b1
	adc a,b			;79b2
	ld a,a			;79b3
	add a,a			;79b4
	rst 38h			;79b5
	ld (hl),a		;79b6
	rst 38h			;79b7
	rst 38h			;79b8
	ret pe			;79b9
	ld h,(hl)		;79ba
	rst 38h			;79bb
	add a,a			;79bc
	ld (hl),a		;79bd
	rst 38h			;79be
	rst 38h			;79bf
	rst 38h			;79c0
	rst 38h			;79c1
	adc a,b			;79c2
	adc a,a			;79c3
	adc a,b			;79c4
	adc a,a			;79c5
	ld (hl),a		;79c6
	ld a,a			;79c7
	xor 0efh		;79c8
	rst 38h			;79ca
	rst 38h			;79cb
	adc a,b			;79cc
	adc a,a			;79cd
	ld (hl),a		;79ce
	rst 38h			;79cf
	ld (hl),a		;79d0
	ld a,a			;79d1
	rst 38h			;79d2
	rst 38h			;79d3
	ld h,(hl)		;79d4
	ld l,a			;79d5
	adc a,b			;79d6
	ld a,a			;79d7
	rst 38h			;79d8
	ret p			;79d9
	ld (hl),a		;79da
	ld h,b			;79db
	nop			;79dc
	nop			;79dd
	rst 38h			;79de
	nop			;79df
	nop			;79e0
	nop			;79e1
	nop			;79e2
	nop			;79e3
	ld b,08fh		;79e4
	nop			;79e6
	nop			;79e7
	nop			;79e8
	rst 38h			;79e9
	nop			;79ea
	nop			;79eb
	nop			;79ec
	nop			;79ed
	nop			;79ee
	nop			;79ef
	nop			;79f0
	nop			;79f1
	nop			;79f2
	nop			;79f3
	nop			;79f4
	nop			;79f5
	nop			;79f6
	nop			;79f7
	nop			;79f8
	nop			;79f9
	nop			;79fa
	nop			;79fb
	nop			;79fc
	nop			;79fd
	nop			;79fe
	nop			;79ff
	nop			;7a00
	nop			;7a01
	ret p			;7a02
	nop			;7a03
	ret m			;7a04
	ld (hl),a		;7a05
	nop			;7a06
	nop			;7a07
	rrca			;7a08
	add a,a			;7a09
	nop			;7a0a
	nop			;7a0b
	nop			;7a0c
	rst 38h			;7a0d
	nop			;7a0e
	nop			;7a0f
	sub b			;7a10
	nop			;7a11
	nop			;7a12
	nop			;7a13
	nop			;7a14
	nop			;7a15
	nop			;7a16
	nop			;7a17
	nop			;7a18
	nop			;7a19
	nop			;7a1a
	nop			;7a1b
	nop			;7a1c
	nop			;7a1d
	nop			;7a1e
	nop			;7a1f
	nop			;7a20
	nop			;7a21
	nop			;7a22
	nop			;7a23
	nop			;7a24
	nop			;7a25
	nop			;7a26
	nop			;7a27
	nop			;7a28
	nop			;7a29
	nop			;7a2a
	nop			;7a2b
	rrca			;7a2c
	rst 38h			;7a2d
	nop			;7a2e
	nop			;7a2f
	rst 30h			;7a30
	ret pe			;7a31
	nop			;7a32
	nop			;7a33
	ret m			;7a34
	halt			;7a35
	nop			;7a36
	nop			;7a37
	rst 38h			;7a38
	rst 38h			;7a39
	nop			;7a3a
	nop			;7a3b
	ret m			;7a3c
	rst 20h			;7a3d
	nop			;7a3e
	nop			;7a3f
	rst 30h			;7a40
	add a,(hl)		;7a41
	nop			;7a42
	nop			;7a43
	nop			;7a44
	nop			;7a45
	nop			;7a46
	nop			;7a47
	nop			;7a48
	nop			;7a49
	rst 38h			;7a4a
	rst 38h			;7a4b
	rst 38h			;7a4c
	rst 38h			;7a4d
	ret m			;7a4e
	xor 0eeh		;7a4f
	xor 0ffh		;7a51
	rst 38h			;7a53
	rst 38h			;7a54
	rst 38h			;7a55
	rst 30h			;7a56
	ld (hl),a		;7a57
	ld (hl),a		;7a58
	ld (hl),a		;7a59
	cp 0eeh			;7a5a
	xor 0eeh		;7a5c
	ret m			;7a5e
	add a,a			;7a5f
	adc a,b			;7a60
	adc a,b			;7a61
	nop			;7a62
	nop			;7a63
	nop			;7a64
	nop			;7a65
	nop			;7a66
	nop			;7a67
	nop			;7a68
	nop			;7a69
	rst 38h			;7a6a
	rst 38h			;7a6b
	rst 38h			;7a6c
	rst 38h			;7a6d
	xor 0eeh		;7a6e
	xor 0e8h		;7a70
	rst 38h			;7a72
	rst 38h			;7a73
	rst 38h			;7a74
	rst 38h			;7a75
	ld (hl),a		;7a76
	ld (hl),a		;7a77
	ld (hl),a		;7a78
	ld (hl),a		;7a79
	xor 0eeh		;7a7a
	xor 0eeh		;7a7c
	adc a,b			;7a7e
	adc a,b			;7a7f
	adc a,b			;7a80
	adc a,a			;7a81
	nop			;7a82
	nop			;7a83
	nop			;7a84
	nop			;7a85
	nop			;7a86
	nop			;7a87
	nop			;7a88
	nop			;7a89
	ret p			;7a8a
	nop			;7a8b
	nop			;7a8c
	nop			;7a8d
	adc a,a			;7a8e
	rst 38h			;7a8f
	rst 38h			;7a90
	ret p			;7a91
	rst 38h			;7a92
	ret m			;7a93
	adc a,b			;7a94
	ld a,a			;7a95
	ld (hl),a		;7a96
	ld l,a			;7a97
	rst 30h			;7a98
	adc a,a			;7a99
	xor 07fh		;7a9a
	rst 38h			;7a9c
	rst 38h			;7a9d
	rst 38h			;7a9e
	rst 38h			;7a9f
	cp 0efh			;7aa0
	nop			;7aa2
	nop			;7aa3
	nop			;7aa4
	nop			;7aa5
	nop			;7aa6
	nop			;7aa7
	nop			;7aa8
	nop			;7aa9
	nop			;7aaa
	nop			;7aab
	nop			;7aac
	nop			;7aad
	nop			;7aae
	nop			;7aaf
	nop			;7ab0
	nop			;7ab1
	rst 38h			;7ab2
	rst 38h			;7ab3
	nop			;7ab4
	nop			;7ab5
	adc a,(hl)		;7ab6
	add a,a			;7ab7
	rst 38h			;7ab8
	rst 38h			;7ab9
	rst 38h			;7aba
	rst 38h			;7abb
	rst 38h			;7abc
	ret pe			;7abd
	rst 38h			;7abe
	xor 07fh		;7abf
	ld (hl),a		;7ac1
	nop			;7ac2
	nop			;7ac3
	nop			;7ac4
	rst 38h			;7ac5
	nop			;7ac6
	nop			;7ac7
	rrca			;7ac8
	ld a,b			;7ac9
	nop			;7aca
	nop			;7acb
	nop			;7acc
	rst 38h			;7acd
	nop			;7ace
	rrca			;7acf
	rst 38h			;7ad0
	rst 38h			;7ad1
	rrca			;7ad2
	ret m			;7ad3
	ret pe			;7ad4
	ld a,a			;7ad5
	rst 38h			;7ad6
	rst 38h			;7ad7
	add a,a			;7ad8
	rst 38h			;7ad9
	adc a,a			;7ada
	ret pe			;7adb
	rst 38h			;7adc
	rst 38h			;7add
	ld a,a			;7ade
	add a,a			;7adf
	ret m			;7ae0
	xor 0ffh		;7ae1
	rst 38h			;7ae3
	nop			;7ae4
	nop			;7ae5
	ret pe			;7ae6
	halt			;7ae7
	rst 38h			;7ae8
	nop			;7ae9
	ret m			;7aea
	ret pe			;7aeb
	ld l,a			;7aec
	ret p			;7aed
	ld l,a			;7aee
	rst 38h			;7aef
	rst 38h			;7af0
	rst 38h			;7af1
	rst 38h			;7af2
	adc a,(hl)		;7af3
	xor 0efh		;7af4
	ld h,a			;7af6
	adc a,b			;7af7
	adc a,b			;7af8
	adc a,a			;7af9
	rst 38h			;7afa
	rst 30h			;7afb
	ld (hl),a		;7afc
	ld a,a			;7afd
	xor 08fh		;7afe
	ld h,(hl)		;7b00
	ld l,a			;7b01
	nop			;7b02
	nop			;7b03
	nop			;7b04
	nop			;7b05
	nop			;7b06
	nop			;7b07
	nop			;7b08
	nop			;7b09
	nop			;7b0a
	nop			;7b0b
	nop			;7b0c
	nop			;7b0d
	nop			;7b0e
	nop			;7b0f
	nop			;7b10
	nop			;7b11
	rrca			;7b12
	rst 38h			;7b13
	rst 38h			;7b14
	ret p			;7b15
	ret m			;7b16
	xor 0eeh		;7b17
	adc a,a			;7b19
	or 077h			;7b1a
	ld (hl),a		;7b1c
	ld l,a			;7b1d
	rst 38h			;7b1e
	rst 38h			;7b1f
	rst 38h			;7b20
	rst 38h			;7b21
	nop			;7b22
	nop			;7b23
	rst 30h			;7b24
	add a,(hl)		;7b25
	nop			;7b26
	nop			;7b27
	rst 30h			;7b28
	add a,(hl)		;7b29
	nop			;7b2a
	nop			;7b2b
	rst 30h			;7b2c
	add a,(hl)		;7b2d
	nop			;7b2e
	nop			;7b2f
	rst 38h			;7b30
	rst 38h			;7b31
	nop			;7b32
	nop			;7b33
	sub 087h		;7b34
	nop			;7b36
	nop			;7b37
	ld a,a			;7b38
	ld l,a			;7b39
	add hl,bc		;7b3a
	ex af,af'		;7b3b
	ret p			;7b3c
	rst 38h			;7b3d
	nop			;7b3e
	sbc a,a			;7b3f
	nop			;7b40
	ld a,c			;7b41
	ret m			;7b42
	rst 38h			;7b43
	adc a,b			;7b44
	ld (hl),a		;7b45
	ret m			;7b46
	add a,a			;7b47
	adc a,a			;7b48
	rst 38h			;7b49
	ret m			;7b4a
	rst 38h			;7b4b
	adc a,b			;7b4c
	adc a,b			;7b4d
	or 066h			;7b4e
	ld h,(hl)		;7b50
	ld h,(hl)		;7b51
	ld l,a			;7b52
	rst 38h			;7b53
	rst 38h			;7b54
	rst 38h			;7b55
	or 066h			;7b56
	ld (hl),a		;7b58
	ld (hl),a		;7b59
	rst 38h			;7b5a
	rst 38h			;7b5b
	rst 38h			;7b5c
	rst 38h			;7b5d
	nop			;7b5e
	nop			;7b5f
	nop			;7b60
	nop			;7b61
	ld a,a			;7b62
	adc a,b			;7b63
	ld (hl),a		;7b64
	ld a,a			;7b65
	rst 38h			;7b66
	adc a,b			;7b67
	rst 38h			;7b68
	rst 38h			;7b69
	adc a,b			;7b6a
	adc a,b			;7b6b
	rst 38h			;7b6c
	ld h,a			;7b6d
	ld h,(hl)		;7b6e
	ld h,(hl)		;7b6f
	rst 38h			;7b70
	rst 38h			;7b71
	rst 38h			;7b72
	rst 38h			;7b73
	rst 38h			;7b74
	adc a,b			;7b75
	halt			;7b76
	ld h,(hl)		;7b77
	rst 38h			;7b78
	ld h,(hl)		;7b79
	rst 38h			;7b7a
	rst 38h			;7b7b
	rst 38h			;7b7c
	rst 38h			;7b7d
	nop			;7b7e
	nop			;7b7f
	add hl,bc		;7b80
	sub b			;7b81
	adc a,(hl)		;7b82
	add a,a			;7b83
	ret m			;7b84
	adc a,a			;7b85
	rst 38h			;7b86
	rst 38h			;7b87
	rst 38h			;7b88
	rst 38h			;7b89
	ld a,b			;7b8a
	adc a,b			;7b8b
	ld (hl),a		;7b8c
	ld l,a			;7b8d
	rst 38h			;7b8e
	rst 38h			;7b8f
	rst 38h			;7b90
	rst 38h			;7b91
	ret pe			;7b92
	halt			;7b93
	ld l,a			;7b94
	rst 38h			;7b95
	ld h,a			;7b96
	ld h,(hl)		;7b97
	rst 38h			;7b98
	rst 38h			;7b99
	rst 38h			;7b9a
	rst 38h			;7b9b
	rst 38h			;7b9c
	rst 38h			;7b9d
	rrca			;7b9e
	add a,a			;7b9f
	ret p			;7ba0
	rrca			;7ba1
	rst 38h			;7ba2
	ld (hl),a		;7ba3
	rst 38h			;7ba4
	rst 38h			;7ba5
	adc a,b			;7ba6
	rst 38h			;7ba7
	ld a,b			;7ba8
	add a,a			;7ba9
	ld h,(hl)		;7baa
	rst 30h			;7bab
	adc a,(hl)		;7bac
	ret pe			;7bad
	rst 38h			;7bae
	rst 30h			;7baf
	adc a,(hl)		;7bb0
	ret pe			;7bb1
	rst 38h			;7bb2
	rst 30h			;7bb3
	adc a,b			;7bb4
	adc a,b			;7bb5
	rst 38h			;7bb6
	or 077h			;7bb7
	ld (hl),a		;7bb9
	add a,a			;7bba
	rst 38h			;7bbb
	ld h,(hl)		;7bbc
	ld h,(hl)		;7bbd
	ld a,(hl)		;7bbe
	adc a,e			;7bbf
	rst 38h			;7bc0
	rst 38h			;7bc1
	rst 38h			;7bc2
	ld a,a			;7bc3
	ret m			;7bc4
	adc a,b			;7bc5
	rst 38h			;7bc6
	ret m			;7bc7
	or 066h			;7bc8
	ld a,a			;7bca
	ld l,b			;7bcb
	rst 38h			;7bcc
	rst 38h			;7bcd
	ld a,a			;7bce
	rst 38h			;7bcf
	rst 38h			;7bd0
	ld a,b			;7bd1
	ld a,a			;7bd2
	ld l,b			;7bd3
	adc a,a			;7bd4
	ld (hl),a		;7bd5
	ld l,a			;7bd6
	rst 38h			;7bd7
	rst 38h			;7bd8
	or 0ffh			;7bd9
	rst 38h			;7bdb
	rst 38h			;7bdc
	rst 38h			;7bdd
	ret p			;7bde
	nop			;7bdf
	rst 38h			;7be0
	rst 38h			;7be1
	adc a,b			;7be2
	ld a,a			;7be3
	rst 38h			;7be4
	rst 38h			;7be5
	ld h,(hl)		;7be6
	rst 38h			;7be7
	ld h,(hl)		;7be8
	ld l,a			;7be9
	rst 38h			;7bea
	rst 38h			;7beb
	rst 38h			;7bec
	adc a,a			;7bed
	xor 0eeh		;7bee
	add a,a			;7bf0
	rst 38h			;7bf1
	ld (hl),a		;7bf2
	ld (hl),a		;7bf3
	ld (hl),a		;7bf4
	ret p			;7bf5
	ld h,(hl)		;7bf6
	ld h,(hl)		;7bf7
	ld l,a			;7bf8
	ret p			;7bf9
	rst 38h			;7bfa
	rst 38h			;7bfb
	rst 38h			;7bfc
	nop			;7bfd
	rst 38h			;7bfe
	rst 38h			;7bff
	ret p			;7c00
	nop			;7c01
	rst 30h			;7c02
	adc a,b			;7c03
	adc a,b			;7c04
	ld a,a			;7c05
	or 077h			;7c06
	ld (hl),a		;7c08
	ld l,a			;7c09
	rst 38h			;7c0a
	rst 38h			;7c0b
	rst 38h			;7c0c
	rst 38h			;7c0d
	rst 38h			;7c0e
	ld h,(hl)		;7c0f
	ld h,(hl)		;7c10
	rst 38h			;7c11
	rrca			;7c12
	rst 38h			;7c13
	rst 38h			;7c14
	ret p			;7c15
	nop			;7c16
	nop			;7c17
	nop			;7c18
	nop			;7c19
	nop			;7c1a
	nop			;7c1b
	nop			;7c1c
	nop			;7c1d
	nop			;7c1e
	nop			;7c1f
	nop			;7c20
	nop			;7c21
	nop			;7c22
	nop			;7c23
	rst 38h			;7c24
	ld h,(hl)		;7c25
	nop			;7c26
	nop			;7c27
	nop			;7c28
	cp 000h			;7c29
	nop			;7c2b
	nop			;7c2c
	rrca			;7c2d
	nop			;7c2e
	nop			;7c2f
	nop			;7c30
	nop			;7c31
	nop			;7c32
	nop			;7c33
	add hl,bc		;7c34
	nop			;7c35
	nop			;7c36
	nop			;7c37
	nop			;7c38
	add hl,bc		;7c39
	nop			;7c3a
	nop			;7c3b
	nop			;7c3c
	nop			;7c3d
	nop			;7c3e
	nop			;7c3f
	nop			;7c40
	nop			;7c41
	ret m			;7c42
	cp b			;7c43
	halt			;7c44
	ret p			;7c45
	rrca			;7c46
	adc a,(hl)		;7c47
	adc a,a			;7c48
	nop			;7c49
	nop			;7c4a
	rst 38h			;7c4b
	ret p			;7c4c
	nop			;7c4d
	nop			;7c4e
	nop			;7c4f
	nop			;7c50
	nop			;7c51
	nop			;7c52
	nop			;7c53
	nop			;7c54
	nop			;7c55
	nop			;7c56
l7c57h:
	nop			;7c57
	nop			;7c58
	nop			;7c59
	nop			;7c5a
	nop			;7c5b
	nop			;7c5c
	nop			;7c5d
	nop			;7c5e
	nop			;7c5f
	nop			;7c60
	nop			;7c61
	ld h,(hl)		;7c62
	ld l,a			;7c63
	ret p			;7c64
	nop			;7c65
	add a,a			;7c66
	halt			;7c67
	ret p			;7c68
	nop			;7c69
	ret pe			;7c6a
	halt			;7c6b
	ret p			;7c6c
	nop			;7c6d
	ei			;7c6e
	cp e			;7c6f
	ret p			;7c70
	nop			;7c71
	rrca			;7c72
	add a,a			;7c73
	ret p			;7c74
	nop			;7c75
	nop			;7c76
	rst 38h			;7c77
	ret p			;7c78
	nop			;7c79
	nop			;7c7a
	nop			;7c7b
	nop			;7c7c
	nop			;7c7d
	nop			;7c7e
	nop			;7c7f
	nop			;7c80
	nop			;7c81
	nop			;7c82
	nop			;7c83
	nop			;7c84
	nop			;7c85
	nop			;7c86
	nop			;7c87
	nop			;7c88
	nop			;7c89
	nop			;7c8a
	nop			;7c8b
	nop			;7c8c
	nop			;7c8d
	nop			;7c8e
	nop			;7c8f
	nop			;7c90
	nop			;7c91
	nop			;7c92
	rst 38h			;7c93
	rst 38h			;7c94
	rst 38h			;7c95
	rrca			;7c96
	rst 20h			;7c97
	xor 0eeh		;7c98
	rrca			;7c9a
	ld a,a			;7c9b
	adc a,b			;7c9c
	adc a,b			;7c9d
	rrca			;7c9e
	ld a,a			;7c9f
	adc a,b			;7ca0
	rst 38h			;7ca1
	nop			;7ca2
	nop			;7ca3
	nop			;7ca4
	nop			;7ca5
	nop			;7ca6
	nop			;7ca7
	nop			;7ca8
	nop			;7ca9
	nop			;7caa
	nop			;7cab
	nop			;7cac
	nop			;7cad
	nop			;7cae
	nop			;7caf
	nop			;7cb0
	nop			;7cb1
	rst 38h			;7cb2
	rrca			;7cb3
	rst 38h			;7cb4
	rrca			;7cb5
	xor 0f8h		;7cb6
	rst 28h			;7cb8
	rst 38h			;7cb9
	ld l,b			;7cba
	ld l,a			;7cbb
	rst 38h			;7cbc
	ld a,b			;7cbd
	ret m			;7cbe
	ret m			;7cbf
	rst 38h			;7cc0
	adc a,(hl)		;7cc1
	nop			;7cc2
	nop			;7cc3
	nop			;7cc4
	nop			;7cc5
	nop			;7cc6
	nop			;7cc7
	nop			;7cc8
	rst 38h			;7cc9
	nop			;7cca
	nop			;7ccb
	rrca			;7ccc
	ld e,000h		;7ccd
	nop			;7ccf
	pop af			;7cd0
	xor 000h		;7cd1
	rrca			;7cd3
	jr l7c57h		;7cd4
	nop			;7cd6
	rrca			;7cd7
	rra			;7cd8
	ret m			;7cd9
	nop			;7cda
	pop af			;7cdb
	adc a,a			;7cdc
	adc a,a			;7cdd
	nop			;7cde
	pop af			;7cdf
	adc a,a			;7ce0
	adc a,a			;7ce1
	nop			;7ce2
	nop			;7ce3
	rst 38h			;7ce4
	rst 38h			;7ce5
	rst 38h			;7ce6
	rst 38h			;7ce7
	cp 0eeh			;7ce8
	xor 0efh		;7cea
	pop hl			;7cec
	ld de,0eeeeh		;7ced
	pop af			;7cf0
	ld de,01e11h		;7cf1
	rra			;7cf4
	ld de,01111h		;7cf5
	rst 28h			;7cf8
	ld de,01e81h		;7cf9
	xor 0f1h		;7cfc
	adc a,b			;7cfe
	adc a,b			;7cff
	add a,c			;7d00
	ret m			;7d01
	rst 38h			;7d02
	nop			;7d03
	nop			;7d04
	nop			;7d05
	pop hl			;7d06
	rst 38h			;7d07
	nop			;7d08
	nop			;7d09
	ld e,011h		;7d0a
	rst 38h			;7d0c
	ret p			;7d0d
	ld de,01eefh		;7d0e
	rst 28h			;7d11
	ld de,0f111h		;7d12
	xor 011h		;7d15
	ld de,011f8h		;7d17
	ld de,08f11h		;7d1a
	ld de,01111h		;7d1d
	rra			;7d20
	add a,c			;7d21
	nop			;7d22
	nop			;7d23
	nop			;7d24
	nop			;7d25
	nop			;7d26
	nop			;7d27
	nop			;7d28
	nop			;7d29
	nop			;7d2a
	nop			;7d2b
	nop			;7d2c
	nop			;7d2d
	ret p			;7d2e
	nop			;7d2f
	nop			;7d30
	nop			;7d31
	rra			;7d32
	rst 38h			;7d33
	nop			;7d34
	nop			;7d35
	pop hl			;7d36
	xor 0f0h		;7d37
	nop			;7d39
	rra			;7d3a
	ld de,000efh		;7d3b
	rra			;7d3e
	add a,c			;7d3f
	ld e,0f0h		;7d40
	nop			;7d42
	nop			;7d43
	nop			;7d44
	nop			;7d45
	nop			;7d46
	nop			;7d47
	nop			;7d48
	nop			;7d49
	nop			;7d4a
	nop			;7d4b
	nop			;7d4c
	nop			;7d4d
	nop			;7d4e
	nop			;7d4f
	nop			;7d50
	nop			;7d51
	nop			;7d52
	nop			;7d53
	nop			;7d54
	nop			;7d55
	nop			;7d56
	nop			;7d57
	nop			;7d58
	rrca			;7d59
	nop			;7d5a
	nop			;7d5b
	rrca			;7d5c
	rst 38h			;7d5d
	nop			;7d5e
	nop			;7d5f
	pop af			;7d60
	ld de,0ff0fh		;7d61
	rst 38h			;7d64
	ret m			;7d65
	rrca			;7d66
	push af			;7d67
	ld d,l			;7d68
	ret m			;7d69
	rrca			;7d6a
	push af			;7d6b
l7d6ch:
	ld d,l			;7d6c
	ret m			;7d6d
	pop af			;7d6e
	push af			;7d6f
	ld d,l			;7d70
	ret m			;7d71
	pop af			;7d72
	call p,0f844h		;7d73
	jr l7d6ch		;7d76
	ld b,h			;7d78
	ret m			;7d79
	rst 38h			;7d7a
	call p,0ff44h		;7d7b
	rra			;7d7e
	di			;7d7f
	inc sp			;7d80
	ret m			;7d81
	adc a,b			;7d82
	ld de,0f818h		;7d83
	add a,c			;7d86
	ld de,0f811h		;7d87
	ld de,01111h		;7d8a
	ret m			;7d8d
	ld de,01111h		;7d8e
	ret m			;7d91
	ld de,01811h		;7d92
	ret m			;7d95
	add a,c			;7d96
	ld de,0f81fh		;7d97
	add a,c			;7d9a
	ld de,0f88fh		;7d9b
	rst 38h			;7d9e
	ret m			;7d9f
	rst 38h			;7da0
	adc a,b			;7da1
	ld de,01f11h		;7da2
	adc a,b			;7da5
l7da6h:
	add a,c			;7da6
l7da7h:
	ld de,0f811h		;7da7
	adc a,b			;7daa
	adc a,b			;7dab
	jr l7da6h		;7dac
	add a,c			;7dae
	ld de,0f81eh		;7daf
	ld de,01111h		;7db2
	ret m			;7db5
	ld de,01111h		;7db6
	ret m			;7db9
	ld de,01f11h		;7dba
	add a,c			;7dbd
	ld de,01f11h		;7dbe
	add a,c			;7dc1
	ld de,011f8h		;7dc2
	ret p			;7dc5
	add a,c			;7dc6
	ret m			;7dc7
	ld de,0111fh		;7dc8
	rra			;7dcb
	ld de,0111fh		;7dcc
	rra			;7dcf
	adc a,b			;7dd0
	rra			;7dd1
	ld de,0881fh		;7dd2
	adc a,a			;7dd5
	ld de,0811fh		;7dd6
	rra			;7dd9
	ld de,011f8h		;7dda
	rst 38h			;7ddd
	ld de,011f8h		;7dde
	rst 38h			;7de1
	nop			;7de2
	rrca			;7de3
	ld de,00011h		;7de4
	rrca			;7de7
	add a,c			;7de8
	adc a,b			;7de9
	nop			;7dea
	rrca			;7deb
	add a,c			;7dec
	adc a,b			;7ded
	nop			;7dee
	rrca			;7def
	add a,c			;7df0
	adc a,b			;7df1
	nop			;7df2
	nop			;7df3
	ret m			;7df4
	jr l7df7h		;7df5
l7df7h:
	nop			;7df7
	rrca			;7df8
	ret m			;7df9
	nop			;7dfa
	nop			;7dfb
	nop			;7dfc
	rrca			;7dfd
	nop			;7dfe
	nop			;7dff
	nop			;7e00
	nop			;7e01
	ld de,0331fh		;7e02
	rst 38h			;7e05
	add a,c			;7e06
	rra			;7e07
	inc sp			;7e08
	ccf			;7e09
	adc a,b			;7e0a
	ld de,02ff2h		;7e0b
	adc a,b			;7e0e
	add a,c			;7e0f
	jp p,0882fh		;7e10
	add a,c			;7e13
	rst 38h			;7e14
	rst 38h			;7e15
	jr l7da7h		;7e16
	rst 38h			;7e18
	rst 38h			;7e19
	rst 38h			;7e1a
	ret p			;7e1b
	rrca			;7e1c
	ccf			;7e1d
	nop			;7e1e
	nop			;7e1f
	rrca			;7e20
	ccf			;7e21
	adc a,b			;7e22
	adc a,b			;7e23
	rst 38h			;7e24
	add a,c			;7e25
	rst 38h			;7e26
	rst 38h			;7e27
	rst 38h			;7e28
	jr l7e5eh		;7e29
	inc sp			;7e2b
	pop af			;7e2c
	adc a,b			;7e2d
	rst 38h			;7e2e
	rst 38h			;7e2f
	ret m			;7e30
	adc a,b			;7e31
	rst 38h			;7e32
	rst 38h			;7e33
	ret m			;7e34
	adc a,b			;7e35
	ld de,0ff88h		;7e36
	adc a,b			;7e39
	add a,c			;7e3a
	ld de,0ff88h		;7e3b
	ret m			;7e3e
	adc a,b			;7e3f
	adc a,b			;7e40
	rst 38h			;7e41
	add a,c			;7e42
	ld de,0818fh		;7e43
	adc a,b			;7e46
	adc a,b			;7e47
	ret m			;7e48
	adc a,b			;7e49
	adc a,b			;7e4a
	adc a,a			;7e4b
	ret m			;7e4c
	adc a,b			;7e4d
	adc a,b			;7e4e
	adc a,a			;7e4f
	adc a,b			;7e50
	adc a,a			;7e51
	adc a,b			;7e52
	ret m			;7e53
	adc a,b			;7e54
	ret m			;7e55
	adc a,a			;7e56
	adc a,b			;7e57
	adc a,a			;7e58
	rst 38h			;7e59
	ret m			;7e5a
	rst 38h			;7e5b
	rst 38h			;7e5c
	ret m			;7e5d
l7e5eh:
	rst 38h			;7e5e
	rst 38h			;7e5f
	adc a,b			;7e60
	adc a,b			;7e61
	rra			;7e62
	add a,c			;7e63
	rra			;7e64
	rst 28h			;7e65
	adc a,a			;7e66
	ld de,0ff1fh		;7e67
	ret m			;7e6a
	add a,c			;7e6b
	pop af			;7e6c
	rra			;7e6d
	adc a,b			;7e6e
	adc a,a			;7e6f
	ld de,0881fh		;7e70
	pop af			;7e73
	ld de,0ffffh		;7e74
	ld de,0ff81h		;7e77
	ld de,01188h		;7e7a
	rst 38h			;7e7d
	adc a,b			;7e7e
	add a,c			;7e7f
	rra			;7e80
	rst 38h			;7e81
	nop			;7e82
	nop			;7e83
	ld b,053h		;7e84
	nop			;7e86
	nop			;7e87
	rrca			;7e88
	ld d,e			;7e89
	nop			;7e8a
	nop			;7e8b
	rrca			;7e8c
	ld d,e			;7e8d
	nop			;7e8e
	nop			;7e8f
	rrca			;7e90
	ld d,e			;7e91
	nop			;7e92
	nop			;7e93
	rrca			;7e94
	ld d,e			;7e95
	nop			;7e96
	nop			;7e97
	rrca			;7e98
	ld d,e			;7e99
	nop			;7e9a
	nop			;7e9b
	rrca			;7e9c
	ld d,e			;7e9d
	nop			;7e9e
	nop			;7e9f
	rrca			;7ea0
	ld d,e			;7ea1
	rst 38h			;7ea2
	rst 38h			;7ea3
	rst 38h			;7ea4
	adc a,b			;7ea5
	pop af			;7ea6
	adc a,b			;7ea7
	adc a,b			;7ea8
	adc a,b			;7ea9
	pop af			;7eaa
	ld de,08818h		;7eab
	pop af			;7eae
	jr l7ec2h		;7eaf
	ld de,011ffh		;7eb1
	adc a,b			;7eb4
	adc a,b			;7eb5
	rst 38h			;7eb6
	rst 38h			;7eb7
	adc a,b			;7eb8
	adc a,b			;7eb9
	rst 38h			;7eba
	rst 38h			;7ebb
	rst 38h			;7ebc
	rst 38h			;7ebd
	or 0ffh			;7ebe
	rst 38h			;7ec0
	rst 38h			;7ec1
l7ec2h:
	adc a,b			;7ec2
	adc a,b			;7ec3
	adc a,b			;7ec4
	adc a,b			;7ec5
	adc a,b			;7ec6
	adc a,b			;7ec7
	adc a,b			;7ec8
	adc a,b			;7ec9
	adc a,b			;7eca
	adc a,b			;7ecb
	adc a,b			;7ecc
	adc a,b			;7ecd
	adc a,b			;7ece
	adc a,b			;7ecf
	adc a,b			;7ed0
	adc a,b			;7ed1
	adc a,b			;7ed2
	adc a,b			;7ed3
	adc a,b			;7ed4
	adc a,a			;7ed5
	adc a,b			;7ed6
	adc a,b			;7ed7
	rst 38h			;7ed8
	rst 38h			;7ed9
	rst 38h			;7eda
	rst 38h			;7edb
	rst 38h			;7edc
	rst 38h			;7edd
	rst 38h			;7ede
	rst 38h			;7edf
	or 066h			;7ee0
	adc a,b			;7ee2
	add a,c			;7ee3
	rra			;7ee4
	rst 38h			;7ee5
	adc a,b			;7ee6
	ld de,0f7ffh		;7ee7
	add a,c			;7eea
	rra			;7eeb
	rst 38h			;7eec
	halt			;7eed
	adc a,a			;7eee
	rst 38h			;7eef
	or 076h			;7ef0
	rst 38h			;7ef2
	rst 38h			;7ef3
	ld h,a			;7ef4
	ld h,(hl)		;7ef5
	rst 38h			;7ef6
	ld h,(hl)		;7ef7
	ld h,a			;7ef8
	ld h,(hl)		;7ef9
	ld h,(hl)		;7efa
	ld h,(hl)		;7efb
	halt			;7efc
	ld h,(hl)		;7efd
	ld h,(hl)		;7efe
	ld h,(hl)		;7eff
	ld h,(hl)		;7f00
	ld l,a			;7f01
	nop			;7f02
	nop			;7f03
	nop			;7f04
	nop			;7f05
	nop			;7f06
	nop			;7f07
	nop			;7f08
	nop			;7f09
	nop			;7f0a
	nop			;7f0b
	nop			;7f0c
	nop			;7f0d
	ld c,0e0h		;7f0e
	nop			;7f10
	nop			;7f11
	ld c,0e0h		;7f12
	nop			;7f14
	nop			;7f15
	nop			;7f16
	nop			;7f17
	nop			;7f18
	nop			;7f19
	nop			;7f1a
	nop			;7f1b
	nop			;7f1c
	nop			;7f1d
	nop			;7f1e
	nop			;7f1f
	nop			;7f20
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
	ret po			;7f41
	nop			;7f42
	nop			;7f43
	nop			;7f44
	nop			;7f45
	nop			;7f46
	nop			;7f47
	nop			;7f48
	nop			;7f49
	nop			;7f4a
	nop			;7f4b
	nop			;7f4c
	nop			;7f4d
	nop			;7f4e
	nop			;7f4f
	nop			;7f50
	nop			;7f51
	nop			;7f52
	nop			;7f53
	nop			;7f54
	nop			;7f55
	nop			;7f56
	ld c,000h		;7f57
	nop			;7f59
	nop			;7f5a
	ret po			;7f5b
	nop			;7f5c
	nop			;7f5d
	ld c,000h		;7f5e
	nop			;7f60
	nop			;7f61
	nop			;7f62
	nop			;7f63
	nop			;7f64
	nop			;7f65
	nop			;7f66
	nop			;7f67
	nop			;7f68
	ld c,000h		;7f69
	nop			;7f6b
	nop			;7f6c
	ret po			;7f6d
	nop			;7f6e
	nop			;7f6f
	ld c,000h		;7f70
	nop			;7f72
	nop			;7f73
	xor 000h		;7f74
	nop			;7f76
	ld c,0e0h		;7f77
	nop			;7f79
	nop			;7f7a
	nop			;7f7b
	nop			;7f7c
	nop			;7f7d
	ret po			;7f7e
	nop			;7f7f
	nop			;7f80
	nop			;7f81
	nop			;7f82
	nop			;7f83
	nop			;7f84
	nop			;7f85
	nop			;7f86
	nop			;7f87
	nop			;7f88
	nop			;7f89
	nop			;7f8a
	xor 000h		;7f8b
	nop			;7f8d
	nop			;7f8e
sub_7f8fh:
	xor 000h		;7f8f
	nop			;7f91
	nop			;7f92
	nop			;7f93
	nop			;7f94
	nop			;7f95
	nop			;7f96
	nop			;7f97
	nop			;7f98
	nop			;7f99
	nop			;7f9a
	nop			;7f9b
	nop			;7f9c
	nop			;7f9d
	nop			;7f9e
	nop			;7f9f
	nop			;7fa0
	nop			;7fa1
	nop			;7fa2
	nop			;7fa3
	nop			;7fa4
	nop			;7fa5
	nop			;7fa6
	ret po			;7fa7
	nop			;7fa8
	nop			;7fa9
	nop			;7faa
	nop			;7fab
	nop			;7fac
	nop			;7fad
	nop			;7fae
	nop			;7faf
	nop			;7fb0
	nop			;7fb1
	nop			;7fb2
	nop			;7fb3
	nop			;7fb4
	nop			;7fb5
	nop			;7fb6
	nop			;7fb7
	nop			;7fb8
	nop			;7fb9
	nop			;7fba
	nop			;7fbb
	nop			;7fbc
	nop			;7fbd
	nop			;7fbe
	nop			;7fbf
	nop			;7fc0
	nop			;7fc1
	nop			;7fc2
	nop			;7fc3
	nop			;7fc4
	nop			;7fc5
	nop			;7fc6
	nop			;7fc7
	nop			;7fc8
	nop			;7fc9
	nop			;7fca
	nop			;7fcb
	nop			;7fcc
	nop			;7fcd
	nop			;7fce
	nop			;7fcf
	nop			;7fd0
	nop			;7fd1
	nop			;7fd2
	nop			;7fd3
	nop			;7fd4
	nop			;7fd5
	nop			;7fd6
	nop			;7fd7
	nop			;7fd8
	nop			;7fd9
	xor 000h		;7fda
	nop			;7fdc
	nop			;7fdd
	xor 000h		;7fde
	nop			;7fe0
	nop			;7fe1
	ld c,000h		;7fe2
	nop			;7fe4
	nop			;7fe5
	nop			;7fe6
	nop			;7fe7
	nop			;7fe8
	nop			;7fe9
	nop			;7fea
	xor 0e0h		;7feb
	nop			;7fed
	nop			;7fee
	xor 0eeh		;7fef
	nop			;7ff1
	nop			;7ff2
	xor 0eeh		;7ff3
	nop			;7ff5
	nop			;7ff6
	ld c,0eeh		;7ff7
	ret po			;7ff9
	nop			;7ffa
	nop			;7ffb
	xor 0e0h		;7ffc
	nop			;7ffe
	nop			;7fff

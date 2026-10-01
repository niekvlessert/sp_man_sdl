; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank14_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank14.bin

	org 06000h

	sbc a,d			;6000
	ld a,a			;6001
	ccf			;6002
	nop			;6003
	nop			;6004
	inc bc			;6005
	add a,c			;6006
	ret nz			;6007
	rst 38h			;6008
	rst 38h			;6009
	nop			;600a
	nop			;600b
	ld b,0fch		;600c
	ld a,(hl)		;600e
	rst 38h			;600f
	nop			;6010
	ret p			;6011
	rst 38h			;6012
	di			;6013
	ld sp,hl		;6014
	ret p			;6015
	rst 38h			;6016
	nop			;6017
	nop			;6018
	rst 38h			;6019
	ret nz			;601a
	ld b,0f0h		;601b
	nop			;601d
	inc bc			;601e
	ld hl,01f05h		;601f
	ld (bc),a		;6022
	ld (02f02h),a		;6023
	ld (bc),a		;6026
	pop af			;6027
	ld (bc),a		;6028
l6029h:
	ld hl,03190h		;6029
	jp p,0f1f2h		;602c
	di			;602f
	ld hl,00f21h		;6030
	rrca			;6033
	jr nz,l6029h		;6034
	ld (01f21h),a		;6036
	jp p,00023h		;6039
	ex af,af'		;603c
	sbc a,c			;603d
	nop			;603e
	ex af,af'		;603f
	nop			;6040
	nop			;6041
	ex af,af'		;6042
	rst 28h			;6043
	nop			;6044
	ex af,af'		;6045
	nop			;6046
	nop			;6047
	rst 38h			;6048
	rst 38h			;6049
	ret m			;604a
	rra			;604b
	ccf			;604c
	ld a,a			;604d
	adc a,a			;604e
	call m,000f8h		;604f
	ret po			;6052
	ret m			;6053
	call m,0f1feh		;6054
	rra			;6057
	rst 38h			;6058
	call m,0f8ffh		;6059
	adc a,a			;605c
	ld a,a			;605d
	ccf			;605e
	rra			;605f
	rlca			;6060
	ccf			;6061
	rra			;6062
	ccf			;6063
	pop af			;6064
	cp 0fch			;6065
	ret m			;6067
	ret po			;6068
	nop			;6069
	rlca			;606a
	rra			;606b
	ccf			;606c
	ld a,a			;606d
	adc a,a			;606e
	di			;606f
	jp p,0e000h		;6070
	ret m			;6073
	call m,0f1feh		;6074
	rst 8			;6077
	ld c,a			;6078
	jp p,0f9f8h		;6079
	adc a,a			;607c
	ld a,a			;607d
	ccf			;607e
	rra			;607f
	rlca			;6080
	ld c,a			;6081
	rra			;6082
	sbc a,a			;6083
	pop af			;6084
	cp 0fch			;6085
	ret m			;6087
	ret po			;6088
	nop			;6089
	rlca			;608a
	rra			;608b
	ccf			;608c
	ld a,a			;608d
	adc a,a			;608e
	di			;608f
	pop af			;6090
	nop			;6091
	ret po			;6092
	ret m			;6093
	call m,0f1feh		;6094
	rst 8			;6097
	adc a,a			;6098
	ret p			;6099
	jp p,08ff3h		;609a
	ld a,a			;609d
	ccf			;609e
	rra			;609f
	rlca			;60a0
	rrca			;60a1
	ld c,a			;60a2
	rst 8			;60a3
	pop af			;60a4
	cp 0fch			;60a5
	ret m			;60a7
	ret po			;60a8
	nop			;60a9
	rlca			;60aa
	rra			;60ab
	ccf			;60ac
	ld a,a			;60ad
	adc a,a			;60ae
	call m,000f9h		;60af
	ret po			;60b2
	ret m			;60b3
	call m,0f1feh		;60b4
	ccf			;60b7
	sbc a,a			;60b8
	ld sp,hl		;60b9
	ld sp,hl		;60ba
	call m,sub_7f8fh	;60bb
	ccf			;60be
	rra			;60bf
	rlca			;60c0
	sbc a,a			;60c1
	sbc a,a			;60c2
	ccf			;60c3
	pop af			;60c4
	cp 0fch			;60c5
	ret m			;60c7
	pop hl			;60c8
	ret po			;60c9
	nop			;60ca
	rlca			;60cb
	rra			;60cc
	ccf			;60cd
	ld a,a			;60ce
	adc a,a			;60cf
	ret p			;60d0
	add a,b			;60d1
	nop			;60d2
	ret po			;60d3
	ret m			;60d4
	call m,0f1feh		;60d5
	rrca			;60d8
	ld bc,08017h		;60d9
	ret p			;60dc
	adc a,a			;60dd
	ld a,a			;60de
	ccf			;60df
	rra			;60e0
	rlca			;60e1
	ret pe			;60e2
	ld bc,0f10fh		;60e3
	cp 0fch			;60e6
	ret m			;60e8
	ret po			;60e9
	nop			;60ea
	rlca			;60eb
	rra			;60ec
	ccf			;60ed
	ld a,a			;60ee
	adc a,a			;60ef
	ret p			;60f0
	add a,b			;60f1
	nop			;60f2
	ret po			;60f3
	ret m			;60f4
	call m,0f1feh		;60f5
	rrca			;60f8
	ld bc,08017h		;60f9
	ret p			;60fc
	adc a,a			;60fd
	ld a,a			;60fe
	ccf			;60ff
	rra			;6100
	rlca			;6101
	ret pe			;6102
	ld bc,0f10fh		;6103
	cp 0fch			;6106
	ret m			;6108
	ret po			;6109
	nop			;610a
	rlca			;610b
	rra			;610c
	ccf			;610d
	ld a,a			;610e
	adc a,a			;610f
	ld sp,hl		;6110
	ret m			;6111
	nop			;6112
	ret po			;6113
	ret m			;6114
	call m,0f1feh		;6115
	sbc a,a			;6118
	sbc a,a			;6119
	ret m			;611a
	ld sp,hl		;611b
	ld sp,hl		;611c
	adc a,a			;611d
	ld a,a			;611e
	ccf			;611f
	rra			;6120
	rlca			;6121
	rra			;6122
	rra			;6123
	sbc a,a			;6124
	pop af			;6125
	cp 0fch			;6126
	ret m			;6128
	ret po			;6129
	nop			;612a
	ld (bc),a		;612b
	dec c			;612c
	adc a,h			;612d
	add a,b			;612e
	ret po			;612f
	add a,b			;6130
l6131h:
	defb 0fdh,0fah,0fah ;illegal sequence	;6131
	ret nc			;6134
	ret nc			;6135
	add a,b			;6136
	ret po			;6137
	add a,b			;6138
	defb 0fdh,005h,0fah ;illegal sequence	;6139
	add a,l			;613c
	defb 0fdh,080h,0e0h ;illegal sequence	;613d
	add a,b			;6140
	ret nc			;6141
	inc bc			;6142
	jp m,0fd84h		;6143
	add a,b			;6146
	ret po			;6147
	add a,b			;6148
	inc bc			;6149
	ret nc			;614a
	adc a,h			;614b
	add a,b			;614c
	ret po			;614d
	add a,b			;614e
	defb 0fdh,0fah,0fah ;illegal sequence	;614f
	ret nc			;6152
	ret nc			;6153
	add a,b			;6154
	ret po			;6155
	add a,b			;6156
	defb 0fdh,005h,0fah ;illegal sequence	;6157
	add a,l			;615a
	defb 0fdh,080h,0e0h ;illegal sequence	;615b
	add a,b			;615e
	ret nc			;615f
	inc bc			;6160
	jp m,0fd84h		;6161
	add a,b			;6164
	ret po			;6165
	add a,b			;6166
	inc bc			;6167
	ret nc			;6168
	adc a,h			;6169
	add a,b			;616a
	ret po			;616b
	add a,b			;616c
	defb 0fdh,0fah,0fah ;illegal sequence	;616d
	ret nc			;6170
	ret nc			;6171
	add a,b			;6172
	ret po			;6173
	add a,b			;6174
	defb 0fdh,005h,0fah ;illegal sequence	;6175
	add a,l			;6178
	defb 0fdh,080h,0e0h ;illegal sequence	;6179
	add a,b			;617c
	ret nc			;617d
	inc bc			;617e
	jp m,0fd84h		;617f
	add a,b			;6182
	ret po			;6183
	add a,b			;6184
	inc bc			;6185
	ret nc			;6186
	adc a,h			;6187
	add a,b			;6188
	ret po			;6189
	add a,b			;618a
	defb 0fdh,0fah,0fah ;illegal sequence	;618b
	ret nc			;618e
	ret nc			;618f
	add a,b			;6190
	ret po			;6191
	add a,b			;6192
	defb 0fdh,005h,0fah ;illegal sequence	;6193
	add a,l			;6196
	defb 0fdh,080h,0e0h ;illegal sequence	;6197
	add a,b			;619a
	ret nc			;619b
	inc bc			;619c
	jp m,0fd84h		;619d
	add a,b			;61a0
	ret po			;61a1
	add a,b			;61a2
	inc bc			;61a3
	ret nc			;61a4
	sbc a,l			;61a5
	add a,b			;61a6
	ret po			;61a7
	add a,b			;61a8
	defb 0fdh,0f7h,0f7h ;illegal sequence	;61a9
	ret nc			;61ac
	ret nc			;61ad
	add a,b			;61ae
	ret po			;61af
	add a,b			;61b0
	defb 0fdh,0f7h,0f7h ;illegal sequence	;61b1
	rst 20h			;61b4
	rst 30h			;61b5
	rst 30h			;61b6
	defb 0fdh,080h,0e0h ;illegal sequence	;61b7
	add a,b			;61ba
	ret nc			;61bb
	rst 20h			;61bc
	rst 30h			;61bd
	rst 30h			;61be
	defb 0fdh,080h,0e0h ;illegal sequence	;61bf
	add a,b			;61c2
	inc bc			;61c3
	ret nc			;61c4
	sbc a,l			;61c5
	add a,b			;61c6
	ret po			;61c7
	add a,b			;61c8
	defb 0fdh,0f6h,0f6h ;illegal sequence	;61c9
	ret nc			;61cc
	ret nc			;61cd
	add a,b			;61ce
	ret po			;61cf
	add a,b			;61d0
	defb 0fdh,0f6h,0f6h ;illegal sequence	;61d1
	and (hl)		;61d4
	or 0f6h			;61d5
	defb 0fdh,080h,0e0h ;illegal sequence	;61d7
	add a,b			;61da
	ret nc			;61db
	and (hl)		;61dc
	or 0f6h			;61dd
	defb 0fdh,080h,0e0h ;illegal sequence	;61df
	add a,b			;61e2
	inc bc			;61e3
	ret nc			;61e4
	adc a,h			;61e5
	add a,b			;61e6
	ret po			;61e7
	add a,b			;61e8
	defb 0fdh,0fah,0fah ;illegal sequence	;61e9
	ret nc			;61ec
	ret nc			;61ed
	add a,b			;61ee
	ret po			;61ef
	add a,b			;61f0
	defb 0fdh,005h,0fah ;illegal sequence	;61f1
	add a,l			;61f4
	defb 0fdh,080h,0e0h ;illegal sequence	;61f5
	add a,b			;61f8
	ret nc			;61f9
	inc bc			;61fa
	jp m,0fd85h		;61fb
	add a,b			;61fe
	ret po			;61ff
	add a,b			;6200
	ret nc			;6201
	nop			;6202
	ld (bc),a		;6203
	dec e			;6204
	adc a,h			;6205
	add a,c			;6206
	pop hl			;6207
	add a,c			;6208
	defb 0fdh,0fah,0fah ;illegal sequence	;6209
	pop de			;620c
	pop de			;620d
	add a,c			;620e
	pop hl			;620f
	add a,c			;6210
	defb 0fdh,005h,0fah ;illegal sequence	;6211
	add a,l			;6214
	defb 0fdh,081h,0e1h ;illegal sequence	;6215
	add a,c			;6218
	pop de			;6219
	inc bc			;621a
	jp m,0fd84h		;621b
	add a,c			;621e
	pop hl			;621f
	add a,c			;6220
	inc bc			;6221
	pop de			;6222
	adc a,h			;6223
	add a,c			;6224
	pop hl			;6225
	add a,c			;6226
	defb 0fdh,0fah,0fah ;illegal sequence	;6227
	pop de			;622a
	pop de			;622b
	add a,c			;622c
	pop hl			;622d
	add a,c			;622e
	defb 0fdh,005h,0fah ;illegal sequence	;622f
	add a,l			;6232
	defb 0fdh,081h,0e1h ;illegal sequence	;6233
	add a,c			;6236
	pop de			;6237
	inc bc			;6238
	jp m,0fd84h		;6239
	add a,c			;623c
	pop hl			;623d
	add a,c			;623e
	inc bc			;623f
	pop de			;6240
	adc a,h			;6241
	add a,c			;6242
	pop hl			;6243
	add a,c			;6244
	defb 0fdh,0fah,0fah ;illegal sequence	;6245
	pop de			;6248
	pop de			;6249
	add a,c			;624a
	pop hl			;624b
	add a,c			;624c
	defb 0fdh,005h,0fah ;illegal sequence	;624d
	add a,l			;6250
	defb 0fdh,081h,0e1h ;illegal sequence	;6251
	add a,c			;6254
	pop de			;6255
	inc bc			;6256
	jp m,0fd84h		;6257
	add a,c			;625a
	pop hl			;625b
	add a,c			;625c
	inc bc			;625d
	pop de			;625e
	adc a,h			;625f
	add a,c			;6260
	pop hl			;6261
	add a,c			;6262
	defb 0fdh,0fah,0fah ;illegal sequence	;6263
	pop de			;6266
	pop de			;6267
	add a,c			;6268
	pop hl			;6269
	add a,c			;626a
	defb 0fdh,005h,0fah ;illegal sequence	;626b
	add a,l			;626e
	defb 0fdh,081h,0e1h ;illegal sequence	;626f
	add a,c			;6272
	pop de			;6273
	inc bc			;6274
	jp m,0fd84h		;6275
	add a,c			;6278
	pop hl			;6279
	add a,c			;627a
	inc bc			;627b
	pop de			;627c
	sbc a,l			;627d
	add a,c			;627e
	pop hl			;627f
	add a,c			;6280
	defb 0fdh,0f7h,0f7h ;illegal sequence	;6281
	pop de			;6284
	pop de			;6285
	add a,c			;6286
	pop hl			;6287
	add a,c			;6288
	defb 0fdh,0f7h,0f7h ;illegal sequence	;6289
	rst 20h			;628c
	rst 30h			;628d
	rst 30h			;628e
	defb 0fdh,081h,0e1h ;illegal sequence	;628f
	add a,c			;6292
	pop de			;6293
	rst 20h			;6294
	rst 30h			;6295
	rst 30h			;6296
	defb 0fdh,081h,0e1h ;illegal sequence	;6297
	add a,c			;629a
	inc bc			;629b
	pop de			;629c
	sbc a,l			;629d
	add a,c			;629e
	pop hl			;629f
	add a,c			;62a0
	defb 0fdh,0f6h,0f6h ;illegal sequence	;62a1
	pop de			;62a4
	pop de			;62a5
	add a,c			;62a6
	pop hl			;62a7
	add a,c			;62a8
	defb 0fdh,0f6h,0f6h ;illegal sequence	;62a9
	and (hl)		;62ac
	or 0f6h			;62ad
	defb 0fdh,081h,0e1h ;illegal sequence	;62af
	add a,c			;62b2
	pop de			;62b3
	and (hl)		;62b4
	or 0f6h			;62b5
	defb 0fdh,081h,0e1h ;illegal sequence	;62b7
	add a,c			;62ba
	inc bc			;62bb
	pop de			;62bc
	adc a,h			;62bd
	add a,c			;62be
	pop hl			;62bf
	add a,c			;62c0
	defb 0fdh,0fah,0fah ;illegal sequence	;62c1
	pop de			;62c4
	pop de			;62c5
	add a,c			;62c6
	pop hl			;62c7
	add a,c			;62c8
	defb 0fdh,005h,0fah ;illegal sequence	;62c9
	add a,l			;62cc
	defb 0fdh,081h,0e1h ;illegal sequence	;62cd
	add a,c			;62d0
	pop de			;62d1
	inc bc			;62d2
	jp m,0fd85h		;62d3
	add a,c			;62d6
	pop hl			;62d7
	add a,c			;62d8
	pop de			;62d9
	nop			;62da
	ld (bc),a		;62db
	defb 0fdh,08ch ;adc a,iyh	;62dc
	adc a,a			;62de
	rst 28h			;62df
	adc a,a			;62e0
	defb 0fdh,0fah,0fah ;illegal sequence	;62e1
	rst 18h			;62e4
	rst 18h			;62e5
	adc a,a			;62e6
	rst 28h			;62e7
	adc a,a			;62e8
	defb 0fdh,005h,0fah ;illegal sequence	;62e9
	add a,l			;62ec
	defb 0fdh,08fh,0efh ;illegal sequence	;62ed
	adc a,a			;62f0
	rst 18h			;62f1
	inc bc			;62f2
	jp m,0fd84h		;62f3
	adc a,a			;62f6
	rst 28h			;62f7
	adc a,a			;62f8
	inc bc			;62f9
	rst 18h			;62fa
	adc a,h			;62fb
	adc a,a			;62fc
	rst 28h			;62fd
	adc a,a			;62fe
	defb 0fdh,0fah,0fah ;illegal sequence	;62ff
	rst 18h			;6302
	rst 18h			;6303
	adc a,a			;6304
	rst 28h			;6305
	adc a,a			;6306
	defb 0fdh,005h,0fah ;illegal sequence	;6307
	add a,l			;630a
	defb 0fdh,08fh,0efh ;illegal sequence	;630b
	adc a,a			;630e
	rst 18h			;630f
	inc bc			;6310
	jp m,0fd84h		;6311
	adc a,a			;6314
	rst 28h			;6315
	adc a,a			;6316
	inc bc			;6317
	rst 18h			;6318
	adc a,h			;6319
	adc a,a			;631a
	rst 28h			;631b
	adc a,a			;631c
	defb 0fdh,0fah,0fah ;illegal sequence	;631d
	rst 18h			;6320
	rst 18h			;6321
	adc a,a			;6322
	rst 28h			;6323
	adc a,a			;6324
	defb 0fdh,005h,0fah ;illegal sequence	;6325
	add a,l			;6328
	defb 0fdh,08fh,0efh ;illegal sequence	;6329
	adc a,a			;632c
	rst 18h			;632d
	inc bc			;632e
	jp m,0fd84h		;632f
	adc a,a			;6332
	rst 28h			;6333
	adc a,a			;6334
	inc bc			;6335
	rst 18h			;6336
	adc a,h			;6337
	adc a,a			;6338
	rst 28h			;6339
	adc a,a			;633a
	defb 0fdh,0fah,0fah ;illegal sequence	;633b
	rst 18h			;633e
	rst 18h			;633f
	adc a,a			;6340
	rst 28h			;6341
	adc a,a			;6342
	defb 0fdh,005h,0fah ;illegal sequence	;6343
	add a,l			;6346
	defb 0fdh,08fh,0efh ;illegal sequence	;6347
	adc a,a			;634a
	rst 18h			;634b
	inc bc			;634c
	jp m,0fd84h		;634d
	adc a,a			;6350
	rst 28h			;6351
	adc a,a			;6352
	inc bc			;6353
	rst 18h			;6354
	sbc a,l			;6355
	adc a,a			;6356
	rst 28h			;6357
	adc a,a			;6358
	defb 0fdh,0f7h,0f7h ;illegal sequence	;6359
	rst 18h			;635c
	rst 18h			;635d
	adc a,a			;635e
	rst 28h			;635f
	adc a,a			;6360
	defb 0fdh,0f7h,0f7h ;illegal sequence	;6361
	rst 20h			;6364
	rst 30h			;6365
	rst 30h			;6366
	defb 0fdh,08fh,0efh ;illegal sequence	;6367
	adc a,a			;636a
	rst 18h			;636b
	rst 20h			;636c
	rst 30h			;636d
	rst 30h			;636e
	defb 0fdh,08fh,0efh ;illegal sequence	;636f
	adc a,a			;6372
	inc bc			;6373
	rst 18h			;6374
	sbc a,l			;6375
	adc a,a			;6376
	rst 28h			;6377
	adc a,a			;6378
	defb 0fdh,0f6h,0f6h ;illegal sequence	;6379
	rst 18h			;637c
	rst 18h			;637d
	adc a,a			;637e
	rst 28h			;637f
	adc a,a			;6380
	defb 0fdh,0f6h,0f6h ;illegal sequence	;6381
	and (hl)		;6384
	or 0f6h			;6385
	defb 0fdh,08fh,0efh ;illegal sequence	;6387
	adc a,a			;638a
	rst 18h			;638b
	and (hl)		;638c
	or 0f6h			;638d
	defb 0fdh,08fh,0efh ;illegal sequence	;638f
	adc a,a			;6392
	inc bc			;6393
	rst 18h			;6394
	adc a,h			;6395
	adc a,a			;6396
	rst 28h			;6397
	adc a,a			;6398
	defb 0fdh,0fah,0fah ;illegal sequence	;6399
	rst 18h			;639c
	rst 18h			;639d
	adc a,a			;639e
	rst 28h			;639f
	adc a,a			;63a0
	defb 0fdh,005h,0fah ;illegal sequence	;63a1
	add a,l			;63a4
	defb 0fdh,08fh,0efh ;illegal sequence	;63a5
	adc a,a			;63a8
	rst 18h			;63a9
	inc bc			;63aa
	jp m,0fd85h		;63ab
	adc a,a			;63ae
	rst 28h			;63af
	adc a,a			;63b0
	rst 18h			;63b1
	nop			;63b2
	ex af,af'		;63b3
	rst 38h			;63b4
	nop			;63b5
	ex af,af'		;63b6
	ret p			;63b7
	nop			;63b8
	inc bc			;63b9
	rst 38h			;63ba
	add a,c			;63bb
	cp 007h			;63bc
	rst 38h			;63be
	add a,c			;63bf
	defb 0fdh,007h,0ffh ;illegal sequence	;63c0
	add a,c			;63c3
	ei			;63c4
	rlca			;63c5
	rst 38h			;63c6
	add a,c			;63c7
	rst 30h			;63c8
	rlca			;63c9
	rst 38h			;63ca
	add a,c			;63cb
	rst 28h			;63cc
	rlca			;63cd
	rst 38h			;63ce
	add a,c			;63cf
	rst 18h			;63d0
	rlca			;63d1
	rst 38h			;63d2
	add a,c			;63d3
	cp a			;63d4
	rlca			;63d5
	rst 38h			;63d6
	add a,c			;63d7
	ld a,a			;63d8
	inc b			;63d9
	rst 38h			;63da
	nop			;63db
	ld b,b			;63dc
	ret m			;63dd
	nop			;63de
	ex af,af'		;63df
	nop			;63e0
	dec b			;63e1
	rst 38h			;63e2
	in a,(0feh)		;63e3
	adc a,(hl)		;63e5
	add a,(hl)		;63e6
	rst 38h			;63e7
	rst 38h			;63e8
	ld b,e			;63e9
	ld b,e			;63ea
	ld h,c			;63eb
	ld b,b			;63ec
	ld b,b			;63ed
	ld h,b			;63ee
	rst 38h			;63ef
	rst 38h			;63f0
	cp 086h			;63f1
	inc bc			;63f3
	inc bc			;63f4
	ld bc,0fffch		;63f5
	call m,0c0f0h		;63f8
	ld a,a			;63fb
	rst 38h			;63fc
	rst 38h			;63fd
	call m,0f801h		;63fe
	cp 0fch			;6401
	pop af			;6403
	jp 0f80fh		;6404
	ret p			;6407
	call m,0c1c7h		;6408
	ld b,b			;640b
	ld b,b			;640c
	ld h,b			;640d
	pop af			;640e
	add a,b			;640f
	jp 0fcffh		;6410
	ret p			;6413
	ret nz			;6414
	add a,b			;6415
	cp 0ffh			;6416
	jp 0fc01h		;6418
	ret p			;641b
	jp 0f01fh		;641c
	pop bc			;641f
	pop bc			;6420
	nop			;6421
	cp 0f8h			;6422
	add a,e			;6424
	ld a,a			;6425
	nop			;6426
	ret nz			;6427
	inc bc			;6428
	rrca			;6429
	inc a			;642a
	ret p			;642b
	ret nz			;642c
	add a,b			;642d
	cp 0f1h			;642e
	rst 0			;6430
	ld a,h			;6431
	nop			;6432
	add a,b			;6433
	pop bc			;6434
	rst 38h			;6435
	rst 38h			;6436
	add a,e			;6437
	add a,c			;6438
	add a,c			;6439
	jp l7f47h		;643a
	add a,a			;643d
	add a,a			;643e
	nop			;643f
	dec c			;6440
	ld sp,hl		;6441
	ld b,0f5h		;6442
	ld (bc),a		;6444
	ld e,l			;6445
	rlca			;6446
	push af			;6447
	inc bc			;6448
	defb 0fdh,081h,0d8h ;illegal sequence	;6449
	inc b			;644c
	defb 0fdh,003h,0d5h ;illegal sequence	;644d
	add a,d			;6450
	ret c			;6451
	ret m			;6452
	ld b,0d8h		;6453
	add a,(hl)		;6455
	push de			;6456
	push af			;6457
	push af			;6458
	ret m			;6459
	defb 0fdh,0fdh,003h ;illegal sequence	;645a
	ld e,l			;645d
	inc bc			;645e
	push af			;645f
	inc b			;6460
	defb 0fdh,081h,0d8h ;illegal sequence	;6461
	inc bc			;6464
	defb 0fdh,004h,0d8h ;illegal sequence	;6465
	add a,h			;6468
	push de			;6469
	push af			;646a
	ld e,l			;646b
	ld e,l			;646c
	inc bc			;646d
	ret c			;646e
	inc bc			;646f
	push de			;6470
	inc bc			;6471
	push af			;6472
	add a,e			;6473
	ret m			;6474
	defb 0fdh,0fdh,003h ;illegal sequence	;6475
	ret c			;6478
	ld (bc),a		;6479
	push de			;647a
	ld b,0f5h		;647b
	ld (bc),a		;647d
	defb 0fdh,003h,0f5h ;illegal sequence	;647e
	add a,c			;6481
	ld e,l			;6482
	nop			;6483
	rlca			;6484
	ld bc,0ff0bh		;6485
	add a,e			;6488
	adc a,a			;6489
	add a,c			;648a
	or c			;648b
	inc bc			;648c
	cp a			;648d
	add a,h			;648e
	rrca			;648f
	add a,c			;6490
	or b			;6491
	cp (hl)			;6492
	inc bc			;6493
	cp a			;6494
	add a,c			;6495
	rst 38h			;6496
	rlca			;6497
	add a,b			;6498
	add a,h			;6499
	rst 38h			;649a
	inc bc			;649b
	rst 38h			;649c
	rst 38h			;649d
	inc b			;649e
	ret p			;649f
	add a,(hl)		;64a0
	nop			;64a1
	ld (hl),b		;64a2
	ld (hl),b		;64a3
	ret m			;64a4
	add a,b			;64a5
	ret p			;64a6
	inc b			;64a7
	nop			;64a8
	add a,c			;64a9
	rst 38h			;64aa
	ld b,080h		;64ab
	add a,c			;64ad
	rst 38h			;64ae
	rlca			;64af
	ld bc,0f802h		;64b0
	add a,c			;64b3
	rst 38h			;64b4
	dec b			;64b5
	ret p			;64b6
	add a,e			;64b7
	ret m			;64b8
	add a,b			;64b9
	ret p			;64ba
	inc bc			;64bb
	nop			;64bc
	ld (bc),a		;64bd
l64beh:
	ret p			;64be
	add a,c			;64bf
	nop			;64c0
	inc bc			;64c1
	add a,c			;64c2
	ld (bc),a		;64c3
	rst 38h			;64c4
	add a,c			;64c5
	add a,c			;64c6
	inc bc			;64c7
	rst 38h			;64c8
	ld b,080h		;64c9
	nop			;64cb
	jr nz,l64beh		;64cc
	rlca			;64ce
	djnz l64d5h		;64cf
	ret p			;64d1
	add a,c			;64d2
	djnz l64d9h		;64d3
l64d5h:
	rrca			;64d5
	add a,h			;64d6
	djnz l64e8h		;64d7
l64d9h:
	jp p,004f2h		;64d9
	ld hl,01f02h		;64dc
	ld b,010h		;64df
	ld (bc),a		;64e1
	pop af			;64e2
	ld b,0f0h		;64e3
	add a,h			;64e5
	pop af			;64e6
	ret p			;64e7
l64e8h:
	ret p			;64e8
	ld hl,01003h		;64e9
	add a,e			;64ec
	rrca			;64ed
	jp p,004f2h		;64ee
	ld hl,01084h		;64f1
	rrca			;64f4
	rrca			;64f5
	pop af			;64f6
	inc b			;64f7
	ret p			;64f8
	inc bc			;64f9
	pop af			;64fa
	rlca			;64fb
	rrca			;64fc
	nop			;64fd
	add a,c			;64fe
	nop			;64ff
	ld c,07fh		;6500
	dec b			;6502
	rst 38h			;6503
	add a,c			;6504
	rla			;6505
	ld b,0ffh		;6506
	add a,c			;6508
	add a,c			;6509
	ex af,af'		;650a
	rst 38h			;650b
	add a,c			;650c
	add a,c			;650d
	inc b			;650e
	rst 38h			;650f
	add a,c			;6510
	ld bc,0ff06h		;6511
	add a,c			;6514
	nop			;6515
	add hl,bc		;6516
	rst 38h			;6517
	add a,d			;6518
	nop			;6519
	ld bc,0ff05h		;651a
	add a,c			;651d
	add a,c			;651e
	inc b			;651f
	rst 38h			;6520
	add a,h			;6521
	add a,c			;6522
	rst 38h			;6523
	rst 38h			;6524
	add a,c			;6525
	rlca			;6526
	rst 38h			;6527
	add a,c			;6528
	nop			;6529
	ld b,07fh		;652a
	add a,c			;652c
	ld bc,0ff07h		;652d
	add a,l			;6530
	inc bc			;6531
	rst 38h			;6532
	rst 38h			;6533
	add a,b			;6534
	nop			;6535
	inc bc			;6536
l6537h:
	ld a,a			;6537
	adc a,b			;6538
	inc bc			;6539
	rst 38h			;653a
	call m,0fc80h		;653b
	add a,b			;653e
	nop			;653f
	nop			;6540
	inc b			;6541
	inc bc			;6542
l6543h:
	dec b			;6543
	rst 38h			;6544
	add a,e			;6545
	ret po			;6546
	nop			;6547
	ret po			;6548
	inc bc			;6549
	nop			;654a
	add a,d			;654b
	rra			;654c
	rst 38h			;654d
	inc b			;654e
	add a,b			;654f
	inc b			;6550
	nop			;6551
	inc bc			;6552
	ld a,(hl)		;6553
	inc bc			;6554
	nop			;6555
	add a,c			;6556
	inc a			;6557
	inc b			;6558
	ret pe			;6559
	ld (bc),a		;655a
	nop			;655b
	add a,e			;655c
	cp 000h			;655d
	nop			;655f
	dec b			;6560
	add a,c			;6561
	add a,a			;6562
	rst 38h			;6563
	jp 081ffh		;6564
	add a,c			;6567
	rst 38h			;6568
	rst 38h			;6569
	inc bc			;656a
	add a,c			;656b
l656ch:
	ld (bc),a		;656c
	ret pe			;656d
	inc b			;656e
	inc bc			;656f
	ld (bc),a		;6570
	rst 38h			;6571
	inc bc			;6572
	rla			;6573
	ld (bc),a		;6574
	nop			;6575
	dec b			;6576
	ret pe			;6577
	ld (bc),a		;6578
	ex de,hl		;6579
	ld (bc),a		;657a
	dec hl			;657b
	add a,(hl)		;657c
	ld hl,(03f28h)		;657d
	inc a			;6580
	inc a			;6581
	ccf			;6582
	inc bc			;6583
	rla			;6584
	add a,l			;6585
	nop			;6586
	ret pe			;6587
	ret pe			;6588
	nop			;6589
	nop			;658a
	inc b			;658b
	ret pe			;658c
	adc a,b			;658d
	call m,00707h		;658e
	rst 38h			;6591
	rla			;6592
	rla			;6593
	rst 38h			;6594
	rst 38h			;6595
	dec b			;6596
	ret pe			;6597
	add a,h			;6598
	nop			;6599
	ret p			;659a
	ret p			;659b
	rst 38h			;659c
	inc b			;659d
	rla			;659e
	add a,h			;659f
	rst 38h			;65a0
	add a,b			;65a1
	add a,b			;65a2
	rst 38h			;65a3
	inc bc			;65a4
	rla			;65a5
	add a,h			;65a6
	rst 38h			;65a7
	ret nz			;65a8
	ret nz			;65a9
	rst 38h			;65aa
	nop			;65ab
	add a,c			;65ac
	sub b			;65ad
	ld l,c			;65ae
	ret p			;65af
	ld (bc),a		;65b0
	pop af			;65b1
	inc b			;65b2
	djnz l6537h		;65b3
	jp p,007f1h		;65b5
	ret p			;65b8
	ld (bc),a		;65b9
	pop af			;65ba
	inc b			;65bb
	djnz l6543h		;65bc
	ret p			;65be
	ld hl,01021h		;65bf
	djnz l65cah		;65c2
	rra			;65c4
	ld b,00fh		;65c5
	add a,c			;65c7
	djnz l65d2h		;65c8
l65cah:
	rrca			;65ca
	add a,c			;65cb
	jp p,0f103h		;65cc
	ld (bc),a		;65cf
	ret p			;65d0
	inc bc			;65d1
l65d2h:
	pop af			;65d2
	inc bc			;65d3
	ret p			;65d4
	add a,(hl)		;65d5
	pop af			;65d6
	ret p			;65d7
	ret p			;65d8
	djnz l65eah		;65d9
	pop af			;65db
	dec b			;65dc
	ret p			;65dd
	ld (bc),a		;65de
	djnz l65e3h		;65df
	rrca			;65e1
	inc b			;65e2
l65e3h:
	ld bc,02181h		;65e3
	ld a,(bc)		;65e6
	djnz l656ch		;65e7
	ret p			;65e9
l65eah:
	djnz l65fch		;65ea
	ld b,00fh		;65ec
	add a,c			;65ee
	djnz $+5		;65ef
	rrca			;65f1
	add a,c			;65f2
	djnz l65fch		;65f3
	ret p			;65f5
	add a,c			;65f6
	ld hl,01003h		;65f7
	ld (bc),a		;65fa
	rrca			;65fb
l65fch:
	add a,d			;65fc
	ld hl,00410h		;65fd
	ld hl,01084h		;6600
	pop af			;6603
	pop af			;6604
	ret p			;6605
	rlca			;6606
	ld hl,0f981h		;6607
	nop			;660a
	adc a,b			;660b
	ld a,h			;660c
	ld b,b			;660d
	dec e			;660e
	dec a			;660f
	ld a,h			;6610
	ld b,b			;6611
	ld a,l			;6612
	ld a,l			;6613
	ld b,06fh		;6614
	adc a,b			;6616
	ld l,b			;6617
	ld h,b			;6618
	ld a,(hl)		;6619
	ld (hl),b		;661a
	ld bc,l7e0fh		;661b
	ld (hl),b		;661e
	inc bc			;661f
	ld a,a			;6620
	adc a,d			;6621
	ld a,h			;6622
	ld h,b			;6623
	inc bc			;6624
	rra			;6625
	ld a,h			;6626
	ld h,b			;6627
	ld a,a			;6628
	ld a,h			;6629
	ld (hl),b		;662a
	ld b,b			;662b
	dec b			;662c
	ld a,a			;662d
	add a,e			;662e
	ld a,h			;662f
	ld (hl),b		;6630
	ld b,b			;6631
	inc bc			;6632
	ld a,a			;6633
	add a,07eh		;6634
	ld a,b			;6636
	ld l,a			;6637
	ld l,(hl)		;6638
	ld l,b			;6639
	ld b,b			;663a
	ei			;663b
	ld a,h			;663c
	or b			;663d
	ret nz			;663e
	ld h,b			;663f
	ld a,h			;6640
	jr nc,l6643h		;6641
l6643h:
	inc bc			;6643
	rrca			;6644
	ccf			;6645
	ld a,h			;6646
	ld (hl),b		;6647
	ld b,b			;6648
	ld a,h			;6649
	ld (hl),b		;664a
	ld b,b			;664b
	inc bc			;664c
	rrca			;664d
	ccf			;664e
	ld b,b			;664f
	inc bc			;6650
	rrca			;6651
	cpl			;6652
	ld l,(hl)		;6653
	ld c,b			;6654
	ld l,a			;6655
	ld l,a			;6656
	rlca			;6657
	rst 28h			;6658
	ret pe			;6659
	ret nz			;665a
	rst 28h			;665b
	rst 28h			;665c
	ret pe			;665d
	add a,b			;665e
	rlca			;665f
	rra			;6660
	ld a,b			;6661
	ld h,b			;6662
	ld a,a			;6663
	ld a,a			;6664
	ld a,b			;6665
	ld h,b			;6666
	inc bc			;6667
	rrca			;6668
	ccf			;6669
	ld a,h			;666a
	ld (hl),b		;666b
	ld b,b			;666c
	ld a,h			;666d
	ld (hl),b		;666e
	rlca			;666f
	ccf			;6670
	ret m			;6671
	ret nz			;6672
	nop			;6673
	nop			;6674
	ret m			;6675
	ret nz			;6676
	call m,0f8f8h		;6677
	nop			;667a
	inc bc			;667b
	ret pe			;667c
	ld b,0ffh		;667d
	add a,h			;667f
	cp 0f8h			;6680
	ret po			;6682
	rst 38h			;6683
	rlca			;6684
	add a,l			;6685
	ld b,009h		;6686
	add a,d			;6688
	jp (hl)			;6689
	ld sp,hl		;668a
	dec b			;668b
	add hl,bc		;668c
	sub e			;668d
	ret			;668e
	ld sp,hl		;668f
	defb 0fdh,001h,0c1h ;illegal sequence	;6690
	ld sp,hl		;6693
	ccf			;6694
	rlca			;6695
	ld a,006h		;6696
	ld bc,0c101h		;6698
	pop af			;669b
	defb 0fdh,03fh,00fh ;illegal sequence	;669c
	inc bc			;669f
	ld a,007h		;66a0
	halt			;66a2
	add a,c			;66a3
	nop			;66a4
	inc b			;66a5
	add a,b			;66a6
	add a,d			;66a7
	rst 38h			;66a8
	nop			;66a9
	ld de,00680h		;66aa
	nop			;66ad
	sbc a,a			;66ae
	ccf			;66af
	rrca			;66b0
	inc bc			;66b1
	defb 0fdh,03fh,00fh ;illegal sequence	;66b2
	dec bc			;66b5
	halt			;66b6
	ld (de),a		;66b7
	add hl,bc		;66b8
	add hl,bc		;66b9
	ld c,002h		;66ba
	pop bc			;66bc
	pop af			;66bd
	defb 0fdh,03fh,00fh ;illegal sequence	;66be
	inc bc			;66c1
	ccf			;66c2
	rrca			;66c3
	inc bc			;66c4
	ld a,00eh		;66c5
	ld (bc),a		;66c7
	pop bc			;66c8
	pop af			;66c9
	ld a,(hl)		;66ca
	ld bc,0ff01h		;66cb
	inc b			;66ce
	halt			;66cf
	inc b			;66d0
	or l			;66d1
	add a,h			;66d2
	dec (hl)		;66d3
	ld bc,07e7eh		;66d4
	inc bc			;66d7
	ld (hl),087h		;66d8
	ld b,030h		;66da
	jr nc,l6714h		;66dc
	nop			;66de
	add a,b			;66df
	rst 38h			;66e0
	inc b			;66e1
	nop			;66e2
	add a,l			;66e3
	rst 38h			;66e4
	rra			;66e5
	rrca			;66e6
	rrca			;66e7
	rst 38h			;66e8
	inc b			;66e9
	ret m			;66ea
	dec b			;66eb
	nop			;66ec
	sbc a,a			;66ed
	ld a,a			;66ee
	rst 38h			;66ef
	ccf			;66f0
	rst 28h			;66f1
	rra			;66f2
	rlca			;66f3
	ld e,006h		;66f4
	ld bc,0e101h		;66f6
	ld sp,hl		;66f9
	add a,c			;66fa
	pop af			;66fb
	ld a,a			;66fc
	rrca			;66fd
	ld a,(hl)		;66fe
	ld c,001h		;66ff
	ld bc,0fdc1h		;6701
	ld b,a			;6704
	ld b,e			;6705
	ld a,002h		;6706
	ld b,c			;6708
	ld b,c			;6709
	call m,0fffch		;670a
	dec b			;670d
	ret p			;670e
	add a,c			;670f
	nop			;6710
	inc bc			;6711
	add a,c			;6712
	add a,c			;6713
l6714h:
	rst 38h			;6714
	inc bc			;6715
	add a,c			;6716
	add a,e			;6717
	rst 38h			;6718
	pop bc			;6719
	rst 38h			;671a
	ex af,af'		;671b
	add a,c			;671c
	add a,c			;671d
	rst 38h			;671e
	inc b			;671f
	add a,c			;6720
	rlca			;6721
	cp 081h			;6722
	nop			;6724
	rlca			;6725
	ld a,(hl)		;6726
	ld (bc),a		;6727
	nop			;6728
	ld (bc),a		;6729
	rst 38h			;672a
	dec c			;672b
	add a,b			;672c
	inc b			;672d
	call z,00003h		;672e
	djnz l67b2h		;6731
	add a,c			;6733
	rst 38h			;6734
	dec c			;6735
	add a,b			;6736
	ld (bc),a		;6737
	rst 38h			;6738
	sbc a,h			;6739
	ld h,(hl)		;673a
	rra			;673b
	inc bc			;673c
	rra			;673d
	inc bc			;673e
	nop			;673f
	nop			;6740
	ret po			;6741
l6742h:
	call m,0081fh		;6742
	rla			;6745
	inc bc			;6746
	ex af,af'		;6747
	ex af,af'		;6748
	ret pe			;6749
	cp 0ffh			;674a
	ccf			;674c
	rrca			;674d
	dec bc			;674e
	halt			;674f
	ld (de),a		;6750
	add hl,bc		;6751
	add hl,bc		;6752
	ld a,00eh		;6753
	ld (bc),a		;6755
	dec b			;6756
	ld bc,00081h		;6757
	inc b			;675a
	ret m			;675b
	add a,e			;675c
	rst 38h			;675d
	call m,005fch		;675e
	halt			;6761
	add a,(hl)		;6762
	add hl,bc		;6763
	ld (hl),a		;6764
	ld bc,0c0c0h		;6765
	nop			;6768
	dec b			;6769
	ret p			;676a
	rlca			;676b
	ret pe			;676c
	dec b			;676d
	nop			;676e
	sbc a,e			;676f
	cp 0ffh			;6770
	call m,03afch		;6772
	sbc a,d			;6775
	rst 8			;6776
	ret p			;6777
	ret p			;6778
	sub b			;6779
	ret p			;677a
l677bh:
	rra			;677b
	ld bc,00703h		;677c
	rrca			;677f
	jr nc,l6742h		;6780
	rst 38h			;6782
	nop			;6783
	sub b			;6784
	sub b			;6785
	sub e			;6786
	sub e			;6787
	nop			;6788
	rla			;6789
	rla			;678a
	inc bc			;678b
	rst 38h			;678c
	sub (hl)		;678d
	rlca			;678e
	rst 30h			;678f
	rst 38h			;6790
	ret pe			;6791
	ret pe			;6792
	nop			;6793
	nop			;6794
	ld (hl),a		;6795
	nop			;6796
	ld (hl),a		;6797
	nop			;6798
	jp nc,08780h		;6799
	ld bc,l7d01h		;679c
	ld d,l			;679f
	ld d,l			;67a0
	rst 38h			;67a1
	rla			;67a2
	rla			;67a3
	inc bc			;67a4
	pop de			;67a5
	xor (hl)		;67a6
	rst 38h			;67a7
	ld l,02eh		;67a8
	nop			;67aa
	nop			;67ab
	ld l,d			;67ac
	nop			;67ad
	add a,c			;67ae
	add a,c			;67af
	nop			;67b0
	add a,c			;67b1
l67b2h:
	rst 38h			;67b2
	ld a,(hl)		;67b3
	rst 18h			;67b4
	djnz l67c7h		;67b5
	ld hl,0402fh		;67b7
	add a,b			;67ba
	add a,b			;67bb
	ei			;67bc
	inc c			;67bd
	inc c			;67be
	add a,(hl)		;67bf
	or 003h			;67c0
	ld bc,08301h		;67c2
	add a,b			;67c5
	ld b,b			;67c6
l67c7h:
	jr nz,$-30		;67c7
	rst 28h			;67c9
	ex af,af'		;67ca
	ret p			;67cb
	ld a,(hl)		;67cc
	jp 0c318h		;67cd
	jp 08181h		;67d0
	ld h,(hl)		;67d3
	ld h,(hl)		;67d4
	dec b			;67d5
	in a,(087h)		;67d6
	jr l6858h		;67d8
	rlca			;67da
	inc b			;67db
	inc b			;67dc
	cp 002h			;67dd
	inc bc			;67df
	cp 084h			;67e0
	ret po			;67e2
	jr nz,l6805h		;67e3
	ld b,b			;67e5
	inc b			;67e6
	ld a,a			;67e7
	ld (bc),a		;67e8
	ret nz			;67e9
	add a,c			;67ea
	rst 38h			;67eb
	inc bc			;67ec
	ret nz			;67ed
	sub b			;67ee
	ret po			;67ef
	rst 38h			;67f0
	add a,c			;67f1
	add a,c			;67f2
	cp (hl)			;67f3
	add a,b			;67f4
	add a,b			;67f5
	jr nz,l6837h		;67f6
	jr nz,l677bh		;67f8
	cp 0d7h			;67fa
	rst 10h			;67fc
	cp a			;67fd
	rst 38h			;67fe
	inc bc			;67ff
	nop			;6800
	add a,a			;6801
	cp 000h			;6802
	nop			;6804
l6805h:
	cp 0feh			;6805
	nop			;6807
	nop			;6808
	inc b			;6809
	jp m,0008ch		;680a
	sub c			;680d
	rst 38h			;680e
	ld bc,0d5ffh		;680f
	push de			;6812
	ld d,l			;6813
	ld d,l			;6814
	ld a,l			;6815
	jp 005c3h		;6816
	cp 002h			;6819
	ret m			;681b
	ld (bc),a		;681c
	rst 38h			;681d
	rlca			;681e
	sub l			;681f
	rlca			;6820
	xor c			;6821
	ld (bc),a		;6822
	rst 38h			;6823
	add a,h			;6824
	ret z			;6825
	call po,0e4c8h		;6826
	inc bc			;6829
	pop de			;682a
	add a,e			;682b
	jp l7e42h		;682c
	inc bc			;682f
	adc a,c			;6830
	add a,h			;6831
	rst 38h			;6832
	xor c			;6833
	add a,c			;6834
	add a,c			;6835
	inc bc			;6836
l6837h:
	add a,d			;6837
	add a,e			;6838
	add a,h			;6839
	call m,00704h		;683a
	add a,l			;683d
	ld (bc),a		;683e
	rst 38h			;683f
	ld (bc),a		;6840
	push hl			;6841
	add a,l			;6842
	ld (hl),l		;6843
	dec e			;6844
	dec c			;6845
	dec b			;6846
	dec b			;6847
	rlca			;6848
	push de			;6849
	sub e			;684a
	rst 38h			;684b
	cp 089h			;684c
	adc a,c			;684e
	rst 38h			;684f
	add a,a			;6850
	defb 0fdh,085h ;add a,iyl	;6851
	rst 38h			;6853
	ld a,h			;6854
	rst 38h			;6855
	rrca			;6856
	rst 20h			;6857
l6858h:
	sub e			;6858
	ret			;6859
	push hl			;685a
	push af			;685b
	sub l			;685c
	push af			;685d
	inc bc			;685e
	sub l			;685f
	sbc a,e			;6860
	push af			;6861
	sub l			;6862
	rst 38h			;6863
	sub c			;6864
	res 2,c			;6865
	res 2,c			;6867
	set 5,b			;6869
	ret pe			;686b
	pop bc			;686c
	ld bc,00603h		;686d
	rlca			;6870
	di			;6871
	di			;6872
	ret p			;6873
	ld a,a			;6874
	ccf			;6875
	rra			;6876
	ret p			;6877
	call m,0031fh		;6878
	rst 38h			;687b
	inc b			;687c
	ld bc,0ff02h		;687d
	ld (bc),a		;6880
	cp 002h			;6881
	rst 38h			;6883
	ld (bc),a		;6884
	nop			;6885
	inc bc			;6886
	ld l,e			;6887
	adc a,b			;6888
	nop			;6889
	ld d,h			;688a
	add a,e			;688b
	add hl,sp		;688c
	rst 0			;688d
	cp e			;688e
	rst 0			;688f
	rst 0			;6890
	inc bc			;6891
	rst 38h			;6892
	add a,(hl)		;6893
	cp 0f8h			;6894
	ret nc			;6896
	ld l,(hl)		;6897
	ld c,b			;6898
	ld l,a			;6899
	inc b			;689a
	rla			;689b
	ld (bc),a		;689c
	ld l,08eh		;689d
	nop			;689f
	pop de			;68a0
	ret p			;68a1
	ret p			;68a2
	ret pe			;68a3
	ret pe			;68a4
	ret po			;68a5
	call m,0e8e8h		;68a6
	nop			;68a9
	ld d,h			;68aa
	ld d,b			;68ab
	nop			;68ac
	inc bc			;68ad
	ret pe			;68ae
	add a,h			;68af
	jr z,$+1		;68b0
	nop			;68b2
	nop			;68b3
	inc b			;68b4
	sub 083h		;68b5
	nop			;68b7
	add a,b			;68b8
	rst 38h			;68b9
	inc b			;68ba
	nop			;68bb
	inc bc			;68bc
	rst 38h			;68bd
	add a,d			;68be
	rst 0			;68bf
	call m,0c404h		;68c0
	add a,e			;68c3
	rst 0			;68c4
	ccf			;68c5
	rst 38h			;68c6
	dec b			;68c7
	ret m			;68c8
	ld (bc),a		;68c9
l68cah:
	nop			;68ca
	add a,d			;68cb
	jr c,l68cah		;68cc
l68ceh:
	inc b			;68ce
	call nz,0ff02h		;68cf
	inc b			;68d2
	add a,c			;68d3
	add a,e			;68d4
	rst 38h			;68d5
	jp 006c3h		;68d6
	inc bc			;68d9
	add a,d			;68da
	rst 38h			;68db
	rra			;68dc
	dec b			;68dd
	ret po			;68de
	add a,c			;68df
	rst 38h			;68e0
	inc bc			;68e1
	ret m			;68e2
	sub b			;68e3
	djnz l68ceh		;68e4
	ret nz			;68e6
	djnz l68f9h		;68e7
	rla			;68e9
	ld a,a			;68ea
	add a,e			;68eb
	cp a			;68ec
	jp po,l7cc2h		;68ed
	ld b,b			;68f0
	add a,d			;68f1
	add a,d			;68f2
	ld a,a			;68f3
	inc bc			;68f4
	cp (hl)			;68f5
	inc bc			;68f6
	ld a,002h		;68f7
l68f9h:
	nop			;68f9
	inc bc			;68fa
	or 002h			;68fb
	nop			;68fd
	ld (bc),a		;68fe
	ret nz			;68ff
	ld b,0e8h		;6900
	add a,e			;6902
	add a,b			;6903
	rst 38h			;6904
	rst 38h			;6905
	inc b			;6906
	add a,c			;6907
	add a,e			;6908
	rst 38h			;6909
	add a,c			;690a
	add a,c			;690b
	rlca			;690c
	sub c			;690d
	ld (bc),a		;690e
	rst 38h			;690f
	ld (bc),a		;6910
	add a,c			;6911
	add a,c			;6912
	cp l			;6913
	inc bc			;6914
	jp 0bd82h		;6915
	jp l7e04h		;6918
	inc bc			;691b
	inc a			;691c
	add a,c			;691d
	rst 38h			;691e
	inc bc			;691f
	nop			;6920
	adc a,d			;6921
	ld (hl),e		;6922
	nop			;6923
	nop			;6924
	cp 0ffh			;6925
	sub c			;6927
	rst 38h			;6928
	ld a,a			;6929
	ld a,a			;692a
	ccf			;692b
	inc bc			;692c
	nop			;692d
	sub a			;692e
	ld h,(hl)		;692f
	sbc a,e			;6930
	call m,0e0f0h		;6931
	ret nz			;6934
	add a,b			;6935
	ld a,(bc)		;6936
	ld (hl),l		;6937
	ld (hl),l		;6938
	nop			;6939
	ld h,e			;693a
	rst 38h			;693b
	rst 38h			;693c
	ld a,a			;693d
	rst 38h			;693e
	sbc a,c			;693f
	ld sp,hl		;6940
	ret nz			;6941
	ret p			;6942
	ret m			;6943
	call m,00d01h		;6944
	add a,b			;6947
	add a,h			;6948
	rst 38h			;6949
	adc a,b			;694a
	adc a,b			;694b
	rst 38h			;694c
	dec bc			;694d
	ld a,(hl)		;694e
	ld (bc),a		;694f
	nop			;6950
	ld (bc),a		;6951
	xor 005h		;6952
	add a,b			;6954
	inc bc			;6955
	add a,c			;6956
	add a,e			;6957
	nop			;6958
	ld a,000h		;6959
	dec b			;695b
	ld a,(hl)		;695c
	dec b			;695d
	cp 084h			;695e
	nop			;6960
	ld l,(hl)		;6961
	ld l,(hl)		;6962
	rst 38h			;6963
	inc b			;6964
	rla			;6965
	add a,e			;6966
	rst 38h			;6967
	add a,b			;6968
	add a,b			;6969
	ld b,0e8h		;696a
	ld (bc),a		;696c
	ret p			;696d
	add a,d			;696e
	ld l,(hl)		;696f
	ld l,c			;6970
	inc b			;6971
	ld l,b			;6972
	add a,d			;6973
	add a,b			;6974
	rst 38h			;6975
	ex af,af'		;6976
	ret pe			;6977
	ld (bc),a		;6978
	ld a,a			;6979
	add a,c			;697a
	nop			;697b
	dec b			;697c
	ret po			;697d
	ld (bc),a		;697e
	ccf			;697f
	add a,c			;6980
	jr z,l6987h		;6981
	ret pe			;6983
	add a,c			;6984
	nop			;6985
	inc bc			;6986
l6987h:
	ret pe			;6987
	add a,c			;6988
	nop			;6989
	inc bc			;698a
	ret pe			;698b
	add a,c			;698c
	jr z,l6992h		;698d
	ret pe			;698f
	add a,c			;6990
	nop			;6991
l6992h:
	inc b			;6992
	ret pe			;6993
	add a,c			;6994
	nop			;6995
	ld c,07bh		;6996
	ld (bc),a		;6998
	nop			;6999
	ld c,0deh		;699a
	inc bc			;699c
	nop			;699d
	ld (bc),a		;699e
	rst 38h			;699f
	add a,c			;69a0
	nop			;69a1
	ld b,080h		;69a2
	ld (bc),a		;69a4
	rst 38h			;69a5
	ld (bc),a		;69a6
	nop			;69a7
	inc bc			;69a8
	rst 38h			;69a9
	ld (bc),a		;69aa
	nop			;69ab
	add a,c			;69ac
	rst 38h			;69ad
	ld b,001h		;69ae
	ld (bc),a		;69b0
	rst 38h			;69b1
	ld (bc),a		;69b2
	nop			;69b3
	add a,h			;69b4
	rst 38h			;69b5
	ld bc,0ff01h		;69b6
	dec b			;69b9
	ret p			;69ba
	add a,d			;69bb
	rst 0			;69bc
	rst 38h			;69bd
	dec b			;69be
	ret m			;69bf
	add a,h			;69c0
	nop			;69c1
	ret m			;69c2
	ret m			;69c3
	rst 38h			;69c4
	dec b			;69c5
	ret p			;69c6
	inc bc			;69c7
	rst 38h			;69c8
	dec b			;69c9
	add a,b			;69ca
	ld (bc),a		;69cb
	ret pe			;69cc
	inc b			;69cd
	call m,00083h		;69ce
	call m,00500h		;69d1
	ld a,(hl)		;69d4
	add a,d			;69d5
	nop			;69d6
	inc a			;69d7
	inc bc			;69d8
	ld a,(hl)		;69d9
	add a,c			;69da
	nop			;69db
	inc b			;69dc
	ld a,(hl)		;69dd
	dec b			;69de
	ret pe			;69df
	add a,h			;69e0
	nop			;69e1
	ld bc,0f801h		;69e2
	inc bc			;69e5
	add a,a			;69e6
	ex af,af'		;69e7
	add a,b			;69e8
	add a,d			;69e9
	rst 38h			;69ea
	nop			;69eb
	ld a,(bc)		;69ec
	add a,b			;69ed
	inc bc			;69ee
	cp 081h			;69ef
	nop			;69f1
	inc bc			;69f2
	cp 081h			;69f3
	nop			;69f5
	dec bc			;69f6
	ret nz			;69f7
	dec b			;69f8
	ret po			;69f9
	rlca			;69fa
	ld l,(hl)		;69fb
	add a,c			;69fc
	ld de,07607h		;69fd
	add a,c			;6a00
	nop			;6a01
	ex af,af'		;6a02
	in a,(004h)		;6a03
	ld a,h			;6a05
	add a,c			;6a06
	nop			;6a07
	inc bc			;6a08
	ld a,(hl)		;6a09
	add a,c			;6a0a
	nop			;6a0b
	inc bc			;6a0c
	ld a,(hl)		;6a0d
	add a,c			;6a0e
	nop			;6a0f
	inc bc			;6a10
	ld a,(hl)		;6a11
	add a,c			;6a12
	rst 38h			;6a13
	inc bc			;6a14
	rla			;6a15
	add a,c			;6a16
	rst 38h			;6a17
	inc bc			;6a18
	ret nz			;6a19
	ld (bc),a		;6a1a
	ret pe			;6a1b
	ld (bc),a		;6a1c
	ex de,hl		;6a1d
	ld (bc),a		;6a1e
	dec hl			;6a1f
	add a,d			;6a20
l6a21h:
	ld hl,(00328h)		;6a21
	rla			;6a24
	add a,d			;6a25
	rst 38h			;6a26
	nop			;6a27
	inc bc			;6a28
	rla			;6a29
l6a2ah:
	add a,h			;6a2a
	ccf			;6a2b
	inc a			;6a2c
	inc a			;6a2d
	ret nz			;6a2e
	inc bc			;6a2f
	rla			;6a30
	add a,c			;6a31
	rst 38h			;6a32
	nop			;6a33
	ld (bc),a		;6a34
	jr nz,l6a39h		;6a35
	jr nc,$+4		;6a37
l6a39h:
	ld (0200ch),a		;6a39
	ld (bc),a		;6a3c
	jr nc,$+4		;6a3d
	ld (02005h),a		;6a3f
	ld (bc),a		;6a42
	jr nc,$+4		;6a43
	ld (02081h),a		;6a45
	inc bc			;6a48
	ld (02005h),a		;6a49
l6a4ch:
	inc bc			;6a4c
	ld (02105h),a		;6a4d
	add a,c			;6a50
	jr nz,l6a56h		;6a51
	ld hl,01004h		;6a53
l6a56h:
	add a,c			;6a56
	ld hl,01003h		;6a57
	inc bc			;6a5a
	jr nc,l6a60h		;6a5b
	ld (02003h),a		;6a5d
l6a60h:
	inc bc			;6a60
	jr nc,$-125		;6a61
	jr nz,$+5		;6a63
	jr nc,$+4		;6a65
	ld (02002h),a		;6a67
	ld (bc),a		;6a6a
	jr nc,$+4		;6a6b
	ld (02004h),a		;6a6d
	ld (bc),a		;6a70
	jr nc,$+4		;6a71
	ld (02004h),a		;6a73
	inc bc			;6a76
	jr nc,l6a7ch		;6a77
	ld (02002h),a		;6a79
l6a7ch:
	ld (bc),a		;6a7c
	jr nc,l6a83h		;6a7d
	ld (02002h),a		;6a7f
	add a,c			;6a82
l6a83h:
	ld (02003h),a		;6a83
	ld (bc),a		;6a86
	ld hl,01081h		;6a87
	dec bc			;6a8a
	di			;6a8b
	add a,c			;6a8c
	jp p,0f103h		;6a8d
	dec d			;6a90
	ret p			;6a91
	ld (bc),a		;6a92
	pop af			;6a93
	ld (bc),a		;6a94
	djnz $+7		;6a95
	ret p			;6a97
	inc bc			;6a98
	pop af			;6a99
	add a,d			;6a9a
	djnz $+34		;6a9b
	rlca			;6a9d
	djnz l6a21h		;6a9e
	ld hl,01003h		;6aa0
	ld (bc),a		;6aa3
	pop af			;6aa4
	dec b			;6aa5
	djnz l6a2ah		;6aa6
	rrca			;6aa8
	ld hl,01008h		;6aa9
	ex af,af'		;6aac
	rrca			;6aad
	inc bc			;6aae
	pop af			;6aaf
	add a,c			;6ab0
	ret p			;6ab1
	inc bc			;6ab2
	pop af			;6ab3
	ld (bc),a		;6ab4
	djnz l6ab9h		;6ab5
	ret p			;6ab7
	ld (bc),a		;6ab8
l6ab9h:
	djnz l6abeh		;6ab9
	ret p			;6abb
	ld b,0f1h		;6abc
l6abeh:
	inc bc			;6abe
	djnz l6ac3h		;6abf
	ret p			;6ac1
	add a,c			;6ac2
l6ac3h:
	djnz $+5		;6ac3
	ret p			;6ac5
	ld (bc),a		;6ac6
	jr nc,l6a4ch		;6ac7
	jr nz,$+18		;6ac9
	jr nz,$+7		;6acb
	djnz $-123		;6acd
	jr nz,l6ae1h		;6acf
	jr nz,$+5		;6ad1
	djnz l6a56h		;6ad3
	jr nz,$+5		;6ad5
	djnz $-123		;6ad7
	ld hl,00202h		;6ad9
	inc b			;6adc
	ld bc,0f087h		;6add
	pop af			;6ae0
l6ae1h:
	ret p			;6ae1
	ret p			;6ae2
	ld hl,01010h		;6ae3
	ld b,00fh		;6ae6
	inc bc			;6ae8
	push af			;6ae9
	add a,l			;6aea
	ld sp,hl		;6aeb
	pop af			;6aec
	pop af			;6aed
	djnz $+18		;6aee
	ld b,0f0h		;6af0
	ld (bc),a		;6af2
	pop af			;6af3
	ld (bc),a		;6af4
	djnz l6afbh		;6af5
	ret p			;6af7
	ld (bc),a		;6af8
	pop af			;6af9
	ld (bc),a		;6afa
l6afbh:
	djnz l6affh		;6afb
	ret p			;6afd
	add a,h			;6afe
l6affh:
	djnz l6b10h		;6aff
	rrca			;6b01
	ld hl,01003h		;6b02
	ld (bc),a		;6b05
	rrca			;6b06
	add a,l			;6b07
	jp p,0f0f1h		;6b08
	ret p			;6b0b
	jp p,0f105h		;6b0c
	add a,c			;6b0f
l6b10h:
	jp p,0f103h		;6b10
	adc a,d			;6b13
	ret p			;6b14
	pop af			;6b15
	pop af			;6b16
	ret p			;6b17
	ret p			;6b18
	jp p,0f1f1h		;6b19
	ret p			;6b1c
	ld hl,0100fh		;6b1d
	inc b			;6b20
	ld (0210bh),a		;6b21
	add a,e			;6b24
	nop			;6b25
	ld (00331h),a		;6b26
	jr nz,l6b2fh		;6b29
	inc hl			;6b2b
	ld b,012h		;6b2c
	add a,c			;6b2e
l6b2fh:
	nop			;6b2f
	dec b			;6b30
	ld (de),a		;6b31
	inc bc			;6b32
	ld bc,0f302h		;6b33
	add a,e			;6b36
	jp p,0f1f1h		;6b37
	add hl,bc		;6b3a
	ld bc,0ff84h		;6b3b
	sub h			;6b3e
	pop af			;6b3f
	pop af			;6b40
	inc b			;6b41
	djnz l6b46h		;6b42
	ret p			;6b44
	ld (bc),a		;6b45
l6b46h:
	pop af			;6b46
	ld (bc),a		;6b47
	djnz $+7		;6b48
	ret p			;6b4a
	inc bc			;6b4b
	pop af			;6b4c
	ld (bc),a		;6b4d
	djnz l6b52h		;6b4e
	ret p			;6b50
	inc bc			;6b51
l6b52h:
	djnz l6b5ah		;6b52
	ret p			;6b54
	add a,(hl)		;6b55
	ld hl,01010h		;6b56
	rrca			;6b59
l6b5ah:
	rrca			;6b5a
	ld hl,01006h		;6b5b
	inc bc			;6b5e
	ret p			;6b5f
	add a,h			;6b60
	ld hl,01010h		;6b61
	ld (02103h),a		;6b64
	rlca			;6b67
	djnz l6b70h		;6b68
	rrca			;6b6a
	inc bc			;6b6b
	defb 0fdh,004h,0f5h ;illegal sequence	;6b6c
	add a,e			;6b6f
l6b70h:
	ret m			;6b70
	defb 0fdh,0fdh,007h ;illegal sequence	;6b71
	push af			;6b74
	add a,c			;6b75
	defb 0fdh,003h,05fh ;illegal sequence	;6b76
	ld (bc),a		;6b79
	rst 18h			;6b7a
	ld (bc),a		;6b7b
	ld e,a			;6b7c
	add a,d			;6b7d
	ret c			;6b7e
	ld e,l			;6b7f
	ld b,0f5h		;6b80
	add a,c			;6b82
	push de			;6b83
	add hl,bc		;6b84
	ld e,a			;6b85
	add a,d			;6b86
	jp p,005fdh		;6b87
	push af			;6b8a
	add a,c			;6b8b
	ret c			;6b8c
	inc bc			;6b8d
	ld e,l			;6b8e
	ld (bc),a		;6b8f
	push af			;6b90
	add a,c			;6b91
	push de			;6b92
	dec b			;6b93
	ld e,a			;6b94
	add a,c			;6b95
	ret m			;6b96
	inc b			;6b97
	adc a,(hl)		;6b98
	add a,e			;6b99
	ret c			;6b9a
	ld sp,hl		;6b9b
	ret c			;6b9c
	inc bc			;6b9d
	ld e,l			;6b9e
	ld (bc),a		;6b9f
	push af			;6ba0
	add a,e			;6ba1
	push de			;6ba2
	ld sp,hl		;6ba3
	ret m			;6ba4
	inc bc			;6ba5
	ld e,l			;6ba6
	ld (bc),a		;6ba7
	push af			;6ba8
	add a,d			;6ba9
	push de			;6baa
	ret c			;6bab
	inc b			;6bac
	defb 0fdh,002h,0d5h ;illegal sequence	;6bad
	sub e			;6bb0
	push af			;6bb1
	defb 0fdh,0f8h,0e8h ;illegal sequence	;6bb2
	ret c			;6bb5
	ld d,l			;6bb6
	ret c			;6bb7
	ld d,l			;6bb8
	call p,0edf9h		;6bb9
	add a,l			;6bbc
	push de			;6bbd
	rst 18h			;6bbe
	ld e,a			;6bbf
	ld e,a			;6bc0
	defb 0fdh,0f8h,0fdh ;illegal sequence	;6bc1
	inc b			;6bc4
	push af			;6bc5
	add a,h			;6bc6
	rra			;6bc7
	ccf			;6bc8
l6bc9h:
	ret m			;6bc9
	defb 0fdh,003h,0f5h ;illegal sequence	;6bca
	adc a,b			;6bcd
	dec b			;6bce
	ld sp,02121h		;6bcf
	djnz l6bc9h		;6bd2
	push af			;6bd4
	ld e,l			;6bd5
	inc b			;6bd6
	push af			;6bd7
	add a,h			;6bd8
	ld e,b			;6bd9
	push de			;6bda
	push de			;6bdb
	rst 18h			;6bdc
	ld b,0f5h		;6bdd
	add a,h			;6bdf
	nop			;6be0
	ld (01010h),a		;6be1
	inc b			;6be4
	ld e,a			;6be5
	ld (bc),a		;6be6
	jr nc,l6bebh		;6be7
	djnz l6bedh		;6be9
l6bebh:
	ld e,a			;6beb
	add a,(hl)		;6bec
l6bedh:
	adc a,a			;6bed
	rst 18h			;6bee
	ld e,a			;6bef
	ld e,a			;6bf0
	call p,003f4h		;6bf1
	push af			;6bf4
	ld (bc),a		;6bf5
	defb 0fdh,002h,0f5h ;illegal sequence	;6bf6
	adc a,b			;6bf9
	defb 0fdh,0d8h,0fdh ;illegal sequence	;6bfa
	ret m			;6bfd
	ret m			;6bfe
	defb 0fdh,0f5h,0f8h ;illegal sequence	;6bff
	inc bc			;6c02
	defb 0fdh,081h,0f5h ;illegal sequence	;6c03
	dec bc			;6c06
	defb 0fdh,004h,0f5h ;illegal sequence	;6c07
	add a,l			;6c0a
	defb 0fdh,0f5h,0fdh ;illegal sequence	;6c0b
	push af			;6c0e
	ret c			;6c0f
	inc bc			;6c10
	ld e,l			;6c11
	ld (bc),a		;6c12
	push af			;6c13
	add a,c			;6c14
	defb 0fdh,003h,0f5h ;illegal sequence	;6c15
	inc bc			;6c18
	ret m			;6c19
	inc bc			;6c1a
	defb 0fdh,00eh,0f5h ;illegal sequence	;6c1b
	add a,a			;6c1e
	defb 0fdh,0f8h,0f8h ;illegal sequence	;6c1f
	defb 0fdh,0f5h,0f5h ;illegal sequence	;6c22
	defb 0fdh,003h,0f8h ;illegal sequence	;6c25
	add a,l			;6c28
	defb 0fdh,0f5h,0f5h ;illegal sequence	;6c29
	defb 0fdh,0d8h,003h ;illegal sequence	;6c2c
	push af			;6c2f
	add a,h			;6c30
	defb 0fdh,0f5h,0f5h ;illegal sequence	;6c31
	push de			;6c34
	inc bc			;6c35
	defb 0fdh,004h,0f8h ;illegal sequence	;6c36
	inc bc			;6c39
	defb 0fdh,005h,0f5h ;illegal sequence	;6c3a
	adc a,c			;6c3d
	defb 0fdh,0f5h,0fdh ;illegal sequence	;6c3e
	push af			;6c41
	defb 0fdh,0f5h,0d8h ;illegal sequence	;6c42
	ld e,l			;6c45
	ret c			;6c46
	inc b			;6c47
	defb 0fdh,081h,0d5h ;illegal sequence	;6c48
	inc bc			;6c4b
	ld e,a			;6c4c
	ld (bc),a		;6c4d
l6c4eh:
	ld d,b			;6c4e
	dec b			;6c4f
	push af			;6c50
	add a,d			;6c51
l6c52h:
	ret m			;6c52
	defb 0fdh,003h,0f5h ;illegal sequence	;6c53
	adc a,c			;6c56
	nop			;6c57
	ld sp,02020h		;6c58
	djnz l6c6dh		;6c5b
	ld e,a			;6c5d
	ld e,a			;6c5e
	rst 18h			;6c5f
	inc bc			;6c60
	ld e,a			;6c61
	add a,l			;6c62
	defb 0fdh,0f5h,0f4h ;illegal sequence	;6c63
	defb 0fdh,0fdh,004h ;illegal sequence	;6c66
	push af			;6c69
	inc bc			;6c6a
	di			;6c6b
	ld (bc),a		;6c6c
l6c6dh:
	ld (02090h),a		;6c6d
	ld (02132h),a		;6c70
	rst 38h			;6c73
	push de			;6c74
	ld e,a			;6c75
	ld e,a			;6c76
	ret c			;6c77
	jp p,01021h		;6c78
	djnz l6c6dh		;6c7b
	ret p			;6c7d
	push de			;6c7e
l6c7fh:
	dec b			;6c7f
	ld e,a			;6c80
	add a,c			;6c81
	ld hl,01005h		;6c82
	ld (bc),a		;6c85
	ld e,a			;6c86
	add a,a			;6c87
	adc a,a			;6c88
	rst 18h			;6c89
	ld e,a			;6c8a
	ld e,a			;6c8b
	djnz l6c7fh		;6c8c
	pop af			;6c8e
	ld b,0f0h		;6c8f
	add a,d			;6c91
	pop af			;6c92
	di			;6c93
	inc bc			;6c94
	jp p,0f181h		;6c95
	inc bc			;6c98
	ret p			;6c99
	add a,c			;6c9a
	ld hl,01003h		;6c9b
	inc b			;6c9e
	rrca			;6c9f
	add a,c			;6ca0
	jp p,0f103h		;6ca1
	inc bc			;6ca4
	ret p			;6ca5
	add a,e			;6ca6
	jp p,0f1f1h		;6ca7
	inc bc			;6caa
	ret p			;6cab
	ld (bc),a		;6cac
	pop af			;6cad
l6caeh:
	add a,d			;6cae
	ret p			;6caf
	ld (de),a		;6cb0
	inc b			;6cb1
	ld bc,0f002h		;6cb2
	add a,(hl)		;6cb5
	ld (02121h),a		;6cb6
	djnz l6caeh		;6cb9
	di			;6cbb
	inc bc			;6cbc
	jp p,02102h		;6cbd
	ld b,0f1h		;6cc0
	ld (bc),a		;6cc2
	jp p,02102h		;6cc3
	inc bc			;6cc6
	pop af			;6cc7
	ld (bc),a		;6cc8
	jr nz,l6cd1h		;6cc9
	djnz l6c4eh		;6ccb
	jr nz,$+6		;6ccd
	djnz l6c52h		;6ccf
l6cd1h:
	ld (02107h),a		;6cd1
	inc bc			;6cd4
	ret p			;6cd5
	adc a,d			;6cd6
	jp p,0f1f1h		;6cd7
	ret p			;6cda
	ret p			;6cdb
	jp p,0f2f0h		;6cdc
	jp p,006f1h		;6cdf
	ret p			;6ce2
	sub c			;6ce3
	ret m			;6ce4
	push af			;6ce5
	push af			;6ce6
	ld sp,hl		;6ce7
	call p,0f8f9h		;6ce8
	add a,l			;6ceb
	push af			;6cec
	sbc a,a			;6ced
	ld c,a			;6cee
	sbc a,a			;6cef
	ret m			;6cf0
	push de			;6cf1
	ld e,a			;6cf2
	push de			;6cf3
	push de			;6cf4
	inc b			;6cf5
	sbc a,a			;6cf6
	adc a,c			;6cf7
	nop			;6cf8
	pop af			;6cf9
	pop af			;6cfa
	ld sp,hl		;6cfb
	ld sp,hl		;6cfc
	push de			;6cfd
	adc a,l			;6cfe
	push de			;6cff
	push de			;6d00
l6d01h:
	inc bc			;6d01
	sbc a,a			;6d02
	add a,c			;6d03
	call p,0f805h		;6d04
	sub b			;6d07
	ret c			;6d08
	push de			;6d09
	ld e,a			;6d0a
	ld e,a			;6d0b
	call p,011f4h		;6d0c
	ld (0f4f4h),a		;6d0f
	ld sp,hl		;6d12
	add a,b			;6d13
	add a,d			;6d14
	add a,c			;6d15
	add a,b			;6d16
	ret m			;6d17
	inc bc			;6d18
	ld hl,01082h		;6d19
	ld (02107h),a		;6d1c
	adc a,b			;6d1f
	djnz $-5		;6d20
	ld sp,hl		;6d22
	call p,030f4h		;6d23
	jr nc,l6d48h		;6d26
	add hl,bc		;6d28
	djnz l6d2dh		;6d29
	sbc a,a			;6d2b
	add a,d			;6d2c
l6d2dh:
	ld c,a			;6d2d
	ld (02103h),a		;6d2e
	add a,h			;6d31
	nop			;6d32
	ld sp,hl		;6d33
	sub h			;6d34
	ld sp,hl		;6d35
	inc bc			;6d36
	jr nz,$-125		;6d37
	jr nc,$+5		;6d39
	jr nz,$-124		;6d3b
	djnz l6d5fh		;6d3d
	dec b			;6d3f
	djnz $-124		;6d40
	ld b,b			;6d42
	sub b			;6d43
	inc b			;6d44
	ld (02185h),a		;6d45
l6d48h:
	jp p,0f1f2h		;6d48
l6d4bh:
	ld (02103h),a		;6d4b
	add a,e			;6d4e
	djnz $+1		;6d4f
	ld (02107h),a		;6d51
	ld (bc),a		;6d54
	ret p			;6d55
	ld (bc),a		;6d56
	ld hl,01083h		;6d57
	rst 38h			;6d5a
	ld (02104h),a		;6d5b
	ld (bc),a		;6d5e
l6d5fh:
	rra			;6d5f
	adc a,b			;6d60
	ld (02121h),a		;6d61
	djnz l6d75h		;6d64
	rrca			;6d66
	jp p,00321h		;6d67
	djnz l6d6eh		;6d6a
	rrca			;6d6c
	ld (bc),a		;6d6d
l6d6eh:
	djnz l6d72h		;6d6e
	rrca			;6d70
	add a,c			;6d71
l6d72h:
	ld hl,01005h		;6d72
l6d75h:
	ld (bc),a		;6d75
	rrca			;6d76
	add a,c			;6d77
	ld hl,01004h		;6d78
	add a,c			;6d7b
	jr nz,$+17		;6d7c
	djnz l6d01h		;6d7e
	jr nz,l6d91h		;6d80
	djnz l6d86h		;6d82
l6d84h:
	ld (de),a		;6d84
	ld (bc),a		;6d85
l6d86h:
	add hl,bc		;6d86
	rlca			;6d87
	sub h			;6d88
	ld (bc),a		;6d89
	ld (bc),a		;6d8a
	inc bc			;6d8b
	ld bc,02102h		;6d8c
	ld (bc),a		;6d8f
	sub b			;6d90
l6d91h:
	rlca			;6d91
	sub h			;6d92
	ld (bc),a		;6d93
	ld (bc),a		;6d94
	inc bc			;6d95
	ld bc,0f002h		;6d96
	add a,c			;6d99
	ld hl,01003h		;6d9a
	add a,h			;6d9d
l6d9eh:
	rrca			;6d9e
	ld sp,hl		;6d9f
	ld sp,hl		;6da0
	ld hl,01003h		;6da1
	ld (bc),a		;6da4
	rrca			;6da5
	add a,h			;6da6
	jp p,0f1f1h		;6da7
	ld (02103h),a		;6daa
	ld (bc),a		;6dad
	djnz l6db3h		;6dae
	ld hl,01004h		;6db0
l6db3h:
	add a,e			;6db3
	ld hl,02010h		;6db4
	inc b			;6db7
	djnz l6dbch		;6db8
	ret p			;6dba
	add a,c			;6dbb
l6dbch:
	jr nc,$+5		;6dbc
	jr nz,l6dc2h		;6dbe
	djnz $+5		;6dc0
l6dc2h:
	jr nz,l6dc6h		;6dc2
	djnz l6d4bh		;6dc4
l6dc6h:
	jr nc,$+34		;6dc6
	jr nz,$+18		;6dc8
	ld hl,01003h		;6dca
	ld (bc),a		;6dcd
	rrca			;6dce
	add a,h			;6dcf
	pop af			;6dd0
	ret p			;6dd1
	jr nz,l6e05h		;6dd2
	inc bc			;6dd4
	ld hl,00084h		;6dd5
	ld (03221h),a		;6dd8
	inc bc			;6ddb
	ld hl,00202h		;6ddc
	ld (bc),a		;6ddf
	ld hl,03281h		;6de0
	inc b			;6de3
	ld hl,00084h		;6de4
	ld (02021h),a		;6de7
	inc bc			;6dea
	djnz l6d6eh		;6deb
	jr nz,$+5		;6ded
	djnz l6d84h		;6def
	ld (02121h),a		;6df1
	nop			;6df4
	ld (02121h),a		;6df5
	nop			;6df8
	ld (00021h),a		;6df9
	ld (02121h),a		;6dfc
	djnz l6e10h		;6dff
	jr nc,l6e33h		;6e01
	jr nz,$+6		;6e03
l6e05h:
	djnz l6d9eh		;6e05
	ret p			;6e07
	jr nz,l6e1ah		;6e08
	rrca			;6e0a
	jr nz,$+18		;6e0b
	djnz l6e1eh		;6e0d
	rrca			;6e0f
l6e10h:
	jr nc,l6e42h		;6e10
	jr nz,$+18		;6e12
	djnz l6e35h		;6e14
	rrca			;6e16
	rrca			;6e17
	jr nc,$+50		;6e18
l6e1ah:
	jr nz,l6e2ch		;6e1a
	djnz $+50		;6e1c
l6e1eh:
	inc bc			;6e1e
	jr nz,$-119		;6e1f
	jr nc,l6e43h		;6e21
	djnz l6e35h		;6e23
	jr nc,l6e47h		;6e25
	jr nz,l6e30h		;6e27
l6e29h:
	ld (00082h),a		;6e29
l6e2ch:
	ld (02107h),a		;6e2c
	ld (bc),a		;6e2f
l6e30h:
	ld (02183h),a		;6e30
l6e33h:
	di			;6e33
	di			;6e34
l6e35h:
	ld b,032h		;6e35
	add a,l			;6e37
	ld hl,03232h		;6e38
	ld hl,000f9h		;6e3b
	inc b			;6e3e
	rst 38h			;6e3f
	inc bc			;6e40
	exx			;6e41
l6e42h:
	add a,h			;6e42
l6e43h:
	ret			;6e43
	ret m			;6e44
	rst 38h			;6e45
	rst 38h			;6e46
l6e47h:
	dec b			;6e47
	defb 0fdh,000h,004h ;illegal sequence	;6e48
	push af			;6e4b
	add a,h			;6e4c
	jp p,082e3h		;6e4d
	pop af			;6e50
	inc bc			;6e51
	ret p			;6e52
	add a,l			;6e53
	jp m,0fafeh		;6e54
	di			;6e57
	jp p,08c00h		;6e58
	call pe,0f3efh		;6e5b
	call m,0ffffh		;6e5e
	ex (sp),hl		;6e61
	defb 0ddh,03fh,0cfh ;illegal sequence	;6e62
	rst 30h			;6e65
	scf			;6e66
	inc b			;6e67
	dec de			;6e68
	adc a,l			;6e69
	call pe,0f3efh		;6e6a
	call m,0dde3h		;6e6d
	or (hl)			;6e70
	xor d			;6e71
	rst 38h			;6e72
	call m,0eff3h		;6e73
	call pe,0d803h		;6e76
	add a,l			;6e79
	rst 38h			;6e7a
	ccf			;6e7b
	rst 8			;6e7c
	rst 30h			;6e7d
	scf			;6e7e
	inc bc			;6e7f
	dec de			;6e80
	adc a,h			;6e81
	scf			;6e82
	rst 30h			;6e83
	rst 8			;6e84
	ccf			;6e85
	rst 38h			;6e86
	rst 0			;6e87
	cp e			;6e88
	ld l,l			;6e89
	call m,0eff3h		;6e8a
	call pe,0d804h		;6e8d
	add a,l			;6e90
	call pe,0f3efh		;6e91
	call m,005ffh		;6e94
	ld a,a			;6e97
	adc a,b			;6e98
	add a,c			;6e99
	rst 38h			;6e9a
	rst 38h			;6e9b
	add a,c			;6e9c
	rst 38h			;6e9d
	rst 38h			;6e9e
	rst 8			;6e9f
	rst 8			;6ea0
	add hl,bc		;6ea1
	ret z			;6ea2
	ld (bc),a		;6ea3
	jr nc,l6e29h		;6ea4
	scf			;6ea6
	sub a			;6ea7
	ret m			;6ea8
	dec bc			;6ea9
	add a,e			;6eaa
	inc bc			;6eab
	rst 38h			;6eac
	add a,h			;6ead
	add a,e			;6eae
	rst 38h			;6eaf
	ld b,d			;6eb0
	rst 38h			;6eb1
	inc b			;6eb2
	add a,c			;6eb3
	add a,d			;6eb4
	rst 38h			;6eb5
	ld b,d			;6eb6
	ex af,af'		;6eb7
	defb 0fdh,085h ;add a,iyl	;6eb8
	ret m			;6eba
	ret nz			;6ebb
	rlca			;6ebc
	ccf			;6ebd
	ret m			;6ebe
	inc bc			;6ebf
	ret c			;6ec0
	sbc a,l			;6ec1
	scf			;6ec2
	rst 30h			;6ec3
	rst 8			;6ec4
	ccf			;6ec5
	rst 0			;6ec6
	cp e			;6ec7
	ld l,l			;6ec8
	ld d,l			;6ec9
	rra			;6eca
	ld b,a			;6ecb
	ld (hl),c		;6ecc
	ld a,h			;6ecd
	ld (hl),c		;6ece
	ld b,a			;6ecf
	rra			;6ed0
	rst 28h			;6ed1
	pop af			;6ed2
	push bc			;6ed3
	dec e			;6ed4
	ld a,l			;6ed5
	dec e			;6ed6
	push bc			;6ed7
	pop af			;6ed8
	xor 010h		;6ed9
	ld (hl),c		;6edb
	ld a,h			;6edc
	ld (hl),c		;6edd
	ld b,a			;6ede
	inc bc			;6edf
	rst 28h			;6ee0
	add a,l			;6ee1
	ld de,l7d1dh		;6ee2
	dec e			;6ee5
	push bc			;6ee6
	inc bc			;6ee7
l6ee8h:
	xor 083h		;6ee8
	add a,b			;6eea
	rst 38h			;6eeb
	add a,b			;6eec
	inc bc			;6eed
	add a,e			;6eee
	inc bc			;6eef
	add a,b			;6ef0
	add a,c			;6ef1
	rst 38h			;6ef2
	ld b,080h		;6ef3
	ld (bc),a		;6ef5
	rst 38h			;6ef6
	ld b,000h		;6ef7
	ex af,af'		;6ef9
	dec d			;6efa
	sub b			;6efb
	rla			;6efc
	rra			;6efd
	rra			;6efe
sub_6effh:
	djnz l6f10h		;6eff
	rra			;6f01
	add a,b			;6f02
	rst 38h			;6f03
	ret c			;6f04
	ld a,b			;6f05
	jr l6ee8h		;6f06
	ret m			;6f08
	ret m			;6f09
	ld bc,008ffh		;6f0a
	ld e,b			;6f0d
	add a,h			;6f0e
	ret m			;6f0f
l6f10h:
	rst 30h			;6f10
	rst 28h			;6f11
	call pe,0d804h		;6f12
	add a,l			;6f15
	call pe,0f3efh		;6f16
	call m,003ffh		;6f19
	ld a,a			;6f1c
	add a,l			;6f1d
	scf			;6f1e
	rst 30h			;6f1f
	rst 8			;6f20
	ccf			;6f21
	rst 38h			;6f22
	inc bc			;6f23
	cp 094h			;6f24
	call pe,0f3efh		;6f26
	call m,0e3ffh		;6f29
	or (ix-001h)		;6f2c
	rst 38h			;6f2f
	call m,0eff3h		;6f30
	call pe,0d8d8h		;6f33
	scf			;6f36
	rst 30h			;6f37
	rst 8			;6f38
	ccf			;6f39
	inc bc			;6f3a
	rst 38h			;6f3b
	sbc a,h			;6f3c
	rst 0			;6f3d
	rst 38h			;6f3e
	rst 38h			;6f3f
	ccf			;6f40
	rst 8			;6f41
	rst 30h			;6f42
	scf			;6f43
	dec de			;6f44
	dec de			;6f45
	rst 38h			;6f46
	xor 018h		;6f47
	adc a,l			;6f49
	dec a			;6f4a
l6f4bh:
	adc a,l			;6f4b
	xor 010h		;6f4c
	xor b			;6f4e
	xor b			;6f4f
	xor c			;6f50
	defb 0fdh,00bh,009h ;illegal sequence	;6f51
	ld c,c			;6f54
	xor e			;6f55
	rst 38h			;6f56
	nop			;6f57
	rst 38h			;6f58
	inc bc			;6f59
	call m,00087h		;6f5a
	rst 38h			;6f5d
	rra			;6f5e
	inc bc			;6f5f
	ret po			;6f60
	call m,0031fh		;6f61
	dec de			;6f64
	add a,l			;6f65
	scf			;6f66
	rst 30h			;6f67
	rst 8			;6f68
	ccf			;6f69
	rst 38h			;6f6a
	inc bc			;6f6b
	cp 088h			;6f6c
	rst 38h			;6f6e
	ret m			;6f6f
	jr nc,$+101		;6f70
	ld a,b			;6f72
	ld h,e			;6f73
	ret m			;6f74
	ret m			;6f75
	ex af,af'		;6f76
	cp e			;6f77
	inc bc			;6f78
	rst 38h			;6f79
	dec b			;6f7a
	call m,0ff8fh		;6f7b
	ret p			;6f7e
	ret p			;6f7f
	rrca			;6f80
	rrca			;6f81
	rst 38h			;6f82
	rlca			;6f83
	nop			;6f84
	nop			;6f85
	ret p			;6f86
	ret p			;6f87
	rrca			;6f88
	rrca			;6f89
	nop			;6f8a
	ret po			;6f8b
	inc b			;6f8c
	nop			;6f8d
	ld b,0c0h		;6f8e
	inc bc			;6f90
	ret nc			;6f91
	ld (bc),a		;6f92
	rrca			;6f93
	ld (bc),a		;6f94
	nop			;6f95
	add a,e			;6f96
	cp a			;6f97
	and a			;6f98
	ld b,a			;6f99
	inc b			;6f9a
	rrca			;6f9b
	adc a,l			;6f9c
	rst 38h			;6f9d
	inc bc			;6f9e
	defb 0fdh,0fdh,001h ;illegal sequence	;6f9f
	rst 38h			;6fa2
	rst 38h			;6fa3
	nop			;6fa4
	nop			;6fa5
	ret po			;6fa6
	rst 28h			;6fa7
	rst 30h			;6fa8
	scf			;6fa9
	inc b			;6faa
	dec de			;6fab
	inc b			;6fac
	ret nc			;6fad
	adc a,h			;6fae
	call po,04444h		;6faf
	call po,000ffh		;6fb2
	nop			;6fb5
	rst 38h			;6fb6
	inc bc			;6fb7
	ld (bc),a		;6fb8
	cp 0ffh			;6fb9
	dec b			;6fbb
	inc bc			;6fbc
	inc bc			;6fbd
	add a,e			;6fbe
	dec b			;6fbf
	ccf			;6fc0
	ld (bc),a		;6fc1
	jr nc,l6f4bh		;6fc2
	scf			;6fc4
	rst 38h			;6fc5
	rst 38h			;6fc6
	cp 0f0h			;6fc7
	ld bc,0040fh		;6fc9
	rst 38h			;6fcc
	adc a,c			;6fcd
	ld a,a			;6fce
	rrca			;6fcf
	add a,b			;6fd0
	ret p			;6fd1
	rst 38h			;6fd2
	rst 38h			;6fd3
	defb 0fdh,0fdh,0ffh ;illegal sequence	;6fd4
	inc b			;6fd7
	add a,b			;6fd8
	add a,c			;6fd9
	rst 38h			;6fda
	ld b,000h		;6fdb
	ld (bc),a		;6fdd
	rst 38h			;6fde
	ld (bc),a		;6fdf
	add a,b			;6fe0
	inc bc			;6fe1
	cp 003h			;6fe2
	nop			;6fe4
	ld (bc),a		;6fe5
	rst 38h			;6fe6
	ld (bc),a		;6fe7
	nop			;6fe8
	add a,(hl)		;6fe9
	rst 38h			;6fea
	add a,b			;6feb
	add a,b			;6fec
	nop			;6fed
	cp e			;6fee
	xor d			;6fef
	inc bc			;6ff0
	ld b,h			;6ff1
	ld (bc),a		;6ff2
	nop			;6ff3
	ld (bc),a		;6ff4
	rst 38h			;6ff5
	inc bc			;6ff6
	add a,b			;6ff7
	ld (bc),a		;6ff8
	rst 38h			;6ff9
	ld (bc),a		;6ffa
	nop			;6ffb
	nop			;6ffc
	ld b,0f5h		;6ffd
	ex af,af'		;6fff
	defb 0fdh,006h,0f5h ;illegal sequence	;7000
	add hl,bc		;7003
	defb 0fdh,002h,0f8h ;illegal sequence	;7004
	ex af,af'		;7007
	defb 0fdh,006h,0f5h ;illegal sequence	;7008
	rlca			;700b
	defb 0fdh,002h,0f8h ;illegal sequence	;700c
	add a,c			;700f
	defb 0fdh,006h,0f5h ;illegal sequence	;7010
	add a,l			;7013
	ld sp,hl		;7014
	call p,044f0h		;7015
	ld b,h			;7018
	inc bc			;7019
	ret p			;701a
	add a,c			;701b
	ld sp,hl		;701c
	dec c			;701d
	ld b,b			;701e
	rla			;701f
	ret p			;7020
	add a,e			;7021
	ld sp,hl		;7022
	ld b,h			;7023
	ld b,h			;7024
	inc bc			;7025
	ret p			;7026
	add a,e			;7027
	ld sp,031e1h		;7028
	rlca			;702b
	ld hl,0f102h		;702c
	add a,e			;702f
	defb 0fdh,0f8h,0fdh ;illegal sequence	;7030
	dec b			;7033
	push af			;7034
	dec b			;7035
	defb 0fdh,002h,0f8h ;illegal sequence	;7036
	sbc a,l			;7039
	cp 0f8h			;703a
	ret m			;703c
	defb 0fdh,0e8h,0fdh ;illegal sequence	;703d
	ret m			;7040
	ret m			;7041
	cp 0f8h			;7042
	ret m			;7044
	defb 0fdh,0e8h,0d8h ;illegal sequence	;7045
	push af			;7048
	ret m			;7049
	defb 0fdh,0f5h,0d5h ;illegal sequence	;704a
	rst 38h			;704d
	rst 38h			;704e
	ret c			;704f
	push af			;7050
	ret m			;7051
	defb 0fdh,0f5h,0d5h ;illegal sequence	;7052
	rst 38h			;7055
	rst 38h			;7056
	inc bc			;7057
	ex (sp),hl		;7058
	dec b			;7059
	ld (0e303h),a		;705a
	ld b,032h		;705d
	ld (bc),a		;705f
	ex (sp),hl		;7060
	rrca			;7061
	jp p,01202h		;7062
	ld (bc),a		;7065
	ld (0f105h),a		;7066
	add a,e			;7069
	ld hl,03131h		;706a
	dec bc			;706d
	pop af			;706e
	inc bc			;706f
	defb 0fdh,002h,0f8h ;illegal sequence	;7070
	add a,c			;7073
	defb 0fdh,006h,0f5h ;illegal sequence	;7074
	add a,e			;7077
	ret p			;7078
	call p,005f9h		;7079
	push af			;707c
	add a,e			;707d
	ld sp,hl		;707e
	call p,005f0h		;707f
	push af			;7082
	add hl,bc		;7083
	defb 0fdh,002h,0f8h ;illegal sequence	;7084
	rlca			;7087
	push af			;7088
	ld a,(bc)		;7089
	defb 0fdh,002h,0e8h ;illegal sequence	;708a
	add a,(hl)		;708d
	ret m			;708e
	cp 0f8h			;708f
	ret pe			;7091
	ret c			;7092
	call p,0f003h		;7093
	add a,h			;7096
	ret m			;7097
	cp 0f8h			;7098
	push af			;709a
	inc bc			;709b
	ld a,081h		;709c
	ld sp,02106h		;709e
	ld (bc),a		;70a1
	pop af			;70a2
	add hl,bc		;70a3
	push af			;70a4
	sub c			;70a5
	ret p			;70a6
	call p,0f9f9h		;70a7
	ex (sp),hl		;70aa
	ret pe			;70ab
	ret m			;70ac
	cp 0f8h			;70ad
	ex (sp),hl		;70af
	add a,d			;70b0
	defb 0fdh,0f8h,0feh ;illegal sequence	;70b1
	cp 0f8h			;70b4
	cp 005h			;70b6
	ret m			;70b8
	add a,e			;70b9
	di			;70ba
	cp 0f3h			;70bb
	inc bc			;70bd
	pop af			;70be
	adc a,a			;70bf
	di			;70c0
	ld a,03eh		;70c1
	inc hl			;70c3
	inc hl			;70c4
	ld hl,03f21h		;70c5
	ccf			;70c8
	ex (sp),hl		;70c9
	ex (sp),hl		;70ca
	ld (02132h),a		;70cb
	ld hl,03f04h		;70ce
	add a,l			;70d1
	rst 28h			;70d2
	ccf			;70d3
	rra			;70d4
	rra			;70d5
	sub b			;70d6
	inc bc			;70d7
	sub h			;70d8
	add a,c			;70d9
	ld b,b			;70da
	inc bc			;70db
	rrca			;70dc
	add a,c			;70dd
	ld sp,hl		;70de
	rlca			;70df
	ret p			;70e0
	add a,c			;70e1
	cp 004h			;70e2
	sub b			;70e4
	ld (bc),a		;70e5
	ld b,b			;70e6
	ld (bc),a		;70e7
	rra			;70e8
	dec b			;70e9
	defb 0fdh,002h,0f5h ;illegal sequence	;70ea
	add a,c			;70ed
	jp (hl)			;70ee
	inc bc			;70ef
	sub h			;70f0
	add a,(hl)		;70f1
	ret m			;70f2
	cp 0f8h			;70f3
	push af			;70f5
	add hl,bc		;70f6
	add hl,bc		;70f7
	inc bc			;70f8
	inc b			;70f9
	inc b			;70fa
	ret p			;70fb
	add a,e			;70fc
	inc b			;70fd
	ld c,c			;70fe
	ld c,c			;70ff
	dec b			;7100
	inc b			;7101
	add a,e			;7102
	ld c,c			;7103
	sbc a,(hl)		;7104
	sbc a,(hl)		;7105
	inc b			;7106
	ld c,c			;7107
	inc b			;7108
	ld hl,0f104h		;7109
	inc b			;710c
	ld hl,0f104h		;710d
	ld (bc),a		;7110
	ld hl,03203h		;7111
	ld (bc),a		;7114
	ld hl,0f206h		;7115
	inc bc			;7118
	pop af			;7119
	inc bc			;711a
	ld (02104h),a		;711b
	ld (bc),a		;711e
	rrca			;711f
	ld (bc),a		;7120
	sub h			;7121
	inc bc			;7122
	ld b,b			;7123
	ld (bc),a		;7124
	rrca			;7125
	adc a,b			;7126
	defb 0fdh,0f5h,0f1h ;illegal sequence	;7127
	ld (de),a		;712a
	inc hl			;712b
	inc hl			;712c
	pop af			;712d
	pop af			;712e
	inc bc			;712f
	jp (hl)			;7130
	ld (bc),a		;7131
	sub b			;7132
	ld (bc),a		;7133
	ld b,b			;7134
	add a,c			;7135
	rrca			;7136
	nop			;7137
	or d			;7138
	add a,b			;7139
	ld a,b			;713a
	rlca			;713b
	rst 38h			;713c
	rst 38h			;713d
	cp 08eh			;713e
	add a,(hl)		;7140
	ret c			;7141
	call pe,0f3efh		;7142
	call m,0ffffh		;7145
	ret m			;7148
	ret m			;7149
	defb 0fdh,043h,043h ;illegal sequence	;714a
	ld h,c			;714d
	ld b,b			;714e
	ld b,b			;714f
	ld h,b			;7150
	scf			;7151
	rst 30h			;7152
	rst 8			;7153
	ccf			;7154
	rst 38h			;7155
	rst 38h			;7156
	rrca			;7157
	ex af,af'		;7158
	ex af,af'		;7159
	ret p			;715a
	ret p			;715b
	nop			;715c
	nop			;715d
	cp 08eh			;715e
	add a,(hl)		;7160
	dec de			;7161
	scf			;7162
	rst 30h			;7163
	rst 8			;7164
	ccf			;7165
	ret m			;7166
	ex af,af'		;7167
	ret p			;7168
	sbc a,a			;7169
	cp a			;716a
	inc bc			;716b
	rst 38h			;716c
	adc a,l			;716d
	cp 08eh			;716e
	add a,(hl)		;7170
	call pe,0f3efh		;7171
	call m,0080fh		;7174
	rlca			;7177
	rlca			;7178
	ret po			;7179
	ret po			;717a
	inc bc			;717b
	nop			;717c
	ret z			;717d
	cp 08eh			;717e
	add a,(hl)		;7180
	call pe,0f3efh		;7181
	call m,0f0ffh		;7184
	add a,b			;7187
	ld (hl),b		;7188
	rrca			;7189
	rst 38h			;718a
	cp 086h			;718b
	inc bc			;718d
	inc bc			;718e
	ld bc,00ffch		;718f
	call m,0c0f0h		;7192
	ld a,a			;7195
	rst 38h			;7196
	rst 38h			;7197
	call m,03fffh		;7198
	rra			;719b
	adc a,a			;719c
	rst 0			;719d
	call po,0fcfch		;719e
	rst 38h			;71a1
	ccf			;71a2
	rra			;71a3
	adc a,a			;71a4
	rst 0			;71a5
	call po,0fcfch		;71a6
	rst 38h			;71a9
	call m,0f1f8h		;71aa
	ex (sp),hl		;71ad
	daa			;71ae
	ccf			;71af
	ccf			;71b0
	ld d,l			;71b1
	ld l,l			;71b2
	cp e			;71b3
	rst 0			;71b4
	rst 38h			;71b5
	rst 38h			;71b6
	rrca			;71b7
	ex af,af'		;71b8
	xor d			;71b9
	or (hl)			;71ba
	ex (sp),ix		;71bb
	rst 38h			;71bd
	rra			;71be
	djnz l71d0h		;71bf
	ld d,l			;71c1
	ld l,l			;71c2
	cp e			;71c3
	rst 0			;71c4
	rst 38h			;71c5
	inc bc			;71c6
	ex af,af'		;71c7
	xor (hl)		;71c8
	cp e			;71c9
	ld l,l			;71ca
	ld d,l			;71cb
	ld l,l			;71cc
	cp e			;71cd
	rst 0			;71ce
	rst 38h			;71cf
l71d0h:
	ret m			;71d0
	or (hl)			;71d1
	xor d			;71d2
	or (hl)			;71d3
	ex (sp),ix		;71d4
	rst 38h			;71d6
	add a,a			;71d7
	add a,b			;71d8
	ld l,l			;71d9
	cp e			;71da
	rst 0			;71db
	rst 38h			;71dc
	add a,a			;71dd
	add a,b			;71de
	rlca			;71df
	rlca			;71e0
	or (hl)			;71e1
	ex (sp),ix		;71e2
	rst 38h			;71e4
	rst 38h			;71e5
	ret p			;71e6
	add a,b			;71e7
	ld (hl),b		;71e8
	ret c			;71e9
	ret c			;71ea
	call pe,0f3efh		;71eb
	call m,08087h		;71ee
	scf			;71f1
	rst 30h			;71f2
	rst 8			;71f3
	ccf			;71f4
	rst 0			;71f5
	add a,b			;71f6
	inc b			;71f7
	rlca			;71f8
	ld (bc),a		;71f9
	ld b,e			;71fa
	or h			;71fb
	ld h,c			;71fc
	ld b,b			;71fd
	ld b,b			;71fe
	ld h,b			;71ff
	dec de			;7200
	dec de			;7201
	scf			;7202
	rst 30h			;7203
	rst 8			;7204
	ccf			;7205
	rst 38h			;7206
	ret m			;7207
	ccf			;7208
	rra			;7209
	ccf			;720a
	rst 0			;720b
	ret nz			;720c
	ret p			;720d
	rst 38h			;720e
	rst 38h			;720f
	call m,0f8fch		;7210
	pop af			;7213
	rst 38h			;7214
	ex (sp),hl		;7215
	rst 0			;7216
	adc a,a			;7217
	xor d			;7218
	or (hl)			;7219
	ex (sp),ix		;721a
	rst 38h			;721c
l721dh:
	rst 38h			;721d
	ret p			;721e
	djnz l721dh		;721f
	ret m			;7221
	call m,083e3h		;7222
	adc a,a			;7225
	rst 38h			;7226
	rst 38h			;7227
	ccf			;7228
	ccf			;7229
	rra			;722a
	adc a,a			;722b
	rst 38h			;722c
	rst 0			;722d
	ex (sp),hl		;722e
	pop af			;722f
	nop			;7230
	add a,d			;7231
	ld sp,hl		;7232
	sub b			;7233
	inc bc			;7234
	ret p			;7235
	ld a,(bc)		;7236
	push af			;7237
	inc bc			;7238
	ld sp,hl		;7239
	add a,e			;723a
	push af			;723b
	ld e,l			;723c
	ld e,l			;723d
	add hl,bc		;723e
	push af			;723f
	inc bc			;7240
	ld sp,hl		;7241
	add a,c			;7242
	sub b			;7243
	inc bc			;7244
	rrca			;7245
	ex af,af'		;7246
	push af			;7247
	ld (bc),a		;7248
	ld sp,hl		;7249
	add a,d			;724a
	sub b			;724b
	ld sp,hl		;724c
	inc b			;724d
	ret p			;724e
	rlca			;724f
	push af			;7250
	ld (bc),a		;7251
	ld sp,hl		;7252
	add a,e			;7253
	sub b			;7254
	rrca			;7255
	sub b			;7256
	inc b			;7257
	rrca			;7258
	ex af,af'		;7259
	push af			;725a
	ld (bc),a		;725b
	ld sp,hl		;725c
	add a,l			;725d
	sub b			;725e
	ret p			;725f
	ret p			;7260
	push af			;7261
	push af			;7262
	inc bc			;7263
	defb 0fdh,082h,0d8h ;illegal sequence	;7264
	ret p			;7267
	inc bc			;7268
	defb 0fdh,003h,0d5h ;illegal sequence	;7269
	adc a,b			;726c
	ret c			;726d
	ret p			;726e
	ret p			;726f
	call p,0f9f9h		;7270
	call p,003f9h		;7273
	ret p			;7276
	add a,c			;7277
	call p,0f904h		;7278
	inc bc			;727b
	ret p			;727c
	add a,a			;727d
	call p,0f9f9h		;727e
	call p,0f0f9h		;7281
	defb 0fdh,005h,0f5h ;illegal sequence	;7284
	ld (bc),a		;7287
	ld sp,hl		;7288
	add a,c			;7289
	defb 0fdh,004h,0f5h ;illegal sequence	;728a
	ld (bc),a		;728d
	ld sp,hl		;728e
	add a,d			;728f
	sub b			;7290
	defb 0fdh,004h,0f5h ;illegal sequence	;7291
	ld (bc),a		;7294
	ld sp,hl		;7295
	add a,c			;7296
	ret p			;7297
	inc bc			;7298
	defb 0fdh,004h,0f5h ;illegal sequence	;7299
	add a,e			;729c
	ld sp,hl		;729d
	defb 0fdh,0fdh,004h ;illegal sequence	;729e
	push af			;72a1
	ld (bc),a		;72a2
	ld sp,hl		;72a3
	inc b			;72a4
	push af			;72a5
	ld (bc),a		;72a6
	ld sp,hl		;72a7
	add a,d			;72a8
	sub b			;72a9
	rrca			;72aa
	dec b			;72ab
	push af			;72ac
	ld (bc),a		;72ad
	ld sp,hl		;72ae
	add a,d			;72af
	sub b			;72b0
	defb 0fdh,005h,0f5h ;illegal sequence	;72b1
	ld (bc),a		;72b4
	ld sp,hl		;72b5
	inc b			;72b6
	push af			;72b7
	ld (bc),a		;72b8
	ld sp,hl		;72b9
	add a,a			;72ba
	sub b			;72bb
	rrca			;72bc
	sub b			;72bd
	rrca			;72be
	push af			;72bf
	ld e,l			;72c0
	ld e,l			;72c1
	ld a,(bc)		;72c2
	push af			;72c3
	inc bc			;72c4
	ld sp,hl		;72c5
	ld (bc),a		;72c6
	call p,0f906h		;72c7
	add a,c			;72ca
	call p,0f003h		;72cb
	add a,e			;72ce
	call p,0fdf9h		;72cf
	dec b			;72d2
	push af			;72d3
	inc bc			;72d4
	ld sp,hl		;72d5
	add a,h			;72d6
	call p,0f0f0h		;72d7
	call p,0f905h		;72da
	add a,c			;72dd
	call p,0f003h		;72de
	add a,d			;72e1
	call p,000f9h		;72e2
	add a,c			;72e5
	ld a,a			;72e6
	ex af,af'		;72e7
	rst 38h			;72e8
	inc b			;72e9
	call m,0fe03h		;72ea
	add a,c			;72ed
	rst 38h			;72ee
	inc b			;72ef
	ccf			;72f0
	inc bc			;72f1
	ld a,a			;72f2
	add a,c			;72f3
	rst 38h			;72f4
	rlca			;72f5
	call m,0ff81h		;72f6
	rlca			;72f9
	ccf			;72fa
	add a,c			;72fb
	rst 38h			;72fc
	inc bc			;72fd
	call m,0ff81h		;72fe
	inc bc			;7301
	call m,0ff81h		;7302
	inc bc			;7305
	ccf			;7306
	add a,c			;7307
	rst 38h			;7308
	inc bc			;7309
	ccf			;730a
	inc b			;730b
	call m,0ff81h		;730c
	inc bc			;730f
	cp 004h			;7310
	ccf			;7312
	add a,c			;7313
	rst 38h			;7314
	inc bc			;7315
	ld a,a			;7316
	nop			;7317
	ld a,(bc)		;7318
	ret p			;7319
	add a,c			;731a
	call p,0f903h		;731b
	add a,c			;731e
	call p,0f003h		;731f
	add a,c			;7322
	call p,0f903h		;7323
	add a,c			;7326
	call p,0f003h		;7327
	add a,c			;732a
	call p,0f903h		;732b
	add a,c			;732e
	call p,0f003h		;732f
	add a,c			;7332
	call p,0f903h		;7333
	add a,c			;7336
	call p,0f003h		;7337
	inc bc			;733a
	call p,0f085h		;733b
	call p,0f9f9h		;733e
	ret p			;7341
	inc bc			;7342
	call p,0f082h		;7343
	call p,0f903h		;7346
	add a,c			;7349
	call p,0f003h		;734a
	add a,c			;734d
	call p,0f903h		;734e
	add a,c			;7351
	call p,0f003h		;7352
	add a,d			;7355
	call p,000f9h		;7356
	sbc a,d			;7359
	rst 38h			;735a
	cp 0f9h			;735b
	jp p,0f004h		;735d
	ret po			;7360
	ret nz			;7361
	ld bc,00080h		;7362
	ld (hl),b		;7365
	ret m			;7366
	add a,b			;7367
	ret m			;7368
	ret m			;7369
	add a,b			;736a
	ld bc,01c07h		;736b
	rst 38h			;736e
	ld e,b			;736f
	ld e,b			;7370
	rst 38h			;7371
	adc a,b			;7372
	rst 38h			;7373
	inc bc			;7374
	sub a			;7375
	ld (bc),a		;7376
	jp (hl)			;7377
	or (hl)			;7378
	nop			;7379
	adc a,0a4h		;737a
	and d			;737c
	ret			;737d
	push hl			;737e
	di			;737f
	sbc a,080h		;7380
	ld bc,04020h		;7382
	ld e,b			;7385
	cp h			;7386
	add a,b			;7387
	inc a			;7388
	inc a			;7389
	add a,c			;738a
	add a,c			;738b
	ld h,d			;738c
	ld h,d			;738d
	rst 38h			;738e
	ld e,b			;738f
	ld e,b			;7390
	rst 38h			;7391
	inc h			;7392
	rra			;7393
	jr nz,l73f6h		;7394
	rst 38h			;7396
	jp (hl)			;7397
	jp (hl)			;7398
	nop			;7399
	add a,b			;739a
	inc b			;739b
	ld (bc),a		;739c
	ld a,(de)		;739d
	dec a			;739e
	ld bc,03c3ch		;739f
	ld (hl),e		;73a2
	dec h			;73a3
	ld b,l			;73a4
	sub e			;73a5
	and a			;73a6
	rst 8			;73a7
	ld a,e			;73a8
	ld bc,0f824h		;73a9
	inc b			;73ac
	ld b,0ffh		;73ad
	inc bc			;73af
	ld e,b			;73b0
	ld (bc),a		;73b1
	add a,c			;73b2
	ld (bc),a		;73b3
	ld b,(hl)		;73b4
	sub (hl)		;73b5
	rst 38h			;73b6
	jp (hl)			;73b7
	jp (hl)			;73b8
	nop			;73b9
	add a,b			;73ba
	ld bc,00e00h		;73bb
	rra			;73be
	ld bc,01f1fh		;73bf
	rst 38h			;73c2
	ld a,a			;73c3
	sbc a,a			;73c4
	ld c,a			;73c5
	jr nz,l73d7h		;73c6
	rlca			;73c8
	inc bc			;73c9
	ld de,003ffh		;73ca
	jp (hl)			;73cd
	ld (bc),a		;73ce
	ld e,b			;73cf
	sub a			;73d0
	rst 38h			;73d1
	ld bc,0e080h		;73d2
	jr c,$+1		;73d5
l73d7h:
	jp (hl)			;73d7
	jp (hl)			;73d8
	nop			;73d9
	ccf			;73da
	ccf			;73db
	pop bc			;73dc
	inc a			;73dd
	inc a			;73de
	pop bc			;73df
	ccf			;73e0
	ccf			;73e1
	call po,0ccc4h		;73e2
	sbc a,(hl)		;73e5
	ld a,0beh		;73e6
	inc b			;73e8
	cp 08ch			;73e9
	cp (hl)			;73eb
	ld a,09eh		;73ec
	call z,0e4c4h		;73ee
	daa			;73f1
	inc hl			;73f2
	inc sp			;73f3
	ld a,c			;73f4
	ld a,h			;73f5
l73f6h:
	ld a,l			;73f6
	inc b			;73f7
	ld a,a			;73f8
	add a,(hl)		;73f9
	ld a,l			;73fa
	ld a,h			;73fb
	ld a,c			;73fc
	inc sp			;73fd
	inc hl			;73fe
	daa			;73ff
	inc bc			;7400
	ld a,b			;7401
	add a,d			;7402
	xor d			;7403
	rst 38h			;7404
	rlca			;7405
	ld a,b			;7406
	add a,c			;7407
	add a,c			;7408
	inc bc			;7409
	rst 38h			;740a
	or a			;740b
	inc bc			;740c
	ret nz			;740d
	ret p			;740e
	ret m			;740f
	ret m			;7410
	ret p			;7411
	ret nz			;7412
	inc bc			;7413
	ld sp,hl		;7414
	ld sp,hl		;7415
	pop af			;7416
	pop af			;7417
	ld (024e4h),a		;7418
	rra			;741b
	add a,b			;741c
	rlca			;741d
	rlca			;741e
	ld a,a			;741f
	rrca			;7420
	add a,b			;7421
	ret p			;7422
	add a,b			;7423
	add a,b			;7424
	ret nz			;7425
	ret po			;7426
	ret m			;7427
	xor a			;7428
	and e			;7429
	and d			;742a
	and d			;742b
	ld bc,0e0e0h		;742c
	cp 0f0h			;742f
	ld bc,0010fh		;7431
	ld bc,00703h		;7434
	rra			;7437
	push af			;7438
	push bc			;7439
	ld b,l			;743a
	ld b,l			;743b
	ret p			;743c
	jp 0acach		;743d
	ld a,b			;7440
	ret p			;7441
	rst 38h			;7442
	inc b			;7443
	ret p			;7444
	sbc a,h			;7445
	rst 38h			;7446
	ld a,a			;7447
	ld a,a			;7448
	pop de			;7449
	pop de			;744a
	rra			;744b
	ld de,0fbeah		;744c
	ei			;744f
	jp z,0cecah		;7450
	call m,0cccch		;7453
	call 0b6cdh		;7456
	add a,h			;7459
	add a,h			;745a
	rrca			;745b
	inc e			;745c
	jp z,0fecah		;745d
	ld a,a			;7460
	nop			;7461
	inc b			;7462
	ret m			;7463
	add a,e			;7464
	nop			;7465
	ld bc,004ffh		;7466
	outd			;7469
	rra			;746b
	ld de,0fbeah		;746c
	adc a,d			;746f
	adc a,d			;7470
	and e			;7471
	ld (01223h),hl		;7472
	inc de			;7475
	ld (de),a		;7476
	inc de			;7477
	call m,0ffffh		;7478
	ret m			;747b
	adc a,b			;747c
	ld d,a			;747d
	rst 18h			;747e
	ld d,c			;747f
	ld d,c			;7480
	push bc			;7481
	ld b,h			;7482
	call nz,0c848h		;7483
	ld c,b			;7486
	ret z			;7487
	ccf			;7488
	sbc a,a			;7489
	sbc a,a			;748a
	adc a,a			;748b
	rst 8			;748c
	ld c,h			;748d
	daa			;748e
	inc h			;748f
	ret m			;7490
	ld l,02eh		;7491
	rst 38h			;7493
	ld b,h			;7494
	rst 38h			;7495
	inc bc			;7496
	ld e,a			;7497
	ld (bc),a		;7498
	ret nc			;7499
	add a,e			;749a
	rst 38h			;749b
	ld (003ffh),hl		;749c
	ret pe			;749f
	sbc a,d			;74a0
	jp nz,04342h		;74a1
	ld b,a			;74a4
	ret m			;74a5
	ret po			;74a6
	ret nz			;74a7
	add a,b			;74a8
	ld b,d			;74a9
	ld b,e			;74aa
	jp 01fe3h		;74ab
	rlca			;74ae
	inc bc			;74af
	ld bc,088f8h		;74b0
	ld d,a			;74b3
	rst 18h			;74b4
	rst 18h			;74b5
	ld d,e			;74b6
	ld d,e			;74b7
	ld (hl),e		;74b8
	rst 38h			;74b9
	rst 38h			;74ba
	inc bc			;74bb
	ld a,b			;74bc
	sub e			;74bd
	xor d			;74be
	rst 38h			;74bf
	ld a,b			;74c0
	adc a,(hl)		;74c1
	call m,0cccch		;74c2
	call 084b6h		;74c5
	add a,(hl)		;74c8
	ld (hl),c		;74c9
	ccf			;74ca
	inc sp			;74cb
	inc sp			;74cc
	or e			;74cd
	ld l,l			;74ce
	ld hl,00021h		;74cf
	ld (bc),a		;74d2
	cp 087h			;74d3
	defb 0edh ;next byte illegal after ed	;74d5
	ret pe			;74d6
	ret pe			;74d7
	ret c			;74d8
	ret m			;74d9
	ret m			;74da
	cp 005h			;74db
	ret pe			;74dd
	adc a,c			;74de
	ret c			;74df
	ld e,b			;74e0
	ret m			;74e1
	defb 0fdh,0fdh,0f5h ;illegal sequence	;74e2
	push af			;74e5
	ret pe			;74e6
	adc a,l			;74e7
	inc bc			;74e8
	defb 0fdh,08ch ;adc a,iyh	;74e9
	ret c			;74eb
	ld e,l			;74ec
	rst 38h			;74ed
	push de			;74ee
	ld e,a			;74ef
	ld e,a			;74f0
	cp 0feh			;74f1
	ret m			;74f3
	ret m			;74f4
	defb 0fdh,0f5h,003h ;illegal sequence	;74f5
	cp 005h			;74f8
	ret pe			;74fa
	adc a,c			;74fb
	ret c			;74fc
	ld e,b			;74fd
	ret pe			;74fe
	rst 28h			;74ff
	ret m			;7500
	defb 0fdh,0fdh,0e8h ;illegal sequence	;7501
	adc a,l			;7504
	inc b			;7505
	defb 0fdh,002h,0f5h ;illegal sequence	;7506
	add a,h			;7509
	push de			;750a
	ld e,a			;750b
	ld e,a			;750c
	cp 005h			;750d
	ret pe			;750f
	adc a,d			;7510
	ret c			;7511
	ld e,b			;7512
	cp 0feh			;7513
	ret m			;7515
	ret m			;7516
	defb 0fdh,0f5h,0feh ;illegal sequence	;7517
	cp 003h			;751a
	defb 0fdh,002h,0f5h ;illegal sequence	;751c
	adc a,h			;751f
	ret pe			;7520
	adc a,l			;7521
	rst 38h			;7522
	ret pe			;7523
	rst 28h			;7524
	ret m			;7525
	defb 0fdh,0fdh,0d5h ;illegal sequence	;7526
	ld e,a			;7529
	ld e,a			;752a
	cp 005h			;752b
	ret pe			;752d
	sbc a,b			;752e
	ret c			;752f
	ld e,b			;7530
	cp 0feh			;7531
	defb 0edh ;next byte illegal after ed	;7533
	ret pe			;7534
	ret pe			;7535
	ret c			;7536
	ret m			;7537
	ret m			;7538
	defb 0fdh,0fdh,0d8h ;illegal sequence	;7539
	ld e,l			;753c
	rst 38h			;753d
	ret pe			;753e
	adc a,l			;753f
	ret m			;7540
	ret m			;7541
	defb 0fdh,0fdh,0f5h ;illegal sequence	;7542
	push af			;7545
	push de			;7546
	inc bc			;7547
	ld e,a			;7548
	adc a,c			;7549
	push de			;754a
	ret c			;754b
	ret pe			;754c
	ret pe			;754d
	ret c			;754e
	push de			;754f
	ld e,a			;7550
	pop af			;7551
	or 003h			;7552
	di			;7554
	add a,(hl)		;7555
	jp m,0faf2h		;7556
	jp m,0faf2h		;7559
	inc bc			;755c
	di			;755d
	add a,h			;755e
	or 0f1h			;755f
	pop af			;7561
	or 003h			;7562
	di			;7564
	add a,(hl)		;7565
	jp m,0faf2h		;7566
	jp m,0faf2h		;7569
	inc bc			;756c
	di			;756d
	adc a,b			;756e
	or 0f1h			;756f
	and e			;7571
	ld (0f121h),a		;7572
	pop af			;7575
	ret pe			;7576
	dec b			;7577
	adc a,l			;7578
	add a,c			;7579
	push de			;757a
	dec b			;757b
	push af			;757c
	ld b,0d5h		;757d
	sub b			;757f
	push af			;7580
	cp 0feh			;7581
	ret m			;7583
	ret m			;7584
	defb 0fdh,0fdh,0f5h ;illegal sequence	;7585
	push af			;7588
	jp m,0eaeah		;7589
	and e			;758c
	and e			;758d
	ld h,e			;758e
	ld h,e			;758f
	dec b			;7590
	or 08bh			;7591
	call p,0f4feh		;7593
	ret p			;7596
	jp m,0eaeah		;7597
	and e			;759a
	and e			;759b
	ld h,e			;759c
	ld h,e			;759d
	dec b			;759e
	or 088h			;759f
	call p,0f4feh		;75a1
	ret p			;75a4
	jp m,0f3d8h		;75a5
	or 007h			;75a8
	ret pe			;75aa
	ld (bc),a		;75ab
	push de			;75ac
	add a,(hl)		;75ad
	rst 38h			;75ae
	ret c			;75af
	rst 38h			;75b0
	pop hl			;75b1
	add a,c			;75b2
	defb 0fdh,003h,0f8h ;illegal sequence	;75b3
	add a,c			;75b6
	cp 003h			;75b7
	ret m			;75b9
	ld (bc),a		;75ba
	defb 0fdh,08bh,0f5h ;illegal sequence	;75bb
	cp 0f8h			;75be
	push af			;75c0
	di			;75c1
	push af			;75c2
	or 0f1h			;75c3
	push de			;75c5
	ret c			;75c6
	ret c			;75c7
	dec b			;75c8
	push de			;75c9
	ld (bc),a		;75ca
	push af			;75cb
	add a,c			;75cc
	push de			;75cd
	inc bc			;75ce
	rst 38h			;75cf
	add a,l			;75d0
	pop hl			;75d1
	add a,c			;75d2
	defb 0fdh,0f8h,0f8h ;illegal sequence	;75d3
	inc bc			;75d6
	cp 002h			;75d7
	ret m			;75d9
	ld (bc),a		;75da
	defb 0fdh,004h,0f5h ;illegal sequence	;75db
	add a,l			;75de
	jp po,0fd81h		;75df
	ret m			;75e2
	ret m			;75e3
	inc bc			;75e4
	cp 002h			;75e5
	ret m			;75e7
	ld (bc),a		;75e8
	defb 0fdh,002h,0f5h ;illegal sequence	;75e9
	ld (bc),a		;75ec
	cp 002h			;75ed
	ret m			;75ef
	ld (bc),a		;75f0
	defb 0fdh,002h,0f5h ;illegal sequence	;75f1
	add a,d			;75f4
	and e			;75f5
	ld (0f603h),a		;75f6
	add a,l			;75f9
	and e			;75fa
	ld (03221h),a		;75fb
	ld hl,0f603h		;75fe
	sub (hl)		;7601
	ld (01f21h),a		;7602
	ld sp,hl		;7605
	call p,0f0f0h		;7606
	or 0f3h			;7609
	di			;760b
	jp m,0f4f9h		;760c
	ret p			;760f
	ret p			;7610
	or 0f3h			;7611
	di			;7613
	jp m,081e2h		;7614
	defb 0fdh,003h,0f8h ;illegal sequence	;7617
	add a,c			;761a
	cp 003h			;761b
	ret m			;761d
	sub (hl)		;761e
	and e			;761f
	ld (0f121h),a		;7620
	pop af			;7623
	ret pe			;7624
	ret m			;7625
	defb 0fdh,0fdh,0f5h ;illegal sequence	;7626
	push af			;7629
	ret m			;762a
	defb 0fdh,0f5h,0f8h ;illegal sequence	;762b
	defb 0fdh,0fdh,0f5h ;illegal sequence	;762e
	push af			;7631
	ret m			;7632
	defb 0fdh,0f5h,000h ;illegal sequence	;7633
	ld (bc),a		;7636
	rst 38h			;7637
	add a,c			;7638
	add a,b			;7639
	inc bc			;763a
	nop			;763b
	ex af,af'		;763c
	add a,b			;763d
	add a,a			;763e
	rst 38h			;763f
	nop			;7640
	ret p			;7641
	add a,b			;7642
	ret p			;7643
	add a,b			;7644
	add a,b			;7645
	dec b			;7646
	dec h			;7647
	add a,a			;7648
	rst 38h			;7649
	add a,e			;764a
	add a,e			;764b
	ld a,080h		;764c
	ret po			;764e
	rst 38h			;764f
	inc b			;7650
	cp 003h			;7651
	ld a,(hl)		;7653
	dec b			;7654
	push de			;7655
	adc a,e			;7656
	rst 38h			;7657
	nop			;7658
	nop			;7659
	rst 38h			;765a
	rrca			;765b
	ld c,00eh		;765c
	ret p			;765e
	cp 00eh			;765f
	cp 003h			;7661
	adc a,b			;7663
	adc a,b			;7664
	adc a,a			;7665
	adc a,b			;7666
	rst 30h			;7667
	rrca			;7668
	nop			;7669
	rst 38h			;766a
	nop			;766b
	nop			;766c
	dec b			;766d
	rst 38h			;766e
	add a,l			;766f
	add a,a			;7670
	call m,0fe86h		;7671
	inc bc			;7674
	inc bc			;7675
	ret nz			;7676
	ld (bc),a		;7677
	ld a,(hl)		;7678
	add a,c			;7679
	ld a,003h		;767a
	nop			;767c
	ld (bc),a		;767d
	rst 38h			;767e
	add a,d			;767f
	nop			;7680
	rst 38h			;7681
	ld b,0d0h		;7682
	inc b			;7684
	add a,b			;7685
	ld (bc),a		;7686
	adc a,a			;7687
	ld (bc),a		;7688
	adc a,b			;7689
	add a,l			;768a
	rst 38h			;768b
	nop			;768c
	nop			;768d
	rst 38h			;768e
	rst 38h			;768f
	inc bc			;7690
	add a,b			;7691
	add a,h			;7692
	cp 0c0h			;7693
	add a,b			;7695
	ld a,(hl)		;7696
	inc bc			;7697
	cp 081h			;7698
	nop			;769a
	inc b			;769b
	cp 005h			;769c
	ld a,(hl)		;769e
	add a,h			;769f
	ld (hl),b		;76a0
	ld bc,l7f0fh		;76a1
	inc bc			;76a4
	rst 38h			;76a5
	ld (bc),a		;76a6
	ld c,b			;76a7
	add a,(hl)		;76a8
	rst 38h			;76a9
	ld h,b			;76aa
	jr nz,l76ddh		;76ab
	jr c,l772bh		;76ad
	dec b			;76af
	add a,b			;76b0
	add a,h			;76b1
	ret po			;76b2
	rst 38h			;76b3
	rst 38h			;76b4
	rrca			;76b5
	inc b			;76b6
	dec b			;76b7
	add a,e			;76b8
	rlca			;76b9
	rst 38h			;76ba
	rst 38h			;76bb
	inc bc			;76bc
	ld a,a			;76bd
	add a,c			;76be
	rst 38h			;76bf
	inc b			;76c0
	nop			;76c1
	ex af,af'		;76c2
	add a,b			;76c3
	ld (bc),a		;76c4
	ld (bc),a		;76c5
	add a,(hl)		;76c6
	call m,sub_6effh	;76c7
	ld l,(hl)		;76ca
	nop			;76cb
	nop			;76cc
	inc bc			;76cd
	ld a,a			;76ce
	inc bc			;76cf
	ld a,d			;76d0
	ld (bc),a		;76d1
	nop			;76d2
	ld (bc),a		;76d3
	ld (bc),a		;76d4
	add a,d			;76d5
	call m,004ffh		;76d6
	nop			;76d9
	inc b			;76da
	rst 38h			;76db
	adc a,b			;76dc
l76ddh:
	cp 0f8h			;76dd
	nop			;76df
	nop			;76e0
	ccf			;76e1
	rlca			;76e2
	ld bc,005ffh		;76e3
	nop			;76e6
	rlca			;76e7
	ld a,a			;76e8
	nop			;76e9
	add a,c			;76ea
	jp p,09404h		;76eb
	add a,e			;76ee
	nop			;76ef
	jp (hl)			;76f0
	jp (hl)			;76f1
	inc b			;76f2
	sub h			;76f3
	ld (bc),a		;76f4
	ld b,b			;76f5
	ld (bc),a		;76f6
	ret p			;76f7
	ld (bc),a		;76f8
	ld sp,hl		;76f9
	ld (bc),a		;76fa
	sub h			;76fb
	add a,(hl)		;76fc
	nop			;76fd
	sub c			;76fe
	sub d			;76ff
	sbc a,d			;7700
	ld b,e			;7701
	ld bc,09403h		;7702
	add a,c			;7705
	ld b,b			;7706
	inc bc			;7707
	ret p			;7708
	add a,c			;7709
	sub b			;770a
	ld b,040h		;770b
	sub b			;770d
	ret po			;770e
	sbc a,a			;770f
	sbc a,a			;7710
	ld c,a			;7711
	rrca			;7712
	sub h			;7713
	sub h			;7714
	ret p			;7715
	ret p			;7716
	ld sp,hl		;7717
	sub h			;7718
	ld b,b			;7719
	sub b			;771a
	sub h			;771b
	sub h			;771c
	ld b,b			;771d
	inc bc			;771e
	sub h			;771f
	ld (bc),a		;7720
	ld b,b			;7721
	dec b			;7722
	ret p			;7723
	rlca			;7724
	inc b			;7725
	inc b			;7726
	ret p			;7727
	add a,d			;7728
	ld b,b			;7729
	sub h			;772a
l772bh:
	ld b,040h		;772b
	dec b			;772d
	rrca			;772e
	add a,c			;772f
	jp (hl)			;7730
	rrca			;7731
	sub h			;7732
	inc bc			;7733
	sub b			;7734
	dec b			;7735
	sub h			;7736
	inc bc			;7737
	sub b			;7738
	dec c			;7739
	ld b,b			;773a
	ld a,(bc)		;773b
	ret p			;773c
	add a,h			;773d
	call p,0f9f9h		;773e
	call p,0e904h		;7741
	ex af,af'		;7744
	call p,0f004h		;7745
	ld b,040h		;7748
	ld (bc),a		;774a
	rst 38h			;774b
	inc b			;774c
	sub h			;774d
	ld (bc),a		;774e
	ld b,b			;774f
	ld (bc),a		;7750
	rst 38h			;7751
	ld (bc),a		;7752
	sub h			;7753
	ld (bc),a		;7754
	ld b,b			;7755
	add a,c			;7756
	sub b			;7757
	inc bc			;7758
	rrca			;7759
	inc bc			;775a
	ld b,b			;775b
	add a,d			;775c
	call po,00390h		;775d
	rrca			;7760
	ld (bc),a		;7761
	sub h			;7762
	inc b			;7763
	ld b,b			;7764
	ld a,(bc)		;7765
	rrca			;7766
	add a,e			;7767
	call p,0f9f9h		;7768
	dec b			;776b
	ld b,b			;776c
	add a,h			;776d
	sbc a,c			;776e
	call po,090e4h		;776f
	inc b			;7772
	ld b,b			;7773
	nop			;7774
	add a,c			;7775
	jr l777fh		;7776
	sbc a,b			;7778
	sbc a,e			;7779
	cp 0fch			;777a
	call m,sub_7ff8h	;777c
l777fh:
	ld a,a			;777f
	ccf			;7780
	ccf			;7781
	ret m			;7782
	ret p			;7783
	ret p			;7784
	rra			;7785
	rra			;7786
	ccf			;7787
	ccf			;7788
	ld a,a			;7789
	ld h,b			;778a
	ld h,b			;778b
	rrca			;778c
	rrca			;778d
	add a,a			;778e
	add a,a			;778f
	inc bc			;7790
	inc bc			;7791
	ret p			;7792
	rst 38h			;7793
	ret nz			;7794
	dec b			;7795
	add a,b			;7796
	add a,h			;7797
	call m,080e0h		;7798
	nop			;779b
	inc b			;779c
	add a,b			;779d
	add a,e			;779e
	nop			;779f
	ei			;77a0
	ei			;77a1
	dec b			;77a2
	ld (bc),a		;77a3
	adc a,b			;77a4
	cp a			;77a5
	adc a,a			;77a6
	add a,e			;77a7
	cp a			;77a8
	adc a,a			;77a9
	add a,e			;77aa
	add a,b			;77ab
	nop			;77ac
	ex af,af'		;77ad
	add a,b			;77ae
	add a,c			;77af
	ret p			;77b0
	inc bc			;77b1
	ret nz			;77b2
	inc bc			;77b3
	jr nz,l77b8h		;77b4
	rst 38h			;77b6
	dec b			;77b7
l77b8h:
	inc bc			;77b8
	add a,e			;77b9
	rst 38h			;77ba
	nop			;77bb
	inc e			;77bc
	rlca			;77bd
	dec e			;77be
	ld (bc),a		;77bf
	ld c,b			;77c0
	add a,(hl)		;77c1
	or (hl)			;77c2
	adc a,l			;77c3
	defb 0fdh,0fbh,0fbh ;illegal sequence	;77c4
	ld sp,hl		;77c7
	inc bc			;77c8
	ret nz			;77c9
	add a,c			;77ca
	rra			;77cb
	inc bc			;77cc
	ret nz			;77cd
	rlca			;77ce
	ld a,a			;77cf
	ld (bc),a		;77d0
l77d1h:
	ret p			;77d1
	ld (bc),a		;77d2
	ld e,l			;77d3
	ld (bc),a		;77d4
	ret p			;77d5
	add a,c			;77d6
	rst 38h			;77d7
	inc bc			;77d8
	ret po			;77d9
	add a,a			;77da
	ld h,b			;77db
	add a,b			;77dc
	jr nz,l785eh		;77dd
	ccf			;77df
	ld h,b			;77e0
	rra			;77e1
	add hl,bc		;77e2
	dec d			;77e3
	sub b			;77e4
	rla			;77e5
	rra			;77e6
	rra			;77e7
	djnz l77f9h		;77e8
	rra			;77ea
	add a,b			;77eb
	rst 38h			;77ec
	ret c			;77ed
	ld a,b			;77ee
	jr l77d1h		;77ef
	ret m			;77f1
	ret m			;77f2
	ld bc,008ffh		;77f3
	ld e,b			;77f6
	add a,l			;77f7
	rrca			;77f8
l77f9h:
	rst 38h			;77f9
	rlca			;77fa
	ld a,e			;77fb
	inc bc			;77fc
l77fdh:
	inc bc			;77fd
	dec sp			;77fe
	sub c			;77ff
	nop			;7800
	rlca			;7801
	rlca			;7802
	ex af,af'		;7803
	rrca			;7804
	rlca			;7805
	rlca			;7806
	inc bc			;7807
	nop			;7808
	ret po			;7809
	ret po			;780a
	djnz l77fdh		;780b
	ret po			;780d
	ret po			;780e
	ret nz			;780f
	ld sp,02506h		;7810
	add a,c			;7813
	rst 38h			;7814
	inc bc			;7815
	ret nz			;7816
	add a,c			;7817
	add a,b			;7818
	inc bc			;7819
	ld a,(hl)		;781a
	add a,d			;781b
	nop			;781c
	ld b,b			;781d
	rlca			;781e
	ld c,a			;781f
	ld (bc),a		;7820
	nop			;7821
	adc a,c			;7822
	rst 38h			;7823
	nop			;7824
	nop			;7825
	rst 38h			;7826
	nop			;7827
	nop			;7828
	ld a,a			;7829
	nop			;782a
	nop			;782b
	dec b			;782c
	ld a,a			;782d
	ld (bc),a		;782e
	xor b			;782f
	adc a,c			;7830
	xor c			;7831
	defb 0fdh,00bh,009h ;illegal sequence	;7832
	ld c,c			;7835
	xor e			;7836
	ret c			;7837
	rst 38h			;7838
	nop			;7839
	dec b			;783a
	ret m			;783b
	add a,d			;783c
	ld c,002h		;783d
	dec b			;783f
	ld bc,0ff82h		;7840
	ret m			;7843
	inc b			;7844
	dec b			;7845
	ld (bc),a		;7846
	rrca			;7847
	add a,h			;7848
	ld (hl),b		;7849
	rst 38h			;784a
	nop			;784b
	nop			;784c
	inc bc			;784d
	rst 38h			;784e
	dec bc			;784f
	cp e			;7850
	add a,c			;7851
	xor d			;7852
	inc bc			;7853
	ld b,h			;7854
	ld (bc),a		;7855
	nop			;7856
	add a,c			;7857
	rst 38h			;7858
	inc b			;7859
	ret po			;785a
	ld (bc),a		;785b
	ccf			;785c
	ld (bc),a		;785d
l785eh:
	ld a,a			;785e
	adc a,b			;785f
	pop bc			;7860
l7861h:
	jr c,l7861h		;7861
	ld a,h			;7863
	cp 038h			;7864
l7866h:
	jr c,l7866h		;7866
	inc bc			;7868
	ret nz			;7869
	add a,c			;786a
	ret m			;786b
	inc bc			;786c
	ret nz			;786d
	adc a,d			;786e
	cp 0fch			;786f
	ret p			;7871
	jp 0f202h		;7872
	jp nz,0ff02h		;7875
	nop			;7878
	ld b,0fah		;7879
	add a,c			;787b
	nop			;787c
	ld b,0d0h		;787d
	add a,d			;787f
	rst 38h			;7880
	add a,b			;7881
	dec b			;7882
	ld b,003h		;7883
	add hl,bc		;7885
	inc b			;7886
	ret nc			;7887
	adc a,a			;7888
	call po,04444h		;7889
	call po,07fc0h		;788c
	ld a,a			;788f
	ccf			;7890
	rra			;7891
	rrca			;7892
	rra			;7893
	jr nz,l7912h		;7894
	cp 038h			;7896
	inc bc			;7898
	nop			;7899
	sbc a,c			;789a
	rst 0			;789b
	ld a,00eh		;789c
	ld c,016h		;789e
	ld d,029h		;78a0
	rst 38h			;78a2
	add a,c			;78a3
	ld bc,00103h		;78a4
	ld bc,0f8fch		;78a7
	ret p			;78aa
	ret m			;78ab
	inc b			;78ac
	nop			;78ad
	nop			;78ae
	rst 38h			;78af
	nop			;78b0
	nop			;78b1
	call m,00506h		;78b2
	ret m			;78b5
	ld (bc),a		;78b6
	call m,0fe03h		;78b7
	adc a,a			;78ba
	ld a,(hl)		;78bb
	ld a,000h		;78bc
	ld e,08eh		;78be
	adc a,(hl)		;78c0
	ld c,0f8h		;78c1
	dec b			;78c3
	rlca			;78c4
	dec c			;78c5
	add hl,bc		;78c6
	add hl,bc		;78c7
	rrca			;78c8
	add hl,bc		;78c9
	ex af,af'		;78ca
	add a,b			;78cb
	sub b			;78cc
	ld a,a			;78cd
	ccf			;78ce
	ccf			;78cf
	cp 0feh			;78d0
	inc bc			;78d2
	inc bc			;78d3
	rlca			;78d4
	cp 0feh			;78d5
	add a,b			;78d7
	add a,b			;78d8
	ret nz			;78d9
	ret nz			;78da
	ret po			;78db
	ret po			;78dc
	nop			;78dd
	rlca			;78de
	ld b,b			;78df
	add a,c			;78e0
	rrca			;78e1
	inc bc			;78e2
	call p,0f083h		;78e3
	ld b,d			;78e6
	ld (bc),a		;78e7
	inc b			;78e8
	jp p,09282h		;78e9
	jr nz,l78f4h		;78ec
	cpl			;78ee
	add a,d			;78ef
	ld b,d			;78f0
	ld (bc),a		;78f1
	ld b,0f2h		;78f2
l78f4h:
	add a,e			;78f4
	call p,0fef9h		;78f5
	inc b			;78f8
	ld sp,hl		;78f9
	inc bc			;78fa
	cp 008h			;78fb
	jp (hl)			;78fd
	rlca			;78fe
	sub h			;78ff
	rrca			;7900
	ld b,b			;7901
	add a,d			;7902
	sub b			;7903
	ld b,b			;7904
	ld b,0f0h		;7905
	add a,c			;7907
	inc b			;7908
	inc bc			;7909
	ret p			;790a
	add hl,bc		;790b
	sbc a,(hl)		;790c
	inc bc			;790d
	ld c,c			;790e
	ld b,040h		;790f
	adc a,e			;7911
l7912h:
	jp (hl)			;7912
	sub h			;7913
	rrca			;7914
	ld b,d			;7915
	jp (hl)			;7916
	sub h			;7917
	rrca			;7918
	ld b,d			;7919
	sbc a,(hl)		;791a
	sbc a,(hl)		;791b
	ld c,c			;791c
	inc bc			;791d
	inc b			;791e
	add a,l			;791f
	ret p			;7920
	ld c,a			;7921
	and e			;7922
	rst 38h			;7923
	sub h			;7924
	ld b,0e9h		;7925
	add a,c			;7927
	sub b			;7928
	inc bc			;7929
	and e			;792a
	add a,c			;792b
	ld (0f20ch),a		;792c
	ld (bc),a		;792f
	ld (de),a		;7930
	ld (bc),a		;7931
	ld (0f105h),a		;7932
	add a,e			;7935
	ld hl,03131h		;7936
	inc c			;7939
	pop af			;793a
	ex af,af'		;793b
	ret p			;793c
	add a,c			;793d
	sub b			;793e
	rlca			;793f
	ret p			;7940
	add a,c			;7941
	ld b,b			;7942
	ld (de),a		;7943
	ret p			;7944
	add a,h			;7945
	ld c,a			;7946
	rrca			;7947
	rrca			;7948
	jp (hl)			;7949
	ld b,094h		;794a
	ld (bc),a		;794c
	ld b,b			;794d
	inc bc			;794e
	jp (hl)			;794f
	inc bc			;7950
	inc b			;7951
	dec b			;7952
	sbc a,(hl)		;7953
	inc b			;7954
	ld c,c			;7955
	add a,c			;7956
	call p,0f003h		;7957
	adc a,c			;795a
	ret m			;795b
	cp 0f8h			;795c
	push af			;795e
	ld (0f0f0h),a		;795f
	ld b,b			;7962
	sub h			;7963
	dec b			;7964
	ld b,b			;7965
	ld b,0f0h		;7966
	add a,e			;7968
	sub b			;7969
	ld sp,hl		;796a
	call p,0f003h		;796b
	add a,h			;796e
	ld c,a			;796f
	ld b,b			;7970
	sub b			;7971
	sub b			;7972
	inc bc			;7973
	and e			;7974
	sub a			;7975
	ld (0fdf5h),hl		;7976
	defb 0fdh,0f8h,0feh ;illegal sequence	;7979
	cp 0f8h			;797c
	cp 0f8h			;797e
	ret m			;7980
	defb 0fdh,0f5h,0f1h ;illegal sequence	;7981
	ld (de),a		;7984
	inc hl			;7985
	inc hl			;7986
	pop af			;7987
	pop af			;7988
	jr nz,l79c4h		;7989
	xor (hl)		;798b
	add hl,sp		;798c
	inc bc			;798d
	ld b,d			;798e
	sub c			;798f
	ld bc,04090h		;7990
	ld b,b			;7993
	sub h			;7994
	sub h			;7995
	jp (hl)			;7996
	jp (hl)			;7997
	sub h			;7998
	jp (hl)			;7999
	sub h			;799a
	rrca			;799b
	ld b,d			;799c
	jp (hl)			;799d
	sub h			;799e
	rrca			;799f
	ld b,d			;79a0
	inc b			;79a1
	sub h			;79a2
	inc bc			;79a3
	ld b,b			;79a4
	ld (bc),a		;79a5
	ret p			;79a6
	add a,e			;79a7
	sub h			;79a8
	jp (hl)			;79a9
	sub h			;79aa
	inc b			;79ab
	ld b,b			;79ac
	ld (bc),a		;79ad
	ld (09403h),a		;79ae
	adc a,b			;79b1
	ld b,b			;79b2
	ret p			;79b3
	ret p			;79b4
	sub b			;79b5
	ret po			;79b6
	sub b			;79b7
	ld b,b			;79b8
	ld b,b			;79b9
	inc bc			;79ba
	ret p			;79bb
	add a,c			;79bc
	jp (hl)			;79bd
	inc bc			;79be
	sub h			;79bf
	adc a,l			;79c0
	ret m			;79c1
	cp 0f8h			;79c2
l79c4h:
	push af			;79c4
	sub d			;79c5
	xor c			;79c6
	inc d			;79c7
	call p,0f0f0h		;79c8
	sub b			;79cb
	ret p			;79cc
	sub h			;79cd
	dec b			;79ce
	ld b,b			;79cf
	sub e			;79d0
	ret p			;79d1
	call p,04090h		;79d2
	add a,b			;79d5
	ret nc			;79d6
	ret p			;79d7
	ret p			;79d8
	call p,092f4h		;79d9
	sub d			;79dc
	ld b,c			;79dd
	call p,0f0f0h		;79de
	ld b,b			;79e1
	ret p			;79e2
	ret p			;79e3
	inc bc			;79e4
	jp (hl)			;79e5
	inc bc			;79e6
	inc b			;79e7
	add a,l			;79e8
	ret po			;79e9
	ld (bc),a		;79ea
	sub e			;79eb
	jp pe,00493h		;79ec
	ld b,d			;79ef
	adc a,h			;79f0
	sub h			;79f1
	sub b			;79f2
	ld b,b			;79f3
	ld b,b			;79f4
	ret p			;79f5
	ld b,b			;79f6
	ld b,b			;79f7
	ret p			;79f8
	sub b			;79f9
	cp 0feh			;79fa
	ld sp,hl		;79fc
	rrca			;79fd
	call p,0f383h		;79fe
	sub d			;7a01
	jr nz,l7a08h		;7a02
	cpl			;7a04
	ld b,042h		;7a05
	nop			;7a07
l7a08h:
	sub l			;7a08
	ex af,af'		;7a09
	inc e			;7a0a
	sbc a,(hl)		;7a0b
	rrca			;7a0c
	add hl,bc		;7a0d
	rrca			;7a0e
	inc e			;7a0f
	inc e			;7a10
	add a,b			;7a11
	ld (hl),e		;7a12
	rrca			;7a13
	rrca			;7a14
	xor a			;7a15
	xor a			;7a16
	ret po			;7a17
	rst 38h			;7a18
	ld a,e			;7a19
	dec e			;7a1a
	call p,0ff6eh		;7a1b
	inc bc			;7a1e
	ld e,a			;7a1f
	add a,l			;7a20
	sbc a,(hl)		;7a21
	inc a			;7a22
	ld a,h			;7a23
	di			;7a24
	rst 38h			;7a25
	inc bc			;7a26
	ret pe			;7a27
	adc a,b			;7a28
	ccf			;7a29
	inc sp			;7a2a
	inc sp			;7a2b
	or e			;7a2c
	or e			;7a2d
	ld l,l			;7a2e
	ld hl,00321h		;7a2f
	ret p			;7a32
	add a,l			;7a33
	rst 38h			;7a34
	ld a,a			;7a35
	ld a,a			;7a36
	pop de			;7a37
	pop de			;7a38
	inc bc			;7a39
	ret m			;7a3a
	add a,l			;7a3b
	nop			;7a3c
	ld bc,0edffh		;7a3d
	defb 0edh ;next byte illegal after ed	;7a40
	inc bc			;7a41
	ret p			;7a42
	add a,l			;7a43
	nop			;7a44
	ret nz			;7a45
	rst 38h			;7a46
	ret p			;7a47
	rst 38h			;7a48
	ld b,087h		;7a49
	add a,a			;7a4b
	add a,c			;7a4c
	rst 38h			;7a4d
	rst 38h			;7a4e
	ld (bc),a		;7a4f
	call m,0ff82h		;7a50
	inc bc			;7a53
	ld e,b			;7a54
	adc a,b			;7a55
	inc e			;7a56
	ret po			;7a57
	rlca			;7a58
	ld b,00fh		;7a59
	rra			;7a5b
	ld e,013h		;7a5c
	inc bc			;7a5e
	ld d,h			;7a5f
	add a,c			;7a60
	rst 38h			;7a61
	inc bc			;7a62
	ld l,08ah		;7a63
	rst 38h			;7a65
	pop bc			;7a66
	add a,e			;7a67
	rlca			;7a68
	rrca			;7a69
	sbc a,c			;7a6a
	pop af			;7a6b
	ld d,c			;7a6c
	ld d,c			;7a6d
	ret p			;7a6e
	inc bc			;7a6f
	ret nz			;7a70
	adc a,(hl)		;7a71
	call m,000feh		;7a72
	call m,0ffffh		;7a75
	rra			;7a78
	inc a			;7a79
	ret p			;7a7a
	ret nz			;7a7b
	nop			;7a7c
	nop			;7a7d
	ret p			;7a7e
	ret nz			;7a7f
	add hl,bc		;7a80
	nop			;7a81
	inc bc			;7a82
	rra			;7a83
	add a,h			;7a84
	rst 38h			;7a85
	nop			;7a86
	ret p			;7a87
	ret nz			;7a88
	inc bc			;7a89
	nop			;7a8a
	sub l			;7a8b
	ret nz			;7a8c
	ret po			;7a8d
	ret p			;7a8e
	add a,b			;7a8f
	add a,b			;7a90
	rst 38h			;7a91
	ld d,d			;7a92
	rst 38h			;7a93
	rlca			;7a94
	rlca			;7a95
	nop			;7a96
	ld bc,0ffffh		;7a97
	ld c,d			;7a9a
	rst 38h			;7a9b
	ret nc			;7a9c
	ret nc			;7a9d
	nop			;7a9e
	xor a			;7a9f
	nop			;7aa0
	inc b			;7aa1
	cp 081h			;7aa2
	nop			;7aa4
	add hl,bc		;7aa5
	ld d,b			;7aa6
	ld (bc),a		;7aa7
	ld d,c			;7aa8
	sub (hl)		;7aa9
	pop af			;7aaa
	sbc a,a			;7aab
	rrca			;7aac
	rlca			;7aad
	add a,e			;7aae
	pop bc			;7aaf
	dec b			;7ab0
	add a,l			;7ab1
	push hl			;7ab2
	rst 38h			;7ab3
	ret po			;7ab4
	rst 38h			;7ab5
	ret nz			;7ab6
	ret nz			;7ab7
	ld h,c			;7ab8
	inc sp			;7ab9
	inc c			;7aba
	inc a			;7abb
	ccf			;7abc
	nop			;7abd
	ccf			;7abe
	nop			;7abf
	inc b			;7ac0
	rst 38h			;7ac1
	inc b			;7ac2
	nop			;7ac3
	add a,d			;7ac4
	ret po			;7ac5
	ld bc,00304h		;7ac6
	sbc a,d			;7ac9
	rst 38h			;7aca
	inc e			;7acb
	rst 38h			;7acc
	ret p			;7acd
	add a,0cah		;7ace
	ei			;7ad0
	ei			;7ad1
	jp m,00f9bh		;7ad2
	ld l,a			;7ad5
	xor a			;7ad6
	cp a			;7ad7
	rst 18h			;7ad8
	ld d,e			;7ad9
	ld d,e			;7ada
	ld (hl),e		;7adb
	sbc a,(hl)		;7adc
	call m,0cdcch		;7add
	call 084b6h		;7ae0
	add a,h			;7ae3
	inc bc			;7ae4
	ld a,087h		;7ae5
	ld sp,hl		;7ae7
	rst 20h			;7ae8
	rst 38h			;7ae9
	rrca			;7aea
	rst 38h			;7aeb
	ld d,c			;7aec
	rst 38h			;7aed
	inc b			;7aee
	ret nz			;7aef
	adc a,b			;7af0
	rst 38h			;7af1
	ld d,c			;7af2
	call m,0c0f0h		;7af3
	ret p			;7af6
	ccf			;7af7
	rst 38h			;7af8
	dec b			;7af9
	nop			;7afa
	add a,h			;7afb
	inc bc			;7afc
	add a,b			;7afd
	nop			;7afe
	ret p			;7aff
	inc b			;7b00
	nop			;7b01
	ld (bc),a		;7b02
	rst 38h			;7b03
	inc bc			;7b04
	cp 003h			;7b05
	nop			;7b07
	xor l			;7b08
	rst 38h			;7b09
	inc a			;7b0a
	jp 04242h		;7b0b
	rst 38h			;7b0e
	nop			;7b0f
	ld a,07fh		;7b10
	nop			;7b12
	add a,b			;7b13
	inc sp			;7b14
	ld h,c			;7b15
	rst 38h			;7b16
	ld bc,0e0fch		;7b17
	cp 0f8h			;7b1a
	ret nz			;7b1c
	ld bc,0feffh		;7b1d
	ret m			;7b20
	call p,0e1e2h		;7b21
	pop de			;7b24
	adc a,b			;7b25
	rst 38h			;7b26
	ld a,a			;7b27
	rra			;7b28
	cpl			;7b29
	ld b,a			;7b2a
	add a,a			;7b2b
	adc a,e			;7b2c
	ld de,0ffffh		;7b2d
	defb 0fdh,0fdh,0d8h ;illegal sequence	;7b30
	ret z			;7b33
	call nz,00484h		;7b34
	rst 38h			;7b37
	adc a,h			;7b38
	rrca			;7b39
	inc bc			;7b3a
	ld a,a			;7b3b
	ld a,0ffh		;7b3c
	rst 38h			;7b3e
	cp a			;7b3f
	cp a			;7b40
	dec de			;7b41
	inc de			;7b42
	inc hl			;7b43
	ld hl,0ff04h		;7b44
	add a,h			;7b47
	adc a,003h		;7b48
	inc bc			;7b4a
	jr c,l7b51h		;7b4b
	rst 38h			;7b4d
	add a,h			;7b4e
	ret p			;7b4f
	ret nz			;7b50
l7b51h:
	ld a,a			;7b51
	ret p			;7b52
	inc b			;7b53
	rst 38h			;7b54
	add a,h			;7b55
	rst 30h			;7b56
	rst 8			;7b57
	rra			;7b58
	inc c			;7b59
	dec b			;7b5a
	rst 38h			;7b5b
	add a,e			;7b5c
	call m,000e0h		;7b5d
	inc bc			;7b60
	rst 38h			;7b61
	adc a,l			;7b62
	ei			;7b63
	rst 20h			;7b64
	rst 0			;7b65
	add a,b			;7b66
	rra			;7b67
	rst 38h			;7b68
	rst 38h			;7b69
	jp (hl)			;7b6a
	add a,c			;7b6b
	ld a,(hl)		;7b6c
	ld a,(hl)		;7b6d
	add a,e			;7b6e
	ld a,b			;7b6f
	inc b			;7b70
	rst 38h			;7b71
	adc a,d			;7b72
	call m,0c0f0h		;7b73
	call m,0ffffh		;7b76
	ld sp,hl		;7b79
	sbc a,0deh		;7b7a
	ld sp,hl		;7b7c
	inc b			;7b7d
	rst 38h			;7b7e
	add a,h			;7b7f
	sbc a,a			;7b80
	ld a,e			;7b81
	ld a,e			;7b82
	sbc a,a			;7b83
	ex af,af'		;7b84
	rst 38h			;7b85
	add a,h			;7b86
	add a,c			;7b87
	push de			;7b88
	rst 38h			;7b89
	cp 003h			;7b8a
	call m,0fe03h		;7b8c
	dec b			;7b8f
	rst 38h			;7b90
	add a,e			;7b91
	call m,0c0f0h		;7b92
	dec b			;7b95
	rst 38h			;7b96
	adc a,h			;7b97
	ccf			;7b98
	rrca			;7b99
	inc bc			;7b9a
	add a,b			;7b9b
	add a,b			;7b9c
	ld bc,00301h		;7b9d
	inc bc			;7ba0
	rlca			;7ba1
	rlca			;7ba2
	nop			;7ba3
	inc bc			;7ba4
	ret p			;7ba5
	ld (bc),a		;7ba6
	ret po			;7ba7
	ld (bc),a		;7ba8
	ret nz			;7ba9
	ld (bc),a		;7baa
	nop			;7bab
	inc bc			;7bac
	rst 38h			;7bad
	sbc a,h			;7bae
	ret nz			;7baf
	sbc a,a			;7bb0
	xor b			;7bb1
	ld sp,hl		;7bb2
	ret m			;7bb3
	ret m			;7bb4
	call m,000fch		;7bb5
	or a			;7bb8
	scf			;7bb9
	rst 38h			;7bba
	call m,0c0f0h		;7bbb
	call m,0c0f0h		;7bbe
	call m,03fffh		;7bc1
	rrca			;7bc4
	inc bc			;7bc5
	ld a,00eh		;7bc6
	ld (bc),a		;7bc8
	ld a,000h		;7bc9
	inc bc			;7bcb
	ret p			;7bcc
	ld (bc),a		;7bcd
	rlca			;7bce
	inc bc			;7bcf
	inc bc			;7bd0
	add a,c			;7bd1
	defb 0fdh,005h,0f8h ;illegal sequence	;7bd2
	add a,c			;7bd5
	ld e,b			;7bd6
	nop			;7bd7
	ld (bc),a		;7bd8
	jp (hl)			;7bd9
	ld (bc),a		;7bda
	sub h			;7bdb
	ld (bc),a		;7bdc
	call p,0e481h		;7bdd
	inc bc			;7be0
	sub h			;7be1
	sub b			;7be2
	sub b			;7be3
	rrca			;7be4
	ret m			;7be5
	dec e			;7be6
	ld hl,0f3f3h		;7be7
	jp p,0f6f1h		;7bea
	or 0a3h			;7bed
	ld (0f321h),a		;7bef
	jp p,0f103h		;7bf2
	adc a,e			;7bf5
	ld (01f21h),a		;7bf6
	ret m			;7bf9
	ret m			;7bfa
	defb 0fdh,0fdh,0f5h ;illegal sequence	;7bfb
	cp 0f8h			;7bfe
	push af			;7c00
	inc bc			;7c01
	ret pe			;7c02
	ld (bc),a		;7c03
	push de			;7c04
	add a,e			;7c05
	rst 38h			;7c06
	ret c			;7c07
	rst 38h			;7c08
	inc b			;7c09
	push de			;7c0a
	ld (bc),a		;7c0b
	push af			;7c0c
	add a,d			;7c0d
	push de			;7c0e
	rst 38h			;7c0f
	inc bc			;7c10
	ret c			;7c11
	dec b			;7c12
	push af			;7c13
	dec b			;7c14
	ret c			;7c15
	sbc a,e			;7c16
	ld e,l			;7c17
	push af			;7c18
	push af			;7c19
	sub h			;7c1a
	sub h			;7c1b
	ret p			;7c1c
	defb 0fdh,0fdh,032h ;illegal sequence	;7c1d
	and e			;7c20
	rst 38h			;7c21
	sub h			;7c22
	ld b,b			;7c23
	call p,090e4h		;7c24
	sub b			;7c27
	ld b,b			;7c28
	ret p			;7c29
	ld sp,hl		;7c2a
	call p,0f0f0h		;7c2b
	ret c			;7c2e
	rst 38h			;7c2f
	inc b			;7c30
	inc b			;7c31
	inc b			;7c32
	ld sp,hl		;7c33
	adc a,e			;7c34
	defb 0fdh,0feh,0f8h ;illegal sequence	;7c35
	jp (iy)			;7c38
	jp (hl)			;7c3a
	nop			;7c3b
	ld (hl),010h		;7c3c
	jp (hl)			;7c3e
	jp (hl)			;7c3f
	inc bc			;7c40
	sub h			;7c41
	add a,c			;7c42
	sub b			;7c43
	rrca			;7c44
	sub h			;7c45
	inc bc			;7c46
	sbc a,(hl)		;7c47
	add a,e			;7c48
	add hl,bc		;7c49
	call p,004f4h		;7c4a
	sub h			;7c4d
	inc b			;7c4e
	ret p			;7c4f
	add a,c			;7c50
	jp p,0f104h		;7c51
	add a,e			;7c54
	ld (02121h),a		;7c55
	dec b			;7c58
	pop af			;7c59
	add a,c			;7c5a
	ld hl,01f04h		;7c5b
	sub d			;7c5e
	jp (hl)			;7c5f
	sub b			;7c60
	ld b,b			;7c61
	rrca			;7c62
	rrca			;7c63
	pop af			;7c64
	jp p,0faf3h		;7c65
	jp m,0f2f3h		;7c68
	jp p,0f8f1h		;7c6b
	defb 0fdh,0f5h,0feh ;illegal sequence	;7c6e
	dec b			;7c71
	ld sp,hl		;7c72
	add a,(hl)		;7c73
	call p,0f0f0h		;7c74
	cp 0feh			;7c77
	ld sp,hl		;7c79
	inc bc			;7c7a
	call p,0f984h		;7c7b
	jp (hl)			;7c7e
	sub h			;7c7f
	sub h			;7c80
	dec bc			;7c81
	ld b,b			;7c82
	adc a,l			;7c83
	call p,0f9feh		;7c84
	ld sp,hl		;7c87
	ret p			;7c88
	ret p			;7c89
	call po,0fefeh		;7c8a
	ret m			;7c8d
	defb 0fdh,0f8h,0f8h ;illegal sequence	;7c8e
	inc bc			;7c91
	cp 082h			;7c92
	ret m			;7c94
	defb 0fdh,003h,0f8h ;illegal sequence	;7c95
	add a,c			;7c98
	cp 004h			;7c99
	ret m			;7c9b
	add a,h			;7c9c
	defb 0fdh,0f5h,0feh ;illegal sequence	;7c9d
	ret m			;7ca0
	dec bc			;7ca1
	push af			;7ca2
	ld (bc),a		;7ca3
	cp 083h			;7ca4
	ld sp,hl		;7ca6
	call p,003f4h		;7ca7
	cp 083h			;7caa
	ret p			;7cac
	and e			;7cad
	ld h,e			;7cae
	inc bc			;7caf
	jp (hl)			;7cb0
	inc b			;7cb1
	sbc a,a			;7cb2
	ld (bc),a		;7cb3
	cp 002h			;7cb4
	jp (hl)			;7cb6
	inc b			;7cb7
	sbc a,a			;7cb8
	ld (bc),a		;7cb9
	rst 28h			;7cba
	ld b,09fh		;7cbb
	inc bc			;7cbd
	cp 003h			;7cbe
	ld sp,hl		;7cc0
	add a,l			;7cc1
l7cc2h:
	jp (hl)			;7cc2
	sub h			;7cc3
	sub h			;7cc4
	call po,003feh		;7cc5
	ld sp,hl		;7cc8
	ld (bc),a		;7cc9
	sub h			;7cca
	inc bc			;7ccb
	ld b,b			;7ccc
	ld (bc),a		;7ccd
	ret p			;7cce
	add a,c			;7ccf
	cp 003h			;7cd0
	ret m			;7cd2
	ld (bc),a		;7cd3
	defb 0fdh,002h,0f5h ;illegal sequence	;7cd4
	add a,c			;7cd7
	cp 003h			;7cd8
	ret m			;7cda
	ld (bc),a		;7cdb
	defb 0fdh,003h,0f5h ;illegal sequence	;7cdc
	add a,l			;7cdf
	cp 0f8h			;7ce0
	ret m			;7ce2
	defb 0fdh,0fdh,007h ;illegal sequence	;7ce3
	push af			;7ce6
	add a,c			;7ce7
	ret c			;7ce8
	inc bc			;7ce9
	push af			;7cea
	add a,l			;7ceb
	cp 0f8h			;7cec
	ret m			;7cee
	defb 0fdh,0fdh,006h ;illegal sequence	;7cef
	push af			;7cf2
	add a,e			;7cf3
	push de			;7cf4
	ld e,a			;7cf5
	push de			;7cf6
	ld b,0f8h		;7cf7
	add a,d			;7cf9
	ret pe			;7cfa
	ret c			;7cfb
	rlca			;7cfc
	ret m			;7cfd
	ld b,0fdh		;7cfe
	rlca			;7d00
l7d01h:
	cp 083h			;7d01
	ret m			;7d03
	defb 0fdh,0f5h,003h ;illegal sequence	;7d04
	cp 086h			;7d07
	ret m			;7d09
	defb 0fdh,0fdh,015h ;illegal sequence	;7d0a
	sub 0e8h		;7d0d
	dec b			;7d0f
	di			;7d10
	ld (bc),a		;7d11
	cp 081h			;7d12
	jp (hl)			;7d14
	inc bc			;7d15
	jp m,03182h		;7d16
	ld h,c			;7d19
	dec b			;7d1a
	or 083h			;7d1b
l7d1dh:
	jp m,l6131h		;7d1d
	add hl,bc		;7d20
	or 085h			;7d21
	ld sp,hl		;7d23
	ret po			;7d24
	ret p			;7d25
	ret p			;7d26
	cp 015h			;7d27
	ld sp,hl		;7d29
	add a,e			;7d2a
	di			;7d2b
	ld a,(00643h)		;7d2c
	ld b,d			;7d2f
	add a,(hl)		;7d30
	and e			;7d31
	ld a,(de)		;7d32
	di			;7d33
	jp p,092f2h		;7d34
	dec b			;7d37
	ld bc,0f503h		;7d38
	add a,h			;7d3b
	ret p			;7d3c
	ld b,b			;7d3d
	sub b			;7d3e
	sub b			;7d3f
	dec b			;7d40
	ld b,b			;7d41
	inc b			;7d42
	ld sp,hl		;7d43
	inc bc			;7d44
	sub h			;7d45
	add a,c			;7d46
	ld b,b			;7d47
	inc b			;7d48
	ld sp,hl		;7d49
	inc bc			;7d4a
	sub h			;7d4b
	sub c			;7d4c
	ld b,b			;7d4d
	ld (0a132h),a		;7d4e
	ccf			;7d51
	jp p,042f2h		;7d52
	ld (bc),a		;7d55
	add hl,bc		;7d56
	add hl,bc		;7d57
	ld sp,0a1a1h		;7d58
	ld hl,0f1f1h		;7d5b
	nop			;7d5e
	inc b			;7d5f
	rst 38h			;7d60
	ld (bc),a		;7d61
	ld a,a			;7d62
	dec b			;7d63
	rst 38h			;7d64
	add a,c			;7d65
	rlca			;7d66
	inc bc			;7d67
	ld a,a			;7d68
	dec b			;7d69
	and h			;7d6a
	inc bc			;7d6b
	ld a,a			;7d6c
	add a,c			;7d6d
	ld (hl),b		;7d6e
	nop			;7d6f
	dec b			;7d70
	ld sp,hl		;7d71
	ld b,0f4h		;7d72
	adc a,l			;7d74
	ld sp,hl		;7d75
	sub h			;7d76
	ld b,b			;7d77
	rrca			;7d78
	sub c			;7d79
	sub d			;7d7a
	ld c,d			;7d7b
	inc bc			;7d7c
	ld bc,04090h		;7d7d
	rrca			;7d80
	rrca			;7d81
	nop			;7d82
	ld (bc),a		;7d83
	cp 002h			;7d84
	call m,0f802h		;7d86
	ld (bc),a		;7d89
	ret p			;7d8a
	inc bc			;7d8b
	ret po			;7d8c
	add a,h			;7d8d
	ret p			;7d8e
	ret po			;7d8f
	ret po			;7d90
	rst 38h			;7d91
	inc bc			;7d92
	ret m			;7d93
	rlca			;7d94
	ret po			;7d95
	rlca			;7d96
	add a,b			;7d97
	add a,d			;7d98
	ret p			;7d99
	nop			;7d9a
	inc b			;7d9b
	call m,00006h		;7d9c
	sub h			;7d9f
	ld bc,00300h		;7da0
	inc bc			;7da3
	ld a,a			;7da4
	rlca			;7da5
	or 0f6h			;7da6
	call pe,0f80ch		;7da8
	ret m			;7dab
	ret p			;7dac
	ret p			;7dad
	ret po			;7dae
	ret po			;7daf
	ret nz			;7db0
	ret nz			;7db1
	add a,b			;7db2
	add a,b			;7db3
	ex af,af'		;7db4
	nop			;7db5
	ld (bc),a		;7db6
	cp 081h			;7db7
	add a,003h		;7db9
	sub 085h		;7dbb
	add a,0feh		;7dbd
	ret po			;7dbf
	ret po			;7dc0
	ret nz			;7dc1
	inc bc			;7dc2
	ret po			;7dc3
	add a,c			;7dc4
	ld a,a			;7dc5
	inc bc			;7dc6
	nop			;7dc7
	adc a,(hl)		;7dc8
	ret po			;7dc9
	ld h,b			;7dca
	ret nz			;7dcb
	add a,b			;7dcc
	nop			;7dcd
	nop			;7dce
	cp 0feh			;7dcf
	ccf			;7dd1
	add a,b			;7dd2
	ld bc,0f001h		;7dd3
	ret p			;7dd6
	inc b			;7dd7
	rst 38h			;7dd8
	inc b			;7dd9
	nop			;7dda
	ld (bc),a		;7ddb
	rst 38h			;7ddc
	add a,(hl)		;7ddd
	rrca			;7dde
	sbc a,a			;7ddf
	inc (hl)		;7de0
	ld c,h			;7de1
	ld h,h			;7de2
	exx			;7de3
	ld b,0e7h		;7de4
	adc a,(hl)		;7de6
	ld a,a			;7de7
	ccf			;7de8
	ld (01913h),a		;7de9
	ld c,0f0h		;7dec
	nop			;7dee
	ret p			;7def
	rst 38h			;7df0
	ccf			;7df1
	ld a,a			;7df2
	ld a,b			;7df3
	rlca			;7df4
	inc bc			;7df5
	inc b			;7df6
	add a,c			;7df7
	call m,08006h		;7df8
	add a,(hl)		;7dfb
	nop			;7dfc
	ccf			;7dfd
	rst 38h			;7dfe
	nop			;7dff
	nop			;7e00
	rst 38h			;7e01
	inc bc			;7e02
	ld h,(hl)		;7e03
l7e04h:
	inc b			;7e04
	nop			;7e05
	add a,l			;7e06
	rst 38h			;7e07
	ld l,(hl)		;7e08
	ld l,(hl)		;7e09
	nop			;7e0a
	nop			;7e0b
	inc bc			;7e0c
	rst 38h			;7e0d
	rlca			;7e0e
l7e0fh:
	nop			;7e0f
	add a,c			;7e10
	rst 38h			;7e11
	inc bc			;7e12
	ld a,(hl)		;7e13
	ld (bc),a		;7e14
	nop			;7e15
	inc bc			;7e16
	rst 38h			;7e17
	ld (bc),a		;7e18
	nop			;7e19
	add a,h			;7e1a
	sbc a,h			;7e1b
	sub h			;7e1c
	sub h			;7e1d
	sbc a,h			;7e1e
	inc bc			;7e1f
	nop			;7e20
	dec b			;7e21
	rst 38h			;7e22
	ld b,080h		;7e23
	adc a,d			;7e25
	rst 38h			;7e26
	ld a,a			;7e27
	ld a,a			;7e28
	ccf			;7e29
	ccf			;7e2a
	rra			;7e2b
	rst 38h			;7e2c
	ret po			;7e2d
	rst 38h			;7e2e
	rst 38h			;7e2f
	inc b			;7e30
	inc h			;7e31
	ld (bc),a		;7e32
	rst 38h			;7e33
	ld (bc),a		;7e34
	nop			;7e35
	add a,a			;7e36
	cp 0fch			;7e37
	ret m			;7e39
	ret p			;7e3a
	ret po			;7e3b
	ret nz			;7e3c
	ret nz			;7e3d
	nop			;7e3e
	ld a,(bc)		;7e3f
	ld sp,hl		;7e40
	adc a,c			;7e41
l7e42h:
	ret p			;7e42
	jp m,0f0f3h		;7e43
	sub h			;7e46
	sub h			;7e47
	add hl,bc		;7e48
	inc b			;7e49
	jp (hl)			;7e4a
	inc bc			;7e4b
	sub h			;7e4c
	add a,h			;7e4d
	ld c,a			;7e4e
	nop			;7e4f
	nop			;7e50
	jp (hl)			;7e51
	dec b			;7e52
	sub h			;7e53
	add a,h			;7e54
	nop			;7e55
	sub h			;7e56
	sub h			;7e57
	sub b			;7e58
	inc b			;7e59
	ld c,a			;7e5a
	dec bc			;7e5b
	sub b			;7e5c
	ld d,094h		;7e5d
	dec bc			;7e5f
	ld b,b			;7e60
	add a,e			;7e61
	jp (hl)			;7e62
	sub h			;7e63
	sub h			;7e64
	dec b			;7e65
	ret p			;7e66
	rlca			;7e67
	ld b,b			;7e68
	add a,l			;7e69
	ret p			;7e6a
	and e			;7e6b
	or 04fh			;7e6c
	sub h			;7e6e
	ex af,af'		;7e6f
	ld b,b			;7e70
	ld (bc),a		;7e71
	adc a,a			;7e72
	ld (bc),a		;7e73
	ret pe			;7e74
	sub b			;7e75
	add a,l			;7e76
	defb 0fdh,0d6h,0d3h ;illegal sequence	;7e77
	and l			;7e7a
	add a,e			;7e7b
	jp pe,083eah		;7e7c
	jp nc,0d3d1h		;7e7f
	jp c,0d653h		;7e82
	add a,c			;7e85
	inc bc			;7e86
	add a,l			;7e87
	ld (bc),a		;7e88
	push af			;7e89
	add a,h			;7e8a
	out (0d6h),a		;7e8b
	ret c			;7e8d
	add a,l			;7e8e
	inc bc			;7e8f
	push de			;7e90
	adc a,c			;7e91
	push af			;7e92
	ld sp,hl		;7e93
	cp 0feh			;7e94
	ld sp,hl		;7e96
	call p,0d8f0h		;7e97
	ret c			;7e9a
	inc b			;7e9b
	sbc a,(hl)		;7e9c
	add a,d			;7e9d
	call po,00694h		;7e9e
	inc b			;7ea1
	add a,l			;7ea2
	ret po			;7ea3
	ld b,b			;7ea4
	ld b,b			;7ea5
	sbc a,a			;7ea6
	sbc a,a			;7ea7
	inc bc			;7ea8
	jp (hl)			;7ea9
	rlca			;7eaa
	inc b			;7eab
	add a,(hl)		;7eac
	ret po			;7ead
	sub b			;7eae
	ld b,b			;7eaf
	ld b,b			;7eb0
	sbc a,a			;7eb1
	sbc a,a			;7eb2
	inc bc			;7eb3
	jp (hl)			;7eb4
	dec bc			;7eb5
	inc b			;7eb6
	inc bc			;7eb7
	call p,05402h		;7eb8
	ld a,(bc)		;7ebb
	ret p			;7ebc
	add a,c			;7ebd
	ld b,b			;7ebe
	inc bc			;7ebf
	pop af			;7ec0
	add a,h			;7ec1
	or 0f3h			;7ec2
	or 0f6h			;7ec4
	inc bc			;7ec6
	rrca			;7ec7
	add a,c			;7ec8
	call p,0f906h		;7ec9
	nop			;7ecc
	adc a,d			;7ecd
	nop			;7ece
	ret p			;7ecf
	ret po			;7ed0
	ret po			;7ed1
	ret nz			;7ed2
	ret nz			;7ed3
	add a,b			;7ed4
	add a,b			;7ed5
	rst 38h			;7ed6
	rst 38h			;7ed7
	ld b,000h		;7ed8
	nop			;7eda
	ld (bc),a		;7edb
	ld b,b			;7edc
	ld b,094h		;7edd
	ex af,af'		;7edf
	inc b			;7ee0
	nop			;7ee1
	adc a,e			;7ee2
	cp 0f8h			;7ee3
	ret p			;7ee5
	ret p			;7ee6
	rst 38h			;7ee7
	ret m			;7ee8
	ret m			;7ee9
	call m,0fefch		;7eea
	cp 005h			;7eed
	rst 38h			;7eef
	add a,l			;7ef0
	cp 0c0h			;7ef1
	ret p			;7ef3
	ret m			;7ef4
	call m,0fe03h		;7ef5
	nop			;7ef8
	adc a,d			;7ef9
	ret m			;7efa
	cp 0f8h			;7efb
	push af			;7efd
	push af			;7efe
	or 0f3h			;7eff
	jp m,0f6f3h		;7f01
	ld b,0f1h		;7f04
	add a,c			;7f06
	ld b,b			;7f07
	inc b			;7f08
	call p,0f083h		;7f09
	ld sp,hl		;7f0c
	ret p			;7f0d
	nop			;7f0e
l7f0fh:
	ld (bc),a		;7f0f
	rst 38h			;7f10
	add a,e			;7f11
	add a,b			;7f12
	ret nz			;7f13
	ret po			;7f14
	inc bc			;7f15
	rrca			;7f16
	nop			;7f17
	ld (bc),a		;7f18
	ld bc,04003h		;7f19
	add a,e			;7f1c
	ret p			;7f1d
	ld c,c			;7f1e
	ret p			;7f1f
	nop			;7f20
	dec b			;7f21
	rst 38h			;7f22
	add a,e			;7f23
	call m,0c0f0h		;7f24
	nop			;7f27
	dec b			;7f28
	push af			;7f29
	inc bc			;7f2a
	ld sp,hl		;7f2b
	nop			;7f2c
	add a,d			;7f2d
	rrca			;7f2e
	nop			;7f2f
	inc b			;7f30
	ccf			;7f31
	ld (bc),a		;7f32
	nop			;7f33
	ld (bc),a		;7f34
	ret po			;7f35
	ld b,007h		;7f36
	nop			;7f38
	ld (bc),a		;7f39
	sub h			;7f3a
	add a,c			;7f3b
	sub b			;7f3c
	inc b			;7f3d
	ld c,a			;7f3e
	ld (bc),a		;7f3f
	sub b			;7f40
	add a,d			;7f41
	ld b,b			;7f42
	jp (hl)			;7f43
	inc bc			;7f44
	sub h			;7f45
	add a,d			;7f46
l7f47h:
	ld c,a			;7f47
	nop			;7f48
	nop			;7f49
	ld (bc),a		;7f4a
	nop			;7f4b
	add a,(hl)		;7f4c
	rlca			;7f4d
	ld b,003h		;7f4e
	ld bc,00000h		;7f50
	nop			;7f53
	inc bc			;7f54
	ret p			;7f55
	dec b			;7f56
	ld b,b			;7f57
	nop			;7f58
	ld (bc),a		;7f59
	ld a,a			;7f5a
	add a,(hl)		;7f5b
	call m,08001h		;7f5c
	add a,b			;7f5f
	rrca			;7f60
	rrca			;7f61
	nop			;7f62
	ld (bc),a		;7f63
	ld b,b			;7f64
	add a,(hl)		;7f65
	ret p			;7f66
	and e			;7f67
	or 04fh			;7f68
	sub h			;7f6a
	ld b,b			;7f6b
	nop			;7f6c
	add a,l			;7f6d
	ld bc,0031fh		;7f6e
	rra			;7f71
	inc bc			;7f72
	inc bc			;7f73
	ld bc,00088h		;7f74
	ccf			;7f77
	rrca			;7f78
	rlca			;7f79
	inc bc			;7f7a
	ld bc,01f3fh		;7f7b
	nop			;7f7e
	add a,e			;7f7f
	ld sp,hl		;7f80
	sub h			;7f81
	sub h			;7f82
	inc b			;7f83
	ld b,b			;7f84
	ld (bc),a		;7f85
	ld c,a			;7f86
	add a,a			;7f87
	ld sp,hl		;7f88
	cp 0feh			;7f89
	ld sp,hl		;7f8b
	ld sp,hl		;7f8c
	sub h			;7f8d
	sub h			;7f8e
sub_7f8fh:
	nop			;7f8f
	inc bc			;7f90
	rlca			;7f91
	add a,l			;7f92
	rrca			;7f93
	rlca			;7f94
	rlca			;7f95
	rst 38h			;7f96
	rra			;7f97
	dec b			;7f98
	rst 38h			;7f99
	add a,e			;7f9a
	ccf			;7f9b
	rrca			;7f9c
	inc bc			;7f9d
	nop			;7f9e
	ld (bc),a		;7f9f
	ld sp,hl		;7fa0
	add a,(hl)		;7fa1
	ret p			;7fa2
	jp m,0f0f3h		;7fa3
	sub h			;7fa6
	sub h			;7fa7
	ex af,af'		;7fa8
	ld sp,hl		;7fa9
	nop			;7faa
	ld (bc),a		;7fab
	ld a,a			;7fac
	ld (bc),a		;7fad
	ccf			;7fae
	ld (bc),a		;7faf
	rra			;7fb0
	ld (bc),a		;7fb1
	rrca			;7fb2
	nop			;7fb3
	ex af,af'		;7fb4
	ld sp,hl		;7fb5
	nop			;7fb6
	sub b			;7fb7
	nop			;7fb8
	rrca			;7fb9
	rlca			;7fba
	rlca			;7fbb
	inc bc			;7fbc
	inc bc			;7fbd
	ld bc,00f01h		;7fbe
	rrca			;7fc1
	rlca			;7fc2
	rlca			;7fc3
	inc bc			;7fc4
	inc bc			;7fc5
	ld bc,00401h		;7fc6
	nop			;7fc9
	adc a,h			;7fca
	add a,b			;7fcb
	nop			;7fcc
	ret nz			;7fcd
	ret nz			;7fce
	cp 0e0h			;7fcf
	ld l,a			;7fd1
	ld l,a			;7fd2
	scf			;7fd3
	jr nc,l7ff5h		;7fd4
	rra			;7fd6
	inc bc			;7fd7
	rst 38h			;7fd8
	inc b			;7fd9
	nop			;7fda
	adc a,e			;7fdb
	rst 38h			;7fdc
	nop			;7fdd
	ret p			;7fde
	ret po			;7fdf
	ret po			;7fe0
	ret nz			;7fe1
	ret nz			;7fe2
	add a,b			;7fe3
	add a,b			;7fe4
	rst 38h			;7fe5
	rst 38h			;7fe6
	ld b,000h		;7fe7
	ld (bc),a		;7fe9
	ret m			;7fea
	add a,e			;7feb
	rst 38h			;7fec
	inc bc			;7fed
	rlca			;7fee
	inc bc			;7fef
	ret p			;7ff0
	ld (bc),a		;7ff1
	ld bc,00398h		;7ff2
l7ff5h:
	rlca			;7ff5
	rrca			;7ff6
	ld a,a			;7ff7
sub_7ff8h:
	rst 38h			;7ff8
	ld a,a			;7ff9
	ld a,a			;7ffa
	inc bc			;7ffb
	call m,030fch		;7ffc
	defb 030h		;7fff

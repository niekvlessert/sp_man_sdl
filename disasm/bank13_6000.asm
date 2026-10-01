; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank13_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank13.bin

	org 06000h

	ld c,0eeh		;6000
	nop			;6002
	nop			;6003
	nop			;6004
	nop			;6005
	ret po			;6006
	nop			;6007
	nop			;6008
	nop			;6009
	ld c,000h		;600a
	nop			;600c
	nop			;600d
	nop			;600e
	ret po			;600f
	nop			;6010
	nop			;6011
	nop			;6012
	xor 000h		;6013
	nop			;6015
	nop			;6016
	ld c,0e0h		;6017
	nop			;6019
	nop			;601a
	nop			;601b
	nop			;601c
	nop			;601d
	nop			;601e
	nop			;601f
	nop			;6020
	ld c,0e0h		;6021
	nop			;6023
	nop			;6024
	nop			;6025
	nop			;6026
	nop			;6027
	nop			;6028
	nop			;6029
	nop			;602a
	nop			;602b
	ld c,000h		;602c
	nop			;602e
	nop			;602f
	nop			;6030
	ld c,000h		;6031
	nop			;6033
	nop			;6034
	ld c,000h		;6035
	nop			;6037
	nop			;6038
	nop			;6039
	nop			;603a
	nop			;603b
	nop			;603c
	nop			;603d
	rst 38h			;603e
	nop			;603f
	nop			;6040
	nop			;6041
	nop			;6042
	nop			;6043
	nop			;6044
	nop			;6045
	nop			;6046
	nop			;6047
	nop			;6048
	nop			;6049
	nop			;604a
	nop			;604b
	nop			;604c
	nop			;604d
	nop			;604e
	nop			;604f
	nop			;6050
	nop			;6051
	nop			;6052
	nop			;6053
	nop			;6054
	nop			;6055
	nop			;6056
	nop			;6057
	nop			;6058
	rrca			;6059
	nop			;605a
	nop			;605b
	rrca			;605c
	pop af			;605d
	nop			;605e
	nop			;605f
	pop af			;6060
	ld de,00000h		;6061
	nop			;6064
	nop			;6065
	nop			;6066
	nop			;6067
	nop			;6068
	nop			;6069
	nop			;606a
	nop			;606b
	nop			;606c
	nop			;606d
	nop			;606e
	nop			;606f
	rst 38h			;6070
	rst 38h			;6071
	rrca			;6072
	rst 38h			;6073
	xor 0efh		;6074
	cp 0eeh			;6076
	rra			;6078
	rst 38h			;6079
	pop hl			;607a
	rst 38h			;607b
	rst 38h			;607c
	xor 0ffh		;607d
	pop hl			;607f
	cp 0eeh			;6080
	nop			;6082
	nop			;6083
	nop			;6084
	nop			;6085
	nop			;6086
	nop			;6087
	nop			;6088
	nop			;6089
	nop			;608a
	nop			;608b
	nop			;608c
	nop			;608d
	rst 38h			;608e
	rst 38h			;608f
	ret p			;6090
	nop			;6091
	ld c,a			;6092
	xor 0efh		;6093
	rst 38h			;6095
	rst 38h			;6096
	rst 38h			;6097
	ld e,0eeh		;6098
	xor 0efh		;609a
	rst 38h			;609c
	pop af			;609d
	xor 0eeh		;609e
	pop af			;60a0
	rst 28h			;60a1
	nop			;60a2
	nop			;60a3
	nop			;60a4
	nop			;60a5
	nop			;60a6
	nop			;60a7
	nop			;60a8
	nop			;60a9
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
	nop			;60b5
	rst 38h			;60b6
	nop			;60b7
	nop			;60b8
	nop			;60b9
	pop hl			;60ba
	rst 38h			;60bb
	nop			;60bc
	nop			;60bd
	pop af			;60be
	ld de,000f0h		;60bf
	nop			;60c2
	nop			;60c3
	nop			;60c4
	nop			;60c5
	nop			;60c6
	nop			;60c7
	nop			;60c8
	nop			;60c9
	nop			;60ca
	nop			;60cb
	nop			;60cc
	nop			;60cd
	nop			;60ce
	nop			;60cf
	nop			;60d0
	nop			;60d1
	nop			;60d2
	nop			;60d3
	rrca			;60d4
	rst 38h			;60d5
	nop			;60d6
	nop			;60d7
	call p,00044h		;60d8
	rrca			;60db
	ld b,h			;60dc
	ccf			;60dd
	nop			;60de
	rst 38h			;60df
	ld b,e			;60e0
	ccf			;60e1
	nop			;60e2
	rrca			;60e3
	ld de,000ffh		;60e4
	pop af			;60e7
	rra			;60e8
	xor 00fh		;60e9
	ld de,0e1feh		;60eb
	rrca			;60ee
	rra			;60ef
	ld e,018h		;60f0
	pop af			;60f2
	pop af			;60f3
	pop hl			;60f4
	adc a,a			;60f5
	ret m			;60f6
	pop af			;60f7
	jr $+1			;60f8
	adc a,a			;60fa
	ld de,0ff8fh		;60fb
	adc a,a			;60fe
	jr $+1			;60ff
	sbc a,a			;6101
	xor 0e1h		;6102
	cp 0eeh			;6104
	pop hl			;6106
	rra			;6107
	ld de,018eeh		;6108
	adc a,a			;610b
	ld de,08f11h		;610c
	rst 38h			;610f
	adc a,b			;6110
	ld de,0ffffh		;6111
	rst 38h			;6114
	adc a,b			;6115
	rst 38h			;6116
	sbc a,c			;6117
	sbc a,d			;6118
	rst 38h			;6119
	sbc a,c			;611a
	xor d			;611b
	xor d			;611c
	xor d			;611d
	rst 38h			;611e
	rst 38h			;611f
	rst 38h			;6120
	jp m,0eeeeh		;6121
	pop af			;6124
	xor 0eeh		;6125
	pop hl			;6127
	rra			;6128
	ld de,01111h		;6129
	rra			;612c
	adc a,b			;612d
	ld de,08f18h		;612e
	rst 38h			;6131
	adc a,b			;6132
	adc a,a			;6133
	rst 38h			;6134
	rst 38h			;6135
	rst 38h			;6136
	jp m,09fa9h		;6137
	xor d			;613a
	xor d			;613b
	xor d			;613c
	xor c			;613d
	xor d			;613e
	rst 38h			;613f
	rst 38h			;6140
	rst 38h			;6141
	rst 28h			;6142
	pop af			;6143
	rra			;6144
	nop			;6145
	xor 0efh		;6146
	ld de,011f0h		;6148
	xor 0f1h		;614b
	rra			;614d
	adc a,b			;614e
	ld e,01fh		;614f
	rra			;6151
	rst 38h			;6152
	add a,c			;6153
	pop hl			;6154
	pop af			;6155
	rst 38h			;6156
	ret m			;6157
	ld de,09ff8h		;6158
	rst 38h			;615b
	add a,c			;615c
	rra			;615d
	rst 38h			;615e
	sbc a,a			;615f
	ret m			;6160
	rra			;6161
	nop			;6162
	nop			;6163
	nop			;6164
	nop			;6165
	nop			;6166
	nop			;6167
	nop			;6168
	nop			;6169
	nop			;616a
	nop			;616b
	nop			;616c
	nop			;616d
	nop			;616e
	nop			;616f
	nop			;6170
	nop			;6171
	rst 38h			;6172
	rst 38h			;6173
	nop			;6174
	nop			;6175
	call p,0f044h		;6176
	nop			;6179
	adc a,a			;617a
	inc (hl)		;617b
	ld c,a			;617c
	nop			;617d
	adc a,a			;617e
	inc sp			;617f
	ld c,a			;6180
	ret p			;6181
	nop			;6182
	nop			;6183
	nop			;6184
	nop			;6185
	nop			;6186
	nop			;6187
	nop			;6188
	nop			;6189
	nop			;618a
	nop			;618b
	nop			;618c
	nop			;618d
	nop			;618e
	nop			;618f
	nop			;6190
	nop			;6191
	nop			;6192
	nop			;6193
	nop			;6194
	nop			;6195
	nop			;6196
	nop			;6197
	nop			;6198
	nop			;6199
	nop			;619a
	nop			;619b
	nop			;619c
	rrca			;619d
	nop			;619e
	nop			;619f
	nop			;61a0
	pop af			;61a1
	nop			;61a2
	nop			;61a3
	nop			;61a4
	nop			;61a5
	nop			;61a6
	nop			;61a7
	nop			;61a8
	nop			;61a9
	nop			;61aa
	nop			;61ab
	nop			;61ac
	nop			;61ad
	nop			;61ae
	nop			;61af
	nop			;61b0
	nop			;61b1
	nop			;61b2
	nop			;61b3
	nop			;61b4
	rrca			;61b5
	rst 38h			;61b6
	rst 38h			;61b7
	rst 38h			;61b8
	rst 38h			;61b9
	ld e,0e1h		;61ba
	pop hl			;61bc
	rst 38h			;61bd
	rst 38h			;61be
	rst 38h			;61bf
	rst 38h			;61c0
	rst 38h			;61c1
	nop			;61c2
	rst 38h			;61c3
	ld b,e			;61c4
	ret m			;61c5
	nop			;61c6
	rst 38h			;61c7
	inc sp			;61c8
	rst 38h			;61c9
	nop			;61ca
	rst 38h			;61cb
	ccf			;61cc
	rst 28h			;61cd
	rst 38h			;61ce
	di			;61cf
	ccf			;61d0
	rst 28h			;61d1
	rra			;61d2
	di			;61d3
	cp 0efh			;61d4
	adc a,a			;61d6
	di			;61d7
	cp 0efh			;61d8
	adc a,a			;61da
	di			;61db
	cp 0e1h			;61dc
	adc a,a			;61de
	di			;61df
	cp 0e1h			;61e0
	pop af			;61e2
	rra			;61e3
	rst 38h			;61e4
	rst 38h			;61e5
	pop af			;61e6
	adc a,a			;61e7
	sbc a,a			;61e8
l61e9h:
	ld sp,hl		;61e9
	jr $+1			;61ea
	rst 38h			;61ec
	sbc a,c			;61ed
	jr l61e9h		;61ee
	rst 38h			;61f0
	sbc a,a			;61f1
	adc a,b			;61f2
	rst 38h			;61f3
	rst 38h			;61f4
	rst 38h			;61f5
	rst 38h			;61f6
	jp m,0faffh		;61f7
	pop af			;61fa
	rst 38h			;61fb
	rst 38h			;61fc
	xor d			;61fd
	ret m			;61fe
	jp m,0aaafh		;61ff
	ld sp,hl		;6202
	sbc a,c			;6203
	rst 38h			;6204
	rst 38h			;6205
	sbc a,c			;6206
	sbc a,c			;6207
	sbc a,c			;6208
	rst 38h			;6209
	sbc a,c			;620a
	sbc a,c			;620b
	rst 38h			;620c
	jp m,0ffffh		;620d
	jp m,0aaaah		;6210
	xor d			;6213
	xor d			;6214
	xor a			;6215
	xor d			;6216
	xor d			;6217
	xor d			;6218
	rst 38h			;6219
	xor d			;621a
	xor d			;621b
	xor d			;621c
	sbc a,c			;621d
	xor d			;621e
	xor d			;621f
	xor d			;6220
	xor d			;6221
	xor a			;6222
	rst 38h			;6223
	ld sp,hl		;6224
	sbc a,c			;6225
	xor a			;6226
	ld sp,hl		;6227
	sbc a,c			;6228
	sbc a,c			;6229
	xor d			;622a
	rst 38h			;622b
	ld sp,hl		;622c
	sbc a,c			;622d
	xor d			;622e
	xor d			;622f
	rst 38h			;6230
	rst 38h			;6231
	sbc a,a			;6232
	xor d			;6233
	xor d			;6234
	xor d			;6235
	sbc a,a			;6236
	jp m,0aaaah		;6237
	sbc a,c			;623a
	sbc a,d			;623b
	xor d			;623c
	xor d			;623d
	xor d			;623e
	xor d			;623f
	xor d			;6240
	xor d			;6241
	rst 38h			;6242
	rst 38h			;6243
	rst 38h			;6244
	ld de,0ff99h		;6245
	sbc a,a			;6248
	add a,c			;6249
	sbc a,c			;624a
	sbc a,a			;624b
	rst 38h			;624c
	ret m			;624d
	rst 38h			;624e
	sbc a,a			;624f
	ld sp,hl		;6250
	ret m			;6251
	xor a			;6252
	rst 38h			;6253
	rst 38h			;6254
	ret m			;6255
	xor d			;6256
	rst 38h			;6257
	jp m,0aaffh		;6258
	xor a			;625b
	rst 38h			;625c
	pop af			;625d
	xor d			;625e
	xor a			;625f
	xor d			;6260
	ret m			;6261
	ret m			;6262
	di			;6263
	ld c,a			;6264
	ret p			;6265
	rst 38h			;6266
	di			;6267
	ccf			;6268
	ret p			;6269
	rra			;626a
	rst 28h			;626b
	ccf			;626c
	ret p			;626d
	rra			;626e
	rst 28h			;626f
	inc sp			;6270
	rst 38h			;6271
	adc a,a			;6272
	xor 0f3h		;6273
	rst 38h			;6275
	rst 38h			;6276
	xor 0f3h		;6277
	rst 38h			;6279
	pop af			;627a
	xor 0f3h		;627b
	rst 38h			;627d
	pop af			;627e
	xor 0f3h		;627f
	rst 38h			;6281
	nop			;6282
	nop			;6283
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
	ret p			;628e
	nop			;628f
	nop			;6290
	nop			;6291
	rra			;6292
	nop			;6293
	nop			;6294
	nop			;6295
	adc a,a			;6296
	rst 38h			;6297
	rst 38h			;6298
	rst 38h			;6299
	adc a,a			;629a
	pop af			;629b
	pop hl			;629c
	xor 08fh		;629d
	rst 38h			;629f
	rst 38h			;62a0
	rst 38h			;62a1
	nop			;62a2
	nop			;62a3
	nop			;62a4
	nop			;62a5
	nop			;62a6
	nop			;62a7
	nop			;62a8
	nop			;62a9
	nop			;62aa
	nop			;62ab
	nop			;62ac
	nop			;62ad
	nop			;62ae
	nop			;62af
	nop			;62b0
	nop			;62b1
	nop			;62b2
	nop			;62b3
	nop			;62b4
	nop			;62b5
	ret p			;62b6
	nop			;62b7
	nop			;62b8
	nop			;62b9
	rra			;62ba
	nop			;62bb
	nop			;62bc
	nop			;62bd
	pop af			;62be
	ret p			;62bf
	nop			;62c0
	nop			;62c1
	nop			;62c2
	nop			;62c3
	nop			;62c4
	pop af			;62c5
	nop			;62c6
	nop			;62c7
	nop			;62c8
	pop af			;62c9
	nop			;62ca
	nop			;62cb
	nop			;62cc
	pop af			;62cd
	nop			;62ce
	nop			;62cf
	nop			;62d0
	pop af			;62d1
	xor 000h		;62d2
	rrca			;62d4
	rst 38h			;62d5
	xor 0e0h		;62d6
	rrca			;62d8
	ld e,00eh		;62d9
	ret po			;62db
	rrca			;62dc
	rst 38h			;62dd
	nop			;62de
	nop			;62df
	pop af			;62e0
	ld de,099f9h		;62e1
	sbc a,c			;62e4
	rst 38h			;62e5
	ld sp,hl		;62e6
	xor 0aah		;62e7
	xor a			;62e9
	jp m,0aaeah		;62ea
	xor a			;62ed
	jp m,0aaaah		;62ee
	xor a			;62f1
	rst 38h			;62f2
	rst 38h			;62f3
	rst 38h			;62f4
	rst 38h			;62f5
	pop hl			;62f6
	pop hl			;62f7
	ld de,0fff1h		;62f8
	rst 38h			;62fb
	rst 38h			;62fc
	ret m			;62fd
	ld de,01111h		;62fe
	ret m			;6301
	adc a,a			;6302
	di			;6303
	pop af			;6304
	pop hl			;6305
	adc a,a			;6306
	di			;6307
	pop af			;6308
	ld de,0f38fh		;6309
	pop af			;630c
	ld de,023ffh		;630d
	pop af			;6310
	ld de,023ffh		;6311
	ret m			;6314
	ld de,023ffh		;6315
	ccf			;6318
	jr $+1			;6319
	inc hl			;631b
	ccf			;631c
	adc a,b			;631d
	rst 38h			;631e
	inc hl			;631f
	ld (0f8f8h),a		;6320
	ld sp,hl		;6323
	sbc a,a			;6324
	xor d			;6325
	ret m			;6326
	rst 38h			;6327
	rst 38h			;6328
	xor d			;6329
	rst 38h			;632a
	jp m,0aaafh		;632b
l632eh:
	adc a,a			;632e
	rst 38h			;632f
	sbc a,c			;6330
	jp m,0e18fh		;6331
	rst 38h			;6334
	jp m,0188fh		;6335
	cp 0ffh			;6338
	adc a,a			;633a
	jr l632eh		;633b
	xor 08fh		;633d
	jr $-13			;633f
	ld de,0aaaah		;6341
	xor d			;6344
	sbc a,c			;6345
	xor d			;6346
	xor d			;6347
	xor a			;6348
	rst 38h			;6349
	xor d			;634a
	xor d			;634b
	rst 38h			;634c
	xor d			;634d
	xor d			;634e
	xor a			;634f
	xor d			;6350
	xor a			;6351
	xor d			;6352
	xor d			;6353
	xor d			;6354
	rst 38h			;6355
	xor d			;6356
	xor d			;6357
	rst 38h			;6358
	xor 0ffh		;6359
	rst 38h			;635b
	ld e,011h		;635c
	xor 0e1h		;635e
	add a,c			;6360
	ld de,0faffh		;6361
	xor d			;6364
	xor d			;6365
	rst 38h			;6366
	rst 38h			;6367
	xor d			;6368
	xor d			;6369
	xor d			;636a
	xor a			;636b
	jp m,0ffaah		;636c
	xor d			;636f
	xor a			;6370
	xor d			;6371
	rst 38h			;6372
	jp m,0aaaah		;6373
	xor 0efh		;6376
	jp m,011aah		;6378
	ld e,01fh		;637b
	rst 38h			;637d
	ld de,08111h		;637e
	xor 0aah		;6381
	xor a			;6383
	sbc a,c			;6384
	ret m			;6385
	xor d			;6386
	xor a			;6387
	rst 38h			;6388
	ret m			;6389
	xor d			;638a
	xor a			;638b
	xor d			;638c
	rst 38h			;638d
	xor d			;638e
	ld sp,hl		;638f
	sbc a,a			;6390
	rst 38h			;6391
	xor d			;6392
	rst 38h			;6393
	pop af			;6394
	rst 28h			;6395
	xor a			;6396
	cp 0f8h			;6397
	rra			;6399
	cp 0e1h			;639a
	ret m			;639c
	rra			;639d
	pop hl			;639e
	ld de,01ff8h		;639f
	pop af			;63a2
	pop hl			;63a3
	di			;63a4
	rst 38h			;63a5
	pop af			;63a6
	ld de,0fff3h		;63a7
	pop af			;63aa
	ld de,02ff3h		;63ab
	add a,c			;63ae
	ld de,02ff3h		;63af
	add a,c			;63b2
	jr $-11			;63b3
	cpl			;63b5
	adc a,b			;63b6
	rra			;63b7
	inc sp			;63b8
	cpl			;63b9
	adc a,b			;63ba
	adc a,a			;63bb
	inc sp			;63bc
	cpl			;63bd
	adc a,b			;63be
	jp p,02f33h		;63bf
	adc a,a			;63c2
	sbc a,c			;63c3
	sbc a,c			;63c4
	sbc a,a			;63c5
	adc a,a			;63c6
	xor d			;63c7
	xor (hl)		;63c8
	jp (hl)			;63c9
	rst 38h			;63ca
	xor d			;63cb
	xor d			;63cc
	jp pe,0aaffh		;63cd
	xor d			;63d0
	xor d			;63d1
	rst 38h			;63d2
	rst 38h			;63d3
	rst 38h			;63d4
	rst 38h			;63d5
	pop af			;63d6
	pop af			;63d7
	ld de,0f8e1h		;63d8
	rst 38h			;63db
	rst 38h			;63dc
	rst 38h			;63dd
	ret m			;63de
	pop af			;63df
	ld de,0f111h		;63e0
	ret p			;63e3
	nop			;63e4
	nop			;63e5
	pop af			;63e6
	ret p			;63e7
	nop			;63e8
	nop			;63e9
	pop af			;63ea
	ret p			;63eb
	nop			;63ec
	nop			;63ed
	pop af			;63ee
	ret p			;63ef
	nop			;63f0
	nop			;63f1
	rst 38h			;63f2
	rst 38h			;63f3
	nop			;63f4
	ld c,0eeh		;63f5
	rra			;63f7
	nop			;63f8
	nop			;63f9
	rst 38h			;63fa
	rst 38h			;63fb
	nop			;63fc
	nop			;63fd
	ld de,0f011h		;63fe
	nop			;6401
	nop			;6402
	ld c,0eeh		;6403
	nop			;6405
	nop			;6406
	xor 0eeh		;6407
	nop			;6409
	nop			;640a
	xor 0e0h		;640b
	nop			;640d
	nop			;640e
	nop			;640f
	nop			;6410
	nop			;6411
	ret po			;6412
	nop			;6413
	nop			;6414
	nop			;6415
	nop			;6416
	nop			;6417
	nop			;6418
	nop			;6419
	nop			;641a
	nop			;641b
	nop			;641c
	nop			;641d
	nop			;641e
	nop			;641f
	nop			;6420
	rst 38h			;6421
	nop			;6422
	nop			;6423
	rst 38h			;6424
	rst 38h			;6425
	nop			;6426
	nop			;6427
	ret m			;6428
	adc a,b			;6429
	ret p			;642a
	nop			;642b
	rrca			;642c
	adc a,b			;642d
	xor a			;642e
	ret p			;642f
	nop			;6430
	ret m			;6431
	xor d			;6432
	xor a			;6433
	rst 38h			;6434
	rrca			;6435
	sbc a,c			;6436
	xor d			;6437
	xor d			;6438
	rst 38h			;6439
	rst 38h			;643a
	sbc a,c			;643b
	sbc a,d			;643c
	xor d			;643d
	rst 38h			;643e
	rst 38h			;643f
	ld sp,hl		;6440
	sbc a,c			;6441
	rst 38h			;6442
	rst 38h			;6443
	rst 38h			;6444
	ret m			;6445
	adc a,b			;6446
	adc a,b			;6447
	adc a,b			;6448
	rst 38h			;6449
	adc a,b			;644a
	adc a,b			;644b
	adc a,b			;644c
	rst 38h			;644d
	adc a,b			;644e
	adc a,b			;644f
	adc a,b			;6450
	rst 38h			;6451
	adc a,b			;6452
	adc a,b			;6453
	adc a,b			;6454
	rst 38h			;6455
	ret m			;6456
	adc a,b			;6457
	adc a,b			;6458
	rst 38h			;6459
	rst 38h			;645a
	adc a,b			;645b
	adc a,b			;645c
	rst 38h			;645d
	sbc a,a			;645e
	ret m			;645f
	adc a,b			;6460
	rst 38h			;6461
	rst 38h			;6462
	inc hl			;6463
	ld (0fff8h),a		;6464
	inc hl			;6467
	ld (0ff2fh),a		;6468
	inc hl			;646b
	inc sp			;646c
	ld (023ffh),hl		;646d
l6470h:
	inc sp			;6470
	ld (022ffh),hl		;6471
	inc sp			;6474
	ld (0f2ffh),a		;6475
	ld (0ff22h),hl		;6478
	rst 38h			;647b
	rst 38h			;647c
l647dh:
	rst 38h			;647d
	rst 38h			;647e
	rst 38h			;647f
	rst 38h			;6480
	rst 38h			;6481
	adc a,a			;6482
	jr l647dh		;6483
	ld de,0f888h		;6485
	ret m			;6488
	adc a,b			;6489
	ret m			;648a
	rst 38h			;648b
	rst 38h			;648c
	adc a,b			;648d
	cpl			;648e
	adc a,a			;648f
	rst 38h			;6490
	ret m			;6491
	ld (0ffffh),hl		;6492
	rst 38h			;6495
	ld (0f6ffh),hl		;6496
	rst 38h			;6499
	rst 38h			;649a
	rst 38h			;649b
	rst 30h			;649c
	ld l,a			;649d
	rst 38h			;649e
	rst 38h			;649f
	rst 38h			;64a0
	halt			;64a1
	ld de,08118h		;64a2
	ld de,01f11h		;64a5
	add a,c			;64a8
	ld de,08f88h		;64a9
	adc a,b			;64ac
	ld de,08f88h		;64ad
	adc a,b			;64b0
	adc a,b			;64b1
	ret m			;64b2
	adc a,b			;64b3
	ret m			;64b4
	adc a,b			;64b5
	rst 38h			;64b6
	rst 38h			;64b7
	ret m			;64b8
	rst 38h			;64b9
	rst 38h			;64ba
	rst 38h			;64bb
	rst 38h			;64bc
	adc a,b			;64bd
	rst 38h			;64be
	rst 38h			;64bf
	rst 38h			;64c0
	adc a,a			;64c1
	ld de,08811h		;64c2
	ld de,01111h		;64c5
	adc a,a			;64c8
	ld de,01811h		;64c9
	adc a,a			;64cc
	adc a,b			;64cd
	adc a,b			;64ce
	adc a,b			;64cf
	adc a,a			;64d0
	adc a,b			;64d1
	adc a,b			;64d2
	adc a,b			;64d3
	ret m			;64d4
	adc a,b			;64d5
	rst 38h			;64d6
	ret m			;64d7
	rst 38h			;64d8
	rst 38h			;64d9
	adc a,b			;64da
	adc a,a			;64db
	rst 38h			;64dc
	rst 38h			;64dd
	rst 38h			;64de
	adc a,a			;64df
	rst 38h			;64e0
	rst 38h			;64e1
	ld de,0f818h		;64e2
	rra			;64e5
	jr l6470h		;64e6
	ret m			;64e8
	ret m			;64e9
	adc a,b			;64ea
	adc a,a			;64eb
	rst 38h			;64ec
	ret m			;64ed
	adc a,b			;64ee
	rst 38h			;64ef
	rst 38h			;64f0
	adc a,a			;64f1
	rst 38h			;64f2
	rst 38h			;64f3
	rst 38h			;64f4
	rst 38h			;64f5
	rst 38h			;64f6
	ld h,(hl)		;64f7
	rst 38h			;64f8
	jp p,l67ffh		;64f9
	rst 38h			;64fc
	rst 38h			;64fd
	or 07fh			;64fe
	rst 38h			;6500
	rst 38h			;6501
	adc a,b			;6502
	jp p,02f33h		;6503
	adc a,a			;6506
	inc hl			;6507
	inc sp			;6508
	cpl			;6509
	jp p,03323h		;650a
	cpl			;650d
	ld (03333h),hl		;650e
	cpl			;6511
	ld (03233h),hl		;6512
	cpl			;6515
	ld (02222h),hl		;6516
	rst 38h			;6519
	rst 38h			;651a
	rst 38h			;651b
	rst 38h			;651c
	rst 38h			;651d
	rst 38h			;651e
	rst 38h			;651f
	rst 38h			;6520
	rst 38h			;6521
	ret m			;6522
	rst 38h			;6523
	rst 38h			;6524
	rst 38h			;6525
	rst 38h			;6526
	ret m			;6527
	adc a,b			;6528
	adc a,b			;6529
	rst 38h			;652a
	ret m			;652b
	adc a,b			;652c
	adc a,b			;652d
	rst 38h			;652e
	ret m			;652f
	adc a,b			;6530
	adc a,b			;6531
	rst 38h			;6532
	ret m			;6533
	adc a,b			;6534
	adc a,b			;6535
	rst 38h			;6536
	ret m			;6537
	adc a,b			;6538
	adc a,b			;6539
	rst 38h			;653a
	ret m			;653b
	adc a,b			;653c
	adc a,a			;653d
	rst 38h			;653e
	ret m			;653f
	adc a,b			;6540
	ld sp,hl		;6541
	rst 38h			;6542
	rst 38h			;6543
	nop			;6544
	nop			;6545
	adc a,b			;6546
	adc a,a			;6547
	nop			;6548
	nop			;6549
	adc a,b			;654a
	ret p			;654b
	nop			;654c
	rrca			;654d
	adc a,a			;654e
	nop			;654f
	rrca			;6550
	jp m,0fff0h		;6551
	jp m,0ffaah		;6554
	xor d			;6557
	xor d			;6558
	sbc a,c			;6559
	xor d			;655a
	xor c			;655b
	sbc a,c			;655c
	rst 38h			;655d
	sbc a,c			;655e
	sbc a,a			;655f
	rst 38h			;6560
	rst 38h			;6561
	sbc a,c			;6562
	rst 38h			;6563
	rst 38h			;6564
	sbc a,c			;6565
	sbc a,c			;6566
	sbc a,c			;6567
	rst 38h			;6568
	sbc a,c			;6569
	sbc a,c			;656a
	sbc a,c			;656b
	rst 38h			;656c
	sbc a,c			;656d
	sbc a,a			;656e
	sbc a,d			;656f
	rst 38h			;6570
	rst 38h			;6571
	sbc a,a			;6572
	rst 38h			;6573
	cp 0eeh			;6574
	sbc a,a			;6576
	cp 0eeh			;6577
	xor 0feh		;6579
	xor 0eeh		;657b
	xor 0eeh		;657d
	ld de,0ee1eh		;657f
	sbc a,c			;6582
	sbc a,c			;6583
	rst 38h			;6584
	rst 38h			;6585
	sbc a,c			;6586
	sbc a,c			;6587
	sbc a,c			;6588
	sbc a,c			;6589
	rst 38h			;658a
	rst 38h			;658b
	rst 38h			;658c
	rst 38h			;658d
	xor 0eeh		;658e
	xor 0efh		;6590
	xor 0eeh		;6592
	xor 0eeh		;6594
	xor 0e1h		;6596
	xor 0eeh		;6598
	xor 0eeh		;659a
	xor 0eeh		;659c
	xor 0eeh		;659e
	xor 0eeh		;65a0
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
	xor 0eeh		;65b1
	rst 38h			;65b3
	cp 0eeh			;65b4
	xor 0efh		;65b6
	ld d,l			;65b8
	ld d,l			;65b9
	xor 0efh		;65ba
	ld d,l			;65bc
	ld d,l			;65bd
	pop hl			;65be
	push af			;65bf
	ld d,l			;65c0
	ld d,l			;65c1
	rst 38h			;65c2
	rst 38h			;65c3
	rst 38h			;65c4
	rst 38h			;65c5
	rst 38h			;65c6
	rst 38h			;65c7
	rst 38h			;65c8
	rst 38h			;65c9
	xor 0eeh		;65ca
	call po,0ee4fh		;65cc
	xor 04fh		;65cf
	rst 38h			;65d1
	xor 0e4h		;65d2
	rst 38h			;65d4
	ret m			;65d5
	ld d,l			;65d6
	ld d,h			;65d7
	rst 38h			;65d8
	ld de,04f55h		;65d9
	rst 38h			;65dc
	adc a,b			;65dd
	ld d,l			;65de
	ld c,a			;65df
	rst 38h			;65e0
	rst 38h			;65e1
	rst 38h			;65e2
	ld h,(hl)		;65e3
	halt			;65e4
	rst 38h			;65e5
	rst 38h			;65e6
	ld h,(hl)		;65e7
	ld h,(hl)		;65e8
	ld h,a			;65e9
	rst 38h			;65ea
	or 066h			;65eb
	ld h,(hl)		;65ed
	rst 38h			;65ee
	rst 38h			;65ef
	rst 38h			;65f0
	ld h,(hl)		;65f1
	ld de,08f18h		;65f2
	rst 38h			;65f5
	adc a,b			;65f6
	adc a,b			;65f7
	rst 38h			;65f8
	or 0ffh			;65f9
	rst 38h			;65fb
	ld h,(hl)		;65fc
	ld h,(hl)		;65fd
	rst 38h			;65fe
	ld h,(hl)		;65ff
	ld h,(hl)		;6600
	ld h,(hl)		;6601
	rst 38h			;6602
	rst 38h			;6603
	rst 38h			;6604
	rst 38h			;6605
	ld (hl),a		;6606
	halt			;6607
	rst 38h			;6608
	rst 38h			;6609
	ld h,(hl)		;660a
	ld h,a			;660b
	ld (hl),a		;660c
	ld l,a			;660d
	ld h,(hl)		;660e
	ld h,(hl)		;660f
	ld h,(hl)		;6610
	ld a,a			;6611
	rst 38h			;6612
	ld h,(hl)		;6613
	ld h,(hl)		;6614
	ld l,a			;6615
	rst 38h			;6616
	rst 38h			;6617
	rst 38h			;6618
	ld l,a			;6619
	ld h,(hl)		;661a
	ld l,a			;661b
	rst 38h			;661c
	rst 38h			;661d
	ld l,a			;661e
	or 06fh			;661f
	inc hl			;6621
	rst 38h			;6622
	rst 38h			;6623
	rst 38h			;6624
	rst 38h			;6625
l6626h:
	rst 38h			;6626
	rst 38h			;6627
	or 077h			;6628
	ccf			;662a
	ld h,(hl)		;662b
	ld (hl),a		;662c
	ld h,(hl)		;662d
	cpl			;662e
l662fh:
	halt			;662f
	ld h,(hl)		;6630
	ld h,(hl)		;6631
	cpl			;6632
	ld h,(hl)		;6633
	ld h,(hl)		;6634
	ld l,a			;6635
	cpl			;6636
	ld h,(hl)		;6637
	rst 38h			;6638
	rst 38h			;6639
	rst 38h			;663a
	rst 38h			;663b
	rst 38h			;663c
	ld h,(hl)		;663d
	di			;663e
	ccf			;663f
	ld h,(hl)		;6640
	ld h,(hl)		;6641
	rst 38h			;6642
	rst 38h			;6643
	halt			;6644
	rst 38h			;6645
	ld (hl),a		;6646
	ld h,(hl)		;6647
	ld l,a			;6648
	rst 38h			;6649
	ld h,(hl)		;664a
	ld h,(hl)		;664b
	rst 38h			;664c
	rst 38h			;664d
	ld h,(hl)		;664e
	rst 38h			;664f
	rst 38h			;6650
	rst 38h			;6651
	rst 38h			;6652
	ret m			;6653
	ld de,0ff18h		;6654
	rst 38h			;6657
	adc a,b			;6658
	add a,c			;6659
	ld h,(hl)		;665a
	ld l,a			;665b
	rst 38h			;665c
	ret m			;665d
	ld h,(hl)		;665e
	ld h,(hl)		;665f
	rst 38h			;6660
	rst 38h			;6661
	rst 38h			;6662
	rst 38h			;6663
	rst 38h			;6664
	rst 38h			;6665
l6666h:
	rst 38h			;6666
	rst 38h			;6667
	rst 38h			;6668
	rst 38h			;6669
	call p,0eeeeh		;666a
	xor 0ffh		;666d
	call p,0eeeeh		;666f
	rst 38h			;6672
	rst 38h			;6673
	ld c,(hl)		;6674
	xor 01fh		;6675
	rst 38h			;6677
	ld b,l			;6678
	ld d,l			;6679
	adc a,a			;667a
	rst 38h			;667b
	call p,0ff55h		;667c
	rst 38h			;667f
	call p,0ff55h		;6680
	ret m			;6683
	adc a,a			;6684
	rst 38h			;6685
	rst 38h			;6686
	rst 38h			;6687
	rst 38h			;6688
	rst 38h			;6689
	rst 38h			;668a
	rst 38h			;668b
	rst 38h			;668c
	rst 38h			;668d
	xor 0ffh		;668e
	rst 38h			;6690
	rst 38h			;6691
	xor 0efh		;6692
	rst 38h			;6694
	cp 055h			;6695
	ld d,l			;6697
	rst 38h			;6698
	xor 055h		;6699
	ld d,l			;669b
	rst 38h			;669c
	ld e,055h		;669d
	ld d,l			;669f
	ld e,a			;66a0
	ld e,0ffh		;66a1
	rst 38h			;66a3
	ld sp,hl		;66a4
	sbc a,c			;66a5
	ld sp,hl		;66a6
	sbc a,c			;66a7
	sbc a,c			;66a8
	sbc a,c			;66a9
	rst 38h			;66aa
	rst 38h			;66ab
	rst 38h			;66ac
	rst 38h			;66ad
	cp 0eeh			;66ae
	xor 0eeh		;66b0
	xor 0eeh		;66b2
	xor 0eeh		;66b4
	xor 0eeh		;66b6
	ld e,0eeh		;66b8
	xor 0eeh		;66ba
	xor 0eeh		;66bc
	xor 0eeh		;66be
	xor 0eeh		;66c0
	sbc a,c			;66c2
	rst 38h			;66c3
	rst 38h			;66c4
	sbc a,c			;66c5
	sbc a,c			;66c6
	rst 38h			;66c7
	sbc a,c			;66c8
	sbc a,c			;66c9
	sbc a,c			;66ca
	rst 38h			;66cb
	sbc a,c			;66cc
	sbc a,c			;66cd
	rst 38h			;66ce
	rst 38h			;66cf
	sbc a,c			;66d0
	ld sp,hl		;66d1
	xor 0efh		;66d2
	rst 38h			;66d4
	ld sp,hl		;66d5
	xor 0eeh		;66d6
	rst 28h			;66d8
	ld sp,hl		;66d9
	xor 0eeh		;66da
	xor 0efh		;66dc
	xor 0e1h		;66de
	ld de,09feeh		;66e0
	ld sp,hl		;66e3
	ld sp,hl		;66e4
	xor c			;66e5
	sbc a,a			;66e6
	ld sp,hl		;66e7
	rst 38h			;66e8
	ld sp,hl		;66e9
	sbc a,a			;66ea
	ld sp,hl		;66eb
	sbc a,c			;66ec
	sbc a,c			;66ed
l66eeh:
	rst 38h			;66ee
	rst 38h			;66ef
	sbc a,c			;66f0
	sbc a,c			;66f1
	rst 38h			;66f2
	rst 38h			;66f3
	rst 38h			;66f4
	ld sp,hl		;66f5
l66f6h:
	rst 38h			;66f6
	rst 38h			;66f7
	rst 38h			;66f8
	rst 38h			;66f9
	rst 38h			;66fa
	rst 38h			;66fb
	rst 38h			;66fc
	rst 38h			;66fd
	rst 38h			;66fe
	rst 38h			;66ff
	rst 38h			;6700
	pop af			;6701
	sbc a,a			;6702
	sbc a,d			;6703
	sbc a,a			;6704
	jp m,09a9fh		;6705
	sbc a,a			;6708
	jp m,09a9fh		;6709
	sbc a,a			;670c
	jp m,0ff99h		;670d
	sbc a,a			;6710
	rst 38h			;6711
	sbc a,c			;6712
	rst 38h			;6713
	cp 0e1h			;6714
	rst 38h			;6716
	xor 0e1h		;6717
	ld de,01feeh		;6719
	pop hl			;671c
	adc a,a			;671d
	pop hl			;671e
	rra			;671f
	ld de,0998fh		;6720
	sbc a,a			;6723
	sbc a,c			;6724
	ld sp,hl		;6725
	sbc a,c			;6726
	sbc a,a			;6727
	sbc a,c			;6728
	ld sp,hl		;6729
	sbc a,c			;672a
	sbc a,a			;672b
	ld sp,hl		;672c
	ld sp,hl		;672d
	sbc a,c			;672e
	rst 38h			;672f
	rst 38h			;6730
	rst 38h			;6731
	rst 38h			;6732
	xor 0e1h		;6733
	ld sp,hl		;6735
	pop af			;6736
	ld de,01f11h		;6737
	jr l674dh		;673a
	jr l674fh		;673c
	ld de,0ff18h		;673e
	add a,c			;6741
	sbc a,c			;6742
	sbc a,c			;6743
	xor d			;6744
	cp 09fh			;6745
	sbc a,c			;6747
	sbc a,a			;6748
	pop hl			;6749
	sbc a,a			;674a
	sbc a,c			;674b
	sbc a,a			;674c
l674dh:
	jr l66eeh		;674d
l674fh:
	sbc a,c			;674f
	sbc a,a			;6750
	adc a,a			;6751
	sbc a,a			;6752
	ld sp,hl		;6753
	sbc a,a			;6754
	adc a,a			;6755
	sbc a,c			;6756
	sbc a,c			;6757
	sbc a,a			;6758
	rst 38h			;6759
	ld sp,hl		;675a
	sbc a,a			;675b
	rst 38h			;675c
	ld a,(hl)		;675d
	rra			;675e
	rst 30h			;675f
	xor 0eeh		;6760
	ld de,01111h		;6762
	ld de,08188h		;6765
	ld de,08811h		;6768
	adc a,b			;676b
	ld de,0f811h		;676c
	adc a,b			;676f
	pop af			;6770
	ld de,088ffh		;6771
	adc a,a			;6774
	ld de,0f8ffh		;6775
	adc a,b			;6778
	add a,c			;6779
	rst 20h			;677a
	rst 38h			;677b
	adc a,b			;677c
	adc a,a			;677d
	rst 20h			;677e
	ld a,a			;677f
	ret m			;6780
	adc a,b			;6781
	ld e,0eeh		;6782
	xor 0e1h		;6784
	ld de,01111h		;6786
	ld de,01188h		;6789
	ld de,0ee11h		;678c
	ld de,01111h		;678f
	ld de,08111h		;6792
	ld de,01111h		;6795
	pop hl			;6798
	ld de,01111h		;6799
	ld de,01111h		;679c
	ld de,01111h		;679f
	ld de,055f5h		;67a2
	ld d,l			;67a5
	rra			;67a6
	ld d,l			;67a7
	ld d,l			;67a8
	ld d,l			;67a9
	rra			;67aa
	ld d,l			;67ab
	ld d,l			;67ac
	ld d,l			;67ad
	rra			;67ae
	ld b,l			;67af
	ld d,l			;67b0
	ld d,l			;67b1
	rra			;67b2
	ld b,l			;67b3
	ld d,l			;67b4
	ld d,l			;67b5
	call p,05545h		;67b6
	ld d,l			;67b9
	call p,04544h		;67ba
	ld d,l			;67bd
	call p,04444h		;67be
	ld b,h			;67c1
	ld d,l			;67c2
	ld c,a			;67c3
	rst 38h			;67c4
	rst 38h			;67c5
	ld d,h			;67c6
	rst 38h			;67c7
	rst 38h			;67c8
	rst 30h			;67c9
	ld d,h			;67ca
	rst 38h			;67cb
	rst 38h			;67cc
	ld (hl),a		;67cd
	ld d,h			;67ce
	rst 38h			;67cf
	rst 30h			;67d0
	ld (hl),a		;67d1
	ld d,h			;67d2
	rst 38h			;67d3
	ld (hl),a		;67d4
	ld h,a			;67d5
	ld c,a			;67d6
	rst 38h			;67d7
	halt			;67d8
	ld (hl),a		;67d9
	ld c,a			;67da
	rst 30h			;67db
	ld h,a			;67dc
	ld (hl),a		;67dd
	ccf			;67de
	or 077h			;67df
	halt			;67e1
	rst 38h			;67e2
	or 066h			;67e3
	ld h,(hl)		;67e5
	ld (hl),a		;67e6
	ld h,(hl)		;67e7
	or 066h			;67e8
	ld (hl),a		;67ea
	or 066h			;67eb
	ld h,(hl)		;67ed
	rst 30h			;67ee
	ld (hl),a		;67ef
	ld h,(hl)		;67f0
	ld h,(hl)		;67f1
	ld (hl),a		;67f2
	ld (hl),a		;67f3
	halt			;67f4
	ld l,a			;67f5
	ld (hl),a		;67f6
	ld (hl),a		;67f7
	ld (hl),a		;67f8
	halt			;67f9
	halt			;67fa
	ld (hl),a		;67fb
	ld (hl),a		;67fc
	ld (hl),a		;67fd
	ld (hl),a		;67fe
l67ffh:
	ld (hl),a		;67ff
	ld (hl),a		;6800
	ld (hl),a		;6801
	ld h,(hl)		;6802
	ld l,a			;6803
	rst 38h			;6804
	ld (l6666h),hl		;6805
	ld l,a			;6808
	rst 38h			;6809
	ld h,(hl)		;680a
	ld h,(hl)		;680b
	ld l,a			;680c
	rst 38h			;680d
	ld h,(hl)		;680e
	ld h,(hl)		;680f
	ld l,a			;6810
	inc sp			;6811
	ld h,(hl)		;6812
	rst 38h			;6813
	rst 38h			;6814
	jp p,l6666h		;6815
	ld h,(hl)		;6818
	jp p,l6666h		;6819
	ld h,(hl)		;681c
	jp p,l7677h		;681d
	ld h,(hl)		;6820
	jp p,0fff2h		;6821
	rst 38h			;6824
	or 0ffh			;6825
	cpl			;6827
	ld h,(hl)		;6828
	ld h,(hl)		;6829
	jp p,0ff2fh		;682a
	or 0ffh			;682d
	rst 38h			;682f
	or 066h			;6830
	di			;6832
	ccf			;6833
	ld h,(hl)		;6834
	ld h,(hl)		;6835
	jp p,l6626h		;6836
	ld h,(hl)		;6839
	jp p,l66f6h		;683a
	ld h,(hl)		;683d
	jp p,l66f6h		;683e
	ld h,(hl)		;6841
	ld h,(hl)		;6842
	ld h,(hl)		;6843
	ld h,(hl)		;6844
	ld l,a			;6845
	rst 38h			;6846
	rst 38h			;6847
	or 067h			;6848
	ld h,(hl)		;684a
	ld h,(hl)		;684b
	ld h,(hl)		;684c
	ld h,a			;684d
	ld h,(hl)		;684e
	ld h,(hl)		;684f
	ld h,(hl)		;6850
	ld (hl),a		;6851
	ld h,(hl)		;6852
	ld h,(hl)		;6853
	ld h,a			;6854
	ld (hl),a		;6855
	ld h,(hl)		;6856
	ld h,(hl)		;6857
	ld (hl),a		;6858
	ld (hl),a		;6859
	ld h,(hl)		;685a
	ld (hl),a		;685b
	ld (hl),a		;685c
	halt			;685d
	ld (hl),a		;685e
	ld (hl),a		;685f
	ld (hl),a		;6860
	ld (hl),a		;6861
	rst 38h			;6862
	rst 38h			;6863
	call p,07755h		;6864
	rst 38h			;6867
	rst 38h			;6868
	ld b,l			;6869
	ld (hl),a		;686a
	ld a,a			;686b
	rst 38h			;686c
	ld b,l			;686d
	ld h,(hl)		;686e
	ld h,a			;686f
	rst 38h			;6870
	ld b,l			;6871
	ld (hl),a		;6872
	ld h,(hl)		;6873
	rst 38h			;6874
	ld b,l			;6875
	ld (hl),a		;6876
	ld (hl),a		;6877
	ld l,a			;6878
	di			;6879
	ld (hl),a		;687a
	ld (hl),a		;687b
	ld a,a			;687c
	di			;687d
	halt			;687e
	ld h,a			;687f
	ld a,a			;6880
	di			;6881
	ld d,l			;6882
	ld d,l			;6883
	ld e,a			;6884
	ld de,05555h		;6885
	ld d,l			;6888
	pop af			;6889
	ld d,l			;688a
	ld d,l			;688b
	ld d,l			;688c
	pop af			;688d
	ld d,l			;688e
	ld d,l			;688f
	ld d,l			;6890
	pop af			;6891
	ld d,l			;6892
	ld d,l			;6893
	ld d,h			;6894
	pop af			;6895
l6896h:
	ld b,l			;6896
	ld d,l			;6897
	ld d,h			;6898
	ld c,a			;6899
	ld b,h			;689a
	ld b,h			;689b
	ld b,h			;689c
	ld c,a			;689d
	ld b,h			;689e
	ld b,h			;689f
	ld b,h			;68a0
	ld c,a			;68a1
	ld e,0eeh		;68a2
	xor 0eeh		;68a4
	ld de,01111h		;68a6
	ld de,01111h		;68a9
	ld de,01188h		;68ac
	ld de,0ee11h		;68af
	ld de,01118h		;68b2
	ld de,01e11h		;68b5
	ld de,01111h		;68b8
	ld de,01111h		;68bb
	ld de,01111h		;68be
	ld de,01111h		;68c1
l68c4h:
	ld de,011e1h		;68c4
	ld de,0111eh		;68c7
	ld de,01111h		;68ca
	adc a,b			;68cd
	ld de,01811h		;68ce
	adc a,b			;68d1
	ld de,0f811h		;68d2
	adc a,a			;68d5
	ld de,0881fh		;68d6
	rst 38h			;68d9
	ld de,08f88h		;68da
	rst 38h			;68dd
	rra			;68de
l68dfh:
	adc a,b			;68df
	rst 38h			;68e0
	rst 30h			;68e1
	sbc a,a			;68e2
l68e3h:
	rst 38h			;68e3
	cp 0efh			;68e4
	sbc a,c			;68e6
	sbc a,a			;68e7
	pop hl			;68e8
	adc a,a			;68e9
	sbc a,c			;68ea
	sbc a,a			;68eb
	jr l68dfh		;68ec
	sbc a,c			;68ee
	pop af			;68ef
	jr l68e3h		;68f0
	sbc a,c			;68f2
	pop af			;68f3
	rra			;68f4
	jr l6896h		;68f5
	ld de,0118fh		;68f7
	sbc a,a			;68fa
	ld de,0118fh		;68fb
	sbc a,a			;68fe
	ld de,0118fh		;68ff
	ld de,018f1h		;6902
	pop af			;6905
	ld de,018f1h		;6906
	pop af			;6909
	rra			;690a
	ld de,0118fh		;690b
	rra			;690e
	adc a,b			;690f
	adc a,a			;6910
	ld de,0118fh		;6911
	adc a,a			;6914
	ld de,0118fh		;6915
	adc a,a			;6918
	jr $-111		;6919
	ld de,0818fh		;691b
	adc a,a			;691e
	ld de,0111fh		;691f
	ld de,08811h		;6922
	ret m			;6925
	ld de,08f11h		;6926
	rst 38h			;6929
	ld de,0ff18h		;692a
	di			;692d
	ld de,0ff88h		;692e
	call p,08f11h		;6931
	rst 38h			;6934
	inc h			;6935
	adc a,b			;6936
	adc a,a			;6937
	rst 38h			;6938
	inc hl			;6939
	jr l68c4h		;693a
	rst 38h			;693c
	ld (08f11h),hl		;693d
	adc a,a			;6940
	rst 38h			;6941
	rra			;6942
	rst 38h			;6943
	rst 38h			;6944
	rst 30h			;6945
	rst 38h			;6946
	push af			;6947
	ld d,l			;6948
	rst 30h			;6949
	ld d,l			;694a
	push af			;694b
	ld d,l			;694c
	cp 055h			;694d
	push af			;694f
	ld d,h			;6950
	cp 044h			;6951
	call p,0f744h		;6953
	inc sp			;6956
	call p,0f644h		;6957
	cpl			;695a
	di			;695b
	inc sp			;695c
	rst 30h			;695d
	rst 38h			;695e
	di			;695f
	inc sp			;6960
	rst 30h			;6961
	xor 0e7h		;6962
	ret m			;6964
	adc a,b			;6965
	ld (hl),a		;6966
	xor 07fh		;6967
	adc a,b			;6969
	ld h,(hl)		;696a
	ld (hl),a		;696b
	rst 28h			;696c
	adc a,b			;696d
	ld a,a			;696e
	ld h,a			;696f
	ld (hl),a		;6970
	ret m			;6971
	rst 20h			;6972
	or 067h			;6973
	rst 38h			;6975
	ld (hl),a		;6976
	ld a,a			;6977
	ld h,(hl)		;6978
	ld a,a			;6979
	ld h,a			;697a
	ld (hl),a		;697b
	rst 38h			;697c
	ld h,(hl)		;697d
	ld h,(hl)		;697e
	ld h,a			;697f
	ld a,a			;6980
	rst 38h			;6981
	pop af			;6982
	ld de,01111h		;6983
	adc a,a			;6986
	ld de,01111h		;6987
	adc a,b			;698a
	rst 38h			;698b
	ld de,0881fh		;698c
	adc a,b			;698f
	rst 38h			;6990
	rst 38h			;6991
	adc a,b			;6992
	adc a,b			;6993
	adc a,b			;6994
	adc a,a			;6995
	ret m			;6996
	adc a,b			;6997
	adc a,b			;6998
	adc a,a			;6999
	rst 38h			;699a
	adc a,b			;699b
	adc a,b			;699c
	adc a,a			;699d
	rst 38h			;699e
	ret m			;699f
	adc a,b			;69a0
	adc a,a			;69a1
	call p,04444h		;69a2
	ld b,h			;69a5
	call p,04444h		;69a6
	ld b,h			;69a9
	inc (hl)		;69aa
	ld b,h			;69ab
	ld b,h			;69ac
	ld b,e			;69ad
	inc (hl)		;69ae
	ld b,h			;69af
	ld b,h			;69b0
	ld b,e			;69b1
	inc (hl)		;69b2
	ld b,h			;69b3
	ld b,h			;69b4
	ld b,e			;69b5
	inc (hl)		;69b6
	ld b,h			;69b7
	ld b,h			;69b8
	ld b,e			;69b9
	inc sp			;69ba
	ld b,h			;69bb
	ld b,h			;69bc
	ld b,e			;69bd
	inc sp			;69be
	ld b,h			;69bf
	ld b,h			;69c0
	ld (0f63fh),a		;69c1
	halt			;69c4
	ld h,a			;69c5
	ccf			;69c6
	rst 30h			;69c7
	ld h,(hl)		;69c8
	ld (hl),a		;69c9
	rst 38h			;69ca
	or 067h			;69cb
	ld (hl),a		;69cd
	rst 38h			;69ce
	or 077h			;69cf
	ld (hl),a		;69d1
	rst 38h			;69d2
	or 077h			;69d3
	ld (hl),a		;69d5
	rst 38h			;69d6
	ld h,a			;69d7
	ld (hl),a		;69d8
	ld (hl),a		;69d9
	rst 38h			;69da
	ld h,a			;69db
	ld (hl),a		;69dc
	ld (hl),a		;69dd
	rst 38h			;69de
	ld h,a			;69df
	ld (hl),a		;69e0
	ld (hl),a		;69e1
	ld (hl),a		;69e2
	ld (hl),a		;69e3
	ld (hl),a		;69e4
	ld (hl),a		;69e5
	ld (hl),a		;69e6
	ld (hl),a		;69e7
	ld (hl),a		;69e8
	ld (hl),a		;69e9
	ld (hl),a		;69ea
	ld (hl),a		;69eb
	ld (hl),a		;69ec
	ld (hl),a		;69ed
	ld (hl),a		;69ee
	ld (hl),a		;69ef
	ld (hl),a		;69f0
	ld (hl),a		;69f1
	ld (hl),a		;69f2
	ld (hl),a		;69f3
	ld (hl),a		;69f4
	ld (hl),a		;69f5
	ld (hl),a		;69f6
	ld (hl),a		;69f7
	ld (hl),a		;69f8
	ld (hl),a		;69f9
	ld (hl),a		;69fa
	ld (hl),a		;69fb
	ld (hl),a		;69fc
	ld (hl),a		;69fd
	ld (hl),a		;69fe
	ld (hl),a		;69ff
	ld (hl),a		;6a00
	ld (hl),a		;6a01
	ld (hl),a		;6a02
	ld (hl),a		;6a03
	ld a,a			;6a04
	di			;6a05
	ld (hl),a		;6a06
	ld (hl),a		;6a07
	ld a,a			;6a08
	inc (hl)		;6a09
	ld (hl),a		;6a0a
	ld (hl),a		;6a0b
	ld a,a			;6a0c
	inc (hl)		;6a0d
	ld (hl),a		;6a0e
	ld (hl),a		;6a0f
	ld a,a			;6a10
	inc (hl)		;6a11
	ld (hl),a		;6a12
	ld (hl),a		;6a13
	ld a,a			;6a14
	inc (hl)		;6a15
	ld (hl),a		;6a16
	ld (hl),a		;6a17
	ld a,a			;6a18
	inc sp			;6a19
	ld (hl),a		;6a1a
	ld (hl),a		;6a1b
	ld (hl),a		;6a1c
	call p,sub_7777h	;6a1d
	ld (hl),a		;6a20
	call p,0f6f3h		;6a21
	ld (hl),a		;6a24
	ld (hl),a		;6a25
	call p,sub_773fh	;6a26
	ld (hl),a		;6a29
	call p,sub_773fh	;6a2a
	ld (hl),a		;6a2d
	call p,sub_773fh	;6a2e
	ld (hl),a		;6a31
	call p,sub_773fh	;6a32
	ld (hl),a		;6a35
	call p,sub_773fh	;6a36
	ld (hl),a		;6a39
	di			;6a3a
	ld c,a			;6a3b
	ld (hl),a		;6a3c
	ld (hl),a		;6a3d
	ld c,a			;6a3e
	inc (hl)		;6a3f
	rst 30h			;6a40
	ld (hl),a		;6a41
	ld (hl),a		;6a42
	ld (hl),a		;6a43
	ld (hl),a		;6a44
	ld (hl),a		;6a45
	ld (hl),a		;6a46
	ld (hl),a		;6a47
	ld (hl),a		;6a48
	ld (hl),a		;6a49
	ld (hl),a		;6a4a
	ld (hl),a		;6a4b
	ld (hl),a		;6a4c
	ld (hl),a		;6a4d
	ld (hl),a		;6a4e
	ld (hl),a		;6a4f
	ld (hl),a		;6a50
	ld (hl),a		;6a51
	ld (hl),a		;6a52
	ld (hl),a		;6a53
	ld (hl),a		;6a54
	ld (hl),a		;6a55
	ld (hl),a		;6a56
	ld (hl),a		;6a57
	ld (hl),a		;6a58
	ld (hl),a		;6a59
	ld (hl),a		;6a5a
	ld (hl),a		;6a5b
	ld (hl),a		;6a5c
	ld (hl),a		;6a5d
	ld (hl),a		;6a5e
	ld (hl),a		;6a5f
	ld (hl),a		;6a60
	ld (hl),a		;6a61
	ld (hl),a		;6a62
	halt			;6a63
	ld l,a			;6a64
	di			;6a65
	ld (hl),a		;6a66
	ld (hl),a		;6a67
	ld l,a			;6a68
	di			;6a69
	ld (hl),a		;6a6a
	ld (hl),a		;6a6b
	ld a,a			;6a6c
	rst 38h			;6a6d
	ld (hl),a		;6a6e
	ld (hl),a		;6a6f
	halt			;6a70
	rst 38h			;6a71
	ld (hl),a		;6a72
	ld (hl),a		;6a73
	halt			;6a74
	rst 38h			;6a75
	ld (hl),a		;6a76
	ld (hl),a		;6a77
	halt			;6a78
	ld l,a			;6a79
	ld (hl),a		;6a7a
	ld (hl),a		;6a7b
	halt			;6a7c
	ld l,a			;6a7d
	ld (hl),a		;6a7e
	ld (hl),a		;6a7f
	ld h,(hl)		;6a80
	ld l,a			;6a81
	ld b,h			;6a82
	ld b,h			;6a83
	ld b,h			;6a84
	ld c,a			;6a85
	ld b,h			;6a86
	ld b,h			;6a87
	ld b,h			;6a88
	ld c,a			;6a89
	inc (hl)		;6a8a
	ld b,h			;6a8b
	ld b,h			;6a8c
	ld b,h			;6a8d
	inc (hl)		;6a8e
	ld b,h			;6a8f
	ld b,h			;6a90
	ld b,h			;6a91
	inc (hl)		;6a92
	ld b,h			;6a93
	ld b,h			;6a94
	ld b,h			;6a95
	inc h			;6a96
	ld b,h			;6a97
	ld b,h			;6a98
	ld b,h			;6a99
	inc h			;6a9a
	ld b,h			;6a9b
	ld b,h			;6a9c
	ld b,h			;6a9d
	inc hl			;6a9e
	ld b,h			;6a9f
	ld b,h			;6aa0
	inc sp			;6aa1
	ld de,01111h		;6aa2
	ld de,01111h		;6aa5
	ld de,0f11fh		;6aa8
	ld de,0f811h		;6aab
	pop af			;6aae
	ld de,088ffh		;6aaf
	rst 38h			;6ab2
	ret m			;6ab3
	adc a,b			;6ab4
	adc a,b			;6ab5
	ret m			;6ab6
	adc a,b			;6ab7
	adc a,b			;6ab8
	adc a,b			;6ab9
	ret m			;6aba
	adc a,b			;6abb
	adc a,b			;6abc
	adc a,a			;6abd
	ret m			;6abe
	adc a,b			;6abf
	adc a,b			;6ac0
	rst 38h			;6ac1
	ret m			;6ac2
	adc a,a			;6ac3
	rst 38h			;6ac4
	ld a,(hl)		;6ac5
	adc a,b			;6ac6
	adc a,a			;6ac7
	or 07eh			;6ac8
	adc a,b			;6aca
	rst 38h			;6acb
	ld h,a			;6acc
	rst 20h			;6acd
	adc a,a			;6ace
	or 07eh			;6acf
	ld (hl),a		;6ad1
	adc a,a			;6ad2
	ld h,a			;6ad3
	ld (hl),a		;6ad4
	ld a,(hl)		;6ad5
	rst 38h			;6ad6
	ld h,a			;6ad7
	ld (hl),a		;6ad8
	rst 20h			;6ad9
	or 077h			;6ada
	ld (hl),a		;6adc
	ld (hl),a		;6add
	or 077h			;6ade
	ld (hl),a		;6ae0
	halt			;6ae1
	sbc a,a			;6ae2
	ld de,0118fh		;6ae3
	sbc a,a			;6ae6
	ld de,0118fh		;6ae7
	rst 38h			;6aea
	pop af			;6aeb
	rra			;6aec
	adc a,b			;6aed
l6aeeh:
	rst 38h			;6aee
	pop af			;6aef
	adc a,b			;6af0
	ret m			;6af1
	rst 38h			;6af2
	rst 38h			;6af3
	jr l6aeeh		;6af4
	rst 38h			;6af6
	rst 38h			;6af7
	pop af			;6af8
	adc a,a			;6af9
	rst 38h			;6afa
	rst 38h			;6afb
	rst 38h			;6afc
	adc a,b			;6afd
	rst 38h			;6afe
	rst 38h			;6aff
	rst 38h			;6b00
	rst 38h			;6b01
	adc a,a			;6b02
	ld de,0111fh		;6b03
	adc a,a			;6b06
	ld de,0f188h		;6b07
	adc a,a			;6b0a
	adc a,b			;6b0b
	adc a,b			;6b0c
	pop af			;6b0d
	ret m			;6b0e
	ret m			;6b0f
	adc a,b			;6b10
	pop af			;6b11
	adc a,b			;6b12
	ret m			;6b13
	adc a,b			;6b14
	adc a,a			;6b15
	adc a,b			;6b16
	adc a,a			;6b17
	ret m			;6b18
	adc a,a			;6b19
	ret m			;6b1a
	adc a,b			;6b1b
	rst 38h			;6b1c
	adc a,b			;6b1d
	rst 38h			;6b1e
	adc a,b			;6b1f
	rst 38h			;6b20
	rst 38h			;6b21
	ld de,08f1fh		;6b22
	rst 38h			;6b25
	ld de,08f1fh		;6b26
	pop af			;6b29
	ld de,08f1fh		;6b2a
	adc a,b			;6b2d
	ld de,08f18h		;6b2e
	adc a,b			;6b31
	ld de,0ff88h		;6b32
	adc a,b			;6b35
	adc a,b			;6b36
	adc a,a			;6b37
	rst 38h			;6b38
	adc a,b			;6b39
	rst 38h			;6b3a
	rst 38h			;6b3b
	adc a,b			;6b3c
	rst 38h			;6b3d
	ret m			;6b3e
	adc a,b			;6b3f
	rst 38h			;6b40
	rst 38h			;6b41
	rst 38h			;6b42
	jp p,0f722h		;6b43
	rst 38h			;6b46
	rst 38h			;6b47
	ld (01ff7h),hl		;6b48
	rst 38h			;6b4b
	ld (08ff7h),hl		;6b4c
	rst 38h			;6b4f
	rst 38h			;6b50
	rst 30h			;6b51
	adc a,a			;6b52
	cpl			;6b53
	or 066h			;6b54
	adc a,a			;6b56
	ld d,e			;6b57
	or 066h			;6b58
	rst 38h			;6b5a
	ld d,e			;6b5b
	or 066h			;6b5c
	rst 38h			;6b5e
	ld d,e			;6b5f
	or 066h			;6b60
	halt			;6b62
	ld h,(hl)		;6b63
	halt			;6b64
	rst 38h			;6b65
	halt			;6b66
	ld h,(hl)		;6b67
	ld h,(hl)		;6b68
	ld l,a			;6b69
	halt			;6b6a
	ld h,(hl)		;6b6b
	ld h,(hl)		;6b6c
	ld h,(hl)		;6b6d
	ld h,(hl)		;6b6e
	ld h,(hl)		;6b6f
	ld h,(hl)		;6b70
	ld h,(hl)		;6b71
	ld h,(hl)		;6b72
	ld h,(hl)		;6b73
	ld h,(hl)		;6b74
	ld h,(hl)		;6b75
	ld h,(hl)		;6b76
	ld h,(hl)		;6b77
	ld h,(hl)		;6b78
	ld h,(hl)		;6b79
	ld h,(hl)		;6b7a
	ld h,(hl)		;6b7b
	ld h,(hl)		;6b7c
	ld h,(hl)		;6b7d
	ld h,(hl)		;6b7e
	ld h,(hl)		;6b7f
	ld h,(hl)		;6b80
	ld h,(hl)		;6b81
	rst 38h			;6b82
	rst 38h			;6b83
	ret m			;6b84
	adc a,a			;6b85
	rst 38h			;6b86
	rst 38h			;6b87
	rst 38h			;6b88
	rst 38h			;6b89
	rst 38h			;6b8a
	rst 38h			;6b8b
	rst 38h			;6b8c
	rst 38h			;6b8d
	ld l,a			;6b8e
	rst 38h			;6b8f
	rst 38h			;6b90
	rst 38h			;6b91
	ld h,(hl)		;6b92
	rst 38h			;6b93
	rst 38h			;6b94
	rst 38h			;6b95
	ld h,(hl)		;6b96
	ld l,a			;6b97
	jp p,l662fh		;6b98
	rst 38h			;6b9b
	call p,0ff4fh		;6b9c
	rst 38h			;6b9f
	di			;6ba0
	ccf			;6ba1
	inc sp			;6ba2
	inc sp			;6ba3
	inc sp			;6ba4
	ld (03333h),a		;6ba5
	inc sp			;6ba8
	ld (03333h),a		;6ba9
	inc sp			;6bac
	ld (03333h),a		;6bad
	inc sp			;6bb0
	ld (03333h),a		;6bb1
	inc sp			;6bb4
	ld (03333h),a		;6bb5
	inc sp			;6bb8
	ld (03333h),a		;6bb9
	inc sp			;6bbc
	ld (022f2h),a		;6bbd
	ld (0ff2fh),hl		;6bc0
	ld h,a			;6bc3
	ld (hl),a		;6bc4
	ld (hl),a		;6bc5
	rst 38h			;6bc6
	ld h,(hl)		;6bc7
	ld h,a			;6bc8
	ld (hl),a		;6bc9
	rst 38h			;6bca
	ld h,(hl)		;6bcb
	ld h,(hl)		;6bcc
	ld h,(hl)		;6bcd
	rst 38h			;6bce
	or 066h			;6bcf
	ld h,(hl)		;6bd1
	rst 38h			;6bd2
	or 066h			;6bd3
	ld h,(hl)		;6bd5
	rst 38h			;6bd6
	rst 38h			;6bd7
	or 066h			;6bd8
	rst 38h			;6bda
	rst 38h			;6bdb
	rst 38h			;6bdc
	rst 38h			;6bdd
	rst 38h			;6bde
	rst 38h			;6bdf
	rst 38h			;6be0
	rst 38h			;6be1
	ld (hl),a		;6be2
	ld (hl),a		;6be3
	ld (hl),a		;6be4
	ld (hl),a		;6be5
	ld (hl),a		;6be6
	ld (hl),a		;6be7
	ld (hl),a		;6be8
	ld (hl),a		;6be9
	ld h,a			;6bea
	ld (hl),a		;6beb
	ld (hl),a		;6bec
	ld (hl),a		;6bed
	ld h,(hl)		;6bee
	ld h,(hl)		;6bef
	ld h,(hl)		;6bf0
	ld h,(hl)		;6bf1
	ld h,(hl)		;6bf2
	ld h,(hl)		;6bf3
	ld h,(hl)		;6bf4
	ld h,(hl)		;6bf5
	ld h,(hl)		;6bf6
	ld h,(hl)		;6bf7
	ld h,(hl)		;6bf8
	ld h,(hl)		;6bf9
	rst 38h			;6bfa
	or 066h			;6bfb
	ld h,(hl)		;6bfd
	ld h,(hl)		;6bfe
	ld h,(hl)		;6bff
	ld h,(hl)		;6c00
	ld h,(hl)		;6c01
	ld (hl),a		;6c02
	ld (hl),a		;6c03
	ld (hl),a		;6c04
	di			;6c05
	ld (hl),a		;6c06
	ld (hl),a		;6c07
	ld (hl),a		;6c08
	di			;6c09
	halt			;6c0a
	ld h,(hl)		;6c0b
	ld h,(hl)		;6c0c
	di			;6c0d
	ld h,(hl)		;6c0e
	ld h,(hl)		;6c0f
	ld h,(hl)		;6c10
	di			;6c11
	ld h,(hl)		;6c12
	ld h,(hl)		;6c13
	ld l,a			;6c14
	jp p,l6666h		;6c15
	ld h,(hl)		;6c18
	rst 38h			;6c19
	ld h,(hl)		;6c1a
	ld h,(hl)		;6c1b
	ld h,(hl)		;6c1c
	rst 38h			;6c1d
	ld (hl),a		;6c1e
	ld (hl),a		;6c1f
	ld a,a			;6c20
	jp p,0434fh		;6c21
	rst 30h			;6c24
	ld (hl),a		;6c25
	ld c,a			;6c26
	ld b,e			;6c27
	rst 30h			;6c28
	ld (hl),a		;6c29
	ccf			;6c2a
	ld b,e			;6c2b
	or 066h			;6c2c
	ccf			;6c2e
	inc sp			;6c2f
	or 066h			;6c30
	cpl			;6c32
	ld (l66f6h),hl		;6c33
	cpl			;6c36
	cpl			;6c37
	or 066h			;6c38
	rst 38h			;6c3a
	rst 38h			;6c3b
	or 077h			;6c3c
	cpl			;6c3e
	ld (l77f7h),hl		;6c3f
	ld (hl),a		;6c42
	ld (hl),a		;6c43
	ld (hl),a		;6c44
	ld (hl),a		;6c45
	ld (hl),a		;6c46
	ld (hl),a		;6c47
	ld (hl),a		;6c48
	halt			;6c49
	ld h,(hl)		;6c4a
	ld h,(hl)		;6c4b
	ld h,(hl)		;6c4c
	ld h,(hl)		;6c4d
	ld h,(hl)		;6c4e
	ld h,(hl)		;6c4f
	ld h,(hl)		;6c50
	ld h,(hl)		;6c51
	ld h,(hl)		;6c52
	ld h,(hl)		;6c53
	ld h,(hl)		;6c54
	ld h,(hl)		;6c55
	ld h,(hl)		;6c56
	ld h,(hl)		;6c57
	ld h,(hl)		;6c58
	ld l,a			;6c59
	halt			;6c5a
	ld h,(hl)		;6c5b
	ld h,(hl)		;6c5c
	ld h,(hl)		;6c5d
	ld (hl),a		;6c5e
	ld (hl),a		;6c5f
	halt			;6c60
	ld h,(hl)		;6c61
	ld (hl),a		;6c62
	ld h,(hl)		;6c63
	ld h,(hl)		;6c64
	ld l,a			;6c65
	ld h,(hl)		;6c66
	ld h,(hl)		;6c67
	ld h,(hl)		;6c68
	rst 38h			;6c69
	ld h,(hl)		;6c6a
	ld h,(hl)		;6c6b
	ld h,(hl)		;6c6c
	rst 38h			;6c6d
	ld h,(hl)		;6c6e
	ld h,(hl)		;6c6f
	ld l,a			;6c70
	rst 38h			;6c71
	ld h,(hl)		;6c72
	rst 38h			;6c73
	rst 38h			;6c74
	rst 38h			;6c75
	rst 38h			;6c76
	rst 38h			;6c77
	rst 38h			;6c78
	rst 38h			;6c79
	ld h,(hl)		;6c7a
	ld l,a			;6c7b
	rst 38h			;6c7c
	rst 38h			;6c7d
	ld h,(hl)		;6c7e
	ld h,(hl)		;6c7f
	rst 38h			;6c80
	rst 38h			;6c81
	inc hl			;6c82
	inc sp			;6c83
	inc sp			;6c84
	inc sp			;6c85
	inc hl			;6c86
	inc sp			;6c87
	inc sp			;6c88
	inc sp			;6c89
	inc hl			;6c8a
	inc sp			;6c8b
	inc sp			;6c8c
	inc sp			;6c8d
	inc hl			;6c8e
	inc sp			;6c8f
l6c90h:
	inc sp			;6c90
	inc sp			;6c91
	inc hl			;6c92
	inc sp			;6c93
	inc sp			;6c94
	inc sp			;6c95
	inc hl			;6c96
	inc sp			;6c97
	inc sp			;6c98
	inc sp			;6c99
	inc hl			;6c9a
	inc sp			;6c9b
	inc sp			;6c9c
	inc sp			;6c9d
	jp p,02222h		;6c9e
	ld (088f8h),hl		;6ca1
	adc a,a			;6ca4
	rst 38h			;6ca5
	ret m			;6ca6
	adc a,a			;6ca7
	rst 38h			;6ca8
	rst 38h			;6ca9
	rst 38h			;6caa
	rst 38h			;6cab
	rst 38h			;6cac
	rst 38h			;6cad
	rst 38h			;6cae
	rst 38h			;6caf
	rst 38h			;6cb0
	rst 38h			;6cb1
	rst 38h			;6cb2
	rst 38h			;6cb3
	rst 38h			;6cb4
	or 0f2h			;6cb5
	cpl			;6cb7
	rst 38h			;6cb8
	or 0f4h			;6cb9
	ld c,a			;6cbb
	rst 38h			;6cbc
	rst 38h			;6cbd
	di			;6cbe
	ccf			;6cbf
	rst 38h			;6cc0
	rst 38h			;6cc1
	or 077h			;6cc2
	halt			;6cc4
	ld h,(hl)		;6cc5
	ld h,a			;6cc6
	ld (hl),a		;6cc7
	ld h,(hl)		;6cc8
	ld h,(hl)		;6cc9
	ld h,a			;6cca
	halt			;6ccb
	ld h,(hl)		;6ccc
	ld h,a			;6ccd
	ld h,(hl)		;6cce
	ld l,a			;6ccf
	ld h,(hl)		;6cd0
	ld h,a			;6cd1
	ld h,(hl)		;6cd2
	or 066h			;6cd3
	ld h,a			;6cd5
	ld l,a			;6cd6
	ld h,(hl)		;6cd7
	ld h,(hl)		;6cd8
	ld h,(hl)		;6cd9
	or 066h			;6cda
	ld h,(hl)		;6cdc
	ld h,(hl)		;6cdd
	or 066h			;6cde
	ld h,(hl)		;6ce0
	ld h,(hl)		;6ce1
	rst 38h			;6ce2
	rst 38h			;6ce3
	rst 30h			;6ce4
	pop af			;6ce5
	rst 38h			;6ce6
	rst 38h			;6ce7
	rst 30h			;6ce8
	rst 38h			;6ce9
	rst 38h			;6cea
	rst 38h			;6ceb
	rst 38h			;6cec
	ld a,a			;6ced
	rst 38h			;6cee
	rst 38h			;6cef
	rst 38h			;6cf0
	halt			;6cf1
	rst 38h			;6cf2
	rst 38h			;6cf3
	rst 38h			;6cf4
	rst 30h			;6cf5
	rst 38h			;6cf6
	rst 38h			;6cf7
	rst 38h			;6cf8
	rst 38h			;6cf9
	rst 38h			;6cfa
	rst 38h			;6cfb
	rst 38h			;6cfc
	rst 38h			;6cfd
	rst 38h			;6cfe
	rst 38h			;6cff
	rst 38h			;6d00
	rst 38h			;6d01
	adc a,b			;6d02
	rst 38h			;6d03
	rst 38h			;6d04
	adc a,a			;6d05
	jr l6c90h		;6d06
	adc a,b			;6d08
	adc a,b			;6d09
	ret m			;6d0a
	adc a,b			;6d0b
	adc a,b			;6d0c
	adc a,b			;6d0d
	rst 38h			;6d0e
	rst 38h			;6d0f
	adc a,b			;6d10
	adc a,b			;6d11
	ld h,(hl)		;6d12
	rst 38h			;6d13
	rst 38h			;6d14
	rst 38h			;6d15
	halt			;6d16
	ld h,(hl)		;6d17
	rst 38h			;6d18
	rst 38h			;6d19
	rst 38h			;6d1a
	ld h,(hl)		;6d1b
	ld h,(hl)		;6d1c
	ld h,(hl)		;6d1d
	rst 38h			;6d1e
	rst 38h			;6d1f
	rst 38h			;6d20
	rst 38h			;6d21
	rst 38h			;6d22
	rst 38h			;6d23
	rst 38h			;6d24
	rra			;6d25
	adc a,b			;6d26
	adc a,b			;6d27
	add a,c			;6d28
	rst 38h			;6d29
	adc a,b			;6d2a
	adc a,b			;6d2b
	adc a,a			;6d2c
	or 088h			;6d2d
	adc a,a			;6d2f
	rst 38h			;6d30
	or 0ffh			;6d31
	rst 38h			;6d33
	rst 38h			;6d34
	ld h,(hl)		;6d35
	rst 38h			;6d36
	or 066h			;6d37
	ld h,(hl)		;6d39
	ld h,(hl)		;6d3a
	ld h,(hl)		;6d3b
	rst 38h			;6d3c
	rst 38h			;6d3d
	rst 38h			;6d3e
	rst 38h			;6d3f
	rst 38h			;6d40
	rst 38h			;6d41
	ld a,a			;6d42
	ld d,e			;6d43
	or 066h			;6d44
	ld l,a			;6d46
	ld d,e			;6d47
	or 066h			;6d48
	ld l,a			;6d4a
	ld d,e			;6d4b
	or 066h			;6d4c
	ld l,a			;6d4e
	ld d,e			;6d4f
	or 066h			;6d50
	ld l,a			;6d52
	ld d,e			;6d53
	or 0ffh			;6d54
	rst 38h			;6d56
	ld d,e			;6d57
	rst 38h			;6d58
	rst 38h			;6d59
	rst 38h			;6d5a
	ld d,e			;6d5b
	rst 38h			;6d5c
	rst 38h			;6d5d
	rst 38h			;6d5e
	ld d,e			;6d5f
	rst 38h			;6d60
	rst 38h			;6d61
	ld h,(hl)		;6d62
	ld h,(hl)		;6d63
	ld h,(hl)		;6d64
	rst 38h			;6d65
	ld h,(hl)		;6d66
	ld h,(hl)		;6d67
	rst 38h			;6d68
	rst 38h			;6d69
	ld h,(hl)		;6d6a
	rst 38h			;6d6b
	rst 38h			;6d6c
	jp p,0ffffh		;6d6d
	rst 38h			;6d70
	ld (0ffffh),a		;6d71
	rst 38h			;6d74
	ld (0ffffh),a		;6d75
	di			;6d78
	ld (0ffffh),hl		;6d79
	di			;6d7c
	ld (0ffffh),hl		;6d7d
	di			;6d80
	ld (022f2h),hl		;6d81
	di			;6d84
	ccf			;6d85
	ld (0f322h),hl		;6d86
	ccf			;6d89
	ld (0f322h),hl		;6d8a
	pop af			;6d8d
	ld (0f322h),hl		;6d8e
	ret m			;6d91
	ld (0f322h),hl		;6d92
	ret m			;6d95
	ld (0ff22h),hl		;6d96
	ret m			;6d99
	ld (02222h),hl		;6d9a
	ret m			;6d9d
	ld (02222h),hl		;6d9e
	rst 38h			;6da1
	rst 38h			;6da2
	rst 38h			;6da3
	rst 38h			;6da4
	rst 38h			;6da5
	cp 0eeh			;6da6
	xor 0efh		;6da8
	pop hl			;6daa
	ld de,01e11h		;6dab
	ld de,01111h		;6dae
	ld e,011h		;6db1
	ld de,01e11h		;6db3
	adc a,b			;6db6
	adc a,b			;6db7
	adc a,b			;6db8
	adc a,(hl)		;6db9
	rst 38h			;6dba
	rst 38h			;6dbb
	rst 38h			;6dbc
	rst 38h			;6dbd
	ld de,01111h		;6dbe
	rra			;6dc1
	rst 38h			;6dc2
	rst 38h			;6dc3
	rst 38h			;6dc4
	or 0f1h			;6dc5
	rst 38h			;6dc7
	rst 38h			;6dc8
	ld h,(hl)		;6dc9
	jr $+1			;6dca
	or 067h			;6dcc
	adc a,b			;6dce
	rst 38h			;6dcf
	or 067h			;6dd0
	adc a,b			;6dd2
	rst 38h			;6dd3
	ld h,(hl)		;6dd4
	ld h,(hl)		;6dd5
	adc a,b			;6dd6
	rst 38h			;6dd7
	ld h,(hl)		;6dd8
	ld h,(hl)		;6dd9
	adc a,b			;6dda
	rst 38h			;6ddb
	ld h,(hl)		;6ddc
	ld h,(hl)		;6ddd
	adc a,a			;6dde
	rst 38h			;6ddf
	or 066h			;6de0
	ld h,(hl)		;6de2
	ld h,(hl)		;6de3
	ld (hl),a		;6de4
	ld (hl),a		;6de5
	ld (hl),a		;6de6
	ld (hl),a		;6de7
	ld (hl),a		;6de8
	ld (hl),a		;6de9
	ld (hl),a		;6dea
	ld (hl),a		;6deb
	ld (hl),a		;6dec
	ld (hl),a		;6ded
	ld (hl),a		;6dee
	ld (hl),a		;6def
	ld (hl),a		;6df0
	ld (hl),a		;6df1
	ld (hl),a		;6df2
	ld (hl),a		;6df3
	ld (hl),a		;6df4
	ld (hl),a		;6df5
	ld h,(hl)		;6df6
	ld h,(hl)		;6df7
	ld h,(hl)		;6df8
	ld h,(hl)		;6df9
	ld h,(hl)		;6dfa
	ld h,(hl)		;6dfb
	ld h,(hl)		;6dfc
	ld h,a			;6dfd
	ld h,(hl)		;6dfe
	ld h,(hl)		;6dff
	ld h,(hl)		;6e00
	ld (hl),a		;6e01
	ld (hl),a		;6e02
	ld (hl),a		;6e03
	ld a,a			;6e04
	ld (sub_7777h),hl	;6e05
	ld a,a			;6e08
	inc sp			;6e09
	ld (hl),a		;6e0a
	ld (hl),a		;6e0b
	ld a,a			;6e0c
	inc (hl)		;6e0d
	ld (hl),a		;6e0e
	ld (hl),a		;6e0f
	ld a,a			;6e10
	inc (hl)		;6e11
	ld h,(hl)		;6e12
	ld h,(hl)		;6e13
	ld l,a			;6e14
	rst 38h			;6e15
	ld h,(hl)		;6e16
	ld (hl),a		;6e17
	ld a,a			;6e18
	ld b,h			;6e19
	ld (hl),a		;6e1a
	ld (hl),a		;6e1b
	ld a,a			;6e1c
	ld b,e			;6e1d
	halt			;6e1e
	ld h,(hl)		;6e1f
l6e20h:
	ld l,a			;6e20
	inc sp			;6e21
	rst 38h			;6e22
	inc sp			;6e23
	rst 30h			;6e24
	ld (hl),a		;6e25
	rst 38h			;6e26
	ld b,e			;6e27
	rst 30h			;6e28
	ld (hl),a		;6e29
	rst 38h			;6e2a
	ld b,e			;6e2b
	rst 30h			;6e2c
	ld (hl),a		;6e2d
	rst 38h			;6e2e
	ld c,a			;6e2f
	rst 30h			;6e30
	ld (hl),a		;6e31
	rst 38h			;6e32
	ld b,e			;6e33
	rst 30h			;6e34
	ld (hl),a		;6e35
	rst 38h			;6e36
	ld b,h			;6e37
	rst 30h			;6e38
	ld (hl),a		;6e39
	rst 38h			;6e3a
	inc sp			;6e3b
	rst 30h			;6e3c
	ld (hl),a		;6e3d
	rst 38h			;6e3e
	inc sp			;6e3f
	rst 30h			;6e40
	ld (hl),a		;6e41
	ld (hl),a		;6e42
	ld (hl),a		;6e43
	ld (hl),a		;6e44
	ld (hl),a		;6e45
	ld (hl),a		;6e46
	ld (hl),a		;6e47
	ld (hl),a		;6e48
	ld (hl),a		;6e49
	ld (hl),a		;6e4a
	ld (hl),a		;6e4b
	ld (hl),a		;6e4c
	ld (hl),a		;6e4d
	ld (hl),a		;6e4e
	ld (hl),a		;6e4f
	ld (hl),a		;6e50
	ld (hl),a		;6e51
	ld h,a			;6e52
	ld h,(hl)		;6e53
	ld h,(hl)		;6e54
	ld (hl),a		;6e55
	ld (hl),a		;6e56
	ld (hl),a		;6e57
	ld h,(hl)		;6e58
	ld h,(hl)		;6e59
	ld (hl),a		;6e5a
	ld (hl),a		;6e5b
	ld (hl),a		;6e5c
	halt			;6e5d
	ld (hl),a		;6e5e
	ld (hl),a		;6e5f
	ld (hl),a		;6e60
	ld (hl),a		;6e61
	halt			;6e62
	ld h,(hl)		;6e63
	ld l,a			;6e64
	rst 38h			;6e65
	ld (hl),a		;6e66
	halt			;6e67
	ld l,a			;6e68
	rra			;6e69
	ld (hl),a		;6e6a
	ld (hl),a		;6e6b
	ld l,a			;6e6c
	add a,c			;6e6d
	ld (hl),a		;6e6e
	ld (hl),a		;6e6f
	ld l,a			;6e70
	adc a,b			;6e71
	ld (hl),a		;6e72
	halt			;6e73
	ld l,a			;6e74
	adc a,b			;6e75
	ld h,(hl)		;6e76
	ld h,(hl)		;6e77
	ld l,a			;6e78
	adc a,b			;6e79
	ld h,(hl)		;6e7a
	ld l,a			;6e7b
	rst 38h			;6e7c
	adc a,b			;6e7d
	halt			;6e7e
	ld l,a			;6e7f
	rst 38h			;6e80
	ret m			;6e81
	rst 38h			;6e82
	rst 38h			;6e83
	rst 38h			;6e84
	jp p,0eefeh		;6e85
	xor 0efh		;6e88
	pop hl			;6e8a
	ld de,01e11h		;6e8b
	pop hl			;6e8e
	ld de,01111h		;6e8f
	pop hl			;6e92
	ld de,01111h		;6e93
	jr l6e20h		;6e96
	adc a,b			;6e98
	adc a,b			;6e99
	rst 38h			;6e9a
	rst 38h			;6e9b
	rst 38h			;6e9c
	rst 38h			;6e9d
	pop af			;6e9e
	ld de,01111h		;6e9f
	di			;6ea2
	ccf			;6ea3
	rst 38h			;6ea4
	rst 38h			;6ea5
	di			;6ea6
	ccf			;6ea7
	rst 38h			;6ea8
	rst 38h			;6ea9
	adc a,a			;6eaa
	ccf			;6eab
	ld (08f22h),hl		;6eac
	ccf			;6eaf
	ld (08f22h),hl		;6eb0
	ccf			;6eb3
	ld (08f22h),hl		;6eb4
	rst 38h			;6eb7
	ld (08f22h),hl		;6eb8
	ld (02222h),hl		;6ebb
	rst 38h			;6ebe
	ld (02222h),hl		;6ebf
	ld h,(hl)		;6ec2
	ld h,(hl)		;6ec3
	ld h,(hl)		;6ec4
	ld h,(hl)		;6ec5
	or 066h			;6ec6
	ld h,(hl)		;6ec8
	ld h,(hl)		;6ec9
	rst 38h			;6eca
	or 066h			;6ecb
	ld h,(hl)		;6ecd
	cpl			;6ece
	rst 38h			;6ecf
	or 066h			;6ed0
	ccf			;6ed2
	rst 38h			;6ed3
	rst 38h			;6ed4
	ld h,(hl)		;6ed5
	inc hl			;6ed6
	rst 38h			;6ed7
	rst 38h			;6ed8
	rst 38h			;6ed9
	inc hl			;6eda
	rst 38h			;6edb
	rst 38h			;6edc
	rst 38h			;6edd
	inc hl			;6ede
	rst 38h			;6edf
	rst 38h			;6ee0
	rst 38h			;6ee1
	rst 28h			;6ee2
	xor d			;6ee3
	sbc a,c			;6ee4
	sbc a,c			;6ee5
	ld e,0f9h		;6ee6
	sbc a,c			;6ee8
	ld sp,hl		;6ee9
	add a,c			;6eea
	ld sp,hl		;6eeb
	sbc a,c			;6eec
	ld sp,hl		;6eed
	ret m			;6eee
	ld sp,hl		;6eef
	sbc a,c			;6ef0
	ld sp,hl		;6ef1
	ret m			;6ef2
	ld sp,hl		;6ef3
	sbc a,a			;6ef4
	ld sp,hl		;6ef5
	rst 38h			;6ef6
	ld sp,hl		;6ef7
	sbc a,c			;6ef8
	sbc a,c			;6ef9
	rst 20h			;6efa
	rst 38h			;6efb
	ld sp,hl		;6efc
	sbc a,c			;6efd
	xor 077h		;6efe
	ld a,a			;6f00
	ld sp,hl		;6f01
	sbc a,a			;6f02
	sbc a,c			;6f03
	ld sp,hl		;6f04
	sbc a,c			;6f05
	sbc a,a			;6f06
	sbc a,c			;6f07
	ld sp,hl		;6f08
	sbc a,c			;6f09
	sbc a,a			;6f0a
	sbc a,a			;6f0b
	ld sp,hl		;6f0c
	sbc a,c			;6f0d
	rst 38h			;6f0e
	sbc a,c			;6f0f
	sbc a,c			;6f10
	sbc a,c			;6f11
	sbc a,a			;6f12
	sbc a,c			;6f13
	sbc a,c			;6f14
	sbc a,c			;6f15
	sbc a,c			;6f16
	sbc a,c			;6f17
	sbc a,c			;6f18
	sbc a,c			;6f19
	sbc a,c			;6f1a
	sbc a,c			;6f1b
	sbc a,c			;6f1c
	sbc a,c			;6f1d
	sbc a,c			;6f1e
	sbc a,c			;6f1f
	sbc a,c			;6f20
	sbc a,c			;6f21
	xor a			;6f22
	ld sp,hl		;6f23
	xor c			;6f24
	ld sp,hl		;6f25
	xor a			;6f26
	ld sp,hl		;6f27
	xor c			;6f28
	ld sp,hl		;6f29
	xor a			;6f2a
	ld sp,hl		;6f2b
	xor c			;6f2c
	ld sp,hl		;6f2d
	xor a			;6f2e
	ld sp,hl		;6f2f
	rst 38h			;6f30
	ld sp,hl		;6f31
	xor a			;6f32
	ld sp,hl		;6f33
	sbc a,c			;6f34
	sbc a,c			;6f35
	xor a			;6f36
	ld sp,hl		;6f37
	sbc a,a			;6f38
	rst 38h			;6f39
	xor a			;6f3a
	rst 38h			;6f3b
	rst 38h			;6f3c
	rst 38h			;6f3d
	rst 38h			;6f3e
	rst 38h			;6f3f
	rst 38h			;6f40
	rst 38h			;6f41
	sbc a,d			;6f42
	sbc a,a			;6f43
	sbc a,a			;6f44
	ld sp,hl		;6f45
	sbc a,a			;6f46
	rst 38h			;6f47
	sbc a,a			;6f48
	ld sp,hl		;6f49
	sbc a,c			;6f4a
	sbc a,c			;6f4b
	sbc a,a			;6f4c
	ld sp,hl		;6f4d
	sbc a,c			;6f4e
	sbc a,c			;6f4f
	rst 38h			;6f50
	rst 38h			;6f51
	sbc a,a			;6f52
	rst 38h			;6f53
	rst 38h			;6f54
	rst 38h			;6f55
	rst 38h			;6f56
	rst 38h			;6f57
	rst 38h			;6f58
	rst 38h			;6f59
	rst 38h			;6f5a
	rst 38h			;6f5b
	rst 38h			;6f5c
	rst 38h			;6f5d
	rst 38h			;6f5e
	rst 38h			;6f5f
	rst 38h			;6f60
	rst 38h			;6f61
	xor 0eeh		;6f62
	rst 20h			;6f64
	ld a,a			;6f65
	rst 20h			;6f66
	xor 0eeh		;6f67
	rst 20h			;6f69
	ld a,(hl)		;6f6a
	xor 077h		;6f6b
	xor 0eeh		;6f6d
	ld (hl),a		;6f6f
	ld a,(hl)		;6f70
	rst 20h			;6f71
	rst 20h			;6f72
	ld (hl),a		;6f73
	ld (hl),a		;6f74
	ld a,(hl)		;6f75
	ld (hl),a		;6f76
	ld h,(hl)		;6f77
	ld (hl),a		;6f78
	xor 066h		;6f79
	ld (hl),a		;6f7b
	ld (hl),a		;6f7c
	rst 20h			;6f7d
	ld h,(hl)		;6f7e
	ld (hl),a		;6f7f
	ld a,(hl)		;6f80
	ld (hl),a		;6f81
	rst 38h			;6f82
	sbc a,c			;6f83
	rst 38h			;6f84
	rst 38h			;6f85
	ld (hl),a		;6f86
	rst 38h			;6f87
	rst 38h			;6f88
	rst 38h			;6f89
	xor 077h		;6f8a
	ld a,a			;6f8c
	rst 38h			;6f8d
	xor 0eeh		;6f8e
	ld (hl),a		;6f90
	ld (hl),a		;6f91
	xor 0e7h		;6f92
	ld (hl),a		;6f94
	ld (hl),a		;6f95
	rst 20h			;6f96
	ld (hl),a		;6f97
	ld (hl),a		;6f98
	ld (hl),a		;6f99
	ld (hl),a		;6f9a
	ld (hl),a		;6f9b
	ld (hl),a		;6f9c
	ld (hl),a		;6f9d
	ld (hl),a		;6f9e
	ld (hl),a		;6f9f
	ld (hl),a		;6fa0
	ld (hl),a		;6fa1
	ld h,a			;6fa2
	ld (hl),a		;6fa3
	ld (hl),a		;6fa4
	halt			;6fa5
	ld (hl),a		;6fa6
	ld (hl),a		;6fa7
	halt			;6fa8
	ld h,(hl)		;6fa9
	ld (hl),a		;6faa
	ld (hl),a		;6fab
	ld h,(hl)		;6fac
	ld h,a			;6fad
	ld (hl),a		;6fae
	halt			;6faf
	ld h,(hl)		;6fb0
	ld (hl),a		;6fb1
	ld (hl),a		;6fb2
	ld h,(hl)		;6fb3
	ld h,(hl)		;6fb4
	ld h,(hl)		;6fb5
	ld h,(hl)		;6fb6
	ld h,(hl)		;6fb7
	ld h,(hl)		;6fb8
	ld h,(hl)		;6fb9
	ld h,(hl)		;6fba
	ld h,(hl)		;6fbb
	ld h,(hl)		;6fbc
	ld h,(hl)		;6fbd
	ld h,(hl)		;6fbe
	ld h,(hl)		;6fbf
	ld h,(hl)		;6fc0
	ld h,(hl)		;6fc1
	ld h,a			;6fc2
	ld (hl),a		;6fc3
	ld (hl),a		;6fc4
	ld (hl),a		;6fc5
	ld (hl),a		;6fc6
	ld (hl),a		;6fc7
	ld (hl),a		;6fc8
	ld (hl),a		;6fc9
	ld (hl),a		;6fca
	ld (hl),a		;6fcb
	ld (hl),a		;6fcc
	ld (hl),a		;6fcd
	ld (hl),a		;6fce
	ld (hl),a		;6fcf
	ld (hl),a		;6fd0
	ld (hl),a		;6fd1
	ld h,a			;6fd2
	ld (hl),a		;6fd3
	ld (hl),a		;6fd4
	ld (hl),a		;6fd5
	ld h,(hl)		;6fd6
	ld (hl),a		;6fd7
	ld (hl),a		;6fd8
	ld (hl),a		;6fd9
	ld h,(hl)		;6fda
	ld h,a			;6fdb
	ld (hl),a		;6fdc
	ld (hl),a		;6fdd
	ld h,(hl)		;6fde
	ld h,a			;6fdf
	ld (hl),a		;6fe0
	ld (hl),a		;6fe1
	ld h,(hl)		;6fe2
	ld h,(hl)		;6fe3
	ld h,(hl)		;6fe4
	ld h,(hl)		;6fe5
	ld h,(hl)		;6fe6
	ld h,(hl)		;6fe7
	ld h,(hl)		;6fe8
	ld h,(hl)		;6fe9
	ld h,(hl)		;6fea
	ld h,(hl)		;6feb
	ld h,(hl)		;6fec
	ld h,(hl)		;6fed
	ld h,(hl)		;6fee
	ld h,(hl)		;6fef
	ld h,(hl)		;6ff0
	ld h,(hl)		;6ff1
	ld h,(hl)		;6ff2
	ld h,(hl)		;6ff3
	ld h,(hl)		;6ff4
	ld h,(hl)		;6ff5
	ld h,(hl)		;6ff6
	ld h,(hl)		;6ff7
	ld h,(hl)		;6ff8
	ld h,(hl)		;6ff9
	ld h,(hl)		;6ffa
	ld h,(hl)		;6ffb
	ld h,(hl)		;6ffc
	ld h,(hl)		;6ffd
	ld h,(hl)		;6ffe
	ld h,(hl)		;6fff
	ld h,(hl)		;7000
	ld h,(hl)		;7001
	ld h,(hl)		;7002
	ld h,(hl)		;7003
	ld h,(hl)		;7004
	ld h,(hl)		;7005
	ld h,(hl)		;7006
	ld h,(hl)		;7007
	ld h,(hl)		;7008
	ld h,(hl)		;7009
	ld h,(hl)		;700a
	ld h,(hl)		;700b
	ld h,(hl)		;700c
	ld l,a			;700d
	ld h,(hl)		;700e
	ld h,(hl)		;700f
	ld h,(hl)		;7010
	ld l,a			;7011
	ld h,(hl)		;7012
	ld h,(hl)		;7013
	ld h,(hl)		;7014
	ld h,(hl)		;7015
	ld h,(hl)		;7016
	ld h,(hl)		;7017
	ld h,(hl)		;7018
	ld h,(hl)		;7019
	ld h,(hl)		;701a
	ld h,(hl)		;701b
	ld h,(hl)		;701c
	ld h,(hl)		;701d
	ld h,(hl)		;701e
	ld h,(hl)		;701f
	ld h,(hl)		;7020
	ld h,(hl)		;7021
	ld h,(hl)		;7022
	ld h,(hl)		;7023
	ld l,a			;7024
	halt			;7025
	ld h,(hl)		;7026
	ld h,(hl)		;7027
	ld l,a			;7028
	ld d,e			;7029
	ld h,(hl)		;702a
	ld h,(hl)		;702b
	ld l,a			;702c
	ld d,e			;702d
	ld h,(hl)		;702e
	ld h,(hl)		;702f
	ld l,a			;7030
	ld d,e			;7031
	ld h,(hl)		;7032
	ld h,(hl)		;7033
	ld l,a			;7034
	ld d,e			;7035
	ld h,(hl)		;7036
	ld h,(hl)		;7037
	ld l,a			;7038
	ld d,e			;7039
	rst 38h			;703a
	ld h,(hl)		;703b
	ld l,a			;703c
	ld d,e			;703d
	rst 38h			;703e
	rst 38h			;703f
	ld l,a			;7040
	ld d,e			;7041
	ld h,(hl)		;7042
	ld h,(hl)		;7043
	ld h,a			;7044
	ld (hl),a		;7045
	or 066h			;7046
	ld h,(hl)		;7048
	ld h,(hl)		;7049
	or 066h			;704a
	ld h,(hl)		;704c
	ld h,(hl)		;704d
	rst 38h			;704e
	ld h,(hl)		;704f
	ld h,(hl)		;7050
	ld h,(hl)		;7051
	rst 38h			;7052
	or 066h			;7053
	ld h,(hl)		;7055
	rst 38h			;7056
	or 066h			;7057
	ld h,(hl)		;7059
	or 0ffh			;705a
	or 066h			;705c
	or 066h			;705e
	rst 38h			;7060
	rst 38h			;7061
	ld h,(hl)		;7062
	ld h,(hl)		;7063
	ld h,(hl)		;7064
	ld h,(hl)		;7065
	ld h,(hl)		;7066
	ld h,(hl)		;7067
	ld h,(hl)		;7068
	ld h,(hl)		;7069
	ld h,(hl)		;706a
	ld h,(hl)		;706b
	ld h,(hl)		;706c
	ld h,(hl)		;706d
	ld h,(hl)		;706e
	ld h,(hl)		;706f
	ld h,(hl)		;7070
	ld h,(hl)		;7071
	ld h,(hl)		;7072
	ld h,(hl)		;7073
	ld h,(hl)		;7074
	ld h,(hl)		;7075
	ld h,(hl)		;7076
	ld h,(hl)		;7077
	ld h,(hl)		;7078
	ld h,(hl)		;7079
	ld h,(hl)		;707a
	ld h,(hl)		;707b
	ld h,(hl)		;707c
	ld h,(hl)		;707d
	or 066h			;707e
	ld h,(hl)		;7080
	ld h,(hl)		;7081
	ld h,(hl)		;7082
	ld h,(hl)		;7083
	ld h,(hl)		;7084
	ld h,(hl)		;7085
	ld h,(hl)		;7086
	ld h,(hl)		;7087
	ld h,(hl)		;7088
	ld h,(hl)		;7089
	ld h,(hl)		;708a
	ld h,(hl)		;708b
	ld h,(hl)		;708c
	ld h,(hl)		;708d
	ld h,(hl)		;708e
	ld h,(hl)		;708f
	ld h,(hl)		;7090
	ld h,(hl)		;7091
	ld h,(hl)		;7092
	ld h,(hl)		;7093
	ld h,(hl)		;7094
	ld l,a			;7095
	ld h,(hl)		;7096
	ld h,(hl)		;7097
	ld h,(hl)		;7098
	ld l,a			;7099
	ld h,(hl)		;709a
	ld h,(hl)		;709b
	rst 38h			;709c
	rst 38h			;709d
	ld h,(hl)		;709e
	ld h,(hl)		;709f
	rst 38h			;70a0
	rst 38h			;70a1
	jr z,l70bch		;70a2
	rlca			;70a4
	inc (hl)		;70a5
	inc c			;70a6
	inc bc			;70a7
	inc de			;70a8
	rrca			;70a9
	nop			;70aa
	inc c			;70ab
	inc bc			;70ac
	nop			;70ad
	rlca			;70ae
	nop			;70af
	nop			;70b0
	nop			;70b1
	nop			;70b2
	nop			;70b3
	nop			;70b4
	nop			;70b5
	nop			;70b6
	nop			;70b7
	nop			;70b8
	nop			;70b9
	jr z,l70ech		;70ba
l70bch:
	ret nz			;70bc
	ld e,b			;70bd
	ld h,b			;70be
	add a,b			;70bf
	sub b			;70c0
	ret po			;70c1
	nop			;70c2
	ld h,b			;70c3
	add a,b			;70c4
	nop			;70c5
	ret nz			;70c6
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
	and b			;70d2
	ld h,b			;70d3
	rra			;70d4
	or b			;70d5
	ld (hl),b		;70d6
	rrca			;70d7
	ret nc			;70d8
	jr nc,l70eah		;70d9
	ld e,h			;70db
	inc a			;70dc
	inc bc			;70dd
	ld h,a			;70de
	rra			;70df
	nop			;70e0
	jr c,l70eah		;70e1
	nop			;70e3
	rrca			;70e4
	nop			;70e5
	nop			;70e6
	nop			;70e7
	nop			;70e8
	nop			;70e9
l70eah:
	ld a,(bc)		;70ea
	inc c			;70eb
l70ech:
	ret p			;70ec
	ld a,(de)		;70ed
	inc e			;70ee
	ret po			;70ef
	ld d,018h		;70f0
	ret po			;70f2
	ld (hl),h		;70f3
	ld a,b			;70f4
	add a,b			;70f5
	call z,000f0h		;70f6
	jr c,$-62		;70f9
	nop			;70fb
	ret po			;70fc
	nop			;70fd
	nop			;70fe
	nop			;70ff
	nop			;7100
	nop			;7101
	add a,b			;7102
	add a,b			;7103
	ld a,a			;7104
	add a,b			;7105
	add a,b			;7106
	ld a,a			;7107
	add a,b			;7108
	add a,b			;7109
	ld a,a			;710a
	ld b,b			;710b
	ld b,b			;710c
	ccf			;710d
	ld h,b			;710e
	ld h,b			;710f
	rra			;7110
	jr nc,l7143h		;7111
	rrca			;7113
	rrca			;7114
	rrca			;7115
	nop			;7116
	nop			;7117
	nop			;7118
	nop			;7119
	ld (bc),a		;711a
	ld (bc),a		;711b
	call m,00202h		;711c
	call m,00202h		;711f
	call m,00404h		;7122
	ret m			;7125
	inc c			;7126
	inc c			;7127
	ret p			;7128
	jr l7143h		;7129
	ret po			;712b
	ret po			;712c
	ret po			;712d
	nop			;712e
	nop			;712f
	nop			;7130
	nop			;7131
	inc a			;7132
	rst 38h			;7133
	nop			;7134
	inc a			;7135
	rst 38h			;7136
	nop			;7137
	in a,(024h)		;7138
	nop			;713a
	rst 38h			;713b
	rst 20h			;713c
	jr l7157h		;713d
	rst 38h			;713f
	nop			;7140
	jr $+1			;7141
l7143h:
	nop			;7143
	nop			;7144
	rst 38h			;7145
	nop			;7146
	add a,c			;7147
	ld a,(hl)		;7148
	nop			;7149
	add a,c			;714a
	ld a,(hl)		;714b
	nop			;714c
	jp 0003ch		;714d
	rst 20h			;7150
	jr l7153h		;7151
l7153h:
	rst 38h			;7153
	nop			;7154
	nop			;7155
	rst 38h			;7156
l7157h:
	nop			;7157
	nop			;7158
	rst 38h			;7159
	nop			;715a
	nop			;715b
	ld a,(hl)		;715c
	add a,c			;715d
	add a,c			;715e
	nop			;715f
	rst 38h			;7160
	rst 38h			;7161
	ld e,d			;7162
	rst 20h			;7163
	cp l			;7164
	jr $+1			;7165
	and l			;7167
	jr $+1			;7168
	and l			;716a
	ld e,d			;716b
	cp l			;716c
	and l			;716d
	nop			;716e
	rst 38h			;716f
	rst 20h			;7170
	nop			;7171
	rst 38h			;7172
	rst 38h			;7173
	inc a			;7174
	jp 000c3h		;7175
	rst 38h			;7178
	jp 0ff00h		;7179
	rst 38h			;717c
	rst 38h			;717d
	nop			;717e
	rst 38h			;717f
	rst 38h			;7180
	ld a,(hl)		;7181
	add a,c			;7182
	add a,c			;7183
	rst 38h			;7184
	nop			;7185
	add a,c			;7186
	rst 38h			;7187
	nop			;7188
	add a,c			;7189
	rst 38h			;718a
	nop			;718b
	add a,c			;718c
	rst 38h			;718d
	nop			;718e
	add a,c			;718f
	rst 38h			;7190
	nop			;7191
	ld a,(hl)		;7192
	add a,c			;7193
	nop			;7194
	nop			;7195
	rst 38h			;7196
	rst 38h			;7197
	nop			;7198
	rst 38h			;7199
	rst 38h			;719a
	nop			;719b
	rst 38h			;719c
	rst 38h			;719d
	nop			;719e
	rst 38h			;719f
	nop			;71a0
	rst 38h			;71a1
	rst 38h			;71a2
	nop			;71a3
	rst 38h			;71a4
	rst 38h			;71a5
	nop			;71a6
	nop			;71a7
	rst 38h			;71a8
	rst 38h			;71a9
	rst 38h			;71aa
	nop			;71ab
	rst 38h			;71ac
	rst 38h			;71ad
	rst 38h			;71ae
	nop			;71af
	rst 38h			;71b0
	rst 38h			;71b1
	nop			;71b2
	rst 38h			;71b3
	rst 38h			;71b4
	nop			;71b5
	rst 38h			;71b6
	rst 38h			;71b7
	nop			;71b8
	rst 38h			;71b9
	rst 38h			;71ba
	nop			;71bb
	rst 38h			;71bc
	rst 38h			;71bd
	nop			;71be
	rst 38h			;71bf
	rst 38h			;71c0
	nop			;71c1
	rst 38h			;71c2
	rst 38h			;71c3
	nop			;71c4
	rst 38h			;71c5
	rst 38h			;71c6
	nop			;71c7
	rst 38h			;71c8
	rst 38h			;71c9
	nop			;71ca
	rst 38h			;71cb
	rst 38h			;71cc
	nop			;71cd
	rst 38h			;71ce
	rst 38h			;71cf
	nop			;71d0
	rst 38h			;71d1
	rst 38h			;71d2
	nop			;71d3
	rst 38h			;71d4
	rst 38h			;71d5
	nop			;71d6
	rst 38h			;71d7
	rst 38h			;71d8
	nop			;71d9
	rst 38h			;71da
	rst 38h			;71db
	nop			;71dc
	rst 38h			;71dd
	rst 38h			;71de
	nop			;71df
	rst 38h			;71e0
	rst 38h			;71e1
	nop			;71e2
	rst 38h			;71e3
	rst 38h			;71e4
	nop			;71e5
	rst 38h			;71e6
	rst 38h			;71e7
	nop			;71e8
	rst 38h			;71e9
	rst 38h			;71ea
	nop			;71eb
	rst 38h			;71ec
	nop			;71ed
	nop			;71ee
	nop			;71ef
	rst 38h			;71f0
	rst 38h			;71f1
	rst 38h			;71f2
	nop			;71f3
	nop			;71f4
	nop			;71f5
	rst 38h			;71f6
	nop			;71f7
	rst 38h			;71f8
	nop			;71f9
	rst 38h			;71fa
	rst 38h			;71fb
	rst 38h			;71fc
	nop			;71fd
	rst 38h			;71fe
	rst 38h			;71ff
	nop			;7200
	rst 38h			;7201
	rst 38h			;7202
	nop			;7203
	rst 38h			;7204
	rst 38h			;7205
	nop			;7206
	nop			;7207
	rst 38h			;7208
	nop			;7209
	nop			;720a
	rst 38h			;720b
	rst 38h			;720c
	rst 38h			;720d
	rst 38h			;720e
	nop			;720f
	nop			;7210
	rst 38h			;7211
	nop			;7212
	nop			;7213
	rst 38h			;7214
	nop			;7215
	rst 38h			;7216
	nop			;7217
	nop			;7218
	nop			;7219
	rst 38h			;721a
	rst 38h			;721b
	nop			;721c
	rst 38h			;721d
	rst 38h			;721e
	nop			;721f
	rst 38h			;7220
	rst 38h			;7221
	nop			;7222
	rst 38h			;7223
	nop			;7224
	rst 38h			;7225
	nop			;7226
	nop			;7227
	nop			;7228
	rst 38h			;7229
	rst 38h			;722a
	nop			;722b
	rst 38h			;722c
	nop			;722d
	nop			;722e
	rst 38h			;722f
	rst 38h			;7230
	rst 38h			;7231
	nop			;7232
	rst 38h			;7233
	rst 38h			;7234
	rst 38h			;7235
	nop			;7236
	rst 38h			;7237
	rst 38h			;7238
	nop			;7239
	rst 38h			;723a
	rst 38h			;723b
	nop			;723c
	ret m			;723d
	ret m			;723e
	nop			;723f
	ei			;7240
	ei			;7241
	nop			;7242
	ret m			;7243
	ret m			;7244
	nop			;7245
	ei			;7246
	ei			;7247
	nop			;7248
	ret m			;7249
	ret m			;724a
	nop			;724b
	rst 38h			;724c
	ld a,a			;724d
	add a,b			;724e
	rst 38h			;724f
	ld a,a			;7250
	add a,b			;7251
	rst 38h			;7252
	rst 38h			;7253
	nop			;7254
	ld b,d			;7255
	ld b,d			;7256
	nop			;7257
	jp c,000dah		;7258
	halt			;725b
	halt			;725c
	nop			;725d
	ld l,a			;725e
	ld l,a			;725f
	nop			;7260
	ld l,(hl)		;7261
	ld l,(hl)		;7262
	nop			;7263
	rst 38h			;7264
	rst 38h			;7265
	nop			;7266
	rst 38h			;7267
	inc a			;7268
	add a,c			;7269
	cp l			;726a
	rst 38h			;726b
	ld b,d			;726c
	cp l			;726d
	rst 38h			;726e
	ld b,d			;726f
	inc a			;7270
	rst 38h			;7271
	jp 0ffffh		;7272
	nop			;7275
	nop			;7276
	rst 38h			;7277
	nop			;7278
	rst 38h			;7279
	nop			;727a
	nop			;727b
	nop			;727c
	rst 38h			;727d
	rst 38h			;727e
	rst 38h			;727f
	rst 38h			;7280
	nop			;7281
	rst 38h			;7282
	rst 38h			;7283
	nop			;7284
	rra			;7285
l7286h:
	rra			;7286
	nop			;7287
	rst 38h			;7288
	rst 38h			;7289
	nop			;728a
	rra			;728b
	rra			;728c
	nop			;728d
	rst 18h			;728e
	rst 18h			;728f
	nop			;7290
	rra			;7291
	rra			;7292
	nop			;7293
	rst 38h			;7294
	cp 001h			;7295
	rst 38h			;7297
	cp 001h			;7298
	ret po			;729a
	ld a,a			;729b
	add a,b			;729c
	add a,b			;729d
	rst 38h			;729e
	nop			;729f
	adc a,a			;72a0
	ret p			;72a1
	nop			;72a2
	and b			;72a3
	push de			;72a4
	dec d			;72a5
	and b			;72a6
	adc a,00fh		;72a7
	and b			;72a9
	rst 18h			;72aa
	rra			;72ab
	and b			;72ac
	rst 8			;72ad
	rrca			;72ae
	and e			;72af
	call c,0001ch		;72b0
	rst 38h			;72b3
	nop			;72b4
	nop			;72b5
	rst 38h			;72b6
	nop			;72b7
	rst 38h			;72b8
	nop			;72b9
	nop			;72ba
	nop			;72bb
	ld d,l			;72bc
	ld d,l			;72bd
	nop			;72be
	rst 38h			;72bf
	rst 38h			;72c0
	nop			;72c1
	rst 38h			;72c2
	rst 38h			;72c3
	nop			;72c4
	rst 38h			;72c5
	rst 38h			;72c6
	rst 38h			;72c7
	nop			;72c8
	nop			;72c9
	rlca			;72ca
	cp 001h			;72cb
	ld bc,000ffh		;72cd
	ld sp,hl		;72d0
	rlca			;72d1
	nop			;72d2
	dec b			;72d3
	ld d,e			;72d4
	ld d,b			;72d5
	dec b			;72d6
	ld a,e			;72d7
	ret m			;72d8
	dec b			;72d9
	di			;72da
l72dbh:
	ret p			;72db
	dec b			;72dc
	ei			;72dd
l72deh:
	ret m			;72de
	push bc			;72df
	inc sp			;72e0
l72e1h:
	jr nc,l7286h		;72e1
	call z,0a30ch		;72e3
	call c,0a31ch		;72e6
	call z,0a30ch		;72e9
	call c,0a31ch		;72ec
	call z,0a00ch		;72ef
	rst 18h			;72f2
	rra			;72f3
	ld b,b			;72f4
	xor 00fh		;72f5
	ld b,b			;72f7
	push af			;72f8
	dec d			;72f9
	rst 38h			;72fa
	nop			;72fb
	nop			;72fc
	nop			;72fd
	rst 38h			;72fe
	nop			;72ff
	nop			;7300
	rst 38h			;7301
	nop			;7302
	nop			;7303
	rst 38h			;7304
	nop			;7305
	rst 38h			;7306
	nop			;7307
	nop			;7308
	nop			;7309
	rst 38h			;730a
	rst 38h			;730b
	nop			;730c
	rst 38h			;730d
	rst 38h			;730e
	nop			;730f
	ld d,l			;7310
	ld d,l			;7311
	push bc			;7312
	dec sp			;7313
	jr c,l72dbh		;7314
	inc sp			;7316
	jr nc,l72deh		;7317
	dec sp			;7319
	jr c,l72e1h		;731a
	inc sp			;731c
	jr nc,$-57		;731d
	dec sp			;731f
	jr c,l7327h		;7320
	di			;7322
	ret p			;7323
	ld (bc),a		;7324
	ld a,a			;7325
	ret m			;7326
l7327h:
	ld (bc),a		;7327
	ld d,a			;7328
	ld d,b			;7329
	nop			;732a
	rst 38h			;732b
	nop			;732c
	nop			;732d
	rst 38h			;732e
	nop			;732f
	rst 38h			;7330
	nop			;7331
	nop			;7332
	nop			;7333
	rst 38h			;7334
	rst 38h			;7335
	rst 38h			;7336
	rst 38h			;7337
	nop			;7338
	nop			;7339
	rst 38h			;733a
	nop			;733b
	rst 38h			;733c
	nop			;733d
	nop			;733e
	rst 38h			;733f
	nop			;7340
	nop			;7341
	rst 38h			;7342
	nop			;7343
	nop			;7344
	rst 38h			;7345
	nop			;7346
	nop			;7347
	nop			;7348
	rst 38h			;7349
	rst 38h			;734a
	rst 38h			;734b
	rst 38h			;734c
	nop			;734d
	nop			;734e
	rst 38h			;734f
	nop			;7350
	rst 38h			;7351
	nop			;7352
	nop			;7353
	rst 38h			;7354
	nop			;7355
	nop			;7356
	rst 38h			;7357
	nop			;7358
	nop			;7359
	rst 38h			;735a
	nop			;735b
	nop			;735c
	rst 38h			;735d
	nop			;735e
	nop			;735f
	nop			;7360
	rst 38h			;7361
	nop			;7362
	add a,c			;7363
	rst 38h			;7364
	nop			;7365
	rst 38h			;7366
	rst 38h			;7367
	nop			;7368
	rst 38h			;7369
	rst 38h			;736a
	nop			;736b
	rst 38h			;736c
	rst 38h			;736d
	nop			;736e
	ld a,(hl)		;736f
	rst 38h			;7370
	add a,c			;7371
	ld a,(hl)		;7372
	rst 38h			;7373
	add a,c			;7374
	nop			;7375
	rst 38h			;7376
	add a,c			;7377
	nop			;7378
	rst 38h			;7379
	rst 38h			;737a
	ld a,(hl)		;737b
	rst 38h			;737c
	add a,c			;737d
	nop			;737e
	rst 38h			;737f
	add a,c			;7380
	nop			;7381
	rst 38h			;7382
	add a,c			;7383
	nop			;7384
	rst 38h			;7385
	add a,c			;7386
	ld a,(hl)		;7387
	add a,c			;7388
	add a,c			;7389
	nop			;738a
	rst 38h			;738b
	rst 38h			;738c
	nop			;738d
	rst 38h			;738e
	jp 0ff3ch		;738f
	jp 0e73ch		;7392
	in a,(03ch)		;7395
	rst 38h			;7397
	jp 0ff00h		;7398
	jp 000ffh		;739b
	nop			;739e
	rst 38h			;739f
	nop			;73a0
	nop			;73a1
	inc l			;73a2
	ccf			;73a3
	inc h			;73a4
	cpl			;73a5
	ccf			;73a6
	daa			;73a7
	daa			;73a8
	ccf			;73a9
	daa			;73aa
	ccf			;73ab
	ccf			;73ac
	inc a			;73ad
	inc (hl)		;73ae
	scf			;73af
	inc l			;73b0
	inc l			;73b1
	ccf			;73b2
	inc h			;73b3
	ld e,b			;73b4
	ld a,a			;73b5
	ld c,b			;73b6
	ld c,a			;73b7
	ld a,a			;73b8
	ld c,a			;73b9
	ld a,e			;73ba
	rst 38h			;73bb
	dec sp			;73bc
	rst 38h			;73bd
	rst 38h			;73be
	cp 0b2h			;73bf
	rst 30h			;73c1
	xor 02ah		;73c2
	dec sp			;73c4
	and 0aah		;73c5
	cp e			;73c7
	ld h,(hl)		;73c8
	dec hl			;73c9
	ei			;73ca
	daa			;73cb
	cp 0ffh			;73cc
	cp 0e0h			;73ce
	rst 20h			;73d0
	rst 18h			;73d1
	rst 38h			;73d2
	rst 38h			;73d3
	rst 38h			;73d4
	nop			;73d5
	nop			;73d6
	rst 38h			;73d7
	cp a			;73d8
	cp a			;73d9
	ld b,b			;73da
	cp a			;73db
	cp a			;73dc
	ld b,b			;73dd
	nop			;73de
	rst 38h			;73df
	nop			;73e0
	rst 38h			;73e1
	rst 38h			;73e2
	rst 38h			;73e3
	rst 38h			;73e4
	rst 38h			;73e5
	rst 38h			;73e6
	rrca			;73e7
	rst 18h			;73e8
	rst 28h			;73e9
	ld a,d			;73ea
	ld a,(hl)		;73eb
	ld a,c			;73ec
	ld l,l			;73ed
	ld l,a			;73ee
	ld e,b			;73ef
	ld e,c			;73f0
	ld a,a			;73f1
	ld c,b			;73f2
	ld e,c			;73f3
	ld a,a			;73f4
	ld c,b			;73f5
	ld e,c			;73f6
	ld a,a			;73f7
	ld c,b			;73f8
	ld e,c			;73f9
	ld a,a			;73fa
	ld c,b			;73fb
	ld e,c			;73fc
	ld a,a			;73fd
	ld c,b			;73fe
	ld e,c			;73ff
	ld a,a			;7400
	ld c,b			;7401
	ld e,b			;7402
	ld sp,hl		;7403
	rst 0			;7404
	ld e,b			;7405
	ld a,c			;7406
	rst 0			;7407
	ld e,b			;7408
	ld a,c			;7409
	rst 0			;740a
	ld e,b			;740b
	ld a,c			;740c
	rst 0			;740d
	ld e,b			;740e
	ld a,c			;740f
	rst 0			;7410
	ld e,b			;7411
	ld a,c			;7412
	rst 0			;7413
	ld e,b			;7414
	ld a,c			;7415
	rst 0			;7416
	ld e,b			;7417
	ld a,c			;7418
	rst 0			;7419
	cpl			;741a
	ccf			;741b
	ret z			;741c
	jr z,l745eh		;741d
	ret z			;741f
	cpl			;7420
	ccf			;7421
	rst 8			;7422
	cpl			;7423
	ccf			;7424
	ret z			;7425
	cpl			;7426
	ccf			;7427
	rst 8			;7428
	djnz l743ah		;7429
	rst 38h			;742b
	nop			;742c
	nop			;742d
	rst 38h			;742e
	nop			;742f
	nop			;7430
	rst 38h			;7431
	nop			;7432
	nop			;7433
	nop			;7434
	nop			;7435
	nop			;7436
	nop			;7437
	nop			;7438
	nop			;7439
l743ah:
	nop			;743a
	nop			;743b
	nop			;743c
	nop			;743d
	nop			;743e
	nop			;743f
	nop			;7440
	inc b			;7441
	nop			;7442
	inc b			;7443
	ld bc,00100h		;7444
	ex af,af'		;7447
	nop			;7448
	dec bc			;7449
	ld e,c			;744a
	ld a,a			;744b
	ld c,b			;744c
	ld e,c			;744d
	ld a,a			;744e
	ld c,b			;744f
	ld e,c			;7450
	ld a,a			;7451
	ld c,b			;7452
	ld e,c			;7453
	ld a,a			;7454
	ld c,b			;7455
	ld e,c			;7456
	ld a,a			;7457
	ld c,b			;7458
	ld e,c			;7459
	ld a,a			;745a
	ld c,b			;745b
	ld e,c			;745c
	ld a,a			;745d
l745eh:
	ld c,b			;745e
	ld e,c			;745f
	rst 38h			;7460
	ld c,b			;7461
	ld e,b			;7462
	ld a,c			;7463
	rst 0			;7464
	ld e,b			;7465
	ld a,c			;7466
	rst 0			;7467
	ld e,b			;7468
	ld a,c			;7469
	rst 0			;746a
	ld e,b			;746b
	ld a,c			;746c
l746dh:
	rst 0			;746d
	ld e,b			;746e
	ld a,c			;746f
	rst 0			;7470
	ld e,b			;7471
	ld a,c			;7472
	rst 0			;7473
	ld e,b			;7474
	ld a,b			;7475
	rst 0			;7476
	ld e,b			;7477
	ld a,b			;7478
	rst 0			;7479
	exx			;747a
	rst 38h			;747b
	ret z			;747c
	ld e,c			;747d
	ld a,a			;747e
	ld c,b			;747f
	ld e,c			;7480
	ld a,a			;7481
	ld c,b			;7482
	ld e,c			;7483
	ld a,a			;7484
	ld c,b			;7485
	ld e,b			;7486
	ld a,a			;7487
	ld c,b			;7488
	ld e,b			;7489
	ld a,a			;748a
	ld c,b			;748b
	ld e,b			;748c
	ld a,a			;748d
	ld c,b			;748e
	ld e,b			;748f
	ld a,a			;7490
	ld c,b			;7491
	ld c,h			;7492
	ld a,h			;7493
	jp 07c4ch		;7494
	jp 03c2ch		;7497
	ex (sp),hl		;749a
	xor h			;749b
	cp h			;749c
	ld h,e			;749d
	xor h			;749e
	cp h			;749f
	ld h,e			;74a0
	xor l			;74a1
	cp l			;74a2
	ld h,d			;74a3
	xor (hl)		;74a4
	cp a			;74a5
	ld h,b			;74a6
	xor c			;74a7
	cp a			;74a8
	ld h,c			;74a9
	add hl,hl		;74aa
	cp c			;74ab
	rst 38h			;74ac
	add hl,hl		;74ad
l74aeh:
	xor c			;74ae
	rst 38h			;74af
	add hl,sp		;74b0
	cp c			;74b1
	rst 38h			;74b2
	jr c,l746dh		;74b3
	rst 38h			;74b5
	ld a,a			;74b6
	rst 38h			;74b7
	add a,b			;74b8
	add a,b			;74b9
	rst 38h			;74ba
	nop			;74bb
	ld a,a			;74bc
	rst 38h			;74bd
	ld a,a			;74be
	add a,b			;74bf
	call p,000ffh		;74c0
	nop			;74c3
	nop			;74c4
	nop			;74c5
	nop			;74c6
	nop			;74c7
	nop			;74c8
	nop			;74c9
	nop			;74ca
	ld b,000h		;74cb
	ld b,007h		;74cd
	ld bc,00007h		;74cf
	nop			;74d2
	nop			;74d3
	nop			;74d4
	nop			;74d5
	nop			;74d6
	nop			;74d7
	nop			;74d8
	nop			;74d9
	ld bc,00101h		;74da
	ld bc,00101h		;74dd
	ld (bc),a		;74e0
	inc bc			;74e1
	inc bc			;74e2
	ld (00ff2h),a		;74e3
	rst 38h			;74e6
	rst 38h			;74e7
	cp 007h			;74e8
	rlca			;74ea
	rlca			;74eb
	jr nz,l74eeh		;74ec
l74eeh:
	jr nz,l74f0h		;74ee
l74f0h:
	nop			;74f0
	nop			;74f1
	ret c			;74f2
	rst 38h			;74f3
	ret z			;74f4
	ld e,b			;74f5
	rst 38h			;74f6
	ret z			;74f7
	ld l,h			;74f8
	rst 38h			;74f9
	call po,sub_7f6ch	;74fa
	call po,0fffch		;74fd
	ld a,h			;7500
	defb 0fdh,0ffh,0fdh ;illegal sequence	;7501
	rst 20h			;7504
	rst 28h			;7505
	rst 38h			;7506
	and 0f6h		;7507
	rst 28h			;7509
	ld (hl),0bfh		;750a
	ld (hl),a		;750c
	jr l74aeh		;750d
	ld a,a			;750f
	inc (hl)		;7510
	push af			;7511
	dec de			;7512
	ld a,h			;7513
	call m,0d473h		;7514
	defb 0ddh,0f3h,096h ;illegal sequence	;7517
	sbc a,(hl)		;751a
	pop af			;751b
	ld d,(hl)		;751c
	ld e,(hl)		;751d
	or c			;751e
	jp pe,019eeh		;751f
	rst 20h			;7522
	rst 30h			;7523
	xor (hl)		;7524
	and (hl)		;7525
	or a			;7526
	xor 0e5h		;7527
	push af			;7529
	xor a			;752a
	push hl			;752b
	push af			;752c
	xor a			;752d
	push hl			;752e
	push af			;752f
	xor a			;7530
	push hl			;7531
	push af			;7532
	xor a			;7533
	and 0f6h		;7534
	defb 0edh ;next byte illegal after ed	;7536
	and 0f6h		;7537
	defb 0edh ;next byte illegal after ed	;7539
	ld hl,(019eeh)		;753a
	dec hl			;753d
	rst 28h			;753e
	jr l756ch		;753f
	rst 28h			;7541
	jr l756fh		;7542
	rst 28h			;7544
	jr l757ch		;7545
	rst 30h			;7547
	inc c			;7548
	dec d			;7549
	rst 30h			;754a
	inc c			;754b
	sub l			;754c
	rst 30h			;754d
	adc a,h			;754e
	sbc a,d			;754f
	ei			;7550
	add a,(hl)		;7551
	nop			;7552
	nop			;7553
	nop			;7554
	ld (bc),a		;7555
	nop			;7556
	ld (bc),a		;7557
	nop			;7558
	nop			;7559
	nop			;755a
	nop			;755b
	nop			;755c
	nop			;755d
	nop			;755e
	nop			;755f
	nop			;7560
	nop			;7561
	nop			;7562
	nop			;7563
	nop			;7564
	nop			;7565
	nop			;7566
	nop			;7567
	nop			;7568
	nop			;7569
	add hl,de		;756a
	ld a,c			;756b
l756ch:
	ld b,07fh		;756c
	ld a,a			;756e
l756fh:
	ld a,a			;756f
	nop			;7570
	nop			;7571
l7572h:
	nop			;7572
	ex af,af'		;7573
	nop			;7574
	ex af,af'		;7575
	nop			;7576
	nop			;7577
	nop			;7578
	ld bc,00101h		;7579
l757ch:
	ld bc,00101h		;757c
	ld bc,00101h		;757f
	and 0f6h		;7582
	xor l			;7584
	rst 20h			;7585
	rst 30h			;7586
	xor h			;7587
	rst 20h			;7588
	rst 30h			;7589
	xor (hl)		;758a
	rst 38h			;758b
	rst 38h			;758c
	cp (hl)			;758d
	jp p,0fef3h		;758e
	jp p,0f6fbh		;7591
	defb 0fdh,0fdh,07fh ;illegal sequence	;7594
	cp l			;7597
	cp l			;7598
	ld a,a			;7599
	adc a,d			;759a
	ei			;759b
	add a,(hl)		;759c
	ld c,l			;759d
	ld a,l			;759e
	jp l7e46h		;759f
	pop bc			;75a2
	ld b,e			;75a3
	ld a,a			;75a4
	ret nz			;75a5
	and c			;75a6
	cp a			;75a7
	ld h,b			;75a8
	and c			;75a9
	cp a			;75aa
	ld h,b			;75ab
	ld d,c			;75ac
	rst 18h			;75ad
	jr nc,$+107		;75ae
	rst 28h			;75b0
	jr l7572h		;75b1
	cp a			;75b3
	ld b,b			;75b4
	sbc a,a			;75b5
	sbc a,a			;75b6
	ld h,b			;75b7
	ret po			;75b8
	rst 38h			;75b9
	ret nz			;75ba
	ccf			;75bb
	rst 38h			;75bc
	rst 38h			;75bd
	nop			;75be
	ld (hl),b		;75bf
	rst 38h			;75c0
	rrca			;75c1
	ld c,a			;75c2
	ret p			;75c3
	jr l75e5h		;75c4
	ret po			;75c6
	jr nc,l7608h		;75c7
	ret nz			;75c9
	nop			;75ca
	nop			;75cb
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
	ld bc,00101h		;75d6
	ld (bc),a		;75d9
	ld (bc),a		;75da
	inc bc			;75db
	dec b			;75dc
	dec b			;75dd
	ld b,00ah		;75de
	ld a,(bc)		;75e0
	dec c			;75e1
	ld bc,00101h		;75e2
l75e5h:
	rlca			;75e5
	rlca			;75e6
	rlca			;75e7
	inc e			;75e8
	ld e,01dh		;75e9
	ld h,h			;75eb
	ld a,(hl)		;75ec
	ld h,l			;75ed
	add a,h			;75ee
	sbc a,(hl)		;75ef
	push hl			;75f0
	ld h,h			;75f1
	ld a,(hl)		;75f2
	add a,l			;75f3
	call p,005feh		;75f4
	ld a,03eh		;75f7
	rst 8			;75f9
	cp (hl)			;75fa
	cp (hl)			;75fb
	ld a,a			;75fc
	cp a			;75fd
	cp a			;75fe
	rst 30h			;75ff
	cp a			;7600
	cp a			;7601
	di			;7602
	rst 38h			;7603
	rst 38h			;7604
	call p,0fcfch		;7605
l7608h:
	cp a			;7608
	call m,0bffch		;7609
	call m,0fffch		;760c
	rst 38h			;760f
	rst 38h			;7610
	rst 38h			;7611
	or a			;7612
	rst 30h			;7613
	adc a,(hl)		;7614
	sbc a,c			;7615
	ld sp,hl		;7616
	add a,a			;7617
	adc a,0feh		;7618
	pop bc			;761a
	ex (sp),hl		;761b
	rst 38h			;761c
	jr nz,l7630h		;761d
	rra			;761f
	ret p			;7620
	add hl,bc		;7621
	rrca			;7622
	ret m			;7623
	dec b			;7624
	rlca			;7625
	call m,0ffffh		;7626
	cp 0a0h			;7629
	cp a			;762b
	ld b,b			;762c
	ret po			;762d
	rst 38h			;762e
	add a,b			;762f
l7630h:
	ld a,a			;7630
	rst 38h			;7631
	rst 38h			;7632
	nop			;7633
	ld h,b			;7634
	rst 38h			;7635
	rra			;7636
	ld e,a			;7637
	ret po			;7638
	jr nc,l767ah		;7639
	ret nz			;763b
	jr nz,l767dh		;763c
	ret nz			;763e
	jr nz,l7680h		;763f
	ret nz			;7641
	inc d			;7642
	inc d			;7643
	dec de			;7644
	inc d			;7645
	inc d			;7646
	dec de			;7647
	jr z,$+43		;7648
	scf			;764a
	jr z,$+45		;764b
	scf			;764d
	ld d,b			;764e
	ld d,e			;764f
	ld l,a			;7650
	ld d,b			;7651
	ld d,e			;7652
	ld l,a			;7653
	ld d,b			;7654
	ld d,c			;7655
	ld l,a			;7656
	or b			;7657
	or b			;7658
	rst 8			;7659
	ld a,(de)		;765a
	ld a,(de)		;765b
	rst 28h			;765c
	rra			;765d
	dec de			;765e
	jp pe,01f1fh		;765f
	jp pe,0bf3fh		;7662
	rst 18h			;7665
	inc sp			;7666
	or a			;7667
	defb 0ddh,03fh,0b1h ;illegal sequence	;7668
	pop de			;766b
	inc sp			;766c
	scf			;766d
	defb 0ddh,03fh,031h ;illegal sequence	;766e
	pop de			;7671
	defb 0fdh,0fdh,0ffh ;illegal sequence	;7672
	rst 38h			;7675
	rst 38h			;7676
l7677h:
	defb 0fdh,0ffh,0ffh ;illegal sequence	;7677
l767ah:
	rst 38h			;767a
	rst 38h			;767b
	rst 38h			;767c
l767dh:
	jp m,0fffeh		;767d
l7680h:
	jp m,0efeeh		;7680
	jp m,0dfdeh		;7683
	jp pe,0dfdeh		;7686
	jp pe,06707h		;7689
	ld sp,hl		;768c
	sbc a,c			;768d
	rst 18h			;768e
	ld h,c			;768f
	rst 38h			;7690
	rst 38h			;7691
	rst 38h			;7692
	nop			;7693
	ld a,h			;7694
	rst 38h			;7695
	ld (bc),a		;7696
	ld b,e			;7697
	call m,04302h		;7698
	call m,04302h		;769b
	call m,04302h		;769e
	call m,09f90h		;76a1
	ld h,b			;76a4
	rst 8			;76a5
	rst 8			;76a6
	or a			;76a7
	rst 20h			;76a8
	push hl			;76a9
	defb 0fdh,0fdh,0fdh ;illegal sequence	;76aa
	rst 0			;76ad
	rst 20h			;76ae
	defb 0fdh,0c5h,0e5h ;illegal sequence	;76af
	defb 0fdh,0c7h,0e7h ;illegal sequence	;76b2
	rst 38h			;76b5
	rst 20h			;76b6
	ret pe			;76b7
	cp 0efh			;76b8
	or b			;76ba
	or b			;76bb
	rst 8			;76bc
	or b			;76bd
	or b			;76be
	rst 8			;76bf
	or b			;76c0
	or b			;76c1
	rst 8			;76c2
	cp b			;76c3
	cp b			;76c4
	rst 0			;76c5
	cp b			;76c6
	cp b			;76c7
	rst 0			;76c8
	cp h			;76c9
	cp h			;76ca
	jp 0bebeh		;76cb
	pop bc			;76ce
	cp a			;76cf
	cp a			;76d0
	ret nz			;76d1
	inc sp			;76d2
	scf			;76d3
	defb 0ddh,033h,037h ;illegal sequence	;76d4
	defb 0ddh,033h,037h ;illegal sequence	;76d7
	defb 0ddh,033h,037h ;illegal sequence	;76da
	defb 0ddh,033h,037h ;illegal sequence	;76dd
	add ix,sp		;76e0
	dec sp			;76e2
	push de			;76e3
	ld a,a			;76e4
	ld a,a			;76e5
	adc a,a			;76e6
	ei			;76e7
	ei			;76e8
	dec c			;76e9
	sbc a,0dfh		;76ea
	jp pe,0dfdeh		;76ec
	jp pe,0cfffh		;76ef
	set 7,a			;76f2
	rst 8			;76f4
	set 3,a			;76f5
	rst 18h			;76f7
	ex de,hl		;76f8
	cp 0ffh			;76f9
	cp 0ffh			;76fb
	rst 38h			;76fd
	rst 38h			;76fe
	ld sp,hl		;76ff
	rst 38h			;7700
	ld sp,hl		;7701
	ld (bc),a		;7702
	ld b,e			;7703
	call m,04302h		;7704
	call m,0bfbdh		;7707
	ld b,c			;770a
	rst 38h			;770b
	rst 38h			;770c
	rst 38h			;770d
	cp a			;770e
	cp a			;770f
	ld b,e			;7710
	ld bc,0fd43h		;7711
	rst 38h			;7714
	rst 38h			;7715
	rst 38h			;7716
	call m,0fffch		;7717
	ld sp,hl		;771a
	defb 0fdh,0feh,0ffh ;illegal sequence	;771b
	ret m			;771e
	ret m			;771f
	ld sp,hl		;7720
	defb 0fdh,0feh,0ffh ;illegal sequence	;7721
	ret m			;7724
	ret m			;7725
	jp (hl)			;7726
	defb 0fdh,0eeh,0c9h ;illegal sequence	;7727
	defb 0ddh,0eeh,089h ;illegal sequence	;772a
	cp l			;772d
	adc a,049h		;772e
	ld a,l			;7730
	adc a,(hl)		;7731
	ld e,a			;7732
	ld e,a			;7733
	ld h,b			;7734
	ld c,a			;7735
	ld e,a			;7736
	ld h,b			;7737
	ld c,a			;7738
	ld e,a			;7739
	ld h,b			;773a
	inc hl			;773b
	cpl			;773c
	jr nc,l775fh		;773d
sub_773fh:
	cpl			;773f
	jr nc,l7752h		;7740
	rla			;7742
	jr $+18			;7743
	rla			;7745
	jr l7750h		;7746
	dec bc			;7748
	inc c			;7749
	rst 38h			;774a
	rst 38h			;774b
	rra			;774c
	ret p			;774d
	rst 38h			;774e
	rra			;774f
l7750h:
	di			;7750
	di			;7751
l7752h:
	inc e			;7752
	adc a,h			;7753
	call m,0070fh		;7754
	rst 38h			;7757
	rlca			;7758
	rlca			;7759
	rst 38h			;775a
	rlca			;775b
	inc b			;775c
	rst 38h			;775d
	inc b			;775e
l775fh:
	inc b			;775f
	rst 38h			;7760
	inc b			;7761
	rst 38h			;7762
	rst 38h			;7763
	rst 38h			;7764
	rrca			;7765
	rst 38h			;7766
	rst 38h			;7767
	call z,03ccfh		;7768
	ccf			;776b
	ccf			;776c
	rst 38h			;776d
	ret po			;776e
	ret po			;776f
	rst 38h			;7770
	add a,c			;7771
	cp a			;7772
	pop bc			;7773
	sbc a,(hl)		;7774
	cp (hl)			;7775
	rst 18h			;7776
sub_7777h:
	sbc a,l			;7777
	cp l			;7778
	sbc a,03bh		;7779
	ei			;777b
	inc a			;777c
	ld (hl),a		;777d
	rst 30h			;777e
	ld a,b			;777f
	ld (hl),a		;7780
	rst 30h			;7781
	ld a,b			;7782
	xor 0efh		;7783
	ret p			;7785
	defb 0edh ;next byte illegal after ed	;7786
	rst 28h			;7787
	pop af			;7788
	exx			;7789
	rst 18h			;778a
l778bh:
	pop hl			;778b
	inc de			;778c
	rra			;778d
l778eh:
	jp po,0ffe3h		;778e
	ld (bc),a		;7791
	ret			;7792
	defb 0fdh,00eh,0b9h ;illegal sequence	;7793
	defb 0fdh,03eh,059h ;illegal sequence	;7796
	ld e,(iy-007h)		;7799
	sbc a,(iy+05fh)		;779c
	rst 18h			;779f
	ccf			;77a0
	sbc a,a			;77a1
	sbc a,a			;77a2
	ld a,a			;77a3
	rrca			;77a4
	ld c,a			;77a5
	ret p			;77a6
	inc e			;77a7
	ld e,a			;77a8
	ret po			;77a9
	dec b			;77aa
	ld (bc),a		;77ab
	dec b			;77ac
	dec b			;77ad
	ld (bc),a		;77ae
	dec b			;77af
	dec b			;77b0
	ld (bc),a		;77b1
	dec b			;77b2
	dec b			;77b3
	ld (bc),a		;77b4
	dec b			;77b5
	dec b			;77b6
	ld (bc),a		;77b7
	dec b			;77b8
	dec b			;77b9
	ld (bc),a		;77ba
	dec b			;77bb
	dec b			;77bc
	ld (bc),a		;77bd
	dec b			;77be
	dec b			;77bf
	ld (bc),a		;77c0
	dec b			;77c1
	call c,00833h		;77c2
	rst 18h			;77c5
	jr nc,$+14		;77c6
	rst 18h			;77c8
	jr nc,l77dah		;77c9
	cp a			;77cb
	ld h,b			;77cc
l77cdh:
	rra			;77cd
	cp (hl)			;77ce
	ld h,c			;77cf
l77d0h:
	jr l778bh		;77d0
	ld h,a			;77d2
l77d3h:
	djnz l778eh		;77d3
	ld h,a			;77d5
l77d6h:
	djnz $-63		;77d6
	ld h,b			;77d8
l77d9h:
	rra			;77d9
l77dah:
	cp (hl)			;77da
	or c			;77db
l77dch:
	ld c,b			;77dc
	ld a,0f1h		;77dd
	ex af,af'		;77df
	rst 38h			;77e0
	nop			;77e1
	ld c,0fch		;77e2
	inc bc			;77e4
	call m,0c07fh		;77e5
	inc a			;77e8
	cp a			;77e9
	add a,b			;77ea
	ld l,h			;77eb
	cp a			;77ec
	add a,b			;77ed
	ld l,h			;77ee
	rst 38h			;77ef
	nop			;77f0
	call m,00205h		;77f1
	dec b			;77f4
	dec b			;77f5
	ld (bc),a		;77f6
l77f7h:
	dec b			;77f7
	dec b			;77f8
	ld (bc),a		;77f9
	dec b			;77fa
	dec b			;77fb
	ld (bc),a		;77fc
	dec b			;77fd
	dec b			;77fe
	ld (bc),a		;77ff
	dec b			;7800
	dec b			;7801
	ld (bc),a		;7802
	dec b			;7803
	dec bc			;7804
	inc b			;7805
	ld a,(bc)		;7806
	dec bc			;7807
	inc b			;7808
	ld a,(bc)		;7809
	cp e			;780a
	ld h,a			;780b
	djnz $-66		;780c
	ld h,e			;780e
	jr l77cdh		;780f
	ld h,e			;7811
l7812h:
	jr l77d0h		;7812
	ld h,e			;7814
l7815h:
	jr l77d3h		;7815
	ld h,e			;7817
l7818h:
	jr l77d6h		;7818
	ld h,e			;781a
l781bh:
	jr l77d9h		;781b
	ld h,e			;781d
l781eh:
	jr l77dch		;781e
	ld h,e			;7820
l7821h:
	jr $+13			;7821
	inc b			;7823
l7824h:
	jp m,0dcdfh		;7824
	ld (0dcdfh),hl		;7827
	ld (0dcdfh),hl		;782a
	ld (0dedfh),hl		;782d
	ld hl,0dedfh		;7830
	ld hl,0dedfh		;7833
	ld hl,0dfdfh		;7836
	jr nz,l7846h		;7839
	inc b			;783b
	ld a,(bc)		;783c
	dec bc			;783d
	inc b			;783e
	ld a,(bc)		;783f
	dec bc			;7840
	inc b			;7841
	ld a,(bc)		;7842
	dec bc			;7843
	inc b			;7844
	ld a,(bc)		;7845
l7846h:
	dec bc			;7846
	inc b			;7847
	ld a,(bc)		;7848
	dec bc			;7849
l784ah:
	inc b			;784a
	ld a,(bc)		;784b
	dec bc			;784c
l784dh:
	inc b			;784d
	ld a,(bc)		;784e
	dec bc			;784f
l7850h:
	inc b			;7850
	ld a,(bc)		;7851
	cp h			;7852
l7853h:
	ld h,e			;7853
	jr l7812h		;7854
l7856h:
	ld h,e			;7856
	jr l7815h		;7857
l7859h:
	ld h,e			;7859
l785ah:
	jr l7818h		;785a
l785ch:
	ld h,e			;785c
l785dh:
	jr l781bh		;785d
l785fh:
	ld h,e			;785f
l7860h:
	jr l781eh		;7860
	ld h,e			;7862
l7863h:
	jr l7821h		;7863
	ld h,e			;7865
l7866h:
	jr l7824h		;7866
	ld h,e			;7868
l7869h:
	jr l784ah		;7869
	rst 18h			;786b
	jr nz,l784dh		;786c
	rst 18h			;786e
	jr nz,l7850h		;786f
	rst 18h			;7871
	jr nz,l7853h		;7872
	rst 18h			;7874
	jr nz,l7856h		;7875
	rst 18h			;7877
	jr nz,l7859h		;7878
	rst 18h			;787a
	jr nz,l785ch		;787b
	rst 18h			;787d
	jr nz,l785fh		;787e
	rst 18h			;7880
	jr nz,l788eh		;7881
	inc b			;7883
	ld a,(bc)		;7884
	dec bc			;7885
	inc b			;7886
	ld a,(bc)		;7887
	dec bc			;7888
	inc b			;7889
	ld a,(bc)		;788a
	dec bc			;788b
	inc b			;788c
	ld a,(bc)		;788d
l788eh:
	dec bc			;788e
	inc b			;788f
	ld a,(bc)		;7890
	dec bc			;7891
	inc b			;7892
	ld a,(bc)		;7893
	dec bc			;7894
	inc b			;7895
	ld a,(bc)		;7896
	rra			;7897
	nop			;7898
	rra			;7899
	cp h			;789a
	ld h,e			;789b
	jr l785ah		;789c
	ld h,e			;789e
	jr l785dh		;789f
	ld h,e			;78a1
	jr l7860h		;78a2
	ld h,e			;78a4
	jr l7863h		;78a5
	ld h,e			;78a7
	jr l7866h		;78a8
	ld h,e			;78aa
	jr l7869h		;78ab
	ld h,e			;78ad
	jr $-2			;78ae
	inc bc			;78b0
	ret m			;78b1
	rst 18h			;78b2
	call c,0df23h		;78b3
	call c,0df23h		;78b6
	call c,0df23h		;78b9
	call c,0df23h		;78bc
l78bfh:
	call c,0df23h		;78bf
	call c,0df23h		;78c2
	call c,0df23h		;78c5
	call c,01423h		;78c8
	dec bc			;78cb
	inc d			;78cc
	rra			;78cd
	nop			;78ce
	inc d			;78cf
	rra			;78d0
	nop			;78d1
	inc d			;78d2
	rra			;78d3
	nop			;78d4
	inc d			;78d5
	rra			;78d6
	nop			;78d7
	inc d			;78d8
	rra			;78d9
	nop			;78da
	inc d			;78db
	rra			;78dc
	nop			;78dd
	inc d			;78de
	rra			;78df
	nop			;78e0
	inc d			;78e1
	cp h			;78e2
	add a,e			;78e3
	ld l,b			;78e4
	ld a,a			;78e5
	ret nz			;78e6
	inc l			;78e7
	ld a,a			;78e8
	ret nz			;78e9
	cpl			;78ea
	ld a,a			;78eb
	ret nz			;78ec
	cpl			;78ed
	ld a,(hl)		;78ee
	pop bc			;78ef
	jr z,l796bh		;78f0
	rst 0			;78f2
	jr nz,l796eh		;78f3
	rst 0			;78f5
	jr nz,l7977h		;78f6
	ret nz			;78f8
	cpl			;78f9
	rst 18h			;78fa
	call c,02323h		;78fb
	call m,0ff03h		;78fe
	nop			;7901
	ld bc,000ffh		;7902
	rst 38h			;7905
	ld a,d			;7906
	rst 0			;7907
	jr nc,l78bfh		;7908
	adc a,l			;790a
	ld h,d			;790b
	or l			;790c
	adc a,l			;790d
	ld h,d			;790e
	rst 38h			;790f
	nop			;7910
	rst 38h			;7911
	rra			;7912
	nop			;7913
	inc d			;7914
	rra			;7915
	nop			;7916
	rla			;7917
	rra			;7918
	nop			;7919
	rla			;791a
	inc e			;791b
	inc bc			;791c
	djnz l793eh		;791d
	nop			;791f
	djnz l7941h		;7920
	nop			;7922
	djnz $+33		;7923
	nop			;7925
	djnz l7947h		;7926
	nop			;7928
	rla			;7929
	or (hl)			;792a
	ld c,(hl)		;792b
	ld sp,007f9h		;792c
	ret p			;792f
	xor c			;7930
	rla			;7931
	ret po			;7932
l7933h:
	ld sp,hl		;7933
l7934h:
	rst 0			;7934
	jr nz,l79b0h		;7935
	rst 0			;7937
	jr nz,l7933h		;7938
l793ah:
	rlca			;793a
	jr nz,$-5		;793b
	rlca			;793d
l793eh:
	ret po			;793e
	ld sp,hl		;793f
	rlca			;7940
l7941h:
	ret po			;7941
	inc e			;7942
	djnz l7934h		;7943
	xor a			;7945
	or e			;7946
l7947h:
	ld c,b			;7947
	xor a			;7948
	or e			;7949
	ld c,b			;794a
	xor a			;794b
	or e			;794c
	ld c,b			;794d
	xor a			;794e
	or e			;794f
	ld c,b			;7950
	xor a			;7951
	or e			;7952
	ld c,b			;7953
	xor a			;7954
	or e			;7955
	ld c,b			;7956
	xor a			;7957
	or e			;7958
	ld c,b			;7959
	rra			;795a
	nop			;795b
	inc d			;795c
	rra			;795d
	nop			;795e
	inc d			;795f
	rra			;7960
	nop			;7961
	inc d			;7962
	rra			;7963
	nop			;7964
	inc d			;7965
	scf			;7966
	ex af,af'		;7967
	inc h			;7968
	scf			;7969
	ex af,af'		;796a
l796bh:
	inc h			;796b
	scf			;796c
	ex af,af'		;796d
l796eh:
	inc h			;796e
	scf			;796f
	ex af,af'		;7970
	inc h			;7971
	ld a,c			;7972
	rst 0			;7973
	jr nz,$+123		;7974
	rst 0			;7976
l7977h:
	jr nz,$+123		;7977
	rst 0			;7979
	jr nz,$+123		;797a
	rst 0			;797c
	jr nz,$+123		;797d
	rst 0			;797f
	jr nz,l79fbh		;7980
	rst 0			;7982
	jr nz,l79feh		;7983
	rst 0			;7985
	jr nz,l7a01h		;7986
	rst 0			;7988
	jr nz,l793ah		;7989
	or e			;798b
	ld c,b			;798c
	xor a			;798d
	or e			;798e
	ld c,b			;798f
	xor a			;7990
	or e			;7991
	ld c,b			;7992
	xor a			;7993
	or e			;7994
	ld c,b			;7995
	xor a			;7996
	or e			;7997
	ld c,b			;7998
	xor a			;7999
	or e			;799a
	ld c,b			;799b
	xor a			;799c
	or e			;799d
	ld c,b			;799e
	xor a			;799f
	or e			;79a0
	ld c,b			;79a1
	scf			;79a2
	ex af,af'		;79a3
	inc h			;79a4
	scf			;79a5
	ex af,af'		;79a6
	inc h			;79a7
	scf			;79a8
	ex af,af'		;79a9
	inc h			;79aa
	scf			;79ab
	ex af,af'		;79ac
	inc h			;79ad
	scf			;79ae
	ex af,af'		;79af
l79b0h:
	inc h			;79b0
	scf			;79b1
	ex af,af'		;79b2
	inc h			;79b3
	scf			;79b4
	ex af,af'		;79b5
	inc h			;79b6
	scf			;79b7
	ex af,af'		;79b8
	inc h			;79b9
	ld a,c			;79ba
	rst 0			;79bb
	jr nz,$+123		;79bc
	rst 0			;79be
	jr nz,$+123		;79bf
	rst 0			;79c1
	jr nz,l7a3dh		;79c2
	rst 0			;79c4
	jr nz,l7a40h		;79c5
	rst 0			;79c7
	jr nz,l7a43h		;79c8
	rst 0			;79ca
	jr nz,$+128		;79cb
	pop bc			;79cd
	jr z,l7a4fh		;79ce
	ret nz			;79d0
	cpl			;79d1
	xor a			;79d2
	or e			;79d3
	ld c,b			;79d4
	xor a			;79d5
	or e			;79d6
	ld c,b			;79d7
	xor a			;79d8
	or e			;79d9
	ld c,b			;79da
	xor a			;79db
	or e			;79dc
	ld c,b			;79dd
	xor a			;79de
	or e			;79df
	ld c,b			;79e0
	xor a			;79e1
	or e			;79e2
	ld c,b			;79e3
	ld e,a			;79e4
	ret po			;79e5
	inc c			;79e6
	rst 38h			;79e7
	nop			;79e8
	rst 38h			;79e9
	nop			;79ea
	inc e			;79eb
	inc d			;79ec
	ex af,af'		;79ed
	ld (hl),03ah		;79ee
	inc b			;79f0
	ld a,(01c32h)		;79f1
	ld (01c2ah),hl		;79f4
	ld (00822h),hl		;79f7
	inc (hl)		;79fa
l79fbh:
	inc a			;79fb
	nop			;79fc
	inc d			;79fd
l79feh:
	inc e			;79fe
	nop			;79ff
	inc e			;7a00
l7a01h:
	inc e			;7a01
	nop			;7a02
	nop			;7a03
	nop			;7a04
	nop			;7a05
	jr l7a20h		;7a06
	nop			;7a08
	inc a			;7a09
	inc (hl)		;7a0a
	ex af,af'		;7a0b
	halt			;7a0c
	ld l,d			;7a0d
	ex af,af'		;7a0e
	halt			;7a0f
	ld l,d			;7a10
	nop			;7a11
	ld a,(hl)		;7a12
	ld h,d			;7a13
	inc h			;7a14
	ld e,d			;7a15
	ld d,d			;7a16
	inc e			;7a17
	ld h,d			;7a18
	ld l,(hl)		;7a19
	inc h			;7a1a
	ld e,d			;7a1b
	ld e,(hl)		;7a1c
	inc e			;7a1d
	ld h,d			;7a1e
	ld l,(hl)		;7a1f
l7a20h:
	inc e			;7a20
	ld h,d			;7a21
	ld l,d			;7a22
	jr l7a49h		;7a23
	inc l			;7a25
	jr $+38			;7a26
	inc l			;7a28
	ex af,af'		;7a29
	inc (hl)		;7a2a
	inc (hl)		;7a2b
	nop			;7a2c
	inc (hl)		;7a2d
	inc a			;7a2e
	nop			;7a2f
	jr l7a4ah		;7a30
	nop			;7a32
	inc e			;7a33
	inc e			;7a34
	inc d			;7a35
	ld hl,(00022h)		;7a36
	ld a,022h		;7a39
	inc b			;7a3b
	ld a,e			;7a3c
l7a3dh:
	ld b,l			;7a3d
	inc b			;7a3e
	ld a,e			;7a3f
l7a40h:
	ld b,l			;7a40
	inc b			;7a41
	ld a,e			;7a42
l7a43h:
	ld b,l			;7a43
	ld hl,(04955h)		;7a44
	inc d			;7a47
	ld l,e			;7a48
l7a49h:
	ld h,e			;7a49
l7a4ah:
	ld (l7f5dh),hl		;7a4a
	inc e			;7a4d
	ld h,e			;7a4e
l7a4fh:
	ld l,a			;7a4f
	ld (l7d5dh),hl		;7a50
	ld a,041h		;7a53
	ld e,a			;7a55
	ld a,041h		;7a56
	ld b,a			;7a58
	ld l,051h		;7a59
	ld e,l			;7a5b
	ld c,071h		;7a5c
	ld a,l			;7a5e
	ld c,071h		;7a5f
	ld a,l			;7a61
	inc c			;7a62
	ld (0083ah),a		;7a63
	inc d			;7a66
	inc e			;7a67
	ex af,af'		;7a68
	inc d			;7a69
	inc e			;7a6a
	ex af,af'		;7a6b
	inc d			;7a6c
	inc e			;7a6d
	ex af,af'		;7a6e
	inc d			;7a6f
	inc e			;7a70
	ex af,af'		;7a71
	inc d			;7a72
	inc e			;7a73
	nop			;7a74
	inc d			;7a75
	inc e			;7a76
	nop			;7a77
	inc e			;7a78
	inc e			;7a79
	nop			;7a7a
	jr l7a95h		;7a7b
	jr $+38			;7a7d
	inc h			;7a7f
	inc h			;7a80
	ld e,d			;7a81
	ld b,d			;7a82
l7a83h:
	inc l			;7a83
	ld d,d			;7a84
	ld c,d			;7a85
	ld b,d			;7a86
	cp l			;7a87
	add a,c			;7a88
	ld b,(hl)		;7a89
	cp c			;7a8a
	add a,l			;7a8b
	ld b,(hl)		;7a8c
	cp c			;7a8d
	add a,l			;7a8e
	ld b,(hl)		;7a8f
	cp c			;7a90
	add a,l			;7a91
	ld b,d			;7a92
	cp l			;7a93
	add a,c			;7a94
l7a95h:
	nop			;7a95
	rst 38h			;7a96
	jp 0bd42h		;7a97
	rst 38h			;7a9a
	ld a,(hl)		;7a9b
	add a,c			;7a9c
	sbc a,a			;7a9d
	ld a,(hl)		;7a9e
	add a,c			;7a9f
	sbc a,l			;7aa0
	inc a			;7aa1
	jp 042c3h		;7aa2
	cp l			;7aa5
	rst 38h			;7aa6
	ld a,(hl)		;7aa7
	add a,c			;7aa8
	cp a			;7aa9
	ld a,(hl)		;7aaa
	add a,c			;7aab
	and a			;7aac
	ld l,(hl)		;7aad
	sub c			;7aae
	or l			;7aaf
	ld l,0d1h		;7ab0
	defb 0ddh,01eh,0e1h ;illegal sequence	;7ab2
	defb 0edh ;next byte illegal after ed	;7ab5
l7ab6h:
	ld e,0e1h		;7ab6
	defb 0edh ;next byte illegal after ed	;7ab8
	ld e,0e1h		;7ab9
	defb 0edh ;next byte illegal after ed	;7abb
	inc e			;7abc
	ld h,d			;7abd
	ld l,d			;7abe
	jr $+38			;7abf
	inc l			;7ac1
	jr $+38			;7ac2
	inc l			;7ac4
	jr l7aebh		;7ac5
	inc l			;7ac7
	jr l7aeeh		;7ac8
	inc l			;7aca
	jr l7af1h		;7acb
	inc l			;7acd
	jr l7af4h		;7ace
	inc l			;7ad0
l7ad1h:
	jr l7af7h		;7ad1
	inc l			;7ad3
	djnz l7b0ah		;7ad4
	inc l			;7ad6
	nop			;7ad7
	inc a			;7ad8
	inc a			;7ad9
	nop			;7ada
	add a,b			;7adb
	add a,b			;7adc
	add a,b			;7add
	ld b,b			;7ade
	ld b,b			;7adf
	ret nz			;7ae0
	jr nz,l7a83h		;7ae1
	ret po			;7ae3
	djnz l7ab6h		;7ae4
	ret p			;7ae6
	jr l7ad1h		;7ae7
	ret po			;7ae9
	ex af,af'		;7aea
l7aebh:
	ret m			;7aeb
	ld h,b			;7aec
	adc a,b			;7aed
l7aeeh:
	sbc a,b			;7aee
	nop			;7aef
	ret m			;7af0
l7af1h:
	ret m			;7af1
	ld a,(hl)		;7af2
	add a,c			;7af3
l7af4h:
	and a			;7af4
	ld l,(hl)		;7af5
	sub c			;7af6
l7af7h:
	or l			;7af7
	xor (hl)		;7af8
	ld d,c			;7af9
	ld e,l			;7afa
	sbc a,(hl)		;7afb
	ld h,c			;7afc
	ld l,l			;7afd
	sbc a,(hl)		;7afe
	ld h,c			;7aff
	ld l,l			;7b00
	sbc a,(hl)		;7b01
	ld h,c			;7b02
	ld l,l			;7b03
	inc e			;7b04
	ex (sp),hl		;7b05
	ex de,hl		;7b06
	jr l7b2dh		;7b07
	inc l			;7b09
l7b0ah:
	nop			;7b0a
	ld bc,00101h		;7b0b
	ld (bc),a		;7b0e
	ld (bc),a		;7b0f
	inc bc			;7b10
	inc b			;7b11
	dec b			;7b12
	rlca			;7b13
	ex af,af'		;7b14
	dec bc			;7b15
	rrca			;7b16
	jr l7b30h		;7b17
	rlca			;7b19
	djnz l7b3bh		;7b1a
	rlca			;7b1c
	djnz l7b37h		;7b1d
	nop			;7b1f
	rra			;7b20
	rra			;7b21
	nop			;7b22
	nop			;7b23
	nop			;7b24
	nop			;7b25
	nop			;7b26
	nop			;7b27
	nop			;7b28
	jr c,$+58		;7b29
	djnz l7b99h		;7b2b
l7b2dh:
	ld d,h			;7b2d
	nop			;7b2e
	ld a,h			;7b2f
l7b30h:
	ld b,h			;7b30
	ex af,af'		;7b31
	or 0cah			;7b32
	ex af,af'		;7b34
	or 0cah			;7b35
l7b37h:
	ex af,af'		;7b37
	or 0cah			;7b38
	ld b,b			;7b3a
l7b3bh:
	cp a			;7b3b
	and c			;7b3c
	ld b,b			;7b3d
	cp a			;7b3e
	and e			;7b3f
	ld h,b			;7b40
	sbc a,a			;7b41
	sbc a,a			;7b42
	ld a,(hl)		;7b43
	add a,c			;7b44
	xor a			;7b45
	ld a,0c1h		;7b46
	rst 8			;7b48
	ld e,(hl)		;7b49
	and c			;7b4a
	and c			;7b4b
	ld h,b			;7b4c
	sbc a,a			;7b4d
	cp a			;7b4e
	ld a,b			;7b4f
	add a,a			;7b50
	or a			;7b51
	nop			;7b52
	ld bc,00001h		;7b53
	inc bc			;7b56
	inc bc			;7b57
	nop			;7b58
	inc bc			;7b59
	inc bc			;7b5a
	ld bc,00606h		;7b5b
	nop			;7b5e
	ld b,007h		;7b5f
	nop			;7b61
	ld c,00fh		;7b62
l7b64h:
	ld bc,00e0bh		;7b64
	nop			;7b67
	rrca			;7b68
	rrca			;7b69
	inc sp			;7b6a
	call z,057fdh		;7b6b
l7b6eh:
	xor b			;7b6e
	cp e			;7b6f
	rst 10h			;7b70
l7b71h:
	jr z,$+125		;7b71
	rst 10h			;7b73
l7b74h:
	jr z,l7b71h		;7b74
	rst 10h			;7b76
	jr z,l7b74h		;7b77
	rst 10h			;7b79
	jr z,l7b64h		;7b7a
	add a,c			;7b7c
	ld a,(hl)		;7b7d
	ld a,(hl)		;7b7e
	nop			;7b7f
	defb 0ddh,0ddh,000h ;illegal sequence	;7b80
	add a,b			;7b83
l7b84h:
	add a,b			;7b84
	add a,b			;7b85
	ld b,b			;7b86
	ret nz			;7b87
	add a,b			;7b88
	ld b,b			;7b89
	ret nz			;7b8a
	ret nz			;7b8b
	jr nz,l7b6eh		;7b8c
	ret nz			;7b8e
	jr nz,l7b71h		;7b8f
	ret po			;7b91
	djnz l7b84h		;7b92
	ret po			;7b94
	djnz l7c07h		;7b95
	ret po			;7b97
	ex af,af'		;7b98
l7b99h:
	jr c,l7bfbh		;7b99
	adc a,b			;7b9b
	sbc a,b			;7b9c
	jr nz,$+74		;7b9d
	ld e,b			;7b9f
	nop			;7ba0
	jr z,$+58		;7ba1
	nop			;7ba3
	jr l7bbeh		;7ba4
	nop			;7ba6
	nop			;7ba7
	nop			;7ba8
	nop			;7ba9
	nop			;7baa
	nop			;7bab
	nop			;7bac
	nop			;7bad
	nop			;7bae
	nop			;7baf
	nop			;7bb0
	nop			;7bb1
	nop			;7bb2
	jr l7bcdh		;7bb3
	nop			;7bb5
	inc a			;7bb6
	inc h			;7bb7
	inc b			;7bb8
	ld a,(02026h)		;7bb9
	ld e,(hl)		;7bbc
	ld d,d			;7bbd
l7bbeh:
	inc h			;7bbe
	ld e,e			;7bbf
	ld d,l			;7bc0
	inc d			;7bc1
	ld l,e			;7bc2
	ld a,l			;7bc3
	jr z,l7c1dh		;7bc4
	ld e,a			;7bc6
	ld (hl),049h		;7bc7
	ld e,a			;7bc9
	nop			;7bca
	nop			;7bcb
	nop			;7bcc
l7bcdh:
	nop			;7bcd
	nop			;7bce
	nop			;7bcf
	nop			;7bd0
	ld bc,00101h		;7bd1
	ld (bc),a		;7bd4
	ld (bc),a		;7bd5
	ld bc,00302h		;7bd6
	inc bc			;7bd9
	ld b,004h		;7bda
	ld (bc),a		;7bdc
	rlca			;7bdd
	dec b			;7bde
	nop			;7bdf
	ld b,006h		;7be0
	jr c,l7c2bh		;7be2
	ld e,a			;7be4
	inc a			;7be5
	jp 0addfh		;7be6
	ld d,d			;7be9
	ld e,(hl)		;7bea
	sub l			;7beb
	ld l,d			;7bec
	cp 095h			;7bed
	ld c,d			;7bef
	ld a,d			;7bf0
	ld de,0feceh		;7bf1
	inc b			;7bf4
	in a,(0fbh)		;7bf5
	nop			;7bf7
	ld a,(hl)		;7bf8
	ld a,(hl)		;7bf9
	nop			;7bfa
l7bfbh:
	ret nz			;7bfb
	ret nz			;7bfc
	ret nz			;7bfd
	jr nz,l7c60h		;7bfe
	ret po			;7c00
	djnz $-14		;7c01
	ret p			;7c03
	ex af,af'		;7c04
	ld a,b			;7c05
	ld a,b			;7c06
l7c07h:
	add a,h			;7c07
	sbc a,h			;7c08
	inc e			;7c09
	jp po,004e6h		;7c0a
	add hl,de		;7c0d
	dec de			;7c0e
	nop			;7c0f
	rlca			;7c10
	rlca			;7c11
	jr c,$-55		;7c12
	rra			;7c14
	ld e,h			;7c15
	and e			;7c16
	ld e,a			;7c17
	add hl,hl		;7c18
	sub 018h		;7c19
	sub c			;7c1b
	ld l,(hl)		;7c1c
l7c1dh:
	ret m			;7c1d
	add a,c			;7c1e
	ld a,(hl)		;7c1f
	ld c,d			;7c20
	dec h			;7c21
	jp c,01ea4h		;7c22
	pop hl			;7c25
	ld e,016h		;7c26
	ld l,c			;7c28
	ld d,(hl)		;7c29
	nop			;7c2a
l7c2bh:
	ret nz			;7c2b
	ret nz			;7c2c
	ret nz			;7c2d
	jr nz,l7c90h		;7c2e
	ret po			;7c30
	djnz $-14		;7c31
	ret p			;7c33
l7c34h:
	ex af,af'		;7c34
	ld a,b			;7c35
	ld (hl),b		;7c36
	adc a,h			;7c37
	sub h			;7c38
	ex af,af'		;7c39
	or 0eah			;7c3a
	inc h			;7c3c
	exx			;7c3d
	inc hl			;7c3e
	ret po			;7c3f
	rla			;7c40
	rst 20h			;7c41
	nop			;7c42
	nop			;7c43
	nop			;7c44
	ld b,b			;7c45
	nop			;7c46
	ret po			;7c47
	nop			;7c48
	ld (hl),b		;7c49
	ex af,af'		;7c4a
	djnz l7c61h		;7c4b
	ex af,af'		;7c4d
	ret c			;7c4e
	jr nz,l7c61h		;7c4f
	ret po			;7c51
	ld bc,00400h		;7c52
	nop			;7c55
	dec b			;7c56
	nop			;7c57
	ld bc,00000h		;7c58
	nop			;7c5b
	inc bc			;7c5c
	nop			;7c5d
	inc b			;7c5e
	inc bc			;7c5f
l7c60h:
	inc bc			;7c60
l7c61h:
	nop			;7c61
	ret nz			;7c62
	ccf			;7c63
	ret nz			;7c64
	ccf			;7c65
	add a,h			;7c66
	ld a,e			;7c67
	ld h,d			;7c68
	sbc a,l			;7c69
	jp c,02524h		;7c6a
	ld (bc),a		;7c6d
	add a,l			;7c6e
	ld (bc),a		;7c6f
	ld (bc),a		;7c70
	nop			;7c71
	jr nz,l7c34h		;7c72
	ld b,b			;7c74
	add a,b			;7c75
	inc d			;7c76
	ret po			;7c77
	ld hl,(0a4c4h)		;7c78
	ld b,b			;7c7b
	ld d,b			;7c7c
	jr nz,l7ca7h		;7c7d
	djnz l7c99h		;7c7f
	nop			;7c81
	dec sp			;7c82
	nop			;7c83
	ld b,(hl)		;7c84
	add hl,sp		;7c85
	add a,e			;7c86
	ld a,h			;7c87
	add a,c			;7c88
	ld a,(hl)		;7c89
	add a,e			;7c8a
	ld a,h			;7c8b
	pop bc			;7c8c
	ld a,076h		;7c8d
	add hl,bc		;7c8f
l7c90h:
	ld e,e			;7c90
	jr nz,l7cc3h		;7c91
	nop			;7c93
	ld c,h			;7c94
	jr nc,l7c1dh		;7c95
	ld a,b			;7c97
	dec b			;7c98
l7c99h:
	ld a,d			;7c99
	ld c,(hl)		;7c9a
	jr nc,l7cc9h		;7c9b
	djnz $+22		;7c9d
	ex af,af'		;7c9f
	inc c			;7ca0
	nop			;7ca1
	jr nc,l7ca4h		;7ca2
l7ca4h:
	ld c,h			;7ca4
	jr nc,l7cf3h		;7ca5
l7ca7h:
	jr nc,l7ce1h		;7ca7
	nop			;7ca9
	djnz l7cach		;7caa
l7cach:
	nop			;7cac
	nop			;7cad
	nop			;7cae
	nop			;7caf
	nop			;7cb0
	nop			;7cb1
	jr nz,l7cb4h		;7cb2
l7cb4h:
	ld d,b			;7cb4
	jr nz,l7d27h		;7cb5
	nop			;7cb7
	nop			;7cb8
	nop			;7cb9
	nop			;7cba
	nop			;7cbb
	nop			;7cbc
	nop			;7cbd
	nop			;7cbe
	nop			;7cbf
	nop			;7cc0
	nop			;7cc1
	nop			;7cc2
l7cc3h:
	nop			;7cc3
	djnz l7cfeh		;7cc4
	djnz l7cc8h		;7cc6
l7cc8h:
	nop			;7cc8
l7cc9h:
	nop			;7cc9
	nop			;7cca
	djnz l7cddh		;7ccb
	jr c,l7cdfh		;7ccd
	djnz l7cd1h		;7ccf
l7cd1h:
	nop			;7cd1
	djnz l7ce4h		;7cd2
	djnz l7d52h		;7cd4
	djnz l7ce8h		;7cd6
	djnz l7ceah		;7cd8
	nop			;7cda
	nop			;7cdb
	nop			;7cdc
l7cddh:
	nop			;7cdd
	nop			;7cde
l7cdfh:
	ex af,af'		;7cdf
	ex af,af'		;7ce0
l7ce1h:
	ex af,af'		;7ce1
	inc e			;7ce2
	ex af,af'		;7ce3
l7ce4h:
	ex af,af'		;7ce4
	nop			;7ce5
	nop			;7ce6
	nop			;7ce7
l7ce8h:
	nop			;7ce8
	nop			;7ce9
l7ceah:
	ex af,af'		;7cea
	ex af,af'		;7ceb
	ex af,af'		;7cec
	ex af,af'		;7ced
	ex af,af'		;7cee
	ld c,c			;7cef
	ld hl,(0ff1ch)		;7cf0
l7cf3h:
	inc e			;7cf3
	ld hl,(00849h)		;7cf4
	ex af,af'		;7cf7
	ex af,af'		;7cf8
	nop			;7cf9
	nop			;7cfa
	nop			;7cfb
	nop			;7cfc
	ex af,af'		;7cfd
l7cfeh:
	ex af,af'		;7cfe
	ex af,af'		;7cff
	ex af,af'		;7d00
	ex af,af'		;7d01
	ld a,008h		;7d02
	ex af,af'		;7d04
	ex af,af'		;7d05
	ex af,af'		;7d06
	nop			;7d07
	nop			;7d08
	nop			;7d09
	nop			;7d0a
	nop			;7d0b
	nop			;7d0c
	nop			;7d0d
	nop			;7d0e
	nop			;7d0f
	ex af,af'		;7d10
	ex af,af'		;7d11
	inc e			;7d12
	ex af,af'		;7d13
	ex af,af'		;7d14
	nop			;7d15
	nop			;7d16
	nop			;7d17
	nop			;7d18
	nop			;7d19
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
l7d27h:
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
l7d52h:
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
l7d5dh:
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
	rst 38h			;7d90
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
l7e46h:
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
	rst 38h			;7e85
	rst 38h			;7e86
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
l7f5dh:
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
sub_7f6ch:
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

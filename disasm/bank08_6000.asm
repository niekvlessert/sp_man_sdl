; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank08_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank08.bin

	org 06000h

l6000h:
	sbc a,d			;6000
	dec de			;6001
	sub a			;6002
	sbc a,b			;6003
	sbc a,e			;6004
	sbc a,h			;6005
	inc e			;6006
	sbc a,l			;6007
l6008h:
	sbc a,(hl)		;6008
	sbc a,c			;6009
	sbc a,d			;600a
	dec de			;600b
	sub a			;600c
	ld l,a			;600d
	sbc a,e			;600e
	sbc a,h			;600f
l6010h:
	rst 30h			;6010
	nop			;6011
	add hl,bc		;6012
	dec b			;6013
	ld (bc),a		;6014
	xor (hl)		;6015
	xor a			;6016
	sbc a,c			;6017
	sbc a,d			;6018
	dec de			;6019
	sub a			;601a
	sbc a,b			;601b
	sbc a,e			;601c
	sbc a,h			;601d
	inc e			;601e
	sbc a,l			;601f
	sbc a,(hl)		;6020
	sbc a,c			;6021
	sbc a,d			;6022
	dec de			;6023
	sub a			;6024
	sbc a,b			;6025
	sbc a,e			;6026
	sbc a,h			;6027
	inc e			;6028
	sbc a,l			;6029
	sbc a,(hl)		;602a
	sbc a,c			;602b
	sbc a,d			;602c
	dec de			;602d
	sub a			;602e
	sbc a,b			;602f
	sbc a,e			;6030
	sbc a,h			;6031
	inc e			;6032
	sbc a,l			;6033
	sbc a,(hl)		;6034
	sbc a,c			;6035
	sbc a,d			;6036
	dec de			;6037
	sub a			;6038
	ld l,a			;6039
	sbc a,e			;603a
	sbc a,h			;603b
	inc e			;603c
	sbc a,l			;603d
	sbc a,(hl)		;603e
	scf			;603f
	jr nc,l6042h		;6040
l6042h:
	nop			;6042
	ld bc,00605h		;6043
	xor e			;6046
	xor h			;6047
	xor l			;6048
	sbc a,h			;6049
	nop			;604a
	nop			;604b
	ld (bc),a		;604c
	dec b			;604d
	dec de			;604e
	sub a			;604f
	ld l,a			;6050
	sbc a,c			;6051
	sbc a,d			;6052
	ld b,0abh		;6053
	xor h			;6055
	xor l			;6056
	sbc a,h			;6057
	nop			;6058
	nop			;6059
	inc bc			;605a
	dec b			;605b
	inc e			;605c
	sbc a,l			;605d
	sbc a,(hl)		;605e
	xor l			;605f
	sbc a,h			;6060
	dec de			;6061
	sub a			;6062
	ld l,a			;6063
	sbc a,c			;6064
	sbc a,d			;6065
	ld b,0abh		;6066
	xor h			;6068
	xor l			;6069
	sbc a,h			;606a
	nop			;606b
	nop			;606c
	inc b			;606d
	dec b			;606e
	dec de			;606f
	sub a			;6070
	ld l,a			;6071
	sbc a,c			;6072
	sbc a,d			;6073
	inc e			;6074
	sbc a,l			;6075
	sbc a,(hl)		;6076
	xor l			;6077
	sbc a,h			;6078
	dec de			;6079
	sub a			;607a
	ld l,a			;607b
	sbc a,c			;607c
	sbc a,d			;607d
	ld b,0abh		;607e
	xor h			;6080
	xor l			;6081
	sbc a,h			;6082
	nop			;6083
	nop			;6084
	dec b			;6085
	dec b			;6086
	inc e			;6087
	sbc a,l			;6088
	sbc a,(hl)		;6089
	xor l			;608a
	sbc a,h			;608b
	dec de			;608c
	sub a			;608d
	ld l,a			;608e
	sbc a,c			;608f
	sbc a,d			;6090
	inc e			;6091
	sbc a,l			;6092
	sbc a,(hl)		;6093
	xor l			;6094
	sbc a,h			;6095
	dec de			;6096
	sub a			;6097
	ld l,a			;6098
	sbc a,c			;6099
	sbc a,d			;609a
	ld b,0abh		;609b
	xor h			;609d
	xor l			;609e
	sbc a,h			;609f
	nop			;60a0
	nop			;60a1
	ld b,005h		;60a2
	dec de			;60a4
	ld l,(hl)		;60a5
	ld l,a			;60a6
	sbc a,c			;60a7
	sbc a,d			;60a8
	inc e			;60a9
	sbc a,l			;60aa
	sbc a,(hl)		;60ab
	xor l			;60ac
	sbc a,h			;60ad
	dec de			;60ae
	sub a			;60af
	ld l,a			;60b0
	sbc a,c			;60b1
	sbc a,d			;60b2
	inc e			;60b3
	sbc a,l			;60b4
	sbc a,(hl)		;60b5
	xor l			;60b6
	sbc a,h			;60b7
	dec de			;60b8
	sub a			;60b9
	ld l,a			;60ba
	sbc a,c			;60bb
	sbc a,d			;60bc
	ld b,0abh		;60bd
	xor h			;60bf
	xor l			;60c0
	sbc a,h			;60c1
	nop			;60c2
	nop			;60c3
	rlca			;60c4
	dec b			;60c5
	inc e			;60c6
	sbc a,l			;60c7
	sbc a,(hl)		;60c8
	xor l			;60c9
	sbc a,h			;60ca
	dec de			;60cb
	ld l,(hl)		;60cc
	ld l,a			;60cd
	sbc a,c			;60ce
	sbc a,d			;60cf
	inc e			;60d0
	sbc a,l			;60d1
	sbc a,(hl)		;60d2
	xor l			;60d3
	sbc a,h			;60d4
	dec de			;60d5
	sub a			;60d6
	ld l,a			;60d7
	sbc a,c			;60d8
	sbc a,d			;60d9
	inc e			;60da
	sbc a,l			;60db
	sbc a,(hl)		;60dc
	xor l			;60dd
	sbc a,h			;60de
	dec de			;60df
	sub a			;60e0
	ld l,a			;60e1
	sbc a,c			;60e2
	sbc a,d			;60e3
	ld b,0abh		;60e4
	xor h			;60e6
	xor l			;60e7
	sbc a,h			;60e8
	nop			;60e9
	nop			;60ea
	rlca			;60eb
	inc b			;60ec
	ld h,(hl)		;60ed
	ld h,a			;60ee
	ld h,b			;60ef
	ld h,c			;60f0
	ld l,b			;60f1
	ld l,c			;60f2
	ld h,d			;60f3
	ld h,e			;60f4
	ld (bc),a		;60f5
	ld l,d			;60f6
	jp z,00464h		;60f7
	ret			;60fa
	ret z			;60fb
	push bc			;60fc
	dec b			;60fd
	adc a,d			;60fe
	call z,08884h		;60ff
	adc a,c			;6102
	add a,d			;6103
	add a,e			;6104
	add a,(hl)		;6105
	add a,a			;6106
	add a,b			;6107
	add a,c			;6108
	nop			;6109
	nop			;610a
	rlca			;610b
	inc b			;610c
	ld l,e			;610d
	ld l,h			;610e
	ld h,b			;610f
	ld h,c			;6110
	ld l,l			;6111
	ld l,(hl)		;6112
	ld h,d			;6113
	ld h,e			;6114
	inc bc			;6115
	jp z,l65cbh		;6116
	ret			;6119
	ret z			;611a
	rst 0			;611b
	add a,003h		;611c
	call z,085cdh		;611e
	adc a,l			;6121
	adc a,(hl)		;6122
	add a,d			;6123
	add a,e			;6124
	adc a,e			;6125
	adc a,h			;6126
	add a,b			;6127
	add a,c			;6128
	nop			;6129
	nop			;612a
	rlca			;612b
	inc b			;612c
	ld l,a			;612d
	ld (hl),b		;612e
	ld h,b			;612f
	ld h,c			;6130
	ld (hl),c		;6131
	ld (hl),d		;6132
	ld h,d			;6133
	ld h,e			;6134
	ld (hl),e		;6135
	ld (hl),h		;6136
	ld (hl),l		;6137
	ld h,h			;6138
	ld (bc),a		;6139
	ex af,af'		;613a
	ret			;613b
	push bc			;613c
	sub e			;613d
	sub h			;613e
	sub l			;613f
	add a,h			;6140
	sub c			;6141
	sub d			;6142
	add a,d			;6143
	add a,e			;6144
	adc a,a			;6145
	sub b			;6146
	add a,b			;6147
	add a,c			;6148
	nop			;6149
	nop			;614a
	dec c			;614b
	ex af,af'		;614c
	dec hl			;614d
	inc l			;614e
	ld d,(hl)		;614f
	ld d,a			;6150
	add a,e			;6151
	sbc a,c			;6152
	cp (hl)			;6153
	cp l			;6154
	add a,l			;6155
	add a,(hl)		;6156
	or e			;6157
	add a,a			;6158
	cp a			;6159
	ld e,c			;615a
	ld e,h			;615b
	ld e,l			;615c
	and e			;615d
	ld d,c			;615e
	add hl,hl		;615f
	and l			;6160
	sbc a,b			;6161
	cp h			;6162
	cp (hl)			;6163
	and e			;6164
	dec b			;6165
	ld b,0bch		;6166
	cp l			;6168
	cp l			;6169
	cp (hl)			;616a
	ld (bc),a		;616b
	dec b			;616c
	rlca			;616d
	ld b,001h		;616e
	dec b			;6170
	ld bc,00302h		;6171
	ld (bc),a		;6174
	ld (bc),a		;6175
	inc b			;6176
	rlca			;6177
	ld b,003h		;6178
	inc b			;617a
	ld b,004h		;617b
	inc bc			;617d
	rlca			;617e
	dec b			;617f
	rlca			;6180
	ld (bc),a		;6181
	inc b			;6182
	ld (bc),a		;6183
	inc b			;6184
	ld b,003h		;6185
	dec b			;6187
	inc b			;6188
	rlca			;6189
	ld (bc),a		;618a
	inc bc			;618b
	dec b			;618c
	ld (bc),a		;618d
	inc b			;618e
	inc bc			;618f
	rlca			;6190
	inc b			;6191
	inc bc			;6192
	ld b,007h		;6193
	rlca			;6195
	ld b,001h		;6196
	and e			;6198
	cp e			;6199
	inc bc			;619a
	ld b,004h		;619b
	and e			;619d
	sbc a,c			;619e
	and b			;619f
	and l			;61a0
	and (hl)		;61a1
	and e			;61a2
	or b			;61a3
	xor a			;61a4
	add a,l			;61a5
	add a,(hl)		;61a6
	or b			;61a7
	add a,a			;61a8
	cp e			;61a9
	cp l			;61aa
	adc a,l			;61ab
	adc a,(hl)		;61ac
	dec hl			;61ad
	inc l			;61ae
	adc a,b			;61af
	ld d,a			;61b0
	adc a,a			;61b1
	cp h			;61b2
	cp (hl)			;61b3
	cp a			;61b4
	nop			;61b5
	nop			;61b6
	rlca			;61b7
	ex af,af'		;61b8
	nop			;61b9
	nop			;61ba
	nop			;61bb
	nop			;61bc
	ld (bc),a		;61bd
	ld (de),a		;61be
	ld d,018h		;61bf
	nop			;61c1
	ld b,010h		;61c2
	inc a			;61c4
	ld c,(hl)		;61c5
	dec a			;61c6
	ccf			;61c7
	inc sp			;61c8
	nop			;61c9
	ld de,02220h		;61ca
	ld hl,(0303eh)		;61cd
	ld h,007h		;61d0
	ld b,a			;61d2
	dec e			;61d3
	ld d,h			;61d4
	dec hl			;61d5
	ld b,b			;61d6
	scf			;61d7
	inc sp			;61d8
	ex af,af'		;61d9
	ld c,b			;61da
	ld e,024h		;61db
	ld c,h			;61dd
	ld (hl),039h		;61de
	inc sp			;61e0
	add hl,bc		;61e1
	ld b,h			;61e2
	ld hl,02f56h		;61e3
	ld sp,00032h		;61e6
	nop			;61e9
	nop			;61ea
	inc bc			;61eb
	rla			;61ec
	inc d			;61ed
	inc (hl)		;61ee
	nop			;61ef
	nop			;61f0
	nop			;61f1
	nop			;61f2
	rlca			;61f3
	ex af,af'		;61f4
	nop			;61f5
	nop			;61f6
	dec bc			;61f7
	inc c			;61f8
	dec b			;61f9
	dec (hl)		;61fa
	ld d,c			;61fb
	nop			;61fc
	nop			;61fd
	ld a,(bc)		;61fe
	ld b,e			;61ff
	ld d,e			;6200
	ld b,c			;6201
	ld b,(hl)		;6202
	ld a,(00d27h)		;6203
	ld c,l			;6206
	dec de			;6207
	inc hl			;6208
	dec h			;6209
	ld b,d			;620a
	inc l			;620b
	jr z,l621ch		;620c
	ld c,c			;620e
	inc e			;620f
	ld c,a			;6210
	ld c,d			;6211
	jr c,l6266h		;6212
	inc sp			;6214
	rrca			;6215
	ld a,(de)		;6216
	rra			;6217
	ld d,l			;6218
	ld c,e			;6219
	add hl,hl		;621a
	ld b,l			;621b
l621ch:
	inc sp			;621c
	nop			;621d
	inc b			;621e
	ld bc,03b50h		;621f
	ld l,02dh		;6222
	nop			;6224
	nop			;6225
	nop			;6226
	nop			;6227
	nop			;6228
	dec d			;6229
	add hl,de		;622a
	inc de			;622b
	nop			;622c
	nop			;622d
	nop			;622e
	inc bc			;622f
	dec b			;6230
	and h			;6231
	and (hl)		;6232
	and e			;6233
	call nz,0a1a7h		;6234
	jp 0c8c6h		;6237
	ld d,a			;623a
	and l			;623b
	push bc			;623c
	rst 0			;623d
	ret			;623e
	ld d,(hl)		;623f
	nop			;6240
	nop			;6241
	inc bc			;6242
	dec b			;6243
	and l			;6244
	push bc			;6245
	rst 0			;6246
	ret			;6247
	ld d,(hl)		;6248
	and c			;6249
	jp 0c8c6h		;624a
	ld d,a			;624d
	and h			;624e
	and (hl)		;624f
	and e			;6250
	call nz,000a7h		;6251
	nop			;6254
	djnz l6262h		;6255
	nop			;6257
	nop			;6258
	ld bc,02120h		;6259
	ld (02423h),hl		;625c
	dec h			;625f
	ld h,027h		;6260
l6262h:
	nop			;6262
	nop			;6263
	nop			;6264
	inc c			;6265
l6266h:
	add hl,hl		;6266
	ld hl,(02c2bh)		;6267
	dec l			;626a
	ld l,02fh		;626b
	ld c,00eh		;626d
	dec (hl)		;626f
	ld (hl),037h		;6270
	jr c,l62adh		;6272
	ld a,(03c3bh)		;6274
	dec a			;6277
	sbc a,d			;6278
	sbc a,d			;6279
	xor e			;627a
	xor l			;627b
	ld b,(hl)		;627c
	ld b,a			;627d
	ld c,b			;627e
	ld c,c			;627f
	ld c,d			;6280
	ld c,e			;6281
	ld c,h			;6282
	sbc a,e			;6283
	sbc a,e			;6284
	xor e			;6285
	xor l			;6286
	ld d,(hl)		;6287
	ld d,a			;6288
	ld e,b			;6289
	ld e,c			;628a
	ld e,d			;628b
	ld e,e			;628c
	ld e,h			;628d
	sbc a,h			;628e
	sbc a,h			;628f
	xor e			;6290
	xor l			;6291
	ld h,a			;6292
	ld l,b			;6293
	ld l,c			;6294
	ld l,d			;6295
	ld l,d			;6296
	ld l,e			;6297
	ld l,h			;6298
	xor b			;6299
	xor b			;629a
	xor e			;629b
	xor l			;629c
	ld (hl),a		;629d
	xor (hl)		;629e
	add a,l			;629f
	add a,(hl)		;62a0
	add a,a			;62a1
	xor d			;62a2
	or (hl)			;62a3
	and a			;62a4
	and a			;62a5
	xor e			;62a6
	xor l			;62a7
	xor h			;62a8
	xor a			;62a9
	add a,h			;62aa
	adc a,b			;62ab
	adc a,c			;62ac
l62adh:
	adc a,d			;62ad
	xor a			;62ae
	and (hl)		;62af
	and (hl)		;62b0
	xor e			;62b1
	xor l			;62b2
	xor h			;62b3
	xor (hl)		;62b4
	add a,h			;62b5
	adc a,b			;62b6
	adc a,c			;62b7
	add a,a			;62b8
	xor (hl)		;62b9
	and l			;62ba
	and l			;62bb
	xor e			;62bc
	xor l			;62bd
	ld (hl),a		;62be
	xor a			;62bf
	add a,l			;62c0
	add a,(hl)		;62c1
	add a,l			;62c2
	adc a,d			;62c3
l62c4h:
	or (hl)			;62c4
	sbc a,h			;62c5
	sbc a,h			;62c6
	xor e			;62c7
	xor l			;62c8
	ld h,a			;62c9
	ld l,b			;62ca
	ld l,c			;62cb
	ld l,d			;62cc
	ld l,d			;62cd
	ld l,e			;62ce
	ld l,h			;62cf
	sbc a,e			;62d0
	sbc a,e			;62d1
	xor e			;62d2
	xor l			;62d3
	ld d,(hl)		;62d4
	ld d,a			;62d5
	ld e,b			;62d6
	ld e,c			;62d7
	ld e,d			;62d8
	ld e,e			;62d9
	ld e,h			;62da
	sbc a,d			;62db
	sbc a,d			;62dc
	xor e			;62dd
	xor l			;62de
	ld b,(hl)		;62df
	ld b,a			;62e0
	ld c,b			;62e1
	ld c,c			;62e2
	ld c,d			;62e3
	ld c,e			;62e4
	ld c,h			;62e5
	ld c,00eh		;62e6
	dec (hl)		;62e8
	ld (hl),037h		;62e9
	jr c,$+59		;62eb
	ld a,(03c3bh)		;62ed
	dec a			;62f0
	nop			;62f1
	nop			;62f2
	nop			;62f3
	inc c			;62f4
	add hl,hl		;62f5
	ld hl,(02c2bh)		;62f6
	dec l			;62f9
	ld l,02fh		;62fa
	nop			;62fc
	nop			;62fd
	ld bc,02120h		;62fe
	ld (02423h),hl		;6301
	dec h			;6304
	ld h,027h		;6305
	nop			;6307
	nop			;6308
	rlca			;6309
	ex af,af'		;630a
	nop			;630b
	ld bc,00302h		;630c
	nop			;630f
	nop			;6310
	nop			;6311
	nop			;6312
	inc b			;6313
	jr nz,$+35		;6314
	dec b			;6316
	nop			;6317
	nop			;6318
	nop			;6319
	nop			;631a
	ld b,022h		;631b
	inc hl			;631d
	inc h			;631e
	rlca			;631f
	nop			;6320
	nop			;6321
	nop			;6322
	ex af,af'		;6323
	dec h			;6324
	ld h,027h		;6325
	add hl,bc		;6327
	nop			;6328
	nop			;6329
	nop			;632a
	ld a,(bc)		;632b
	jr z,l6357h		;632c
	ld hl,(00b2bh)		;632e
	nop			;6331
	nop			;6332
	nop			;6333
	inc l			;6334
	dec l			;6335
	ld l,02fh		;6336
	inc c			;6338
	nop			;6339
	nop			;633a
	dec c			;633b
	jr nc,l636fh		;633c
	ld (03433h),a		;633e
	ld c,00fh		;6341
	nop			;6343
	nop			;6344
	rlca			;6345
	ex af,af'		;6346
	dec c			;6347
	jr nc,l637bh		;6348
	ld (03433h),a		;634a
	ld c,00fh		;634d
	nop			;634f
	inc l			;6350
	dec l			;6351
	ld l,02fh		;6352
	inc c			;6354
	nop			;6355
	nop			;6356
l6357h:
	ld a,(bc)		;6357
	jr z,l6383h		;6358
	ld hl,(00b2bh)		;635a
	nop			;635d
	nop			;635e
	ex af,af'		;635f
	dec h			;6360
	ld h,027h		;6361
	add hl,bc		;6363
	nop			;6364
	nop			;6365
	nop			;6366
	ld b,022h		;6367
	inc hl			;6369
	inc h			;636a
	rlca			;636b
	nop			;636c
	nop			;636d
	nop			;636e
l636fh:
	inc b			;636f
	jr nz,$+35		;6370
	dec b			;6372
	nop			;6373
	nop			;6374
	nop			;6375
	nop			;6376
	nop			;6377
	ld bc,00302h		;6378
l637bh:
	nop			;637b
	nop			;637c
	nop			;637d
	nop			;637e
	nop			;637f
	nop			;6380
	djnz l638fh		;6381
l6383h:
	jr z,l63adh		;6383
	ld (bc),a		;6385
	inc bc			;6386
	inc b			;6387
	dec b			;6388
	nop			;6389
	nop			;638a
	nop			;638b
	nop			;638c
	nop			;638d
	nop			;638e
l638fh:
	jr nc,l63c1h		;638f
	ld sp,03332h		;6391
	inc (hl)		;6394
	ld b,007h		;6395
	nop			;6397
	nop			;6398
	nop			;6399
	nop			;639a
	ld a,03fh		;639b
	ld b,b			;639d
	ld b,c			;639e
	ld b,d			;639f
	ld b,e			;63a0
	ld b,h			;63a1
	ld b,l			;63a2
	ex af,af'		;63a3
	nop			;63a4
	nop			;63a5
	nop			;63a6
	ld c,l			;63a7
	ld c,(hl)		;63a8
	ld c,a			;63a9
	ld d,b			;63aa
	ld d,c			;63ab
	ld d,d			;63ac
l63adh:
	ld d,e			;63ad
	ld d,h			;63ae
	ld d,l			;63af
	add hl,bc		;63b0
	nop			;63b1
	nop			;63b2
	ld e,l			;63b3
	ld e,(hl)		;63b4
	ld e,a			;63b5
	ld h,b			;63b6
	ld h,c			;63b7
	ld h,d			;63b8
	ld h,e			;63b9
	ld h,h			;63ba
	ld h,l			;63bb
	ld h,(hl)		;63bc
	ld a,(bc)		;63bd
	nop			;63be
	ld l,l			;63bf
	ld l,(hl)		;63c0
l63c1h:
	ld l,a			;63c1
	ld l,a			;63c2
	ld (hl),b		;63c3
	ld (hl),c		;63c4
	ld (hl),d		;63c5
	ld (hl),e		;63c6
	ld (hl),h		;63c7
	ld (hl),l		;63c8
	halt			;63c9
	dec bc			;63ca
	ld a,d			;63cb
	ld a,e			;63cc
	ld a,h			;63cd
	ld a,h			;63ce
	ld a,l			;63cf
	ld a,(hl)		;63d0
	ld a,a			;63d1
	add a,c			;63d2
	add a,d			;63d3
	add a,e			;63d4
	add a,e			;63d5
	dec c			;63d6
	adc a,e			;63d7
	adc a,h			;63d8
	adc a,l			;63d9
	adc a,(hl)		;63da
	adc a,a			;63db
	sub b			;63dc
	sub c			;63dd
	xor d			;63de
	ld (hl),a		;63df
	ld a,h			;63e0
	nop			;63e1
	nop			;63e2
	adc a,e			;63e3
	adc a,h			;63e4
	adc a,l			;63e5
	adc a,(hl)		;63e6
	adc a,a			;63e7
	sub b			;63e8
	sub c			;63e9
	xor d			;63ea
	ld (hl),a		;63eb
	ld a,h			;63ec
	nop			;63ed
	nop			;63ee
	ld a,d			;63ef
	ld a,e			;63f0
	ld a,h			;63f1
	ld a,h			;63f2
	ld a,l			;63f3
	ld a,(hl)		;63f4
	ld a,a			;63f5
	add a,c			;63f6
	add a,d			;63f7
	add a,e			;63f8
	add a,e			;63f9
	dec c			;63fa
	ld l,l			;63fb
	ld l,(hl)		;63fc
	ld l,a			;63fd
	ld l,a			;63fe
	ld (hl),b		;63ff
	ld (hl),c		;6400
	ld (hl),d		;6401
	ld (hl),e		;6402
	ld (hl),h		;6403
	ld (hl),l		;6404
	halt			;6405
	dec bc			;6406
	ld e,l			;6407
	ld e,(hl)		;6408
	ld e,a			;6409
	ld h,b			;640a
	ld h,c			;640b
	ld h,d			;640c
	ld h,e			;640d
	ld h,h			;640e
	ld h,l			;640f
	ld h,(hl)		;6410
	ld a,(bc)		;6411
	nop			;6412
	ld c,l			;6413
	ld c,(hl)		;6414
	ld c,a			;6415
	ld d,b			;6416
	ld d,c			;6417
	ld d,d			;6418
	ld d,e			;6419
	ld d,h			;641a
	ld d,l			;641b
	add hl,bc		;641c
	nop			;641d
	nop			;641e
	ld a,03fh		;641f
	ld b,b			;6421
	ld b,c			;6422
	ld b,d			;6423
	ld b,e			;6424
	ld b,h			;6425
	ld b,l			;6426
	ex af,af'		;6427
	nop			;6428
	nop			;6429
	nop			;642a
	jr nc,l645dh		;642b
	ld sp,03332h		;642d
	inc (hl)		;6430
	ld b,007h		;6431
	nop			;6433
	nop			;6434
	nop			;6435
	nop			;6436
	jr z,l6461h		;6437
	ld (bc),a		;6439
	inc bc			;643a
	inc b			;643b
	dec b			;643c
	nop			;643d
	nop			;643e
	nop			;643f
	nop			;6440
	nop			;6441
	nop			;6442
	nop			;6443
	nop			;6444
	inc c			;6445
	ld (bc),a		;6446
	rrca			;6447
	rrca			;6448
	sub d			;6449
	sub d			;644a
	sub e			;644b
	sub e			;644c
	sbc a,l			;644d
	sbc a,l			;644e
	sbc a,(hl)		;644f
	sbc a,(hl)		;6450
	sbc a,a			;6451
	sbc a,a			;6452
	xor c			;6453
	xor c			;6454
	xor b			;6455
	xor b			;6456
	and a			;6457
	and a			;6458
	and d			;6459
	and d			;645a
	and c			;645b
	and c			;645c
l645dh:
	rrca			;645d
	rrca			;645e
	nop			;645f
	nop			;6460
l6461h:
	inc c			;6461
	ld (bc),a		;6462
	djnz l6475h		;6463
	sub h			;6465
	sub h			;6466
	sub l			;6467
	sub l			;6468
	sub (hl)		;6469
	sub (hl)		;646a
	xor c			;646b
	xor c			;646c
	xor b			;646d
	xor b			;646e
	and a			;646f
	and a			;6470
	and b			;6471
	and b			;6472
	sub h			;6473
	sub h			;6474
l6475h:
	sub e			;6475
	sub e			;6476
	sub d			;6477
	sub d			;6478
	djnz l648bh		;6479
	nop			;647b
	nop			;647c
	inc c			;647d
	ld (bc),a		;647e
	ld de,09711h		;647f
	sub a			;6482
	sbc a,b			;6483
	sbc a,b			;6484
	sbc a,c			;6485
	sbc a,c			;6486
	and b			;6487
	and b			;6488
	and (hl)		;6489
	and (hl)		;648a
l648bh:
	and l			;648b
	and l			;648c
	xor c			;648d
	xor c			;648e
	sub a			;648f
	sub a			;6490
	sub (hl)		;6491
	sub (hl)		;6492
	sub l			;6493
	sub l			;6494
	ld de,00011h		;6495
	nop			;6498
	inc c			;6499
	ld (bc),a		;649a
	ld (de),a		;649b
	ld (de),a		;649c
	and c			;649d
	and c			;649e
	and d			;649f
	and d			;64a0
	and (hl)		;64a1
	and (hl)		;64a2
	and l			;64a3
	and l			;64a4
	xor c			;64a5
	xor c			;64a6
	sbc a,a			;64a7
	sbc a,a			;64a8
	sbc a,(hl)		;64a9
	sbc a,(hl)		;64aa
	sbc a,l			;64ab
	sbc a,l			;64ac
	sbc a,c			;64ad
	sbc a,c			;64ae
	sbc a,b			;64af
	sbc a,b			;64b0
	ld (de),a		;64b1
	ld (de),a		;64b2
	ld b,0ffh		;64b3
	inc b			;64b5
	ld bc,01b1ah		;64b6
	dec de			;64b9
	ld a,(de)		;64ba
	ld b,0ffh		;64bb
	inc b			;64bd
	ld bc,01c1dh		;64be
	inc e			;64c1
	dec e			;64c2
	nop			;64c3
	nop			;64c4
	inc b			;64c5
	ld bc,01913h		;64c6
	add hl,de		;64c9
	inc de			;64ca
	nop			;64cb
	nop			;64cc
	inc b			;64cd
	ld (bc),a		;64ce
	inc de			;64cf
	inc d			;64d0
	add hl,de		;64d1
	and e			;64d2
	add hl,de		;64d3
	and e			;64d4
	inc de			;64d5
	inc d			;64d6
	nop			;64d7
	nop			;64d8
	ld b,002h		;64d9
	nop			;64db
	rla			;64dc
	dec d			;64dd
	and h			;64de
	ld d,018h		;64df
	ld d,018h		;64e1
	dec d			;64e3
	and h			;64e4
	nop			;64e5
	rla			;64e6
	nop			;64e7
	nop			;64e8
	ld b,002h		;64e9
	inc de			;64eb
	inc d			;64ec
	add hl,de		;64ed
	and e			;64ee
	nop			;64ef
	nop			;64f0
	nop			;64f1
	nop			;64f2
	add hl,de		;64f3
	and e			;64f4
	inc de			;64f5
	inc d			;64f6
	nop			;64f7
	nop			;64f8
	ex af,af'		;64f9
	ld (bc),a		;64fa
	nop			;64fb
	rla			;64fc
	dec d			;64fd
	and h			;64fe
	ld d,018h		;64ff
	nop			;6501
	nop			;6502
	nop			;6503
	nop			;6504
	ld d,018h		;6505
	dec d			;6507
	and h			;6508
	nop			;6509
	rla			;650a
	ld b,007h		;650b
	inc b			;650d
	ld bc,0b1b0h		;650e
	or b			;6511
	or c			;6512
	ld b,007h		;6513
	inc b			;6515
	ld bc,0b3b2h		;6516
	or d			;6519
	or e			;651a
	ld b,007h		;651b
	inc b			;651d
	ld bc,0b5b4h		;651e
	or h			;6521
	or l			;6522
	ld b,00ch		;6523
	inc b			;6525
	ld bc,0b1b7h		;6526
	or b			;6529
	or a			;652a
	ld b,00ch		;652b
	inc b			;652d
	ld bc,0b3b8h		;652e
	or d			;6531
	cp b			;6532
	ld b,00ch		;6533
	inc b			;6535
	ld bc,0b5b9h		;6536
	or h			;6539
	cp c			;653a
	ld b,001h		;653b
	inc b			;653d
	ld bc,0c8c8h		;653e
	ret z			;6541
	ret z			;6542
	ld b,000h		;6543
	inc b			;6545
	ld (bc),a		;6546
	ret z			;6547
	ret			;6548
	ret z			;6549
	ret			;654a
	ret z			;654b
	ret			;654c
	ret z			;654d
	ret			;654e
	ld b,0ffh		;654f
	inc b			;6551
	inc bc			;6552
	ret z			;6553
	ret			;6554
	jp z,0c9c8h		;6555
	jp z,0c9c8h		;6558
	jp z,0c9c8h		;655b
	jp z,0fe06h		;655e
	inc b			;6561
	inc b			;6562
	ret z			;6563
	ret			;6564
	jp z,0c8c8h		;6565
	ret			;6568
	jp z,0c8c8h		;6569
	ret			;656c
	jp z,0c8c8h		;656d
	ret			;6570
	jp z,006c8h		;6571
	defb 0fdh,004h,005h ;illegal sequence	;6574
	ret z			;6577
	ret			;6578
	jp z,0c9c8h		;6579
	ret z			;657c
	ret			;657d
	jp z,0c9c8h		;657e
	ret z			;6581
	ret			;6582
	jp z,0c9c8h		;6583
	ret z			;6586
	ret			;6587
	jp z,0c9c8h		;6588
	ld b,0fch		;658b
	inc b			;658d
	ld b,0c8h		;658e
	ret			;6590
	jp z,0c9c8h		;6591
	jp z,0c9c8h		;6594
	jp z,0c9c8h		;6597
	jp z,0c9c8h		;659a
	jp z,0c9c8h		;659d
	jp z,0c9c8h		;65a0
	jp z,0c9c8h		;65a3
	jp z,0fb06h		;65a6
	inc b			;65a9
	rlca			;65aa
	ret			;65ab
	jp z,0c9c8h		;65ac
	jp z,0c9c8h		;65af
	ret			;65b2
	jp z,0c9c8h		;65b3
	jp z,0c9c8h		;65b6
	ret			;65b9
	jp z,0c9c8h		;65ba
	jp z,0c9c8h		;65bd
	ret			;65c0
	jp z,0c9c8h		;65c1
	jp z,0c9c8h		;65c4
	ld b,0fbh		;65c7
	inc b			;65c9
	rlca			;65ca
l65cbh:
	jp z,0c9c8h		;65cb
	jp z,0c9c8h		;65ce
	jp z,0c8cah		;65d1
	ret			;65d4
	jp z,0c9c8h		;65d5
	jp z,0c8cah		;65d8
	ret			;65db
	jp z,0c9c8h		;65dc
	jp z,0c8cah		;65df
	ret			;65e2
	jp z,0c9c8h		;65e3
	jp z,0fb06h		;65e6
	inc b			;65e9
	rlca			;65ea
	ret z			;65eb
	ret			;65ec
	jp z,0c9c8h		;65ed
	jp z,0c8c8h		;65f0
	ret			;65f3
	jp z,0c9c8h		;65f4
	jp z,0c8c8h		;65f7
	ret			;65fa
	jp z,0c9c8h		;65fb
	jp z,0c8c8h		;65fe
	ret			;6601
	jp z,0c9c8h		;6602
	jp z,007c8h		;6605
	ld c,002h		;6608
	inc b			;660a
	ret nz			;660b
	call nz,0c1c7h		;660c
	ret nz			;660f
	call nz,0c1c7h		;6610
	rlca			;6613
	ld c,002h		;6614
	inc b			;6616
	ret nz			;6617
	jp 0c1c6h		;6618
	ret nz			;661b
	jp 0c1c6h		;661c
	rlca			;661f
	ld c,002h		;6620
	inc b			;6622
	ret nz			;6623
	jp nz,0c1c5h		;6624
	ret nz			;6627
	jp nz,0c1c5h		;6628
	ld a,h			;662b
	and (hl)		;662c
	adc a,a			;662d
	and (hl)		;662e
	xor a			;662f
	and (hl)		;6630
	ex (sp),hl		;6631
	and (hl)		;6632
	ld b,c			;6633
	and a			;6634
	ld (hl),a		;6635
	and (hl)		;6636
	ld a,h			;6637
	and (hl)		;6638
	adc a,a			;6639
	and (hl)		;663a
	xor a			;663b
	and (hl)		;663c
	ex (sp),hl		;663d
	and (hl)		;663e
	ld b,c			;663f
	and a			;6640
	ld a,h			;6641
	and (hl)		;6642
	adc a,a			;6643
	and (hl)		;6644
	xor a			;6645
	and (hl)		;6646
	ld c,l			;6647
	sub c			;6648
	ld e,c			;6649
	sub c			;664a
	and c			;664b
	sub b			;664c
	add hl,de		;664d
	sub (hl)		;664e
	dec h			;664f
	sub (hl)		;6650
	ld (hl),c		;6651
	sub (hl)		;6652
	ld d,c			;6653
	adc a,l			;6654
	ld d,c			;6655
	adc a,l			;6656
	add hl,sp		;6657
	adc a,l			;6658
	sub l			;6659
	adc a,l			;665a
	cp e			;665b
	sub a			;665c
	add hl,de		;665d
	sub a			;665e
	add a,l			;665f
	and a			;6660
	and a			;6661
	and a			;6662
	xor (hl)		;6663
	and a			;6664
	ret nc			;6665
	and a			;6666
	ld b,0a8h		;6667
	inc c			;6669
	xor b			;666a
	ld b,d			;666b
	xor b			;666c
	adc a,h			;666d
	xor b			;666e
	xor b			;666f
	xor b			;6670
	ld b,0a9h		;6671
	ld l,(hl)		;6673
	xor c			;6674
	or c			;6675
	xor c			;6676
	nop			;6677
	nop			;6678
	ld bc,00001h		;6679
	nop			;667c
	nop			;667d
	inc bc			;667e
	dec b			;667f
	nop			;6680
	xor 0efh		;6681
	ret p			;6683
	nop			;6684
	ex de,hl		;6685
	jp p,0fdfah		;6686
	defb 0edh ;next byte illegal after ed	;6689
	nop			;668a
	call p,0ecf6h		;668b
	nop			;668e
	nop			;668f
	nop			;6690
	inc b			;6691
	rlca			;6692
	nop			;6693
	nop			;6694
	xor 0efh		;6695
	rst 28h			;6697
	ret p			;6698
	nop			;6699
	nop			;669a
	xor 0f7h		;669b
	jp m,0f3f8h		;669d
	defb 0edh ;next byte illegal after ed	;66a0
	ex de,hl		;66a1
	jp p,0fbfbh		;66a2
	call m,0edf9h		;66a5
	nop			;66a8
	call p,0f5f6h		;66a9
	or 0ech			;66ac
	nop			;66ae
	nop			;66af
	nop			;66b0
	ld b,008h		;66b1
	nop			;66b3
	nop			;66b4
	xor 0efh		;66b5
	rst 28h			;66b7
	ret p			;66b8
	nop			;66b9
	nop			;66ba
	nop			;66bb
	xor 0f7h		;66bc
	ret m			;66be
	ret m			;66bf
	di			;66c0
	ret p			;66c1
	nop			;66c2
	nop			;66c3
	pop af			;66c4
	rst 30h			;66c5
	jp m,0fcf8h		;66c6
	defb 0fdh,0edh,0ebh ;illegal sequence	;66c9
	jp p,0fcfbh		;66cc
	call m,0ecfdh		;66cf
	nop			;66d2
	ex de,hl		;66d3
	jp p,0fcfbh		;66d4
	call m,0edf9h		;66d7
	nop			;66da
	nop			;66db
	call p,0f5f6h		;66dc
	or 0ech			;66df
	nop			;66e1
	nop			;66e2
	nop			;66e3
	nop			;66e4
	add hl,bc		;66e5
	ld a,(bc)		;66e6
	nop			;66e7
	nop			;66e8
	xor 0efh		;66e9
	ret p			;66eb
	nop			;66ec
	nop			;66ed
	nop			;66ee
	nop			;66ef
	nop			;66f0
	nop			;66f1
	xor 0f7h		;66f2
	jp m,0effdh		;66f4
	ret p			;66f7
	nop			;66f8
	nop			;66f9
	nop			;66fa
	nop			;66fb
	pop af			;66fc
	ei			;66fd
	jp m,0f8f7h		;66fe
	defb 0fdh,0f0h,000h ;illegal sequence	;6701
	nop			;6704
	nop			;6705
	call p,0fbf2h		;6706
	jp m,0fdf8h		;6709
	defb 0fdh,0edh,000h ;illegal sequence	;670c
	nop			;670f
	ex de,hl		;6710
	jp p,0fafbh		;6711
	call m,0f3f8h		;6714
	ret p			;6717
	nop			;6718
	nop			;6719
	xor 0f2h		;671a
	jp m,0fcfah		;671c
	call m,0fdfch		;671f
	defb 0edh ;next byte illegal after ed	;6722
	nop			;6723
	pop af			;6724
	jp p,0fcfbh		;6725
	call m,0f6f6h		;6728
	call pe,0eb00h		;672b
	jp p,0fafbh		;672e
	call m,0edf9h		;6731
	nop			;6734
	nop			;6735
	nop			;6736
	nop			;6737
	call p,0f5f6h		;6738
	or 0ech			;673b
	nop			;673d
	nop			;673e
	nop			;673f
	nop			;6740
	nop			;6741
	nop			;6742
	ex af,af'		;6743
	ex af,af'		;6744
	nop			;6745
	xor 0efh		;6746
	ret p			;6748
	nop			;6749
	nop			;674a
	nop			;674b
	nop			;674c
	ex de,hl		;674d
	jp p,0fdfah		;674e
	rst 28h			;6751
	ret p			;6752
	nop			;6753
	nop			;6754
	nop			;6755
	call p,0fbf5h		;6756
	rst 30h			;6759
	ret m			;675a
	ret p			;675b
	nop			;675c
	nop			;675d
	nop			;675e
	ex de,hl		;675f
	jp p,0fafah		;6760
	defb 0fdh,0edh,000h ;illegal sequence	;6763
	nop			;6766
	nop			;6767
	call p,0f6f5h		;6768
	call pe,00000h		;676b
	xor 0efh		;676e
	ret p			;6770
	nop			;6771
	nop			;6772
	nop			;6773
	nop			;6774
	ex de,hl		;6775
	jp p,0fdfah		;6776
	defb 0edh ;next byte illegal after ed	;6779
	nop			;677a
	nop			;677b
	nop			;677c
	nop			;677d
	call p,0ecf6h		;677e
	nop			;6781
	nop			;6782
	nop			;6783
	nop			;6784
	nop			;6785
	nop			;6786
	inc bc			;6787
	ld a,(bc)		;6788
	nop			;6789
	nop			;678a
	nop			;678b
	nop			;678c
	nop			;678d
	xor 0efh		;678e
	rst 28h			;6790
	ret p			;6791
	nop			;6792
	nop			;6793
	nop			;6794
	nop			;6795
	nop			;6796
	xor 0f7h		;6797
	ret m			;6799
	jp m,0edfdh		;679a
	xor 0efh		;679d
	ret p			;679f
	xor 0f7h		;67a0
	rst 30h			;67a2
	jp m,0f3f8h		;67a3
	ret p			;67a6
	nop			;67a7
	nop			;67a8
	ld bc,0ee03h		;67a9
	rst 28h			;67ac
	ret p			;67ad
	nop			;67ae
	nop			;67af
	inc bc			;67b0
	ld a,(bc)		;67b1
	nop			;67b2
	nop			;67b3
	nop			;67b4
	nop			;67b5
	nop			;67b6
	nop			;67b7
	nop			;67b8
	nop			;67b9
	xor 0efh		;67ba
	nop			;67bc
	nop			;67bd
	nop			;67be
	nop			;67bf
	xor 0efh		;67c0
	ret p			;67c2
	xor 0f1h		;67c3
	rst 30h			;67c5
	xor 0efh		;67c6
	ret p			;67c8
	xor 0f7h		;67c9
	jp m,0f2f3h		;67cb
	rst 30h			;67ce
	ret m			;67cf
	nop			;67d0
	nop			;67d1
	dec b			;67d2
	ld a,(bc)		;67d3
	xor 0efh		;67d4
	ret p			;67d6
	nop			;67d7
	nop			;67d8
	nop			;67d9
	nop			;67da
	nop			;67db
	nop			;67dc
	nop			;67dd
	pop af			;67de
	ret m			;67df
	defb 0fdh,0edh,000h ;illegal sequence	;67e0
	nop			;67e3
	nop			;67e4
	nop			;67e5
	nop			;67e6
	nop			;67e7
	jp p,0f9fah		;67e8
	defb 0edh ;next byte illegal after ed	;67eb
	xor 0efh		;67ec
	rst 28h			;67ee
	ret p			;67ef
	nop			;67f0
	nop			;67f1
	rst 30h			;67f2
	call m,0eefdh		;67f3
	rst 30h			;67f6
	ret m			;67f7
	jp m,0edfdh		;67f8
	nop			;67fb
	rst 30h			;67fc
	jp m,0f7f7h		;67fd
	ret m			;6800
	jp m,0f3f8h		;6801
	ret p			;6804
	xor 000h		;6805
	nop			;6807
	ld bc,0ef02h		;6808
	ret p			;680b
	nop			;680c
	nop			;680d
	dec b			;680e
	ld a,(bc)		;680f
	nop			;6810
	nop			;6811
	nop			;6812
	nop			;6813
	nop			;6814
	xor 0efh		;6815
	ret p			;6817
	nop			;6818
	nop			;6819
	nop			;681a
	nop			;681b
	nop			;681c
	nop			;681d
	xor 0f7h		;681e
	jp m,0edf3h		;6820
	xor 000h		;6823
	nop			;6825
	nop			;6826
	ex de,hl		;6827
	jp p,0fafbh		;6828
	ld sp,hl		;682b
	xor 0f1h		;682c
	nop			;682e
	nop			;682f
	nop			;6830
	xor 0f7h		;6831
	jp m,0f3fch		;6833
	jp p,0eef7h		;6836
	rst 28h			;6839
	xor 0f7h		;683a
	ei			;683c
	call m,0f8fah		;683d
	ret m			;6840
	ei			;6841
	nop			;6842
	nop			;6843
	rlca			;6844
	ld a,(bc)		;6845
	nop			;6846
	nop			;6847
	xor 0efh		;6848
	ret p			;684a
	nop			;684b
	nop			;684c
	nop			;684d
	nop			;684e
	nop			;684f
	nop			;6850
	xor 0f7h		;6851
	jp m,0edfdh		;6853
	nop			;6856
	nop			;6857
	nop			;6858
	nop			;6859
	nop			;685a
	pop af			;685b
	rst 30h			;685c
	ret m			;685d
	di			;685e
	defb 0edh ;next byte illegal after ed	;685f
	xor 0efh		;6860
	rst 28h			;6862
	ret p			;6863
	rst 28h			;6864
	jp p,0f8fbh		;6865
	ld sp,hl		;6868
	xor 0f8h		;6869
	ret m			;686b
	ret m			;686c
	defb 0fdh,0f7h,0f7h ;illegal sequence	;686d
	jp m,0f3fch		;6870
	jp p,0f9fah		;6873
	ei			;6876
	ld sp,hl		;6877
	ret m			;6878
	rst 30h			;6879
	jp m,0f7f8h		;687a
	ret m			;687d
	call m,0f2fdh		;687e
	defb 0fdh,0fch,0fbh ;illegal sequence	;6881
	jp m,0fafah		;6884
	call m,0f3f9h		;6887
	ret m			;688a
	rst 30h			;688b
	nop			;688c
	nop			;688d
	inc b			;688e
	ld b,0edh		;688f
	nop			;6891
	nop			;6892
	nop			;6893
	nop			;6894
	nop			;6895
	ret p			;6896
	xor 0efh		;6897
	rst 28h			;6899
	ret p			;689a
	nop			;689b
	ret m			;689c
	rst 30h			;689d
	ret m			;689e
	jp m,0edfdh		;689f
	jp m,0faf8h		;68a2
	ret m			;68a5
	di			;68a6
	ret p			;68a7
	nop			;68a8
	nop			;68a9
	add hl,bc		;68aa
	ld a,(bc)		;68ab
	nop			;68ac
	nop			;68ad
	nop			;68ae
	nop			;68af
	nop			;68b0
	xor 0efh		;68b1
	rst 28h			;68b3
	ret p			;68b4
	nop			;68b5
	nop			;68b6
	nop			;68b7
	nop			;68b8
	nop			;68b9
	xor 0f7h		;68ba
	ret m			;68bc
	ret m			;68bd
	defb 0fdh,0f0h,000h ;illegal sequence	;68be
	nop			;68c1
	nop			;68c2
	nop			;68c3
	pop af			;68c4
	rst 30h			;68c5
	jp m,0fcf8h		;68c6
	defb 0fdh,000h,000h ;illegal sequence	;68c9
	nop			;68cc
	ex de,hl		;68cd
	jp p,0fafbh		;68ce
	call m,0ecfdh		;68d1
	nop			;68d4
	nop			;68d5
	nop			;68d6
	ex de,hl		;68d7
	jp p,0fcfbh		;68d8
	call m,0edf3h		;68db
	nop			;68de
	nop			;68df
	nop			;68e0
	nop			;68e1
	call p,0faf2h		;68e2
	ret m			;68e5
	ld sp,hl		;68e6
	xor 000h		;68e7
	nop			;68e9
	nop			;68ea
	nop			;68eb
	nop			;68ec
	pop af			;68ed
	rst 30h			;68ee
	jp m,0f2f3h		;68ef
	nop			;68f2
	nop			;68f3
	xor 0efh		;68f4
	xor 0f7h		;68f6
	ei			;68f8
	ret m			;68f9
	ret m			;68fa
	ret m			;68fb
	xor 0efh		;68fc
	rst 30h			;68fe
	rst 30h			;68ff
	rst 30h			;6900
	jp m,0faf8h		;6901
	jp m,000f8h		;6904
	nop			;6907
	ld a,(bc)		;6908
	ld a,(bc)		;6909
	nop			;690a
	nop			;690b
	nop			;690c
	nop			;690d
	xor 0efh		;690e
	rst 28h			;6910
	ret p			;6911
	nop			;6912
	nop			;6913
	nop			;6914
	nop			;6915
	nop			;6916
	xor 0f7h		;6917
	ret m			;6919
	ret m			;691a
	defb 0fdh,0f0h,000h ;illegal sequence	;691b
	nop			;691e
	nop			;691f
	nop			;6920
	pop af			;6921
	rst 30h			;6922
	jp m,0fcf8h		;6923
	defb 0fdh,0edh,0edh ;illegal sequence	;6926
	nop			;6929
	ex de,hl		;692a
	jp p,0fcfbh		;692b
	call m,0ecfdh		;692e
	nop			;6931
	xor 0eeh		;6932
	rst 28h			;6934
	rst 30h			;6935
	jp m,0f8fah		;6936
	di			;6939
	ret p			;693a
	xor 0f1h		;693b
	rst 30h			;693d
	ret m			;693e
	ei			;693f
	jp m,0f8f8h		;6940
	ld sp,hl		;6943
	rst 30h			;6944
	ret m			;6945
	rst 30h			;6946
	ret m			;6947
	call m,0fafah		;6948
	ei			;694b
	call m,0f2f3h		;694c
	jp m,0faf8h		;694f
	ret m			;6952
	ld sp,hl		;6953
	rst 30h			;6954
	jp m,0f7f8h		;6955
	ret m			;6958
	jp m,0fafah		;6959
	jp m,0f2f3h		;695c
	jp m,0fafbh		;695f
	jp m,0f8fch		;6962
	jp m,0f7f8h		;6965
	ret m			;6968
	jp m,0fafah		;6969
	call m,000f9h		;696c
	nop			;696f
	add hl,bc		;6970
	rlca			;6971
	nop			;6972
	nop			;6973
	xor 0efh		;6974
	rst 28h			;6976
	ret p			;6977
	nop			;6978
	nop			;6979
	ex de,hl		;697a
	jp p,0f8fah		;697b
	di			;697e
	defb 0edh ;next byte illegal after ed	;697f
	xor 0efh		;6980
	rst 30h			;6982
	ei			;6983
	call m,0edf9h		;6984
	rst 30h			;6987
	ret m			;6988
	jp m,0f6fch		;6989
	call pe,0fa00h		;698c
	jp m,0f3f8h		;698f
	defb 0edh ;next byte illegal after ed	;6992
	nop			;6993
	nop			;6994
	ret m			;6995
	ld sp,hl		;6996
	ei			;6997
	ld sp,hl		;6998
	ret p			;6999
	xor 0efh		;699a
	call m,0f2fdh		;699c
	defb 0fdh,0f8h,0f7h ;illegal sequence	;699f
	jp m,0f3f9h		;69a2
	ret m			;69a5
	rst 30h			;69a6
	jp m,0f8f8h		;69a7
	ret m			;69aa
	ret m			;69ab
	ei			;69ac
	ei			;69ad
	jp m,0fafah		;69ae
	nop			;69b1
	nop			;69b2
	inc b			;69b3
	inc b			;69b4
	rst 28h			;69b5
	ret p			;69b6
	nop			;69b7
	nop			;69b8
	ret m			;69b9
	di			;69ba
	ret p			;69bb
	nop			;69bc
	jp m,0fdfch		;69bd
	defb 0edh ;next byte illegal after ed	;69c0
	call m,0f3f8h		;69c1
	ret p			;69c4
	call 0e0aah		;69c5
	xor d			;69c8
	di			;69c9
	xor d			;69ca
	ld b,0abh		;69cb
	inc de			;69cd
	xor e			;69ce
	jr nz,$-83		;69cf
	dec l			;69d1
	xor e			;69d2
	inc (hl)		;69d3
	xor e			;69d4
	dec sp			;69d5
	xor e			;69d6
	ld b,d			;69d7
	xor e			;69d8
	ld d,b			;69d9
	xor e			;69da
	ld d,a			;69db
	xor e			;69dc
	ld e,(hl)		;69dd
	xor e			;69de
	ld h,l			;69df
	xor e			;69e0
	ld c,c			;69e1
	xor e			;69e2
	ld c,b			;69e3
	xor d			;69e4
	ld c,a			;69e5
	xor d			;69e6
	ld d,(hl)		;69e7
	xor d			;69e8
	ld e,l			;69e9
	xor d			;69ea
	ld h,h			;69eb
	xor d			;69ec
	ld l,e			;69ed
	xor d			;69ee
	ld (hl),d		;69ef
	xor d			;69f0
	ld a,c			;69f1
	xor d			;69f2
	add a,b			;69f3
	xor d			;69f4
	add a,a			;69f5
	xor d			;69f6
	adc a,(hl)		;69f7
	xor d			;69f8
	sub l			;69f9
	xor d			;69fa
	sbc a,h			;69fb
	xor d			;69fc
	and e			;69fd
	xor d			;69fe
	xor d			;69ff
	xor d			;6a00
	or c			;6a01
	xor d			;6a02
	cp b			;6a03
	xor d			;6a04
	cp a			;6a05
	xor d			;6a06
	add a,0aah		;6a07
	ld a,d			;6a09
	xor e			;6a0a
	add a,c			;6a0b
	xor e			;6a0c
	adc a,b			;6a0d
	xor e			;6a0e
	adc a,a			;6a0f
	xor e			;6a10
	sub (hl)		;6a11
	xor e			;6a12
	sbc a,l			;6a13
	xor e			;6a14
	and h			;6a15
	xor e			;6a16
	xor e			;6a17
	xor e			;6a18
	ld (hl),e		;6a19
	xor e			;6a1a
	or d			;6a1b
	xor e			;6a1c
	cp c			;6a1d
	xor e			;6a1e
	ret nz			;6a1f
	xor e			;6a20
	rst 0			;6a21
	xor e			;6a22
	adc a,0abh		;6a23
	push de			;6a25
	xor e			;6a26
	call c,0e3abh		;6a27
	xor e			;6a2a
	jp pe,0f1abh		;6a2b
	xor e			;6a2e
	ret m			;6a2f
	xor e			;6a30
	rst 38h			;6a31
	xor e			;6a32
	ld b,0ach		;6a33
	dec c			;6a35
	xor h			;6a36
	inc d			;6a37
	xor h			;6a38
	dec de			;6a39
	xor h			;6a3a
	ld b,c			;6a3b
	xor d			;6a3c
	ld c,b			;6a3d
	xor d			;6a3e
	ld c,b			;6a3f
	xor d			;6a40
	ld bc,000d0h		;6a41
	nop			;6a44
	ld bc,003c5h		;6a45
	ld bc,00034h		;6a48
	nop			;6a4b
	djnz l6a8eh		;6a4c
	inc c			;6a4e
	ld bc,00038h		;6a4f
	nop			;6a52
	ld de,00f40h		;6a53
	ld bc,00034h		;6a56
	nop			;6a59
	ld (de),a		;6a5a
	ld b,b			;6a5b
	dec c			;6a5c
	ld bc,00038h		;6a5d
	nop			;6a60
	inc de			;6a61
	ld b,b			;6a62
	djnz l6a66h		;6a63
	inc (hl)		;6a65
l6a66h:
	nop			;6a66
	nop			;6a67
	inc d			;6a68
	ld b,b			;6a69
	ld c,001h		;6a6a
	jr c,l6a6eh		;6a6c
l6a6eh:
	nop			;6a6e
	dec d			;6a6f
	ld b,b			;6a70
	ld de,03401h		;6a71
	nop			;6a74
	nop			;6a75
	ld d,040h		;6a76
	ld a,(bc)		;6a78
	ld bc,00038h		;6a79
	nop			;6a7c
	rla			;6a7d
	ld b,b			;6a7e
	ld a,(bc)		;6a7f
	ld bc,00034h		;6a80
	nop			;6a83
	jr l6ac6h		;6a84
	ld a,(bc)		;6a86
	ld bc,00038h		;6a87
	nop			;6a8a
	add hl,de		;6a8b
	ld b,b			;6a8c
	ld a,(bc)		;6a8d
l6a8eh:
	ld bc,00034h		;6a8e
	nop			;6a91
	ld a,(de)		;6a92
	ld b,b			;6a93
	ld a,(bc)		;6a94
	ld bc,00038h		;6a95
	nop			;6a98
	dec de			;6a99
	ld b,b			;6a9a
	ld a,(bc)		;6a9b
	ld bc,00040h		;6a9c
	nop			;6a9f
	djnz l6ae2h		;6aa0
	inc c			;6aa2
	ld bc,00040h		;6aa3
	nop			;6aa6
	ld (de),a		;6aa7
	ld b,b			;6aa8
	dec c			;6aa9
	ld bc,00040h		;6aaa
	nop			;6aad
	inc d			;6aae
	ld b,b			;6aaf
	ld c,001h		;6ab0
	ld b,b			;6ab2
	nop			;6ab3
	nop			;6ab4
	ld d,040h		;6ab5
	ld (de),a		;6ab7
	ld bc,00040h		;6ab8
	nop			;6abb
	jr $+66			;6abc
	inc de			;6abe
	ld bc,00040h		;6abf
	nop			;6ac2
	ld a,(de)		;6ac3
	ld b,b			;6ac4
	inc d			;6ac5
l6ac6h:
	ld bc,0003ch		;6ac6
	nop			;6ac9
	dec (hl)		;6aca
	ld b,b			;6acb
	inc bc			;6acc
	inc bc			;6acd
	inc c			;6ace
	inc b			;6acf
	inc bc			;6ad0
	inc l			;6ad1
	ld b,b			;6ad2
	ld bc,00010h		;6ad3
	nop			;6ad6
	dec l			;6ad7
	ld b,b			;6ad8
	nop			;6ad9
	inc d			;6ada
	djnz l6addh		;6adb
l6addh:
	ld l,040h		;6add
	nop			;6adf
	inc bc			;6ae0
	nop			;6ae1
l6ae2h:
	inc b			;6ae2
	inc bc			;6ae3
	add hl,hl		;6ae4
	ld b,b			;6ae5
	ld bc,00004h		;6ae6
	nop			;6ae9
	ld hl,(00040h)		;6aea
	ex af,af'		;6aed
	djnz l6af0h		;6aee
l6af0h:
	dec hl			;6af0
	ld b,b			;6af1
	nop			;6af2
	inc bc			;6af3
	jr $+6			;6af4
	inc bc			;6af6
	cpl			;6af7
	ld b,b			;6af8
	ld bc,0001ch		;6af9
	nop			;6afc
	jr nc,l6b3fh		;6afd
	nop			;6aff
	jr nz,l6b12h		;6b00
	nop			;6b02
	ld sp,00040h		;6b03
	ld (bc),a		;6b06
	ex af,af'		;6b07
	nop			;6b08
	nop			;6b09
	ld b,040h		;6b0a
	nop			;6b0c
	inc c			;6b0d
	nop			;6b0e
	ld (bc),a		;6b0f
	ld b,040h		;6b10
l6b12h:
	ld bc,00002h		;6b12
	nop			;6b15
	nop			;6b16
	ld b,040h		;6b17
	nop			;6b19
	inc b			;6b1a
	nop			;6b1b
	ld (bc),a		;6b1c
	ld b,040h		;6b1d
	ld bc,01002h		;6b1f
	nop			;6b22
	nop			;6b23
	ld b,040h		;6b24
	nop			;6b26
	inc d			;6b27
	nop			;6b28
	ld (bc),a		;6b29
	ld b,040h		;6b2a
	ld bc,0dc01h		;6b2c
	nop			;6b2f
	nop			;6b30
	ld b,04ah		;6b31
	nop			;6b33
	ld bc,000e4h		;6b34
	nop			;6b37
	ld b,04ah		;6b38
	nop			;6b3a
	ld bc,000ech		;6b3b
	nop			;6b3e
l6b3fh:
	ld b,04ah		;6b3f
	nop			;6b41
	ld bc,000f4h		;6b42
	nop			;6b45
	ld b,04ah		;6b46
	nop			;6b48
	ld bc,00034h		;6b49
	nop			;6b4c
	ld d,040h		;6b4d
	nop			;6b4f
	ld bc,00024h		;6b50
	nop			;6b53
	add hl,sp		;6b54
	ld b,b			;6b55
	ld bc,02801h		;6b56
	nop			;6b59
	nop			;6b5a
	ld a,(00140h)		;6b5b
	ld bc,0002ch		;6b5e
	nop			;6b61
	dec sp			;6b62
	ld b,b			;6b63
	ld bc,03001h		;6b64
	nop			;6b67
	nop			;6b68
	inc a			;6b69
	ld b,b			;6b6a
	ld bc,02801h		;6b6b
	nop			;6b6e
	nop			;6b6f
	ld e,040h		;6b70
	ld (bc),a		;6b72
	ld bc,0002ch		;6b73
	nop			;6b76
	dec bc			;6b77
	ld b,b			;6b78
	ld (bc),a		;6b79
	ld bc,00044h		;6b7a
	nop			;6b7d
	ret z			;6b7e
	nop			;6b7f
	ld (bc),a		;6b80
	ld bc,00044h		;6b81
	nop			;6b84
	jp z,00200h		;6b85
	ld bc,00044h		;6b88
	nop			;6b8b
	call z,00200h		;6b8c
	ld bc,00044h		;6b8f
	nop			;6b92
	ld c,040h		;6b93
	ld (bc),a		;6b95
	ld bc,00048h		;6b96
	nop			;6b99
	ret			;6b9a
	nop			;6b9b
	ld (bc),a		;6b9c
	ld bc,00048h		;6b9d
	nop			;6ba0
	rlc b			;6ba1
	ld (bc),a		;6ba3
	ld bc,00048h		;6ba4
	nop			;6ba7
	call 00200h		;6ba8
	ld bc,00048h		;6bab
	nop			;6bae
	ld c,040h		;6baf
	ld (bc),a		;6bb1
	ld bc,00034h		;6bb2
	inc b			;6bb5
	add hl,hl		;6bb6
	ld b,b			;6bb7
	inc bc			;6bb8
	ld bc,00038h		;6bb9
	inc b			;6bbc
	ld hl,(00340h)		;6bbd
	ld bc,00434h		;6bc0
	inc b			;6bc3
	dec hl			;6bc4
	ld b,b			;6bc5
	inc bc			;6bc6
	ld bc,00438h		;6bc7
	inc b			;6bca
	inc l			;6bcb
	ld b,b			;6bcc
	inc bc			;6bcd
	ld bc,00434h		;6bce
	nop			;6bd1
	dec l			;6bd2
	ld b,b			;6bd3
	inc bc			;6bd4
	ld bc,00438h		;6bd5
	nop			;6bd8
	ld l,040h		;6bd9
	inc bc			;6bdb
	ld bc,00434h		;6bdc
	call m,0402fh		;6bdf
	inc bc			;6be2
	ld bc,00438h		;6be3
	call m,04030h		;6be6
	inc bc			;6be9
	ld bc,00034h		;6bea
	call m,04031h		;6bed
	inc bc			;6bf0
	ld bc,00038h		;6bf1
	call m,04032h		;6bf4
	inc bc			;6bf7
	ld bc,0fc34h		;6bf8
	call m,04033h		;6bfb
	inc bc			;6bfe
	ld bc,0fc38h		;6bff
	call m,04034h		;6c02
	inc bc			;6c05
	ld bc,0fc34h		;6c06
	nop			;6c09
	dec (hl)		;6c0a
	ld b,b			;6c0b
	inc bc			;6c0c
	ld bc,0fc38h		;6c0d
	nop			;6c10
	ld (hl),040h		;6c11
	inc bc			;6c13
	ld bc,0fc34h		;6c14
	inc b			;6c17
	scf			;6c18
	ld b,b			;6c19
	inc bc			;6c1a
	ld bc,0fc38h		;6c1b
	inc b			;6c1e
	jr c,l6c61h		;6c1f
	inc bc			;6c21
	ld l,d			;6c22
	xor h			;6c23
	ld (hl),c		;6c24
	xor h			;6c25
	ld a,b			;6c26
	xor h			;6c27
	ld a,a			;6c28
	xor h			;6c29
	add a,(hl)		;6c2a
	xor h			;6c2b
	adc a,l			;6c2c
	xor h			;6c2d
	sub h			;6c2e
	xor h			;6c2f
	sbc a,e			;6c30
	xor h			;6c31
	and d			;6c32
	xor h			;6c33
	xor c			;6c34
	xor h			;6c35
	or a			;6c36
	xor h			;6c37
	cp (hl)			;6c38
	xor h			;6c39
	push bc			;6c3a
	xor h			;6c3b
	call z,0d3ach		;6c3c
	xor h			;6c3f
	jp c,0e1ach		;6c40
	xor h			;6c43
	ret pe			;6c44
	xor h			;6c45
	rst 28h			;6c46
	xor h			;6c47
	or 0ach			;6c48
	defb 0fdh,0ach ;xor iyh	;6c4a
	inc b			;6c4c
	xor l			;6c4d
	dec bc			;6c4e
	xor l			;6c4f
	ld (de),a		;6c50
	xor l			;6c51
	daa			;6c52
	xor l			;6c53
	ld l,0adh		;6c54
	add hl,de		;6c56
	xor l			;6c57
	jr nz,$-81		;6c58
	dec (hl)		;6c5a
	xor l			;6c5b
	inc a			;6c5c
	xor l			;6c5d
	ld b,e			;6c5e
	xor l			;6c5f
	ld c,d			;6c60
l6c61h:
	xor l			;6c61
	ld e,a			;6c62
	xor l			;6c63
	ld h,(hl)		;6c64
	xor l			;6c65
	ld d,c			;6c66
	xor l			;6c67
	ld e,b			;6c68
	xor l			;6c69
	ld bc,00000h		;6c6a
	nop			;6c6d
	ld e,h			;6c6e
	ld e,l			;6c6f
	inc bc			;6c70
	ld bc,00000h		;6c71
	nop			;6c74
	ld l,(hl)		;6c75
	ld l,a			;6c76
	inc bc			;6c77
	ld bc,00000h		;6c78
	nop			;6c7b
	and (hl)		;6c7c
	and a			;6c7d
	inc bc			;6c7e
	ld bc,00000h		;6c7f
	nop			;6c82
	ld d,h			;6c83
	ld d,l			;6c84
	inc bc			;6c85
	ld bc,00008h		;6c86
	nop			;6c89
	ld d,h			;6c8a
	ld d,l			;6c8b
	inc bc			;6c8c
	ld bc,00010h		;6c8d
	nop			;6c90
	ld d,h			;6c91
	ld d,l			;6c92
	inc bc			;6c93
	ld bc,00000h		;6c94
	nop			;6c97
	ld d,b			;6c98
	ld d,c			;6c99
	inc bc			;6c9a
	ld bc,00000h		;6c9b
	nop			;6c9e
	ld d,d			;6c9f
	ld d,e			;6ca0
	inc bc			;6ca1
	ld bc,00000h		;6ca2
	nop			;6ca5
	add a,b			;6ca6
	add a,c			;6ca7
	inc bc			;6ca8
	ld bc,00000h		;6ca9
	nop			;6cac
	and b			;6cad
	and c			;6cae
	inc bc			;6caf
	ld bc,00000h		;6cb0
	nop			;6cb3
	dec bc			;6cb4
	inc c			;6cb5
	inc bc			;6cb6
	ld bc,00000h		;6cb7
	nop			;6cba
	ld h,h			;6cbb
	ld h,l			;6cbc
	inc bc			;6cbd
	ld bc,00000h		;6cbe
	nop			;6cc1
	ld (hl),h		;6cc2
	ld (hl),l		;6cc3
	inc bc			;6cc4
	ld bc,00000h		;6cc5
	nop			;6cc8
	sub h			;6cc9
	sub l			;6cca
	inc bc			;6ccb
	ld bc,00000h		;6ccc
	nop			;6ccf
	ld e,d			;6cd0
	ld e,e			;6cd1
	inc bc			;6cd2
	ld bc,00000h		;6cd3
	nop			;6cd6
	and d			;6cd7
	and e			;6cd8
	inc bc			;6cd9
	ld bc,00008h		;6cda
	nop			;6cdd
	ld a,b			;6cde
	ld a,c			;6cdf
	inc bc			;6ce0
	ld bc,00000h		;6ce1
	nop			;6ce4
	halt			;6ce5
	ld (hl),a		;6ce6
	inc bc			;6ce7
	ld bc,00018h		;6ce8
	nop			;6ceb
	ld a,b			;6cec
	ld a,c			;6ced
	inc bc			;6cee
	ld bc,00020h		;6cef
	nop			;6cf2
	halt			;6cf3
	ld (hl),a		;6cf4
	inc bc			;6cf5
	ld bc,00010h		;6cf6
	nop			;6cf9
	ld a,d			;6cfa
	ld a,e			;6cfb
	inc bc			;6cfc
	ld bc,00020h		;6cfd
	nop			;6d00
	xor (hl)		;6d01
	xor a			;6d02
	inc bc			;6d03
	ld bc,00028h		;6d04
	nop			;6d07
	or b			;6d08
	or c			;6d09
	inc bc			;6d0a
	ld bc,00030h		;6d0b
	nop			;6d0e
	or b			;6d0f
	or c			;6d10
	inc bc			;6d11
	ld bc,00038h		;6d12
	nop			;6d15
	xor (hl)		;6d16
	xor a			;6d17
	inc bc			;6d18
	ld bc,00000h		;6d19
	nop			;6d1c
	xor d			;6d1d
	xor e			;6d1e
	inc bc			;6d1f
	ld bc,00008h		;6d20
	nop			;6d23
	xor d			;6d24
	xor e			;6d25
	inc bc			;6d26
	ld bc,00010h		;6d27
	nop			;6d2a
	xor h			;6d2b
	xor l			;6d2c
	inc bc			;6d2d
	ld bc,00018h		;6d2e
	nop			;6d31
	xor h			;6d32
	xor l			;6d33
	inc bc			;6d34
	ld bc,00060h		;6d35
	nop			;6d38
	or (hl)			;6d39
	or a			;6d3a
	inc bc			;6d3b
	ld bc,00068h		;6d3c
	nop			;6d3f
	cp b			;6d40
	cp c			;6d41
	inc bc			;6d42
	ld bc,00070h		;6d43
	nop			;6d46
	cp b			;6d47
	cp c			;6d48
	inc bc			;6d49
	ld bc,00078h		;6d4a
	nop			;6d4d
	or (hl)			;6d4e
	or a			;6d4f
	inc bc			;6d50
	ld bc,00040h		;6d51
	nop			;6d54
	or d			;6d55
	or e			;6d56
	inc bc			;6d57
	ld bc,00048h		;6d58
	nop			;6d5b
	or d			;6d5c
	or e			;6d5d
	inc bc			;6d5e
	ld bc,00050h		;6d5f
	nop			;6d62
	or h			;6d63
	or l			;6d64
	inc bc			;6d65
	ld bc,00058h		;6d66
	nop			;6d69
	or h			;6d6a
	or l			;6d6b
	inc bc			;6d6c
	inc d			;6d6d
	xor (hl)		;6d6e
	daa			;6d6f
	xor (hl)		;6d70
	ld l,0aeh		;6d71
	dec (hl)		;6d73
	xor (hl)		;6d74
	inc a			;6d75
	xor (hl)		;6d76
	ld b,e			;6d77
	xor (hl)		;6d78
	ret m			;6d79
	xor l			;6d7a
	rst 38h			;6d7b
	xor l			;6d7c
	ld b,0aeh		;6d7d
	dec c			;6d7f
	xor (hl)		;6d80
	pop af			;6d81
	xor l			;6d82
	ex (sp),hl		;6d83
	xor l			;6d84
	jp pe,027adh		;6d85
	xor (hl)		;6d88
	sbc a,b			;6d89
	xor l			;6d8a
	or c			;6d8b
	xor l			;6d8c
	jp z,091adh		;6d8d
	xor l			;6d90
	ld bc,00000h		;6d91
	nop			;6d94
	ld d,b			;6d95
	ld d,c			;6d96
	inc bc			;6d97
	inc b			;6d98
	nop			;6d99
	nop			;6d9a
	nop			;6d9b
	nop			;6d9c
	nop			;6d9d
	inc bc			;6d9e
	nop			;6d9f
	nop			;6da0
	nop			;6da1
	nop			;6da2
	nop			;6da3
	inc bc			;6da4
	nop			;6da5
	nop			;6da6
	nop			;6da7
	nop			;6da8
	nop			;6da9
	inc bc			;6daa
	nop			;6dab
	nop			;6dac
	nop			;6dad
	nop			;6dae
	nop			;6daf
	inc bc			;6db0
	inc b			;6db1
	nop			;6db2
	nop			;6db3
	nop			;6db4
	nop			;6db5
	nop			;6db6
	inc bc			;6db7
	ex af,af'		;6db8
	jr $+34			;6db9
	ld b,04ah		;6dbb
	inc bc			;6dbd
	nop			;6dbe
	nop			;6dbf
	nop			;6dc0
	nop			;6dc1
	nop			;6dc2
	inc bc			;6dc3
	ex af,af'		;6dc4
	jr l6dffh		;6dc5
	ld b,04ah		;6dc7
	inc bc			;6dc9
	inc b			;6dca
	nop			;6dcb
	jr l6deeh		;6dcc
	ld b,04ah		;6dce
	inc bc			;6dd0
	ex af,af'		;6dd1
	jr z,l6df4h		;6dd2
	ld b,04ah		;6dd4
	inc bc			;6dd6
	nop			;6dd7
	jr l6e12h		;6dd8
	ld b,04ah		;6dda
	inc bc			;6ddc
	ex af,af'		;6ddd
	jr z,$+58		;6dde
	ld b,04ah		;6de0
l6de2h:
	inc bc			;6de2
	ld bc,00000h		;6de3
	nop			;6de6
l6de7h:
	cp a			;6de7
	ret nz			;6de8
	inc bc			;6de9
	ld bc,00008h		;6dea
	nop			;6ded
l6deeh:
	cp a			;6dee
	ret nz			;6def
	inc bc			;6df0
	ld bc,00000h		;6df1
l6df4h:
	nop			;6df4
	scf			;6df5
	jr c,l6dfbh		;6df6
	ld bc,00000h		;6df8
l6dfbh:
	nop			;6dfb
	sub (hl)		;6dfc
	sub a			;6dfd
	inc bc			;6dfe
l6dffh:
	ld bc,00008h		;6dff
	nop			;6e02
	sub (hl)		;6e03
	sub a			;6e04
	inc bc			;6e05
	ld bc,00010h		;6e06
	nop			;6e09
	sub (hl)		;6e0a
	sub a			;6e0b
	inc bc			;6e0c
	ld bc,00018h		;6e0d
	nop			;6e10
	sub (hl)		;6e11
l6e12h:
	sub a			;6e12
	inc bc			;6e13
	inc bc			;6e14
	ex af,af'		;6e15
	nop			;6e16
	ld b,060h		;6e17
	ld h,c			;6e19
	inc bc			;6e1a
	nop			;6e1b
	djnz l6e1eh		;6e1c
l6e1eh:
	ld e,(hl)		;6e1e
	ld e,a			;6e1f
	inc bc			;6e20
	ex af,af'		;6e21
	jr nz,l6e2ah		;6e22
	ld h,b			;6e24
	ld h,c			;6e25
	inc bc			;6e26
	ld bc,01100h		;6e27
l6e2ah:
	ex af,af'		;6e2a
	sbc a,d			;6e2b
	sbc a,e			;6e2c
	inc bc			;6e2d
	ld bc,00e08h		;6e2e
	djnz $-88		;6e31
	and a			;6e33
	inc bc			;6e34
	ld bc,00c10h		;6e35
	jr $-56			;6e38
	rst 0			;6e3a
	inc bc			;6e3b
	ld bc,00e18h		;6e3c
	jr nz,l6de7h		;6e3f
	and a			;6e41
	inc bc			;6e42
	ld bc,01120h		;6e43
	jr z,l6de2h		;6e46
	sbc a,e			;6e48
	inc bc			;6e49
	ld (hl),a		;6e4a
	xor (hl)		;6e4b
	ld l,d			;6e4c
	xor (hl)		;6e4d
	adc a,e			;6e4e
	xor (hl)		;6e4f
	xor d			;6e50
	xor (hl)		;6e51
	or a			;6e52
	xor (hl)		;6e53
	call nz,084aeh		;6e54
	xor (hl)		;6e57
	pop de			;6e58
	xor (hl)		;6e59
	ret c			;6e5a
	xor (hl)		;6e5b
	rst 18h			;6e5c
	xor (hl)		;6e5d
	and 0aeh		;6e5e
	di			;6e60
	xor (hl)		;6e61
	daa			;6e62
	xor a			;6e63
	ld a,(de)		;6e64
	xor a			;6e65
	dec c			;6e66
	xor a			;6e67
	nop			;6e68
	xor a			;6e69
	ld (bc),a		;6e6a
	nop			;6e6b
	nop			;6e6c
	nop			;6e6d
	ld (hl),b		;6e6e
	ld (hl),c		;6e6f
	inc bc			;6e70
	ex af,af'		;6e71
	djnz l6e74h		;6e72
l6e74h:
	ld (hl),d		;6e74
	ld (hl),e		;6e75
	inc bc			;6e76
	ld (bc),a		;6e77
	djnz l6e7ah		;6e78
l6e7ah:
	nop			;6e7a
	ld (hl),b		;6e7b
	ld (hl),c		;6e7c
	inc bc			;6e7d
	jr $+18			;6e7e
	nop			;6e80
	ld (hl),d		;6e81
	ld (hl),e		;6e82
	inc bc			;6e83
	ld bc,00000h		;6e84
	nop			;6e87
	cp d			;6e88
	cp e			;6e89
	inc bc			;6e8a
	dec b			;6e8b
	nop			;6e8c
	nop			;6e8d
	nop			;6e8e
	ld e,04ch		;6e8f
	inc bc			;6e91
	nop			;6e92
	nop			;6e93
	jr nz,$+56		;6e94
	ld c,h			;6e96
	inc bc			;6e97
	inc b			;6e98
	ex af,af'		;6e99
	djnz l6eb9h		;6e9a
	ld c,h			;6e9c
	inc bc			;6e9d
	ex af,af'		;6e9e
	djnz l6ea1h		;6e9f
l6ea1h:
	inc e			;6ea1
	ld c,h			;6ea2
	inc bc			;6ea3
	ex af,af'		;6ea4
	djnz l6ec7h		;6ea5
	inc e			;6ea7
	ld c,h			;6ea8
	inc bc			;6ea9
	ld (bc),a		;6eaa
	nop			;6eab
	nop			;6eac
	nop			;6ead
	add a,d			;6eae
	add a,e			;6eaf
	inc bc			;6eb0
	ex af,af'		;6eb1
	djnz l6eb4h		;6eb2
l6eb4h:
	add a,h			;6eb4
	add a,l			;6eb5
	inc bc			;6eb6
	ld (bc),a		;6eb7
	nop			;6eb8
l6eb9h:
	nop			;6eb9
	nop			;6eba
	ccf			;6ebb
	ld b,b			;6ebc
	inc bc			;6ebd
	ex af,af'		;6ebe
	nop			;6ebf
	djnz l6f01h		;6ec0
	ld b,b			;6ec2
	inc bc			;6ec3
	ld (bc),a		;6ec4
	djnz l6ec7h		;6ec5
l6ec7h:
	nop			;6ec7
	ld b,c			;6ec8
	ld b,d			;6ec9
	inc bc			;6eca
	jr l6ecdh		;6ecb
l6ecdh:
	djnz l6f10h		;6ecd
	ld b,d			;6ecf
	inc bc			;6ed0
	ld bc,00000h		;6ed1
	nop			;6ed4
	dec bc			;6ed5
	ld c,h			;6ed6
	inc bc			;6ed7
	ld bc,00000h		;6ed8
	nop			;6edb
	add a,(hl)		;6edc
	add a,a			;6edd
	inc bc			;6ede
	ld bc,00008h		;6edf
	nop			;6ee2
	adc a,b			;6ee3
	adc a,c			;6ee4
	inc bc			;6ee5
	ld (bc),a		;6ee6
	nop			;6ee7
	ret nz			;6ee8
	nop			;6ee9
	nop			;6eea
	ld b,b			;6eeb
	inc bc			;6eec
	nop			;6eed
	ret nz			;6eee
	nop			;6eef
	nop			;6ef0
	ld b,b			;6ef1
	inc bc			;6ef2
	ld (bc),a		;6ef3
	ld b,b			;6ef4
	rrca			;6ef5
	add hl,de		;6ef6
	dec b			;6ef7
	ld c,b			;6ef8
	inc bc			;6ef9
	jr z,l6f1bh		;6efa
	add hl,de		;6efc
	dec b			;6efd
	ld c,b			;6efe
	inc bc			;6eff
	ld (bc),a		;6f00
l6f01h:
	nop			;6f01
	ld (de),a		;6f02
	jr nz,$+7		;6f03
	ld c,b			;6f05
	inc bc			;6f06
	ex af,af'		;6f07
	ld (00516h),hl		;6f08
	ld c,b			;6f0b
	inc bc			;6f0c
	ld (bc),a		;6f0d
	djnz l6f23h		;6f0e
l6f10h:
	jr nz,$+7		;6f10
	ld c,b			;6f12
	inc bc			;6f13
	jr l6f39h		;6f14
	ld d,005h		;6f16
	ld c,b			;6f18
	inc bc			;6f19
	ld (bc),a		;6f1a
l6f1bh:
	jr nz,l6f2ch		;6f1b
	add hl,de		;6f1d
	dec b			;6f1e
	ld c,b			;6f1f
	inc bc			;6f20
	jr z,l6f42h		;6f21
l6f23h:
	add hl,de		;6f23
	dec b			;6f24
	ld c,b			;6f25
	inc bc			;6f26
	ld (bc),a		;6f27
	jr nc,l6f39h		;6f28
	jr $+7			;6f2a
l6f2ch:
	ld c,b			;6f2c
	inc bc			;6f2d
l6f2eh:
	jr c,l6f4fh		;6f2e
	jr l6f37h		;6f30
	ld c,b			;6f32
	inc bc			;6f33
	ld d,c			;6f34
	xor a			;6f35
	ld e,b			;6f36
l6f37h:
	xor a			;6f37
	ld e,a			;6f38
l6f39h:
	xor a			;6f39
	ld h,(hl)		;6f3a
	xor a			;6f3b
	ld a,0afh		;6f3c
	inc bc			;6f3e
	nop			;6f3f
	nop			;6f40
	nop			;6f41
l6f42h:
	adc a,h			;6f42
	adc a,l			;6f43
	inc bc			;6f44
	ex af,af'		;6f45
	djnz $+12		;6f46
	adc a,(hl)		;6f48
	adc a,a			;6f49
	inc bc			;6f4a
	nop			;6f4b
	jr nz,l6f4eh		;6f4c
l6f4eh:
	adc a,h			;6f4e
l6f4fh:
	adc a,l			;6f4f
	inc bc			;6f50
	ld bc,00000h		;6f51
	nop			;6f54
	cp h			;6f55
	cp l			;6f56
	inc bc			;6f57
	ld bc,00000h		;6f58
	nop			;6f5b
	adc a,d			;6f5c
	adc a,e			;6f5d
	inc bc			;6f5e
	ld bc,00000h		;6f5f
	nop			;6f62
	sub b			;6f63
	sub c			;6f64
	inc bc			;6f65
	ld bc,00008h		;6f66
	nop			;6f69
	dec a			;6f6a
	ld a,003h		;6f6b
	defb 0edh ;next byte illegal after ed	;6f6d
	xor a			;6f6e
	call p,0fbafh		;6f6f
	xor a			;6f72
	ld (bc),a		;6f73
	or b			;6f74
	add a,l			;6f75
	xor a			;6f76
	sub d			;6f77
	xor a			;6f78
	sbc a,a			;6f79
	xor a			;6f7a
	xor h			;6f7b
	xor a			;6f7c
	cp c			;6f7d
	xor a			;6f7e
	add a,0afh		;6f7f
	out (0afh),a		;6f81
	ret po			;6f83
	xor a			;6f84
	ld (bc),a		;6f85
	nop			;6f86
	ret nz			;6f87
	nop			;6f88
	nop			;6f89
	ld b,b			;6f8a
	ld bc,0c000h		;6f8b
	nop			;6f8e
	nop			;6f8f
	ld b,b			;6f90
	ld bc,00002h		;6f91
	nop			;6f94
	nop			;6f95
	rlca			;6f96
	ld c,(hl)		;6f97
	ld bc,l6000h		;6f98
	nop			;6f9b
	rlca			;6f9c
	ld c,(hl)		;6f9d
	ld bc,00802h		;6f9e
	nop			;6fa1
	nop			;6fa2
	rlca			;6fa3
	ld c,(hl)		;6fa4
	ld bc,l6008h		;6fa5
	nop			;6fa8
	rlca			;6fa9
	ld c,(hl)		;6faa
	ld bc,01002h		;6fab
	nop			;6fae
	nop			;6faf
	rlca			;6fb0
	ld c,(hl)		;6fb1
	ld bc,l6010h		;6fb2
	nop			;6fb5
	rlca			;6fb6
	ld c,(hl)		;6fb7
	ld bc,00002h		;6fb8
	ret nz			;6fbb
	nop			;6fbc
	nop			;6fbd
	ld b,b			;6fbe
	ld bc,0c000h		;6fbf
	nop			;6fc2
	nop			;6fc3
	ld b,b			;6fc4
l6fc5h:
	ld bc,00002h		;6fc5
	nop			;6fc8
	nop			;6fc9
	rlca			;6fca
	ld c,(hl)		;6fcb
	ld bc,05000h		;6fcc
	nop			;6fcf
	rlca			;6fd0
	ld c,(hl)		;6fd1
	ld bc,00802h		;6fd2
	nop			;6fd5
	nop			;6fd6
	rlca			;6fd7
	ld c,(hl)		;6fd8
	ld bc,05008h		;6fd9
	nop			;6fdc
	rlca			;6fdd
	ld c,(hl)		;6fde
	ld bc,01002h		;6fdf
	nop			;6fe2
	nop			;6fe3
	rlca			;6fe4
	ld c,(hl)		;6fe5
	ld bc,05010h		;6fe6
	nop			;6fe9
	rlca			;6fea
	ld c,(hl)		;6feb
	ld bc,00001h		;6fec
	nop			;6fef
	nop			;6ff0
	inc h			;6ff1
	ld b,b			;6ff2
	inc bc			;6ff3
	ld bc,00004h		;6ff4
	nop			;6ff7
	inc h			;6ff8
	ld b,b			;6ff9
	inc bc			;6ffa
	ld bc,00008h		;6ffb
	nop			;6ffe
	inc h			;6fff
	ld b,b			;7000
	inc bc			;7001
	ld bc,0000ch		;7002
	nop			;7005
	inc h			;7006
	ld b,b			;7007
	inc bc			;7008
	inc e			;7009
	or b			;700a
	inc hl			;700b
	or b			;700c
	ld hl,(031b0h)		;700d
	or b			;7010
	dec d			;7011
	or b			;7012
	jr c,l6fc5h		;7013
	ld bc,00000h		;7015
	nop			;7018
	and h			;7019
	and l			;701a
	inc bc			;701b
	ld bc,00000h		;701c
	nop			;701f
	ld h,(hl)		;7020
	ld h,a			;7021
	inc bc			;7022
	ld bc,00008h		;7023
	nop			;7026
	ld l,b			;7027
	ld l,c			;7028
	inc bc			;7029
	ld bc,00010h		;702a
	nop			;702d
	ld l,d			;702e
	ld l,e			;702f
	inc bc			;7030
	ld bc,00018h		;7031
	nop			;7034
	ld l,h			;7035
	ld l,l			;7036
	inc bc			;7037
	ld bc,0fe00h		;7038
	nop			;703b
	rlca			;703c
	ld c,e			;703d
	inc bc			;703e
	ld d,a			;703f
	or b			;7040
	ld e,(hl)		;7041
	or b			;7042
	ld h,l			;7043
	or b			;7044
	ld l,h			;7045
	or b			;7046
	ld (hl),e		;7047
	or b			;7048
	ld a,d			;7049
	or b			;704a
	add a,c			;704b
	or b			;704c
	adc a,b			;704d
	or b			;704e
	adc a,a			;704f
	or b			;7050
	sub (hl)		;7051
	or b			;7052
	sbc a,l			;7053
	or b			;7054
	and h			;7055
	or b			;7056
	ld bc,00000h		;7057
	nop			;705a
	ld b,04ah		;705b
	inc bc			;705d
	ld bc,00008h		;705e
	nop			;7061
	ld b,04ah		;7062
	inc bc			;7064
	ld bc,00010h		;7065
	nop			;7068
	ld b,04ah		;7069
	inc bc			;706b
	ld bc,00018h		;706c
	nop			;706f
	ld b,04ah		;7070
	inc bc			;7072
	ld bc,00020h		;7073
	nop			;7076
	ld b,04ah		;7077
	inc bc			;7079
	ld bc,00028h		;707a
	nop			;707d
	ld b,04ah		;707e
	inc bc			;7080
	ld bc,00030h		;7081
	nop			;7084
	ld b,04ah		;7085
	inc bc			;7087
	ld bc,00038h		;7088
	nop			;708b
	ld b,04ah		;708c
	inc bc			;708e
	ld bc,00040h		;708f
	nop			;7092
	ld b,04ah		;7093
	inc bc			;7095
	ld bc,00048h		;7096
	nop			;7099
	ld b,04ah		;709a
	inc bc			;709c
	ld bc,00050h		;709d
	nop			;70a0
	ld b,04ah		;70a1
	inc bc			;70a3
	ld bc,00058h		;70a4
	nop			;70a7
	ld b,04ah		;70a8
	inc bc			;70aa
	push hl			;70ab
	or b			;70ac
	call pe,sub_71b0h	;70ad
	or c			;70b0
	ld a,b			;70b1
	or c			;70b2
	ld a,b			;70b3
	or c			;70b4
	ld a,b			;70b5
	or c			;70b6
	ld a,b			;70b7
	or c			;70b8
	ld a,a			;70b9
	or c			;70ba
	add a,(hl)		;70bb
	or c			;70bc
	adc a,l			;70bd
	or c			;70be
	sub h			;70bf
	or c			;70c0
	di			;70c1
	or b			;70c2
	jp m,001b0h		;70c3
	or c			;70c6
	ex af,af'		;70c7
	or c			;70c8
	rrca			;70c9
	or c			;70ca
	ld d,0b1h		;70cb
	dec e			;70cd
	or c			;70ce
	inc h			;70cf
	or c			;70d0
	dec hl			;70d1
	or c			;70d2
	ld (039b1h),a		;70d3
	or c			;70d6
	ld b,b			;70d7
	or c			;70d8
	ld b,a			;70d9
	or c			;70da
	ld c,(hl)		;70db
	or c			;70dc
	ld d,l			;70dd
	or c			;70de
	ld e,h			;70df
	or c			;70e0
	ld h,e			;70e1
	or c			;70e2
	ld l,d			;70e3
	or c			;70e4
	ld bc,00000h		;70e5
	nop			;70e8
	sbc a,b			;70e9
	sbc a,c			;70ea
	inc bc			;70eb
	ld bc,00008h		;70ec
	nop			;70ef
	sbc a,d			;70f0
	sbc a,e			;70f1
	inc bc			;70f2
	ld bc,00004h		;70f3
	nop			;70f6
	ld bc,003c5h		;70f7
	ld bc,0000ch		;70fa
	nop			;70fd
	ld bc,003c5h		;70fe
	ld bc,00014h		;7101
	nop			;7104
	ld bc,003c5h		;7105
	ld bc,0001ch		;7108
	nop			;710b
	ld bc,003c5h		;710c
	ld bc,00024h		;710f
	nop			;7112
	ld bc,003c5h		;7113
	ld bc,0002ch		;7116
	nop			;7119
	ld bc,003c5h		;711a
	ld bc,00034h		;711d
	nop			;7120
	ld bc,003c5h		;7121
	ld bc,0003ch		;7124
	nop			;7127
	ld bc,003c5h		;7128
	ld bc,00044h		;712b
	nop			;712e
	ld bc,003c5h		;712f
	ld bc,0004ch		;7132
	nop			;7135
	ld bc,003c5h		;7136
	ld bc,00054h		;7139
	nop			;713c
	ld bc,003c5h		;713d
	ld bc,0005ch		;7140
	nop			;7143
	ld bc,003c5h		;7144
	ld bc,00064h		;7147
	nop			;714a
	ld bc,003c5h		;714b
	ld bc,0006ch		;714e
	nop			;7151
	ld bc,003c5h		;7152
	ld bc,00074h		;7155
	nop			;7158
	ld bc,003c5h		;7159
	ld bc,0007ch		;715c
	nop			;715f
	ld bc,003c5h		;7160
	ld bc,00084h		;7163
	nop			;7166
	ld bc,003c5h		;7167
	ld bc,00000h		;716a
	nop			;716d
	pop bc			;716e
	push bc			;716f
	inc bc			;7170
	ld bc,00000h		;7171
	nop			;7174
	sub d			;7175
	sub e			;7176
	inc bc			;7177
	ld bc,00000h		;7178
	nop			;717b
	ld e,c			;717c
	nop			;717d
	inc bc			;717e
	ld bc,00000h		;717f
	nop			;7182
	sbc a,(hl)		;7183
	sbc a,a			;7184
	inc bc			;7185
	ld bc,00008h		;7186
	nop			;7189
	sbc a,(hl)		;718a
	sbc a,a			;718b
	inc bc			;718c
	ld bc,00000h		;718d
	nop			;7190
	sbc a,h			;7191
	sbc a,l			;7192
	inc bc			;7193
	ld bc,00008h		;7194
	nop			;7197
	ld d,(hl)		;7198
	ld d,a			;7199
	inc bc			;719a
	cp l			;719b
	or c			;719c
	call nz,0d1b1h		;719d
	or c			;71a0
	sbc a,0b1h		;71a1
	ex de,hl		;71a3
	or c			;71a4
	ret m			;71a5
	or c			;71a6
	dec b			;71a7
	or d			;71a8
	ld (de),a		;71a9
	or d			;71aa
	rra			;71ab
	or d			;71ac
	inc l			;71ad
	or d			;71ae
	add hl,sp		;71af
sub_71b0h:
	or d			;71b0
	ld b,(hl)		;71b1
	or d			;71b2
	ld e,c			;71b3
	or d			;71b4
	ld l,h			;71b5
	or d			;71b6
	ld a,c			;71b7
	or d			;71b8
	add a,(hl)		;71b9
	or d			;71ba
	sub e			;71bb
	or d			;71bc
	ld bc,00000h		;71bd
	nop			;71c0
	xor b			;71c1
	xor c			;71c2
	inc bc			;71c3
	ld (bc),a		;71c4
	nop			;71c5
	nop			;71c6
	nop			;71c7
	add hl,bc		;71c8
	ld c,005h		;71c9
	nop			;71cb
	ret nz			;71cc
	nop			;71cd
	nop			;71ce
	nop			;71cf
	dec b			;71d0
	ld (bc),a		;71d1
	ex af,af'		;71d2
	nop			;71d3
	nop			;71d4
	add hl,bc		;71d5
	ld c,005h		;71d6
	nop			;71d8
	ret nz			;71d9
	nop			;71da
	nop			;71db
	nop			;71dc
	dec b			;71dd
	ld (bc),a		;71de
	djnz l71e1h		;71df
l71e1h:
	nop			;71e1
	add hl,bc		;71e2
	ld c,005h		;71e3
	nop			;71e5
	ret nz			;71e6
	nop			;71e7
	nop			;71e8
	nop			;71e9
	dec b			;71ea
	ld (bc),a		;71eb
	jr l71eeh		;71ec
l71eeh:
	nop			;71ee
	add hl,bc		;71ef
	ld c,005h		;71f0
	nop			;71f2
	ret nz			;71f3
	nop			;71f4
	nop			;71f5
	nop			;71f6
	dec b			;71f7
	ld (bc),a		;71f8
	jr nz,l71fbh		;71f9
l71fbh:
	nop			;71fb
	add hl,bc		;71fc
	ld c,005h		;71fd
	nop			;71ff
	ret nz			;7200
	nop			;7201
	nop			;7202
	nop			;7203
	dec b			;7204
	ld (bc),a		;7205
	jr z,l7208h		;7206
l7208h:
	nop			;7208
	add hl,bc		;7209
	ld c,005h		;720a
	jr c,$+18		;720c
	nop			;720e
	add hl,bc		;720f
	ld c,005h		;7210
	ld (bc),a		;7212
	jr nc,l7215h		;7213
l7215h:
	nop			;7215
	add hl,bc		;7216
	ld c,005h		;7217
	jr c,l7223h		;7219
	nop			;721b
	add hl,bc		;721c
	ld c,005h		;721d
	ld (bc),a		;721f
	jr nc,l7222h		;7220
l7222h:
	nop			;7222
l7223h:
	add hl,bc		;7223
	ld c,005h		;7224
	jr c,l7238h		;7226
	nop			;7228
	add hl,bc		;7229
	ld c,005h		;722a
	ld (bc),a		;722c
	nop			;722d
	nop			;722e
	nop			;722f
	daa			;7230
	nop			;7231
	inc bc			;7232
	inc b			;7233
	djnz l7236h		;7234
l7236h:
	jr z,l7238h		;7236
l7238h:
	inc bc			;7238
	ld (bc),a		;7239
	nop			;723a
	nop			;723b
	nop			;723c
	ld b,e			;723d
	nop			;723e
	inc bc			;723f
	inc b			;7240
	djnz l7243h		;7241
l7243h:
	ld b,h			;7243
	nop			;7244
	inc bc			;7245
	inc bc			;7246
	nop			;7247
	rlca			;7248
	jr c,l724dh		;7249
	nop			;724b
	inc bc			;724c
l724dh:
	inc b			;724d
	rla			;724e
	jr c,l7253h		;724f
	nop			;7251
	inc bc			;7252
l7253h:
	ex af,af'		;7253
	daa			;7254
	jr nc,l7259h		;7255
	nop			;7257
	inc bc			;7258
l7259h:
	inc bc			;7259
	inc c			;725a
	nop			;725b
	jr c,l72b6h		;725c
	nop			;725e
	inc bc			;725f
	djnz l7272h		;7260
	jr c,l7266h		;7262
	nop			;7264
	inc bc			;7265
l7266h:
	inc d			;7266
	jr nz,$+58		;7267
	ld (bc),a		;7269
	nop			;726a
l726bh:
	inc bc			;726b
	ld (bc),a		;726c
	nop			;726d
	nop			;726e
	nop			;726f
	nop			;7270
	nop			;7271
l7272h:
	inc bc			;7272
	nop			;7273
	nop			;7274
	nop			;7275
	nop			;7276
	nop			;7277
	inc bc			;7278
	ld (bc),a		;7279
	nop			;727a
	jr l727dh		;727b
l727dh:
	rlca			;727d
	ld c,(hl)		;727e
	inc bc			;727f
	nop			;7280
	ld d,b			;7281
	nop			;7282
	rlca			;7283
	ld c,(hl)		;7284
	inc bc			;7285
	ld (bc),a		;7286
	ex af,af'		;7287
	jr l728ah		;7288
l728ah:
	rlca			;728a
	ld c,(hl)		;728b
	inc bc			;728c
	ex af,af'		;728d
	ld d,b			;728e
	nop			;728f
	rlca			;7290
	ld c,(hl)		;7291
	inc bc			;7292
	ld (bc),a		;7293
	djnz l72aeh		;7294
	nop			;7296
	rlca			;7297
	ld c,(hl)		;7298
	inc bc			;7299
	djnz $+82		;729a
	nop			;729c
	rlca			;729d
	ld c,(hl)		;729e
	inc bc			;729f
	jp pe,0f1b2h		;72a0
	or d			;72a3
	ret m			;72a4
	or d			;72a5
	ld b,0b3h		;72a6
	dec c			;72a8
	or e			;72a9
	inc d			;72aa
	or e			;72ab
	dec de			;72ac
	or e			;72ad
l72aeh:
	ld (029b3h),hl		;72ae
	or e			;72b1
	add hl,hl		;72b2
	or e			;72b3
	rst 38h			;72b4
	or d			;72b5
l72b6h:
	jr nc,l726bh		;72b6
	scf			;72b8
	or e			;72b9
	ld a,0b3h		;72ba
	ld b,l			;72bc
	or e			;72bd
	ld c,h			;72be
	or e			;72bf
	ld d,e			;72c0
	or e			;72c1
	ld e,d			;72c2
	or e			;72c3
	ld h,c			;72c4
	or e			;72c5
	ld l,b			;72c6
	or e			;72c7
	ld l,a			;72c8
	or e			;72c9
	halt			;72ca
	or e			;72cb
	ld a,l			;72cc
	or e			;72cd
	add a,h			;72ce
	or e			;72cf
	sub a			;72d0
	or e			;72d1
	xor d			;72d2
	or e			;72d3
	cp l			;72d4
	or e			;72d5
	ret nc			;72d6
	or e			;72d7
	rst 10h			;72d8
	or e			;72d9
	sbc a,0b3h		;72da
	push hl			;72dc
	or e			;72dd
	call pe,0f3b3h		;72de
	or e			;72e1
	jp m,001b3h		;72e2
	or h			;72e5
	ex af,af'		;72e6
	or h			;72e7
	rrca			;72e8
	or h			;72e9
	ld bc,00000h		;72ea
	nop			;72ed
	ld c,000h		;72ee
	inc b			;72f0
	ld bc,00000h		;72f1
	nop			;72f4
	rlca			;72f5
	inc c			;72f6
	inc b			;72f7
	ld bc,00000h		;72f8
	nop			;72fb
	rlca			;72fc
	inc c			;72fd
	inc b			;72fe
	ld bc,00000h		;72ff
	nop			;7302
	inc c			;7303
	ld c,003h		;7304
	ld bc,00000h		;7306
	nop			;7309
	rlca			;730a
	ld c,003h		;730b
	ld bc,00008h		;730d
	nop			;7310
	rlca			;7311
	ld c,003h		;7312
	ld bc,00010h		;7314
	nop			;7317
	ld c,00eh		;7318
	inc bc			;731a
	ld bc,00000h		;731b
	nop			;731e
	ld (00400h),hl		;731f
	ld bc,00000h		;7322
	nop			;7325
	ld (00400h),hl		;7326
	ld bc,00000h		;7329
	nop			;732c
	ld h,d			;732d
	nop			;732e
	inc b			;732f
	ld bc,00000h		;7330
	nop			;7333
	rra			;7334
	nop			;7335
	inc b			;7336
	ld bc,0000ch		;7337
	nop			;733a
	jr nz,l733dh		;733b
l733dh:
	inc b			;733d
	ld bc,00008h		;733e
	nop			;7341
	ld hl,00400h		;7342
	ld bc,00004h		;7345
	nop			;7348
	jr nz,l734bh		;7349
l734bh:
	inc b			;734b
	ld bc,00000h		;734c
	nop			;734f
	rra			;7350
	nop			;7351
	inc b			;7352
	ld bc,0000ch		;7353
	nop			;7356
	jr nz,l7359h		;7357
l7359h:
	inc b			;7359
	ld bc,00008h		;735a
	nop			;735d
	ld hl,00400h		;735e
	ld bc,00004h		;7361
	nop			;7364
	ld (00400h),hl		;7365
	ld bc,00000h		;7368
	nop			;736b
	ld b,04ah		;736c
	inc b			;736e
	ld bc,00008h		;736f
	nop			;7372
	ld b,04ah		;7373
	inc b			;7375
	ld bc,00010h		;7376
	nop			;7379
	ld b,04ah		;737a
	inc b			;737c
	ld bc,00018h		;737d
	nop			;7380
	ld b,04ah		;7381
	inc b			;7383
	inc bc			;7384
	nop			;7385
	nop			;7386
	nop			;7387
	ld b,000h		;7388
	inc b			;738a
	nop			;738b
	nop			;738c
	nop			;738d
	ld b,000h		;738e
	inc b			;7390
	nop			;7391
	nop			;7392
	nop			;7393
	ld b,000h		;7394
	inc b			;7396
	inc bc			;7397
	nop			;7398
	nop			;7399
	nop			;739a
	ld b,000h		;739b
	inc b			;739d
	nop			;739e
	nop			;739f
	nop			;73a0
	ld b,000h		;73a1
	inc b			;73a3
	nop			;73a4
	nop			;73a5
	nop			;73a6
	ld b,000h		;73a7
	inc b			;73a9
	inc bc			;73aa
	nop			;73ab
	nop			;73ac
	nop			;73ad
	ld b,000h		;73ae
	inc b			;73b0
	nop			;73b1
	nop			;73b2
	nop			;73b3
	ld b,000h		;73b4
	inc b			;73b6
	nop			;73b7
	nop			;73b8
	nop			;73b9
	ld b,000h		;73ba
	inc b			;73bc
	inc bc			;73bd
	nop			;73be
	nop			;73bf
	nop			;73c0
	ld b,000h		;73c1
	inc b			;73c3
	nop			;73c4
	nop			;73c5
	nop			;73c6
	ld b,000h		;73c7
	inc b			;73c9
	nop			;73ca
	nop			;73cb
	nop			;73cc
	ld b,000h		;73cd
	inc b			;73cf
	ld bc,00000h		;73d0
	nop			;73d3
	inc hl			;73d4
	nop			;73d5
	inc bc			;73d6
	ld bc,00000h		;73d7
	nop			;73da
	dec c			;73db
	ld c,(hl)		;73dc
	inc bc			;73dd
	ld bc,00000h		;73de
	nop			;73e1
	cp (hl)			;73e2
	nop			;73e3
	inc b			;73e4
	ld bc,00000h		;73e5
	nop			;73e8
	ld b,04ah		;73e9
	inc bc			;73eb
	ld bc,00008h		;73ec
	nop			;73ef
	ld b,04ah		;73f0
	inc bc			;73f2
	ld bc,00010h		;73f3
	nop			;73f6
	ld b,04ah		;73f7
	inc bc			;73f9
	ld bc,00000h		;73fa
	nop			;73fd
	dec h			;73fe
	nop			;73ff
	inc bc			;7400
	ld bc,00004h		;7401
	nop			;7404
	dec h			;7405
	nop			;7406
	inc bc			;7407
	ld bc,00008h		;7408
	nop			;740b
	dec h			;740c
	nop			;740d
	inc bc			;740e
	ld bc,0000ch		;740f
	nop			;7412
	dec h			;7413
	nop			;7414
	inc bc			;7415
	nop			;7416
	nop			;7417
	ld de,0000eh		;7418
	nop			;741b
	nop			;741c
	nop			;741d
	nop			;741e
	dec bc			;741f
	ld bc,04a48h		;7420
	ld c,c			;7423
	inc b			;7424
	nop			;7425
	nop			;7426
	nop			;7427
	nop			;7428
	nop			;7429
	nop			;742a
	nop			;742b
	inc bc			;742c
	ld c,e			;742d
	ld c,h			;742e
	ld c,l			;742f
	ld c,(hl)		;7430
	ld c,a			;7431
	ld d,b			;7432
	dec b			;7433
	nop			;7434
	nop			;7435
	nop			;7436
	nop			;7437
	nop			;7438
	ld (bc),a		;7439
	ld d,c			;743a
	ld d,d			;743b
	ld d,e			;743c
	ld d,h			;743d
	ld d,l			;743e
	ld d,(hl)		;743f
	ld d,a			;7440
	ld e,b			;7441
	rlca			;7442
	nop			;7443
	nop			;7444
	nop			;7445
	ld b,059h		;7446
	ld e,d			;7448
	ld e,e			;7449
	ld e,h			;744a
	ld e,l			;744b
	ld e,(hl)		;744c
	ld e,a			;744d
	ld h,b			;744e
	ld h,c			;744f
	ld h,d			;7450
	nop			;7451
	nop			;7452
	add hl,bc		;7453
	ld h,e			;7454
	ld h,h			;7455
	ld h,l			;7456
	ld h,(hl)		;7457
	ld h,a			;7458
	ld l,b			;7459
	ld l,c			;745a
	ld l,d			;745b
	ld l,e			;745c
	ld l,h			;745d
	ld l,l			;745e
	ex af,af'		;745f
	nop			;7460
	ld a,(bc)		;7461
	ld l,(hl)		;7462
	ld l,a			;7463
	ld (hl),b		;7464
	ld (hl),c		;7465
	ld (hl),d		;7466
	ld (hl),e		;7467
	ld (hl),h		;7468
	ld (hl),l		;7469
	halt			;746a
	ld (hl),a		;746b
	ld a,b			;746c
	ld a,c			;746d
	nop			;746e
	nop			;746f
	nop			;7470
	inc d			;7471
	ld (de),a		;7472
	inc de			;7473
	ld a,e			;7474
	ld a,h			;7475
	ld a,l			;7476
	sub h			;7477
	sub l			;7478
	sub (hl)		;7479
	sub a			;747a
	sbc a,b			;747b
	nop			;747c
	nop			;747d
	nop			;747e
	nop			;747f
	nop			;7480
	nop			;7481
	inc (hl)		;7482
	dec (hl)		;7483
	ld (hl),037h		;7484
	jr c,l74c1h		;7486
	ld a,(0003bh)		;7488
	nop			;748b
	nop			;748c
	rlca			;748d
	xor c			;748e
	ld l,l			;748f
	ld b,b			;7490
	ld b,c			;7491
	ld b,d			;7492
	ld b,e			;7493
	ld b,h			;7494
	ld b,l			;7495
	ld b,(hl)		;7496
	ld b,a			;7497
	nop			;7498
	ld c,b			;7499
	ld c,c			;749a
	ld c,d			;749b
	ld c,e			;749c
	ld c,h			;749d
	ld c,l			;749e
	ld c,(hl)		;749f
	ld c,a			;74a0
	sub h			;74a1
	sub l			;74a2
	sub (hl)		;74a3
	sub a			;74a4
	sbc a,b			;74a5
	nop			;74a6
	nop			;74a7
	inc d			;74a8
	ld (de),a		;74a9
	inc de			;74aa
	ld d,c			;74ab
	ld d,d			;74ac
	dec (hl)		;74ad
	ld (hl),037h		;74ae
	jr c,l74ebh		;74b0
	ld a,(0003bh)		;74b2
	nop			;74b5
	nop			;74b6
	nop			;74b7
	nop			;74b8
	inc bc			;74b9
	ld d,l			;74ba
	ld d,(hl)		;74bb
	ld d,a			;74bc
	ld b,e			;74bd
	ld b,h			;74be
	ld b,l			;74bf
	ld b,(hl)		;74c0
l74c1h:
	ld b,a			;74c1
	nop			;74c2
	nop			;74c3
	rlca			;74c4
	xor c			;74c5
	ld l,l			;74c6
	ld e,c			;74c7
	ld e,d			;74c8
	ld c,a			;74c9
	sub h			;74ca
	sub l			;74cb
	sub (hl)		;74cc
	ld e,e			;74cd
	ld e,h			;74ce
	rrca			;74cf
	ld c,b			;74d0
	ld c,c			;74d1
	ld c,d			;74d2
	ld e,l			;74d3
	ld e,(hl)		;74d4
	ld d,d			;74d5
	dec (hl)		;74d6
	ld (hl),037h		;74d7
	jr c,l7514h		;74d9
	ld e,a			;74db
	ld h,b			;74dc
	inc b			;74dd
	nop			;74de
	inc d			;74df
	ld (de),a		;74e0
	inc de			;74e1
	ld h,d			;74e2
	ld h,e			;74e3
	ld h,h			;74e4
	ld h,l			;74e5
	ld b,e			;74e6
	ld h,(hl)		;74e7
	ld h,a			;74e8
	ld l,b			;74e9
	dec b			;74ea
l74ebh:
	nop			;74eb
	nop			;74ec
	nop			;74ed
	nop			;74ee
	nop			;74ef
	jp l7978h		;74f0
	ld a,d			;74f3
	ld a,e			;74f4
	ld a,h			;74f5
	ld a,l			;74f6
	ld (bc),a		;74f7
	ld bc,00000h		;74f8
	add a,d			;74fb
	xor c			;74fc
	cp a			;74fd
	xor e			;74fe
	add a,e			;74ff
	add a,h			;7500
	sub a			;7501
	sbc a,d			;7502
	rlca			;7503
	nop			;7504
	nop			;7505
	nop			;7506
	nop			;7507
	nop			;7508
	nop			;7509
	inc b			;750a
	rrca			;750b
	add a,l			;750c
	add a,(hl)		;750d
	add a,a			;750e
	adc a,b			;750f
	adc a,c			;7510
	adc a,d			;7511
	adc a,e			;7512
	sub b			;7513
l7514h:
	adc a,h			;7514
	adc a,l			;7515
	ex af,af'		;7516
	dec b			;7517
	nop			;7518
	nop			;7519
	nop			;751a
	sbc a,e			;751b
	and e			;751c
	and h			;751d
	sbc a,b			;751e
	sub (hl)		;751f
	adc a,(hl)		;7520
	adc a,a			;7521
	sub b			;7522
	adc a,d			;7523
	adc a,c			;7524
	adc a,d			;7525
	adc a,e			;7526
	adc a,l			;7527
	ex af,af'		;7528
	inc b			;7529
	sbc a,(hl)		;752a
	sbc a,a			;752b
	and b			;752c
	and l			;752d
	sbc a,l			;752e
	and c			;752f
	sbc a,c			;7530
	push bc			;7531
	sub h			;7532
	sub e			;7533
	sub d			;7534
	sub d			;7535
	sub c			;7536
	sub l			;7537
	ld b,09bh		;7538
	sbc a,h			;753a
	sbc a,l			;753b
	sbc a,h			;753c
	and d			;753d
	nop			;753e
	nop			;753f
	nop			;7540
	nop			;7541
	nop			;7542
	nop			;7543
	nop			;7544
	nop			;7545
	nop			;7546
	nop			;7547
	nop			;7548
	nop			;7549
	inc b			;754a
	ld c,000h		;754b
	jr nz,l7570h		;754d
	ld (00010h),hl		;754f
	nop			;7552
	nop			;7553
	rla			;7554
	inc hl			;7555
	inc h			;7556
	djnz l7559h		;7557
l7559h:
	nop			;7559
	dec h			;755a
	ld h,011h		;755b
	inc d			;755d
	daa			;755e
	ld (05a55h),hl		;755f
	jr z,l7576h		;7562
	ccf			;7564
	add hl,hl		;7565
	ld h,l			;7566
	ld l,h			;7567
	ld l,l			;7568
	ld hl,(02c19h)		;7569
	ld h,(hl)		;756c
	dec c			;756d
	rra			;756e
	ccf			;756f
l7570h:
	dec hl			;7570
	dec l			;7571
	nop			;7572
	rla			;7573
	ld l,06ch		;7574
l7576h:
	nop			;7576
	ld c,b			;7577
	inc a			;7578
	ld b,a			;7579
	nop			;757a
	nop			;757b
	nop			;757c
	nop			;757d
	nop			;757e
	ld b,l			;757f
	cpl			;7580
	ld d,a			;7581
	dec de			;7582
	nop			;7583
	nop			;7584
	nop			;7585
	inc b			;7586
	ld c,013h		;7587
	ld b,e			;7589
	dec l			;758a
	nop			;758b
	nop			;758c
	nop			;758d
	nop			;758e
	inc de			;758f
	inc l			;7590
	inc hl			;7591
	inc e			;7592
	nop			;7593
	nop			;7594
	nop			;7595
	jr nc,l75b7h		;7596
	ld b,l			;7598
	ld sp,00c32h		;7599
	ld h,a			;759c
	inc sp			;759d
	ld b,a			;759e
	ld (de),a		;759f
	dec a			;75a0
	ld l,b			;75a1
	ld c,d			;75a2
	ld l,a			;75a3
	ld b,(hl)		;75a4
	inc h			;75a5
	inc l			;75a6
	ld h,(hl)		;75a7
	ld c,l			;75a8
	ld a,03fh		;75a9
	dec hl			;75ab
	dec l			;75ac
	nop			;75ad
	jr nz,$+48		;75ae
	ld l,h			;75b0
	inc (hl)		;75b1
	nop			;75b2
	ccf			;75b3
	ld b,a			;75b4
	nop			;75b5
	nop			;75b6
l75b7h:
	nop			;75b7
	nop			;75b8
	nop			;75b9
	ld b,l			;75ba
	cpl			;75bb
	ld h,01bh		;75bc
	nop			;75be
	nop			;75bf
	nop			;75c0
	nop			;75c1
	inc b			;75c2
	ld c,043h		;75c3
	dec l			;75c5
	nop			;75c6
	nop			;75c7
	nop			;75c8
	nop			;75c9
	nop			;75ca
	inc de			;75cb
	ld a,(de)		;75cc
	djnz l75cfh		;75cd
l75cfh:
	nop			;75cf
	nop			;75d0
	nop			;75d1
	rra			;75d2
	ld b,l			;75d3
	ld sp,00b32h		;75d4
	dec (hl)		;75d7
	ld c,(hl)		;75d8
	ld c,c			;75d9
	ld a,029h		;75da
	ld h,l			;75dc
	ld hl,l6f2eh		;75dd
	inc h			;75e0
	inc l			;75e1
	ld h,(hl)		;75e2
	ld c,l			;75e3
	inc a			;75e4
	ld d,b			;75e5
	ld l,l			;75e6
	dec l			;75e7
	nop			;75e8
	jr nz,l7619h		;75e9
	ld e,(hl)		;75eb
	ld h,b			;75ec
	ld c,d			;75ed
	ccf			;75ee
	ld b,a			;75ef
	nop			;75f0
	nop			;75f1
	nop			;75f2
	nop			;75f3
	nop			;75f4
	ld b,l			;75f5
	cpl			;75f6
	ld h,01bh		;75f7
	nop			;75f9
	nop			;75fa
	nop			;75fb
	nop			;75fc
	nop			;75fd
	inc b			;75fe
	ld c,02ah		;75ff
	nop			;7601
	nop			;7602
	nop			;7603
	nop			;7604
	nop			;7605
	rla			;7606
	inc hl			;7607
	inc e			;7608
	nop			;7609
	nop			;760a
	nop			;760b
	nop			;760c
	nop			;760d
	ld c,b			;760e
	ld b,(hl)		;760f
	ld d,(hl)		;7610
	dec bc			;7611
	ld (hl),037h		;7612
	jr z,l7628h		;7614
	dec a			;7616
	ld b,d			;7617
	inc e			;7618
l7619h:
	add hl,de		;7619
	ld b,c			;761a
	ld l,h			;761b
	ld a,(03f52h)		;761c
	inc a			;761f
	jr z,$+111		;7620
	dec l			;7622
	nop			;7623
	jr nz,$+100		;7624
	ld h,e			;7626
	ld h,h			;7627
l7628h:
	ld e,l			;7628
	ld l,038h		;7629
	nop			;762b
	nop			;762c
	nop			;762d
	nop			;762e
	nop			;762f
	ld b,l			;7630
	cpl			;7631
	ld h,01bh		;7632
	nop			;7634
	nop			;7635
	jr l7653h		;7636
	nop			;7638
	nop			;7639
	inc b			;763a
	ld c,015h		;763b
	nop			;763d
	nop			;763e
	nop			;763f
	inc de			;7640
	ld b,e			;7641
	ld c,d			;7642
	ld (00010h),hl		;7643
	nop			;7646
	nop			;7647
	nop			;7648
	nop			;7649
	add hl,sp		;764a
	ld l,(hl)		;764b
	ld c,043h		;764c
	ld d,d			;764e
	rra			;764f
	nop			;7650
	inc d			;7651
	ld e,a			;7652
l7653h:
	ld hl,(02c09h)		;7653
	ld l,h			;7656
	ld l,a			;7657
	ld d,e			;7658
	ld l,c			;7659
	ld a,051h		;765a
	ld l,l			;765c
	inc h			;765d
	inc l			;765e
	ld c,(hl)		;765f
	ld c,c			;7660
	ld a,(bc)		;7661
	inc a			;7662
	ld (hl),d		;7663
	ld b,h			;7664
	ld l,03bh		;7665
	nop			;7667
	nop			;7668
	nop			;7669
	nop			;766a
	ccf			;766b
	ld b,a			;766c
	dec de			;766d
	nop			;766e
	nop			;766f
	nop			;7670
	nop			;7671
	jr $+29			;7672
	nop			;7674
	nop			;7675
	inc b			;7676
	ld c,000h		;7677
	nop			;7679
	nop			;767a
	inc de			;767b
	ld b,e			;767c
	ld c,d			;767d
	ld (00010h),hl		;767e
	nop			;7681
	nop			;7682
	nop			;7683
	nop			;7684
	nop			;7685
	dec hl			;7686
	ld (05243h),hl		;7687
	rra			;768a
	nop			;768b
	inc d			;768c
	ld c,h			;768d
	ld hl,(0410fh)		;768e
	ld l,h			;7691
	ld l,a			;7692
	ld c,a			;7693
	ld c,e			;7694
	dec c			;7695
	ld (hl),b		;7696
	ld l,(hl)		;7697
	inc e			;7698
	add hl,de		;7699
	ld b,c			;769a
	ld e,h			;769b
	ld d,a			;769c
	inc a			;769d
	ld l,d			;769e
	ld h,l			;769f
	ld hl,01b6ch		;76a0
	nop			;76a3
	nop			;76a4
	dec e			;76a5
	dec a			;76a6
	inc a			;76a7
	dec sp			;76a8
	nop			;76a9
	nop			;76aa
	nop			;76ab
	nop			;76ac
	nop			;76ad
	ld de,00000h		;76ae
	nop			;76b1
	inc b			;76b2
	ld c,000h		;76b3
	nop			;76b5
	inc de			;76b6
	ld b,e			;76b7
	ld c,d			;76b8
	ld (00010h),hl		;76b9
	nop			;76bc
	nop			;76bd
	nop			;76be
l76bfh:
	nop			;76bf
	nop			;76c0
	nop			;76c1
	ld (05243h),hl		;76c2
	rra			;76c5
	nop			;76c6
	inc d			;76c7
	daa			;76c8
	ld hl,(04119h)		;76c9
	ld l,h			;76cc
	ld l,a			;76cd
	ld c,a			;76ce
	inc (hl)		;76cf
	dec c			;76d0
	ld (hl),b		;76d1
	ld l,(hl)		;76d2
	inc e			;76d3
	nop			;76d4
	rla			;76d5
	ld h,a			;76d6
	ld l,e			;76d7
	inc a			;76d8
	ld (hl),d		;76d9
	ld b,h			;76da
	inc hl			;76db
	ld b,e			;76dc
	ld l,h			;76dd
	nop			;76de
	nop			;76df
	dec e			;76e0
	dec a			;76e1
	cpl			;76e2
	jr z,l76fbh		;76e3
	nop			;76e5
	nop			;76e6
	nop			;76e7
	jr l76fch		;76e8
	rra			;76ea
	nop			;76eb
	nop			;76ec
	nop			;76ed
	inc b			;76ee
	ld c,000h		;76ef
	ld e,02eh		;76f1
	ld c,d			;76f3
	ld (00010h),hl		;76f4
	nop			;76f7
	nop			;76f8
	nop			;76f9
	nop			;76fa
l76fbh:
	nop			;76fb
l76fch:
	nop			;76fc
	nop			;76fd
	ld e,b			;76fe
	ld b,b			;76ff
	dec de			;7700
	nop			;7701
	inc d			;7702
	daa			;7703
	ld hl,(0410fh)		;7704
	ld l,h			;7707
	ld l,a			;7708
	ld c,a			;7709
	ld h,l			;770a
	ld l,h			;770b
	ld e,c			;770c
	ld sp,0001ch		;770d
	inc de			;7710
	dec h			;7711
	ld (hl),c		;7712
	inc a			;7713
	ld l,d			;7714
	ld d,h			;7715
	djnz l7718h		;7716
l7718h:
	jr nz,l7748h		;7718
	nop			;771a
	jr l775ah		;771b
	cpl			;771d
	ld c,c			;771e
	ld d,000h		;771f
	nop			;7721
	nop			;7722
	dec e			;7723
	add hl,hl		;7724
	cpl			;7725
	ld h,01bh		;7726
	nop			;7728
	ld bc,00503h		;7729
	djnz l76bfh		;772c
	sub d			;772e
	sub e			;772f
	ld a,a			;7730
	dec c			;7731
	jr nc,l7765h		;7732
	ld (00e33h),a		;7734
	inc a			;7737
	dec a			;7738
	ld a,03fh		;7739
	nop			;773b
	ld bc,00503h		;773c
	ld de,09c99h		;773f
	sbc a,e			;7742
	ld a,a			;7743
	nop			;7744
	nop			;7745
	add a,080h		;7746
l7748h:
	ld a,a			;7748
	ld b,072h		;7749
	ld l,d			;774b
	ld l,e			;774c
	ccf			;774d
	nop			;774e
	inc bc			;774f
	inc bc			;7750
	inc bc			;7751
	push bc			;7752
	sbc a,(hl)		;7753
	sbc a,l			;7754
	add a,07eh		;7755
	ld a,l			;7757
	rst 0			;7758
	ld a,e			;7759
l775ah:
	ld l,h			;775a
	nop			;775b
	ld bc,00503h		;775c
	ld de,09a99h		;775f
	sbc a,e			;7762
	ld a,a			;7763
	nop			;7764
l7765h:
	nop			;7765
	nop			;7766
	nop			;7767
	add hl,bc		;7768
	ld b,072h		;7769
	halt			;776b
	ld (hl),a		;776c
	ccf			;776d
	nop			;776e
	nop			;776f
	inc bc			;7770
	ld b,010h		;7771
	sub c			;7773
	sub d			;7774
	sub e			;7775
	ld h,c			;7776
	ld d,c			;7777
	dec c			;7778
	jr nc,l77ach		;7779
	ld (05453h),a		;777b
	ld c,03ch		;777e
	dec a			;7780
	ld a,058h		;7781
	ld e,c			;7783
	nop			;7784
	nop			;7785
	inc bc			;7786
	ld b,011h		;7787
	sbc a,c			;7789
	sbc a,h			;778a
	sbc a,e			;778b
	ld h,c			;778c
	ld h,d			;778d
	nop			;778e
	nop			;778f
	add a,080h		;7790
	ld a,h			;7792
	ld a,d			;7793
	ld b,072h		;7794
	ld l,d			;7796
	ld l,e			;7797
	ld e,b			;7798
	ld l,(hl)		;7799
	nop			;779a
	ld (bc),a		;779b
	inc bc			;779c
	inc b			;779d
	push bc			;779e
	sbc a,(hl)		;779f
	sbc a,l			;77a0
	ld d,c			;77a1
	add a,07eh		;77a2
	ld a,l			;77a4
	ld a,c			;77a5
	rst 0			;77a6
	ld a,e			;77a7
	ld a,b			;77a8
	ld e,c			;77a9
	nop			;77aa
	nop			;77ab
l77ach:
	inc bc			;77ac
	ld b,010h		;77ad
	sub c			;77af
	sub d			;77b0
	sub e			;77b1
	ld h,c			;77b2
	ld h,d			;77b3
	inc bc			;77b4
	ld (hl),e		;77b5
	ld (hl),h		;77b6
	ld (hl),l		;77b7
	halt			;77b8
	ld (hl),a		;77b9
	ld a,(hl)		;77ba
	ld a,a			;77bb
	add a,b			;77bc
	add a,c			;77bd
	xor d			;77be
	xor e			;77bf
	nop			;77c0
	nop			;77c1
	inc bc			;77c2
	ld b,011h		;77c3
	sbc a,c			;77c5
	sbc a,h			;77c6
	sbc a,e			;77c7
	ld h,c			;77c8
	ld h,d			;77c9
	nop			;77ca
	nop			;77cb
	add a,0c8h		;77cc
	and a			;77ce
	call nz,0c0bch		;77cf
	cp (hl)			;77d2
	xor b			;77d3
	xor d			;77d4
	xor e			;77d5
	nop			;77d6
	ld (bc),a		;77d7
	inc bc			;77d8
	inc b			;77d9
	push bc			;77da
	sbc a,(hl)		;77db
	sbc a,l			;77dc
	ld h,d			;77dd
	add a,0c8h		;77de
	ret			;77e0
	and (hl)		;77e1
	rst 0			;77e2
	pop bc			;77e3
	jp nz,000abh		;77e4
	ld (bc),a		;77e7
	inc bc			;77e8
	inc b			;77e9
	ret z			;77ea
	pop bc			;77eb
	jp nz,0b551h		;77ec
	or e			;77ef
	cp e			;77f0
	cp b			;77f1
	jp z,0adb7h		;77f2
	ld e,c			;77f5
	nop			;77f6
	ld (bc),a		;77f7
	inc bc			;77f8
	inc b			;77f9
	ret z			;77fa
	jp 051c4h		;77fb
	call z,0b5b4h		;77fe
	cp b			;7801
	call 0aeb9h		;7802
	ld e,c			;7805
	nop			;7806
	nop			;7807
	inc bc			;7808
	ld b,011h		;7809
	sbc a,c			;780b
	ld (hl),c		;780c
	sbc a,e			;780d
	ld h,c			;780e
	ld d,c			;780f
	nop			;7810
	nop			;7811
	call z,0bab6h		;7812
	or c			;7815
	ld b,072h		;7816
	xor h			;7818
	ld (hl),e		;7819
	ld e,b			;781a
	ld e,c			;781b
	nop			;781c
	inc bc			;781d
	inc bc			;781e
	inc b			;781f
	ret z			;7820
	pop bc			;7821
	jp nz,0cc7bh		;7822
	or e			;7825
	cp e			;7826
	inc (hl)		;7827
	call 0adb7h		;7828
	ld b,b			;782b
	nop			;782c
	inc bc			;782d
	inc bc			;782e
	inc b			;782f
	ret			;7830
	jp 07bc4h		;7831
	res 6,h			;7834
	or l			;7836
	inc (hl)		;7837
	jp z,0aeb9h		;7838
	ld b,b			;783b
	nop			;783c
	ld (bc),a		;783d
	inc bc			;783e
	inc b			;783f
	ret z			;7840
	pop bc			;7841
	jp nz,0cb62h		;7842
	or e			;7845
	cp e			;7846
	or d			;7847
	jp z,0adb7h		;7848
	xor e			;784b
	nop			;784c
	ld (bc),a		;784d
	inc bc			;784e
	inc b			;784f
	ret			;7850
	jp l62c4h		;7851
	call z,0cbb4h		;7854
	cp b			;7857
	call 0aeb9h		;7858
	xor e			;785b
	nop			;785c
	ld bc,00603h		;785d
	ld de,l7e99h		;7860
	sbc a,e			;7863
	ld a,a			;7864
	ld a,e			;7865
	nop			;7866
	nop			;7867
	call z,0b0b6h		;7868
	inc (hl)		;786b
	ld b,072h		;786c
	xor h			;786e
	ld (hl),h		;786f
	ccf			;7870
	ld b,b			;7871
	nop			;7872
	nop			;7873
	inc bc			;7874
	ld b,011h		;7875
	sbc a,c			;7877
	ld (hl),c		;7878
	sbc a,e			;7879
	ld d,b			;787a
	ld h,d			;787b
	nop			;787c
	nop			;787d
	call z,0bab6h		;787e
	or c			;7881
	cp h			;7882
	ret nz			;7883
	xor h			;7884
	xor b			;7885
	xor d			;7886
	xor e			;7887
	nop			;7888
	nop			;7889
	inc bc			;788a
	ld b,011h		;788b
	sbc a,c			;788d
	sbc a,d			;788e
	sbc a,e			;788f
	ld d,b			;7890
	ld d,c			;7891
	nop			;7892
	nop			;7893
	nop			;7894
	nop			;7895
	ex af,af'		;7896
	ld (hl),l		;7897
	ld b,072h		;7898
	halt			;789a
	ld (hl),e		;789b
	ld e,b			;789c
	ld l,(hl)		;789d
	nop			;789e
	nop			;789f
	inc bc			;78a0
	ld b,011h		;78a1
	sbc a,c			;78a3
	sbc a,d			;78a4
	sbc a,e			;78a5
	ld d,b			;78a6
	ld h,d			;78a7
	nop			;78a8
	nop			;78a9
	nop			;78aa
	nop			;78ab
	nop			;78ac
	jp 0c0bch		;78ad
	cp (hl)			;78b0
	xor b			;78b1
	xor d			;78b2
	xor e			;78b3
	nop			;78b4
	nop			;78b5
	nop			;78b6
	nop			;78b7
	nop			;78b8
	nop			;78b9
	nop			;78ba
	nop			;78bb
	nop			;78bc
	ld bc,05b5ah		;78bd
	ld e,h			;78c0
	ld (bc),a		;78c1
	nop			;78c2
	nop			;78c3
	nop			;78c4
	nop			;78c5
	nop			;78c6
	nop			;78c7
	nop			;78c8
	nop			;78c9
	inc bc			;78ca
	inc b			;78cb
	dec b			;78cc
	ld e,l			;78cd
	ld e,(hl)		;78ce
	ld e,a			;78cf
	ld h,b			;78d0
	ld h,c			;78d1
	ld b,007h		;78d2
	nop			;78d4
	ex af,af'		;78d5
	add hl,bc		;78d6
	ld h,d			;78d7
	ld h,e			;78d8
	ld h,h			;78d9
	ld h,l			;78da
	ld h,(hl)		;78db
	ld h,a			;78dc
	ld l,b			;78dd
	ld l,c			;78de
	ld l,c			;78df
	ld l,d			;78e0
	ld l,e			;78e1
	ld l,h			;78e2
	ld a,(bc)		;78e3
	dec bc			;78e4
	ld l,l			;78e5
	ld l,(hl)		;78e6
	ld l,a			;78e7
	ld (hl),b		;78e8
	ld (hl),c		;78e9
	ld (hl),d		;78ea
	ld (hl),c		;78eb
	ld (hl),e		;78ec
	ld (hl),e		;78ed
	ld (hl),h		;78ee
	ld (hl),h		;78ef
	ld (hl),l		;78f0
	halt			;78f1
	ld (hl),a		;78f2
	inc c			;78f3
	nop			;78f4
	jr nc,l7928h		;78f5
	nop			;78f7
	nop			;78f8
	nop			;78f9
	nop			;78fa
	xor e			;78fb
	add a,b			;78fc
	add a,b			;78fd
	or e			;78fe
	ld a,b			;78ff
	ld a,c			;7900
	ld a,d			;7901
	ld a,e			;7902
	djnz l7905h		;7903
l7905h:
	nop			;7905
	nop			;7906
	nop			;7907
	nop			;7908
	nop			;7909
	nop			;790a
	nop			;790b
	ret z			;790c
	call nz,sub_7cb4h	;790d
	ld a,l			;7910
	ld a,(hl)		;7911
	ld a,a			;7912
	dec c			;7913
	nop			;7914
	nop			;7915
	nop			;7916
	nop			;7917
	nop			;7918
	nop			;7919
	nop			;791a
	or d			;791b
	jp 0bac2h		;791c
	and h			;791f
	and l			;7920
	and (hl)		;7921
	and a			;7922
	dec e			;7923
	nop			;7924
	ld (00033h),a		;7925
l7928h:
	nop			;7928
	nop			;7929
	nop			;792a
	or c			;792b
	xor b			;792c
	xor b			;792d
	cp c			;792e
	and b			;792f
	and c			;7930
	and d			;7931
	and e			;7932
	jr nz,l7950h		;7933
	sub l			;7935
	sub (hl)		;7936
	sub a			;7937
	sbc a,b			;7938
	sbc a,c			;7939
	sbc a,d			;793a
	sbc a,c			;793b
	sbc a,e			;793c
	sbc a,e			;793d
	sbc a,h			;793e
	sbc a,h			;793f
	sbc a,l			;7940
	sbc a,(hl)		;7941
	sbc a,a			;7942
	inc e			;7943
	nop			;7944
	jr l7960h		;7945
	adc a,d			;7947
	adc a,e			;7948
	adc a,h			;7949
	adc a,l			;794a
	adc a,(hl)		;794b
	adc a,a			;794c
	sub b			;794d
	sub c			;794e
	sub c			;794f
l7950h:
	sub d			;7950
	sub e			;7951
	sub h			;7952
	ld a,(de)		;7953
	nop			;7954
	nop			;7955
	nop			;7956
	nop			;7957
	nop			;7958
	nop			;7959
	inc de			;795a
	inc d			;795b
	dec d			;795c
	add a,l			;795d
	add a,(hl)		;795e
	add a,a			;795f
l7960h:
	adc a,b			;7960
	adc a,c			;7961
	ld d,017h		;7962
	nop			;7964
	nop			;7965
	nop			;7966
	nop			;7967
	nop			;7968
	nop			;7969
	nop			;796a
	nop			;796b
	nop			;796c
	ld de,08382h		;796d
	add a,h			;7970
	ld (de),a		;7971
	nop			;7972
	nop			;7973
	ld c,080h		;7974
l7976h:
	add a,b			;7976
	cp (hl)			;7977
l7978h:
	or d			;7978
	set 0,(hl)		;7979
	cp l			;797b
	xor (hl)		;797c
	call z,0bccdh		;797d
	ld e,0a8h		;7980
	xor b			;7982
	cp e			;7983
	xor l			;7984
	add a,b			;7985
	add a,b			;7986
	cp a			;7987
	xor (hl)		;7988
	ret z			;7989
	ret			;798a
	ret nz			;798b
	nop			;798c
	jp z,0c1c2h		;798d
	xor a			;7990
	xor b			;7991
	xor b			;7992
	cp b			;7993
	xor h			;7994
	add a,b			;7995
	add a,b			;7996
	or l			;7997
	rrca			;7998
	rst 0			;7999
	add a,0b6h		;799a
	rra			;799c
	call z,0b7c5h		;799d
	or b			;79a0
	xor b			;79a1
	xor b			;79a2
	cp b			;79a3
	nop			;79a4
	nop			;79a5
	ld a,(bc)		;79a6
	ld a,(bc)		;79a7
	nop			;79a8
	nop			;79a9
	nop			;79aa
	nop			;79ab
	ld b,d			;79ac
	ld b,e			;79ad
	nop			;79ae
	nop			;79af
	nop			;79b0
	nop			;79b1
	nop			;79b2
	daa			;79b3
	jr z,l79dch		;79b4
	ld a,h			;79b6
	adc a,h			;79b7
	inc (hl)		;79b8
	ld (hl),035h		;79b9
	nop			;79bb
	nop			;79bc
	add hl,hl		;79bd
	ld a,l			;79be
	and d			;79bf
	and c			;79c0
	xor c			;79c1
	xor d			;79c2
	adc a,l			;79c3
	scf			;79c4
	nop			;79c5
	nop			;79c6
	ld a,(hl)		;79c7
	ld a,a			;79c8
	add a,b			;79c9
	and b			;79ca
	xor b			;79cb
	sub b			;79cc
	adc a,a			;79cd
	adc a,(hl)		;79ce
	nop			;79cf
	add a,c			;79d0
	add a,d			;79d1
	add a,e			;79d2
	and e			;79d3
	ld h,b			;79d4
	ld h,d			;79d5
	xor e			;79d6
	sub e			;79d7
	sub d			;79d8
	sub c			;79d9
	adc a,c			;79da
	adc a,d			;79db
l79dch:
	adc a,e			;79dc
	sbc a,a			;79dd
	ld h,c			;79de
	ld h,e			;79df
	and a			;79e0
	sbc a,e			;79e1
	sbc a,d			;79e2
	sbc a,c			;79e3
	nop			;79e4
	add a,(hl)		;79e5
	add a,a			;79e6
	adc a,b			;79e7
	sbc a,l			;79e8
	and l			;79e9
	sbc a,b			;79ea
	sub a			;79eb
	sub (hl)		;79ec
	nop			;79ed
	nop			;79ee
	jr nc,l7976h		;79ef
	sbc a,h			;79f1
	sbc a,(hl)		;79f2
	and (hl)		;79f3
	and h			;79f4
	sub l			;79f5
	ld a,000h		;79f6
	nop			;79f8
	ld l,02fh		;79f9
	dec l			;79fb
	add a,h			;79fc
	sub h			;79fd
	dec sp			;79fe
	dec a			;79ff
	inc a			;7a00
	nop			;7a01
	nop			;7a02
	nop			;7a03
	nop			;7a04
	nop			;7a05
	ld b,h			;7a06
	ld b,l			;7a07
	nop			;7a08
	nop			;7a09
	nop			;7a0a
	nop			;7a0b
	nop			;7a0c
	nop			;7a0d
	ld (bc),a		;7a0e
	inc b			;7a0f
	and e			;7a10
	ld l,b			;7a11
	ld (hl),d		;7a12
	xor e			;7a13
	sbc a,a			;7a14
	ld l,c			;7a15
	ld (hl),e		;7a16
	and a			;7a17
	nop			;7a18
	nop			;7a19
	ld (bc),a		;7a1a
	inc b			;7a1b
	ld l,d			;7a1c
	ld l,e			;7a1d
	ld (hl),l		;7a1e
	ld (hl),h		;7a1f
	ld l,h			;7a20
	ld l,l			;7a21
	ld (hl),a		;7a22
	halt			;7a23
	nop			;7a24
	nop			;7a25
	ld (bc),a		;7a26
	inc b			;7a27
	ld l,(hl)		;7a28
	ld l,a			;7a29
	ld a,c			;7a2a
	ld a,b			;7a2b
	ld (hl),b		;7a2c
	ld (hl),c		;7a2d
	ld a,e			;7a2e
	ld a,d			;7a2f
	nop			;7a30
	nop			;7a31
	ld (bc),a		;7a32
	ld (bc),a		;7a33
	set 1,d			;7a34
	call 000cch		;7a36
	nop			;7a39
	ld (bc),a		;7a3a
	ld (bc),a		;7a3b
	call nz,0c6c5h		;7a3c
	rst 0			;7a3f
	nop			;7a40
	nop			;7a41
	add hl,bc		;7a42
	ld (bc),a		;7a43
	cp a			;7a44
	ret nz			;7a45
	cp d			;7a46
	cp e			;7a47
	cp b			;7a48
	cp c			;7a49
	cp b			;7a4a
	cp c			;7a4b
	or d			;7a4c
	or e			;7a4d
	or h			;7a4e
	or l			;7a4f
	or h			;7a50
	or l			;7a51
	or (hl)			;7a52
	or a			;7a53
	cp b			;7a54
	cp c			;7a55
	nop			;7a56
	nop			;7a57
	rlca			;7a58
	ld (bc),a		;7a59
	cp b			;7a5a
	cp c			;7a5b
	or d			;7a5c
	or e			;7a5d
	or h			;7a5e
	or l			;7a5f
	or h			;7a60
	or l			;7a61
	or (hl)			;7a62
	or a			;7a63
	cp d			;7a64
	cp e			;7a65
	cp h			;7a66
	cp l			;7a67
	nop			;7a68
	nop			;7a69
	inc b			;7a6a
	inc b			;7a6b
	nop			;7a6c
	nop			;7a6d
	cp d			;7a6e
	cp e			;7a6f
	ld a,(0be91h)		;7a70
	nop			;7a73
	ld b,c			;7a74
	sbc a,c			;7a75
	pop bc			;7a76
	nop			;7a77
	nop			;7a78
	nop			;7a79
	cp d			;7a7a
	cp e			;7a7b
	nop			;7a7c
	nop			;7a7d
	inc b			;7a7e
	inc b			;7a7f
	cp d			;7a80
	cp e			;7a81
	nop			;7a82
	nop			;7a83
	nop			;7a84
	cp (hl)			;7a85
	add a,c			;7a86
	inc l			;7a87
	nop			;7a88
	pop bc			;7a89
	adc a,c			;7a8a
l7a8bh:
	inc sp			;7a8b
	cp d			;7a8c
	cp e			;7a8d
	nop			;7a8e
	nop			;7a8f
	nop			;7a90
	nop			;7a91
	add hl,bc		;7a92
	ld bc,0afaeh		;7a93
	or b			;7a96
	or b			;7a97
	or b			;7a98
	or b			;7a99
	or c			;7a9a
	xor l			;7a9b
	xor (hl)		;7a9c
	nop			;7a9d
	nop			;7a9e
	add hl,bc		;7a9f
	ld (bc),a		;7aa0
	xor l			;7aa1
	nop			;7aa2
	xor (hl)		;7aa3
	nop			;7aa4
	xor a			;7aa5
	nop			;7aa6
	or b			;7aa7
	nop			;7aa8
	or c			;7aa9
	nop			;7aaa
	xor l			;7aab
	nop			;7aac
	xor (hl)		;7aad
	nop			;7aae
	xor h			;7aaf
	dec hl			;7ab0
	nop			;7ab1
	ccf			;7ab2
	nop			;7ab3
	nop			;7ab4
	add hl,bc		;7ab5
	ld (bc),a		;7ab6
	nop			;7ab7
	xor l			;7ab8
	nop			;7ab9
	xor (hl)		;7aba
	nop			;7abb
	xor a			;7abc
	nop			;7abd
	or b			;7abe
	nop			;7abf
	or c			;7ac0
	nop			;7ac1
	xor l			;7ac2
	nop			;7ac3
	xor (hl)		;7ac4
	add hl,sp		;7ac5
	xor h			;7ac6
	ld sp,00000h		;7ac7
	nop			;7aca
	dec bc			;7acb
	ld bc,0aeadh		;7acc
	xor a			;7acf
	or b			;7ad0
	or b			;7ad1
	or b			;7ad2
	or b			;7ad3
	or c			;7ad4
	xor l			;7ad5
	xor (hl)		;7ad6
	xor a			;7ad7
	nop			;7ad8
	nop			;7ad9
	dec bc			;7ada
	ld (bc),a		;7adb
	nop			;7adc
	jr c,l7a8bh		;7add
	ld (000adh),a		;7adf
	xor (hl)		;7ae2
	nop			;7ae3
	xor a			;7ae4
	nop			;7ae5
	or b			;7ae6
	nop			;7ae7
	or c			;7ae8
	nop			;7ae9
	xor l			;7aea
	nop			;7aeb
	xor (hl)		;7aec
	nop			;7aed
	xor a			;7aee
	nop			;7aef
	or c			;7af0
	nop			;7af1
	nop			;7af2
	nop			;7af3
	dec bc			;7af4
	ld (bc),a		;7af5
	ld hl,(04000h)		;7af6
	xor h			;7af9
	nop			;7afa
	xor l			;7afb
	nop			;7afc
	xor (hl)		;7afd
	nop			;7afe
	xor a			;7aff
	nop			;7b00
	or b			;7b01
	nop			;7b02
	or c			;7b03
	nop			;7b04
	xor l			;7b05
	nop			;7b06
	xor (hl)		;7b07
	nop			;7b08
	xor a			;7b09
	nop			;7b0a
	or c			;7b0b
	nop			;7b0c
	nop			;7b0d
	ld (bc),a		;7b0e
	ld (bc),a		;7b0f
	jp 0c2c9h		;7b10
	ret z			;7b13
	nop			;7b14
	nop			;7b15
	inc c			;7b16
	ld c,000h		;7b17
	push bc			;7b19
	ld b,017h		;7b1a
	dec e			;7b1c
	ld hl,03319h		;7b1d
	dec sp			;7b20
	scf			;7b21
	ld sp,0c506h		;7b22
	nop			;7b25
	ld b,003h		;7b26
	rlca			;7b28
	jr l7b45h		;7b29
	dec d			;7b2b
	inc hl			;7b2c
	dec a			;7b2d
	cpl			;7b2e
	inc (hl)		;7b2f
	ld (00307h),a		;7b30
	ld b,007h		;7b33
	inc b			;7b35
	ex af,af'		;7b36
	ld de,01610h		;7b37
	dec de			;7b3a
	dec (hl)		;7b3b
	jr nc,l7b68h		;7b3c
	dec hl			;7b3e
	ex af,af'		;7b3f
	inc b			;7b40
	rlca			;7b41
	ex af,af'		;7b42
	dec b			;7b43
	add hl,bc		;7b44
l7b45h:
	inc de			;7b45
	ld (de),a		;7b46
	inc d			;7b47
	inc e			;7b48
	ld (hl),02eh		;7b49
	inc l			;7b4b
	dec l			;7b4c
	add hl,bc		;7b4d
	dec b			;7b4e
	ex af,af'		;7b4f
	ld h,e			;7b50
	ld e,c			;7b51
	ld d,e			;7b52
	inc b			;7b53
	inc bc			;7b54
	ld (0461dh),hl		;7b55
	ld c,e			;7b58
	inc l			;7b59
	dec l			;7b5a
	ld d,e			;7b5b
	ld e,c			;7b5c
	ld h,e			;7b5d
	ld d,e			;7b5e
	ld e,d			;7b5f
	ld e,h			;7b60
	dec b			;7b61
	jr l7b87h		;7b62
	sub l			;7b64
	sub l			;7b65
	ld c,h			;7b66
	ld b,c			;7b67
l7b68h:
	ld l,05ch		;7b68
	ld e,d			;7b6a
	ld d,e			;7b6b
	ld e,a			;7b6c
	ld l,e			;7b6d
	dec h			;7b6e
	inc h			;7b6f
	rra			;7b70
	add a,c			;7b71
	add a,d			;7b72
	add a,d			;7b73
	add a,c			;7b74
	ld c,b			;7b75
	ld c,l			;7b76
	ld c,(hl)		;7b77
	ld e,a			;7b78
	ld l,e			;7b79
	ld l,b			;7b7a
	ld l,l			;7b7b
	ld d,01eh		;7b7c
	ld hl,01d5dh		;7b7e
	ld b,(hl)		;7b81
	ld e,l			;7b82
	ld c,d			;7b83
	ld b,a			;7b84
	ccf			;7b85
	ld l,b			;7b86
l7b87h:
	ld l,l			;7b87
	ld d,(hl)		;7b88
	ld d,a			;7b89
	adc a,d			;7b8a
	adc a,e			;7b8b
	inc d			;7b8c
	ld e,l			;7b8d
	dec e			;7b8e
	ld b,(hl)		;7b8f
	ld e,l			;7b90
	dec a			;7b91
	adc a,h			;7b92
	adc a,d			;7b93
	ld d,(hl)		;7b94
	ld d,a			;7b95
	nop			;7b96
	ld e,b			;7b97
	adc a,l			;7b98
	adc a,(hl)		;7b99
	adc a,a			;7b9a
	ld h,l			;7b9b
	ld l,h			;7b9c
	ld h,l			;7b9d
	ld l,h			;7b9e
	adc a,a			;7b9f
	adc a,(hl)		;7ba0
	adc a,l			;7ba1
	ld e,b			;7ba2
	nop			;7ba3
	nop			;7ba4
	ld e,b			;7ba5
	sub b			;7ba6
	sub c			;7ba7
	sub d			;7ba8
	ld (hl),l		;7ba9
	halt			;7baa
	ld (hl),l		;7bab
	halt			;7bac
	sub d			;7bad
	sub e			;7bae
	sub h			;7baf
	ld e,b			;7bb0
	nop			;7bb1
	nop			;7bb2
	ld e,b			;7bb3
	djnz l7bd6h		;7bb4
	ld (hl),d		;7bb6
	ld (hl),c		;7bb7
	ld (hl),c		;7bb8
	ld (hl),c		;7bb9
	ld (hl),c		;7bba
	ld (hl),d		;7bbb
	ld c,c			;7bbc
	add hl,sp		;7bbd
	ld e,b			;7bbe
	nop			;7bbf
	nop			;7bc0
	nop			;7bc1
	inc c			;7bc2
	djnz l7bc5h		;7bc3
l7bc5h:
	push bc			;7bc5
	ld b,017h		;7bc6
	dec e			;7bc8
	ld hl,00019h		;7bc9
	nop			;7bcc
	inc sp			;7bcd
	dec sp			;7bce
	scf			;7bcf
	ld sp,0c506h		;7bd0
	nop			;7bd3
	ld b,003h		;7bd4
l7bd6h:
	rlca			;7bd6
	jr l7bf3h		;7bd7
	dec d			;7bd9
	inc hl			;7bda
	nop			;7bdb
	nop			;7bdc
	dec a			;7bdd
	cpl			;7bde
	inc (hl)		;7bdf
	ld (00307h),a		;7be0
	ld b,007h		;7be3
	inc b			;7be5
	ex af,af'		;7be6
	ld de,01610h		;7be7
	dec de			;7bea
	nop			;7beb
	nop			;7bec
	dec (hl)		;7bed
	jr nc,l7c1ah		;7bee
	dec hl			;7bf0
	ex af,af'		;7bf1
	inc b			;7bf2
l7bf3h:
	rlca			;7bf3
	ex af,af'		;7bf4
	dec b			;7bf5
	add hl,bc		;7bf6
	inc de			;7bf7
	ld (de),a		;7bf8
	inc d			;7bf9
	inc e			;7bfa
	nop			;7bfb
	nop			;7bfc
	ld (hl),02eh		;7bfd
	inc l			;7bff
	dec l			;7c00
	add hl,bc		;7c01
	dec b			;7c02
	ex af,af'		;7c03
	ld h,e			;7c04
	ld e,c			;7c05
	ld d,e			;7c06
	inc b			;7c07
	inc bc			;7c08
	ld (0001dh),hl		;7c09
	nop			;7c0c
	ld b,(hl)		;7c0d
	ld c,e			;7c0e
	inc l			;7c0f
	dec l			;7c10
	ld d,e			;7c11
	ld e,c			;7c12
	ld h,e			;7c13
	ld d,e			;7c14
	ld e,d			;7c15
	ld e,h			;7c16
	dec b			;7c17
	jr l7c3dh		;7c18
l7c1ah:
	sub l			;7c1a
	add a,a			;7c1b
	add a,a			;7c1c
	sub l			;7c1d
	ld c,h			;7c1e
	ld b,c			;7c1f
	ld l,05ch		;7c20
	ld e,d			;7c22
	ld d,e			;7c23
	ld e,a			;7c24
	ld l,e			;7c25
	dec h			;7c26
	inc h			;7c27
	rra			;7c28
	add a,c			;7c29
	add a,d			;7c2a
	add a,(hl)		;7c2b
	add a,(hl)		;7c2c
	add a,d			;7c2d
	add a,c			;7c2e
	ld c,b			;7c2f
	ld c,l			;7c30
	ld c,(hl)		;7c31
	ld e,a			;7c32
	ld l,e			;7c33
	ld l,b			;7c34
	ld l,l			;7c35
	ld d,01eh		;7c36
	ld hl,01d5dh		;7c38
	nop			;7c3b
	nop			;7c3c
l7c3dh:
	ld b,(hl)		;7c3d
	ld e,l			;7c3e
	ld c,d			;7c3f
	ld b,a			;7c40
	ccf			;7c41
	ld l,b			;7c42
	ld l,l			;7c43
	ld d,(hl)		;7c44
	ld d,a			;7c45
	adc a,d			;7c46
	adc a,e			;7c47
	inc d			;7c48
	ld e,l			;7c49
	dec e			;7c4a
	nop			;7c4b
	nop			;7c4c
	ld b,(hl)		;7c4d
	ld e,l			;7c4e
	dec a			;7c4f
	adc a,h			;7c50
	adc a,d			;7c51
	ld d,(hl)		;7c52
	ld d,a			;7c53
	nop			;7c54
	ld e,b			;7c55
	adc a,l			;7c56
	adc a,(hl)		;7c57
	adc a,a			;7c58
	ld h,l			;7c59
	ld l,h			;7c5a
	add a,l			;7c5b
	add a,l			;7c5c
	ld h,l			;7c5d
	ld l,h			;7c5e
	adc a,a			;7c5f
	adc a,(hl)		;7c60
	adc a,l			;7c61
	ld e,b			;7c62
	nop			;7c63
	nop			;7c64
	ld e,b			;7c65
	sub b			;7c66
	sub c			;7c67
	sub d			;7c68
	ld (hl),l		;7c69
	halt			;7c6a
	adc a,b			;7c6b
	adc a,b			;7c6c
	ld (hl),l		;7c6d
	halt			;7c6e
	sub d			;7c6f
	sub e			;7c70
	sub h			;7c71
	ld e,b			;7c72
	nop			;7c73
	nop			;7c74
	ld e,b			;7c75
	djnz $+34		;7c76
	ld (hl),d		;7c78
	ld (hl),c		;7c79
	ld (hl),c		;7c7a
	ld (hl),c		;7c7b
	ld (hl),c		;7c7c
	ld (hl),c		;7c7d
	ld (hl),c		;7c7e
	ld (hl),d		;7c7f
	ld c,c			;7c80
	add hl,sp		;7c81
	ld e,b			;7c82
	nop			;7c83
	nop			;7c84
	nop			;7c85
	inc c			;7c86
	ld (de),a		;7c87
	nop			;7c88
	push bc			;7c89
	ld b,017h		;7c8a
	dec e			;7c8c
	ld hl,00019h		;7c8d
	nop			;7c90
	nop			;7c91
	nop			;7c92
	inc sp			;7c93
	dec sp			;7c94
	scf			;7c95
	ld sp,0c506h		;7c96
	nop			;7c99
	ld b,003h		;7c9a
	rlca			;7c9c
	jr $+28			;7c9d
	dec d			;7c9f
	inc hl			;7ca0
	nop			;7ca1
	nop			;7ca2
	nop			;7ca3
	nop			;7ca4
	dec a			;7ca5
	cpl			;7ca6
	inc (hl)		;7ca7
	ld (00307h),a		;7ca8
	ld b,007h		;7cab
	inc b			;7cad
	ex af,af'		;7cae
	ld de,01610h		;7caf
	dec de			;7cb2
	nop			;7cb3
sub_7cb4h:
	nop			;7cb4
	nop			;7cb5
	nop			;7cb6
	dec (hl)		;7cb7
	jr nc,l7ce4h		;7cb8
	dec hl			;7cba
	ex af,af'		;7cbb
	inc b			;7cbc
	rlca			;7cbd
	ex af,af'		;7cbe
	dec b			;7cbf
	add hl,bc		;7cc0
	inc de			;7cc1
	ld (de),a		;7cc2
	inc d			;7cc3
	inc e			;7cc4
	nop			;7cc5
	nop			;7cc6
	nop			;7cc7
	nop			;7cc8
	ld (hl),02eh		;7cc9
	inc l			;7ccb
	dec l			;7ccc
	add hl,bc		;7ccd
	dec b			;7cce
	ex af,af'		;7ccf
	ld h,e			;7cd0
	ld e,c			;7cd1
	ld d,e			;7cd2
	inc b			;7cd3
	inc bc			;7cd4
	ld (0001dh),hl		;7cd5
	nop			;7cd8
	nop			;7cd9
	nop			;7cda
	ld b,(hl)		;7cdb
	ld c,e			;7cdc
	inc l			;7cdd
	dec l			;7cde
	ld d,e			;7cdf
	ld e,c			;7ce0
	ld h,e			;7ce1
	ld d,e			;7ce2
	ld e,d			;7ce3
l7ce4h:
	ld e,h			;7ce4
	dec b			;7ce5
	jr $+37			;7ce6
	sub l			;7ce8
	add a,a			;7ce9
	add a,a			;7cea
	add a,a			;7ceb
	add a,a			;7cec
	sub l			;7ced
	ld c,h			;7cee
	ld b,c			;7cef
	ld l,05ch		;7cf0
	ld e,d			;7cf2
	ld d,e			;7cf3
	ld e,a			;7cf4
	ld l,e			;7cf5
	dec h			;7cf6
	inc h			;7cf7
	rra			;7cf8
	add a,c			;7cf9
	add a,d			;7cfa
	add a,(hl)		;7cfb
	add a,(hl)		;7cfc
	add a,(hl)		;7cfd
	add a,(hl)		;7cfe
	add a,d			;7cff
	add a,c			;7d00
	ld c,b			;7d01
	ld c,l			;7d02
	ld c,(hl)		;7d03
	ld e,a			;7d04
	ld l,e			;7d05
	ld l,b			;7d06
	ld l,l			;7d07
	ld d,01eh		;7d08
	ld hl,01d5dh		;7d0a
	nop			;7d0d
	nop			;7d0e
	nop			;7d0f
	nop			;7d10
	ld b,(hl)		;7d11
	ld e,l			;7d12
	ld c,d			;7d13
	ld b,a			;7d14
	ccf			;7d15
	ld l,b			;7d16
	ld l,l			;7d17
	ld d,(hl)		;7d18
	ld d,a			;7d19
	adc a,d			;7d1a
	adc a,e			;7d1b
	inc d			;7d1c
	ld e,l			;7d1d
	dec e			;7d1e
	nop			;7d1f
	nop			;7d20
	nop			;7d21
	nop			;7d22
	ld b,(hl)		;7d23
	ld e,l			;7d24
	dec a			;7d25
	adc a,h			;7d26
	adc a,d			;7d27
	ld d,(hl)		;7d28
	ld d,a			;7d29
	nop			;7d2a
	ld e,b			;7d2b
	adc a,l			;7d2c
	adc a,(hl)		;7d2d
	adc a,a			;7d2e
	ld h,l			;7d2f
	ld l,h			;7d30
	add a,l			;7d31
	add a,l			;7d32
	add a,l			;7d33
	add a,l			;7d34
	ld h,l			;7d35
	ld l,h			;7d36
	adc a,a			;7d37
	adc a,(hl)		;7d38
	adc a,l			;7d39
	ld e,b			;7d3a
	nop			;7d3b
	nop			;7d3c
	ld e,b			;7d3d
	sub b			;7d3e
	sub c			;7d3f
	sub d			;7d40
	ld (hl),l		;7d41
	halt			;7d42
	adc a,b			;7d43
	adc a,b			;7d44
	adc a,b			;7d45
	adc a,b			;7d46
	ld (hl),l		;7d47
	halt			;7d48
	sub d			;7d49
	sub e			;7d4a
	sub h			;7d4b
	ld e,b			;7d4c
	nop			;7d4d
	nop			;7d4e
	ld e,b			;7d4f
	djnz l7d72h		;7d50
	ld (hl),d		;7d52
	ld (hl),c		;7d53
	ld (hl),c		;7d54
	ld (hl),c		;7d55
	ld (hl),c		;7d56
	ld (hl),c		;7d57
	ld (hl),c		;7d58
	ld (hl),c		;7d59
	ld (hl),c		;7d5a
	ld (hl),d		;7d5b
	ld c,c			;7d5c
	add hl,sp		;7d5d
	ld e,b			;7d5e
	nop			;7d5f
	nop			;7d60
	nop			;7d61
	dec c			;7d62
	ld b,000h		;7d63
	add a,0c7h		;7d65
	ret			;7d67
	ret z			;7d68
	nop			;7d69
	cp h			;7d6a
	jp z,0cdcch		;7d6b
	set 0,e			;7d6e
	cp l			;7d70
	dec bc			;7d71
l7d72h:
	dec c			;7d72
	daa			;7d73
	dec h			;7d74
	call nz,00c00h		;7d75
	ld c,028h		;7d78
	ld h,000h		;7d7a
	nop			;7d7c
	sub a			;7d7d
	sbc a,b			;7d7e
	sbc a,c			;7d7f
	sbc a,d			;7d80
	nop			;7d81
	nop			;7d82
	and a			;7d83
	xor b			;7d84
	xor c			;7d85
	xor d			;7d86
	nop			;7d87
	nop			;7d88
	sub a			;7d89
	sbc a,b			;7d8a
	sbc a,c			;7d8b
	sbc a,d			;7d8c
	nop			;7d8d
	nop			;7d8e
	and a			;7d8f
	xor b			;7d90
	xor c			;7d91
	xor d			;7d92
	nop			;7d93
	nop			;7d94
	sub a			;7d95
	sbc a,b			;7d96
	sbc a,c			;7d97
	sbc a,d			;7d98
	nop			;7d99
	nop			;7d9a
	and a			;7d9b
	xor b			;7d9c
	xor c			;7d9d
	xor d			;7d9e
	nop			;7d9f
	nop			;7da0
	sub a			;7da1
	sbc a,b			;7da2
	sbc a,c			;7da3
	sbc a,d			;7da4
	nop			;7da5
	nop			;7da6
	and a			;7da7
	xor b			;7da8
	xor c			;7da9
	xor d			;7daa
	nop			;7dab
	nop			;7dac
	sub a			;7dad
	sbc a,b			;7dae
	sbc a,c			;7daf
	sbc a,d			;7db0
	nop			;7db1
	nop			;7db2
	nop			;7db3
	dec c			;7db4
	ld b,000h		;7db5
	add a,0c7h		;7db7
	ret			;7db9
	ret z			;7dba
	nop			;7dbb
	cp h			;7dbc
	jp z,0cdcch		;7dbd
	set 0,e			;7dc0
	cp l			;7dc2
	dec bc			;7dc3
	dec c			;7dc4
	daa			;7dc5
	dec h			;7dc6
	call nz,00c00h		;7dc7
	ld c,028h		;7dca
	ld h,000h		;7dcc
	nop			;7dce
	sbc a,e			;7dcf
	sbc a,h			;7dd0
	sbc a,l			;7dd1
	sbc a,(hl)		;7dd2
	nop			;7dd3
	nop			;7dd4
	xor e			;7dd5
	xor h			;7dd6
	xor l			;7dd7
	xor (hl)		;7dd8
	nop			;7dd9
	nop			;7dda
	sbc a,e			;7ddb
	sbc a,h			;7ddc
	sbc a,l			;7ddd
	sbc a,(hl)		;7dde
	nop			;7ddf
	nop			;7de0
	xor e			;7de1
	xor h			;7de2
	xor l			;7de3
	xor (hl)		;7de4
	nop			;7de5
	nop			;7de6
	sbc a,e			;7de7
	sbc a,h			;7de8
	sbc a,l			;7de9
	sbc a,(hl)		;7dea
	nop			;7deb
	nop			;7dec
	xor e			;7ded
	xor h			;7dee
	xor l			;7def
	xor (hl)		;7df0
	nop			;7df1
	nop			;7df2
	sbc a,e			;7df3
	sbc a,h			;7df4
	sbc a,l			;7df5
	sbc a,(hl)		;7df6
	nop			;7df7
	nop			;7df8
	xor e			;7df9
	xor h			;7dfa
	xor l			;7dfb
	xor (hl)		;7dfc
	nop			;7dfd
	nop			;7dfe
	sbc a,e			;7dff
	sbc a,h			;7e00
	sbc a,l			;7e01
	sbc a,(hl)		;7e02
	nop			;7e03
	nop			;7e04
	nop			;7e05
	dec c			;7e06
	ld b,000h		;7e07
	add a,0c7h		;7e09
	ret			;7e0b
	ret z			;7e0c
	nop			;7e0d
	cp h			;7e0e
	jp z,0cdcch		;7e0f
	set 0,e			;7e12
	cp l			;7e14
	dec bc			;7e15
	dec c			;7e16
	daa			;7e17
	dec h			;7e18
	call nz,00c00h		;7e19
	ld c,028h		;7e1c
	ld h,000h		;7e1e
	nop			;7e20
	sbc a,a			;7e21
	and b			;7e22
	and c			;7e23
	and d			;7e24
	nop			;7e25
	nop			;7e26
	xor a			;7e27
	or b			;7e28
	or c			;7e29
	or d			;7e2a
	nop			;7e2b
	nop			;7e2c
	sbc a,a			;7e2d
	and b			;7e2e
	and c			;7e2f
	and d			;7e30
	nop			;7e31
	nop			;7e32
	xor a			;7e33
	or b			;7e34
	or c			;7e35
	or d			;7e36
	nop			;7e37
	nop			;7e38
	sbc a,a			;7e39
	and b			;7e3a
	and c			;7e3b
	and d			;7e3c
	nop			;7e3d
	nop			;7e3e
	xor a			;7e3f
	or b			;7e40
	or c			;7e41
	or d			;7e42
	nop			;7e43
	nop			;7e44
	sbc a,a			;7e45
	and b			;7e46
	and c			;7e47
	and d			;7e48
	nop			;7e49
	nop			;7e4a
	xor a			;7e4b
	or b			;7e4c
	or c			;7e4d
	or d			;7e4e
	nop			;7e4f
	nop			;7e50
	sbc a,a			;7e51
	and b			;7e52
	and c			;7e53
	and d			;7e54
	nop			;7e55
	nop			;7e56
	nop			;7e57
	dec c			;7e58
	ld b,000h		;7e59
	add a,0c7h		;7e5b
	ret			;7e5d
	ret z			;7e5e
	nop			;7e5f
	cp h			;7e60
	jp z,0cdcch		;7e61
	set 0,e			;7e64
	cp l			;7e66
	dec bc			;7e67
	dec c			;7e68
	daa			;7e69
	dec h			;7e6a
	call nz,00c00h		;7e6b
	ld c,028h		;7e6e
	ld h,000h		;7e70
	nop			;7e72
	and e			;7e73
	and h			;7e74
	and l			;7e75
	and (hl)		;7e76
	nop			;7e77
	nop			;7e78
	or e			;7e79
	or h			;7e7a
	or l			;7e7b
	or (hl)			;7e7c
	nop			;7e7d
	nop			;7e7e
	and e			;7e7f
	and h			;7e80
	and l			;7e81
	and (hl)		;7e82
	nop			;7e83
	nop			;7e84
	or e			;7e85
	or h			;7e86
	or l			;7e87
	or (hl)			;7e88
	nop			;7e89
	nop			;7e8a
	and e			;7e8b
	and h			;7e8c
	and l			;7e8d
	and (hl)		;7e8e
	nop			;7e8f
	nop			;7e90
	or e			;7e91
	or h			;7e92
	or l			;7e93
	or (hl)			;7e94
	nop			;7e95
	nop			;7e96
	and e			;7e97
	and h			;7e98
l7e99h:
	and l			;7e99
	and (hl)		;7e9a
	nop			;7e9b
	nop			;7e9c
	or e			;7e9d
	or h			;7e9e
	or l			;7e9f
	or (hl)			;7ea0
	nop			;7ea1
	nop			;7ea2
	and e			;7ea3
	and h			;7ea4
	and l			;7ea5
	and (hl)		;7ea6
	nop			;7ea7
	nop			;7ea8
	nop			;7ea9
	dec c			;7eaa
	ld b,000h		;7eab
	add a,0c7h		;7ead
	ret			;7eaf
	ret z			;7eb0
	nop			;7eb1
	cp h			;7eb2
	jp z,0cdcch		;7eb3
	set 0,e			;7eb6
	cp l			;7eb8
	dec bc			;7eb9
	dec c			;7eba
	daa			;7ebb
	dec h			;7ebc
	call nz,00c00h		;7ebd
	ld c,028h		;7ec0
	ld h,000h		;7ec2
	nop			;7ec4
	and a			;7ec5
	xor b			;7ec6
	xor c			;7ec7
	xor d			;7ec8
	nop			;7ec9
	nop			;7eca
	sub a			;7ecb
	sbc a,b			;7ecc
	sbc a,c			;7ecd
	sbc a,d			;7ece
	nop			;7ecf
	nop			;7ed0
	and a			;7ed1
	xor b			;7ed2
	xor c			;7ed3
	xor d			;7ed4
	nop			;7ed5
	nop			;7ed6
	sub a			;7ed7
	sbc a,b			;7ed8
	sbc a,c			;7ed9
	sbc a,d			;7eda
	nop			;7edb
	nop			;7edc
	and a			;7edd
	xor b			;7ede
	xor c			;7edf
	xor d			;7ee0
	nop			;7ee1
	nop			;7ee2
	sub a			;7ee3
	sbc a,b			;7ee4
	sbc a,c			;7ee5
	sbc a,d			;7ee6
	nop			;7ee7
	nop			;7ee8
	and a			;7ee9
	xor b			;7eea
	xor c			;7eeb
	xor d			;7eec
	nop			;7eed
	nop			;7eee
	sub a			;7eef
	sbc a,b			;7ef0
	sbc a,c			;7ef1
	sbc a,d			;7ef2
	nop			;7ef3
	nop			;7ef4
	and a			;7ef5
	xor b			;7ef6
	xor c			;7ef7
	xor d			;7ef8
	nop			;7ef9
	nop			;7efa
	nop			;7efb
	dec c			;7efc
	ld b,000h		;7efd
	add a,0c7h		;7eff
	ret			;7f01
	ret z			;7f02
	nop			;7f03
	cp h			;7f04
	jp z,0cdcch		;7f05
	set 0,e			;7f08
	cp l			;7f0a
	dec bc			;7f0b
	dec c			;7f0c
	daa			;7f0d
	dec h			;7f0e
	call nz,00c00h		;7f0f
	ld c,028h		;7f12
	ld h,000h		;7f14
	nop			;7f16
	xor e			;7f17
	xor h			;7f18
	xor l			;7f19
	xor (hl)		;7f1a
	nop			;7f1b
	nop			;7f1c
	sbc a,e			;7f1d
	sbc a,h			;7f1e
	sbc a,l			;7f1f
	sbc a,(hl)		;7f20
	nop			;7f21
	nop			;7f22
	xor e			;7f23
	xor h			;7f24
	xor l			;7f25
	xor (hl)		;7f26
	nop			;7f27
	nop			;7f28
	sbc a,e			;7f29
	sbc a,h			;7f2a
	sbc a,l			;7f2b
	sbc a,(hl)		;7f2c
	nop			;7f2d
	nop			;7f2e
	xor e			;7f2f
	xor h			;7f30
	xor l			;7f31
	xor (hl)		;7f32
	nop			;7f33
	nop			;7f34
	sbc a,e			;7f35
	sbc a,h			;7f36
	sbc a,l			;7f37
	sbc a,(hl)		;7f38
	nop			;7f39
	nop			;7f3a
	xor e			;7f3b
	xor h			;7f3c
	xor l			;7f3d
	xor (hl)		;7f3e
	nop			;7f3f
	nop			;7f40
	sbc a,e			;7f41
	sbc a,h			;7f42
	sbc a,l			;7f43
	sbc a,(hl)		;7f44
	nop			;7f45
	nop			;7f46
	xor e			;7f47
	xor h			;7f48
	xor l			;7f49
	xor (hl)		;7f4a
	nop			;7f4b
	nop			;7f4c
	nop			;7f4d
	dec c			;7f4e
	ld b,000h		;7f4f
	add a,0c7h		;7f51
	ret			;7f53
	ret z			;7f54
	nop			;7f55
	cp h			;7f56
	jp z,0cdcch		;7f57
	set 0,e			;7f5a
	cp l			;7f5c
	dec bc			;7f5d
	dec c			;7f5e
	daa			;7f5f
	dec h			;7f60
	call nz,00c00h		;7f61
	ld c,028h		;7f64
	ld h,000h		;7f66
	nop			;7f68
	xor a			;7f69
	or b			;7f6a
	or c			;7f6b
	or d			;7f6c
	nop			;7f6d
	nop			;7f6e
	sbc a,a			;7f6f
	and b			;7f70
	and c			;7f71
	and d			;7f72
	nop			;7f73
	nop			;7f74
	xor a			;7f75
	or b			;7f76
	or c			;7f77
	or d			;7f78
	nop			;7f79
	nop			;7f7a
	sbc a,a			;7f7b
	and b			;7f7c
	and c			;7f7d
	and d			;7f7e
	nop			;7f7f
	nop			;7f80
	xor a			;7f81
	or b			;7f82
	or c			;7f83
	or d			;7f84
	nop			;7f85
	nop			;7f86
	sbc a,a			;7f87
	and b			;7f88
	and c			;7f89
	and d			;7f8a
	nop			;7f8b
	nop			;7f8c
	xor a			;7f8d
	or b			;7f8e
	or c			;7f8f
	or d			;7f90
	nop			;7f91
	nop			;7f92
	sbc a,a			;7f93
	and b			;7f94
	and c			;7f95
	and d			;7f96
	nop			;7f97
	nop			;7f98
	xor a			;7f99
	or b			;7f9a
	or c			;7f9b
	or d			;7f9c
	nop			;7f9d
	nop			;7f9e
	nop			;7f9f
	dec c			;7fa0
	ld b,000h		;7fa1
	add a,0c7h		;7fa3
	ret			;7fa5
	ret z			;7fa6
	nop			;7fa7
	cp h			;7fa8
	jp z,0cdcch		;7fa9
	set 0,e			;7fac
	cp l			;7fae
	dec bc			;7faf
	dec c			;7fb0
	daa			;7fb1
	dec h			;7fb2
	call nz,00c00h		;7fb3
	ld c,028h		;7fb6
	ld h,000h		;7fb8
	nop			;7fba
	or e			;7fbb
	or h			;7fbc
	or l			;7fbd
	or (hl)			;7fbe
	nop			;7fbf
	nop			;7fc0
	and e			;7fc1
	and h			;7fc2
	and l			;7fc3
	and (hl)		;7fc4
	nop			;7fc5
	nop			;7fc6
	or e			;7fc7
	or h			;7fc8
	or l			;7fc9
	or (hl)			;7fca
	nop			;7fcb
	nop			;7fcc
	and e			;7fcd
	and h			;7fce
	and l			;7fcf
	and (hl)		;7fd0
	nop			;7fd1
	nop			;7fd2
	or e			;7fd3
	or h			;7fd4
	or l			;7fd5
	or (hl)			;7fd6
	nop			;7fd7
	nop			;7fd8
	and e			;7fd9
	and h			;7fda
	and l			;7fdb
	and (hl)		;7fdc
	nop			;7fdd
	nop			;7fde
	or e			;7fdf
	or h			;7fe0
	or l			;7fe1
	or (hl)			;7fe2
	nop			;7fe3
	nop			;7fe4
	and e			;7fe5
	and h			;7fe6
	and l			;7fe7
	and (hl)		;7fe8
	nop			;7fe9
	nop			;7fea
	or e			;7feb
	or h			;7fec
	or l			;7fed
	or (hl)			;7fee
	nop			;7fef
	nop			;7ff0
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

; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank25_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank25.bin

	org 06000h

	rst 38h			;6000
	rst 38h			;6001
	rst 38h			;6002
	rst 38h			;6003
	rst 38h			;6004
	rst 38h			;6005
	rst 38h			;6006
	rst 38h			;6007
	rst 38h			;6008
	rst 38h			;6009
	rst 38h			;600a
	rst 38h			;600b
	rst 38h			;600c
	rst 38h			;600d
	rst 38h			;600e
	rst 38h			;600f
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
l601dh:
	nop			;601d
	nop			;601e
	nop			;601f
	ld (bc),a		;6020
l6021h:
	ld (bc),a		;6021
	ld (bc),a		;6022
	ld (bc),a		;6023
	cp h			;6024
	jp nz,0babbh		;6025
	call nz,0c1c0h		;6028
	push bc			;602b
l602ch:
	ld (bc),a		;602c
	ld (bc),a		;602d
	ld (bc),a		;602e
	ld (bc),a		;602f
	ld (bc),a		;6030
	ld (bc),a		;6031
	ld (bc),a		;6032
	ld (bc),a		;6033
	cp l			;6034
	cp (hl)			;6035
	cp e			;6036
	cp d			;6037
l6038h:
	call nz,0bfc3h		;6038
	push bc			;603b
	ld (bc),a		;603c
	ld (bc),a		;603d
	ld (bc),a		;603e
	ld (bc),a		;603f
	nop			;6040
	nop			;6041
	nop			;6042
	nop			;6043
	nop			;6044
	ld c,e			;6045
	ld (00000h),a		;6046
	ld h,c			;6049
	ld c,(hl)		;604a
	ld c,a			;604b
	nop			;604c
	ld l,l			;604d
	ld d,c			;604e
	ld (hl),l		;604f
	xor c			;6050
	ld h,h			;6051
	ld d,b			;6052
	halt			;6053
	or (hl)			;6054
	ld d,d			;6055
	sub (hl)		;6056
	sbc a,c			;6057
	xor d			;6058
	or a			;6059
	cp b			;605a
	xor b			;605b
	sub d			;605c
	ld (hl),h		;605d
	sub a			;605e
	sbc a,d			;605f
	xor c			;6060
	ld d,d			;6061
	add a,e			;6062
	sbc a,c			;6063
	or (hl)			;6064
	or a			;6065
	cp b			;6066
	xor b			;6067
	xor d			;6068
	cp c			;6069
	sub a			;606a
	sbc a,e			;606b
	sub d			;606c
	cp d			;606d
	ld e,04ah		;606e
	xor c			;6070
	sub h			;6071
	sub l			;6072
	xor e			;6073
	scf			;6074
	or a			;6075
	cp b			;6076
	xor b			;6077
	add hl,sp		;6078
	cp c			;6079
	sub a			;607a
	sbc a,e			;607b
	jr c,l6038h		;607c
	ld e,04ah		;607e
	inc hl			;6080
	inc l			;6081
	dec hl			;6082
	ld (02d24h),hl		;6083
	daa			;6086
	dec h			;6087
	inc d			;6088
	ld h,029h		;6089
	ld (de),a		;608b
	inc de			;608c
	jr z,l60b9h		;608d
	ld (bc),a		;608f
	ld c,a			;6090
	nop			;6091
	nop			;6092
	nop			;6093
	ld (hl),l		;6094
	nop			;6095
	nop			;6096
	nop			;6097
	halt			;6098
	nop			;6099
	nop			;609a
	nop			;609b
	sbc a,c			;609c
	nop			;609d
	nop			;609e
	nop			;609f
	xor e			;60a0
	nop			;60a1
	nop			;60a2
	nop			;60a3
	xor b			;60a4
	nop			;60a5
	nop			;60a6
	nop			;60a7
	sbc a,e			;60a8
	nop			;60a9
	nop			;60aa
	nop			;60ab
	ld c,d			;60ac
	nop			;60ad
	nop			;60ae
	nop			;60af
	ld (00000h),hl		;60b0
	nop			;60b3
l60b4h:
	dec h			;60b4
	nop			;60b5
	nop			;60b6
	nop			;60b7
	ld (de),a		;60b8
l60b9h:
	nop			;60b9
	nop			;60ba
	nop			;60bb
	ld (bc),a		;60bc
	nop			;60bd
	nop			;60be
	nop			;60bf
	nop			;60c0
	ld h,c			;60c1
	ld c,(hl)		;60c2
	ld c,a			;60c3
	nop			;60c4
	ld l,l			;60c5
	ld d,c			;60c6
	ld (hl),l		;60c7
	nop			;60c8
	ld h,h			;60c9
	ld d,b			;60ca
	halt			;60cb
l60cch:
	nop			;60cc
	ld d,d			;60cd
	sub (hl)		;60ce
	sbc a,c			;60cf
	rlca			;60d0
	dec bc			;60d1
	inc hl			;60d2
	inc l			;60d3
	dec e			;60d4
	rra			;60d5
	inc h			;60d6
	dec l			;60d7
	dec e			;60d8
	rra			;60d9
	inc d			;60da
	ld h,01ch		;60db
	rla			;60dd
	inc de			;60de
	jr z,l610ch		;60df
	ld (00d21h),hl		;60e1
	daa			;60e4
	dec h			;60e5
	inc c			;60e6
	jr nz,l6112h		;60e7
	ld (de),a		;60e9
	add hl,de		;60ea
	dec c			;60eb
	ld hl,(01802h)		;60ec
	ld (bc),a		;60ef
	dec h			;60f0
	xor l			;60f1
	ld l,03ah		;60f2
l60f4h:
	sbc a,h			;60f4
	and b			;60f5
	and d			;60f6
	sbc a,(hl)		;60f7
	sbc a,l			;60f8
	and c			;60f9
	and e			;60fa
	sbc a,a			;60fb
	ld a,(0253fh)		;60fc
	ld a,(03c7ch)		;60ff
	add a,c			;6102
	inc a			;6103
	add a,h			;6104
	ld b,b			;6105
	cpl			;6106
	ld b,b			;6107
	ld a,h			;6108
	or b			;6109
	or d			;610a
	or e			;610b
l610ch:
	ld a,c			;610c
	jr nc,l60b4h		;610d
	ld c,h			;610f
	add a,c			;6110
	inc a			;6111
l6112h:
	add a,c			;6112
	inc a			;6113
	cpl			;6114
	ld b,b			;6115
	cpl			;6116
	ld b,b			;6117
	or h			;6118
	or e			;6119
	or d			;611a
	or b			;611b
	ld h,b			;611c
	ld (hl),d		;611d
	ld a,(hl)		;611e
	ld b,a			;611f
	ld a,h			;6120
	or c			;6121
	ld sp,l796ah		;6122
	jr nc,l60cch		;6125
	ld l,c			;6127
	ld a,h			;6128
	or c			;6129
	ld sp,084b2h		;612a
	sub c			;612d
	ld l,03ah		;612e
	add a,a			;6130
	ld l,e			;6131
	and (hl)		;6132
	ld (hl),08fh		;6133
	ld l,h			;6135
	ld a,(hl)		;6136
	ld b,a			;6137
	dec l			;6138
	or d			;6139
	and (hl)		;613a
	ld (hl),048h		;613b
	sub c			;613d
	ld l,03ah		;613e
	ld a,h			;6140
	inc a			;6141
	add a,c			;6142
	inc a			;6143
	add a,h			;6144
	ld b,b			;6145
	cpl			;6146
	ld b,b			;6147
	ld a,h			;6148
	or b			;6149
	or d			;614a
	or e			;614b
	ld a,c			;614c
	jr nc,l60f4h		;614d
	xor (hl)		;614f
	add a,c			;6150
	inc a			;6151
	add a,c			;6152
	inc a			;6153
	cpl			;6154
	ld b,b			;6155
	cpl			;6156
	ld b,b			;6157
	or h			;6158
	or e			;6159
	or d			;615a
	or b			;615b
	sub e			;615c
	xor h			;615d
	add a,d			;615e
	ld b,a			;615f
	ld a,h			;6160
	dec a			;6161
	dec sp			;6162
	ld a,084h		;6163
	ccf			;6165
	dec h			;6166
	adc a,(hl)		;6167
	ld a,c			;6168
	jr nc,l61e5h		;6169
	ex af,af'		;616b
	inc c			;616c
	ex af,af'		;616d
	add hl,bc		;616e
	dec b			;616f
	ld b,c			;6170
	or l			;6171
	dec sp			;6172
	sub c			;6173
	ld b,d			;6174
	sub b			;6175
	dec h			;6176
	ld a,(00909h)		;6177
	ld a,(hl)		;617a
	ld b,a			;617b
	ld bc,00a01h		;617c
	ld b,07ch		;617f
	or c			;6181
	ld sp,l793dh		;6182
	jr nc,$-89		;6185
	sub c			;6187
	ld a,h			;6188
	or c			;6189
	ld sp,084b2h		;618a
	xor l			;618d
	ld l,03ah		;618e
	dec h			;6190
	ccf			;6191
	ld c,c			;6192
	ld (hl),025h		;6193
	xor h			;6195
	add a,d			;6196
	ld b,a			;6197
	ld a,(0493dh)		;6198
	ld (hl),03ah		;619b
	xor (hl)		;619d
	ld l,03ah		;619e
	ld hl,0151ah		;61a0
	djnz l61b1h		;61a3
	jr nz,l61c5h		;61a5
	ld a,(de)		;61a7
	add hl,de		;61a8
	ld a,(de)		;61a9
	dec d			;61aa
	ld de,00218h		;61ab
	ld (bc),a		;61ae
	ld (bc),a		;61af
	ld (bc),a		;61b0
l61b1h:
	ld (bc),a		;61b1
	ld a,(de)		;61b2
	ld (bc),a		;61b3
	dec d			;61b4
	dec d			;61b5
	jr nz,l61d6h		;61b6
	ld (bc),a		;61b8
	ld (bc),a		;61b9
	ld a,(de)		;61ba
	dec d			;61bb
	ld (bc),a		;61bc
	ld (bc),a		;61bd
	ld (bc),a		;61be
	ld (bc),a		;61bf
	nop			;61c0
	nop			;61c1
	nop			;61c2
	nop			;61c3
	and a			;61c4
l61c5h:
	add a,c			;61c5
	inc a			;61c6
	add a,c			;61c7
	jr z,l61f9h		;61c8
	ld b,b			;61ca
	cpl			;61cb
	ld e,e			;61cc
	adc a,c			;61cd
	ld l,b			;61ce
	or h			;61cf
	nop			;61d0
	nop			;61d1
	nop			;61d2
	nop			;61d3
	inc a			;61d4
	add a,c			;61d5
l61d6h:
	inc a			;61d6
	add a,c			;61d7
	ld b,b			;61d8
	cpl			;61d9
	ld b,b			;61da
	cpl			;61db
	ld h,d			;61dc
	or d			;61dd
	add a,(hl)		;61de
	or d			;61df
	ld a,e			;61e0
	ld a,l			;61e1
	ld h,a			;61e2
	adc a,d			;61e3
	ld e,e			;61e4
l61e5h:
	adc a,c			;61e5
	ld h,(hl)		;61e6
	ld l,(hl)		;61e7
	adc a,b			;61e8
	adc a,e			;61e9
	ld e,c			;61ea
	ld d,l			;61eb
	add a,l			;61ec
	sbc a,b			;61ed
	ld (hl),c		;61ee
	ld l,a			;61ef
	ld d,e			;61f0
	adc a,h			;61f1
	ld e,l			;61f2
	ld e,(hl)		;61f3
	ld d,a			;61f4
	ld d,(hl)		;61f5
	ld e,h			;61f6
	ld e,a			;61f7
	ld e,b			;61f8
l61f9h:
	ld d,h			;61f9
	ld e,d			;61fa
	ld (hl),b		;61fb
	ld h,l			;61fc
	ld c,l			;61fd
	ld (hl),a		;61fe
	and h			;61ff
	ld h,02eh		;6200
	xor l			;6202
	ld l,027h		;6203
	dec sp			;6205
	adc a,l			;6206
	ld a,078h		;6207
	ld a,c			;6209
	jr nc,$-112		;620a
	ld h,009h		;620c
	add hl,bc		;620e
	ex af,af'		;620f
l6210h:
	ld h,e			;6210
	xor l			;6211
	ld l,03ah		;6212
	ld b,c			;6214
	or l			;6215
	dec sp			;6216
	xor a			;6217
	ld b,d			;6218
	sub b			;6219
	ld a,(hl)		;621a
	ld b,a			;621b
	add hl,bc		;621c
	add hl,bc		;621d
	ld a,(bc)		;621e
	ld b,00ch		;621f
	ex af,af'		;6221
	add hl,bc		;6222
	dec b			;6223
	ld hl,0151ah		;6224
	djnz l6235h		;6227
	jr nz,$+32		;6229
	dec c			;622b
	dec d			;622c
	ld a,(de)		;622d
	dec d			;622e
	ld de,00101h		;622f
	ld a,(bc)		;6232
	ld b,016h		;6233
l6235h:
	ld d,00dh		;6235
	ld (bc),a		;6237
	ld a,(de)		;6238
	dec d			;6239
	jr nz,l625ah		;623a
	ld (bc),a		;623c
	ld (bc),a		;623d
	dec c			;623e
	dec d			;623f
	nop			;6240
	nop			;6241
	nop			;6242
	nop			;6243
	and a			;6244
	add a,c			;6245
	inc a			;6246
	add a,c			;6247
	jr z,l6279h		;6248
	ld b,b			;624a
	cpl			;624b
	ld a,h			;624c
	or d			;624d
	or e			;624e
	or h			;624f
	nop			;6250
	nop			;6251
	nop			;6252
	nop			;6253
l6254h:
	inc a			;6254
	add a,c			;6255
	inc a			;6256
	add a,c			;6257
	ld b,b			;6258
	cpl			;6259
l625ah:
	ld b,b			;625a
	cpl			;625b
	or e			;625c
	or h			;625d
	or e			;625e
	or d			;625f
	ld a,c			;6260
sub_6261h:
	jr nc,l62ddh		;6261
	xor (hl)		;6263
	ld a,h			;6264
	or c			;6265
	ld sp,l793dh		;6266
	jr nc,l6210h		;6269
	sub c			;626b
	ld a,h			;626c
	or c			;626d
	ld sp,093b2h		;626e
	xor h			;6271
	add a,d			;6272
	ld b,a			;6273
	dec h			;6274
	dec a			;6275
	ld c,c			;6276
	ld (hl),025h		;6277
l6279h:
	xor h			;6279
	add a,d			;627a
	ld b,a			;627b
	ld a,(0493dh)		;627c
	ld (hl),084h		;627f
	xor l			;6281
	ld l,03ah		;6282
	ld a,h			;6284
	adc a,l			;6285
	dec sp			;6286
	ld a,084h		;6287
	dec a			;6289
	dec h			;628a
	adc a,(hl)		;628b
	ld a,c			;628c
	jr nc,$+124		;628d
	ex af,af'		;628f
	ld a,(02eaeh)		;6290
	ld a,(0b541h)		;6293
	dec sp			;6296
	sub c			;6297
	ld b,d			;6298
	sub b			;6299
	dec h			;629a
	ld a,(00909h)		;629b
	ld a,(hl)		;629e
	ld b,a			;629f
	ld a,c			;62a0
	jr nc,l631dh		;62a1
	xor l			;62a3
	or c			;62a4
	ld sp,0a09ch		;62a5
	or c			;62a8
	ld sp,0a19dh		;62a9
	ld a,c			;62ac
	jr nc,l6254h		;62ad
	ccf			;62af
	ld l,03ah		;62b0
	add a,d			;62b2
	ld b,a			;62b3
	and d			;62b4
	sbc a,(hl)		;62b5
	ld c,c			;62b6
	ld (hl),0a3h		;62b7
	sbc a,a			;62b9
	add a,d			;62ba
	ld b,a			;62bb
	dec h			;62bc
	ld a,(03649h)		;62bd
	nop			;62c0
	nop			;62c1
	nop			;62c2
	nop			;62c3
	nop			;62c4
	nop			;62c5
	ld c,e			;62c6
	ld (00000h),a		;62c7
	ld h,c			;62ca
	ld c,(hl)		;62cb
	nop			;62cc
	nop			;62cd
	ld l,l			;62ce
	ld d,c			;62cf
	nop			;62d0
	nop			;62d1
	nop			;62d2
	nop			;62d3
	nop			;62d4
	nop			;62d5
	nop			;62d6
	nop			;62d7
	ld c,a			;62d8
	nop			;62d9
	nop			;62da
	nop			;62db
	ld (hl),l		;62dc
l62ddh:
	nop			;62dd
	nop			;62de
	nop			;62df
	add a,c			;62e0
	xor c			;62e1
	ld h,h			;62e2
	ld d,b			;62e3
	cpl			;62e4
	or (hl)			;62e5
	ld d,d			;62e6
	sub (hl)		;62e7
	or d			;62e8
	xor d			;62e9
	or a			;62ea
	cp b			;62eb
	or b			;62ec
	sub d			;62ed
	ld (hl),h		;62ee
	sub a			;62ef
	halt			;62f0
	ld a,h			;62f1
	ld b,l			;62f2
	add hl,hl		;62f3
	sbc a,c			;62f4
	add a,h			;62f5
	ld (0a846h),hl		;62f6
	ld a,h			;62f9
	inc l			;62fa
	inc h			;62fb
	sbc a,e			;62fc
	ld a,c			;62fd
	ld hl,(0b22bh)		;62fe
	xor c			;6301
	ld d,d			;6302
	add a,e			;6303
	or b			;6304
	or (hl)			;6305
	or a			;6306
	cp b			;6307
	ld l,0aah		;6308
	cp c			;630a
	sub a			;630b
	dec sp			;630c
	sub d			;630d
	cp d			;630e
	ld e,099h		;630f
	jr nz,l6334h		;6311
	ld b,(hl)		;6313
	xor b			;6314
	ld a,c			;6315
	inc sp			;6316
	inc hl			;6317
	sbc a,e			;6318
	ld a,h			;6319
	inc sp			;631a
	inc hl			;631b
	ld c,d			;631c
l631dh:
	add a,h			;631d
	ld b,e			;631e
	inc (hl)		;631f
	add hl,bc		;6320
	xor c			;6321
	sub h			;6322
	sub l			;6323
	ld bc,0b737h		;6324
	cp b			;6327
	add hl,bc		;6328
	add hl,sp		;6329
	cp c			;632a
	sub a			;632b
	ld bc,0ba38h		;632c
	ld e,0abh		;632f
	ld a,h			;6331
	ld b,e			;6332
	inc (hl)		;6333
l6334h:
	xor b			;6334
	add a,h			;6335
	ld b,h			;6336
	dec (hl)		;6337
	sbc a,e			;6338
	ld a,c			;6339
	ld b,h			;633a
	dec (hl)		;633b
	ld c,d			;633c
	inc c			;633d
	inc b			;633e
	inc bc			;633f
	ld (bc),a		;6340
	inc hl			;6341
	inc l			;6342
	dec hl			;6343
	jr nz,l636ah		;6344
	dec l			;6346
	daa			;6347
	dec c			;6348
	inc d			;6349
	ld h,029h		;634a
	dec c			;634c
	inc de			;634d
	jr z,l637ah		;634e
	ld (00421h),hl		;6350
	inc bc			;6353
	dec h			;6354
	inc c			;6355
	ld (bc),a		;6356
	ld (bc),a		;6357
	ld (de),a		;6358
	add hl,de		;6359
	ld (bc),a		;635a
	ld (bc),a		;635b
	ld (bc),a		;635c
	jr l6361h		;635d
	ld (bc),a		;635f
	nop			;6360
l6361h:
	nop			;6361
	nop			;6362
	nop			;6363
	nop			;6364
	nop			;6365
	nop			;6366
	ld c,e			;6367
	nop			;6368
	nop			;6369
l636ah:
	nop			;636a
	ld h,c			;636b
	nop			;636c
	nop			;636d
	nop			;636e
	ld l,l			;636f
l6370h:
	nop			;6370
	nop			;6371
	nop			;6372
	nop			;6373
	ld (00000h),a		;6374
	nop			;6377
	ld c,(hl)		;6378
	ld c,a			;6379
l637ah:
	nop			;637a
	nop			;637b
	ld d,c			;637c
	ld (hl),l		;637d
	nop			;637e
	nop			;637f
	rra			;6380
	ld (hl),e		;6381
	xor c			;6382
	ld h,h			;6383
	dec d			;6384
	ld d,0b6h		;6385
	ld d,d			;6387
	rla			;6388
	inc e			;6389
l638ah:
	xor d			;638a
	or a			;638b
	jr l63a7h		;638c
	sub d			;638e
	ld (hl),h		;638f
	ld d,b			;6390
	halt			;6391
	ld a,h			;6392
	inc a			;6393
	sub (hl)		;6394
	sbc a,c			;6395
	add a,h			;6396
	ld b,b			;6397
	cp b			;6398
	xor b			;6399
	ld a,h			;639a
	or b			;639b
	sub a			;639c
	sbc a,e			;639d
	ld a,c			;639e
	jr nc,l63b5h		;639f
	ld de,052a9h		;63a1
	inc de			;63a4
	dec de			;63a5
	or (hl)			;63a6
l63a7h:
	or a			;63a7
	inc de			;63a8
	dec de			;63a9
	xor d			;63aa
	cp c			;63ab
	ld (de),a		;63ac
	dec e			;63ad
	sub d			;63ae
	cp d			;63af
	sub l			;63b0
	xor e			;63b1
	ld a,h			;63b2
	adc a,l			;63b3
	cp b			;63b4
l63b5h:
	xor b			;63b5
	add a,h			;63b6
	dec a			;63b7
	sub a			;63b8
	sbc a,e			;63b9
	ld a,c			;63ba
	jr nc,l63dbh		;63bb
	ld c,d			;63bd
	inc c			;63be
	ex af,af'		;63bf
	ld (de),a		;63c0
	dec e			;63c1
	xor c			;63c2
	sub h			;63c3
	djnz l63e0h		;63c4
	scf			;63c6
	or a			;63c7
	add a,b			;63c8
	ld a,a			;63c9
	add hl,sp		;63ca
	cp c			;63cb
	rlca			;63cc
	dec bc			;63cd
	jr c,l638ah		;63ce
	sub (hl)		;63d0
	sbc a,c			;63d1
	ld a,h			;63d2
	or c			;63d3
	cp b			;63d4
	xor b			;63d5
	ld a,c			;63d6
	jr nc,l6370h		;63d7
	sbc a,e			;63d9
	ld a,h			;63da
l63dbh:
	or c			;63db
	ld e,04ah		;63dc
	add a,h			;63de
	xor l			;63df
l63e0h:
	nop			;63e0
	nop			;63e1
	ld a,b			;63e2
	ret nz			;63e3
	nop			;63e4
	ld sp,l707eh		;63e5
	nop			;63e8
	nop			;63e9
	ld a,d			;63ea
	ld a,e			;63eb
	nop			;63ec
	nop			;63ed
	nop			;63ee
	nop			;63ef
	ld b,l			;63f0
	ld c,e			;63f1
	ld b,a			;63f2
	ld c,e			;63f3
	halt			;63f4
	ld (hl),a		;63f5
	ld h,e			;63f6
	ld h,e			;63f7
	or h			;63f8
	ld l,b			;63f9
	ld (hl),d		;63fa
	add a,e			;63fb
	or d			;63fc
	ld d,e			;63fd
	ld d,c			;63fe
	ld c,a			;63ff
	ld b,a			;6400
	ld c,e			;6401
	ld b,a			;6402
	ld c,c			;6403
	ld e,d			;6404
	ld h,c			;6405
	ld (hl),c		;6406
	ld e,d			;6407
	add a,h			;6408
	add a,(hl)		;6409
	add a,l			;640a
	add a,h			;640b
	ld d,b			;640c
	ld d,d			;640d
	ld c,l			;640e
	ld c,a			;640f
	ld c,d			;6410
	ld c,c			;6411
	ld b,a			;6412
	ld b,(hl)		;6413
	ld h,c			;6414
	ld (hl),c		;6415
	ld e,d			;6416
	ld h,d			;6417
	add a,(hl)		;6418
	add a,l			;6419
	add a,h			;641a
	add a,(hl)		;641b
	ld d,b			;641c
	ld d,d			;641d
	ld c,l			;641e
	ld c,a			;641f
	ld b,a			;6420
	ld c,e			;6421
	ld b,a			;6422
	ld b,(hl)		;6423
	halt			;6424
	ld (hl),a		;6425
	ld h,e			;6426
	ld h,e			;6427
	or h			;6428
	ld l,b			;6429
	ld (hl),d		;642a
	add a,e			;642b
	or d			;642c
	ld d,e			;642d
	ld d,c			;642e
	ld c,a			;642f
	ld c,b			;6430
	ld c,e			;6431
	ld b,a			;6432
	ld c,c			;6433
	ld e,d			;6434
	ld h,c			;6435
	ld (hl),c		;6436
	ld e,d			;6437
	add a,h			;6438
	add a,(hl)		;6439
	add a,l			;643a
	add a,h			;643b
	ld d,b			;643c
	ld d,d			;643d
	ld c,l			;643e
	ld c,a			;643f
	ld c,b			;6440
	ld c,e			;6441
	ld b,a			;6442
	ld c,e			;6443
	ld h,e			;6444
	ld h,e			;6445
	ld a,b			;6446
	ld a,c			;6447
	add a,d			;6448
	ld e,e			;6449
	ld a,l			;644a
	or l			;644b
	ld d,b			;644c
	ld l,e			;644d
	ld l,d			;644e
	or e			;644f
	nop			;6450
	sbc a,c			;6451
	sbc a,h			;6452
	adc a,(hl)		;6453
	cp l			;6454
	cp (hl)			;6455
	and l			;6456
	sub c			;6457
	call nz,0bfc3h		;6458
	push bc			;645b
	nop			;645c
	nop			;645d
	nop			;645e
	nop			;645f
	sub d			;6460
	sub h			;6461
	sub b			;6462
	adc a,(hl)		;6463
	sub a			;6464
	jp nz,091a5h		;6465
	call nz,0c1c0h		;6468
	push bc			;646b
	nop			;646c
	nop			;646d
	nop			;646e
	nop			;646f
	sub d			;6470
	sub h			;6471
	sub b			;6472
	adc a,(hl)		;6473
	sbc a,b			;6474
	cp (hl)			;6475
	and l			;6476
	sub c			;6477
	call nz,0bfc3h		;6478
	push bc			;647b
	nop			;647c
	nop			;647d
	nop			;647e
	nop			;647f
	sub d			;6480
	sbc a,l			;6481
	sbc a,e			;6482
	nop			;6483
	sub a			;6484
	jp nz,0babbh		;6485
	call nz,0c1c0h		;6488
	push bc			;648b
	nop			;648c
	nop			;648d
	nop			;648e
	nop			;648f
	ld b,a			;6490
	ld c,e			;6491
	ld b,a			;6492
	ld c,e			;6493
	halt			;6494
	ld (hl),a		;6495
	ld h,e			;6496
	ld h,e			;6497
	or h			;6498
	ld l,b			;6499
	ld (hl),d		;649a
	add a,e			;649b
	or d			;649c
	ld d,e			;649d
	ld d,c			;649e
	ld c,a			;649f
	ld b,a			;64a0
	ld c,e			;64a1
	ld b,a			;64a2
	ld c,e			;64a3
	ld (hl),h		;64a4
	ld l,a			;64a5
	add a,c			;64a6
	add a,b			;64a7
	ld e,l			;64a8
	ld e,(hl)		;64a9
	ld d,l			;64aa
	ld d,a			;64ab
	ld e,a			;64ac
	ld h,b			;64ad
	ld d,(hl)		;64ae
	ld e,b			;64af
	ld b,a			;64b0
	ld c,e			;64b1
	ld b,a			;64b2
	ld c,e			;64b3
	add a,c			;64b4
	add a,b			;64b5
	ld (hl),h		;64b6
	ld l,a			;64b7
	ld d,l			;64b8
	ld d,a			;64b9
	ld e,l			;64ba
	ld e,(hl)		;64bb
	ld d,(hl)		;64bc
	ld e,b			;64bd
	ld e,a			;64be
	ld h,b			;64bf
	nop			;64c0
	nop			;64c1
	nop			;64c2
	nop			;64c3
	add a,c			;64c4
	add a,b			;64c5
	ld (hl),h		;64c6
	ld l,a			;64c7
	ld d,l			;64c8
	ld d,a			;64c9
	ld e,l			;64ca
	ld e,(hl)		;64cb
	ld d,(hl)		;64cc
	ld e,b			;64cd
	ld e,a			;64ce
	ld h,b			;64cf
	ld b,a			;64d0
	ld c,e			;64d1
	ld b,a			;64d2
	ld c,h			;64d3
	add a,c			;64d4
	add a,b			;64d5
	add a,c			;64d6
	add a,b			;64d7
	ld d,l			;64d8
	ld d,a			;64d9
	ld d,l			;64da
	ld d,a			;64db
	ld d,(hl)		;64dc
	ld e,b			;64dd
	ld d,(hl)		;64de
	ld e,b			;64df
	nop			;64e0
	nop			;64e1
	nop			;64e2
	nop			;64e3
	ld a,h			;64e4
	ld a,h			;64e5
	adc a,c			;64e6
	ld a,h			;64e7
	ld d,h			;64e8
	ld e,c			;64e9
	ld d,h			;64ea
	ld e,c			;64eb
	ld a,a			;64ec
	ld a,a			;64ed
	add a,a			;64ee
	ld a,a			;64ef
	nop			;64f0
	nop			;64f1
	nop			;64f2
	nop			;64f3
	ld (hl),h		;64f4
	ld l,a			;64f5
	ld (hl),h		;64f6
	ld l,a			;64f7
	ld e,l			;64f8
	ld e,(hl)		;64f9
	ld e,l			;64fa
	ld e,(hl)		;64fb
	ld e,a			;64fc
	ld h,b			;64fd
	ld e,a			;64fe
	ld h,b			;64ff
	ld b,a			;6500
	ld e,a			;6501
	ld (hl),b		;6502
	ld (hl),b		;6503
	add a,c			;6504
	ld h,h			;6505
	ld (hl),l		;6506
	ld (hl),l		;6507
	ld d,l			;6508
	ld h,l			;6509
	adc a,b			;650a
	adc a,b			;650b
	ld d,(hl)		;650c
	ld e,b			;650d
	ld e,a			;650e
	ld h,b			;650f
	ld (hl),b		;6510
	ld (hl),b		;6511
	push bc			;6512
	ld c,e			;6513
	ld (hl),l		;6514
	ld (hl),l		;6515
	ld h,a			;6516
	add a,b			;6517
	adc a,b			;6518
	adc a,b			;6519
	ld h,(hl)		;651a
	ld d,a			;651b
	ld e,a			;651c
	ld h,b			;651d
	ld d,(hl)		;651e
	ld e,b			;651f
	nop			;6520
	nop			;6521
	nop			;6522
	nop			;6523
	ld (hl),h		;6524
	ld l,a			;6525
	add a,c			;6526
	add a,b			;6527
	ld e,l			;6528
	ld e,(hl)		;6529
	ld d,l			;652a
	ld d,a			;652b
	ld e,a			;652c
	ld h,b			;652d
	ld d,(hl)		;652e
	ld e,b			;652f
	ld b,l			;6530
	ld c,e			;6531
	ld b,a			;6532
	ld c,e			;6533
	ld (hl),h		;6534
	ld l,a			;6535
	add a,c			;6536
	add a,b			;6537
	ld e,l			;6538
	ld e,(hl)		;6539
	ld d,l			;653a
	ld d,a			;653b
	ld e,a			;653c
	ld h,b			;653d
	ld d,(hl)		;653e
	ld e,b			;653f
	ld b,a			;6540
	ld c,e			;6541
	ld b,a			;6542
	ld c,h			;6543
	add a,c			;6544
	add a,b			;6545
	ld (hl),h		;6546
	ld l,a			;6547
	ld d,l			;6548
	ld d,a			;6549
	ld e,l			;654a
	ld e,(hl)		;654b
	ld d,(hl)		;654c
	ld e,b			;654d
	ld e,a			;654e
	ld h,b			;654f
	nop			;6550
	ld d,e			;6551
	ld e,(hl)		;6552
	ld l,l			;6553
	ld e,l			;6554
	ld l,c			;6555
	ld e,d			;6556
	ld c,a			;6557
	ld a,c			;6558
	ld l,c			;6559
	ld e,d			;655a
	ld c,a			;655b
	ld c,(hl)		;655c
	ld d,l			;655d
	ld c,(hl)		;655e
	ld d,l			;655f
	ld h,h			;6560
	nop			;6561
	nop			;6562
	nop			;6563
	ld h,a			;6564
	ld l,a			;6565
	ld e,l			;6566
	ld l,a			;6567
	ld h,a			;6568
	ld d,a			;6569
	ld a,c			;656a
	ld d,a			;656b
	ld c,(hl)		;656c
	ld d,l			;656d
	ld c,(hl)		;656e
	add a,d			;656f
	nop			;6570
	nop			;6571
	nop			;6572
	nop			;6573
	nop			;6574
	nop			;6575
	nop			;6576
	nop			;6577
	nop			;6578
	nop			;6579
	nop			;657a
	nop			;657b
	ld d,e			;657c
	ld e,(hl)		;657d
	ld l,l			;657e
	ld h,h			;657f
	nop			;6580
	nop			;6581
	nop			;6582
	nop			;6583
	nop			;6584
	nop			;6585
	nop			;6586
	nop			;6587
	nop			;6588
	nop			;6589
	nop			;658a
	nop			;658b
	cp d			;658c
	nop			;658d
	nop			;658e
	nop			;658f
	dec (hl)		;6590
	ld e,e			;6591
	ld (hl),h		;6592
	add a,c			;6593
	ld (hl),0c1h		;6594
	ld a,h			;6596
	ld a,l			;6597
	ld (03c44h),a		;6598
	dec a			;659b
	nop			;659c
	cp e			;659d
	ld a,03bh		;659e
	jr c,l65e3h		;65a0
	ld b,b			;65a2
	add hl,sp		;65a3
	inc sp			;65a4
	scf			;65a5
	ccf			;65a6
	ld b,d			;65a7
	inc (hl)		;65a8
	dec a			;65a9
	ld a,(05443h)		;65aa
	ld d,l			;65ad
	ld c,(hl)		;65ae
	ld d,l			;65af
	ld l,c			;65b0
	ld e,d			;65b1
	ld c,a			;65b2
	ld h,a			;65b3
	ld l,c			;65b4
	ld e,d			;65b5
	ld c,a			;65b6
	ld h,a			;65b7
	ld l,c			;65b8
	ld e,d			;65b9
	ld c,a			;65ba
	ld h,a			;65bb
	ld l,e			;65bc
	ld d,l			;65bd
	ld c,(hl)		;65be
	ld d,l			;65bf
	nop			;65c0
	nop			;65c1
	nop			;65c2
	nop			;65c3
	nop			;65c4
	nop			;65c5
	nop			;65c6
	nop			;65c7
	cp h			;65c8
	jp nz,l6f5dh		;65c9
	ld c,(hl)		;65cc
	ld d,l			;65cd
	ld c,(hl)		;65ce
	add a,d			;65cf
	nop			;65d0
	nop			;65d1
	nop			;65d2
	nop			;65d3
	cp h			;65d4
	jp nz,l6f5dh		;65d5
	halt			;65d8
	ld e,b			;65d9
	ld a,c			;65da
	ld d,a			;65db
	ld l,e			;65dc
	ld d,l			;65dd
	ld c,(hl)		;65de
	ld d,l			;65df
	nop			;65e0
	nop			;65e1
	nop			;65e2
l65e3h:
	nop			;65e3
	ld e,l			;65e4
	ld l,a			;65e5
	ld e,l			;65e6
	ld l,a			;65e7
	ld a,c			;65e8
	ld d,a			;65e9
	ld a,c			;65ea
	ld d,a			;65eb
	ld c,(hl)		;65ec
	ld d,l			;65ed
	ld c,(hl)		;65ee
	ld d,l			;65ef
	nop			;65f0
	nop			;65f1
	nop			;65f2
	cp h			;65f3
	ld e,l			;65f4
	ld l,a			;65f5
	ld e,l			;65f6
	ld l,a			;65f7
	ld a,c			;65f8
	ld d,a			;65f9
	ld a,c			;65fa
	ld d,a			;65fb
	ld c,(hl)		;65fc
	ld d,l			;65fd
	ld c,(hl)		;65fe
	ld d,l			;65ff
	nop			;6600
	nop			;6601
	nop			;6602
	nop			;6603
	cp h			;6604
	jp nz,l6f5dh		;6605
	halt			;6608
	ld e,b			;6609
	ld a,c			;660a
	ld d,a			;660b
	ld c,(hl)		;660c
	ld d,l			;660d
	ld c,(hl)		;660e
	ld d,l			;660f
	nop			;6610
	nop			;6611
	nop			;6612
	nop			;6613
	jp 000bdh		;6614
	nop			;6617
	ld l,(hl)		;6618
	ld d,(hl)		;6619
	jp 04e00h		;661a
	ld d,l			;661d
	ld c,(hl)		;661e
	ld c,l			;661f
	nop			;6620
	nop			;6621
	nop			;6622
	nop			;6623
	nop			;6624
	nop			;6625
	nop			;6626
	nop			;6627
	nop			;6628
	nop			;6629
	nop			;662a
	nop			;662b
	ld c,(hl)		;662c
	ld d,l			;662d
	ld c,(hl)		;662e
	ld c,l			;662f
	nop			;6630
	nop			;6631
	nop			;6632
	nop			;6633
	nop			;6634
	nop			;6635
	nop			;6636
	nop			;6637
	nop			;6638
	nop			;6639
	nop			;663a
	ld d,e			;663b
	nop			;663c
	nop			;663d
	nop			;663e
	ld l,c			;663f
	nop			;6640
	nop			;6641
	nop			;6642
	nop			;6643
	nop			;6644
	nop			;6645
	nop			;6646
	nop			;6647
	ld e,(hl)		;6648
	ld l,l			;6649
	ld h,h			;664a
	nop			;664b
	ld e,d			;664c
	ld c,a			;664d
	ld h,a			;664e
	nop			;664f
	ld a,(03a3ah)		;6650
	ld a,(03a3ah)		;6653
	ld a,(03a3ah)		;6656
	ld a,(03a3ah)		;6659
	ld a,(0353bh)		;665c
	add a,e			;665f
	ld h,h			;6660
	nop			;6661
	nop			;6662
	nop			;6663
	ld h,a			;6664
	jp 000bdh		;6665
	ld h,a			;6668
	ld l,(hl)		;6669
	ld d,(hl)		;666a
	jp 0554eh		;666b
	ld c,(hl)		;666e
	add a,d			;666f
	nop			;6670
	nop			;6671
	nop			;6672
	ld l,c			;6673
	ld e,l			;6674
	ld l,a			;6675
	ld e,l			;6676
	ld l,a			;6677
	ld a,c			;6678
	ld d,a			;6679
	ld a,c			;667a
	ld d,a			;667b
	ld c,(hl)		;667c
	ld d,l			;667d
	ld c,(hl)		;667e
	add a,d			;667f
	ld (03c44h),a		;6680
	dec a			;6683
	nop			;6684
	cp e			;6685
	ld a,03bh		;6686
	nop			;6688
	nop			;6689
	ld a,b			;668a
	ret nz			;668b
	nop			;668c
	ld sp,l6c7ah		;668d
	inc (hl)		;6690
	dec a			;6691
	ld a,(03b43h)		;6692
	ld e,c			;6695
	ld e,c			;6696
	nop			;6697
	ret nz			;6698
	ccf			;6699
	ld b,d			;669a
	jp 03a6ch		;669b
	ld b,e			;669e
	ld l,(hl)		;669f
	nop			;66a0
	nop			;66a1
	nop			;66a2
	nop			;66a3
	nop			;66a4
	nop			;66a5
	nop			;66a6
	nop			;66a7
	cp l			;66a8
	nop			;66a9
	nop			;66aa
	nop			;66ab
	ld d,(hl)		;66ac
	jp 00000h		;66ad
	ld e,d			;66b0
	ld a,e			;66b1
	cp a			;66b2
	ld (hl),e		;66b3
	ld e,l			;66b4
	add a,h			;66b5
	cp (hl)			;66b6
	ld e,e			;66b7
	ld h,l			;66b8
	ld d,c			;66b9
	ld e,h			;66ba
	pop bc			;66bb
	ld l,e			;66bc
	ld d,l			;66bd
	ld c,(hl)		;66be
	ld d,l			;66bf
	ld l,d			;66c0
	ld l,d			;66c1
	ld l,d			;66c2
	ld a,a			;66c3
	ld (hl),b		;66c4
	ld (hl),b		;66c5
	ld (hl),b		;66c6
	push bc			;66c7
	ld (hl),c		;66c8
	ld (hl),c		;66c9
	ld (hl),c		;66ca
	ld h,e			;66cb
	ld (hl),d		;66cc
	ld (hl),d		;66cd
	ld (hl),d		;66ce
	ld h,d			;66cf
	add a,b			;66d0
	call nz,0c37eh		;66d1
	add a,e			;66d4
	add a,l			;66d5
	ld d,b			;66d6
	ld l,a			;66d7
	add a,e			;66d8
	ld (hl),l		;66d9
	ld d,d			;66da
	ld h,(hl)		;66db
	ld c,(hl)		;66dc
	ld d,l			;66dd
	ld c,(hl)		;66de
	ld d,l			;66df
	jp nz,0bf7bh		;66e0
	ld (hl),e		;66e3
	ld e,l			;66e4
	add a,h			;66e5
	cp (hl)			;66e6
	ld e,e			;66e7
	ld h,l			;66e8
	ld d,c			;66e9
	ld e,h			;66ea
	pop bc			;66eb
	ld c,(hl)		;66ec
	ld d,l			;66ed
	ld c,(hl)		;66ee
	ld d,l			;66ef
	ld (hl),a		;66f0
	ld (hl),a		;66f1
	ld l,d			;66f2
	ld l,d			;66f3
	ld (hl),h		;66f4
	add a,c			;66f5
	ld e,a			;66f6
	ld (hl),b		;66f7
	ld a,h			;66f8
	ld a,l			;66f9
	ld h,b			;66fa
	ld (hl),c		;66fb
	ld c,(hl)		;66fc
	ld d,l			;66fd
	ld h,c			;66fe
	ld (hl),d		;66ff
	nop			;6700
	nop			;6701
	nop			;6702
	nop			;6703
	nop			;6704
	nop			;6705
	nop			;6706
	nop			;6707
	nop			;6708
	nop			;6709
	nop			;670a
	nop			;670b
	ld d,h			;670c
	ld d,l			;670d
	ld c,(hl)		;670e
	ld d,l			;670f
	nop			;6710
	nop			;6711
	nop			;6712
	nop			;6713
	nop			;6714
	nop			;6715
	nop			;6716
	nop			;6717
	nop			;6718
	nop			;6719
	nop			;671a
	nop			;671b
	ld l,e			;671c
	ld d,l			;671d
	ld c,(hl)		;671e
	ld d,l			;671f
	nop			;6720
	nop			;6721
	ld (00039h),a		;6722
	nop			;6725
	inc sp			;6726
	ld a,000h		;6727
	ld (03c39h),a		;6729
	nop			;672c
	inc sp			;672d
	ld a,03dh		;672e
	inc a			;6730
	scf			;6731
	jr c,l676eh		;6732
	dec a			;6734
	inc (hl)		;6735
	ld (hl),03ah		;6736
	scf			;6738
	jr c,l6775h		;6739
	ld a,(03634h)		;673b
	dec sp			;673e
	dec (hl)		;673f
	inc a			;6740
	scf			;6741
	jr c,l677eh		;6742
	dec a			;6744
	inc (hl)		;6745
	ld (hl),03ah		;6746
	scf			;6748
	jr c,l6785h		;6749
	ld a,(03634h)		;674b
	dec sp			;674e
	dec (hl)		;674f
	ld a,(03a3ah)		;6750
	ld a,(03a3ah)		;6753
	ld a,(03a3ah)		;6756
	ld a,(03a3ah)		;6759
	add a,e			;675c
	dec sp			;675d
	dec (hl)		;675e
	add a,e			;675f
	nop			;6760
	nop			;6761
	nop			;6762
	nop			;6763
	nop			;6764
	nop			;6765
	cp e			;6766
	ld b,b			;6767
	nop			;6768
	nop			;6769
	cp h			;676a
	ld b,d			;676b
	nop			;676c
	nop			;676d
l676eh:
	nop			;676e
	nop			;676f
	nop			;6770
	nop			;6771
	nop			;6772
	nop			;6773
	ld b,c			;6774
l6775h:
	ld b,h			;6775
	ld c,c			;6776
	ld b,l			;6777
	ld b,e			;6778
	ld c,e			;6779
	ld c,d			;677a
	ccf			;677b
	nop			;677c
	cp l			;677d
l677eh:
	ret nz			;677e
	ld c,h			;677f
	halt			;6780
	ld e,b			;6781
	ld a,c			;6782
	ld d,a			;6783
	ld b,a			;6784
l6785h:
	ld b,a			;6785
	ld b,l			;6786
	ld b,a			;6787
	ld b,(hl)		;6788
	ld c,b			;6789
	ld b,(hl)		;678a
	ccf			;678b
	ld c,l			;678c
	ld c,(hl)		;678d
	add a,(hl)		;678e
	add a,a			;678f
	ld a,c			;6790
	ld d,a			;6791
	ld a,c			;6792
	ld d,a			;6793
	ld b,a			;6794
	ld b,a			;6795
	ld b,a			;6796
	ld b,a			;6797
	ccf			;6798
	ld b,(hl)		;6799
	ld c,b			;679a
	ld b,(hl)		;679b
	add a,a			;679c
	add a,a			;679d
	add a,a			;679e
	add a,a			;679f
	nop			;67a0
	ld (03c39h),a		;67a1
	nop			;67a4
	inc sp			;67a5
	ld a,03dh		;67a6
	ld (03c39h),a		;67a8
	scf			;67ab
	inc sp			;67ac
	ld a,03dh		;67ad
	inc (hl)		;67af
	scf			;67b0
	jr c,l67edh		;67b1
	ld a,(03634h)		;67b3
	ld a,(0383ah)		;67b6
	ld a,(03a3ah)		;67b9
	ld (hl),03bh		;67bc
	dec (hl)		;67be
	add a,e			;67bf
	ld a,(03a3ah)		;67c0
	ld a,(03a3ah)		;67c3
	ld a,(03a3ah)		;67c6
	ld a,(03a3ah)		;67c9
	dec sp			;67cc
	dec (hl)		;67cd
	add a,e			;67ce
	ld a,(05a69h)		;67cf
	ld c,a			;67d2
	ld h,a			;67d3
	ld b,a			;67d4
	ld b,a			;67d5
	ld b,a			;67d6
	ld b,a			;67d7
	ccf			;67d8
	ld b,(hl)		;67d9
	ld c,b			;67da
	ld b,(hl)		;67db
	add a,a			;67dc
	add a,a			;67dd
	add a,a			;67de
	add a,a			;67df
	ld a,c			;67e0
	ld e,a			;67e1
	ld (hl),b		;67e2
	ld (hl),b		;67e3
	ld b,a			;67e4
	ld h,b			;67e5
	ld (hl),c		;67e6
	ld (hl),c		;67e7
	ccf			;67e8
	ld h,c			;67e9
	ld (hl),d		;67ea
	ld (hl),d		;67eb
	add a,a			;67ec
l67edh:
	add a,a			;67ed
	add a,a			;67ee
	add a,a			;67ef
	ld (hl),b		;67f0
	ld (hl),b		;67f1
	push bc			;67f2
	ld d,a			;67f3
	ld (hl),c		;67f4
	ld (hl),c		;67f5
	ld h,e			;67f6
	ld b,a			;67f7
	ld (hl),d		;67f8
	ld (hl),d		;67f9
	ld h,d			;67fa
	ccf			;67fb
	add a,a			;67fc
	add a,a			;67fd
	add a,a			;67fe
	add a,a			;67ff
	ld h,l			;6800
	ld d,c			;6801
	ld e,h			;6802
	pop bc			;6803
	ld b,a			;6804
	ld b,a			;6805
	ld b,a			;6806
	ld b,a			;6807
	ccf			;6808
	ld b,(hl)		;6809
	ld c,b			;680a
	ld b,(hl)		;680b
	add a,a			;680c
	add a,a			;680d
	add a,a			;680e
	add a,a			;680f
	ld a,h			;6810
	ld a,l			;6811
	ld h,b			;6812
	ld (hl),c		;6813
	ld b,a			;6814
	ld b,a			;6815
	ld h,c			;6816
	ld (hl),d		;6817
	ccf			;6818
	ld b,(hl)		;6819
	ld c,b			;681a
	ld b,(hl)		;681b
	add a,a			;681c
	add a,a			;681d
	add a,a			;681e
	add a,a			;681f
	ld (hl),c		;6820
	ld (hl),c		;6821
	ld (hl),c		;6822
	ld h,e			;6823
	ld (hl),d		;6824
	ld (hl),d		;6825
	ld (hl),d		;6826
	ld h,d			;6827
	ccf			;6828
	ld b,(hl)		;6829
	ld c,b			;682a
	ld b,(hl)		;682b
	add a,a			;682c
	add a,a			;682d
	add a,a			;682e
	add a,a			;682f
	add a,e			;6830
	ld (hl),l		;6831
	ld d,d			;6832
	ld h,(hl)		;6833
	ld b,a			;6834
	ld b,a			;6835
	ld b,a			;6836
	ld b,a			;6837
	ccf			;6838
	ld b,(hl)		;6839
	ld c,b			;683a
	ld b,(hl)		;683b
	add a,a			;683c
	add a,a			;683d
	add a,a			;683e
	add a,a			;683f
	nop			;6840
	nop			;6841
	nop			;6842
	nop			;6843
	nop			;6844
	nop			;6845
	nop			;6846
	nop			;6847
	nop			;6848
	nop			;6849
	nop			;684a
	nop			;684b
	ld sp,05dc2h		;684c
	ld l,a			;684f
	nop			;6850
	nop			;6851
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
	ld e,l			;685c
	ld l,a			;685d
	ld e,l			;685e
	ld l,a			;685f
	nop			;6860
	nop			;6861
	nop			;6862
	nop			;6863
	nop			;6864
	nop			;6865
	nop			;6866
	nop			;6867
	nop			;6868
	nop			;6869
	nop			;686a
	ld sp,l6f5dh		;686b
	ld e,l			;686e
	ld l,a			;686f
	nop			;6870
	nop			;6871
	nop			;6872
	nop			;6873
	nop			;6874
	nop			;6875
	nop			;6876
	nop			;6877
	cp d			;6878
	nop			;6879
	nop			;687a
	nop			;687b
	ld e,l			;687c
	ld l,a			;687d
	ld e,l			;687e
	ld l,a			;687f
	nop			;6880
	nop			;6881
	nop			;6882
	nop			;6883
	nop			;6884
	nop			;6885
	nop			;6886
	nop			;6887
	dec (hl)		;6888
	ld e,e			;6889
	ld (hl),h		;688a
	add a,c			;688b
	ld (hl),0c1h		;688c
	ld a,h			;688e
	ld a,l			;688f
	nop			;6890
	nop			;6891
	nop			;6892
	nop			;6893
	cp d			;6894
	nop			;6895
	nop			;6896
	nop			;6897
	jr c,l68dbh		;6898
	ld b,b			;689a
	add hl,sp		;689b
	inc sp			;689c
	scf			;689d
	ccf			;689e
	ld b,d			;689f
	nop			;68a0
	nop			;68a1
	nop			;68a2
	nop			;68a3
	nop			;68a4
	nop			;68a5
	nop			;68a6
	nop			;68a7
	cp (hl)			;68a8
	nop			;68a9
	nop			;68aa
	nop			;68ab
	cp a			;68ac
	nop			;68ad
	nop			;68ae
	nop			;68af
	nop			;68b0
	nop			;68b1
	nop			;68b2
	nop			;68b3
	nop			;68b4
	nop			;68b5
	nop			;68b6
	cp e			;68b7
	nop			;68b8
	nop			;68b9
	nop			;68ba
	cp h			;68bb
	nop			;68bc
	nop			;68bd
	nop			;68be
	nop			;68bf
	nop			;68c0
	nop			;68c1
	nop			;68c2
	nop			;68c3
	ld b,b			;68c4
	ld b,c			;68c5
	ld b,h			;68c6
	ld c,c			;68c7
	ld b,d			;68c8
	ld b,e			;68c9
	ld c,e			;68ca
	ld c,d			;68cb
	nop			;68cc
	nop			;68cd
	cp l			;68ce
	ret nz			;68cf
	nop			;68d0
	nop			;68d1
	nop			;68d2
	ld (04745h),a		;68d3
	ld b,a			;68d6
	ld b,l			;68d7
	ccf			;68d8
	ld b,(hl)		;68d9
	ld c,b			;68da
l68dbh:
	ld b,(hl)		;68db
	ld c,h			;68dc
	ld c,l			;68dd
	ld c,(hl)		;68de
	add a,(hl)		;68df
	add hl,sp		;68e0
	inc a			;68e1
	scf			;68e2
	jr c,l692ch		;68e3
	ld b,a			;68e5
	ld b,a			;68e6
	ld b,a			;68e7
	ccf			;68e8
	ccf			;68e9
	ld b,(hl)		;68ea
	ld c,b			;68eb
	add a,a			;68ec
	add a,a			;68ed
	add a,a			;68ee
	add a,a			;68ef
	ld a,(03a3ah)		;68f0
	ld a,(04747h)		;68f3
	ld b,a			;68f6
	ld b,a			;68f7
	ld b,(hl)		;68f8
	ccf			;68f9
	ccf			;68fa
	ccf			;68fb
	add a,a			;68fc
	add a,a			;68fd
	add a,a			;68fe
	add a,a			;68ff
	nop			;6900
	nop			;6901
	nop			;6902
	nop			;6903
	nop			;6904
	nop			;6905
	nop			;6906
	nop			;6907
	ld d,e			;6908
	ld e,(hl)		;6909
	ld l,l			;690a
	ld h,h			;690b
	ld l,c			;690c
	ld e,d			;690d
	ld c,a			;690e
	ld h,a			;690f
	nop			;6910
	nop			;6911
	nop			;6912
	nop			;6913
	ld d,e			;6914
	ld e,(hl)		;6915
	ld l,l			;6916
	ld h,h			;6917
	ld l,c			;6918
	ld e,d			;6919
	ld c,a			;691a
	ld h,a			;691b
	ld l,c			;691c
	ld e,d			;691d
	ld c,a			;691e
	ld h,a			;691f
	nop			;6920
	nop			;6921
	nop			;6922
	nop			;6923
	nop			;6924
	nop			;6925
	nop			;6926
	nop			;6927
	cp d			;6928
	nop			;6929
	nop			;692a
	nop			;692b
l692ch:
	ld d,(hl)		;692c
	jp 000bah		;692d
	ld d,a			;6930
	ld a,c			;6931
	ld d,(hl)		;6932
	jp 04747h		;6933
	ld b,a			;6936
	call nz,03f3fh		;6937
	ld c,b			;693a
	add a,l			;693b
	add a,a			;693c
	add a,a			;693d
	ld c,b			;693e
	ld (hl),l		;693f
	nop			;6940
	nop			;6941
	nop			;6942
	nop			;6943
	nop			;6944
	nop			;6945
	nop			;6946
	or h			;6947
	nop			;6948
	ld h,c			;6949
	ld h,d			;694a
	ld h,e			;694b
	nop			;694c
	ld (hl),l		;694d
	halt			;694e
	ld l,c			;694f
	nop			;6950
	nop			;6951
	nop			;6952
	nop			;6953
	nop			;6954
	nop			;6955
	nop			;6956
	nop			;6957
	ld (hl),a		;6958
	ld a,b			;6959
	ld a,c			;695a
	add a,e			;695b
	ld h,a			;695c
	ld d,e			;695d
	add a,c			;695e
	ld d,e			;695f
	nop			;6960
	nop			;6961
	nop			;6962
	nop			;6963
	nop			;6964
	nop			;6965
	nop			;6966
	nop			;6967
	add a,e			;6968
	ld a,c			;6969
	add a,h			;696a
	add a,l			;696b
	ld d,e			;696c
	add a,c			;696d
	ld d,e			;696e
	ld e,l			;696f
	nop			;6970
	nop			;6971
	nop			;6972
	nop			;6973
	or h			;6974
	nop			;6975
	nop			;6976
	nop			;6977
	ld e,c			;6978
	ld e,b			;6979
	ld d,a			;697a
	nop			;697b
	ld e,a			;697c
	ld (hl),c		;697d
	ld (hl),b		;697e
	nop			;697f
	or a			;6980
	ld (hl),h		;6981
	ld (hl),e		;6982
	ld (hl),d		;6983
	nop			;6984
	cp d			;6985
	cp e			;6986
	ld h,b			;6987
	nop			;6988
	nop			;6989
	ld (00039h),a		;698a
	nop			;698d
	inc sp			;698e
	ld a,068h		;698f
	ccf			;6991
	ld b,(hl)		;6992
	ld c,b			;6993
	ld c,h			;6994
	ld c,l			;6995
	ld c,(hl)		;6996
	add a,(hl)		;6997
	inc a			;6998
	scf			;6999
	jr c,l69d6h		;699a
	dec a			;699c
	inc (hl)		;699d
	ld (hl),03ah		;699e
	ld c,b			;69a0
	ld b,(hl)		;69a1
	ccf			;69a2
	ld e,(hl)		;69a3
	ld c,a			;69a4
	ld a,l			;69a5
	ld c,l			;69a6
	ld a,(hl)		;69a7
	ld a,(05152h)		;69a8
	ld a,a			;69ab
	ld a,(l6c6bh)		;69ac
	ld a,d			;69af
	ld l,l			;69b0
	ld l,(hl)		;69b1
	ld l,a			;69b2
	cp b			;69b3
	ld d,(hl)		;69b4
	cp h			;69b5
	cp l			;69b6
	nop			;69b7
	ld d,b			;69b8
	ld sp,00000h		;69b9
	add a,d			;69bc
	cp c			;69bd
	nop			;69be
	nop			;69bf
	nop			;69c0
	ld (03c39h),a		;69c1
	nop			;69c4
	inc sp			;69c5
	ld a,03dh		;69c6
	jp nz,0bf7bh		;69c8
	ld (hl),e		;69cb
	ld e,l			;69cc
	add a,h			;69cd
	cp (hl)			;69ce
	ld e,e			;69cf
	scf			;69d0
	jr c,l6a0dh		;69d1
	ld a,(03634h)		;69d3
l69d6h:
	dec sp			;69d6
	dec (hl)		;69d7
	ld (hl),a		;69d8
	ld (hl),a		;69d9
	ld l,d			;69da
	ld l,d			;69db
	ld (hl),h		;69dc
	add a,c			;69dd
	ld e,a			;69de
	ld (hl),b		;69df
	ld a,(0523ah)		;69e0
	ld d,c			;69e3
	add a,e			;69e4
	ld a,(l6c6bh)		;69e5
	ld l,d			;69e8
	ld l,d			;69e9
	ld l,d			;69ea
	ld a,a			;69eb
	ld (hl),b		;69ec
	ld (hl),b		;69ed
	ld (hl),b		;69ee
	push bc			;69ef
	ld a,a			;69f0
	ld d,b			;69f1
	ld sp,l7a00h		;69f2
	add a,d			;69f5
	cp c			;69f6
	nop			;69f7
	add a,b			;69f8
	call nz,0c37eh		;69f9
	add a,e			;69fc
	add a,l			;69fd
	ld d,b			;69fe
	ld l,a			;69ff
	nop			;6a00
	nop			;6a01
	nop			;6a02
	nop			;6a03
	nop			;6a04
	nop			;6a05
	nop			;6a06
	nop			;6a07
	jp nz,0bf7bh		;6a08
	ld (hl),e		;6a0b
	ld e,l			;6a0c
l6a0dh:
	add a,h			;6a0d
	cp (hl)			;6a0e
	ld e,e			;6a0f
	nop			;6a10
	nop			;6a11
	nop			;6a12
	nop			;6a13
	nop			;6a14
	nop			;6a15
	nop			;6a16
	nop			;6a17
	ld (hl),a		;6a18
	ld (hl),a		;6a19
	ld l,d			;6a1a
	ld l,d			;6a1b
	ld (hl),h		;6a1c
	add a,c			;6a1d
	ld e,a			;6a1e
	ld (hl),b		;6a1f
	nop			;6a20
	nop			;6a21
	nop			;6a22
	nop			;6a23
	nop			;6a24
	nop			;6a25
	nop			;6a26
	nop			;6a27
	ld l,d			;6a28
	ld l,d			;6a29
	ld l,d			;6a2a
	ld a,a			;6a2b
	ld (hl),b		;6a2c
	ld (hl),b		;6a2d
	ld (hl),b		;6a2e
	push bc			;6a2f
	nop			;6a30
	nop			;6a31
	nop			;6a32
	nop			;6a33
	nop			;6a34
	nop			;6a35
	nop			;6a36
	nop			;6a37
	add a,b			;6a38
	call nz,0c37eh		;6a39
	add a,e			;6a3c
	add a,l			;6a3d
	ld d,b			;6a3e
	ld l,a			;6a3f
	cp d			;6a40
	nop			;6a41
	nop			;6a42
	nop			;6a43
	ld a,(hl)		;6a44
	jp 000bah		;6a45
	ld d,b			;6a48
	ld l,a			;6a49
	ld d,(hl)		;6a4a
	jp 06652h		;6a4b
	ld d,a			;6a4e
	ld a,c			;6a4f
	nop			;6a50
	nop			;6a51
	nop			;6a52
	nop			;6a53
	cp h			;6a54
	jp nz,0babbh		;6a55
	call nz,0c1c0h		;6a58
	push bc			;6a5b
	ld (bc),a		;6a5c
	ld (bc),a		;6a5d
	ld (bc),a		;6a5e
	ld (bc),a		;6a5f
	ld (bc),a		;6a60
	nop			;6a61
	nop			;6a62
	nop			;6a63
	cp l			;6a64
	cp (hl)			;6a65
	cp e			;6a66
	cp d			;6a67
	call nz,0bfc3h		;6a68
	push bc			;6a6b
	ld (bc),a		;6a6c
	ld (bc),a		;6a6d
	ld (bc),a		;6a6e
	ld (bc),a		;6a6f
	nop			;6a70
	nop			;6a71
	nop			;6a72
	nop			;6a73
	cp l			;6a74
	cp (hl)			;6a75
	cp e			;6a76
	cp d			;6a77
	call nz,0bfc3h		;6a78
	push bc			;6a7b
	ld (bc),a		;6a7c
	ld (bc),a		;6a7d
	ld (bc),a		;6a7e
	ld (bc),a		;6a7f
	inc (hl)		;6a80
	dec a			;6a81
	ld a,(03b43h)		;6a82
	ld e,c			;6a85
	ld e,c			;6a86
	nop			;6a87
	ret nz			;6a88
	ccf			;6a89
	ld b,d			;6a8a
	jp 03a6ch		;6a8b
	ld b,e			;6a8e
	ld l,(hl)		;6a8f
	nop			;6a90
	nop			;6a91
	nop			;6a92
	nop			;6a93
	nop			;6a94
	nop			;6a95
	nop			;6a96
	nop			;6a97
	cp l			;6a98
	nop			;6a99
	nop			;6a9a
	nop			;6a9b
	ld d,(hl)		;6a9c
	nop			;6a9d
	nop			;6a9e
	nop			;6a9f
	nop			;6aa0
	nop			;6aa1
	nop			;6aa2
	nop			;6aa3
	nop			;6aa4
	nop			;6aa5
	nop			;6aa6
	nop			;6aa7
	nop			;6aa8
	nop			;6aa9
	nop			;6aaa
	nop			;6aab
	nop			;6aac
	nop			;6aad
	ld d,h			;6aae
	ld d,l			;6aaf
	nop			;6ab0
	nop			;6ab1
	ld b,l			;6ab2
	ld c,e			;6ab3
	ld (hl),h		;6ab4
	ld l,a			;6ab5
	add a,c			;6ab6
	add a,b			;6ab7
	ld e,l			;6ab8
	ld e,(hl)		;6ab9
	ld d,l			;6aba
	ld d,a			;6abb
	ld e,a			;6abc
	ld h,b			;6abd
	ld d,(hl)		;6abe
	ld e,b			;6abf
	ld b,a			;6ac0
	ld c,h			;6ac1
	nop			;6ac2
	nop			;6ac3
	add a,c			;6ac4
	add a,b			;6ac5
	ld (hl),h		;6ac6
	ld l,a			;6ac7
	ld d,l			;6ac8
	ld d,a			;6ac9
	ld e,l			;6aca
	ld e,(hl)		;6acb
	ld d,(hl)		;6acc
	ld e,b			;6acd
	ld e,a			;6ace
	ld h,b			;6acf
	nop			;6ad0
	nop			;6ad1
	nop			;6ad2
	nop			;6ad3
	nop			;6ad4
	nop			;6ad5
	nop			;6ad6
	nop			;6ad7
	nop			;6ad8
	nop			;6ad9
	nop			;6ada
	nop			;6adb
	ld c,(hl)		;6adc
	ld c,l			;6add
	nop			;6ade
	nop			;6adf
	ld d,l			;6ae0
	ld e,b			;6ae1
	ld e,e			;6ae2
	ld e,e			;6ae3
	ld d,(hl)		;6ae4
	ld d,c			;6ae5
	ld e,(hl)		;6ae6
	ld d,e			;6ae7
	ld e,a			;6ae8
	ld d,c			;6ae9
	ld d,c			;6aea
	ld e,l			;6aeb
	ld d,a			;6aec
	ld e,d			;6aed
	ld d,d			;6aee
	ld c,(hl)		;6aef
	ld hl,02323h		;6af0
	ld hl,04818h		;6af3
	ld c,b			;6af6
	jr l6b2bh		;6af7
	ld c,c			;6af9
	ld c,c			;6afa
	ld (05a57h),a		;6afb
	ld e,d			;6afe
	ld c,(hl)		;6aff
	ld (02928h),hl		;6b00
	daa			;6b03
	scf			;6b04
	add hl,de		;6b05
	ld b,d			;6b06
	dec a			;6b07
	jr c,l6b43h		;6b08
	ld d,026h		;6b0a
	inc a			;6b0c
	ld b,h			;6b0d
	ld b,c			;6b0e
	daa			;6b0f
	ld (03528h),hl		;6b10
	dec d			;6b13
	inc (hl)		;6b14
	ld de,02716h		;6b15
	ld hl,(04240h)		;6b18
	dec a			;6b1b
	jr c,l6b57h		;6b1c
	add hl,hl		;6b1e
	ld h,055h		;6b1f
	ld e,e			;6b21
	ld e,c			;6b22
	ld e,e			;6b23
	ld d,(hl)		;6b24
	ld e,l			;6b25
	ld e,(hl)		;6b26
	ld d,e			;6b27
	ld e,a			;6b28
	ld c,a			;6b29
	ld d,h			;6b2a
l6b2bh:
	ld d,e			;6b2b
	ld d,a			;6b2c
	ld e,d			;6b2d
	ld e,d			;6b2e
	ld c,(hl)		;6b2f
	ld d,l			;6b30
	ld e,h			;6b31
	ld e,e			;6b32
	ld e,e			;6b33
	ld d,(hl)		;6b34
	ld d,b			;6b35
	ld c,e			;6b36
	ld d,e			;6b37
	ld d,(hl)		;6b38
	ld d,b			;6b39
	ld c,e			;6b3a
	ld d,e			;6b3b
	ld d,a			;6b3c
	ld c,h			;6b3d
	ld c,l			;6b3e
	ld c,(hl)		;6b3f
	ld (hl),h		;6b40
	ld (hl),h		;6b41
	dec (hl)		;6b42
l6b43h:
	dec a			;6b43
	ld h,b			;6b44
	ld h,c			;6b45
	ld l,d			;6b46
	ld h,b			;6b47
	ld (hl),l		;6b48
	ld a,b			;6b49
	ld (hl),l		;6b4a
	sbc a,b			;6b4b
	ld l,a			;6b4c
	ld l,(hl)		;6b4d
	ld l,(hl)		;6b4e
	ld l,a			;6b4f
	ld (hl),h		;6b50
	ld (hl),h		;6b51
	ld b,c			;6b52
	daa			;6b53
	ld h,b			;6b54
	ld h,c			;6b55
	dec (hl)		;6b56
l6b57h:
	dec a			;6b57
	ld (hl),l		;6b58
	ld a,b			;6b59
	ld (hl),l		;6b5a
	sbc a,b			;6b5b
	ld a,a			;6b5c
	add a,b			;6b5d
	adc a,h			;6b5e
	ld a,a			;6b5f
	ld (hl),h		;6b60
	ld (hl),h		;6b61
	ld b,d			;6b62
	dec a			;6b63
	ld h,b			;6b64
	ld h,c			;6b65
	add hl,hl		;6b66
	ld h,075h		;6b67
	ld a,b			;6b69
	ld b,c			;6b6a
	daa			;6b6b
	adc a,l			;6b6c
	adc a,l			;6b6d
	dec (hl)		;6b6e
	dec a			;6b6f
	ld b,c			;6b70
	inc a			;6b71
	ld b,h			;6b72
	daa			;6b73
	dec (hl)		;6b74
	dec l			;6b75
	ld l,03dh		;6b76
	ld l,e			;6b78
	sbc a,c			;6b79
	sbc a,c			;6b7a
	ld a,c			;6b7b
	ld h,e			;6b7c
	ld h,e			;6b7d
	ld h,h			;6b7e
	ld h,e			;6b7f
	ld b,d			;6b80
	inc (hl)		;6b81
	ld de,0163dh		;6b82
	ld hl,(02640h)		;6b85
	ld b,c			;6b88
	scf			;6b89
	add hl,de		;6b8a
	daa			;6b8b
	dec (hl)		;6b8c
	jr c,l6bc8h		;6b8d
	dec a			;6b8f
	ld d,03dh		;6b90
	ld a,022h		;6b92
	add hl,hl		;6b94
	ld h,01eh		;6b95
	scf			;6b97
	ld b,c			;6b98
	daa			;6b99
	rra			;6b9a
	jr c,l6bd2h		;6b9b
	dec a			;6b9d
	ld hl,01623h		;6b9e
	ld h,047h		;6ba1
	inc l			;6ba3
	ld b,c			;6ba4
	daa			;6ba5
	ld l,d			;6ba6
	ld h,b			;6ba7
	dec (hl)		;6ba8
	dec a			;6ba9
	ld (hl),l		;6baa
	sbc a,b			;6bab
	ld a,a			;6bac
	add a,b			;6bad
	adc a,h			;6bae
	ld a,a			;6baf
	add hl,hl		;6bb0
	ld h,048h		;6bb1
	jr l6bcbh		;6bb3
	dec d			;6bb5
	ld c,c			;6bb6
	ld (02741h),a		;6bb7
	ld (hl),l		;6bba
	sbc a,b			;6bbb
	dec (hl)		;6bbc
	dec a			;6bbd
	adc a,l			;6bbe
	adc a,l			;6bbf
	jr z,l6c00h		;6bc0
	ld b,d			;6bc2
	ld h,019h		;6bc3
	ld e,029h		;6bc5
	dec d			;6bc7
l6bc8h:
	add hl,sp		;6bc8
	rra			;6bc9
	ld b,c			;6bca
l6bcbh:
	daa			;6bcb
	inc hl			;6bcc
	ld hl,03d35h		;6bcd
	ld a,022h		;6bd0
l6bd2h:
	jr z,l6c12h		;6bd2
	ld e,037h		;6bd4
	add hl,de		;6bd6
	ld e,01fh		;6bd7
	jr c,$+59		;6bd9
	rra			;6bdb
	dec l			;6bdc
	ld l,04dh		;6bdd
	ld c,(hl)		;6bdf
	ld a,022h		;6be0
	jr z,l6c22h		;6be2
	ld e,037h		;6be4
	add hl,de		;6be6
	ld e,01fh		;6be7
	jr c,l6c24h		;6be9
	rra			;6beb
	inc a			;6bec
	ld b,h			;6bed
	ld c,l			;6bee
	ld c,(hl)		;6bef
	inc hl			;6bf0
	dec de			;6bf1
	dec e			;6bf2
	inc hl			;6bf3
	ld a,043h		;6bf4
	rla			;6bf6
	ld a,01fh		;6bf7
	jr c,l6c34h		;6bf9
	rra			;6bfb
	ld d,a			;6bfc
	ld e,d			;6bfd
	ld e,d			;6bfe
	ld c,(hl)		;6bff
l6c00h:
	ld a,022h		;6c00
	jr z,l6c42h		;6c02
	ld e,037h		;6c04
	add hl,de		;6c06
	ld e,01fh		;6c07
	jr c,$+59		;6c09
	rra			;6c0b
	ld d,a			;6c0c
	ld e,d			;6c0d
	ld d,d			;6c0e
	ld c,(hl)		;6c0f
	ld b,c			;6c10
	dec d			;6c11
l6c12h:
	ld (03528h),hl		;6c12
	daa			;6c15
	inc (hl)		;6c16
	ld de,03d42h		;6c17
	ld hl,(01640h)		;6c1a
	ld h,038h		;6c1d
	add hl,sp		;6c1f
	ld h,l			;6c20
	ld h,l			;6c21
l6c22h:
	ld h,l			;6c22
	ld h,(hl)		;6c23
l6c24h:
	sbc a,d			;6c24
	sbc a,e			;6c25
	sbc a,e			;6c26
	sbc a,h			;6c27
	ld b,c			;6c28
	inc a			;6c29
	ld b,h			;6c2a
	dec d			;6c2b
	dec (hl)		;6c2c
	dec l			;6c2d
	ld l,027h		;6c2e
	ld a,022h		;6c30
	jr z,l6c72h		;6c32
l6c34h:
	ld e,037h		;6c34
	add hl,de		;6c36
	ld e,01fh		;6c37
	jr c,l6c74h		;6c39
	rra			;6c3b
	ld hl,0525ah		;6c3c
	ld c,(hl)		;6c3f
	jr l6c8ah		;6c40
l6c42h:
	ld c,b			;6c42
	jr l6c77h		;6c43
	ld c,c			;6c45
	ld c,c			;6c46
	ld (05056h),a		;6c47
	ld c,e			;6c4a
	ld d,e			;6c4b
	ld d,a			;6c4c
	ld c,h			;6c4d
	ld c,l			;6c4e
	ld c,(hl)		;6c4f
	ld d,l			;6c50
	ld e,e			;6c51
	ld b,c			;6c52
	dec d			;6c53
	ld d,(hl)		;6c54
	ld e,l			;6c55
	dec (hl)		;6c56
	daa			;6c57
	ld e,a			;6c58
	ld c,a			;6c59
	ld d,03dh		;6c5a
	ld d,a			;6c5c
	ld e,d			;6c5d
	add hl,hl		;6c5e
	ld h,016h		;6c5f
	ld e,01eh		;6c61
	daa			;6c63
	ld b,c			;6c64
	rra			;6c65
	rra			;6c66
	dec a			;6c67
	dec (hl)		;6c68
	ld b,a			;6c69
	inc l			;6c6a
l6c6bh:
	dec d			;6c6b
	add hl,hl		;6c6c
	ccf			;6c6d
	ld b,(hl)		;6c6e
	ld h,065h		;6c6f
	ld h,l			;6c71
l6c72h:
	ld h,l			;6c72
	ld h,(hl)		;6c73
l6c74h:
	sbc a,d			;6c74
	sbc a,e			;6c75
	sbc a,e			;6c76
l6c77h:
	sbc a,h			;6c77
	ld d,(hl)		;6c78
	nop			;6c79
l6c7ah:
	nop			;6c7a
	adc a,e			;6c7b
	ld d,(hl)		;6c7c
	nop			;6c7d
	nop			;6c7e
	ld d,e			;6c7f
	ld b,c			;6c80
	inc a			;6c81
	ld b,h			;6c82
	dec d			;6c83
	dec (hl)		;6c84
	dec l			;6c85
	ld l,027h		;6c86
	ld d,047h		;6c88
l6c8ah:
	inc l			;6c8a
	dec a			;6c8b
	add hl,hl		;6c8c
	ld hl,02621h		;6c8d
	ld c,b			;6c90
	inc a			;6c91
	ld b,h			;6c92
	dec d			;6c93
	ld c,c			;6c94
	dec l			;6c95
	ld l,027h		;6c96
	dec h			;6c98
	ld b,a			;6c99
	inc l			;6c9a
	dec a			;6c9b
	inc h			;6c9c
	ld hl,02621h		;6c9d
	ld a,022h		;6ca0
	jr z,l6ce2h		;6ca2
	ld e,037h		;6ca4
	add hl,de		;6ca6
	ld e,01fh		;6ca7
	jr c,l6ce4h		;6ca9
	rra			;6cab
	jr nz,l6cf8h		;6cac
	ld c,d			;6cae
	jr nz,l6cd3h		;6caf
	jr z,l6cf4h		;6cb1
	dec d			;6cb3
	inc (hl)		;6cb4
	ld de,02735h		;6cb5
	ld hl,(01640h)		;6cb8
	dec a			;6cbb
	jr c,l6cf7h		;6cbc
	add hl,hl		;6cbe
	ld h,022h		;6cbf
	jr z,l6cech		;6cc1
	daa			;6cc3
	scf			;6cc4
	add hl,de		;6cc5
	ld b,c			;6cc6
	dec a			;6cc7
	jr c,l6d03h		;6cc8
	dec (hl)		;6cca
	ld h,03ch		;6ccb
	ld b,h			;6ccd
	ld d,015h		;6cce
	ld (hl),h		;6cd0
	ld (hl),h		;6cd1
	halt			;6cd2
l6cd3h:
	ld (hl),h		;6cd3
	ld h,b			;6cd4
	ld h,c			;6cd5
	ld l,d			;6cd6
	ld h,b			;6cd7
	inc a			;6cd8
	ld b,h			;6cd9
	ld b,c			;6cda
	dec d			;6cdb
	dec l			;6cdc
	ld l,035h		;6cdd
	daa			;6cdf
	ld b,l			;6ce0
	inc de			;6ce1
l6ce2h:
	ld (hl),03ah		;6ce2
l6ce4h:
	jr nc,l6d17h		;6ce4
	cpl			;6ce6
	dec hl			;6ce7
	ld (hl),l		;6ce8
	ld a,b			;6ce9
	ld (hl),l		;6cea
	sbc a,b			;6ceb
l6cech:
	ld a,a			;6cec
	add a,b			;6ced
	adc a,h			;6cee
	ld a,a			;6cef
	inc hl			;6cf0
	dec de			;6cf1
	dec e			;6cf2
	inc hl			;6cf3
l6cf4h:
	jr c,l6d39h		;6cf4
	rla			;6cf6
l6cf7h:
	add hl,sp		;6cf7
l6cf8h:
	sbc a,l			;6cf8
	sbc a,(hl)		;6cf9
	sbc a,l			;6cfa
	sub d			;6cfb
	ld l,h			;6cfc
	ld l,h			;6cfd
	ld l,h			;6cfe
	sub e			;6cff
	ld a,l			;6d00
	ld a,e			;6d01
	ld a,l			;6d02
l6d03h:
	ld a,h			;6d03
	and c			;6d04
	and d			;6d05
	and e			;6d06
	and e			;6d07
	adc a,c			;6d08
	sub l			;6d09
	inc a			;6d0a
	ld b,h			;6d0b
	and (hl)		;6d0c
	and h			;6d0d
	dec l			;6d0e
	ld l,055h		;6d0f
	ld e,e			;6d11
	inc a			;6d12
	ld b,h			;6d13
	ld d,(hl)		;6d14
	ld e,l			;6d15
	dec l			;6d16
l6d17h:
	ld l,05fh		;6d17
	ld c,a			;6d19
	ld b,a			;6d1a
	inc l			;6d1b
	ld d,a			;6d1c
	ld e,d			;6d1d
	ccf			;6d1e
	ld b,(hl)		;6d1f
	ld a,(01e1eh)		;6d20
	daa			;6d23
	dec hl			;6d24
	rra			;6d25
	rra			;6d26
	dec a			;6d27
	dec h			;6d28
	ld b,a			;6d29
	inc l			;6d2a
	dec d			;6d2b
	inc h			;6d2c
	ccf			;6d2d
	ld b,(hl)		;6d2e
	ld h,033h		;6d2f
	ld a,(de)		;6d31
	inc e			;6d32
	dec sp			;6d33
	inc a			;6d34
	ld b,h			;6d35
	ld b,a			;6d36
	inc l			;6d37
	ld b,l			;6d38
l6d39h:
	inc de			;6d39
	ld (hl),03ah		;6d3a
	jr nc,l6d6fh		;6d3c
	cpl			;6d3e
	dec hl			;6d3f
	ld d,l			;6d40
	ld e,e			;6d41
	ld e,c			;6d42
	ld e,e			;6d43
	ld d,(hl)		;6d44
	ld e,l			;6d45
	ld e,(hl)		;6d46
	ld d,e			;6d47
	jr l6d92h		;6d48
	ld c,b			;6d4a
	jr l6d7fh		;6d4b
	ld c,c			;6d4d
	ld c,c			;6d4e
	ld (05c55h),a		;6d4f
	ld e,e			;6d52
	ld e,e			;6d53
	ld d,(hl)		;6d54
	ld d,b			;6d55
	ld c,e			;6d56
	ld d,e			;6d57
	ld b,l			;6d58
	inc de			;6d59
	ld (hl),03ah		;6d5a
	jr nc,l6d8fh		;6d5c
	cpl			;6d5e
	dec hl			;6d5f
	inc sp			;6d60
	ld a,(de)		;6d61
	inc e			;6d62
	dec sp			;6d63
	inc a			;6d64
	ld b,h			;6d65
	ld b,a			;6d66
	inc l			;6d67
	inc hl			;6d68
	dec de			;6d69
	dec e			;6d6a
	inc hl			;6d6b
	jr c,l6db1h		;6d6c
	rla			;6d6e
l6d6fh:
	add hl,sp		;6d6f
	inc hl			;6d70
	dec de			;6d71
	dec e			;6d72
	inc hl			;6d73
	ld a,043h		;6d74
	rla			;6d76
	ld a,01fh		;6d77
	jr c,l6db4h		;6d79
	rra			;6d7b
	ld hl,02323h		;6d7c
l6d7fh:
	ld hl,0223eh		;6d7f
	jr z,l6dc2h		;6d82
	ld e,037h		;6d84
	add hl,de		;6d86
	ld e,01fh		;6d87
	jr c,l6dc4h		;6d89
	rra			;6d8b
	ld hl,02323h		;6d8c
l6d8fh:
	ld hl,01345h		;6d8f
l6d92h:
	ld (hl),03ah		;6d92
	jr nc,l6dc7h		;6d94
	cpl			;6d96
	dec hl			;6d97
	inc sp			;6d98
	ld a,(de)		;6d99
	inc e			;6d9a
	dec sp			;6d9b
	inc a			;6d9c
	ld b,h			;6d9d
	ld b,a			;6d9e
	inc l			;6d9f
	jr l6deah		;6da0
	ld c,b			;6da2
	jr l6dd7h		;6da3
	ld c,c			;6da5
	ld c,c			;6da6
	ld (01a33h),a		;6da7
	inc e			;6daa
	dec sp			;6dab
	inc a			;6dac
	ld b,h			;6dad
	ld b,a			;6dae
	inc l			;6daf
	inc hl			;6db0
l6db1h:
	dec de			;6db1
	dec e			;6db2
	inc hl			;6db3
l6db4h:
	jr c,l6df9h		;6db4
	rla			;6db6
	add hl,sp		;6db7
	ld b,l			;6db8
	inc de			;6db9
	ld (hl),03ah		;6dba
	jr nc,l6defh		;6dbc
	cpl			;6dbe
	dec hl			;6dbf
	ld l,l			;6dc0
	ld l,(hl)		;6dc1
l6dc2h:
	inc a			;6dc2
	ld b,h			;6dc3
l6dc4h:
	sub b			;6dc4
	adc a,a			;6dc5
	dec l			;6dc6
l6dc7h:
	ld l,09dh		;6dc7
	sbc a,(hl)		;6dc9
	ld b,a			;6dca
	inc l			;6dcb
	ld l,h			;6dcc
	ld l,h			;6dcd
	ccf			;6dce
	ld b,(hl)		;6dcf
	ld h,l			;6dd0
	ld h,l			;6dd1
	inc a			;6dd2
	ld b,h			;6dd3
	sbc a,d			;6dd4
	sbc a,e			;6dd5
	dec l			;6dd6
l6dd7h:
	ld l,056h		;6dd7
	nop			;6dd9
	ld b,a			;6dda
	inc l			;6ddb
	ld d,(hl)		;6ddc
	nop			;6ddd
	ccf			;6dde
	ld b,(hl)		;6ddf
	ld l,a			;6de0
	ld l,(hl)		;6de1
	ld l,(hl)		;6de2
	ld l,a			;6de3
	adc a,(hl)		;6de4
	adc a,a			;6de5
	adc a,(hl)		;6de6
	sub b			;6de7
	inc a			;6de8
	ld b,h			;6de9
l6deah:
	sbc a,l			;6dea
	sub d			;6deb
	dec l			;6dec
	ld l,06ch		;6ded
l6defh:
	sub e			;6def
	ld l,a			;6df0
	ld l,(hl)		;6df1
	inc a			;6df2
	ld b,h			;6df3
	adc a,(hl)		;6df4
	adc a,a			;6df5
	dec l			;6df6
	ld l,09dh		;6df7
l6df9h:
	sbc a,(hl)		;6df9
	ld b,a			;6dfa
	inc l			;6dfb
	ld l,h			;6dfc
	ld l,h			;6dfd
	ccf			;6dfe
	ld b,(hl)		;6dff
	ld a,l			;6e00
	ld a,e			;6e01
	ld a,l			;6e02
	ld a,h			;6e03
	and c			;6e04
	and d			;6e05
	and e			;6e06
	and e			;6e07
	ld a,022h		;6e08
	jr z,l6e4ah		;6e0a
	ld e,037h		;6e0c
	add hl,de		;6e0e
	ld e,055h		;6e0f
	ld e,b			;6e11
	ld b,d			;6e12
	daa			;6e13
	ld d,(hl)		;6e14
	ld d,c			;6e15
	ld d,03dh		;6e16
	ld b,l			;6e18
	inc de			;6e19
	ld (hl),03ah		;6e1a
	jr nc,l6e4fh		;6e1c
	cpl			;6e1e
	dec hl			;6e1f
	inc sp			;6e20
	ld a,(de)		;6e21
	inc e			;6e22
	dec sp			;6e23
	inc a			;6e24
	ld b,h			;6e25
	ld b,a			;6e26
	inc l			;6e27
	ld e,a			;6e28
	ld c,a			;6e29
	ld d,h			;6e2a
	ld d,e			;6e2b
	ld d,a			;6e2c
	ld e,d			;6e2d
	ld e,d			;6e2e
	ld c,(hl)		;6e2f
	ld d,l			;6e30
	ld e,h			;6e31
	ld e,e			;6e32
	ld e,e			;6e33
	ld d,(hl)		;6e34
	ld d,b			;6e35
	ld c,e			;6e36
	ld d,e			;6e37
	jr z,l6e78h		;6e38
	ld c,e			;6e3a
	ld d,e			;6e3b
	add hl,de		;6e3c
	ld e,04dh		;6e3d
	ld c,(hl)		;6e3f
	inc a			;6e40
	ld b,h			;6e41
	ld e,c			;6e42
	ld e,e			;6e43
	dec l			;6e44
	ld l,05eh		;6e45
	ld d,e			;6e47
	ld b,a			;6e48
	inc l			;6e49
l6e4ah:
	jr z,l6e8ah		;6e4a
	ld (de),a		;6e4c
	inc d			;6e4d
	add hl,de		;6e4e
l6e4fh:
	ld e,055h		;6e4f
	ld e,e			;6e51
	ld a,022h		;6e52
	ld d,(hl)		;6e54
	ld e,l			;6e55
	ld e,037h		;6e56
	ld e,a			;6e58
	ld c,a			;6e59
	rra			;6e5a
	jr c,l6eb4h		;6e5b
	ld e,d			;6e5d
	ld hl,02823h		;6e5e
	ld a,05bh		;6e61
	ld e,e			;6e63
	add hl,de		;6e64
	ld e,04bh		;6e65
	ld d,e			;6e67
	add hl,sp		;6e68
	rra			;6e69
	ld c,e			;6e6a
	ld d,e			;6e6b
	inc hl			;6e6c
	ld hl,04e4dh		;6e6d
	ld d,l			;6e70
	ld e,e			;6e71
	ld e,c			;6e72
	ld e,e			;6e73
	ld d,(hl)		;6e74
	ld e,l			;6e75
	ld e,(hl)		;6e76
	ld d,e			;6e77
l6e78h:
	ld a,022h		;6e78
	jr z,$+64		;6e7a
	ld e,037h		;6e7c
	add hl,de		;6e7e
	ld e,055h		;6e7f
	ld e,h			;6e81
	ld e,e			;6e82
	ld e,e			;6e83
	ld d,(hl)		;6e84
	ld d,b			;6e85
	ld c,e			;6e86
	ld d,e			;6e87
	ld a,022h		;6e88
l6e8ah:
	jr z,l6ecah		;6e8a
	ld e,037h		;6e8c
	add hl,de		;6e8e
	ld e,055h		;6e8f
	ld e,b			;6e91
	ld e,e			;6e92
	ld e,e			;6e93
	ld d,(hl)		;6e94
	ld d,c			;6e95
	ld e,(hl)		;6e96
	ld d,e			;6e97
	ld a,022h		;6e98
	jr z,l6edah		;6e9a
	ld e,037h		;6e9c
	add hl,de		;6e9e
	ld e,033h		;6e9f
	ld a,(de)		;6ea1
	inc e			;6ea2
	dec sp			;6ea3
	jr l6eeeh		;6ea4
	ld c,b			;6ea6
	jr l6edbh		;6ea7
	ld c,c			;6ea9
	ld c,c			;6eaa
	ld (05a57h),a		;6eab
	ld e,d			;6eae
	ld c,(hl)		;6eaf
	ld d,l			;6eb0
	ld e,e			;6eb1
	inc a			;6eb2
	ld b,h			;6eb3
l6eb4h:
	ld d,(hl)		;6eb4
	ld e,l			;6eb5
	dec l			;6eb6
	ld l,03eh		;6eb7
	ld (02c47h),hl		;6eb9
	ld e,037h		;6ebc
	add hl,de		;6ebe
	ld e,055h		;6ebf
	ld e,h			;6ec1
	ld e,e			;6ec2
	ld e,e			;6ec3
	ld d,(hl)		;6ec4
	ld d,b			;6ec5
	ld c,e			;6ec6
	ld d,e			;6ec7
	ld d,(hl)		;6ec8
	ld d,b			;6ec9
l6ecah:
	ld b,c			;6eca
	dec d			;6ecb
	ld d,a			;6ecc
	ld c,h			;6ecd
	dec (hl)		;6ece
	daa			;6ecf
	inc hl			;6ed0
	inc hl			;6ed1
	halt			;6ed2
	ld (hl),h		;6ed3
	jr c,l6f0fh		;6ed4
	ld l,d			;6ed6
	ld h,b			;6ed7
	ld (hl),l		;6ed8
	ld a,b			;6ed9
l6edah:
	ld (hl),l		;6eda
l6edbh:
	sbc a,b			;6edb
	ld l,a			;6edc
	ld l,(hl)		;6edd
	ld l,(hl)		;6ede
	ld l,a			;6edf
	ld h,l			;6ee0
	ld h,l			;6ee1
	ld h,l			;6ee2
	ld h,(hl)		;6ee3
	sbc a,d			;6ee4
	sbc a,e			;6ee5
	sbc a,e			;6ee6
	sbc a,h			;6ee7
	ld a,022h		;6ee8
	jr z,l6f2ah		;6eea
	ld e,037h		;6eec
l6eeeh:
	add hl,de		;6eee
	ld e,018h		;6eef
	ld c,b			;6ef1
	ld c,b			;6ef2
	jr l6f27h		;6ef3
	ld c,c			;6ef5
	ld c,c			;6ef6
	ld (0996bh),a		;6ef7
	sbc a,c			;6efa
	ld a,c			;6efb
	ld h,e			;6efc
	ld h,e			;6efd
	ld h,h			;6efe
	ld h,e			;6eff
	ld l,l			;6f00
	add a,l			;6f01
	add a,(hl)		;6f02
	ld l,l			;6f03
	adc a,(hl)		;6f04
	adc a,a			;6f05
	adc a,(hl)		;6f06
	sub b			;6f07
	ld a,022h		;6f08
	jr z,l6f4ah		;6f0a
	ld e,037h		;6f0c
	add hl,de		;6f0e
l6f0fh:
	ld e,03ch		;6f0f
	ld b,h			;6f11
	ld a,l			;6f12
	ld a,h			;6f13
	dec l			;6f14
	ld l,0a3h		;6f15
	and e			;6f17
	ld b,a			;6f18
	inc l			;6f19
	sub a			;6f1a
	sub c			;6f1b
	ccf			;6f1c
	ld b,(hl)		;6f1d
	ld h,d			;6f1e
	and a			;6f1f
	ld b,l			;6f20
	inc de			;6f21
	ld (hl),03ah		;6f22
	jr nc,l6f57h		;6f24
	cpl			;6f26
l6f27h:
	dec hl			;6f27
	sub c			;6f28
	sub l			;6f29
l6f2ah:
	sub a			;6f2a
	sub c			;6f2b
	and a			;6f2c
	and h			;6f2d
	ld h,d			;6f2e
	and a			;6f2f
	ld b,l			;6f30
	inc de			;6f31
	ld (hl),03ah		;6f32
	jr nc,l6f67h		;6f34
	cpl			;6f36
	dec hl			;6f37
	ld e,a			;6f38
	ld d,c			;6f39
	ld d,c			;6f3a
	ld e,l			;6f3b
	ld d,a			;6f3c
	ld e,d			;6f3d
	ld d,d			;6f3e
	ld c,(hl)		;6f3f
	jr l6f8ah		;6f40
	ld c,b			;6f42
	jr l6f77h		;6f43
	ld c,c			;6f45
	ld c,c			;6f46
	ld (02323h),a		;6f47
l6f4ah:
	sbc a,c			;6f4a
	ld a,c			;6f4b
	jr c,l6f87h		;6f4c
	ld h,h			;6f4e
	ld h,e			;6f4f
	ld d,l			;6f50
	ld e,b			;6f51
	ld e,b			;6f52
	ld e,e			;6f53
	ld d,(hl)		;6f54
	ld d,e			;6f55
	and c			;6f56
l6f57h:
	ld e,l			;6f57
	ld d,(hl)		;6f58
	ld d,e			;6f59
	sub c			;6f5a
	ld e,l			;6f5b
	ld d,a			;6f5c
l6f5dh:
	ld c,h			;6f5d
	ld c,l			;6f5e
	ld c,(hl)		;6f5f
	jr l6faah		;6f60
	ld c,b			;6f62
	jr l6f97h		;6f63
	ld c,c			;6f65
	ld c,c			;6f66
l6f67h:
	ld (02323h),a		;6f67
	ld d,h			;6f6a
	ld d,e			;6f6b
	jr c,l6fa7h		;6f6c
	ld e,d			;6f6e
	ld c,(hl)		;6f6f
	ld a,h			;6f70
	add a,c			;6f71
	add a,d			;6f72
	and l			;6f73
	and c			;6f74
	ld (hl),d		;6f75
	ld l,b			;6f76
l6f77h:
	and b			;6f77
	sub c			;6f78
	ld l,c			;6f79
	ld h,a			;6f7a
	ld a,(hl)		;6f7b
	and a			;6f7c
	add a,e			;6f7d
	add a,h			;6f7e
	ld a,d			;6f7f
	ld a,l			;6f80
	ld a,e			;6f81
	ld a,l			;6f82
	ld a,h			;6f83
	and c			;6f84
	and d			;6f85
	and e			;6f86
l6f87h:
	and e			;6f87
	sub c			;6f88
	sub l			;6f89
l6f8ah:
	sub a			;6f8a
	sub c			;6f8b
	and a			;6f8c
	and h			;6f8d
	ld h,d			;6f8e
	and a			;6f8f
	inc a			;6f90
	ld b,h			;6f91
	ld h,l			;6f92
	ld h,(hl)		;6f93
	dec l			;6f94
	ld l,09bh		;6f95
l6f97h:
	sbc a,h			;6f97
	ld b,a			;6f98
	inc l			;6f99
	jr z,l6fdah		;6f9a
	ld (de),a		;6f9c
	inc d			;6f9d
	add hl,de		;6f9e
	ld e,056h		;6f9f
	nop			;6fa1
	nop			;6fa2
	ld d,e			;6fa3
	ld d,(hl)		;6fa4
	nop			;6fa5
	nop			;6fa6
l6fa7h:
	adc a,e			;6fa7
	ld l,e			;6fa8
	sbc a,c			;6fa9
l6faah:
	sbc a,c			;6faa
	ld a,c			;6fab
	ld h,e			;6fac
	ld h,e			;6fad
	ld h,h			;6fae
	ld h,e			;6faf
	jr l6ffah		;6fb0
	ld c,b			;6fb2
	jr l6fe7h		;6fb3
	ld c,c			;6fb5
	ld c,c			;6fb6
	ld (07875h),a		;6fb7
	ld (hl),l		;6fba
	sbc a,b			;6fbb
	ld a,a			;6fbc
	add a,b			;6fbd
	adc a,h			;6fbe
	ld a,a			;6fbf
	ld (hl),h		;6fc0
	ld (hl),h		;6fc1
	halt			;6fc2
	ld (hl),h		;6fc3
	ld h,b			;6fc4
	ld h,c			;6fc5
	ld l,d			;6fc6
	ld h,b			;6fc7
	ld (hl),l		;6fc8
	ld a,b			;6fc9
	ld (hl),l		;6fca
	sbc a,b			;6fcb
	adc a,l			;6fcc
	adc a,l			;6fcd
	adc a,l			;6fce
	adc a,l			;6fcf
	ld (hl),h		;6fd0
	ld (hl),h		;6fd1
	halt			;6fd2
	ld (hl),h		;6fd3
	ld h,b			;6fd4
	ld h,c			;6fd5
	ld l,d			;6fd6
	ld h,b			;6fd7
	ld (hl),l		;6fd8
	ld a,b			;6fd9
l6fdah:
	ld (hl),l		;6fda
	sbc a,b			;6fdb
	ld (hl),e		;6fdc
	add a,a			;6fdd
	ld (hl),e		;6fde
	add a,a			;6fdf
	inc sp			;6fe0
	ld a,(de)		;6fe1
	inc e			;6fe2
	dec sp			;6fe3
	jr l702eh		;6fe4
	ld c,b			;6fe6
l6fe7h:
	jr l701bh		;6fe7
	ld c,c			;6fe9
	ld c,c			;6fea
	ld (04c57h),a		;6feb
	ld c,l			;6fee
	ld c,(hl)		;6fef
	ld (hl),h		;6ff0
	ld (hl),h		;6ff1
	halt			;6ff2
	ld (hl),h		;6ff3
	ld h,b			;6ff4
	ld h,c			;6ff5
	ld l,d			;6ff6
	ld h,b			;6ff7
	ld (hl),l		;6ff8
	ld a,b			;6ff9
l6ffah:
	ld (hl),l		;6ffa
	sbc a,b			;6ffb
	ld l,a			;6ffc
	ld l,(hl)		;6ffd
	ld l,(hl)		;6ffe
	ld l,a			;6fff
	ld (hl),h		;7000
	ld (hl),h		;7001
	halt			;7002
	ld (hl),h		;7003
	ld h,b			;7004
	ld h,c			;7005
	ld l,d			;7006
	ld h,b			;7007
	ld (hl),l		;7008
	ld a,b			;7009
	ld (hl),l		;700a
	sbc a,b			;700b
	ld a,a			;700c
	add a,b			;700d
	adc a,h			;700e
	ld a,a			;700f
	ld l,a			;7010
	ld l,(hl)		;7011
	ld l,(hl)		;7012
	ld l,a			;7013
	adc a,(hl)		;7014
	adc a,a			;7015
	adc a,(hl)		;7016
	sub b			;7017
	sbc a,l			;7018
	sbc a,(hl)		;7019
	sbc a,l			;701a
l701bh:
	sub d			;701b
	ld l,h			;701c
	ld l,h			;701d
	ld l,h			;701e
	sub e			;701f
	adc a,b			;7020
	adc a,b			;7021
	adc a,b			;7022
	adc a,b			;7023
	adc a,(hl)		;7024
	adc a,a			;7025
	adc a,(hl)		;7026
	sub b			;7027
	sbc a,l			;7028
	sbc a,(hl)		;7029
	sbc a,l			;702a
	sub d			;702b
	ld l,h			;702c
	ld l,h			;702d
l702eh:
	ld l,h			;702e
	ld (hl),a		;702f
	sub h			;7030
	sub (hl)		;7031
	sub h			;7032
	sub (hl)		;7033
	adc a,(hl)		;7034
	adc a,a			;7035
	adc a,(hl)		;7036
	sub b			;7037
	sbc a,l			;7038
	sbc a,(hl)		;7039
	sbc a,l			;703a
	sub d			;703b
	ld l,h			;703c
	ld l,h			;703d
	ld l,h			;703e
	sub e			;703f
	ld l,l			;7040
	add a,l			;7041
	add a,(hl)		;7042
	ld l,l			;7043
	adc a,(hl)		;7044
	adc a,a			;7045
	adc a,(hl)		;7046
	sub b			;7047
	sbc a,l			;7048
	sbc a,(hl)		;7049
	sbc a,l			;704a
	sub d			;704b
	ld l,h			;704c
	ld l,h			;704d
	ld l,h			;704e
	ld (hl),a		;704f
	nop			;7050
	nop			;7051
	nop			;7052
	nop			;7053
	nop			;7054
	nop			;7055
	nop			;7056
	nop			;7057
	nop			;7058
	nop			;7059
	nop			;705a
	nop			;705b
	nop			;705c
	nop			;705d
	nop			;705e
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
	and e			;7070
	sbc a,d			;7071
	sbc a,c			;7072
	and c			;7073
	and (hl)		;7074
	and b			;7075
	sbc a,d			;7076
	sub h			;7077
	inc de			;7078
	adc a,(hl)		;7079
	and b			;707a
	sbc a,c			;707b
	nop			;707c
	ld (hl),c		;707d
l707eh:
	sbc a,(hl)		;707e
	sbc a,l			;707f
	nop			;7080
	ld bc,00002h		;7081
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
	nop			;708f
	sbc a,b			;7090
	adc a,b			;7091
	ld a,e			;7092
	and c			;7093
	and e			;7094
	adc a,h			;7095
	add a,h			;7096
	sub a			;7097
	ld (hl),c		;7098
	and e			;7099
	and c			;709a
	rlca			;709b
	inc bc			;709c
	ld (hl),b		;709d
	ld (hl),d		;709e
	nop			;709f
	and c			;70a0
	sub e			;70a1
	ld (hl),l		;70a2
	ld a,e			;70a3
	sub h			;70a4
	sbc a,e			;70a5
	sub e			;70a6
	and h			;70a7
	and d			;70a8
	sub h			;70a9
	and c			;70aa
	ld (hl),l		;70ab
	sbc a,d			;70ac
	sbc a,c			;70ad
	sub e			;70ae
	sub (hl)		;70af
	nop			;70b0
	nop			;70b1
	ld (hl),c		;70b2
	sbc a,a			;70b3
	nop			;70b4
	nop			;70b5
	inc bc			;70b6
	ld l,a			;70b7
	nop			;70b8
	nop			;70b9
	nop			;70ba
	nop			;70bb
	nop			;70bc
	nop			;70bd
	nop			;70be
	nop			;70bf
	sub c			;70c0
	ld (hl),e		;70c1
	ld b,000h		;70c2
	ld l,(hl)		;70c4
	dec b			;70c5
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
	inc b			;70d2
	sub l			;70d3
	nop			;70d4
	nop			;70d5
	nop			;70d6
	ld (hl),c		;70d7
	nop			;70d8
	nop			;70d9
	nop			;70da
	nop			;70db
	nop			;70dc
	nop			;70dd
	nop			;70de
	nop			;70df
	and b			;70e0
	sbc a,c			;70e1
	and c			;70e2
	and c			;70e3
	sbc a,(hl)		;70e4
	sub b			;70e5
	sub b			;70e6
	sbc a,h			;70e7
	ld (hl),c		;70e8
	sbc a,a			;70e9
	sub c			;70ea
	ld (hl),e		;70eb
	inc bc			;70ec
	ld l,a			;70ed
	ld l,(hl)		;70ee
	dec b			;70ef
	sub d			;70f0
	adc a,l			;70f1
	sbc a,b			;70f2
	ld a,e			;70f3
	sub e			;70f4
	adc a,e			;70f5
	adc a,h			;70f6
	add a,h			;70f7
	and d			;70f8
	add a,e			;70f9
	adc a,a			;70fa
	and e			;70fb
	sbc a,c			;70fc
	and c			;70fd
	ld (hl),h		;70fe
	adc a,c			;70ff
l7100h:
	nop			;7100
	ld (hl),c		;7101
l7102h:
	and (hl)		;7102
	and b			;7103
	nop			;7104
	nop			;7105
	inc de			;7106
	sub l			;7107
	nop			;7108
	nop			;7109
	nop			;710a
	ld (hl),c		;710b
	nop			;710c
	nop			;710d
	nop			;710e
	nop			;710f
	sbc a,d			;7110
	and d			;7111
	sub h			;7112
	ld (hl),l		;7113
	and e			;7114
	sbc a,d			;7115
	sbc a,c			;7116
	sub (hl)		;7117
	and (hl)		;7118
	and l			;7119
	sbc a,c			;711a
	sub e			;711b
	ld (hl),c		;711c
	adc a,(hl)		;711d
	sbc a,l			;711e
	and c			;711f
	ld a,e			;7120
	and c			;7121
	ld a,e			;7122
	and c			;7123
	ld (hl),l		;7124
	ld (hl),l		;7125
	and c			;7126
	and c			;7127
	and d			;7128
	and c			;7129
	adc a,b			;712a
	ld a,e			;712b
	sub a			;712c
	sbc a,b			;712d
	ld a,c			;712e
	add a,h			;712f
	sub e			;7130
	ex af,af'		;7131
	nop			;7132
	nop			;7133
	ld (hl),d		;7134
	nop			;7135
	nop			;7136
	nop			;7137
	ld b,000h		;7138
	nop			;713a
	nop			;713b
	nop			;713c
	nop			;713d
	nop			;713e
	nop			;713f
	and c			;7140
	sub e			;7141
	sbc a,e			;7142
	and c			;7143
	and h			;7144
	sub (hl)		;7145
	sub h			;7146
	and c			;7147
	sbc a,e			;7148
	sub e			;7149
	and h			;714a
	ex af,af'		;714b
	sub h			;714c
	and c			;714d
	rlca			;714e
	nop			;714f
	inc b			;7150
	sub l			;7151
	and b			;7152
	and d			;7153
	nop			;7154
	ld (hl),c		;7155
	sbc a,(hl)		;7156
	sbc a,l			;7157
	nop			;7158
	nop			;7159
	ld (hl),c		;715a
	sbc a,a			;715b
	nop			;715c
	nop			;715d
	inc bc			;715e
	ld l,a			;715f
	sub e			;7160
	ex af,af'		;7161
	nop			;7162
	nop			;7163
	rlca			;7164
	nop			;7165
	nop			;7166
	nop			;7167
	nop			;7168
	nop			;7169
	nop			;716a
	nop			;716b
	nop			;716c
	nop			;716d
	nop			;716e
	nop			;716f
	ld a,e			;7170
	and c			;7171
	ld a,e			;7172
	and c			;7173
	add a,h			;7174
	sub a			;7175
	sbc a,b			;7176
	halt			;7177
	and c			;7178
	rlca			;7179
	nop			;717a
	nop			;717b
	ld (hl),d		;717c
	nop			;717d
	nop			;717e
	nop			;717f
	add a,c			;7180
	adc a,l			;7181
	sbc a,b			;7182
	adc a,b			;7183
	add a,l			;7184
	add a,c			;7185
	and e			;7186
	adc a,h			;7187
	ld bc,l7102h		;7188
	and e			;718b
	nop			;718c
	nop			;718d
	inc bc			;718e
	ld (hl),b		;718f
	sub e			;7190
	ld (hl),l		;7191
	ld a,e			;7192
	and c			;7193
	and c			;7194
	add a,a			;7195
	add a,d			;7196
	sub a			;7197
	nop			;7198
	nop			;7199
	ld bc,00002h		;719a
	nop			;719d
	nop			;719e
	nop			;719f
	sub e			;71a0
	and c			;71a1
	sbc a,e			;71a2
	ld (hl),l		;71a3
	and c			;71a4
	sbc a,e			;71a5
	and c			;71a6
	sub e			;71a7
	sub (hl)		;71a8
	sub h			;71a9
	and c			;71aa
	and h			;71ab
	and h			;71ac
	and h			;71ad
	sbc a,c			;71ae
	ld (hl),l		;71af
	adc a,l			;71b0
	sbc a,b			;71b1
	adc a,b			;71b2
	ld a,h			;71b3
	ld a,(hl)		;71b4
	and b			;71b5
	adc a,h			;71b6
	add a,h			;71b7
	add a,c			;71b8
	sub l			;71b9
	and e			;71ba
	sub h			;71bb
	add a,l			;71bc
	add a,c			;71bd
	ld a,(hl)		;71be
	ld a,l			;71bf
	add a,c			;71c0
	adc a,(hl)		;71c1
	ld (hl),a		;71c2
	and d			;71c3
	add a,l			;71c4
	ld a,a			;71c5
	and e			;71c6
	sbc a,d			;71c7
	nop			;71c8
	inc b			;71c9
	and (hl)		;71ca
	ld (hl),a		;71cb
	nop			;71cc
	nop			;71cd
	ld (hl),c		;71ce
	and e			;71cf
	ld bc,01302h		;71d0
	sub l			;71d3
	nop			;71d4
	nop			;71d5
	nop			;71d6
	ld (hl),c		;71d7
	nop			;71d8
	nop			;71d9
	nop			;71da
	nop			;71db
	nop			;71dc
	nop			;71dd
	nop			;71de
	nop			;71df
	ld (hl),l		;71e0
	ld a,e			;71e1
	ld a,e			;71e2
	and c			;71e3
	ld (hl),l		;71e4
	ld (hl),l		;71e5
	sbc a,e			;71e6
	and c			;71e7
	ld (hl),l		;71e8
	sub (hl)		;71e9
	and c			;71ea
	sub e			;71eb
	sbc a,e			;71ec
	sub e			;71ed
	and c			;71ee
	sub (hl)		;71ef
	ld a,e			;71f0
	add a,c			;71f1
	adc a,l			;71f2
	sbc a,b			;71f3
	sub a			;71f4
	sbc a,b			;71f5
	adc a,e			;71f6
	adc a,h			;71f7
	ld a,e			;71f8
	and c			;71f9
	add a,e			;71fa
	adc a,a			;71fb
	sub a			;71fc
	sbc a,b			;71fd
	and c			;71fe
	ld (hl),h		;71ff
	adc a,b			;7200
	sub h			;7201
	and c			;7202
	ld a,e			;7203
	adc a,h			;7204
	add a,h			;7205
	and c			;7206
	add a,l			;7207
	and e			;7208
	sbc a,d			;7209
	adc a,b			;720a
	ld a,e			;720b
	adc a,c			;720c
	sbc a,b			;720d
	ld a,c			;720e
	add a,h			;720f
	ld a,e			;7210
	and c			;7211
	sub a			;7212
	sbc a,b			;7213
	ld (hl),l		;7214
	and c			;7215
	and c			;7216
	ld a,e			;7217
	and h			;7218
	sbc a,c			;7219
	sub e			;721a
	ex af,af'		;721b
	adc a,d			;721c
	sub e			;721d
	ex af,af'		;721e
	nop			;721f
	sbc a,c			;7220
	and h			;7221
	sub e			;7222
	rlca			;7223
	sbc a,l			;7224
	sbc a,h			;7225
	ld (hl),d		;7226
	nop			;7227
	sub c			;7228
	ld (hl),e		;7229
	ld b,000h		;722a
	ld l,(hl)		;722c
	dec b			;722d
	nop			;722e
	nop			;722f
	sub a			;7230
	sbc a,b			;7231
	ld a,e			;7232
	and c			;7233
	add a,h			;7234
	sbc a,e			;7235
	and c			;7236
	and c			;7237
	sbc a,l			;7238
	sbc a,d			;7239
	adc a,b			;723a
	ld a,e			;723b
	and b			;723c
	ld a,b			;723d
	ld a,c			;723e
	add a,h			;723f
	ld (hl),c		;7240
	ld a,(hl)		;7241
	and b			;7242
	and d			;7243
	nop			;7244
	inc de			;7245
	sbc a,(hl)		;7246
	sbc a,l			;7247
	nop			;7248
	nop			;7249
	ld (hl),c		;724a
	sbc a,a			;724b
	nop			;724c
	nop			;724d
	inc bc			;724e
	ld l,a			;724f
	sbc a,b			;7250
	ld a,d			;7251
	ld a,h			;7252
	sbc a,e			;7253
	add a,a			;7254
	ld a,c			;7255
	add a,h			;7256
	and c			;7257
	nop			;7258
	ld bc,00002h		;7259
	nop			;725c
	nop			;725d
	nop			;725e
	nop			;725f
	adc a,d			;7260
	and c			;7261
	sbc a,c			;7262
	and c			;7263
	halt			;7264
	ld a,b			;7265
	sbc a,d			;7266
	sub h			;7267
	inc de			;7268
	adc a,(hl)		;7269
	and b			;726a
	sbc a,c			;726b
	nop			;726c
	ld (hl),c		;726d
	sbc a,(hl)		;726e
	sbc a,l			;726f
	sub e			;7270
	ld (hl),l		;7271
	and c			;7272
	sub e			;7273
	sbc a,c			;7274
	sub e			;7275
	sbc a,e			;7276
	and c			;7277
	and c			;7278
	sub e			;7279
	and c			;727a
	ex af,af'		;727b
	sbc a,l			;727c
	sbc a,h			;727d
	ld (hl),d		;727e
	nop			;727f
	ld a,a			;7280
	and e			;7281
	sbc a,d			;7282
	sub h			;7283
	add a,e			;7284
	adc a,a			;7285
	and e			;7286
	and d			;7287
	ld b,013h		;7288
	and (hl)		;728a
	sbc a,d			;728b
	nop			;728c
	nop			;728d
	ld (hl),c		;728e
	and e			;728f
	ld a,e			;7290
	sub a			;7291
	sbc a,b			;7292
	and c			;7293
	and c			;7294
	adc a,d			;7295
	and h			;7296
	and c			;7297
	adc a,b			;7298
	ld a,h			;7299
	sub e			;729a
	add a,(hl)		;729b
	ld a,c			;729c
	add a,h			;729d
	halt			;729e
	ld a,b			;729f
	ld (hl),l		;72a0
	sub e			;72a1
	ld a,a			;72a2
	sub l			;72a3
	ld (hl),l		;72a4
	sub e			;72a5
	add a,b			;72a6
	and (hl)		;72a7
	and d			;72a8
	sub h			;72a9
	sub e			;72aa
	ld a,a			;72ab
	sbc a,d			;72ac
	and d			;72ad
	sub h			;72ae
	add a,e			;72af
	adc a,b			;72b0
	ld a,h			;72b1
	ld a,e			;72b2
	and c			;72b3
	adc a,h			;72b4
	add a,h			;72b5
	and c			;72b6
	sbc a,b			;72b7
	and b			;72b8
	sub h			;72b9
	sbc a,e			;72ba
	sub e			;72bb
	and (hl)		;72bc
	ld a,l			;72bd
	sbc a,c			;72be
	and c			;72bf
	nop			;72c0
	nop			;72c1
	inc bc			;72c2
	ld (hl),b		;72c3
	nop			;72c4
	inc bc			;72c5
	ld (hl),c		;72c6
	and b			;72c7
	nop			;72c8
	ld (hl),d		;72c9
	sbc a,(hl)		;72ca
	sub d			;72cb
	ex af,af'		;72cc
	and l			;72cd
	ld a,b			;72ce
	sbc a,h			;72cf
	nop			;72d0
	nop			;72d1
	nop			;72d2
	nop			;72d3
	nop			;72d4
	nop			;72d5
	nop			;72d6
	nop			;72d7
	adc a,d			;72d8
	ld a,h			;72d9
	ld (hl),h		;72da
	sbc a,a			;72db
	ld (hl),a		;72dc
	ld (hl),a		;72dd
	and c			;72de
	ld (hl),a		;72df
	nop			;72e0
	nop			;72e1
	nop			;72e2
	nop			;72e3
	inc bc			;72e4
	ld b,003h		;72e5
	ld b,0a4h		;72e7
	sub a			;72e9
	sbc a,b			;72ea
	and c			;72eb
	ld (hl),a		;72ec
	adc a,b			;72ed
	add a,h			;72ee
	sub e			;72ef
	nop			;72f0
	nop			;72f1
	nop			;72f2
	nop			;72f3
	nop			;72f4
	inc b			;72f5
	ld b,004h		;72f6
	ld (hl),l		;72f8
	add a,d			;72f9
	adc a,l			;72fa
	sbc a,a			;72fb
	ld a,a			;72fc
	ld (hl),a		;72fd
	and c			;72fe
	ld (hl),a		;72ff
	nop			;7300
	nop			;7301
	nop			;7302
	nop			;7303
	dec b			;7304
	ld b,005h		;7305
	ld b,081h		;7307
	ld (hl),a		;7309
	add a,l			;730a
	add a,h			;730b
	sub h			;730c
	adc a,c			;730d
	adc a,l			;730e
	and c			;730f
	nop			;7310
	nop			;7311
	nop			;7312
	nop			;7313
	nop			;7314
	nop			;7315
	nop			;7316
	nop			;7317
	nop			;7318
	nop			;7319
	inc bc			;731a
	ld l,l			;731b
	nop			;731c
	inc bc			;731d
	ld (hl),c		;731e
	ld a,d			;731f
	nop			;7320
	nop			;7321
	nop			;7322
	nop			;7323
	nop			;7324
	nop			;7325
	nop			;7326
	nop			;7327
	ld l,d			;7328
	ld (bc),a		;7329
	nop			;732a
	nop			;732b
	sub c			;732c
	ld l,e			;732d
	ld (bc),a		;732e
	nop			;732f
	ld l,a			;7330
	ld bc,00000h		;7331
	ld a,d			;7334
	ld l,c			;7335
	ld (bc),a		;7336
	nop			;7337
	sub d			;7338
	sub d			;7339
	ld l,h			;733a
	nop			;733b
	sbc a,c			;733c
	sub e			;733d
	and c			;733e
	rlca			;733f
	nop			;7340
	ld (hl),d		;7341
	sbc a,(hl)		;7342
	sbc a,l			;7343
	ex af,af'		;7344
	sub b			;7345
	and b			;7346
	sbc a,h			;7347
	add a,c			;7348
	ld a,b			;7349
	sbc a,d			;734a
	sbc a,c			;734b
	sub e			;734c
	sub (hl)		;734d
	and d			;734e
	sub h			;734f
	sbc a,h			;7350
	sub (hl)		;7351
	and c			;7352
	ld a,a			;7353
	add a,e			;7354
	sub e			;7355
	and c			;7356
	sub e			;7357
	ld a,a			;7358
	ld a,a			;7359
	sub (hl)		;735a
	sub h			;735b
	ld a,a			;735c
	ld (hl),a		;735d
	ld (hl),a		;735e
	and c			;735f
	rlca			;7360
	nop			;7361
	nop			;7362
	nop			;7363
	sub e			;7364
	rlca			;7365
	nop			;7366
	nop			;7367
	adc a,b			;7368
	adc a,d			;7369
	ld a,h			;736a
	ld (hl),h		;736b
	ld a,(hl)		;736c
	adc a,l			;736d
	ld (hl),a		;736e
	add a,e			;736f
	nop			;7370
	nop			;7371
	nop			;7372
	nop			;7373
	dec b			;7374
	inc b			;7375
	ld b,000h		;7376
	sbc a,a			;7378
	and h			;7379
	sub a			;737a
	sbc a,b			;737b
	ld (hl),a		;737c
	add a,e			;737d
	ld (hl),a		;737e
	and c			;737f
	inc bc			;7380
	ld (hl),b		;7381
	rlca			;7382
	nop			;7383
	ld (hl),e		;7384
	halt			;7385
	sub e			;7386
	rlca			;7387
	and c			;7388
	adc a,c			;7389
	add a,d			;738a
	sub a			;738b
	sbc a,c			;738c
	ld a,a			;738d
	ld (hl),a		;738e
	and c			;738f
	nop			;7390
	nop			;7391
	inc bc			;7392
	ld (hl),b		;7393
	nop			;7394
	nop			;7395
	ld (hl),e		;7396
	halt			;7397
	sub a			;7398
	sbc a,b			;7399
	and c			;739a
	ld a,h			;739b
	ld (hl),a		;739c
	add a,e			;739d
	sbc a,e			;739e
	ld a,a			;739f
	rlca			;73a0
	nop			;73a1
	nop			;73a2
	nop			;73a3
	sub e			;73a4
	rlca			;73a5
	nop			;73a6
	nop			;73a7
	add a,d			;73a8
	sub a			;73a9
	sub a			;73aa
	sbc a,b			;73ab
	ld (hl),a		;73ac
	and c			;73ad
	ld (hl),a		;73ae
	and c			;73af
	nop			;73b0
	nop			;73b1
	nop			;73b2
	nop			;73b3
	nop			;73b4
	nop			;73b5
	nop			;73b6
	nop			;73b7
	ld l,d			;73b8
	ld (bc),a		;73b9
	nop			;73ba
	nop			;73bb
	sub c			;73bc
	ld l,e			;73bd
	ld (bc),a		;73be
	ld (de),a		;73bf
	nop			;73c0
	inc bc			;73c1
	ld l,(hl)		;73c2
	ld bc,l7100h		;73c3
	ld a,d			;73c6
	ld l,c			;73c7
	ex af,af'		;73c8
	sbc a,(hl)		;73c9
	sub d			;73ca
	sbc a,h			;73cb
	and (hl)		;73cc
	and e			;73cd
	and c			;73ce
	and c			;73cf
	sub (hl)		;73d0
	and c			;73d1
	rlca			;73d2
	nop			;73d3
	ld a,a			;73d4
	and c			;73d5
	add a,e			;73d6
	rlca			;73d7
	ld a,a			;73d8
	sub (hl)		;73d9
	and c			;73da
	and c			;73db
	ld a,a			;73dc
	ld a,a			;73dd
	sbc a,e			;73de
	and c			;73df
	ld a,a			;73e0
	ld a,l			;73e1
	ld a,e			;73e2
	sbc a,d			;73e3
	adc a,a			;73e4
	sub l			;73e5
	and e			;73e6
	sub h			;73e7
	sub l			;73e8
	sub b			;73e9
	adc a,h			;73ea
	add a,h			;73eb
	sub l			;73ec
	ld a,c			;73ed
	add a,(hl)		;73ee
	and c			;73ef
	nop			;73f0
	nop			;73f1
	nop			;73f2
	nop			;73f3
	ld (bc),a		;73f4
	nop			;73f5
	nop			;73f6
	nop			;73f7
	ld l,h			;73f8
	nop			;73f9
	nop			;73fa
	inc bc			;73fb
	sub e			;73fc
	rlca			;73fd
	inc b			;73fe
	ld (hl),c		;73ff
	sbc a,l			;7400
	sbc a,h			;7401
	ld l,h			;7402
	ld (hl),d		;7403
	sub e			;7404
	and c			;7405
	adc a,a			;7406
	sub l			;7407
	sbc a,c			;7408
	adc a,(hl)		;7409
	sub l			;740a
	sub b			;740b
	and c			;740c
	ld a,l			;740d
	sub l			;740e
	ld a,c			;740f
	ld a,e			;7410
	sbc a,d			;7411
	sbc a,c			;7412
	ld a,a			;7413
	ld a,b			;7414
	sbc a,c			;7415
	and c			;7416
	ld a,a			;7417
	adc a,h			;7418
	add a,h			;7419
	sbc a,e			;741a
	adc a,b			;741b
	add a,(hl)		;741c
	and c			;741d
	sub e			;741e
	add a,(hl)		;741f
	sub (hl)		;7420
	and c			;7421
	add a,c			;7422
	sbc a,d			;7423
	ld a,a			;7424
	sub e			;7425
	sub (hl)		;7426
	and d			;7427
	sub (hl)		;7428
	and c			;7429
	adc a,b			;742a
	adc a,d			;742b
	ld (hl),a		;742c
	and c			;742d
	ld a,(hl)		;742e
	adc a,l			;742f
	nop			;7430
	nop			;7431
	nop			;7432
	nop			;7433
	nop			;7434
	nop			;7435
	nop			;7436
	nop			;7437
	ld l,(hl)		;7438
	ld bc,00000h		;7439
	ld a,d			;743c
	ld l,c			;743d
	ld (bc),a		;743e
	nop			;743f
	sbc a,l			;7440
	sbc a,h			;7441
	ld l,h			;7442
	nop			;7443
	sub (hl)		;7444
	and c			;7445
	and c			;7446
	rlca			;7447
	sub (hl)		;7448
	sub e			;7449
	adc a,b			;744a
	adc a,d			;744b
	ld (hl),a		;744c
	and c			;744d
	ld a,(hl)		;744e
	ld (hl),a		;744f
	sub a			;7450
	sbc a,b			;7451
	ld (hl),a		;7452
	and c			;7453
	ld (hl),a		;7454
	and c			;7455
	sub a			;7456
	sbc a,b			;7457
	ld a,a			;7458
	sub (hl)		;7459
	sbc a,c			;745a
	adc a,b			;745b
	and c			;745c
	ld a,a			;745d
	adc a,b			;745e
	add a,a			;745f
	nop			;7460
	nop			;7461
	nop			;7462
	nop			;7463
	nop			;7464
	nop			;7465
	nop			;7466
	inc bc			;7467
	nop			;7468
	nop			;7469
	nop			;746a
	ld (hl),d		;746b
	nop			;746c
	nop			;746d
	ex af,af'		;746e
	and l			;746f
	inc bc			;7470
	ld l,l			;7471
	ld l,d			;7472
	ld (bc),a		;7473
	ld (hl),c		;7474
	ld a,d			;7475
	sub c			;7476
	ld l,e			;7477
	sbc a,(hl)		;7478
	sbc a,l			;7479
	sub d			;747a
	sbc a,h			;747b
	and e			;747c
	and c			;747d
	add a,e			;747e
	and c			;747f
	nop			;7480
	ld (de),a		;7481
	ld a,e			;7482
	sbc a,d			;7483
	inc b			;7484
	ld (hl),e		;7485
	and e			;7486
	and d			;7487
	add a,e			;7488
	adc a,c			;7489
	add a,d			;748a
	sbc a,e			;748b
	ld a,a			;748c
	ld a,a			;748d
	ld (hl),a		;748e
	and c			;748f
	sbc a,c			;7490
	and c			;7491
	ld a,a			;7492
	ld a,a			;7493
	and d			;7494
	sub h			;7495
	sub e			;7496
	ld a,a			;7497
	adc a,b			;7498
	add a,h			;7499
	ld a,a			;749a
	and c			;749b
	add a,(hl)		;749c
	add a,e			;749d
	ld (hl),a		;749e
	add a,e			;749f
	sbc a,c			;74a0
	sub e			;74a1
	ld a,a			;74a2
	ld a,a			;74a3
	and d			;74a4
	sub h			;74a5
	ld a,a			;74a6
	ld a,a			;74a7
	sbc a,e			;74a8
	sbc a,e			;74a9
	ld a,a			;74aa
	adc a,(hl)		;74ab
	ld (hl),a		;74ac
	and c			;74ad
	sub e			;74ae
	ld a,l			;74af
	nop			;74b0
	nop			;74b1
	nop			;74b2
	nop			;74b3
	nop			;74b4
	nop			;74b5
	nop			;74b6
	nop			;74b7
	nop			;74b8
	nop			;74b9
	nop			;74ba
	ex af,af'		;74bb
	nop			;74bc
	inc b			;74bd
	ld (de),a		;74be
	and l			;74bf
	nop			;74c0
	nop			;74c1
	nop			;74c2
	nop			;74c3
	ld (bc),a		;74c4
	nop			;74c5
	nop			;74c6
	nop			;74c7
	ld l,h			;74c8
	nop			;74c9
	nop			;74ca
	nop			;74cb
	sub e			;74cc
	rlca			;74cd
	nop			;74ce
	nop			;74cf
	sub e			;74d0
	adc a,b			;74d1
	add a,a			;74d2
	sub b			;74d3
	adc a,b			;74d4
	ld a,l			;74d5
	sub l			;74d6
	ld a,c			;74d7
	add a,a			;74d8
	sub b			;74d9
	ld a,b			;74da
	adc a,h			;74db
	ld a,b			;74dc
	sbc a,d			;74dd
	sbc a,d			;74de
	adc a,l			;74df
	sbc a,d			;74e0
	sbc a,c			;74e1
	ld a,a			;74e2
	sub (hl)		;74e3
	and d			;74e4
	sub h			;74e5
	ld a,a			;74e6
	ld a,a			;74e7
	sbc a,c			;74e8
	sbc a,e			;74e9
	ld a,a			;74ea
	and c			;74eb
	and c			;74ec
	sub e			;74ed
	ld a,a			;74ee
	and c			;74ef
	sub a			;74f0
	sbc a,b			;74f1
	and c			;74f2
	add a,b			;74f3
	ld (hl),a		;74f4
	and c			;74f5
	adc a,(hl)		;74f6
	sub l			;74f7
	sub a			;74f8
	sbc a,b			;74f9
	adc a,e			;74fa
	adc a,h			;74fb
	ld (hl),a		;74fc
	adc a,(hl)		;74fd
	sub l			;74fe
	add a,(hl)		;74ff
	sub a			;7500
	sbc a,b			;7501
	ld l,h			;7502
	nop			;7503
	ld (hl),a		;7504
	add a,e			;7505
	sub e			;7506
	rlca			;7507
	ld a,a			;7508
	sub (hl)		;7509
	adc a,b			;750a
	adc a,d			;750b
	ld (hl),a		;750c
	and c			;750d
	ld a,(hl)		;750e
	adc a,l			;750f
	nop			;7510
	nop			;7511
	nop			;7512
	ld (de),a		;7513
	nop			;7514
	nop			;7515
	inc b			;7516
	ld (hl),e		;7517
	ld (hl),l		;7518
	ld (hl),h		;7519
	sbc a,b			;751a
	adc a,c			;751b
	ld (hl),a		;751c
	and c			;751d
	add a,e			;751e
	sub (hl)		;751f
	ld a,a			;7520
	sub (hl)		;7521
	sub a			;7522
	sbc a,b			;7523
	ld a,a			;7524
	ld a,a			;7525
	adc a,l			;7526
	and c			;7527
	adc a,b			;7528
	add a,d			;7529
	sub a			;752a
	sbc a,b			;752b
	add a,(hl)		;752c
	and c			;752d
	ld (hl),a		;752e
	adc a,(hl)		;752f
	add a,e			;7530
	add a,b			;7531
	sub l			;7532
	sbc a,b			;7533
	adc a,(hl)		;7534
	sub l			;7535
	and e			;7536
	and d			;7537
	adc a,e			;7538
	add a,l			;7539
	adc a,d			;753a
	add a,h			;753b
	and e			;753c
	adc a,l			;753d
	add a,(hl)		;753e
	sbc a,b			;753f
	and c			;7540
	sbc a,h			;7541
	ld l,h			;7542
	nop			;7543
	and c			;7544
	add a,e			;7545
	sub e			;7546
	rlca			;7547
	and c			;7548
	sub e			;7549
	sub e			;754a
	and c			;754b
	sub e			;754c
	ld a,a			;754d
	ld a,a			;754e
	sub e			;754f
	ld a,e			;7550
	add a,c			;7551
	adc a,l			;7552
	sbc a,b			;7553
	sub a			;7554
	sbc a,b			;7555
	adc a,e			;7556
	adc a,h			;7557
	sbc a,l			;7558
	sbc a,c			;7559
	add a,e			;755a
	adc a,a			;755b
	and b			;755c
	sbc a,d			;755d
	add a,l			;755e
	ld (hl),h		;755f
	sub a			;7560
	sbc a,b			;7561
	ld a,e			;7562
	ld a,a			;7563
	ld (hl),l		;7564
	ld (hl),l		;7565
	and c			;7566
	add a,b			;7567
	and d			;7568
	and c			;7569
	adc a,b			;756a
	ld a,e			;756b
	sub a			;756c
	sbc a,b			;756d
	ld a,c			;756e
	add a,h			;756f
	adc a,b			;7570
	sub h			;7571
	and c			;7572
	ld a,a			;7573
	adc a,h			;7574
	add a,h			;7575
	and c			;7576
	add a,b			;7577
	and e			;7578
	sbc a,d			;7579
	adc a,b			;757a
	ld a,e			;757b
	adc a,c			;757c
	sbc a,b			;757d
	ld a,c			;757e
	add a,h			;757f
	ld a,e			;7580
	add a,c			;7581
	adc a,l			;7582
	sbc a,b			;7583
	sub a			;7584
	sbc a,b			;7585
	adc a,e			;7586
	adc a,h			;7587
	adc a,b			;7588
	and c			;7589
	add a,e			;758a
	adc a,a			;758b
	ld a,c			;758c
	add a,h			;758d
	and c			;758e
	sub d			;758f
	adc a,b			;7590
	sub h			;7591
	and c			;7592
	ld a,e			;7593
	adc a,h			;7594
	add a,h			;7595
	sbc a,e			;7596
	sub e			;7597
	and e			;7598
	sbc a,e			;7599
	sub h			;759a
	and c			;759b
	adc a,c			;759c
	add a,h			;759d
	sbc a,c			;759e
	sub e			;759f
	sbc a,b			;75a0
	ld a,d			;75a1
	add a,c			;75a2
	adc a,l			;75a3
	add a,a			;75a4
	ld a,c			;75a5
	add a,h			;75a6
	add a,c			;75a7
	nop			;75a8
	ld bc,00002h		;75a9
	nop			;75ac
	nop			;75ad
	nop			;75ae
	nop			;75af
	ld a,e			;75b0
	and c			;75b1
	ld a,e			;75b2
	and c			;75b3
	sbc a,b			;75b4
	halt			;75b5
	add a,d			;75b6
	sub a			;75b7
	nop			;75b8
	nop			;75b9
	ld bc,00002h		;75ba
	nop			;75bd
	nop			;75be
	nop			;75bf
	inc bc			;75c0
	ld (hl),b		;75c1
	sbc a,(hl)		;75c2
	sbc a,l			;75c3
	ld (hl),d		;75c4
	sub b			;75c5
	and b			;75c6
	sbc a,h			;75c7
	add a,c			;75c8
	ld a,b			;75c9
	sbc a,d			;75ca
	sbc a,c			;75cb
	sub e			;75cc
	sub (hl)		;75cd
	and d			;75ce
	sub h			;75cf
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
	ld e,001h		;75e0
	ld e,001h		;75e2
	dec b			;75e4
	ld (bc),a		;75e5
	rlca			;75e6
	jr nz,$+35		;75e7
	ld hl,02121h		;75e9
	inc hl			;75ec
	inc hl			;75ed
	inc hl			;75ee
	inc hl			;75ef
	ld e,001h		;75f0
	ld e,001h		;75f2
	dec b			;75f4
	ld (bc),a		;75f5
	rlca			;75f6
	jr nz,$+38		;75f7
	cpl			;75f9
	ld hl,04026h		;75fa
	ld l,023h		;75fd
	ld c,d			;75ff
	ld e,001h		;7600
	ld e,001h		;7602
	dec b			;7604
	ld (bc),a		;7605
	rlca			;7606
	jr nz,l762ah		;7607
	ld hl,02126h		;7609
	inc hl			;760c
	inc hl			;760d
	ld c,d			;760e
	inc hl			;760f
	ld (02722h),hl		;7610
	ld (01d1dh),hl		;7613
	jr nc,$+31		;7616
	ld a,(0303ah)		;7618
	ld a,(02c2ch)		;761b
	ld sp,0292ch		;761e
	ld (02922h),hl		;7621
	ld hl,(01d1dh)		;7624
	ld hl,(03a2bh)		;7627
l762ah:
	ld a,(03c3bh)		;762a
	inc l			;762d
	inc l			;762e
	inc a			;762f
	inc bc			;7630
	inc bc			;7631
	add hl,hl		;7632
	ld (03232h),hl		;7633
	ld hl,(03949h)		;7636
	ld b,h			;7639
	dec sp			;763a
	ld a,(00606h)		;763b
	inc a			;763e
	inc l			;763f
	ld (02722h),hl		;7640
	ld (04349h),hl		;7643
	jr nc,l7665h		;7646
	ld a,(0303ah)		;7648
	ld a,(02c2ch)		;764b
	ld sp,00f2ch		;764e
	dec l			;7651
	djnz l7665h		;7652
	ld e,001h		;7654
	ld e,001h		;7656
	dec b			;7658
	ld (bc),a		;7659
	rlca			;765a
	jr nz,l767bh		;765b
	ld bc,0011eh		;765d
	inc (hl)		;7660
	ld b,a			;7661
	ld b,(hl)		;7662
	ld c,b			;7663
	dec h			;7664
l7665h:
	ld c,00ch		;7665
	dec c			;7667
	inc (hl)		;7668
	ld b,a			;7669
	ld b,(hl)		;766a
	ld c,b			;766b
	dec h			;766c
	ld c,00ch		;766d
	dec c			;766f
	djnz $+17		;7670
	inc b			;7672
	ex af,af'		;7673
	jr z,l7677h		;7674
	inc sp			;7676
l7677h:
	add hl,bc		;7677
	rra			;7678
	jr nz,$+12		;7679
l767bh:
	dec bc			;767b
	jr z,$+3		;767c
	ld e,001h		;767e
	ld (02222h),hl		;7680
	ld (01d1dh),hl		;7683
	dec e			;7686
	dec e			;7687
	ld a,(03a3ah)		;7688
	ld a,(02c2ch)		;768b
	inc l			;768e
	inc l			;768f
	adc a,c			;7690
	ld h,l			;7691
	ld h,a			;7692
	adc a,c			;7693
	ld e,(hl)		;7694
	ld l,d			;7695
	ld l,e			;7696
	ld e,(hl)		;7697
	ld l,b			;7698
	ld l,e			;7699
	ld l,h			;769a
	ld e,(hl)		;769b
	ld a,e			;769c
	ld l,d			;769d
	ld l,h			;769e
	ld e,(hl)		;769f
	ld l,e			;76a0
	ld l,h			;76a1
	ld e,(hl)		;76a2
	ld e,l			;76a3
	ld a,l			;76a4
	sub c			;76a5
	sbc a,d			;76a6
	ld l,b			;76a7
	cp a			;76a8
	xor l			;76a9
	ld (hl),c		;76aa
	ld a,e			;76ab
	ld l,e			;76ac
	ld l,h			;76ad
	ld e,(hl)		;76ae
	ld e,l			;76af
	adc a,c			;76b0
	adc a,(hl)		;76b1
	adc a,c			;76b2
	adc a,(hl)		;76b3
	ld e,(hl)		;76b4
	ld e,h			;76b5
	ld e,(hl)		;76b6
	ld e,h			;76b7
	ld e,a			;76b8
	adc a,e			;76b9
	xor e			;76ba
	ld e,l			;76bb
	ld e,a			;76bc
	sbc a,e			;76bd
	add a,05ch		;76be
	adc a,c			;76c0
	adc a,(hl)		;76c1
	adc a,c			;76c2
	adc a,(hl)		;76c3
	ld e,(hl)		;76c4
	ld e,h			;76c5
	ld e,(hl)		;76c6
	ld e,h			;76c7
	ld e,a			;76c8
	ld e,l			;76c9
	ld e,a			;76ca
	ld e,l			;76cb
	ld e,a			;76cc
	ld e,h			;76cd
	ld e,a			;76ce
	ld e,h			;76cf
	ld h,h			;76d0
	adc a,(hl)		;76d1
	ld h,a			;76d2
	ret			;76d3
	ld h,b			;76d4
	ld e,h			;76d5
	ld l,e			;76d6
	ld l,l			;76d7
	ld h,b			;76d8
	ld e,l			;76d9
	ld l,e			;76da
	ld l,l			;76db
	ld h,b			;76dc
	ld e,h			;76dd
	ld l,e			;76de
	ld l,l			;76df
	adc a,c			;76e0
	adc a,(hl)		;76e1
	ld h,a			;76e2
	adc a,c			;76e3
	ld l,b			;76e4
	ld e,h			;76e5
	ld l,e			;76e6
	ld e,(hl)		;76e7
	ld a,e			;76e8
	ld e,l			;76e9
	ld l,h			;76ea
	ld e,(hl)		;76eb
	ld e,a			;76ec
	ld e,h			;76ed
	ld l,h			;76ee
	ld e,(hl)		;76ef
	ld h,h			;76f0
	adc a,c			;76f1
	adc a,(hl)		;76f2
	adc a,c			;76f3
	ld h,b			;76f4
	ld a,l			;76f5
	sub c			;76f6
	sbc a,d			;76f7
	ld h,b			;76f8
	cp a			;76f9
	xor l			;76fa
	ld (hl),c		;76fb
	ld h,b			;76fc
	ld e,a			;76fd
	ld e,h			;76fe
	ld e,(hl)		;76ff
	adc a,c			;7700
	ld h,l			;7701
	ld h,a			;7702
	ret			;7703
	ld l,b			;7704
	ld l,e			;7705
	ld l,d			;7706
	ld l,l			;7707
	ld a,e			;7708
	ld l,h			;7709
	ld l,h			;770a
	ld l,l			;770b
	ld e,h			;770c
	ld l,e			;770d
	ld l,d			;770e
	ld l,l			;770f
	ld h,h			;7710
	adc a,(hl)		;7711
	ld h,a			;7712
	adc a,c			;7713
	ld h,b			;7714
	ld e,h			;7715
	ld l,e			;7716
	ld e,(hl)		;7717
	ld h,b			;7718
	ld e,l			;7719
	ld l,h			;771a
	ld e,(hl)		;771b
	ld h,b			;771c
	ld e,h			;771d
	ld l,h			;771e
	ld e,(hl)		;771f
	adc a,c			;7720
	adc a,(hl)		;7721
	ld h,a			;7722
	ret			;7723
	ld e,(hl)		;7724
	ld e,h			;7725
	ld l,e			;7726
	ld l,l			;7727
	ld e,a			;7728
	ld e,l			;7729
	ld l,h			;772a
	ld l,l			;772b
	ld e,a			;772c
	ld e,h			;772d
	ld l,h			;772e
	ld l,l			;772f
	adc a,c			;7730
	adc a,(hl)		;7731
	ld h,a			;7732
	adc a,c			;7733
	ld e,(hl)		;7734
	ld e,h			;7735
	ld l,e			;7736
	ld e,(hl)		;7737
	ld e,a			;7738
	ld e,l			;7739
	ld l,h			;773a
	ld e,(hl)		;773b
	ld e,a			;773c
	ld e,h			;773d
	ld l,h			;773e
	ld e,(hl)		;773f
	adc a,c			;7740
	ld h,a			;7741
	ret			;7742
	ld c,b			;7743
	ld e,(hl)		;7744
	ld l,d			;7745
	ld l,l			;7746
	dec c			;7747
	ld e,a			;7748
	ld l,c			;7749
	ld l,l			;774a
	ld c,b			;774b
	ld e,a			;774c
	ld l,d			;774d
	ld l,l			;774e
	dec c			;774f
	adc a,c			;7750
	adc a,(hl)		;7751
	adc a,c			;7752
	adc a,c			;7753
	ld a,l			;7754
	sub c			;7755
	sbc a,d			;7756
	ld l,b			;7757
	cp a			;7758
	xor l			;7759
	ld (hl),c		;775a
	ld a,e			;775b
	ld e,(hl)		;775c
	ld e,h			;775d
	ld e,(hl)		;775e
	ld e,a			;775f
	ld h,l			;7760
	ld h,a			;7761
	ld (hl),h		;7762
	ld h,l			;7763
	ld l,h			;7764
	ld l,d			;7765
	push bc			;7766
	ld l,c			;7767
	ld l,e			;7768
	ld l,c			;7769
	push bc			;776a
	ld l,e			;776b
	ld l,h			;776c
	ld l,d			;776d
	push bc			;776e
	ld l,c			;776f
	add hl,hl		;7770
	inc bc			;7771
	inc bc			;7772
	add hl,hl		;7773
	ld hl,(03232h)		;7774
	ld hl,(08e64h)		;7777
	ld h,a			;777a
	ret			;777b
	ld e,a			;777c
	ld e,h			;777d
	ld l,e			;777e
	ld l,l			;777f
	ret			;7780
	cp d			;7781
	or d			;7782
	ld h,h			;7783
	ld l,l			;7784
	cp d			;7785
	or d			;7786
	ld h,b			;7787
	ld l,l			;7788
	adc a,(hl)		;7789
	ld h,a			;778a
	ld h,b			;778b
	ld e,a			;778c
	ld e,h			;778d
	ld l,e			;778e
	ld e,(hl)		;778f
	or d			;7790
	xor d			;7791
	sub l			;7792
	cp d			;7793
	ld a,a			;7794
	ld h,e			;7795
	pop bc			;7796
	ld a,(hl)		;7797
	and e			;7798
	xor c			;7799
	and e			;779a
	and e			;779b
	ld a,(hl)		;779c
	ld h,e			;779d
	ld a,(hl)		;779e
	ld a,(hl)		;779f
	or d			;77a0
	or c			;77a1
	or c			;77a2
	cp l			;77a3
	ld a,(hl)		;77a4
	ld h,e			;77a5
	ld a,(hl)		;77a6
	pop bc			;77a7
	and e			;77a8
	xor c			;77a9
	and e			;77aa
	and e			;77ab
	ld a,(hl)		;77ac
	ld h,e			;77ad
	ld a,(hl)		;77ae
	ld a,(hl)		;77af
	rrca			;77b0
	dec l			;77b1
	djnz l77c5h		;77b2
	cp d			;77b4
	or d			;77b5
	cp l			;77b6
	or c			;77b7
	pop bc			;77b8
	ld a,(hl)		;77b9
	ld h,e			;77ba
	ld a,a			;77bb
	cp d			;77bc
	or d			;77bd
	cp l			;77be
	or c			;77bf
	inc (hl)		;77c0
	ld b,a			;77c1
	ld b,(hl)		;77c2
	ld c,b			;77c3
	xor d			;77c4
l77c5h:
	sub l			;77c5
	cp d			;77c6
	or d			;77c7
	ld a,(hl)		;77c8
	ld a,a			;77c9
	ld h,e			;77ca
	pop bc			;77cb
	or d			;77cc
	or c			;77cd
	cp l			;77ce
	or d			;77cf
	ld e,(hl)		;77d0
	ld e,l			;77d1
	ld l,h			;77d2
	ld e,(hl)		;77d3
	ld e,a			;77d4
	ld a,l			;77d5
	sub c			;77d6
	sbc a,d			;77d7
	ld e,(hl)		;77d8
	cp a			;77d9
	xor l			;77da
	ld (hl),c		;77db
	ld e,a			;77dc
	ld e,h			;77dd
	ld l,h			;77de
	ld e,(hl)		;77df
	ld h,b			;77e0
	ld e,l			;77e1
	ld l,h			;77e2
	ld e,(hl)		;77e3
	ld h,b			;77e4
	ld a,l			;77e5
	sub c			;77e6
	sbc a,d			;77e7
	ld h,b			;77e8
	cp a			;77e9
	xor l			;77ea
	ld (hl),c		;77eb
	ld h,b			;77ec
	ld e,h			;77ed
	ld l,h			;77ee
	ld e,(hl)		;77ef
	ld h,h			;77f0
	ret			;77f1
	cp d			;77f2
	cp l			;77f3
	ld h,b			;77f4
	ld l,l			;77f5
	pop bc			;77f6
	ld h,e			;77f7
	ld h,b			;77f8
	ld l,l			;77f9
	adc a,(hl)		;77fa
	adc a,c			;77fb
	ld h,b			;77fc
	ld e,a			;77fd
	ld e,h			;77fe
	ld e,(hl)		;77ff
	or c			;7800
	or d			;7801
	ld h,h			;7802
	ret			;7803
	ld a,a			;7804
	pop bc			;7805
	ld h,b			;7806
	ld l,l			;7807
	adc a,(hl)		;7808
	adc a,c			;7809
	ld h,b			;780a
	ld l,l			;780b
	ld e,h			;780c
	ld e,(hl)		;780d
	ld e,(hl)		;780e
	ld l,l			;780f
	ret			;7810
	cp d			;7811
	or d			;7812
	cp l			;7813
	ld l,l			;7814
	pop bc			;7815
	ld a,(hl)		;7816
	ld h,e			;7817
	ld l,l			;7818
	adc a,c			;7819
	adc a,(hl)		;781a
	adc a,c			;781b
	ld e,a			;781c
	ld e,(hl)		;781d
	ld e,h			;781e
	ld e,(hl)		;781f
	xor d			;7820
	sub l			;7821
	cp d			;7822
	or d			;7823
	ld a,a			;7824
	ld a,(hl)		;7825
	ld h,e			;7826
	ld a,(hl)		;7827
	adc a,(hl)		;7828
	adc a,c			;7829
	adc a,(hl)		;782a
	adc a,c			;782b
	ld e,h			;782c
	ld e,(hl)		;782d
	ld e,h			;782e
	ld e,(hl)		;782f
	or c			;7830
	or d			;7831
	cp l			;7832
	ld h,h			;7833
	ld a,a			;7834
	ld h,e			;7835
	pop bc			;7836
	ld h,b			;7837
	adc a,(hl)		;7838
	adc a,c			;7839
	adc a,(hl)		;783a
	ld h,b			;783b
	ld e,h			;783c
	ld e,(hl)		;783d
	ld e,h			;783e
	ld e,(hl)		;783f
	rrca			;7840
	dec l			;7841
	djnz $+19		;7842
	ld e,001h		;7844
	ld e,001h		;7846
	ld h,h			;7848
	adc a,(hl)		;7849
	ld h,a			;784a
	ret			;784b
	ld e,(hl)		;784c
	ld e,h			;784d
	ld l,e			;784e
	ld l,l			;784f
	add hl,hl		;7850
	inc bc			;7851
	inc bc			;7852
	add hl,hl		;7853
	ld hl,(03232h)		;7854
	ld hl,(08e64h)		;7857
	ld h,a			;785a
	adc a,c			;785b
	ld h,b			;785c
	ld e,h			;785d
	ld l,h			;785e
	ld e,(hl)		;785f
	ld (02722h),hl		;7860
	ld (04349h),hl		;7863
	jr nc,$+31		;7866
	adc a,c			;7868
	adc a,(hl)		;7869
	ld h,a			;786a
	ret			;786b
	ld e,(hl)		;786c
	ld e,h			;786d
	ld l,e			;786e
	ld l,l			;786f
	rrca			;7870
	dec l			;7871
	djnz $+19		;7872
	ld e,001h		;7874
	ld e,001h		;7876
	ld h,h			;7878
	adc a,(hl)		;7879
	ld h,a			;787a
	adc a,c			;787b
	ld h,b			;787c
	ld e,h			;787d
	ld l,h			;787e
	ld e,(hl)		;787f
	rrca			;7880
	dec l			;7881
	djnz l7895h		;7882
	ld e,001h		;7884
	ld e,001h		;7886
	adc a,c			;7888
	adc a,(hl)		;7889
	ld h,a			;788a
	ret			;788b
	ld e,(hl)		;788c
	ld e,h			;788d
	ld l,e			;788e
	ld l,l			;788f
	inc (hl)		;7890
	ld b,a			;7891
	ld b,(hl)		;7892
	ld c,b			;7893
	dec h			;7894
l7895h:
	ld c,00ch		;7895
	dec c			;7897
	adc a,c			;7898
	adc a,(hl)		;7899
	ld h,a			;789a
	adc a,c			;789b
	ld e,(hl)		;789c
	ld e,h			;789d
	ld l,e			;789e
	ld e,(hl)		;789f
	inc (hl)		;78a0
	ld b,a			;78a1
	ld b,(hl)		;78a2
	ld c,b			;78a3
	dec h			;78a4
	ld c,00ch		;78a5
	dec c			;78a7
	ld h,l			;78a8
	ld h,a			;78a9
	adc a,(hl)		;78aa
	adc a,c			;78ab
	ld l,e			;78ac
	ld l,h			;78ad
	ld e,(hl)		;78ae
	ld e,(hl)		;78af
	ld (02722h),hl		;78b0
	ld (04349h),hl		;78b3
	jr nc,l78d5h		;78b6
	ld h,l			;78b8
	ld h,a			;78b9
	adc a,(hl)		;78ba
	ret			;78bb
	ld l,e			;78bc
	ld l,h			;78bd
	ld e,(hl)		;78be
	ld l,l			;78bf
	ld e,a			;78c0
	ld e,l			;78c1
	ld l,h			;78c2
	ld l,l			;78c3
	ld e,a			;78c4
	ld e,h			;78c5
	ld l,e			;78c6
	ld l,l			;78c7
	adc a,e			;78c8
	xor e			;78c9
	ld l,h			;78ca
	ld l,l			;78cb
	sbc a,e			;78cc
	add a,0c5h		;78cd
	ld l,l			;78cf
	ld h,b			;78d0
	ld e,l			;78d1
	ld l,h			;78d2
	ld e,(hl)		;78d3
	ld h,b			;78d4
l78d5h:
	ld e,h			;78d5
	push bc			;78d6
	ld e,a			;78d7
	ld h,b			;78d8
	ld e,l			;78d9
	ld l,h			;78da
	ld e,(hl)		;78db
	ld h,b			;78dc
	ld e,h			;78dd
	push bc			;78de
	ld e,a			;78df
	ld e,a			;78e0
	ld e,h			;78e1
	ld e,(hl)		;78e2
	ld e,a			;78e3
	ld a,l			;78e4
	sub c			;78e5
	sbc a,d			;78e6
	ld l,b			;78e7
	cp a			;78e8
	xor l			;78e9
	ld (hl),c		;78ea
	ld a,e			;78eb
	ld e,(hl)		;78ec
	ld e,h			;78ed
	ld e,(hl)		;78ee
	ld e,a			;78ef
	ld e,a			;78f0
	ld e,l			;78f1
	ld l,h			;78f2
	ld l,l			;78f3
	ld e,(hl)		;78f4
	ld e,h			;78f5
	push bc			;78f6
	ld l,l			;78f7
	ld e,a			;78f8
	ld e,l			;78f9
	ld l,h			;78fa
	ld l,l			;78fb
	ld e,(hl)		;78fc
	ld e,h			;78fd
	push bc			;78fe
	ld l,l			;78ff
	ld e,a			;7900
	ld e,l			;7901
	ld l,h			;7902
	ld e,(hl)		;7903
	ld e,(hl)		;7904
	ld e,h			;7905
	push bc			;7906
	ld e,a			;7907
	ld e,a			;7908
	ld e,l			;7909
	ld l,h			;790a
	ld e,(hl)		;790b
	ld e,(hl)		;790c
	ld e,h			;790d
	push bc			;790e
	ld e,a			;790f
	ld e,a			;7910
	ld e,l			;7911
	ld l,h			;7912
	ld e,(hl)		;7913
	ld e,a			;7914
	ld e,h			;7915
	push bc			;7916
	ld e,a			;7917
	ld e,a			;7918
	adc a,e			;7919
	xor e			;791a
	ld e,(hl)		;791b
	ld e,a			;791c
	sbc a,e			;791d
	add a,05fh		;791e
	ld h,b			;7920
	ld e,l			;7921
	ld l,e			;7922
	ld e,a			;7923
	ld h,b			;7924
	ld e,h			;7925
	ld l,h			;7926
	ld e,(hl)		;7927
	ld h,b			;7928
	ld e,l			;7929
	ld l,h			;792a
	ld e,(hl)		;792b
	res 1,a			;792c
	ld h,(hl)		;792e
	adc a,d			;792f
	ld e,a			;7930
	ld e,h			;7931
	ld l,e			;7932
	ld e,a			;7933
	ld e,(hl)		;7934
	ld e,l			;7935
	ld l,h			;7936
	ld e,(hl)		;7937
	ld e,a			;7938
	ld e,h			;7939
	ld l,h			;793a
	ld l,l			;793b
	adc a,d			;793c
l793dh:
	adc a,a			;793d
	ld h,(hl)		;793e
	jp z,05d5fh		;793f
	ld l,h			;7942
	ld e,(hl)		;7943
	ld e,(hl)		;7944
	ld e,h			;7945
	push bc			;7946
	ld e,a			;7947
	ld e,a			;7948
	ld e,l			;7949
	ld l,h			;794a
	ld l,l			;794b
	ld e,(hl)		;794c
	ld e,h			;794d
	push bc			;794e
	ld l,l			;794f
	ld e,a			;7950
	ld e,h			;7951
	ld l,l			;7952
	ld bc,05d5fh		;7953
	ld l,l			;7956
	jr nz,l79b8h		;7957
	ld e,h			;7959
	ld l,l			;795a
	ld hl,08a8fh		;795b
	jp z,08923h		;795e
	adc a,(hl)		;7961
	ld h,a			;7962
	adc a,c			;7963
	ld e,(hl)		;7964
	ld e,h			;7965
	ld l,h			;7966
	ld e,(hl)		;7967
	ld e,(hl)		;7968
	ld e,h			;7969
l796ah:
	ld l,h			;796a
	ld e,(hl)		;796b
	adc a,d			;796c
	adc a,a			;796d
	ld h,(hl)		;796e
	adc a,d			;796f
	ld h,a			;7970
	ld h,l			;7971
	adc a,c			;7972
	adc a,c			;7973
	ld l,e			;7974
	ld l,h			;7975
	ld e,(hl)		;7976
	ld e,(hl)		;7977
	push bc			;7978
	ld l,h			;7979
	ld e,(hl)		;797a
	ld e,(hl)		;797b
	ld h,(hl)		;797c
	ld h,(hl)		;797d
	adc a,d			;797e
	adc a,d			;797f
	adc a,c			;7980
	adc a,(hl)		;7981
	ld h,a			;7982
	ret			;7983
	ld e,(hl)		;7984
	ld e,h			;7985
	ld l,e			;7986
	ld l,l			;7987
	ld e,(hl)		;7988
	ld e,h			;7989
	ld l,e			;798a
	ld l,l			;798b
	adc a,d			;798c
	adc a,a			;798d
	ld h,(hl)		;798e
	jp z,08e64h		;798f
	ld h,a			;7992
	adc a,c			;7993
	ld h,b			;7994
	ld e,h			;7995
	ld l,h			;7996
	ld e,(hl)		;7997
	ld h,b			;7998
	ld e,h			;7999
	ld l,h			;799a
	ld e,(hl)		;799b
	res 1,a			;799c
	ld h,(hl)		;799e
	adc a,d			;799f
	ld h,b			;79a0
	ld e,l			;79a1
	ld l,e			;79a2
	ld l,l			;79a3
	ld h,b			;79a4
	ld e,h			;79a5
	push bc			;79a6
	ld l,l			;79a7
	ld h,b			;79a8
	ld e,l			;79a9
	ld l,e			;79aa
	ld l,l			;79ab
	ld h,b			;79ac
	ld e,h			;79ad
	push bc			;79ae
	ld l,l			;79af
	ld e,a			;79b0
	ld e,h			;79b1
	ld l,h			;79b2
	ld l,l			;79b3
	sub c			;79b4
	sbc a,d			;79b5
	ld l,b			;79b6
	ld l,l			;79b7
l79b8h:
	xor l			;79b8
	ld (hl),c		;79b9
	ld a,e			;79ba
	ld l,l			;79bb
	ld e,a			;79bc
	ld e,h			;79bd
	push bc			;79be
	ld l,l			;79bf
	ld h,b			;79c0
	ld e,h			;79c1
	ld l,e			;79c2
	ld l,l			;79c3
	res 1,a			;79c4
	ld h,(hl)		;79c6
	jp z,03a3ah		;79c7
	jr nc,l7a06h		;79ca
	inc l			;79cc
	inc l			;79cd
	ld sp,l602ch		;79ce
	ld e,h			;79d1
	ld l,e			;79d2
	ld l,l			;79d3
	res 1,a			;79d4
	ld h,(hl)		;79d6
	jp z,02f24h		;79d7
	ld hl,04026h		;79da
	ld l,023h		;79dd
	ld c,d			;79df
	ld h,b			;79e0
	ld e,h			;79e1
	ld l,h			;79e2
	ld e,(hl)		;79e3
	res 1,a			;79e4
	ld h,(hl)		;79e6
	adc a,d			;79e7
	inc (hl)		;79e8
	ld b,a			;79e9
	ld b,(hl)		;79ea
	ld c,b			;79eb
	dec h			;79ec
	ld c,00ch		;79ed
	dec c			;79ef
	ld h,b			;79f0
	ld e,h			;79f1
	ld l,h			;79f2
	ld e,(hl)		;79f3
	res 1,a			;79f4
	ld h,(hl)		;79f6
	adc a,d			;79f7
	dec b			;79f8
	ld (bc),a		;79f9
	rlca			;79fa
	jr nz,l7a1bh		;79fb
	ld bc,0011eh		;79fd
l7a00h:
	ld e,(hl)		;7a00
	ld e,h			;7a01
	ld l,e			;7a02
	ld l,l			;7a03
	adc a,d			;7a04
	adc a,a			;7a05
l7a06h:
	ld h,(hl)		;7a06
	jp z,00205h		;7a07
	rlca			;7a0a
	jr nz,$+32		;7a0b
	ld bc,0011eh		;7a0d
	ld e,(hl)		;7a10
	ld e,h			;7a11
	ld l,h			;7a12
	ld e,(hl)		;7a13
	adc a,d			;7a14
	adc a,a			;7a15
	ld h,(hl)		;7a16
	adc a,d			;7a17
	dec b			;7a18
	ld (bc),a		;7a19
	rlca			;7a1a
l7a1bh:
	jr nz,l7a3bh		;7a1b
	ld bc,0011eh		;7a1d
	ld e,(hl)		;7a20
	ld e,h			;7a21
	ld l,e			;7a22
	ld l,l			;7a23
	adc a,d			;7a24
	adc a,a			;7a25
	ld h,(hl)		;7a26
	jp z,0011eh		;7a27
	ld e,001h		;7a2a
	dec b			;7a2c
	ld (bc),a		;7a2d
	rlca			;7a2e
	jr nz,l7a8fh		;7a2f
	ld e,h			;7a31
	ld l,h			;7a32
	ld e,(hl)		;7a33
	adc a,d			;7a34
	adc a,a			;7a35
	ld h,(hl)		;7a36
	adc a,d			;7a37
	inc (hl)		;7a38
	ld b,a			;7a39
	ld b,(hl)		;7a3a
l7a3bh:
	ld c,b			;7a3b
	dec h			;7a3c
	ld c,00ch		;7a3d
	dec c			;7a3f
	ld e,(hl)		;7a40
	ld e,h			;7a41
	ld l,h			;7a42
	ld e,(hl)		;7a43
	adc a,d			;7a44
	adc a,a			;7a45
	ld h,(hl)		;7a46
	adc a,d			;7a47
	ld a,(0303ah)		;7a48
	ld a,(02c2ch)		;7a4b
	ld sp,05e2ch		;7a4e
	ld e,h			;7a51
	ld l,h			;7a52
	ld e,(hl)		;7a53
	adc a,d			;7a54
	adc a,a			;7a55
	ld h,(hl)		;7a56
	adc a,d			;7a57
	dec hl			;7a58
	ld a,(03b3ah)		;7a59
	inc a			;7a5c
	inc l			;7a5d
	inc l			;7a5e
	inc a			;7a5f
	ld e,(hl)		;7a60
	ld e,h			;7a61
	ld l,h			;7a62
	ld e,(hl)		;7a63
	adc a,d			;7a64
	adc a,a			;7a65
	ld h,(hl)		;7a66
	adc a,d			;7a67
	add hl,sp		;7a68
	ld b,h			;7a69
	dec sp			;7a6a
	ld a,(00606h)		;7a6b
	inc a			;7a6e
	inc l			;7a6f
	ld e,(hl)		;7a70
	ld e,h			;7a71
	ld l,h			;7a72
	ld e,(hl)		;7a73
	adc a,d			;7a74
	adc a,a			;7a75
	ld h,(hl)		;7a76
	adc a,d			;7a77
	ld e,(hl)		;7a78
	ld e,l			;7a79
	ld l,e			;7a7a
	ld l,l			;7a7b
	ld e,a			;7a7c
	ld e,h			;7a7d
	push bc			;7a7e
	ld l,l			;7a7f
	ld e,(hl)		;7a80
	ld e,h			;7a81
	ld l,h			;7a82
	ld e,(hl)		;7a83
	adc a,d			;7a84
	adc a,a			;7a85
	ld h,(hl)		;7a86
	adc a,d			;7a87
	ld e,a			;7a88
	ld e,l			;7a89
	ld l,e			;7a8a
	ld e,a			;7a8b
	ld e,(hl)		;7a8c
	ld e,h			;7a8d
	ld l,h			;7a8e
l7a8fh:
	ld e,(hl)		;7a8f
	ld e,a			;7a90
	ld e,h			;7a91
	ld e,l			;7a92
	ld e,(hl)		;7a93
	ld l,l			;7a94
	adc a,d			;7a95
	adc a,a			;7a96
	adc a,d			;7a97
	ld l,l			;7a98
	pop bc			;7a99
	ld a,(hl)		;7a9a
	ld h,e			;7a9b
	jp z,0b2bah		;7a9c
	cp l			;7a9f
	ld e,(hl)		;7aa0
	ld e,h			;7aa1
	ld e,a			;7aa2
	ld e,h			;7aa3
	adc a,a			;7aa4
	adc a,d			;7aa5
	adc a,a			;7aa6
	adc a,d			;7aa7
	ld a,a			;7aa8
	ld a,(hl)		;7aa9
	ld h,e			;7aaa
	ld a,(hl)		;7aab
	jp nz,0ba96h		;7aac
	or d			;7aaf
	ld e,(hl)		;7ab0
	ld e,l			;7ab1
	ld e,a			;7ab2
	ld e,h			;7ab3
	adc a,a			;7ab4
	adc a,d			;7ab5
	adc a,a			;7ab6
	ld h,b			;7ab7
	ld a,a			;7ab8
	ld h,e			;7ab9
	pop bc			;7aba
	ld h,b			;7abb
	or c			;7abc
	or d			;7abd
	cp l			;7abe
	bit 3,(hl)		;7abf
	ld e,h			;7ac1
	ld l,h			;7ac2
	ld e,(hl)		;7ac3
	adc a,d			;7ac4
	adc a,a			;7ac5
	ld h,(hl)		;7ac6
	adc a,d			;7ac7
	ld e,001h		;7ac8
	ld e,001h		;7aca
	dec b			;7acc
	ld (bc),a		;7acd
	rlca			;7ace
	jr nz,l7b31h		;7acf
	ld e,h			;7ad1
	ld l,e			;7ad2
	ld l,l			;7ad3
	ld h,b			;7ad4
	ld e,l			;7ad5
	ld l,h			;7ad6
	ld l,l			;7ad7
	ld h,b			;7ad8
	ld e,h			;7ad9
	ld l,h			;7ada
	ld l,l			;7adb
	res 1,a			;7adc
	ld h,(hl)		;7ade
	jp z,05c60h		;7adf
	ld l,e			;7ae2
	ld e,a			;7ae3
	ld h,b			;7ae4
	ld e,l			;7ae5
	ld l,h			;7ae6
	ld e,(hl)		;7ae7
	ld h,b			;7ae8
	ld e,h			;7ae9
	ld l,h			;7aea
	ld e,(hl)		;7aeb
	res 1,a			;7aec
	ld h,(hl)		;7aee
	adc a,d			;7aef
	ld e,h			;7af0
	ld l,e			;7af1
	ld l,d			;7af2
	ld e,h			;7af3
	ld e,l			;7af4
	ld l,h			;7af5
	ld l,c			;7af6
	ld e,l			;7af7
	ld e,h			;7af8
	ld l,h			;7af9
	ld l,d			;7afa
	ld e,h			;7afb
	adc a,a			;7afc
	ld h,(hl)		;7afd
	ld h,(hl)		;7afe
	adc a,a			;7aff
	ld e,a			;7b00
	ld e,h			;7b01
	ld l,e			;7b02
	ld l,l			;7b03
	ld e,(hl)		;7b04
	ld e,l			;7b05
	ld l,h			;7b06
	ld l,l			;7b07
	ld e,a			;7b08
	ld e,h			;7b09
	ld l,h			;7b0a
	ld l,l			;7b0b
	adc a,d			;7b0c
	adc a,a			;7b0d
	ld h,(hl)		;7b0e
	jp z,05c60h		;7b0f
	ld l,e			;7b12
	ld e,a			;7b13
	ld h,b			;7b14
	ld e,l			;7b15
	ld l,h			;7b16
	ld e,(hl)		;7b17
	ld h,b			;7b18
	ld e,h			;7b19
	ld l,h			;7b1a
	ld e,(hl)		;7b1b
	res 1,a			;7b1c
	ld h,(hl)		;7b1e
	adc a,d			;7b1f
	ld e,(hl)		;7b20
	ld e,h			;7b21
	ld l,e			;7b22
	ld l,l			;7b23
	adc a,d			;7b24
	adc a,a			;7b25
	ld h,(hl)		;7b26
	jp z,04734h		;7b27
	ld b,(hl)		;7b2a
	ld c,b			;7b2b
	dec h			;7b2c
	ld c,00ch		;7b2d
	dec c			;7b2f
	ld e,(hl)		;7b30
l7b31h:
	ld e,h			;7b31
	ld e,(hl)		;7b32
	ld e,a			;7b33
	ld a,l			;7b34
	sub c			;7b35
	sbc a,d			;7b36
	ld l,b			;7b37
	cp a			;7b38
	xor l			;7b39
	ld (hl),c		;7b3a
	ld a,e			;7b3b
	adc a,a			;7b3c
	adc a,d			;7b3d
	adc a,a			;7b3e
	adc a,d			;7b3f
	ld e,a			;7b40
	ld e,h			;7b41
	ld l,e			;7b42
	ld e,h			;7b43
	ld e,(hl)		;7b44
	ld e,l			;7b45
	ld l,h			;7b46
	ld e,(hl)		;7b47
	ld e,(hl)		;7b48
	ld e,h			;7b49
	ld l,c			;7b4a
	ld e,h			;7b4b
	adc a,d			;7b4c
	adc a,a			;7b4d
	ld h,(hl)		;7b4e
	adc a,a			;7b4f
	pop bc			;7b50
	ld a,(hl)		;7b51
	ld h,e			;7b52
	pop bc			;7b53
	cp d			;7b54
	or d			;7b55
	cp l			;7b56
	or c			;7b57
	inc (hl)		;7b58
	ld b,a			;7b59
	ld b,(hl)		;7b5a
	ld c,b			;7b5b
	dec h			;7b5c
	ld c,00ch		;7b5d
	dec c			;7b5f
	pop bc			;7b60
	ld a,(hl)		;7b61
	ld h,e			;7b62
	ld a,a			;7b63
	cp d			;7b64
	or d			;7b65
	cp l			;7b66
	or c			;7b67
	ld e,001h		;7b68
	ld e,001h		;7b6a
	dec b			;7b6c
	ld (bc),a		;7b6d
	rlca			;7b6e
	jr nz,l7befh		;7b6f
	ld a,a			;7b71
	ld h,e			;7b72
	pop bc			;7b73
	or d			;7b74
	or c			;7b75
	cp l			;7b76
	or d			;7b77
	inc (hl)		;7b78
	ld b,a			;7b79
	ld b,(hl)		;7b7a
	ld c,b			;7b7b
	dec h			;7b7c
	ld c,00ch		;7b7d
	dec c			;7b7f
	ld a,(hl)		;7b80
	ld a,a			;7b81
	ld h,e			;7b82
	pop bc			;7b83
	or d			;7b84
	or c			;7b85
	cp l			;7b86
	or d			;7b87
	ld e,001h		;7b88
	ld e,001h		;7b8a
	dec b			;7b8c
	ld (bc),a		;7b8d
	rlca			;7b8e
	jr nz,$+128		;7b8f
	ld a,a			;7b91
	ld h,e			;7b92
	pop bc			;7b93
	or d			;7b94
	or c			;7b95
	cp l			;7b96
	or d			;7b97
	dec hl			;7b98
	ld a,(03b3ah)		;7b99
	inc a			;7b9c
	inc l			;7b9d
	inc l			;7b9e
	inc a			;7b9f
	ld a,(hl)		;7ba0
	ld a,(hl)		;7ba1
	ld h,e			;7ba2
	ld a,(hl)		;7ba3
	or d			;7ba4
	or c			;7ba5
	cp l			;7ba6
	or d			;7ba7
	ld e,001h		;7ba8
	ld e,001h		;7baa
	dec b			;7bac
	ld (bc),a		;7bad
	rlca			;7bae
	jr nz,l7c2fh		;7baf
	ld a,(hl)		;7bb1
	ld h,e			;7bb2
	ld a,(hl)		;7bb3
	or d			;7bb4
	jp nz,0ba96h		;7bb5
	ld e,001h		;7bb8
	ld e,001h		;7bba
	dec b			;7bbc
	ld (bc),a		;7bbd
	rlca			;7bbe
	jr nz,l7c21h		;7bbf
	ld e,l			;7bc1
	ld l,h			;7bc2
	ld e,(hl)		;7bc3
	ld h,b			;7bc4
	ld e,h			;7bc5
	ld l,c			;7bc6
	ld e,h			;7bc7
	ld h,b			;7bc8
	ld e,l			;7bc9
	adc a,e			;7bca
	xor e			;7bcb
	ld h,b			;7bcc
	ld e,h			;7bcd
	sbc a,e			;7bce
	add a,0b2h		;7bcf
	or c			;7bd1
	or c			;7bd2
	cp l			;7bd3
	ld a,a			;7bd4
	ld h,e			;7bd5
	pop bc			;7bd6
	ld a,(hl)		;7bd7
	and e			;7bd8
	xor c			;7bd9
	and e			;7bda
	and e			;7bdb
	ld a,(hl)		;7bdc
	ld h,e			;7bdd
	ld a,(hl)		;7bde
	ld a,(hl)		;7bdf
	or d			;7be0
	or d			;7be1
	ld (hl),l		;7be2
	ld a,b			;7be3
	ld h,e			;7be4
	pop bc			;7be5
	halt			;7be6
	ld a,c			;7be7
	xor c			;7be8
	and e			;7be9
	call l6361h		;7bea
	ld a,(hl)		;7bed
	ld a,(hl)		;7bee
l7befh:
	ld a,a			;7bef
	ld a,b			;7bf0
	add a,d			;7bf1
	add a,(hl)		;7bf2
	add a,h			;7bf3
	ld h,c			;7bf4
	sub b			;7bf5
	inc d			;7bf6
	dec d			;7bf7
	ld h,d			;7bf8
	dec de			;7bf9
	rlca			;7bfa
	jr nz,l7c18h		;7bfb
	ld bc,0011eh		;7bfd
	add a,(hl)		;7c00
	add a,h			;7c01
	add a,(hl)		;7c02
	add a,h			;7c03
	ld e,001h		;7c04
	ld e,001h		;7c06
	dec b			;7c08
	ld (bc),a		;7c09
	rlca			;7c0a
	jr nz,l7c2bh		;7c0b
	ld bc,0011eh		;7c0d
	add a,(hl)		;7c10
	add a,h			;7c11
	dec de			;7c12
	ld c,b			;7c13
	jr l7c2bh		;7c14
	inc c			;7c16
	dec c			;7c17
l7c18h:
	inc (hl)		;7c18
	ld b,a			;7c19
	ld b,(hl)		;7c1a
	ld c,b			;7c1b
	dec h			;7c1c
	ld c,00ch		;7c1d
	dec c			;7c1f
	rrca			;7c20
l7c21h:
	dec l			;7c21
	djnz l7c35h		;7c22
	ld e,001h		;7c24
	ld e,019h		;7c26
	dec b			;7c28
	ld (bc),a		;7c29
	add hl,de		;7c2a
l7c2bh:
	add a,a			;7c2b
	ld e,019h		;7c2c
	add a,a			;7c2e
l7c2fh:
	adc a,b			;7c2f
	ld a,h			;7c30
	ld a,h			;7c31
	cp d			;7c32
	or d			;7c33
	xor c			;7c34
l7c35h:
	pop bc			;7c35
	ld a,(hl)		;7c36
	ld h,e			;7c37
	adc a,b			;7c38
	ld l,l			;7c39
	cp d			;7c3a
	or d			;7c3b
	ld a,c			;7c3c
	ld l,l			;7c3d
	cp d			;7c3e
	or d			;7c3f
	pop bc			;7c40
	ld a,a			;7c41
	ld h,e			;7c42
	ld a,(hl)		;7c43
	ld (hl),l		;7c44
	ld a,b			;7c45
	ld a,b			;7c46
	add a,d			;7c47
	halt			;7c48
	ld a,c			;7c49
	ld h,c			;7c4a
	sub b			;7c4b
	call sub_6261h		;7c4c
	dec de			;7c4f
	ld a,a			;7c50
	ld h,e			;7c51
	pop bc			;7c52
	ld a,(hl)		;7c53
	add a,(hl)		;7c54
	ld a,h			;7c55
	ld a,h			;7c56
	ld a,h			;7c57
	inc d			;7c58
	dec d			;7c59
	rlca			;7c5a
	jr nz,l7c7bh		;7c5b
	ld bc,0011eh		;7c5d
	ld h,e			;7c60
	ld a,(hl)		;7c61
	pop bc			;7c62
	ld c,(hl)		;7c63
	ld a,h			;7c64
	ld a,h			;7c65
	ld a,h			;7c66
	ld c,a			;7c67
	inc (hl)		;7c68
	ld b,a			;7c69
	ld b,(hl)		;7c6a
	ld c,b			;7c6b
	dec h			;7c6c
	ld c,00ch		;7c6d
	dec c			;7c6f
	ld d,c			;7c70
	ld a,h			;7c71
	adc a,b			;7c72
	ld a,c			;7c73
	ld d,b			;7c74
	ld a,h			;7c75
	ld (hl),a		;7c76
	ld a,d			;7c77
	dec b			;7c78
	ld h,h			;7c79
	cp d			;7c7a
l7c7bh:
	or d			;7c7b
	ld e,060h		;7c7c
	pop bc			;7c7e
	ld a,(hl)		;7c7f
	ld a,c			;7c80
	ld l,l			;7c81
	pop bc			;7c82
	ld h,e			;7c83
	add a,e			;7c84
	add a,l			;7c85
	cp d			;7c86
	or c			;7c87
	cp l			;7c88
	or d			;7c89
	or c			;7c8a
	or d			;7c8b
	ld h,e			;7c8c
	ld a,(hl)		;7c8d
	ld a,a			;7c8e
	ld h,e			;7c8f
	ld a,(hl)		;7c90
	ld a,a			;7c91
	inc e			;7c92
	add hl,hl		;7c93
	ld a,h			;7c94
	ccf			;7c95
	dec e			;7c96
	ld hl,(03a2bh)		;7c97
	ld a,(03c3bh)		;7c9a
	inc l			;7c9d
	inc l			;7c9e
	inc a			;7c9f
	ld (02722h),hl		;7ca0
	ld (01d1dh),hl		;7ca3
	jr nc,l7cc5h		;7ca6
	ld b,l			;7ca8
	ld a,h			;7ca9
	ld a,h			;7caa
	ld c,l			;7cab
	ld c,h			;7cac
	ld h,e			;7cad
	ld a,(hl)		;7cae
	ld c,e			;7caf
	ld (0a360h),hl		;7cb0
	and e			;7cb3
	dec e			;7cb4
	ld h,b			;7cb5
	pop bc			;7cb6
	ld a,(hl)		;7cb7
	ld b,l			;7cb8
	ld a,h			;7cb9
	ld a,h			;7cba
	ld a,h			;7cbb
	ld c,h			;7cbc
	pop bc			;7cbd
	ld a,(hl)		;7cbe
	ld a,a			;7cbf
	xor c			;7cc0
	and e			;7cc1
	and e			;7cc2
	xor c			;7cc3
	ld h,e			;7cc4
l7cc5h:
	ld a,(hl)		;7cc5
	pop bc			;7cc6
	ld h,e			;7cc7
	xor d			;7cc8
	sub l			;7cc9
	ld a,h			;7cca
	ld a,h			;7ccb
	ld h,e			;7ccc
	ld a,(hl)		;7ccd
	ld a,a			;7cce
	ld h,e			;7ccf
	rrca			;7cd0
	dec l			;7cd1
	djnz $+19		;7cd2
	ld e,001h		;7cd4
	ld e,001h		;7cd6
	dec b			;7cd8
	ld (bc),a		;7cd9
	rlca			;7cda
	jr nz,l7cfbh		;7cdb
	ld bc,0831eh		;7cdd
	rrca			;7ce0
	dec l			;7ce1
	djnz l7cfdh		;7ce2
	ld e,001h		;7ce4
	add hl,de		;7ce6
	add a,a			;7ce7
	ld d,017h		;7ce8
	ld l,a			;7cea
	adc a,b			;7ceb
	add a,l			;7cec
	add a,e			;7ced
	add a,l			;7cee
	ld (hl),a		;7cef
	xor c			;7cf0
	pop bc			;7cf1
	pop bc			;7cf2
	xor c			;7cf3
	adc a,b			;7cf4
	and e			;7cf5
	and e			;7cf6
	ld (hl),b		;7cf7
	ld a,c			;7cf8
	adc a,e			;7cf9
	xor e			;7cfa
l7cfbh:
	ld a,c			;7cfb
	ld a,d			;7cfc
l7cfdh:
	sbc a,e			;7cfd
	add a,07ah		;7cfe
	ld a,(de)		;7d00
	dec l			;7d01
	djnz $+19		;7d02
	ld l,a			;7d04
	ld a,(de)		;7d05
	ld e,001h		;7d06
	ld (hl),b		;7d08
	add a,a			;7d09
	ld (de),a		;7d0a
	inc de			;7d0b
	ld a,d			;7d0c
	add a,c			;7d0d
	add a,l			;7d0e
	add a,e			;7d0f
	rrca			;7d10
	dec l			;7d11
	djnz l7d25h		;7d12
	ld e,001h		;7d14
	ld e,001h		;7d16
	dec b			;7d18
	ld (bc),a		;7d19
	rlca			;7d1a
	jr nz,$-121		;7d1b
	add a,e			;7d1d
	add a,l			;7d1e
	add a,e			;7d1f
	inc (hl)		;7d20
	ld b,a			;7d21
	ld b,(hl)		;7d22
	add hl,de		;7d23
	dec h			;7d24
l7d25h:
	ld c,019h		;7d25
	add a,a			;7d27
	ld d,017h		;7d28
	ld l,a			;7d2a
	adc a,b			;7d2b
	add a,l			;7d2c
	add a,e			;7d2d
	add a,l			;7d2e
	ld (hl),a		;7d2f
	xor c			;7d30
	pop bc			;7d31
	ld a,a			;7d32
	ld h,e			;7d33
	adc a,b			;7d34
	and e			;7d35
	and e			;7d36
	pop bc			;7d37
	ld a,c			;7d38
	adc a,e			;7d39
	xor e			;7d3a
	cp d			;7d3b
	ld a,d			;7d3c
	sbc a,e			;7d3d
	add a,0bah		;7d3e
	ld (02227h),hl		;7d40
	ld (0301dh),hl		;7d43
	dec e			;7d46
	dec e			;7d47
	ld a,(03a30h)		;7d48
	ld a,(0312ch)		;7d4b
	inc l			;7d4e
	inc l			;7d4f
	ld (02722h),hl		;7d50
	ld (01d1dh),hl		;7d53
	jr nc,l7d75h		;7d56
	adc a,c			;7d58
	adc a,(hl)		;7d59
	ld h,a			;7d5a
	ret			;7d5b
	ld e,(hl)		;7d5c
	ld e,h			;7d5d
	ld l,e			;7d5e
	ld l,l			;7d5f
	adc a,c			;7d60
	adc a,(hl)		;7d61
	adc a,c			;7d62
	adc a,(hl)		;7d63
	ld e,(hl)		;7d64
	ld e,h			;7d65
	ld e,(hl)		;7d66
	ld e,h			;7d67
	ld e,a			;7d68
	ld e,l			;7d69
	ld e,a			;7d6a
	ld e,l			;7d6b
	ld e,a			;7d6c
	ld e,h			;7d6d
	ld e,a			;7d6e
	ld e,h			;7d6f
	ld h,b			;7d70
	ld e,l			;7d71
	ld l,h			;7d72
	ld e,(hl)		;7d73
	ld a,l			;7d74
l7d75h:
	sub c			;7d75
	sbc a,d			;7d76
	ld l,b			;7d77
	cp a			;7d78
	xor l			;7d79
	ld (hl),c		;7d7a
	ld a,e			;7d7b
	ld h,b			;7d7c
	ld e,h			;7d7d
	push bc			;7d7e
	ld e,a			;7d7f
	cp d			;7d80
	or c			;7d81
	or c			;7d82
	cp l			;7d83
	pop bc			;7d84
	ld h,e			;7d85
	ld a,a			;7d86
	ld a,(hl)		;7d87
	and e			;7d88
	xor c			;7d89
	and e			;7d8a
	and e			;7d8b
	pop bc			;7d8c
	ld h,e			;7d8d
	ld a,(hl)		;7d8e
	ld a,(hl)		;7d8f
	add hl,hl		;7d90
	ld (08e64h),hl		;7d91
	ld hl,(l601dh)		;7d94
	ld e,h			;7d97
	dec hl			;7d98
	ld a,(05d60h)		;7d99
	inc a			;7d9c
	inc l			;7d9d
	ld h,b			;7d9e
	ld e,h			;7d9f
	ld hl,l6021h		;7da0
	ld e,h			;7da3
	ld hl,0cb21h		;7da4
	adc a,a			;7da7
	dec b			;7da8
	ld (bc),a		;7da9
	rlca			;7daa
	jr nz,l7dcbh		;7dab
	ld bc,0011eh		;7dad
	cp b			;7db0
	cp c			;7db1
	add hl,bc		;7db2
	inc c			;7db3
	cp b			;7db4
	cp c			;7db5
	ex af,af'		;7db6
	dec bc			;7db7
	cp h			;7db8
	cp l			;7db9
	cp (hl)			;7dba
	cp (hl)			;7dbb
	cp d			;7dbc
	cp e			;7dbd
	push bc			;7dbe
	push bc			;7dbf
	add hl,bc		;7dc0
	inc c			;7dc1
	add hl,bc		;7dc2
	inc c			;7dc3
	ex af,af'		;7dc4
	dec bc			;7dc5
	ex af,af'		;7dc6
	dec bc			;7dc7
	cp (hl)			;7dc8
	cp (hl)			;7dc9
	cp (hl)			;7dca
l7dcbh:
	cp (hl)			;7dcb
	push bc			;7dcc
	push bc			;7dcd
	push bc			;7dce
	push bc			;7dcf
	add hl,bc		;7dd0
	inc c			;7dd1
	cp b			;7dd2
	cp c			;7dd3
	ex af,af'		;7dd4
	dec bc			;7dd5
	cp b			;7dd6
	cp c			;7dd7
	cp (hl)			;7dd8
	cp (hl)			;7dd9
	cp h			;7dda
	cp l			;7ddb
	push bc			;7ddc
	push bc			;7ddd
	cp d			;7dde
	cp e			;7ddf
	ld (bc),a		;7de0
	dec b			;7de1
	ld (bc),a		;7de2
	dec b			;7de3
	inc bc			;7de4
	ld b,003h		;7de5
	ld b,001h		;7de7
	inc b			;7de9
	ld bc,00e04h		;7dea
	dec c			;7ded
	ld c,00dh		;7dee
	ld (bc),a		;7df0
	add hl,de		;7df1
	ld a,(de)		;7df2
	add hl,de		;7df3
	inc bc			;7df4
	dec e			;7df5
	dec de			;7df6
	dec e			;7df7
	ld bc,01a19h		;7df8
	add hl,de		;7dfb
	ld c,01dh		;7dfc
	dec de			;7dfe
	dec e			;7dff
	ld (bc),a		;7e00
	dec b			;7e01
	ld (bc),a		;7e02
	dec b			;7e03
	inc bc			;7e04
	ld b,003h		;7e05
	ld b,001h		;7e07
	add hl,de		;7e09
	ld a,(de)		;7e0a
	add hl,de		;7e0b
	ld c,01dh		;7e0c
	dec de			;7e0e
	dec e			;7e0f
	rrca			;7e10
	rrca			;7e11
	rrca			;7e12
	rrca			;7e13
	djnz $+18		;7e14
	djnz $+18		;7e16
	dec h			;7e18
	inc h			;7e19
	dec h			;7e1a
	dec h			;7e1b
	dec h			;7e1c
	inc h			;7e1d
	dec h			;7e1e
	dec h			;7e1f
	inc h			;7e20
	rrca			;7e21
	inc h			;7e22
	rrca			;7e23
	inc e			;7e24
	djnz l7e43h		;7e25
	djnz l7e47h		;7e27
	rra			;7e29
	ld e,025h		;7e2a
	inc e			;7e2c
	jr nz,l7e4bh		;7e2d
	dec h			;7e2f
	rrca			;7e30
	inc hl			;7e31
	rrca			;7e32
	inc hl			;7e33
	djnz $+35		;7e34
	djnz l7e59h		;7e36
	dec h			;7e38
	dec e			;7e39
	dec h			;7e3a
	dec e			;7e3b
	dec h			;7e3c
	ld hl,02125h		;7e3d
	cp (hl)			;7e40
	cp (hl)			;7e41
	cp (hl)			;7e42
l7e43h:
	cp (hl)			;7e43
	push bc			;7e44
	push bc			;7e45
	push bc			;7e46
l7e47h:
	push bc			;7e47
	dec h			;7e48
	dec e			;7e49
	dec h			;7e4a
l7e4bh:
	dec e			;7e4b
	dec h			;7e4c
	ld hl,02125h		;7e4d
	rrca			;7e50
	rrca			;7e51
	rrca			;7e52
	rrca			;7e53
	djnz l7e66h		;7e54
	djnz l7e68h		;7e56
	dec h			;7e58
l7e59h:
	dec h			;7e59
	dec h			;7e5a
	dec h			;7e5b
	dec h			;7e5c
	dec h			;7e5d
	dec h			;7e5e
	dec h			;7e5f
	cp h			;7e60
	cp l			;7e61
	cp (hl)			;7e62
	cp (hl)			;7e63
	cp d			;7e64
	cp e			;7e65
l7e66h:
	push bc			;7e66
	push bc			;7e67
l7e68h:
	dec h			;7e68
	dec h			;7e69
	dec h			;7e6a
	dec h			;7e6b
	dec h			;7e6c
	dec h			;7e6d
	dec h			;7e6e
	dec h			;7e6f
	cp (hl)			;7e70
	cp (hl)			;7e71
	cp (hl)			;7e72
	cp (hl)			;7e73
	push bc			;7e74
	push bc			;7e75
	push bc			;7e76
	push bc			;7e77
	dec h			;7e78
	inc h			;7e79
	dec h			;7e7a
	dec h			;7e7b
	dec h			;7e7c
	inc h			;7e7d
	dec h			;7e7e
	dec h			;7e7f
	cp (hl)			;7e80
	cp (hl)			;7e81
	cp (hl)			;7e82
	cp (hl)			;7e83
	push bc			;7e84
	push bc			;7e85
	push bc			;7e86
	push bc			;7e87
	ld e,01ah		;7e88
	ld e,025h		;7e8a
	inc e			;7e8c
	jr nz,l7eabh		;7e8d
	dec h			;7e8f
	cp (hl)			;7e90
	cp (hl)			;7e91
	cp (hl)			;7e92
	cp (hl)			;7e93
	push bc			;7e94
	push bc			;7e95
	push bc			;7e96
	push bc			;7e97
	dec h			;7e98
	dec h			;7e99
	dec h			;7e9a
	dec h			;7e9b
	dec h			;7e9c
	dec h			;7e9d
	dec h			;7e9e
	dec h			;7e9f
	cp (hl)			;7ea0
	cp (hl)			;7ea1
	cp h			;7ea2
	cp l			;7ea3
	push bc			;7ea4
	push bc			;7ea5
	cp d			;7ea6
	cp e			;7ea7
	dec h			;7ea8
	dec h			;7ea9
	dec h			;7eaa
l7eabh:
	dec h			;7eab
	dec h			;7eac
	dec h			;7ead
	dec h			;7eae
	dec h			;7eaf
	cp h			;7eb0
	cp l			;7eb1
	cp (hl)			;7eb2
	cp (hl)			;7eb3
	cp d			;7eb4
	cp e			;7eb5
	push bc			;7eb6
	push bc			;7eb7
	cp b			;7eb8
	cp c			;7eb9
	dec h			;7eba
	dec h			;7ebb
	cp b			;7ebc
	cp c			;7ebd
	dec h			;7ebe
	dec h			;7ebf
	cp h			;7ec0
	cp l			;7ec1
	rrca			;7ec2
	rrca			;7ec3
	cp d			;7ec4
	cp e			;7ec5
	djnz l7ed8h		;7ec6
	cp b			;7ec8
	cp c			;7ec9
	dec h			;7eca
	dec h			;7ecb
	cp b			;7ecc
	cp c			;7ecd
	dec h			;7ece
	dec h			;7ecf
	ld d,016h		;7ed0
	ld d,016h		;7ed2
	dec d			;7ed4
	dec d			;7ed5
	dec d			;7ed6
	dec d			;7ed7
l7ed8h:
	inc d			;7ed8
	inc de			;7ed9
	inc d			;7eda
	inc de			;7edb
	rlca			;7edc
	ld a,(bc)		;7edd
	rlca			;7ede
	ld a,(bc)		;7edf
	inc hl			;7ee0
	ld d,023h		;7ee1
	ld d,024h		;7ee3
	dec d			;7ee5
	inc h			;7ee6
	dec d			;7ee7
	inc d			;7ee8
	inc de			;7ee9
	inc d			;7eea
	inc de			;7eeb
	rlca			;7eec
	ld a,(bc)		;7eed
	rlca			;7eee
	ld a,(bc)		;7eef
	ld d,021h		;7ef0
	ld d,021h		;7ef2
	dec d			;7ef4
	dec e			;7ef5
	dec d			;7ef6
	dec e			;7ef7
	inc d			;7ef8
	add hl,de		;7ef9
	ld a,(de)		;7efa
	add hl,de		;7efb
	rlca			;7efc
	dec e			;7efd
	dec de			;7efe
	dec e			;7eff
	ld d,016h		;7f00
	ld d,016h		;7f02
	dec d			;7f04
	dec d			;7f05
	dec d			;7f06
	dec d			;7f07
	inc d			;7f08
	inc de			;7f09
	inc d			;7f0a
	inc de			;7f0b
	rlca			;7f0c
	ld a,(bc)		;7f0d
	rlca			;7f0e
	ld a,(bc)		;7f0f
	ld d,019h		;7f10
	ld d,019h		;7f12
	dec d			;7f14
	dec e			;7f15
	dec d			;7f16
	dec e			;7f17
	inc d			;7f18
	ld hl,02114h		;7f19
	rlca			;7f1c
	dec e			;7f1d
	rlca			;7f1e
	dec e			;7f1f
	ld d,016h		;7f20
	ld d,016h		;7f22
	dec d			;7f24
	dec d			;7f25
	dec d			;7f26
	dec d			;7f27
	inc d			;7f28
	inc de			;7f29
	cp h			;7f2a
	cp l			;7f2b
	rlca			;7f2c
	ld a,(bc)		;7f2d
	cp d			;7f2e
	cp e			;7f2f
	ld d,019h		;7f30
	ld a,(de)		;7f32
	add hl,de		;7f33
	dec d			;7f34
	dec e			;7f35
	dec de			;7f36
	dec e			;7f37
	inc d			;7f38
	ld hl,02114h		;7f39
	rlca			;7f3c
	dec e			;7f3d
	rlca			;7f3e
	dec e			;7f3f
	rrca			;7f40
	dec e			;7f41
	rrca			;7f42
	dec e			;7f43
	djnz l7f5fh		;7f44
	ld a,(de)		;7f46
	add hl,de		;7f47
	dec h			;7f48
	dec e			;7f49
	dec de			;7f4a
	dec e			;7f4b
	dec h			;7f4c
	ld hl,02125h		;7f4d
	ld d,01dh		;7f50
	ld d,01dh		;7f52
	dec d			;7f54
	ld (02215h),hl		;7f55
	inc d			;7f58
	inc de			;7f59
	inc d			;7f5a
	inc de			;7f5b
	rlca			;7f5c
	ld a,(bc)		;7f5d
	rlca			;7f5e
l7f5fh:
	ld a,(bc)		;7f5f
	ld d,016h		;7f60
	ld d,016h		;7f62
	dec d			;7f64
	dec d			;7f65
	dec d			;7f66
	dec d			;7f67
	cp (hl)			;7f68
	cp (hl)			;7f69
	cp (hl)			;7f6a
	cp (hl)			;7f6b
	push bc			;7f6c
	push bc			;7f6d
	push bc			;7f6e
	push bc			;7f6f
	inc hl			;7f70
	ld d,023h		;7f71
	ld d,024h		;7f73
	dec d			;7f75
	inc h			;7f76
	dec d			;7f77
	cp (hl)			;7f78
	cp (hl)			;7f79
	cp (hl)			;7f7a
	cp (hl)			;7f7b
	push bc			;7f7c
	push bc			;7f7d
	push bc			;7f7e
	push bc			;7f7f
	ld d,021h		;7f80
	ld d,021h		;7f82
	dec d			;7f84
	dec e			;7f85
	dec d			;7f86
	dec e			;7f87
	cp (hl)			;7f88
	cp (hl)			;7f89
	cp (hl)			;7f8a
	cp (hl)			;7f8b
	push bc			;7f8c
	push bc			;7f8d
	push bc			;7f8e
	push bc			;7f8f
	ld d,016h		;7f90
	ld d,016h		;7f92
	dec d			;7f94
	dec d			;7f95
	dec d			;7f96
	dec d			;7f97
	cp h			;7f98
	cp l			;7f99
	cp (hl)			;7f9a
	cp (hl)			;7f9b
	cp d			;7f9c
	cp e			;7f9d
	push bc			;7f9e
	push bc			;7f9f
	cp b			;7fa0
	cp c			;7fa1
	ld d,016h		;7fa2
	cp b			;7fa4
	cp c			;7fa5
	dec d			;7fa6
	dec d			;7fa7
	cp h			;7fa8
	cp l			;7fa9
	inc d			;7faa
	inc de			;7fab
	cp d			;7fac
	cp e			;7fad
	rlca			;7fae
	ld a,(bc)		;7faf
	cp b			;7fb0
	cp c			;7fb1
	ld d,016h		;7fb2
	cp b			;7fb4
	cp c			;7fb5
	dec d			;7fb6
	dec d			;7fb7
	cp h			;7fb8
	cp l			;7fb9
	cp (hl)			;7fba
	cp (hl)			;7fbb
	cp d			;7fbc
	cp e			;7fbd
	push bc			;7fbe
	push bc			;7fbf
	add hl,bc		;7fc0
	inc c			;7fc1
	add hl,bc		;7fc2
	inc c			;7fc3
	ex af,af'		;7fc4
	dec bc			;7fc5
	ex af,af'		;7fc6
	dec bc			;7fc7
	ld (de),a		;7fc8
	ld de,01112h		;7fc9
	jr l7fe5h		;7fcc
	jr $+25			;7fce
	add hl,bc		;7fd0
	ld hl,02109h		;7fd1
	ex af,af'		;7fd4
	dec e			;7fd5
	ex af,af'		;7fd6
	dec e			;7fd7
	ld (de),a		;7fd8
	add hl,de		;7fd9
	ld a,(de)		;7fda
	add hl,de		;7fdb
	jr $+35			;7fdc
	dec de			;7fde
	ld hl,0bdbch		;7fdf
	rrca			;7fe2
	rrca			;7fe3
	cp d			;7fe4
l7fe5h:
	cp e			;7fe5
	djnz l7ff8h		;7fe6
	dec h			;7fe8
	dec h			;7fe9
	dec h			;7fea
	dec h			;7feb
	dec h			;7fec
	dec h			;7fed
	dec h			;7fee
	dec h			;7fef
	cp h			;7ff0
	cp l			;7ff1
	cp (hl)			;7ff2
	cp (hl)			;7ff3
	cp d			;7ff4
	cp e			;7ff5
	push bc			;7ff6
	push bc			;7ff7
l7ff8h:
	cp b			;7ff8
	cp c			;7ff9
	ld bc,0b804h		;7ffa
	cp c			;7ffd
	ld c,00dh		;7ffe

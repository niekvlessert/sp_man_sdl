; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank15_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank15.bin

	org 06000h

	rst 20h			;6000
	rst 20h			;6001
	inc a			;6002
	nop			;6003
	jp 0f00fh		;6004
	ret m			;6007
	inc c			;6008
	inc c			;6009
	rlca			;600a
	rlca			;600b
	inc b			;600c
	rst 38h			;600d
	adc a,(hl)		;600e
	ret p			;600f
	or 004h			;6010
	inc e			;6012
	inc e			;6013
	ld e,0fch		;6014
	inc c			;6016
	inc bc			;6017
	rrca			;6018
	rlca			;6019
	ret p			;601a
	rrca			;601b
	rrca			;601c
	inc bc			;601d
	rst 38h			;601e
	adc a,l			;601f
	nop			;6020
	call m,0c183h		;6021
	pop af			;6024
	rrca			;6025
l6026h:
	nop			;6026
	ld a,a			;6027
	ccf			;6028
	sbc a,a			;6029
	adc a,0e6h		;602a
	ret p			;602c
	inc b			;602d
	nop			;602e
	ld (bc),a		;602f
	ld b,002h		;6030
	add a,e			;6032
	adc a,c			;6033
	pop bc			;6034
	ld c,00fh		;6035
	nop			;6037
sub_6038h:
	rra			;6038
	rra			;6039
	rst 38h			;603a
	ret nz			;603b
	ret po			;603c
	inc bc			;603d
	rrca			;603e
	ld (bc),a		;603f
	add a,b			;6040
	sbc a,b			;6041
	ret nz			;6042
	ret po			;6043
	ret p			;6044
	cp 0ffh			;6045
	cp 0feh			;6047
	ret nz			;6049
	ccf			;604a
	ccf			;604b
	inc c			;604c
	inc c			;604d
	rst 20h			;604e
	rst 20h			;604f
	inc a			;6050
	nop			;6051
	jp 00ff0h		;6052
	rra			;6055
	jr nc,$+50		;6056
	ret po			;6058
	ret po			;6059
	inc b			;605a
	rst 38h			;605b
	adc a,(hl)		;605c
	rrca			;605d
	ld l,a			;605e
	jr nz,l6099h		;605f
	jr c,$+122		;6061
	ccf			;6063
	jr nc,l6026h		;6064
	ret p			;6066
	ret po			;6067
	rrca			;6068
	ret p			;6069
	ret p			;606a
	inc bc			;606b
	rst 38h			;606c
	adc a,l			;606d
	nop			;606e
	ccf			;606f
	pop bc			;6070
	add a,e			;6071
	adc a,a			;6072
	ret p			;6073
	nop			;6074
	cp 0fch			;6075
	ld sp,hl		;6077
	ld (hl),e		;6078
	ld h,a			;6079
	rrca			;607a
	inc b			;607b
	nop			;607c
	ld (bc),a		;607d
	ld h,b			;607e
	ld (bc),a		;607f
	pop bc			;6080
	adc a,(hl)		;6081
	add a,e			;6082
	ld (hl),b		;6083
	ret p			;6084
	nop			;6085
	nop			;6086
	ld bc,00703h		;6087
	rrca			;608a
	rra			;608b
	ccf			;608c
	ld a,a			;608d
	rrca			;608e
	nop			;608f
	inc b			;6090
	ccf			;6091
	ld (bc),a		;6092
	nop			;6093
	ld (bc),a		;6094
	ret po			;6095
	rlca			;6096
	rlca			;6097
	sbc a,d			;6098
l6099h:
	inc bc			;6099
	ccf			;609a
	rrca			;609b
	inc bc			;609c
	ld bc,0c001h		;609d
	ld bc,0c001h		;60a0
	ld a,a			;60a3
	ld a,a			;60a4
	jp 000feh		;60a5
	ld bc,00001h		;60a8
	ld a,a			;60ab
	nop			;60ac
	add a,b			;60ad
	add a,a			;60ae
	cp 07fh			;60af
	ccf			;60b1
	ccf			;60b2
	inc bc			;60b3
	rra			;60b4
	and l			;60b5
	rlca			;60b6
	inc bc			;60b7
	inc c			;60b8
	inc c			;60b9
	ld sp,hl		;60ba
	ld sp,hl		;60bb
	add a,e			;60bc
	add a,e			;60bd
	rlca			;60be
	inc bc			;60bf
	inc bc			;60c0
	ret nz			;60c1
	call m,0c0f0h		;60c2
	add a,b			;60c5
	add a,b			;60c6
	inc bc			;60c7
	add a,b			;60c8
	add a,b			;60c9
	inc bc			;60ca
	cp 0feh			;60cb
	jp 0007fh		;60cd
	add a,b			;60d0
	add a,b			;60d1
	nop			;60d2
	cp 000h			;60d3
	ld bc,l7fe1h		;60d5
	cp 0fch			;60d8
	call m,0f803h		;60da
	sub d			;60dd
	ret po			;60de
	ret nz			;60df
	jr nc,l6112h		;60e0
	sbc a,a			;60e2
	sbc a,a			;60e3
	pop bc			;60e4
	pop bc			;60e5
	ret po			;60e6
	ret nz			;60e7
	ret nz			;60e8
	rra			;60e9
	adc a,a			;60ea
	ld a,(hl)		;60eb
	defb 0fdh,0fbh,00fh ;illegal sequence	;60ec
	ld l,a			;60ef
	inc bc			;60f0
	rst 38h			;60f1
	sub l			;60f2
	ccf			;60f3
	rra			;60f4
	rra			;60f5
	scf			;60f6
	ld h,d			;60f7
	rst 38h			;60f8
	ld sp,iy		;60f9
	ld sp,hl		;60fb
	di			;60fc
	rst 8			;60fd
	add a,e			;60fe
	ld bc,00000h		;60ff
	rlca			;6102
	ld b,003h		;6103
	ld bc,00000h		;6105
	inc bc			;6108
	ret m			;6109
	ld (bc),a		;610a
	ret p			;610b
	ld b,0e0h		;610c
	ld (bc),a		;610e
	rrca			;610f
	inc bc			;6110
	rlca			;6111
l6112h:
	adc a,(hl)		;6112
	rst 38h			;6113
	ld a,a			;6114
	ccf			;6115
	rra			;6116
	rrca			;6117
	rlca			;6118
	inc bc			;6119
	inc bc			;611a
	cp 0feh			;611b
	call m,0f8fch		;611d
	rst 38h			;6120
	inc b			;6121
	rlca			;6122
	add a,c			;6123
	inc bc			;6124
	inc bc			;6125
	rlca			;6126
	add a,c			;6127
	cp 003h			;6128
	nop			;612a
	add a,(hl)		;612b
	rst 38h			;612c
	nop			;612d
	nop			;612e
	rst 38h			;612f
	rst 38h			;6130
	nop			;6131
	ld b,066h		;6132
	sub d			;6134
	rst 38h			;6135
	nop			;6136
	ld a,a			;6137
	ld a,a			;6138
	call m,08001h		;6139
	add a,b			;613c
	rrca			;613d
	rrca			;613e
	rst 30h			;613f
	rst 30h			;6140
	or e			;6141
	or e			;6142
	cp c			;6143
	sbc a,b			;6144
	cp l			;6145
	add a,003h		;6146
	rst 38h			;6148
	adc a,l			;6149
	call m,0f8f8h		;614a
	call pe,0fc46h		;614d
	ret m			;6150
	pop af			;6151
	ld a,(hl)		;6152
	cp a			;6153
	rst 18h			;6154
	ret p			;6155
	or 000h			;6156
	ld (bc),a		;6158
	ld b,b			;6159
	ld c,094h		;615a
	ld a,(bc)		;615c
	sub b			;615d
	inc c			;615e
	sub h			;615f
	inc bc			;6160
	sub b			;6161
	add a,c			;6162
	ld b,b			;6163
	ld b,094h		;6164
	ex af,af'		;6166
	inc b			;6167
	adc a,h			;6168
	pop af			;6169
	rrca			;616a
	rrca			;616b
	ld b,b			;616c
	ld b,b			;616d
	ret p			;616e
	ld c,c			;616f
	ret p			;6170
	ld sp,hl		;6171
	cp 0f9h			;6172
	call p,0f003h		;6174
	adc a,c			;6177
	pop af			;6178
	sub h			;6179
	jp (hl)			;617a
	jp (hl)			;617b
	sub h			;617c
	sub h			;617d
	sub b			;617e
	ld sp,hl		;617f
	add hl,de		;6180
	inc bc			;6181
	sub h			;6182
	ld (bc),a		;6183
	jp (hl)			;6184
	add a,h			;6185
	sub h			;6186
	sub b			;6187
	sbc a,a			;6188
	ld b,b			;6189
	inc b			;618a
	sub h			;618b
	ld (bc),a		;618c
	jp (hl)			;618d
	ld (bc),a		;618e
	sub b			;618f
	inc bc			;6190
	sub h			;6191
	ld (bc),a		;6192
	jp (hl)			;6193
	add a,a			;6194
	sub b			;6195
	sub h			;6196
	sub h			;6197
	ld b,b			;6198
	ld b,b			;6199
	sub h			;619a
	sub h			;619b
	inc bc			;619c
	jp (hl)			;619d
	add a,(hl)		;619e
	ld sp,hl		;619f
	sub c			;61a0
	sub (hl)		;61a1
	sub c			;61a2
	sub h			;61a3
	sub h			;61a4
	add hl,bc		;61a5
	ld b,b			;61a6
	sub l			;61a7
	rst 38h			;61a8
	sub c			;61a9
	sub (hl)		;61aa
	sub e			;61ab
	sub (hl)		;61ac
	sub c			;61ad
	ld sp,hl		;61ae
	sub h			;61af
	sub h			;61b0
	pop af			;61b1
	rrca			;61b2
	rrca			;61b3
	ld b,b			;61b4
	ld b,b			;61b5
	ret p			;61b6
	ld c,c			;61b7
	ret p			;61b8
	ld sp,hl		;61b9
	cp 0f9h			;61ba
	call p,0f003h		;61bc
	adc a,c			;61bf
	pop af			;61c0
	sub h			;61c1
	jp (hl)			;61c2
	jp (hl)			;61c3
	sub h			;61c4
	sub h			;61c5
	sub b			;61c6
	ld sp,hl		;61c7
	add hl,de		;61c8
	inc bc			;61c9
	sub h			;61ca
	ld (bc),a		;61cb
	jp (hl)			;61cc
	add a,h			;61cd
	sub h			;61ce
	sub b			;61cf
	sbc a,a			;61d0
	ld b,b			;61d1
	inc b			;61d2
	sub h			;61d3
	ld (bc),a		;61d4
	jp (hl)			;61d5
	ld (bc),a		;61d6
	sub b			;61d7
	inc bc			;61d8
	sub h			;61d9
	ld (bc),a		;61da
	jp (hl)			;61db
	add a,a			;61dc
	sub b			;61dd
	sub h			;61de
	sub h			;61df
	ld b,b			;61e0
	ld b,b			;61e1
	sub h			;61e2
	sub h			;61e3
	inc bc			;61e4
	jp (hl)			;61e5
	add a,(hl)		;61e6
	ld sp,hl		;61e7
	sub c			;61e8
	sub (hl)		;61e9
	sub c			;61ea
	sub h			;61eb
	sub h			;61ec
	add hl,bc		;61ed
	ld b,b			;61ee
	adc a,c			;61ef
	rst 38h			;61f0
	sub c			;61f1
	sub (hl)		;61f2
	sub e			;61f3
	sub (hl)		;61f4
	sub c			;61f5
	ld sp,hl		;61f6
	sub h			;61f7
	sub h			;61f8
sub_61f9h:
	ex af,af'		;61f9
	and (hl)		;61fa
	ld (bc),a		;61fb
	sub h			;61fc
	add a,c			;61fd
	sub b			;61fe
	inc b			;61ff
	ld c,a			;6200
	ld (bc),a		;6201
	sub b			;6202
	add a,d			;6203
	ld b,b			;6204
	jp (hl)			;6205
	inc bc			;6206
	sub h			;6207
	add a,h			;6208
	ld c,a			;6209
	nop			;620a
	nop			;620b
	ld (02103h),a		;620c
	ld (bc),a		;620f
	ld sp,0f182h		;6210
	ld b,b			;6213
	inc bc			;6214
	ld (0f39eh),a		;6215
	rst 30h			;6218
	di			;6219
	di			;621a
	call p,0f3f3h		;621b
	and e			;621e
	and e			;621f
	ld sp,0f3f7h		;6220
	or 0f3h			;6223
	jp m,0f6f3h		;6225
	pop af			;6228
	cp 0f9h			;6229
	sub (hl)		;622b
	sub e			;622c
	xor c			;622d
	add hl,sp		;622e
	sub (hl)		;622f
	sub c			;6230
	jp (hl)			;6231
	sub h			;6232
	nop			;6233
	ld (02103h),a		;6234
	ld (bc),a		;6237
	ld sp,0f182h		;6238
	ld b,b			;623b
	inc bc			;623c
	ld (0f39eh),a		;623d
	rst 30h			;6240
	di			;6241
	di			;6242
	call p,0f3f3h		;6243
	and e			;6246
	and e			;6247
	ld sp,0f3f7h		;6248
	or 0f3h			;624b
	jp m,0f6f3h		;624d
	pop af			;6250
	cp 0f9h			;6251
	sub (hl)		;6253
	sub e			;6254
	xor c			;6255
	add hl,sp		;6256
	sub (hl)		;6257
	sub c			;6258
	jp (hl)			;6259
	sub h			;625a
	ld c,a			;625b
	ld sp,hl		;625c
	inc bc			;625d
	sub b			;625e
	ld (bc),a		;625f
	jp (hl)			;6260
	add a,c			;6261
	sub b			;6262
	dec b			;6263
	ld sp,hl		;6264
	ld (bc),a		;6265
	cp 002h			;6266
	ld sp,hl		;6268
	ld (bc),a		;6269
	ret m			;626a
	add a,l			;626b
	defb 0fdh,0f5h,0feh ;illegal sequence	;626c
	cp 0f9h			;626f
	inc bc			;6271
	ret p			;6272
	dec b			;6273
	ld b,b			;6274
	add a,h			;6275
	ret p			;6276
	jp m,0f0f6h		;6277
	inc b			;627a
	ld sp,hl		;627b
	add a,h			;627c
	rrca			;627d
	xor a			;627e
	ld l,a			;627f
	ret p			;6280
	dec b			;6281
	ld sp,hl		;6282
	add a,c			;6283
	call p,0f906h		;6284
	ld b,0f0h		;6287
	add a,d			;6289
	ld b,b			;628a
	rst 38h			;628b
	inc bc			;628c
	ld b,b			;628d
	add a,l			;628e
	jp (hl)			;628f
	sub h			;6290
	sub h			;6291
	ret p			;6292
	ret p			;6293
	inc b			;6294
	inc b			;6295
	inc b			;6296
	jp (hl)			;6297
	sub b			;6298
	ld sp,hl		;6299
	add hl,de		;629a
	ld l,c			;629b
	inc (hl)		;629c
	and h			;629d
	call p,00909h		;629e
	ld b,b			;62a1
	ld b,b			;62a2
	ret p			;62a3
	and e			;62a4
	or 04fh			;62a5
	sub h			;62a7
	ld b,b			;62a8
	inc b			;62a9
	ret m			;62aa
	ld (bc),a		;62ab
	defb 0fdh,081h,0f5h ;illegal sequence	;62ac
	ld b,0f9h		;62af
	ld (bc),a		;62b1
	cp 083h			;62b2
	ld sp,hl		;62b4
	call p,003f9h		;62b5
	sub b			;62b8
	ld (bc),a		;62b9
	jp (hl)			;62ba
	add a,c			;62bb
	sub b			;62bc
	nop			;62bd
	inc bc			;62be
	rst 38h			;62bf
	adc a,d			;62c0
	cp 0fch			;62c1
	ret m			;62c3
	rrca			;62c4
	rst 38h			;62c5
	ret nz			;62c6
	add a,b			;62c7
	ld bc,00703h		;62c8
	inc bc			;62cb
	rrca			;62cc
	adc a,b			;62cd
	ld a,a			;62ce
	ld bc,00703h		;62cf
	rrca			;62d2
	rra			;62d3
	ccf			;62d4
	ld a,a			;62d5
	ex af,af'		;62d6
	nop			;62d7
	ex af,af'		;62d8
	rrca			;62d9
	ex af,af'		;62da
	rra			;62db
	nop			;62dc
	inc bc			;62dd
	cp 003h			;62de
	ret p			;62e0
	add a,c			;62e1
	ld b,b			;62e2
	inc bc			;62e3
	ret p			;62e4
	inc b			;62e5
	ld b,b			;62e6
	add a,e			;62e7
	sub h			;62e8
	ld b,b			;62e9
	ld b,b			;62ea
	dec b			;62eb
	call p,0f982h		;62ec
	call p,04010h		;62ef
	ex af,af'		;62f2
	sub h			;62f3
	nop			;62f4
	ld b,0ffh		;62f5
	add a,d			;62f7
	jp 00330h		;62f8
	rst 38h			;62fb
	adc a,l			;62fc
	ei			;62fd
	rst 20h			;62fe
	rst 0			;62ff
	add a,b			;6300
	rra			;6301
	rst 38h			;6302
	rst 38h			;6303
	jp (hl)			;6304
	add a,c			;6305
	ld a,(hl)		;6306
	ld a,(hl)		;6307
	add a,e			;6308
	ld a,b			;6309
	inc bc			;630a
	rst 38h			;630b
	inc b			;630c
	cp 004h			;630d
	rst 38h			;630f
	inc b			;6310
	ld a,a			;6311
	add a,c			;6312
	rst 38h			;6313
	inc bc			;6314
	rlca			;6315
	adc a,b			;6316
	rrca			;6317
	rlca			;6318
	rlca			;6319
	rst 38h			;631a
	rra			;631b
	add a,b			;631c
	ret nz			;631d
	ret p			;631e
	ld b,0ffh		;631f
	ld (bc),a		;6321
	nop			;6322
	add a,d			;6323
	rlca			;6324
	call m,0fe03h		;6325
	add a,l			;6328
	rst 38h			;6329
	nop			;632a
	nop			;632b
	ret po			;632c
	ccf			;632d
	inc bc			;632e
	ld a,a			;632f
	add a,e			;6330
	ld bc,00f03h		;6331
	dec b			;6334
	rst 38h			;6335
	nop			;6336
	ld b,0fdh		;6337
	add a,d			;6339
	ld sp,hl		;633a
	jp (hl)			;633b
	inc b			;633c
	cp 083h			;633d
	ret m			;633f
	defb 0fdh,0f5h,003h ;illegal sequence	;6340
	cp 086h			;6343
	ret m			;6345
	defb 0fdh,0fdh,015h ;illegal sequence	;6346
	sub 0e8h		;6349
	dec b			;634b
	jp m,0f306h		;634c
	ld (bc),a		;634f
	jp m,0f303h		;6350
	ld (bc),a		;6353
	ld sp,hl		;6354
	adc a,b			;6355
	ret p			;6356
	jp m,0f0f3h		;6357
	sub h			;635a
	sub h			;635b
	di			;635c
	jp p,0f106h		;635d
l6360h:
	ld (bc),a		;6360
	ld hl,00f02h		;6361
	adc a,(hl)		;6364
	call p,0f9f0h		;6365
	ret p			;6368
	ld hl,00f21h		;6369
	rrca			;636c
	call p,0f9f0h		;636d
	ret p			;6370
	di			;6371
	jp p,0f106h		;6372
	nop			;6375
	push bc			;6376
	rst 38h			;6377
	rra			;6378
	rra			;6379
	ret p			;637a
	ret p			;637b
	adc a,a			;637c
	ld a,b			;637d
	jr c,$+1		;637e
	ret m			;6380
	ret m			;6381
	rrca			;6382
	rrca			;6383
	pop af			;6384
	pop hl			;6385
	ex (sp),hl		;6386
	rst 38h			;6387
	rra			;6388
	rra			;6389
	rrca			;638a
	rrca			;638b
	adc a,a			;638c
	ld a,b			;638d
	rst 0			;638e
	rst 38h			;638f
	ret m			;6390
	ret m			;6391
	rrca			;6392
	rrca			;6393
	ld c,0e1h		;6394
	ex (sp),hl		;6396
	rst 38h			;6397
	rra			;6398
	rra			;6399
	rrca			;639a
	rrca			;639b
	adc a,a			;639c
	ld a,b			;639d
	jr c,$+1		;639e
	ret m			;63a0
	ret m			;63a1
	rrca			;63a2
	rrca			;63a3
	ld c,0e1h		;63a4
	ex (sp),hl		;63a6
	rst 38h			;63a7
	rra			;63a8
	rra			;63a9
	rrca			;63aa
	rrca			;63ab
	adc a,a			;63ac
	add a,a			;63ad
	jr c,$+1		;63ae
	ret m			;63b0
	ret m			;63b1
	ret p			;63b2
	ret p			;63b3
	pop af			;63b4
	pop hl			;63b5
	ex (sp),hl		;63b6
	jr c,l6431h		;63b7
	ld (hl),b		;63b9
	rrca			;63ba
	rrca			;63bb
	inc bc			;63bc
	rra			;63bd
	add a,l			;63be
	inc e			;63bf
	ld e,0f1h		;63c0
	ret p			;63c2
	ret p			;63c3
	inc bc			;63c4
	rlca			;63c5
	add a,l			;63c6
	rst 0			;63c7
	add a,a			;63c8
	adc a,a			;63c9
	rrca			;63ca
	rrca			;63cb
	inc bc			;63cc
	rra			;63cd
	add a,l			;63ce
	ex (sp),hl		;63cf
	ld e,0f1h		;63d0
	ret p			;63d2
	ret p			;63d3
	inc bc			;63d4
	rlca			;63d5
	add a,l			;63d6
	jr c,l6360h		;63d7
	adc a,a			;63d9
	ret p			;63da
	ret p			;63db
	inc bc			;63dc
	ret po			;63dd
	add a,l			;63de
	inc e			;63df
	ld e,0f1h		;63e0
	ret p			;63e2
	ret p			;63e3
	inc bc			;63e4
	rlca			;63e5
	add a,l			;63e6
	rst 0			;63e7
	add a,a			;63e8
	ld (hl),b		;63e9
	ret p			;63ea
	ret p			;63eb
	inc bc			;63ec
	rra			;63ed
	add a,l			;63ee
	ex (sp),hl		;63ef
	ld e,00eh		;63f0
	rrca			;63f2
	rrca			;63f3
	inc b			;63f4
	ret m			;63f5
	ld (bc),a		;63f6
	add a,c			;63f7
	ld (bc),a		;63f8
	inc a			;63f9
	inc b			;63fa
	ld a,(hl)		;63fb
	add a,a			;63fc
	cp 0ffh			;63fd
	ld a,a			;63ff
	ld a,a			;6400
	rst 38h			;6401
	cp 0ffh			;6402
	nop			;6404
sub_6405h:
	ld (bc),a		;6405
	jp m,05e8ch		;6406
	defb 0edh ;next byte illegal after ed	;6409
	xor l			;640a
	out (065h),a		;640b
	ld h,l			;640d
	jp m,0fefah		;640e
	push hl			;6411
	and l			;6412
	ld d,e			;6413
	inc b			;6414
	or 08dh			;6415
	ld d,e			;6417
	jp c,0dedeh		;6418
	and l			;641b
	ld d,e			;641c
	or 0f6h			;641d
	di			;641f
	and l			;6420
	push hl			;6421
	push hl			;6422
	jp m,0f303h		;6423
	adc a,h			;6426
	ld d,(hl)		;6427
	sub 0d3h		;6428
	jp c,0e5e5h		;642a
	di			;642d
	di			;642e
	or 065h			;642f
l6431h:
	dec (hl)		;6431
	and l			;6432
	inc b			;6433
	cp 0d9h			;6434
	ld e,d			;6436
	out (0d6h),a		;6437
	sub 053h		;6439
	and l			;643b
	cp 0feh			;643c
	jp m,05653h		;643e
	ld d,(hl)		;6441
	di			;6442
	jp m,0ede5h		;6443
	xor b			;6446
	add a,e			;6447
	add a,(hl)		;6448
	sub 053h		;6449
	rst 38h			;644b
	push hl			;644c
	push hl			;644d
	jp c,0d6d3h		;644e
	ld h,l			;6451
	dec (hl)		;6452
	rst 38h			;6453
	ld d,e			;6454
	sub 086h		;6455
	add a,(hl)		;6457
	add a,e			;6458
	jp c,0ff5eh		;6459
	ld d,e			;645c
	ld h,l			;645d
	sub 0d6h		;645e
	out (0a5h),a		;6460
	push hl			;6462
	rst 38h			;6463
	ld h,l			;6464
	sub 083h		;6465
	xor b			;6467
	ret pe			;6468
	defb 0edh ;next byte illegal after ed	;6469
	and l			;646a
	rst 38h			;646b
	ld h,l			;646c
	ld h,l			;646d
	out (0dah),a		;646e
	sbc a,0e5h		;6470
	and l			;6472
	rst 38h			;6473
	ld d,e			;6474
	jp c,0e8e8h		;6475
	xor b			;6478
	out (056h),a		;6479
	rst 38h			;647b
	ld d,e			;647c
	and l			;647d
	defb 0edh ;next byte illegal after ed	;647e
	defb 0edh ;next byte illegal after ed	;647f
	xor l			;6480
	ld d,e			;6481
	ld d,(hl)		;6482
	rst 38h			;6483
	rst 38h			;6484
	ld h,e			;6485
	ld a,(0eaeah)		;6486
	and e			;6489
	ld (hl),0ffh		;648a
	rst 38h			;648c
	ld h,c			;648d
	ld h,c			;648e
	inc bc			;648f
	ld h,e			;6490
	add a,d			;6491
	ld h,c			;6492
	ret p			;6493
	nop			;6494
	inc b			;6495
	rst 38h			;6496
	inc bc			;6497
	call m,0f881h		;6498
	inc b			;649b
	rst 38h			;649c
	inc bc			;649d
	ccf			;649e
	add a,c			;649f
	rra			;64a0
	nop			;64a1
	inc b			;64a2
	ret p			;64a3
	inc c			;64a4
	ld sp,hl		;64a5
	nop			;64a6
	add a,d			;64a7
	ret m			;64a8
	call m,0ff06h		;64a9
	dec b			;64ac
	ccf			;64ad
	add a,e			;64ae
	cp a			;64af
	rst 38h			;64b0
	rst 38h			;64b1
	nop			;64b2
	add a,c			;64b3
	defb 0fdh,007h,0f5h ;illegal sequence	;64b4
	ld (bc),a		;64b7
	ret p			;64b8
	add a,c			;64b9
	call p,0f005h		;64ba
	nop			;64bd
	ld (bc),a		;64be
	ld (hl),b		;64bf
	xor d			;64c0
	ld a,h			;64c1
	add a,c			;64c2
	rst 20h			;64c3
	rst 20h			;64c4
	nop			;64c5
	rst 38h			;64c6
	ret m			;64c7
	call m,0ffffh		;64c8
	jp 001c3h		;64cb
	inc bc			;64ce
	add a,b			;64cf
	add a,b			;64d0
	ret p			;64d1
	rst 38h			;64d2
	call m,080ffh		;64d3
	rst 38h			;64d6
	ld a,a			;64d7
	ccf			;64d8
	rra			;64d9
	rra			;64da
	rst 0			;64db
	rst 0			;64dc
	inc a			;64dd
	inc a			;64de
	ld a,h			;64df
	ld bc,0ff87h		;64e0
	ccf			;64e3
	rst 38h			;64e4
	dec e			;64e5
	rst 38h			;64e6
	call m,0fefch		;64e7
	cp 003h			;64ea
	add a,b			;64ec
	add a,c			;64ed
	rst 38h			;64ee
	inc b			;64ef
	add a,b			;64f0
	ld (bc),a		;64f1
	cp 081h			;64f2
	nop			;64f4
	inc bc			;64f5
	cp 086h			;64f6
	rst 38h			;64f8
	nop			;64f9
	rrca			;64fa
	rst 38h			;64fb
	ld a,a			;64fc
	ld a,a			;64fd
	inc b			;64fe
	ld a,(hl)		;64ff
	ld (bc),a		;6500
	ld a,a			;6501
	sub d			;6502
l6503h:
	nop			;6503
	ld a,a			;6504
	rlca			;6505
	rlca			;6506
	ld bc,0f9f9h		;6507
	pop af			;650a
	ret p			;650b
	ret p			;650c
	ret m			;650d
	inc bc			;650e
	ld a,a			;650f
l6510h:
	ld b,c			;6510
	jr nz,l6552h		;6511
	add a,b			;6513
	rst 38h			;6514
	inc bc			;6515
	rrca			;6516
	sub c			;6517
	rra			;6518
	ex (sp),hl		;6519
	add a,c			;651a
	ld a,b			;651b
	ld a,b			;651c
	rst 38h			;651d
	ld bc,0ffffh		;651e
	ccf			;6521
	ccf			;6522
	ret m			;6523
	jr $+1			;6524
	jr c,l65a0h		;6526
	ld a,b			;6528
	inc bc			;6529
	ret p			;652a
	ld (bc),a		;652b
	rst 38h			;652c
	add a,e			;652d
	nop			;652e
	rst 38h			;652f
	rst 38h			;6530
	inc b			;6531
	nop			;6532
	adc a,a			;6533
	add a,e			;6534
	call nz,0f0f8h		;6535
	ret po			;6538
	ret nz			;6539
	add a,b			;653a
	rst 38h			;653b
	pop bc			;653c
	inc hl			;653d
	rst 18h			;653e
	rst 28h			;653f
	rst 30h			;6540
	ei			;6541
	dec a			;6542
	inc bc			;6543
	rst 38h			;6544
	add a,c			;6545
	nop			;6546
	dec b			;6547
	rst 38h			;6548
	add a,h			;6549
	nop			;654a
	rst 38h			;654b
	nop			;654c
	nop			;654d
	dec b			;654e
	rst 38h			;654f
	adc a,(hl)		;6550
	add a,b			;6551
l6552h:
	rst 38h			;6552
	rst 38h			;6553
	call m,01ffch		;6554
	jr l6568h		;6557
	rrca			;6559
	rra			;655a
	ld a,03dh		;655b
	ld bc,00501h		;655d
	rst 38h			;6560
	ld (bc),a		;6561
	pop hl			;6562
	add a,d			;6563
	add a,b			;6564
	ret nz			;6565
	ex af,af'		;6566
	ld d,c			;6567
l6568h:
	ex af,af'		;6568
	ld c,h			;6569
	ex af,af'		;656a
	ld c,c			;656b
	rlca			;656c
	ld h,d			;656d
	add a,c			;656e
	rst 38h			;656f
	rlca			;6570
	ld (0ff81h),a		;6571
	rlca			;6574
	adc a,d			;6575
	add a,c			;6576
	rst 38h			;6577
	rlca			;6578
	call nz,0ff81h		;6579
	ex af,af'		;657c
	adc a,h			;657d
	ex af,af'		;657e
	jr nc,l6599h		;657f
	jr l6593h		;6581
	ld b,010h		;6583
	add a,c			;6585
	djnz l65e8h		;6586
	djnz l6510h		;6588
	djnz $+99		;658a
	nop			;658c
	add a,l			;658d
	ret pe			;658e
	adc a,l			;658f
	push de			;6590
	push af			;6591
	push af			;6592
l6593h:
	inc bc			;6593
	ld c,a			;6594
	add a,c			;6595
	defb 0fdh,003h,0f5h ;illegal sequence	;6596
l6599h:
	adc a,h			;6599
	or 0f5h			;659a
	ld sp,hl		;659c
	sub h			;659d
	ret nc			;659e
	ld d,b			;659f
l65a0h:
	ret p			;65a0
	ret p			;65a1
	push af			;65a2
	push af			;65a3
	defb 0fdh,0fdh,003h ;illegal sequence	;65a4
	ld b,b			;65a7
	add a,(hl)		;65a8
	rst 38h			;65a9
	ret c			;65aa
	rst 38h			;65ab
	ret pe			;65ac
	rst 38h			;65ad
	push de			;65ae
	rlca			;65af
	push af			;65b0
	add a,c			;65b1
	sub h			;65b2
	inc bc			;65b3
	ld b,b			;65b4
	inc bc			;65b5
	sub h			;65b6
	inc bc			;65b7
	call p,0f983h		;65b8
	call p,00740h		;65bb
	rrca			;65be
	ld (bc),a		;65bf
	push af			;65c0
	add a,a			;65c1
	ret c			;65c2
	rst 38h			;65c3
	ld b,b			;65c4
	ld b,b			;65c5
	sub h			;65c6
	ld b,b			;65c7
	ld b,b			;65c8
	ld b,00fh		;65c9
	add a,(hl)		;65cb
	push af			;65cc
	defb 0fdh,0f8h,0feh ;illegal sequence	;65cd
	ret m			;65d0
	ld b,b			;65d1
	dec b			;65d2
l65d3h:
	ret p			;65d3
	add a,c			;65d4
	ld b,b			;65d5
	inc bc			;65d6
	ret p			;65d7
	add a,(hl)		;65d8
	inc b			;65d9
	ret p			;65da
	defb 0fdh,0f8h,0e8h ;illegal sequence	;65db
	adc a,l			;65de
	inc bc			;65df
	ret p			;65e0
	add a,e			;65e1
	xor 094h		;65e2
	sub h			;65e4
	add hl,bc		;65e5
	jp (hl)			;65e6
	inc b			;65e7
l65e8h:
	cp 005h			;65e8
	sub h			;65ea
	add a,(hl)		;65eb
	call p,0f0f0h		;65ec
	call p,0f0f4h		;65ef
	inc bc			;65f2
l65f3h:
	call p,0f008h		;65f3
	inc bc			;65f6
	sbc a,a			;65f7
	rlca			;65f8
	ld c,a			;65f9
	dec b			;65fa
	ld c,c			;65fb
	inc bc			;65fc
	call p,0ee83h		;65fd
	sub h			;6600
	sub h			;6601
	inc bc			;6602
	jp (hl)			;6603
	add a,d			;6604
	sub h			;6605
	ld b,b			;6606
	inc bc			;6607
	sub h			;6608
	add a,c			;6609
	jp (hl)			;660a
	ld b,0f6h		;660b
	add a,h			;660d
	push af			;660e
	ld sp,hl		;660f
	sub h			;6610
	ld sp,hl		;6611
	ld b,0f4h		;6612
	add a,d			;6614
	ret p			;6615
	ld sp,hl		;6616
	ld b,0f4h		;6617
	add a,d			;6619
	ret p			;661a
	ld sp,hl		;661b
	ld b,0f4h		;661c
	add a,d			;661e
	ret p			;661f
	call p,0f007h		;6620
	add a,c			;6623
	call p,0f007h		;6624
	add a,c			;6627
	call p,0f007h		;6628
	add a,c			;662b
	call p,0f007h		;662c
	add a,c			;662f
	cp 006h			;6630
l6632h:
	ld sp,hl		;6632
	add a,d			;6633
	call p,006f9h		;6634
	call p,0f082h		;6637
	ld sp,hl		;663a
	ld b,0f4h		;663b
	add a,d			;663d
	ret p			;663e
	cp 006h			;663f
	ld sp,hl		;6641
	add a,c			;6642
	call p,0fe07h		;6643
	add a,c			;6646
	ld sp,hl		;6647
	rlca			;6648
	cp 082h			;6649
	ld sp,hl		;664b
	cp 006h			;664c
	ld sp,hl		;664e
	add a,c			;664f
	call p,0fe07h		;6650
	add a,d			;6653
	ld sp,hl		;6654
	cp 006h			;6655
	ld sp,hl		;6657
	add a,c			;6658
	call p,0fe07h		;6659
	add a,d			;665c
	ld sp,hl		;665d
	cp 006h			;665e
	ld sp,hl		;6660
	add a,d			;6661
	call p,006feh		;6662
	ld sp,hl		;6665
	add a,d			;6666
	call p,006f9h		;6667
	call p,0f082h		;666a
	cp 006h			;666d
	ld sp,hl		;666f
	add a,d			;6670
	call p,006f9h		;6671
	call p,0f081h		;6674
	nop			;6677
	ld (bc),a		;6678
	ret nz			;6679
	ld (bc),a		;667a
	add a,b			;667b
	adc a,c			;667c
	nop			;667d
	cp 0feh			;667e
	rst 38h			;6680
	rst 38h			;6681
	ld a,a			;6682
	ld a,a			;6683
	nop			;6684
	ld bc,0fc03h		;6685
	adc a,b			;6688
	rst 38h			;6689
	cp 0feh			;668a
	rst 38h			;668c
	ld a,a			;668d
	ld a,a			;668e
	ret nz			;668f
	ret nz			;6690
	inc bc			;6691
	inc bc			;6692
	add a,d			;6693
	cp 0ffh			;6694
	inc bc			;6696
	add a,b			;6697
	ld (bc),a		;6698
	ccf			;6699
	ld (bc),a		;669a
	ld a,a			;669b
	adc a,c			;669c
	rst 38h			;669d
	cp 0feh			;669e
	rst 38h			;66a0
	rst 38h			;66a1
	ld a,a			;66a2
	ld a,a			;66a3
	nop			;66a4
	ld bc,00303h		;66a5
	adc a,b			;66a8
	nop			;66a9
	cp 0feh			;66aa
	nop			;66ac
	add a,b			;66ad
	add a,b			;66ae
	ret nz			;66af
	ret nz			;66b0
	inc bc			;66b1
	inc bc			;66b2
	add a,d			;66b3
	ld bc,00300h		;66b4
	add a,b			;66b7
	ld (bc),a		;66b8
	ret nz			;66b9
	ld (bc),a		;66ba
	ld a,a			;66bb
	adc a,c			;66bc
	rst 38h			;66bd
	ld bc,0ff01h		;66be
	rst 38h			;66c1
	ld a,a			;66c2
	ld a,a			;66c3
	rst 38h			;66c4
	cp 003h			;66c5
	inc bc			;66c7
	adc a,l			;66c8
	nop			;66c9
	cp 0feh			;66ca
	rst 38h			;66cc
	ld a,a			;66cd
	ld a,a			;66ce
	ret nz			;66cf
	ret nz			;66d0
	inc bc			;66d1
	inc bc			;66d2
	cp 0feh			;66d3
	rst 38h			;66d5
	inc bc			;66d6
	add a,b			;66d7
	ld (bc),a		;66d8
	ccf			;66d9
	ld (bc),a		;66da
	add a,b			;66db
l66dch:
	adc a,c			;66dc
	nop			;66dd
	cp 0feh			;66de
	rst 38h			;66e0
	rst 38h			;66e1
	ld a,a			;66e2
	ld a,a			;66e3
	nop			;66e4
	ld bc,00303h		;66e5
	sub b			;66e8
	nop			;66e9
	cp 0feh			;66ea
	rst 38h			;66ec
	ld a,a			;66ed
	ld a,a			;66ee
	ccf			;66ef
	ccf			;66f0
	call m,001fch		;66f1
	ld bc,l7f00h		;66f4
	ld a,a			;66f7
	rst 38h			;66f8
	nop			;66f9
	add a,a			;66fa
	push hl			;66fb
	ldd			;66fc
	jr c,l6738h		;66fe
	sub 053h		;6700
	inc bc			;6702
	jp m,0fe84h		;6703
	and l			;6706
	and l			;6707
	ld d,e			;6708
	inc bc			;6709
	or 091h			;670a
	jp m,0da5eh		;670c
	jp c,l65d3h		;670f
	ld h,l			;6712
	push hl			;6713
	push hl			;6714
	xor l			;6715
	out (0d3h),a		;6716
	ld h,l			;6718
	dec (hl)		;6719
	rst 38h			;671a
	ld d,e			;671b
	sub 003h		;671c
	add a,(hl)		;671e
	add a,d			;671f
	jp c,0035eh		;6720
	or 081h			;6723
	di			;6725
	inc bc			;6726
	push hl			;6727
	add a,l			;6728
	xor a			;6729
	ccf			;672a
	ccf			;672b
	or 053h			;672c
	inc bc			;672e
	defb 0edh ;next byte illegal after ed	;672f
	add a,h			;6730
	and l			;6731
	dec (hl)		;6732
	dec (hl)		;6733
	ld h,l			;6734
	inc bc			;6735
	ld l,l			;6736
	adc a,d			;6737
l6738h:
	and l			;6738
	push hl			;6739
	rst 38h			;673a
	ld h,l			;673b
	ld l,l			;673c
	add a,e			;673d
	adc a,d			;673e
	adc a,d			;673f
	defb 0edh ;next byte illegal after ed	;6740
	and l			;6741
	inc bc			;6742
	di			;6743
	add a,h			;6744
	or 053h			;6745
	ld d,e			;6747
	and l			;6748
	inc bc			;6749
	rst 28h			;674a
	sub c			;674b
	di			;674c
	ld d,(hl)		;674d
	out (0d3h),a		;674e
	jp c,0e5e5h		;6750
	ld h,l			;6753
	ld h,l			;6754
	out (0dah),a		;6755
	jp c,0a5e5h		;6757
	rst 38h			;675a
	ld d,e			;675b
	jp c,0e803h		;675c
	add a,d			;675f
	out (056h),a		;6760
	inc bc			;6762
	cp 081h			;6763
	jp m,l6503h		;6765
	add a,l			;6768
	ccf			;6769
	xor a			;676a
	xor a			;676b
	cp 05ah			;676c
	inc bc			;676e
	sub 084h		;676f
	ld d,e			;6771
	ld e,d			;6772
	ld d,e			;6773
	ld e,d			;6774
	inc bc			;6775
	defb 0edh ;next byte illegal after ed	;6776
	add a,e			;6777
	ld d,e			;6778
	ld d,(hl)		;6779
	ret p			;677a
	nop			;677b
	rst 38h			;677c
	rst 38h			;677d
	pop bc			;677e
	ret po			;677f
	ret p			;6780
	ret m			;6781
	call m,0fffeh		;6782
	rst 38h			;6785
	pop bc			;6786
	ret po			;6787
	ret p			;6788
	ret m			;6789
	call m,0fffeh		;678a
	rst 38h			;678d
	pop bc			;678e
	ret po			;678f
	ret p			;6790
	ret m			;6791
	call m,0fffeh		;6792
	rst 38h			;6795
	pop bc			;6796
	ret po			;6797
	ret p			;6798
	ret m			;6799
	call m,0fffeh		;679a
	rst 38h			;679d
	add a,e			;679e
	rlca			;679f
	rrca			;67a0
	rra			;67a1
	ccf			;67a2
	ld a,a			;67a3
	rst 38h			;67a4
	rst 38h			;67a5
	add a,e			;67a6
	rlca			;67a7
	rrca			;67a8
	rra			;67a9
	ccf			;67aa
	ld a,a			;67ab
	rst 38h			;67ac
	rst 38h			;67ad
	add a,e			;67ae
	rlca			;67af
	rrca			;67b0
	rra			;67b1
	ccf			;67b2
	ld a,a			;67b3
	rst 38h			;67b4
	rst 38h			;67b5
	add a,e			;67b6
	rlca			;67b7
	rrca			;67b8
	rra			;67b9
	ccf			;67ba
	ld a,a			;67bb
	rst 38h			;67bc
	rst 38h			;67bd
	cp 0fch			;67be
	ret m			;67c0
	ret p			;67c1
	ret po			;67c2
	pop bc			;67c3
	rst 38h			;67c4
	rst 38h			;67c5
	cp 0fch			;67c6
sub_67c8h:
	ret m			;67c8
	ret p			;67c9
	ret po			;67ca
	ld a,0ffh		;67cb
	rst 38h			;67cd
	cp 0fch			;67ce
	ret m			;67d0
	ret p			;67d1
	ret po			;67d2
	ld a,0ffh		;67d3
	rst 38h			;67d5
	cp 0fch			;67d6
	ret m			;67d8
	ret p			;67d9
	ret po			;67da
	ld a,0ffh		;67db
	rst 38h			;67dd
	ld a,a			;67de
	ccf			;67df
	rra			;67e0
	rrca			;67e1
	rlca			;67e2
	add a,e			;67e3
	rst 38h			;67e4
	rst 38h			;67e5
	ld a,a			;67e6
	ccf			;67e7
	rra			;67e8
	rrca			;67e9
	rlca			;67ea
	ld a,h			;67eb
	rst 38h			;67ec
	rst 38h			;67ed
	ld a,a			;67ee
	ccf			;67ef
	rra			;67f0
	rrca			;67f1
	rlca			;67f2
	ld a,h			;67f3
	rst 38h			;67f4
	rst 38h			;67f5
	ld a,a			;67f6
	ccf			;67f7
	rra			;67f8
	rrca			;67f9
	rlca			;67fa
	ld a,h			;67fb
	ld (bc),a		;67fc
	rst 38h			;67fd
	add a,c			;67fe
	cp 004h			;67ff
	call m,0fe84h		;6801
	rst 38h			;6804
	rst 38h			;6805
	ld a,a			;6806
	inc b			;6807
	ccf			;6808
	add a,d			;6809
	ld a,a			;680a
	rst 38h			;680b
	nop			;680c
	add a,(hl)		;680d
	ret p			;680e
	jp m,0fefeh		;680f
	jp m,004f3h		;6812
	or 084h			;6815
	di			;6817
	jp m,0fefeh		;6818
	inc bc			;681b
	jp m,0f385h		;681c
	or 0f6h			;681f
	di			;6821
	jp m,0fe04h		;6822
	add a,h			;6825
	jp m,0f6f3h		;6826
	or 003h			;6829
	di			;682b
	add a,l			;682c
	jp m,0fefeh		;682d
	jp m,004f3h		;6830
	or 084h			;6833
	di			;6835
	jp m,0fefeh		;6836
	inc bc			;6839
	jp m,0f385h		;683a
	or 0f6h			;683d
	di			;683f
	jp m,0fe04h		;6840
	add a,h			;6843
	jp m,0f6f3h		;6844
	or 003h			;6847
	di			;6849
	add a,(hl)		;684a
	cp 0fah			;684b
	di			;684d
	or 0f6h			;684e
	ld d,e			;6850
	dec b			;6851
	or 083h			;6852
	di			;6854
	jp m,003e5h		;6855
	or 085h			;6858
	di			;685a
	jp m,0fefeh		;685b
	and l			;685e
	inc bc			;685f
	jp m,0fe02h		;6860
	add a,e			;6863
	jp m,l65f3h		;6864
	inc bc			;6867
	cp 085h			;6868
	jp m,0f6f3h		;686a
	or 053h			;686d
	dec b			;686f
	or 083h			;6870
	di			;6872
	jp m,003e5h		;6873
	or 085h			;6876
	di			;6878
	jp m,0fefeh		;6879
	and l			;687c
	inc bc			;687d
	jp m,0fe02h		;687e
	add a,e			;6881
	jp m,l65f3h		;6882
	ld a,(bc)		;6885
	or 007h			;6886
	pop af			;6888
	nop			;6889
	ld (bc),a		;688a
	cp 002h			;688b
	call m,0f802h		;688d
	ld (bc),a		;6890
	ret p			;6891
	inc bc			;6892
	ret po			;6893
	add a,h			;6894
	ret p			;6895
	ret po			;6896
	ret po			;6897
	rst 38h			;6898
	inc bc			;6899
	ret m			;689a
	rlca			;689b
	ret po			;689c
	rlca			;689d
	add a,b			;689e
	add a,d			;689f
	ret p			;68a0
	nop			;68a1
	inc b			;68a2
	call m,00006h		;68a3
	sub h			;68a6
	ld bc,00300h		;68a7
	inc bc			;68aa
	ld a,a			;68ab
	rlca			;68ac
	or 0f6h			;68ad
	call pe,0f80ch		;68af
	ret m			;68b2
	ret p			;68b3
	ret p			;68b4
	ret po			;68b5
	ret po			;68b6
	ret nz			;68b7
	ret nz			;68b8
	add a,b			;68b9
	add a,b			;68ba
	ex af,af'		;68bb
	nop			;68bc
	ld (bc),a		;68bd
	cp 081h			;68be
	add a,003h		;68c0
	sub 085h		;68c2
	add a,0feh		;68c4
	ret po			;68c6
	ret po			;68c7
	ret nz			;68c8
	inc bc			;68c9
	ret po			;68ca
	add a,c			;68cb
	ld a,a			;68cc
	inc bc			;68cd
	nop			;68ce
	adc a,(hl)		;68cf
	ret po			;68d0
	ld h,b			;68d1
	ret nz			;68d2
	add a,b			;68d3
	nop			;68d4
	nop			;68d5
	cp 0feh			;68d6
	ccf			;68d8
	add a,b			;68d9
	ld bc,0f001h		;68da
l68ddh:
	ret p			;68dd
	inc b			;68de
	rst 38h			;68df
	inc b			;68e0
	nop			;68e1
	nop			;68e2
	ld a,(bc)		;68e3
	ld sp,hl		;68e4
	adc a,c			;68e5
	ret p			;68e6
	jp m,0f0f3h		;68e7
	sub h			;68ea
	sub h			;68eb
	add hl,bc		;68ec
	inc b			;68ed
	jp (hl)			;68ee
	inc bc			;68ef
	sub h			;68f0
	add a,h			;68f1
	ld c,a			;68f2
	nop			;68f3
	nop			;68f4
	jp (hl)			;68f5
	dec b			;68f6
	sub h			;68f7
	add a,h			;68f8
	nop			;68f9
	sub h			;68fa
	sub h			;68fb
	sub b			;68fc
	inc b			;68fd
	ld c,a			;68fe
	dec bc			;68ff
	sub b			;6900
	ld d,094h		;6901
	dec bc			;6903
	ld b,b			;6904
	add a,e			;6905
	jp (hl)			;6906
	sub h			;6907
	sub h			;6908
	dec b			;6909
	ret p			;690a
	rlca			;690b
	ld b,b			;690c
	add a,l			;690d
	ret p			;690e
	and e			;690f
	or 04fh			;6910
	sub h			;6912
	ex af,af'		;6913
	ld b,b			;6914
	add a,c			;6915
	sbc a,a			;6916
	nop			;6917
	add a,d			;6918
	rra			;6919
	rlca			;691a
	ld b,000h		;691b
	add a,d			;691d
	rst 20h			;691e
	ret p			;691f
	ld b,000h		;6920
	add a,d			;6922
	inc bc			;6923
	ld bc,00006h		;6924
	ld (bc),a		;6927
	inc bc			;6928
	inc bc			;6929
	ld bc,00003h		;692a
	add a,e			;692d
	ret po			;692e
	ret nz			;692f
	add a,b			;6930
	dec b			;6931
	nop			;6932
	add a,h			;6933
	ret po			;6934
	ret nz			;6935
	ret nz			;6936
	add a,b			;6937
	inc b			;6938
	nop			;6939
	sub b			;693a
	dec sp			;693b
	cp 0fch			;693c
	ret m			;693e
	ret p			;693f
	ret po			;6940
	ret nz			;6941
	add a,b			;6942
	or (hl)			;6943
	call m,0e0f0h		;6944
	ret nz			;6947
	ret nz			;6948
	add a,b			;6949
	nop			;694a
	nop			;694b
	add a,c			;694c
	ld sp,03007h		;694d
	add a,d			;6950
	ld hl,01631h		;6951
	jr nc,l6958h		;6954
	djnz l695eh		;6956
l6958h:
	jr nz,l6962h		;6958
	djnz l68ddh		;695a
	pop af			;695c
	rlca			;695d
l695eh:
	ret p			;695e
	add a,c			;695f
	pop af			;6960
	rlca			;6961
l6962h:
	ret p			;6962
	nop			;6963
	cp b			;6964
	ld h,b			;6965
	ret nz			;6966
	sbc a,c			;6967
	rst 20h			;6968
	call m,0c0f0h		;6969
	nop			;696c
	sbc a,b			;696d
	ret nc			;696e
	pop hl			;696f
	ld a,a			;6970
	ccf			;6971
	rrca			;6972
	inc bc			;6973
	nop			;6974
	push hl			;6975
	call nc,0fefch		;6976
	ld a,a			;6979
	ccf			;697a
	rrca			;697b
	inc bc			;697c
	cp 07fh			;697d
	ld a,a			;697f
	ccf			;6980
	ccf			;6981
	rra			;6982
	rlca			;6983
	inc bc			;6984
	ex de,hl		;6985
	jp 0fcfeh		;6986
	call m,0f0f8h		;6989
	ret po			;698c
	inc e			;698d
	jr c,l69a0h		;698e
	jr nz,l6992h		;6990
l6992h:
	call m,0f0fch		;6992
	rra			;6995
	rra			;6996
	rrca			;6997
	rrca			;6998
	rlca			;6999
	inc bc			;699a
	cp 0e1h			;699b
	ex af,af'		;699d
	rst 38h			;699e
	rst 0			;699f
l69a0h:
	xor a			;69a0
	rst 8			;69a1
	cp 06bh			;69a2
	ld hl,01c19h		;69a4
	ld e,098h		;69a7
	ret z			;69a9
	ret z			;69aa
	adc a,h			;69ab
	call nz,0f2e6h		;69ac
	jp m,0224ch		;69af
	sub c			;69b2
	ret po			;69b3
	ld (hl),b		;69b4
	inc a			;69b5
	sbc a,(hl)		;69b6
	ld l,h			;69b7
	rlca			;69b8
	inc bc			;69b9
	ld bc,0f880h		;69ba
	call m,03f7eh		;69bd
	rst 0			;69c0
	ld a,h			;69c1
	ld a,b			;69c2
	ld a,h			;69c3
	add a,c			;69c4
	pop bc			;69c5
	ld e,00fh		;69c6
	jp 038c3h		;69c8
	ld a,h			;69cb
	add a,c			;69cc
	jp 0f1e1h		;69cd
	ld a,a			;69d0
	rlca			;69d1
	ld b,e			;69d2
	daa			;69d3
	cpl			;69d4
	sbc a,01bh		;69d5
	scf			;69d7
	pop hl			;69d8
	sbc a,b			;69d9
	ex af,af'		;69da
	ld c,b			;69db
	adc a,h			;69dc
	call nz,0f2c6h		;69dd
	ld sp,hl		;69e0
	defb 0fdh,0b8h,0cch ;illegal sequence	;69e1
	cp 0fah			;69e4
	defb 0fdh,003h,0ffh ;illegal sequence	;69e6
	ld (bc),a		;69e9
	ld a,a			;69ea
	add a,e			;69eb
	ccf			;69ec
	ret po			;69ed
	ret po			;69ee
	inc bc			;69ef
	ret p			;69f0
	ld (bc),a		;69f1
	ret m			;69f2
	inc bc			;69f3
	call m,0feffh		;69f4
	add a,b			;69f7
	ret nz			;69f8
	ret po			;69f9
	ret p			;69fa
	ret p			;69fb
	ret m			;69fc
	call m,02ffeh		;69fd
	scf			;6a00
	rrca			;6a01
	add hl,sp		;6a02
	sbc a,a			;6a03
	ld sp,hl		;6a04
	di			;6a05
	pop hl			;6a06
	ret m			;6a07
	ret m			;6a08
	call m,0fefch		;6a09
	cp 0fch			;6a0c
	ret m			;6a0e
	cpl			;6a0f
	ccf			;6a10
	rrca			;6a11
	ret m			;6a12
	jp 02fe0h		;6a13
	inc bc			;6a16
	rst 38h			;6a17
	rst 38h			;6a18
	add hl,de		;6a19
	djnz l6a82h		;6a1a
	inc bc			;6a1c
	ld a,b			;6a1d
	ld a,b			;6a1e
	ld a,a			;6a1f
	rst 38h			;6a20
	call m,0f0f8h		;6a21
	ret po			;6a24
	ret nz			;6a25
	add a,b			;6a26
	ld a,a			;6a27
	ld a,(hl)		;6a28
	call m,0f1fch		;6a29
	pop hl			;6a2c
	ex (sp),hl		;6a2d
	ret m			;6a2e
	call nz,0f828h		;6a2f
	ld a,h			;6a32
	ld a,03ch		;6a33
	ld e,00eh		;6a35
	ld sp,hl		;6a37
	defb 0fdh,0b8h,0cch ;illegal sequence	;6a38
	call po,0fcf0h		;6a3b
	jp 0df7eh		;6a3e
	sub c			;6a41
	or e			;6a42
	ld l,a			;6a43
	rst 38h			;6a44
	rst 38h			;6a45
	ld a,a			;6a46
	ld a,b			;6a47
	inc a			;6a48
	inc a			;6a49
	ld e,01eh		;6a4a
	ret po			;6a4c
	ret p			;6a4d
	ret p			;6a4e
	ld l,a			;6a4f
	daa			;6a50
	inc de			;6a51
	add a,c			;6a52
	ret p			;6a53
	jr c,$-50		;6a54
	ld l,(hl)		;6a56
	cp b			;6a57
	call m,0f6fch		;6a58
	jp m,0fcf9h		;6a5b
	cp 0d0h			;6a5e
	ld l,b			;6a60
	call p,07af6h		;6a61
	cp c			;6a64
	call c,0d0feh		;6a65
	ret pe			;6a68
	call p,0faf6h		;6a69
	defb 0fdh,0feh,07fh ;illegal sequence	;6a6c
	add hl,sp		;6a6f
	or e			;6a70
	ld d,e			;6a71
	jp po,08044h		;6a72
	sub d			;6a75
	add a,b			;6a76
	ret nz			;6a77
	ex af,af'		;6a78
	ld de,l6632h		;6a79
	call c,0c8fah		;6a7c
	sub b			;6a7f
	ret nz			;6a80
	ret p			;6a81
l6a82h:
	ret m			;6a82
	call m,0bffeh		;6a83
	ld a,a			;6a86
	ld a,a			;6a87
	inc bc			;6a88
	rst 38h			;6a89
	sub l			;6a8a
	ld sp,iy		;6a8b
	rst 20h			;6a8d
	rst 28h			;6a8e
	ld c,a			;6a8f
	add a,a			;6a90
	add a,a			;6a91
	rrca			;6a92
	inc c			;6a93
	ccf			;6a94
	rra			;6a95
	ccf			;6a96
	ccf			;6a97
	call c,0f6ech		;6a98
	or 07bh			;6a9b
	cp c			;6a9d
	defb 0ddh,0feh,004h ;illegal sequence	;6a9e
	rst 38h			;6aa1
	rst 38h			;6aa2
	cp 0fch			;6aa3
	ld sp,hl		;6aa5
	defb 0fdh,0fch,0f9h ;illegal sequence	;6aa6
	ret p			;6aa9
	ret p			;6aaa
	ret m			;6aab
	cp 07fh			;6aac
	rst 38h			;6aae
	ret p			;6aaf
	ret po			;6ab0
	jr c,l6acbh		;6ab1
	call z,sub_7eeeh	;6ab3
	inc e			;6ab6
	inc a			;6ab7
	add hl,de		;6ab8
	sub c			;6ab9
	sub e			;6aba
	ld l,a			;6abb
	ld a,a			;6abc
	ccf			;6abd
	rra			;6abe
	rlca			;6abf
	inc bc			;6ac0
	add a,b			;6ac1
l6ac2h:
	add a,b			;6ac2
	jr nc,l6b1dh		;6ac3
l6ac5h:
	inc e			;6ac5
	adc a,h			;6ac6
	scf			;6ac7
	xor a			;6ac8
	rst 8			;6ac9
	rst 38h			;6aca
l6acbh:
	ex de,hl		;6acb
	ex (sp),hl		;6acc
	ex (sp),hl		;6acd
	rst 0			;6ace
	rst 8			;6acf
	sbc a,a			;6ad0
	rst 38h			;6ad1
	rst 28h			;6ad2
	ld b,(hl)		;6ad3
	ld c,00ch		;6ad4
	jr l6b11h		;6ad6
	or e			;6ad8
	ld d,e			;6ad9
	jp po,08044h		;6ada
	add a,b			;6add
	jp nz,0f0f2h		;6ade
	ret m			;6ae1
	ret m			;6ae2
	call m,0fefch		;6ae3
	jp m,0c4c6h		;6ae6
	ret z			;6ae9
	ret c			;6aea
	ret p			;6aeb
	pop af			;6aec
	rst 30h			;6aed
	adc a,b			;6aee
	adc a,088h		;6aef
	call po,0b272h		;6af1
	jr l6ac2h		;6af4
	xor 0c7h		;6af6
	add a,l			;6af8
	set 0,a			;6af9
	adc a,a			;6afb
	sbc a,(hl)		;6afc
	dec de			;6afd
	scf			;6afe
	ccf			;6aff
	cp a			;6b00
	ld e,a			;6b01
	ld c,h			;6b02
	ld a,h			;6b03
	inc a			;6b04
	ld a,00eh		;6b05
	sbc a,b			;6b07
	ex af,af'		;6b08
	ld c,b			;6b09
	adc a,h			;6b0a
	call nz,0f2c6h		;6b0b
	jp m,09fcfh		;6b0e
l6b11h:
	rst 38h			;6b11
	cp 0f5h			;6b12
	rst 28h			;6b14
	jp c,0ce3ch		;6b15
	adc a,b			;6b18
	call po,08272h		;6b19
	ld a,(hl)		;6b1c
l6b1dh:
	ld a,0d0h		;6b1d
	rst 30h			;6b1f
	ld sp,hl		;6b20
	call m,0fc85h		;6b21
	cp 0feh			;6b24
	rst 38h			;6b26
	rst 38h			;6b27
	nop			;6b28
	inc b			;6b29
	ld hl,02002h		;6b2a
	ld (bc),a		;6b2d
	jr nc,l6b33h		;6b2e
	ld (03005h),a		;6b30
l6b33h:
	inc b			;6b33
	ld (03004h),a		;6b34
	add a,c			;6b37
	ld (03007h),a		;6b38
	ld (bc),a		;6b3b
	pop af			;6b3c
	ld b,010h		;6b3d
	dec b			;6b3f
	pop af			;6b40
	inc bc			;6b41
	djnz l6ac5h		;6b42
	ld sp,03f05h		;6b44
	add a,c			;6b47
	pop af			;6b48
	add hl,bc		;6b49
	ret p			;6b4a
	ld (bc),a		;6b4b
	pop af			;6b4c
	add a,(hl)		;6b4d
	jp p,0f1f1h		;6b4e
	ld hl,03221h		;6b51
	rrca			;6b54
	ld hl,03281h		;6b55
	inc bc			;6b58
	ld sp,0f191h		;6b59
	ld hl,03231h		;6b5c
	ld sp,021f1h		;6b5f
	ld (0f332h),a		;6b62
	di			;6b65
	ld sp,0f131h		;6b66
	ld (de),a		;6b69
	ld (00331h),a		;6b6a
	di			;6b6d
	add a,c			;6b6e
	jp p,0f107h		;6b6f
	add a,d			;6b72
	jp p,003f1h		;6b73
	ld hl,03106h		;6b76
	add hl,bc		;6b79
	ld (03102h),a		;6b7a
	inc de			;6b7d
	di			;6b7e
	add a,e			;6b7f
	pop af			;6b80
	di			;6b81
	di			;6b82
	inc bc			;6b83
	pop af			;6b84
	ld (bc),a		;6b85
	jp p,0f306h		;6b86
	inc bc			;6b89
	pop af			;6b8a
	ld (bc),a		;6b8b
	di			;6b8c
	add a,e			;6b8d
	ld sp,0f2f3h		;6b8e
	dec b			;6b91
	pop af			;6b92
	add a,l			;6b93
	jp p,0f131h		;6b94
	ld hl,00b32h		;6b97
	pop af			;6b9a
	add a,c			;6b9b
	jp p,0f303h		;6b9c
	inc bc			;6b9f
	jp p,03281h		;6ba0
	rlca			;6ba3
	ld sp,03204h		;6ba4
	add a,c			;6ba7
	ld hl,0f109h		;6ba8
	dec b			;6bab
	ld sp,0f303h		;6bac
	inc b			;6baf
	ld sp,02104h		;6bb0
l6bb3h:
	rla			;6bb3
	ld (03181h),a		;6bb4
l6bb7h:
	dec b			;6bb7
	pop af			;6bb8
	dec bc			;6bb9
	ld hl,0f305h		;6bba
	inc de			;6bbd
	pop af			;6bbe
	ex af,af'		;6bbf
	ld (0f109h),a		;6bc0
	ld (bc),a		;6bc3
	jp p,0f302h		;6bc4
	add a,c			;6bc7
	jp p,0f103h		;6bc8
	ld (bc),a		;6bcb
	ld hl,03203h		;6bcc
	ld (bc),a		;6bcf
	ld sp,0f10ah		;6bd0
	ld b,021h		;6bd3
	dec d			;6bd5
	pop af			;6bd6
	inc bc			;6bd7
	ld hl,03106h		;6bd8
	ld (bc),a		;6bdb
	ld (02107h),a		;6bdc
	add a,d			;6bdf
	ld (00621h),a		;6be0
	ld (03181h),a		;6be3
	djnz $-13		;6be6
	inc bc			;6be8
	ld hl,03105h		;6be9
	ex af,af'		;6bec
	pop af			;6bed
	add a,c			;6bee
	ld hl,03204h		;6bef
	ld (bc),a		;6bf2
	ld hl,03204h		;6bf3
	dec b			;6bf6
	ld sp,00500h		;6bf7
	rst 38h			;6bfa
	add a,e			;6bfb
	ld a,a			;6bfc
	ccf			;6bfd
	ret po			;6bfe
	ld b,000h		;6bff
	add a,d			;6c01
	add a,b			;6c02
	ret nz			;6c03
	ld b,000h		;6c04
	add a,d			;6c06
	ld bc,00603h		;6c07
	nop			;6c0a
	add a,d			;6c0b
	rrca			;6c0c
	add a,e			;6c0d
	ld b,000h		;6c0e
	add a,d			;6c10
	rlca			;6c11
	ld e,006h		;6c12
	nop			;6c14
	sub d			;6c15
	ret p			;6c16
	ret m			;6c17
	add a,b			;6c18
	add a,b			;6c19
	ret nz			;6c1a
	ret po			;6c1b
	ret p			;6c1c
	ret m			;6c1d
	cp 03bh			;6c1e
	ld bc,00303h		;6c20
	rlca			;6c23
	rrca			;6c24
	rra			;6c25
	ccf			;6c26
	ld a,a			;6c27
	nop			;6c28
	rlca			;6c29
	inc bc			;6c2a
	rlca			;6c2b
	jr nz,l6c36h		;6c2c
	djnz l6c39h		;6c2e
	jr nc,l6bb3h		;6c30
	di			;6c32
	rlca			;6c33
	jr nc,l6bb7h		;6c34
l6c36h:
	ld sp,01007h		;6c36
l6c39h:
	ex af,af'		;6c39
	ret p			;6c3a
	add a,c			;6c3b
	pop af			;6c3c
	ex af,af'		;6c3d
	jr nc,l6c40h		;6c3e
l6c40h:
	xor b			;6c40
	ret p			;6c41
	ret m			;6c42
	call m,sub_6cfeh	;6c43
	ld d,009h		;6c46
	nop			;6c48
	nop			;6c49
	add a,b			;6c4a
	ret po			;6c4b
	ret m			;6c4c
	cp 099h			;6c4d
	ret nz			;6c4f
	ld h,b			;6c50
	ret p			;6c51
	call m,0fefeh		;6c52
	jr nz,l6c67h		;6c55
	jr c,$+30		;6c57
	ret nz			;6c59
	ret po			;6c5a
	ret p			;6c5b
	ret m			;6c5c
	call m,0c3feh		;6c5d
	ex de,hl		;6c60
	nop			;6c61
	inc bc			;6c62
	rrca			;6c63
	ccf			;6c64
	ld a,a			;6c65
	defb 0edh ;next byte illegal after ed	;6c66
l6c67h:
	ret nc			;6c67
	sbc a,b			;6c68
	inc bc			;6c69
	nop			;6c6a
	rst 38h			;6c6b
	ld a,h			;6c6c
	rst 20h			;6c6d
	pop bc			;6c6e
l6c6fh:
	sub b			;6c6f
	sbc a,b			;6c70
	ret po			;6c71
	ret m			;6c72
	call m,0c6feh		;6c73
	pop hl			;6c76
	or b			;6c77
	sbc a,b			;6c78
	inc bc			;6c79
	rrca			;6c7a
	ccf			;6c7b
	add a,c			;6c7c
	ld bc,0d4fch		;6c7d
	push hl			;6c80
	rlca			;6c81
	rra			;6c82
	ccf			;6c83
	ld a,a			;6c84
	ld a,a			;6c85
	cp 0ech			;6c86
	exx			;6c88
	rlca			;6c89
	rrca			;6c8a
	rra			;6c8b
	ccf			;6c8c
	ccf			;6c8d
	ld a,a			;6c8e
	rst 38h			;6c8f
	cp 007h			;6c90
	rrca			;6c92
	rra			;6c93
	ccf			;6c94
	ld a,a			;6c95
	rst 38h			;6c96
	ld (hl),b		;6c97
	ld (hl),b		;6c98
	ret po			;6c99
	rrca			;6c9a
	inc bc			;6c9b
	rlca			;6c9c
	ret po			;6c9d
	ret p			;6c9e
	jr c,l6c6fh		;6c9f
	rlca			;6ca1
	ex (sp),hl		;6ca2
	pop hl			;6ca3
	pop af			;6ca4
	call m,sub_7efch	;6ca5
	ld a,a			;6ca8
	add a,l			;6ca9
	adc a,b			;6caa
	cp d			;6cab
	call c,04b90h		;6cac
	cp a			;6caf
	ld a,a			;6cb0
	pop af			;6cb1
	pop hl			;6cb2
	jp l7c81h		;6cb3
	jr c,$+62		;6cb6
	inc a			;6cb8
	ld l,h			;6cb9
	sbc a,(hl)		;6cba
	inc a			;6cbb
	ld (hl),b		;6cbc
	ret po			;6cbd
	sub c			;6cbe
	ld (0fd4ch),hl		;6cbf
	jp m,0e9e4h		;6cc2
	ret nc			;6cc5
	ret po			;6cc6
	ret pe			;6cc7
	ret nc			;6cc8
	adc a,b			;6cc9
	rst 10h			;6cca
	pop hl			;6ccb
	ret p			;6ccc
	cp b			;6ccd
	jr l6cdch		;6cce
	ld b,0ffh		;6cd0
	defb 0fdh,0fah,0feh ;illegal sequence	;6cd2
	call z,0fdb8h		;6cd5
	ld sp,hl		;6cd8
	pop hl			;6cd9
	di			;6cda
	ret m			;6cdb
l6cdch:
	sbc a,a			;6cdc
	jr c,l6ceeh		;6cdd
	ret po			;6cdf
	add a,b			;6ce0
	ret p			;6ce1
	ret po			;6ce2
	ret po			;6ce3
	ccf			;6ce4
	ld a,a			;6ce5
	ld a,a			;6ce6
	rst 38h			;6ce7
	rst 38h			;6ce8
	ret m			;6ce9
	ret m			;6cea
	add a,l			;6ceb
	pop af			;6cec
	di			;6ced
l6ceeh:
	rst 20h			;6cee
	rst 20h			;6cef
l6cf0h:
	ld a,a			;6cf0
	add hl,bc		;6cf1
	rst 38h			;6cf2
	jp nz,0ff0fh		;6cf3
	call m,0e0f0h		;6cf6
	ret nz			;6cf9
	ret nz			;6cfa
	ld a,a			;6cfb
	ret nz			;6cfc
	ret po			;6cfd
sub_6cfeh:
	pop af			;6cfe
	ret m			;6cff
	call m,0fcf8h		;6d00
	rst 38h			;6d03
	pop hl			;6d04
	di			;6d05
	ld sp,hl		;6d06
	sbc a,a			;6d07
	add hl,sp		;6d08
	rrca			;6d09
	scf			;6d0a
	cpl			;6d0b
	cp a			;6d0c
	sbc a,a			;6d0d
	bit 1,l			;6d0e
	ld h,h			;6d10
	ld (0bd31h),hl		;6d11
	inc bc			;6d14
	cpl			;6d15
	ret po			;6d16
	jp 00ff8h		;6d17
	ccf			;6d1a
	cpl			;6d1b
	ccf			;6d1c
	ld a,(hl)		;6d1d
	call m,080f8h		;6d1e
	ld bc,00703h		;6d21
	ld c,01eh		;6d24
	inc a			;6d26
	ld a,07ch		;6d27
	ret m			;6d29
	jr z,l6cf0h		;6d2a
	ret m			;6d2c
	ret p			;6d2d
	ret po			;6d2e
	ret nz			;6d2f
	add a,b			;6d30
	call m,0e0f8h		;6d31
	ccf			;6d34
	rra			;6d35
	inc b			;6d36
	rst 38h			;6d37
	add a,a			;6d38
	cp 0fch			;6d39
	add a,a			;6d3b
	inc bc			;6d3c
	inc bc			;6d3d
	rlca			;6d3e
	adc a,a			;6d3f
	inc bc			;6d40
	rst 38h			;6d41
	ret nz			;6d42
	rlca			;6d43
	ret po			;6d44
	jp 0cf83h		;6d45
	ccf			;6d48
	ld e,038h		;6d49
	ret p			;6d4b
	ret p			;6d4c
	ret po			;6d4d
	ld e,01eh		;6d4e
	inc a			;6d50
	inc a			;6d51
	ld a,b			;6d52
	ld l,(hl)		;6d53
	call z,0f038h		;6d54
	ret nz			;6d57
	ld bc,00703h		;6d58
	rrca			;6d5b
	ld e,0c1h		;6d5c
	add a,c			;6d5e
	ld a,h			;6d5f
	ld a,b			;6d60
	ld a,h			;6d61
	rst 0			;6d62
	ret m			;6d63
	call m,0fefeh		;6d64
	call m,0f8fch		;6d67
	ret m			;6d6a
	cp 0fch			;6d6b
	ret m			;6d6d
	ret p			;6d6e
	ret p			;6d6f
	ret po			;6d70
	ret nz			;6d71
	add a,b			;6d72
	nop			;6d73
	ei			;6d74
	jp p,0cce6h		;6d75
	or b			;6d78
	cp 0fch			;6d79
	sub b			;6d7b
	ret z			;6d7c
	jp m,l66dch		;6d7d
	ld (00811h),a		;6d80
	inc bc			;6d83
	nop			;6d84
	adc a,d			;6d85
	ld b,h			;6d86
	jp po,0b152h		;6d87
	add hl,sp		;6d8a
	ld c,a			;6d8b
	rst 28h			;6d8c
	rst 20h			;6d8d
	ld sp,hl		;6d8e
	defb 0fdh,003h,0ffh ;illegal sequence	;6d8f
	ld (bc),a		;6d92
	ccf			;6d93
	sub d			;6d94
	rra			;6d95
	ccf			;6d96
	inc c			;6d97
	rrca			;6d98
	add a,a			;6d99
	add a,a			;6d9a
	cp 0fch			;6d9b
	ld sp,hl		;6d9d
	ei			;6d9e
	cp 0f6h			;6d9f
	call pe,sub_67c8h	;6da1
	ret p			;6da4
	ret m			;6da5
	cp 005h			;6da6
	rst 38h			;6da8
	rst 38h			;6da9
	ld a,a			;6daa
	cp 0f8h			;6dab
	ret p			;6dad
	ret p			;6dae
	ld sp,hl		;6daf
	call m,sub_7e1ch	;6db0
	xor 0cch		;6db3
	jr l6defh		;6db5
	ret po			;6db7
	ret p			;6db8
	rra			;6db9
	ccf			;6dba
	ld a,a			;6dbb
	ld l,a			;6dbc
	sub e			;6dbd
	sub c			;6dbe
	add hl,de		;6dbf
	inc a			;6dc0
	adc a,h			;6dc1
	inc e			;6dc2
	ld e,b			;6dc3
	jr nc,$-126		;6dc4
	add a,b			;6dc6
	inc bc			;6dc7
	rlca			;6dc8
	rst 0			;6dc9
	ex (sp),hl		;6dca
	ex (sp),hl		;6dcb
	ex de,hl		;6dcc
	rst 38h			;6dcd
	rst 8			;6dce
	xor a			;6dcf
	scf			;6dd0
	jr $+14			;6dd1
	ld c,046h		;6dd3
	rst 28h			;6dd5
	rst 38h			;6dd6
	sbc a,a			;6dd7
	rst 8			;6dd8
	jp nz,08080h		;6dd9
	ld b,h			;6ddc
	jp po,0b353h		;6ddd
	add hl,sp		;6de0
	jp m,0fcfeh		;6de1
	call m,0f8f8h		;6de4
	ret p			;6de7
	jp p,0f078h		;6de8
	ret p			;6deb
	ret po			;6dec
	ret nz			;6ded
	inc bc			;6dee
l6defh:
	ccf			;6def
	rst 38h			;6df0
	xor 0cch		;6df1
	jr $-76			;6df3
	ld (hl),d		;6df5
	call po,0ce88h		;6df6
	scf			;6df9
	dec de			;6dfa
	sbc a,(hl)		;6dfb
	adc a,a			;6dfc
	rst 0			;6dfd
	res 0,l			;6dfe
	rst 0			;6e00
	ld c,03eh		;6e01
	inc a			;6e03
	ld a,h			;6e04
	ld c,h			;6e05
	ld e,a			;6e06
	cp a			;6e07
	ccf			;6e08
	jp m,0c6f2h		;6e09
	call nz,0488ch		;6e0c
	ex af,af'		;6e0f
	sbc a,b			;6e10
	xor 01fh		;6e11
	ret p			;6e13
	rst 30h			;6e14
	ei			;6e15
	defb 0fdh,0ffh,0ffh ;illegal sequence	;6e16
	cp 0dch			;6e19
	cp c			;6e1b
	ld a,d			;6e1c
	or 0f4h			;6e1d
	ret pe			;6e1f
	ret nc			;6e20
	rst 38h			;6e21
	rst 38h			;6e22
	cp 0feh			;6e23
	call m,0f9fch		;6e25
	rst 30h			;6e28
	nop			;6e29
	inc b			;6e2a
	jr nz,l6e31h		;6e2b
	ld hl,03002h		;6e2d
	inc bc			;6e30
l6e31h:
	jr nz,l6e36h		;6e31
	ld hl,01004h		;6e33
l6e36h:
	inc b			;6e36
	pop af			;6e37
	ld b,010h		;6e38
	ld (bc),a		;6e3a
	pop af			;6e3b
	dec b			;6e3c
	jr nc,l6e42h		;6e3d
	ld (03004h),a		;6e3f
l6e42h:
	inc b			;6e42
	ld (03004h),a		;6e43
	inc b			;6e46
	ld (03003h),a		;6e47
	ld (bc),a		;6e4a
	di			;6e4b
	inc bc			;6e4c
	ld (03005h),a		;6e4d
	inc bc			;6e50
	ld (03007h),a		;6e51
	add a,c			;6e54
	ld (03005h),a		;6e55
	ld (bc),a		;6e58
	ld hl,01f86h		;6e59
	djnz $-13		;6e5c
	ld sp,0f231h		;6e5e
	inc bc			;6e61
	pop af			;6e62
	add a,c			;6e63
	jr nz,$+5		;6e64
	di			;6e66
	add a,c			;6e67
	jp p,0f103h		;6e68
	inc bc			;6e6b
	ld (02102h),a		;6e6c
	inc bc			;6e6f
	pop af			;6e70
	add a,c			;6e71
	jp p,0f303h		;6e72
	add a,l			;6e75
	ld sp,02132h		;6e76
	rra			;6e79
	ld (0210fh),a		;6e7a
	add a,c			;6e7d
	ld (02107h),a		;6e7e
	ld b,032h		;6e81
	ld (bc),a		;6e83
	ld sp,0f388h		;6e84
	jp p,0f1f2h		;6e87
	pop af			;6e8a
	jp p,03131h		;6e8b
	inc bc			;6e8e
	di			;6e8f
	ld (bc),a		;6e90
	ld sp,03203h		;6e91
	ld (bc),a		;6e94
	di			;6e95
	inc bc			;6e96
	jp p,0f10dh		;6e97
	dec b			;6e9a
	di			;6e9b
	add a,l			;6e9c
	ld sp,0f3f3h		;6e9d
	jp p,004f2h		;6ea0
	pop af			;6ea3
	ld (bc),a		;6ea4
	jp p,0f103h		;6ea5
	ld (bc),a		;6ea8
	di			;6ea9
	dec bc			;6eaa
	pop af			;6eab
	adc a,e			;6eac
	jp p,031f3h		;6ead
	di			;6eb0
	di			;6eb1
	pop af			;6eb2
	ld sp,03132h		;6eb3
	ld hl,008f1h		;6eb6
	ld sp,03283h		;6eb9
	jp p,005f2h		;6ebc
	di			;6ebf
	inc bc			;6ec0
	ld (0f106h),a		;6ec1
	inc bc			;6ec4
	di			;6ec5
	add a,c			;6ec6
	jp p,0f106h		;6ec7
	add a,e			;6eca
	ld hl,0f2f2h		;6ecb
	inc bc			;6ece
	pop af			;6ecf
	dec b			;6ed0
	di			;6ed1
	dec b			;6ed2
	ld sp,02105h		;6ed3
	dec b			;6ed6
	ld sp,0f302h		;6ed7
	ld (bc),a		;6eda
	ld (02181h),a		;6edb
	inc bc			;6ede
	pop af			;6edf
	rrca			;6ee0
	di			;6ee1
	dec b			;6ee2
	ld (0210dh),a		;6ee3
	dec d			;6ee6
	pop af			;6ee7
	ex af,af'		;6ee8
	ld (0f10ah),a		;6ee9
	adc a,b			;6eec
	jp p,0f3f3h		;6eed
	jp p,0f1f2h		;6ef0
	ld sp,00331h		;6ef3
	ld (02102h),a		;6ef6
	add hl,bc		;6ef9
	pop af			;6efa
	ld b,021h		;6efb
	ld (de),a		;6efd
	pop af			;6efe
	inc bc			;6eff
	ld hl,0f105h		;6f00
	ld (bc),a		;6f03
	ld (03109h),a		;6f04
	ld (bc),a		;6f07
	ld hl,0f103h		;6f08
	add a,c			;6f0b
	ld sp,03206h		;6f0c
	add a,c			;6f0f
	ld hl,0f110h		;6f10
	dec b			;6f13
	ld sp,02105h		;6f14
	ld b,0f1h		;6f17
	ld a,(bc)		;6f19
	ld (03103h),a		;6f1a
	inc bc			;6f1d
	ld (09800h),a		;6f1e
	ret po			;6f21
	cp a			;6f22
	sbc a,c			;6f23
	call z,073c4h		;6f24
	jr l6f5ah		;6f27
	add hl,de		;6f29
	adc a,c			;6f2a
	ret			;6f2b
	ret			;6f2c
	call 0f7eeh		;6f2d
	ei			;6f30
	halt			;6f31
	call m,037d9h		;6f32
	ld a,a			;6f35
	rst 30h			;6f36
	ld (hl),e		;6f37
	inc sp			;6f38
	inc b			;6f39
	nop			;6f3a
	inc b			;6f3b
	ld bc,00208h		;6f3c
	inc b			;6f3f
	ld bc,00008h		;6f40
	inc b			;6f43
	add a,b			;6f44
	ex af,af'		;6f45
	ld b,b			;6f46
	inc b			;6f47
	add a,b			;6f48
	ld b,000h		;6f49
	ld (bc),a		;6f4b
	ld bc,00302h		;6f4c
	ld (bc),a		;6f4f
	rlca			;6f50
	add a,(hl)		;6f51
	rra			;6f52
	rlca			;6f53
	inc bc			;6f54
	inc bc			;6f55
	ld bc,00401h		;6f56
	nop			;6f59
l6f5ah:
	inc bc			;6f5a
	add a,b			;6f5b
	ld (bc),a		;6f5c
	ret nz			;6f5d
	ld (bc),a		;6f5e
	ret po			;6f5f
	add a,c			;6f60
	ret nz			;6f61
	inc b			;6f62
	add a,b			;6f63
	ld (bc),a		;6f64
	nop			;6f65
	add a,e			;6f66
	ret p			;6f67
	ret po			;6f68
	ret nz			;6f69
	inc bc			;6f6a
	add a,b			;6f6b
	ld (bc),a		;6f6c
	nop			;6f6d
	and a			;6f6e
	rrca			;6f6f
	ret p			;6f70
	add a,b			;6f71
	jr c,$+9		;6f72
	ld bc,00000h		;6f74
	adc a,b			;6f77
	ld b,h			;6f78
	call c,0f00ch		;6f79
	ret po			;6f7c
	nop			;6f7d
	nop			;6f7e
	ld bc,00201h		;6f7f
	rlca			;6f82
	rlca			;6f83
	inc bc			;6f84
	ld bc,00000h		;6f85
	ret nz			;6f88
	ret po			;6f89
	ld (hl),b		;6f8a
	or b			;6f8b
	or b			;6f8c
	ld b,h			;6f8d
	inc hl			;6f8e
	nop			;6f8f
	ld bc,00001h		;6f90
	inc bc			;6f93
	inc bc			;6f94
	ld bc,00003h		;6f95
	add a,003h		;6f98
	rlca			;6f9a
	rla			;6f9b
	scf			;6f9c
	dec sp			;6f9d
	add hl,sp		;6f9e
	nop			;6f9f
	nop			;6fa0
	dec c			;6fa1
	dec de			;6fa2
	scf			;6fa3
	ld (hl),a		;6fa4
	ld a,e			;6fa5
	ld a,l			;6fa6
	add hl,de		;6fa7
	adc a,c			;6fa8
	rst 8			;6fa9
	ret p			;6faa
l6fabh:
	ret nz			;6fab
	add a,b			;6fac
	adc a,a			;6fad
	rst 38h			;6fae
	call z,02824h		;6faf
	rra			;6fb2
	rlca			;6fb3
	inc bc			;6fb4
	inc bc			;6fb5
	cp 07fh			;6fb6
	ccf			;6fb8
	ccf			;6fb9
	ret po			;6fba
	ret m			;6fbb
	adc a,a			;6fbc
	rst 20h			;6fbd
	inc sp			;6fbe
	ret p			;6fbf
	inc bc			;6fc0
	inc bc			;6fc1
	rlca			;6fc2
	rra			;6fc3
	call pe,02190h		;6fc4
	add hl,de		;6fc7
	adc a,c			;6fc8
	ret			;6fc9
	ret			;6fca
	call m,0e0f0h		;6fcb
	ret po			;6fce
	inc hl			;6fcf
	inc h			;6fd0
	jr z,l7004h		;6fd1
	ccf			;6fd3
	rrca			;6fd4
	ret m			;6fd5
	ret m			;6fd6
	or c			;6fd7
	and c			;6fd8
	and c			;6fd9
	ld hl,04743h		;6fda
	rst 0			;6fdd
	adc a,c			;6fde
	inc bc			;6fdf
	rra			;6fe0
	defb 0edh ;next byte illegal after ed	;6fe1
	call m,0780fh		;6fe2
	ex (sp),hl		;6fe5
	inc sp			;6fe6
	inc hl			;6fe7
	ld b,h			;6fe8
	adc a,b			;6fe9
	sbc a,c			;6fea
	inc sp			;6feb
	ld h,024h		;6fec
	call pe,08443h		;6fee
	adc a,b			;6ff1
	sbc a,c			;6ff2
	inc sp			;6ff3
	ld h,024h		;6ff4
	call pe,sub_771fh	;6ff6
	call z,0de18h		;6ff9
	ld a,c			;6ffc
	inc sp			;6ffd
	rra			;6ffe
	add a,a			;6fff
	ld b,c			;7000
	jp 07e00h		;7001
l7004h:
	rst 38h			;7004
	ld h,e			;7005
	ld sp,0ce63h		;7006
	rst 30h			;7009
	add a,h			;700a
	add a,e			;700b
	ld b,c			;700c
	jr nc,l6fabh		;700d
	jp 02081h		;700f
	ld c,(hl)		;7012
	ld e,a			;7013
	call m,sub_7f7fh+2	;7014
	ld a,a			;7017
	jp 05e81h		;7018
	ld a,(hl)		;701b
	ld a,(hl)		;701c
	ld a,a			;701d
	inc sp			;701e
	inc d			;701f
	inc h			;7020
	jp p,018dfh		;7021
	call z,sub_7bf7h	;7024
	rra			;7027
	ret p			;7028
	ret m			;7029
	ret nz			;702a
	ret po			;702b
	nop			;702c
	call m,0ca0eh		;702d
	jp (hl)			;7030
	ld h,h			;7031
	ld h,h			;7032
	inc (hl)		;7033
	ld (de),a		;7034
	nop			;7035
	ld b,018h		;7036
	nop			;7038
	jr l704bh		;7039
	or h			;703b
	and h			;703c
	jp (hl)			;703d
	jp z,03bf6h		;703e
	dec e			;7041
	adc a,011h		;7042
	ld c,c			;7044
	daa			;7045
	inc de			;7046
	ret m			;7047
	ret m			;7048
	ret p			;7049
	ret nz			;704a
l704bh:
	call nz,01873h		;704b
	ld sp,09203h		;704e
	adc a,l			;7051
	inc sp			;7052
	inc hl			;7053
	ld h,e			;7054
	rst 0			;7055
	adc a,c			;7056
	sbc a,c			;7057
	call z,03367h		;7058
	dec e			;705b
	adc a,(hl)		;705c
	ld h,a			;705d
	ld a,c			;705e
	inc bc			;705f
	ex af,af'		;7060
	and d			;7061
	sub b			;7062
	ret po			;7063
	ld a,a			;7064
	rrca			;7065
	ld bc,003f0h		;7066
	rrca			;7069
	inc e			;706a
	dec sp			;706b
	ld (hl),a		;706c
	ld l,a			;706d
	adc a,0cch		;706e
	adc a,018h		;7070
	adc a,a			;7072
	ret nz			;7073
	ret p			;7074
	rra			;7075
	cp 0f0h			;7076
	ret p			;7078
	cp 0f0h			;7079
	ret p			;707b
	inc bc			;707c
	rra			;707d
	ret p			;707e
	ld bc,01e07h		;707f
	ld sp,hl		;7082
	ld h,b			;7083
	inc bc			;7084
	ret p			;7085
	adc a,l			;7086
	nop			;7087
	rrca			;7088
	ld a,a			;7089
	rrca			;708a
	rrca			;708b
	ret nz			;708c
	ret m			;708d
	rrca			;708e
	add a,b			;708f
	ret po			;7090
	ld a,b			;7091
	rst 38h			;7092
	ld b,003h		;7093
	rrca			;7095
	sbc a,h			;7096
	pop af			;7097
	ret p			;7098
	cp 0f0h			;7099
	rlca			;709b
	rra			;709c
	inc bc			;709d
	call z,04430h		;709e
	jr $-98			;70a1
	inc b			;70a3
	add a,b			;70a4
	add a,c			;70a5
	add a,(hl)		;70a6
	halt			;70a7
	adc a,b			;70a8
	ret z			;70a9
	ret pe			;70aa
	ld l,b			;70ab
	ld h,h			;70ac
	inc (hl)		;70ad
	or h			;70ae
	or h			;70af
	ld h,h			;70b0
	ld b,h			;70b1
	ret z			;70b2
	inc bc			;70b3
	adc a,b			;70b4
	adc a,c			;70b5
	halt			;70b6
	ret p			;70b7
	rra			;70b8
	inc bc			;70b9
	rrca			;70ba
	rrca			;70bb
	cp 0f0h			;70bc
	ret p			;70be
	inc bc			;70bf
	djnz $-89		;70c0
	add hl,bc		;70c2
	rlca			;70c3
	nop			;70c4
	call m,0f0f8h		;70c5
	rlca			;70c8
	rra			;70c9
	ld a,07dh		;70ca
	adc a,h			;70cc
	rst 20h			;70cd
	adc a,0beh		;70ce
	rst 18h			;70d0
	rst 28h			;70d1
	ld (hl),c		;70d2
	cp h			;70d3
	ld hl,0f3e7h		;70d4
	rrca			;70d7
	ret m			;70d8
	ret nz			;70d9
	ret p			;70da
	ret p			;70db
	ld a,a			;70dc
	rrca			;70dd
	nop			;70de
	ld h,a			;70df
	jp 0e607h		;70e0
	sbc a,b			;70e3
	jr nz,l70edh		;70e4
	ccf			;70e6
	ex af,af'		;70e7
	ret m			;70e8
	ex af,af'		;70e9
	rra			;70ea
	and b			;70eb
	ret z			;70ec
l70edh:
	pop de			;70ed
	jp m,0071fh		;70ee
	jp 01931h		;70f1
	inc d			;70f4
	inc h			;70f5
	jp p,018dfh		;70f6
	call z,03b77h		;70f9
	ld a,a			;70fc
	ld h,b			;70fd
	rra			;70fe
	ld bc,01e1eh		;70ff
	sbc a,b			;7102
	call z,sub_6038h	;7103
	ld h,b			;7106
	ld b,b			;7107
	ret nz			;7108
	ret nz			;7109
	add a,d			;710a
	add a,(hl)		;710b
	ld b,000h		;710c
	add a,d			;710e
	ld bc,00503h		;710f
	nop			;7112
	adc a,c			;7113
	ld a,b			;7114
	call m,0cc86h		;7115
	call pe,00b2ch		;7118
	ex af,af'		;711b
	djnz l7127h		;711c
	nop			;711e
	sub c			;711f
	ld bc,08000h		;7120
	ret nz			;7123
	ret nz			;7124
	ret po			;7125
	ret po			;7126
l7127h:
	ret p			;7127
	ret p			;7128
	nop			;7129
	nop			;712a
	ex af,af'		;712b
	inc a			;712c
	nop			;712d
	rra			;712e
	ret m			;712f
	rra			;7130
	inc b			;7131
	nop			;7132
	add a,h			;7133
	rlca			;7134
	ccf			;7135
	ret m			;7136
	ret nz			;7137
	dec b			;7138
	nop			;7139
	add a,e			;713a
	ret po			;713b
	set 1,(hl)		;713c
	inc bc			;713e
	nop			;713f
	rst 38h			;7140
	jr nc,l715bh		;7141
	adc a,h			;7143
	adc a,(hl)		;7144
	ld a,b			;7145
	ret p			;7146
	ret po			;7147
	ret po			;7148
	ret nz			;7149
	ret nz			;714a
	add a,b			;714b
	add a,b			;714c
	nop			;714d
	inc bc			;714e
	rlca			;714f
	rrca			;7150
	rra			;7151
	ccf			;7152
	ld a,a			;7153
	ld a,(hl)		;7154
	cp 007h			;7155
	ccf			;7157
	ret m			;7158
	ret po			;7159
	add a,b			;715a
l715bh:
	rlca			;715b
	rra			;715c
	ccf			;715d
	nop			;715e
	inc bc			;715f
	rra			;7160
	call m,003e0h		;7161
	ld e,0fch		;7164
	ret po			;7166
	ld bc,01f07h		;7167
	ld (bc),a		;716a
	inc c			;716b
	inc (hl)		;716c
	adc a,099h		;716d
	ret po			;716f
	ret m			;7170
	ret nz			;7171
	ret p			;7172
	rst 20h			;7173
	rst 8			;7174
	call c,sub_7767h	;7175
	ld (hl),a		;7178
	jr l718bh		;7179
	jr nc,l71ddh		;717b
	ret nz			;717d
	rst 0			;717e
	rst 38h			;717f
	nop			;7180
	nop			;7181
	ret nz			;7182
	sbc a,a			;7183
	rst 8			;7184
	rst 28h			;7185
	jp c,031dfh		;7186
	rra			;7189
	nop			;718a
l718bh:
	add a,b			;718b
	ret po			;718c
	rst 38h			;718d
	rst 0			;718e
	ld h,d			;718f
	ld h,036h		;7190
	inc hl			;7192
	add a,e			;7193
	ret			;7194
	call pe,0c08eh		;7195
	pop af			;7198
	rst 8			;7199
	daa			;719a
	inc de			;719b
	ld de,08f38h		;719c
	pop bc			;719f
	ret p			;71a0
	rst 8			;71a1
	daa			;71a2
	inc de			;71a3
	ld de,00438h		;71a4
	dec c			;71a7
	add hl,sp		;71a8
	jp po,01cc6h		;71a9
	ret m			;71ac
	ret nz			;71ad
	jr nz,l7220h		;71ae
	sbc a,b			;71b0
	ret z			;71b1
	ld h,h			;71b2
	inc h			;71b3
	ld (de),a		;71b4
	ld de,01c06h		;71b5
	ld a,c			;71b8
	rlca			;71b9
	pop hl			;71ba
	add a,(hl)		;71bb
	sbc a,b			;71bc
	ld e,001h		;71bd
	rrca			;71bf
	and (hl)		;71c0
	ld a,(hl)		;71c1
	inc bc			;71c2
	ret po			;71c3
	add a,a			;71c4
	sbc a,b			;71c5
	rra			;71c6
	ret p			;71c7
	call m,0e30eh		;71c8
	ret m			;71cb
	inc e			;71cc
	rlca			;71cd
	ret nz			;71ce
	ld (bc),a		;71cf
	ld (hl),b		;71d0
	ret m			;71d1
	adc a,h			;71d2
	inc b			;71d3
	call p,01cf8h		;71d4
	ret po			;71d7
	ld (hl),e		;71d8
	or (hl)			;71d9
	ret c			;71da
	jr l71e9h		;71db
l71ddh:
	rlca			;71dd
	nop			;71de
	rlca			;71df
	ld e,078h		;71e0
	inc bc			;71e2
	ret po			;71e3
	add a,a			;71e4
	sbc a,b			;71e5
	rra			;71e6
	nop			;71e7
	inc b			;71e8
l71e9h:
	pop af			;71e9
	add a,d			;71ea
	or 091h			;71eb
	inc bc			;71ed
	call p,0f982h		;71ee
	or 006h			;71f1
	pop af			;71f3
	add a,c			;71f4
	or 005h			;71f5
	pop af			;71f7
	add a,c			;71f8
	call p,03045h		;71f9
	ld c,010h		;71fc
	dec b			;71fe
	jr nc,$+5		;71ff
	pop af			;7201
	dec b			;7202
	djnz $+4		;7203
	pop af			;7205
	ld b,010h		;7206
	inc b			;7208
	sub b			;7209
	dec b			;720a
	ld b,b			;720b
	inc b			;720c
	ld h,b			;720d
	add a,e			;720e
	djnz l7242h		;720f
	ld sp,09005h		;7211
	dec b			;7214
	ld b,b			;7215
	add a,c			;7216
	ld h,b			;7217
	inc bc			;7218
	sub b			;7219
	inc b			;721a
	ld b,b			;721b
	sbc a,a			;721c
	ld h,b			;721d
	sub b			;721e
	ld b,b			;721f
l7220h:
	ld b,c			;7220
	ld b,c			;7221
	sub c			;7222
	call p,0f1f6h		;7223
	cp 0feh			;7226
	ret m			;7228
	ret c			;7229
	ret c			;722a
	sub c			;722b
	or 0f1h			;722c
	cp 0f8h			;722e
	defb 0fdh,09dh ;sbc a,iyl	;7230
	push de			;7232
	exx			;7233
	sub 051h		;7234
	push af			;7236
	push af			;7237
	or 0f9h			;7238
	call p,004d5h		;723a
	push af			;723d
	and a			;723e
	or 0f9h			;723f
	ld h,h			;7241
l7242h:
	call p,0f6f9h		;7242
	pop af			;7245
	cp 0feh			;7246
	ret m			;7248
	ld sp,iy		;7249
	or 0f1h			;724b
	pop af			;724d
	cp 0f8h			;724e
	exx			;7250
	sub 0f4h		;7251
	ld sp,hl		;7253
	ld sp,hl		;7254
l7255h:
	or 0f6h			;7255
	pop af			;7257
	or 0f1h			;7258
	exx			;725a
	ld d,(hl)		;725b
	ld d,c			;725c
	push af			;725d
	or 091h			;725e
	ld sp,hl		;7260
	call p,0f6f9h		;7261
	pop af			;7264
	or 004h			;7265
	pop af			;7267
	sub l			;7268
	call p,0f6f9h		;7269
	or 0f1h			;726c
	or 0f1h			;726e
	pop af			;7270
	jr nc,l72a5h		;7271
	ld sp,0f331h		;7273
	call p,0f9f4h		;7276
	ld sp,hl		;7279
	pop af			;727a
	sub h			;727b
	sub h			;727c
	sub c			;727d
	inc b			;727e
	ld sp,hl		;727f
	ld (bc),a		;7280
	ld b,c			;7281
	add a,a			;7282
	ld h,h			;7283
	call p,0f4f9h		;7284
	ld sp,hl		;7287
	cp 0f8h			;7288
	inc bc			;728a
	ret c			;728b
	sbc a,d			;728c
	push de			;728d
	push af			;728e
	or 0f1h			;728f
	cp 0f8h			;7291
	ret c			;7293
	push de			;7294
	ld e,a			;7295
	pop af			;7296
	call p,0f1f6h		;7297
	pop af			;729a
	jp p,03221h		;729b
	ld (03130h),a		;729e
	jp p,091f1h		;72a1
	ld h,c			;72a4
l72a5h:
	ld h,c			;72a5
	jp p,02108h		;72a6
	inc bc			;72a9
	ld h,c			;72aa
	add a,c			;72ab
	pop af			;72ac
	add hl,bc		;72ad
	ld hl,0f104h		;72ae
	add a,c			;72b1
	ld d,c			;72b2
	inc bc			;72b3
	ld e,a			;72b4
	add a,d			;72b5
	or 091h			;72b6
	inc b			;72b8
	call p,0f903h		;72b9
	ld (bc),a		;72bc
	or 082h			;72bd
	pop af			;72bf
	ld sp,03203h		;72c0
	ld (bc),a		;72c3
	ld sp,03281h		;72c4
	inc bc			;72c7
	ld sp,03283h		;72c8
	ld sp,00431h		;72cb
	djnz l7255h		;72ce
	sub c			;72d0
	ld h,c			;72d1
	sub c			;72d2
	ld h,c			;72d3
	ld h,c			;72d4
	inc bc			;72d5
	sub c			;72d6
	add a,c			;72d7
	ld h,c			;72d8
	inc bc			;72d9
	or 002h			;72da
	pop af			;72dc
	adc a,b			;72dd
	djnz l7311h		;72de
	di			;72e0
	di			;72e1
	pop af			;72e2
	ld (de),a		;72e3
	ld (00432h),a		;72e4
	jr nc,$-125		;72e7
	ld (0f307h),a		;72e9
	add a,h			;72ec
	pop af			;72ed
	ld (de),a		;72ee
	ld (00532h),a		;72ef
	jr nc,l72f9h		;72f2
	di			;72f4
	add a,e			;72f5
	ld (02121h),a		;72f6
l72f9h:
	inc bc			;72f9
	pop af			;72fa
	inc b			;72fb
	ld hl,0f282h		;72fc
	ld hl,0f104h		;72ff
	add a,d			;7302
	ld hl,00a31h		;7303
	ld (0318ah),a		;7306
	ld hl,030f1h		;7309
	ld (02132h),a		;730c
	rra			;730f
	di			;7310
l7311h:
	di			;7311
	inc bc			;7312
	ld sp,03281h		;7313
	inc bc			;7316
	ld sp,01003h		;7317
	add a,l			;731a
	sub c			;731b
	ld h,c			;731c
	sub c			;731d
	sub c			;731e
	ld h,h			;731f
	inc b			;7320
	ld b,c			;7321
	adc a,e			;7322
	sub c			;7323
	ld b,c			;7324
	ld b,c			;7325
	sub h			;7326
	ld b,c			;7327
	sub c			;7328
	jr nc,l735dh		;7329
	ld (01f21h),a		;732b
	ld b,0f3h		;732e
	ld (bc),a		;7330
	ld sp,03281h		;7331
	inc b			;7334
	jp p,0f384h		;7335
	jp p,0f1f2h		;7338
	inc bc			;733b
	jp p,0f386h		;733c
	jp p,0f1f2h		;733f
	jp p,004f2h		;7342
	pop af			;7345
	add a,e			;7346
	or 0f1h			;7347
	or 005h			;7349
	pop af			;734b
	adc a,a			;734c
	jp p,03221h		;734d
	ld (09130h),a		;7350
	pop af			;7353
	ld sp,hl		;7354
	ld h,h			;7355
	sub c			;7356
	rst 38h			;7357
	ld b,c			;7358
	sub c			;7359
	sub b			;735a
	sub b			;735b
	inc d			;735c
l735dh:
	ld b,b			;735d
	inc bc			;735e
	sub b			;735f
	ld (bc),a		;7360
	ld h,b			;7361
	add a,c			;7362
	sub b			;7363
	dec bc			;7364
	ld b,b			;7365
	inc b			;7366
	ret nc			;7367
	add a,e			;7368
	add a,b			;7369
	ret po			;736a
	ret po			;736b
	ld b,080h		;736c
	inc bc			;736e
	defb 0fdh,081h,0d8h ;illegal sequence	;736f
	ld b,0d0h		;7372
	ld (bc),a		;7374
	ret c			;7375
	rlca			;7376
	ret nc			;7377
	add a,c			;7378
	defb 0fdh,004h,0d0h ;illegal sequence	;7379
	adc a,b			;737c
	add a,b			;737d
	ret po			;737e
	add a,b			;737f
	defb 0fdh,0e0h,080h ;illegal sequence	;7380
	ret nc			;7383
	ret nc			;7384
	inc b			;7385
	ld d,b			;7386
	add a,e			;7387
	ret nc			;7388
	add a,b			;7389
	add a,b			;738a
	inc bc			;738b
	ret po			;738c
	rlca			;738d
	ret pe			;738e
	inc bc			;738f
	ret c			;7390
	inc bc			;7391
	ret nc			;7392
	ld (bc),a		;7393
	ret c			;7394
	inc b			;7395
	ret pe			;7396
	inc bc			;7397
	ret c			;7398
	inc b			;7399
	add a,(iy-00bh)		;739a
	defb 0fdh,0d8h,0d8h ;illegal sequence	;739d
	add a,l			;73a0
	add a,l			;73a1
	inc bc			;73a2
	push hl			;73a3
	add a,h			;73a4
	add a,l			;73a5
	adc a,a			;73a6
	defb 0fdh,0fdh,004h ;illegal sequence	;73a7
	push af			;73aa
	ld (bc),a		;73ab
	ret c			;73ac
	ld (bc),a		;73ad
	ld e,(hl)		;73ae
	add a,c			;73af
	add a,l			;73b0
	inc bc			;73b1
	push hl			;73b2
	add a,d			;73b3
	add a,l			;73b4
	ret m			;73b5
	inc bc			;73b6
	defb 0fdh,003h,0f5h ;illegal sequence	;73b7
	sbc a,b			;73ba
	defb 0fdh,0f8h,0feh ;illegal sequence	;73bb
	push hl			;73be
	add a,l			;73bf
	push hl			;73c0
	push hl			;73c1
	ld sp,hl		;73c2
	call p,0fdf9h		;73c3
	ret m			;73c6
	cp 0f8h			;73c7
	ld sp,iy		;73c9
	call p,0fdf9h		;73cb
	ret m			;73ce
	cp 0f8h			;73cf
	defb 0fdh,040h,003h ;illegal sequence	;73d1
	sub b			;73d4
	add a,(hl)		;73d5
	ld h,b			;73d6
	sub b			;73d7
	ld b,b			;73d8
	sub b			;73d9
	djnz l743ch		;73da
	inc bc			;73dc
	sub b			;73dd
	inc bc			;73de
	ld h,b			;73df
	ld (bc),a		;73e0
	ld b,b			;73e1
	sub d			;73e2
	sub c			;73e3
	ld b,c			;73e4
	ld sp,hl		;73e5
	call p,sub_61f9h	;73e6
	ld b,b			;73e9
	ld b,b			;73ea
	sub c			;73eb
	ld b,c			;73ec
	ld sp,hl		;73ed
	call p,sub_61f9h	;73ee
	ld b,b			;73f1
	sub b			;73f2
	sub b			;73f3
	ld b,b			;73f4
	inc bc			;73f5
	sub b			;73f6
	inc bc			;73f7
	ld b,b			;73f8
	inc bc			;73f9
	sub b			;73fa
	add a,c			;73fb
	ld b,b			;73fc
	inc b			;73fd
	sub b			;73fe
	inc bc			;73ff
	ld h,b			;7400
	add a,c			;7401
	sub b			;7402
	inc b			;7403
	ld b,b			;7404
	add a,(hl)		;7405
	sub c			;7406
	ld b,c			;7407
	ld sp,hl		;7408
	call p,sub_61f9h	;7409
	nop			;740c
	add a,d			;740d
	jr l744ch		;740e
	inc b			;7410
	add a,c			;7411
	add a,h			;7412
	inc a			;7413
	jr $+26			;7414
	inc a			;7416
	inc b			;7417
	add a,c			;7418
	add a,h			;7419
	inc a			;741a
	jr l7435h		;741b
	inc a			;741d
	inc bc			;741e
	ld a,(hl)		;741f
	add a,l			;7420
	inc a			;7421
	jr l7424h		;7422
l7424h:
	jr l7462h		;7424
	inc bc			;7426
	ld a,(hl)		;7427
	add a,l			;7428
	inc a			;7429
	jr l742ch		;742a
l742ch:
	nop			;742c
	jr c,$+5		;742d
	ld a,h			;742f
	add a,c			;7430
	jr c,$+5		;7431
	nop			;7433
	add a,c			;7434
l7435h:
	jr c,$+5		;7435
	ld a,h			;7437
	add a,c			;7438
	jr c,l743fh		;7439
	nop			;743b
l743ch:
	inc bc			;743c
	inc a			;743d
	dec b			;743e
l743fh:
	nop			;743f
	inc bc			;7440
	inc a			;7441
	inc bc			;7442
	nop			;7443
	nop			;7444
	sub (hl)		;7445
	ret nc			;7446
	add a,b			;7447
	ret c			;7448
	adc a,(hl)		;7449
	adc a,(hl)		;744a
	ret c			;744b
l744ch:
	add a,b			;744c
	ret nc			;744d
	ret nc			;744e
	add a,b			;744f
	ret c			;7450
	adc a,(hl)		;7451
	adc a,(hl)		;7452
	ret c			;7453
	add a,b			;7454
	ret nc			;7455
	ret nc			;7456
	add a,b			;7457
	add a,b			;7458
	ret po			;7459
	add a,b			;745a
	add a,b			;745b
	inc bc			;745c
	ret nc			;745d
	ld (bc),a		;745e
	add a,b			;745f
	add a,e			;7460
	ret po			;7461
l7462h:
	add a,b			;7462
	add a,b			;7463
	inc b			;7464
	ret nc			;7465
	add a,e			;7466
	add a,b			;7467
	ret po			;7468
	add a,b			;7469
	dec b			;746a
	ret nc			;746b
	add a,e			;746c
	add a,b			;746d
	ret po			;746e
	add a,b			;746f
	dec b			;7470
	ret nc			;7471
	add a,d			;7472
	add a,b			;7473
	ret po			;7474
	rlca			;7475
	add a,b			;7476
	add a,c			;7477
	ret po			;7478
	inc b			;7479
l747ah:
	add a,b			;747a
	nop			;747b
	ld (bc),a		;747c
	dec a			;747d
	call nz,0160dh		;747e
	dec sp			;7481
l7482h:
	ld (hl),e		;7482
	ret po			;7483
	ret nz			;7484
	call c,0d8dch		;7485
	jr c,l747ah		;7488
	ret po			;748a
	nop			;748b
	nop			;748c
	ccf			;748d
	ccf			;748e
	inc de			;748f
	dec c			;7490
	ld a,(de)		;7491
	ld l,02ch		;7492
	jr l7482h		;7494
	call c,0e8dch		;7496
	ret p			;7499
	ret po			;749a
	nop			;749b
	nop			;749c
	scf			;749d
	dec sp			;749e
	dec sp			;749f
	rla			;74a0
	rrca			;74a1
	rlca			;74a2
	nop			;74a3
	nop			;74a4
	call m,0c8fch		;74a5
	or b			;74a8
	ld e,b			;74a9
	ld (hl),h		;74aa
	inc (hl)		;74ab
	jr l74e9h		;74ac
	dec sp			;74ae
	dec de			;74af
	inc e			;74b0
	rrca			;74b1
	rlca			;74b2
	nop			;74b3
	nop			;74b4
	cp h			;74b5
	cp h			;74b6
	or b			;74b7
	ld l,b			;74b8
	call c,007ceh		;74b9
	inc bc			;74bc
	nop			;74bd
	cpl			;74be
	cpl			;74bf
	rla			;74c0
	ld h,000h		;74c1
	inc bc			;74c3
	cpl			;74c4
	ld (bc),a		;74c5
	call p,0e885h		;74c6
	ld h,h			;74c9
	nop			;74ca
	call p,000f4h		;74cb
	add a,h			;74ce
	ret nc			;74cf
	ret nz			;74d0
	add a,b			;74d1
	ret nz			;74d2
	inc bc			;74d3
	add a,b			;74d4
	add a,l			;74d5
	ret po			;74d6
	ret nc			;74d7
	ret nz			;74d8
	add a,b			;74d9
	ret nz			;74da
	inc b			;74db
	ret po			;74dc
	add a,e			;74dd
	ret nc			;74de
	ret po			;74df
	add a,b			;74e0
	inc bc			;74e1
	ret nz			;74e2
	add a,(hl)		;74e3
	add a,b			;74e4
	ret po			;74e5
	ret nc			;74e6
	ret nz			;74e7
	ret po			;74e8
l74e9h:
	add a,b			;74e9
	inc b			;74ea
	ret po			;74eb
	add a,h			;74ec
	ret nc			;74ed
	ret nz			;74ee
	ret po			;74ef
	add a,b			;74f0
	inc b			;74f1
	ret po			;74f2
	add a,e			;74f3
	ret nc			;74f4
	add a,b			;74f5
	add a,b			;74f6
	inc bc			;74f7
	ret nz			;74f8
	add a,(hl)		;74f9
	add a,b			;74fa
	ret po			;74fb
	ret nc			;74fc
	ret nz			;74fd
	add a,b			;74fe
	add a,b			;74ff
	inc b			;7500
	ret po			;7501
	add a,h			;7502
	ret nc			;7503
	ret nz			;7504
	add a,b			;7505
	ret nz			;7506
	inc bc			;7507
	add a,b			;7508
	ld (bc),a		;7509
	ret po			;750a
	adc a,a			;750b
	ld sp,03100h		;750c
	ld h,b			;750f
	ld h,b			;7510
	ld sp,0008dh		;7511
	ld hl,02100h		;7514
	ld h,b			;7517
	ld h,b			;7518
	ld hl,0008dh		;7519
	ex af,af'		;751c
	ret pe			;751d
	add a,l			;751e
	ret m			;751f
	inc bc			;7520
	rrca			;7521
	cp 0feh			;7522
	dec b			;7524
	inc bc			;7525
	add a,(hl)		;7526
	inc b			;7527
	cp 003h			;7528
	ld bc,000ffh		;752a
	nop			;752d
	sbc a,b			;752e
	ret pe			;752f
	adc a,l			;7530
	push de			;7531
	rst 38h			;7532
	call po,09649h		;7533
	rst 38h			;7536
	push de			;7537
	push af			;7538
	push af			;7539
	defb 0fdh,098h,086h ;illegal sequence	;753a
	add a,c			;753d
	rst 28h			;753e
	adc a,l			;753f
	push de			;7540
	push af			;7541
	push af			;7542
	ld sp,hl		;7543
	or 01fh			;7544
	rra			;7546
	nop			;7547
	add a,c			;7548
	adc a,b			;7549
	inc bc			;754a
	xor e			;754b
	add a,h			;754c
	inc sp			;754d
	call c,sub_7f7fh	;754e
	inc b			;7551
	and d			;7552
	ld (bc),a		;7553
	cp (hl)			;7554
	ld (bc),a		;7555
	cp 004h			;7556
	ld b,l			;7558
	ld (bc),a		;7559
	ld a,l			;755a
	ld (bc),a		;755b
	ld a,a			;755c
	add a,c			;755d
	xor 003h		;755e
	ld hl,(0cc82h)		;7560
	dec sp			;7563
	dec b			;7564
	cp 082h			;7565
	ld a,a			;7567
	rra			;7568
	inc bc			;7569
	rlca			;756a
	inc bc			;756b
	ld a,a			;756c
	add a,d			;756d
	cp 0f8h			;756e
	inc bc			;7570
	ret po			;7571
	inc b			;7572
	and d			;7573
	ld (bc),a		;7574
	cp (hl)			;7575
	add a,d			;7576
	add a,e			;7577
	ld b,(hl)		;7578
	inc b			;7579
	ld b,l			;757a
	sbc a,c			;757b
	ld a,l			;757c
	ld (bc),a		;757d
	inc c			;757e
	jr nc,l7600h		;757f
	ld a,a			;7581
	ccf			;7582
	ccf			;7583
	rra			;7584
	rlca			;7585
	ld bc,0fe00h		;7586
	cp 0fch			;7589
	call m,0e0f8h		;758b
	add a,b			;758e
	nop			;758f
	ld a,a			;7590
	ld a,a			;7591
	ld a,03ch		;7592
	jr $+5			;7594
	nop			;7596
	add a,h			;7597
	jr c,l75abh		;7598
	ex de,hl		;759a
	ld c,c			;759b
	inc b			;759c
	nop			;759d
	add a,d			;759e
	rra			;759f
	inc bc			;75a0
	ld b,000h		;75a1
	ld (bc),a		;75a3
	cp 083h			;75a4
	ld a,h			;75a6
	inc e			;75a7
	ex af,af'		;75a8
	inc bc			;75a9
	nop			;75aa
l75abh:
	nop			;75ab
	ld (bc),a		;75ac
	rra			;75ad
	and c			;75ae
	ld l,a			;75af
	sbc a,a			;75b0
	call p,051f5h		;75b1
	pop de			;75b4
	pop af			;75b5
	or 0f9h			;75b6
	call p,05ffeh		;75b8
	pop de			;75bb
	add a,(hl)		;75bc
	pop af			;75bd
	or 0f9h			;75be
	call p,05ffeh		;75c0
	pop de			;75c3
	adc a,c			;75c4
	pop af			;75c5
	pop af			;75c6
	or 0f9h			;75c7
	call p,051f5h		;75c9
l75cch:
	pop de			;75cc
	jp (hl)			;75cd
	add a,h			;75ce
	sbc a,003h		;75cf
	push de			;75d1
	add a,l			;75d2
	adc a,l			;75d3
	ret pe			;75d4
	jp (hl)			;75d5
	add a,h			;75d6
	sbc a,003h		;75d7
	push de			;75d9
	sub h			;75da
	adc a,l			;75db
	ret pe			;75dc
	pop af			;75dd
	or 0f9h			;75de
	call p,05ffeh		;75e0
	defb 0fdh,0f8h,0f1h ;illegal sequence	;75e3
	or 0f9h			;75e6
	call p,0f5feh		;75e8
	defb 0fdh,0f8h,086h ;illegal sequence	;75eb
	exx			;75ee
	inc b			;75ef
	ld d,b			;75f0
	ld (bc),a		;75f1
	ret nc			;75f2
	add a,d			;75f3
	add a,(hl)		;75f4
	exx			;75f5
	inc b			;75f6
	ld d,b			;75f7
	ld (bc),a		;75f8
	ret nc			;75f9
	add a,h			;75fa
	add a,(hl)		;75fb
	exx			;75fc
	ld d,b			;75fd
	ret nc			;75fe
	inc b			;75ff
l7600h:
	add a,b			;7600
	add a,e			;7601
	cp 0f8h			;7602
	ret nc			;7604
	dec b			;7605
	add a,b			;7606
	add a,c			;7607
	ret po			;7608
	rlca			;7609
	add a,b			;760a
	add a,h			;760b
	add a,(hl)		;760c
	exx			;760d
	ld d,b			;760e
	ret nc			;760f
	inc b			;7610
	add a,b			;7611
	nop			;7612
	add a,d			;7613
	nop			;7614
	xor d			;7615
	inc b			;7616
	rst 38h			;7617
	sbc a,d			;7618
	xor d			;7619
	nop			;761a
	inc a			;761b
	ld a,(hl)		;761c
	inc a			;761d
	ld a,(hl)		;761e
	inc a			;761f
	ld a,(hl)		;7620
	inc a			;7621
	ld a,(hl)		;7622
	inc hl			;7623
	inc h			;7624
	jr z,l7698h		;7625
	rst 20h			;7627
	rst 18h			;7628
	ret p			;7629
	rla			;762a
	rra			;762b
	call p,0ff03h		;762c
	rra			;762f
	add a,a			;7630
	ex (sp),hl		;7631
	inc sp			;7632
	nop			;7633
	djnz l75cch		;7634
	add a,d			;7636
	ld sp,hl		;7637
	or 004h			;7638
	pop af			;763a
	adc a,d			;763b
	ld sp,hl		;763c
	ld h,c			;763d
	ld sp,hl		;763e
	ld h,c			;763f
	pop af			;7640
	pop af			;7641
	or 0f9h			;7642
	ld sp,hl		;7644
	call p,08100h		;7645
	nop			;7648
	inc b			;7649
	ld bc,0ff03h		;764a
	adc a,l			;764d
	ret nz			;764e
	sbc a,(hl)		;764f
	ld a,(hl)		;7650
	ld a,01eh		;7651
	adc a,a			;7653
	ret nz			;7654
	ret po			;7655
	rst 38h			;7656
	rst 38h			;7657
	nop			;7658
	nop			;7659
	rst 38h			;765a
	inc bc			;765b
	nop			;765c
	add a,e			;765d
	ret m			;765e
	ret po			;765f
	ret nz			;7660
	dec b			;7661
	add a,b			;7662
	adc a,e			;7663
	ld bc,0fc07h		;7664
	cp 03dh			;7667
	add hl,sp		;7669
	inc sp			;766a
	rlca			;766b
	nop			;766c
	rst 38h			;766d
	nop			;766e
	dec b			;766f
	rst 38h			;7670
	adc a,e			;7671
	inc bc			;7672
	ld a,c			;7673
	ld a,(hl)		;7674
	ld a,h			;7675
	ld a,b			;7676
	pop af			;7677
	inc bc			;7678
	rlca			;7679
	rra			;767a
	rlca			;767b
	inc bc			;767c
	ld b,001h		;767d
	add a,a			;767f
	pop bc			;7680
	pop af			;7681
	ld sp,hl		;7682
	ld sp,hl		;7683
	pop af			;7684
	pop af			;7685
	pop hl			;7686
	inc bc			;7687
	cp a			;7688
	ld (bc),a		;7689
	rst 18h			;768a
	adc a,h			;768b
	call pe,0fcf0h		;768c
	pop hl			;768f
	pop bc			;7690
	pop bc			;7691
	add a,e			;7692
	inc bc			;7693
	rlca			;7694
	rrca			;7695
	ccf			;7696
	rst 38h			;7697
l7698h:
	ld b,000h		;7698
	ld (bc),a		;769a
	rst 38h			;769b
	ld b,021h		;769c
	add a,c			;769e
	rst 38h			;769f
	rlca			;76a0
	ret m			;76a1
	dec b			;76a2
	rst 38h			;76a3
	ld (bc),a		;76a4
	adc a,e			;76a5
	ld b,0ffh		;76a6
	ld (bc),a		;76a8
	ret pe			;76a9
	ld b,0ffh		;76aa
	ld (bc),a		;76ac
	adc a,b			;76ad
	inc bc			;76ae
	rst 38h			;76af
	add a,e			;76b0
	ccf			;76b1
	rrca			;76b2
	inc bc			;76b3
	inc b			;76b4
	ld bc,0ff05h		;76b5
	add a,d			;76b8
	ccf			;76b9
	rrca			;76ba
	dec b			;76bb
	ld bc,00387h		;76bc
	rrca			;76bf
	ccf			;76c0
	rst 38h			;76c1
	ld bc,03f0fh		;76c2
	ld a,(bc)		;76c5
	rst 38h			;76c6
	add a,a			;76c7
	defb 0fdh,0f1h,081h ;illegal sequence	;76c8
	rst 38h			;76cb
	call m,0c0f0h		;76cc
	inc b			;76cf
	nop			;76d0
	add a,e			;76d1
	add a,c			;76d2
	pop af			;76d3
	defb 0fdh,006h,0ffh ;illegal sequence	;76d4
	sbc a,(hl)		;76d7
	cp 0fch			;76d8
	ret m			;76da
	ret p			;76db
	ret po			;76dc
	ret nz			;76dd
	add a,b			;76de
	rst 38h			;76df
	ld a,a			;76e0
	ccf			;76e1
	rra			;76e2
	rrca			;76e3
	rlca			;76e4
	inc bc			;76e5
	ld bc,00301h		;76e6
	rlca			;76e9
	rrca			;76ea
	rra			;76eb
	ccf			;76ec
	ld a,a			;76ed
	rst 38h			;76ee
	ld bc,0f803h		;76ef
	ret p			;76f2
	ret po			;76f3
	ret nz			;76f4
	add a,b			;76f5
	ld a,(bc)		;76f6
	nop			;76f7
	ld b,080h		;76f8
	sub (hl)		;76fa
	nop			;76fb
	inc c			;76fc
	ld b,0feh		;76fd
	call m,0f1f8h		;76ff
	ex (sp),hl		;7702
	rst 20h			;7703
	add a,b			;7704
	ret po			;7705
	ccf			;7706
	ld a,a			;7707
	cp (hl)			;7708
	sbc a,(hl)		;7709
	adc a,0e0h		;770a
	rst 38h			;770c
l770dh:
	nop			;770d
	nop			;770e
	rst 38h			;770f
	rst 38h			;7710
	ld b,000h		;7711
	add a,d			;7713
	rst 38h			;7714
	nop			;7715
	inc bc			;7716
	rst 38h			;7717
	add a,e			;7718
	nop			;7719
	rst 38h			;771a
	rst 38h			;771b
	dec b			;771c
	nop			;771d
	dec b			;771e
sub_771fh:
	rrca			;771f
	inc bc			;7720
	nop			;7721
	adc a,b			;7722
	ld a,(hl)		;7723
	jp nz,098a4h		;7724
	sbc a,b			;7727
	and h			;7728
	jp nz,005ffh		;7729
	xor d			;772c
	dec b			;772d
	rst 38h			;772e
	ld (bc),a		;772f
	add a,c			;7730
	add a,l			;7731
	rst 38h			;7732
	add a,c			;7733
	add a,c			;7734
	rst 38h			;7735
	rst 38h			;7736
	inc b			;7737
	ret po			;7738
	dec b			;7739
	rst 38h			;773a
	ld d,03ch		;773b
	add a,e			;773d
	rst 38h			;773e
	nop			;773f
	rst 38h			;7740
	inc bc			;7741
	nop			;7742
	add a,e			;7743
	rst 38h			;7744
	nop			;7745
	nop			;7746
	inc bc			;7747
	ret nz			;7748
	add a,c			;7749
	nop			;774a
	djnz l770dh		;774b
	inc bc			;774d
	rst 38h			;774e
	inc bc			;774f
	add a,c			;7750
	add a,c			;7751
	rst 38h			;7752
	inc bc			;7753
	add a,c			;7754
	add a,c			;7755
	rst 38h			;7756
	inc bc			;7757
	add a,c			;7758
	add a,e			;7759
	rst 38h			;775a
	add a,c			;775b
	add a,c			;775c
	inc bc			;775d
	rst 38h			;775e
	ld (bc),a		;775f
	add a,c			;7760
	adc a,d			;7761
	rst 20h			;7762
	inc h			;7763
	inc a			;7764
	inc h			;7765
	inc a			;7766
sub_7767h:
	add a,b			;7767
	add a,e			;7768
	adc a,a			;7769
	sbc a,a			;776a
	sbc a,a			;776b
	inc bc			;776c
	cp a			;776d
	add a,e			;776e
	rst 38h			;776f
	push de			;7770
	push de			;7771
	inc b			;7772
	add a,b			;7773
	add a,c			;7774
	rst 38h			;7775
	dec b			;7776
	ret m			;7777
	add a,(hl)		;7778
	ld a,b			;7779
	or b			;777a
	ret nz			;777b
	rlca			;777c
	rlca			;777d
	inc bc			;777e
	dec b			;777f
	nop			;7780
	ld (bc),a		;7781
	ret po			;7782
	add a,c			;7783
	ret nz			;7784
	dec b			;7785
	nop			;7786
	add a,l			;7787
	ld e,040h		;7788
	add a,c			;778a
	add a,c			;778b
	pop bc			;778c
	inc b			;778d
	rst 38h			;778e
	add a,c			;778f
	nop			;7790
	inc b			;7791
	add a,b			;7792
	add a,c			;7793
	nop			;7794
	dec b			;7795
	rst 38h			;7796
	adc a,c			;7797
	nop			;7798
	rst 38h			;7799
	nop			;779a
	nop			;779b
	inc a			;779c
	rst 38h			;779d
	and l			;779e
	and l			;779f
	rst 38h			;77a0
	ex af,af'		;77a1
	inc a			;77a2
	add a,e			;77a3
	nop			;77a4
	inc a			;77a5
	nop			;77a6
	dec b			;77a7
	rst 38h			;77a8
	add a,(hl)		;77a9
	inc bc			;77aa
	rlca			;77ab
	rlca			;77ac
	inc bc			;77ad
	dec c			;77ae
	ld e,005h		;77af
	rra			;77b1
	ld (bc),a		;77b2
	cp 002h			;77b3
	call m,0f802h		;77b5
	ld a,(bc)		;77b8
	ret p			;77b9
	dec b			;77ba
	nop			;77bb
	add a,(hl)		;77bc
	ret nz			;77bd
	ret po			;77be
	ret po			;77bf
	ret nz			;77c0
	or b			;77c1
	ld a,b			;77c2
	dec b			;77c3
	ret m			;77c4
	add a,c			;77c5
	rst 38h			;77c6
	dec b			;77c7
	nop			;77c8
	ld (bc),a		;77c9
	rst 38h			;77ca
	add a,c			;77cb
	nop			;77cc
	inc b			;77cd
	cp 002h			;77ce
	nop			;77d0
	add a,c			;77d1
	rst 38h			;77d2
	inc b			;77d3
	ld bc,00303h		;77d4
	add a,l			;77d7
	rlca			;77d8
	rst 38h			;77d9
	ld l,l			;77da
	ld l,l			;77db
	rst 38h			;77dc
	dec b			;77dd
	nop			;77de
	ld (bc),a		;77df
	adc a,b			;77e0
	inc b			;77e1
	rlca			;77e2
	ld (bc),a		;77e3
	nop			;77e4
	ld (bc),a		;77e5
	cp e			;77e6
	inc bc			;77e7
	ld hl,0ff03h		;77e8
	ld (bc),a		;77eb
	and l			;77ec
	add a,c			;77ed
	rst 38h			;77ee
	inc bc			;77ef
	and l			;77f0
	add a,c			;77f1
	rst 38h			;77f2
	ld b,0aah		;77f3
	sub b			;77f5
	xor e			;77f6
	xor d			;77f7
	ret p			;77f8
	ret p			;77f9
	ret m			;77fa
	ret m			;77fb
	call m,0fefch		;77fc
	cp 00fh			;77ff
	rrca			;7801
	rra			;7802
	rra			;7803
	ccf			;7804
	ccf			;7805
	ld b,07fh		;7806
	ld (bc),a		;7808
	ret nz			;7809
	ld (bc),a		;780a
	ret po			;780b
	ld (bc),a		;780c
	ld bc,00302h		;780d
	ld (bc),a		;7810
	rlca			;7811
	add a,h			;7812
	rrca			;7813
	rst 38h			;7814
	rst 38h			;7815
	rra			;7816
	inc bc			;7817
	ccf			;7818
	ld (bc),a		;7819
	ld a,a			;781a
	ld (bc),a		;781b
	rst 38h			;781c
	add a,c			;781d
	ret m			;781e
	inc bc			;781f
	call m,0fe02h		;7820
	ld (bc),a		;7823
	rst 38h			;7824
	inc bc			;7825
	cp 003h			;7826
	call m,0ff81h		;7828
	nop			;782b
	add a,e			;782c
	rrca			;782d
l782eh:
	pop af			;782e
	pop af			;782f
	ld b,0f0h		;7830
	ld b,0f1h		;7832
	inc b			;7834
	ret p			;7835
	ld a,(bc)		;7836
	ld bc,0f104h		;7837
	add a,(hl)		;783a
	djnz l782eh		;783b
	pop af			;783d
	ret p			;783e
	pop af			;783f
	pop af			;7840
	ld a,(bc)		;7841
	ret p			;7842
	ld b,0f1h		;7843
	ld (006f0h),a		;7845
	ld bc,0f106h		;7848
	rlca			;784b
	ret p			;784c
	add a,c			;784d
	pop af			;784e
	rlca			;784f
	ret p			;7850
	add a,c			;7851
	pop af			;7852
	inc b			;7853
	ret p			;7854
	ld b,a			;7855
	ret m			;7856
	ld a,(bc)		;7857
	defb 0fdh,083h,0d1h ;illegal sequence	;7858
	jp nc,00bd1h		;785b
	jp nc,0ff85h		;785e
	ld hl,01021h		;7861
	djnz l786bh		;7864
	rrca			;7866
	dec b			;7867
	pop af			;7868
	adc a,c			;7869
	ret p			;786a
l786bh:
	pop af			;786b
	djnz $-13		;786c
	pop af			;786e
	ret p			;786f
	pop af			;7870
	pop af			;7871
	ret p			;7872
	inc b			;7873
	ld (de),a		;7874
	ld b,00fh		;7875
	dec bc			;7877
	ld hl,01004h		;7878
	ld (bc),a		;787b
	ld hl,01081h		;787c
	dec b			;787f
	rrca			;7880
	ex af,af'		;7881
	pop af			;7882
	ld (bc),a		;7883
	jp p,0f181h		;7884
	ld b,0f0h		;7887
	inc bc			;7889
	pop af			;788a
	add a,c			;788b
	jp p,0f105h		;788c
	rlca			;788f
	ret p			;7890
	add a,e			;7891
	djnz l78b5h		;7892
	djnz $+17		;7894
	ld hl,01082h		;7896
	ld hl,01007h		;7899
	inc b			;789c
	rrca			;789d
	ld (bc),a		;789e
	djnz l78a3h		;789f
	rrca			;78a1
	adc a,b			;78a2
l78a3h:
	ld hl,00f10h		;78a3
	ld bc,01212h		;78a6
	ld bc,00301h		;78a9
	ret p			;78ac
	add a,h			;78ad
	ld bc,01212h		;78ae
	ld bc,0f004h		;78b1
	adc a,c			;78b4
l78b5h:
	jp p,0f0f1h		;78b5
	ret p			;78b8
	jp p,0f0f1h		;78b9
	ret p			;78bc
	pop af			;78bd
	inc bc			;78be
	ret p			;78bf
	add a,c			;78c0
	pop af			;78c1
	inc b			;78c2
	ret p			;78c3
	add a,c			;78c4
	jp p,0f110h		;78c5
	add a,h			;78c8
	ret p			;78c9
	jp p,0f1f1h		;78ca
	inc bc			;78cd
	ret p			;78ce
	add a,d			;78cf
	add a,b			;78d0
	ret nc			;78d1
	dec d			;78d2
	sub b			;78d3
	add a,e			;78d4
	exx			;78d5
	ld sp,hl		;78d6
	ld sp,hl		;78d7
	dec b			;78d8
	add hl,bc		;78d9
	ld (bc),a		;78da
	jp p,02102h		;78db
	add a,c			;78de
	djnz $+5		;78df
	rrca			;78e1
	add hl,bc		;78e2
	ld hl,0f202h		;78e3
	ld (bc),a		;78e6
	pop af			;78e7
	add a,c			;78e8
	ld hl,01003h		;78e9
	add a,d			;78ec
	rrca			;78ed
	djnz $+12		;78ee
	rrca			;78f0
	rlca			;78f1
	ret po			;78f2
	sub c			;78f3
	add a,b			;78f4
	ret nc			;78f5
	sub b			;78f6
	ret p			;78f7
	jp p,0d292h		;78f8
	add a,d			;78fb
	jp nc,09292h		;78fc
	jp p,01201h		;78ff
	ld (de),a		;7902
	ld bc,00801h		;7903
	ret p			;7906
	inc b			;7907
	ret po			;7908
	inc b			;7909
	add a,b			;790a
	add a,l			;790b
	ret nc			;790c
	sub b			;790d
	ret p			;790e
	cpl			;790f
	cpl			;7910
	dec b			;7911
	pop af			;7912
	inc bc			;7913
	cpl			;7914
	ld (bc),a		;7915
	rra			;7916
	inc b			;7917
	rrca			;7918
	add a,a			;7919
	jp p,0d292h		;791a
	add a,d			;791d
	pop de			;791e
	sub d			;791f
	sub c			;7920
	inc bc			;7921
	pop af			;7922
	add a,c			;7923
	ret p			;7924
	inc bc			;7925
	djnz $+6		;7926
	rra			;7928
	add a,h			;7929
	rrca			;792a
l792bh:
	ld hl,01010h		;792b
	inc bc			;792e
	rrca			;792f
	add a,e			;7930
	pop af			;7931
	ret p			;7932
	pop af			;7933
	dec b			;7934
	ret p			;7935
	add a,l			;7936
	jp p,0f1f1h		;7937
	jp p,003f2h		;793a
	pop af			;793d
	ld (bc),a		;793e
	jp p,0f102h		;793f
	inc bc			;7942
	ret p			;7943
	sbc a,d			;7944
	pop af			;7945
	ret nc			;7946
	add a,c			;7947
	ret po			;7948
	add a,b			;7949
	rst 18h			;794a
	ret nc			;794b
	sub b			;794c
	pop af			;794d
	ret nc			;794e
	add a,c			;794f
	ret po			;7950
	add a,b			;7951
	rst 18h			;7952
	ret nc			;7953
	sbc a,a			;7954
	cpl			;7955
	add hl,hl		;7956
	dec l			;7957
	jr z,l792bh		;7958
	sub d			;795a
	sub c			;795b
	pop af			;795c
	ret m			;795d
	ret m			;795e
	inc bc			;795f
	defb 0fdh,005h,0f9h ;illegal sequence	;7960
	add a,e			;7963
	defb 0fdh,0f8h,0fdh ;illegal sequence	;7964
	dec b			;7967
	ld sp,hl		;7968
	add a,e			;7969
	defb 0fdh,0f8h,0fdh ;illegal sequence	;796a
	dec b			;796d
	ld sp,hl		;796e
	add a,e			;796f
	defb 0fdh,0f8h,0fdh ;illegal sequence	;7970
	inc bc			;7973
	ld sp,hl		;7974
	nop			;7975
	ret nc			;7976
	call m,0f098h		;7977
	sub b			;797a
	sub b			;797b
	ret p			;797c
	sbc a,b			;797d
	call m,0193fh		;797e
	rrca			;7981
	add hl,bc		;7982
	add hl,bc		;7983
	rrca			;7984
	add hl,de		;7985
	ccf			;7986
	ret po			;7987
	ld c,004h		;7988
	add a,d			;798a
	ld b,c			;798b
	inc hl			;798c
	cp 0ech			;798d
	xor b			;798f
	cp b			;7990
	or b			;7991
	ret p			;7992
	ret p			;7993
	or b			;7994
	cp b			;7995
	xor b			;7996
	call pe,027feh		;7997
	ld b,e			;799a
	add a,d			;799b
	call m,0f107h		;799c
	rst 20h			;799f
	inc h			;79a0
	inc h			;79a1
	ld h,(hl)		;79a2
	jp 00103h		;79a3
	ld h,b			;79a6
	ret p			;79a7
	ret p			;79a8
	ld h,b			;79a9
	ld bc,00f03h		;79aa
	ld a,a			;79ad
l79aeh:
	rst 38h			;79ae
	dec d			;79af
	dec e			;79b0
	dec c			;79b1
	rrca			;79b2
	rrca			;79b3
	dec c			;79b4
	dec e			;79b5
	dec d			;79b6
	scf			;79b7
	ld a,a			;79b8
	call po,041c2h		;79b9
	jr nz,l79aeh		;79bc
	ld (hl),b		;79be
	rlca			;79bf
	ld (hl),b		;79c0
	jr nz,l7a04h		;79c1
	add a,d			;79c3
	call nz,0377fh		;79c4
	nop			;79c7
	inc bc			;79c8
	cp 003h			;79c9
	jp m,0f502h		;79cb
	ld (bc),a		;79ce
	cp 003h			;79cf
	jp m,0f503h		;79d1
	add a,(hl)		;79d4
	defb 0edh ;next byte illegal after ed	;79d5
	sbc a,b			;79d6
	ret m			;79d7
	defb 0fdh,0fdh,0f9h ;illegal sequence	;79d8
	add hl,bc		;79db
	call p,0f603h		;79dc
	adc a,l			;79df
	ret m			;79e0
	defb 0fdh,0fdh,0d9h ;illegal sequence	;79e1
	defb 0fdh,098h,0fdh ;illegal sequence	;79e4
	ret m			;79e7
	ld sp,iy		;79e8
	or 064h			;79ea
	ld h,h			;79ec
	inc b			;79ed
	call po,sub_6405h	;79ee
	rlca			;79f1
	or 003h			;79f2
	di			;79f4
	adc a,(hl)		;79f5
	ret m			;79f6
	defb 0fdh,0fdh,0f9h ;illegal sequence	;79f7
	ld sp,hl		;79fa
	exx			;79fb
	defb 0edh ;next byte illegal after ed	;79fc
	sbc a,b			;79fd
	ret m			;79fe
	defb 0fdh,0fdh,0f9h ;illegal sequence	;79ff
	or 0f6h			;7a02
l7a04h:
	nop			;7a04
	cp b			;7a05
	nop			;7a06
	pop hl			;7a07
	pop hl			;7a08
	ld bc,00c0ch		;7a09
	ld h,b			;7a0c
	nop			;7a0d
	nop			;7a0e
	jp 003c3h		;7a0f
	nop			;7a12
	jr l7a15h		;7a13
l7a15h:
	nop			;7a15
	jr l7a19h		;7a16
	add hl,sp		;7a18
l7a19h:
	jr c,l7a1bh		;7a19
l7a1bh:
	add a,(hl)		;7a1b
	add a,(hl)		;7a1c
	nop			;7a1d
	nop			;7a1e
	inc sp			;7a1f
	inc bc			;7a20
	nop			;7a21
	ld a,b			;7a22
	ld a,b			;7a23
	nop			;7a24
	nop			;7a25
	add a,b			;7a26
	add a,c			;7a27
	cp c			;7a28
	cp b			;7a29
	add a,b			;7a2a
	adc a,h			;7a2b
	adc a,h			;7a2c
	add a,b			;7a2d
	ld bc,00703h		;7a2e
	rrca			;7a31
	rra			;7a32
	ccf			;7a33
	ld a,a			;7a34
	ld bc,00603h		;7a35
	inc c			;7a38
	jr l7a73h		;7a39
	ld h,h			;7a3b
	jp nz,00481h		;7a3c
	rst 20h			;7a3f
	add a,c			;7a40
	inc h			;7a41
	inc bc			;7a42
	rst 20h			;7a43
	add a,e			;7a44
	add a,b			;7a45
	rst 38h			;7a46
	rst 38h			;7a47
	dec b			;7a48
	add a,b			;7a49
	adc a,b			;7a4a
	nop			;7a4b
	rst 38h			;7a4c
	rst 38h			;7a4d
	nop			;7a4e
	ld (hl),b		;7a4f
	ld (hl),b		;7a50
	nop			;7a51
	jr l7a57h		;7a52
	nop			;7a54
	inc b			;7a55
	rst 38h			;7a56
l7a57h:
	ld (bc),a		;7a57
	nop			;7a58
	ld (bc),a		;7a59
	rst 38h			;7a5a
	ld (bc),a		;7a5b
	nop			;7a5c
	ld (bc),a		;7a5d
	ld (hl),b		;7a5e
	ld (bc),a		;7a5f
	nop			;7a60
	rlca			;7a61
	cp 086h			;7a62
	nop			;7a64
	inc sp			;7a65
	inc bc			;7a66
	nop			;7a67
	ld a,b			;7a68
	ld a,b			;7a69
	inc bc			;7a6a
	nop			;7a6b
	ld (bc),a		;7a6c
	pop hl			;7a6d
	add a,(hl)		;7a6e
	ld bc,00c0ch		;7a6f
	ld h,b			;7a72
l7a73h:
	nop			;7a73
	nop			;7a74
	inc bc			;7a75
	ret nz			;7a76
	add a,l			;7a77
	ld e,000h		;7a78
	ld e,01eh		;7a7a
	nop			;7a7c
	inc bc			;7a7d
	ret p			;7a7e
	add a,h			;7a7f
	nop			;7a80
	inc bc			;7a81
	inc bc			;7a82
	nop			;7a83
	ex af,af'		;7a84
	cp 098h			;7a85
	call m,000e0h		;7a87
	jp 02466h		;7a8a
	inc h			;7a8d
	rst 20h			;7a8e
	add a,c			;7a8f
	jp 03c66h		;7a90
	jr l7aa1h		;7a93
	ld b,003h		;7a95
	ld bc,0c080h		;7a97
	ret po			;7a9a
	ret p			;7a9b
	ret m			;7a9c
	call m,005feh		;7a9d
	sbc a,h			;7aa0
l7aa1h:
	add a,e			;7aa1
	inc e			;7aa2
	pop hl			;7aa3
	nop			;7aa4
	rlca			;7aa5
	inc bc			;7aa6
	ld b,0ffh		;7aa7
	ld (bc),a		;7aa9
	nop			;7aaa
	ld (bc),a		;7aab
	rst 38h			;7aac
	ld (bc),a		;7aad
	nop			;7aae
	ld b,0ffh		;7aaf
	rrca			;7ab1
	ccf			;7ab2
	rlca			;7ab3
	ld a,a			;7ab4
	inc bc			;7ab5
	rst 38h			;7ab6
	inc d			;7ab7
	nop			;7ab8
	ld (bc),a		;7ab9
	rst 38h			;7aba
	ld b,001h		;7abb
	add a,(hl)		;7abd
	rst 38h			;7abe
	nop			;7abf
	rst 38h			;7ac0
	nop			;7ac1
l7ac2h:
	nop			;7ac2
	rst 38h			;7ac3
	inc bc			;7ac4
	nop			;7ac5
	sub l			;7ac6
	rst 38h			;7ac7
	rra			;7ac8
	ld e,01eh		;7ac9
	rra			;7acb
	inc e			;7acc
	inc e			;7acd
	rra			;7ace
	rra			;7acf
	rst 38h			;7ad0
	nop			;7ad1
	nop			;7ad2
	rst 38h			;7ad3
	rst 38h			;7ad4
	nop			;7ad5
	rst 38h			;7ad6
	nop			;7ad7
	ld c,00eh		;7ad8
	ld de,003ffh		;7ada
	add a,c			;7add
	add a,c			;7ade
	rst 38h			;7adf
	dec c			;7ae0
	ld a,a			;7ae1
	ld b,000h		;7ae2
	dec b			;7ae4
	ld a,a			;7ae5
	ld (bc),a		;7ae6
	rst 38h			;7ae7
	dec b			;7ae8
	ld a,a			;7ae9
	ld (bc),a		;7aea
	rst 38h			;7aeb
	dec b			;7aec
	ld a,a			;7aed
	ld (bc),a		;7aee
	nop			;7aef
	dec b			;7af0
	ld bc,0ff06h		;7af1
	dec b			;7af4
	ld bc,08190h		;7af5
	jp 03c66h		;7af8
	jr l7b2dh		;7afb
	ld h,b			;7afd
	ret nz			;7afe
	add a,b			;7aff
	ld bc,00703h		;7b00
	rrca			;7b03
	rra			;7b04
	ccf			;7b05
	ld a,a			;7b06
	inc bc			;7b07
	nop			;7b08
	adc a,a			;7b09
	rst 38h			;7b0a
	adc a,a			;7b0b
	adc a,a			;7b0c
	rst 38h			;7b0d
	rst 20h			;7b0e
	rst 20h			;7b0f
	rst 38h			;7b10
	adc a,a			;7b11
	adc a,a			;7b12
	rst 38h			;7b13
	nop			;7b14
	nop			;7b15
	rst 38h			;7b16
	ld a,a			;7b17
	nop			;7b18
	inc b			;7b19
	ccf			;7b1a
	adc a,b			;7b1b
	jr l7ac2h		;7b1c
	cp 0feh			;7b1e
	rst 38h			;7b20
	add a,b			;7b21
	add a,b			;7b22
	nop			;7b23
	inc bc			;7b24
	cp 005h			;7b25
	rst 38h			;7b27
	ld (bc),a		;7b28
	cp 08bh			;7b29
	rst 38h			;7b2b
	nop			;7b2c
l7b2dh:
	nop			;7b2d
	rst 38h			;7b2e
	rst 38h			;7b2f
	adc a,a			;7b30
	adc a,a			;7b31
	rst 38h			;7b32
	rst 38h			;7b33
	adc a,a			;7b34
	adc a,a			;7b35
	inc b			;7b36
	nop			;7b37
	add a,c			;7b38
	rst 38h			;7b39
	inc bc			;7b3a
	add a,b			;7b3b
	adc a,l			;7b3c
	ret nz			;7b3d
	ret p			;7b3e
	call m,007ffh		;7b3f
	rst 38h			;7b42
	xor a			;7b43
	xor a			;7b44
	ret pe			;7b45
	add hl,hl		;7b46
	add hl,hl		;7b47
	scf			;7b48
	ret po			;7b49
	ex af,af'		;7b4a
	ret p			;7b4b
	ex af,af'		;7b4c
	ld de,04088h		;7b4d
	ld h,b			;7b50
	ld (hl),b		;7b51
	rrca			;7b52
	rrca			;7b53
	rst 38h			;7b54
	ret nz			;7b55
	ret nz			;7b56
	ld b,001h		;7b57
	inc bc			;7b59
	rst 38h			;7b5a
	add a,c			;7b5b
	nop			;7b5c
	ld b,0feh		;7b5d
	inc b			;7b5f
	ld b,d			;7b60
	adc a,c			;7b61
	jp 0e1f3h		;7b62
	ld b,b			;7b65
	rra			;7b66
	rra			;7b67
	dec b			;7b68
	dec b			;7b69
	rst 38h			;7b6a
	inc bc			;7b6b
	rra			;7b6c
	ld (bc),a		;7b6d
	rlca			;7b6e
	ld (bc),a		;7b6f
	and b			;7b70
	add a,a			;7b71
	rst 38h			;7b72
	rlca			;7b73
	rlca			;7b74
	rst 38h			;7b75
	ret po			;7b76
	ret nz			;7b77
	sbc a,005h		;7b78
	sbc a,h			;7b7a
	inc bc			;7b7b
	rst 20h			;7b7c
	add a,d			;7b7d
	inc h			;7b7e
	jr l7b84h		;7b7f
	ccf			;7b81
	dec b			;7b82
	rra			;7b83
l7b84h:
	add a,e			;7b84
	ld e,00dh		;7b85
	inc bc			;7b87
	inc bc			;7b88
	nop			;7b89
	add a,l			;7b8a
	ld a,07eh		;7b8b
	ld a,(hl)		;7b8d
	add a,b			;7b8e
	ret nz			;7b8f
	inc bc			;7b90
	nop			;7b91
	adc a,d			;7b92
	ld a,h			;7b93
	ld a,(hl)		;7b94
	ld a,(hl)		;7b95
	ld bc,08403h		;7b96
	add a,d			;7b99
	add a,c			;7b9a
	add a,c			;7b9b
	add a,e			;7b9c
	inc bc			;7b9d
	rst 38h			;7b9e
	ex af,af'		;7b9f
	ret p			;7ba0
	add a,d			;7ba1
	xor b			;7ba2
	rlca			;7ba3
	inc b			;7ba4
	rrca			;7ba5
	add a,d			;7ba6
	rlca			;7ba7
	xor b			;7ba8
	inc b			;7ba9
	ld b,d			;7baa
	add a,l			;7bab
	jp 00103h		;7bac
	ld h,b			;7baf
	rst 38h			;7bb0
	ld b,099h		;7bb1
	add a,(hl)		;7bb3
	rst 38h			;7bb4
	ld a,a			;7bb5
	ld a,a			;7bb6
	rst 38h			;7bb7
	nop			;7bb8
	nop			;7bb9
	inc bc			;7bba
	ld a,a			;7bbb
	add a,h			;7bbc
	rst 0			;7bbd
	ret po			;7bbe
	ret m			;7bbf
	rrca			;7bc0
	ex af,af'		;7bc1
	and l			;7bc2
	add a,(hl)		;7bc3
	adc a,a			;7bc4
	ret m			;7bc5
	ret po			;7bc6
	rst 0			;7bc7
	ret nz			;7bc8
	ret nz			;7bc9
	inc bc			;7bca
	ret p			;7bcb
	add a,c			;7bcc
	nop			;7bcd
	inc b			;7bce
	ret nz			;7bcf
	ld (bc),a		;7bd0
	ret p			;7bd1
	add a,h			;7bd2
	ld (hl),b		;7bd3
	ld h,b			;7bd4
	ld b,b			;7bd5
	nop			;7bd6
	rlca			;7bd7
	ld b,d			;7bd8
	add a,e			;7bd9
	rst 38h			;7bda
	add a,b			;7bdb
	rst 38h			;7bdc
	dec b			;7bdd
	add a,b			;7bde
	add a,d			;7bdf
	rst 38h			;7be0
	nop			;7be1
	dec b			;7be2
	ld bc,03182h		;7be3
	ld c,c			;7be6
	rlca			;7be7
	ret nz			;7be8
	adc a,e			;7be9
	rst 38h			;7bea
	ld hl,03f21h		;7beb
	ccf			;7bee
	ret po			;7bef
	rst 38h			;7bf0
	nop			;7bf1
	nop			;7bf2
	ret m			;7bf3
	ret m			;7bf4
	inc bc			;7bf5
	inc bc			;7bf6
sub_7bf7h:
	add a,c			;7bf7
	rst 38h			;7bf8
	inc bc			;7bf9
	ret m			;7bfa
	add a,h			;7bfb
	rra			;7bfc
	ret z			;7bfd
	sub b			;7bfe
	rst 38h			;7bff
	ld b,05ah		;7c00
	adc a,b			;7c02
	rst 38h			;7c03
	sub b			;7c04
	ret z			;7c05
l7c06h:
	rra			;7c06
	rlca			;7c07
	rst 38h			;7c08
	rst 38h			;7c09
	nop			;7c0a
	inc b			;7c0b
	rst 38h			;7c0c
	ld (bc),a		;7c0d
	nop			;7c0e
	rlca			;7c0f
	ret z			;7c10
	rlca			;7c11
	inc bc			;7c12
	add a,c			;7c13
	nop			;7c14
	dec b			;7c15
	rlca			;7c16
	inc bc			;7c17
	rrca			;7c18
	add a,l			;7c19
	ret po			;7c1a
	and b			;7c1b
	ret po			;7c1c
	and b			;7c1d
	ret po			;7c1e
	inc bc			;7c1f
	ret nc			;7c20
	inc bc			;7c21
	rrca			;7c22
	dec b			;7c23
	rlca			;7c24
	inc bc			;7c25
	ret nc			;7c26
	add a,a			;7c27
	ret po			;7c28
	and b			;7c29
	ret po			;7c2a
	and b			;7c2b
	ret po			;7c2c
	dec d			;7c2d
	ret po			;7c2e
	inc b			;7c2f
	ret p			;7c30
	adc a,e			;7c31
	ret po			;7c32
	dec d			;7c33
	cp l			;7c34
	ld e,d			;7c35
	ld b,d			;7c36
	nop			;7c37
	nop			;7c38
	ld b,d			;7c39
	ld e,d			;7c3a
	cp l			;7c3b
	rst 38h			;7c3c
	inc b			;7c3d
	ccf			;7c3e
	inc bc			;7c3f
	nop			;7c40
	add a,l			;7c41
	and b			;7c42
	ret m			;7c43
	adc a,e			;7c44
	add a,l			;7c45
	rst 38h			;7c46
	ld b,02fh		;7c47
	add a,(hl)		;7c49
	rst 38h			;7c4a
	add a,l			;7c4b
	adc a,e			;7c4c
	ret m			;7c4d
	ret po			;7c4e
	rst 38h			;7c4f
	ld b,0f8h		;7c50
	add a,l			;7c52
	rst 38h			;7c53
	ex (sp),hl		;7c54
	rlca			;7c55
	rra			;7c56
	ret p			;7c57
	inc bc			;7c58
	ret nc			;7c59
	add a,c			;7c5a
	nop			;7c5b
	inc b			;7c5c
	inc e			;7c5d
	add a,(hl)		;7c5e
	rra			;7c5f
	ret p			;7c60
	rra			;7c61
	nop			;7c62
	rra			;7c63
	rra			;7c64
	inc b			;7c65
	ret nz			;7c66
	add a,d			;7c67
	rra			;7c68
	rst 38h			;7c69
	inc b			;7c6a
	add a,c			;7c6b
	add a,l			;7c6c
	rst 38h			;7c6d
	add a,c			;7c6e
	add a,c			;7c6f
	rst 38h			;7c70
	rst 38h			;7c71
	dec b			;7c72
	add a,b			;7c73
	add a,(hl)		;7c74
	rst 38h			;7c75
	add a,b			;7c76
	call m,000e0h		;7c77
	jp 04204h		;7c7a
	rlca			;7c7d
	ret nz			;7c7e
	add hl,bc		;7c7f
	nop			;7c80
l7c81h:
	inc bc			;7c81
	jr nc,l7c06h		;7c82
	ld c,c			;7c84
	ld sp,00103h		;7c85
	ex af,af'		;7c88
	add a,c			;7c89
	add a,h			;7c8a
	ld b,b			;7c8b
	pop hl			;7c8c
	rst 30h			;7c8d
	jp 04204h		;7c8e
	djnz l7c94h		;7c91
	dec b			;7c93
l7c94h:
	ld a,a			;7c94
	ld (bc),a		;7c95
	nop			;7c96
	ld (bc),a		;7c97
	ld a,a			;7c98
	inc bc			;7c99
	cpl			;7c9a
	add a,h			;7c9b
	pop af			;7c9c
	rra			;7c9d
	rlca			;7c9e
	ex (sp),hl		;7c9f
	ex af,af'		;7ca0
	ret nz			;7ca1
	nop			;7ca2
	cpl			;7ca3
	exx			;7ca4
	ld a,(bc)		;7ca5
	defb 0fdh,082h,0d8h ;illegal sequence	;7ca6
	sbc a,l			;7ca9
	inc bc			;7caa
	defb 0fdh,082h,0d9h ;illegal sequence	;7cab
	rst 38h			;7cae
	dec b			;7caf
	ret pe			;7cb0
	ex af,af'		;7cb1
	adc a,l			;7cb2
	ex af,af'		;7cb3
	exx			;7cb4
	ex af,af'		;7cb5
	adc a,l			;7cb6
	dec b			;7cb7
	exx			;7cb8
	add a,d			;7cb9
	adc a,l			;7cba
	exx			;7cbb
	inc l			;7cbc
	sbc a,a			;7cbd
	inc bc			;7cbe
	ld h,e			;7cbf
	add a,l			;7cc0
	di			;7cc1
	ret m			;7cc2
	ld sp,iy		;7cc3
	ld sp,hl		;7cc5
	add hl,bc		;7cc6
	ret m			;7cc7
	dec c			;7cc8
	sbc a,b			;7cc9
	ld (bc),a		;7cca
	exx			;7ccb
	add a,c			;7ccc
	ld h,h			;7ccd
	dec b			;7cce
	ld (hl),005h		;7ccf
	di			;7cd1
	ld a,(bc)		;7cd2
	sbc a,l			;7cd3
	dec b			;7cd4
	ld sp,hl		;7cd5
	inc d			;7cd6
	sbc a,l			;7cd7
	inc h			;7cd8
	ld sp,hl		;7cd9
	inc bc			;7cda
	adc a,l			;7cdb
	dec b			;7cdc
	ld sp,hl		;7cdd
	inc bc			;7cde
	defb 0fdh,002h,0f9h ;illegal sequence	;7cdf
	inc bc			;7ce2
	defb 0fdh,002h,0f9h ;illegal sequence	;7ce3
	dec b			;7ce6
	rst 18h			;7ce7
	add a,h			;7ce8
	adc a,l			;7ce9
	ld sp,hl		;7cea
	ld sp,hl		;7ceb
	defb 0fdh,003h,0f9h ;illegal sequence	;7cec
	add a,c			;7cef
	ret po			;7cf0
	dec b			;7cf1
	ld b,h			;7cf2
	add a,l			;7cf3
	ld h,b			;7cf4
	ret p			;7cf5
	adc a,a			;7cf6
	adc a,a			;7cf7
	rst 18h			;7cf8
	ld a,(bc)		;7cf9
	sbc a,a			;7cfa
	add a,c			;7cfb
	rst 18h			;7cfc
	inc b			;7cfd
	adc a,a			;7cfe
	add a,e			;7cff
	ret c			;7d00
	sbc a,l			;7d01
	sbc a,l			;7d02
	ld b,0f9h		;7d03
	ld (bc),a		;7d05
	sbc a,l			;7d06
	inc bc			;7d07
	ret c			;7d08
	ld (bc),a		;7d09
	ret m			;7d0a
	add a,c			;7d0b
	defb 0fdh,00ah,0f9h ;illegal sequence	;7d0c
	add a,c			;7d0f
	defb 0fdh,00bh,0f8h ;illegal sequence	;7d10
	ex af,af'		;7d13
	sbc a,b			;7d14
	inc b			;7d15
	adc a,(hl)		;7d16
	ld b,0d8h		;7d17
	dec b			;7d19
	adc a,(hl)		;7d1a
	ld b,0d8h		;7d1b
	ld (bc),a		;7d1d
	ld sp,hl		;7d1e
	add a,h			;7d1f
	sub b			;7d20
	ret p			;7d21
	exx			;7d22
	exx			;7d23
	inc bc			;7d24
	sbc a,a			;7d25
	add a,d			;7d26
	ret p			;7d27
	ld h,b			;7d28
	ld b,030h		;7d29
	add a,c			;7d2b
	ret p			;7d2c
	dec b			;7d2d
	adc a,(hl)		;7d2e
	ex af,af'		;7d2f
	ret c			;7d30
	inc bc			;7d31
	adc a,(hl)		;7d32
	rlca			;7d33
	ret m			;7d34
	inc bc			;7d35
	ld sp,hl		;7d36
	adc a,(hl)		;7d37
	ld sp,iy		;7d38
	ret m			;7d3a
	ld sp,iy		;7d3b
	ld sp,hl		;7d3d
	ret pe			;7d3e
	adc a,c			;7d3f
	adc a,c			;7d40
	sbc a,a			;7d41
	ret pe			;7d42
	adc a,c			;7d43
	adc a,c			;7d44
	sbc a,a			;7d45
	inc bc			;7d46
	cp 082h			;7d47
	ret m			;7d49
	defb 0fdh,003h,0f9h ;illegal sequence	;7d4a
	adc a,e			;7d4d
	ret nc			;7d4e
	ret p			;7d4f
	ret po			;7d50
	sbc a,b			;7d51
	defb 0fdh,0fdh,0d9h ;illegal sequence	;7d52
	rst 38h			;7d55
	ret c			;7d56
	adc a,(hl)		;7d57
	ret c			;7d58
	inc b			;7d59
	sbc a,l			;7d5a
	inc bc			;7d5b
	ld sp,hl		;7d5c
	inc bc			;7d5d
	exx			;7d5e
	sbc a,d			;7d5f
	adc a,l			;7d60
	ret pe			;7d61
	adc a,l			;7d62
	ret nc			;7d63
	add a,b			;7d64
	ret nc			;7d65
	sub b			;7d66
	di			;7d67
	jr nc,l7dcah		;7d68
	ld b,b			;7d6a
	ld h,h			;7d6b
	ccf			;7d6c
	ld sp,iy		;7d6d
	ld sp,hl		;7d6f
	ld h,h			;7d70
	ld (hl),0ffh		;7d71
	ld h,h			;7d73
	ld (hl),0f8h		;7d74
	defb 0fdh,0fdh,064h ;illegal sequence	;7d76
	ld (hl),003h		;7d79
	ld sp,hl		;7d7b
	ld b,098h		;7d7c
	adc a,(hl)		;7d7e
	defb 0fdh,0f8h,0f8h ;illegal sequence	;7d7f
	defb 0fdh,0f8h,0d8h ;illegal sequence	;7d82
	sbc a,l			;7d85
	sbc a,l			;7d86
	ret p			;7d87
	ret po			;7d88
	add a,b			;7d89
	add a,b			;7d8a
	ret nc			;7d8b
	ret nc			;7d8c
	dec b			;7d8d
	sub b			;7d8e
	ld (bc),a		;7d8f
	ret po			;7d90
	add a,e			;7d91
	rst 28h			;7d92
	ret pe			;7d93
	ret pe			;7d94
	inc b			;7d95
	ret po			;7d96
	add a,h			;7d97
	add a,b			;7d98
	adc a,a			;7d99
	ret pe			;7d9a
	defb 0edh ;next byte illegal after ed	;7d9b
	inc bc			;7d9c
	ld sp,hl		;7d9d
	dec b			;7d9e
	add hl,bc		;7d9f
	add a,d			;7da0
	ret pe			;7da1
	sbc a,a			;7da2
	inc b			;7da3
	nop			;7da4
	add a,e			;7da5
	ret pe			;7da6
	sbc a,a			;7da7
	call p,04006h		;7da8
	adc a,e			;7dab
	or 0d0h			;7dac
	add a,b			;7dae
	ret nc			;7daf
	sub b			;7db0
	or 064h			;7db1
	ld h,h			;7db3
	call po,0fafah		;7db4
	inc b			;7db7
	push af			;7db8
	ld (bc),a		;7db9
	di			;7dba
	xor c			;7dbb
	add a,b			;7dbc
	ret p			;7dbd
	ret pe			;7dbe
	ret pe			;7dbf
	defb 0ddh,0f0h,080h ;illegal sequence	;7dc0
	ret p			;7dc3
	ret m			;7dc4
	ld sp,iy		;7dc5
	cp 0d8h			;7dc7
	ret c			;7dc9
l7dcah:
	sbc a,l			;7dca
	rst 38h			;7dcb
	rst 38h			;7dcc
	adc a,(hl)		;7dcd
	ret c			;7dce
	ret c			;7dcf
	ld sp,hl		;7dd0
	cp 0feh			;7dd1
	ret m			;7dd3
	exx			;7dd4
	rst 38h			;7dd5
	defb 0edh ;next byte illegal after ed	;7dd6
	adc a,c			;7dd7
	rst 18h			;7dd8
	rst 18h			;7dd9
	exx			;7dda
	rst 38h			;7ddb
	exx			;7ddc
	rst 38h			;7ddd
	defb 0edh ;next byte illegal after ed	;7dde
	adc a,c			;7ddf
	ret nc			;7de0
	ret p			;7de1
	ret nc			;7de2
	ret nc			;7de3
	ret m			;7de4
	dec b			;7de5
	defb 0fdh,002h,0f9h ;illegal sequence	;7de6
	inc bc			;7de9
	ret pe			;7dea
	inc bc			;7deb
	adc a,l			;7dec
	add a,h			;7ded
	exx			;7dee
	defb 0fdh,0fdh,0f8h ;illegal sequence	;7def
	inc b			;7df2
	defb 0fdh,002h,0f9h ;illegal sequence	;7df3
	add a,c			;7df6
	call po,04605h		;7df7
	ld (bc),a		;7dfa
	di			;7dfb
	add a,c			;7dfc
	ret m			;7dfd
	inc bc			;7dfe
	defb 0fdh,09dh ;sbc a,iyl	;7dff
	ld sp,hl		;7e01
	adc a,l			;7e02
	adc a,l			;7e03
	exx			;7e04
	exx			;7e05
	rst 38h			;7e06
	ret c			;7e07
	sbc a,l			;7e08
	ld sp,hl		;7e09
	ld sp,hl		;7e0a
	exx			;7e0b
	rst 38h			;7e0c
	dec c			;7e0d
	add a,b			;7e0e
	cp 0f8h			;7e0f
	ret m			;7e11
	ret pe			;7e12
	adc a,l			;7e13
	exx			;7e14
	ret pe			;7e15
	adc a,l			;7e16
	exx			;7e17
	defb 0fdh,0fdh,0f9h ;illegal sequence	;7e18
	sub b			;7e1b
sub_7e1ch:
	ret p			;7e1c
	ret p			;7e1d
	inc b			;7e1e
	ld h,h			;7e1f
	inc b			;7e20
	ccf			;7e21
	adc a,b			;7e22
	add a,(hl)		;7e23
	call po,08686h		;7e24
	out (093h),a		;7e27
	rst 38h			;7e29
	ret po			;7e2a
	dec b			;7e2b
	ld b,b			;7e2c
	ld (bc),a		;7e2d
	ld h,b			;7e2e
	and c			;7e2f
	ret p			;7e30
	add a,b			;7e31
	ret p			;7e32
	add a,b			;7e33
	ret p			;7e34
	ret po			;7e35
	add a,b			;7e36
	ret nc			;7e37
	ret p			;7e38
	ret nc			;7e39
	ret p			;7e3a
	ret nc			;7e3b
	ret p			;7e3c
	add a,b			;7e3d
	ret nc			;7e3e
	sub b			;7e3f
	ret po			;7e40
	add a,b			;7e41
	ret nc			;7e42
	ret p			;7e43
	add a,b			;7e44
	ret p			;7e45
	add a,b			;7e46
	ret p			;7e47
	add a,b			;7e48
	ret nc			;7e49
	sub b			;7e4a
	ret p			;7e4b
	ret nc			;7e4c
	ret p			;7e4d
	ret nc			;7e4e
	ret p			;7e4f
	or 006h			;7e50
	ld h,b			;7e52
	add a,e			;7e53
	di			;7e54
	ld sp,hl		;7e55
	sub b			;7e56
	inc b			;7e57
	ret nc			;7e58
	add a,l			;7e59
	sub b			;7e5a
	ld sp,hl		;7e5b
	ld sp,hl		;7e5c
	ld h,e			;7e5d
	ld b,(hl)		;7e5e
	inc b			;7e5f
	ld h,e			;7e60
	and d			;7e61
	rst 38h			;7e62
	sub b			;7e63
	ret nc			;7e64
	ret m			;7e65
	defb 0fdh,0fdh,0d8h ;illegal sequence	;7e66
	sbc a,l			;7e69
	ld sp,hl		;7e6a
	ret c			;7e6b
	sbc a,l			;7e6c
	ld sp,hl		;7e6d
	ld sp,hl		;7e6e
	ld sp,iy		;7e6f
	sub b			;7e71
	ret p			;7e72
	ret p			;7e73
	add a,(hl)		;7e74
	call po,08686h		;7e75
	out (093h),a		;7e78
	defb 0fdh,0fdh,0f9h ;illegal sequence	;7e7a
	ld sp,hl		;7e7d
	defb 0fdh,0d9h,0d9h ;illegal sequence	;7e7e
	sbc a,a			;7e81
	sbc a,a			;7e82
	defb 0fdh,004h,0f9h ;illegal sequence	;7e83
	adc a,h			;7e86
	sbc a,b			;7e87
	exx			;7e88
	exx			;7e89
	ret c			;7e8a
	rst 38h			;7e8b
	ret pe			;7e8c
	adc a,l			;7e8d
	exx			;7e8e
	rst 38h			;7e8f
	ret c			;7e90
	defb 0fdh,0fdh,004h ;illegal sequence	;7e91
	ld sp,hl		;7e94
	add a,c			;7e95
	defb 0fdh,003h,0f9h ;illegal sequence	;7e96
	add a,c			;7e99
	exx			;7e9a
	inc bc			;7e9b
	adc a,l			;7e9c
	inc bc			;7e9d
	ret pe			;7e9e
	inc bc			;7e9f
	ld h,e			;7ea0
	add a,l			;7ea1
	di			;7ea2
	add a,b			;7ea3
	ret nc			;7ea4
	sub b			;7ea5
	sub b			;7ea6
	ex af,af'		;7ea7
	jr nc,l7eb3h		;7ea8
	rst 18h			;7eaa
	ld (bc),a		;7eab
	adc a,a			;7eac
	add a,l			;7ead
	defb 0fdh,0f8h,0fdh ;illegal sequence	;7eae
	ld sp,hl		;7eb1
l7eb2h:
	ld sp,hl		;7eb2
l7eb3h:
	inc bc			;7eb3
	ret po			;7eb4
	add a,d			;7eb5
	add a,b			;7eb6
	ret nc			;7eb7
	inc bc			;7eb8
	sub b			;7eb9
	ld (bc),a		;7eba
	ld h,b			;7ebb
	adc a,e			;7ebc
	jr nc,l7eb2h		;7ebd
	add a,b			;7ebf
	ret nc			;7ec0
	sub b			;7ec1
	sub b			;7ec2
	ret c			;7ec3
	adc a,(hl)		;7ec4
	adc a,(hl)		;7ec5
	ret c			;7ec6
	ret c			;7ec7
	ld b,09dh		;7ec8
	ld (bc),a		;7eca
	ret c			;7ecb
	ld (bc),a		;7ecc
	adc a,(hl)		;7ecd
	inc b			;7ece
	ret c			;7ecf
	dec b			;7ed0
	adc a,(hl)		;7ed1
	adc a,b			;7ed2
	rst 38h			;7ed3
	ret c			;7ed4
	sbc a,l			;7ed5
	sbc a,l			;7ed6
	ld sp,hl		;7ed7
	cp 0f8h			;7ed8
	defb 0fdh,007h,0d9h ;illegal sequence	;7eda
	add a,c			;7edd
	adc a,l			;7ede
	nop			;7edf
	ld (bc),a		;7ee0
	ld a,a			;7ee1
	add a,d			;7ee2
	ccf			;7ee3
	ld a,a			;7ee4
	inc bc			;7ee5
	ld h,b			;7ee6
	add a,a			;7ee7
	rra			;7ee8
	ld a,a			;7ee9
	ld a,a			;7eea
	ccf			;7eeb
	ccf			;7eec
	ld a,a			;7eed
sub_7eeeh:
	ld a,a			;7eee
	dec b			;7eef
	ld (hl),b		;7ef0
	add a,d			;7ef1
	ld a,a			;7ef2
	ccf			;7ef3
	inc bc			;7ef4
	ld a,a			;7ef5
	nop			;7ef6
	add a,e			;7ef7
	ld sp,03121h		;7ef8
	inc b			;7efb
sub_7efch:
	ld hl,03185h		;7efc
	sub d			;7eff
l7f00h:
	ld (09292h),a		;7f00
l7f03h:
	rlca			;7f03
	ld sp,03202h		;7f04
	add a,e			;7f07
	ld hl,02f1fh		;7f08
	nop			;7f0b
	ld (bc),a		;7f0c
	ret m			;7f0d
	ld (bc),a		;7f0e
	nop			;7f0f
	sbc a,b			;7f10
	ex (sp),hl		;7f11
	inc d			;7f12
	inc d			;7f13
	ex (sp),hl		;7f14
	rra			;7f15
	rra			;7f16
	nop			;7f17
	nop			;7f18
	ex (sp),hl		;7f19
	inc d			;7f1a
	inc d			;7f1b
	ex (sp),hl		;7f1c
	rst 38h			;7f1d
	ld a,(hl)		;7f1e
	nop			;7f1f
	ld a,(hl)		;7f20
	ld b,d			;7f21
	ld b,d			;7f22
	jp 0ffffh		;7f23
	jr l7f03h		;7f26
	inc a			;7f28
	dec b			;7f29
	rst 38h			;7f2a
	inc bc			;7f2b
	add a,b			;7f2c
	add a,c			;7f2d
	rst 38h			;7f2e
	inc bc			;7f2f
	add a,b			;7f30
	add a,c			;7f31
	rst 38h			;7f32
	rlca			;7f33
	inc bc			;7f34
	nop			;7f35
	add a,l			;7f36
	ld hl,0f1f1h		;7f37
	ld (00431h),hl		;7f3a
	ld hl,0f102h		;7f3d
	add a,d			;7f40
	ld (00331h),hl		;7f41
	ld hl,0f103h		;7f44
	ld (bc),a		;7f47
	ld hl,02f81h		;7f48
	dec bc			;7f4b
	pop af			;7f4c
	add a,d			;7f4d
	ld hl,00532h		;7f4e
	sub e			;7f51
	ld (bc),a		;7f52
	pop af			;7f53
	add a,e			;7f54
	ld (de),a		;7f55
	inc hl			;7f56
	add hl,sp		;7f57
	inc bc			;7f58
	inc hl			;7f59
	nop			;7f5a
	rlca			;7f5b
	inc a			;7f5c
	adc a,c			;7f5d
	jp 03cffh		;7f5e
	nop			;7f61
	jp 000ffh		;7f62
	nop			;7f65
	add a,c			;7f66
	inc b			;7f67
	jp 0ff84h		;7f68
	jp 00081h		;7f6b
	inc bc			;7f6e
	add a,c			;7f6f
	ld (bc),a		;7f70
	cp l			;7f71
	ld (bc),a		;7f72
	add a,c			;7f73
	add a,c			;7f74
	rst 38h			;7f75
	inc bc			;7f76
	ld a,(hl)		;7f77
	ld (bc),a		;7f78
	ld b,d			;7f79
	ld (bc),a		;7f7a
	ld a,(hl)		;7f7b
	sub c			;7f7c
	nop			;7f7d
	inc a			;7f7e
sub_7f7fh:
	jp 03cc3h		;7f7f
	inc a			;7f82
	jp 03cc3h		;7f83
	rst 38h			;7f86
	inc a			;7f87
	nop			;7f88
	jp 000ffh		;7f89
	nop			;7f8c
	add a,c			;7f8d
	inc b			;7f8e
	jp 0ff84h		;7f8f
	inc a			;7f92
	ld a,(hl)		;7f93
	rst 38h			;7f94
	ld b,07eh		;7f95
	ld (bc),a		;7f97
	inc a			;7f98
	ld b,07eh		;7f99
	add hl,bc		;7f9b
	jp 0ff81h		;7f9c
	ld b,03ch		;7f9f
	ld (bc),a		;7fa1
	nop			;7fa2
	ex af,af'		;7fa3
	rst 38h			;7fa4
	nop			;7fa5
	adc a,b			;7fa6
	sub e			;7fa7
	add hl,hl		;7fa8
	ld (de),a		;7fa9
	ld sp,09239h		;7faa
	cpl			;7fad
	cpl			;7fae
	inc bc			;7faf
	sub e			;7fb0
	add a,e			;7fb1
	ld (01313h),a		;7fb2
	inc bc			;7fb5
	add hl,hl		;7fb6
	inc b			;7fb7
	inc hl			;7fb8
	inc bc			;7fb9
	ld hl,0f198h		;7fba
	jp p,0f3f3h		;7fbd
	inc de			;7fc0
	inc de			;7fc1
	pop af			;7fc2
	pop af			;7fc3
	ld hl,09131h		;7fc4
	sub c			;7fc7
	sub d			;7fc8
	sub d			;7fc9
	ld hl,03121h		;7fca
	ld sp,01f1fh		;7fcd
	inc de			;7fd0
	inc de			;7fd1
	pop af			;7fd2
	pop af			;7fd3
	inc bc			;7fd4
	ld (02183h),a		;7fd5
	jp p,003f2h		;7fd8
	inc de			;7fdb
	inc b			;7fdc
	ld (de),a		;7fdd
	inc bc			;7fde
	pop af			;7fdf
	add a,c			;7fe0
l7fe1h:
	sub e			;7fe1
	dec b			;7fe2
	ld (02183h),a		;7fe3
	rra			;7fe6
	ld (02105h),a		;7fe7
	ld (bc),a		;7fea
	pop af			;7feb
	add a,c			;7fec
	inc hl			;7fed
	dec b			;7fee
	ld (de),a		;7fef
	ld (bc),a		;7ff0
	pop af			;7ff1
	add a,c			;7ff2
	ld hl,01f0fh		;7ff3
	nop			;7ff6
	add a,c			;7ff7
	add a,l			;7ff8
	ld b,03ah		;7ff9
	add a,c			;7ffb
	ld a,(de)		;7ffc
	rlca			;7ffd
	ret pe			;7ffe
	add a,c			;7fff

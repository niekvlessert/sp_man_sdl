; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank21_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank21.bin

	org 06000h

	inc b			;6000
	ld d,d			;6001
	rlca			;6002
	ld d,h			;6003
	ld (bc),a		;6004
	ld d,c			;6005
	add a,d			;6006
	ld d,d			;6007
	ld d,e			;6008
	ex af,af'		;6009
	ld d,h			;600a
	ld (bc),a		;600b
	ld d,c			;600c
	add a,d			;600d
	ld b,e			;600e
	ld (02103h),a		;600f
	add a,c			;6012
	ld (04303h),a		;6013
	add a,c			;6016
	ld (02107h),a		;6017
	add a,c			;601a
	ld (04303h),a		;601b
	add a,e			;601e
	ld (02121h),a		;601f
	inc bc			;6022
	ld d,b			;6023
	inc b			;6024
	ld d,d			;6025
	inc b			;6026
	ld d,h			;6027
	add a,e			;6028
	ld d,c			;6029
	ld d,h			;602a
	ld d,h			;602b
	inc bc			;602c
	ld b,e			;602d
	inc bc			;602e
	ld (04305h),a		;602f
	ld (bc),a		;6032
	ld (02183h),a		;6033
	ld (00332h),a		;6036
	inc bc			;6039
	dec b			;603a
	ld (02184h),a		;603b
	ld sp,05141h		;603e
	inc bc			;6041
	ld b,c			;6042
	inc b			;6043
	ld d,c			;6044
	ld (bc),a		;6045
	ld d,h			;6046
	inc bc			;6047
	ld b,e			;6048
	inc b			;6049
	ld d,e			;604a
	inc bc			;604b
	ld b,e			;604c
	dec b			;604d
	ld (02102h),a		;604e
	ex af,af'		;6051
	ld (04384h),a		;6052
	ld (02132h),a		;6055
	nop			;6058
	inc bc			;6059
	nop			;605a
	add a,c			;605b
	djnz l6063h		;605c
	nop			;605e
	add a,c			;605f
	jr nz,l6067h		;6060
	nop			;6062
l6063h:
	add a,c			;6063
	inc b			;6064
	ld b,000h		;6065
l6067h:
	add a,h			;6067
	ex af,af'		;6068
	nop			;6069
	nop			;606a
	inc b			;606b
	rlca			;606c
	nop			;606d
	add a,c			;606e
	djnz l6075h		;606f
	nop			;6071
	add a,c			;6072
	ex af,af'		;6073
	rlca			;6074
l6075h:
	nop			;6075
	add a,c			;6076
	inc b			;6077
	inc b			;6078
l6079h:
	nop			;6079
	add a,c			;607a
	djnz l6083h		;607b
	nop			;607d
	add a,c			;607e
	jr nz,l608bh		;607f
	nop			;6081
	add a,c			;6082
l6083h:
	inc b			;6083
	inc bc			;6084
	nop			;6085
	add a,c			;6086
	inc b			;6087
	dec b			;6088
	nop			;6089
	add a,e			;608a
l608bh:
	add a,b			;608b
	nop			;608c
	ld (bc),a		;608d
	dec b			;608e
	nop			;608f
	add a,c			;6090
	add a,b			;6091
	inc b			;6092
	nop			;6093
	add a,c			;6094
	ex af,af'		;6095
	rlca			;6096
	nop			;6097
	add a,c			;6098
	ex af,af'		;6099
	inc b			;609a
	nop			;609b
	add a,c			;609c
	inc b			;609d
	inc bc			;609e
	nop			;609f
	add a,e			;60a0
	ld b,b			;60a1
	nop			;60a2
	nop			;60a3
	nop			;60a4
	add hl,bc		;60a5
	add a,b			;60a6
	djnz l6079h		;60a7
	ex af,af'		;60a9
	ret po			;60aa
	dec b			;60ab
	add a,b			;60ac
	ex af,af'		;60ad
	ret nc			;60ae
	dec b			;60af
	add a,b			;60b0
	rlca			;60b1
	ret nc			;60b2
	dec bc			;60b3
	add a,b			;60b4
	inc b			;60b5
	ret po			;60b6
	ld b,080h		;60b7
	ex af,af'		;60b9
	ret nc			;60ba
	dec b			;60bb
	add a,b			;60bc
	ex af,af'		;60bd
	ret nc			;60be
	add hl,bc		;60bf
	add a,b			;60c0
	inc bc			;60c1
	ret nc			;60c2
	nop			;60c3
	adc a,h			;60c4
	ld a,(hl)		;60c5
	jr $+62			;60c6
	jr $+62			;60c8
	add a,c			;60ca
	jp 03cfeh		;60cb
	jp 03281h		;60ce
	inc bc			;60d1
	inc a			;60d2
	adc a,c			;60d3
	cp c			;60d4
	sbc a,(hl)		;60d5
	rst 0			;60d6
	inc a			;60d7
	and l			;60d8
	rst 20h			;60d9
	ld h,l			;60da
	ld a,(hl)		;60db
	rst 0			;60dc
	nop			;60dd
	add a,c			;60de
	djnz l60e4h		;60df
	ld hl,01081h		;60e1
l60e4h:
	dec b			;60e4
	ret p			;60e5
	add a,a			;60e6
	pop af			;60e7
	ld hl,01021h		;60e8
	rrca			;60eb
	pop af			;60ec
	jp p,0f003h		;60ed
sub_60f0h:
	add a,c			;60f0
	jp p,0f003h		;60f1
	nop			;60f4
	sub b			;60f5
	ld b,a			;60f6
	cp l			;60f7
	inc de			;60f8
	inc sp			;60f9
	ld h,03fh		;60fa
	jp 03b18h		;60fc
	inc a			;60ff
	ld b,h			;6100
	ld b,h			;6101
l6102h:
	call nz,03cc8h		;6102
	jp nz,08800h		;6105
	pop af			;6108
	ret p			;6109
	pop af			;610a
	jp p,0f0f1h		;610b
	ret p			;610e
	djnz l6114h		;610f
	ret p			;6111
	add a,l			;6112
	pop af			;6113
l6114h:
	jp p,0f0f1h		;6114
	ret p			;6117
	nop			;6118
	sbc a,b			;6119
	ld b,d			;611a
	jp 0f725h		;611b
	adc a,c			;611e
	ret			;611f
	ex de,hl		;6120
	sbc a,03ch		;6121
	ld a,(hl)		;6123
	jr c,l61a2h		;6124
l6126h:
	jr c,l6126h		;6126
	inc a			;6128
	inc a			;6129
	inc hl			;612a
	jp 0ddddh		;612b
	inc hl			;612e
	inc de			;612f
	inc a			;6130
	ld b,e			;6131
	nop			;6132
	adc a,d			;6133
	ret p			;6134
	pop af			;6135
	jp p,0f0f1h		;6136
	jp p,0f0f1h		;6139
	djnz l614eh		;613c
	inc bc			;613e
	ld hl,01002h		;613f
	inc b			;6142
	rrca			;6143
	add a,l			;6144
	rra			;6145
	jp p,0f0f1h		;6146
	ret p			;6149
	nop			;614a
	adc a,h			;614b
	dec sp			;614c
	inc a			;614d
l614eh:
	ld b,h			;614e
	ld b,h			;614f
	call nz,03cc8h		;6150
	rrca			;6153
	sbc a,(hl)		;6154
	add hl,bc		;6155
	ex af,af'		;6156
	adc a,c			;6157
	inc b			;6158
	ret p			;6159
	adc a,h			;615a
	ld b,e			;615b
	inc a			;615c
	inc de			;615d
	inc hl			;615e
	ld (03c22h),hl		;615f
	ret p			;6162
	inc bc			;6163
	inc bc			;6164
	add a,b			;6165
	ld (03c03h),a		;6166
	add a,l			;6169
	cp c			;616a
	dec sp			;616b
	inc e			;616c
	jp 00418h		;616d
	rrca			;6170
	sub b			;6171
	ld a,a			;6172
	inc a			;6173
	inc hl			;6174
	inc hl			;6175
	jr nz,l61b7h		;6176
	ret p			;6178
	ret m			;6179
	add a,c			;617a
	rst 38h			;617b
	ld a,0c3h		;617c
	ld a,01ch		;617e
	ld a,01ch		;6180
	inc b			;6182
	ret p			;6183
	inc bc			;6184
	inc c			;6185
	add a,c			;6186
	ret p			;6187
	nop			;6188
	inc bc			;6189
	ret p			;618a
	or d			;618b
	pop af			;618c
	jp p,0f0f1h		;618d
	ld d,h			;6190
	jp p,0f0f1h		;6191
	ret p			;6194
	ld sp,05040h		;6195
	ld b,e			;6198
	ret p			;6199
	ret p			;619a
	pop af			;619b
	jp p,0f0f1h		;619c
	ret p			;619f
	jr nc,l61f2h		;61a0
l61a2h:
	ld b,b			;61a2
	ret p			;61a3
	jr nz,l61c7h		;61a4
	djnz l61b7h		;61a6
	pop af			;61a8
	djnz l61cbh		;61a9
	djnz l61bdh		;61ab
	ld sp,05340h		;61ad
	ld b,h			;61b0
	ret p			;61b1
	ret p			;61b2
	jp p,0f0f1h		;61b3
	di			;61b6
l61b7h:
	ld b,e			;61b7
	ld d,h			;61b8
	di			;61b9
	di			;61ba
	ret p			;61bb
	ret p			;61bc
l61bdh:
	djnz l61c2h		;61bd
	ld hl,04388h		;61bf
l61c2h:
	ld e,a			;61c2
	ld b,b			;61c3
	ld sp,02110h		;61c4
l61c7h:
	djnz l61f9h		;61c7
	nop			;61c9
	add a,l			;61ca
l61cbh:
	ld b,e			;61cb
	inc a			;61cc
	inc de			;61cd
	inc hl			;61ce
	ld (00305h),hl		;61cf
	ld (bc),a		;61d2
	jr c,l61d8h		;61d3
	inc a			;61d5
	add a,c			;61d6
	cp c			;61d7
l61d8h:
	nop			;61d8
	ld (bc),a		;61d9
	ret p			;61da
	adc a,(hl)		;61db
	pop af			;61dc
	jp p,040f1h		;61dd
	ld e,a			;61e0
	sbc a,a			;61e1
	ld d,b			;61e2
	ld b,c			;61e3
	ld hl,01021h		;61e4
	rrca			;61e7
	rrca			;61e8
	pop af			;61e9
	nop			;61ea
	add a,d			;61eb
	inc a			;61ec
	jp 0f004h		;61ed
	ld (bc),a		;61f0
	rrca			;61f1
l61f2h:
	add a,d			;61f2
	sbc a,l			;61f3
	jp 01f03h		;61f4
	inc bc			;61f7
	ret po			;61f8
l61f9h:
	dec bc			;61f9
	rrca			;61fa
	inc b			;61fb
	ret p			;61fc
	add a,c			;61fd
	rst 38h			;61fe
	ex af,af'		;61ff
	ret p			;6200
	add a,c			;6201
	inc a			;6202
	inc bc			;6203
	ld bc,l7d98h		;6204
	jr c,l6241h		;6207
	jr l620eh		;6209
	inc bc			;620b
	ld a,h			;620c
	ld a,l			;620d
l620eh:
	sub d			;620e
	ld (08c8dh),a		;620f
	rlca			;6212
	rlca			;6213
	call m,0d00fh		;6214
	add a,038h		;6217
	jr c,l629ah		;6219
	rst 38h			;621b
	ld a,a			;621c
	rra			;621d
	inc bc			;621e
	ccf			;621f
	adc a,e			;6220
	ret nz			;6221
	inc c			;6222
	cp 0f0h			;6223
	call m,0f8f0h		;6225
	rlca			;6228
	ld e,03ch		;6229
	jp 0f004h		;622b
	ld (bc),a		;622e
	rrca			;622f
	sub d			;6230
	pop bc			;6231
	ccf			;6232
	ccf			;6233
	rra			;6234
	ccf			;6235
	ccf			;6236
	rra			;6237
	ld a,a			;6238
	inc a			;6239
	jr c,l62b8h		;623a
	cp 08ch			;623c
	adc a,h			;623e
	cp 09dh			;623f
l6241h:
	rra			;6241
	rra			;6242
	inc b			;6243
	ret po			;6244
	and h			;6245
	add a,b			;6246
	ld a,(hl)		;6247
	ld a,01ch		;6248
	ld a,03eh		;624a
	add a,b			;624c
	inc a			;624d
	ret nz			;624e
	inc d			;624f
	ld e,07eh		;6250
	ld e,080h		;6252
	ld h,b			;6254
	ccf			;6255
	ld b,b			;6256
	inc c			;6257
	ld a,(hl)		;6258
	inc e			;6259
	jr c,l62dbh		;625a
	jr c,l629ah		;625c
	inc a			;625e
	nop			;625f
	inc a			;6260
	add a,c			;6261
	inc a			;6262
	ld a,(hl)		;6263
	ld a,(hl)		;6264
	inc a			;6265
	ld a,(hl)		;6266
	ld a,(hl)		;6267
	ld l,b			;6268
	ld l,b			;6269
	ld b,00fh		;626a
	add a,d			;626c
	nop			;626d
	rra			;626e
	inc b			;626f
	ret po			;6270
	dec b			;6271
	ret p			;6272
	inc b			;6273
	rrca			;6274
	add a,e			;6275
	ret m			;6276
	ret nz			;6277
	ccf			;6278
	inc bc			;6279
	rra			;627a
	ld (bc),a		;627b
	ret nz			;627c
	add a,l			;627d
	inc bc			;627e
	rrca			;627f
	ret m			;6280
	call m,003f8h		;6281
	rrca			;6284
	adc a,e			;6285
	inc c			;6286
	ret p			;6287
	ld a,h			;6288
	jr c,l62c7h		;6289
	ld a,(hl)		;628b
	rra			;628c
	add a,e			;628d
	ex (sp),hl		;628e
	dec sp			;628f
	inc a			;6290
	inc b			;6291
	rrca			;6292
	add a,d			;6293
	ret p			;6294
	ret po			;6295
	ex af,af'		;6296
	ret p			;6297
	dec b			;6298
	rra			;6299
l629ah:
	ld (bc),a		;629a
	ret nz			;629b
	add a,c			;629c
	inc bc			;629d
	inc bc			;629e
	rrca			;629f
	add a,c			;62a0
	ret po			;62a1
	inc bc			;62a2
	rra			;62a3
	add a,e			;62a4
	ret po			;62a5
	cpl			;62a6
	cpl			;62a7
	inc b			;62a8
	rrca			;62a9
	ld (bc),a		;62aa
	ret p			;62ab
	ld (bc),a		;62ac
	cpl			;62ad
	adc a,b			;62ae
	inc c			;62af
	add a,b			;62b0
	rrca			;62b1
	rrca			;62b2
	nop			;62b3
	rrca			;62b4
	rrca			;62b5
	rra			;62b6
	inc b			;62b7
l62b8h:
	ret po			;62b8
	sub (hl)		;62b9
	rrca			;62ba
	out (06eh),a		;62bb
	rra			;62bd
	add a,(hl)		;62be
	jr c,l633dh		;62bf
	ld a,h			;62c1
	nop			;62c2
	inc sp			;62c3
	rra			;62c4
	rra			;62c5
	ccf			;62c6
l62c7h:
	ccf			;62c7
	ret c			;62c8
	ccf			;62c9
	ccf			;62ca
	add a,b			;62cb
	rrca			;62cc
	ret m			;62cd
	call m,003f8h		;62ce
	rrca			;62d1
	add a,c			;62d2
	dec h			;62d3
	inc bc			;62d4
	ret p			;62d5
	add a,l			;62d6
	ld c,038h		;62d7
	ld a,h			;62d9
	ld a,h			;62da
l62dbh:
	ret nz			;62db
	rlca			;62dc
	ret p			;62dd
	sbc a,h			;62de
	ld c,06eh		;62df
	rra			;62e1
	add a,(hl)		;62e2
	jr c,l6361h		;62e3
	ld a,h			;62e5
	nop			;62e6
	inc sp			;62e7
	ld h,06ch		;62e8
	inc e			;62ea
	add a,h			;62eb
	jr c,l636ah		;62ec
	ld e,067h		;62ee
	ld h,h			;62f0
	ret m			;62f1
	add hl,bc		;62f2
	and h			;62f3
	ld (hl),b		;62f4
	add a,060h		;62f5
	ld (02098h),hl		;62f7
	rra			;62fa
	inc bc			;62fb
	ret p			;62fc
	ld (bc),a		;62fd
	rrca			;62fe
	sub b			;62ff
	ld bc,05e9ch		;6300
	jr c,l6381h		;6303
	ld b,h			;6305
	add a,b			;6306
	call z,040d0h		;6307
	and d			;630a
	djnz $+66		;630b
	ld a,03fh		;630d
	rst 28h			;630f
	ld c,000h		;6310
l6312h:
	call c,0393dh		;6312
	nop			;6315
	nop			;6316
	add a,b			;6317
	inc bc			;6318
	cp 03ch			;6319
	ld a,(hl)		;631b
	ld h,(hl)		;631c
	inc a			;631d
	jr c,l6338h		;631e
	inc a			;6320
	jr l639bh		;6321
	ld a,h			;6323
	ld a,h			;6324
	add a,c			;6325
	cp h			;6326
	jr c,$+128		;6327
	ld a,a			;6329
	jr c,l63a8h		;632a
	ld a,h			;632c
	cp d			;632d
	add hl,sp		;632e
	jr c,$-54		;632f
	rra			;6331
	rrca			;6332
	ret p			;6333
	ret nz			;6334
	ld b,d			;6335
	rst 8			;6336
	inc a			;6337
l6338h:
	ld a,h			;6338
	jr c,$+126		;6339
	ld a,h			;633b
	ret nz			;633c
l633dh:
	inc a			;633d
	ld a,(hl)		;633e
	ld a,h			;633f
l6340h:
	ret p			;6340
	ret m			;6341
	ld a,b			;6342
	jr nz,l6312h		;6343
	jr c,l63c5h		;6345
	ld a,h			;6347
	inc a			;6348
	add hl,de		;6349
	add hl,de		;634a
	inc a			;634b
	jr c,l636dh		;634c
	rst 28h			;634e
	inc a			;634f
	ld a,h			;6350
	rst 38h			;6351
	inc a			;6352
	ld a,h			;6353
	ld a,(hl)		;6354
	nop			;6355
	nop			;6356
	ld e,07fh		;6357
	ld a,07fh		;6359
	dec a			;635b
	ld a,a			;635c
	rst 38h			;635d
	rst 8			;635e
	inc a			;635f
	ld a,h			;6360
l6361h:
	jr nc,$+126		;6361
	call m,sub_7cfeh	;6363
	nop			;6366
	ld a,a			;6367
	jr l63e6h		;6368
l636ah:
	jr c,l63d3h		;636a
	ld h,a			;636c
l636dh:
	rst 0			;636d
	add a,e			;636e
	inc bc			;636f
	jr c,l6374h		;6370
	inc a			;6372
	ld (bc),a		;6373
l6374h:
	add a,c			;6374
	ld (bc),a		;6375
	jp 0fc8ah		;6376
	ld sp,hl		;6379
	ret p			;637a
	rrca			;637b
	rrca			;637c
	jp nz,062f6h		;637d
	ld (hl),a		;6380
l6381h:
	add a,003h		;6381
	jr c,l6340h		;6383
	add a,e			;6385
	jp 0fcf8h		;6386
	cp b			;6389
	sbc a,b			;638a
	sbc a,d			;638b
	jr l63d0h		;638c
	adc a,h			;638e
	jr l63cdh		;638f
	ccf			;6391
	rra			;6392
	ld a,a			;6393
	ld e,03ch		;6394
	ld a,a			;6396
	inc a			;6397
	ld a,a			;6398
	ccf			;6399
	ccf			;639a
l639bh:
	ret po			;639b
	rrca			;639c
	call m,sub_60f0h	;639d
	jp m,083fch		;63a0
	ld a,(hl)		;63a3
	ret p			;63a4
	or c			;63a5
	jr c,l6426h		;63a6
l63a8h:
	rra			;63a8
	cpl			;63a9
	ld a,b			;63aa
	rst 38h			;63ab
	rst 8			;63ac
	pop af			;63ad
	pop af			;63ae
	inc bc			;63af
	rrca			;63b0
	rra			;63b1
	ld a,a			;63b2
	ld (hl),b		;63b3
	nop			;63b4
	rst 20h			;63b5
	jp p,0dcfeh		;63b6
	and 0e8h		;63b9
	ld e,h			;63bb
	cp 002h			;63bc
	rra			;63be
	ld a,a			;63bf
	inc b			;63c0
	rst 38h			;63c1
	add a,e			;63c2
	dec de			;63c3
	ld b,b			;63c4
l63c5h:
	cp 006h			;63c5
	rst 38h			;63c7
	ld (bc),a		;63c8
	call m,0fe04h		;63c9
	sbc a,e			;63cc
l63cdh:
	ret pe			;63cd
	ret nz			;63ce
	ret p			;63cf
l63d0h:
	call m,00658h		;63d0
l63d3h:
	inc b			;63d3
	ld h,b			;63d4
	call m,sub_7ce0h	;63d5
	inc e			;63d8
	sbc a,b			;63d9
	rst 20h			;63da
	ret po			;63db
	rst 28h			;63dc
	add a,b			;63dd
	adc a,0f0h		;63de
	ex (sp),hl		;63e0
	add hl,sp		;63e1
	inc e			;63e2
	add a,h			;63e3
	cp b			;63e4
	ld a,a			;63e5
l63e6h:
	rst 38h			;63e6
	ld b,003h		;63e7
	ret pe			;63e9
	add a,c			;63ea
	inc b			;63eb
	inc bc			;63ec
	call m,05e8dh		;63ed
	xor a			;63f0
	push hl			;63f1
	di			;63f2
	pop af			;63f3
	ret po			;63f4
	ret nz			;63f5
	nop			;63f6
	inc e			;63f7
	and 0f1h		;63f8
	ret m			;63fa
	ret nz			;63fb
	inc bc			;63fc
	nop			;63fd
	inc bc			;63fe
	rrca			;63ff
	adc a,c			;6400
	ret p			;6401
	ret nc			;6402
	add a,038h		;6403
	jr c,l644ah		;6405
	inc a			;6407
	inc de			;6408
	jr nz,l640fh		;6409
	rrca			;640b
	add a,c			;640c
	inc bc			;640d
	inc bc			;640e
l640fh:
	rrca			;640f
	inc bc			;6410
	ret p			;6411
	add a,d			;6412
	ld (0039eh),a		;6413
	ret p			;6416
	inc bc			;6417
	rrca			;6418
	sub d			;6419
	ld b,d			;641a
	ld a,a			;641b
	cpl			;641c
	rla			;641d
	ld l,a			;641e
	ld sp,0f083h		;641f
	ret po			;6422
	call m,sub_7e3eh	;6423
l6426h:
	jr nc,l64a0h		;6426
	call m,00f00h		;6428
	rrca			;642b
	inc b			;642c
	ret p			;642d
	add a,(hl)		;642e
	push hl			;642f
	ex (sp),hl		;6430
	ld h,d			;6431
	ld b,d			;6432
	ld b,e			;6433
	ld b,c			;6434
	inc b			;6435
	ld b,d			;6436
	sbc a,b			;6437
	ld b,b			;6438
	ld l,b			;6439
	ld l,b			;643a
	nop			;643b
	inc c			;643c
	ld c,00fh		;643d
	jr l64afh		;643f
	ld h,06ch		;6441
	rra			;6443
	add a,(hl)		;6444
	jr c,$+126		;6445
	ld a,h			;6447
l6448h:
	nop			;6448
	ld l,(hl)		;6449
l644ah:
	rra			;644a
	add a,(hl)		;644b
	jr c,l64cah		;644c
	ld a,h			;644e
	ld bc,01809h		;644f
	inc bc			;6452
	adc a,a			;6453
	adc a,c			;6454
	ld a,a			;6455
	rra			;6456
	rra			;6457
	ret po			;6458
	xor 018h		;6459
	jr c,l6469h		;645b
	ld b,004h		;645d
	ret p			;645f
	sub h			;6460
	ld a,01ch		;6461
	ld a,03eh		;6463
	ld b,c			;6465
	dec a			;6466
	dec de			;6467
	rst 0			;6468
l6469h:
	rrca			;6469
	rrca			;646a
	ld (hl),d		;646b
	ld a,b			;646c
	inc a			;646d
	ld a,h			;646e
	inc a			;646f
	ld l,(hl)		;6470
	ld c,a			;6471
	rst 8			;6472
	ld h,b			;6473
	ld h,h			;6474
	inc b			;6475
	nop			;6476
	adc a,a			;6477
	ld a,(hl)		;6478
	inc a			;6479
	ld a,a			;647a
	inc a			;647b
	ld a,(hl)		;647c
	inc a			;647d
	inc a			;647e
	jr l6448h		;647f
	add a,e			;6481
	nop			;6482
	jr c,l64bdh		;6483
	inc a			;6485
	inc a			;6486
	inc bc			;6487
	add a,c			;6488
	add a,l			;6489
	inc a			;648a
	ld a,h			;648b
	jr c,l650ch		;648c
	inc a			;648e
	ex af,af'		;648f
	jr $-111		;6490
	jp 01fe0h		;6492
	ccf			;6495
	ccf			;6496
	ret c			;6497
	ccf			;6498
	ld c,030h		;6499
	rrca			;649b
	ret m			;649c
	call m,00ff8h		;649d
l64a0h:
	rst 38h			;64a0
	add hl,bc		;64a1
	rrca			;64a2
	add a,e			;64a3
	nop			;64a4
	cpl			;64a5
	cpl			;64a6
	ld b,00fh		;64a7
	ret nz			;64a9
	inc e			;64aa
	inc a			;64ab
	ld a,h			;64ac
	jr c,l652dh		;64ad
l64afh:
	inc e			;64af
	sbc a,b			;64b0
	ld e,b			;64b1
	ld c,038h		;64b2
	add a,(hl)		;64b4
	add a,b			;64b5
	ccf			;64b6
	ld a,a			;64b7
	dec a			;64b8
	ld a,a			;64b9
	jr c,$+128		;64ba
	ld a,h			;64bc
l64bdh:
	cp h			;64bd
	sbc a,b			;64be
	cp l			;64bf
l64c0h:
	inc a			;64c0
	add a,c			;64c1
	ld sp,07d7dh		;64c2
	jr c,l653fh		;64c5
	inc bc			;64c7
	adc a,a			;64c8
	ret m			;64c9
l64cah:
	jr l650ah		;64ca
	inc e			;64cc
	ld a,01ch		;64cd
	ld a,(hl)		;64cf
	sbc a,h			;64d0
	jp nz,0007ch		;64d1
	ld a,a			;64d4
	jr l6553h		;64d5
	jr c,l64c0h		;64d7
	rst 20h			;64d9
	add a,083h		;64da
	nop			;64dc
	jr c,l6517h		;64dd
	inc a			;64df
	inc a			;64e0
	add a,c			;64e1
	ld b,c			;64e2
	sbc a,a			;64e3
	ret nz			;64e4
	pop bc			;64e5
	ld h,e			;64e6
	ld e,03ch		;64e7
	ld a,003h		;64e9
	inc a			;64eb
	sub b			;64ec
	jp 09e03h		;64ed
	adc a,b			;64f0
	ld c,a			;64f1
	ld a,l			;64f2
	jr c,l6532h		;64f3
	ret nz			;64f5
	cp 087h			;64f6
	ret p			;64f8
	ret p			;64f9
	inc a			;64fa
	rra			;64fb
	ld a,a			;64fc
	inc bc			;64fd
	rra			;64fe
	add a,c			;64ff
	nop			;6500
	inc bc			;6501
	rrca			;6502
	adc a,(hl)		;6503
	sbc a,a			;6504
	jp m,083fch		;6505
	ld a,(hl)		;6508
	ret p			;6509
l650ah:
	add a,c			;650a
	cp h			;650b
l650ch:
	jr c,l658ch		;650c
	ld a,a			;650e
	jr c,l658dh		;650f
	ld a,h			;6511
	inc bc			;6512
	ret p			;6513
	add a,c			;6514
	rst 0			;6515
	inc bc			;6516
l6517h:
	inc a			;6517
	add a,e			;6518
	nop			;6519
	ret po			;651a
	ret po			;651b
	dec b			;651c
	ccf			;651d
	add a,l			;651e
	add a,b			;651f
	rlca			;6520
	ret p			;6521
	inc bc			;6522
	ret m			;6523
	inc bc			;6524
	rrca			;6525
	sbc a,e			;6526
	dec h			;6527
	rrca			;6528
	inc bc			;6529
	ccf			;652a
	rst 38h			;652b
	ld sp,hl		;652c
l652dh:
	nop			;652d
	pop bc			;652e
	ex (sp),hl		;652f
	ld a,(hl)		;6530
	inc a			;6531
l6532h:
	inc a			;6532
	add a,e			;6533
	cp 01ch			;6534
	jp po,0fcfbh		;6536
	cp 0f0h			;6539
	call m,0f8f0h		;653b
	rlca			;653e
l653fh:
	ld e,02fh		;653f
	cpl			;6541
	ld b,00fh		;6542
	nop			;6544
	ld (bc),a		;6545
	ret p			;6546
	cp l			;6547
	jr nc,l658ah		;6548
	ld d,b			;654a
	ld b,e			;654b
	ld b,e			;654c
	ld d,b			;654d
	pop af			;654e
	ret p			;654f
	jr nc,l6595h		;6550
	ld d,h			;6552
l6553h:
	ld d,h			;6553
	ld b,e			;6554
	jr nc,l659ah		;6555
	ld d,b			;6557
	ld b,b			;6558
	inc sp			;6559
	inc b			;655a
	dec (hl)		;655b
	ld b,h			;655c
	ld d,e			;655d
	inc (hl)		;655e
	ld b,l			;655f
	ld e,c			;6560
	ld e,c			;6561
	ld b,l			;6562
	inc (hl)		;6563
	di			;6564
	di			;6565
	ld d,e			;6566
	ld b,b			;6567
	ccf			;6568
	ld c,a			;6569
	ld d,e			;656a
	sub h			;656b
	ld d,l			;656c
	ld c,c			;656d
	djnz l65b1h		;656e
	ld b,b			;6570
	ccf			;6571
	ccf			;6572
	ld b,e			;6573
	ld d,h			;6574
	sub l			;6575
	ld d,h			;6576
	sub l			;6577
	sub l			;6578
	ld d,h			;6579
	call p,043f4h		;657a
	ld d,h			;657d
	ld d,e			;657e
	ld c,a			;657f
	di			;6580
	di			;6581
	ld b,e			;6582
	ld d,h			;6583
	ld d,h			;6584
	dec b			;6585
	sub l			;6586
	add a,h			;6587
	ld d,h			;6588
	ld b,e			;6589
l658ah:
	ccf			;658a
	ccf			;658b
l658ch:
	inc bc			;658c
l658dh:
	sub l			;658d
	ld (bc),a		;658e
	ld d,h			;658f
	ld (bc),a		;6590
	ld b,e			;6591
	adc a,h			;6592
	ld d,h			;6593
	ret p			;6594
l6595h:
	ret p			;6595
	jr nc,l65d8h		;6596
	ld d,b			;6598
	ld b,e			;6599
l659ah:
	ld b,e			;659a
	ld d,b			;659b
	di			;659c
	ld b,e			;659d
	ld d,h			;659e
	inc b			;659f
	sub l			;65a0
	add a,d			;65a1
	ld d,h			;65a2
	ld b,e			;65a3
	inc bc			;65a4
	ld d,h			;65a5
	ld (bc),a		;65a6
	sub l			;65a7
	inc bc			;65a8
	ld d,h			;65a9
	ld (bc),a		;65aa
	sub l			;65ab
	add a,d			;65ac
	ld d,h			;65ad
	ld b,e			;65ae
	inc bc			;65af
	ccf			;65b0
l65b1h:
	add a,e			;65b1
	ld b,e			;65b2
	sub h			;65b3
	ld d,h			;65b4
	dec b			;65b5
	ld b,e			;65b6
	sub d			;65b7
	ld d,h			;65b8
	ld b,e			;65b9
	ld b,e			;65ba
	di			;65bb
	di			;65bc
	call p,05443h		;65bd
	ld d,h			;65c0
	sub l			;65c1
	sub l			;65c2
	ld d,h			;65c3
	ld d,h			;65c4
	ld b,e			;65c5
	ccf			;65c6
	ccf			;65c7
	ld b,e			;65c8
	push af			;65c9
	inc b			;65ca
	sub l			;65cb
	xor (hl)		;65cc
	ld d,h			;65cd
	ld b,e			;65ce
	djnz l65f2h		;65cf
	di			;65d1
	call p,04935h		;65d2
	ld d,l			;65d5
	sub h			;65d6
	sub h			;65d7
l65d8h:
	sub l			;65d8
	sub l			;65d9
	ld d,h			;65da
	ld b,e			;65db
	ccf			;65dc
	ccf			;65dd
	ld b,e			;65de
	ld b,e			;65df
	ld d,h			;65e0
	sub l			;65e1
	sub l			;65e2
	ld d,h			;65e3
	ld b,e			;65e4
	ccf			;65e5
	call p,09595h		;65e6
	ld d,h			;65e9
	ld b,e			;65ea
	ccf			;65eb
	ccf			;65ec
	ld b,e			;65ed
	ld d,h			;65ee
	sub h			;65ef
	sub l			;65f0
	ld d,h			;65f1
l65f2h:
	ld b,e			;65f2
	di			;65f3
	ld c,a			;65f4
	ld d,h			;65f5
	sub l			;65f6
	ld b,e			;65f7
	ld d,h			;65f8
	sub l			;65f9
	sub l			;65fa
	inc bc			;65fb
	ld d,h			;65fc
	xor 043h		;65fd
	ret p			;65ff
	ret p			;6600
	jr nc,l6643h		;6601
	ld d,b			;6603
	ld b,e			;6604
	ld b,e			;6605
	ld d,h			;6606
	ld b,e			;6607
	ld d,h			;6608
	dec (hl)		;6609
	ld c,c			;660a
	ld d,e			;660b
	sub h			;660c
	ld d,l			;660d
	ld c,c			;660e
	ld c,c			;660f
	sub l			;6610
	ld d,h			;6611
	ld b,e			;6612
	ccf			;6613
	ccf			;6614
	ld b,e			;6615
	ld d,h			;6616
	di			;6617
	inc (hl)		;6618
	ld b,l			;6619
	sub l			;661a
	sub l			;661b
	ld d,h			;661c
	ld b,e			;661d
	ld b,e			;661e
	djnz l6630h		;661f
	di			;6621
	inc (hl)		;6622
	ld b,l			;6623
	ld e,c			;6624
	ld e,c			;6625
	ld b,l			;6626
	ret p			;6627
	ld bc,01020h		;6628
	di			;662b
	inc (hl)		;662c
	sub l			;662d
	sub l			;662e
	ld b,h			;662f
l6630h:
	sub l			;6630
	sub l			;6631
	ld d,h			;6632
	ld b,e			;6633
	ccf			;6634
	ccf			;6635
	ld b,e			;6636
	sub h			;6637
	ld d,h			;6638
	ld d,h			;6639
	sub h			;663a
	ld d,h			;663b
	ld b,e			;663c
	ld b,e			;663d
	di			;663e
	ld d,h			;663f
	sub l			;6640
	ld d,h			;6641
	ld b,e			;6642
l6643h:
	di			;6643
	di			;6644
	inc (hl)		;6645
	ld d,h			;6646
	sub l			;6647
	sub l			;6648
	ld d,h			;6649
	ld b,e			;664a
	di			;664b
	ld c,a			;664c
	ld d,h			;664d
	sub l			;664e
	sub l			;664f
	ld d,h			;6650
	ld b,e			;6651
	ld b,e			;6652
	sub l			;6653
	ld d,h			;6654
	ld b,e			;6655
	ld d,e			;6656
	ld d,e			;6657
	sub h			;6658
	ld d,l			;6659
	ld c,c			;665a
	dec (hl)		;665b
	inc b			;665c
	inc bc			;665d
	ld b,b			;665e
	sub h			;665f
	ld d,h			;6660
	ld d,h			;6661
	sub h			;6662
	ld d,h			;6663
	ld b,e			;6664
	ld b,e			;6665
	ld d,e			;6666
	ld b,e			;6667
	sub h			;6668
	ld d,h			;6669
	ld d,h			;666a
	sub e			;666b
	inc bc			;666c
	ld b,e			;666d
	add a,c			;666e
	ld d,h			;666f
	rlca			;6670
	ld b,e			;6671
	sub b			;6672
	sub h			;6673
	ld d,e			;6674
	di			;6675
	ld b,e			;6676
	ld d,h			;6677
	sub l			;6678
	sub l			;6679
	ld d,h			;667a
	ld b,e			;667b
	ld b,e			;667c
	ld d,e			;667d
	ld d,h			;667e
	ld b,e			;667f
	ld b,e			;6680
	ld d,e			;6681
	ld d,h			;6682
	ld b,043h		;6683
	ld (bc),a		;6685
	ld d,h			;6686
	rrca			;6687
	ld b,e			;6688
	add a,c			;6689
	ld d,h			;668a
	dec b			;668b
	ld b,e			;668c
	add a,l			;668d
	sub l			;668e
	ld d,h			;668f
	ld d,h			;6690
	ld b,e			;6691
	ld d,h			;6692
	inc bc			;6693
	sub l			;6694
	add a,l			;6695
	ld d,h			;6696
	ld b,e			;6697
	ccf			;6698
	ld b,e			;6699
	ld b,e			;669a
	inc bc			;669b
	ld d,h			;669c
	inc b			;669d
	sub l			;669e
	sub h			;669f
	ld d,h			;66a0
	ld b,e			;66a1
	di			;66a2
	ld b,e			;66a3
	ld d,h			;66a4
	ld d,h			;66a5
	ld b,e			;66a6
	ld d,h			;66a7
	ld d,e			;66a8
	ld b,e			;66a9
	ld d,h			;66aa
	sub l			;66ab
	ld d,h			;66ac
	ld b,e			;66ad
l66aeh:
	ld d,e			;66ae
	ld b,e			;66af
	ld d,e			;66b0
	sub l			;66b1
	sub l			;66b2
	ld d,h			;66b3
	inc bc			;66b4
	ld b,e			;66b5
	add a,c			;66b6
	sub l			;66b7
	rlca			;66b8
	ld d,h			;66b9
	ld (bc),a		;66ba
	di			;66bb
	add a,e			;66bc
	ld b,e			;66bd
	ld d,h			;66be
	ld d,h			;66bf
	inc bc			;66c0
	sub l			;66c1
	inc b			;66c2
	ld b,e			;66c3
	ld (bc),a		;66c4
	ld d,h			;66c5
	ld (bc),a		;66c6
	sub l			;66c7
	ld (bc),a		;66c8
	di			;66c9
	add a,d			;66ca
	ld b,e			;66cb
	ld d,h			;66cc
	ld b,095h		;66cd
	ld (bc),a		;66cf
	ld d,h			;66d0
	ld (bc),a		;66d1
	ld b,e			;66d2
	ld (bc),a		;66d3
	call p,05403h		;66d4
	adc a,(hl)		;66d7
	sub h			;66d8
	ld d,h			;66d9
	ld b,e			;66da
	ccf			;66db
	ccf			;66dc
	ld b,e			;66dd
	ld d,h			;66de
	sub l			;66df
	sub l			;66e0
	ld d,h			;66e1
	ld b,e			;66e2
	ld b,e			;66e3
	ld d,h			;66e4
	di			;66e5
	inc bc			;66e6
	call p,0f38bh		;66e7
	ld b,e			;66ea
	ld d,h			;66eb
	sub l			;66ec
	ld b,e			;66ed
	ld d,h			;66ee
	sub l			;66ef
	ld d,h			;66f0
	ld d,h			;66f1
	ld d,e			;66f2
	ld d,h			;66f3
	rlca			;66f4
	sub l			;66f5
	ld (bc),a		;66f6
	ld d,h			;66f7
	inc bc			;66f8
	sub l			;66f9
	ld (bc),a		;66fa
	ld d,h			;66fb
	add a,e			;66fc
	ld c,a			;66fd
	di			;66fe
	ld b,e			;66ff
	inc bc			;6700
	sub l			;6701
	add a,(hl)		;6702
	ld d,h			;6703
	ld b,e			;6704
	ld b,e			;6705
	di			;6706
	call p,00843h		;6707
	ld d,h			;670a
	add a,a			;670b
	ld b,e			;670c
	ld d,e			;670d
	ld d,e			;670e
	ld d,h			;670f
	ld d,h			;6710
	sub l			;6711
	sub l			;6712
	rlca			;6713
	ld d,h			;6714
	add a,c			;6715
	ld d,e			;6716
	jr l66aeh		;6717
	ld (bc),a		;6719
	ld d,h			;671a
	inc b			;671b
	sub l			;671c
	inc b			;671d
	ld d,h			;671e
	ld (bc),a		;671f
	ld b,e			;6720
	inc bc			;6721
	ld d,h			;6722
	add a,c			;6723
	ld d,e			;6724
	dec b			;6725
	ld d,h			;6726
	adc a,b			;6727
	ld d,e			;6728
	ld b,e			;6729
	ld b,e			;672a
	ld d,h			;672b
	ld d,h			;672c
	ld b,e			;672d
	ccf			;672e
	ccf			;672f
	inc bc			;6730
	jr nc,$+18		;6731
	ld b,e			;6733
	and e			;6734
	ld d,e			;6735
	ld c,a			;6736
	ccf			;6737
	ccf			;6738
	ld b,e			;6739
	ld d,h			;673a
	ld d,h			;673b
	sub l			;673c
	ret p			;673d
	ret p			;673e
	pop af			;673f
	ret p			;6740
	ld sp,05040h		;6741
	ld b,e			;6744
	ret p			;6745
l6746h:
	jr nc,l678bh		;6746
	ld d,h			;6748
	ld d,h			;6749
	ld b,e			;674a
	ccf			;674b
	ret p			;674c
	jp p,04330h		;674d
	ld d,h			;6750
	ld d,h			;6751
	ld b,e			;6752
	jr nc,l6746h		;6753
	ld b,e			;6755
	ld d,h			;6756
	ld d,h			;6757
	inc b			;6758
	ld b,e			;6759
	ld (bc),a		;675a
	ld d,h			;675b
	inc bc			;675c
	sub l			;675d
	add a,c			;675e
	ld d,h			;675f
	inc bc			;6760
	ld b,e			;6761
	ld (bc),a		;6762
	sub l			;6763
	add a,(hl)		;6764
	ld d,h			;6765
	ld b,e			;6766
	jr nc,l67a9h		;6767
	ld d,d			;6769
	sub c			;676a
	ld b,090h		;676b
	sub a			;676d
	ld d,b			;676e
	ld b,e			;676f
	djnz l6781h		;6770
	rrca			;6772
	sub b			;6773
	ld b,c			;6774
	ld (04350h),a		;6775
	ld b,e			;6778
	sub h			;6779
	ld d,h			;677a
	ld d,h			;677b
	sub h			;677c
	ld d,h			;677d
	ld b,e			;677e
	ld b,e			;677f
	sub h			;6780
l6781h:
	ld d,h			;6781
	ld d,h			;6782
	sub h			;6783
	ld d,h			;6784
	inc bc			;6785
	ld b,e			;6786
	add a,l			;6787
	ld d,b			;6788
	ld d,c			;6789
	ld d,d			;678a
l678bh:
	ld d,c			;678b
	ld d,b			;678c
	inc bc			;678d
	ld e,a			;678e
	sub h			;678f
	call p,04935h		;6790
	ld d,e			;6793
	sub e			;6794
	ld d,h			;6795
	ld d,h			;6796
	ld b,e			;6797
	ld d,b			;6798
	sub b			;6799
	ld d,e			;679a
	ld d,h			;679b
	ld d,e			;679c
	sub h			;679d
	ld d,l			;679e
	ld c,c			;679f
	ld b,e			;67a0
	sub h			;67a1
	ld d,h			;67a2
	ld b,e			;67a3
	inc bc			;67a4
	di			;67a5
	adc a,h			;67a6
	sub e			;67a7
	ld d,e			;67a8
l67a9h:
	ld b,h			;67a9
	sub l			;67aa
	ld d,h			;67ab
	sub b			;67ac
	ld d,h			;67ad
	ld b,e			;67ae
	ld d,e			;67af
	ld d,h			;67b0
	ld b,e			;67b1
	ld d,e			;67b2
	dec b			;67b3
	ld b,e			;67b4
	ld (bc),a		;67b5
	sub l			;67b6
	ld (bc),a		;67b7
	ld d,h			;67b8
	add a,h			;67b9
	ld b,e			;67ba
	ld b,b			;67bb
	ld e,a			;67bc
	sub c			;67bd
	inc bc			;67be
	ld d,h			;67bf
	add a,a			;67c0
	sub h			;67c1
	ld d,h			;67c2
	ld b,e			;67c3
	ccf			;67c4
	ccf			;67c5
	inc (hl)		;67c6
	ld b,l			;67c7
	inc bc			;67c8
	sub l			;67c9
	ld (bc),a		;67ca
	ld d,h			;67cb
	adc a,l			;67cc
	ld d,e			;67cd
	sub c			;67ce
	sub b			;67cf
	sub b			;67d0
	sbc a,a			;67d1
	sub c			;67d2
	sub c			;67d3
	ret po			;67d4
	ld sp,hl		;67d5
	sub l			;67d6
	sub l			;67d7
	ld d,h			;67d8
	ld b,e			;67d9
	inc bc			;67da
	di			;67db
	add a,l			;67dc
	ld b,e			;67dd
	sub l			;67de
	sub l			;67df
	ld d,h			;67e0
	ld b,e			;67e1
	inc bc			;67e2
	di			;67e3
	sub d			;67e4
	inc (hl)		;67e5
	dec (hl)		;67e6
	ld c,c			;67e7
	ld d,l			;67e8
	sub h			;67e9
	ld d,e			;67ea
	ld c,a			;67eb
	ccf			;67ec
	ccf			;67ed
	djnz l67ffh		;67ee
	rrca			;67f0
	call p,04935h		;67f1
	ld d,l			;67f4
	sub h			;67f5
	ld d,h			;67f6
	inc bc			;67f7
	sub l			;67f8
	ld (bc),a		;67f9
	ld d,h			;67fa
	ld (bc),a		;67fb
	ld b,e			;67fc
	add a,e			;67fd
	ld d,e			;67fe
l67ffh:
	di			;67ff
	ld b,e			;6800
	inc bc			;6801
	ld d,h			;6802
	inc bc			;6803
	sub l			;6804
	inc b			;6805
	ld d,h			;6806
	ld (bc),a		;6807
	ld b,e			;6808
	add a,c			;6809
	di			;680a
	inc b			;680b
	ld d,h			;680c
	add a,c			;680d
	ld b,e			;680e
	inc bc			;680f
	di			;6810
	add a,d			;6811
	sub e			;6812
	ld d,h			;6813
	inc bc			;6814
	sub l			;6815
	inc bc			;6816
	ld d,h			;6817
	ld (bc),a		;6818
	sub l			;6819
	ld (bc),a		;681a
	ld d,h			;681b
	ld (bc),a		;681c
	ld b,e			;681d
	ld (bc),a		;681e
	call p,05403h		;681f
	add a,l			;6822
	sub h			;6823
	ld d,h			;6824
	ld b,e			;6825
	ccf			;6826
	ccf			;6827
	inc b			;6828
	ld b,e			;6829
	adc a,b			;682a
	di			;682b
	ld b,e			;682c
	ld d,h			;682d
	sub l			;682e
	ld d,h			;682f
	ld b,e			;6830
	ccf			;6831
	ccf			;6832
	ld b,054h		;6833
	sbc a,b			;6835
	ld b,e			;6836
	di			;6837
	di			;6838
	ei			;6839
	bit 5,h			;683a
	sub l			;683c
	sub l			;683d
	ld d,h			;683e
	ld d,h			;683f
	ld b,e			;6840
	ccf			;6841
	ccf			;6842
	ei			;6843
	ld b,l			;6844
	ld e,c			;6845
	ld e,c			;6846
	ld d,h			;6847
	ld b,e			;6848
	ld b,e			;6849
	di			;684a
	ei			;684b
	di			;684c
	ld b,e			;684d
	inc bc			;684e
	ld d,h			;684f
	inc bc			;6850
	sub l			;6851
	sub a			;6852
	add a,0bch		;6853
	ei			;6855
	cp c			;6856
	ld d,h			;6857
	ld b,e			;6858
	ccf			;6859
	ccf			;685a
	bit 5,h			;685b
	ld l,h			;685d
	res 7,a			;685e
	di			;6860
	inc (hl)		;6861
	ld d,h			;6862
	set 0,(hl)		;6863
	add a,0cbh		;6865
	ei			;6867
	ld c,a			;6868
	ld d,h			;6869
	rlca			;686a
	sub l			;686b
	add a,l			;686c
	ld d,h			;686d
	ld b,e			;686e
	di			;686f
	di			;6870
	inc (hl)		;6871
	dec b			;6872
	ld d,h			;6873
	inc bc			;6874
	sub l			;6875
	ld (bc),a		;6876
	ld d,h			;6877
	ld (bc),a		;6878
	ld b,e			;6879
	adc a,c			;687a
	ld d,h			;687b
	djnz l688dh		;687c
	rrca			;687e
	call p,04935h		;687f
	ld d,l			;6882
	sub h			;6883
	nop			;6884
	sub b			;6885
	ld a,a			;6886
	rrca			;6887
	dec b			;6888
	ld (hl),l		;6889
	dec sp			;688a
	add a,e			;688b
	ret po			;688c
l688dh:
	ret po			;688d
	cp 03ch			;688e
	ld a,(hl)		;6890
	jr nc,l690bh		;6891
	call m,00f00h		;6893
	nop			;6896
	add a,e			;6897
	ld b,e			;6898
	ld d,h			;6899
	ld d,h			;689a
	inc b			;689b
	ld b,e			;689c
	ld (bc),a		;689d
	ld d,h			;689e
	inc bc			;689f
	sub l			;68a0
	add a,c			;68a1
	ld d,h			;68a2
	inc bc			;68a3
	ld b,e			;68a4
	nop			;68a5
	sub b			;68a6
	rst 38h			;68a7
	nop			;68a8
	cp 078h			;68a9
	jr nc,l692bh		;68ab
	inc a			;68ad
	ld a,(hl)		;68ae
	call m,0011fh		;68af
	call po,0d0f8h		;68b2
	call nz,000e8h		;68b5
	ld (bc),a		;68b8
	di			;68b9
	add a,d			;68ba
	ld b,e			;68bb
	ld d,h			;68bc
	inc bc			;68bd
	sub l			;68be
	add a,h			;68bf
	ld d,h			;68c0
	ret p			;68c1
	di			;68c2
	di			;68c3
	dec b			;68c4
	ld b,e			;68c5
	nop			;68c6
	add a,c			;68c7
	ret po			;68c8
	inc b			;68c9
	rra			;68ca
	adc a,e			;68cb
	ret nz			;68cc
	rrca			;68cd
	rra			;68ce
	rlca			;68cf
	ret m			;68d0
	call m,03ff8h		;68d1
	ret nz			;68d4
	rrca			;68d5
	rst 38h			;68d6
	nop			;68d7
	ld (bc),a		;68d8
	sub l			;68d9
	add a,d			;68da
	ld d,h			;68db
	ld b,e			;68dc
	inc bc			;68dd
	ccf			;68de
	adc a,c			;68df
	ld b,e			;68e0
	sub l			;68e1
	sub l			;68e2
	ld d,h			;68e3
	ld b,e			;68e4
	di			;68e5
	di			;68e6
	ld b,e			;68e7
	ld b,e			;68e8
	nop			;68e9
	ld (bc),a		;68ea
	rst 20h			;68eb
	ld (bc),a		;68ec
	jp l7885h		;68ed
	ld a,03fh		;68f0
	ccf			;68f2
	pop af			;68f3
	rlca			;68f4
	ret p			;68f5
	ld (bc),a		;68f6
	sbc a,c			;68f7
	adc a,a			;68f8
	inc a			;68f9
	ld a,(hl)		;68fa
	jr c,$+126		;68fb
	ld a,(hl)		;68fd
	ld a,(hl)		;68fe
	ld a,03eh		;68ff
	inc e			;6901
	ld a,(hl)		;6902
	ld a,(hl)		;6903
	inc e			;6904
	inc a			;6905
	inc a			;6906
	add a,b			;6907
	inc bc			;6908
	inc a			;6909
l690ah:
	sbc a,c			;690a
l690bh:
	jr l6949h		;690b
	inc a			;690d
	ccf			;690e
	rst 20h			;690f
	rst 20h			;6910
	inc a			;6911
	ld a,(hl)		;6912
	jr c,$+126		;6913
	ld a,h			;6915
	inc a			;6916
	rst 38h			;6917
	ret p			;6918
	ld c,01ch		;6919
	ld a,(hl)		;691b
	inc a			;691c
	jr c,l6997h		;691d
	jr c,l695dh		;691f
	jr c,l69a1h		;6921
	ld (hl),b		;6923
	inc bc			;6924
	rrca			;6925
	add a,h			;6926
	cp 0e0h			;6927
	rlca			;6929
	ccf			;692a
l692bh:
	inc bc			;692b
	ret po			;692c
	add a,c			;692d
	inc bc			;692e
	inc b			;692f
	rrca			;6930
	inc bc			;6931
	ret p			;6932
	add a,c			;6933
	ret nz			;6934
	nop			;6935
	inc bc			;6936
	push af			;6937
	adc a,h			;6938
	ld c,c			;6939
	sub l			;693a
	sub l			;693b
	ld d,h			;693c
	ld b,e			;693d
	call p,0f4f3h		;693e
	dec (hl)		;6941
	ld c,c			;6942
	ld d,l			;6943
	sub h			;6944
	inc b			;6945
	ld d,e			;6946
	add a,c			;6947
	ld d,h			;6948
l6949h:
	rlca			;6949
	sub l			;694a
	inc bc			;694b
	ld d,h			;694c
	add a,c			;694d
	ld b,e			;694e
	inc bc			;694f
	ccf			;6950
	add a,d			;6951
	ld b,e			;6952
	ld d,h			;6953
	inc bc			;6954
	sub l			;6955
	add a,l			;6956
	ld d,h			;6957
	ld sp,hl		;6958
	ld sp,hl		;6959
	ld d,e			;695a
	ld d,h			;695b
	inc b			;695c
l695dh:
	sub l			;695d
	ld (bc),a		;695e
	di			;695f
	add a,(hl)		;6960
	ld b,e			;6961
	ld d,h			;6962
	ld d,h			;6963
	sub l			;6964
	sub l			;6965
	ld d,h			;6966
	inc bc			;6967
	sub l			;6968
	ld (bc),a		;6969
	ld d,h			;696a
	sub e			;696b
	call p,0cfb3h		;696c
	ld d,h			;696f
	ld d,h			;6970
	call p,0fbf4h		;6971
	cp h			;6974
	add a,0c6h		;6975
	call p,0cbbfh		;6977
	ld l,h			;697a
	ld l,h			;697b
	res 6,l			;697c
	ld sp,hl		;697e
	nop			;697f
	sub d			;6980
	ld a,(hl)		;6981
	jr c,l690ah		;6982
	add a,b			;6984
	ccf			;6985
	ld a,a			;6986
	dec a			;6987
	ld a,a			;6988
	jr l69c9h		;6989
	inc e			;698b
	ld a,01ch		;698c
	nop			;698e
	nop			;698f
	in a,(0e1h)		;6990
	pop hl			;6992
	dec b			;6993
	rra			;6994
	add a,c			;6995
	rrca			;6996
l6997h:
	nop			;6997
	ld (bc),a		;6998
	di			;6999
	add a,c			;699a
	ld b,e			;699b
	inc bc			;699c
	ld d,h			;699d
	ld (bc),a		;699e
	sub l			;699f
	add a,d			;69a0
l69a1h:
	ld d,e			;69a1
	ld d,h			;69a2
	dec b			;69a3
	sub l			;69a4
	adc a,c			;69a5
	ld d,h			;69a6
	ei			;69a7
	cp h			;69a8
	call m,0ccb6h		;69a9
	ld l,e			;69ac
	rst 8			;69ad
	or e			;69ae
	nop			;69af
	sub c			;69b0
	ld a,a			;69b1
	dec a			;69b2
	ld a,a			;69b3
	ccf			;69b4
	add a,b			;69b5
	add a,(hl)		;69b6
	jr c,l6a37h		;69b7
	in a,(0ffh)		;69b9
	rst 38h			;69bb
	inc e			;69bc
	ld a,01ch		;69bd
	ld a,018h		;69bf
	rrca			;69c1
	dec b			;69c2
	ret po			;69c3
	ld (bc),a		;69c4
	ld e,000h		;69c5
	ld (bc),a		;69c7
	sub l			;69c8
l69c9h:
	inc bc			;69c9
	ld d,h			;69ca
	add a,e			;69cb
	ld b,e			;69cc
	di			;69cd
	di			;69ce
	inc bc			;69cf
	ld d,h			;69d0
	inc bc			;69d1
	sub l			;69d2
	adc a,d			;69d3
	ld d,h			;69d4
	ld d,e			;69d5
	or e			;69d6
	call m,0ccb6h		;69d7
	ld l,e			;69da
	rst 8			;69db
	res 7,a			;69dc
	nop			;69de
	sub d			;69df
	ld a,01fh		;69e0
	ret nz			;69e2
	ret m			;69e3
	cp 007h			;69e4
	ret nz			;69e6
	ret po			;69e7
	jr l6a68h		;69e8
	inc a			;69ea
	ld a,(hl)		;69eb
	jp 00ffch		;69ec
	ret m			;69ef
	ld (hl),b		;69f0
	ld (hl),b		;69f1
	inc bc			;69f2
	ret p			;69f3
	ld (bc),a		;69f4
	rrca			;69f5
	add a,c			;69f6
	rlca			;69f7
	dec b			;69f8
	ret p			;69f9
	add a,e			;69fa
	ld sp,hl		;69fb
	rst 38h			;69fc
	ret po			;69fd
	inc bc			;69fe
	ret p			;69ff
	add a,l			;6a00
	ld b,b			;6a01
	ccf			;6a02
	ret p			;6a03
	ret po			;6a04
	ret po			;6a05
	inc bc			;6a06
	ret p			;6a07
	dec b			;6a08
	rrca			;6a09
	adc a,e			;6a0a
l6a0bh:
	ret po			;6a0b
	ld bc,0ffffh		;6a0c
	rra			;6a0f
	rra			;6a10
	call m,0e13fh		;6a11
	add a,b			;6a14
	ld bc,00f03h		;6a15
	and (hl)		;6a18
	call m,0fef0h		;6a19
	rra			;6a1c
	ret p			;6a1d
	ret p			;6a1e
	rrca			;6a1f
	ccf			;6a20
	pop hl			;6a21
	ret nz			;6a22
	ret nz			;6a23
	ret p			;6a24
	rst 38h			;6a25
	inc bc			;6a26
	nop			;6a27
	ret nz			;6a28
	ret p			;6a29
	ret m			;6a2a
	ret po			;6a2b
	ret p			;6a2c
	ret p			;6a2d
	ret nz			;6a2e
	ret po			;6a2f
	ld a,a			;6a30
	jr nz,$-30		;6a31
	ret p			;6a33
	rrca			;6a34
	rrca			;6a35
	ret po			;6a36
l6a37h:
	ret po			;6a37
	rrca			;6a38
	rrca			;6a39
	ret p			;6a3a
	rlca			;6a3b
	ret po			;6a3c
	call m,0040fh		;6a3d
	rlca			;6a40
	sbc a,d			;6a41
	ret p			;6a42
	call m,00f3fh		;6a43
	jp 0c3ffh		;6a46
	jr l6a0bh		;6a49
	pop hl			;6a4b
	ccf			;6a4c
	ccf			;6a4d
	ld a,l			;6a4e
	add a,b			;6a4f
	ret p			;6a50
	ld a,a			;6a51
	call m,0cffch		;6a52
	rrca			;6a55
	inc bc			;6a56
	cp 0f0h			;6a57
	nop			;6a59
	ret p			;6a5a
	ret p			;6a5b
	inc bc			;6a5c
	ret m			;6a5d
	adc a,b			;6a5e
	ret p			;6a5f
	ccf			;6a60
	ret p			;6a61
	ret p			;6a62
	rrca			;6a63
	inc b			;6a64
	inc e			;6a65
	ret m			;6a66
	inc bc			;6a67
l6a68h:
	rrca			;6a68
	nop			;6a69
	add a,d			;6a6a
	ld d,h			;6a6b
	ld b,e			;6a6c
	inc bc			;6a6d
	di			;6a6e
	sbc a,b			;6a6f
	ei			;6a70
	set 1,e			;6a71
	sub l			;6a73
	ld d,h			;6a74
	ld d,h			;6a75
	ld b,e			;6a76
	di			;6a77
	call m,0c6cbh		;6a78
	ld d,h			;6a7b
	ld c,a			;6a7c
	ei			;6a7d
	cp h			;6a7e
	add a,0c6h		;6a7f
	call m,0b6fbh		;6a81
	call z,0cf6bh		;6a84
	cp a			;6a87
	inc bc			;6a88
	di			;6a89
	sub b			;6a8a
	add a,0bch		;6a8b
	ld e,e			;6a8d
	ld d,h			;6a8e
	call p,0f4f3h		;6a8f
	ld b,l			;6a92
	push af			;6a93
	cp a			;6a94
	set 1,e			;6a95
	or h			;6a97
	ld c,a			;6a98
	di			;6a99
	inc (hl)		;6a9a
	inc bc			;6a9b
	rlc d			;6a9c
	ld l,h			;6a9e
	add a,e			;6a9f
	rst 8			;6aa0
	ei			;6aa1
	ei			;6aa2
	inc b			;6aa3
	add a,081h		;6aa4
	cp h			;6aa6
	inc bc			;6aa7
	ei			;6aa8
	adc a,d			;6aa9
	set 0,(hl)		;6aaa
	res 7,a			;6aac
	cp a			;6aae
	set 0,(hl)		;6aaf
	add a,0b4h		;6ab1
l6ab3h:
	or l			;6ab3
	inc bc			;6ab4
	ei			;6ab5
	inc bc			;6ab6
	res 2,b			;6ab7
	ld d,h			;6ab9
	ld b,e			;6aba
	or l			;6abb
	ld sp,hl		;6abc
	push af			;6abd
	ei			;6abe
	ei			;6abf
	or h			;6ac0
	ld d,h			;6ac1
	ld d,h			;6ac2
	ld b,e			;6ac3
	ld d,e			;6ac4
	ld b,e			;6ac5
	ld b,e			;6ac6
	ld d,h			;6ac7
	ld d,h			;6ac8
	inc bc			;6ac9
	call m,0f388h		;6aca
	call p,04435h		;6acd
	ld d,e			;6ad0
	ei			;6ad1
	ei			;6ad2
l6ad3h:
	call m,0fb04h		;6ad3
	adc a,(hl)		;6ad6
	set 0,(hl)		;6ad7
	add a,0cbh		;6ad9
	rst 38h			;6adb
	and (hl)		;6adc
	or 0fch			;6add
	call m,0cbcbh		;6adf
	or e			;6ae2
	ei			;6ae3
	add a,003h		;6ae4
	res 2,b			;6ae6
	or l			;6ae8
	or h			;6ae9
	or e			;6aea
	call p,0b4b5h		;6aeb
	ei			;6aee
	di			;6aef
	ld b,e			;6af0
l6af1h:
	ld b,e			;6af1
	sub l			;6af2
	sub l			;6af3
	sub h			;6af4
	push af			;6af5
	ccf			;6af6
	ld b,e			;6af7
	nop			;6af8
	add a,e			;6af9
	rst 38h			;6afa
	ret nz			;6afb
	cp a			;6afc
	inc bc			;6afd
	ret po			;6afe
	adc a,a			;6aff
	sbc a,a			;6b00
	ret po			;6b01
	jp 0f03fh		;6b02
	ret p			;6b05
	ret m			;6b06
	ret m			;6b07
	rlca			;6b08
	rlca			;6b09
	rra			;6b0a
	rra			;6b0b
	ld h,b			;6b0c
	ret po			;6b0d
	rst 38h			;6b0e
	inc bc			;6b0f
	ret po			;6b10
	ld (bc),a		;6b11
	ret m			;6b12
	inc bc			;6b13
	rlca			;6b14
	inc bc			;6b15
	ret p			;6b16
	add a,c			;6b17
	ld a,a			;6b18
	inc b			;6b19
	ret po			;6b1a
	sub e			;6b1b
	ccf			;6b1c
	add a,b			;6b1d
	rst 38h			;6b1e
	rst 38h			;6b1f
	nop			;6b20
	nop			;6b21
	rst 38h			;6b22
	rst 38h			;6b23
	nop			;6b24
	nop			;6b25
	rst 38h			;6b26
	jp 0007eh		;6b27
	inc c			;6b2a
	inc bc			;6b2b
	inc a			;6b2c
	inc a			;6b2d
	add a,e			;6b2e
	inc b			;6b2f
	jr c,l6ab3h		;6b30
	ccf			;6b32
	inc bc			;6b33
	rrca			;6b34
	ld (bc),a		;6b35
	ret po			;6b36
	inc b			;6b37
	inc a			;6b38
	add a,e			;6b39
	adc a,a			;6b3a
	ret p			;6b3b
	ccf			;6b3c
	ld b,00fh		;6b3d
	adc a,c			;6b3f
	rlca			;6b40
	call m,01ffch		;6b41
	ret p			;6b44
	ld bc,0c3fdh		;6b45
	inc bc			;6b48
	dec b			;6b49
	jp 0f083h		;6b4a
	ld b,e			;6b4d
	inc e			;6b4e
	inc b			;6b4f
	jr c,l6ad3h		;6b50
	ld a,a			;6b52
	inc bc			;6b53
	rrca			;6b54
	adc a,b			;6b55
	ld h,e			;6b56
	ld a,03ch		;6b57
	ld h,b			;6b59
	rst 20h			;6b5a
	rlca			;6b5b
	inc a			;6b5c
	inc a			;6b5d
	inc b			;6b5e
	rrca			;6b5f
	add a,(hl)		;6b60
	nop			;6b61
l6b62h:
	rrca			;6b62
	rrca			;6b63
	rlca			;6b64
	jp 0037eh		;6b65
	jp 03083h		;6b68
	ld c,0feh		;6b6b
	inc b			;6b6d
	jr c,l6af1h		;6b6e
	ccf			;6b70
	inc b			;6b71
	rrca			;6b72
	adc a,b			;6b73
	ret po			;6b74
	ld e,001h		;6b75
	jr c,$-31		;6b77
	rst 0			;6b79
	rst 0			;6b7a
	ccf			;6b7b
	rlca			;6b7c
	rrca			;6b7d
	add a,l			;6b7e
	inc bc			;6b7f
	inc c			;6b80
	djnz l6b62h		;6b81
	nop			;6b83
	inc bc			;6b84
	inc a			;6b85
	sub b			;6b86
	ld bc,018f8h		;6b87
	ld h,b			;6b8a
	add a,b			;6b8b
	jp 0c3ffh		;6b8c
	adc a,a			;6b8f
	add a,b			;6b90
	inc a			;6b91
	inc a			;6b92
	ld bc,0c3bdh		;6b93
	add a,e			;6b96
	nop			;6b97
	inc bc			;6b98
	call m,0fba3h		;6b99
	cp h			;6b9c
	add a,0c6h		;6b9d
	set 6,e			;6b9f
	call m,0bffch		;6ba1
	bit 5,h			;6ba4
	ld l,h			;6ba6
	set 1,e			;6ba7
	ld l,h			;6ba9
	ld l,h			;6baa
	set 7,e			;6bab
	ei			;6bad
	cp h			;6bae
	add a,0cbh		;6baf
	ld l,h			;6bb1
	ld l,h			;6bb2
	res 7,a			;6bb3
	cp a			;6bb5
	bit 5,h			;6bb6
	call m,034f3h		;6bb8
	ld b,l			;6bbb
	ld e,c			;6bbc
	ld b,e			;6bbd
	inc b			;6bbe
	di			;6bbf
	ld (bc),a		;6bc0
	ld d,h			;6bc1
	ld (bc),a		;6bc2
	sub h			;6bc3
	inc bc			;6bc4
	di			;6bc5
	ld (bc),a		;6bc6
	ret p			;6bc7
	and c			;6bc8
	ld h,c			;6bc9
	ld h,d			;6bca
	djnz l6bdch		;6bcb
	rrca			;6bcd
	sub l			;6bce
	ld d,h			;6bcf
	ld b,e			;6bd0
	ccf			;6bd1
	ret p			;6bd2
	or (hl)			;6bd3
	ld h,b			;6bd4
	or c			;6bd5
	or 060h			;6bd6
	djnz l6bfbh		;6bd8
	djnz l6bebh		;6bda
l6bdch:
	or 0f6h			;6bdc
	ret p			;6bde
	or (hl)			;6bdf
	ld h,b			;6be0
	or b			;6be1
	inc c			;6be2
	or b			;6be3
	add a,0b0h		;6be4
	call m,0c206h		;6be6
	ld h,b			;6be9
	inc bc			;6bea
l6bebh:
	ret p			;6beb
	adc a,0f1h		;6bec
	di			;6bee
	ret p			;6bef
	ld bc,00112h		;6bf0
	or 0f0h			;6bf3
	ld h,b			;6bf5
	sub l			;6bf6
	ld d,h			;6bf7
	ld b,e			;6bf8
	ccf			;6bf9
	ret p			;6bfa
l6bfbh:
	or b			;6bfb
	ld h,(hl)		;6bfc
	or b			;6bfd
	ld h,b			;6bfe
	djnz l6c22h		;6bff
	ld h,c			;6c01
	or 060h			;6c02
	djnz $+35		;6c04
	ret p			;6c06
	or (hl)			;6c07
	ld h,b			;6c08
	cp h			;6c09
	or b			;6c0a
	or b			;6c0b
	add a,0b0h		;6c0c
	di			;6c0e
	ret p			;6c0f
	ret p			;6c10
	ld bc,l6102h		;6c11
l6c14h:
	ld h,b			;6c14
	or 095h			;6c15
	ld d,h			;6c17
	ld b,e			;6c18
	ccf			;6c19
	ret p			;6c1a
	or c			;6c1b
	ld h,b			;6c1c
	or (hl)			;6c1d
	nop			;6c1e
	ld h,c			;6c1f
	ld h,d			;6c20
l6c21h:
	ld h,c			;6c21
l6c22h:
	djnz l6c14h		;6c22
	ret p			;6c24
	ld bc,0b0f0h		;6c25
	ld h,b			;6c28
	or (hl)			;6c29
	nop			;6c2a
	or c			;6c2b
	ret nz			;6c2c
	or (hl)			;6c2d
	ld h,d			;6c2e
	ld h,c			;6c2f
	ld h,b			;6c30
	or 020h			;6c31
	jr nz,l6c45h		;6c33
	rrca			;6c35
	rrca			;6c36
	or 061h			;6c37
	ld h,d			;6c39
	ld h,c			;6c3a
	inc bc			;6c3b
	ret p			;6c3c
	add a,h			;6c3d
	add a,061h		;6c3e
	jr nz,l6c52h		;6c40
	inc b			;6c42
	ret p			;6c43
	nop			;6c44
l6c45h:
	xor b			;6c45
	rla			;6c46
	inc hl			;6c47
	dec bc			;6c48
	rra			;6c49
	daa			;6c4a
	add a,b			;6c4b
	ret m			;6c4c
	ccf			;6c4d
	inc a			;6c4e
	inc a			;6c4f
	ld a,(hl)		;6c50
	inc c			;6c51
l6c52h:
	ld e,07fh		;6c52
	add a,e			;6c54
	add a,e			;6c55
	inc a			;6c56
	inc a			;6c57
	ld a,(hl)		;6c58
	jr nc,l6cd3h		;6c59
	cp 0c1h			;6c5b
	rst 38h			;6c5d
	ccf			;6c5e
	ret m			;6c5f
	add a,b			;6c60
	daa			;6c61
	rra			;6c62
	dec bc			;6c63
	inc hl			;6c64
	rla			;6c65
	rst 38h			;6c66
	nop			;6c67
	ld a,a			;6c68
	ld e,00ch		;6c69
	ld a,(hl)		;6c6b
	inc a			;6c6c
	ld a,(hl)		;6c6d
	nop			;6c6e
	dec b			;6c6f
	ld b,e			;6c70
	ld (bc),a		;6c71
	di			;6c72
	add a,d			;6c73
	ret p			;6c74
	ld d,h			;6c75
	inc bc			;6c76
	sub l			;6c77
	add a,l			;6c78
	ld d,h			;6c79
	ld b,e			;6c7a
	ld b,e			;6c7b
	rst 38h			;6c7c
	ld d,h			;6c7d
	inc bc			;6c7e
	sub l			;6c7f
	add a,a			;6c80
	ld d,h			;6c81
	ld b,e			;6c82
	ld b,e			;6c83
	ret p			;6c84
	ret p			;6c85
	di			;6c86
	di			;6c87
	dec b			;6c88
	ld b,e			;6c89
	ld (bc),a		;6c8a
	di			;6c8b
	add a,d			;6c8c
	ld b,e			;6c8d
	ld d,h			;6c8e
	inc bc			;6c8f
	sub l			;6c90
	add a,c			;6c91
	ld d,h			;6c92
	nop			;6c93
	add a,c			;6c94
	rst 38h			;6c95
	ld b,00fh		;6c96
	sub e			;6c98
	ret m			;6c99
	ld a,(hl)		;6c9a
	jp 01881h		;6c9b
	jr l6c21h		;6c9e
	jp 0e07eh		;6ca0
	call m,0f0e7h		;6ca3
	ret p			;6ca6
	rst 20h			;6ca7
	call m,0ffe0h		;6ca8
	nop			;6cab
	inc b			;6cac
	jp po,00002h		;6cad
	rlca			;6cb0
	rrca			;6cb1
	add a,d			;6cb2
	ret p			;6cb3
	rrca			;6cb4
	ld b,0f0h		;6cb5
	add a,e			;6cb7
	rrca			;6cb8
	ret nz			;6cb9
	rra			;6cba
	inc b			;6cbb
	rrca			;6cbc
	add a,h			;6cbd
	rra			;6cbe
	ret nz			;6cbf
	nop			;6cc0
	nop			;6cc1
	inc bc			;6cc2
	rst 38h			;6cc3
	ld (bc),a		;6cc4
	nop			;6cc5
	ld (bc),a		;6cc6
	rst 38h			;6cc7
	ld b,0f0h		;6cc8
	add a,d			;6cca
	rst 28h			;6ccb
	rst 20h			;6ccc
	inc bc			;6ccd
	defb 0fdh,087h,0ffh ;illegal sequence	;6cce
	cp a			;6cd1
	cp a			;6cd2
l6cd3h:
	adc a,a			;6cd3
	inc bc			;6cd4
	add a,a			;6cd5
	rst 20h			;6cd6
	inc b			;6cd7
	rst 0			;6cd8
	add a,(hl)		;6cd9
	ex (sp),hl		;6cda
	rra			;6cdb
	rra			;6cdc
	ld a,a			;6cdd
	rst 38h			;6cde
	rst 38h			;6cdf
	inc bc			;6ce0
	rst 20h			;6ce1
	add a,d			;6ce2
	rst 38h			;6ce3
	nop			;6ce4
	inc b			;6ce5
	ret m			;6ce6
	adc a,h			;6ce7
	cp 0ffh			;6ce8
	ret nz			;6cea
	ret nz			;6ceb
	ret po			;6cec
	ret m			;6ced
	rst 38h			;6cee
	ccf			;6cef
	ret po			;6cf0
	ret po			;6cf1
	rlca			;6cf2
	call m,0f804h		;6cf3
	ld (bc),a		;6cf6
	rra			;6cf7
	nop			;6cf8
	ld (bc),a		;6cf9
	di			;6cfa
	adc a,l			;6cfb
	inc (hl)		;6cfc
	ld b,l			;6cfd
	ld b,l			;6cfe
	inc (hl)		;6cff
	di			;6d00
	di			;6d01
	set 0,(hl)		;6d02
	add a,0a6h		;6d04
	and (hl)		;6d06
	add a,0c6h		;6d07
	inc bc			;6d09
	rlc h			;6d0a
	add a,002h		;6d0c
	rlc d			;6d0e
	ei			;6d10
	adc a,h			;6d11
	bit 5,h			;6d12
	ld l,h			;6d14
	set 1,e			;6d15
	rst 38h			;6d17
	ld b,e			;6d18
	ld d,h			;6d19
	ld b,e			;6d1a
	cp a			;6d1b
	ccf			;6d1c
	ld c,e			;6d1d
	inc b			;6d1e
	ld d,h			;6d1f
	sub c			;6d20
	ld b,e			;6d21
	add hl,sp		;6d22
	dec (hl)		;6d23
	ld b,e			;6d24
	ld d,h			;6d25
	ld d,h			;6d26
	di			;6d27
	ld b,e			;6d28
	ld d,h			;6d29
	sub l			;6d2a
	sub l			;6d2b
	ld d,h			;6d2c
	ld b,e			;6d2d
	di			;6d2e
	di			;6d2f
	ld d,h			;6d30
	ld d,h			;6d31
	inc bc			;6d32
	sub l			;6d33
	ld (bc),a		;6d34
	inc (hl)		;6d35
	ld (bc),a		;6d36
	di			;6d37
	add a,l			;6d38
	call p,0f5f5h		;6d39
	call p,003f3h		;6d3c
	rst 30h			;6d3f
	add a,c			;6d40
	cp 005h			;6d41
	rst 30h			;6d43
	adc a,c			;6d44
	jp p,0f0f1h		;6d45
	ret p			;6d48
	jp p,0f1f2h		;6d49
	ret p			;6d4c
	add a,004h		;6d4d
	di			;6d4f
	adc a,b			;6d50
	rst 30h			;6d51
	cp 0feh			;6d52
	cp a			;6d54
	cp a			;6d55
	di			;6d56
	call p,003f5h		;6d57
	di			;6d5a
	dec b			;6d5b
	rst 30h			;6d5c
	adc a,e			;6d5d
	ei			;6d5e
	bit 5,h			;6d5f
	rst 30h			;6d61
	ld (hl),e		;6d62
	ld (hl),e		;6d63
	ld (hl),l		;6d64
	call p,0fbf3h		;6d65
	rlc b			;6d68
	sub h			;6d6a
	ld a,01fh		;6d6b
	ret nz			;6d6d
	ret m			;6d6e
	cp 007h			;6d6f
	ret nz			;6d71
	ret po			;6d72
	jr l6df3h		;6d73
	inc a			;6d75
	ld a,(hl)		;6d76
	jp 00ffch		;6d77
	rlca			;6d7a
	ld e,007h		;6d7b
	rlca			;6d7d
	ccf			;6d7e
	inc bc			;6d7f
	ret po			;6d80
	add a,l			;6d81
	inc bc			;6d82
	inc e			;6d83
	ccf			;6d84
	ld a,07fh		;6d85
	inc b			;6d87
	ret p			;6d88
	add a,c			;6d89
	dec h			;6d8a
	inc bc			;6d8b
	rrca			;6d8c
	add a,a			;6d8d
	ret m			;6d8e
	call m,0070fh		;6d8f
	add a,b			;6d92
	ret nz			;6d93
	ret nz			;6d94
	inc bc			;6d95
	ccf			;6d96
	ld (bc),a		;6d97
	ret po			;6d98
	add a,c			;6d99
	nop			;6d9a
	dec b			;6d9b
	ret po			;6d9c
	add a,d			;6d9d
	rra			;6d9e
	ret p			;6d9f
	nop			;6da0
	add a,d			;6da1
	ld d,h			;6da2
	ld b,e			;6da3
	inc b			;6da4
	di			;6da5
	ld (bc),a		;6da6
	ld b,e			;6da7
	sub d			;6da8
	sub l			;6da9
	ld d,h			;6daa
	ld d,h			;6dab
	ld b,e			;6dac
	di			;6dad
	call p,05443h		;6dae
	ld d,h			;6db1
	ld b,e			;6db2
	call p,0f3f4h		;6db3
	inc (hl)		;6db6
	ld b,l			;6db7
	ld b,l			;6db8
	ld b,e			;6db9
	ld b,e			;6dba
	inc bc			;6dbb
	ld d,h			;6dbc
	sbc a,b			;6dbd
	ld e,a			;6dbe
	ld b,e			;6dbf
	call p,05495h		;6dc0
	ld c,a			;6dc3
	di			;6dc4
	ld b,e			;6dc5
	ld d,h			;6dc6
	ld d,h			;6dc7
	ld b,e			;6dc8
	ld d,h			;6dc9
	ld b,e			;6dca
	ccf			;6dcb
	ccf			;6dcc
	ld b,e			;6dcd
	ld d,h			;6dce
	ld d,h			;6dcf
	ld b,e			;6dd0
	ld b,e			;6dd1
	call p,04435h		;6dd2
	ld d,e			;6dd5
	inc bc			;6dd6
	ld b,e			;6dd7
	nop			;6dd8
	inc bc			;6dd9
	inc a			;6dda
	sub l			;6ddb
	nop			;6ddc
	jp 087ffh		;6ddd
	ld (hl),b		;6de0
	ld a,01fh		;6de1
	ret nz			;6de3
	ret m			;6de4
	cp 007h			;6de5
	ld (hl),b		;6de7
	inc e			;6de8
	jr l6e69h		;6de9
	inc a			;6deb
	ld a,(hl)		;6dec
	jp 03dfch		;6ded
	nop			;6df0
	dec b			;6df1
	rrca			;6df2
l6df3h:
	add a,e			;6df3
	ld sp,hl		;6df4
	rst 38h			;6df5
	ret po			;6df6
	nop			;6df7
	adc a,d			;6df8
	djnz $+35		;6df9
	djnz l6e0dh		;6dfb
	ret p			;6dfd
	ret p			;6dfe
	call p,05454h		;6dff
	ld b,e			;6e02
	inc bc			;6e03
	di			;6e04
	adc a,b			;6e05
	ret p			;6e06
	djnz l6e19h		;6e07
	sub l			;6e09
	ld d,h			;6e0a
	ld d,h			;6e0b
	ld b,e			;6e0c
l6e0dh:
	di			;6e0d
	inc bc			;6e0e
	ret p			;6e0f
	add a,l			;6e10
	ld d,b			;6e11
	ld b,h			;6e12
	dec (hl)		;6e13
	call p,003f3h		;6e14
	ret p			;6e17
	nop			;6e18
l6e19h:
	ld (bc),a		;6e19
	pop hl			;6e1a
	ld b,01fh		;6e1b
	inc bc			;6e1d
	rrca			;6e1e
	add a,c			;6e1f
	jr c,l6e25h		;6e20
	inc a			;6e22
	adc a,e			;6e23
	nop			;6e24
l6e25h:
	ld a,l			;6e25
	jr c,l6e65h		;6e26
	ret nz			;6e28
	cp 087h			;6e29
	ret p			;6e2b
	ret p			;6e2c
	ret po			;6e2d
	ret po			;6e2e
	inc bc			;6e2f
	ccf			;6e30
	ld (bc),a		;6e31
	ret nz			;6e32
	add a,l			;6e33
	add a,b			;6e34
	ret m			;6e35
	rrca			;6e36
	call m,003f8h		;6e37
	rrca			;6e3a
	add a,c			;6e3b
	dec h			;6e3c
	nop			;6e3d
	sub e			;6e3e
	di			;6e3f
	inc (hl)		;6e40
	call p,04435h		;6e41
	ld d,e			;6e44
	ld c,a			;6e45
	inc sp			;6e46
	ld d,h			;6e47
	ld b,e			;6e48
	ccf			;6e49
	sub e			;6e4a
	ld d,h			;6e4b
	ld b,e			;6e4c
	ccf			;6e4d
	ccf			;6e4e
	ld d,h			;6e4f
	ld d,h			;6e50
	ld b,e			;6e51
	inc bc			;6e52
	di			;6e53
	sub d			;6e54
	ld b,e			;6e55
	ld d,h			;6e56
	ld b,e			;6e57
	ld d,h			;6e58
	ld d,h			;6e59
	ld b,e			;6e5a
	ccf			;6e5b
	ccf			;6e5c
	ld b,e			;6e5d
	ld d,h			;6e5e
	or h			;6e5f
	ld d,h			;6e60
	ld d,h			;6e61
	ld b,e			;6e62
	di			;6e63
	ld c,a			;6e64
l6e65h:
	ld d,h			;6e65
	sub l			;6e66
	nop			;6e67
	rst 38h			;6e68
l6e69h:
	rst 38h			;6e69
	rst 38h			;6e6a
	rst 38h			;6e6b
	rst 38h			;6e6c
	rst 38h			;6e6d
	rst 38h			;6e6e
	rst 38h			;6e6f
	rst 38h			;6e70
	rst 38h			;6e71
	rst 38h			;6e72
	rst 38h			;6e73
	rst 38h			;6e74
	rst 38h			;6e75
	rst 38h			;6e76
	rst 38h			;6e77
	rst 38h			;6e78
	rst 38h			;6e79
	rst 38h			;6e7a
	rst 38h			;6e7b
	rst 38h			;6e7c
	rst 38h			;6e7d
	rst 38h			;6e7e
	rst 38h			;6e7f
	rst 38h			;6e80
	rst 38h			;6e81
	rst 38h			;6e82
	rst 38h			;6e83
	rst 38h			;6e84
	rst 38h			;6e85
	rst 38h			;6e86
	rst 38h			;6e87
	rst 38h			;6e88
	rst 38h			;6e89
	rst 38h			;6e8a
	rst 38h			;6e8b
	rst 38h			;6e8c
	rst 38h			;6e8d
	rst 38h			;6e8e
	rst 38h			;6e8f
	rst 38h			;6e90
	rst 38h			;6e91
	rst 38h			;6e92
	rst 38h			;6e93
	rst 38h			;6e94
	rst 38h			;6e95
	rst 38h			;6e96
	rst 38h			;6e97
	rst 38h			;6e98
	rst 38h			;6e99
	rst 38h			;6e9a
	rst 38h			;6e9b
	rst 38h			;6e9c
	rst 38h			;6e9d
	rst 38h			;6e9e
	rst 38h			;6e9f
	rst 38h			;6ea0
	rst 38h			;6ea1
	rst 38h			;6ea2
	rst 38h			;6ea3
	rst 38h			;6ea4
	rst 38h			;6ea5
	rst 38h			;6ea6
	rst 38h			;6ea7
	rst 38h			;6ea8
	rst 38h			;6ea9
	rst 38h			;6eaa
	rst 38h			;6eab
	rst 38h			;6eac
	rst 38h			;6ead
	rst 38h			;6eae
	rst 38h			;6eaf
	rst 38h			;6eb0
	rst 38h			;6eb1
	rst 38h			;6eb2
	rst 38h			;6eb3
	rst 38h			;6eb4
	rst 38h			;6eb5
	rst 38h			;6eb6
	rst 38h			;6eb7
	rst 38h			;6eb8
	rst 38h			;6eb9
	rst 38h			;6eba
	rst 38h			;6ebb
	rst 38h			;6ebc
	rst 38h			;6ebd
	rst 38h			;6ebe
	rst 38h			;6ebf
	rst 38h			;6ec0
	rst 38h			;6ec1
	rst 38h			;6ec2
	rst 38h			;6ec3
	rst 38h			;6ec4
	rst 38h			;6ec5
	rst 38h			;6ec6
	rst 38h			;6ec7
	rst 38h			;6ec8
	rst 38h			;6ec9
	rst 38h			;6eca
	rst 38h			;6ecb
	rst 38h			;6ecc
	rst 38h			;6ecd
	rst 38h			;6ece
	rst 38h			;6ecf
	rst 38h			;6ed0
	rst 38h			;6ed1
	rst 38h			;6ed2
	rst 38h			;6ed3
	rst 38h			;6ed4
	rst 38h			;6ed5
	rst 38h			;6ed6
	rst 38h			;6ed7
	rst 38h			;6ed8
	rst 38h			;6ed9
	rst 38h			;6eda
	rst 38h			;6edb
	rst 38h			;6edc
	rst 38h			;6edd
	rst 38h			;6ede
	rst 38h			;6edf
	rst 38h			;6ee0
	rst 38h			;6ee1
	rst 38h			;6ee2
	rst 38h			;6ee3
	rst 38h			;6ee4
	rst 38h			;6ee5
	rst 38h			;6ee6
	rst 38h			;6ee7
	rst 38h			;6ee8
	rst 38h			;6ee9
	rst 38h			;6eea
	rst 38h			;6eeb
	rst 38h			;6eec
	rst 38h			;6eed
	rst 38h			;6eee
	rst 38h			;6eef
	rst 38h			;6ef0
	rst 38h			;6ef1
	rst 38h			;6ef2
	rst 38h			;6ef3
	rst 38h			;6ef4
	rst 38h			;6ef5
	rst 38h			;6ef6
	rst 38h			;6ef7
	rst 38h			;6ef8
	rst 38h			;6ef9
	rst 38h			;6efa
	rst 38h			;6efb
	rst 38h			;6efc
	rst 38h			;6efd
	rst 38h			;6efe
	rst 38h			;6eff
	rst 38h			;6f00
	rst 38h			;6f01
	rst 38h			;6f02
	rst 38h			;6f03
	rst 38h			;6f04
	rst 38h			;6f05
	rst 38h			;6f06
	rst 38h			;6f07
	rst 38h			;6f08
	rst 38h			;6f09
	rst 38h			;6f0a
	rst 38h			;6f0b
	rst 38h			;6f0c
	rst 38h			;6f0d
	rst 38h			;6f0e
	rst 38h			;6f0f
	rst 38h			;6f10
	rst 38h			;6f11
	rst 38h			;6f12
	rst 38h			;6f13
	rst 38h			;6f14
	rst 38h			;6f15
	rst 38h			;6f16
	rst 38h			;6f17
	rst 38h			;6f18
	rst 38h			;6f19
	rst 38h			;6f1a
	rst 38h			;6f1b
	rst 38h			;6f1c
	rst 38h			;6f1d
	rst 38h			;6f1e
	rst 38h			;6f1f
	rst 38h			;6f20
	rst 38h			;6f21
	rst 38h			;6f22
	rst 38h			;6f23
	rst 38h			;6f24
	rst 38h			;6f25
	rst 38h			;6f26
	rst 38h			;6f27
	rst 38h			;6f28
	rst 38h			;6f29
	rst 38h			;6f2a
	rst 38h			;6f2b
	rst 38h			;6f2c
	rst 38h			;6f2d
	rst 38h			;6f2e
	rst 38h			;6f2f
	rst 38h			;6f30
	rst 38h			;6f31
	rst 38h			;6f32
	rst 38h			;6f33
	rst 38h			;6f34
	rst 38h			;6f35
	rst 38h			;6f36
	rst 38h			;6f37
	rst 38h			;6f38
	rst 38h			;6f39
	rst 38h			;6f3a
	rst 38h			;6f3b
	rst 38h			;6f3c
	rst 38h			;6f3d
	rst 38h			;6f3e
	rst 38h			;6f3f
	rst 38h			;6f40
	rst 38h			;6f41
	rst 38h			;6f42
	rst 38h			;6f43
	rst 38h			;6f44
	rst 38h			;6f45
	rst 38h			;6f46
	rst 38h			;6f47
	rst 38h			;6f48
	rst 38h			;6f49
	rst 38h			;6f4a
	rst 38h			;6f4b
	rst 38h			;6f4c
	rst 38h			;6f4d
	rst 38h			;6f4e
	rst 38h			;6f4f
	rst 38h			;6f50
	rst 38h			;6f51
	rst 38h			;6f52
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
	rst 38h			;6f62
	rst 38h			;6f63
	rst 38h			;6f64
	rst 38h			;6f65
	rst 38h			;6f66
	rst 38h			;6f67
	rst 38h			;6f68
	rst 38h			;6f69
	rst 38h			;6f6a
	rst 38h			;6f6b
	rst 38h			;6f6c
	rst 38h			;6f6d
	rst 38h			;6f6e
	rst 38h			;6f6f
	rst 38h			;6f70
	rst 38h			;6f71
	rst 38h			;6f72
	rst 38h			;6f73
	rst 38h			;6f74
	rst 38h			;6f75
	rst 38h			;6f76
	rst 38h			;6f77
	rst 38h			;6f78
	rst 38h			;6f79
	rst 38h			;6f7a
	rst 38h			;6f7b
	rst 38h			;6f7c
	rst 38h			;6f7d
	rst 38h			;6f7e
	rst 38h			;6f7f
	rst 38h			;6f80
	rst 38h			;6f81
	rst 38h			;6f82
	rst 38h			;6f83
	rst 38h			;6f84
	rst 38h			;6f85
	rst 38h			;6f86
	rst 38h			;6f87
	rst 38h			;6f88
	rst 38h			;6f89
	rst 38h			;6f8a
	rst 38h			;6f8b
	rst 38h			;6f8c
	rst 38h			;6f8d
	rst 38h			;6f8e
	rst 38h			;6f8f
	rst 38h			;6f90
	rst 38h			;6f91
	rst 38h			;6f92
	rst 38h			;6f93
	rst 38h			;6f94
	rst 38h			;6f95
	rst 38h			;6f96
	rst 38h			;6f97
	rst 38h			;6f98
	rst 38h			;6f99
	rst 38h			;6f9a
	rst 38h			;6f9b
	rst 38h			;6f9c
	rst 38h			;6f9d
	rst 38h			;6f9e
	rst 38h			;6f9f
	rst 38h			;6fa0
	rst 38h			;6fa1
	rst 38h			;6fa2
	rst 38h			;6fa3
	rst 38h			;6fa4
	rst 38h			;6fa5
	rst 38h			;6fa6
	rst 38h			;6fa7
	rst 38h			;6fa8
	rst 38h			;6fa9
	rst 38h			;6faa
	rst 38h			;6fab
	rst 38h			;6fac
	rst 38h			;6fad
	rst 38h			;6fae
	rst 38h			;6faf
	rst 38h			;6fb0
	rst 38h			;6fb1
	rst 38h			;6fb2
	rst 38h			;6fb3
	rst 38h			;6fb4
	rst 38h			;6fb5
	rst 38h			;6fb6
	rst 38h			;6fb7
	rst 38h			;6fb8
	rst 38h			;6fb9
	rst 38h			;6fba
	rst 38h			;6fbb
	rst 38h			;6fbc
	rst 38h			;6fbd
	rst 38h			;6fbe
	rst 38h			;6fbf
	rst 38h			;6fc0
	rst 38h			;6fc1
	rst 38h			;6fc2
	rst 38h			;6fc3
	rst 38h			;6fc4
	rst 38h			;6fc5
	rst 38h			;6fc6
	rst 38h			;6fc7
	rst 38h			;6fc8
	rst 38h			;6fc9
	rst 38h			;6fca
	rst 38h			;6fcb
	rst 38h			;6fcc
	rst 38h			;6fcd
	rst 38h			;6fce
	rst 38h			;6fcf
	rst 38h			;6fd0
	rst 38h			;6fd1
	rst 38h			;6fd2
	rst 38h			;6fd3
	rst 38h			;6fd4
	rst 38h			;6fd5
	rst 38h			;6fd6
	rst 38h			;6fd7
	rst 38h			;6fd8
	rst 38h			;6fd9
	rst 38h			;6fda
	rst 38h			;6fdb
	rst 38h			;6fdc
	rst 38h			;6fdd
	rst 38h			;6fde
	rst 38h			;6fdf
	rst 38h			;6fe0
	rst 38h			;6fe1
	rst 38h			;6fe2
	rst 38h			;6fe3
	rst 38h			;6fe4
	rst 38h			;6fe5
	rst 38h			;6fe6
	rst 38h			;6fe7
	rst 38h			;6fe8
	rst 38h			;6fe9
	rst 38h			;6fea
	rst 38h			;6feb
	rst 38h			;6fec
	rst 38h			;6fed
	rst 38h			;6fee
	rst 38h			;6fef
	rst 38h			;6ff0
	rst 38h			;6ff1
	rst 38h			;6ff2
	rst 38h			;6ff3
	rst 38h			;6ff4
	rst 38h			;6ff5
	rst 38h			;6ff6
	rst 38h			;6ff7
	rst 38h			;6ff8
	rst 38h			;6ff9
	rst 38h			;6ffa
	rst 38h			;6ffb
	rst 38h			;6ffc
	rst 38h			;6ffd
	rst 38h			;6ffe
	rst 38h			;6fff
	nop			;7000
	nop			;7001
	nop			;7002
	nop			;7003
	nop			;7004
	nop			;7005
	nop			;7006
	nop			;7007
	nop			;7008
	nop			;7009
	nop			;700a
	nop			;700b
	nop			;700c
	nop			;700d
	nop			;700e
	nop			;700f
	nop			;7010
	nop			;7011
	nop			;7012
	nop			;7013
	nop			;7014
	nop			;7015
	nop			;7016
	nop			;7017
	nop			;7018
	nop			;7019
	nop			;701a
	nop			;701b
	nop			;701c
	nop			;701d
	nop			;701e
	nop			;701f
	nop			;7020
	nop			;7021
	nop			;7022
	nop			;7023
	nop			;7024
	nop			;7025
	nop			;7026
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
	nop			;7032
	nop			;7033
	ld bc,00200h		;7034
	nop			;7037
	nop			;7038
	nop			;7039
	scf			;703a
	nop			;703b
	jr c,l703eh		;703c
l703eh:
	add hl,sp		;703e
	nop			;703f
	nop			;7040
	nop			;7041
	ld e,a			;7042
	ld bc,00160h		;7043
	ld h,c			;7046
	ld bc,00162h		;7047
	ld h,e			;704a
	ld bc,00164h		;704b
	ld h,l			;704e
	ld bc,00166h		;704f
	ld h,a			;7052
	ld bc,00168h		;7053
	ld l,c			;7056
	ld bc,00166h		;7057
	ld h,a			;705a
	ld bc,0016ah		;705b
	ld l,e			;705e
	ld bc,00169h		;705f
	ld l,h			;7062
	ld bc,0016dh		;7063
	ld l,(hl)		;7066
	ld bc,0016fh		;7067
	nop			;706a
	nop			;706b
	nop			;706c
	nop			;706d
	nop			;706e
	nop			;706f
	nop			;7070
	nop			;7071
	inc bc			;7072
	nop			;7073
	inc b			;7074
	nop			;7075
	dec b			;7076
	nop			;7077
	nop			;7078
	nop			;7079
	adc a,e			;707a
	nop			;707b
	inc (hl)		;707c
	nop			;707d
	nop			;707e
	nop			;707f
	nop			;7080
	nop			;7081
	ld (hl),b		;7082
	ld bc,00171h		;7083
	ld (hl),d		;7086
	ld bc,00173h		;7087
	ld (hl),h		;708a
	ld bc,00175h		;708b
	halt			;708e
	ld bc,00177h		;708f
	ld a,b			;7092
	ld bc,00179h		;7093
	ld a,d			;7096
	ld bc,0017bh		;7097
	ld a,h			;709a
	ld bc,0017dh		;709b
	ld a,(hl)		;709e
	ld bc,0017fh		;709f
	nop			;70a2
	ld (bc),a		;70a3
	ld bc,00202h		;70a4
	ld (bc),a		;70a7
	inc bc			;70a8
	ld (bc),a		;70a9
	nop			;70aa
	nop			;70ab
	nop			;70ac
	nop			;70ad
	nop			;70ae
	nop			;70af
	ld b,000h		;70b0
	rlca			;70b2
	nop			;70b3
	ex af,af'		;70b4
	nop			;70b5
	nop			;70b6
	nop			;70b7
	nop			;70b8
	nop			;70b9
	dec (hl)		;70ba
	nop			;70bb
	ld (hl),000h		;70bc
	nop			;70be
	nop			;70bf
	nop			;70c0
	nop			;70c1
	inc b			;70c2
	ld (bc),a		;70c3
	dec b			;70c4
	ld (bc),a		;70c5
	ld b,002h		;70c6
	rlca			;70c8
	ld (bc),a		;70c9
	ex af,af'		;70ca
	ld (bc),a		;70cb
	add hl,bc		;70cc
	ld (bc),a		;70cd
	ld a,(bc)		;70ce
	ld (bc),a		;70cf
	dec bc			;70d0
	ld (bc),a		;70d1
	inc c			;70d2
	ld (bc),a		;70d3
	dec c			;70d4
	ld (bc),a		;70d5
	ld c,002h		;70d6
	rrca			;70d8
	ld (bc),a		;70d9
	djnz $+4		;70da
	ld de,01202h		;70dc
	ld (bc),a		;70df
	inc de			;70e0
	ld (bc),a		;70e1
	inc d			;70e2
	ld (bc),a		;70e3
	dec d			;70e4
	ld (bc),a		;70e5
	ld d,002h		;70e6
	rla			;70e8
	ld (bc),a		;70e9
	nop			;70ea
	nop			;70eb
	add hl,bc		;70ec
	nop			;70ed
	ld a,(bc)		;70ee
	nop			;70ef
	dec bc			;70f0
	nop			;70f1
	inc c			;70f2
	nop			;70f3
	dec c			;70f4
	nop			;70f5
	nop			;70f6
	nop			;70f7
	nop			;70f8
	nop			;70f9
	jr nc,l70fch		;70fa
l70fch:
	ld sp,00000h		;70fc
	nop			;70ff
	nop			;7100
	nop			;7101
	jr l7106h		;7102
	add hl,de		;7104
	ld (bc),a		;7105
l7106h:
	ld a,(de)		;7106
	ld (bc),a		;7107
	dec de			;7108
	ld (bc),a		;7109
	inc e			;710a
	ld (bc),a		;710b
	dec e			;710c
	ld (bc),a		;710d
	ld e,002h		;710e
	rra			;7110
	ld (bc),a		;7111
	add hl,de		;7112
	ld (bc),a		;7113
	jr nz,$+4		;7114
	ld hl,02202h		;7116
	ld (bc),a		;7119
	inc hl			;711a
	ld (bc),a		;711b
	inc h			;711c
	ld (bc),a		;711d
	dec h			;711e
	ld (bc),a		;711f
	ld h,002h		;7120
	daa			;7122
	ld (bc),a		;7123
	jr z,l7128h		;7124
	add hl,hl		;7126
	ld (bc),a		;7127
l7128h:
	ld hl,(00e02h)		;7128
	nop			;712b
	rrca			;712c
	nop			;712d
	djnz l7130h		;712e
l7130h:
	ld de,01200h		;7130
	nop			;7133
	inc de			;7134
	nop			;7135
	inc d			;7136
	nop			;7137
	dec d			;7138
	nop			;7139
	ld (03300h),a		;713a
	nop			;713d
	nop			;713e
	nop			;713f
	nop			;7140
	nop			;7141
	dec hl			;7142
	ld (bc),a		;7143
	inc l			;7144
	ld (bc),a		;7145
	dec l			;7146
	ld (bc),a		;7147
	ld l,002h		;7148
	cpl			;714a
	ld (bc),a		;714b
	jr nc,$+4		;714c
	ld sp,03202h		;714e
	ld (bc),a		;7151
	inc sp			;7152
	ld (bc),a		;7153
	inc (hl)		;7154
	ld (bc),a		;7155
	dec (hl)		;7156
	ld (bc),a		;7157
	ld (hl),002h		;7158
	scf			;715a
	ld (bc),a		;715b
	jr c,l7160h		;715c
	add hl,sp		;715e
	ld (bc),a		;715f
l7160h:
	ld a,(03b02h)		;7160
	ld (bc),a		;7163
	inc a			;7164
	ld (bc),a		;7165
	dec a			;7166
	ld (bc),a		;7167
	ld a,002h		;7168
	ld d,000h		;716a
	rla			;716c
	nop			;716d
	jr l7170h		;716e
l7170h:
	add hl,de		;7170
	nop			;7171
	ld a,(de)		;7172
	nop			;7173
	dec de			;7174
	nop			;7175
	nop			;7176
	nop			;7177
	nop			;7178
	nop			;7179
	nop			;717a
	nop			;717b
	ld hl,(08c00h)		;717c
	nop			;717f
	nop			;7180
	nop			;7181
	ccf			;7182
	ld (bc),a		;7183
	ld b,b			;7184
	ld (bc),a		;7185
	ld b,c			;7186
	ld (bc),a		;7187
	ld b,d			;7188
	ld (bc),a		;7189
	ld b,e			;718a
	ld (bc),a		;718b
	ld b,h			;718c
	ld (bc),a		;718d
	ld b,l			;718e
	ld (bc),a		;718f
	ld b,(hl)		;7190
	ld (bc),a		;7191
	ld b,a			;7192
	ld (bc),a		;7193
	ld c,b			;7194
	ld (bc),a		;7195
	ld c,c			;7196
	ld (bc),a		;7197
	ld c,d			;7198
	ld (bc),a		;7199
	ld c,e			;719a
	ld (bc),a		;719b
	ld c,h			;719c
	ld (bc),a		;719d
	ld c,l			;719e
	ld (bc),a		;719f
	ld c,(hl)		;71a0
	ld (bc),a		;71a1
	ld c,a			;71a2
	ld (bc),a		;71a3
	ld d,b			;71a4
	ld (bc),a		;71a5
	ld c,c			;71a6
	ld (bc),a		;71a7
	ld d,c			;71a8
	ld (bc),a		;71a9
	nop			;71aa
	nop			;71ab
	nop			;71ac
	nop			;71ad
	nop			;71ae
	nop			;71af
	inc e			;71b0
	nop			;71b1
	dec e			;71b2
	nop			;71b3
	ld e,000h		;71b4
	nop			;71b6
	nop			;71b7
	nop			;71b8
	nop			;71b9
	dec hl			;71ba
	nop			;71bb
	inc l			;71bc
	nop			;71bd
	dec l			;71be
	nop			;71bf
	nop			;71c0
	nop			;71c1
	ld d,d			;71c2
	ld (bc),a		;71c3
	ld d,e			;71c4
	ld (bc),a		;71c5
	ld d,h			;71c6
	ld (bc),a		;71c7
	ld d,l			;71c8
	ld (bc),a		;71c9
	ld d,(hl)		;71ca
	ld (bc),a		;71cb
	ld d,a			;71cc
	ld (bc),a		;71cd
	ld e,b			;71ce
	ld (bc),a		;71cf
	ld e,c			;71d0
	ld (bc),a		;71d1
	ld e,d			;71d2
	ld (bc),a		;71d3
	ld e,e			;71d4
	ld (bc),a		;71d5
	ld e,e			;71d6
	ld (bc),a		;71d7
	ld e,e			;71d8
	ld (bc),a		;71d9
	ld e,h			;71da
	ld (bc),a		;71db
	ld e,l			;71dc
	ld (bc),a		;71dd
	ld e,(hl)		;71de
	ld (bc),a		;71df
	ld e,a			;71e0
	ld (bc),a		;71e1
	ld h,b			;71e2
	ld (bc),a		;71e3
	ld h,c			;71e4
	ld (bc),a		;71e5
	ld e,e			;71e6
	ld (bc),a		;71e7
	ld e,e			;71e8
	ld (bc),a		;71e9
	nop			;71ea
	nop			;71eb
	nop			;71ec
	nop			;71ed
	nop			;71ee
	nop			;71ef
	nop			;71f0
	nop			;71f1
	rra			;71f2
	nop			;71f3
	jr nz,l71f6h		;71f4
l71f6h:
	nop			;71f6
	nop			;71f7
	nop			;71f8
	nop			;71f9
	ld l,000h		;71fa
	cpl			;71fc
	nop			;71fd
	nop			;71fe
	nop			;71ff
	nop			;7200
	nop			;7201
	ld h,d			;7202
	ld (bc),a		;7203
	ld h,c			;7204
	ld (bc),a		;7205
	ld h,e			;7206
	ld (bc),a		;7207
	ld h,h			;7208
	ld (bc),a		;7209
	ld h,l			;720a
	ld (bc),a		;720b
	ld h,(hl)		;720c
	ld (bc),a		;720d
	ld h,a			;720e
	ld (bc),a		;720f
	ld l,b			;7210
	ld (bc),a		;7211
	ld l,c			;7212
	ld (bc),a		;7213
	ld l,d			;7214
	ld (bc),a		;7215
	ld l,e			;7216
	ld (bc),a		;7217
	ld l,h			;7218
	ld (bc),a		;7219
	ld l,l			;721a
	ld (bc),a		;721b
	ld l,(hl)		;721c
	ld (bc),a		;721d
	ld l,a			;721e
	ld (bc),a		;721f
	ld (hl),b		;7220
	ld (bc),a		;7221
	ld (hl),c		;7222
	ld (bc),a		;7223
	ld (hl),d		;7224
	ld (bc),a		;7225
	ld (hl),e		;7226
	ld (bc),a		;7227
	ld (hl),h		;7228
	ld (bc),a		;7229
	nop			;722a
	nop			;722b
	nop			;722c
	nop			;722d
	ld d,e			;722e
	nop			;722f
	nop			;7230
	nop			;7231
	nop			;7232
	nop			;7233
	nop			;7234
	nop			;7235
	nop			;7236
	nop			;7237
	nop			;7238
	nop			;7239
	nop			;723a
	nop			;723b
	ld hl,02200h		;723c
	nop			;723f
	nop			;7240
	nop			;7241
	ld (hl),l		;7242
	ld (bc),a		;7243
	halt			;7244
	ld (bc),a		;7245
	ld (hl),a		;7246
	ld (bc),a		;7247
	ld a,b			;7248
	ld (bc),a		;7249
	ld a,c			;724a
	ld (bc),a		;724b
	ld a,d			;724c
	ld (bc),a		;724d
	ld a,e			;724e
	ld (bc),a		;724f
	ld a,h			;7250
	ld (bc),a		;7251
	ld a,l			;7252
	ld (bc),a		;7253
	ld a,(hl)		;7254
	ld (bc),a		;7255
	ld a,a			;7256
	ld (bc),a		;7257
	add a,b			;7258
	ld (bc),a		;7259
	add a,c			;725a
	ld (bc),a		;725b
	add a,d			;725c
	ld (bc),a		;725d
	add a,e			;725e
	ld (bc),a		;725f
	ld a,c			;7260
	ld (bc),a		;7261
	add a,h			;7262
	ld (bc),a		;7263
	add a,l			;7264
	ld (bc),a		;7265
	add a,(hl)		;7266
	ld (bc),a		;7267
	add a,a			;7268
	ld (bc),a		;7269
	nop			;726a
	nop			;726b
	nop			;726c
	nop			;726d
	ld d,h			;726e
	nop			;726f
	nop			;7270
	nop			;7271
	nop			;7272
	nop			;7273
	nop			;7274
	nop			;7275
	nop			;7276
	nop			;7277
	adc a,c			;7278
	nop			;7279
	inc hl			;727a
	nop			;727b
	inc h			;727c
	nop			;727d
	adc a,d			;727e
	nop			;727f
	nop			;7280
	nop			;7281
	adc a,b			;7282
	ld (bc),a		;7283
	adc a,c			;7284
	ld (bc),a		;7285
	adc a,e			;7286
	ld (bc),a		;7287
	adc a,d			;7288
	ld (bc),a		;7289
	adc a,h			;728a
	ld (bc),a		;728b
	adc a,l			;728c
	ld (bc),a		;728d
	adc a,(hl)		;728e
	ld (bc),a		;728f
	adc a,a			;7290
	ld (bc),a		;7291
	sub b			;7292
	ld (bc),a		;7293
	sub c			;7294
	ld (bc),a		;7295
	sub d			;7296
	ld (bc),a		;7297
	sub e			;7298
	ld (bc),a		;7299
	sub h			;729a
	ld (bc),a		;729b
	sub l			;729c
	ld (bc),a		;729d
	sub (hl)		;729e
	ld (bc),a		;729f
	sub a			;72a0
	ld (bc),a		;72a1
	sbc a,b			;72a2
	ld (bc),a		;72a3
	sbc a,c			;72a4
	ld (bc),a		;72a5
	adc a,a			;72a6
	ld (bc),a		;72a7
	sbc a,d			;72a8
	ld (bc),a		;72a9
	nop			;72aa
	nop			;72ab
	nop			;72ac
	nop			;72ad
	ld d,l			;72ae
	nop			;72af
	adc a,l			;72b0
	nop			;72b1
	nop			;72b2
	nop			;72b3
	nop			;72b4
	nop			;72b5
	nop			;72b6
	nop			;72b7
	dec h			;72b8
	nop			;72b9
	ld h,000h		;72ba
	daa			;72bc
	nop			;72bd
	jr z,l72c0h		;72be
l72c0h:
	nop			;72c0
	nop			;72c1
	sbc a,e			;72c2
	ld (bc),a		;72c3
	sbc a,h			;72c4
	ld (bc),a		;72c5
	sbc a,l			;72c6
	ld (bc),a		;72c7
	sbc a,(hl)		;72c8
	ld (bc),a		;72c9
	sbc a,a			;72ca
	ld (bc),a		;72cb
	and b			;72cc
	ld (bc),a		;72cd
	and c			;72ce
	ld (bc),a		;72cf
	and d			;72d0
	ld (bc),a		;72d1
	and e			;72d2
	ld (bc),a		;72d3
	and h			;72d4
	ld (bc),a		;72d5
	and l			;72d6
	ld (bc),a		;72d7
	and (hl)		;72d8
	ld (bc),a		;72d9
	and a			;72da
	ld (bc),a		;72db
	xor b			;72dc
	ld (bc),a		;72dd
	xor c			;72de
	ld (bc),a		;72df
	xor d			;72e0
	ld (bc),a		;72e1
	xor e			;72e2
	ld (bc),a		;72e3
	xor h			;72e4
	ld (bc),a		;72e5
	xor l			;72e6
	ld (bc),a		;72e7
	xor (hl)		;72e8
	ld (bc),a		;72e9
	nop			;72ea
	nop			;72eb
	ld d,(hl)		;72ec
	nop			;72ed
	ld d,a			;72ee
	nop			;72ef
	ld e,b			;72f0
	nop			;72f1
	nop			;72f2
	nop			;72f3
	nop			;72f4
	nop			;72f5
	nop			;72f6
	nop			;72f7
	nop			;72f8
	nop			;72f9
	nop			;72fa
	nop			;72fb
	add hl,hl		;72fc
	nop			;72fd
	nop			;72fe
	nop			;72ff
	nop			;7300
	nop			;7301
	xor a			;7302
	ld (bc),a		;7303
	or b			;7304
	ld (bc),a		;7305
	or c			;7306
	ld (bc),a		;7307
	xor a			;7308
	ld (bc),a		;7309
	or d			;730a
	ld (bc),a		;730b
	or e			;730c
	ld (bc),a		;730d
	or h			;730e
	ld (bc),a		;730f
	or l			;7310
	ld (bc),a		;7311
	or (hl)			;7312
	ld (bc),a		;7313
	or a			;7314
	ld (bc),a		;7315
	cp b			;7316
	ld (bc),a		;7317
	cp c			;7318
	ld (bc),a		;7319
	cp d			;731a
	ld (bc),a		;731b
	xor a			;731c
	ld (bc),a		;731d
	xor a			;731e
	ld (bc),a		;731f
	cp e			;7320
	ld (bc),a		;7321
	cp h			;7322
	ld (bc),a		;7323
	cp l			;7324
	ld (bc),a		;7325
	cp (hl)			;7326
	ld (bc),a		;7327
	xor a			;7328
	ld (bc),a		;7329
	ld e,c			;732a
	nop			;732b
	ld e,d			;732c
	nop			;732d
	ld e,e			;732e
	nop			;732f
	ld e,h			;7330
	nop			;7331
	ld e,l			;7332
	nop			;7333
	nop			;7334
	nop			;7335
	nop			;7336
	nop			;7337
	nop			;7338
	nop			;7339
	nop			;733a
	nop			;733b
	nop			;733c
	nop			;733d
	nop			;733e
	nop			;733f
	nop			;7340
	nop			;7341
	jp m,0fa00h		;7342
	nop			;7345
	push af			;7346
	nop			;7347
	jp m,0f500h		;7348
	nop			;734b
	jp m,0f800h		;734c
	nop			;734f
	push af			;7350
	nop			;7351
	rst 30h			;7352
	nop			;7353
	jp m,0f500h		;7354
	nop			;7357
	or 000h			;7358
	jp m,0fa00h		;735a
	nop			;735d
	push af			;735e
	nop			;735f
	jp m,0f500h		;7360
	nop			;7363
	rst 30h			;7364
	nop			;7365
	ret m			;7366
	nop			;7367
	jp m,00000h		;7368
	nop			;736b
	ld e,(hl)		;736c
	nop			;736d
	ld e,a			;736e
	nop			;736f
	ld h,b			;7370
	nop			;7371
	nop			;7372
	nop			;7373
	nop			;7374
	nop			;7375
	nop			;7376
	nop			;7377
	nop			;7378
	nop			;7379
	nop			;737a
	nop			;737b
	nop			;737c
	nop			;737d
	nop			;737e
	nop			;737f
	nop			;7380
	nop			;7381
	jp m,0f800h		;7382
	nop			;7385
	jp m,0fa00h		;7386
	nop			;7389
	jp m,0fa00h		;738a
	nop			;738d
	rst 30h			;738e
	nop			;738f
	jp m,0fa00h		;7390
	nop			;7393
	jp m,0fa00h		;7394
	nop			;7397
	rst 30h			;7398
	nop			;7399
	di			;739a
	nop			;739b
	jp m,0f600h		;739c
	nop			;739f
	jp m,0f600h		;73a0
	nop			;73a3
	jp m,0f500h		;73a4
	nop			;73a7
	or 000h			;73a8
	nop			;73aa
	nop			;73ab
	nop			;73ac
	nop			;73ad
	ld h,c			;73ae
	nop			;73af
	ld h,d			;73b0
	nop			;73b1
	nop			;73b2
	nop			;73b3
	nop			;73b4
	nop			;73b5
	nop			;73b6
	nop			;73b7
	nop			;73b8
	nop			;73b9
	nop			;73ba
	nop			;73bb
	nop			;73bc
	nop			;73bd
	nop			;73be
	nop			;73bf
	nop			;73c0
	nop			;73c1
	jp m,0fa00h		;73c2
	nop			;73c5
	or 000h			;73c6
	ret m			;73c8
	nop			;73c9
	jp m,0f500h		;73ca
	nop			;73cd
	jp m,0f700h		;73ce
	nop			;73d1
	ret m			;73d2
	nop			;73d3
	jp m,0f600h		;73d4
	nop			;73d7
	or 000h			;73d8
	ret m			;73da
	nop			;73db
	jp m,0f700h		;73dc
	nop			;73df
	push af			;73e0
	nop			;73e1
	rst 30h			;73e2
	nop			;73e3
	jp m,0fa00h		;73e4
	nop			;73e7
	jp m,00000h		;73e8
	nop			;73eb
	nop			;73ec
	nop			;73ed
	ld h,e			;73ee
	nop			;73ef
	nop			;73f0
	nop			;73f1
	nop			;73f2
	nop			;73f3
	nop			;73f4
	nop			;73f5
	nop			;73f6
	nop			;73f7
	nop			;73f8
	nop			;73f9
	nop			;73fa
	nop			;73fb
	nop			;73fc
	nop			;73fd
	nop			;73fe
	nop			;73ff
	nop			;7400
	nop			;7401
	jp m,0f700h		;7402
	nop			;7405
	jp m,0fa00h		;7406
	nop			;7409
	jp m,0fa00h		;740a
	nop			;740d
	jp m,0fa00h		;740e
	nop			;7411
	jp m,0fa00h		;7412
	nop			;7415
	jp m,0fa00h		;7416
	nop			;7419
	push af			;741a
	nop			;741b
	jp m,0f800h		;741c
	nop			;741f
	jp m,0fa00h		;7420
	nop			;7423
	jp m,0fa00h		;7424
	nop			;7427
	jp m,00000h		;7428
	nop			;742b
	ld e,a			;742c
	ld bc,00160h		;742d
	ld h,c			;7430
	ld bc,00162h		;7431
	ld h,e			;7434
	ld bc,00164h		;7435
	ld h,l			;7438
	ld bc,002bfh		;7439
	ret nz			;743c
	ld (bc),a		;743d
	adc a,000h		;743e
	nop			;7440
	nop			;7441
	jp m,0f500h		;7442
	nop			;7445
	jp m,0f700h		;7446
	nop			;7449
	push af			;744a
	nop			;744b
	jp m,0fa00h		;744c
	nop			;744f
	ld sp,hl		;7450
	nop			;7451
	push af			;7452
	nop			;7453
	jp m,0fa00h		;7454
	nop			;7457
	jp m,0fa00h		;7458
	nop			;745b
	jp m,0f800h		;745c
	nop			;745f
	push af			;7460
	nop			;7461
	jp m,0f800h		;7462
	nop			;7465
	jp m,0fa00h		;7466
	nop			;7469
	nop			;746a
	nop			;746b
	ld (hl),b		;746c
	ld bc,00171h		;746d
	ld (hl),d		;7470
	ld bc,00173h		;7471
	ld (hl),h		;7474
	ld bc,00175h		;7475
	halt			;7478
	ld bc,002c1h		;7479
	rst 8			;747c
	nop			;747d
	ret nc			;747e
	nop			;747f
	nop			;7480
	nop			;7481
	jp m,0f300h		;7482
	nop			;7485
	jp m,0f700h		;7486
	nop			;7489
	ret m			;748a
	nop			;748b
	rst 30h			;748c
	nop			;748d
	jp m,0fa00h		;748e
	nop			;7491
	jp m,0fa00h		;7492
	nop			;7495
	rst 30h			;7496
	nop			;7497
	jp m,0fa00h		;7498
	nop			;749b
	jp m,0f500h		;749c
	nop			;749f
	jp m,0fa00h		;74a0
	nop			;74a3
	jp m,0fa00h		;74a4
	nop			;74a7
	push af			;74a8
	nop			;74a9
	nop			;74aa
	nop			;74ab
	inc b			;74ac
	ld (bc),a		;74ad
	dec b			;74ae
	ld (bc),a		;74af
	ld b,002h		;74b0
	rlca			;74b2
	ld (bc),a		;74b3
	ex af,af'		;74b4
	ld (bc),a		;74b5
	add hl,bc		;74b6
	ld (bc),a		;74b7
	ld a,(bc)		;74b8
	ld (bc),a		;74b9
	jp nc,0d300h		;74ba
	nop			;74bd
	call nc,00000h		;74be
	nop			;74c1
	rst 30h			;74c2
	nop			;74c3
	jp m,0fa00h		;74c4
	nop			;74c7
	or 000h			;74c8
	jp m,0fa00h		;74ca
	nop			;74cd
	ld sp,hl		;74ce
	nop			;74cf
	rst 30h			;74d0
	nop			;74d1
	or 000h			;74d2
	rst 30h			;74d4
	nop			;74d5
	jp m,0f600h		;74d6
	nop			;74d9
	jp m,0f700h		;74da
	nop			;74dd
	jp m,0fa00h		;74de
	nop			;74e1
	jp m,0f600h		;74e2
	nop			;74e5
	jp m,0f400h		;74e6
	nop			;74e9
	nop			;74ea
	nop			;74eb
	jr l74f0h		;74ec
	add hl,de		;74ee
	ld (bc),a		;74ef
l74f0h:
	ld a,(de)		;74f0
	ld (bc),a		;74f1
	dec de			;74f2
	ld (bc),a		;74f3
	inc e			;74f4
	ld (bc),a		;74f5
	dec e			;74f6
	ld (bc),a		;74f7
	push de			;74f8
	nop			;74f9
	sub 000h		;74fa
	rst 10h			;74fc
	nop			;74fd
	ret c			;74fe
	nop			;74ff
	nop			;7500
	nop			;7501
	jp m,0f500h		;7502
	nop			;7505
	jp m,0fa00h		;7506
	nop			;7509
	jp m,0fa00h		;750a
	nop			;750d
	jp m,0fa00h		;750e
	nop			;7511
	jp m,0fa00h		;7512
	nop			;7515
	push af			;7516
	nop			;7517
	jp m,0fa00h		;7518
	nop			;751b
	jp m,0fa00h		;751c
	nop			;751f
	jp m,0fa00h		;7520
	nop			;7523
	jp m,0fa00h		;7524
	nop			;7527
	jp m,00000h		;7528
	nop			;752b
	dec hl			;752c
	ld (bc),a		;752d
	inc l			;752e
	ld (bc),a		;752f
	dec l			;7530
	ld (bc),a		;7531
	ld l,002h		;7532
	cpl			;7534
	ld (bc),a		;7535
	jr nc,l753ah		;7536
	exx			;7538
	nop			;7539
l753ah:
	jp c,0db00h		;753a
	nop			;753d
	nop			;753e
	nop			;753f
	nop			;7540
	nop			;7541
	rst 30h			;7542
	nop			;7543
	ret m			;7544
	nop			;7545
	or 000h			;7546
	jp m,0fa00h		;7548
	nop			;754b
	jp m,0fa00h		;754c
	nop			;754f
	push af			;7550
	nop			;7551
	jp m,0f700h		;7552
	nop			;7555
	jp m,0fa00h		;7556
	nop			;7559
	jp m,0fa00h		;755a
	nop			;755d
	jp m,0fa00h		;755e
	nop			;7561
	jp m,0fa00h		;7562
	nop			;7565
	ret m			;7566
	nop			;7567
	jp m,00000h		;7568
	nop			;756b
	ccf			;756c
	ld (bc),a		;756d
	ld b,b			;756e
	ld (bc),a		;756f
	ld b,c			;7570
	ld (bc),a		;7571
	ld b,d			;7572
	ld (bc),a		;7573
	ld b,e			;7574
	ld (bc),a		;7575
	ld b,h			;7576
	ld (bc),a		;7577
	call c,0dd00h		;7578
	nop			;757b
	ret c			;757c
	nop			;757d
	nop			;757e
	nop			;757f
	nop			;7580
	nop			;7581
	jp m,0fa00h		;7582
	nop			;7585
	rst 30h			;7586
	nop			;7587
	or 000h			;7588
	ret m			;758a
	nop			;758b
	push af			;758c
	nop			;758d
	or 000h			;758e
	jp m,0fa00h		;7590
	nop			;7593
	jp m,0fa00h		;7594
	nop			;7597
	rst 30h			;7598
	nop			;7599
	push af			;759a
	nop			;759b
	jp m,0fa00h		;759c
	nop			;759f
	jp m,0f500h		;75a0
	nop			;75a3
	jp m,0f500h		;75a4
	nop			;75a7
	jp m,00000h		;75a8
	nop			;75ab
	ld d,d			;75ac
	ld (bc),a		;75ad
	ld d,e			;75ae
	ld (bc),a		;75af
	ld d,h			;75b0
	ld (bc),a		;75b1
	ld d,l			;75b2
	ld (bc),a		;75b3
	ld d,(hl)		;75b4
	ld (bc),a		;75b5
	ld d,a			;75b6
	ld (bc),a		;75b7
	sbc a,000h		;75b8
	rst 18h			;75ba
	nop			;75bb
	nop			;75bc
	nop			;75bd
	nop			;75be
	nop			;75bf
	nop			;75c0
	nop			;75c1
	ld sp,hl		;75c2
	nop			;75c3
	call p,0fa00h		;75c4
	nop			;75c7
	push af			;75c8
	nop			;75c9
	jp m,0f800h		;75ca
	nop			;75cd
	or 000h			;75ce
	push af			;75d0
	nop			;75d1
	jp m,0fa00h		;75d2
	nop			;75d5
	ret m			;75d6
	nop			;75d7
	call p,0f700h		;75d8
	nop			;75db
	jp m,0fa00h		;75dc
	nop			;75df
	rst 30h			;75e0
	nop			;75e1
	ret m			;75e2
	nop			;75e3
	jp m,0f600h		;75e4
	nop			;75e7
	or 000h			;75e8
	nop			;75ea
	nop			;75eb
	ld h,d			;75ec
	ld (bc),a		;75ed
	ld e,e			;75ee
	ld (bc),a		;75ef
	ld h,e			;75f0
	ld (bc),a		;75f1
	ld h,h			;75f2
	ld (bc),a		;75f3
	ld h,l			;75f4
	ld (bc),a		;75f5
	ret po			;75f6
	nop			;75f7
	pop hl			;75f8
	nop			;75f9
	nop			;75fa
	nop			;75fb
	nop			;75fc
	nop			;75fd
	nop			;75fe
	nop			;75ff
	nop			;7600
	nop			;7601
	jp m,0fa00h		;7602
	nop			;7605
	di			;7606
	nop			;7607
	jp m,0f500h		;7608
	nop			;760b
	ret m			;760c
	nop			;760d
	or 000h			;760e
	jp m,0fa00h		;7610
	nop			;7613
	rst 30h			;7614
	nop			;7615
	push af			;7616
	nop			;7617
	or 000h			;7618
	ret m			;761a
	nop			;761b
	rst 30h			;761c
	nop			;761d
	jp m,0fa00h		;761e
	nop			;7621
	push af			;7622
	nop			;7623
	jp m,0f800h		;7624
	nop			;7627
	jp m,00000h		;7628
	nop			;762b
	ld a,(hl)		;762c
	ld (bc),a		;762d
	jp po,0e300h		;762e
	nop			;7631
	call po,0e500h		;7632
	nop			;7635
	and 000h		;7636
	nop			;7638
	nop			;7639
	nop			;763a
	nop			;763b
	nop			;763c
	nop			;763d
	nop			;763e
	nop			;763f
	nop			;7640
	nop			;7641
	sub (hl)		;7642
	nop			;7643
	sub a			;7644
	nop			;7645
	nop			;7646
	nop			;7647
	and d			;7648
	nop			;7649
	nop			;764a
	nop			;764b
	nop			;764c
	nop			;764d
	nop			;764e
	nop			;764f
	sub (hl)		;7650
	nop			;7651
	sub a			;7652
	nop			;7653
	nop			;7654
	nop			;7655
	and d			;7656
	nop			;7657
	nop			;7658
	nop			;7659
	nop			;765a
	nop			;765b
	nop			;765c
	nop			;765d
	add a,d			;765e
	nop			;765f
	add a,e			;7660
	nop			;7661
	nop			;7662
	nop			;7663
	ld (hl),h		;7664
	nop			;7665
	nop			;7666
	nop			;7667
	add a,a			;7668
	nop			;7669
	nop			;766a
	nop			;766b
	rst 20h			;766c
	nop			;766d
	ret pe			;766e
	nop			;766f
	jp (hl)			;7670
	nop			;7671
	jp pe,0eb00h		;7672
	nop			;7675
	nop			;7676
	nop			;7677
	nop			;7678
	nop			;7679
	nop			;767a
	nop			;767b
	nop			;767c
	nop			;767d
	nop			;767e
	nop			;767f
	sbc a,b			;7680
	nop			;7681
	sbc a,c			;7682
	nop			;7683
	and e			;7684
	nop			;7685
	and h			;7686
	nop			;7687
	and l			;7688
	nop			;7689
	and (hl)		;768a
	nop			;768b
	and a			;768c
	nop			;768d
	sbc a,b			;768e
	nop			;768f
	sbc a,c			;7690
	nop			;7691
	and e			;7692
	nop			;7693
	and h			;7694
	nop			;7695
	and l			;7696
	nop			;7697
	and (hl)		;7698
	nop			;7699
	and a			;769a
	nop			;769b
	halt			;769c
	nop			;769d
	add a,h			;769e
	nop			;769f
	ld (hl),a		;76a0
	nop			;76a1
	ld a,b			;76a2
	nop			;76a3
	nop			;76a4
	nop			;76a5
	nop			;76a6
	nop			;76a7
	nop			;76a8
	nop			;76a9
	nop			;76aa
	nop			;76ab
	call pe,0ed00h		;76ac
	nop			;76af
	xor 000h		;76b0
	rst 28h			;76b2
	nop			;76b3
	nop			;76b4
	nop			;76b5
	nop			;76b6
	nop			;76b7
	nop			;76b8
	nop			;76b9
	nop			;76ba
	nop			;76bb
	nop			;76bc
	nop			;76bd
	nop			;76be
	nop			;76bf
	sbc a,d			;76c0
	nop			;76c1
	xor b			;76c2
	nop			;76c3
	xor c			;76c4
	nop			;76c5
	xor d			;76c6
	nop			;76c7
	xor e			;76c8
	nop			;76c9
	xor h			;76ca
	nop			;76cb
	xor l			;76cc
	nop			;76cd
	sbc a,d			;76ce
	nop			;76cf
	xor b			;76d0
	nop			;76d1
	xor c			;76d2
	nop			;76d3
	pop bc			;76d4
	nop			;76d5
	jp nz,0cd00h		;76d6
	nop			;76d9
	xor l			;76da
	nop			;76db
	ld a,c			;76dc
	nop			;76dd
	add a,l			;76de
	nop			;76df
	add a,(hl)		;76e0
	nop			;76e1
	nop			;76e2
	nop			;76e3
	nop			;76e4
	nop			;76e5
	ld a,h			;76e6
	nop			;76e7
	add a,b			;76e8
	nop			;76e9
	ld a,e			;76ea
	nop			;76eb
	ret p			;76ec
	nop			;76ed
	pop af			;76ee
	nop			;76ef
	nop			;76f0
	nop			;76f1
	nop			;76f2
	nop			;76f3
	nop			;76f4
	nop			;76f5
	nop			;76f6
	nop			;76f7
	nop			;76f8
	nop			;76f9
	nop			;76fa
	nop			;76fb
	nop			;76fc
	nop			;76fd
	nop			;76fe
	nop			;76ff
	sbc a,e			;7700
	nop			;7701
	xor (hl)		;7702
	nop			;7703
	xor a			;7704
	nop			;7705
	or b			;7706
	nop			;7707
	or c			;7708
	nop			;7709
	or d			;770a
	nop			;770b
	or e			;770c
	nop			;770d
	sbc a,e			;770e
	nop			;770f
	add a,000h		;7710
	rst 0			;7712
	nop			;7713
	jp 0c400h		;7714
	nop			;7717
	or d			;7718
	nop			;7719
	or e			;771a
	nop			;771b
	nop			;771c
	nop			;771d
	ld a,d			;771e
	nop			;771f
	nop			;7720
	nop			;7721
	nop			;7722
	nop			;7723
	adc a,b			;7724
	nop			;7725
	nop			;7726
	nop			;7727
	add a,c			;7728
	nop			;7729
	nop			;772a
	nop			;772b
	nop			;772c
	nop			;772d
	nop			;772e
	nop			;772f
	nop			;7730
	nop			;7731
	nop			;7732
	nop			;7733
	nop			;7734
	nop			;7735
	ld a,(00000h)		;7736
	nop			;7739
	nop			;773a
	nop			;773b
	nop			;773c
	nop			;773d
	ld a,(0b400h)		;773e
	nop			;7741
	or l			;7742
	nop			;7743
	or (hl)			;7744
	nop			;7745
	or a			;7746
	nop			;7747
	cp b			;7748
	nop			;7749
	cp c			;774a
	nop			;774b
	cp d			;774c
	nop			;774d
	or h			;774e
	nop			;774f
	ret			;7750
	nop			;7751
	ret z			;7752
	nop			;7753
	or a			;7754
	nop			;7755
	push bc			;7756
	nop			;7757
	call z,0ba00h		;7758
	nop			;775b
	nop			;775c
	nop			;775d
	ld a,l			;775e
	nop			;775f
	add a,b			;7760
	nop			;7761
	ld (hl),h		;7762
	nop			;7763
	nop			;7764
	nop			;7765
	nop			;7766
	nop			;7767
	nop			;7768
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
	dec sp			;7774
	nop			;7775
	inc a			;7776
	nop			;7777
	nop			;7778
	nop			;7779
	nop			;777a
	nop			;777b
	dec sp			;777c
	nop			;777d
	inc a			;777e
	nop			;777f
	sbc a,h			;7780
	nop			;7781
	cp e			;7782
	nop			;7783
	cp h			;7784
	nop			;7785
	cp l			;7786
	nop			;7787
	cp (hl)			;7788
	nop			;7789
	cp a			;778a
	nop			;778b
	nop			;778c
	nop			;778d
	sbc a,h			;778e
	nop			;778f
	jp z,0cb00h		;7790
	nop			;7793
	cp l			;7794
	nop			;7795
	cp (hl)			;7796
	nop			;7797
	cp a			;7798
	nop			;7799
	nop			;779a
	nop			;779b
	ld a,(hl)		;779c
	nop			;779d
	ld a,a			;779e
	nop			;779f
	add a,c			;77a0
	nop			;77a1
	nop			;77a2
	nop			;77a3
	nop			;77a4
	nop			;77a5
	ld (hl),l		;77a6
	nop			;77a7
	nop			;77a8
	nop			;77a9
	nop			;77aa
	nop			;77ab
	nop			;77ac
	nop			;77ad
	nop			;77ae
	nop			;77af
	nop			;77b0
	nop			;77b1
	dec a			;77b2
	nop			;77b3
	ld a,000h		;77b4
	ccf			;77b6
	nop			;77b7
	nop			;77b8
	nop			;77b9
	dec a			;77ba
	nop			;77bb
	ld a,000h		;77bc
	ccf			;77be
	nop			;77bf
	nop			;77c0
	nop			;77c1
	sbc a,l			;77c2
	nop			;77c3
	sbc a,(hl)		;77c4
	nop			;77c5
	ret nz			;77c6
	nop			;77c7
	and c			;77c8
	nop			;77c9
	sbc a,a			;77ca
	nop			;77cb
	and b			;77cc
	nop			;77cd
	nop			;77ce
	nop			;77cf
	sbc a,l			;77d0
	nop			;77d1
	sbc a,(hl)		;77d2
	nop			;77d3
	ret nz			;77d4
	nop			;77d5
	and c			;77d6
	nop			;77d7
	sbc a,a			;77d8
	nop			;77d9
	and b			;77da
	nop			;77db
	nop			;77dc
	nop			;77dd
	nop			;77de
	nop			;77df
	nop			;77e0
	nop			;77e1
	nop			;77e2
	nop			;77e3
	nop			;77e4
	nop			;77e5
	ld a,(00000h)		;77e6
	nop			;77e9
	nop			;77ea
	nop			;77eb
	nop			;77ec
	nop			;77ed
	ld a,(04000h)		;77ee
	nop			;77f1
	ld b,c			;77f2
	nop			;77f3
	ld b,d			;77f4
	nop			;77f5
	ld b,e			;77f6
	nop			;77f7
	ld b,b			;77f8
	nop			;77f9
	ld b,c			;77fa
	nop			;77fb
	ld b,d			;77fc
	nop			;77fd
	ld b,e			;77fe
	nop			;77ff
	nop			;7800
	nop			;7801
	nop			;7802
	nop			;7803
	nop			;7804
	nop			;7805
	nop			;7806
	nop			;7807
	nop			;7808
	nop			;7809
	nop			;780a
	nop			;780b
	nop			;780c
	nop			;780d
	nop			;780e
	nop			;780f
	ld a,(00000h)		;7810
	nop			;7813
	nop			;7814
	nop			;7815
	nop			;7816
	nop			;7817
	nop			;7818
	nop			;7819
	nop			;781a
	nop			;781b
	nop			;781c
	nop			;781d
	ld a,(00000h)		;781e
	nop			;7821
	nop			;7822
	nop			;7823
	dec sp			;7824
	nop			;7825
	inc a			;7826
	nop			;7827
	nop			;7828
	nop			;7829
	nop			;782a
	nop			;782b
	dec sp			;782c
	nop			;782d
	inc a			;782e
	nop			;782f
	ld b,h			;7830
	nop			;7831
	ld b,l			;7832
	nop			;7833
	ld b,(hl)		;7834
	nop			;7835
	ld b,a			;7836
	nop			;7837
	ld b,h			;7838
	nop			;7839
	ld b,l			;783a
	nop			;783b
	ld l,(hl)		;783c
	nop			;783d
	ld h,l			;783e
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
	dec sp			;784e
	nop			;784f
	inc a			;7850
	nop			;7851
	nop			;7852
	nop			;7853
	nop			;7854
	nop			;7855
	nop			;7856
	nop			;7857
	nop			;7858
	nop			;7859
	nop			;785a
	nop			;785b
	dec sp			;785c
	nop			;785d
	inc a			;785e
	nop			;785f
	nop			;7860
	nop			;7861
	dec a			;7862
	nop			;7863
	ld a,000h		;7864
	ccf			;7866
	nop			;7867
	nop			;7868
	nop			;7869
	dec a			;786a
	nop			;786b
	ld a,000h		;786c
	ccf			;786e
	nop			;786f
	ld c,b			;7870
	nop			;7871
	ld c,c			;7872
	nop			;7873
	ld c,d			;7874
	nop			;7875
	ld c,e			;7876
	nop			;7877
	ld c,b			;7878
	nop			;7879
	ld c,c			;787a
	nop			;787b
	ld h,(hl)		;787c
	nop			;787d
	ld h,a			;787e
	nop			;787f
	nop			;7880
	nop			;7881
	nop			;7882
	nop			;7883
	nop			;7884
l7885h:
	nop			;7885
	nop			;7886
	nop			;7887
	nop			;7888
	nop			;7889
	nop			;788a
	nop			;788b
	dec a			;788c
	nop			;788d
	ld a,000h		;788e
	ccf			;7890
	nop			;7891
	nop			;7892
	nop			;7893
	nop			;7894
	nop			;7895
	nop			;7896
	nop			;7897
	nop			;7898
	nop			;7899
	dec a			;789a
	nop			;789b
	ld a,000h		;789c
	ccf			;789e
	nop			;789f
	ld b,b			;78a0
	nop			;78a1
	ld b,c			;78a2
	nop			;78a3
	ld b,d			;78a4
	nop			;78a5
	ld b,e			;78a6
	nop			;78a7
	ld b,b			;78a8
	nop			;78a9
	ld b,c			;78aa
	nop			;78ab
	ld b,d			;78ac
	nop			;78ad
	ld b,e			;78ae
	nop			;78af
	ld c,h			;78b0
	nop			;78b1
	ld c,l			;78b2
	nop			;78b3
	ld c,(hl)		;78b4
	nop			;78b5
	ld c,a			;78b6
	nop			;78b7
	ld c,h			;78b8
	nop			;78b9
	ld c,l			;78ba
	nop			;78bb
	ld c,(hl)		;78bc
	nop			;78bd
	ld c,a			;78be
	nop			;78bf
	nop			;78c0
	nop			;78c1
	nop			;78c2
	nop			;78c3
	nop			;78c4
	nop			;78c5
	nop			;78c6
	nop			;78c7
	nop			;78c8
	nop			;78c9
	ld b,b			;78ca
	nop			;78cb
	ld b,c			;78cc
	nop			;78cd
	ld b,d			;78ce
	nop			;78cf
	ld b,e			;78d0
	nop			;78d1
	nop			;78d2
	nop			;78d3
	nop			;78d4
	nop			;78d5
	nop			;78d6
	nop			;78d7
	ld b,b			;78d8
	nop			;78d9
	ld b,c			;78da
	nop			;78db
	ld b,d			;78dc
	nop			;78dd
	ld b,e			;78de
	nop			;78df
	ld b,h			;78e0
	nop			;78e1
	ld b,l			;78e2
	nop			;78e3
	ld l,h			;78e4
	nop			;78e5
	ld l,l			;78e6
	nop			;78e7
	ld b,h			;78e8
	nop			;78e9
	ld b,l			;78ea
	nop			;78eb
	ld h,h			;78ec
	nop			;78ed
	ld h,l			;78ee
	nop			;78ef
	ld d,b			;78f0
	nop			;78f1
	ld d,c			;78f2
	nop			;78f3
	ld d,d			;78f4
	nop			;78f5
	nop			;78f6
	nop			;78f7
	ld d,b			;78f8
	nop			;78f9
	ld d,c			;78fa
	nop			;78fb
	ld d,d			;78fc
	nop			;78fd
	nop			;78fe
	nop			;78ff
	nop			;7900
	nop			;7901
	nop			;7902
	nop			;7903
	nop			;7904
	nop			;7905
	nop			;7906
	nop			;7907
	nop			;7908
	nop			;7909
	ld b,h			;790a
	nop			;790b
	ld b,l			;790c
	nop			;790d
	ld l,b			;790e
	nop			;790f
	ld l,c			;7910
	nop			;7911
	adc a,(hl)		;7912
	nop			;7913
	adc a,a			;7914
	nop			;7915
	nop			;7916
	nop			;7917
	ld b,h			;7918
	nop			;7919
	ld b,l			;791a
	nop			;791b
	ld (hl),b		;791c
	nop			;791d
	ld (hl),c		;791e
	nop			;791f
	ld c,b			;7920
	nop			;7921
	ld c,c			;7922
	nop			;7923
	ld l,(hl)		;7924
	nop			;7925
	ld l,a			;7926
	nop			;7927
	ld c,b			;7928
	nop			;7929
	ld c,c			;792a
	nop			;792b
	ld h,(hl)		;792c
	nop			;792d
	ld h,a			;792e
	nop			;792f
	nop			;7930
	nop			;7931
	nop			;7932
	nop			;7933
	nop			;7934
	nop			;7935
	nop			;7936
	nop			;7937
	nop			;7938
	nop			;7939
	nop			;793a
	nop			;793b
	nop			;793c
	nop			;793d
	nop			;793e
	nop			;793f
	nop			;7940
	nop			;7941
	nop			;7942
	nop			;7943
	nop			;7944
	nop			;7945
	nop			;7946
	nop			;7947
	nop			;7948
	nop			;7949
	ld c,b			;794a
	nop			;794b
	ld c,c			;794c
	nop			;794d
	ld l,d			;794e
	nop			;794f
	sub b			;7950
	nop			;7951
	sub b			;7952
	nop			;7953
	sub c			;7954
	nop			;7955
	sub d			;7956
	nop			;7957
	ld c,b			;7958
	nop			;7959
	ld c,c			;795a
	nop			;795b
	ld (hl),d		;795c
	nop			;795d
	ld (hl),e		;795e
	nop			;795f
	ld c,h			;7960
	nop			;7961
	ld c,l			;7962
	nop			;7963
	ld c,(hl)		;7964
	nop			;7965
	ld c,a			;7966
	nop			;7967
	ld c,h			;7968
	nop			;7969
	ld c,l			;796a
	nop			;796b
	ld c,(hl)		;796c
	nop			;796d
	ld c,a			;796e
	nop			;796f
	nop			;7970
	nop			;7971
	nop			;7972
	nop			;7973
	nop			;7974
	nop			;7975
	nop			;7976
	nop			;7977
	nop			;7978
	nop			;7979
	nop			;797a
	nop			;797b
	nop			;797c
	nop			;797d
	nop			;797e
	nop			;797f
	nop			;7980
	nop			;7981
	nop			;7982
	nop			;7983
	nop			;7984
	nop			;7985
	nop			;7986
	nop			;7987
	nop			;7988
	nop			;7989
	ld c,h			;798a
	nop			;798b
	ld c,l			;798c
	nop			;798d
	ld l,e			;798e
	nop			;798f
	sub l			;7990
	nop			;7991
	sub e			;7992
	nop			;7993
	sub h			;7994
	nop			;7995
	nop			;7996
	nop			;7997
	ld c,h			;7998
	nop			;7999
	ld c,l			;799a
	nop			;799b
	ld c,(hl)		;799c
	nop			;799d
	ld c,a			;799e
	nop			;799f
	ld d,b			;79a0
	nop			;79a1
	ld d,c			;79a2
	nop			;79a3
	ld d,d			;79a4
	nop			;79a5
	nop			;79a6
	nop			;79a7
	ld d,b			;79a8
	nop			;79a9
	ld d,c			;79aa
	nop			;79ab
	ld d,d			;79ac
	nop			;79ad
	nop			;79ae
	nop			;79af
	nop			;79b0
	nop			;79b1
	nop			;79b2
	nop			;79b3
	nop			;79b4
	nop			;79b5
	nop			;79b6
	nop			;79b7
	nop			;79b8
	nop			;79b9
	nop			;79ba
	nop			;79bb
	nop			;79bc
	nop			;79bd
	nop			;79be
	nop			;79bf
	nop			;79c0
	nop			;79c1
	nop			;79c2
	nop			;79c3
	nop			;79c4
	nop			;79c5
	nop			;79c6
	nop			;79c7
	nop			;79c8
	nop			;79c9
	ld d,b			;79ca
	nop			;79cb
	ld d,c			;79cc
	nop			;79cd
	ld d,d			;79ce
	nop			;79cf
	nop			;79d0
	nop			;79d1
	nop			;79d2
	nop			;79d3
	nop			;79d4
	nop			;79d5
	nop			;79d6
	nop			;79d7
	ld d,b			;79d8
	nop			;79d9
	ld d,c			;79da
	nop			;79db
	ld d,d			;79dc
	nop			;79dd
	nop			;79de
	nop			;79df
	nop			;79e0
	nop			;79e1
	nop			;79e2
	nop			;79e3
	nop			;79e4
	nop			;79e5
	nop			;79e6
	nop			;79e7
	nop			;79e8
	nop			;79e9
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
	rst 38h			;7a00
	rst 38h			;7a01
	cp 0feh			;7a02
	cp 0feh			;7a04
	cp 0feh			;7a06
	cp 0feh			;7a08
	cp 0feh			;7a0a
	cp 0feh			;7a0c
	cp 0feh			;7a0e
	cp 0feh			;7a10
	cp 0feh			;7a12
	cp 0feh			;7a14
	cp 0feh			;7a16
	cp 0feh			;7a18
	cp 0feh			;7a1a
	cp 0feh			;7a1c
	cp 0feh			;7a1e
	cp 0feh			;7a20
	cp 0feh			;7a22
	cp 0feh			;7a24
	cp 0feh			;7a26
	cp 0feh			;7a28
	cp 0feh			;7a2a
	cp 0feh			;7a2c
	cp 0feh			;7a2e
	cp 0feh			;7a30
	cp 0feh			;7a32
	cp 0feh			;7a34
	cp 0feh			;7a36
	cp 0feh			;7a38
	dec b			;7a3a
	nop			;7a3b
	cp 0feh			;7a3c
	cp 0feh			;7a3e
	cp 0feh			;7a40
	cp 0feh			;7a42
	cp 0feh			;7a44
	cp 0feh			;7a46
	cp 0feh			;7a48
	cp 0feh			;7a4a
	cp 0feh			;7a4c
	ld bc,00200h		;7a4e
	nop			;7a51
	cp 0feh			;7a52
	cp 0feh			;7a54
	cp 0feh			;7a56
	cp 0feh			;7a58
	cp 0feh			;7a5a
	cp 0feh			;7a5c
	cp 0feh			;7a5e
	cp 0feh			;7a60
	cp 0feh			;7a62
	cp 0feh			;7a64
	cp 0feh			;7a66
	cp 0feh			;7a68
	cp 0feh			;7a6a
	cp 0feh			;7a6c
	cp 0feh			;7a6e
	cp 0feh			;7a70
	dec b			;7a72
	nop			;7a73
	ld b,000h		;7a74
	dec c			;7a76
	nop			;7a77
	ld e,e			;7a78
	nop			;7a79
	ld b,c			;7a7a
	nop			;7a7b
	cp 0feh			;7a7c
	cp 0feh			;7a7e
	cp 0feh			;7a80
	cp 0feh			;7a82
	cp 0feh			;7a84
	cp 0feh			;7a86
	cp 0feh			;7a88
	cp 0feh			;7a8a
	ld c,000h		;7a8c
	sub d			;7a8e
	nop			;7a8f
	inc sp			;7a90
	nop			;7a91
	ld d,(hl)		;7a92
	nop			;7a93
	inc (hl)		;7a94
	nop			;7a95
	ld d,a			;7a96
	nop			;7a97
	xor h			;7a98
	nop			;7a99
	and b			;7a9a
	nop			;7a9b
	and c			;7a9c
	nop			;7a9d
	and d			;7a9e
	nop			;7a9f
	and e			;7aa0
	nop			;7aa1
	ld h,e			;7aa2
	nop			;7aa3
	ld h,h			;7aa4
	nop			;7aa5
	ld h,l			;7aa6
	nop			;7aa7
	rrca			;7aa8
	nop			;7aa9
	ld b,e			;7aaa
	nop			;7aab
	ld d,d			;7aac
	nop			;7aad
	ld b,h			;7aae
	nop			;7aaf
	ld e,h			;7ab0
	nop			;7ab1
	xor e			;7ab2
	nop			;7ab3
	ld e,l			;7ab4
	nop			;7ab5
	ld b,a			;7ab6
	nop			;7ab7
	add a,l			;7ab8
	nop			;7ab9
	djnz l7abch		;7aba
l7abch:
	cp 0feh			;7abc
	cp 0feh			;7abe
	cp 0feh			;7ac0
	cp 0feh			;7ac2
	cp 0feh			;7ac4
	cp 0feh			;7ac6
	cp 0feh			;7ac8
	cp 0feh			;7aca
	dec (hl)		;7acc
	nop			;7acd
	ld l,(hl)		;7ace
	nop			;7acf
	sub e			;7ad0
	nop			;7ad1
	ld l,a			;7ad2
	nop			;7ad3
	scf			;7ad4
	nop			;7ad5
	sub h			;7ad6
	nop			;7ad7
	xor l			;7ad8
	nop			;7ad9
	sub b			;7ada
	nop			;7adb
	ld a,b			;7adc
	nop			;7add
	sub c			;7ade
	nop			;7adf
	ld (hl),h		;7ae0
	nop			;7ae1
	ld l,b			;7ae2
	nop			;7ae3
	ld d,e			;7ae4
	nop			;7ae5
	sbc a,d			;7ae6
	nop			;7ae7
	ld b,d			;7ae8
	nop			;7ae9
	add a,(hl)		;7aea
	nop			;7aeb
	add a,a			;7aec
	nop			;7aed
	adc a,c			;7aee
	nop			;7aef
	ld b,l			;7af0
	nop			;7af1
	adc a,d			;7af2
	nop			;7af3
	adc a,e			;7af4
	nop			;7af5
	ld c,b			;7af6
	nop			;7af7
	ld b,(hl)		;7af8
	nop			;7af9
	rlca			;7afa
	nop			;7afb
	cp 0feh			;7afc
	cp 0feh			;7afe
	cp 0feh			;7b00
	cp 0feh			;7b02
	cp 0feh			;7b04
	cp 0feh			;7b06
	cp 0feh			;7b08
	inc bc			;7b0a
	nop			;7b0b
	ld e,c			;7b0c
	nop			;7b0d
	ld a,d			;7b0e
	nop			;7b0f
	sbc a,c			;7b10
	nop			;7b11
	ld a,e			;7b12
	nop			;7b13
	sub l			;7b14
	nop			;7b15
	ld a,l			;7b16
	nop			;7b17
	ld a,a			;7b18
	nop			;7b19
	ld e,d			;7b1a
	nop			;7b1b
	ld a,h			;7b1c
	nop			;7b1d
	xor (hl)		;7b1e
	nop			;7b1f
	ld (hl),l		;7b20
	nop			;7b21
	ld h,d			;7b22
	nop			;7b23
	ld d,h			;7b24
	nop			;7b25
	ld c,d			;7b26
	nop			;7b27
	sbc a,e			;7b28
	nop			;7b29
	adc a,l			;7b2a
	nop			;7b2b
	ex af,af'		;7b2c
	nop			;7b2d
	adc a,h			;7b2e
	nop			;7b2f
	ld c,c			;7b30
	nop			;7b31
	ld e,(hl)		;7b32
	nop			;7b33
	sbc a,a			;7b34
	nop			;7b35
	ld e,a			;7b36
	nop			;7b37
	ld c,e			;7b38
	nop			;7b39
	cp 0feh			;7b3a
	cp 0feh			;7b3c
	cp 0feh			;7b3e
	cp 0feh			;7b40
	cp 0feh			;7b42
	cp 0feh			;7b44
	cp 0feh			;7b46
	cp 0feh			;7b48
	ld (hl),000h		;7b4a
	sub (hl)		;7b4c
	nop			;7b4d
	ld a,(hl)		;7b4e
	nop			;7b4f
	jr c,l7b52h		;7b50
l7b52h:
	sub a			;7b52
	nop			;7b53
	sbc a,b			;7b54
	nop			;7b55
	add hl,sp		;7b56
	nop			;7b57
	halt			;7b58
	nop			;7b59
	ld (hl),c		;7b5a
	nop			;7b5b
	add a,b			;7b5c
	nop			;7b5d
	ld (hl),d		;7b5e
	nop			;7b5f
	ld (hl),a		;7b60
	nop			;7b61
	ld l,h			;7b62
	nop			;7b63
	ld l,c			;7b64
	nop			;7b65
	sbc a,h			;7b66
	nop			;7b67
	ld c,h			;7b68
	nop			;7b69
	ld c,l			;7b6a
	nop			;7b6b
	ld l,d			;7b6c
	nop			;7b6d
	ld l,e			;7b6e
	nop			;7b6f
	ld c,(hl)		;7b70
	nop			;7b71
	sbc a,l			;7b72
	nop			;7b73
	sbc a,(hl)		;7b74
	nop			;7b75
	adc a,b			;7b76
	nop			;7b77
	ld de,0fe00h		;7b78
	cp 0feh			;7b7b
	cp 0feh			;7b7d
	cp 0feh			;7b7f
	cp 0feh			;7b81
	cp 0feh			;7b83
	cp 0feh			;7b85
	cp 0feh			;7b87
	cp 058h			;7b89
	nop			;7b8b
	add a,c			;7b8c
	nop			;7b8d
	ld a,(03b00h)		;7b8e
	nop			;7b91
	inc a			;7b92
	nop			;7b93
	add a,d			;7b94
	nop			;7b95
	dec a			;7b96
	nop			;7b97
	ld a,c			;7b98
	nop			;7b99
	add a,e			;7b9a
	nop			;7b9b
	ld a,000h		;7b9c
	ld h,(hl)		;7b9e
	nop			;7b9f
	add a,h			;7ba0
	nop			;7ba1
	ld h,b			;7ba2
	nop			;7ba3
	ld d,l			;7ba4
	nop			;7ba5
	ld h,c			;7ba6
	nop			;7ba7
	ld d,b			;7ba8
	nop			;7ba9
	ld b,b			;7baa
	nop			;7bab
	ld (de),a		;7bac
	nop			;7bad
	ld d,c			;7bae
	nop			;7baf
	ld c,a			;7bb0
	nop			;7bb1
	adc a,a			;7bb2
	nop			;7bb3
	ld l,l			;7bb4
	nop			;7bb5
	adc a,(hl)		;7bb6
	nop			;7bb7
	add hl,bc		;7bb8
	nop			;7bb9
	or b			;7bba
	nop			;7bbb
	or c			;7bbc
	nop			;7bbd
	cp 0feh			;7bbe
	cp 0feh			;7bc0
	cp 0feh			;7bc2
	cp 0feh			;7bc4
	cp 0feh			;7bc6
	inc b			;7bc8
	nop			;7bc9
	ld h,a			;7bca
	nop			;7bcb
	ccf			;7bcc
	nop			;7bcd
	cp 0feh			;7bce
	cp 0feh			;7bd0
	cp 0feh			;7bd2
	cp 0feh			;7bd4
	cp 0feh			;7bd6
	cp 0feh			;7bd8
	cp 0feh			;7bda
	cp 0feh			;7bdc
	cp 0feh			;7bde
	cp 0feh			;7be0
	cp 0feh			;7be2
	cp 0feh			;7be4
	cp 0feh			;7be6
	cp 0feh			;7be8
	cp 0feh			;7bea
	cp 0feh			;7bec
	cp 0feh			;7bee
	cp 0feh			;7bf0
	cp 0feh			;7bf2
	cp 0feh			;7bf4
	cp 0feh			;7bf6
	cp 0feh			;7bf8
	cp 0feh			;7bfa
	cp 0feh			;7bfc
	cp 0feh			;7bfe
	cp 0feh			;7c00
	cp 0feh			;7c02
	cp 0feh			;7c04
	cp 0feh			;7c06
	cp 0feh			;7c08
	cp 0feh			;7c0a
	cp 0feh			;7c0c
	cp 0feh			;7c0e
	cp 0feh			;7c10
	cp 0feh			;7c12
	cp 0feh			;7c14
	cp 0feh			;7c16
	cp 0feh			;7c18
	dec bc			;7c1a
	nop			;7c1b
	inc l			;7c1c
	nop			;7c1d
	cp 0feh			;7c1e
	cp 0feh			;7c20
	cp 0feh			;7c22
	cp 0feh			;7c24
	cp 0feh			;7c26
	cp 0feh			;7c28
	cp 0feh			;7c2a
	cp 0feh			;7c2c
	cp 0feh			;7c2e
	cp 0feh			;7c30
	cp 0feh			;7c32
	cp 0feh			;7c34
	cp 0feh			;7c36
	cp 0feh			;7c38
	cp 0feh			;7c3a
	cp 0feh			;7c3c
	cp 0feh			;7c3e
	cp 0feh			;7c40
	cp 0feh			;7c42
	cp 0feh			;7c44
	cp 0feh			;7c46
	cp 0feh			;7c48
	cp 0feh			;7c4a
	cp 0feh			;7c4c
	cp 0feh			;7c4e
	cp 0feh			;7c50
	cp 0feh			;7c52
	cp 0feh			;7c54
	cp 0feh			;7c56
	cp 0feh			;7c58
	dec l			;7c5a
	nop			;7c5b
	ld l,000h		;7c5c
	cp 0feh			;7c5e
	cp 0feh			;7c60
	cp 0feh			;7c62
	cp 0feh			;7c64
	cp 0feh			;7c66
	dec d			;7c68
	nop			;7c69
	cp 0feh			;7c6a
	cp 0feh			;7c6c
	ld (0fe00h),a		;7c6e
	cp 0feh			;7c71
	cp 0feh			;7c73
	cp 0feh			;7c75
	cp 0feh			;7c77
	cp 0feh			;7c79
	cp 0feh			;7c7b
	cp 0feh			;7c7d
	cp 0feh			;7c7f
	cp 0feh			;7c81
	cp 0feh			;7c83
	cp 0feh			;7c85
	cp 0feh			;7c87
	cp 0feh			;7c89
	cp 0feh			;7c8b
	cp 0feh			;7c8d
	cp 0feh			;7c8f
	cp 0feh			;7c91
	cp 0feh			;7c93
	cp 0feh			;7c95
	cp 00ch			;7c97
	nop			;7c99
	cpl			;7c9a
	nop			;7c9b
	inc de			;7c9c
	nop			;7c9d
	inc d			;7c9e
	nop			;7c9f
	ld a,(bc)		;7ca0
	nop			;7ca1
	dec e			;7ca2
	nop			;7ca3
	ld e,000h		;7ca4
	rra			;7ca6
	nop			;7ca7
	jr nz,l7caah		;7ca8
l7caah:
	ld hl,02200h		;7caa
	nop			;7cad
	inc hl			;7cae
	nop			;7caf
	cp 0feh			;7cb0
	cp 0feh			;7cb2
	cp 0feh			;7cb4
	cp 0feh			;7cb6
	cp 0feh			;7cb8
	cp 0feh			;7cba
	cp 0feh			;7cbc
	cp 0feh			;7cbe
	cp 0feh			;7cc0
	cp 0feh			;7cc2
	cp 0feh			;7cc4
	cp 0feh			;7cc6
	cp 0feh			;7cc8
	cp 0feh			;7cca
	cp 0feh			;7ccc
	cp 0feh			;7cce
	cp 0feh			;7cd0
	cp 0feh			;7cd2
	cp 0feh			;7cd4
	cp 0feh			;7cd6
	cp 0feh			;7cd8
	ld d,000h		;7cda
	rla			;7cdc
	nop			;7cdd
	jr sub_7ce0h		;7cde
sub_7ce0h:
	add hl,de		;7ce0
	nop			;7ce1
	inc h			;7ce2
	nop			;7ce3
	dec h			;7ce4
	nop			;7ce5
	ld h,000h		;7ce6
	daa			;7ce8
	nop			;7ce9
	jr z,l7cech		;7cea
l7cech:
	cp 0feh			;7cec
	cp 0feh			;7cee
	cp 0feh			;7cf0
	cp 0feh			;7cf2
	cp 0feh			;7cf4
	cp 0feh			;7cf6
	cp 0feh			;7cf8
	cp 0feh			;7cfa
	cp 0feh			;7cfc
sub_7cfeh:
	cp 0feh			;7cfe
	cp 0feh			;7d00
	cp 0feh			;7d02
	cp 0feh			;7d04
	cp 0feh			;7d06
	cp 0feh			;7d08
	cp 0feh			;7d0a
	cp 0feh			;7d0c
	cp 0feh			;7d0e
	cp 0feh			;7d10
	cp 0feh			;7d12
	cp 0feh			;7d14
	cp 0feh			;7d16
	jr nc,l7d1ah		;7d18
l7d1ah:
	ld a,(de)		;7d1a
	nop			;7d1b
	ld sp,01b00h		;7d1c
	nop			;7d1f
	inc e			;7d20
	nop			;7d21
	add hl,hl		;7d22
	nop			;7d23
	ld hl,(02b00h)		;7d24
	nop			;7d27
	xor a			;7d28
	nop			;7d29
	cp 0feh			;7d2a
	cp 0feh			;7d2c
	cp 0feh			;7d2e
	cp 0feh			;7d30
	cp 0feh			;7d32
	cp 0feh			;7d34
	cp 0feh			;7d36
	cp 0feh			;7d38
	cp 0feh			;7d3a
	cp 0feh			;7d3c
	cp 0feh			;7d3e
	cp 0feh			;7d40
	cp 0feh			;7d42
	cp 0feh			;7d44
	cp 0feh			;7d46
	cp 0feh			;7d48
	cp 0feh			;7d4a
	cp 0feh			;7d4c
	cp 0feh			;7d4e
	cp 0feh			;7d50
	cp 0feh			;7d52
	cp 0feh			;7d54
	cp 0feh			;7d56
	xor c			;7d58
	nop			;7d59
	xor d			;7d5a
	nop			;7d5b
	and h			;7d5c
	nop			;7d5d
	and l			;7d5e
	nop			;7d5f
	and (hl)		;7d60
	nop			;7d61
	ld h,e			;7d62
	nop			;7d63
	ld h,h			;7d64
	nop			;7d65
	ld h,l			;7d66
	nop			;7d67
	rrca			;7d68
	nop			;7d69
	ld b,e			;7d6a
	nop			;7d6b
	ld d,d			;7d6c
	nop			;7d6d
	ld b,h			;7d6e
	nop			;7d6f
	cp 0feh			;7d70
	cp 0feh			;7d72
	cp 0feh			;7d74
	cp 0feh			;7d76
	cp 0feh			;7d78
	cp 0feh			;7d7a
	cp 0feh			;7d7c
	cp 0feh			;7d7e
	cp 0feh			;7d80
	cp 0feh			;7d82
	cp 0feh			;7d84
	cp 0feh			;7d86
	cp 0feh			;7d88
	cp 0feh			;7d8a
	cp 0feh			;7d8c
	cp 0feh			;7d8e
	cp 0feh			;7d90
	cp 0feh			;7d92
	cp 0feh			;7d94
	cp 0feh			;7d96
l7d98h:
	ld (hl),e		;7d98
	nop			;7d99
	ld (hl),b		;7d9a
	nop			;7d9b
	ld a,b			;7d9c
	nop			;7d9d
	and a			;7d9e
	nop			;7d9f
	ld (hl),h		;7da0
	nop			;7da1
	ld l,b			;7da2
	nop			;7da3
	ld d,e			;7da4
	nop			;7da5
	sbc a,d			;7da6
	nop			;7da7
	ld b,d			;7da8
	nop			;7da9
	add a,(hl)		;7daa
	nop			;7dab
	add a,a			;7dac
	nop			;7dad
	adc a,c			;7dae
	nop			;7daf
	cp 0feh			;7db0
	cp 0feh			;7db2
	cp 0feh			;7db4
	cp 0feh			;7db6
	cp 0feh			;7db8
	cp 0feh			;7dba
	cp 0feh			;7dbc
	cp 0feh			;7dbe
	cp 0feh			;7dc0
	cp 0feh			;7dc2
	cp 0feh			;7dc4
	cp 0feh			;7dc6
	cp 0feh			;7dc8
	cp 0feh			;7dca
	cp 0feh			;7dcc
	cp 0feh			;7dce
	cp 0feh			;7dd0
	cp 0feh			;7dd2
	cp 0feh			;7dd4
	cp 0feh			;7dd6
	ld a,a			;7dd8
	nop			;7dd9
	ld e,d			;7dda
	nop			;7ddb
	ld a,h			;7ddc
	nop			;7ddd
	xor b			;7dde
	nop			;7ddf
	ld (hl),l		;7de0
	nop			;7de1
	ld h,d			;7de2
	nop			;7de3
	ld d,h			;7de4
	nop			;7de5
	ld c,d			;7de6
	nop			;7de7
	sbc a,e			;7de8
	nop			;7de9
	adc a,l			;7dea
	nop			;7deb
	ex af,af'		;7dec
	nop			;7ded
	adc a,h			;7dee
	nop			;7def
	cp 0feh			;7df0
	cp 0feh			;7df2
	cp 0feh			;7df4
	cp 0feh			;7df6
	cp 0feh			;7df8
	cp 0feh			;7dfa
	cp 0feh			;7dfc
	cp 0feh			;7dfe
	cp 0feh			;7e00
	rst 38h			;7e02
	rst 38h			;7e03
	nop			;7e04
	nop			;7e05
	nop			;7e06
	nop			;7e07
	nop			;7e08
	nop			;7e09
	nop			;7e0a
	nop			;7e0b
	nop			;7e0c
	nop			;7e0d
	nop			;7e0e
	nop			;7e0f
	nop			;7e10
	nop			;7e11
	nop			;7e12
	nop			;7e13
	nop			;7e14
	nop			;7e15
	nop			;7e16
	nop			;7e17
	nop			;7e18
	nop			;7e19
	nop			;7e1a
	nop			;7e1b
	nop			;7e1c
	nop			;7e1d
	nop			;7e1e
	nop			;7e1f
	nop			;7e20
	nop			;7e21
	nop			;7e22
	nop			;7e23
	nop			;7e24
	nop			;7e25
	nop			;7e26
	nop			;7e27
	nop			;7e28
	nop			;7e29
	nop			;7e2a
	ld bc,00101h		;7e2b
	ld (bc),a		;7e2e
	inc bc			;7e2f
	ld (bc),a		;7e30
	inc b			;7e31
	rlca			;7e32
	dec b			;7e33
	nop			;7e34
	nop			;7e35
	nop			;7e36
	rra			;7e37
	rra			;7e38
	rra			;7e39
	dec l			;7e3a
	ld hl,l7e3fh		;7e3b
sub_7e3eh:
	ld a,(hl)		;7e3e
l7e3fh:
	ld a,(hl)		;7e3f
	add a,(hl)		;7e40
	jp m,00c82h		;7e41
	call p,00c64h		;7e44
	call p,018c4h		;7e47
	ret pe			;7e4a
	ret z			;7e4b
l7e4ch:
	nop			;7e4c
	nop			;7e4d
	nop			;7e4e
	nop			;7e4f
	nop			;7e50
l7e51h:
	nop			;7e51
	nop			;7e52
	nop			;7e53
	nop			;7e54
	nop			;7e55
	nop			;7e56
	nop			;7e57
	nop			;7e58
	nop			;7e59
	nop			;7e5a
	ld bc,00101h		;7e5b
	ld (bc),a		;7e5e
	inc bc			;7e5f
	ld (bc),a		;7e60
	inc b			;7e61
	rlca			;7e62
	dec b			;7e63
	ex af,af'		;7e64
	rrca			;7e65
l7e66h:
	dec bc			;7e66
	djnz $+33		;7e67
	rla			;7e69
	jr nz,l7eabh		;7e6a
	ld l,040h		;7e6c
	ld a,a			;7e6e
	ld e,(hl)		;7e6f
	add a,b			;7e70
	rst 38h			;7e71
	cp h			;7e72
	nop			;7e73
	rst 38h			;7e74
	ld a,b			;7e75
	nop			;7e76
	rst 38h			;7e77
	ret m			;7e78
	ld bc,0f0feh		;7e79
	jr l7e66h		;7e7c
	adc a,b			;7e7e
	jr nc,l7e51h		;7e7f
	djnz $+50		;7e81
	ret nc			;7e83
	djnz l7ee6h		;7e84
	and b			;7e86
	jr nz,l7ee9h		;7e87
	and b			;7e89
	jr nz,l7e4ch		;7e8a
	ld b,b			;7e8c
	ld b,b			;7e8d
	ret nz			;7e8e
	ld b,b			;7e8f
	ld b,b			;7e90
	add a,b			;7e91
	add a,b			;7e92
	add a,b			;7e93
	nop			;7e94
	nop			;7e95
	nop			;7e96
	nop			;7e97
	nop			;7e98
	nop			;7e99
	nop			;7e9a
	nop			;7e9b
	nop			;7e9c
	nop			;7e9d
	nop			;7e9e
	nop			;7e9f
	nop			;7ea0
	nop			;7ea1
	nop			;7ea2
	ld bc,00101h		;7ea3
	ld (bc),a		;7ea6
	inc bc			;7ea7
	ld (bc),a		;7ea8
	ld b,005h		;7ea9
l7eabh:
	inc b			;7eab
	ex af,af'		;7eac
	rrca			;7ead
	dec bc			;7eae
	djnz $+33		;7eaf
	rla			;7eb1
	jr nz,l7ef3h		;7eb2
	cpl			;7eb4
	ld b,b			;7eb5
	ld a,a			;7eb6
	ld e,a			;7eb7
	add a,b			;7eb8
	rst 38h			;7eb9
	cp a			;7eba
	nop			;7ebb
	rst 38h			;7ebc
	ld a,(hl)		;7ebd
	nop			;7ebe
	rst 38h			;7ebf
	ret p			;7ec0
	rrca			;7ec1
	ret p			;7ec2
	nop			;7ec3
	ld bc,0f0feh		;7ec4
	inc bc			;7ec7
	pop iy			;7ec8
	inc bc			;7eca
	defb 0fdh,0c1h,006h ;illegal sequence	;7ecb
	jp m,006c2h		;7ece
	jp m,00c82h		;7ed1
	call p,00c04h		;7ed4
	call p,0f804h		;7ed7
	ex af,af'		;7eda
	ex af,af'		;7edb
	nop			;7edc
	nop			;7edd
	nop			;7ede
	nop			;7edf
	nop			;7ee0
	nop			;7ee1
	nop			;7ee2
	nop			;7ee3
	nop			;7ee4
	nop			;7ee5
l7ee6h:
	nop			;7ee6
	nop			;7ee7
	nop			;7ee8
l7ee9h:
	nop			;7ee9
	nop			;7eea
	rlca			;7eeb
	rlca			;7eec
	rlca			;7eed
	ccf			;7eee
	ccf			;7eef
l7ef0h:
	jr c,l7ef0h		;7ef0
	rst 38h			;7ef2
l7ef3h:
	pop bc			;7ef3
	nop			;7ef4
	nop			;7ef5
	nop			;7ef6
	nop			;7ef7
	nop			;7ef8
	nop			;7ef9
	nop			;7efa
	nop			;7efb
	nop			;7efc
	nop			;7efd
	nop			;7efe
	nop			;7eff
	rst 38h			;7f00
	rst 38h			;7f01
	rst 38h			;7f02
	ret m			;7f03
	rst 38h			;7f04
	rrca			;7f05
	jr c,$+1		;7f06
	rst 8			;7f08
	ld (hl),b		;7f09
	rst 38h			;7f0a
	sbc a,a			;7f0b
	rlca			;7f0c
	inc b			;7f0d
	inc b			;7f0e
	rlca			;7f0f
	rlca			;7f10
	rlca			;7f11
	ld bc,00101h		;7f12
	rst 38h			;7f15
	rst 38h			;7f16
	rst 38h			;7f17
	ret nz			;7f18
	rst 38h			;7f19
	rst 18h			;7f1a
	ld (hl),b		;7f1b
	rst 38h			;7f1c
	rst 30h			;7f1d
	jr nc,$+1		;7f1e
	or a			;7f20
	ld (hl),b		;7f21
	rst 38h			;7f22
	ld (hl),a		;7f23
	rst 38h			;7f24
	rrca			;7f25
	rrca			;7f26
	rst 38h			;7f27
	ret p			;7f28
	ret p			;7f29
	call m,00003h		;7f2a
	ret p			;7f2d
	rst 8			;7f2e
	ret nz			;7f2f
	ld a,a			;7f30
	cp 07eh			;7f31
	inc bc			;7f33
	rst 38h			;7f34
	add a,e			;7f35
	nop			;7f36
	rst 38h			;7f37
	call m,0ff00h		;7f38
	rst 38h			;7f3b
	ret p			;7f3c
	ret p			;7f3d
	ret p			;7f3e
	ret po			;7f3f
	jr nz,l7f62h		;7f40
	ld b,b			;7f42
	ret nz			;7f43
	ld b,b			;7f44
	ld b,b			;7f45
	ret nz			;7f46
	ld b,b			;7f47
	ret nz			;7f48
	ld b,b			;7f49
	ld b,b			;7f4a
	ret nz			;7f4b
	ret nz			;7f4c
	ret nz			;7f4d
	ld (hl),b		;7f4e
	ret p			;7f4f
	ld (hl),b		;7f50
	inc e			;7f51
	call pe,0018ch		;7f52
	ld bc,00701h		;7f55
	rlca			;7f58
	ld b,00fh		;7f59
	rrca			;7f5b
	ex af,af'		;7f5c
	rra			;7f5d
	rra			;7f5e
l7f5fh:
	djnz $+65		;7f5f
	ccf			;7f61
l7f62h:
	jr nz,l7fe3h		;7f62
	ld a,a			;7f64
l7f65h:
	ld b,c			;7f65
	ld a,a			;7f66
	ld a,(hl)		;7f67
	ld c,(hl)		;7f68
	cp a			;7f69
	ret p			;7f6a
	or b			;7f6b
	defb 0fdh,0ffh,002h ;illegal sequence	;7f6c
	rst 30h			;7f6f
	rst 38h			;7f70
	ex af,af'		;7f71
	rst 38h			;7f72
	rst 38h			;7f73
	inc bc			;7f74
	ld a,h			;7f75
	rst 38h			;7f76
	adc a,h			;7f77
	ret p			;7f78
	rst 38h			;7f79
	inc sp			;7f7a
	ret nz			;7f7b
	rst 38h			;7f7c
	rst 0			;7f7d
	add a,b			;7f7e
	ld a,a			;7f7f
	rra			;7f80
	nop			;7f81
	rst 38h			;7f82
	jr nc,l7f65h		;7f83
	rst 38h			;7f85
	ld a,(hl)		;7f86
	add a,b			;7f87
	rst 38h			;7f88
	cp a			;7f89
	inc bc			;7f8a
	call m,00778h		;7f8b
	rst 38h			;7f8e
	rst 30h			;7f8f
	ld c,0ffh		;7f90
	xor 000h		;7f92
	rst 38h			;7f94
	rst 38h			;7f95
	jr c,l7f5fh		;7f96
	rlca			;7f98
l7f99h:
	ret p			;7f99
	rst 38h			;7f9a
	ret p			;7f9b
	ret po			;7f9c
	rst 38h			;7f9d
	rst 28h			;7f9e
	ld bc,0fcfeh		;7f9f
	add a,a			;7fa2
	ld a,c			;7fa3
	add hl,sp		;7fa4
	ld c,0f7h		;7fa5
	halt			;7fa7
	jr l7f99h		;7fa8
	ex de,hl		;7faa
	add hl,de		;7fab
	rst 30h			;7fac
	di			;7fad
	dec e			;7fae
	ei			;7faf
	add hl,de		;7fb0
	rrca			;7fb1
	rst 38h			;7fb2
	rrca			;7fb3
	nop			;7fb4
	rst 38h			;7fb5
	nop			;7fb6
	rst 38h			;7fb7
	rlca			;7fb8
	rlca			;7fb9
	rst 38h			;7fba
	rst 38h			;7fbb
	rst 38h			;7fbc
	nop			;7fbd
	rst 38h			;7fbe
	rst 38h			;7fbf
	rst 38h			;7fc0
	nop			;7fc1
	nop			;7fc2
	nop			;7fc3
	rst 38h			;7fc4
	rst 38h			;7fc5
	rst 38h			;7fc6
	nop			;7fc7
	nop			;7fc8
	rst 38h			;7fc9
	rst 38h			;7fca
	rst 38h			;7fcb
	ld c,0f2h		;7fcc
	ld (bc),a		;7fce
	cp 0feh			;7fcf
	cp 0ffh			;7fd1
	rst 38h			;7fd3
	rst 38h			;7fd4
	ccf			;7fd5
	rst 0			;7fd6
	rlca			;7fd7
	rst 38h			;7fd8
	rst 38h			;7fd9
	rst 38h			;7fda
	nop			;7fdb
	rst 38h			;7fdc
	ret m			;7fdd
	rst 38h			;7fde
	nop			;7fdf
	nop			;7fe0
	rst 38h			;7fe1
	rst 38h			;7fe2
l7fe3h:
	rst 38h			;7fe3
	nop			;7fe4
	nop			;7fe5
	nop			;7fe6
	nop			;7fe7
	nop			;7fe8
	nop			;7fe9
	nop			;7fea
	nop			;7feb
	nop			;7fec
	rst 38h			;7fed
	rst 38h			;7fee
	rst 38h			;7fef
	nop			;7ff0
	rst 38h			;7ff1
	rst 38h			;7ff2
	rst 38h			;7ff3
	add a,b			;7ff4
	add a,b			;7ff5
	rst 38h			;7ff6
	rst 38h			;7ff7
	rst 38h			;7ff8
	nop			;7ff9
	nop			;7ffa
	nop			;7ffb
	nop			;7ffc
	nop			;7ffd
	nop			;7ffe
	nop			;7fff

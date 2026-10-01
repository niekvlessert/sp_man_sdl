; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank17_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank17.bin

	org 06000h

	rrca			;6000
	nop			;6001
	rra			;6002
	rra			;6003
	inc b			;6004
	rlca			;6005
	ld (bc),a		;6006
	ccf			;6007
	add a,d			;6008
	sbc a,(hl)		;6009
	cp h			;600a
	inc b			;600b
	inc a			;600c
	sub h			;600d
	nop			;600e
	ld a,07fh		;600f
	rst 38h			;6011
	rst 38h			;6012
	cp 0fch			;6013
	call m,0fffeh		;6015
	cp 0ffh			;6018
	rst 38h			;601a
	ld a,a			;601b
	ccf			;601c
	ccf			;601d
	ld a,a			;601e
	rst 38h			;601f
	ld a,l			;6020
	dec a			;6021
	inc b			;6022
	inc a			;6023
	add a,e			;6024
	nop			;6025
	ld a,h			;6026
	call m,0fe04h		;6027
	add a,c			;602a
	nop			;602b
	inc bc			;602c
	cp 003h			;602d
	nop			;602f
	adc a,c			;6030
	rst 38h			;6031
	call po,0ffe4h		;6032
	cp 000h			;6035
	add a,b			;6037
	add a,b			;6038
	nop			;6039
	inc bc			;603a
	ret pe			;603b
	inc bc			;603c
	ld bc,00303h		;603d
	ld (bc),a		;6040
	rlca			;6041
	add a,h			;6042
	rrca			;6043
	rlca			;6044
	ret m			;6045
	rrca			;6046
	inc b			;6047
	rra			;6048
	and b			;6049
	ld h,b			;604a
	rra			;604b
	rra			;604c
	pop hl			;604d
	cp 0feh			;604e
	rst 38h			;6050
	ret po			;6051
	rst 38h			;6052
	rst 38h			;6053
	add a,c			;6054
	inc a			;6055
	inc a			;6056
	ld a,(hl)		;6057
	call m,01e3ch		;6058
	ld e,09fh		;605b
	adc a,a			;605d
	ld b,a			;605e
	inc bc			;605f
	ld h,b			;6060
	di			;6061
	ld a,a			;6062
	ld a,a			;6063
	ccf			;6064
	ccf			;6065
	rrca			;6066
	ret po			;6067
	ccf			;6068
	rrca			;6069
	inc bc			;606a
	cp 09dh			;606b
	call m,007f0h		;606d
	call m,sub_78f0h	;6070
	ld a,b			;6073
	ld sp,hl		;6074
	pop af			;6075
	ex (sp),hl		;6076
	jp 00f07h		;6077
	call m,0f8fch		;607a
	ret m			;607d
	ret p			;607e
	ret po			;607f
	ret nz			;6080
	add a,c			;6081
	rst 38h			;6082
	sbc a,b			;6083
	ld a,a			;6084
	ld a,a			;6085
	ld c,(hl)		;6086
	ld h,(hl)		;6087
	ld h,(hl)		;6088
	ld a,a			;6089
	inc b			;608a
	call nz,0cc86h		;608b
	and 0e6h		;608e
	cp 007h			;6090
	rlca			;6092
	dec b			;6093
	rrca			;6094
	add a,(hl)		;6095
	nop			;6096
	ccf			;6097
	ret nz			;6098
	ret po			;6099
	ret po			;609a
	ccf			;609b
	inc bc			;609c
	rrca			;609d
	sub h			;609e
	ret po			;609f
	ld e,0ffh		;60a0
	ret po			;60a2
	ret po			;60a3
l60a4h:
	ccf			;60a4
	inc bc			;60a5
	rlca			;60a6
	ld a,(hl)		;60a7
	jp 03c7eh		;60a8
	ld a,(hl)		;60ab
	rst 38h			;60ac
	rst 38h			;60ad
	rra			;60ae
	nop			;60af
l60b0h:
	inc a			;60b0
	ld (bc),a		;60b1
	call m,00303h		;60b2
	sbc a,l			;60b5
	nop			;60b6
	rrca			;60b7
	add a,b			;60b8
	ld (hl),b		;60b9
	rra			;60ba
	rra			;60bb
	ret nz			;60bc
	ret nz			;60bd
	jr l60b0h		;60be
	ld bc,0f80eh		;60c0
	rrca			;60c3
	rlca			;60c4
	call m,0e0e0h		;60c5
	pop bc			;60c8
	add a,a			;60c9
	rrca			;60ca
	ccf			;60cb
	add a,b			;60cc
	rst 38h			;60cd
	rst 38h			;60ce
	rlca			;60cf
	rra			;60d0
	ccf			;60d1
	ccf			;60d2
	inc b			;60d3
	ld a,a			;60d4
	ld (bc),a		;60d5
	rlca			;60d6
	inc b			;60d7
	inc bc			;60d8
	add a,l			;60d9
	rst 38h			;60da
	inc e			;60db
	cp 0ffh			;60dc
	rst 38h			;60de
	inc bc			;60df
	add a,b			;60e0
	add a,h			;60e1
	rst 38h			;60e2
	inc a			;60e3
	ret p			;60e4
	ret p			;60e5
	inc b			;60e6
	ret m			;60e7
	add a,e			;60e8
	add a,b			;60e9
	rst 38h			;60ea
	nop			;60eb
	inc bc			;60ec
	rra			;60ed
	and l			;60ee
	ret nz			;60ef
	rrca			;60f0
	rlca			;60f1
	inc bc			;60f2
	rst 38h			;60f3
	nop			;60f4
	ld a,a			;60f5
	ld a,a			;60f6
	nop			;60f7
	nop			;60f8
	ccf			;60f9
	ccf			;60fa
	add a,b			;60fb
	ret m			;60fc
	add a,b			;60fd
	ret p			;60fe
	ret p			;60ff
	rrca			;6100
	rrca			;6101
	ld c,003h		;6102
	rrca			;6104
	inc a			;6105
	ret po			;6106
	rlca			;6107
	rlca			;6108
	rst 38h			;6109
	nop			;610a
	rrca			;610b
	rrca			;610c
	nop			;610d
	cp 0ffh			;610e
	ld a,h			;6110
	ret m			;6111
	rst 0			;6112
	rst 38h			;6113
	inc bc			;6114
	rra			;6115
	add a,h			;6116
	ret nz			;6117
	rrca			;6118
	inc bc			;6119
	ld bc,00300h		;611a
	djnz l60a4h		;611d
	ld hl,02132h		;611f
	ld hl,00432h		;6122
	djnz $+12		;6125
	ld hl,03282h		;6127
	ld b,e			;612a
	rlca			;612b
	ld hl,03206h		;612c
	add a,e			;612f
	ld hl,04313h		;6130
	inc bc			;6133
	ld (02185h),a		;6134
	ld b,c			;6137
	ld b,e			;6138
	ld b,e			;6139
	ld b,c			;613a
	inc b			;613b
	ld b,e			;613c
	add a,l			;613d
	ld (01f31h),a		;613e
	rra			;6141
	ld (04303h),a		;6142
	add a,h			;6145
	ld (01f21h),a		;6146
	jp p,02104h		;6149
	add a,h			;614c
	ld sp,0f121h		;614d
	pop af			;6150
	ld b,021h		;6151
	rlca			;6153
	ld (0430ah),a		;6154
	add a,l			;6157
	ld b,d			;6158
	jp p,04141h		;6159
	ld b,e			;615c
	inc bc			;615d
	di			;615e
	add a,c			;615f
	jp p,04203h		;6160
	add a,c			;6163
	ld b,e			;6164
	inc bc			;6165
	di			;6166
	add a,d			;6167
	jp p,00632h		;6168
	ld b,e			;616b
	adc a,b			;616c
	ld b,d			;616d
	ld (0f131h),a		;616e
	pop af			;6171
	ld b,e			;6172
	ld (00532h),a		;6173
	pop af			;6176
	add a,(hl)		;6177
	ld (02121h),a		;6178
	rst 38h			;617b
	ld (de),a		;617c
	ld (de),a		;617d
	inc bc			;617e
	pop af			;617f
	dec b			;6180
	ld (02186h),a		;6181
	rra			;6184
	rra			;6185
	jp p,02323h		;6186
	inc bc			;6189
	ld b,e			;618a
	add a,l			;618b
	ld (01f21h),a		;618c
	jp p,00423h		;618f
	ld b,d			;6192
	add a,c			;6193
	ld sp,01f03h		;6194
	inc bc			;6197
	jp p,0fe83h		;6198
	call p,005f3h		;619b
	jp p,0f485h		;619e
	di			;61a1
	jp p,0f1f1h		;61a2
	inc b			;61a5
	ld b,d			;61a6
	add a,c			;61a7
	ld sp,01f03h		;61a8
	inc bc			;61ab
	ld (02181h),a		;61ac
	inc bc			;61af
	rra			;61b0
	add a,c			;61b1
	ld hl,03203h		;61b2
	ld (bc),a		;61b5
	pop af			;61b6
	adc a,e			;61b7
	di			;61b8
	jp p,020f2h		;61b9
	ld hl,01f21h		;61bc
	rra			;61bf
	ld b,d			;61c0
	ld sp,008ffh		;61c1
	ld hl,03283h		;61c4
	ld hl,00521h		;61c7
	ld (04384h),a		;61ca
	ld b,d			;61cd
	ld hl,00331h		;61ce
	ld b,d			;61d1
	ld (bc),a		;61d2
	ld (04202h),a		;61d3
	add a,c			;61d6
	ld (04303h),a		;61d7
	add a,h			;61da
	ld (03221h),a		;61db
	ld (04204h),a		;61de
	adc a,d			;61e1
	ld hl,0f2f1h		;61e2
	jp p,0f3f3h		;61e5
	ld b,e			;61e8
	ld b,e			;61e9
	ld (003f1h),a		;61ea
	jp p,0f387h		;61ed
	ld b,e			;61f0
	ld b,e			;61f1
	ld (03221h),a		;61f2
	ld (04204h),a		;61f5
	add a,d			;61f8
	ld (00531h),a		;61f9
	ld b,c			;61fc
	ld (bc),a		;61fd
	ld sp,04302h		;61fe
	ld (bc),a		;6201
	pop af			;6202
	adc a,h			;6203
	ld b,e			;6204
	ld (043ffh),a		;6205
	ld b,e			;6208
	ld (0ffffh),a		;6209
	ld (0ff21h),a		;620c
	ld b,e			;620f
	ld b,021h		;6210
	ld (bc),a		;6212
	rra			;6213
	ld (bc),a		;6214
	ld (02193h),a		;6215
	inc de			;6218
	ld (02132h),a		;6219
	rra			;621c
	ld hl,04231h		;621d
	ld b,d			;6220
	ld hl,04341h		;6221
	ld (0f121h),a		;6224
	call p,03121h		;6227
	inc bc			;622a
	ld b,e			;622b
	ld (bc),a		;622c
	ld sp,03287h		;622d
	ld b,d			;6230
	ld b,d			;6231
	ld hl,01414h		;6232
	ld hl,0f103h		;6235
	add a,l			;6238
	ld (de),a		;6239
	ld (03234h),a		;623a
	ld hl,0f103h		;623d
	add a,c			;6240
	ld hl,03203h		;6241
	dec b			;6244
	inc de			;6245
	ld (bc),a		;6246
	ld hl,0ff81h		;6247
	ld b,021h		;624a
	add a,d			;624c
	ld (00711h),a		;624d
	ld b,e			;6250
	add a,c			;6251
	ld hl,03203h		;6252
	inc b			;6255
	ld b,e			;6256
	rlca			;6257
	ld hl,04387h		;6258
	inc de			;625b
	inc de			;625c
	ld (01f21h),a		;625d
	rra			;6260
	inc bc			;6261
	jp p,04302h		;6262
	sub e			;6265
	ld (02121h),a		;6266
	rra			;6269
	rra			;626a
	ld hl,03243h		;626b
	ld (01f21h),a		;626e
	rra			;6271
	ld sp,0f243h		;6272
	jp p,0f1f1h		;6275
	ld sp,04303h		;6278
	adc a,l			;627b
	pop af			;627c
	ld (de),a		;627d
	ld (de),a		;627e
	ld (04332h),a		;627f
	call p,032fch		;6282
	ld (01f21h),a		;6285
	rra			;6288
	inc bc			;6289
	jp p,09f00h		;628a
	nop			;628d
	ccf			;628e
	ld a,a			;628f
	ld a,a			;6290
	inc bc			;6291
	rlca			;6292
	rlca			;6293
	rrca			;6294
	rra			;6295
	ret nz			;6296
	rst 38h			;6297
	cp 0ffh			;6298
	inc a			;629a
	ld a,a			;629b
	rst 38h			;629c
	rlca			;629d
	rlca			;629e
	ret p			;629f
	ret p			;62a0
	ret po			;62a1
	call m,0fefeh		;62a2
	rst 38h			;62a5
	add a,e			;62a6
l62a7h:
	inc a			;62a7
	inc a			;62a8
	jr c,l62a7h		;62a9
	call m,03803h		;62ab
	inc bc			;62ae
	rra			;62af
	add a,l			;62b0
	rst 38h			;62b1
	pop bc			;62b2
	pop bc			;62b3
	rst 38h			;62b4
	rst 38h			;62b5
	ex af,af'		;62b6
	cp l			;62b7
	ld b,0fdh		;62b8
	ld (bc),a		;62ba
	rst 38h			;62bb
	ld b,02fh		;62bc
	adc a,(hl)		;62be
	nop			;62bf
	ld a,a			;62c0
	ld a,a			;62c1
	ld bc,0fc07h		;62c2
	call m,01fffh		;62c5
	ret nz			;62c8
	rst 38h			;62c9
	cp 0ffh			;62ca
	ld a,h			;62cc
	inc b			;62cd
	ret m			;62ce
	ld (bc),a		;62cf
	rrca			;62d0
	adc a,l			;62d1
	ret po			;62d2
	call m,0e0feh		;62d3
	ret po			;62d6
	ret nz			;62d7
	rst 38h			;62d8
	cp 0ffh			;62d9
	ld a,h			;62db
	ret m			;62dc
	rst 0			;62dd
	rst 38h			;62de
	inc bc			;62df
	rra			;62e0
	adc a,h			;62e1
	ccf			;62e2
	rrca			;62e3
	rlca			;62e4
	inc bc			;62e5
	rlca			;62e6
	rlca			;62e7
	rrca			;62e8
	ld a,a			;62e9
	ld a,a			;62ea
	nop			;62eb
	ld a,(hl)		;62ec
	ld a,(hl)		;62ed
	nop			;62ee
	inc b			;62ef
	ld hl,03204h		;62f0
	add a,l			;62f3
	pop af			;62f4
	ld hl,03221h		;62f5
	ld (04303h),a		;62f8
	add a,h			;62fb
	ld hl,01f1fh		;62fc
	ld hl,03204h		;62ff
	ld (bc),a		;6302
	pop af			;6303
	add a,d			;6304
	ld hl,00432h		;6305
	ld b,e			;6308
	ld (bc),a		;6309
	rst 38h			;630a
	add a,l			;630b
	ld hl,03232h		;630c
	ld sp,hl		;630f
	ld sp,hl		;6310
	inc bc			;6311
	or 081h			;6312
	ld (04305h),a		;6314
	ld (bc),a		;6317
	rst 38h			;6318
	add a,c			;6319
	ld hl,03204h		;631a
	add a,c			;631d
	ld hl,0f103h		;631e
	inc b			;6321
	ld (de),a		;6322
	ld (bc),a		;6323
	pop af			;6324
	ld (bc),a		;6325
	ld hl,03202h		;6326
	adc a,a			;6329
	di			;632a
	rrca			;632b
	rrca			;632c
	pop af			;632d
	ld hl,03221h		;632e
	ld (0f443h),a		;6331
	rrca			;6334
	ld (de),a		;6335
	pop af			;6336
	pop af			;6337
	ld (de),a		;6338
	inc bc			;6339
	ld (0f28eh),a		;633a
	rra			;633d
	ld hl,03221h		;633e
	ld (0f443h),a		;6341
	ret m			;6344
	ld (02132h),a		;6345
	rra			;6348
	ret m			;6349
	inc bc			;634a
	defb 0fdh,084h ;add a,iyh	;634b
	ld hl,0fd1fh		;634d
	ret c			;6350
	inc b			;6351
	adc a,(hl)		;6352
	nop			;6353
	ld (bc),a		;6354
	rlca			;6355
	sub c			;6356
	rst 8			;6357
	call nz,0c5c6h		;6358
	inc a			;635b
	ld a,(hl)		;635c
	rlca			;635d
	nop			;635e
	rrca			;635f
	rrca			;6360
	nop			;6361
	nop			;6362
	rst 0			;6363
	pop bc			;6364
	rlca			;6365
	rlca			;6366
	rst 8			;6367
	inc bc			;6368
	jp 03c8bh		;6369
	jp 00007h		;636c
	rrca			;636f
	rrca			;6370
	nop			;6371
	nop			;6372
	rst 0			;6373
	pop bc			;6374
	rrca			;6375
	inc bc			;6376
	nop			;6377
	inc b			;6378
	ret nz			;6379
	nop			;637a
	adc a,e			;637b
	ld hl,0fc1fh		;637c
	res 6,l			;637f
	set 1,e			;6381
	call m,03232h		;6383
	ld hl,01f03h		;6386
	add a,a			;6389
	call m,021fbh		;638a
	rra			;638d
	push af			;638e
	or l			;638f
	rlc e			;6390
	call m,03202h		;6392
	add a,c			;6395
	ld hl,01f03h		;6396
	add a,d			;6399
	push af			;639a
	call m,0f004h		;639b
	add a,h			;639e
	defb 0fdh,0d8h,08eh ;illegal sequence	;639f
	ret c			;63a2
	nop			;63a3
	add a,l			;63a4
	rrca			;63a5
	rra			;63a6
	ld a,a			;63a7
	jp 00318h		;63a8
	jp 00f88h		;63ab
	rra			;63ae
	ld a,a			;63af
l63b0h:
	jp 018c3h		;63b0
	jp 000c3h		;63b3
	ld (bc),a		;63b6
	ret p			;63b7
	adc a,(hl)		;63b8
	or b			;63b9
	or l			;63ba
	and l			;63bb
	or l			;63bc
	set 7,h			;63bd
	ret p			;63bf
	ret p			;63c0
	ret nz			;63c1
	res 6,l			;63c2
	and l			;63c4
	or l			;63c5
	rlc b			;63c6
	inc b			;63c8
	nop			;63c9
	adc a,b			;63ca
	rlca			;63cb
	ccf			;63cc
	ret m			;63cd
	ret m			;63ce
	nop			;63cf
	inc bc			;63d0
	rra			;63d1
	rst 38h			;63d2
	inc bc			;63d3
	ret p			;63d4
	add a,h			;63d5
	nop			;63d6
	cp 07fh			;63d7
	ccf			;63d9
	inc bc			;63da
	rra			;63db
	add a,h			;63dc
	ccf			;63dd
	ld a,a			;63de
	ret p			;63df
	ret p			;63e0
	inc bc			;63e1
	ret po			;63e2
	ld (bc),a		;63e3
	ret nz			;63e4
	adc a,e			;63e5
	add a,b			;63e6
	rst 38h			;63e7
	rst 38h			;63e8
	ret nz			;63e9
	add a,b			;63ea
	add a,b			;63eb
	cp 0fch			;63ec
	ret m			;63ee
	nop			;63ef
	nop			;63f0
	dec b			;63f1
	rrca			;63f2
	add a,c			;63f3
	rlca			;63f4
	ld b,000h		;63f5
	add a,l			;63f7
	rrca			;63f8
	rst 38h			;63f9
	cp 0f8h			;63fa
	rrca			;63fc
	inc b			;63fd
	nop			;63fe
	sub c			;63ff
	rst 38h			;6400
	ld bc,00ff9h		;6401
	inc bc			;6404
	ld bc,00301h		;6405
	rst 38h			;6408
	ccf			;6409
	ld a,a			;640a
	ld a,a			;640b
	ld bc,0fc07h		;640c
	call m,000ffh		;640f
	ld b,0f0h		;6412
	add a,d			;6414
	pop af			;6415
	ld (de),a		;6416
	inc b			;6417
	ret p			;6418
	add a,l			;6419
	pop af			;641a
	ld (de),a		;641b
	inc hl			;641c
	inc hl			;641d
	pop af			;641e
	add hl,bc		;641f
	ret p			;6420
	add a,c			;6421
	jr nz,l6428h		;6422
	djnz $+5		;6424
	ret p			;6426
	add a,e			;6427
l6428h:
	ld (02121h),a		;6428
	dec b			;642b
	djnz l63b0h		;642c
	ret p			;642e
	jr nz,$+12		;642f
	djnz l6435h		;6431
	ret p			;6433
	add a,d			;6434
l6435h:
	ld hl,006f1h		;6435
	ret p			;6438
	add a,d			;6439
	jp p,006f1h		;643a
	ret p			;643d
	inc bc			;643e
	ld hl,03202h		;643f
	add a,e			;6442
	di			;6443
	rrca			;6444
	rrca			;6445
	nop			;6446
	ld b,00fh		;6447
	ld a,(bc)		;6449
	rra			;644a
	add a,d			;644b
	rst 38h			;644c
	call m,0f804h		;644d
	ld (bc),a		;6450
	ret p			;6451
	nop			;6452
	ld (bc),a		;6453
	djnz $-124		;6454
	ret p			;6456
	jr nz,l6465h		;6457
	djnz $+5		;6459
	ret p			;645b
	add a,l			;645c
	djnz $-14		;645d
	ret p			;645f
	jr nz,l6472h		;6460
	nop			;6462
	ld (bc),a		;6463
	ret p			;6464
l6465h:
	add a,e			;6465
	rlca			;6466
	ld a,a			;6467
	rlca			;6468
	inc bc			;6469
	rrca			;646a
	ld (bc),a		;646b
	rst 38h			;646c
	add a,e			;646d
	nop			;646e
	ret m			;646f
	ret m			;6470
	inc bc			;6471
l6472h:
	rst 38h			;6472
	ld (bc),a		;6473
	add a,b			;6474
	add a,c			;6475
	nop			;6476
	inc bc			;6477
	rlca			;6478
	add a,d			;6479
	add a,b			;647a
	call m,00105h		;647b
	ld (bc),a		;647e
	rst 38h			;647f
	adc a,(hl)		;6480
	cp 03fh			;6481
	ccf			;6483
	inc a			;6484
	inc a			;6485
	add a,e			;6486
	rst 38h			;6487
	ld a,(hl)		;6488
	ld a,(hl)		;6489
	ret po			;648a
	ret p			;648b
	ret p			;648c
	nop			;648d
	rra			;648e
	inc bc			;648f
	ccf			;6490
	add a,c			;6491
	rst 38h			;6492
	inc bc			;6493
	nop			;6494
	adc a,h			;6495
	rst 38h			;6496
	cp 0fch			;6497
	ret m			;6499
	ld a,h			;649a
	call m,000fch		;649b
	nop			;649e
	call m,03cfch		;649f
	inc bc			;64a2
	rra			;64a3
	add a,l			;64a4
	rst 38h			;64a5
	pop bc			;64a6
	pop bc			;64a7
	rra			;64a8
	rra			;64a9
	ex af,af'		;64aa
	cp l			;64ab
	ld (bc),a		;64ac
	rst 38h			;64ad
	add a,l			;64ae
	ret po			;64af
	rst 38h			;64b0
	pop hl			;64b1
	pop hl			;64b2
	ret po			;64b3
	inc bc			;64b4
	rst 38h			;64b5
	ld b,02fh		;64b6
	inc bc			;64b8
	rlca			;64b9
	add a,c			;64ba
	inc bc			;64bb
	inc bc			;64bc
	ld a,a			;64bd
	add a,l			;64be
	nop			;64bf
	ld a,a			;64c0
	ld a,000h		;64c1
	cp 003h			;64c3
	ret p			;64c5
	sbc a,c			;64c6
	nop			;64c7
	ret m			;64c8
	ret po			;64c9
	add a,b			;64ca
	ret p			;64cb
	ret p			;64cc
	nop			;64cd
	rlca			;64ce
	rlca			;64cf
	call m,00fe0h		;64d0
	cp 0e0h			;64d3
	rrca			;64d5
	rrca			;64d6
	inc bc			;64d7
	ld h,(hl)		;64d8
	jp 03c81h		;64d9
	rst 38h			;64dc
	ld a,(hl)		;64dd
	rst 38h			;64de
	rst 38h			;64df
	inc bc			;64e0
	ccf			;64e1
	sub b			;64e2
	add a,b			;64e3
	ret m			;64e4
	ret po			;64e5
	cp 0ffh			;64e6
	cp 00fh			;64e8
	rrca			;64ea
	rlca			;64eb
	ret p			;64ec
	ld a,a			;64ed
	rra			;64ee
	inc bc			;64ef
	nop			;64f0
	inc a			;64f1
	ld a,(hl)		;64f2
	inc bc			;64f3
	inc a			;64f4
	add a,(hl)		;64f5
	pop hl			;64f6
	rst 38h			;64f7
	rra			;64f8
	rst 38h			;64f9
	pop bc			;64fa
	pop bc			;64fb
	inc b			;64fc
	rra			;64fd
	ex af,af'		;64fe
	cp l			;64ff
	ld (bc),a		;6500
	pop hl			;6501
	add a,d			;6502
	ret po			;6503
	rst 38h			;6504
	inc b			;6505
	defb 0fdh,003h,0d0h ;illegal sequence	;6506
	add a,c			;6509
	nop			;650a
	inc b			;650b
	ret nc			;650c
	add a,c			;650d
	rrca			;650e
	inc bc			;650f
	rra			;6510
	inc bc			;6511
	ret po			;6512
	ld (bc),a		;6513
	rst 38h			;6514
	inc b			;6515
	ret p			;6516
	inc bc			;6517
	rra			;6518
	inc bc			;6519
	rrca			;651a
	adc a,b			;651b
	rlca			;651c
	rst 38h			;651d
	rra			;651e
	ccf			;651f
	ccf			;6520
	rlca			;6521
	ld bc,0033fh		;6522
	rst 38h			;6525
	xor b			;6526
	ld a,(hl)		;6527
	nop			;6528
	ccf			;6529
	rst 38h			;652a
	rst 38h			;652b
	call m,0c0f0h		;652c
	nop			;652f
	ld bc,0fe80h		;6530
	ret m			;6533
	ret po			;6534
	ret nz			;6535
	ret nz			;6536
	rra			;6537
	rra			;6538
	rst 38h			;6539
	cp 0f0h			;653a
	add a,b			;653c
	ccf			;653d
	ret po			;653e
	ret po			;653f
	ld c,003h		;6540
	rrca			;6542
	inc a			;6543
	ret po			;6544
	rlca			;6545
	rlca			;6546
	rst 38h			;6547
	nop			;6548
	rlca			;6549
	nop			;654a
	rra			;654b
	rra			;654c
	pop bc			;654d
	rrca			;654e
	ld b,003h		;654f
	and h			;6551
	ld bc,0f0c1h		;6552
	call m,03f3fh		;6555
	inc a			;6558
	inc e			;6559
	jp l7effh		;655a
	ld c,0feh		;655d
	rst 38h			;655f
	rst 38h			;6560
	cp 0feh			;6561
	nop			;6563
	nop			;6564
	cp 07eh			;6565
	ccf			;6567
	rra			;6568
	rra			;6569
	rst 38h			;656a
	rst 38h			;656b
	rra			;656c
	rra			;656d
	ld b,003h		;656e
	ld bc,l7c7ch		;6570
	jr c,l65f1h		;6573
	jr c,l657ah		;6575
	ccf			;6577
	and h			;6578
	add a,b			;6579
l657ah:
	ret m			;657a
	ret nz			;657b
	ret po			;657c
	ret nz			;657d
	cp 00fh			;657e
	rrca			;6580
	rlca			;6581
	ret p			;6582
	rst 38h			;6583
	ld a,a			;6584
	rst 38h			;6585
	call m,0f0f0h		;6586
	nop			;6589
	rrca			;658a
	rrca			;658b
	ld c,003h		;658c
	ld a,(hl)		;658e
	call m,0f0f0h		;658f
	rra			;6592
	ccf			;6593
	ret po			;6594
	ret po			;6595
	ld a,h			;6596
	ld a,h			;6597
	ret p			;6598
	ret nz			;6599
	ret nz			;659a
	rra			;659b
	rra			;659c
	inc bc			;659d
	ld c,004h		;659e
	add a,b			;65a0
	inc b			;65a1
	ccf			;65a2
	adc a,(hl)		;65a3
	add a,b			;65a4
	cp 0feh			;65a5
	nop			;65a7
	cp 0feh			;65a8
	rlca			;65aa
	inc bc			;65ab
	ld a,(hl)		;65ac
	call m,0fefch		;65ad
	ccf			;65b0
	nop			;65b1
	inc b			;65b2
	inc bc			;65b3
	inc b			;65b4
	ld bc,03e02h		;65b5
	add a,c			;65b8
	cp 003h			;65b9
	call m,0f802h		;65bb
	add a,d			;65be
	ld bc,003ffh		;65bf
	call m,0f802h		;65c2
	sbc a,c			;65c5
	rrca			;65c6
	rra			;65c7
	nop			;65c8
	rra			;65c9
	rra			;65ca
	pop bc			;65cb
	rrca			;65cc
	inc bc			;65cd
	inc bc			;65ce
	rst 38h			;65cf
	rst 38h			;65d0
	rra			;65d1
	inc bc			;65d2
	rrca			;65d3
	ret nz			;65d4
	ret p			;65d5
	call m,00306h		;65d6
	ld bc,0c001h		;65d9
	ret m			;65dc
	ccf			;65dd
	rlca			;65de
	inc bc			;65df
	ccf			;65e0
	adc a,h			;65e1
	ld a,a			;65e2
	rlca			;65e3
	rlca			;65e4
	nop			;65e5
	ret po			;65e6
	cp 00fh			;65e7
	rrca			;65e9
	rlca			;65ea
	ret p			;65eb
	ld a,a			;65ec
	rrca			;65ed
	inc bc			;65ee
	ret po			;65ef
	inc b			;65f0
l65f1h:
	ccf			;65f1
	inc b			;65f2
	ld a,a			;65f3
	add a,l			;65f4
	ccf			;65f5
	ret nz			;65f6
	ret nz			;65f7
	add a,b			;65f8
	add a,b			;65f9
	inc bc			;65fa
	cp 002h			;65fb
	ret nz			;65fd
	ld (bc),a		;65fe
	add a,b			;65ff
	adc a,(hl)		;6600
	cp 0fch			;6601
	ret po			;6603
	rst 38h			;6604
	nop			;6605
	ld bc,0ffffh		;6606
	ld a,a			;6609
	ld h,b			;660a
	ret nz			;660b
	rst 38h			;660c
	ret nz			;660d
	cp 003h			;660e
	ret p			;6610
	adc a,l			;6611
	nop			;6612
	rrca			;6613
	rrca			;6614
	add a,b			;6615
	ret p			;6616
	ret p			;6617
	nop			;6618
	rlca			;6619
	rlca			;661a
	nop			;661b
	inc bc			;661c
	rra			;661d
	rst 38h			;661e
	inc bc			;661f
	ret p			;6620
	ld (bc),a		;6621
	nop			;6622
	add a,e			;6623
	inc bc			;6624
	rra			;6625
	rst 38h			;6626
	inc bc			;6627
	ret p			;6628
	cp l			;6629
	rlca			;662a
	cp 0fch			;662b
	ret p			;662d
	ret p			;662e
	rra			;662f
	ccf			;6630
	ret po			;6631
	ret po			;6632
	set 0,e			;6633
	rst 38h			;6635
	rst 38h			;6636
	ret p			;6637
	ret p			;6638
	inc c			;6639
	inc bc			;663a
	jr c,$-123		;663b
	sbc a,a			;663d
	rst 38h			;663e
	ret p			;663f
	ret p			;6640
	inc c			;6641
	inc bc			;6642
	rrca			;6643
	rrca			;6644
	nop			;6645
	cp 0ffh			;6646
	ld a,h			;6648
	ret m			;6649
	rst 28h			;664a
	rst 38h			;664b
	rst 38h			;664c
	nop			;664d
	ld bc,0ffffh		;664e
	ld a,a			;6651
	ld h,b			;6652
	rst 38h			;6653
	ret p			;6654
	add a,b			;6655
	ret p			;6656
	ret p			;6657
	nop			;6658
	rlca			;6659
	rlca			;665a
	rst 8			;665b
	ret p			;665c
	add a,b			;665d
	ret p			;665e
	ret p			;665f
	nop			;6660
	rlca			;6661
	rlca			;6662
	ld a,(hl)		;6663
	ccf			;6664
	rra			;6665
	rst 38h			;6666
	inc bc			;6667
	rra			;6668
	add a,l			;6669
	rst 38h			;666a
	nop			;666b
	rst 38h			;666c
	ret nz			;666d
	cp 003h			;666e
	ret p			;6670
	sub l			;6671
	nop			;6672
	rrca			;6673
	rrca			;6674
	add a,b			;6675
	ret p			;6676
	ret p			;6677
	nop			;6678
	rlca			;6679
	rlca			;667a
	nop			;667b
	inc bc			;667c
	rra			;667d
	rst 38h			;667e
	ret p			;667f
	ret p			;6680
	ld c,003h		;6681
	ld a,(hl)		;6683
	ccf			;6684
	rra			;6685
	rst 38h			;6686
	inc b			;6687
	rra			;6688
	add a,h			;6689
	ld a,(hl)		;668a
	ccf			;668b
	rra			;668c
	rst 38h			;668d
	inc bc			;668e
	rra			;668f
	sbc a,d			;6690
	rst 38h			;6691
	add a,b			;6692
	cp 07eh			;6693
	ld a,(hl)		;6695
	rlca			;6696
	ccf			;6697
	ret m			;6698
	ret m			;6699
	ld bc,00ff8h		;669a
	rst 38h			;669d
	rst 38h			;669e
	nop			;669f
	ex af,af'		;66a0
	rst 38h			;66a1
	ex af,af'		;66a2
	rst 38h			;66a3
	ld bc,0ffffh		;66a4
	nop			;66a7
	ex af,af'		;66a8
	rst 38h			;66a9
	rst 38h			;66aa
	inc b			;66ab
	ld a,(hl)		;66ac
	adc a,h			;66ad
	add a,b			;66ae
	cp 080h			;66af
	ld bc,00ff9h		;66b1
	rst 38h			;66b4
	ld bc,00b01h		;66b5
	rst 38h			;66b8
	rra			;66b9
	inc b			;66ba
	ld a,(hl)		;66bb
	add a,e			;66bc
	add a,b			;66bd
	cp 080h			;66be
	nop			;66c0
	ld (bc),a		;66c1
	inc hl			;66c2
	add a,e			;66c3
	ld hl,043f3h		;66c4
	inc bc			;66c7
	ld (04303h),a		;66c8
	add a,c			;66cb
	jp p,04f04h		;66cc
	inc bc			;66cf
	ld b,e			;66d0
	add a,l			;66d1
	ld (0f42fh),a		;66d2
	ld b,e			;66d5
	ld (0f204h),a		;66d6
	ld (bc),a		;66d9
	pop af			;66da
	add a,(hl)		;66db
	inc sp			;66dc
	ld hl,04332h		;66dd
	ld (00421h),a		;66e0
	pop af			;66e3
	add a,d			;66e4
	ld b,e			;66e5
	ld sp,01f03h		;66e6
	add a,l			;66e9
	ld hl,04332h		;66ea
	ld hl,00321h		;66ed
	rra			;66f0
	add a,l			;66f1
	ld hl,04332h		;66f2
	ld (00421h),a		;66f5
	rra			;66f8
	adc a,d			;66f9
	ld hl,04332h		;66fa
	ld (0f932h),a		;66fd
	ld sp,hl		;6700
	or 043h			;6701
	ld (04308h),a		;6703
	inc b			;6706
	pop af			;6707
	add a,d			;6708
	ld sp,hl		;6709
	or 004h			;670a
	jp p,0f181h		;670c
	dec b			;670f
	ld (de),a		;6710
	inc b			;6711
	ld (02104h),a		;6712
	inc bc			;6715
	ld b,e			;6716
	ld (bc),a		;6717
	ld (02183h),a		;6718
	rra			;671b
	rra			;671c
	inc bc			;671d
	ld (02181h),a		;671e
	inc bc			;6721
	rra			;6722
	inc bc			;6723
	ld hl,0f103h		;6724
	add a,e			;6727
	ld hl,04332h		;6728
	inc bc			;672b
	pop af			;672c
	ld (bc),a		;672d
	ld hl,03204h		;672e
	add a,c			;6731
	ld hl,01f03h		;6732
	inc bc			;6735
	ld hl,04302h		;6736
	add a,d			;6739
	ld (00421h),a		;673a
	pop af			;673d
	inc b			;673e
	ld b,e			;673f
	adc a,h			;6740
	ld (0f121h),a		;6741
	pop af			;6744
	ld (0f9f9h),a		;6745
	or 043h			;6748
	ld (02132h),a		;674a
	rlca			;674d
	ld b,e			;674e
	adc a,b			;674f
	ld (0f6f9h),a		;6750
	pop af			;6753
	pop af			;6754
	ld b,e			;6755
	ld (00332h),a		;6756
	ld hl,01f02h		;6759
	adc a,d			;675c
	ld (02121h),a		;675d
	rra			;6760
	ret p			;6761
	ret p			;6762
	ld de,02323h		;6763
	ld (de),a		;6766
	inc b			;6767
	pop af			;6768
	adc a,c			;6769
	ld (de),a		;676a
	inc hl			;676b
	inc (hl)		;676c
	ld (01f21h),a		;676d
	rra			;6770
	ld hl,00332h		;6771
	ld b,e			;6774
	add a,e			;6775
	ld (03221h),a		;6776
	ld c,043h		;6779
	add a,d			;677b
	di			;677c
	ld b,e			;677d
	inc bc			;677e
	ld (03183h),a		;677f
	rra			;6782
	rra			;6783
	dec b			;6784
	ld hl,0f102h		;6785
	add a,d			;6788
	inc de			;6789
	ld b,e			;678a
	inc b			;678b
	pop af			;678c
	add a,c			;678d
	ld sp,04303h		;678e
	ld (bc),a		;6791
	ld (02187h),a		;6792
	rra			;6795
	rra			;6796
	jp p,012f2h		;6797
	di			;679a
	inc bc			;679b
	jp p,0f104h		;679c
	add a,h			;679f
	ld (03243h),a		;67a0
	ld hl,0f104h		;67a3
	inc b			;67a6
	ld hl,01f02h		;67a7
	add a,d			;67aa
	inc sp			;67ab
	ld hl,0f106h		;67ac
	add a,c			;67af
	jp p,0f104h		;67b0
	add a,d			;67b3
	ld hl,00332h		;67b4
	ld b,e			;67b7
	add a,d			;67b8
	ld (00321h),a		;67b9
	rra			;67bc
	inc bc			;67bd
	ld hl,04302h		;67be
	add a,d			;67c1
	ld (00421h),a		;67c2
	pop af			;67c5
	ld (bc),a		;67c6
	ld hl,01f03h		;67c7
	add a,e			;67ca
	ld hl,0f332h		;67cb
	inc bc			;67ce
	pop af			;67cf
	ld (bc),a		;67d0
	ld (de),a		;67d1
	ld (bc),a		;67d2
	pop af			;67d3
	add a,d			;67d4
	ld (de),a		;67d5
	ld (02103h),a		;67d6
	ld (bc),a		;67d9
	rra			;67da
	sub e			;67db
	ld sp,0ff43h		;67dc
	rst 38h			;67df
	ld (03243h),a		;67e0
	rst 38h			;67e3
	ld b,e			;67e4
	ld (0ffffh),a		;67e5
	ld hl,01f21h		;67e8
	rra			;67eb
	ld (03221h),a		;67ec
	rlca			;67ef
	ld b,e			;67f0
	ld b,0f3h		;67f1
	add a,l			;67f3
	inc de			;67f4
	inc hl			;67f5
	ld hl,043ffh		;67f6
	inc b			;67f9
	ld (02184h),a		;67fa
	pop af			;67fd
	pop af			;67fe
	ld (02104h),a		;67ff
	adc a,c			;6802
	pop af			;6803
	ld (02132h),a		;6804
	rra			;6807
	rra			;6808
	jp p,012f2h		;6809
	inc b			;680c
	ld (02181h),a		;680d
	inc bc			;6810
	pop af			;6811
	add a,e			;6812
	jp p,0f3f3h		;6813
	inc bc			;6816
	inc hl			;6817
	ld (bc),a		;6818
	ld hl,03285h		;6819
	ld hl,0f21fh		;681c
	jp p,02303h		;681f
	ld (bc),a		;6822
	ld b,e			;6823
	sub b			;6824
	ld (0f121h),a		;6825
	jp p,032f2h		;6828
	rst 38h			;682b
	rst 38h			;682c
	ld sp,04142h		;682d
	ld c,a			;6830
	ld c,a			;6831
	ld b,e			;6832
	rst 38h			;6833
	rst 38h			;6834
	dec b			;6835
	ld b,e			;6836
	add a,h			;6837
	ld (0ffffh),a		;6838
	ld b,e			;683b
	inc bc			;683c
	ld (02102h),a		;683d
	add a,h			;6840
	defb 0fdh,00fh,00fh ;illegal sequence	;6841
	ld b,e			;6844
	inc b			;6845
	ld hl,0d88ch		;6846
	call p,032f4h		;6849
	ld (01f21h),a		;684c
	rra			;684f
	ret m			;6850
	ccf			;6851
	ld (00321h),a		;6852
	rra			;6855
	adc a,c			;6856
	ld hl,0fdfdh		;6857
	ret m			;685a
	ret m			;685b
	pop af			;685c
	ld (de),a		;685d
	inc hl			;685e
	inc hl			;685f
	inc b			;6860
	ret p			;6861
	add a,h			;6862
	pop af			;6863
	ld (de),a		;6864
	inc hl			;6865
	ld b,e			;6866
	inc bc			;6867
	pop af			;6868
	ld (bc),a		;6869
	ld (de),a		;686a
	ld (bc),a		;686b
	pop af			;686c
	add a,d			;686d
	ld (de),a		;686e
	push bc			;686f
	inc bc			;6870
	ei			;6871
	sub h			;6872
	pop af			;6873
	ld (de),a		;6874
	ld (0a5f3h),a		;6875
	push af			;6878
	ei			;6879
	ei			;687a
	pop af			;687b
	ld (de),a		;687c
	ld (0f1f3h),a		;687d
	ld (de),a		;6880
	ld (de),a		;6881
	ld (04332h),a		;6882
	call p,003fch		;6885
	rrca			;6888
	add a,c			;6889
	ld b,e			;688a
	inc b			;688b
	ld hl,0f302h		;688c
	add a,d			;688f
	ld (00321h),a		;6890
	rra			;6893
	add a,l			;6894
	ld hl,0f3fch		;6895
	ld (00321h),a		;6898
	rra			;689b
	add a,c			;689c
	ld hl,0f104h		;689d
	ld b,0f0h		;68a0
	adc a,d			;68a2
l68a3h:
	call p,03232h		;68a3
	ld hl,01f1fh		;68a6
	ret p			;68a9
	ccf			;68aa
	ld (00321h),a		;68ab
	rra			;68ae
	sub c			;68af
	ld hl,0fdfdh		;68b0
	ret m			;68b3
	ret m			;68b4
	pop af			;68b5
	ld (de),a		;68b6
	ld (0f1f3h),a		;68b7
	ret m			;68ba
	defb 0fdh,0fdh,0f8h ;illegal sequence	;68bb
	defb 0fdh,0fdh,0f8h ;illegal sequence	;68be
	inc b			;68c1
	pop af			;68c2
	add a,c			;68c3
	ret m			;68c4
	inc bc			;68c5
	defb 0fdh,002h,0e8h ;illegal sequence	;68c6
	ld (bc),a		;68c9
	ret c			;68ca
	ld (bc),a		;68cb
	defb 0fdh,088h,0f1h ;illegal sequence	;68cc
	ld (de),a		;68cf
	ld (de),a		;68d0
	pop af			;68d1
	defb 0fdh,0fdh,08dh ;illegal sequence	;68d2
	adc a,l			;68d5
	inc b			;68d6
	ret m			;68d7
	ld (bc),a		;68d8
	defb 0fdh,002h,08dh ;illegal sequence	;68d9
	ld (bc),a		;68dc
	ret m			;68dd
	add a,l			;68de
	xor 0d8h		;68df
	ret c			;68e1
	defb 0fdh,0d8h,003h ;illegal sequence	;68e2
	ret pe			;68e5
	adc a,l			;68e6
	jp p,0fdf1h		;68e7
	defb 0fdh,0f8h,0fdh ;illegal sequence	;68ea
	ret m			;68ed
	ret m			;68ee
	cp 0d8h			;68ef
	ret c			;68f1
	defb 0fdh,0d8h,003h ;illegal sequence	;68f2
	ret pe			;68f5
	nop			;68f6
	inc b			;68f7
	nop			;68f8
	adc a,b			;68f9
	rlca			;68fa
	ccf			;68fb
	ret m			;68fc
	ret m			;68fd
	inc bc			;68fe
	rra			;68ff
	rrca			;6900
	rst 38h			;6901
	inc bc			;6902
	ret p			;6903
	adc a,l			;6904
	nop			;6905
	ld a,(hl)		;6906
	call m,0f0f0h		;6907
	ld c,0ffh		;690a
	cp 0f8h			;690c
	daa			;690e
	ccf			;690f
	ccf			;6910
	cp 003h			;6911
	ret p			;6913
l6914h:
	add a,l			;6914
	nop			;6915
	set 0,e			;6916
	rst 38h			;6918
	rst 38h			;6919
	inc bc			;691a
	ret p			;691b
	add a,l			;691c
	nop			;691d
	jr c,l68a3h		;691e
	sbc a,a			;6920
	rst 38h			;6921
	inc bc			;6922
	ret p			;6923
	sub l			;6924
	nop			;6925
	rst 18h			;6926
	jp 018c3h		;6927
	jp 081c3h		;692a
	ld a,(hl)		;692d
	cp 0f8h			;692e
	rrca			;6930
	ld (hl),c		;6931
	jr nz,l6914h		;6932
	ld a,0c7h		;6934
	ld a,(hl)		;6936
	ccf			;6937
	rra			;6938
	rst 38h			;6939
	inc bc			;693a
	rra			;693b
	add a,h			;693c
	rst 38h			;693d
	cp 07fh			;693e
	ccf			;6940
	inc b			;6941
	rra			;6942
	add a,c			;6943
	ccf			;6944
	inc bc			;6945
	jp 0188ah		;6946
	jp 081c3h		;6949
	ld a,(hl)		;694c
	jp 03c81h		;694d
	ld a,(hl)		;6950
	inc a			;6951
	inc bc			;6952
	add a,c			;6953
	ld (bc),a		;6954
	sbc a,a			;6955
	adc a,e			;6956
	sub c			;6957
	ld (hl),c		;6958
	ld sp,0c180h		;6959
	pop bc			;695c
	rra			;695d
	add a,c			;695e
	inc a			;695f
	ld a,(hl)		;6960
	inc a			;6961
	inc bc			;6962
	add a,c			;6963
	inc bc			;6964
	pop bc			;6965
	adc a,b			;6966
	add a,b			;6967
	ld a,0ffh		;6968
	ret m			;696a
	ret m			;696b
	cp 07fh			;696c
	ccf			;696e
	inc b			;696f
	rra			;6970
	sbc a,c			;6971
	ccf			;6972
	rst 38h			;6973
	inc a			;6974
	rst 28h			;6975
	rst 0			;6976
	rst 8			;6977
	rst 38h			;6978
	ret m			;6979
	ret m			;697a
	ld bc,00ff8h		;697b
	ld (hl),c		;697e
	ld sp,0c180h		;697f
	pop bc			;6982
	ret po			;6983
	ld c,004h		;6984
	ld (hl),c		;6986
	jr nz,$-30		;6987
	ld a,0c1h		;6989
	nop			;698b
	ld b,0f0h		;698c
	add a,c			;698e
	pop af			;698f
	inc bc			;6990
	ld (de),a		;6991
	inc bc			;6992
	pop af			;6993
	add a,e			;6994
	ld (de),a		;6995
	inc hl			;6996
	inc hl			;6997
	inc bc			;6998
	pop af			;6999
	add a,c			;699a
	ld (de),a		;699b
	inc b			;699c
	ld (0b589h),a		;699d
	ei			;69a0
	ld c,a			;69a1
	ld (02132h),a		;69a2
	rra			;69a5
	rra			;69a6
	push bc			;69a7
	inc bc			;69a8
	ei			;69a9
	sbc a,c			;69aa
	pop af			;69ab
	ld (de),a		;69ac
	inc hl			;69ad
	inc hl			;69ae
	and l			;69af
	push af			;69b0
	ei			;69b1
	ei			;69b2
	pop af			;69b3
	ld (de),a		;69b4
	inc hl			;69b5
	inc hl			;69b6
	call m,0b5cbh		;69b7
	and l			;69ba
	or l			;69bb
	set 7,h			;69bc
	call m,0f121h		;69be
	push af			;69c1
	or l			;69c2
	rlc e			;69c3
	call m,0f104h		;69c5
	ld (bc),a		;69c8
	ei			;69c9
	ld (bc),a		;69ca
	call m,0f186h		;69cb
	push af			;69ce
	ei			;69cf
	ei			;69d0
	push af			;69d1
	ei			;69d2
	inc bc			;69d3
	call m,0cb89h		;69d4
	or l			;69d7
	and l			;69d8
	or l			;69d9
	set 7,h			;69da
	call m,0b5cbh		;69dc
	inc bc			;69df
	and l			;69e0
	adc a,l			;69e1
	or l			;69e2
	set 7,h			;69e3
	res 6,l			;69e5
	push bc			;69e7
	push bc			;69e8
	set 7,h			;69e9
	res 6,l			;69eb
	call m,003b5h		;69ed
	and l			;69f0
	adc a,h			;69f1
	or l			;69f2
	set 7,h			;69f3
	call m,0b5cbh		;69f5
	or l			;69f8
	and l			;69f9
	pop af			;69fa
	pop af			;69fb
	ld (de),a		;69fc
	pop af			;69fd
	inc bc			;69fe
	call m,0fb02h		;69ff
	dec b			;6a02
	call m,0fb92h		;6a03
	call m,0f1fch		;6a06
	ld (de),a		;6a09
	ld (de),a		;6a0a
	pop af			;6a0b
	call m,0cbc5h		;6a0c
	call m,0ffcbh		;6a0f
	or l			;6a12
	and l			;6a13
	and l			;6a14
	or l			;6a15
	rlc e			;6a16
	call m,08100h		;6a18
	ret nz			;6a1b
	inc b			;6a1c
	rst 38h			;6a1d
	dec b			;6a1e
	ret nz			;6a1f
	inc b			;6a20
	rst 38h			;6a21
	add a,d			;6a22
	ret p			;6a23
	nop			;6a24
	nop			;6a25
	ld (bc),a		;6a26
	defb 0fdh,003h,000h ;illegal sequence	;6a27
	add a,(hl)		;6a2a
	defb 0fdh,0d8h,08eh ;illegal sequence	;6a2b
	ret c			;6a2e
	defb 0fdh,0fdh,005h ;illegal sequence	;6a2f
	rrca			;6a32
	nop			;6a33
	ld (bc),a		;6a34
	inc a			;6a35
	sub a			;6a36
	add a,c			;6a37
	pop bc			;6a38
	pop bc			;6a39
	ld a,a			;6a3a
	rra			;6a3b
	rst 38h			;6a3c
	ld a,09fh		;6a3d
	sub c			;6a3f
	ld (hl),c		;6a40
	ld sp,08183h		;6a41
	add a,c			;6a44
	ld de,0019fh		;6a45
	adc a,(hl)		;6a48
	ld hl,0efb1h		;6a49
	daa			;6a4c
	daa			;6a4d
	inc bc			;6a4e
	call po,0db84h		;6a4f
	ld a,a			;6a52
	rra			;6a53
	rst 38h			;6a54
	nop			;6a55
	ld (bc),a		;6a56
	and l			;6a57
	add a,e			;6a58
	or l			;6a59
	set 7,h			;6a5a
	inc bc			;6a5c
	ret p			;6a5d
	sub l			;6a5e
	call m,0c5b5h		;6a5f
	push bc			;6a62
	ei			;6a63
	call m,0b5cbh		;6a64
	call m,0b5b5h		;6a67
	and l			;6a6a
	or l			;6a6b
	ei			;6a6c
	call m,0b5cbh		;6a6d
	or l			;6a70
	set 7,h			;6a71
	call m,0f003h		;6a73
	nop			;6a76
	add a,d			;6a77
	ret p			;6a78
	ret nz			;6a79
	ld b,000h		;6a7a
	adc a,b			;6a7c
	ret m			;6a7d
	ret po			;6a7e
l6a7fh:
	add a,b			;6a7f
	call m,080f0h		;6a80
	nop			;6a83
	nop			;6a84
	ld b,00fh		;6a85
	ld (bc),a		;6a87
	rra			;6a88
	ld b,000h		;6a89
	add a,d			;6a8b
	ret nz			;6a8c
	ret p			;6a8d
	ld b,000h		;6a8e
	add a,(hl)		;6a90
	ret po			;6a91
	cp 0f8h			;6a92
	ret m			;6a94
	ret p			;6a95
	ret po			;6a96
	inc b			;6a97
	nop			;6a98
	ld (bc),a		;6a99
	call m,0e084h		;6a9a
	ret nz			;6a9d
	ret nz			;6a9e
	add a,b			;6a9f
	dec b			;6aa0
	nop			;6aa1
	add a,l			;6aa2
	add a,b			;6aa3
	ret p			;6aa4
	cp 0e0h			;6aa5
	call m,00006h		;6aa7
	add a,h			;6aaa
	ret p			;6aab
	rst 38h			;6aac
	ret p			;6aad
	rst 38h			;6aae
	ld a,(bc)		;6aaf
	nop			;6ab0
	ld (bc),a		;6ab1
	rst 38h			;6ab2
	ld (bc),a		;6ab3
	nop			;6ab4
	inc b			;6ab5
	rst 38h			;6ab6
	ld (bc),a		;6ab7
	nop			;6ab8
	add a,l			;6ab9
	rst 38h			;6aba
	nop			;6abb
	ret p			;6abc
	rrca			;6abd
	rrca			;6abe
	ld a,(bc)		;6abf
	rst 38h			;6ac0
	inc bc			;6ac1
	nop			;6ac2
	ex af,af'		;6ac3
	rst 38h			;6ac4
	rlca			;6ac5
	nop			;6ac6
	add a,d			;6ac7
	ret p			;6ac8
	rst 38h			;6ac9
	ex af,af'		;6aca
	nop			;6acb
	ld c,0ffh		;6acc
	inc bc			;6ace
	ret p			;6acf
	inc c			;6ad0
	rst 38h			;6ad1
	inc b			;6ad2
	rrca			;6ad3
	inc c			;6ad4
	rst 38h			;6ad5
	inc bc			;6ad6
	ret p			;6ad7
	ld c,0ffh		;6ad8
	add a,c			;6ada
	nop			;6adb
	ld b,0ffh		;6adc
	ld (bc),a		;6ade
	nop			;6adf
	add a,c			;6ae0
	ret p			;6ae1
	dec c			;6ae2
	nop			;6ae3
	inc b			;6ae4
	ret p			;6ae5
	inc c			;6ae6
	rst 38h			;6ae7
	inc b			;6ae8
	ret p			;6ae9
	ld b,000h		;6aea
	nop			;6aec
	ex af,af'		;6aed
	djnz l6af3h		;6aee
	ld hl,01007h		;6af0
l6af3h:
	add a,d			;6af3
	ret p			;6af4
	jr nz,l6b09h		;6af5
	djnz l6afbh		;6af7
	jr nz,l6b04h		;6af9
l6afbh:
	djnz l6a7fh		;6afb
	ret p			;6afd
	or b			;6afe
	ex af,af'		;6aff
	ret nz			;6b00
	inc bc			;6b01
	jr nz,$+4		;6b02
l6b04h:
	ld (0c008h),a		;6b04
	add a,e			;6b07
	push bc			;6b08
l6b09h:
	cp h			;6b09
	cp h			;6b0a
	ld a,(bc)		;6b0b
	ret nz			;6b0c
	ld (bc),a		;6b0d
	or l			;6b0e
	ld b,00ch		;6b0f
	dec b			;6b11
	rrc l			;6b12
	inc c			;6b14
	rlca			;6b15
	dec bc			;6b16
	ld (de),a		;6b17
	ret nz			;6b18
	ld (bc),a		;6b19
	rrc (hl)		;6b1a
	inc c			;6b1c
	add a,c			;6b1d
	rrc (hl)		;6b1e
	inc c			;6b20
	ld (bc),a		;6b21
	dec bc			;6b22
	ld c,00ch		;6b23
	add a,c			;6b25
	rl a			;6b26
	inc c			;6b28
	add a,c			;6b29
	cp e			;6b2a
	rrca			;6b2b
	ret nz			;6b2c
	add a,d			;6b2d
	cp h			;6b2e
	dec bc			;6b2f
	ld c,00ch		;6b30
	add a,d			;6b32
	dec bc			;6b33
	cp h			;6b34
	rlca			;6b35
	ret nz			;6b36
	nop			;6b37
	dec b			;6b38
	rst 38h			;6b39
	inc bc			;6b3a
	ret p			;6b3b
	inc b			;6b3c
	rst 38h			;6b3d
	ld (bc),a		;6b3e
	nop			;6b3f
	add a,c			;6b40
	rst 38h			;6b41
	dec b			;6b42
	nop			;6b43
	inc bc			;6b44
	ret p			;6b45
	add a,c			;6b46
	rrca			;6b47
	dec b			;6b48
	rst 38h			;6b49
	ld (bc),a		;6b4a
	nop			;6b4b
	ld b,0ffh		;6b4c
	inc bc			;6b4e
	rrca			;6b4f
	ld (bc),a		;6b50
	nop			;6b51
	inc b			;6b52
	rrca			;6b53
	ld b,0f0h		;6b54
	inc b			;6b56
	nop			;6b57
	inc bc			;6b58
	ret p			;6b59
	inc b			;6b5a
	rrca			;6b5b
	add a,d			;6b5c
	nop			;6b5d
	ret p			;6b5e
	inc bc			;6b5f
	rrca			;6b60
	inc b			;6b61
	rst 38h			;6b62
	ld (bc),a		;6b63
	rrca			;6b64
	inc bc			;6b65
	ret p			;6b66
	rlca			;6b67
	rst 38h			;6b68
	dec bc			;6b69
	rrca			;6b6a
	ld b,000h		;6b6b
	inc bc			;6b6d
	rrca			;6b6e
	dec b			;6b6f
	nop			;6b70
	inc bc			;6b71
	ret p			;6b72
	inc bc			;6b73
	nop			;6b74
	inc bc			;6b75
	rrca			;6b76
	ld (bc),a		;6b77
	ret p			;6b78
	add a,l			;6b79
	nop			;6b7a
	rst 38h			;6b7b
	rst 38h			;6b7c
	nop			;6b7d
	nop			;6b7e
	inc bc			;6b7f
	rst 38h			;6b80
	ex af,af'		;6b81
	rrca			;6b82
	ld (bc),a		;6b83
	rst 38h			;6b84
	ld b,00fh		;6b85
	ld b,000h		;6b87
	ex af,af'		;6b89
	ret p			;6b8a
	inc b			;6b8b
	nop			;6b8c
	ld (bc),a		;6b8d
	rst 38h			;6b8e
	add a,e			;6b8f
	nop			;6b90
	rst 38h			;6b91
	rst 38h			;6b92
	ld b,000h		;6b93
	add a,e			;6b95
	rst 38h			;6b96
	ret p			;6b97
	ret p			;6b98
	dec b			;6b99
	nop			;6b9a
	ld (bc),a		;6b9b
	ret p			;6b9c
	add a,d			;6b9d
	rrca			;6b9e
	nop			;6b9f
	inc b			;6ba0
	rrca			;6ba1
	inc b			;6ba2
	ret p			;6ba3
	inc b			;6ba4
	rrca			;6ba5
	inc bc			;6ba6
	rst 38h			;6ba7
	ld (bc),a		;6ba8
	ret p			;6ba9
	inc b			;6baa
	rrca			;6bab
	ld (bc),a		;6bac
	nop			;6bad
	nop			;6bae
	ld b,00ch		;6baf
	add a,d			;6bb1
	dec bc			;6bb2
	push bc			;6bb3
	dec b			;6bb4
	inc c			;6bb5
	inc bc			;6bb6
	ld e,e			;6bb7
	dec b			;6bb8
	ret nz			;6bb9
	add a,e			;6bba
	cp h			;6bbb
	ld e,e			;6bbc
	ld e,e			;6bbd
	ld b,00ch		;6bbe
	ld (bc),a		;6bc0
	ld e,e			;6bc1
	ld b,00ch		;6bc2
	add a,d			;6bc4
	res 6,l			;6bc5
	inc bc			;6bc7
	ret nz			;6bc8
	adc a,b			;6bc9
	or b			;6bca
	ld d,b			;6bcb
	cp h			;6bcc
	cp h			;6bcd
	ld d,b			;6bce
	cp e			;6bcf
	ld e,h			;6bd0
	or b			;6bd1
	dec b			;6bd2
	ret nz			;6bd3
	adc a,e			;6bd4
	or b			;6bd5
	ld d,b			;6bd6
	cp h			;6bd7
	cp h			;6bd8
	ld d,b			;6bd9
	or b			;6bda
	ret nz			;6bdb
	ret nz			;6bdc
	or l			;6bdd
	or l			;6bde
	rlc l			;6bdf
	inc c			;6be1
	add a,h			;6be2
	res 6,l			;6be3
	or l			;6be5
	rrc c			;6be6
	inc c			;6be8
	adc a,c			;6be9
	dec bc			;6bea
	push bc			;6beb
	cp e			;6bec
	inc c			;6bed
	dec bc			;6bee
	push bc			;6bef
	cp e			;6bf0
	ld e,h			;6bf1
	or b			;6bf2
	ex af,af'		;6bf3
	ret nz			;6bf4
	add a,d			;6bf5
	cp h			;6bf6
	ld e,e			;6bf7
	ld b,0c0h		;6bf8
	add a,d			;6bfa
	or b			;6bfb
	ld e,h			;6bfc
	inc b			;6bfd
	ret nz			;6bfe
	add a,e			;6bff
	cp h			;6c00
	ld e,e			;6c01
	ld e,e			;6c02
	inc bc			;6c03
	cp h			;6c04
	ld (bc),a		;6c05
	ld e,e			;6c06
	inc b			;6c07
	inc c			;6c08
	add a,a			;6c09
	or b			;6c0a
	ld d,b			;6c0b
	or b			;6c0c
	call z,0050bh		;6c0d
	dec bc			;6c10
	inc b			;6c11
	inc c			;6c12
	add a,h			;6c13
	dec bc			;6c14
	push bc			;6c15
	cp e			;6c16
	ld e,h			;6c17
	ld b,0b0h		;6c18
	ld (bc),a		;6c1a
	cp h			;6c1b
	add a,(hl)		;6c1c
	ld e,e			;6c1d
	dec bc			;6c1e
	push bc			;6c1f
	cp e			;6c20
	ld e,h			;6c21
	or b			;6c22
	ld b,0c0h		;6c23
	inc bc			;6c25
	or l			;6c26
	ex af,af'		;6c27
	ret nz			;6c28
	add a,d			;6c29
	res 6,l			;6c2a
	ld b,0c0h		;6c2c
	ld (bc),a		;6c2e
	cp h			;6c2f
	ld (bc),a		;6c30
	ret nz			;6c31
	adc a,d			;6c32
	or b			;6c33
	ld d,b			;6c34
	cp h			;6c35
	cp h			;6c36
	ld d,b			;6c37
	or b			;6c38
	set 1,e			;6c39
	dec b			;6c3b
	dec bc			;6c3c
	inc b			;6c3d
	inc c			;6c3e
	add a,l			;6c3f
	ld d,b			;6c40
	cp h			;6c41
	cp h			;6c42
	ld d,b			;6c43
	or b			;6c44
	inc bc			;6c45
	ret nz			;6c46
	nop			;6c47
	dec b			;6c48
	nop			;6c49
	inc bc			;6c4a
	rrca			;6c4b
	nop			;6c4c
	ld b,0c0h		;6c4d
	add a,d			;6c4f
	or b			;6c50
	ld d,b			;6c51
	nop			;6c52
	dec b			;6c53
	nop			;6c54
	ld (bc),a		;6c55
	rrca			;6c56
	add a,c			;6c57
	ret p			;6c58
	inc b			;6c59
	nop			;6c5a
	ld (bc),a		;6c5b
	rrca			;6c5c
	ld b,0f0h		;6c5d
	ex af,af'		;6c5f
	nop			;6c60
	inc b			;6c61
	rrca			;6c62
	add a,h			;6c63
	ret p			;6c64
	rst 38h			;6c65
	nop			;6c66
	nop			;6c67
	dec b			;6c68
	rst 38h			;6c69
	ld b,0f0h		;6c6a
	inc b			;6c6c
	rrca			;6c6d
	inc b			;6c6e
	ret p			;6c6f
	add a,c			;6c70
	rst 38h			;6c71
	rlca			;6c72
	ret p			;6c73
	add a,c			;6c74
	nop			;6c75
	ld b,00fh		;6c76
	ld (bc),a		;6c78
	ret p			;6c79
	ld (bc),a		;6c7a
	rst 38h			;6c7b
	inc bc			;6c7c
	ret p			;6c7d
	add hl,bc		;6c7e
	rrca			;6c7f
	sub l			;6c80
	nop			;6c81
	rrca			;6c82
	ret p			;6c83
	nop			;6c84
	rst 38h			;6c85
	rst 38h			;6c86
	nop			;6c87
	rst 38h			;6c88
	rst 38h			;6c89
	nop			;6c8a
	rrca			;6c8b
	rrca			;6c8c
	ret p			;6c8d
	ret p			;6c8e
	ret m			;6c8f
	rrca			;6c90
	nop			;6c91
	nop			;6c92
	rrca			;6c93
	nop			;6c94
	nop			;6c95
	inc bc			;6c96
	rrca			;6c97
	inc bc			;6c98
	ret p			;6c99
	ld (bc),a		;6c9a
	rrca			;6c9b
	add a,d			;6c9c
	nop			;6c9d
	ret p			;6c9e
	inc bc			;6c9f
	rrca			;6ca0
	adc a,b			;6ca1
	rst 38h			;6ca2
	nop			;6ca3
	rst 38h			;6ca4
	rst 38h			;6ca5
	nop			;6ca6
	nop			;6ca7
	rst 38h			;6ca8
	rst 38h			;6ca9
	nop			;6caa
	inc b			;6cab
	ld d,b			;6cac
	ld (bc),a		;6cad
	cp h			;6cae
	ld (bc),a		;6caf
	ld e,e			;6cb0
	dec b			;6cb1
	ret nz			;6cb2
	ld (bc),a		;6cb3
	cp h			;6cb4
	add a,h			;6cb5
	ld e,e			;6cb6
	push bc			;6cb7
	ld e,e			;6cb8
	cp h			;6cb9
	ld a,(bc)		;6cba
	ret nz			;6cbb
	add a,(hl)		;6cbc
	cp h			;6cbd
	ld e,e			;6cbe
	cp h			;6cbf
	cp h			;6cc0
	ld e,e			;6cc1
	ld e,e			;6cc2
	rlca			;6cc3
	inc c			;6cc4
	adc a,h			;6cc5
	dec bc			;6cc6
	push bc			;6cc7
	cp e			;6cc8
	ld e,h			;6cc9
	cp h			;6cca
	cp h			;6ccb
	dec bc			;6ccc
	inc c			;6ccd
	set 1,e			;6cce
	dec b			;6cd0
	dec bc			;6cd1
	inc bc			;6cd2
	inc c			;6cd3
	sbc a,h			;6cd4
	dec bc			;6cd5
	push bc			;6cd6
	cp e			;6cd7
	ld e,h			;6cd8
	or b			;6cd9
	ret nz			;6cda
	ret nz			;6cdb
	push bc			;6cdc
	dec bc			;6cdd
	inc c			;6cde
	inc c			;6cdf
	res 6,l			;6ce0
	or l			;6ce2
	set 1,e			;6ce3
	inc c			;6ce5
	inc c			;6ce6
	res 6,l			;6ce7
	or l			;6ce9
	rrc h			;6cea
	dec bc			;6cec
	push bc			;6ced
	cp e			;6cee
	ld e,h			;6cef
	or b			;6cf0
	ld b,0c0h		;6cf1
	inc bc			;6cf3
	or l			;6cf4
	ld (bc),a		;6cf5
	ret nz			;6cf6
	add a,l			;6cf7
	or l			;6cf8
	set 1,e			;6cf9
	or l			;6cfb
	rlc a			;6cfc
	ret nz			;6cfe
	adc a,h			;6cff
	cp h			;6d00
	ld e,e			;6d01
	ld e,e			;6d02
	cp h			;6d03
	ld e,e			;6d04
	ld e,e			;6d05
	cp h			;6d06
	cp h			;6d07
	or l			;6d08
	or l			;6d09
	rrc h			;6d0a
	inc bc			;6d0c
	or l			;6d0d
	ld (bc),a		;6d0e
	push bc			;6d0f
	ld (bc),a		;6d10
	res 0,c			;6d11
	inc c			;6d13
	nop			;6d14
	ld (bc),a		;6d15
	rst 38h			;6d16
	inc bc			;6d17
	rrca			;6d18
	rlca			;6d19
	ret p			;6d1a
	inc b			;6d1b
	rrca			;6d1c
	inc bc			;6d1d
	rst 38h			;6d1e
	dec b			;6d1f
	ret p			;6d20
	add a,c			;6d21
	nop			;6d22
	inc bc			;6d23
	ret p			;6d24
	inc bc			;6d25
	rrca			;6d26
	add a,d			;6d27
	nop			;6d28
	ret p			;6d29
	inc b			;6d2a
	rrca			;6d2b
	inc bc			;6d2c
	rst 38h			;6d2d
	dec b			;6d2e
	rrca			;6d2f
	inc bc			;6d30
	nop			;6d31
	ld (bc),a		;6d32
	ret p			;6d33
	inc b			;6d34
	rrca			;6d35
	ld (bc),a		;6d36
	rst 38h			;6d37
	nop			;6d38
	inc bc			;6d39
	inc c			;6d3a
	adc a,h			;6d3b
	res 6,l			;6d3c
	or l			;6d3e
	rrc h			;6d3f
	inc c			;6d41
	dec bc			;6d42
	dec b			;6d43
	set 1,e			;6d44
	dec b			;6d46
	dec bc			;6d47
	dec b			;6d48
	inc c			;6d49
	sub b			;6d4a
	dec bc			;6d4b
	push bc			;6d4c
	cp e			;6d4d
	ld e,h			;6d4e
	ret nz			;6d4f
	ret nz			;6d50
	cp h			;6d51
	ld e,e			;6d52
	ld e,e			;6d53
	cp h			;6d54
	ret nz			;6d55
	ret nz			;6d56
	set 1,e			;6d57
	push bc			;6d59
	dec bc			;6d5a
	inc b			;6d5b
	inc c			;6d5c
	add a,h			;6d5d
	push bc			;6d5e
	cp e			;6d5f
	ld e,h			;6d60
	cp h			;6d61
	inc b			;6d62
	ret nz			;6d63
	add a,l			;6d64
	push bc			;6d65
	set 1,e			;6d66
	or l			;6d68
	rlc e			;6d69
	inc c			;6d6b
	nop			;6d6c
	ld (bc),a		;6d6d
	rrca			;6d6e
	add a,e			;6d6f
	rlca			;6d70
	ld a,a			;6d71
	rlca			;6d72
	inc bc			;6d73
	rrca			;6d74
	ld (bc),a		;6d75
	rst 38h			;6d76
	add a,e			;6d77
	nop			;6d78
	ret m			;6d79
	ret m			;6d7a
	inc bc			;6d7b
	rst 38h			;6d7c
	ld (bc),a		;6d7d
	add a,b			;6d7e
	add a,c			;6d7f
	nop			;6d80
	inc bc			;6d81
	rlca			;6d82
	sub d			;6d83
	add a,b			;6d84
	call m,0fffeh		;6d85
	rst 38h			;6d88
	cp 0feh			;6d89
	nop			;6d8b
	nop			;6d8c
	cp 07eh			;6d8d
	ccf			;6d8f
	rra			;6d90
	rra			;6d91
	rst 38h			;6d92
	rst 38h			;6d93
	rra			;6d94
	rra			;6d95
	inc bc			;6d96
	nop			;6d97
	adc a,d			;6d98
	ld a,(hl)		;6d99
	ld a,h			;6d9a
	jr c,l6e19h		;6d9b
	jr c,l6da2h		;6d9d
	rra			;6d9f
	inc bc			;6da0
	nop			;6da1
l6da2h:
	add a,b			;6da2
	inc bc			;6da3
	ret nz			;6da4
	adc a,b			;6da5
	rst 38h			;6da6
	ld a,a			;6da7
	rrca			;6da8
	ld a,a			;6da9
	rrca			;6daa
	ld bc,00000h		;6dab
	inc b			;6dae
	rst 38h			;6daf
	sub h			;6db0
	rra			;6db1
	nop			;6db2
	ccf			;6db3
	nop			;6db4
	call m,000f0h		;6db5
	nop			;6db8
	ret m			;6db9
	nop			;6dba
	call m,0fc00h		;6dbb
	ret m			;6dbe
	ret po			;6dbf
	cp 0f8h			;6dc0
	ret nz			;6dc2
	call m,008c0h		;6dc3
	rra			;6dc6
	inc bc			;6dc7
	rlca			;6dc8
	add a,c			;6dc9
	inc bc			;6dca
	inc bc			;6dcb
	ld a,a			;6dcc
	add a,l			;6dcd
	jr nz,l6e4fh		;6dce
	ld a,000h		;6dd0
	cp 003h			;6dd2
	ret p			;6dd4
	adc a,c			;6dd5
	nop			;6dd6
	ret m			;6dd7
	ret po			;6dd8
	add a,b			;6dd9
	ret p			;6dda
	ret p			;6ddb
	nop			;6ddc
	rlca			;6ddd
	rlca			;6dde
	ld b,000h		;6ddf
	sub e			;6de1
	rrca			;6de2
	rst 38h			;6de3
	inc a			;6de4
	ld a,a			;6de5
	cp 0fch			;6de6
	ret m			;6de8
	ret p			;6de9
	ret nz			;6dea
	rrca			;6deb
	add a,b			;6dec
	ld bc,00f06h		;6ded
	ccf			;6df0
	ld a,a			;6df1
	ld a,a			;6df2
	rra			;6df3
	rrca			;6df4
	inc bc			;6df5
	rra			;6df6
	inc bc			;6df7
	ret po			;6df8
	ld (bc),a		;6df9
	rst 38h			;6dfa
	inc b			;6dfb
	ret p			;6dfc
	inc bc			;6dfd
	rra			;6dfe
	inc bc			;6dff
	rrca			;6e00
	ld (bc),a		;6e01
	rst 38h			;6e02
	adc a,l			;6e03
	rrca			;6e04
	nop			;6e05
	rlca			;6e06
	rlca			;6e07
	rst 38h			;6e08
	rst 38h			;6e09
	ld bc,00001h		;6e0a
	nop			;6e0d
	rrca			;6e0e
	ld e,07fh		;6e0f
	inc b			;6e11
	rst 38h			;6e12
	add a,e			;6e13
	rra			;6e14
	nop			;6e15
	ret m			;6e16
	ld b,0ffh		;6e17
l6e19h:
	adc a,l			;6e19
	inc a			;6e1a
	nop			;6e1b
	call m,0fce0h		;6e1c
	cp 0ffh			;6e1f
	rst 38h			;6e21
	call m,0fce0h		;6e22
	ret p			;6e25
	cp 003h			;6e26
	rst 38h			;6e28
	sub l			;6e29
	rra			;6e2a
	ret nz			;6e2b
	ret p			;6e2c
	call m,0dcc0h		;6e2d
	add a,b			;6e30
	adc a,(hl)		;6e31
	rra			;6e32
	nop			;6e33
	nop			;6e34
	ld a,a			;6e35
	rlca			;6e36
	nop			;6e37
	rra			;6e38
	inc bc			;6e39
	ret p			;6e3a
	rst 38h			;6e3b
	rst 38h			;6e3c
	call m,003f0h		;6e3d
	nop			;6e40
	sub b			;6e41
	ld a,a			;6e42
	sbc a,a			;6e43
	ld a,a			;6e44
	inc bc			;6e45
	rlca			;6e46
	rlca			;6e47
	inc bc			;6e48
	ld a,a			;6e49
	rra			;6e4a
	ld c,000h		;6e4b
	ret nz			;6e4d
	ret m			;6e4e
l6e4fh:
	nop			;6e4f
	rlca			;6e50
	rlca			;6e51
	inc b			;6e52
	rst 38h			;6e53
	inc bc			;6e54
	nop			;6e55
	ld (bc),a		;6e56
	rst 38h			;6e57
	ld (bc),a		;6e58
	nop			;6e59
	sbc a,(hl)		;6e5a
	ld bc,0000fh		;6e5b
	ret p			;6e5e
	ret p			;6e5f
	rst 38h			;6e60
	rst 38h			;6e61
	inc bc			;6e62
	rlca			;6e63
	nop			;6e64
	ret nz			;6e65
	ret nz			;6e66
	rst 38h			;6e67
	rst 38h			;6e68
	call m,0fcc0h		;6e69
	nop			;6e6c
	nop			;6e6d
	ret p			;6e6e
	nop			;6e6f
	nop			;6e70
	ld a,a			;6e71
	rlca			;6e72
	nop			;6e73
	rra			;6e74
	ld bc,0f0f0h		;6e75
	sbc a,a			;6e78
	inc bc			;6e79
	ccf			;6e7a
	adc a,b			;6e7b
	ld a,a			;6e7c
	rra			;6e7d
	rrca			;6e7e
	inc bc			;6e7f
	add a,b			;6e80
	ld bc,0001fh		;6e81
	dec b			;6e84
	ret p			;6e85
	add a,c			;6e86
	ld bc,0f004h		;6e87
	adc a,l			;6e8a
	call m,080f0h		;6e8b
	ret nz			;6e8e
	ret nz			;6e8f
	ret p			;6e90
	ret p			;6e91
	inc c			;6e92
	rrca			;6e93
	di			;6e94
	ret m			;6e95
	nop			;6e96
	nop			;6e97
	inc bc			;6e98
	ret p			;6e99
	inc bc			;6e9a
	rrca			;6e9b
	add a,d			;6e9c
	ret p			;6e9d
	nop			;6e9e
	inc bc			;6e9f
	rrca			;6ea0
	rlca			;6ea1
	ret p			;6ea2
	add a,c			;6ea3
	rrca			;6ea4
	inc bc			;6ea5
	ret po			;6ea6
	inc bc			;6ea7
	ret p			;6ea8
	dec b			;6ea9
	rrca			;6eaa
	add a,(hl)		;6eab
	rst 38h			;6eac
	nop			;6ead
	rst 38h			;6eae
	rst 38h			;6eaf
	ret p			;6eb0
	ret p			;6eb1
	inc b			;6eb2
	rrca			;6eb3
	ld (bc),a		;6eb4
	ret p			;6eb5
	ld (bc),a		;6eb6
	rrca			;6eb7
	ld b,0f0h		;6eb8
	ld (bc),a		;6eba
	rrca			;6ebb
	add a,e			;6ebc
	ret m			;6ebd
	rst 38h			;6ebe
	ret p			;6ebf
	inc b			;6ec0
	rrca			;6ec1
	inc bc			;6ec2
	rst 38h			;6ec3
	add a,d			;6ec4
	ccf			;6ec5
	rlca			;6ec6
	inc bc			;6ec7
	rrca			;6ec8
	ld (bc),a		;6ec9
	ret p			;6eca
	ld (bc),a		;6ecb
	nop			;6ecc
	adc a,b			;6ecd
	ret m			;6ece
	rrca			;6ecf
	rrca			;6ed0
	ret p			;6ed1
	ret p			;6ed2
	rrca			;6ed3
	rst 38h			;6ed4
	ret p			;6ed5
	rlca			;6ed6
	rrca			;6ed7
	add a,h			;6ed8
	ld a,(hl)		;6ed9
	ccf			;6eda
	rra			;6edb
	rst 38h			;6edc
	inc b			;6edd
	rra			;6ede
	adc a,c			;6edf
	cp 0f8h			;6ee0
	rrca			;6ee2
	rst 38h			;6ee3
	rst 38h			;6ee4
	nop			;6ee5
	ex af,af'		;6ee6
	rst 38h			;6ee7
	rst 38h			;6ee8
	inc b			;6ee9
	ret p			;6eea
	add a,e			;6eeb
	nop			;6eec
	rlca			;6eed
	rlca			;6eee
	nop			;6eef
	ld (bc),a		;6ef0
	ld (02183h),a		;6ef1
	di			;6ef4
	ld b,e			;6ef5
	inc bc			;6ef6
	ld (04303h),a		;6ef7
	add a,c			;6efa
	jp p,04f04h		;6efb
	inc bc			;6efe
	ld b,e			;6eff
	add a,l			;6f00
	ld (0f42fh),a		;6f01
	ld b,e			;6f04
	ld (02104h),a		;6f05
	ld (bc),a		;6f08
	rra			;6f09
	add a,d			;6f0a
	inc sp			;6f0b
	ld hl,0f106h		;6f0c
	add a,c			;6f0f
	jp p,0f104h		;6f10
	add a,d			;6f13
	ld hl,00332h		;6f14
	ld b,e			;6f17
	add a,c			;6f18
	ld (02107h),a		;6f19
	inc bc			;6f1c
	ld (02106h),a		;6f1d
	dec b			;6f20
	ld (02102h),a		;6f21
	inc b			;6f24
	ld b,e			;6f25
	ld (bc),a		;6f26
	ld (02102h),a		;6f27
	inc bc			;6f2a
	ld (02103h),a		;6f2b
	ld a,(bc)		;6f2e
	djnz l6f35h		;6f2f
	ld (02104h),a		;6f31
	inc bc			;6f34
l6f35h:
	ld b,e			;6f35
	ld (bc),a		;6f36
	ld (02183h),a		;6f37
	rra			;6f3a
	rra			;6f3b
	inc bc			;6f3c
	ld (02181h),a		;6f3d
	inc bc			;6f40
	rra			;6f41
	add a,c			;6f42
	ld hl,0f008h		;6f43
	add a,c			;6f46
	ld (02108h),a		;6f47
	ld (bc),a		;6f4a
	pop af			;6f4b
	dec b			;6f4c
	ld hl,0f002h		;6f4d
	add a,h			;6f50
	ld de,02323h		;6f51
	ld (de),a		;6f54
	inc b			;6f55
	pop af			;6f56
	adc a,b			;6f57
	ld (de),a		;6f58
	inc hl			;6f59
	inc (hl)		;6f5a
	ld (01f21h),a		;6f5b
	rra			;6f5e
	ld hl,03205h		;6f5f
	add a,c			;6f62
	ld hl,03203h		;6f63
	inc b			;6f66
	ld b,e			;6f67
	add a,c			;6f68
	ld (04310h),a		;6f69
	ld (bc),a		;6f6c
	ld (04306h),a		;6f6d
	ld (bc),a		;6f70
	ld (04306h),a		;6f71
	inc bc			;6f74
	jr nz,$+4		;6f75
	ld (04305h),a		;6f77
	inc bc			;6f7a
	ld (02102h),a		;6f7b
	add a,c			;6f7e
	pop af			;6f7f
	rlca			;6f80
	ld (02183h),a		;6f81
	ld (00432h),a		;6f84
	ld b,e			;6f87
	ld (bc),a		;6f88
	ld (04302h),a		;6f89
	add a,(hl)		;6f8c
	ld (02121h),a		;6f8d
	pop af			;6f90
	rrca			;6f91
	rrca			;6f92
	inc b			;6f93
	ld (0f103h),a		;6f94
	inc bc			;6f97
	inc bc			;6f98
	adc a,e			;6f99
	ld (02121h),a		;6f9a
	pop af			;6f9d
	rrca			;6f9e
	rrca			;6f9f
	ld (02132h),a		;6fa0
	ld hl,003f1h		;6fa3
	rrca			;6fa6
	ld (bc),a		;6fa7
	ld (02103h),a		;6fa8
	inc bc			;6fab
	ret p			;6fac
	inc bc			;6fad
	ld (02102h),a		;6fae
	and d			;6fb1
	pop af			;6fb2
	rst 8			;6fb3
	or l			;6fb4
	pop af			;6fb5
	rst 8			;6fb6
	cp h			;6fb7
	ld d,d			;6fb8
	or d			;6fb9
	jp nz,032c2h		;6fba
	ld (02121h),a		;6fbd
	pop af			;6fc0
	rst 8			;6fc1
	ld e,h			;6fc2
	cp e			;6fc3
	push bc			;6fc4
	ld hl,0cff1h		;6fc5
	ld e,e			;6fc8
	cp h			;6fc9
	ret nz			;6fca
	ret nz			;6fcb
	or b			;6fcc
	pop af			;6fcd
	rst 8			;6fce
	push bc			;6fcf
	cp e			;6fd0
	push bc			;6fd1
	set 1,e			;6fd2
	inc b			;6fd4
	ret nz			;6fd5
	add a,h			;6fd6
	cp h			;6fd7
	ld e,e			;6fd8
	ld e,e			;6fd9
	cp h			;6fda
	inc b			;6fdb
	ret nz			;6fdc
	sub l			;6fdd
	cp h			;6fde
	ld e,e			;6fdf
	ld e,e			;6fe0
	cp h			;6fe1
	ret nz			;6fe2
	push bc			;6fe3
	cp e			;6fe4
	ld e,h			;6fe5
	cp h			;6fe6
	cp h			;6fe7
	or l			;6fe8
	rrc h			;6fe9
	inc c			;6feb
	res 6,l			;6fec
	or l			;6fee
	bit 3,h			;6fef
	cp h			;6ff1
	ret nz			;6ff2
	inc bc			;6ff3
	or l			;6ff4
	ld (bc),a		;6ff5
	rlc d			;6ff6
	or l			;6ff8
	ld (bc),a		;6ff9
	rlc d			;6ffa
	or l			;6ffc
	ld (bc),a		;6ffd
	rlc d			;6ffe
	inc c			;7000
	add a,(hl)		;7001
	dec bc			;7002
	rst 8			;7003
	inc c			;7004
	res 6,l			;7005
	or l			;7007
	dec b			;7008
	res 0,d			;7009
	dec b			;700b
	dec bc			;700c
	inc b			;700d
	inc c			;700e
	ld (bc),a		;700f
	ret p			;7010
	adc a,e			;7011
	ret nz			;7012
	cp h			;7013
	ld e,e			;7014
	ld e,e			;7015
	cp h			;7016
l7017h:
	cp h			;7017
	pop af			;7018
	pop af			;7019
	ei			;701a
	or l			;701b
	or l			;701c
	dec b			;701d
	res 2,h			;701e
	push bc			;7020
	cp e			;7021
	ld e,h			;7022
	cp e			;7023
	push bc			;7024
	set 6,c			;7025
	ret m			;7027
	defb 0fdh,0fdh,0f8h ;illegal sequence	;7028
	defb 0fdh,0fdh,0f8h ;illegal sequence	;702b
	ld hl,0fdf1h		;702e
	defb 0fdh,08dh ;adc a,iyl	;7031
	adc a,l			;7033
	inc bc			;7034
	ret m			;7035
	add a,e			;7036
	ld b,e			;7037
	ld (00321h),a		;7038
	rra			;703b
	add a,c			;703c
	ld hl,00200h		;703d
	nop			;7040
	dec b			;7041
	rrca			;7042
	adc a,l			;7043
	rlca			;7044
	ret po			;7045
	rst 38h			;7046
	nop			;7047
	ld bc,0ffffh		;7048
	ld a,a			;704b
	ld h,b			;704c
	rst 38h			;704d
	nop			;704e
	nop			;704f
	rst 38h			;7050
	inc bc			;7051
	ret p			;7052
	ld (bc),a		;7053
	nop			;7054
	add a,e			;7055
	inc bc			;7056
	rra			;7057
	rst 38h			;7058
	inc bc			;7059
	ret p			;705a
	inc bc			;705b
	nop			;705c
	sub d			;705d
	rst 38h			;705e
	ld bc,0ffffh		;705f
	ld a,a			;7062
	ld h,b			;7063
	add a,b			;7064
	cp 07eh			;7065
	ld a,(hl)		;7067
	rlca			;7068
	ccf			;7069
	ret m			;706a
	ret m			;706b
	nop			;706c
	inc bc			;706d
	rra			;706e
	rst 38h			;706f
	inc bc			;7070
	ret p			;7071
	add a,h			;7072
	nop			;7073
	cp 07fh			;7074
	ccf			;7076
	inc bc			;7077
	rra			;7078
	add a,(hl)		;7079
	ccf			;707a
	ld a,a			;707b
	ld a,(hl)		;707c
	ccf			;707d
	rra			;707e
	rst 38h			;707f
	inc bc			;7080
	rra			;7081
	ld (bc),a		;7082
	rst 38h			;7083
	add a,h			;7084
	rra			;7085
	nop			;7086
	ret p			;7087
	ret p			;7088
	inc bc			;7089
	rst 38h			;708a
	nop			;708b
	inc bc			;708c
	ret p			;708d
	add a,c			;708e
	jr nz,$+6		;708f
	djnz l7017h		;7091
	defb 0fdh,00fh,00fh ;illegal sequence	;7093
	ld b,e			;7096
	inc b			;7097
	ld hl,00f02h		;7098
	ld (bc),a		;709b
	inc (hl)		;709c
	add a,h			;709d
	ld (01f21h),a		;709e
	rra			;70a1
	inc b			;70a2
	ret p			;70a3
	add a,h			;70a4
	pop af			;70a5
	ld (de),a		;70a6
	inc hl			;70a7
	inc hl			;70a8
	inc bc			;70a9
	ret p			;70aa
	add a,c			;70ab
	ld b,e			;70ac
	inc b			;70ad
	ld hl,0e802h		;70ae
	ld (bc),a		;70b1
	ret c			;70b2
	ld (bc),a		;70b3
	defb 0fdh,08bh,0f1h ;illegal sequence	;70b4
	ld (de),a		;70b7
	defb 0fdh,0fdh,0f8h ;illegal sequence	;70b8
	ret m			;70bb
	pop af			;70bc
	ld (de),a		;70bd
	inc hl			;70be
	inc hl			;70bf
	pop af			;70c0
	rlca			;70c1
	ret p			;70c2
	inc b			;70c3
	pop af			;70c4
	add a,c			;70c5
	ret m			;70c6
	inc bc			;70c7
	defb 0fdh,003h,021h ;illegal sequence	;70c8
	add a,c			;70cb
	pop af			;70cc
	inc b			;70cd
	rrca			;70ce
	nop			;70cf
	add a,c			;70d0
	rst 38h			;70d1
	inc b			;70d2
	add a,c			;70d3
	adc a,e			;70d4
	add a,b			;70d5
	cp 080h			;70d6
	ex af,af'		;70d8
	rst 38h			;70d9
	ld bc,0ffffh		;70da
	nop			;70dd
	ex af,af'		;70de
	rst 38h			;70df
	nop			;70e0
	inc bc			;70e1
	adc a,l			;70e2
	add a,d			;70e3
	rst 18h			;70e4
	adc a,l			;70e5
	inc bc			;70e6
	ret pe			;70e7
	ld (bc),a		;70e8
	ret m			;70e9
	ld (bc),a		;70ea
	defb 0fdh,002h,08dh ;illegal sequence	;70eb
	ld (bc),a		;70ee
	ret m			;70ef
	nop			;70f0
	dec b			;70f1
	rst 38h			;70f2
	add a,e			;70f3
	rst 30h			;70f4
	ret m			;70f5
	rrca			;70f6
	inc b			;70f7
	nop			;70f8
	add a,h			;70f9
	rlca			;70fa
	inc bc			;70fb
	jp 003feh		;70fc
	nop			;70ff
	add a,l			;7100
	ld bc,0f800h		;7101
	ld b,a			;7104
	djnz l710ah		;7105
	nop			;7107
	sub l			;7108
	add a,b			;7109
l710ah:
	ld a,b			;710a
	jr c,l7125h		;710b
	inc a			;710d
	nop			;710e
	jr nc,l711fh		;710f
	ret nz			;7111
	nop			;7112
	ld e,07ch		;7113
	jr c,l7117h		;7115
l7117h:
	nop			;7117
	add a,b			;7118
	ccf			;7119
	ccf			;711a
	ld a,03ch		;711b
	inc a			;711d
	inc bc			;711e
l711fh:
	nop			;711f
	or l			;7120
	ret nz			;7121
	cp a			;7122
	nop			;7123
	nop			;7124
l7125h:
	rrca			;7125
	ld c,003h		;7126
	rrca			;7128
	rrca			;7129
	rst 38h			;712a
	call po,0fe3eh		;712b
	nop			;712e
	ret nz			;712f
	ret m			;7130
	rst 38h			;7131
	ld h,b			;7132
	rst 38h			;7133
	ld a,h			;7134
	cp 080h			;7135
	ret po			;7137
	add a,b			;7138
	ld (bc),a		;7139
	ld a,d			;713a
	ld (bc),a		;713b
	jr c,l71bah		;713c
l713eh:
	nop			;713e
	ret po			;713f
	call m,0f880h		;7140
	ld a,(hl)		;7143
	ld a,b			;7144
	ld a,h			;7145
	ret nz			;7146
	rrca			;7147
	rra			;7148
	jr l713eh		;7149
	rra			;714b
	inc bc			;714c
	ld a,a			;714d
	nop			;714e
	nop			;714f
	ret m			;7150
	dec b			;7151
	sbc a,c			;7152
	ret nz			;7153
	ret nz			;7154
	ret p			;7155
	inc b			;7156
	nop			;7157
	add a,h			;7158
	ret nz			;7159
	pop bc			;715a
	call m,0040fh		;715b
	nop			;715e
	add a,h			;715f
	ex af,af'		;7160
	adc a,h			;7161
	add a,0e7h		;7162
	inc bc			;7164
	nop			;7165
	add a,l			;7166
	ex af,af'		;7167
	ld b,003h		;7168
	pop hl			;716a
	jp po,00005h		;716b
	add a,e			;716e
	ld b,b			;716f
	jr c,$+17		;7170
	inc bc			;7172
	nop			;7173
	add a,d			;7174
	ld b,001h		;7175
	inc bc			;7177
	rrca			;7178
	add a,e			;7179
	nop			;717a
	jr l7184h		;717b
	inc bc			;717d
	rrca			;717e
	ld (bc),a		;717f
	jp po,08888h		;7180
	ret z			;7183
l7184h:
	call pe,0fefeh		;7184
	jr nz,l71a1h		;7187
	adc a,h			;7189
	inc b			;718a
	nop			;718b
	inc bc			;718c
	ld b,b			;718d
	add a,c			;718e
	ret nz			;718f
	inc b			;7190
	nop			;7191
	adc a,h			;7192
	rlca			;7193
	inc bc			;7194
	rra			;7195
	ld a,a			;7196
	ld bc,00e30h		;7197
	ret nz			;719a
	nop			;719b
	ld e,07ch		;719c
	jr c,l71a3h		;719e
	ret nz			;71a0
l71a1h:
	or d			;71a1
	add a,b			;71a2
l71a3h:
	and b			;71a3
	ret nz			;71a4
	ret nz			;71a5
	add a,b			;71a6
	ld bc,00303h		;71a7
	rlca			;71aa
	rrca			;71ab
	rra			;71ac
	rra			;71ad
	ccf			;71ae
	ret m			;71af
	call m,000ceh		;71b0
	nop			;71b3
	cp 000h			;71b4
	nop			;71b6
	ld e,03dh		;71b7
	inc a			;71b9
l71bah:
	nop			;71ba
	sbc a,0f0h		;71bb
	nop			;71bd
	nop			;71be
	inc e			;71bf
	adc a,l			;71c0
	rlca			;71c1
	rra			;71c2
	rlca			;71c3
	rlca			;71c4
	ld e,038h		;71c5
	ex af,af'		;71c7
	ret nz			;71c8
	ld bc,0f3c2h		;71c9
	pop bc			;71cc
	ld bc,03f00h		;71cd
	rrca			;71d0
l71d1h:
	add a,a			;71d1
	ret p			;71d2
	jr nc,$+5		;71d3
	nop			;71d5
	add a,l			;71d6
	call m,0c1e0h		;71d7
	jr c,$+98		;71da
	inc bc			;71dc
	nop			;71dd
	add a,l			;71de
	ret po			;71df
	pop bc			;71e0
	inc bc			;71e1
	inc b			;71e2
	ex af,af'		;71e3
	inc bc			;71e4
	nop			;71e5
	adc a,e			;71e6
	inc e			;71e7
	adc a,a			;71e8
	adc a,a			;71e9
	rst 38h			;71ea
	inc bc			;71eb
	inc bc			;71ec
	nop			;71ed
	nop			;71ee
	jr c,l71d1h		;71ef
	add a,b			;71f1
	dec b			;71f2
	nop			;71f3
	add a,h			;71f4
	rlca			;71f5
	jr c,l7258h		;71f6
	add a,b			;71f8
	inc b			;71f9
	nop			;71fa
	add a,l			;71fb
	ld b,0f8h		;71fc
	ret m			;71fe
	cp 000h			;71ff
	inc bc			;7201
	sbc a,a			;7202
	ld b,000h		;7203
	ld (bc),a		;7205
	ld a,(hl)		;7206
	add a,e			;7207
	ld a,038h		;7208
	jr nc,l7211h		;720a
	nop			;720c
	add a,c			;720d
	ld h,b			;720e
	inc bc			;720f
	ret nz			;7210
l7211h:
	inc b			;7211
	nop			;7212
	adc a,(hl)		;7213
	ld bc,00307h		;7214
	ld bc,00f01h		;7217
	inc bc			;721a
	rra			;721b
	ret p			;721c
	ret p			;721d
	ret po			;721e
	ret p			;721f
	ret m			;7220
	ret p			;7221
	inc bc			;7222
	ret m			;7223
	add a,d			;7224
	ld a,a			;7225
	ccf			;7226
	add hl,bc		;7227
	nop			;7228
	ld (bc),a		;7229
	ret nz			;722a
	xor (hl)		;722b
	cp 0ffh			;722c
	ld bc,00103h		;722e
	ld bc,0030fh		;7231
	nop			;7234
	cp 03fh			;7235
	ccf			;7237
	rra			;7238
	rrca			;7239
	inc bc			;723a
	ld bc,00000h		;723b
	ld bc,01f07h		;723e
	ccf			;7241
	ld a,a			;7242
	ld a,a			;7243
	ld bc,00103h		;7244
	inc bc			;7247
	inc bc			;7248
	rlca			;7249
	rrca			;724a
	rra			;724b
	ld a,a			;724c
	cp 000h			;724d
	inc bc			;724f
	rlca			;7250
	rrca			;7251
	rra			;7252
	ccf			;7253
	ld a,a			;7254
	ld a,a			;7255
	inc bc			;7256
	rlca			;7257
l7258h:
	rrca			;7258
	rrca			;7259
	inc bc			;725a
	rra			;725b
	add a,c			;725c
	ccf			;725d
	ld b,000h		;725e
	add a,d			;7260
	ccf			;7261
	rst 38h			;7262
	ld b,03fh		;7263
	add a,a			;7265
	ld e,000h		;7266
	nop			;7268
	rlca			;7269
	rlca			;726a
	rra			;726b
	ld a,a			;726c
	add hl,bc		;726d
	rst 38h			;726e
	add a,h			;726f
	ret m			;7270
	rrca			;7271
	rrca			;7272
	ccf			;7273
	ld b,0ffh		;7274
	sub c			;7276
	ld bc,00307h		;7277
	ld bc,00f01h		;727a
	inc bc			;727d
	ret po			;727e
	ld bc,00307h		;727f
	ld bc,00f01h		;7282
	inc bc			;7285
	inc bc			;7286
	rlca			;7287
	rlca			;7288
	nop			;7289
	rlca			;728a
	and b			;728b
	inc bc			;728c
	nop			;728d
	inc bc			;728e
	dec sp			;728f
	add a,e			;7290
	rst 38h			;7291
	nop			;7292
	nop			;7293
	nop			;7294
	rlca			;7295
	dec b			;7296
	dec b			;7297
	ld b,b			;7298
	add a,h			;7299
	ld d,b			;729a
	ld b,b			;729b
	ld d,h			;729c
	ld d,h			;729d
	dec b			;729e
	ld b,b			;729f
	add a,e			;72a0
	ld d,b			;72a1
	ld d,h			;72a2
	sub h			;72a3
	dec b			;72a4
	ld b,b			;72a5
	add a,(hl)		;72a6
	ld d,h			;72a7
	sub l			;72a8
	sub l			;72a9
	sub b			;72aa
	sub b			;72ab
	ld d,b			;72ac
	inc b			;72ad
	ld d,h			;72ae
	add a,c			;72af
	sub l			;72b0
	inc bc			;72b1
	ld d,b			;72b2
	add a,l			;72b3
	ld d,h			;72b4
	ld b,b			;72b5
	ld d,h			;72b6
	sub l			;72b7
	ld d,h			;72b8
	inc b			;72b9
	ld d,b			;72ba
	inc b			;72bb
	ld d,h			;72bc
	add a,e			;72bd
	sub b			;72be
	ld b,b			;72bf
	ld d,b			;72c0
	dec b			;72c1
	ld b,l			;72c2
	inc b			;72c3
	ld b,b			;72c4
	ld (bc),a		;72c5
	ld d,h			;72c6
	ld (bc),a		;72c7
	sub l			;72c8
	add a,l			;72c9
	ld b,b			;72ca
	ld d,b			;72cb
	call p,05454h		;72cc
	inc bc			;72cf
	sub l			;72d0
	ld (bc),a		;72d1
	ld d,b			;72d2
	add a,c			;72d3
	ld b,b			;72d4
	inc bc			;72d5
	ld d,h			;72d6
	ld (bc),a		;72d7
	sub l			;72d8
	ld (bc),a		;72d9
	sub b			;72da
	add a,c			;72db
	ld d,b			;72dc
	dec b			;72dd
	ld d,h			;72de
	inc bc			;72df
	sub b			;72e0
	add a,l			;72e1
	sub l			;72e2
	ld d,h			;72e3
	ld d,h			;72e4
	sbc a,a			;72e5
	defb 0fdh,005h,050h ;illegal sequence	;72e6
	add a,e			;72e9
	sub l			;72ea
	call p,006fdh		;72eb
	sub b			;72ee
	add a,d			;72ef
	sub l			;72f0
	sub h			;72f1
	ld b,090h		;72f2
	add a,d			;72f4
	sub l			;72f5
	ld d,h			;72f6
	ld b,090h		;72f7
	dec b			;72f9
	ld d,b			;72fa
	ld (bc),a		;72fb
	sub b			;72fc
	adc a,l			;72fd
	ret p			;72fe
	call p,090dfh		;72ff
	sub b			;7302
	ld d,b			;7303
	ld b,b			;7304
	ld sp,hl		;7305
	push de			;7306
	ret c			;7307
	adc a,(hl)		;7308
	ld d,b			;7309
	ld d,b			;730a
	inc bc			;730b
	ld b,b			;730c
	inc bc			;730d
	ld d,h			;730e
	dec b			;730f
	sub b			;7310
	add a,c			;7311
	ld d,b			;7312
	ld b,040h		;7313
	add a,c			;7315
	ld d,b			;7316
	inc bc			;7317
	ld b,b			;7318
	ld (bc),a		;7319
	sub b			;731a
	add a,c			;731b
	ld d,b			;731c
	inc b			;731d
	ld d,h			;731e
	add a,c			;731f
	sub l			;7320
	ex af,af'		;7321
	ld b,b			;7322
	add a,c			;7323
	ld d,b			;7324
	rlca			;7325
	ld b,b			;7326
	add a,c			;7327
	sub l			;7328
	inc b			;7329
	ld d,h			;732a
	inc bc			;732b
	ld d,b			;732c
	ld (bc),a		;732d
	sub h			;732e
	ld (bc),a		;732f
	ld d,h			;7330
	add a,c			;7331
	call p,0f003h		;7332
	add a,e			;7335
	ld d,h			;7336
	sub h			;7337
	ld d,h			;7338
	inc bc			;7339
l733ah:
	ld b,b			;733a
	ld (bc),a		;733b
	ld d,b			;733c
	inc b			;733d
	ld d,h			;733e
	adc a,b			;733f
	ld b,b			;7340
	ld d,b			;7341
	sub b			;7342
	sub b			;7343
	call p,054f4h		;7344
	ld d,b			;7347
	inc b			;7348
	sub b			;7349
	ld (bc),a		;734a
	call p,05482h		;734b
	ld d,b			;734e
	inc b			;734f
	sub b			;7350
	add a,e			;7351
	ld d,h			;7352
	ld b,b			;7353
	ld d,b			;7354
	dec b			;7355
	sub b			;7356
	add a,h			;7357
	defb 0edh ;next byte illegal after ed	;7358
	ret c			;7359
	dec c			;735a
	dec c			;735b
	inc b			;735c
	sub b			;735d
	add a,c			;735e
	ld d,h			;735f
	ex af,af'		;7360
	ld d,b			;7361
	rlca			;7362
	sub b			;7363
	ld (bc),a		;7364
	ld d,h			;7365
	inc bc			;7366
	rrca			;7367
	add a,e			;7368
	call m,0fc8eh		;7369
	ex af,af'		;736c
	ret nc			;736d
	add a,d			;736e
	ld b,b			;736f
	ld d,b			;7370
	rlca			;7371
	sub b			;7372
	add a,c			;7373
	ld d,b			;7374
	ld b,090h		;7375
	ex af,af'		;7377
	ld b,b			;7378
	add a,c			;7379
	ld d,h			;737a
	inc b			;737b
	ld b,b			;737c
	add a,h			;737d
	ld d,h			;737e
	sub l			;737f
	ld d,h			;7380
	ld hl,0100ch		;7381
	inc bc			;7384
	ld hl,04005h		;7385
	ld (bc),a		;7388
	ld b,c			;7389
	add a,c			;738a
	ld hl,02005h		;738b
	inc bc			;738e
	djnz l7397h		;738f
	jr nz,$+4		;7391
	ld (02007h),a		;7393
	add a,e			;7396
l7397h:
	ld hl,01010h		;7397
	add hl,de		;739a
	jr nz,$+7		;739b
	djnz l73a1h		;739d
	ld (de),a		;739f
	dec c			;73a0
l73a1h:
	ld bc,02081h		;73a1
	ex af,af'		;73a4
	ld bc,04006h		;73a5
	add a,d			;73a8
	ld b,c			;73a9
	ld hl,04005h		;73aa
	ld (bc),a		;73ad
	ld b,c			;73ae
	add a,c			;73af
	ld (de),a		;73b0
	ex af,af'		;73b1
	djnz l733ah		;73b2
	ret nc			;73b4
	ret nz			;73b5
	add a,b			;73b6
	ret po			;73b7
	add a,b			;73b8
	ret nz			;73b9
	inc bc			;73ba
	ret nc			;73bb
	ld (bc),a		;73bc
	rst 8			;73bd
	add a,d			;73be
	ret pe			;73bf
	call 0f003h		;73c0
	nop			;73c3
	ret nz			;73c4
	nop			;73c5
	add a,b			;73c6
	rlca			;73c7
	jp p,0e2e2h		;73c8
	jp nz,031c2h		;73cb
	inc e			;73ce
	ret po			;73cf
	ld c,a			;73d0
	ld b,a			;73d1
	ld b,a			;73d2
	ld b,e			;73d3
	ld b,e			;73d4
	rst 0			;73d5
	ld bc,03966h		;73d6
	ld sp,02073h		;73d9
	halt			;73dc
	ex af,af'		;73dd
	ld (bc),a		;73de
	jr $+128		;73df
	jr $+62			;73e1
	ld a,b			;73e3
	ld a,l			;73e4
	inc a			;73e5
	ld a,(hl)		;73e6
	inc e			;73e7
	rlca			;73e8
	rra			;73e9
	ret p			;73ea
	ret nz			;73eb
	rst 38h			;73ec
	ld a,(0077eh)		;73ed
	ret p			;73f0
	call m,05357h		;73f1
	rst 38h			;73f4
	sub c			;73f5
	inc e			;73f6
	jp po,03cf6h		;73f7
	nop			;73fa
	ld h,b			;73fb
	inc sp			;73fc
	ld a,(hl)		;73fd
	jr $+62			;73fe
	jr l743eh		;7400
	inc a			;7402
	ld a,(hl)		;7403
	ld bc,l7e03h		;7404
	and d			;7407
	ld a,a			;7408
	ld e,l			;7409
	ld b,c			;740a
	ex (sp),hl		;740b
	call m,0fe38h		;740c
	ld a,h			;740f
	ld a,h			;7410
	ld a,(hl)		;7411
	ret nz			;7412
	ret m			;7413
	ret nz			;7414
	ld a,(hl)		;7415
	ld a,(hl)		;7416
	ld a,h			;7417
	ret p			;7418
	call m,01f80h		;7419
	ret m			;741c
	and b			;741d
	ld a,000h		;741e
	add a,b			;7420
	rra			;7421
	ret po			;7422
	jr l749dh		;7423
	sbc a,b			;7425
	inc bc			;7426
	cp 03fh			;7427
	ccf			;7429
	inc bc			;742a
	cp 083h			;742b
	ret nz			;742d
	add a,c			;742e
	cp 006h			;742f
	ld bc,00f82h		;7431
	rlca			;7434
	dec b			;7435
	inc bc			;7436
	add a,e			;7437
	sbc a,c			;7438
	ld c,b			;7439
	ld bc,0c003h		;743a
	sub d			;743d
l743eh:
	ld bc,06307h		;743e
	inc sp			;7441
	nop			;7442
	jr l74c3h		;7443
	jr nc,l7483h		;7445
	ld a,(hl)		;7447
	ret nz			;7448
	inc c			;7449
	add a,e			;744a
	cp 0c3h			;744b
	ld a,(hl)		;744d
	ld a,(hl)		;744e
	rst 38h			;744f
	inc bc			;7450
	rrca			;7451
	sub a			;7452
	xor a			;7453
	call m,001e0h		;7454
	inc e			;7457
	rrca			;7458
	ret p			;7459
	ret p			;745a
	inc c			;745b
	ld c,b			;745c
	rra			;745d
	ld (0f23eh),a		;745e
	rst 38h			;7461
	rrca			;7462
	ld a,b			;7463
	jr $+126		;7464
	jr l74c6h		;7466
	jp nz,003ffh		;7468
	jp nz,0e203h		;746b
	add a,d			;746e
	ld b,e			;746f
	rst 38h			;7470
	inc bc			;7471
	ld b,e			;7472
	ld (bc),a		;7473
	ld b,a			;7474
	sbc a,d			;7475
	ld c,a			;7476
	inc a			;7477
	jr l74b8h		;7478
	ld e,h			;747a
	sbc a,028h		;747b
	nop			;747d
	inc bc			;747e
l747fh:
	ld a,a			;747f
	ld sp,09040h		;7480
l7483h:
	ld b,b			;7483
	rrca			;7484
	jr l747fh		;7485
	cp (hl)			;7487
	add a,b			;7488
	ld b,b			;7489
	rra			;748a
	rra			;748b
	ld e,0e0h		;748c
	ret po			;748e
	add a,b			;748f
	inc bc			;7490
	nop			;7491
	ld (bc),a		;7492
	add a,b			;7493
	add a,d			;7494
	ret po			;7495
	ccf			;7496
	inc b			;7497
	xor (hl)		;7498
	ld (bc),a		;7499
	xor h			;749a
	sub (hl)		;749b
	xor b			;749c
l749dh:
	ret m			;749d
	ccf			;749e
	rra			;749f
	ccf			;74a0
	rrca			;74a1
	nop			;74a2
	nop			;74a3
	ld a,0ffh		;74a4
	ret po			;74a6
	call m,0c0f0h		;74a7
	inc bc			;74aa
	rlca			;74ab
	rrca			;74ac
	rrca			;74ad
	rlca			;74ae
	rra			;74af
	ld a,h			;74b0
	ret m			;74b1
	inc bc			;74b2
	ret p			;74b3
	add a,0f8h		;74b4
l74b6h:
	ret p			;74b6
	ld h,b			;74b7
l74b8h:
	nop			;74b8
	add a,b			;74b9
	inc c			;74ba
	ld a,(hl)		;74bb
	inc a			;74bc
	ld a,03fh		;74bd
	ccf			;74bf
	cp 0ffh			;74c0
	rlca			;74c2
l74c3h:
	ld bc,l7c30h		;74c3
l74c6h:
	ld bc,080feh		;74c6
	add a,b			;74c9
	ret po			;74ca
	ret nz			;74cb
	ret p			;74cc
	ccf			;74cd
	inc bc			;74ce
	inc bc			;74cf
	rlca			;74d0
l74d1h:
	rrca			;74d1
	ld bc,00f03h		;74d2
	call m,03f3ch		;74d5
	ld a,h			;74d8
	inc e			;74d9
	ld e,03fh		;74da
	dec a			;74dc
	ld a,l			;74dd
	add a,b			;74de
	adc a,b			;74df
	add a,b			;74e0
	call z,0f4cch		;74e1
	ret z			;74e4
	ret p			;74e5
	rrca			;74e6
	ccf			;74e7
	ld e,070h		;74e8
	call m,01f40h		;74ea
	rra			;74ed
	ld a,(hl)		;74ee
	ld a,(hl)		;74ef
	inc a			;74f0
	inc a			;74f1
	ld a,a			;74f2
	inc a			;74f3
	jr c,l74b6h		;74f4
	jr c,l7534h		;74f6
	ret nz			;74f8
	rst 38h			;74f9
	rst 38h			;74fa
	inc bc			;74fb
	rrca			;74fc
	and l			;74fd
	nop			;74fe
	inc a			;74ff
	add hl,sp		;7500
	add hl,sp		;7501
	ret m			;7502
	ret m			;7503
	inc bc			;7504
	ld bc,01e00h		;7505
	ld c,0deh		;7508
	jr z,l7548h		;750a
	inc a			;750c
	nop			;750d
	ccf			;750e
	dec de			;750f
	ccf			;7510
	ld e,01eh		;7511
	ret p			;7513
	rst 38h			;7514
	ld e,0fah		;7515
	call p,sub_7cf8h	;7517
	jr c,l7594h		;751a
	ld a,b			;751c
	nop			;751d
	ret nz			;751e
	sbc a,b			;751f
	jr c,l755ah		;7520
	jp 0fe03h		;7522
	add a,c			;7525
	nop			;7526
	rlca			;7527
	jp p,0ff83h		;7528
	nop			;752b
	rst 38h			;752c
	dec b			;752d
	and 0a2h		;752e
	ld bc,000ffh		;7530
	nop			;7533
l7534h:
	rst 38h			;7534
	rst 38h			;7535
	nop			;7536
	nop			;7537
	call m,0c0e0h		;7538
	ret po			;753b
	ret po			;753c
	ret p			;753d
	call m,sub_7801h	;753e
	ld e,a			;7541
	nop			;7542
	add a,c			;7543
	add a,c			;7544
	nop			;7545
	out (0d1h),a		;7546
l7548h:
	ld h,b			;7548
	ret po			;7549
	ret p			;754a
	ret p			;754b
	ld (hl),b		;754c
	jr z,l757fh		;754d
	djnz l74d1h		;754f
	ret nz			;7551
	inc bc			;7552
	ld a,a			;7553
	add a,e			;7554
	ccf			;7555
	rra			;7556
	ccf			;7557
	ex af,af'		;7558
	ld a,(hl)		;7559
l755ah:
	ex af,af'		;755a
	jp p,00181h		;755b
	dec b			;755e
	ret po			;755f
	ld (bc),a		;7560
	rst 38h			;7561
	adc a,c			;7562
	ld e,014h		;7563
	jr nz,l7587h		;7565
	ld b,041h		;7567
	inc bc			;7569
	rlca			;756a
	rst 38h			;756b
	inc bc			;756c
	pop de			;756d
	add a,c			;756e
	ld a,a			;756f
	inc bc			;7570
	ccf			;7571
	sub b			;7572
	jr c,l75b1h		;7573
	inc e			;7575
	inc e			;7576
	ld a,07fh		;7577
	rst 38h			;7579
	inc a			;757a
	rrca			;757b
	rlca			;757c
	inc bc			;757d
	rlca			;757e
l757fh:
	rlca			;757f
	inc bc			;7580
	cp 0ffh			;7581
	ex af,af'		;7583
	ld a,(hl)		;7584
	adc a,d			;7585
	rlca			;7586
l7587h:
	rrca			;7587
	rrca			;7588
	rra			;7589
	rrca			;758a
	rlca			;758b
	rlca			;758c
	add a,a			;758d
	rst 38h			;758e
	ld a,a			;758f
	inc bc			;7590
	rst 38h			;7591
	add a,l			;7592
	ld a,a			;7593
l7594h:
	ccf			;7594
	cp a			;7595
	ret p			;7596
	ret m			;7597
	inc b			;7598
	call m,0f802h		;7599
	add a,c			;759c
	ld a,(hl)		;759d
	inc bc			;759e
	add a,b			;759f
	add a,h			;75a0
	call po,00703h		;75a1
	rlca			;75a4
	ex af,af'		;75a5
	jp p,003adh		;75a6
	add hl,bc		;75a9
	ex af,af'		;75aa
	inc bc			;75ab
	rra			;75ac
	inc a			;75ad
	ld a,b			;75ae
	jr l75beh		;75af
l75b1h:
	nop			;75b1
	cp 080h			;75b2
	rra			;75b4
	ld a,a			;75b5
	ret nz			;75b6
	ret nz			;75b7
	ret p			;75b8
	nop			;75b9
	nop			;75ba
	ld a,(hl)		;75bb
	rst 38h			;75bc
	add a,l			;75bd
l75beh:
	add a,l			;75be
	dec b			;75bf
	add a,b			;75c0
	ret nz			;75c1
	ret p			;75c2
	jr nc,l75cdh		;75c3
	add a,b			;75c5
	ret nz			;75c6
	sub b			;75c7
	ret m			;75c8
	call m,00002h		;75c9
	nop			;75cc
l75cdh:
	and b			;75cd
	ld (hl),b		;75ce
	sub b			;75cf
	dec c			;75d0
	rst 38h			;75d1
	ex (sp),hl		;75d2
	ex (sp),hl		;75d3
	add a,e			;75d4
	inc bc			;75d5
	inc a			;75d6
	ex af,af'		;75d7
	dec c			;75d8
	sub h			;75d9
	inc e			;75da
	inc b			;75db
	inc c			;75dc
	sbc a,h			;75dd
	jr c,l7618h		;75de
	jr l75feh		;75e0
	sbc a,0cah		;75e2
	ret nz			;75e4
	sbc a,0cah		;75e5
	ret nz			;75e7
	rst 38h			;75e8
	ret po			;75e9
	add a,l			;75ea
	ld l,d			;75eb
	or a			;75ec
	rst 38h			;75ed
	inc b			;75ee
	adc a,d			;75ef
	ld (bc),a		;75f0
	add a,b			;75f1
	sub (hl)		;75f2
	jr nc,l764dh		;75f3
	ret nz			;75f5
	ret nc			;75f6
	add a,b			;75f7
	rra			;75f8
	ret nz			;75f9
	ld c,b			;75fa
	inc h			;75fb
	jr nz,l7636h		;75fc
l75feh:
	ld e,0cfh		;75fe
	sbc a,a			;7600
	jp 0070fh		;7601
	rlca			;7604
	inc bc			;7605
	ld bc,0b001h		;7606
	ld b,00dh		;7609
	sbc a,l			;760b
	rst 38h			;760c
	ld a,a			;760d
	ld e,00eh		;760e
	rrca			;7610
	rlca			;7611
	inc bc			;7612
	inc bc			;7613
	rlca			;7614
	rrca			;7615
	ret po			;7616
	ld a,a			;7617
l7618h:
	ld a,a			;7618
	ret nz			;7619
	ccf			;761a
	ccf			;761b
	ld h,e			;761c
	jp 0c0f8h		;761d
	rra			;7620
	inc a			;7621
	ret p			;7622
	ret m			;7623
	ld b,0c3h		;7624
	nop			;7626
	ld a,a			;7627
	exx			;7628
	inc b			;7629
	sbc a,c			;762a
	bit 7,a			;762b
	ld a,(hl)		;762d
	jr c,l7630h		;762e
l7630h:
	ld b,b			;7630
	ld h,h			;7631
	ld h,b			;7632
	inc de			;7633
	ld e,003h		;7634
l7636h:
	ret nz			;7636
	add a,b			;7637
	nop			;7638
	ld (bc),a		;7639
	rlca			;763a
	add a,a			;763b
	rlca			;763c
	inc a			;763d
	jr l767ch		;763e
	jr l767eh		;7640
	inc a			;7642
	add a,c			;7643
	add a,c			;7644
	jr c,l76c3h		;7645
	jr nc,l7649h		;7647
l7649h:
	ld a,(hl)		;7649
	jr c,l76cah		;764a
	ld a,(hl)		;764c
l764dh:
	cp 03ch			;764d
	ld a,(hl)		;764f
	ld e,03eh		;7650
	ld a,b			;7652
	ret nz			;7653
	call m,00806h		;7654
	cp 0fch			;7657
	ret p			;7659
	ret nz			;765a
	call m,0e0f8h		;765b
	add a,b			;765e
	nop			;765f
	ret p			;7660
	ret nz			;7661
	rrca			;7662
	ccf			;7663
	ld a,a			;7664
	nop			;7665
	ld (hl),b		;7666
	call m,03020h		;7667
	inc e			;766a
	ld a,a			;766b
	ld a,a			;766c
	ret nz			;766d
	ld a,b			;766e
	rra			;766f
	rlca			;7670
	ld bc,00f7fh		;7671
	ccf			;7674
	rst 38h			;7675
	rst 38h			;7676
	inc bc			;7677
	nop			;7678
	add a,c			;7679
	ret po			;767a
	inc bc			;767b
l767ch:
	rst 38h			;767c
	and d			;767d
l767eh:
	inc bc			;767e
	ld a,b			;767f
	inc e			;7680
	ld e,03ch		;7681
	ld a,b			;7683
	ret po			;7684
	ld bc,00201h		;7685
	inc b			;7688
	inc b			;7689
	nop			;768a
	cp 07eh			;768b
	ret nz			;768d
	ret p			;768e
	ret nz			;768f
	add a,b			;7690
	rrca			;7691
	rrca			;7692
	ccf			;7693
	ld a,a			;7694
	ld a,(hl)		;7695
	ld a,h			;7696
	inc a			;7697
	jr c,l7719h		;7698
	ld a,a			;769a
	ld a,00eh		;769b
	rra			;769d
	ccf			;769e
	ccf			;769f
	inc bc			;76a0
	ld a,a			;76a1
	adc a,a			;76a2
	ld bc,0fe03h		;76a3
	inc c			;76a6
	ld a,07eh		;76a7
	cp 0e0h			;76a9
	add a,b			;76ab
	cp 002h			;76ac
	inc b			;76ae
	inc b			;76af
	ex af,af'		;76b0
	ex af,af'		;76b1
	inc bc			;76b2
	ld a,(hl)		;76b3
	adc a,a			;76b4
	ret p			;76b5
	ret nz			;76b6
	add a,b			;76b7
	ex (sp),hl		;76b8
	add a,b			;76b9
	rrca			;76ba
	ccf			;76bb
	ld a,a			;76bc
	inc a			;76bd
	jr c,l773fh		;76be
	ld a,a			;76c0
	ccf			;76c1
	ccf			;76c2
l76c3h:
	ld e,005h		;76c3
	nop			;76c5
	adc a,h			;76c6
	rlca			;76c7
	rra			;76c8
	ld a,h			;76c9
l76cah:
	ret nz			;76ca
	cp 03ch			;76cb
	ld e,0feh		;76cd
	cp 0f0h			;76cf
	nop			;76d1
	call m,09000h		;76d2
	ret p			;76d5
	ld d,b			;76d6
	call p,0fdfdh		;76d7
	ret c			;76da
	ret c			;76db
	sbc a,090h		;76dc
	ld d,b			;76de
	call p,0fdfdh		;76df
	ret c			;76e2
	ret c			;76e3
	sbc a,004h		;76e4
	ld d,h			;76e6
	inc bc			;76e7
	sub l			;76e8
	dec b			;76e9
	ld d,h			;76ea
	dec b			;76eb
	sub l			;76ec
	ld (bc),a		;76ed
	ld d,h			;76ee
	ld (bc),a		;76ef
	call p,0f88ch		;76f0
	cp 0feh			;76f3
	sub l			;76f5
	ld d,h			;76f6
	ld d,h			;76f7
	call p,0f8f4h		;76f8
	cp 0feh			;76fb
	ld d,h			;76fd
	dec b			;76fe
	sub l			;76ff
	inc bc			;7700
	ld d,h			;7701
	inc bc			;7702
	sub l			;7703
	add a,l			;7704
	ld d,h			;7705
	ld c,a			;7706
	push af			;7707
	sub l			;7708
	sub l			;7709
	inc bc			;770a
	sub h			;770b
	ld (bc),a		;770c
	sub l			;770d
	adc a,d			;770e
	sub h			;770f
	sub l			;7710
	sub l			;7711
	ld d,h			;7712
	ld d,h			;7713
	ld c,a			;7714
	push af			;7715
	sub l			;7716
	ld d,h			;7717
	ld d,h			;7718
l7719h:
	inc b			;7719
	sub l			;771a
	ld (bc),a		;771b
	ld d,h			;771c
	ld (bc),a		;771d
	call p,09503h		;771e
	add a,e			;7721
	ld d,h			;7722
	call p,003f4h		;7723
	ld d,h			;7726
	adc a,c			;7727
	call p,0ecfch		;7728
	call 0fdfdh		;772b
	ld c,l			;772e
	call m,006c8h		;772f
	ret pe			;7732
	add a,e			;7733
	defb 0fdh,0dch,0d8h ;illegal sequence	;7734
	dec b			;7737
	call c,05403h		;7738
	add a,(hl)		;773b
	call p,0d484h		;773c
l773fh:
	ld d,h			;773f
	ld d,h			;7740
	sub h			;7741
	inc b			;7742
	ld d,h			;7743
	inc bc			;7744
	sub l			;7745
	sub h			;7746
	sub b			;7747
	sub l			;7748
	push af			;7749
	ret m			;774a
	ret c			;774b
	defb 0edh ;next byte illegal after ed	;774c
	adc a,l			;774d
	push af			;774e
	push af			;774f
	rst 18h			;7750
	defb 0edh ;next byte illegal after ed	;7751
	cp 0f9h			;7752
	push af			;7754
	ld d,h			;7755
	ld d,h			;7756
	defb 0edh ;next byte illegal after ed	;7757
	defb 0edh ;next byte illegal after ed	;7758
	rst 38h			;7759
	ld d,h			;775a
	inc bc			;775b
	sub l			;775c
	add a,l			;775d
	ld d,h			;775e
	ret c			;775f
	call p,054f4h		;7760
	inc bc			;7763
	sub l			;7764
	add a,c			;7765
	ld d,h			;7766
	inc bc			;7767
	defb 0fdh,083h,0deh ;illegal sequence	;7768
	ret c			;776b
	ret c			;776c
	dec b			;776d
	add a,(iy-022h)		;776e
	ret c			;7771
	ret c			;7772
	defb 0fdh,0fdh,054h ;illegal sequence	;7773
	inc bc			;7776
	sub l			;7777
	add hl,bc		;7778
	ld d,h			;7779
	add a,e			;777a
	push af			;777b
	defb 0fdh,0feh,003h ;illegal sequence	;777c
	ld d,h			;777f
	add a,a			;7780
	call p,0eddfh		;7781
	defb 0edh ;next byte illegal after ed	;7784
	rst 18h			;7785
	cp 0feh			;7786
	inc bc			;7788
	ret c			;7789
	ld (bc),a		;778a
	defb 0fdh,083h,0f4h ;illegal sequence	;778b
	defb 0edh ;next byte illegal after ed	;778e
	defb 0edh ;next byte illegal after ed	;778f
	inc bc			;7790
	adc a,a			;7791
	ld (bc),a		;7792
	rst 18h			;7793
	add a,e			;7794
	call p,09595h		;7795
	ld b,054h		;7798
	add a,c			;779a
	sub l			;779b
	inc bc			;779c
	ld d,h			;779d
	inc bc			;779e
	call p,0f581h		;779f
	ex af,af'		;77a2
	call p,05406h		;77a3
	sub (hl)		;77a6
	sub l			;77a7
	ld d,h			;77a8
	call pe,0fdcdh		;77a9
	defb 0fdh,0f4h,0f4h ;illegal sequence	;77ac
	ld d,h			;77af
	ld d,h			;77b0
	ret pe			;77b1
	ret pe			;77b2
	ret c			;77b3
	call c,0fddch		;77b4
	defb 0fdh,0f4h,0dch ;illegal sequence	;77b7
	call c,0dcd8h		;77ba
	inc bc			;77bd
	defb 0fdh,081h,0f4h ;illegal sequence	;77be
	ex af,af'		;77c1
	sub l			;77c2
	ld a,(bc)		;77c3
	ld d,h			;77c4
	ld (bc),a		;77c5
	sub l			;77c6
	inc bc			;77c7
	ld d,h			;77c8
	adc a,e			;77c9
	dec b			;77ca
	ret pe			;77cb
	adc a,l			;77cc
	adc a,l			;77cd
	rst 18h			;77ce
	call p,050f5h		;77cf
	sub b			;77d2
	sub l			;77d3
	ld d,h			;77d4
	inc bc			;77d5
	call p,0fc8dh		;77d6
	adc a,(hl)		;77d9
	call m,05454h		;77da
	sub l			;77dd
	ld d,h			;77de
	call p,0fecfh		;77df
	call m,05454h		;77e2
	inc bc			;77e5
	sub l			;77e6
	add a,h			;77e7
	ld d,h			;77e8
	ld c,a			;77e9
	ld c,a			;77ea
	ld d,h			;77eb
	inc bc			;77ec
	sub l			;77ed
	add a,c			;77ee
	ld d,h			;77ef
	inc bc			;77f0
	call p,09505h		;77f1
	adc a,a			;77f4
	ld d,h			;77f5
	ld c,a			;77f6
	ld c,a			;77f7
	ld d,h			;77f8
	ld d,h			;77f9
l77fah:
	sub l			;77fa
	ld d,h			;77fb
	call p,0f0f0h		;77fc
	ld b,b			;77ff
	ld b,b			;7800
sub_7801h:
	ret nc			;7801
	ret nc			;7802
	add a,b			;7803
	inc bc			;7804
	ret nz			;7805
	add a,c			;7806
	ret po			;7807
	inc bc			;7808
	ret p			;7809
	sub c			;780a
	defb 0fdh,0dch,08eh ;illegal sequence	;780b
	call c,0fdfdh		;780e
	rrca			;7811
	rrca			;7812
	call 0eccdh		;7813
	call pe,0f4ddh		;7816
	call p,084d4h		;7819
	inc bc			;781c
	call nz,0fe89h		;781d
	call p,09595h		;7820
	ld d,h			;7823
	ld c,a			;7824
	ld c,a			;7825
	ret m			;7826
	cp 008h			;7827
	ld d,h			;7829
	ld (bc),a		;782a
	ld b,b			;782b
	adc a,e			;782c
	call nc,084c4h		;782d
	push hl			;7830
	add a,h			;7831
	call nz,0c0d0h		;7832
	add a,b			;7835
	ret po			;7836
	add a,b			;7837
	inc bc			;7838
	ret nz			;7839
	ex af,af'		;783a
	add a,b			;783b
	adc a,b			;783c
	call m,0d8fdh		;783d
	adc a,(hl)		;7840
	ret c			;7841
	call m,000fch		;7842
	ex af,af'		;7845
	ld d,h			;7846
	ld (bc),a		;7847
	cp 086h			;7848
	ret m			;784a
	defb 0fdh,0f5h,0f4h ;illegal sequence	;784b
	ld b,l			;784e
	ld e,c			;784f
	rlca			;7850
	ld d,h			;7851
	add a,c			;7852
	sub l			;7853
	inc b			;7854
	call nz,0d402h		;7855
	ld (bc),a		;7858
	ld b,b			;7859
	inc b			;785a
	ret nz			;785b
	add a,h			;785c
	add a,b			;785d
	ret po			;785e
	add a,b			;785f
	ret nz			;7860
	ex af,af'		;7861
	ld d,h			;7862
	djnz l77fah		;7863
	adc a,c			;7865
	ret nc			;7866
	ret p			;7867
	ld c,(hl)		;7868
	ld c,b			;7869
	ld c,b			;786a
	call nz,0d4c4h		;786b
	ret po			;786e
	inc bc			;786f
	ret nz			;7870
	add a,h			;7871
	add a,b			;7872
	ret nc			;7873
	rst 18h			;7874
	rst 18h			;7875
	ex af,af'		;7876
	ld d,h			;7877
	ld (bc),a		;7878
	sub l			;7879
	ld (bc),a		;787a
	ld d,h			;787b
	ld (bc),a		;787c
	call p,0fd84h		;787d
	ret m			;7880
	sub l			;7881
	sub l			;7882
	inc bc			;7883
	call p,0fd83h		;7884
	ret m			;7887
	ret c			;7888
	dec b			;7889
	ld d,h			;788a
	add a,l			;788b
	call p,08484h		;788c
	ld b,b			;788f
	ld b,b			;7890
	inc bc			;7891
	call p,05403h		;7892
	ld (bc),a		;7895
	call m,0dc83h		;7896
	ret z			;7899
	ret z			;789a
	inc bc			;789b
	ret pe			;789c
	add a,l			;789d
	defb 0fdh,0dch,0dch ;illegal sequence	;789e
	ret z			;78a1
	ret z			;78a2
	inc bc			;78a3
	adc a,(hl)		;78a4
	ex af,af'		;78a5
	ld d,h			;78a6
	inc b			;78a7
	ret m			;78a8
	sub e			;78a9
	cp 0f8h			;78aa
	ret m			;78ac
	defb 0fdh,0d8h,0e8h ;illegal sequence	;78ad
	ret m			;78b0
	ret m			;78b1
	defb 0fdh,0f8h,0deh ;illegal sequence	;78b2
	rst 38h			;78b5
	call po,0d4f4h		;78b6
	add a,h			;78b9
	call p,0f484h		;78ba
	rlca			;78bd
	ld d,h			;78be
	ld (bc),a		;78bf
	sub l			;78c0
	add a,d			;78c1
	ret z			;78c2
	call nc,0f405h		;78c3
	add a,l			;78c6
	ld d,h			;78c7
	ret z			;78c8
	ret z			;78c9
	call c,003dch		;78ca
	defb 0fdh,081h,0f4h ;illegal sequence	;78cd
	ex af,af'		;78d0
	ld d,h			;78d1
	add a,e			;78d2
	ret m			;78d3
	call p,00445h		;78d4
	sub l			;78d7
	add a,h			;78d8
	ld d,h			;78d9
	call p,054f4h		;78da
	inc b			;78dd
	sub l			;78de
	ld (bc),a		;78df
	ld d,h			;78e0
	adc a,l			;78e1
	call p,0f8fdh		;78e2
	ret m			;78e5
	cp 0fdh			;78e6
	call p,05494h		;78e8
	ld d,h			;78eb
	call nc,0e484h		;78ec
	dec bc			;78ef
sub_78f0h:
	ld d,h			;78f0
	inc bc			;78f1
	sub l			;78f2
	add a,l			;78f3
	ld d,h			;78f4
	ld c,a			;78f5
	ld c,a			;78f6
	ld d,h			;78f7
	sub l			;78f8
	inc b			;78f9
	ld d,h			;78fa
	inc bc			;78fb
	sub l			;78fc
	add a,c			;78fd
	ld hl,03206h		;78fe
	add a,e			;7901
	ld hl,03232h		;7902
l7905h:
	inc b			;7905
	ld hl,01002h		;7906
	inc bc			;7909
	ld hl,01002h		;790a
	inc b			;790d
	or b			;790e
	ld (bc),a		;790f
	jr nz,l7915h		;7910
	ld (02002h),a		;7912
l7915h:
	dec b			;7915
	ld (02102h),a		;7916
	add a,c			;7919
	djnz l7924h		;791a
	inc hl			;791c
	ld (bc),a		;791d
	ld (de),a		;791e
	inc c			;791f
	ld (02102h),a		;7920
	add a,c			;7923
l7924h:
	ld (02103h),a		;7924
	add a,c			;7927
l7928h:
	pop af			;7928
	inc bc			;7929
	or c			;792a
	inc b			;792b
	ld hl,01004h		;792c
	ld b,020h		;792f
	ld (bc),a		;7931
	ld (02181h),a		;7932
	ld b,032h		;7935
	add a,c			;7937
	ld hl,03205h		;7938
	ld b,021h		;793b
	ld (bc),a		;793d
	djnz $+5		;793e
	or b			;7940
	ld (bc),a		;7941
	ld hl,01006h		;7942
	ex af,af'		;7945
	ld (02181h),a		;7946
	ld b,032h		;7949
	add a,c			;794b
	ld hl,08300h		;794c
	ld (hl),b		;794f
	jr nz,l7972h		;7950
	inc bc			;7952
	djnz $-108		;7953
	jr nz,$+18		;7955
	inc c			;7957
	inc b			;7958
	inc b			;7959
	ex af,af'		;795a
	inc b			;795b
	ex af,af'		;795c
	djnz l797fh		;795d
	ld b,b			;795f
	jr nz,l797ah		;7960
	inc c			;7962
	ex af,af'		;7963
	djnz l7976h		;7964
	jr nz,$+5		;7966
	djnz l796ch		;7968
	jr nz,$+6		;796a
l796ch:
	djnz l7905h		;796c
	ex af,af'		;796e
	jr l79a1h		;796f
	ld b,b			;7971
l7972h:
	ld b,b			;7972
	ret nz			;7973
	add a,b			;7974
	ret nz			;7975
l7976h:
	ld h,b			;7976
	djnz l7985h		;7977
	ld (bc),a		;7979
l797ah:
	inc b			;797a
	inc c			;797b
	ex af,af'		;797c
	djnz l799fh		;797d
l797fh:
	jr nc,l7989h		;797f
	ex af,af'		;7981
	inc c			;7982
	jr l7995h		;7983
l7985h:
	nop			;7985
	jr c,l7928h		;7986
	nop			;7988
l7989h:
	sbc a,b			;7989
	ld a,a			;798a
	jp 08181h		;798b
	jr nz,l7990h		;798e
l7990h:
	jr nz,$+34		;7990
	add a,b			;7992
	nop			;7993
	rra			;7994
l7995h:
	inc bc			;7995
	nop			;7996
	rrca			;7997
	ccf			;7998
	ld a,a			;7999
	rlca			;799a
	nop			;799b
	rra			;799c
	nop			;799d
	nop			;799e
l799fh:
	rrca			;799f
	ccf			;79a0
l79a1h:
	ld a,a			;79a1
	nop			;79a2
	add a,c			;79a3
	or b			;79a4
	inc bc			;79a5
	or (hl)			;79a6
	inc b			;79a7
	and 002h		;79a8
	ld hl,01003h		;79aa
	inc bc			;79ad
	or b			;79ae
	ld (bc),a		;79af
	ld hl,01003h		;79b0
	inc bc			;79b3
	or b			;79b4
	nop			;79b5
	sbc a,c			;79b6
	ret po			;79b7
	rst 38h			;79b8
	ccf			;79b9
	dec (hl)		;79ba
	ld bc,00707h		;79bb
	nop			;79be
	inc a			;79bf
	ld h,e			;79c0
	rra			;79c1
	ccf			;79c2
	ret nz			;79c3
	add a,b			;79c4
	add a,b			;79c5
	ret po			;79c6
	inc a			;79c7
	call m,0f0f0h		;79c8
	jr c,l79ech		;79cb
	jp m,0cacah		;79cd
	inc bc			;79d0
	ld (hl),l		;79d1
	sub h			;79d2
	nop			;79d3
	ex af,af'		;79d4
	ld a,(bc)		;79d5
	push bc			;79d6
	ld e,b			;79d7
	rrca			;79d8
	rlca			;79d9
	rlca			;79da
	ld l,a			;79db
	sbc a,a			;79dc
	rra			;79dd
	ld a,a			;79de
	dec b			;79df
	ret po			;79e0
	ret m			;79e1
	call m,0f8fch		;79e2
	ret nz			;79e5
	di			;79e6
	nop			;79e7
	ld (bc),a		;79e8
	defb 0fdh,084h ;add a,iyh	;79e9
	add a,h			;79eb
l79ech:
	call po,08484h		;79ec
	inc bc			;79ef
	ld b,l			;79f0
	inc b			;79f1
	sub l			;79f2
	add a,l			;79f3
	ld d,h			;79f4
	ld c,a			;79f5
	ret m			;79f6
	sub l			;79f7
	ld d,h			;79f8
	inc bc			;79f9
	sub h			;79fa
	adc a,e			;79fb
	call p,0d8feh		;79fc
	ret m			;79ff
	defb 0edh ;next byte illegal after ed	;7a00
	adc a,a			;7a01
	rst 18h			;7a02
	rst 18h			;7a03
	add a,h			;7a04
	call po,00854h		;7a05
	sub l			;7a08
	add a,c			;7a09
	add a,l			;7a0a
	inc bc			;7a0b
	sub l			;7a0c
	add a,c			;7a0d
	sub h			;7a0e
	inc bc			;7a0f
	sub l			;7a10
	nop			;7a11
	add a,e			;7a12
	ld a,a			;7a13
	nop			;7a14
	ccf			;7a15
	inc b			;7a16
	nop			;7a17
	add a,a			;7a18
	rra			;7a19
	ld a,a			;7a1a
	ld a,a			;7a1b
	ccf			;7a1c
	ccf			;7a1d
	ld a,a			;7a1e
	ld a,a			;7a1f
	dec b			;7a20
	ld (hl),b		;7a21
	add a,d			;7a22
	ld a,a			;7a23
	ccf			;7a24
	inc bc			;7a25
	nop			;7a26
	nop			;7a27
	ex af,af'		;7a28
	or b			;7a29
	add a,h			;7a2a
	ret nz			;7a2b
	or b			;7a2c
	ret nz			;7a2d
	ret nz			;7a2e
	inc c			;7a2f
	or b			;7a30
	nop			;7a31
	inc b			;7a32
	nop			;7a33
	add a,c			;7a34
	ex (sp),hl		;7a35
	rlca			;7a36
	nop			;7a37
	add a,c			;7a38
	ex (sp),hl		;7a39
	dec d			;7a3a
	nop			;7a3b
	ld (bc),a		;7a3c
	add a,b			;7a3d
	add a,c			;7a3e
	rst 38h			;7a3f
	inc bc			;7a40
	add a,b			;7a41
	inc bc			;7a42
	nop			;7a43
	dec b			;7a44
	call m,02300h		;7a45
	or b			;7a48
	dec b			;7a49
	rlc h			;7a4a
	or b			;7a4c
	add a,c			;7a4d
	rlc e			;7a4e
	or b			;7a50
	nop			;7a51
	ex af,af'		;7a52
	nop			;7a53
	nop			;7a54
	ex af,af'		;7a55
	or b			;7a56
	nop			;7a57
	add a,(hl)		;7a58
	xor a			;7a59
	ld a,a			;7a5a
	add a,b			;7a5b
	add a,b			;7a5c
	rst 30h			;7a5d
	call pe,0e804h		;7a5e
	add a,(hl)		;7a61
	call pe,0f7f7h		;7a62
	add a,b			;7a65
	add a,b			;7a66
	cpl			;7a67
	inc bc			;7a68
	cp a			;7a69
	sub d			;7a6a
	rst 38h			;7a6b
	ret nz			;7a6c
	ret nz			;7a6d
	rst 38h			;7a6e
	rst 38h			;7a6f
	xor a			;7a70
	ld a,a			;7a71
	ld a,a			;7a72
	rst 38h			;7a73
	rst 38h			;7a74
	nop			;7a75
	nop			;7a76
	rla			;7a77
	nop			;7a78
	nop			;7a79
	ret nz			;7a7a
	ret nz			;7a7b
	rst 38h			;7a7c
	inc bc			;7a7d
	cp a			;7a7e
	ld (bc),a		;7a7f
	ret pe			;7a80
	add a,(hl)		;7a81
	rst 38h			;7a82
	nop			;7a83
	nop			;7a84
	add a,b			;7a85
	add a,b			;7a86
	cpl			;7a87
	inc bc			;7a88
	cp a			;7a89
	add a,c			;7a8a
	rst 38h			;7a8b
	inc b			;7a8c
	ret nz			;7a8d
	add a,e			;7a8e
	xor a			;7a8f
	ld a,a			;7a90
	ld a,a			;7a91
	inc bc			;7a92
	rst 38h			;7a93
	ld (bc),a		;7a94
	nop			;7a95
	inc b			;7a96
	ret nz			;7a97
	add a,c			;7a98
	rst 38h			;7a99
	inc bc			;7a9a
	cp a			;7a9b
	add a,c			;7a9c
	rst 38h			;7a9d
	inc b			;7a9e
	nop			;7a9f
	ld (bc),a		;7aa0
	add a,b			;7aa1
	add a,c			;7aa2
	cpl			;7aa3
	nop			;7aa4
	adc a,c			;7aa5
	ld b,e			;7aa6
	push af			;7aa7
	push af			;7aa8
	inc sp			;7aa9
	ld sp,hl		;7aaa
	ld sp,hl		;7aab
	or 0feh			;7aac
	or 003h			;7aae
	ld sp,hl		;7ab0
	adc a,c			;7ab1
	ld d,l			;7ab2
	di			;7ab3
	ld e,a			;7ab4
	push hl			;7ab5
	ld d,h			;7ab6
	ld d,h			;7ab7
	ld b,e			;7ab8
	push af			;7ab9
	push af			;7aba
	inc bc			;7abb
	di			;7abc
	add a,e			;7abd
	ld b,e			;7abe
	push af			;7abf
	ld c,a			;7ac0
	inc bc			;7ac1
	ld d,e			;7ac2
	inc b			;7ac3
	rst 28h			;7ac4
	adc a,b			;7ac5
	push af			;7ac6
	call p,0e5f4h		;7ac7
	ld d,h			;7aca
	ld d,h			;7acb
	or 0f9h			;7acc
	inc bc			;7ace
	ld d,h			;7acf
	add a,(hl)		;7ad0
	di			;7ad1
	ld e,a			;7ad2
	push hl			;7ad3
	ld d,h			;7ad4
	ld d,h			;7ad5
	ld b,e			;7ad6
	inc bc			;7ad7
	push af			;7ad8
	add a,l			;7ad9
	call p,043f2h		;7ada
	push af			;7add
	ld c,a			;7ade
	inc b			;7adf
	ld d,h			;7ae0
	adc a,c			;7ae1
	ld (0f5f1h),hl		;7ae2
	push af			;7ae5
l7ae6h:
	call p,0e5f4h		;7ae6
	ld d,h			;7ae9
	ld d,h			;7aea
	inc bc			;7aeb
	dec d			;7aec
	ld (bc),a		;7aed
	ld b,h			;7aee
	add a,e			;7aef
	di			;7af0
	ld e,a			;7af1
	push hl			;7af2
	nop			;7af3
	ld b,03ch		;7af4
	add a,d			;7af6
	add a,c			;7af7
	rst 38h			;7af8
	jr z,l7b6fh		;7af9
	ex af,af'		;7afb
	jr c,l7b06h		;7afc
	rla			;7afe
	ex af,af'		;7aff
	jr c,l7b0ah		;7b00
	ret pe			;7b02
	ex af,af'		;7b03
	jr c,l7b09h		;7b04
l7b06h:
	ret pe			;7b06
	ld (bc),a		;7b07
	rst 38h			;7b08
l7b09h:
	inc bc			;7b09
l7b0ah:
	rla			;7b0a
	ex af,af'		;7b0b
	jr c,l7b16h		;7b0c
	rla			;7b0e
	add a,c			;7b0f
	rst 38h			;7b10
	ex af,af'		;7b11
	jr c,l7b17h		;7b12
	ret pe			;7b14
	add a,c			;7b15
l7b16h:
	nop			;7b16
l7b17h:
	inc bc			;7b17
	ret pe			;7b18
	nop			;7b19
	adc a,c			;7b1a
	jr nc,l7b60h		;7b1b
	ld d,h			;7b1d
	ld d,h			;7b1e
	ld b,e			;7b1f
	ld (0f2f2h),a		;7b20
	ld b,e			;7b23
	ld c,032h		;7b24
	add a,d			;7b26
	cpl			;7b27
	ld d,h			;7b28
	ld d,043h		;7b29
	add a,c			;7b2b
	ld (04303h),a		;7b2c
	ld (bc),a		;7b2f
	push hl			;7b30
	inc bc			;7b31
	ld d,h			;7b32
	inc bc			;7b33
	jp p,03402h		;7b34
	inc bc			;7b37
	inc hl			;7b38
	ex af,af'		;7b39
	ld d,h			;7b3a
	ex af,af'		;7b3b
	ld (05403h),a		;7b3c
	add a,d			;7b3f
	ld (003ffh),a		;7b40
	ld b,e			;7b43
	inc bc			;7b44
	ld (0f205h),a		;7b45
	ex af,af'		;7b48
	ld b,e			;7b49
	add hl,bc		;7b4a
	jp p,05489h		;7b4b
	ld b,e			;7b4e
	ld b,e			;7b4f
	rst 38h			;7b50
	ld d,h			;7b51
	ld b,e			;7b52
	ld b,e			;7b53
	rst 38h			;7b54
	ld (02f03h),a		;7b55
	add a,e			;7b58
	ld (02f2fh),a		;7b59
	nop			;7b5c
	ex af,af'		;7b5d
	jr c,l7b68h		;7b5e
l7b60h:
	ret pe			;7b60
	ld (bc),a		;7b61
	jr c,l7ae6h		;7b62
	rst 38h			;7b64
	add a,b			;7b65
	inc b			;7b66
	ld a,(hl)		;7b67
l7b68h:
	nop			;7b68
	sbc a,b			;7b69
	push hl			;7b6a
	ld d,h			;7b6b
	ld d,h			;7b6c
	ld b,e			;7b6d
	ld d,h			;7b6e
l7b6fh:
	ld b,e			;7b6f
	push hl			;7b70
	ld b,e			;7b71
	ld b,e			;7b72
	ld (02f32h),a		;7b73
	ld (0432fh),a		;7b76
	ld (05443h),a		;7b79
	jp p,032f2h		;7b7c
	ld b,e			;7b7f
	ld d,h			;7b80
	ld d,h			;7b81
	nop			;7b82
	add a,a			;7b83
	nop			;7b84
	inc bc			;7b85
	rra			;7b86
	ld a,a			;7b87
	rlca			;7b88
	ccf			;7b89
	ccf			;7b8a
	dec b			;7b8b
	nop			;7b8c
	add a,h			;7b8d
	ld bc,00502h		;7b8e
	dec bc			;7b91
	inc bc			;7b92
	nop			;7b93
	sbc a,a			;7b94
	cp l			;7b95
	ld a,d			;7b96
	or 0eeh			;7b97
	ret nz			;7b99
	rlca			;7b9a
	rrca			;7b9b
	ld c,001h		;7b9c
	inc bc			;7b9e
	rlca			;7b9f
	rlca			;7ba0
	rrca			;7ba1
	ret p			;7ba2
	ret po			;7ba3
	ret po			;7ba4
	ret nz			;7ba5
	add a,b			;7ba6
	ld (hl),b		;7ba7
	or 0e7h			;7ba8
	nop			;7baa
	nop			;7bab
	call m,0f9fch		;7bac
	jp m,0ebf5h		;7baf
	nop			;7bb2
	nop			;7bb3
	ld b,0f0h		;7bb4
	nop			;7bb6
	inc b			;7bb7
	jr nc,l7bbch		;7bb8
	ld b,e			;7bba
	ld (bc),a		;7bbb
l7bbch:
	ld (03005h),a		;7bbc
	add a,d			;7bbf
	ld b,b			;7bc0
	ld d,b			;7bc1
	inc b			;7bc2
	ld b,b			;7bc3
	adc a,b			;7bc4
	jr nz,l7bf7h		;7bc5
	ld b,b			;7bc7
	ld d,b			;7bc8
	ld b,b			;7bc9
	ld b,b			;7bca
	jr nc,l7bedh		;7bcb
	inc b			;7bcd
	jr nc,l7bd2h		;7bce
	jr nz,l7bd6h		;7bd0
l7bd2h:
	jr nc,$-124		;7bd2
	jr nz,l7c06h		;7bd4
l7bd6h:
	inc bc			;7bd6
	ld b,b			;7bd7
	add a,l			;7bd8
	ret p			;7bd9
	jr nz,l7c0ch		;7bda
	ld b,b			;7bdc
	ld d,b			;7bdd
	inc bc			;7bde
	ld b,b			;7bdf
	add a,(hl)		;7be0
	ret p			;7be1
	cpl			;7be2
	ccf			;7be3
	ld b,d			;7be4
	ld d,e			;7be5
	call po,00400h		;7be6
	ret p			;7be9
	inc b			;7bea
	jr c,l7bf0h		;7beb
l7bedh:
	nop			;7bed
	add a,c			;7bee
	rlca			;7bef
l7bf0h:
	inc b			;7bf0
	ret pe			;7bf1
	nop			;7bf2
	inc b			;7bf3
	nop			;7bf4
	add a,h			;7bf5
	ld d,h			;7bf6
l7bf7h:
	ld b,e			;7bf7
	push hl			;7bf8
	ld b,e			;7bf9
	inc b			;7bfa
	ret p			;7bfb
	add a,h			;7bfc
	ld (0432fh),a		;7bfd
	ld (08100h),a		;7c00
	jr c,l7c08h		;7c03
	rlca			;7c05
l7c06h:
	sub l			;7c06
	ccf			;7c07
l7c08h:
	rrca			;7c08
	rlca			;7c09
	rlca			;7c0a
	cp a			;7c0b
l7c0ch:
	ld a,a			;7c0c
	inc bc			;7c0d
	rlca			;7c0e
	rrca			;7c0f
	rra			;7c10
	rra			;7c11
	ccf			;7c12
	rra			;7c13
	rra			;7c14
	ccf			;7c15
	ccf			;7c16
	ld a,a			;7c17
	ld d,l			;7c18
	ld d,l			;7c19
	rst 38h			;7c1a
	ret m			;7c1b
	inc bc			;7c1c
	rla			;7c1d
	add a,e			;7c1e
	rst 38h			;7c1f
	ld d,l			;7c20
	ld d,l			;7c21
	inc bc			;7c22
	rst 38h			;7c23
	ld (bc),a		;7c24
	cp a			;7c25
	add a,(hl)		;7c26
	rst 38h			;7c27
	ld d,l			;7c28
	ld d,l			;7c29
	rst 38h			;7c2a
	rst 38h			;7c2b
	ret p			;7c2c
	ld b,074h		;7c2d
	ld (bc),a		;7c2f
l7c30h:
	dec bc			;7c30
	ld (bc),a		;7c31
	rst 38h			;7c32
	inc b			;7c33
	adc a,e			;7c34
	ld (bc),a		;7c35
	rla			;7c36
	ld b,016h		;7c37
	nop			;7c39
	adc a,d			;7c3a
	ld b,e			;7c3b
	ld d,h			;7c3c
	ld b,e			;7c3d
	ld d,h			;7c3e
	ld d,h			;7c3f
	push hl			;7c40
	ld d,h			;7c41
	ld b,e			;7c42
	ld b,b			;7c43
	jr nc,l7c4bh		;7c44
	ld b,e			;7c46
	add a,a			;7c47
	ld (040f0h),a		;7c48
l7c4bh:
	jr nc,l7c6dh		;7c4b
	ret p			;7c4d
	di			;7c4e
	inc bc			;7c4f
	jp p,05485h		;7c50
	ld b,e			;7c53
	ld (0f4f4h),a		;7c54
	inc bc			;7c57
	di			;7c58
	sub c			;7c59
	xor 054h		;7c5a
	ld b,e			;7c5c
	push af			;7c5d
	push af			;7c5e
	call p,00ff4h		;7c5f
	rrca			;7c62
	jp p,024f3h		;7c63
	dec (hl)		;7c66
	ld b,c			;7c67
	ld e,043h		;7c68
	ld (0f303h),a		;7c6a
l7c6dh:
	add a,e			;7c6d
	call p,0fef5h		;7c6e
	inc b			;7c71
	ld b,e			;7c72
	add a,h			;7c73
	ld d,h			;7c74
	rst 38h			;7c75
	ld (00043h),a		;7c76
	ld (bc),a		;7c79
	pop bc			;7c7a
	adc a,c			;7c7b
l7c7ch:
	rst 38h			;7c7c
	ccf			;7c7d
	rlca			;7c7e
	nop			;7c7f
	rra			;7c80
	nop			;7c81
	cpl			;7c82
	cpl			;7c83
	rst 38h			;7c84
	inc bc			;7c85
	add a,b			;7c86
	adc a,c			;7c87
	adc a,d			;7c88
	adc a,(hl)		;7c89
	ret po			;7c8a
	rst 38h			;7c8b
	add a,b			;7c8c
	add a,b			;7c8d
	rst 38h			;7c8e
	djnz l7ca1h		;7c8f
	ld b,07fh		;7c91
	inc bc			;7c93
	cp a			;7c94
	add a,d			;7c95
	jp z,0038eh		;7c96
	add a,b			;7c99
	add a,a			;7c9a
	rst 38h			;7c9b
	cpl			;7c9c
	cpl			;7c9d
	rlca			;7c9e
	nop			;7c9f
	nop			;7ca0
l7ca1h:
	rrca			;7ca1
	inc b			;7ca2
	ret nz			;7ca3
	add a,e			;7ca4
	ld a,a			;7ca5
	nop			;7ca6
	rrca			;7ca7
	dec b			;7ca8
	ccf			;7ca9
	inc bc			;7caa
	cp a			;7cab
	dec b			;7cac
	rst 38h			;7cad
	nop			;7cae
	add a,e			;7caf
	di			;7cb0
	push af			;7cb1
	push af			;7cb2
	inc bc			;7cb3
	ld d,h			;7cb4
	add a,a			;7cb5
	ld b,e			;7cb6
	push hl			;7cb7
	push hl			;7cb8
	ld b,e			;7cb9
	di			;7cba
	di			;7cbb
	push af			;7cbc
	inc bc			;7cbd
	pop af			;7cbe
	ld (bc),a		;7cbf
	ld d,c			;7cc0
	add a,(hl)		;7cc1
	push af			;7cc2
	call p,0f5f4h		;7cc3
	call p,005e5h		;7cc6
	rst 38h			;7cc9
	add a,e			;7cca
	push hl			;7ccb
	ld d,h			;7ccc
	ld d,h			;7ccd
	inc bc			;7cce
	cp 086h			;7ccf
	pop af			;7cd1
	di			;7cd2
	di			;7cd3
	push hl			;7cd4
	push hl			;7cd5
	pop hl			;7cd6
	inc bc			;7cd7
	push hl			;7cd8
	add a,h			;7cd9
	cp 03eh			;7cda
	ld c,(hl)		;7cdc
	ld l,004h		;7cdd
	ld d,h			;7cdf
	add a,a			;7ce0
	rst 38h			;7ce1
	ld b,e			;7ce2
	ld d,h			;7ce3
	ccf			;7ce4
	ld d,h			;7ce5
	ld d,h			;7ce6
	ld b,e			;7ce7
	dec b			;7ce8
	cp 000h			;7ce9
	ld (bc),a		;7ceb
	ret pe			;7cec
	adc a,(hl)		;7ced
	call pe,0f8f7h		;7cee
	ld a,a			;7cf1
	ld a,a			;7cf2
	cpl			;7cf3
	xor a			;7cf4
	ld a,a			;7cf5
	rst 38h			;7cf6
	ret m			;7cf7
sub_7cf8h:
	rst 30h			;7cf8
	call pe,0e8e8h		;7cf9
	inc bc			;7cfc
	cp a			;7cfd
	adc a,e			;7cfe
	rst 38h			;7cff
	rst 30h			;7d00
	call pe,0e8e8h		;7d01
	xor a			;7d04
	ld a,a			;7d05
	rst 38h			;7d06
	rra			;7d07
	rst 28h			;7d08
	scf			;7d09
	inc b			;7d0a
	rla			;7d0b
	add a,e			;7d0c
	inc de			;7d0d
	ex af,af'		;7d0e
	nop			;7d0f
	inc bc			;7d10
	cp a			;7d11
	ld (bc),a		;7d12
	rla			;7d13
	add a,(hl)		;7d14
	scf			;7d15
	rst 28h			;7d16
	rra			;7d17
	ld a,a			;7d18
	ld a,a			;7d19
	cpl			;7d1a
	nop			;7d1b
	add a,c			;7d1c
	or 004h			;7d1d
	ld sp,hl		;7d1f
	add a,(hl)		;7d20
	jp p,0e5f5h		;7d21
	ld b,e			;7d24
	push af			;7d25
	push af			;7d26
	inc bc			;7d27
	ld sp,hl		;7d28
	add a,l			;7d29
	or 0feh			;7d2a
	ld d,h			;7d2c
	ld d,h			;7d2d
	ld b,e			;7d2e
	inc bc			;7d2f
	ld sp,hl		;7d30
	add a,l			;7d31
	or 0feh			;7d32
	ld b,e			;7d34
	push af			;7d35
	push af			;7d36
	inc bc			;7d37
	ld sp,hl		;7d38
	add a,e			;7d39
	or 0feh			;7d3a
	ld l,a			;7d3c
	inc b			;7d3d
	sbc a,a			;7d3e
	add a,h			;7d3f
	push hl			;7d40
	ld d,h			;7d41
	ld d,h			;7d42
	or 004h			;7d43
	ld sp,hl		;7d45
	add a,e			;7d46
	jp p,0e5f5h		;7d47
	nop			;7d4a
	add a,d			;7d4b
	xor a			;7d4c
	ld a,a			;7d4d
	dec bc			;7d4e
	rst 38h			;7d4f
	ld (bc),a		;7d50
	ld a,a			;7d51
	add a,c			;7d52
	cpl			;7d53
	nop			;7d54
	add a,c			;7d55
	ld b,e			;7d56
	inc c			;7d57
	push af			;7d58
	add a,e			;7d59
	jp p,0e5f5h		;7d5a
	nop			;7d5d
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
l7e03h:
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
l7effh:
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

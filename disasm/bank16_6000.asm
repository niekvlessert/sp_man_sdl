; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank16_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank16.bin

	org 06000h

	cpl			;6000
	dec b			;6001
	ccf			;6002
	add a,e			;6003
	ret nz			;6004
	rst 38h			;6005
	nop			;6006
	rlca			;6007
	ld h,(hl)		;6008
	ld (bc),a		;6009
	rst 38h			;600a
	ex af,af'		;600b
	ret nz			;600c
	rlca			;600d
	sbc a,c			;600e
	nop			;600f
	sub h			;6010
	ret c			;6011
	ld (032e8h),a		;6012
	ret pe			;6015
	ret pe			;6016
	adc a,l			;6017
	ret nc			;6018
	ret nc			;6019
	ld hl,0218dh		;601a
	adc a,l			;601d
	adc a,l			;601e
	ret nc			;601f
	ret p			;6020
	defb 0edh ;next byte illegal after ed	;6021
	add a,b			;6022
	ret nc			;6023
	rst 18h			;6024
	inc b			;6025
	rrca			;6026
	add a,a			;6027
	jp (hl)			;6028
	add a,e			;6029
	jp nc,001d2h		;602a
	rst 38h			;602d
	ld bc,0f003h		;602e
	add a,d			;6031
	dec c			;6032
	ret c			;6033
	inc bc			;6034
	adc a,(hl)		;6035
	add a,l			;6036
	ret c			;6037
	rst 38h			;6038
	djnz l6068h		;6039
	jr c,$+5		;603b
	sbc a,(hl)		;603d
	add a,c			;603e
	jr c,l6041h		;603f
l6041h:
	ex af,af'		;6041
	cpl			;6042
	ex af,af'		;6043
	call p,01000h		;6044
	rst 20h			;6047
	nop			;6048
	ex af,af'		;6049
	jr $-122		;604a
	ld a,a			;604c
	ccf			;604d
	ccf			;604e
	ld a,a			;604f
	inc bc			;6050
	ld l,089h		;6051
	rla			;6053
	rst 38h			;6054
	inc e			;6055
	ld (01c3eh),hl		;6056
	ld (l6666h),hl		;6059
	inc bc			;605c
	ret pe			;605d
	inc bc			;605e
	ccf			;605f
	adc a,d			;6060
	rst 38h			;6061
	ret pe			;6062
	nop			;6063
	rst 38h			;6064
	rst 38h			;6065
	nop			;6066
	rla			;6067
l6068h:
	rla			;6068
	rst 38h			;6069
	nop			;606a
	inc bc			;606b
	rla			;606c
	ld (bc),a		;606d
	nop			;606e
	inc bc			;606f
	ld e,h			;6070
	inc b			;6071
	dec bc			;6072
	sub h			;6073
	rra			;6074
	ret pe			;6075
	ret pe			;6076
	rra			;6077
	inc bc			;6078
	rra			;6079
	dec c			;607a
	rra			;607b
	dec c			;607c
	rra			;607d
	dec c			;607e
	nop			;607f
	ret nz			;6080
	rlca			;6081
	sbc a,a			;6082
	ret m			;6083
	sbc a,a			;6084
	ret m			;6085
	sbc a,a			;6086
	jr nz,l6089h		;6087
l6089h:
	adc a,a			;6089
	add a,e			;608a
	ret nc			;608b
	ret pe			;608c
	ret nc			;608d
	ret pe			;608e
	ret nc			;608f
	ret pe			;6090
	ret nc			;6091
	add a,e			;6092
	ret pe			;6093
	ret nc			;6094
	di			;6095
	ret nc			;6096
	defb 0edh ;next byte illegal after ed	;6097
	rrca			;6098
	inc bc			;6099
	ret pe			;609a
	ld (bc),a		;609b
	ret c			;609c
	adc a,e			;609d
	ret m			;609e
	ret c			;609f
	ret m			;60a0
	xor 0d8h		;60a1
	dec c			;60a3
	ret p			;60a4
	di			;60a5
	inc bc			;60a6
	di			;60a7
	di			;60a8
	inc bc			;60a9
	ret c			;60aa
	ld (bc),a		;60ab
	rrca			;60ac
	add a,(hl)		;60ad
	defb 0edh ;next byte illegal after ed	;60ae
	adc a,l			;60af
	cp 0feh			;60b0
	ret nc			;60b2
	ret nc			;60b3
	inc bc			;60b4
	rrca			;60b5
	sub a			;60b6
	ret nc			;60b7
	add a,b			;60b8
	rst 38h			;60b9
	ret pe			;60ba
	ret pe			;60bb
	adc a,l			;60bc
	rst 38h			;60bd
	ret nc			;60be
	ret c			;60bf
	ret c			;60c0
	ret nc			;60c1
	add a,e			;60c2
	out (080h),a		;60c3
	ret m			;60c5
	add a,b			;60c6
	defb 0fdh,0d0h,0d0h ;illegal sequence	;60c7
	out (030h),a		;60ca
	defb 0fdh,0f8h,003h ;illegal sequence	;60cc
	defb 0fdh,081h,0f0h ;illegal sequence	;60cf
	nop			;60d2
	inc b			;60d3
	jr nz,l60e0h		;60d4
	ret pe			;60d6
	inc bc			;60d7
	rst 38h			;60d8
	ld (bc),a		;60d9
	nop			;60da
	inc bc			;60db
	rst 38h			;60dc
	ld (bc),a		;60dd
	nop			;60de
	nop			;60df
l60e0h:
	inc b			;60e0
	ld de,l7581h		;60e1
	ld b,011h		;60e4
	add a,e			;60e6
	ld (hl),l		;60e7
	ld e,(hl)		;60e8
	ld (hl),l		;60e9
	inc b			;60ea
	rla			;60eb
	dec b			;60ec
	push hl			;60ed
	add a,c			;60ee
	rst 30h			;60ef
	nop			;60f0
	inc bc			;60f1
	rst 38h			;60f2
	inc bc			;60f3
	nop			;60f4
	ld (bc),a		;60f5
	rst 38h			;60f6
	nop			;60f7
	dec b			;60f8
	call p,05702h		;60f9
	add a,c			;60fc
	call po,00200h		;60fd
	nop			;6100
	ld b,0ffh		;6101
	nop			;6103
	add a,e			;6104
	call po,05757h		;6105
	dec b			;6108
	rst 28h			;6109
	nop			;610a
	inc bc			;610b
	nop			;610c
	inc bc			;610d
	rst 38h			;610e
	ld (bc),a		;610f
	nop			;6110
	nop			;6111
	add a,c			;6112
	rst 28h			;6113
	inc b			;6114
	ld (hl),h		;6115
	inc bc			;6116
	ld e,(hl)		;6117
	nop			;6118
	ld (bc),a		;6119
	nop			;611a
	inc b			;611b
	rst 38h			;611c
	ld (bc),a		;611d
	nop			;611e
	nop			;611f
	inc b			;6120
	ld c,a			;6121
	inc bc			;6122
	ld (hl),l		;6123
	add a,c			;6124
	ld c,000h		;6125
	ld (bc),a		;6127
	rrca			;6128
	sbc a,a			;6129
	ld a,a			;612a
	rlca			;612b
	jr c,$+119		;612c
	ld (de),a		;612e
	ld (0f0f0h),hl		;612f
	cp 0e0h			;6132
	inc e			;6134
	xor (hl)		;6135
	ld c,b			;6136
	ld b,h			;6137
	ld (07512h),hl		;6138
	jr c,l6144h		;613b
	ld a,a			;613d
	rrca			;613e
	rrca			;613f
	ld b,h			;6140
	ld c,b			;6141
	xor (hl)		;6142
	inc e			;6143
l6144h:
	ret po			;6144
	cp 0f0h			;6145
	ret p			;6147
	add a,b			;6148
	ld b,0ffh		;6149
	inc b			;614b
l614ch:
	add a,b			;614c
	ld (bc),a		;614d
	rst 38h			;614e
	dec bc			;614f
	add a,b			;6150
	nop			;6151
	and b			;6152
	ld (01021h),a		;6153
	djnz $+50		;6156
	jr nz,l614ch		;6158
	pop af			;615a
	ld (01021h),a		;615b
	djnz $+50		;615e
	jr nz,$-12		;6160
	pop af			;6162
	pop af			;6163
	jp p,03020h		;6164
	djnz l6179h		;6167
	ld hl,0f132h		;6169
	jp p,03020h		;616c
	djnz l6181h		;616f
	ld hl,00832h		;6171
	ret pe			;6174
	add a,c			;6175
	adc a,l			;6176
	ld b,0e8h		;6177
l6179h:
	adc a,c			;6179
	adc a,l			;617a
	rst 18h			;617b
	adc a,l			;617c
	adc a,l			;617d
	ret pe			;617e
	ret pe			;617f
	adc a,l			;6180
l6181h:
	adc a,l			;6181
	rst 18h			;6182
	nop			;6183
	adc a,h			;6184
l6185h:
	inc bc			;6185
	rrca			;6186
	cp 043h			;6187
	ld b,c			;6189
	ld b,e			;618a
	cp 0feh			;618b
	ret po			;618d
	ret m			;618e
	call m,003fch		;618f
	dec h			;6192
	sub c			;6193
	cp 037h			;6194
	ld e,b			;6196
	ld e,h			;6197
	ld a,01fh		;6198
	or b			;619a
	add hl,sp		;619b
	ld c,0e0h		;619c
	call m,03e7eh		;619e
	jp z,080cah		;61a1
	cp 000h			;61a4
	and b			;61a6
	jr nz,$+50		;61a7
	pop af			;61a9
	cp 0f3h			;61aa
	jp p,023f1h		;61ac
l61afh:
	jr nz,$+50		;61af
	jr nz,l61c3h		;61b1
	di			;61b3
	jp p,03211h		;61b4
l61b7h:
	jr nz,$-30		;61b7
	jr nc,l61ebh		;61b9
	jr nz,l61afh		;61bb
	pop af			;61bd
	di			;61be
	jr nz,l61f1h		;61bf
	jr nz,l61d3h		;61c1
l61c3h:
	di			;61c3
	jp p,032f1h		;61c4
	nop			;61c7
	sbc a,a			;61c8
	call m,0071ch		;61c9
l61cch:
	inc bc			;61cc
	ld b,c			;61cd
	jr nc,l61ech		;61ce
	ld e,071h		;61d0
	inc e			;61d2
l61d3h:
	rlca			;61d3
	inc bc			;61d4
	ld b,c			;61d5
	jr nc,l61f4h		;61d6
	ld e,03fh		;61d8
	rst 38h			;61da
	ld a,(hl)		;61db
	cp (hl)			;61dc
	call c,sub_74ech	;61dd
	jr c,l61feh		;61e0
	adc a,(hl)		;61e2
	ld b,(hl)		;61e3
	inc bc			;61e4
	ld bc,0038fh		;61e5
	inc bc			;61e8
	nop			;61e9
	ld (bc),a		;61ea
l61ebh:
	inc de			;61eb
l61ech:
	sbc a,h			;61ec
	add a,b			;61ed
	ret m			;61ee
	jr nc,l620fh		;61ef
l61f1h:
	ld (hl),c		;61f1
	inc e			;61f2
	rlca			;61f3
l61f4h:
	ld bc,0b820h		;61f4
	call c,057feh		;61f7
	ld d,l			;61fa
	rst 38h			;61fb
	xor a			;61fc
	xor e			;61fd
l61feh:
	cp 058h			;61fe
	ret po			;6200
	add a,b			;6201
	inc a			;6202
	ld c,003h		;6203
	add a,b			;6205
	ret po			;6206
	ret m			;6207
	cp 005h			;6208
	ld bc,00302h		;620a
	add a,l			;620d
	ld a,a			;620e
l620fh:
	ld h,l			;620f
	ld a,(0ff7fh)		;6210
	inc bc			;6213
	xor c			;6214
	dec b			;6215
	rst 38h			;6216
	inc bc			;6217
	ld a,a			;6218
	adc a,c			;6219
	rst 38h			;621a
	ret m			;621b
	ret po			;621c
	rst 0			;621d
	sbc a,h			;621e
	sbc a,b			;621f
	jr nc,$+50		;6220
	ccf			;6222
	inc bc			;6223
	jp nz,0c485h		;6224
	ret m			;6227
	add a,b			;6228
	ld (hl),b		;6229
	jr c,l622fh		;622a
	jr nc,l61b7h		;622c
	sbc a,b			;622e
l622fh:
	sbc a,h			;622f
	rst 0			;6230
	ret po			;6231
	ret m			;6232
	cp 0f8h			;6233
	ret nz			;6235
	ret m			;6236
	inc b			;6237
	rst 38h			;6238
	or d			;6239
	rlca			;623a
	dec bc			;623b
	sbc a,l			;623c
	jp m,0ff87h		;623d
	rst 18h			;6240
	xor 0f1h		;6241
	ex (sp),hl		;6243
	ld b,(hl)		;6244
	ld l,h			;6245
	add hl,sp		;6246
	inc sp			;6247
	ld h,a			;6248
	ld a,a			;6249
	jp po,0c0feh		;624a
	ret nz			;624d
	ret po			;624e
	ret p			;624f
	call m,sub_70ffh	;6250
	ret m			;6253
	defb 0fdh,0feh,07fh ;illegal sequence	;6254
	ccf			;6257
	rra			;6258
	rrca			;6259
	rst 38h			;625a
	ld bc,00202h		;625b
	inc b			;625e
	jr l62c1h		;625f
	add a,b			;6261
	rra			;6262
	rra			;6263
	ret nz			;6264
	rst 38h			;6265
	ld (hl),b		;6266
	ld (hl),b		;6267
	ld a,(hl)		;6268
	jp p,l7f43h		;6269
	inc bc			;626c
	ld bc,00302h		;626d
	add a,e			;6270
	ld a,a			;6271
	ld bc,003fdh		;6272
	ld bc,00283h		;6275
	cp 0feh			;6278
	inc b			;627a
	ld bc,0ff98h		;627b
	inc bc			;627e
	inc bc			;627f
	ld a,a			;6280
	ld (hl),c		;6281
	xor a			;6282
	and l			;6283
	push hl			;6284
	ld h,l			;6285
	dec (hl)		;6286
	dec e			;6287
	dec c			;6288
	defb 0fdh,0f3h,0ceh ;illegal sequence	;6289
	inc a			;628c
	rrca			;628d
	nop			;628e
	ld a,(hl)		;628f
	cp l			;6290
	rlca			;6291
	ld b,0fch		;6292
	call m,00104h		;6294
	add a,e			;6297
	ld b,d			;6298
	ld a,(hl)		;6299
	ld a,(hl)		;629a
	inc b			;629b
	ld (bc),a		;629c
	add a,c			;629d
	cp 000h			;629e
	add a,c			;62a0
	jr nz,l62bfh		;62a1
	ld (02106h),a		;62a3
	add a,e			;62a6
	pop af			;62a7
	ld hl,00621h		;62a8
	ld (0f205h),a		;62ab
	ld (bc),a		;62ae
	pop af			;62af
	add a,d			;62b0
	jp p,004f1h		;62b1
	jp p,03203h		;62b4
	dec b			;62b7
	jp p,0f385h		;62b8
	jp p,0f2f1h		;62bb
	di			;62be
l62bfh:
	inc bc			;62bf
	cpl			;62c0
l62c1h:
	add a,l			;62c1
	pop af			;62c2
	jp p,0f1f2h		;62c3
	ld (de),a		;62c6
	inc c			;62c7
	pop af			;62c8
	ld (bc),a		;62c9
	jp p,0f302h		;62ca
	inc bc			;62cd
	jp p,0f105h		;62ce
	add a,h			;62d1
	ld hl,0f332h		;62d2
	jp p,0f107h		;62d5
	add a,c			;62d8
	jp p,0f10fh		;62d9
	dec b			;62dc
	jp p,0f105h		;62dd
	add a,c			;62e0
	ld (de),a		;62e1
	ex af,af'		;62e2
	pop af			;62e3
	dec b			;62e4
	jp p,0f381h		;62e5
	ld b,0f2h		;62e8
	add a,d			;62ea
	ld hl,00332h		;62eb
	pop af			;62ee
	ld (bc),a		;62ef
	jp p,0f104h		;62f0
	adc a,d			;62f3
	di			;62f4
	jp p,02ff1h		;62f5
	cpl			;62f8
	ld hl,03232h		;62f9
	ld hl,0042fh		;62fc
	pop af			;62ff
	add a,d			;6300
	di			;6301
	jp p,0f103h		;6302
	ld (bc),a		;6305
	cpl			;6306
	ld (bc),a		;6307
	pop af			;6308
	ld b,0f2h		;6309
	sub l			;630b
	ld hl,02131h		;630c
	ld hl,0f3f2h		;630f
	di			;6312
	ld hl,03221h		;6313
	di			;6316
	inc de			;6317
	ld (0212fh),a		;6318
	cpl			;631b
	pop af			;631c
	jp p,0f3f3h		;631d
	jp p,0f103h		;6320
	nop			;6323
	ld (bc),a		;6324
	ld d,l			;6325
	add a,c			;6326
	rst 38h			;6327
	inc bc			;6328
	nop			;6329
	ld (bc),a		;632a
	xor d			;632b
	add a,l			;632c
	inc a			;632d
	rst 38h			;632e
	inc a			;632f
	inc a			;6330
	rst 38h			;6331
	ld (de),a		;6332
	inc a			;6333
	add a,h			;6334
	cp l			;6335
	inc a			;6336
	inc a			;6337
	cp l			;6338
	add hl,bc		;6339
	inc a			;633a
	add a,l			;633b
	cp l			;633c
	inc a			;633d
	inc a			;633e
	rst 38h			;633f
l6340h:
	inc a			;6340
	inc b			;6341
	nop			;6342
	ld (bc),a		;6343
	add a,c			;6344
	add a,(hl)		;6345
	rst 38h			;6346
	nop			;6347
	nop			;6348
	ld h,(hl)		;6349
	ld h,(hl)		;634a
	nop			;634b
	inc bc			;634c
	jp 00002h		;634d
	ld (bc),a		;6350
	ld b,d			;6351
	ld (bc),a		;6352
	nop			;6353
	ld (bc),a		;6354
	inc a			;6355
	add a,d			;6356
	ld d,l			;6357
	rst 38h			;6358
	inc bc			;6359
	add a,b			;635a
	sub (hl)		;635b
	rra			;635c
	rlca			;635d
	ld bc,l7effh		;635e
	jr l63c9h		;6361
l6363h:
	rst 20h			;6363
	nop			;6364
	ld a,(hl)		;6365
	ld a,(hl)		;6366
	sub e			;6367
	sub e			;6368
	rst 38h			;6369
	nop			;636a
	nop			;636b
	rst 38h			;636c
	sub e			;636d
	sub e			;636e
	ld hl,(0152ah)		;636f
	inc bc			;6372
	ld a,002h		;6373
	ld hl,01806h		;6375
	add a,l			;6378
	rst 38h			;6379
	jr l63beh		;637a
	ld l,(hl)		;637c
	djnz l6383h		;637d
	rst 10h			;637f
	add a,l			;6380
	djnz l6340h		;6381
l6383h:
	add a,c			;6383
	rst 38h			;6384
	rst 38h			;6385
	inc bc			;6386
	nop			;6387
	add a,d			;6388
	rst 38h			;6389
	cp l			;638a
	ld d,0a5h		;638b
	adc a,h			;638d
	cp l			;638e
	rst 38h			;638f
	ld d,h			;6390
	ld d,l			;6391
	ld bc,0fd01h		;6392
	ld bc,00001h		;6395
	rst 20h			;6398
	rst 20h			;6399
	inc bc			;639a
	inc a			;639b
	and l			;639c
	rst 38h			;639d
	nop			;639e
	nop			;639f
	in a,(0dbh)		;63a0
	nop			;63a2
	ld a,(hl)		;63a3
	ld a,(hl)		;63a4
	nop			;63a5
	rst 38h			;63a6
	ld bc,01f2bh		;63a7
	rrca			;63aa
	ld e,00eh		;63ab
	ld bc,00007h		;63ad
	ld a,a			;63b0
	add a,b			;63b1
	ccf			;63b2
	ld (hl),l		;63b3
	ld (hl),l		;63b4
	ld d,l			;63b5
	ld (hl),l		;63b6
	ld a,a			;63b7
	ld h,b			;63b8
	ld a,a			;63b9
	ld h,b			;63ba
	ld a,a			;63bb
	ld (hl),l		;63bc
	ld e,a			;63bd
l63beh:
	ld (hl),l		;63be
	rst 38h			;63bf
	ld d,l			;63c0
	ld d,l			;63c1
	inc bc			;63c2
	rst 38h			;63c3
	ld (bc),a		;63c4
l63c5h:
	nop			;63c5
	ld (bc),a		;63c6
	rst 38h			;63c7
	ld (bc),a		;63c8
l63c9h:
	nop			;63c9
	add a,(hl)		;63ca
	rst 38h			;63cb
	nop			;63cc
	rst 38h			;63cd
	rst 38h			;63ce
	djnz $-39		;63cf
	inc bc			;63d1
	djnz l6363h		;63d2
	jr z,l63c5h		;63d4
	rst 28h			;63d6
	rst 38h			;63d7
	nop			;63d8
	rst 38h			;63d9
	rst 38h			;63da
	nop			;63db
	nop			;63dc
	ld a,(hl)		;63dd
	cp l			;63de
	jp pe,0ffaah		;63df
	rst 38h			;63e2
	inc bc			;63e3
	ld d,l			;63e4
	add a,l			;63e5
	rst 38h			;63e6
	nop			;63e7
	nop			;63e8
	rst 38h			;63e9
	rst 38h			;63ea
	inc bc			;63eb
	ld d,l			;63ec
	ld (bc),a		;63ed
	rst 38h			;63ee
	ld b,000h		;63ef
	ld (bc),a		;63f1
	rst 38h			;63f2
	ld (bc),a		;63f3
	xor d			;63f4
	ld (bc),a		;63f5
	nop			;63f6
	ld (bc),a		;63f7
	xor d			;63f8
	ld (bc),a		;63f9
	rst 38h			;63fa
	ld (bc),a		;63fb
	xor d			;63fc
	ld (bc),a		;63fd
	nop			;63fe
	ld (bc),a		;63ff
	xor d			;6400
	adc a,c			;6401
	rst 38h			;6402
	inc e			;6403
	ld a,063h		;6404
	pop bc			;6406
	add a,b			;6407
	ld a,07fh		;6408
	ld a,(hl)		;640a
	ex af,af'		;640b
	ld e,b			;640c
	adc a,h			;640d
	rst 38h			;640e
	ld (hl),049h		;640f
	adc a,b			;6411
	ex af,af'		;6412
	inc e			;6413
	inc e			;6414
	ld c,c			;6415
	rst 38h			;6416
	nop			;6417
	nop			;6418
	rst 38h			;6419
	inc b			;641a
	ld de,04283h		;641b
	add a,c			;641e
	rst 38h			;641f
	inc bc			;6420
	nop			;6421
	add a,a			;6422
	ld a,(hl)		;6423
	cp l			;6424
	xor d			;6425
	xor d			;6426
	add a,b			;6427
	add a,c			;6428
	add a,c			;6429
	inc bc			;642a
	ld b,c			;642b
	adc a,d			;642c
	nop			;642d
	rra			;642e
	nop			;642f
	ccf			;6430
	ccf			;6431
	rrca			;6432
	ld a,022h		;6433
	cp 055h			;6435
	ld b,001h		;6437
	adc a,b			;6439
	nop			;643a
	rst 38h			;643b
	ex af,af'		;643c
	rst 30h			;643d
	ld d,l			;643e
	ld d,l			;643f
	rst 38h			;6440
	ld d,l			;6441
	inc b			;6442
	dec d			;6443
	ld (bc),a		;6444
	sub l			;6445
	ld (bc),a		;6446
	add a,b			;6447
	add a,d			;6448
	ld d,l			;6449
	rst 38h			;644a
	inc bc			;644b
	nop			;644c
	sub l			;644d
	rst 38h			;644e
	ld d,l			;644f
	ld d,l			;6450
	jp 0ffc3h		;6451
	jp 0ffc3h		;6454
	rst 38h			;6457
	jp 025a5h		;6458
	push bc			;645b
	add hl,bc		;645c
	di			;645d
	rlca			;645e
	call m,055ffh		;645f
	rst 38h			;6462
	inc bc			;6463
	ld bc,0f883h		;6464
	ret po			;6467
	add a,b			;6468
	inc bc			;6469
	ld de,0ff02h		;646a
	ld (bc),a		;646d
	nop			;646e
	ld b,0ffh		;646f
	add a,e			;6471
	jp 0c3ffh		;6472
	inc bc			;6475
	ld a,a			;6476
	add a,d			;6477
	rst 38h			;6478
	ld a,a			;6479
	inc bc			;647a
	rst 38h			;647b
	add a,l			;647c
	set 7,a			;647d
	adc a,(hl)		;647f
	cp a			;6480
	cp a			;6481
	inc bc			;6482
	rst 38h			;6483
	adc a,e			;6484
	rst 30h			;6485
	rst 38h			;6486
	rst 30h			;6487
	rst 30h			;6488
	djnz $+1		;6489
	ret m			;648b
	ld hl,(0ff4bh)		;648c
	add a,h			;648f
	inc bc			;6490
	cp l			;6491
	add a,e			;6492
	defb 0fdh,0ffh,0fdh ;illegal sequence	;6493
	inc bc			;6496
	cp l			;6497
	add a,a			;6498
	add a,h			;6499
	rst 38h			;649a
	ex de,hl		;649b
	ex af,af'		;649c
	ld (bc),a		;649d
	nop			;649e
	rst 28h			;649f
	inc bc			;64a0
	ex af,af'		;64a1
	inc bc			;64a2
	nop			;64a3
	add a,(hl)		;64a4
	inc h			;64a5
	nop			;64a6
	inc h			;64a7
	inc h			;64a8
	nop			;64a9
	inc h			;64aa
	inc bc			;64ab
	nop			;64ac
	inc b			;64ad
	ld e,d			;64ae
	ld (bc),a		;64af
	nop			;64b0
	ex af,af'		;64b1
	ld a,(hl)		;64b2
	ex af,af'		;64b3
	ld c,c			;64b4
	add a,c			;64b5
	nop			;64b6
	rlca			;64b7
	ld e,b			;64b8
	ex af,af'		;64b9
	add a,c			;64ba
	ex af,af'		;64bb
	add a,b			;64bc
	add a,h			;64bd
	ld bc,0015dh		;64be
	defb 0fdh,004h,081h ;illegal sequence	;64c1
	add a,e			;64c4
	nop			;64c5
	inc (hl)		;64c6
	nop			;64c7
	dec b			;64c8
	ld a,(hl)		;64c9
	add a,h			;64ca
	nop			;64cb
	rst 10h			;64cc
	nop			;64cd
	nop			;64ce
	inc b			;64cf
	ld a,a			;64d0
	ld (bc),a		;64d1
	ld b,b			;64d2
	add a,c			;64d3
	add a,b			;64d4
	dec b			;64d5
	ld a,(hl)		;64d6
	ld (bc),a		;64d7
	ld (bc),a		;64d8
	ld (bc),a		;64d9
	cp 004h			;64da
	add a,c			;64dc
	add a,e			;64dd
	rst 38h			;64de
	nop			;64df
	rst 38h			;64e0
	dec b			;64e1
	add a,b			;64e2
	ld (bc),a		;64e3
	ld b,b			;64e4
	adc a,b			;64e5
	add a,b			;64e6
	ld a,(hl)		;64e7
	nop			;64e8
	nop			;64e9
	rst 38h			;64ea
	ld a,(hl)		;64eb
	ld (bc),a		;64ec
	ld (bc),a		;64ed
	inc bc			;64ee
	cp 095h			;64ef
	nop			;64f1
	cp 081h			;64f2
	rst 38h			;64f4
	nop			;64f5
	rst 38h			;64f6
	add a,b			;64f7
	rst 38h			;64f8
	nop			;64f9
	rst 38h			;64fa
	add a,b			;64fb
	nop			;64fc
	inc a			;64fd
	ld a,(hl)		;64fe
	nop			;64ff
	inc a			;6500
	ld a,(hl)		;6501
	nop			;6502
	inc a			;6503
	ld b,d			;6504
	inc a			;6505
	inc bc			;6506
	ld a,(hl)		;6507
	and h			;6508
	ld b,d			;6509
	inc a			;650a
	ld a,(hl)		;650b
	ld bc,0015dh		;650c
	pop bc			;650f
	nop			;6510
	rst 18h			;6511
	add a,c			;6512
	nop			;6513
	nop			;6514
	ld (hl),h		;6515
	nop			;6516
	ld b,000h		;6517
	ld b,07ah		;6519
	nop			;651b
	nop			;651c
	rst 38h			;651d
	add a,c			;651e
	add a,c			;651f
	rst 38h			;6520
	nop			;6521
	add a,b			;6522
	add a,b			;6523
	ld h,c			;6524
	jp 0c301h		;6525
	ld bc,001c3h		;6528
	jp 00706h		;652b
	inc a			;652e
	sub h			;652f
	ld bc,00181h		;6530
	add a,c			;6533
	ld bc,08101h		;6534
	add a,c			;6537
	nop			;6538
	ld a,(hl)		;6539
	nop			;653a
	ld a,(hl)		;653b
	nop			;653c
	nop			;653d
	ld a,(hl)		;653e
	ld a,(hl)		;653f
	call m,08181h		;6540
	defb 0fdh,005h,081h ;illegal sequence	;6543
	ld (bc),a		;6546
	cp a			;6547
	dec b			;6548
	ld a,(hl)		;6549
	add a,h			;654a
	push af			;654b
	add a,b			;654c
	add a,b			;654d
	rst 38h			;654e
	inc b			;654f
	add a,b			;6550
	sub l			;6551
	nop			;6552
	ld a,(hl)		;6553
	nop			;6554
	ld a,(hl)		;6555
	ld a,(hl)		;6556
	ld b,d			;6557
	inc a			;6558
	ld a,(hl)		;6559
	rrca			;655a
	rlca			;655b
	rlca			;655c
	inc bc			;655d
	ld b,00eh		;655e
	ld c,0ceh		;6560
	add a,b			;6562
	ret nz			;6563
	ret po			;6564
	ret po			;6565
	call pe,0ee04h		;6566
	add a,a			;6569
	and 0e0h		;656a
	ret po			;656c
	ret p			;656d
	ret po			;656e
	ret nz			;656f
	add a,b			;6570
	inc b			;6571
	and l			;6572
	sbc a,h			;6573
	xor l			;6574
	cp a			;6575
	cp a			;6576
	rst 38h			;6577
	ret nz			;6578
	ld a,a			;6579
	rst 38h			;657a
	nop			;657b
	xor 06eh		;657c
	ld b,000h		;657e
	ret nz			;6580
	ret po			;6581
	ret po			;6582
	ret m			;6583
	call m,0fffeh		;6584
	nop			;6587
	nop			;6588
	ld b,00eh		;6589
	ccf			;658b
	ccf			;658c
	ld a,a			;658d
	rst 38h			;658e
	nop			;658f
	nop			;6590
	add a,d			;6591
	jp p,003f1h		;6592
	ld hl,01f02h		;6595
	inc bc			;6598
	cpl			;6599
	and l			;659a
	ld hl,02f2fh		;659b
	ld hl,0211fh		;659e
	cpl			;65a1
	ld sp,03132h		;65a2
	cpl			;65a5
	ld sp,02132h		;65a6
	jr nz,$+35		;65a9
	cpl			;65ab
	ld sp,0323fh		;65ac
	ccf			;65af
	ld (0ef31h),a		;65b0
	ld (0efe1h),a		;65b3
	ex (sp),hl		;65b6
	ld sp,0e33fh		;65b7
	ld sp,02f21h		;65ba
	ld (02121h),a		;65bd
	ld b,0f3h		;65c0
	add a,c			;65c2
	ld (03f03h),a		;65c3
	ld (bc),a		;65c6
	ld (0f202h),a		;65c7
	add a,d			;65ca
	ld (003f2h),a		;65cb
	ld (de),a		;65ce
	add a,c			;65cf
	ld (0f203h),a		;65d0
	add a,c			;65d3
	ld sp,0f103h		;65d4
	inc bc			;65d7
	ld hl,0f204h		;65d8
	inc bc			;65db
	ld (0f202h),a		;65dc
	add a,(hl)		;65df
	ld sp,0f2f1h		;65e0
	pop af			;65e3
	ld (00332h),a		;65e4
	pop af			;65e7
	add a,a			;65e8
	jp p,02131h		;65e9
	pop af			;65ec
	ld sp,02131h		;65ed
	inc bc			;65f0
	pop af			;65f1
	add a,h			;65f2
	ld (de),a		;65f3
	inc hl			;65f4
	ld (de),a		;65f5
	ld (de),a		;65f6
	dec b			;65f7
	pop af			;65f8
	ld (bc),a		;65f9
	ld sp,02181h		;65fa
	ld b,01fh		;65fd
	ld (bc),a		;65ff
	ld (0f105h),a		;6600
	add a,h			;6603
	jp p,0f2f1h		;6604
	jp p,0f30ch		;6607
	ld (bc),a		;660a
	jp p,0f182h		;660b
	jp p,0f103h		;660e
	adc a,h			;6611
	ld sp,03121h		;6612
	ccf			;6615
	ld sp,03f31h		;6616
	ld (0f232h),a		;6619
	ld hl,00313h		;661c
	rra			;661f
	ld (bc),a		;6620
	ld (0f202h),a		;6621
	add a,c			;6624
	ld sp,0f103h		;6625
	add a,c			;6628
	jp p,02105h		;6629
	inc bc			;662c
	pop af			;662d
	ld (bc),a		;662e
	ld (0f20fh),a		;662f
	inc bc			;6632
	pop af			;6633
	ld (bc),a		;6634
	ld hl,01f02h		;6635
	ld (bc),a		;6638
	ld (0f105h),a		;6639
	add a,l			;663c
	ld hl,03232h		;663d
	ld hl,0032fh		;6640
	pop af			;6643
	inc bc			;6644
	inc hl			;6645
	ld (bc),a		;6646
	ld (de),a		;6647
	ld (bc),a		;6648
	di			;6649
	add a,d			;664a
	ld hl,004f2h		;664b
	pop af			;664e
	add a,c			;664f
	ld (de),a		;6650
	inc bc			;6651
	pop af			;6652
	ld (bc),a		;6653
	inc hl			;6654
	ld (bc),a		;6655
	pop af			;6656
	add a,e			;6657
	ld (de),a		;6658
	pop af			;6659
	pop af			;665a
	ex af,af'		;665b
	xor (hl)		;665c
	ld (bc),a		;665d
	ld l,d			;665e
	inc b			;665f
	xor (hl)		;6660
	ld (bc),a		;6661
	ld l,d			;6662
	ld (bc),a		;6663
	ld b,004h		;6664
l6666h:
	ld l,d			;6666
	ld (bc),a		;6667
	ld b,085h		;6668
	jp p,0f1f1h		;666a
	jp p,00cf2h		;666d
	ld (0f202h),a		;6670
	ld (bc),a		;6673
	di			;6674
	add a,l			;6675
	jp p,0f23fh		;6676
	ld (00332h),a		;6679
	pop af			;667c
	add a,c			;667d
	jp p,01304h		;667e
	inc bc			;6681
	ld hl,0f302h		;6682
	add a,a			;6685
	ld hl,01f32h		;6686
	rra			;6689
	di			;668a
	di			;668b
	jp p,0f103h		;668c
	ld (bc),a		;668f
	ld hl,0f102h		;6690
	adc a,d			;6693
	ld hl,0f1f1h		;6694
	di			;6697
	ld (03f31h),a		;6698
	ccf			;669b
	ld (00331h),a		;669c
	ccf			;669f
	ld (bc),a		;66a0
	jp p,0f381h		;66a1
	inc b			;66a4
	jp p,0f121h		;66a5
	inc bc			;66a8
	ld hl,0f205h		;66a9
	ld (bc),a		;66ac
	pop af			;66ad
	ld (bc),a		;66ae
	ld (0f102h),a		;66af
	cpl			;66b2
	inc b			;66b3
	inc bc			;66b4
	ld d,b			;66b5
	add hl,bc		;66b6
	ld b,b			;66b7
	add a,c			;66b8
	ld d,b			;66b9
	ld b,040h		;66ba
	add a,c			;66bc
	ld d,b			;66bd
	ld c,040h		;66be
	adc a,(hl)		;66c0
	ld d,h			;66c1
	ld d,b			;66c2
	ld d,b			;66c3
	ld b,b			;66c4
	ld d,b			;66c5
	ld d,h			;66c6
	ld b,b			;66c7
	ld b,b			;66c8
	ld d,h			;66c9
	nop			;66ca
	ld d,h			;66cb
	nop			;66cc
	ld d,h			;66cd
	nop			;66ce
	ld de,00354h		;66cf
	ld d,b			;66d2
	dec b			;66d3
	ld d,h			;66d4
	inc bc			;66d5
	ld b,b			;66d6
	add a,c			;66d7
	ld d,b			;66d8
	rlca			;66d9
	ld b,b			;66da
	dec b			;66db
	ld b,l			;66dc
	add a,d			;66dd
	ld b,b			;66de
	dec b			;66df
	rlca			;66e0
	ld b,b			;66e1
	ld (bc),a		;66e2
	dec b			;66e3
	add a,c			;66e4
	ld b,b			;66e5
	inc b			;66e6
l66e7h:
	ld d,h			;66e7
	inc bc			;66e8
	dec b			;66e9
	dec b			;66ea
	ld d,h			;66eb
	add a,d			;66ec
	ld b,b			;66ed
	dec b			;66ee
	inc bc			;66ef
	ld b,b			;66f0
	ld (bc),a		;66f1
	dec b			;66f2
	ld (bc),a		;66f3
	ld b,b			;66f4
	ld (bc),a		;66f5
	dec b			;66f6
	add a,c			;66f7
	ld b,b			;66f8
	inc bc			;66f9
	dec b			;66fa
	add a,c			;66fb
	ld d,h			;66fc
	inc bc			;66fd
	dec b			;66fe
	add a,c			;66ff
	ld d,h			;6700
	inc bc			;6701
	dec b			;6702
	add a,a			;6703
	ld d,h			;6704
	ld b,b			;6705
	ld b,b			;6706
	ld d,h			;6707
	ld b,b			;6708
	ld b,b			;6709
	ld d,h			;670a
	inc bc			;670b
	ld b,b			;670c
	add a,c			;670d
	ld d,b			;670e
	dec b			;670f
	ld b,b			;6710
	add a,c			;6711
	ld d,h			;6712
	dec b			;6713
	ld d,b			;6714
	ld (bc),a		;6715
	ld d,h			;6716
	inc b			;6717
	ld b,b			;6718
	ld (bc),a		;6719
	ld d,b			;671a
	add a,c			;671b
	ld d,h			;671c
	ex af,af'		;671d
	ld b,b			;671e
	ld (bc),a		;671f
	ld d,h			;6720
	sbc a,b			;6721
	ld d,b			;6722
	ld d,h			;6723
	ld b,b			;6724
	ld d,h			;6725
	ld b,b			;6726
	ld d,h			;6727
	ld b,b			;6728
	ld d,h			;6729
	ld d,b			;672a
	ld d,h			;672b
	nop			;672c
	ld d,h			;672d
	nop			;672e
	ld d,h			;672f
	nop			;6730
	ld d,h			;6731
	ld d,b			;6732
	ld d,h			;6733
	ld d,b			;6734
	ld d,h			;6735
	ld d,b			;6736
	ld d,b			;6737
	ld d,h			;6738
	ld d,h			;6739
	dec bc			;673a
	ld b,b			;673b
	dec b			;673c
	ld d,h			;673d
	inc bc			;673e
	inc b			;673f
	add a,c			;6740
	ld d,b			;6741
l6742h:
	rlca			;6742
	ld b,b			;6743
	dec b			;6744
	ld d,h			;6745
	inc bc			;6746
	ld b,b			;6747
	add a,c			;6748
	ld d,b			;6749
	inc bc			;674a
	ld b,b			;674b
	add a,a			;674c
	ld d,h			;674d
	jr nc,l6770h		;674e
	djnz l6742h		;6750
	djnz l6774h		;6752
	inc bc			;6754
	jr nc,l66e7h		;6755
	jr nz,l6769h		;6757
	ret p			;6759
	djnz $+34		;675a
	jr nc,$+51		;675c
	cpl			;675e
	jr nz,$+18		;675f
	ret p			;6761
	jr nc,l6784h		;6762
	djnz $-14		;6764
	di			;6766
	ex af,af'		;6767
	inc bc			;6768
l6769h:
	add a,c			;6769
	jr nz,$+5		;676a
	rra			;676c
l676dh:
	sub e			;676d
	jr nz,l67a0h		;676e
l6770h:
	jr nc,l6792h		;6770
	jr nz,l6784h		;6772
l6774h:
	ret p			;6774
	jr nc,$+34		;6775
	rra			;6777
	rra			;6778
	jr nz,l679bh		;6779
	djnz l676dh		;677b
	jr nc,l679fh		;677d
	rra			;677f
	rra			;6780
	nop			;6781
	ld (bc),a		;6782
	rst 38h			;6783
l6784h:
	ld (bc),a		;6784
	inc de			;6785
	add a,e			;6786
	nop			;6787
	ld a,a			;6788
	rlca			;6789
	inc b			;678a
	nop			;678b
l678ch:
	adc a,(hl)		;678c
	ld bc,00703h		;678d
	rrca			;6790
	rrca			;6791
l6792h:
	nop			;6792
	djnz l67cdh		;6793
	ld (hl),e		;6795
	and 0cch		;6796
	sbc a,b			;6798
	jr nc,l67bah		;6799
l679bh:
	inc bc			;679b
	ccf			;679c
	inc b			;679d
	ld a,a			;679e
l679fh:
	add a,c			;679f
l67a0h:
	sbc a,h			;67a0
	inc bc			;67a1
	nop			;67a2
	inc bc			;67a3
	add a,b			;67a4
	inc bc			;67a5
	nop			;67a6
	inc bc			;67a7
	add a,b			;67a8
	add a,e			;67a9
	add a,c			;67aa
	add a,e			;67ab
	ld a,b			;67ac
	inc bc			;67ad
	ld d,h			;67ae
	add a,l			;67af
	nop			;67b0
	ret nz			;67b1
	nop			;67b2
	ret p			;67b3
	nop			;67b4
	inc b			;67b5
	ld a,a			;67b6
l67b7h:
	inc bc			;67b7
	ccf			;67b8
	add a,c			;67b9
l67bah:
	rra			;67ba
	inc bc			;67bb
	ld bc,08192h		;67bc
	jp 0f0e3h		;67bf
	add hl,bc		;67c2
	rra			;67c3
	rra			;67c4
	rrca			;67c5
	rlca			;67c6
	inc bc			;67c7
	nop			;67c8
	ld a,a			;67c9
	ccf			;67ca
	rra			;67cb
	rrca			;67cc
l67cdh:
	rlca			;67cd
	inc bc			;67ce
	ld bc,00003h		;67cf
	adc a,c			;67d2
	rra			;67d3
	rrca			;67d4
	rlca			;67d5
	inc bc			;67d6
	ld bc,00703h		;67d7
	rst 38h			;67da
	ccf			;67db
	inc bc			;67dc
	ld a,a			;67dd
	add a,h			;67de
	ld bc,00181h		;67df
	ld bc,00004h		;67e2
	add a,h			;67e5
	inc bc			;67e6
	rlca			;67e7
	rrca			;67e8
	rra			;67e9
	dec b			;67ea
	ld bc,00384h		;67eb
	rlca			;67ee
	rst 38h			;67ef
	nop			;67f0
	inc b			;67f1
	ld bc,0038bh		;67f2
	rlca			;67f5
	rst 38h			;67f6
	nop			;67f7
	rlca			;67f8
	ccf			;67f9
	rlca			;67fa
l67fbh:
	rra			;67fb
	ccf			;67fc
	ld a,a			;67fd
	ld b,e			;67fe
	nop			;67ff
	ld (bc),a		;6800
	rra			;6801
	add a,e			;6802
	ld hl,0f1f1h		;6803
l6806h:
	ex af,af'		;6806
	djnz $-120		;6807
	jr nz,l67fbh		;6809
	djnz $+18		;680b
	jr nc,$+50		;680d
	inc bc			;680f
	jr nz,$+5		;6810
	djnz $-120		;6812
	jr nz,l6806h		;6814
l6816h:
	djnz l6838h		;6816
	ret p			;6818
	djnz $+7		;6819
	ret p			;681b
	ld b,010h		;681c
	adc a,b			;681e
	jr nz,l6851h		;681f
	jr nc,$+34		;6821
	djnz l6816h		;6823
	jr nz,$+33		;6825
	rlca			;6827
	ret p			;6828
	add a,a			;6829
	djnz l684ch		;682a
	ret p			;682c
	djnz l684fh		;682d
	ret p			;682f
	djnz $+5		;6830
	jr nz,l6837h		;6832
	djnz l67b7h		;6834
	pop af			;6836
l6837h:
	rlca			;6837
l6838h:
	ld hl,0100eh		;6838
	ld b,020h		;683b
	ld (bc),a		;683d
	ld hl,03204h		;683e
	dec de			;6841
	jr nz,l6849h		;6842
	ld (09800h),a		;6844
	exx			;6847
	adc a,c			;6848
l6849h:
	sub c			;6849
	sub e			;684a
	and e			;684b
l684ch:
	and a			;684c
	and a			;684d
	ld h,a			;684e
l684fh:
	ld (bc),a		;684f
	add a,d			;6850
l6851h:
	inc a			;6851
	sbc a,(hl)		;6852
	rst 8			;6853
	rst 20h			;6854
	di			;6855
	jr l68bbh		;6856
	inc sp			;6858
	ld sp,l7819h		;6859
	sbc a,a			;685c
	ret po			;685d
	ld a,a			;685e
	nop			;685f
	add a,e			;6860
	inc bc			;6861
	di			;6862
	di			;6863
	inc bc			;6864
	jp p,0f103h		;6865
	add a,c			;6868
	jp p,03105h		;6869
	add a,(hl)		;686c
	ld (0f3f2h),a		;686d
	di			;6870
	jp p,00331h		;6871
	ld (08800h),a		;6874
	ret p			;6877
	rrca			;6878
	rra			;6879
	ld h,b			;687a
	ld a,a			;687b
	ld h,c			;687c
	ret nz			;687d
	sbc a,000h		;687e
	ld (bc),a		;6880
	ld (02181h),a		;6881
	inc bc			;6884
	pop af			;6885
	add a,d			;6886
	jp p,00021h		;6887
	add a,c			;688a
	rrca			;688b
	inc bc			;688c
	ret p			;688d
	add a,h			;688e
	inc bc			;688f
	ld sp,hl		;6890
	add a,e			;6891
	add a,e			;6892
	nop			;6893
	ld (bc),a		;6894
	ld (02181h),a		;6895
	inc bc			;6898
	rra			;6899
	add a,d			;689a
	jp p,000f1h		;689b
	adc a,b			;689e
	jp 0380ch		;689f
	ret po			;68a2
	rlca			;68a3
	ret p			;68a4
	rrca			;68a5
	ret po			;68a6
	nop			;68a7
	add a,c			;68a8
	jp p,0f103h		;68a9
	add a,h			;68ac
	ld sp,0f1f1h		;68ad
	jp p,0a000h		;68b0
	inc a			;68b3
	rrca			;68b4
	rlca			;68b5
	inc bc			;68b6
	rrca			;68b7
	rlca			;68b8
	inc bc			;68b9
	rlca			;68ba
l68bbh:
	inc bc			;68bb
	ld bc,00701h		;68bc
	ex (sp),hl		;68bf
	ld e,01eh		;68c0
	ret po			;68c2
	inc a			;68c3
	ret p			;68c4
	ret po			;68c5
	ret nz			;68c6
	ret p			;68c7
	ret po			;68c8
	ret nz			;68c9
	ret po			;68ca
	ret nz			;68cb
	add a,b			;68cc
	add a,b			;68cd
	ret po			;68ce
	rst 0			;68cf
	ld a,b			;68d0
	ld a,b			;68d1
	rlca			;68d2
	nop			;68d3
	ld (bc),a		;68d4
	ret po			;68d5
	sbc a,(hl)		;68d6
	ret nc			;68d7
	ld h,b			;68d8
	ret po			;68d9
	ret nc			;68da
	ld h,b			;68db
	ret po			;68dc
	ret nc			;68dd
	ld h,b			;68de
	jr nc,$+34		;68df
l68e1h:
	pop af			;68e1
	di			;68e2
	ld (0e032h),a		;68e3
	ret po			;68e6
	ret nc			;68e7
	ld h,b			;68e8
	ret po			;68e9
	ret nc			;68ea
	ld h,b			;68eb
	ret po			;68ec
	ret nc			;68ed
	ld h,b			;68ee
	jr nc,l6911h		;68ef
	pop af			;68f1
	di			;68f2
	ld (00032h),a		;68f3
	ld (bc),a		;68f6
	rlca			;68f7
	add a,c			;68f8
l68f9h:
	rra			;68f9
	inc bc			;68fa
	rlca			;68fb
	ld (bc),a		;68fc
	ret m			;68fd
	nop			;68fe
	add a,c			;68ff
	ld hl,03203h		;6900
	add a,h			;6903
	ld hl,01313h		;6904
	pop af			;6907
	nop			;6908
	adc a,b			;6909
	rst 38h			;690a
	inc sp			;690b
	inc hl			;690c
	ex (sp),hl		;690d
	ex af,af'		;690e
	sbc a,b			;690f
	ccf			;6910
l6911h:
	jr l6913h		;6911
l6913h:
	adc a,b			;6913
	pop af			;6914
	jp p,021f2h		;6915
	jp p,0f3f1h		;6918
	jp p,08b00h		;691b
	jr l6951h		;691e
	sbc a,h			;6920
	add hl,sp		;6921
	ld h,e			;6922
	rst 8			;6923
	ld a,0f0h		;6924
	rra			;6926
	rra			;6927
	ret p			;6928
	dec b			;6929
	rrca			;692a
	add a,c			;692b
	ld h,b			;692c
	inc bc			;692d
	ret p			;692e
	adc a,b			;692f
	ret po			;6930
	ret nz			;6931
	cp b			;6932
	ld a,h			;6933
	ld (l6e77h),a		;6934
	ld l,l			;6937
	inc bc			;6938
	ld l,e			;6939
	add a,c			;693a
	jr $+6			;693b
	cp 08ch			;693d
	call m,0e0f8h		;693f
	ret nz			;6942
	pop af			;6943
	rrca			;6944
	ld a,b			;6945
	rrca			;6946
	ret po			;6947
	inc a			;6948
	rra			;6949
	rrca			;694a
	nop			;694b
	add a,d			;694c
	pop af			;694d
	jp p,03103h		;694e
l6951h:
	inc b			;6951
	ld (02189h),a		;6952
	pop af			;6955
	pop af			;6956
	ld (de),a		;6957
	inc hl			;6958
	ccf			;6959
	pop af			;695a
	jr nz,l697dh		;695b
	inc b			;695d
	jr nc,l68e1h		;695e
	jr nz,$+5		;6960
	jr nc,$+4		;6962
	ld (03187h),a		;6964
	ld hl,0f12fh		;6967
	jr nc,l698ch		;696a
	jr nz,$+6		;696c
l696eh:
	djnz l68f9h		;696e
	ret p			;6970
	ld hl,03231h		;6971
	ld hl,0f1f1h		;6974
	jp p,000f3h		;6977
	adc a,b			;697a
	ex (sp),hl		;697b
	ret p			;697c
l697dh:
	inc bc			;697d
	ld a,h			;697e
	ld a,09ch		;697f
	ret nz			;6981
	ld a,a			;6982
	nop			;6983
	add a,h			;6984
	ld hl,0f331h		;6985
	ld (02103h),a		;6988
	add a,c			;698b
l698ch:
	pop af			;698c
	nop			;698d
	adc a,e			;698e
	ld c,080h		;698f
	ld h,b			;6991
	inc e			;6992
	add a,a			;6993
	ld a,h			;6994
	rlca			;6995
	ret p			;6996
	ccf			;6997
	nop			;6998
	rrca			;6999
	dec b			;699a
	ret p			;699b
	nop			;699c
	add a,c			;699d
	ld hl,0f105h		;699e
	adc a,d			;69a1
	ld hl,021f3h		;69a2
	ld hl,0f1f1h		;69a5
	ld (de),a		;69a8
	inc hl			;69a9
	ccf			;69aa
	pop af			;69ab
	nop			;69ac
	sbc a,b			;69ad
	rst 20h			;69ae
	ret po			;69af
	jr $+26			;69b0
	ld b,h			;69b2
	ld a,b			;69b3
	ret z			;69b4
	add a,h			;69b5
	jr nz,$+51		;69b6
	cp 097h			;69b8
	call m,sub_7fech	;69ba
	jp 0c1ffh		;69bd
	ret nz			;69c0
	ret po			;69c1
	ret p			;69c2
	ret z			;69c3
	adc a,b			;69c4
	rra			;69c5
	nop			;69c6
	ld (bc),a		;69c7
	ld hl,0f182h		;69c8
	cpl			;69cb
	ld b,0f1h		;69cc
	ld (bc),a		;69ce
	defb 0fdh,082h,0f8h ;illegal sequence	;69cf
	defb 0fdh,003h,0f1h ;illegal sequence	;69d2
	add a,d			;69d5
	jp p,003f3h		;69d6
	jp p,0f102h		;69d9
l69dch:
	nop			;69dc
	adc a,b			;69dd
	ret nz			;69de
	ret po			;69df
	ret po			;69e0
	and 010h		;69e1
	jr nc,l6a05h		;69e3
	jr nz,l69e7h		;69e5
l69e7h:
	inc b			;69e7
	jr nc,l696eh		;69e8
	di			;69ea
	jp p,0f1f2h		;69eb
	nop			;69ee
	xor c			;69ef
	jp 0380ch		;69f0
	ex (sp),hl		;69f3
	rrca			;69f4
	cp 00fh			;69f5
	ex (sp),hl		;69f7
	rrca			;69f8
	rrca			;69f9
	ret m			;69fa
	ret nz			;69fb
	inc a			;69fc
	ld a,(hl)		;69fd
	inc a			;69fe
	ret nz			;69ff
	ret p			;6a00
	ret p			;6a01
	rra			;6a02
	inc bc			;6a03
	ret p			;6a04
l6a05h:
	call m,003f0h		;6a05
	jp 01c30h		;6a08
	rst 0			;6a0b
	ret p			;6a0c
	ld a,a			;6a0d
	ret p			;6a0e
	rst 0			;6a0f
	ret m			;6a10
	inc e			;6a11
	jp 00cf8h		;6a12
	ex (sp),hl		;6a15
	jr l69dch		;6a16
	ret m			;6a18
	inc bc			;6a19
	rrca			;6a1a
	inc bc			;6a1b
	rra			;6a1c
	add a,d			;6a1d
	ret nz			;6a1e
	rra			;6a1f
	inc bc			;6a20
	ret p			;6a21
	inc bc			;6a22
	ret m			;6a23
	add a,c			;6a24
	inc bc			;6a25
	nop			;6a26
	add a,c			;6a27
	jp p,0f104h		;6a28
	add a,a			;6a2b
l6a2ch:
	ld sp,hl		;6a2c
	pop af			;6a2d
	jp p,0f231h		;6a2e
	rst 30h			;6a31
	ld sp,hl		;6a32
	inc bc			;6a33
	jp (hl)			;6a34
	add a,l			;6a35
	ld sp,hl		;6a36
	ld sp,0f7f2h		;6a37
	rst 30h			;6a3a
	inc bc			;6a3b
	sub a			;6a3c
	add a,d			;6a3d
	rst 30h			;6a3e
	jp p,0f104h		;6a3f
	sbc a,e			;6a42
	rst 30h			;6a43
	pop af			;6a44
	jp p,0f1f3h		;6a45
	jp p,0f1f3h		;6a48
	pop af			;6a4b
	jp p,0f7f1h		;6a4c
	di			;6a4f
	ld (0f32fh),a		;6a50
	ld (02f2fh),a		;6a53
	rst 30h			;6a56
	di			;6a57
	ld (0f32fh),a		;6a58
	ld (02f2fh),a		;6a5b
	nop			;6a5e
	ld (bc),a		;6a5f
	rrca			;6a60
l6a61h:
	sub (hl)		;6a61
	jp 00cf8h		;6a62
	ex (sp),hl		;6a65
	jr l6a2ch		;6a66
	ld a,h			;6a68
	rst 38h			;6a69
	rst 38h			;6a6a
	ret nz			;6a6b
	rra			;6a6c
l6a6dh:
	dec e			;6a6d
	dec e			;6a6e
	ret nz			;6a6f
	add a,b			;6a70
	add a,b			;6a71
	rst 38h			;6a72
	inc bc			;6a73
	ret m			;6a74
	cp b			;6a75
	daa			;6a76
	call m,08800h		;6a77
	djnz $+99		;6a7a
	jp p,0f1f3h		;6a7c
l6a7fh:
	pop af			;6a7f
	jp p,003f1h		;6a80
	ld h,d			;6a83
	adc a,l			;6a84
	or 063h			;6a85
	ld (02f2fh),a		;6a87
	jr nz,l6aeeh		;6a8a
	ld h,d			;6a8c
	or 063h			;6a8d
	ld (0f2f2h),a		;6a8f
	nop			;6a92
	adc a,b			;6a93
	call m,0c3f0h		;6a94
	rra			;6a97
	jr nc,l6a61h		;6a98
	jr l6abfh		;6a9a
	nop			;6a9c
	adc a,b			;6a9d
	nop			;6a9e
	ld h,c			;6a9f
	jp p,0f1f3h		;6aa0
	pop af			;6aa3
	jp p,000f1h		;6aa4
	add a,d			;6aa7
	nop			;6aa8
	ld bc,00304h		;6aa9
	adc a,h			;6aac
	ld bc,00100h		;6aad
	ld bc,00703h		;6ab0
	rlca			;6ab3
	rrca			;6ab4
	ccf			;6ab5
	rrca			;6ab6
	nop			;6ab7
	add a,b			;6ab8
	inc b			;6ab9
	ret nz			;6aba
	adc a,d			;6abb
	add a,b			;6abc
	nop			;6abd
	add a,b			;6abe
l6abfh:
	add a,b			;6abf
	ret nz			;6ac0
	ret po			;6ac1
	ret po			;6ac2
	ret p			;6ac3
	call m,004f0h		;6ac4
	inc bc			;6ac7
	add a,h			;6ac8
	nop			;6ac9
	ld bc,00001h		;6aca
	dec b			;6acd
	inc bc			;6ace
	inc bc			;6acf
l6ad0h:
	nop			;6ad0
	adc a,b			;6ad1
	inc bc			;6ad2
	rlca			;6ad3
	rlca			;6ad4
	ld h,a			;6ad5
	ex af,af'		;6ad6
l6ad7h:
	inc c			;6ad7
	inc b			;6ad8
l6ad9h:
	inc b			;6ad9
	nop			;6ada
	ld (bc),a		;6adb
	jr nz,l6ae0h		;6adc
	jr nc,$+7		;6ade
l6ae0h:
	jr nz,l6ae4h		;6ae0
	jr nc,l6a6dh		;6ae2
l6ae4h:
	jr nz,l6af6h		;6ae4
	jr nc,$+50		;6ae6
	ld hl,02020h		;6ae8
	jr nc,l6b1dh		;6aeb
	dec b			;6aed
l6aeeh:
	jr nz,l6af2h		;6aee
	jr nc,$-119		;6af0
l6af2h:
	jr nz,l6b04h		;6af2
	jr nc,l6b26h		;6af4
l6af6h:
	ld hl,0f010h		;6af6
	rlca			;6af9
	djnz l6a7fh		;6afa
	jr nz,l6b0eh		;6afc
	ret p			;6afe
	inc b			;6aff
	djnz $+6		;6b00
	jr nc,$-122		;6b02
l6b04h:
	di			;6b04
	jp p,0f1f2h		;6b05
	nop			;6b08
	adc a,b			;6b09
	rra			;6b0a
	jr c,l6ad0h		;6b0b
	rra			;6b0d
l6b0eh:
	jr nc,l6ad7h		;6b0e
	jr l6b35h		;6b10
	nop			;6b12
	adc a,b			;6b13
	di			;6b14
	pop af			;6b15
	jp p,0f1f3h		;6b16
	pop af			;6b19
	jp p,000f1h		;6b1a
l6b1dh:
	dec b			;6b1d
l6b1eh:
	ret nz			;6b1e
	inc bc			;6b1f
	nop			;6b20
	inc b			;6b21
	ret nz			;6b22
	add a,h			;6b23
	nop			;6b24
	add a,b			;6b25
l6b26h:
	add a,b			;6b26
	nop			;6b27
	nop			;6b28
	add a,h			;6b29
	djnz l6b4ch		;6b2a
	djnz l6b1eh		;6b2c
	dec b			;6b2e
	djnz $-125		;6b2f
	ret p			;6b31
	ld b,010h		;6b32
	nop			;6b34
l6b35h:
	add a,h			;6b35
	nop			;6b36
	ld c,c			;6b37
	ld c,c			;6b38
	rst 38h			;6b39
	inc b			;6b3a
	add a,c			;6b3b
	add a,h			;6b3c
	rst 38h			;6b3d
	inc d			;6b3e
	inc d			;6b3f
	rst 38h			;6b40
	inc bc			;6b41
	add a,b			;6b42
	ld (bc),a		;6b43
	rst 38h			;6b44
	ld (bc),a		;6b45
	jr z,l6b4ah		;6b46
	rst 38h			;6b48
	ld (bc),a		;6b49
l6b4ah:
	nop			;6b4a
	ld (bc),a		;6b4b
l6b4ch:
	rst 38h			;6b4c
	ld (bc),a		;6b4d
	sub d			;6b4e
	add a,c			;6b4f
	rst 38h			;6b50
	inc b			;6b51
	pop bc			;6b52
	ret nz			;6b53
	jr c,l6ad9h		;6b54
	ld c,h			;6b56
	inc sp			;6b57
	add a,(hl)		;6b58
	call z,096bch		;6b59
	adc a,(hl)		;6b5c
	call nz,08e33h		;6b5d
	ld h,e			;6b60
	jr c,$+30		;6b61
	jr z,l6aeeh		;6b63
	add a,0f1h		;6b65
	ret z			;6b67
	adc a,b			;6b68
	sbc a,h			;6b69
	cp (hl)			;6b6a
	cp a			;6b6b
	ret nc			;6b6c
	inc (hl)		;6b6d
	jp p,0f91fh		;6b6e
	defb 0fdh,07dh ;ld a,iyl	;6b71
	adc a,h			;6b73
	inc e			;6b74
	pop bc			;6b75
	ld (l61cch),a		;6b76
	inc sp			;6b79
	dec a			;6b7a
	ld l,c			;6b7b
	ld (hl),c		;6b7c
	inc hl			;6b7d
	call z,0c671h		;6b7e
	inc e			;6b81
	jr c,l6b98h		;6b82
	sub c			;6b84
	ld h,e			;6b85
	adc a,a			;6b86
	inc de			;6b87
	ld de,07d39h		;6b88
	defb 0fdh,00bh,02ch ;illegal sequence	;6b8b
	ld c,a			;6b8e
	ret m			;6b8f
	sbc a,a			;6b90
	cp a			;6b91
	cp (hl)			;6b92
	ld sp,0a200h		;6b93
	rrca			;6b96
	di			;6b97
l6b98h:
	call p,0f3f4h		;6b98
	dec (hl)		;6b9b
	di			;6b9c
	ld e,c			;6b9d
	call p,0f9f4h		;6b9e
	ld sp,hl		;6ba1
	ld b,e			;6ba2
	ld d,h			;6ba3
	sub l			;6ba4
	sub l			;6ba5
	call p,0f9f4h		;6ba6
	ld sp,hl		;6ba9
	inc (hl)		;6baa
	inc (hl)		;6bab
	sub l			;6bac
	sub l			;6bad
	di			;6bae
	di			;6baf
	call p,0f3f4h		;6bb0
	dec (hl)		;6bb3
	di			;6bb4
	ld e,c			;6bb5
	di			;6bb6
	call p,0f503h		;6bb7
	add a,l			;6bba
	ld sp,hl		;6bbb
	push af			;6bbc
	call p,0f4f3h		;6bbd
	inc bc			;6bc0
	push af			;6bc1
	add a,d			;6bc2
	ld sp,hl		;6bc3
	push af			;6bc4
	dec b			;6bc5
	call p,0f502h		;6bc6
	ld (bc),a		;6bc9
	call p,0f58ah		;6bca
	call p,0f4f3h		;6bcd
	ld d,e			;6bd0
	sub e			;6bd1
	ld d,h			;6bd2
	call p,0f4f3h		;6bd3
	inc bc			;6bd6
	push af			;6bd7
	add a,l			;6bd8
	ld sp,hl		;6bd9
	push af			;6bda
	call p,0f4f3h		;6bdb
	inc bc			;6bde
	push af			;6bdf
	add a,d			;6be0
	ld sp,hl		;6be1
	push af			;6be2
	dec b			;6be3
	call p,0f502h		;6be4
	ld (bc),a		;6be7
	call p,0f588h		;6be8
	call p,0f4f3h		;6beb
	ld d,e			;6bee
	sub e			;6bef
	ld d,h			;6bf0
	call p,00300h		;6bf1
	ld c,b			;6bf4
	add a,c			;6bf5
	rst 38h			;6bf6
	inc bc			;6bf7
	ld a,(hl)		;6bf8
	sub c			;6bf9
	rst 38h			;6bfa
	sub (hl)		;6bfb
	sub h			;6bfc
	sub h			;6bfd
	rst 38h			;6bfe
	rst 38h			;6bff
	add a,b			;6c00
	add a,b			;6c01
	rst 38h			;6c02
	ld l,c			;6c03
	add hl,hl		;6c04
	add hl,hl		;6c05
	rst 38h			;6c06
	rst 38h			;6c07
	nop			;6c08
	nop			;6c09
	rst 38h			;6c0a
	inc bc			;6c0b
	sub d			;6c0c
	add a,c			;6c0d
	rst 38h			;6c0e
	inc bc			;6c0f
	ld a,089h		;6c10
	rst 38h			;6c12
	nop			;6c13
	nop			;6c14
	rst 38h			;6c15
	rst 38h			;6c16
	nop			;6c17
	jr z,l6c42h		;6c18
	rst 38h			;6c1a
	inc b			;6c1b
	ld a,089h		;6c1c
	nop			;6c1e
	sub d			;6c1f
	sub d			;6c20
	rst 38h			;6c21
	add a,a			;6c22
	adc a,(hl)		;6c23
	or l			;6c24
	or l			;6c25
	nop			;6c26
	inc bc			;6c27
	ld (hl),l		;6c28
	add a,d			;6c29
	pop hl			;6c2a
	ld (hl),c		;6c2b
	inc bc			;6c2c
	xor l			;6c2d
	inc bc			;6c2e
	xor (hl)		;6c2f
	inc b			;6c30
	ld a,(hl)		;6c31
	sub l			;6c32
	nop			;6c33
	ld c,c			;6c34
	ld c,c			;6c35
	rst 38h			;6c36
	sub h			;6c37
	sub (hl)		;6c38
	sub h			;6c39
	rst 30h			;6c3a
	sub h			;6c3b
	sub h			;6c3c
	rst 30h			;6c3d
	sub h			;6c3e
	add hl,hl		;6c3f
	ld l,c			;6c40
	add hl,hl		;6c41
l6c42h:
	rst 28h			;6c42
	xor c			;6c43
	xor c			;6c44
	rst 28h			;6c45
	add hl,hl		;6c46
	nop			;6c47
	inc bc			;6c48
	add a,b			;6c49
	adc a,b			;6c4a
	rst 38h			;6c4b
	inc d			;6c4c
	inc d			;6c4d
	rst 38h			;6c4e
	rst 38h			;6c4f
	ld a,(hl)		;6c50
	ld a,(hl)		;6c51
	nop			;6c52
	inc bc			;6c53
	ld a,(hl)		;6c54
	add a,c			;6c55
	nop			;6c56
	rlca			;6c57
	or a			;6c58
	add a,c			;6c59
	nop			;6c5a
	rlca			;6c5b
	ld l,l			;6c5c
	xor c			;6c5d
	nop			;6c5e
	ld hl,(0222ah)		;6c5f
	ld hl,(02a22h)		;6c62
	ld hl,(l7e00h)		;6c65
	nop			;6c68
	ld a,(hl)		;6c69
	add a,b			;6c6a
	rst 38h			;6c6b
	ld c,b			;6c6c
	ld c,b			;6c6d
	rst 38h			;6c6e
	pop bc			;6c6f
	rst 38h			;6c70
	ld a,081h		;6c71
	rst 38h			;6c73
	sub d			;6c74
	sub d			;6c75
	rst 38h			;6c76
	rst 38h			;6c77
	nop			;6c78
	nop			;6c79
	rst 38h			;6c7a
	rst 38h			;6c7b
	nop			;6c7c
	nop			;6c7d
	rst 38h			;6c7e
	push de			;6c7f
	push de			;6c80
	rst 38h			;6c81
	push de			;6c82
	push de			;6c83
	rst 38h			;6c84
	pop bc			;6c85
	ret			;6c86
	ex af,af'		;6c87
	cp l			;6c88
	add a,c			;6c89
	rst 38h			;6c8a
	inc bc			;6c8b
	nop			;6c8c
	ld (bc),a		;6c8d
	ld sp,hl		;6c8e
	ld (bc),a		;6c8f
	rst 38h			;6c90
	rlca			;6c91
	nop			;6c92
	add a,c			;6c93
	rst 38h			;6c94
	nop			;6c95
	adc a,0f5h		;6c96
	call p,0f3f3h		;6c98
	sub l			;6c9b
	ccf			;6c9c
	ld d,e			;6c9d
	push af			;6c9e
	push af			;6c9f
	call p,0f3f3h		;6ca0
	sub l			;6ca3
	sub l			;6ca4
	ld d,h			;6ca5
	push af			;6ca6
	push af			;6ca7
	call p,0f3f3h		;6ca8
	sub l			;6cab
	sub l			;6cac
	call p,0f5f4h		;6cad
	call p,0f3f3h		;6cb0
	sub l			;6cb3
	ccf			;6cb4
	ld d,e			;6cb5
	ld sp,hl		;6cb6
	ld sp,hl		;6cb7
	ld b,l			;6cb8
	ld b,l			;6cb9
	ccf			;6cba
	ccf			;6cbb
	ld sp,hl		;6cbc
	call p,095f4h		;6cbd
	ccf			;6cc0
	ld d,e			;6cc1
	ccf			;6cc2
	ccf			;6cc3
	call p,0f3f3h		;6cc4
	sub h			;6cc7
	ld d,e			;6cc8
	ld d,e			;6cc9
	ld c,a			;6cca
	ld c,a			;6ccb
	sub l			;6ccc
	ld d,h			;6ccd
	ld b,e			;6cce
	sub h			;6ccf
	ld d,e			;6cd0
	ld d,e			;6cd1
	ld b,e			;6cd2
	rst 38h			;6cd3
	sub l			;6cd4
	ld d,h			;6cd5
	ld b,e			;6cd6
	sub l			;6cd7
	ccf			;6cd8
	ld d,e			;6cd9
	ccf			;6cda
	ccf			;6cdb
	call p,0f3f3h		;6cdc
	ld sp,hl		;6cdf
	ld sp,hl		;6ce0
	push af			;6ce1
	ld sp,hl		;6ce2
	ld sp,hl		;6ce3
	push af			;6ce4
	inc b			;6ce5
	ld sp,hl		;6ce6
	add a,h			;6ce7
	push af			;6ce8
	ld sp,hl		;6ce9
	ld sp,hl		;6cea
	push af			;6ceb
	inc bc			;6cec
	ld sp,hl		;6ced
	add a,l			;6cee
	sub l			;6cef
	ld d,h			;6cf0
	ld b,e			;6cf1
	ld sp,hl		;6cf2
	ld sp,hl		;6cf3
	inc bc			;6cf4
	call p,04385h		;6cf5
	ccf			;6cf8
	ccf			;6cf9
	sub l			;6cfa
	ld d,h			;6cfb
	inc bc			;6cfc
	ccf			;6cfd
	add a,c			;6cfe
	ld c,a			;6cff
	inc bc			;6d00
	ld e,a			;6d01
	add a,c			;6d02
	ld c,a			;6d03
	inc bc			;6d04
	ccf			;6d05
	add a,c			;6d06
	ld c,a			;6d07
	inc bc			;6d08
	ld e,a			;6d09
	add a,c			;6d0a
	ld c,a			;6d0b
	inc c			;6d0c
	ccf			;6d0d
	add a,c			;6d0e
	ld d,h			;6d0f
	inc bc			;6d10
	di			;6d11
	ld (bc),a		;6d12
	call p,0f302h		;6d13
	add a,c			;6d16
	ld d,h			;6d17
	inc bc			;6d18
	di			;6d19
	inc b			;6d1a
	call p,0f302h		;6d1b
	ld (bc),a		;6d1e
	sub l			;6d1f
	inc bc			;6d20
	di			;6d21
	ld (bc),a		;6d22
	call p,0fd86h		;6d23
	di			;6d26
	di			;6d27
	call p,095f3h		;6d28
	ld b,054h		;6d2b
	add a,c			;6d2d
	ld b,e			;6d2e
	inc b			;6d2f
	sub l			;6d30
	add a,l			;6d31
	ld d,h			;6d32
	ld e,c			;6d33
	ld e,c			;6d34
	ld c,c			;6d35
	ld c,c			;6d36
	rlca			;6d37
	ld b,l			;6d38
	nop			;6d39
	rlca			;6d3a
	cpl			;6d3b
	ld (bc),a		;6d3c
	nop			;6d3d
	adc a,a			;6d3e
	rla			;6d3f
	nop			;6d40
	nop			;6d41
	rla			;6d42
	rla			;6d43
	nop			;6d44
	nop			;6d45
	halt			;6d46
	nop			;6d47
	add a,b			;6d48
	add a,b			;6d49
	rst 38h			;6d4a
	sub b			;6d4b
	sub b			;6d4c
	sub a			;6d4d
	ex af,af'		;6d4e
	cp a			;6d4f
	add a,h			;6d50
	nop			;6d51
	ld h,026h		;6d52
	nop			;6d54
	inc bc			;6d55
	ld e,a			;6d56
	add a,c			;6d57
	nop			;6d58
	dec b			;6d59
	call m,00081h		;6d5a
	inc bc			;6d5d
	or h			;6d5e
	add a,h			;6d5f
	and l			;6d60
	cp l			;6d61
	rst 0			;6d62
	or (hl)			;6d63
	inc bc			;6d64
	or h			;6d65
	sbc a,b			;6d66
	nop			;6d67
	ex (sp),hl		;6d68
	ex de,hl		;6d69
	ex de,hl		;6d6a
	inc (hl)		;6d6b
	in a,(0dbh)		;6d6c
	dec de			;6d6e
	rst 28h			;6d6f
	jp 0d5d4h		;6d70
	dec hl			;6d73
	inc de			;6d74
	daa			;6d75
	inc bc			;6d76
	call nc,02b2ah		;6d77
	inc de			;6d7a
	rst 28h			;6d7b
	ld hl,(0ff2ah)		;6d7c
	nop			;6d7f
	add a,c			;6d80
	ld b,e			;6d81
	dec bc			;6d82
	ccf			;6d83
	add a,c			;6d84
	ld b,e			;6d85
	dec b			;6d86
	ccf			;6d87
	add a,a			;6d88
	ld sp,hl		;6d89
	di			;6d8a
	di			;6d8b
	call p,0f9f5h		;6d8c
	ld d,h			;6d8f
	ld b,043h		;6d90
	ld (bc),a		;6d92
	ccf			;6d93
	xor a			;6d94
	ld b,e			;6d95
	ccf			;6d96
	ccf			;6d97
	ld d,h			;6d98
	ld b,e			;6d99
	ccf			;6d9a
	ccf			;6d9b
	ld b,e			;6d9c
	rst 38h			;6d9d
	ld d,h			;6d9e
	ld b,e			;6d9f
	ccf			;6da0
	ccf			;6da1
	ld d,h			;6da2
	ld b,e			;6da3
	ld c,a			;6da4
	di			;6da5
	call p,053f5h		;6da6
	ld b,e			;6da9
	ld b,e			;6daa
	ccf			;6dab
	ccf			;6dac
	sub e			;6dad
	ld d,e			;6dae
	ld b,e			;6daf
	di			;6db0
	sub e			;6db1
	ld d,e			;6db2
	ld b,e			;6db3
	call p,05393h		;6db4
	ld d,e			;6db7
	call p,0f553h		;6db8
	sub e			;6dbb
	ld d,e			;6dbc
	call p,053f4h		;6dbd
	push af			;6dc0
	call p,0f3f3h		;6dc1
	nop			;6dc4
	add a,d			;6dc5
	ld bc,003ffh		;6dc6
	ld bc,0ff81h		;6dc9
	inc bc			;6dcc
	ld b,l			;6dcd
	add a,e			;6dce
	rst 0			;6dcf
	ld a,l			;6dd0
	rst 0			;6dd1
	inc bc			;6dd2
	ld b,l			;6dd3
	sub c			;6dd4
	rst 38h			;6dd5
	and l			;6dd6
	cp l			;6dd7
l6dd8h:
	rst 20h			;6dd8
	and l			;6dd9
	cp l			;6dda
	rst 20h			;6ddb
	and l			;6ddc
	rst 38h			;6ddd
	sub l			;6dde
	sub l			;6ddf
	rst 38h			;6de0
	and l			;6de1
	and l			;6de2
	rst 38h			;6de3
	add a,c			;6de4
	sbc a,c			;6de5
	nop			;6de6
	ld (bc),a		;6de7
	push af			;6de8
	adc a,h			;6de9
	ld sp,hl		;6dea
	push af			;6deb
	call p,0f9f4h		;6dec
	push af			;6def
	call p,0f4f3h		;6df0
	ld sp,hl		;6df3
	push af			;6df4
	call p,0f304h		;6df5
	add a,h			;6df8
	call p,0f3f3h		;6df9
	call p,0f303h		;6dfc
	ld (bc),a		;6dff
	call p,0f885h		;6e00
	defb 0fdh,0fdh,0f4h ;illegal sequence	;6e03
	di			;6e06
	nop			;6e07
	ld (bc),a		;6e08
	ld e,a			;6e09
	adc a,(hl)		;6e0a
	nop			;6e0b
	call 0c0cdh		;6e0c
	call 06f0dh		;6e0f
	nop			;6e12
	nop			;6e13
	ld d,a			;6e14
	ld d,a			;6e15
	rlca			;6e16
	ld d,a			;6e17
	ld d,b			;6e18
	dec b			;6e19
	cpl			;6e1a
	add a,e			;6e1b
	nop			;6e1c
	add hl,bc		;6e1d
	nop			;6e1e
	dec b			;6e1f
	ld e,a			;6e20
	add a,e			;6e21
	nop			;6e22
	rst 18h			;6e23
	nop			;6e24
	inc bc			;6e25
	ld e,a			;6e26
	add a,l			;6e27
	nop			;6e28
	add hl,bc		;6e29
	nop			;6e2a
	ld e,a			;6e2b
	nop			;6e2c
	inc bc			;6e2d
	cp a			;6e2e
	add a,l			;6e2f
	nop			;6e30
	cp a			;6e31
	nop			;6e32
	cp a			;6e33
	cp a			;6e34
	nop			;6e35
	add a,c			;6e36
	ld hl,01004h		;6e37
	add a,c			;6e3a
	jr nz,l6e44h		;6e3b
	djnz $-122		;6e3d
	jr nz,l6e51h		;6e3f
	djnz l6e64h		;6e41
	rlca			;6e43
l6e44h:
	djnz $-125		;6e44
	ld h,d			;6e46
	inc b			;6e47
	ld hl,01003h		;6e48
	add a,c			;6e4b
	ld hl,01007h		;6e4c
	add a,e			;6e4f
	ld h,d			;6e50
l6e51h:
	ld hl,00321h		;6e51
	djnz l6dd8h		;6e54
	ld hl,00000h		;6e56
	ld (bc),a		;6e59
	nop			;6e5a
	add a,e			;6e5b
	rst 38h			;6e5c
	ld a,(hl)		;6e5d
	nop			;6e5e
	inc bc			;6e5f
	ld a,(hl)		;6e60
	add a,h			;6e61
	nop			;6e62
	ld e,d			;6e63
l6e64h:
	ld e,d			;6e64
	nop			;6e65
	inc bc			;6e66
	ld e,d			;6e67
	add a,c			;6e68
	nop			;6e69
	dec b			;6e6a
	rst 38h			;6e6b
	ld (bc),a		;6e6c
	nop			;6e6d
	ld (bc),a		;6e6e
	rst 38h			;6e6f
	add a,c			;6e70
	nop			;6e71
	dec b			;6e72
	rst 38h			;6e73
	ld (bc),a		;6e74
	nop			;6e75
	inc bc			;6e76
l6e77h:
	ld e,d			;6e77
	and e			;6e78
	nop			;6e79
	ld e,d			;6e7a
	ld e,d			;6e7b
	nop			;6e7c
l6e7dh:
	nop			;6e7d
	ld d,l			;6e7e
	ld d,c			;6e7f
	ld d,l			;6e80
	dec b			;6e81
	ld d,c			;6e82
	ld (hl),l		;6e83
	rlca			;6e84
	nop			;6e85
	jp 0c318h		;6e86
l6e89h:
	jr $-59			;6e89
	in a,(000h)		;6e8b
	ld c,060h		;6e8d
	ld c,060h		;6e8f
	ld c,06eh		;6e91
	ld l,(hl)		;6e93
	nop			;6e94
	ld (hl),b		;6e95
	ld b,070h		;6e96
	ld b,070h		;6e98
	halt			;6e9a
	halt			;6e9b
	inc bc			;6e9c
	nop			;6e9d
	add a,l			;6e9e
	ld b,000h		;6e9f
	ld b,000h		;6ea1
	ld b,003h		;6ea3
	nop			;6ea5
	adc a,(hl)		;6ea6
	ld h,b			;6ea7
	nop			;6ea8
	ld h,b			;6ea9
	nop			;6eaa
	ld h,b			;6eab
	nop			;6eac
	nop			;6ead
	ld c,c			;6eae
	add hl,bc		;6eaf
	ld c,c			;6eb0
	ld b,b			;6eb1
	add hl,bc		;6eb2
	ld c,a			;6eb3
	ret nz			;6eb4
	inc bc			;6eb5
	ld a,(hl)		;6eb6
	or l			;6eb7
	nop			;6eb8
	ld a,(hl)		;6eb9
	nop			;6eba
	nop			;6ebb
	rst 38h			;6ebc
	ret po			;6ebd
	ld c,0e0h		;6ebe
l6ec0h:
	xor 00ah		;6ec0
	ret po			;6ec2
	xor 000h		;6ec3
	ret po			;6ec5
	xor (hl)		;6ec6
	adc a,d			;6ec7
	and b			;6ec8
	xor d			;6ec9
	adc a,d			;6eca
	xor d			;6ecb
	nop			;6ecc
	inc c			;6ecd
	ld d,l			;6ece
	ld d,l			;6ecf
l6ed0h:
	ld d,h			;6ed0
	ld d,l			;6ed1
	inc c			;6ed2
	ld l,a			;6ed3
	nop			;6ed4
	inc bc			;6ed5
	jp p,00290h		;6ed6
	sub d			;6ed9
	sub b			;6eda
	sub d			;6edb
	nop			;6edc
	jr nc,l6e89h		;6edd
	xor d			;6edf
	ld hl,(030aah)		;6ee0
	or 000h			;6ee3
	rlca			;6ee5
	ld (hl),b		;6ee6
	rlca			;6ee7
	ld (hl),a		;6ee8
	ld d,b			;6ee9
	rlca			;6eea
	ld (hl),a		;6eeb
	nop			;6eec
	nop			;6eed
	add a,a			;6eee
	ld h,d			;6eef
	ld bc,02001h		;6ef0
	jr nz,l6f55h		;6ef3
	jr nz,$+5		;6ef5
	djnz l6efbh		;6ef7
	jr nz,l6e7dh		;6ef9
l6efbh:
	djnz $+34		;6efb
	inc bc			;6efd
	ld h,b			;6efe
	dec b			;6eff
	jr nz,l6f07h		;6f00
	ld bc,02605h		;6f02
	ld (bc),a		;6f05
	ld h,b			;6f06
l6f07h:
	add a,h			;6f07
	jr nz,$+18		;6f08
	djnz $+34		;6f0a
	ld b,010h		;6f0c
	add a,e			;6f0e
	jr nz,$+18		;6f0f
	djnz $+5		;6f11
	jr nz,$-122		;6f13
	djnz l6f37h		;6f15
	djnz l6f39h		;6f17
	ld h,010h		;6f19
	sbc a,b			;6f1b
	jr nz,$+18		;6f1c
	djnz $+34		;6f1e
	djnz $+34		;6f20
	ld h,b			;6f22
	ld h,b			;6f23
	jr nz,$+34		;6f24
	ld hl,02021h		;6f26
	djnz l6f4bh		;6f29
	djnz l6f3dh		;6f2b
	jr nz,l6f3fh		;6f2d
	djnz l6f51h		;6f2f
	djnz l6f43h		;6f31
	jr nz,l6f3bh		;6f33
	djnz l6f39h		;6f35
l6f37h:
	jr nz,l6f3bh		;6f37
l6f39h:
	djnz $+5		;6f39
l6f3bh:
	jr nz,l6f3fh		;6f3b
l6f3dh:
	djnz l6ec0h		;6f3d
l6f3fh:
	jr nz,l6f47h		;6f3f
	djnz l6f45h		;6f41
l6f43h:
	jr nz,l6f47h		;6f43
l6f45h:
	djnz $+5		;6f45
l6f47h:
	jr nz,l6ed0h		;6f47
	djnz l6f6bh		;6f49
l6f4bh:
	djnz $+18		;6f4b
	jr nz,l6f5fh		;6f4d
	djnz l6f51h		;6f4f
l6f51h:
	inc bc			;6f51
	dec (hl)		;6f52
	add a,c			;6f53
l6f54h:
	nop			;6f54
l6f55h:
	inc b			;6f55
	ccf			;6f56
	inc bc			;6f57
	call nc,00081h		;6f58
	inc b			;6f5b
	call m,03502h		;6f5c
l6f5fh:
	adc a,001h		;6f5f
	inc (hl)		;6f61
	dec (hl)		;6f62
	dec (hl)		;6f63
	jr nc,l6f6bh		;6f64
	nop			;6f66
	ld l,(hl)		;6f67
	ld l,(hl)		;6f68
	ld c,060h		;6f69
l6f6bh:
	ld c,060h		;6f6b
	ld c,000h		;6f6d
	halt			;6f6f
	halt			;6f70
	ld (hl),b		;6f71
	ld b,070h		;6f72
	ld b,070h		;6f74
	call nc,0c0d4h		;6f76
	inc d			;6f79
	call nc,004d4h		;6f7a
	ret nc			;6f7d
	nop			;6f7e
	sub d			;6f7f
	sub b			;6f80
	sub d			;6f81
	ld (bc),a		;6f82
	sub b			;6f83
	jp p,00003h		;6f84
	ld l,a			;6f87
	inc c			;6f88
	ld d,l			;6f89
	ld d,h			;6f8a
	ld d,l			;6f8b
	ld d,l			;6f8c
	inc c			;6f8d
	nop			;6f8e
	xor d			;6f8f
	adc a,d			;6f90
	xor d			;6f91
	and b			;6f92
	adc a,d			;6f93
	xor (hl)		;6f94
	ret po			;6f95
	nop			;6f96
	or 030h			;6f97
	xor d			;6f99
	ld hl,(0aaaah)		;6f9a
	jr nc,l6f9fh		;6f9d
l6f9fh:
	ld (hl),a		;6f9f
	rlca			;6fa0
	ld d,b			;6fa1
l6fa2h:
	ld (hl),a		;6fa2
	rlca			;6fa3
	ld (hl),b		;6fa4
	rlca			;6fa5
l6fa6h:
	nop			;6fa6
	xor 0e0h		;6fa7
	ld a,(bc)		;6fa9
	xor 0e0h		;6faa
	ld c,0e0h		;6fac
	nop			;6fae
	ld (bc),a		;6faf
	djnz l6fb4h		;6fb0
	jr nz,$+5		;6fb2
l6fb4h:
	djnz l6f3bh		;6fb4
	jr nz,$+18		;6fb6
	djnz $+34		;6fb8
	jr nz,$+5		;6fba
	djnz $-118		;6fbc
	jr nz,$+18		;6fbe
	djnz $+34		;6fc0
	djnz $+18		;6fc2
	jr nz,$+34		;6fc4
	inc de			;6fc6
	djnz $-121		;6fc7
	jr nz,l6fdbh		;6fc9
	djnz l6fedh		;6fcb
	jr nz,$+7		;6fcd
	djnz l6f54h		;6fcf
	jr nz,l6fe3h		;6fd1
	djnz $+5		;6fd3
	jr nz,l6fd9h		;6fd5
	djnz l6fdbh		;6fd7
l6fd9h:
	jr nz,l6fe1h		;6fd9
l6fdbh:
	djnz $-123		;6fdb
	jr nz,l6fefh		;6fdd
	djnz $+5		;6fdf
l6fe1h:
	jr nz,l6fe5h		;6fe1
l6fe3h:
	djnz l6fe7h		;6fe3
l6fe5h:
	jr nz,l6febh		;6fe5
l6fe7h:
	djnz $-112		;6fe7
	jr nz,l6ffbh		;6fe9
l6febh:
	djnz l700dh		;6feb
l6fedh:
	djnz l700fh		;6fed
l6fefh:
	jr nz,$+18		;6fef
	jr nz,l7003h		;6ff1
	djnz $+34		;6ff3
	djnz l7017h		;6ff5
	nop			;6ff7
	add a,e			;6ff8
	nop			;6ff9
	add hl,bc		;6ffa
l6ffbh:
	nop			;6ffb
	dec b			;6ffc
	cpl			;6ffd
	sub e			;6ffe
	ld a,(bc)		;6fff
	jp pe,0eae0h		;7000
l7003h:
	jp pe,00000h		;7003
	or 050h			;7006
	ld d,a			;7008
	rlca			;7009
	ld d,a			;700a
	ld d,a			;700b
	nop			;700c
l700dh:
	nop			;700d
	ld l,a			;700e
l700fh:
	nop			;700f
	sub b			;7010
	nop			;7011
	dec b			;7012
	call p,08100h		;7013
	ret po			;7016
l7017h:
	ld b,010h		;7017
	add a,h			;7019
	ld hl,01010h		;701a
	jr nz,$+9		;701d
	djnz l6fa2h		;701f
	jr nz,l702fh		;7021
	djnz l6fa6h		;7023
	ld hl,08400h		;7025
	nop			;7028
	rst 8			;7029
	ex (sp),hl		;702a
	rlca			;702b
	inc b			;702c
	nop			;702d
	adc a,e			;702e
l702fh:
	rrca			;702f
l7030h:
	ld (hl),b		;7030
	add a,b			;7031
	di			;7032
	pop hl			;7033
	ld c,000h		;7034
	nop			;7036
	ld bc,0c739h		;7037
	inc b			;703a
	ld b,l			;703b
	add a,c			;703c
	rst 38h			;703d
	rlca			;703e
	and l			;703f
	add a,d			;7040
	rst 38h			;7041
	ld c,c			;7042
	dec b			;7043
	ld c,b			;7044
	add a,d			;7045
	ld c,c			;7046
	rst 38h			;7047
	inc b			;7048
	cp 094h			;7049
	nop			;704b
	ld b,l			;704c
	ld b,l			;704d
	rst 38h			;704e
	ld de,092f2h		;704f
	sub a			;7052
	sub h			;7053
	or 014h			;7054
	rst 38h			;7056
	cpl			;7057
	ld sp,hl		;7058
	add hl,hl		;7059
	add hl,hl		;705a
	jp (hl)			;705b
	ccf			;705c
	add hl,hl		;705d
	add hl,hl		;705e
	inc b			;705f
	ld a,a			;7060
	add a,c			;7061
	nop			;7062
	inc bc			;7063
	ld l,e			;7064
	sub b			;7065
	ld (hl),a		;7066
	ld c,a			;7067
	ld c,c			;7068
	jp (hl)			;7069
	add hl,hl		;706a
	ld l,a			;706b
	jr z,$+1		;706c
	call p,0949fh		;706e
	sub h			;7071
	sub a			;7072
	call m,09494h		;7073
	inc b			;7076
	cp 081h			;7077
	nop			;7079
	inc bc			;707a
	sub 000h		;707b
	add a,e			;707d
	di			;707e
	ld b,e			;707f
	ld d,h			;7080
	inc b			;7081
	sub l			;7082
	adc a,a			;7083
	ld b,h			;7084
	sub e			;7085
	sub l			;7086
	sub l			;7087
	ld d,e			;7088
	ld d,h			;7089
	sub l			;708a
	sub l			;708b
	ld b,h			;708c
	di			;708d
	call p,0f5f4h		;708e
	push af			;7091
	call p,0f303h		;7092
	add a,c			;7095
	call p,0f503h		;7096
	add a,c			;7099
	call p,0f303h		;709a
	add a,c			;709d
	call p,0f503h		;709e
	adc a,c			;70a1
	call p,0f3f3h		;70a2
	sub l			;70a5
	ccf			;70a6
	ld d,e			;70a7
	ccf			;70a8
	ccf			;70a9
	call p,0f303h		;70aa
	xor a			;70ad
	call p,0f9f5h		;70ae
	ld sp,hl		;70b1
	push af			;70b2
	call p,0f3f4h		;70b3
	push af			;70b6
	call p,0f3f3h		;70b7
	call p,0f3f3h		;70ba
	ld d,h			;70bd
	ld b,e			;70be
	ld b,e			;70bf
	ccf			;70c0
	ccf			;70c1
	ld d,h			;70c2
	ld b,e			;70c3
	ccf			;70c4
	ccf			;70c5
	call p,0f9f5h		;70c6
	ld sp,hl		;70c9
	push af			;70ca
	call p,0f3f4h		;70cb
	push af			;70ce
	call p,0f3f3h		;70cf
	call p,0f3f3h		;70d2
	ld d,h			;70d5
	ld b,e			;70d6
	ld b,e			;70d7
	ccf			;70d8
	ccf			;70d9
	ld d,h			;70da
	ld b,e			;70db
	ccf			;70dc
	nop			;70dd
	add a,l			;70de
	and (hl)		;70df
	or e			;70e0
	sub c			;70e1
	ret z			;70e2
	rst 38h			;70e3
	ld b,0a0h		;70e4
	adc a,a			;70e6
	rst 38h			;70e7
	adc a,c			;70e8
	add hl,sp		;70e9
	ld l,b			;70ea
	call pe,011ffh		;70eb
	inc hl			;70ee
	rst 20h			;70ef
	ld c,h			;70f0
	or a			;70f1
	ld d,b			;70f2
	ld d,b			;70f3
	add a,d			;70f4
	ld b,h			;70f5
	inc bc			;70f6
	add a,e			;70f7
	sbc a,e			;70f8
	jr c,l7177h		;70f9
	add a,c			;70fb
	pop af			;70fc
	pop af			;70fd
	inc bc			;70fe
sub_70ffh:
	rlca			;70ff
	rst 20h			;7100
	adc a,(hl)		;7101
	rst 0			;7102
	add a,d			;7103
	cp 007h			;7104
	rrca			;7106
	ret po			;7107
	call m,0abaeh		;7108
	xor l			;710b
	inc h			;710c
	ld a,(hl)		;710d
	adc a,e			;710e
	adc a,b			;710f
	inc sp			;7110
	cp c			;7111
	ld h,a			;7112
	inc sp			;7113
	inc bc			;7114
	ret nz			;7115
	adc a,c			;7116
	jp 010f8h		;7117
	djnz $+11		;711a
	rst 38h			;711c
	exx			;711d
	exx			;711e
	rst 38h			;711f
	inc b			;7120
	ld b,b			;7121
	sbc a,l			;7122
	jp po,01c3eh		;7123
	dec h			;7126
	ld sp,00de5h		;7127
	ld e,e			;712a
	ld d,e			;712b
	ld e,c			;712c
	ld l,c			;712d
	sub e			;712e
	ret			;712f
	dec sp			;7130
	inc hl			;7131
	jr l713bh		;7132
	call m,0c0c0h		;7134
	rrca			;7137
	ret m			;7138
	add a,b			;7139
	ccf			;713a
l713bh:
	rst 38h			;713b
	rst 38h			;713c
	ret pe			;713d
	rst 38h			;713e
	rst 38h			;713f
	dec b			;7140
	ret nc			;7141
	sub (hl)		;7142
	out (0fch),a		;7143
	jr nc,$-126		;7145
	ld b,a			;7147
	cp h			;7148
	pop bc			;7149
	ld a,0ffh		;714a
	or h			;714c
	exx			;714d
	ex (sp),hl		;714e
	cp (hl)			;714f
	or h			;7150
	call 0abb9h		;7151
	sbc a,d			;7154
	jp z,0e8ffh		;7155
	ret pe			;7158
	nop			;7159
	add a,d			;715a
	push af			;715b
	call p,0f304h		;715c
	add a,(hl)		;715f
	inc (hl)		;7160
	ld b,l			;7161
	rst 38h			;7162
	inc (hl)		;7163
	di			;7164
	di			;7165
	inc bc			;7166
	call p,0f502h		;7167
	add a,c			;716a
	di			;716b
	inc bc			;716c
	call p,05399h		;716d
	push af			;7170
	ld sp,hl		;7171
	call p,0f3f3h		;7172
	inc (hl)		;7175
	ld b,l			;7176
l7177h:
	sub l			;7177
	ld d,h			;7178
	call p,09554h		;7179
	sub l			;717c
	ld d,h			;717d
	ld b,e			;717e
	ld b,e			;717f
	ld sp,hl		;7180
	push af			;7181
	call p,054f5h		;7182
	call p,0f3f4h		;7185
	inc bc			;7188
l7189h:
	call p,0f385h		;7189
	call p,093f5h		;718c
	sub e			;718f
	inc bc			;7190
	ld sp,hl		;7191
	add a,(hl)		;7192
	sub l			;7193
	ld d,h			;7194
	ld b,e			;7195
	ld sp,hl		;7196
	push af			;7197
	call p,0f303h		;7198
	adc a,e			;719b
	inc (hl)		;719c
	di			;719d
	di			;719e
	inc (hl)		;719f
	inc (hl)		;71a0
	ld b,l			;71a1
	di			;71a2
	ld sp,hl		;71a3
	push af			;71a4
	call p,00693h		;71a5
	ld d,e			;71a8
	ld (bc),a		;71a9
l71aah:
	push af			;71aa
	add a,c			;71ab
	ld d,e			;71ac
	inc bc			;71ad
	push af			;71ae
	add a,l			;71af
	ld sp,hl		;71b0
	push af			;71b1
	ld b,h			;71b2
	di			;71b3
	call p,0f309h		;71b4
	ld (bc),a		;71b7
	inc (hl)		;71b8
	ld (bc),a		;71b9
	di			;71ba
	add a,c			;71bb
	call p,0f313h		;71bc
	add a,c			;71bf
	inc (hl)		;71c0
	nop			;71c1
	ret c			;71c2
	nop			;71c3
	inc bc			;71c4
	nop			;71c5
	ld bc,00001h		;71c6
	inc bc			;71c9
	inc bc			;71ca
	nop			;71cb
	halt			;71cc
	nop			;71cd
	ld (hl),h		;71ce
	ld (hl),h		;71cf
	nop			;71d0
	halt			;71d1
l71d2h:
	halt			;71d2
	call pe,000eeh		;71d3
	ld l,a			;71d6
	inc c			;71d7
	ld d,l			;71d8
	ld d,h			;71d9
l71dah:
	ld d,l			;71da
	ld b,b			;71db
	ret po			;71dc
	nop			;71dd
	ld h,b			;71de
	jr nc,l7189h		;71df
	jr z,$-84		;71e1
	xor d			;71e3
l71e4h:
	di			;71e4
	ld l,a			;71e5
l71e6h:
	nop			;71e6
	rst 28h			;71e7
	rst 28h			;71e8
	nop			;71e9
	ld l,a			;71ea
	xor d			;71eb
	jr nc,l71e4h		;71ec
	nop			;71ee
	or 0f6h			;71ef
	nop			;71f1
	or 0efh			;71f2
	rst 28h			;71f4
	nop			;71f5
	ld l,a			;71f6
	inc c			;71f7
	ld d,l			;71f8
	ld d,h			;71f9
	ld d,l			;71fa
	or 0f6h			;71fb
	nop			;71fd
	or 030h			;71fe
	xor d			;7200
	ld hl,(000aah)		;7201
	rst 28h			;7204
	nop			;7205
	ld l,a			;7206
	inc c			;7207
	ld d,l			;7208
	ld d,h			;7209
	ld d,l			;720a
	nop			;720b
	or 000h			;720c
	or 030h			;720e
	xor d			;7210
	ld hl,(0aaaah)		;7211
	djnz $-122		;7214
	nop			;7216
	ret po			;7217
	ret nz			;7218
	nop			;7219
	nop			;721a
	nop			;721b
	rlca			;721c
	djnz l7221h		;721d
	jr nz,$+8		;721f
l7221h:
	djnz l71aah		;7221
	ld hl,01020h		;7223
	djnz $+34		;7226
	djnz $+18		;7228
	inc bc			;722a
	jr nz,l722fh		;722b
	djnz l71d2h		;722d
l722fh:
	jr nz,l7241h		;722f
	djnz l7253h		;7231
	jr nz,$+3		;7233
	ld bc,02020h		;7235
	ld hl,01010h		;7238
	jr nz,l724dh		;723b
	djnz l725fh		;723d
	jr nz,$+35		;723f
l7241h:
	djnz l7253h		;7241
	jr nz,$+35		;7243
	djnz l7257h		;7245
	jr nz,l7259h		;7247
	djnz l726bh		;7249
	jr nz,$+35		;724b
l724dh:
	djnz l725fh		;724d
	jr nz,l7261h		;724f
	djnz $+5		;7251
l7253h:
	jr nz,l7257h		;7253
	djnz l71dah		;7255
l7257h:
	jr nz,l7269h		;7257
l7259h:
	djnz $+5		;7259
	jr nz,l725fh		;725b
	djnz l71e6h		;725d
l725fh:
	jr nz,l7271h		;725f
l7261h:
	djnz l7283h		;7261
	jr nz,l7275h		;7263
	djnz $+5		;7265
	jr nz,l726ch		;7267
l7269h:
	djnz l726bh		;7269
l726bh:
	adc a,a			;726b
l726ch:
	add a,e			;726c
	ld b,00dh		;726d
	dec bc			;726f
	dec de			;7270
l7271h:
	rla			;7271
	ld d,006h		;7272
	ld h,l			;7274
l7275h:
	ld h,l			;7275
	jr nc,l728fh		;7276
	inc de			;7278
	dec bc			;7279
	ex (sp),hl		;727a
	dec b			;727b
	nop			;727c
	and h			;727d
	rrca			;727e
	ld a,(bc)		;727f
	nop			;7280
	rrca			;7281
	ld d,(hl)		;7282
l7283h:
	ld e,e			;7283
	ld e,l			;7284
	nop			;7285
	add hl,bc		;7286
	nop			;7287
	ld e,a			;7288
	nop			;7289
	dec e			;728a
	ld h,d			;728b
	call p,031c9h		;728c
l728fh:
	ld l,l			;728f
	ld e,b			;7290
	nop			;7291
	rlca			;7292
	rrca			;7293
	ld c,01eh		;7294
	inc e			;7296
	inc e			;7297
	inc c			;7298
	ld c,001h		;7299
	ld bc,01f00h		;729b
	rra			;729e
	rst 38h			;729f
	ret po			;72a0
	ret po			;72a1
	dec b			;72a2
	nop			;72a3
	adc a,c			;72a4
	ld bc,00703h		;72a5
	inc b			;72a8
	inc b			;72a9
	ld b,003h		;72aa
	inc bc			;72ac
	ld bc,00005h		;72ad
	ld (bc),a		;72b0
	ret po			;72b1
	add a,e			;72b2
	rst 38h			;72b3
	rra			;72b4
	rra			;72b5
	inc bc			;72b6
	nop			;72b7
	call sub_7cfdh		;72b8
	cp 0c2h			;72bb
	cp 01dh			;72bd
	inc bc			;72bf
	rrca			;72c0
	rrca			;72c1
	dec c			;72c2
	dec c			;72c3
l72c4h:
	ld (hl),h		;72c4
	ret m			;72c5
	dec b			;72c6
	dec a			;72c7
	dec (hl)		;72c8
	ld b,l			;72c9
	ld (hl),047h		;72ca
	sbc a,e			;72cc
	inc (hl)		;72cd
	ld l,c			;72ce
	ld d,h			;72cf
	ld d,l			;72d0
	inc l			;72d1
	dec l			;72d2
	inc c			;72d3
	dec b			;72d4
	ld a,b			;72d5
	add a,(iy+002h)		;72d6
	inc bc			;72d9
	inc bc			;72da
	ld b,00eh		;72db
	call m,sub_7dfch	;72dd
	ld a,c			;72e0
	ld a,h			;72e1
	ccf			;72e2
	cp b			;72e3
	and c			;72e4
	add a,l			;72e5
	call c,0030dh		;72e6
	ld c,0eeh		;72e9
	ret po			;72eb
	call m,0b61dh		;72ec
	ld (hl),0b6h		;72ef
	add a,e			;72f1
	add hl,sp		;72f2
	nop			;72f3
	cp a			;72f4
	nop			;72f5
	cp 0ffh			;72f6
	ld a,a			;72f8
	nop			;72f9
	dec a			;72fa
	add a,b			;72fb
	defb 0fdh,000h,055h ;illegal sequence	;72fc
	inc c			;72ff
	ld l,a			;7300
	nop			;7301
	cpl			;7302
	nop			;7303
	nop			;7304
	cpl			;7305
	nop			;7306
	ld b,010h		;7307
	inc bc			;7309
	jr nz,$-125		;730a
	djnz $+5		;730c
	jr nz,l7337h		;730e
	djnz l7315h		;7310
	ld hl,01007h		;7312
l7315h:
	rlca			;7315
	jr nz,$+9		;7316
	djnz l731dh		;7318
	ld hl,01005h		;731a
l731dh:
	inc bc			;731d
	ld hl,0100bh		;731e
	ex af,af'		;7321
l7322h:
	ld hl,l6185h		;7322
	ld hl,02161h		;7325
	ld h,c			;7328
	inc bc			;7329
	ld hl,02007h		;732a
	ld (bc),a		;732d
	ld hl,02004h		;732e
	add a,(hl)		;7331
	ld h,b			;7332
	djnz $+18		;7333
	jr nz,l7357h		;7335
l7337h:
	djnz l733dh		;7337
l7339h:
	ld hl,01005h		;7339
	add a,e			;733c
l733dh:
	ld hl,02020h		;733d
	dec b			;7340
	djnz l72c4h		;7341
	ld hl,01003h		;7343
	ld (bc),a		;7346
	jr nz,$+4		;7347
	ld hl,00082h		;7349
	ld hl,0a800h		;734c
	nop			;734f
	rst 28h			;7350
	nop			;7351
	ld l,a			;7352
	inc c			;7353
	ld d,l			;7354
	ld d,h			;7355
	ld d,l			;7356
l7357h:
	nop			;7357
	jp 0c318h		;7358
	jr $-59			;735b
	in a,(000h)		;735d
	nop			;735f
	or 000h			;7360
	or 030h			;7362
	xor d			;7364
	ld hl,(0aaaah)		;7365
l7368h:
	di			;7368
	ld l,a			;7369
	nop			;736a
	rst 28h			;736b
	rst 28h			;736c
	nop			;736d
	ld l,a			;736e
	xor d			;736f
	jr nc,l7368h		;7370
	nop			;7372
	or 0f6h			;7373
	nop			;7375
	or 004h			;7376
	nop			;7378
	add a,e			;7379
	cpl			;737a
	nop			;737b
	nop			;737c
	dec b			;737d
	cpl			;737e
	sub h			;737f
	call p,00000h		;7380
	call p,00c55h		;7383
	ld l,a			;7386
	nop			;7387
	cpl			;7388
	nop			;7389
	nop			;738a
	cpl			;738b
	xor d			;738c
	jr nc,$-8		;738d
	nop			;738f
	call p,00000h		;7390
	call p,00300h		;7393
	djnz $-123		;7396
	jr nz,$+18		;7398
	djnz l73a0h		;739a
	jr nz,l7322h		;739c
	djnz $+34		;739e
l73a0h:
	djnz l73c2h		;73a0
	dec b			;73a2
	djnz l7339h		;73a3
	jr nz,l73b7h		;73a5
	djnz l73c9h		;73a7
	jr nz,$+3		;73a9
	ld bc,02020h		;73ab
	ld hl,01010h		;73ae
	jr nz,l73c3h		;73b1
	djnz $+34		;73b3
	jr nz,$+35		;73b5
l73b7h:
	djnz l73c9h		;73b7
	dec b			;73b9
	jr nz,$+4		;73ba
	ld hl,00082h		;73bc
	ld hl,00004h		;73bf
l73c2h:
	ld (bc),a		;73c2
l73c3h:
	ld hl,00092h		;73c3
	ld hl,01010h		;73c6
l73c9h:
	jr nz,l73ebh		;73c9
	ld hl,00021h		;73cb
	ld hl,01010h		;73ce
	jr nz,l73f3h		;73d1
	ld hl,00021h		;73d3
	ld hl,08200h		;73d6
	rrca			;73d9
	inc bc			;73da
	inc bc			;73db
	ld bc,04383h		;73dc
	ex (sp),hl		;73df
	rst 30h			;73e0
	dec b			;73e1
	jp m,00090h		;73e2
	ei			;73e5
	nop			;73e6
	jp m,000fah		;73e7
	or e			;73ea
l73ebh:
	or e			;73eb
	inc bc			;73ec
	or e			;73ed
	or b			;73ee
	rst 38h			;73ef
l73f0h:
	nop			;73f0
	nop			;73f1
	ld a,(hl)		;73f2
l73f3h:
	nop			;73f3
	inc bc			;73f4
	ld a,(hl)		;73f5
	nop			;73f6
	adc a,c			;73f7
	jr nc,l743ah		;73f8
	ret p			;73fa
	jr nc,l744dh		;73fb
	ld b,b			;73fd
	jr nc,l73f0h		;73fe
	ld h,d			;7400
	inc b			;7401
	ld hl,01003h		;7402
	add a,c			;7405
	ld hl,01004h		;7406
	add a,l			;7409
	jr nz,l741ch		;740a
	djnz l742fh		;740c
	ld hl,02003h		;740e
	add a,e			;7411
	ld h,b			;7412
	jr nz,l7425h		;7413
	nop			;7415
	adc a,e			;7416
	rst 8			;7417
	ret p			;7418
	inc a			;7419
	ld c,0c6h		;741a
l741ch:
	rst 20h			;741c
	di			;741d
	inc bc			;741e
	ei			;741f
	call m,003feh		;7420
	ld a,a			;7423
	sbc a,b			;7424
l7425h:
	ccf			;7425
	nop			;7426
	sbc a,a			;7427
	ret po			;7428
	inc a			;7429
	rrca			;742a
	rst 0			;742b
	di			;742c
	ret m			;742d
	inc b			;742e
l742fh:
	rst 30h			;742f
	ret m			;7430
	and 01eh		;7431
	ret m			;7433
	rst 30h			;7434
	rrca			;7435
	ret m			;7436
	ret m			;7437
	ld b,00eh		;7438
l743ah:
	ex (sp),hl		;743a
	inc h			;743b
	jr l7441h		;743c
	jr nc,$-91		;743e
	and h			;7440
l7441h:
	inc e			;7441
	pop af			;7442
	ex af,af'		;7443
	inc b			;7444
	inc bc			;7445
	rst 38h			;7446
	call m,007fch		;7447
	pop af			;744a
	sbc a,h			;744b
	ret m			;744c
l744dh:
	ret p			;744d
	rst 38h			;744e
	ld c,a			;744f
	ld h,a			;7450
	ld h,a			;7451
	or e			;7452
	defb 0ddh,0ffh,081h ;illegal sequence	;7453
	sbc a,c			;7456
	ex af,af'		;7457
	ret p			;7458
	inc hl			;7459
	ld b,a			;745a
	adc a,e			;745b
	sub b			;745c
	jr c,l748dh		;745d
	ld h,a			;745f
	ld b,a			;7460
	defb 0fdh,0c7h,003h ;illegal sequence	;7461
	ld b,l			;7464
	add a,d			;7465
	rst 38h			;7466
	sbc a,l			;7467
	inc b			;7468
	rlc d			;7469
	sbc a,l			;746b
	adc a,c			;746c
	dec a			;746d
	sub l			;746e
	sub l			;746f
	rst 38h			;7470
	and l			;7471
	and l			;7472
	rst 38h			;7473
	inc hl			;7474
	dec e			;7475
	nop			;7476
	inc b			;7477
	sub h			;7478
	inc b			;7479
	ld d,h			;747a
	add a,c			;747b
	sub h			;747c
	rlca			;747d
	ld d,h			;747e
	xor c			;747f
l7480h:
	sub h			;7480
	sub l			;7481
	sub h			;7482
	sub h			;7483
	ld d,h			;7484
	ld d,e			;7485
	ld d,e			;7486
	call p,05393h		;7487
	ld b,e			;748a
	ld d,e			;748b
	sub h			;748c
l748dh:
	ld d,h			;748d
	ld d,h			;748e
	call p,054f5h		;748f
	ld d,e			;7492
	push af			;7493
	ld sp,hl		;7494
	sub l			;7495
l7496h:
	sub e			;7496
	sbc a,a			;7497
	ccf			;7498
	call p,0f953h		;7499
	ld sp,hl		;749c
l749dh:
	push af			;749d
	di			;749e
	di			;749f
	call p,05345h		;74a0
	push af			;74a3
	sub e			;74a4
	sub l			;74a5
	ld d,e			;74a6
l74a7h:
	push af			;74a7
	push af			;74a8
	ld b,0f4h		;74a9
	add a,l			;74ab
	di			;74ac
	push af			;74ad
	ld sp,hl		;74ae
	ld sp,hl		;74af
	push af			;74b0
	dec b			;74b1
	call p,0f38bh		;74b2
	call p,0f5f9h		;74b5
	call p,0f3f3h		;74b8
	ld sp,hl		;74bb
	ld sp,hl		;74bc
	push af			;74bd
	push af			;74be
	inc bc			;74bf
	call p,0f302h		;74c0
	ld (bc),a		;74c3
	call p,0f885h		;74c4
	defb 0fdh,0fdh,0f4h ;illegal sequence	;74c7
	push af			;74ca
	nop			;74cb
	inc b			;74cc
	ccf			;74cd
	add a,c			;74ce
	nop			;74cf
	inc bc			;74d0
	dec (hl)		;74d1
	and b			;74d2
	dec b			;74d3
	jr nc,l750bh		;74d4
	dec (hl)		;74d6
	inc (hl)		;74d7
	ld bc,03535h		;74d8
	ret nc			;74db
	inc b			;74dc
	call nc,014d4h		;74dd
	ret nz			;74e0
	call nc,0c0d4h		;74e1
	ld c,a			;74e4
	add hl,bc		;74e5
	ld b,b			;74e6
	ld c,c			;74e7
	add hl,bc		;74e8
	ld c,c			;74e9
	nop			;74ea
	rlca			;74eb
sub_74ech:
	ld (hl),l		;74ec
	ld d,c			;74ed
	dec b			;74ee
	ld d,l			;74ef
	ld d,c			;74f0
	ld d,l			;74f1
	nop			;74f2
	inc b			;74f3
	call m,00081h		;74f4
	inc bc			;74f7
	call nc,08100h		;74f8
	jr nz,l7501h		;74fb
	djnz l7480h		;74fd
	jr nz,$+5		;74ff
l7501h:
	djnz l7505h		;7501
	jr nz,l7507h		;7503
l7505h:
	djnz $-125		;7505
l7507h:
	jr nz,$+5		;7507
	djnz l750dh		;7509
l750bh:
	jr nz,l750fh		;750b
l750dh:
	djnz l7496h		;750d
l750fh:
	jr nz,$+18		;750f
	djnz l7533h		;7511
l7513h:
	djnz $+18		;7513
	jr nz,l751bh		;7515
	djnz l749dh		;7517
	jr nz,l752bh		;7519
l751bh:
	djnz l753dh		;751b
	inc b			;751d
	djnz $-125		;751e
	jr nz,l7526h		;7520
	djnz l74a7h		;7522
	jr nz,l7536h		;7524
l7526h:
	djnz l7528h		;7526
l7528h:
	sub b			;7528
	adc a,a			;7529
	add a,e			;752a
l752bh:
	ld b,a			;752b
	cpl			;752c
	rra			;752d
	di			;752e
	rlca			;752f
	rrca			;7530
	or c			;7531
	pop hl			;7532
l7533h:
	pop bc			;7533
	rst 20h			;7534
	ld sp,hl		;7535
l7536h:
	pop hl			;7536
	pop bc			;7537
	or e			;7538
	nop			;7539
	add a,l			;753a
	cp 0f9h			;753b
l753dh:
	ld sp,hl		;753d
	push af			;753e
	push af			;753f
	inc bc			;7540
	defb 0fdh,088h,0f5h ;illegal sequence	;7541
	cp 0f9h			;7544
	push af			;7546
	push af			;7547
	cp 0f9h			;7548
	push af			;754a
	nop			;754b
	inc b			;754c
	nop			;754d
	add a,(hl)		;754e
	ld (bc),a		;754f
	ld c,026h		;7550
	cp e			;7552
	ld (bc),a		;7553
	ld (bc),a		;7554
	dec c			;7555
	nop			;7556
	add a,c			;7557
	sub b			;7558
	inc b			;7559
	nop			;755a
	add a,h			;755b
	ld bc,0f703h		;755c
	ld a,e			;755f
	inc b			;7560
	nop			;7561
	add a,(hl)		;7562
	inc bc			;7563
	rlca			;7564
	rlca			;7565
	inc bc			;7566
	inc b			;7567
	ld b,003h		;7568
	rlca			;756a
	rlca			;756b
	nop			;756c
	add a,h			;756d
	ret nz			;756e
	ret p			;756f
	dec bc			;7570
	add a,a			;7571
	inc bc			;7572
	nop			;7573
	sub l			;7574
	ret nz			;7575
	ret nc			;7576
	ld b,a			;7577
	ld b,e			;7578
	adc a,a			;7579
	ex af,af'		;757a
	dec c			;757b
	add a,a			;757c
	jp l678ch		;757d
	sbc a,a			;7580
l7581h:
	add hl,bc		;7581
	nop			;7582
	dec b			;7583
	jp nc,0f2e2h		;7584
	rst 18h			;7587
	add a,(hl)		;7588
	add hl,bc		;7589
	nop			;758a
	inc b			;758b
	djnz l7513h		;758c
	ld d,b			;758e
	ret po			;758f
	sub b			;7590
	push af			;7591
	add a,b			;7592
	inc e			;7593
	ret po			;7594
	add a,a			;7595
	add a,b			;7596
	ret p			;7597
	ret nc			;7598
	ret po			;7599
	ret nc			;759a
	ret p			;759b
	add a,b			;759c
	ex af,af'		;759d
	ret nc			;759e
	ld (bc),a		;759f
	ret po			;75a0
	add a,d			;75a1
	ret pe			;75a2
	ret m			;75a3
	dec b			;75a4
	ret po			;75a5
	add a,a			;75a6
	cp 0f9h			;75a7
	ld sp,hl		;75a9
	ret nc			;75aa
	add a,b			;75ab
	add a,b			;75ac
	ret nc			;75ad
	inc b			;75ae
	defb 0fdh,002h,0e0h ;illegal sequence	;75af
	ld (bc),a		;75b2
	ld sp,hl		;75b3
	add a,c			;75b4
	push af			;75b5
	inc bc			;75b6
	defb 0fdh,000h,0b8h ;illegal sequence	;75b7
	ld b,e			;75ba
	ld (04951h),hl		;75bb
	call c,00103h		;75be
	sub b			;75c1
	nop			;75c2
	nop			;75c3
	rla			;75c4
	ld a,e			;75c5
	cp e			;75c6
	ret nc			;75c7
	defb 0ddh,0e0h,0d8h ;illegal sequence	;75c8
	ret po			;75cb
	ld c,007h		;75cc
	jr $-30			;75ce
	inc bc			;75d0
	nop			;75d1
	call po,01933h		;75d2
	adc a,h			;75d5
	ld a,b			;75d6
	ld a,b			;75d7
	inc bc			;75d8
	adc a,a			;75d9
	sub c			;75da
	ret nc			;75db
	ld l,b			;75dc
	inc a			;75dd
	adc a,h			;75de
	ld h,c			;75df
	sbc a,a			;75e0
	add hl,bc		;75e1
	defb 0edh ;next byte illegal after ed	;75e2
	rla			;75e3
	rra			;75e4
	cp a			;75e5
	rst 38h			;75e6
	rst 38h			;75e7
	cp a			;75e8
	cp a			;75e9
	sbc a,a			;75ea
	jp z,0e2d2h		;75eb
	jp p,084dfh		;75ee
	ex af,af'		;75f1
	nop			;75f2
	add a,a			;75f3
	defb 0fdh,0f8h,0f8h ;illegal sequence	;75f4
	cp 0feh			;75f7
	add a,b			;75f9
	ret nc			;75fa
	inc b			;75fb
	ret po			;75fc
	ld (bc),a		;75fd
	call po,0e986h		;75fe
	sub h			;7601
	sub l			;7602
	ret nc			;7603
	ret m			;7604
	ret c			;7605
	inc bc			;7606
	defb 0fdh,002h,0d0h ;illegal sequence	;7607
	adc a,e			;760a
	ret m			;760b
	cp 0f8h			;760c
	defb 0fdh,0feh,0e8h ;illegal sequence	;760e
	ret m			;7611
	ret m			;7612
	defb 0fdh,0f8h,0f8h ;illegal sequence	;7613
	dec b			;7616
	defb 0fdh,081h,053h ;illegal sequence	;7617
	dec b			;761a
	call p,0f981h		;761b
	inc bc			;761e
	cp 002h			;761f
	ld sp,hl		;7621
	add a,c			;7622
	push af			;7623
	inc bc			;7624
	defb 0fdh,000h,091h ;illegal sequence	;7625
	pop bc			;7628
	rst 20h			;7629
	add a,c			;762a
	inc e			;762b
	ld a,01ch		;762c
	nop			;762e
	add a,c			;762f
	add a,c			;7630
	nop			;7631
	inc e			;7632
	ld a,01ch		;7633
	add a,c			;7635
	rst 20h			;7636
	ld a,00dh		;7637
	inc bc			;7639
	inc b			;763a
	and h			;763b
	ld (hl),h		;763c
	adc a,h			;763d
	ld (hl),h		;763e
	call m,0ed13h		;763f
	ret m			;7642
	ld (de),a		;7643
	call z,090d9h		;7644
	ld (09032h),a		;7647
	exx			;764a
	call z,0f812h		;764b
	defb 0edh ;next byte illegal after ed	;764e
	inc de			;764f
	add a,a			;7650
	ld a,07dh		;7651
	ei			;7653
	ld a,e			;7654
	sbc a,e			;7655
	bit 4,e			;7656
	ld h,e			;7658
	res 3,e			;7659
	ld a,e			;765b
	ei			;765c
	ld a,l			;765d
	ld a,087h		;765e
	nop			;7660
	add a,e			;7661
	ld c,h			;7662
	ret			;7663
	ret			;7664
	inc b			;7665
	jp (hl)			;7666
	inc bc			;7667
	ret			;7668
	inc bc			;7669
	jp (hl)			;766a
	ld (bc),a		;766b
	ret			;766c
	add a,e			;766d
	call nz,0f330h		;766e
	inc bc			;7671
	call p,0fc04h		;7672
	add a,l			;7675
	call nz,0fcc3h		;7676
	jp 00453h		;7679
	ld b,e			;767c
	adc a,b			;767d
	ld d,e			;767e
	jp 0c3fch		;767f
	call nz,0c4fch		;7682
	jp 05303h		;7685
	ld b,043h		;7688
	inc bc			;768a
	ld d,e			;768b
	add a,d			;768c
	jp 000c4h		;768d
	inc bc			;7690
	nop			;7691
	add a,e			;7692
	ld c,007h		;7693
	ld bc,00006h		;7695
	add a,a			;7698
	ret nz			;7699
	ret p			;769a
	ld a,h			;769b
	ccf			;769c
	rrca			;769d
	inc bc			;769e
	ld bc,00005h		;769f
	adc a,b			;76a2
	add a,b			;76a3
	ret po			;76a4
	ret p			;76a5
	call m,03f7eh		;76a6
	rra			;76a9
	rra			;76aa
	ld b,000h		;76ab
	add a,d			;76ad
	add a,b			;76ae
	ret nz			;76af
	ld b,000h		;76b0
	add a,d			;76b2
	rlca			;76b3
	ccf			;76b4
	inc b			;76b5
	nop			;76b6
	add a,h			;76b7
	rra			;76b8
	rst 38h			;76b9
	inc e			;76ba
	call m,00300h		;76bb
	djnz l76cah		;76be
	ld b,b			;76c0
	ld (bc),a		;76c1
	ld d,b			;76c2
	add hl,bc		;76c3
	ret nz			;76c4
	ld e,090h		;76c5
	ld (bc),a		;76c7
	ret			;76c8
	nop			;76c9
l76cah:
	add a,(hl)		;76ca
	ld sp,hl		;76cb
	cp 07fh			;76cc
	rra			;76ce
	rlca			;76cf
	inc bc			;76d0
	inc b			;76d1
	ld bc,00386h		;76d2
	rlca			;76d5
	rra			;76d6
	ld a,a			;76d7
	cp 0f9h			;76d8
	inc b			;76da
	nop			;76db
	add a,h			;76dc
	ret p			;76dd
	rst 38h			;76de
	ld sp,hl		;76df
	ld sp,hl		;76e0
	dec b			;76e1
	nop			;76e2
	adc a,e			;76e3
	ld bc,0f8e0h		;76e4
	nop			;76e7
	nop			;76e8
	rlca			;76e9
	rra			;76ea
	ld a,a			;76eb
	jr nc,$-48		;76ec
	sbc a,l			;76ee
	inc bc			;76ef
	ld bc,00385h		;76f0
	rlca			;76f3
	rrca			;76f4
	ccf			;76f5
	ld a,000h		;76f6
	ld (bc),a		;76f8
	call nz,0900ch		;76f9
	ld (bc),a		;76fc
	call nz,09006h		;76fd
	ld (bc),a		;7700
	ret			;7701
	ld b,040h		;7702
	add a,d			;7704
	sub h			;7705
	push bc			;7706
	dec b			;7707
	ld b,b			;7708
	adc a,e			;7709
	ld d,h			;770a
	ld d,e			;770b
	ld d,e			;770c
	ret nz			;770d
	ret nz			;770e
	jr nc,$+66		;770f
	jr nc,l7753h		;7711
	jr nc,l7758h		;7713
	nop			;7715
	call p,01704h		;7716
	scf			;7719
	djnz $+18		;771a
	ret p			;771c
	djnz l772fh		;771d
	scf			;771f
	jr c,$-14		;7720
	ret nz			;7722
	nop			;7723
	ret p			;7724
	di			;7725
	and 086h		;7726
	call 03bf9h		;7728
	defb 0ddh,0ceh,0e7h ;illegal sequence	;772b
	di			;772e
l772fh:
	ld b,006h		;772f
	ld c,01ch		;7731
	dec de			;7733
	scf			;7734
	ld b,a			;7735
	inc bc			;7736
	call z,03162h		;7737
	inc bc			;773a
	inc e			;773b
	ret m			;773c
	pop de			;773d
	inc c			;773e
	ld a,(l7d78h)		;773f
	dec b			;7742
	ret m			;7743
	call m,sub_7e38h	;7744
	ld a,a			;7747
	ld a,a			;7748
	call m,0cff3h		;7749
	cp h			;774c
	ld (hl),e		;774d
	rst 28h			;774e
	call z,03399h		;774f
	ld h,a			;7752
l7753h:
	rst 8			;7753
	ld h,b			;7754
	ld b,b			;7755
	ret nz			;7756
	add a,b			;7757
l7758h:
	add a,b			;7758
	add a,c			;7759
	pop bc			;775a
	dec e			;775b
	jp m,l7b03h		;775c
	add hl,sp		;775f
	ret po			;7760
	ccf			;7761
	ld a,(hl)		;7762
	ld a,(hl)		;7763
	ld a,l			;7764
	ld a,l			;7765
	ld a,e			;7766
	ld a,e			;7767
	ld a,d			;7768
	ld (hl),074h		;7769
	inc sp			;776b
	rrca			;776c
	rst 0			;776d
	jp 03f1fh		;776e
	ccf			;7771
	rlca			;7772
	rlca			;7773
	ld h,a			;7774
	djnz $-69		;7775
	jr l77ach		;7777
	ld l,a			;7779
	rst 18h			;777a
	pop bc			;777b
	rst 38h			;777c
	ccf			;777d
	inc bc			;777e
	dec e			;777f
	dec de			;7780
	dec sp			;7781
	dec sp			;7782
	ld (hl),e		;7783
	ld (hl),c		;7784
	ld (hl),a		;7785
	ld (hl),a		;7786
	ccf			;7787
	nop			;7788
	ld a,a			;7789
	inc e			;778a
	inc bc			;778b
	ret po			;778c
	add a,c			;778d
	rra			;778e
	dec b			;778f
	ld a,a			;7790
	sub h			;7791
	ccf			;7792
	rra			;7793
	rst 8			;7794
	ccf			;7795
	ret p			;7796
	inc a			;7797
	rrca			;7798
	inc bc			;7799
	ld bc,0c0c0h		;779a
	rlca			;779d
	rra			;779e
	cp b			;779f
	ret nc			;77a0
	xor 06ch		;77a1
	ld a,l			;77a3
	pop hl			;77a4
	djnz l77aah		;77a5
	ret p			;77a7
	sub l			;77a8
	add a,b			;77a9
l77aah:
	rst 8			;77aa
	adc a,a			;77ab
l77ach:
	rrca			;77ac
	inc c			;77ad
	ret nz			;77ae
	ret p			;77af
	call m,00f3fh		;77b0
	ex (sp),hl		;77b3
	ret m			;77b4
	inc bc			;77b5
	rlca			;77b6
	rrca			;77b7
	ret po			;77b8
	ret m			;77b9
	ret po			;77ba
	inc e			;77bb
	jp po,00393h		;77bc
	cp e			;77bf
	or a			;77c0
	dec sp			;77c1
	add hl,sp		;77c2
	ld b,a			;77c3
	ld b,a			;77c4
	ld b,03bh		;77c5
	ld h,b			;77c7
	rst 0			;77c8
	sbc a,a			;77c9
	ld a,07dh		;77ca
	dec sp			;77cc
	jp nz,08243h		;77cd
	ld b,a			;77d0
	ld a,(03887h)		;77d1
	inc bc			;77d4
	ld b,0cch		;77d5
	ld (de),a		;77d7
	cp b			;77d8
	ld h,d			;77d9
	ex (sp),hl		;77da
	and d			;77db
	jp 01ef8h		;77dc
	ld c,006h		;77df
	inc bc			;77e1
	inc bc			;77e2
	ld bc,00c01h		;77e3
	ld (hl),e		;77e6
	add a,a			;77e7
	rra			;77e8
	ret m			;77e9
	ret po			;77ea
	add a,b			;77eb
	nop			;77ec
	call z,0c7f3h		;77ed
	rra			;77f0
	ret m			;77f1
	ret po			;77f2
	add a,b			;77f3
	nop			;77f4
	sub e			;77f5
	cp e			;77f6
	cp e			;77f7
	inc bc			;77f8
	ld de,0c68bh		;77f9
	ld de,0f7f0h		;77fc
	and 0eeh		;77ff
	adc a,09eh		;7801
	cp (hl)			;7803
	dec a			;7804
	dec a			;7805
	inc bc			;7806
	ld a,l			;7807
	sbc a,c			;7808
	ld a,c			;7809
	ld (hl),b		;780a
	ld a,b			;780b
	ld (062cch),a		;780c
	ld sp,01e07h		;780f
	call m,009c3h		;7812
	rra			;7815
	ret nz			;7816
	ret nz			;7817
	rst 38h			;7818
l7819h:
	cp a			;7819
	ret nz			;781a
	adc a,a			;781b
	ccf			;781c
	rrca			;781d
	rrca			;781e
	inc bc			;781f
	rlca			;7820
	add a,a			;7821
	rlca			;7822
	rst 0			;7823
	ld (bc),a		;7824
	rst 10h			;7825
	ld (bc),a		;7826
	and a			;7827
	ret nz			;7828
	ld a,a			;7829
	rra			;782a
	inc c			;782b
	inc e			;782c
	ld b,b			;782d
	ret nz			;782e
	adc a,a			;782f
	ccf			;7830
	ld bc,08301h		;7831
	rst 0			;7834
	cp 0fch			;7835
	pop af			;7837
	rlca			;7838
	inc h			;7839
	inc h			;783a
	ld h,013h		;783b
	add hl,bc		;783d
	ccf			;783e
	call m,08d0fh		;783f
	ld a,e			;7842
	ei			;7843
	rst 30h			;7844
	or 06eh			;7845
	ld l,l			;7847
	ld e,l			;7848
	rlca			;7849
	add hl,sp		;784a
	ld h,b			;784b
	rst 0			;784c
	sbc a,a			;784d
	ld a,07dh		;784e
	dec sp			;7850
	call pe,0c0f8h		;7851
	ret m			;7854
	ld sp,iy		;7855
	jp p,0b2cah		;7857
	ld h,c			;785a
	call z,0409eh		;785b
	ret nz			;785e
l785fh:
	add a,b			;785f
	add a,b			;7860
	jp p,l7ffbh		;7861
	ccf			;7864
	rra			;7865
	rra			;7866
	rrca			;7867
	rrca			;7868
	nop			;7869
	add a,h			;786a
	call m,054c5h		;786b
	ld sp,hl		;786e
	dec b			;786f
	call m,0c381h		;7870
	rlca			;7873
	call nz,05402h		;7874
	ld (bc),a		;7877
	ld b,e			;7878
	add a,c			;7879
	ld d,h			;787a
	inc b			;787b
	push bc			;787c
	ld (bc),a		;787d
	ld d,h			;787e
	ld b,043h		;787f
	add a,h			;7881
	ld d,e			;7882
	jp 0fc53h		;7883
	dec b			;7886
	ld d,e			;7887
	add a,e			;7888
	push af			;7889
	ld d,e			;788a
	ld d,h			;788b
	inc b			;788c
	push bc			;788d
	add a,e			;788e
	call nz,0c5c5h		;788f
	dec b			;7892
	call nz,09503h		;7893
	rlca			;7896
	ret			;7897
	add a,e			;7898
	sub l			;7899
	ret			;789a
	sub l			;789b
	inc bc			;789c
	ret			;789d
	ld (bc),a		;789e
	sub l			;789f
	rlca			;78a0
	sbc a,h			;78a1
	ld (bc),a		;78a2
	push bc			;78a3
	adc a,d			;78a4
	sub l			;78a5
	ret			;78a6
	sub l			;78a7
	sub l			;78a8
	sub h			;78a9
	sbc a,h			;78aa
	sbc a,h			;78ab
	push bc			;78ac
	ld d,h			;78ad
	ld d,h			;78ae
	dec b			;78af
	ld b,e			;78b0
	ld a,(bc)		;78b1
	ld d,h			;78b2
	inc b			;78b3
	ld b,e			;78b4
	add a,h			;78b5
	push bc			;78b6
	jp (hl)			;78b7
	ret			;78b8
	ld c,h			;78b9
	inc bc			;78ba
	sub l			;78bb
	inc bc			;78bc
	sbc a,h			;78bd
	add a,c			;78be
	sub h			;78bf
	inc b			;78c0
	sub l			;78c1
	ld b,0c9h		;78c2
	adc a,d			;78c4
	ld e,c			;78c5
	ld d,e			;78c6
	jp 05353h		;78c7
	ld b,e			;78ca
	ld d,h			;78cb
	push bc			;78cc
	jp 004f3h		;78cd
	ld b,e			;78d0
	inc bc			;78d1
	jr nc,l785fh		;78d2
	di			;78d4
	ld d,e			;78d5
	jp 0c394h		;78d6
	ld d,e			;78d9
	ld b,e			;78da
	jp 054c5h		;78db
	ld b,e			;78de
	inc bc			;78df
	jp 0c485h		;78e0
	jp 0f5f4h		;78e3
	call m,0f903h		;78e6
	add a,c			;78e9
	call nz,05404h		;78ea
	ld (bc),a		;78ed
	call nz,09402h		;78ee
	add a,e			;78f1
	call nz,0f5fch		;78f2
	inc bc			;78f5
	call p,0f388h		;78f6
	ld sp,hl		;78f9
	ld sp,hl		;78fa
	call m,0fcc4h		;78fb
	jp 003fch		;78fe
	ld sp,hl		;7901
	ld (bc),a		;7902
	di			;7903
	ld (bc),a		;7904
	call p,0f585h		;7905
	call m,0f4f5h		;7908
	ld d,e			;790b
	inc bc			;790c
	call nz,0c904h		;790d
	add a,c			;7910
	sub h			;7911
	inc bc			;7912
	call nz,0c908h		;7913
	add a,a			;7916
	push bc			;7917
	ld e,a			;7918
	call m,0c5f5h		;7919
	ld d,h			;791c
	ld d,h			;791d
	inc b			;791e
	ld b,e			;791f
	inc bc			;7920
	ld d,e			;7921
	add a,l			;7922
	ld d,h			;7923
	call nz,0c5c5h		;7924
	ld d,h			;7927
	inc bc			;7928
	ld b,e			;7929
	ld (bc),a		;792a
	ld d,e			;792b
	add a,d			;792c
	ld b,e			;792d
	di			;792e
	inc bc			;792f
	ld d,e			;7930
	add a,c			;7931
	jp 04c03h		;7932
	ld (bc),a		;7935
	push bc			;7936
	add a,e			;7937
	sub l			;7938
	push bc			;7939
	push bc			;793a
	dec b			;793b
	sub l			;793c
	ld b,09ch		;793d
	inc b			;793f
	sub l			;7940
	adc a,b			;7941
	push hl			;7942
	sub l			;7943
	ld d,h			;7944
	call nz,0c5c5h		;7945
	sub l			;7948
	call p,0f30dh		;7949
	add a,e			;794c
	call p,05343h		;794d
	ld a,(bc)		;7950
	ld d,h			;7951
	ld (bc),a		;7952
	call nz,09402h		;7953
	inc bc			;7956
	call nz,09502h		;7957
	dec b			;795a
	sub h			;795b
	inc bc			;795c
	sub l			;795d
l795eh:
	ld b,0c9h		;795e
	add a,d			;7960
	push bc			;7961
	call nz,0c303h		;7962
	add a,c			;7965
	call nz,08500h		;7966
	rrca			;7969
	rlca			;796a
	inc bc			;796b
	ld bc,00301h		;796c
	nop			;796f
	inc bc			;7970
	ld bc,00303h		;7971
	ld (bc),a		;7974
	ld bc,00004h		;7975
	adc a,c			;7978
	dec a			;7979
	ld a,a			;797a
	rst 0			;797b
	or e			;797c
	nop			;797d
	ccf			;797e
	rrca			;797f
	rlca			;7980
	inc bc			;7981
	inc b			;7982
	ld bc,00304h		;7983
	inc bc			;7986
	rlca			;7987
	add a,c			;7988
	add a,b			;7989
	inc b			;798a
	ret nz			;798b
	inc bc			;798c
	ret po			;798d
	add a,e			;798e
	rra			;798f
	rrca			;7990
	rlca			;7991
	dec b			;7992
	nop			;7993
	add a,d			;7994
	ret m			;7995
	ret nz			;7996
	ld b,000h		;7997
	add a,l			;7999
	rst 38h			;799a
	call m,0e0f0h		;799b
	ret nz			;799e
	inc bc			;799f
	add a,b			;79a0
	add a,l			;79a1
	nop			;79a2
	inc bc			;79a3
	rlca			;79a4
	rrca			;79a5
	rrca			;79a6
	inc bc			;79a7
	rra			;79a8
	ld b,000h		;79a9
	add a,d			;79ab
	call m,0066ch		;79ac
	nop			;79af
	add a,a			;79b0
	ccf			;79b1
	sbc a,a			;79b2
	nop			;79b3
	nop			;79b4
	ld bc,00303h		;79b5
	inc bc			;79b8
	rlca			;79b9
	nop			;79ba
	add a,e			;79bb
	sub b			;79bc
	ret nz			;79bd
	ret nz			;79be
	ld de,08550h		;79bf
	ld b,b			;79c2
	ld d,b			;79c3
	ld d,e			;79c4
	jp 006c3h		;79c5
	jr nc,$+20		;79c8
	ld b,b			;79ca
	ld d,030h		;79cb
	inc bc			;79cd
	ld b,b			;79ce
	ld (bc),a		;79cf
	ld d,b			;79d0
	ld (bc),a		;79d1
	ld b,b			;79d2
	add a,c			;79d3
	jr nc,l79ddh		;79d4
	ret p			;79d6
	add a,d			;79d7
	jr nc,l7a1dh		;79d8
	rlca			;79da
	jr nc,l795eh		;79db
l79ddh:
	ld b,e			;79dd
	inc bc			;79de
	jr nc,l79e3h		;79df
	ld b,b			;79e1
	add a,e			;79e2
l79e3h:
	ld d,b			;79e3
	ret nz			;79e4
	ld d,b			;79e5
	nop			;79e6
	or d			;79e7
	inc de			;79e8
	ld h,a			;79e9
	and 0cdh		;79ea
	call 0cbdbh		;79ec
	ret			;79ef
	ccf			;79f0
	nop			;79f1
	nop			;79f2
	ld a,h			;79f3
	ex (sp),hl		;79f4
	ex (sp),hl		;79f5
	ld a,0e2h		;79f6
	cp 03fh			;79f8
l79fah:
	rrca			;79fa
	rst 20h			;79fb
	di			;79fc
	ei			;79fd
	ld sp,08c81h		;79fe
	halt			;7a01
	jp m,01901h		;7a02
	dec h			;7a05
	cp (hl)			;7a06
	rst 0			;7a07
	djnz l79fah		;7a08
	djnz l7a14h		;7a0a
	ex af,af'		;7a0c
	add a,b			;7a0d
	ret nz			;7a0e
	pop hl			;7a0f
	ret m			;7a10
	defb 0fdh,0fch,0fdh ;illegal sequence	;7a11
l7a14h:
	ld a,h			;7a14
	dec a			;7a15
	ex (sp),hl		;7a16
	jp po,04827h		;7a17
	inc bc			;7a1a
	ld d,b			;7a1b
	adc a,e			;7a1c
l7a1dh:
	ret pe			;7a1d
	dec bc			;7a1e
	rra			;7a1f
	inc bc			;7a20
	rlca			;7a21
	rrca			;7a22
	ret po			;7a23
	jr c,l7a32h		;7a24
	jp nz,00068h		;7a26
	add a,h			;7a29
	jp 05453h		;7a2a
	ld d,e			;7a2d
	ld b,043h		;7a2e
	adc a,c			;7a30
	sbc a,c			;7a31
l7a32h:
	call m,04ef4h		;7a32
	ld d,h			;7a35
	push bc			;7a36
	ld d,e			;7a37
	ld d,h			;7a38
	ld d,e			;7a39
	dec b			;7a3a
	ld b,e			;7a3b
	inc bc			;7a3c
	call m,0c303h		;7a3d
	inc b			;7a40
	call m,0f985h		;7a41
	push af			;7a44
	call m,09495h		;7a45
	inc bc			;7a48
	sub e			;7a49
	ld (bc),a		;7a4a
	sub h			;7a4b
	ld (bc),a		;7a4c
	sub l			;7a4d
	ex af,af'		;7a4e
	ret			;7a4f
	adc a,d			;7a50
	push bc			;7a51
	ld d,h			;7a52
	push bc			;7a53
	ld d,h			;7a54
	ld b,e			;7a55
	sub e			;7a56
	ld d,e			;7a57
	ld d,e			;7a58
	ld b,e			;7a59
	ld d,e			;7a5a
	nop			;7a5b
	ex af,af'		;7a5c
	rst 38h			;7a5d
	ld (bc),a		;7a5e
	ld a,e			;7a5f
	adc a,d			;7a60
	ld (hl),a		;7a61
	ld c,a			;7a62
	cp a			;7a63
	ex (sp),hl		;7a64
	sbc a,l			;7a65
	ld a,(hl)		;7a66
	pop af			;7a67
	call m,03386h		;7a68
	inc bc			;7a6b
	ld a,e			;7a6c
	defb 0ddh,0b7h,09dh ;illegal sequence	;7a6d
	ld a,b			;7a70
	ret po			;7a71
	nop			;7a72
	nop			;7a73
	cp 0ffh			;7a74
	ccf			;7a76
	or a			;7a77
	in a,(00dh)		;7a78
	call p,03202h		;7a7a
	ld a,c			;7a7d
	defb 0fdh,0a5h ;and iyl	;7a7e
	call z,05848h		;7a80
	ld b,b			;7a83
	nop			;7a84
	rlca			;7a85
	dec sp			;7a86
	ret p			;7a87
	ld a,a			;7a88
	rrca			;7a89
	pop hl			;7a8a
	call z,0dedeh		;7a8b
	dec e			;7a8e
	defb 0fdh,00dh,0fdh ;illegal sequence	;7a8f
	dec c			;7a92
	ld (bc),a		;7a93
	ld (bc),a		;7a94
	rst 38h			;7a95
	rra			;7a96
	rlca			;7a97
	ccf			;7a98
	ret m			;7a99
	ret nz			;7a9a
	ret m			;7a9b
	ret nz			;7a9c
	ret m			;7a9d
	ret nz			;7a9e
	jp 0fff8h		;7a9f
	call m,07e7fh		;7aa2
	ld a,a			;7aa5
	ld a,a			;7aa6
	inc a			;7aa7
	ret po			;7aa8
	pop bc			;7aa9
	ld a,000h		;7aaa
	rrca			;7aac
	ld bc,0e3f0h		;7aad
	inc bc			;7ab0
	and 006h		;7ab1
	and 00ch		;7ab3
	nop			;7ab5
	inc bc			;7ab6
	rlca			;7ab7
	rra			;7ab8
	ccf			;7ab9
	nop			;7aba
	nop			;7abb
	ret po			;7abc
	inc a			;7abd
	add a,a			;7abe
	ret po			;7abf
	di			;7ac0
	ld bc,0fe8fh		;7ac1
l7ac4h:
	ld (hl),b		;7ac4
	ld a,a			;7ac5
	ccf			;7ac6
	ret po			;7ac7
	pop af			;7ac8
	ret po			;7ac9
	ret po			;7aca
	inc bc			;7acb
	ret nz			;7acc
	add a,c			;7acd
	ret p			;7ace
	rlca			;7acf
	rrca			;7ad0
	sub c			;7ad1
	ret po			;7ad2
	rst 8			;7ad3
	ld h,a			;7ad4
	or e			;7ad5
	ret c			;7ad6
	cpl			;7ad7
	add a,d			;7ad8
	jp po,01f76h		;7ad9
l7adch:
	rra			;7adc
	rst 38h			;7add
	rrca			;7ade
	rrca			;7adf
	ret p			;7ae0
	ret p			;7ae1
	nop			;7ae2
	nop			;7ae3
	add hl,bc		;7ae4
	sub e			;7ae5
	add a,d			;7ae6
	jp 00453h		;7ae7
	ld b,e			;7aea
	inc b			;7aeb
	ld d,e			;7aec
	add a,e			;7aed
	jp 0c393h		;7aee
	inc bc			;7af1
	ld b,e			;7af2
	add a,c			;7af3
	ld d,e			;7af4
	inc bc			;7af5
	ld d,h			;7af6
	inc b			;7af7
	ld b,e			;7af8
	add a,h			;7af9
	ld d,e			;7afa
	ld d,h			;7afb
	call nz,00653h		;7afc
	ld d,h			;7aff
	inc bc			;7b00
	ld b,e			;7b01
	ld (bc),a		;7b02
l7b03h:
	di			;7b03
	add a,a			;7b04
	ld d,h			;7b05
	ld d,e			;7b06
	ld d,e			;7b07
	ld b,e			;7b08
	ld d,e			;7b09
	ld b,e			;7b0a
	ld b,e			;7b0b
	inc bc			;7b0c
	ld d,h			;7b0d
	ld (bc),a		;7b0e
	ld b,e			;7b0f
	inc b			;7b10
	di			;7b11
	ld (bc),a		;7b12
	ret			;7b13
	ld (bc),a		;7b14
	push bc			;7b15
	ld (bc),a		;7b16
	ld d,h			;7b17
	inc bc			;7b18
	ld b,e			;7b19
	ld (bc),a		;7b1a
	ld d,e			;7b1b
	inc bc			;7b1c
	push bc			;7b1d
	inc bc			;7b1e
	ld d,h			;7b1f
	add a,c			;7b20
	ld b,e			;7b21
	inc bc			;7b22
	ld d,h			;7b23
	ld (bc),a		;7b24
	ld b,e			;7b25
	add a,l			;7b26
	di			;7b27
	push bc			;7b28
	push bc			;7b29
	ld d,h			;7b2a
	ld d,h			;7b2b
	inc bc			;7b2c
	ld b,e			;7b2d
	inc bc			;7b2e
	jr nc,$+4		;7b2f
	call nz,05302h		;7b31
	adc a,e			;7b34
	jp 09053h		;7b35
	sub b			;7b38
	ret			;7b39
	ret			;7b3a
	push bc			;7b3b
	push bc			;7b3c
	ld d,b			;7b3d
	ld b,b			;7b3e
	ld b,e			;7b3f
	dec b			;7b40
	jr nc,l7ac4h		;7b41
	ret p			;7b43
	inc bc			;7b44
	ld b,b			;7b45
	inc bc			;7b46
	jr nc,l7adch		;7b47
	di			;7b49
	inc (hl)		;7b4a
	inc (hl)		;7b4b
	ld d,e			;7b4c
	call nz,0c454h		;7b4d
	jp 05343h		;7b50
	ld d,h			;7b53
	jr nc,l7b99h		;7b54
	ld b,e			;7b56
	ld d,h			;7b57
	push bc			;7b58
	push bc			;7b59
	ld d,h			;7b5a
	ld d,h			;7b5b
	nop			;7b5c
	add a,e			;7b5d
	call 0b798h		;7b5e
	inc bc			;7b61
	xor a			;7b62
	sub a			;7b63
	and a			;7b64
	sub e			;7b65
	ld c,h			;7b66
	ld h,(hl)		;7b67
	sbc a,b			;7b68
	rst 8			;7b69
	call m,01c98h		;7b6a
	inc a			;7b6d
	ld b,03fh		;7b6e
	rra			;7b70
	rrca			;7b71
	rlca			;7b72
	ld (hl),e		;7b73
	ret m			;7b74
	rst 38h			;7b75
	push af			;7b76
	push af			;7b77
	ret nz			;7b78
	ret m			;7b79
	xor b			;7b7a
	inc bc			;7b7b
	rrca			;7b7c
	sbc a,c			;7b7d
	rlca			;7b7e
	ccf			;7b7f
	ld a,a			;7b80
	rra			;7b81
	ccf			;7b82
	ccf			;7b83
	rra			;7b84
	ld a,a			;7b85
	rst 18h			;7b86
l7b87h:
	rst 38h			;7b87
	add a,b			;7b88
	add a,b			;7b89
	ret nz			;7b8a
	ret po			;7b8b
	ret p			;7b8c
	ret m			;7b8d
	ld c,007h		;7b8e
	inc bc			;7b90
	ld bc,l7f01h		;7b91
	nop			;7b94
	add a,b			;7b95
	ld b,003h		;7b96
	inc bc			;7b98
l7b99h:
	ld (bc),a		;7b99
	ld bc,0c302h		;7b9a
	ld (bc),a		;7b9d
	rst 38h			;7b9e
	ld (bc),a		;7b9f
	cp 003h			;7ba0
	ld (bc),a		;7ba2
	and e			;7ba3
	inc bc			;7ba4
	add a,b			;7ba5
	add a,b			;7ba6
	ret nz			;7ba7
	ret nz			;7ba8
	ret p			;7ba9
	jr c,l7bebh		;7baa
	ld c,007h		;7bac
	rra			;7bae
	add a,a			;7baf
	rst 0			;7bb0
	ret nz			;7bb1
	ret p			;7bb2
	ret nz			;7bb3
	dec bc			;7bb4
	ld (de),a		;7bb5
	adc a,d			;7bb6
	jp m,04df7h		;7bb7
	jr l7befh		;7bba
	rst 30h			;7bbc
	ld (l7d30h),a		;7bbd
	ld sp,03fc7h		;7bc0
	dec bc			;7bc3
	ret nz			;7bc4
	jr nz,l7b87h		;7bc5
	inc b			;7bc7
	rst 38h			;7bc8
	defb 0edh ;next byte illegal after ed	;7bc9
	ret m			;7bca
	ret nz			;7bcb
	ret po			;7bcc
	ret p			;7bcd
	defb 0fdh,0e6h,0c2h ;illegal sequence	;7bce
	ld (0e408h),a		;7bd1
	inc bc			;7bd4
	nop			;7bd5
	nop			;7bd6
	di			;7bd7
	add a,b			;7bd8
	dec sp			;7bd9
	pop af			;7bda
	push af			;7bdb
	call m,0fefch		;7bdc
	cp 0ffh			;7bdf
	rst 38h			;7be1
	ld a,a			;7be2
	ld a,a			;7be3
	rst 20h			;7be4
	ld (hl),e		;7be5
	dec sp			;7be6
	dec e			;7be7
	rrca			;7be8
	rlca			;7be9
	inc bc			;7bea
l7bebh:
	ld bc,l7f01h		;7beb
	ld a,a			;7bee
l7befh:
	ccf			;7bef
	ccf			;7bf0
	rra			;7bf1
	rra			;7bf2
	adc a,a			;7bf3
l7bf4h:
	rst 0			;7bf4
	ld h,a			;7bf5
	inc sp			;7bf6
	add hl,de		;7bf7
	ld a,a			;7bf8
	ld a,07fh		;7bf9
	ccf			;7bfb
	push bc			;7bfc
	defb 0fdh,038h,000h ;illegal sequence	;7bfd
	adc a,a			;7c00
	di			;7c01
	ld (hl),d		;7c02
	ld (l7f1fh),a		;7c03
	ld a,a			;7c06
	inc bc			;7c07
	nop			;7c08
	inc bc			;7c09
	rlca			;7c0a
	inc c			;7c0b
	inc de			;7c0c
	inc bc			;7c0d
	ld bc,0c080h		;7c0e
	ret po			;7c11
	ret m			;7c12
	inc a			;7c13
	call m,0ff6eh		;7c14
	ld a,e			;7c17
	scf			;7c18
	cp (hl)			;7c19
	defb 0ddh,03fh,0bfh ;illegal sequence	;7c1a
	ld a,03eh		;7c1d
	ld e,h			;7c1f
	sbc a,h			;7c20
	inc e			;7c21
	inc e			;7c22
	ld e,00ch		;7c23
	add a,e			;7c25
	ret nz			;7c26
	or b			;7c27
	call z,0c0c3h		;7c28
	ret po			;7c2b
	and (hl)		;7c2c
	inc de			;7c2d
	inc de			;7c2e
	add hl,bc		;7c2f
	add hl,bc		;7c30
	add a,h			;7c31
	ld a,h			;7c32
	ld b,027h		;7c33
	ld b,a			;7c35
	jr c,l7c3bh		;7c36
	jr l7bf4h		;7c38
	ld a,h			;7c3a
l7c3bh:
	adc a,a			;7c3b
	ei			;7c3c
	ld a,c			;7c3d
	add hl,sp		;7c3e
	add hl,de		;7c3f
	sbc a,a			;7c40
	rst 0			;7c41
	ex (sp),hl		;7c42
	ex (sp),hl		;7c43
	pop af			;7c44
	ld a,c			;7c45
	add hl,sp		;7c46
	jp po,0e60ch		;7c47
	ld h,e			;7c4a
	add hl,de		;7c4b
	inc a			;7c4c
	ld bc,00fffh		;7c4d
	add a,b			;7c50
	rra			;7c51
	inc h			;7c52
	ld c,c			;7c53
	inc (hl)		;7c54
	ld h,e			;7c55
	and c			;7c56
	and b			;7c57
	ret nc			;7c58
	ld e,c			;7c59
	cpl			;7c5a
	inc de			;7c5b
	ld h,c			;7c5c
	ld e,01eh		;7c5d
	ret nz			;7c5f
	ccf			;7c60
	nop			;7c61
	ccf			;7c62
	ccf			;7c63
	adc a,a			;7c64
	ret nz			;7c65
	ld h,b			;7c66
	ld h,b			;7c67
	jr nc,$+50		;7c68
	add hl,sp		;7c6a
	sbc a,e			;7c6b
	rra			;7c6c
	rlca			;7c6d
	ld bc,0f0c0h		;7c6e
	cp h			;7c71
	cp (hl)			;7c72
	ld l,l			;7c73
	nop			;7c74
	adc a,d			;7c75
	ld d,e			;7c76
	jp 0c353h		;7c77
	sub h			;7c7a
	sub h			;7c7b
	call nz,05354h		;7c7c
	ld b,e			;7c7f
	ld b,0f3h		;7c80
	add a,l			;7c82
	ld b,e			;7c83
	di			;7c84
	ld b,e			;7c85
	ld d,e			;7c86
	ld d,e			;7c87
	inc b			;7c88
	ld b,e			;7c89
	add a,(hl)		;7c8a
	ccf			;7c8b
	ld b,e			;7c8c
	ret			;7c8d
	ret			;7c8e
	push bc			;7c8f
	ld d,h			;7c90
	inc b			;7c91
	ld b,e			;7c92
	inc b			;7c93
	ld d,h			;7c94
	inc bc			;7c95
	ld b,e			;7c96
	rlca			;7c97
	call p,0f586h		;7c98
	call m,0f5fch		;7c9b
	ld b,e			;7c9e
	ld b,e			;7c9f
	ex af,af'		;7ca0
	di			;7ca1
	add a,c			;7ca2
	ld c,a			;7ca3
	inc b			;7ca4
	sub l			;7ca5
	add a,d			;7ca6
	ret			;7ca7
	ld e,c			;7ca8
	rlca			;7ca9
	ret			;7caa
	adc a,d			;7cab
	push bc			;7cac
	ld d,h			;7cad
	ld d,h			;7cae
	push bc			;7caf
	ld d,e			;7cb0
	ld d,e			;7cb1
	ld b,e			;7cb2
	ld d,h			;7cb3
	ld d,h			;7cb4
	sub l			;7cb5
	inc b			;7cb6
	ret			;7cb7
	inc bc			;7cb8
	push bc			;7cb9
	adc a,b			;7cba
	ld d,h			;7cbb
	ld b,e			;7cbc
	sub l			;7cbd
	ld d,h			;7cbe
	ld b,e			;7cbf
	ld b,e			;7cc0
	di			;7cc1
	di			;7cc2
l7cc3h:
	inc bc			;7cc3
	ld b,e			;7cc4
	rlca			;7cc5
	di			;7cc6
	add a,e			;7cc7
	ld b,e			;7cc8
	ld d,h			;7cc9
	push bc			;7cca
	ex af,af'		;7ccb
	ret			;7ccc
	inc bc			;7ccd
	sub l			;7cce
	add a,l			;7ccf
	push bc			;7cd0
	ld d,h			;7cd1
	sub l			;7cd2
	sub l			;7cd3
	sub h			;7cd4
	ld c,09ch		;7cd5
	dec bc			;7cd7
	push bc			;7cd8
	ld (bc),a		;7cd9
	ld d,h			;7cda
	ld b,043h		;7cdb
	ld (bc),a		;7cdd
	call p,04381h		;7cde
	inc b			;7ce1
	ld d,h			;7ce2
	ex af,af'		;7ce3
	push bc			;7ce4
	inc b			;7ce5
	push af			;7ce6
	dec b			;7ce7
	call p,0f31ch		;7ce8
	ld (bc),a		;7ceb
	sub l			;7cec
	dec b			;7ced
	ret			;7cee
	dec b			;7cef
	push bc			;7cf0
	dec b			;7cf1
	ld d,h			;7cf2
	ld (bc),a		;7cf3
	ld d,e			;7cf4
	add a,e			;7cf5
	push af			;7cf6
	ld b,e			;7cf7
	ld b,e			;7cf8
	inc bc			;7cf9
	ld d,h			;7cfa
	ld (bc),a		;7cfb
l7cfch:
	di			;7cfc
sub_7cfdh:
	add a,d			;7cfd
	ld d,e			;7cfe
	call p,0f305h		;7cff
	add a,e			;7d02
	call p,0f4f5h		;7d03
	inc b			;7d06
	di			;7d07
	add a,d			;7d08
	call p,00343h		;7d09
	di			;7d0c
	dec c			;7d0d
	ld b,e			;7d0e
	dec b			;7d0f
	di			;7d10
	nop			;7d11
	add a,e			;7d12
	pop bc			;7d13
	rrca			;7d14
	inc bc			;7d15
	ld d,001h		;7d16
	ld (bc),a		;7d18
	inc bc			;7d19
	ld (bc),a		;7d1a
	rlca			;7d1b
	inc bc			;7d1c
	rrca			;7d1d
	add a,e			;7d1e
	rst 8			;7d1f
	call m,00df0h		;7d20
	add a,b			;7d23
	ld (bc),a		;7d24
	nop			;7d25
	add a,(hl)		;7d26
	inc c			;7d27
	ld e,06eh		;7d28
l7d2ah:
	ld (hl),a		;7d2a
	ld c,l			;7d2b
	ld b,l			;7d2c
	nop			;7d2d
	sub b			;7d2e
	di			;7d2f
l7d30h:
	ld b,b			;7d30
	ld d,b			;7d31
	ld d,b			;7d32
	ld b,b			;7d33
	ld b,b			;7d34
	ret p			;7d35
	ld d,b			;7d36
	ld d,b			;7d37
	jr nc,l7d2ah		;7d38
	ld b,b			;7d3a
	ld d,b			;7d3b
	ret nz			;7d3c
	sub b			;7d3d
	ret nz			;7d3e
	inc b			;7d3f
	jr nc,l7cc3h		;7d40
	ld d,b			;7d42
l7d43h:
	inc bc			;7d43
	ret nz			;7d44
	add a,c			;7d45
	ld d,b			;7d46
	inc bc			;7d47
	ret nz			;7d48
l7d49h:
	ld (bc),a		;7d49
	ld d,b			;7d4a
	sub c			;7d4b
	ld b,b			;7d4c
	jr nc,l7d92h		;7d4d
	ld b,b			;7d4f
	ld b,b			;7d50
	jr nc,l7d43h		;7d51
	ld d,b			;7d53
	ret nz			;7d54
	ret nz			;7d55
	ld d,b			;7d56
	jr nc,l7d49h		;7d57
	ld b,b			;7d59
	ld d,b			;7d5a
	ret nz			;7d5b
	sub b			;7d5c
	inc bc			;7d5d
	ret nz			;7d5e
	add a,(hl)		;7d5f
	sub b			;7d60
	ld d,b			;7d61
	ld b,b			;7d62
	ret p			;7d63
	ld sp,hl		;7d64
	push af			;7d65
	nop			;7d66
	and b			;7d67
	nop			;7d68
	inc a			;7d69
	nop			;7d6a
	nop			;7d6b
	call po,0d4c4h		;7d6c
	sub h			;7d6f
	rst 30h			;7d70
	rst 30h			;7d71
	ei			;7d72
	call m,01c38h		;7d73
	rrca			;7d76
	inc bc			;7d77
l7d78h:
	rlca			;7d78
	ret nz			;7d79
	ret po			;7d7a
	ld (hl),b		;7d7b
	scf			;7d7c
	inc e			;7d7d
	jr l7d98h		;7d7e
	ld a,01fh		;7d80
l7d82h:
	ld de,l7030h		;7d82
	ret p			;7d85
	or b			;7d86
	or b			;7d87
	inc bc			;7d88
	jr $-55			;7d89
	adc a,h			;7d8b
	call z,07266h		;7d8c
	ld a,a			;7d8f
	or h			;7d90
	xor d			;7d91
l7d92h:
	jp (hl)			;7d92
	and h			;7d93
	cp (hl)			;7d94
	rst 20h			;7d95
	and a			;7d96
	rst 38h			;7d97
l7d98h:
	dec hl			;7d98
	ld d,b			;7d99
	sub b			;7d9a
	jr nz,l7dfeh		;7d9b
	jp 0ffffh		;7d9d
	call p,09893h		;7da0
	ret m			;7da3
	inc c			;7da4
	dec b			;7da5
	rlca			;7da6
	rst 38h			;7da7
	dec bc			;7da8
	ld a,(bc)		;7da9
	ld d,027h		;7daa
	ld b,h			;7dac
	adc a,h			;7dad
	inc c			;7dae
	rra			;7daf
	rst 38h			;7db0
	nop			;7db1
	nop			;7db2
	rst 38h			;7db3
	rst 38h			;7db4
	nop			;7db5
	nop			;7db6
	rst 38h			;7db7
	jr z,l7d82h		;7db8
	jr $+129		;7dba
	ret p			;7dbc
	ret po			;7dbd
	ret po			;7dbe
	rst 38h			;7dbf
	ret nc			;7dc0
	ld d,b			;7dc1
	ld l,b			;7dc2
	inc h			;7dc3
	ld (0b0b1h),hl		;7dc4
	sbc a,b			;7dc7
	nop			;7dc8
	inc a			;7dc9
	nop			;7dca
	nop			;7dcb
	daa			;7dcc
	inc bc			;7dcd
	ld a,e			;7dce
	ld h,c			;7dcf
	inc (hl)		;7dd0
	ld (hl),h		;7dd1
	dec b			;7dd2
	dec bc			;7dd3
	sub (hl)		;7dd4
	rst 38h			;7dd5
	sub d			;7dd6
	sub d			;7dd7
	jp nc,0f2d2h		;7dd8
	pop af			;7ddb
	adc a,c			;7ddc
	sbc a,b			;7ddd
	ld c,c			;7dde
	ld c,c			;7ddf
	ld c,e			;7de0
	ld c,e			;7de1
	ld c,l			;7de2
	adc a,c			;7de3
	sbc a,h			;7de4
	ld a,(de)		;7de5
	inc hl			;7de6
	inc a			;7de7
	ld a,03fh		;7de8
	ccf			;7dea
	inc bc			;7deb
	ld a,a			;7dec
	sub e			;7ded
	ld a,08fh		;7dee
	rst 0			;7df0
	rst 20h			;7df1
	rst 20h			;7df2
	rst 28h			;7df3
	ld sp,0ff33h		;7df4
	ccf			;7df7
	ld a,a			;7df8
	inc a			;7df9
	cp 07eh			;7dfa
sub_7dfch:
	in a,(099h)		;7dfc
l7dfeh:
	cp l			;7dfe
	and l			;7dff
l7e00h:
	and l			;7e00
	dec b			;7e01
	jr $-100		;7e02
	add a,b			;7e04
	ret nz			;7e05
	ret po			;7e06
	ret m			;7e07
	cp a			;7e08
	rst 20h			;7e09
	and l			;7e0a
	rst 38h			;7e0b
	and l			;7e0c
	cp l			;7e0d
	rst 20h			;7e0e
	push hl			;7e0f
	ccf			;7e10
	rrca			;7e11
	inc bc			;7e12
	ld bc,00f15h		;7e13
	inc bc			;7e16
	nop			;7e17
	ld a,a			;7e18
	ret po			;7e19
	call m,099ffh		;7e1a
	sbc a,c			;7e1d
	inc b			;7e1e
	in a,(002h)		;7e1f
	ld a,a			;7e21
	sbc a,b			;7e22
	ccf			;7e23
	rlca			;7e24
	rrca			;7e25
	ld bc,0ff01h		;7e26
	ld b,l			;7e29
	ld b,l			;7e2a
	add a,c			;7e2b
	rst 38h			;7e2c
	add a,c			;7e2d
	add a,c			;7e2e
	ld b,c			;7e2f
	ld a,a			;7e30
	ld b,l			;7e31
	dec h			;7e32
	adc a,h			;7e33
	ret z			;7e34
	ld d,b			;7e35
	ld h,b			;7e36
	ld b,b			;7e37
sub_7e38h:
	add a,b			;7e38
	ld bc,00801h		;7e39
	rst 38h			;7e3c
	adc a,b			;7e3d
	inc bc			;7e3e
	inc hl			;7e3f
	ld hl,08771h		;7e40
	daa			;7e43
	ret z			;7e44
	ret z			;7e45
	nop			;7e46
	add a,e			;7e47
	inc b			;7e48
	ld b,e			;7e49
	ld b,e			;7e4a
	add hl,bc		;7e4b
	ccf			;7e4c
	dec b			;7e4d
	ld b,e			;7e4e
	inc (hl)		;7e4f
	di			;7e50
	dec b			;7e51
	call p,0f302h		;7e52
	ld (bc),a		;7e55
	sub l			;7e56
	ld b,0f3h		;7e57
	add a,d			;7e59
	push af			;7e5a
	call p,0f307h		;7e5b
	inc b			;7e5e
	call p,04302h		;7e5f
	rlca			;7e62
	ccf			;7e63
	ld (bc),a		;7e64
	call p,0f582h		;7e65
	call p,0f303h		;7e68
	add a,e			;7e6b
	call p,0f4f5h		;7e6c
	dec b			;7e6f
	di			;7e70
	add a,e			;7e71
	call p,0f4f5h		;7e72
	inc b			;7e75
	di			;7e76
	add a,c			;7e77
	sub e			;7e78
	ld b,053h		;7e79
	add a,d			;7e7b
	ld b,h			;7e7c
	jp 05305h		;7e7d
	adc a,a			;7e80
	push af			;7e81
	call p,0c5c5h		;7e82
	ld d,e			;7e85
	call nz,0fcc5h		;7e86
	call p,0fcf5h		;7e89
	call m,053f5h		;7e8c
	call nz,09503h		;7e8f
	add a,c			;7e92
	call p,0f503h		;7e93
	add a,d			;7e96
	di			;7e97
	call p,0f304h		;7e98
	add a,e			;7e9b
	call p,0fcf3h		;7e9c
	inc bc			;7e9f
	ld sp,hl		;7ea0
	add a,c			;7ea1
l7ea2h:
	call p,0f503h		;7ea2
	add a,l			;7ea5
	push bc			;7ea6
	call m,0f9f9h		;7ea7
	call nz,05403h		;7eaa
	add a,c			;7ead
	ld b,e			;7eae
	dec b			;7eaf
	ccf			;7eb0
	add a,l			;7eb1
	push af			;7eb2
	call p,0f3f3h		;7eb3
	ld sp,hl		;7eb6
	inc bc			;7eb7
	push af			;7eb8
	add a,e			;7eb9
	ld sp,hl		;7eba
	push af			;7ebb
	call p,0f304h		;7ebc
	ld b,0f4h		;7ebf
	ld a,(bc)		;7ec1
	push af			;7ec2
	add a,a			;7ec3
	call m,0f5f5h		;7ec4
	ld d,e			;7ec7
	ld d,e			;7ec8
	call p,000f3h		;7ec9
	ld (bc),a		;7ecc
	rst 38h			;7ecd
	sub (hl)		;7ece
	ret m			;7ecf
	ret nz			;7ed0
	nop			;7ed1
	inc bc			;7ed2
	rrca			;7ed3
	ccf			;7ed4
	ld bc,00703h		;7ed5
	rrca			;7ed8
	rra			;7ed9
	ccf			;7eda
	ld a,a			;7edb
	ld bc,00100h		;7edc
	inc bc			;7edf
	rlca			;7ee0
	rra			;7ee1
	ccf			;7ee2
	ld a,a			;7ee3
	rst 38h			;7ee4
	inc bc			;7ee5
	nop			;7ee6
	and l			;7ee7
	ret nz			;7ee8
	ret p			;7ee9
	ret m			;7eea
	cp 0ffh			;7eeb
	add a,b			;7eed
	ret nz			;7eee
	ret po			;7eef
	ret p			;7ef0
	ret m			;7ef1
	call m,0fffeh		;7ef2
	ld bc,00703h		;7ef5
	rrca			;7ef8
	rra			;7ef9
	ccf			;7efa
	ld a,a			;7efb
	ld a,a			;7efc
	add a,b			;7efd
	ret nz			;7efe
l7effh:
	ret po			;7eff
	ret p			;7f00
l7f01h:
	ret p			;7f01
	ret m			;7f02
	call m,0c0feh		;7f03
	ret po			;7f06
	ret p			;7f07
	ret m			;7f08
	ret m			;7f09
	call m,0fefch		;7f0a
	inc b			;7f0d
	nop			;7f0e
	inc b			;7f0f
	ld bc,00307h		;7f10
	ld b,000h		;7f13
	add a,e			;7f15
	inc bc			;7f16
	rrca			;7f17
	ccf			;7f18
	nop			;7f19
	dec b			;7f1a
	ld bc,02103h		;7f1b
	rlca			;7f1e
l7f1fh:
	djnz l7ea2h		;7f1f
	ld hl,0101ah		;7f21
	inc bc			;7f24
	ret p			;7f25
	dec b			;7f26
	djnz l7f2bh		;7f27
	ret p			;7f29
	adc a,e			;7f2a
l7f2bh:
	jr nz,l7f3dh		;7f2b
	djnz l7f1fh		;7f2d
	jr nc,l7f51h		;7f2f
	ret p			;7f31
	ret p			;7f32
	jr nz,l7f45h		;7f33
	ret p			;7f35
	dec b			;7f36
	jr nc,l7f43h		;7f37
	djnz $+9		;7f39
	ret p			;7f3b
	inc bc			;7f3c
l7f3dh:
	djnz l7f3fh		;7f3d
l7f3fh:
	add a,c			;7f3f
	ld bc,00303h		;7f40
l7f43h:
	inc b			;7f43
	rlca			;7f44
l7f45h:
	add a,c			;7f45
	ld bc,00305h		;7f46
	ld (bc),a		;7f49
	nop			;7f4a
	ld (bc),a		;7f4b
	rlca			;7f4c
	add a,c			;7f4d
	rrca			;7f4e
	ld b,000h		;7f4f
l7f51h:
	inc bc			;7f51
	ret po			;7f52
	add a,l			;7f53
	ccf			;7f54
	rrca			;7f55
	rlca			;7f56
	inc bc			;7f57
	rrca			;7f58
	rlca			;7f59
	nop			;7f5a
	nop			;7f5b
	dec c			;7f5c
	djnz $+5		;7f5d
	ret p			;7f5f
	add a,d			;7f60
	ld hl,0061fh		;7f61
	ret p			;7f64
	ld (bc),a		;7f65
	inc hl			;7f66
	add a,d			;7f67
	ld (de),a		;7f68
	pop af			;7f69
	inc c			;7f6a
	ret p			;7f6b
	nop			;7f6c
	sub b			;7f6d
	inc bc			;7f6e
	ld a,a			;7f6f
	rst 38h			;7f70
	rra			;7f71
	rrca			;7f72
	rrca			;7f73
	ret p			;7f74
	ld a,(hl)		;7f75
	ret po			;7f76
	call m,0ffffh		;7f77
	ret po			;7f7a
	djnz $-61		;7f7b
	ld a,003h		;7f7d
	nop			;7f7f
	xor d			;7f80
	rst 38h			;7f81
	jp l7cfch		;7f82
	jr c,l7f87h		;7f85
l7f87h:
	ld bc,00f03h		;7f87
	rra			;7f8a
	ccf			;7f8b
	ld a,(hl)		;7f8c
	inc bc			;7f8d
	ld bc,00d06h		;7f8e
	inc bc			;7f91
	ld a,a			;7f92
	ret po			;7f93
	ret po			;7f94
	inc bc			;7f95
	ret nz			;7f96
	ccf			;7f97
	ret po			;7f98
	ret po			;7f99
	inc e			;7f9a
	pop af			;7f9b
	adc a,a			;7f9c
	ret p			;7f9d
	ld a,h			;7f9e
	rst 38h			;7f9f
	ld a,(hl)		;7fa0
	inc a			;7fa1
	ld a,0fch		;7fa2
	call m,03e83h		;7fa4
	inc a			;7fa7
	cp 07ch			;7fa8
	ld a,(hl)		;7faa
	inc bc			;7fab
	ld a,0bah		;7fac
	nop			;7fae
	ld b,b			;7faf
	ld (hl),b		;7fb0
	nop			;7fb1
	ld (hl),b		;7fb2
	rlca			;7fb3
	ret p			;7fb4
	rrca			;7fb5
	ld bc,00f07h		;7fb6
	rra			;7fb9
	ccf			;7fba
	ld a,a			;7fbb
	inc bc			;7fbc
	rlca			;7fbd
	rlca			;7fbe
	rrca			;7fbf
	rra			;7fc0
	ccf			;7fc1
	ld a,a			;7fc2
	ld bc,00f03h		;7fc3
	rlca			;7fc6
	ld e,03ch		;7fc7
	ld a,(hl)		;7fc9
	rst 38h			;7fca
	rst 20h			;7fcb
	adc a,0deh		;7fcc
	rrca			;7fce
	rrca			;7fcf
	rst 38h			;7fd0
	ret po			;7fd1
	rlca			;7fd2
	rra			;7fd3
	ccf			;7fd4
	ld a,a			;7fd5
	inc bc			;7fd6
	rst 38h			;7fd7
	rst 38h			;7fd8
	inc bc			;7fd9
	ret po			;7fda
	ret m			;7fdb
	call m,0c1feh		;7fdc
	ret po			;7fdf
	ret m			;7fe0
	call m,0e6feh		;7fe1
	ld (hl),d		;7fe4
	ld a,e			;7fe5
	ret nz			;7fe6
	ret po			;7fe7
	inc b			;7fe8
	ccf			;7fe9
	ld (bc),a		;7fea
	rra			;7feb
sub_7fech:
	ld (bc),a		;7fec
	nop			;7fed
	ld (bc),a		;7fee
	rst 38h			;7fef
	add a,d			;7ff0
	ret p			;7ff1
	ret m			;7ff2
	dec b			;7ff3
	call m,0ff85h		;7ff4
	inc bc			;7ff7
	nop			;7ff8
	inc bc			;7ff9
	rlca			;7ffa
l7ffbh:
	inc b			;7ffb
	rrca			;7ffc
	add a,(hl)		;7ffd
	nop			;7ffe
	rrca			;7fff

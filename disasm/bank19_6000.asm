; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank19_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank19.bin

	org 06000h

	inc bc			;6000
	nop			;6001
	cpl			;6002
	ret			;6003
	add hl,sp		;6004
	add hl,bc		;6005
	rlca			;6006
	nop			;6007
	nop			;6008
	ret m			;6009
	inc c			;600a
	rst 38h			;600b
	inc b			;600c
	rst 38h			;600d
	ret p			;600e
	ld c,a			;600f
	ret po			;6010
	ret p			;6011
	rst 38h			;6012
	inc b			;6013
	inc c			;6014
	rst 38h			;6015
	ex af,af'		;6016
	ret m			;6017
	nop			;6018
	rlca			;6019
	rrca			;601a
	add hl,bc		;601b
	ld a,a			;601c
	rst 28h			;601d
	inc c			;601e
	jr c,l6059h		;601f
	inc c			;6021
	rst 28h			;6022
	ld a,a			;6023
	rrca			;6024
	rrca			;6025
	rlca			;6026
	nop			;6027
	ret m			;6028
	dec bc			;6029
	rst 38h			;602a
	inc c			;602b
	rst 38h			;602c
	rst 38h			;602d
	ld b,0efh		;602e
	rrca			;6030
	ld b,003h		;6031
	rst 38h			;6033
	add a,e			;6034
	inc c			;6035
	ei			;6036
	ret m			;6037
	nop			;6038
	rst 38h			;6039
	inc bc			;603a
	add hl,bc		;603b
	inc d			;603c
	ld a,(bc)		;603d
	ld b,l			;603e
	ccf			;603f
	rrca			;6040
	rlca			;6041
	inc bc			;6042
	ld bc,0751fh		;6043
	ld b,d			;6046
	inc h			;6047
	jr l604eh		;6048
	ret nz			;604a
	ret po			;604b
	ret pe			;604c
	inc c			;604d
l604eh:
	call po,0dcb6h		;604e
	ret m			;6051
	ret p			;6052
	ret po			;6053
	call p,014eah		;6054
	ret pe			;6057
	ex af,af'		;6058
l6059h:
	nop			;6059
	inc b			;605a
	ld e,02fh		;605b
	ld (hl),a		;605d
	ld a,e			;605e
	cp 0fch			;605f
	call m,0f8f8h		;6061
	rst 38h			;6064
	ld a,e			;6065
	ld a,a			;6066
	ccf			;6067
	rra			;6068
	rlca			;6069
	jr nz,l6084h		;606a
	inc d			;606c
	jp p,05ffah		;606d
	cpl			;6070
	rrca			;6071
	rlca			;6072
	rlca			;6073
	rst 38h			;6074
	or 0fah			;6075
	inc e			;6077
	ret m			;6078
	ret po			;6079
	inc bc			;607a
	rlca			;607b
	rla			;607c
	jr nc,l60a6h		;607d
	ld l,l			;607f
	dec sp			;6080
	rra			;6081
	rrca			;6082
	rlca			;6083
l6084h:
	cpl			;6084
	ld d,a			;6085
	jr z,l609fh		;6086
	djnz l608ah		;6088
l608ah:
	ret nz			;608a
	sub b			;608b
	jr z,$+82		;608c
	and d			;608e
	call m,0e0f0h		;608f
	ret nz			;6092
	add a,b			;6093
	ret m			;6094
	xor (hl)		;6095
	ld b,d			;6096
	inc h			;6097
	jr l60bah		;6098
	inc b			;609a
	jr l60c5h		;609b
	ld c,a			;609d
	ld e,a			;609e
l609fh:
	jp m,0f0f4h		;609f
	ret po			;60a2
	ret po			;60a3
	rst 38h			;60a4
	ld l,a			;60a5
l60a6h:
	ld e,a			;60a6
	jr c,l60c8h		;60a7
	rlca			;60a9
	jr nz,l6124h		;60aa
	call p,0deeeh		;60ac
	ld a,a			;60af
	ccf			;60b0
	ccf			;60b1
	rra			;60b2
	rra			;60b3
	rst 38h			;60b4
	sbc a,0feh		;60b5
	call m,081f8h		;60b7
l60bah:
	ret po			;60ba
	nop			;60bb
	rst 38h			;60bc
	rlca			;60bd
	inc bc			;60be
	ld bc,00d07h		;60bf
	ld a,h			;60c2
	cp 073h			;60c3
l60c5h:
	ld b,039h		;60c5
	inc bc			;60c7
l60c8h:
	ld a,l			;60c8
	jp m,00a75h		;60c9
	nop			;60cc
	ret po			;60cd
	nop			;60ce
	add a,b			;60cf
	ret po			;60d0
	or b			;60d1
	ld a,07fh		;60d2
	adc a,060h		;60d4
	sbc a,h			;60d6
	ret nz			;60d7
	cp (hl)			;60d8
	ld e,a			;60d9
	ld l,0d0h		;60da
	nop			;60dc
l60ddh:
	ld bc,00804h		;60dd
	inc b			;60e0
	inc a			;60e1
	ld b,003h		;60e2
	adc a,a			;60e4
	ld a,a			;60e5
	jr c,$+58		;60e6
	ld a,h			;60e8
	ld b,08eh		;60e9
	ei			;60eb
	nop			;60ec
	ret nz			;60ed
	ret po			;60ee
	djnz $+34		;60ef
	inc a			;60f1
	ld h,b			;60f2
	ret nz			;60f3
	pop af			;60f4
	cp 01ch			;60f5
	inc e			;60f7
	ld a,060h		;60f8
	pop af			;60fa
	rst 18h			;60fb
	nop			;60fc
	nop			;60fd
	rlca			;60fe
	dec sp			;60ff
	ld a,b			;6100
	rlca			;6101
	ld bc,01a26h		;6102
	rlca			;6105
	ld (hl),d		;6106
	call m,00107h		;6107
	ld (bc),a		;610a
	dec b			;610b
	ld (bc),a		;610c
	nop			;610d
	ret po			;610e
	inc e			;610f
	ld e,0e0h		;6110
	add a,b			;6112
	ld h,h			;6113
	ld e,b			;6114
	ret po			;6115
	ld c,(hl)		;6116
	ccf			;6117
	ret po			;6118
l6119h:
	add a,b			;6119
	ld b,b			;611a
	jr nz,l60ddh		;611b
	nop			;611d
	ld bc,0790ch		;611e
	call m,03c7ch		;6121
l6124h:
	dec de			;6124
	ld a,a			;6125
	adc a,a			;6126
	defb 0fdh,07ch ;ld a,iyh	;6127
	jr c,l612dh		;6129
	ld b,003h		;612b
l612dh:
	nop			;612d
	ret nz			;612e
	ret p			;612f
	sbc a,(hl)		;6130
	ccf			;6131
	ld a,03ch		;6132
	ret c			;6134
	cp 0f1h			;6135
	cp a			;6137
	ld a,01ch		;6138
	ld b,b			;613a
	ret po			;613b
	add a,c			;613c
	ret nz			;613d
	nop			;613e
	add a,c			;613f
	ld b,003h		;6140
	ld c,088h		;6142
	halt			;6144
	ret m			;6145
	rlca			;6146
	inc e			;6147
	inc bc			;6148
	rrca			;6149
	ret m			;614a
	halt			;614b
	inc bc			;614c
	ld c,082h		;614d
	ld b,060h		;614f
	inc bc			;6151
	ld (hl),b		;6152
	adc a,b			;6153
	ld l,(hl)		;6154
	rra			;6155
	ret po			;6156
	jr c,l6119h		;6157
	ret p			;6159
	rra			;615a
	ld l,(hl)		;615b
	inc bc			;615c
	ld (hl),b		;615d
	add a,c			;615e
	ld h,b			;615f
	nop			;6160
	and b			;6161
l6162h:
	inc bc			;6162
	dec de			;6163
	dec sp			;6164
	ld a,e			;6165
	ld a,e			;6166
	ld a,d			;6167
	defb 0fdh,0fbh,0fbh ;illegal sequence	;6168
	defb 0fdh,07ah,07bh ;illegal sequence	;616b
	ld a,e			;616e
	dec sp			;616f
	dec de			;6170
	inc bc			;6171
	ret nz			;6172
	ret c			;6173
	call c,0dedeh		;6174
	ld e,(hl)		;6177
	cp a			;6178
	rst 18h			;6179
	rst 18h			;617a
	cp a			;617b
	ld e,(hl)		;617c
	sbc a,0deh		;617d
	call c,0c0d8h		;617f
	ld b,000h		;6182
	inc bc			;6184
	ld (bc),a		;6185
	ld (bc),a		;6186
	rlca			;6187
	add a,l			;6188
	ld (de),a		;6189
	add hl,de		;618a
	rrca			;618b
	rlca			;618c
	ld bc,08003h		;618d
	inc bc			;6190
l6191h:
	ld b,b			;6191
	inc bc			;6192
	jr nz,l6197h		;6193
	djnz $-121		;6195
l6197h:
	jr c,l6191h		;6197
	ret p			;6199
	ret po			;619a
	add a,b			;619b
	inc bc			;619c
	ld bc,00303h		;619d
	inc bc			;61a0
	rlca			;61a1
	inc bc			;61a2
	rrca			;61a3
	add a,c			;61a4
	ld b,006h		;61a5
	nop			;61a7
	inc bc			;61a8
	add a,b			;61a9
	inc bc			;61aa
	ret nz			;61ab
	ld (bc),a		;61ac
	ret po			;61ad
	add a,c			;61ae
	ret nz			;61af
	ld a,(bc)		;61b0
	nop			;61b1
	adc a,h			;61b2
	ld bc,00602h		;61b3
	ld l,044h		;61b6
	ld h,b			;61b8
	scf			;61b9
	ccf			;61ba
	rra			;61bb
	rlca			;61bc
	nop			;61bd
	nop			;61be
	ld b,020h		;61bf
	inc bc			;61c1
	ld h,b			;61c2
	inc bc			;61c3
	ret po			;61c4
	add a,c			;61c5
	ret nz			;61c6
	dec b			;61c7
	nop			;61c8
	adc a,c			;61c9
	ld bc,00703h		;61ca
	rrca			;61cd
	rra			;61ce
	rra			;61cf
	ccf			;61d0
	rra			;61d1
	ex af,af'		;61d2
	inc b			;61d3
	nop			;61d4
	add a,d			;61d5
	jr nz,$+66		;61d6
	dec b			;61d8
	ret nz			;61d9
	inc bc			;61da
	add a,b			;61db
	dec bc			;61dc
	nop			;61dd
	adc a,c			;61de
	inc bc			;61df
	ld l,06eh		;61e0
	ld h,h			;61e2
	ld (hl),b		;61e3
	ld a,c			;61e4
	ccf			;61e5
	ccf			;61e6
	rrca			;61e7
	inc b			;61e8
	nop			;61e9
	adc a,e			;61ea
	inc b			;61eb
	ex af,af'		;61ec
	adc a,b			;61ed
	djnz $+18		;61ee
	jr nz,l6212h		;61f0
	ld b,b			;61f2
	ret nz			;61f3
	add a,b			;61f4
	add a,b			;61f5
l61f6h:
	rlca			;61f6
	nop			;61f7
	add a,d			;61f8
	inc bc			;61f9
	rrca			;61fa
	inc bc			;61fb
	rra			;61fc
	add a,d			;61fd
	rrca			;61fe
	ld b,006h		;61ff
	nop			;6201
	adc a,c			;6202
	inc c			;6203
	jr c,l61f6h		;6204
	ret p			;6206
	ret po			;6207
	ret po			;6208
l6209h:
	ret nz			;6209
	ret nz			;620a
	add a,b			;620b
	ld a,(bc)		;620c
	nop			;620d
	adc a,d			;620e
	jr nz,$+81		;620f
	ld e,(hl)		;6211
l6212h:
	ret z			;6212
	ret po			;6213
	pop hl			;6214
	ld a,a			;6215
	ld a,a			;6216
	ld a,00ch		;6217
	ld b,000h		;6219
	add a,a			;621b
	ld (bc),a		;621c
	add a,h			;621d
	ex af,af'		;621e
	djnz l6281h		;621f
	ret nz			;6221
	add a,b			;6222
	add hl,bc		;6223
	nop			;6224
	add a,c			;6225
	rra			;6226
	inc bc			;6227
	ccf			;6228
	add a,d			;6229
	rra			;622a
	ld e,00ah		;622b
	nop			;622d
	add a,l			;622e
	call m,0f0f8h		;622f
	ret po			;6232
	add a,b			;6233
	add hl,bc		;6234
	nop			;6235
	adc a,d			;6236
	jr l6269h		;6237
	ld h,(hl)		;6239
	ld l,a			;623a
	or 0f0h			;623b
	ld (hl),b		;623d
	ld a,c			;623e
	ld a,018h		;623f
	add hl,bc		;6241
	nop			;6242
	add a,l			;6243
	ret nz			;6244
	nop			;6245
	rlca			;6246
	jr c,l6209h		;6247
	add hl,bc		;6249
	nop			;624a
	add a,e			;624b
l624ch:
	ld c,01fh		;624c
	rra			;624e
	inc bc			;624f
	rrca			;6250
	add a,c			;6251
	ld b,00ah		;6252
	nop			;6254
	add a,l			;6255
	ret nz			;6256
	ret m			;6257
	rst 38h			;6258
	ret m			;6259
	ret nz			;625a
	rlca			;625b
	nop			;625c
	adc a,d			;625d
	inc c			;625e
	ld a,(06270h)		;625f
	rst 30h			;6262
	di			;6263
	ret p			;6264
	ld a,b			;6265
	ld a,a			;6266
	ccf			;6267
	dec bc			;6268
l6269h:
	nop			;6269
	add a,l			;626a
	add a,b			;626b
	ld b,b			;626c
	nop			;626d
	nop			;626e
	call m,00007h		;626f
	add a,e			;6272
	inc b			;6273
	rrca			;6274
	rra			;6275
	inc bc			;6276
	rrca			;6277
	add a,c			;6278
	rlca			;6279
	dec bc			;627a
	nop			;627b
	add a,a			;627c
	add a,b			;627d
	ret nz			;627e
	ret po			;627f
	ret p			;6280
l6281h:
	ret m			;6281
	call m,00602h		;6282
	nop			;6285
	adc a,d			;6286
	rrca			;6287
	ccf			;6288
	inc a			;6289
	ld a,c			;628a
	ld (hl),e		;628b
	ld (hl),c		;628c
	ld a,b			;628d
	jr c,l629ch		;628e
	inc bc			;6290
	rlca			;6291
	nop			;6292
	adc a,h			;6293
	add a,b			;6294
	nop			;6295
	add a,b			;6296
	add a,b			;6297
	ret nz			;6298
	ld b,b			;6299
	jr nz,l629ch		;629a
l629ch:
	nop			;629c
	ret nz			;629d
	jr nc,l62a8h		;629e
	dec b			;62a0
	nop			;62a1
	add a,a			;62a2
	inc bc			;62a3
	rlca			;62a4
	rrca			;62a5
	rrca			;62a6
	rlca			;62a7
l62a8h:
	rlca			;62a8
	inc bc			;62a9
	add hl,bc		;62aa
	nop			;62ab
	sbc a,c			;62ac
	add a,b			;62ad
	ret nz			;62ae
	ret nz			;62af
	ret po			;62b0
	ret po			;62b1
	ret p			;62b2
	ret p			;62b3
	ret m			;62b4
	jr c,l62c3h		;62b5
	inc b			;62b7
	nop			;62b8
	nop			;62b9
	rlca			;62ba
	rra			;62bb
	ld a,038h		;62bc
	ld a,c			;62be
	ld a,b			;62bf
	jr c,l62deh		;62c0
	inc c			;62c2
l62c3h:
	ld b,002h		;62c3
	ld bc,00005h		;62c5
	add a,e			;62c8
	ret nz			;62c9
	jr nz,l624ch		;62ca
	inc bc			;62cc
	ret nz			;62cd
	ld (bc),a		;62ce
	ld b,b			;62cf
	inc bc			;62d0
	nop			;62d1
	add a,e			;62d2
	add a,b			;62d3
	ld b,b			;62d4
	jr nz,$+5		;62d5
	nop			;62d7
	add a,c			;62d8
	ld bc,00704h		;62d9
	ld (bc),a		;62dc
	inc bc			;62dd
l62deh:
	ld (bc),a		;62de
	ld bc,00007h		;62df
	add a,c			;62e2
	ret nz			;62e3
	add hl,bc		;62e4
	ret po			;62e5
	adc a,e			;62e6
	ld h,b			;62e7
	jr nz,l62eah		;62e8
l62eah:
	nop			;62ea
	ld bc,00f07h		;62eb
	add hl,de		;62ee
	ld (de),a		;62ef
	rlca			;62f0
	rlca			;62f1
	inc bc			;62f2
	ld (bc),a		;62f3
	ld b,000h		;62f4
	add a,a			;62f6
	add a,b			;62f7
	ret po			;62f8
	ret p			;62f9
	ret m			;62fa
	jr c,l630dh		;62fb
	djnz l6302h		;62fd
	jr nz,l6304h		;62ff
	ld b,b			;6301
l6302h:
	inc bc			;6302
	add a,b			;6303
l6304h:
	inc bc			;6304
	nop			;6305
	add a,c			;6306
	ld b,003h		;6307
	rrca			;6309
	inc bc			;630a
	rlca			;630b
	inc bc			;630c
l630dh:
	inc bc			;630d
	inc bc			;630e
	ld bc,00004h		;630f
	add a,e			;6312
	ret nz			;6313
	ret po			;6314
	ret po			;6315
	inc bc			;6316
	ret nz			;6317
	inc bc			;6318
	add a,b			;6319
	inc b			;631a
	nop			;631b
	add a,e			;631c
	inc bc			;631d
	inc b			;631e
	ld bc,00303h		;631f
	ld (bc),a		;6322
	ld (bc),a		;6323
	inc bc			;6324
	nop			;6325
l6326h:
	sub b			;6326
	ld bc,00402h		;6327
	nop			;632a
	ret po			;632b
	ret m			;632c
	ld a,h			;632d
	inc e			;632e
	sbc a,(hl)		;632f
	ld e,01ch		;6330
	jr c,l6364h		;6332
	ld h,b			;6334
	ld b,b			;6335
	add a,b			;6336
	ld b,000h		;6337
	add a,c			;6339
	inc bc			;633a
	add hl,bc		;633b
	rlca			;633c
	add a,d			;633d
	ld b,004h		;633e
	inc b			;6340
	nop			;6341
	add a,c			;6342
	add a,b			;6343
	inc b			;6344
	ret po			;6345
	ld (bc),a		;6346
	ret nz			;6347
	ld (bc),a		;6348
	add a,b			;6349
	rlca			;634a
	nop			;634b
	adc a,h			;634c
	ld bc,00100h		;634d
	ld bc,00203h		;6350
	inc b			;6353
	nop			;6354
	nop			;6355
	inc bc			;6356
	inc c			;6357
	djnz l635dh		;6358
	nop			;635a
	adc a,d			;635b
	ret p			;635c
l635dh:
	call m,09e3ch		;635d
	adc a,08eh		;6360
	ld e,01ch		;6362
l6364h:
	jr nc,l6326h		;6364
	ex af,af'		;6366
	nop			;6367
	adc a,e			;6368
	ld bc,00303h		;6369
	rlca			;636c
	rlca			;636d
	rrca			;636e
	rrca			;636f
	rra			;6370
	inc e			;6371
	jr nc,$+34		;6372
	dec b			;6374
	nop			;6375
	add a,a			;6376
	ret nz			;6377
	ret po			;6378
	ret p			;6379
	ret p			;637a
	ret po			;637b
	ret po			;637c
	ret nz			;637d
	inc c			;637e
	nop			;637f
	add a,l			;6380
	ld bc,00002h		;6381
	nop			;6384
	ccf			;6385
	ld b,000h		;6386
	adc a,d			;6388
	jr nc,l63e7h		;6389
	ld c,046h		;638b
	rst 28h			;638d
	rst 8			;638e
	rrca			;638f
	ld e,0feh		;6390
l6392h:
	call m,00009h		;6392
	add a,a			;6395
	ld bc,00703h		;6396
	rrca			;6399
	rra			;639a
	ccf			;639b
	ld b,b			;639c
	rlca			;639d
	nop			;639e
	add a,e			;639f
	jr nz,l6392h		;63a0
	ret m			;63a2
	inc bc			;63a3
	ret p			;63a4
	add a,c			;63a5
	ret po			;63a6
	dec c			;63a7
	nop			;63a8
	add a,l			;63a9
	inc bc			;63aa
	nop			;63ab
	ret po			;63ac
	inc e			;63ad
	inc bc			;63ae
	ex af,af'		;63af
	nop			;63b0
	adc a,d			;63b1
	jr l63c0h		;63b2
	ld h,(hl)		;63b4
	or 06fh			;63b5
	rrca			;63b7
	ld c,09eh		;63b8
	ld a,h			;63ba
	jr l63c5h		;63bb
	nop			;63bd
	add a,l			;63be
	inc bc			;63bf
l63c0h:
	rra			;63c0
	rst 38h			;63c1
	rra			;63c2
	inc bc			;63c3
	ld a,(bc)		;63c4
l63c5h:
	nop			;63c5
	add a,e			;63c6
	ld (hl),b		;63c7
	ret m			;63c8
	ret m			;63c9
	inc bc			;63ca
	ret p			;63cb
	add a,c			;63cc
	ld h,b			;63cd
	ld a,(bc)		;63ce
	nop			;63cf
	add a,a			;63d0
	ld b,b			;63d1
	ld hl,00810h		;63d2
	ld b,003h		;63d5
	ld bc,00009h		;63d7
	adc a,d			;63da
	inc b			;63db
	jp p,0137ah		;63dc
	rlca			;63df
	add a,a			;63e0
	cp 0feh			;63e1
	ld a,h			;63e3
	jr nc,l63ech		;63e4
	nop			;63e6
l63e7h:
	add a,l			;63e7
	ccf			;63e8
	rra			;63e9
	rrca			;63ea
	rlca			;63eb
l63ech:
	ld bc,0000bh		;63ec
	add a,c			;63ef
	ret m			;63f0
	inc bc			;63f1
	call m,0f882h		;63f2
	ld a,b			;63f5
	ex af,af'		;63f6
	nop			;63f7
	adc a,e			;63f8
	jr nz,$+18		;63f9
	ld de,00808h		;63fb
	inc b			;63fe
	inc b			;63ff
	ld (bc),a		;6400
	inc bc			;6401
	ld bc,00801h		;6402
	nop			;6405
	adc a,c			;6406
	ret nz			;6407
	ld (hl),h		;6408
	halt			;6409
	ld h,00eh		;640a
	sbc a,(hl)		;640c
	call m,0f0fch		;640d
	inc bc			;6410
	nop			;6411
	adc a,c			;6412
	jr nc,l6431h		;6413
	rrca			;6415
	rrca			;6416
	rlca			;6417
	rlca			;6418
	inc bc			;6419
	inc bc			;641a
	ld bc,0000ah		;641b
	add a,d			;641e
	ret nz			;641f
	ret p			;6420
	inc bc			;6421
	ret m			;6422
	add a,d			;6423
	ret p			;6424
	ld h,b			;6425
	ld b,000h		;6426
	ld b,004h		;6428
	inc bc			;642a
	ld b,003h		;642b
	rlca			;642d
	add a,c			;642e
	inc bc			;642f
	rlca			;6430
l6431h:
	nop			;6431
	adc a,l			;6432
	add a,b			;6433
	ld b,b			;6434
	ld h,b			;6435
	ld (hl),h		;6436
	ld (0ec06h),hl		;6437
	call m,0e0f8h		;643a
	nop			;643d
	inc b			;643e
	ld (bc),a		;643f
	dec b			;6440
	inc bc			;6441
	inc bc			;6442
	ld bc,00009h		;6443
	adc a,c			;6446
	add a,b			;6447
	ret nz			;6448
	ret po			;6449
	ret p			;644a
	ret m			;644b
	ret m			;644c
	call m,010f8h		;644d
	inc b			;6450
	nop			;6451
	sbc a,(hl)		;6452
	inc bc			;6453
	inc c			;6454
	djnz l647dh		;6455
	cpl			;6457
	ld c,a			;6458
	ld b,(hl)		;6459
	ld h,b			;645a
	ld h,b			;645b
	jr nc,l649ah		;645c
	rla			;645e
	ld c,003h		;645f
	nop			;6461
	nop			;6462
	ret nz			;6463
	ret p			;6464
	jr c,l647bh		;6465
	inc e			;6467
	ld c,00ah		;6468
	ld a,(de)		;646a
	ld d,024h		;646b
	call z,sub_7098h	;646d
	ret nz			;6470
	inc bc			;6471
	nop			;6472
	adc a,h			;6473
	inc bc			;6474
	rrca			;6475
	rra			;6476
	rra			;6477
	ccf			;6478
	ccf			;6479
	rra			;647a
l647bh:
	rra			;647b
	rrca			;647c
l647dh:
	inc bc			;647d
	ex af,af'		;647e
	ld bc,00005h		;647f
	adc a,l			;6482
	ret nz			;6483
	ret pe			;6484
	ret po			;6485
	ret p			;6486
	call p,0e8e4h		;6487
	ret c			;648a
	jr nc,l64edh		;648b
	add a,b			;648d
	nop			;648e
	nop			;648f
	nop			;6490
	ret po			;6491
	nop			;6492
	inc c			;6493
	rra			;6494
	rra			;6495
	ld e,01ch		;6496
	dec e			;6498
	dec a			;6499
l649ah:
	inc a			;649a
	ld a,03fh		;649b
	rra			;649d
	rlca			;649e
	rlca			;649f
	inc bc			;64a0
	nop			;64a1
	ld (hl),b		;64a2
	ret m			;64a3
	call m,01ffeh		;64a4
	rst 8			;64a7
	rst 28h			;64a8
	rst 28h			;64a9
	adc a,01eh		;64aa
	cp 0feh			;64ac
	call m,080f8h		;64ae
	nop			;64b1
	jr c,l6533h		;64b2
	ld a,a			;64b4
	ld a,b			;64b5
	inc sp			;64b6
	scf			;64b7
	scf			;64b8
	inc sp			;64b9
	ld a,c			;64ba
	ld a,h			;64bb
	ccf			;64bc
	rrca			;64bd
	rlca			;64be
	rlca			;64bf
	inc bc			;64c0
	nop			;64c1
	ret po			;64c2
	ret p			;64c3
	ret p			;64c4
l64c5h:
	ld (hl),b		;64c5
	jr c,$-96		;64c6
	sbc a,0deh		;64c8
	sbc a,h			;64ca
	jr c,l64c5h		;64cb
	call m,0bcfch		;64cd
	jr l64d2h		;64d0
l64d2h:
	ld (hl),b		;64d2
	call m,sub_7fffh	;64d3
	jr c,l64ebh		;64d6
	inc de			;64d8
	add hl,de		;64d9
	inc a			;64da
	ld a,(hl)		;64db
	rst 38h			;64dc
	rst 38h			;64dd
	rst 30h			;64de
	ld h,e			;64df
	inc bc			;64e0
	inc bc			;64e1
	ld h,b			;64e2
	ret p			;64e3
	ret p			;64e4
	cp 0ffh			;64e5
	ccf			;64e7
	sbc a,a			;64e8
	sbc a,0e8h		;64e9
l64ebh:
	ld l,b			;64eb
	sbc a,b			;64ec
l64edh:
	call m,0bffeh		;64ed
	sbc a,a			;64f0
	ld c,000h		;64f1
	and b			;64f3
	ld bc,00603h		;64f4
	ld bc,0301bh		;64f7
	ld a,a			;64fa
	rst 38h			;64fb
	jr nz,l657dh		;64fc
	inc (hl)		;64fe
	jr $+15			;64ff
	ld b,002h		;6501
	ld bc,0e820h		;6503
	ld a,(de)		;6506
	ret nz			;6507
	jp c,0ff3fh		;6508
	cp a			;650b
	ccf			;650c
	defb 0fdh,09ah,01ah ;illegal sequence	;650d
	ld e,d			;6510
	jp z,020f8h		;6511
	inc bc			;6514
	nop			;6515
	sbc a,l			;6516
	inc c			;6517
	dec de			;6518
	rlca			;6519
	ccf			;651a
	jr nz,$+1		;651b
	ld a,a			;651d
	rla			;651e
	inc de			;651f
	add hl,bc		;6520
	ld b,003h		;6521
	ld bc,0f8e0h		;6523
	ret nz			;6526
	ld a,(de)		;6527
	jp c,0e4a5h		;6528
	ld h,h			;652b
	call po,080e7h		;652c
	ret nz			;652f
	jp c,0f8dah		;6530
l6533h:
	ret po			;6533
	nop			;6534
	adc a,l			;6535
	inc sp			;6536
	rlca			;6537
	rlca			;6538
	dec de			;6539
	inc de			;653a
	ld h,a			;653b
	ccf			;653c
	ex af,af'		;653d
	rlca			;653e
	inc hl			;653f
	ld b,e			;6540
	rrca			;6541
	dec bc			;6542
	inc bc			;6543
	rlca			;6544
	call 0f066h		;6545
	ret p			;6548
	call pe,0e6e4h		;6549
	call m,0f089h		;654c
	ret nz			;654f
	ret nz			;6550
	ret po			;6551
	add a,h			;6552
	ret nz			;6553
	add a,b			;6554
	nop			;6555
	inc bc			;6556
	ld a,(hl)		;6557
	ld a,h			;6558
	jr c,l6579h		;6559
	rra			;655b
	cp 00bh			;655c
	ld e,01bh		;655e
	inc hl			;6560
	ld c,l			;6561
	ld c,c			;6562
	inc c			;6563
	ld c,003h		;6564
	ld h,b			;6566
	cp a			;6567
	rra			;6568
	adc a,03dh		;6569
	ret m			;656b
	cp h			;656c
	jp (hl)			;656d
	ld a,0d8h		;656e
	ret nz			;6570
	ld a,b			;6571
	inc b			;6572
	ld b,d			;6573
	add a,b			;6574
	nop			;6575
	ld h,(hl)		;6576
	rrca			;6577
	rrca			;6578
l6579h:
	scf			;6579
	daa			;657a
	ld h,a			;657b
l657ch:
	ccf			;657c
l657dh:
	sub c			;657d
	rrca			;657e
	inc bc			;657f
	inc bc			;6580
	rlca			;6581
	ld hl,00103h		;6582
	nop			;6585
	call z,0e0e0h		;6586
	ret c			;6589
	ret z			;658a
	and 0fch		;658b
	djnz $-30		;658d
	call nz,0f0c2h		;658f
	ret nc			;6592
	inc bc			;6593
	ret po			;6594
	or b			;6595
	ld b,0fdh		;6596
	ret m			;6598
	ld (hl),e		;6599
	cp h			;659a
	rra			;659b
	dec a			;659c
	sub a			;659d
	ld a,h			;659e
	dec de			;659f
	inc bc			;65a0
	ld e,020h		;65a1
	ld b,d			;65a3
	ld bc,0c000h		;65a4
	ld a,(hl)		;65a7
	ld a,01ch		;65a8
	ld a,b			;65aa
	ret m			;65ab
	ld a,a			;65ac
	ret nc			;65ad
	ld a,b			;65ae
	ret c			;65af
	call nz,092b2h		;65b0
	jr nc,l6625h		;65b3
	ret nz			;65b5
	nop			;65b6
	ld bc,02103h		;65b7
	rlca			;65ba
	inc bc			;65bb
	inc bc			;65bc
	rrca			;65bd
	sub c			;65be
	ccf			;65bf
	ld h,a			;65c0
	daa			;65c1
	scf			;65c2
	rrca			;65c3
	rrca			;65c4
	ld h,(hl)		;65c5
	inc bc			;65c6
	ret po			;65c7
	xor l			;65c8
	ret nc			;65c9
	ret p			;65ca
	jp nz,0e0c4h		;65cb
	djnz $-2		;65ce
	and 0c8h		;65d0
	ret c			;65d2
	ret po			;65d3
	ret po			;65d4
	call z,00100h		;65d5
	ld b,d			;65d8
	jr nz,l65f9h		;65d9
	inc bc			;65db
	dec de			;65dc
	ld a,h			;65dd
	sub a			;65de
	dec a			;65df
	rra			;65e0
	cp h			;65e1
	ld (hl),e		;65e2
	ret m			;65e3
	defb 0fdh,006h,0c0h ;illegal sequence	;65e4
	ld (hl),b		;65e7
	jr nc,l657ch		;65e8
	or d			;65ea
	call nz,sub_78d8h	;65eb
	ret nc			;65ee
	ld a,a			;65ef
	ret m			;65f0
	ld a,b			;65f1
	inc e			;65f2
	ld a,07eh		;65f3
	ret nz			;65f5
	inc bc			;65f6
	rlca			;65f7
	rst 0			;65f8
l65f9h:
	dec bc			;65f9
	rrca			;65fa
	ld b,e			;65fb
	inc hl			;65fc
	rlca			;65fd
	ex af,af'		;65fe
	ccf			;65ff
	ld h,a			;6600
	inc de			;6601
	dec de			;6602
	rlca			;6603
	rlca			;6604
	inc sp			;6605
	nop			;6606
	add a,b			;6607
	ret nz			;6608
	add a,h			;6609
	ret po			;660a
	ret nz			;660b
	ret nz			;660c
	ret p			;660d
	adc a,c			;660e
	call m,0e4e6h		;660f
	call pe,0f0f0h		;6612
	ld h,(hl)		;6615
	inc bc			;6616
	ld c,00ch		;6617
	ld c,c			;6619
	ld c,l			;661a
	inc hl			;661b
	dec de			;661c
	ld e,00bh		;661d
	cp 01fh			;661f
	ld e,038h		;6621
	ld a,h			;6623
	ld a,(hl)		;6624
l6625h:
	inc bc			;6625
	nop			;6626
	add a,b			;6627
	ld b,d			;6628
	inc b			;6629
	ld a,b			;662a
	ret nz			;662b
	ret c			;662c
	ld a,0e9h		;662d
	cp h			;662f
	ret m			;6630
	dec a			;6631
	adc a,01fh		;6632
	cp a			;6634
	ld h,b			;6635
	nop			;6636
	inc c			;6637
	ld (bc),a		;6638
	ld bc,0f979h		;6639
	rst 38h			;663c
	djnz l663fh		;663d
l663fh:
	ccf			;663f
	inc bc			;6640
	add hl,bc		;6641
	and b			;6642
	ld de,00021h		;6643
	ld b,b			;6646
	ld h,(hl)		;6647
	ld h,a			;6648
	ld e,a			;6649
	sbc a,0feh		;664a
	rst 38h			;664c
	nop			;664d
	adc a,b			;664e
	rst 30h			;664f
	rst 38h			;6650
	sub 0deh		;6651
	ld a,a			;6653
	daa			;6654
	sub (hl)		;6655
	nop			;6656
	djnz l665dh		;6657
	ld (bc),a		;6659
	ld a,(bc)		;665a
	ld a,c			;665b
	rst 0			;665c
l665dh:
	ld (hl),c		;665d
	add hl,sp		;665e
	ld a,009h		;665f
	inc bc			;6661
	ld (bc),a		;6662
	dec b			;6663
	nop			;6664
	sub c			;6665
	ld c,b			;6666
	ld (hl),b		;6667
	ld h,b			;6668
	xor 073h		;6669
	sbc a,09ch		;666b
	add hl,hl		;666d
	ld (hl),e		;666e
	and 060h		;666f
	ld d,b			;6671
	ex af,af'		;6672
	nop			;6673
	nop			;6674
	ld hl,00311h		;6675
	add hl,bc		;6678
	sbc a,d			;6679
	ccf			;667a
	nop			;667b
	djnz $+1		;667c
	ld sp,hl		;667e
	ld a,c			;667f
	ld bc,00c02h		;6680
	nop			;6683
	sub (hl)		;6684
	daa			;6685
	ld a,a			;6686
	sbc a,0d6h		;6687
	rst 38h			;6689
	rst 30h			;668a
	adc a,b			;668b
	nop			;668c
	rst 38h			;668d
	cp 0deh			;668e
	ld e,a			;6690
	ld h,a			;6691
	ld h,(hl)		;6692
	ld b,b			;6693
	inc bc			;6694
	nop			;6695
	or b			;6696
	ld (bc),a		;6697
	inc bc			;6698
	add hl,bc		;6699
	ld a,039h		;669a
	ld (hl),c		;669c
	rst 0			;669d
	ld a,c			;669e
	ld a,(bc)		;669f
	ld (bc),a		;66a0
	inc b			;66a1
	djnz l66a4h		;66a2
l66a4h:
	nop			;66a4
	ex af,af'		;66a5
	ld d,b			;66a6
	ld h,b			;66a7
	and 073h		;66a8
	add hl,hl		;66aa
	sbc a,h			;66ab
	sbc a,073h		;66ac
	xor 060h		;66ae
	ld (hl),b		;66b0
	ld c,b			;66b1
	nop			;66b2
	nop			;66b3
	ld l,c			;66b4
	call po,sub_7bfeh	;66b5
	ld l,e			;66b8
	rst 38h			;66b9
	rst 28h			;66ba
	ld de,0ff00h		;66bb
	ld a,a			;66be
	ld a,e			;66bf
	jp m,l66e6h		;66c0
	ld (bc),a		;66c3
	nop			;66c4
	add a,h			;66c5
	adc a,b			;66c6
	inc bc			;66c7
	sub b			;66c8
	sbc a,b			;66c9
	call m,00800h		;66ca
	rst 38h			;66cd
	sbc a,a			;66ce
	sbc a,(hl)		;66cf
	add a,b			;66d0
	ld b,b			;66d1
	jr nc,l66d4h		;66d2
l66d4h:
	nop			;66d4
	djnz l66e1h		;66d5
	ld b,067h		;66d7
	adc a,094h		;66d9
	add hl,sp		;66db
	ld a,e			;66dc
	adc a,077h		;66dd
	ld b,00eh		;66df
l66e1h:
	ld (de),a		;66e1
	dec b			;66e2
	nop			;66e3
	and a			;66e4
	ld b,b			;66e5
l66e6h:
	ret nz			;66e6
	sub b			;66e7
	ld a,h			;66e8
	sbc a,h			;66e9
	adc a,(hl)		;66ea
	ex (sp),hl		;66eb
	sbc a,(hl)		;66ec
	ld d,b			;66ed
	ld b,b			;66ee
	jr nz,l66f9h		;66ef
	nop			;66f1
	ld (bc),a		;66f2
	ld h,(hl)		;66f3
	and 0fah		;66f4
	ld a,e			;66f6
	ld a,a			;66f7
	rst 38h			;66f8
l66f9h:
	nop			;66f9
	ld de,0ffefh		;66fa
	ld l,e			;66fd
	ld a,e			;66fe
	cp 0e4h			;66ff
	ld l,c			;6701
	nop			;6702
	jr nc,l6745h		;6703
	add a,b			;6705
	sbc a,(hl)		;6706
	sbc a,a			;6707
	rst 38h			;6708
	ex af,af'		;6709
	nop			;670a
	call m,09003h		;670b
	add a,d			;670e
	adc a,b			;670f
	add a,h			;6710
	inc bc			;6711
	nop			;6712
	sbc a,e			;6713
	ld (de),a		;6714
	ld c,006h		;6715
	ld (hl),a		;6717
	adc a,07bh		;6718
	add hl,sp		;671a
	sub h			;671b
	adc a,067h		;671c
	ld b,00ah		;671e
	djnz l6722h		;6720
l6722h:
	nop			;6722
	ex af,af'		;6723
	jr nz,$+66		;6724
	ld d,b			;6726
	sbc a,(hl)		;6727
	ex (sp),hl		;6728
	adc a,(hl)		;6729
	sbc a,h			;672a
	ld a,h			;672b
	sub b			;672c
	ret nz			;672d
	ld b,b			;672e
	inc bc			;672f
	nop			;6730
	adc a,l			;6731
	inc sp			;6732
	rlca			;6733
	rlca			;6734
	inc hl			;6735
	inc de			;6736
	ld h,a			;6737
	ccf			;6738
	inc bc			;6739
	rlca			;673a
	inc hl			;673b
	ld b,e			;673c
	rrca			;673d
	ld b,d			;673e
	inc bc			;673f
	rlca			;6740
	call 0f066h		;6741
	ret p			;6744
l6745h:
	ld (0e6e4h),hl		;6745
	call m,0f060h		;6748
	ret nz			;674b
	ret nz			;674c
	ret po			;674d
	add a,b			;674e
	ret nz			;674f
	add a,b			;6750
	nop			;6751
	inc bc			;6752
	ld a,(hl)		;6753
	ld a,h			;6754
	jr c,l6775h		;6755
	rra			;6757
	cp 008h			;6758
	ld e,01bh		;675a
	inc hl			;675c
	ld c,l			;675d
	ld c,c			;675e
	inc c			;675f
	ld c,003h		;6760
	ld h,b			;6762
	cp a			;6763
	rra			;6764
	adc a,03dh		;6765
	ret m			;6767
	cp h			;6768
	adc a,c			;6769
	ld a,0d8h		;676a
	ret nz			;676c
	ld a,b			;676d
	inc b			;676e
	ld b,d			;676f
	add a,b			;6770
	nop			;6771
	ld h,(hl)		;6772
	rrca			;6773
	rrca			;6774
l6775h:
	ld b,h			;6775
	daa			;6776
	ld h,a			;6777
l6778h:
	ccf			;6778
	ld b,00fh		;6779
	inc bc			;677b
	inc bc			;677c
	rlca			;677d
	ld bc,00103h		;677e
	nop			;6781
	call z,0e0e0h		;6782
	call nz,0e6c8h		;6785
	call m,0e0c0h		;6788
	call nz,0f0c2h		;678b
	ld b,d			;678e
	inc bc			;678f
	ret po			;6790
	or b			;6791
	ld b,0fdh		;6792
	ret m			;6794
	ld (hl),e		;6795
	cp h			;6796
	rra			;6797
	dec a			;6798
	sub c			;6799
	ld a,h			;679a
	dec de			;679b
	inc bc			;679c
	ld e,020h		;679d
	ld b,d			;679f
	ld bc,0c000h		;67a0
	ld a,(hl)		;67a3
	ld a,01ch		;67a4
	ld a,b			;67a6
	ret m			;67a7
	ld a,a			;67a8
	djnz l6823h		;67a9
	ret c			;67ab
	call nz,092b2h		;67ac
	jr nc,l6821h		;67af
	ret nz			;67b1
	nop			;67b2
	ld bc,00103h		;67b3
	rlca			;67b6
	inc bc			;67b7
	inc bc			;67b8
	rrca			;67b9
	ld b,03fh		;67ba
	ld h,a			;67bc
	daa			;67bd
	ld b,h			;67be
	rrca			;67bf
	rrca			;67c0
	ld h,(hl)		;67c1
	inc bc			;67c2
	ret po			;67c3
	xor l			;67c4
	ld b,d			;67c5
	ret p			;67c6
	jp nz,0e0c4h		;67c7
	ret nz			;67ca
	call m,0c8e6h		;67cb
	call nz,0e0e0h		;67ce
	call z,00100h		;67d1
	ld b,d			;67d4
	jr nz,l67f5h		;67d5
	inc bc			;67d7
	dec de			;67d8
	ld a,h			;67d9
	sub c			;67da
	dec a			;67db
	rra			;67dc
	cp h			;67dd
	ld (hl),e		;67de
	ret m			;67df
	defb 0fdh,006h,0c0h ;illegal sequence	;67e0
	ld (hl),b		;67e3
	jr nc,l6778h		;67e4
	or d			;67e6
	call nz,sub_78d8h	;67e7
	djnz l686bh		;67ea
	ret m			;67ec
	ld a,b			;67ed
	inc e			;67ee
	ld a,07eh		;67ef
	ret nz			;67f1
	inc bc			;67f2
	rlca			;67f3
	rst 0			;67f4
l67f5h:
	ld b,d			;67f5
	rrca			;67f6
	ld b,e			;67f7
	inc hl			;67f8
	rlca			;67f9
	inc bc			;67fa
	ccf			;67fb
	ld h,a			;67fc
	inc de			;67fd
	inc hl			;67fe
	rlca			;67ff
	rlca			;6800
	inc sp			;6801
	nop			;6802
	add a,b			;6803
	ret nz			;6804
	add a,b			;6805
	ret po			;6806
	ret nz			;6807
	ret nz			;6808
	ret p			;6809
	ld h,b			;680a
	call m,0e4e6h		;680b
	ld (0f0f0h),hl		;680e
	ld h,(hl)		;6811
	inc bc			;6812
	ld c,00ch		;6813
	ld c,c			;6815
	ld c,l			;6816
	inc hl			;6817
	dec de			;6818
	ld e,008h		;6819
	cp 01fh			;681b
	ld e,038h		;681d
	ld a,h			;681f
	ld a,(hl)		;6820
l6821h:
	inc bc			;6821
	nop			;6822
l6823h:
	add a,b			;6823
	ld b,d			;6824
	inc b			;6825
	ld a,b			;6826
	ret nz			;6827
	ret c			;6828
	ld a,089h		;6829
	cp h			;682b
	ret m			;682c
	dec a			;682d
	adc a,01fh		;682e
	cp a			;6830
	ld h,b			;6831
	nop			;6832
	inc c			;6833
	ld (bc),a		;6834
	ld bc,0f979h		;6835
	rst 38h			;6838
	ld h,c			;6839
	add hl,sp		;683a
	ccf			;683b
	inc bc			;683c
	add hl,bc		;683d
	and b			;683e
	ld de,00021h		;683f
	ld b,b			;6842
	ld h,(hl)		;6843
	ld h,a			;6844
	ld e,a			;6845
	sbc a,0feh		;6846
	rst 38h			;6848
	sbc a,014h		;6849
	rst 30h			;684b
	rst 38h			;684c
	sub 0deh		;684d
	ld a,a			;684f
	daa			;6850
	sub (hl)		;6851
	nop			;6852
	djnz l6859h		;6853
	ld (bc),a		;6855
	ld a,(bc)		;6856
	ld a,c			;6857
	rst 0			;6858
l6859h:
	djnz l685bh		;6859
l685bh:
	ld a,009h		;685b
	inc bc			;685d
	ld (bc),a		;685e
	dec b			;685f
	nop			;6860
l6861h:
	sub c			;6861
	ld c,b			;6862
	ld (hl),b		;6863
	ld h,b			;6864
	xor 073h		;6865
	nop			;6867
	adc a,b			;6868
	add hl,hl		;6869
	ld (hl),e		;686a
l686bh:
	and 060h		;686b
	ld d,b			;686d
	ex af,af'		;686e
	nop			;686f
	nop			;6870
	ld hl,00311h		;6871
	add hl,bc		;6874
	sbc a,d			;6875
	ccf			;6876
	add hl,sp		;6877
	ld h,c			;6878
	rst 38h			;6879
	ld sp,hl		;687a
	ld a,c			;687b
	ld bc,00c02h		;687c
	nop			;687f
	sub (hl)		;6880
	daa			;6881
	ld a,a			;6882
	sbc a,0d6h		;6883
	rst 38h			;6885
	rst 30h			;6886
	inc d			;6887
	sbc a,0ffh		;6888
	cp 0deh			;688a
	ld e,a			;688c
	ld h,a			;688d
	ld h,(hl)		;688e
	ld b,b			;688f
	inc bc			;6890
	nop			;6891
	or b			;6892
	ld (bc),a		;6893
	inc bc			;6894
	add hl,bc		;6895
	ld a,000h		;6896
	djnz l6861h		;6898
	ld a,c			;689a
	ld a,(bc)		;689b
	ld (bc),a		;689c
	inc b			;689d
	djnz l68a0h		;689e
l68a0h:
	nop			;68a0
	ex af,af'		;68a1
	ld d,b			;68a2
	ld h,b			;68a3
	and 073h		;68a4
	add hl,hl		;68a6
	adc a,b			;68a7
	nop			;68a8
	ld (hl),e		;68a9
	xor 060h		;68aa
	ld (hl),b		;68ac
	ld c,b			;68ad
	nop			;68ae
	nop			;68af
	ld l,c			;68b0
	call po,sub_7bfeh	;68b1
	ld l,e			;68b4
	rst 38h			;68b5
	rst 28h			;68b6
	jr z,$+125		;68b7
	rst 38h			;68b9
	ld a,a			;68ba
	ld a,e			;68bb
	jp m,l66e6h		;68bc
	ld (bc),a		;68bf
	nop			;68c0
	add a,h			;68c1
	adc a,b			;68c2
	inc bc			;68c3
	sub b			;68c4
	sbc a,b			;68c5
	call m,0869ch		;68c6
	rst 38h			;68c9
	sbc a,a			;68ca
	sbc a,(hl)		;68cb
	add a,b			;68cc
	ld b,b			;68cd
	jr nc,l68d0h		;68ce
l68d0h:
	nop			;68d0
	djnz l68ddh		;68d1
	ld b,067h		;68d3
	adc a,094h		;68d5
	ld de,0ce00h		;68d7
	ld (hl),a		;68da
	ld b,00eh		;68db
l68ddh:
	ld (de),a		;68dd
	dec b			;68de
	nop			;68df
	and a			;68e0
	ld b,b			;68e1
	ret nz			;68e2
	sub b			;68e3
	ld a,h			;68e4
	nop			;68e5
	ex af,af'		;68e6
l68e7h:
	ex (sp),hl		;68e7
	sbc a,(hl)		;68e8
	ld d,b			;68e9
	ld b,b			;68ea
	jr nz,l68f5h		;68eb
	nop			;68ed
	ld (bc),a		;68ee
	ld h,(hl)		;68ef
	and 0fah		;68f0
	ld a,e			;68f2
	ld a,a			;68f3
	rst 38h			;68f4
l68f5h:
	ld a,e			;68f5
	jr z,l68e7h		;68f6
	rst 38h			;68f8
	ld l,e			;68f9
	ld a,e			;68fa
	cp 0e4h			;68fb
	ld l,c			;68fd
	nop			;68fe
	jr nc,l6941h		;68ff
	add a,b			;6901
	sbc a,(hl)		;6902
	sbc a,a			;6903
	rst 38h			;6904
	add a,(hl)		;6905
	sbc a,h			;6906
	call m,09003h		;6907
	add a,d			;690a
	adc a,b			;690b
	add a,h			;690c
	inc bc			;690d
	nop			;690e
	sbc a,e			;690f
	ld (de),a		;6910
	ld c,006h		;6911
	ld (hl),a		;6913
	adc a,000h		;6914
	ld de,0ce94h		;6916
	ld h,a			;6919
	ld b,00ah		;691a
	djnz l691eh		;691c
l691eh:
	nop			;691e
	ex af,af'		;691f
	jr nz,l6962h		;6920
	ld d,b			;6922
	sbc a,(hl)		;6923
	ex (sp),hl		;6924
	ex af,af'		;6925
	nop			;6926
	ld a,h			;6927
	sub b			;6928
	ret nz			;6929
	ld b,b			;692a
	inc bc			;692b
	nop			;692c
	nop			;692d
	add a,l			;692e
	nop			;692f
	ld (0fd7dh),a		;6930
	cp 004h			;6933
	rst 38h			;6935
	ld (bc),a		;6936
	ld a,a			;6937
	or l			;6938
	ccf			;6939
	rra			;693a
	rrca			;693b
	rlca			;693c
	inc bc			;693d
	nop			;693e
	ld c,b			;693f
	or h			;6940
l6941h:
	jp z,02de4h		;6941
	and 056h		;6944
	jp m,0fdfdh		;6946
	ei			;6949
	rst 38h			;694a
	rst 38h			;694b
	cp 0f8h			;694c
	ld bc,0230dh		;694e
	ld (hl),d		;6951
	ld (hl),c		;6952
	ret m			;6953
	push hl			;6954
	call p,059a6h		;6955
	ld (de),a		;6958
	dec de			;6959
	add hl,bc		;695a
	inc bc			;695b
	ld bc,0c000h		;695c
	or b			;695f
	ret z			;6960
	ld (hl),h		;6961
l6962h:
	ld a,(01dd2h)		;6962
	xor c			;6965
	dec b			;6966
	sub d			;6967
	ld h,d			;6968
	push af			;6969
	pop bc			;696a
	or d			;696b
	call c,000b0h		;696c
	sbc a,l			;696f
	nop			;6970
	add a,c			;6971
	ld b,c			;6972
	ld (0170fh),hl		;6973
	inc bc			;6976
	inc c			;6977
	inc de			;6978
	ld a,(bc)		;6979
	ld c,02bh		;697a
	inc bc			;697c
	nop			;697d
	ld bc,00000h		;697e
	ld (bc),a		;6981
	ld b,04ch		;6982
	ld l,b			;6984
	ret p			;6985
	ld d,b			;6986
	ret p			;6987
	ld d,b			;6988
	ret po			;6989
	ret nc			;698a
	ret m			;698b
	add a,b			;698c
	dec b			;698d
	nop			;698e
	sbc a,e			;698f
	jr nz,$+87		;6990
	inc (hl)		;6992
	ld c,01ch		;6993
	dec de			;6995
	inc c			;6996
	rra			;6997
	dec d			;6998
	dec e			;6999
	ld (bc),a		;699a
	ld bc,00100h		;699b
	nop			;699e
	nop			;699f
	ld a,(bc)		;69a0
	call nc,0e0d8h		;69a1
	ret p			;69a4
	ld (hl),b		;69a5
	ret p			;69a6
	ret p			;69a7
	or b			;69a8
	ld l,b			;69a9
	add a,b			;69aa
	inc bc			;69ab
	nop			;69ac
	nop			;69ad
	add a,l			;69ae
	ld sp,0317bh		;69af
	ccf			;69b2
	ld a,a			;69b3
	inc bc			;69b4
	rst 38h			;69b5
	add a,d			;69b6
	dec a			;69b7
	jp 0db03h		;69b8
	adc a,b			;69bb
	jp 03f3fh		;69bc
	adc a,h			;69bf
	sbc a,08ch		;69c0
	call m,003feh		;69c2
	rst 38h			;69c5
	add a,d			;69c6
	cp h			;69c7
	jp 0db03h		;69c8
	add a,(hl)		;69cb
	jp 0fcfch		;69cc
	ccf			;69cf
	ccf			;69d0
	jp 0db03h		;69d1
	add a,d			;69d4
	jp 0033dh		;69d5
	rst 38h			;69d8
	adc a,b			;69d9
	ld a,a			;69da
	ccf			;69db
	ld sp,0317bh		;69dc
	call m,0c3fch		;69df
	inc bc			;69e2
	in a,(082h)		;69e3
	jp 003bch		;69e5
	rst 38h			;69e8
	add a,l			;69e9
	cp 0fch			;69ea
	adc a,h			;69ec
	sbc a,08ch		;69ed
	nop			;69ef
	dec b			;69f0
	rst 38h			;69f1
	adc a,(hl)		;69f2
	rst 18h			;69f3
	ld h,a			;69f4
	inc de			;69f5
	adc a,e			;69f6
	ld b,c			;69f7
	and c			;69f8
	sub c			;69f9
	sub b			;69fa
	jr z,$+70		;69fb
	and h			;69fd
	nop			;69fe
	add a,b			;69ff
	add a,b			;6a00
	dec b			;6a01
	ret nz			;6a02
	inc b			;6a03
	ret po			;6a04
	inc b			;6a05
	ret p			;6a06
	add a,c			;6a07
	jr $+6			;6a08
	nop			;6a0a
	inc bc			;6a0b
	ld bc,00b02h		;6a0c
	add a,a			;6a0f
	ld (de),a		;6a10
	inc (hl)		;6a11
	ld h,l			;6a12
	ld c,c			;6a13
	jp 0f09fh		;6a14
	ld b,0f8h		;6a17
	inc bc			;6a19
	ret p			;6a1a
	ld (bc),a		;6a1b
	ret po			;6a1c
	ld (bc),a		;6a1d
	ret nz			;6a1e
	ld (bc),a		;6a1f
	add a,b			;6a20
	ld (bc),a		;6a21
	nop			;6a22
	add a,(hl)		;6a23
	ld hl,08443h		;6a24
	ex af,af'		;6a27
	ld bc,0040fh		;6a28
	rst 38h			;6a2b
	add a,h			;6a2c
	call m,0c0f0h		;6a2d
	nop			;6a30
	dec b			;6a31
	rst 38h			;6a32
	ld (bc),a		;6a33
	cp 084h			;6a34
	call m,080e0h		;6a36
	add a,b			;6a39
	ld b,000h		;6a3a
	add a,e			;6a3c
	ret nz			;6a3d
	ret p			;6a3e
	call m,0ff05h		;6a3f
l6a42h:
	add a,a			;6a42
	rst 18h			;6a43
	ld h,a			;6a44
	inc de			;6a45
	adc a,e			;6a46
	ld b,c			;6a47
	and c			;6a48
	sub c			;6a49
	dec b			;6a4a
	nop			;6a4b
	ld (bc),a		;6a4c
	add a,b			;6a4d
	dec b			;6a4e
	ret nz			;6a4f
	inc b			;6a50
	ret po			;6a51
	add a,l			;6a52
	sub b			;6a53
	jr z,l6a9ah		;6a54
	and h			;6a56
	jr $+6			;6a57
	nop			;6a59
	inc bc			;6a5a
	ld bc,00b02h		;6a5b
	add a,d			;6a5e
	ld (de),a		;6a5f
	inc (hl)		;6a60
	dec b			;6a61
	ret p			;6a62
	ld b,0f8h		;6a63
	inc bc			;6a65
	ret p			;6a66
	ld (bc),a		;6a67
	ret po			;6a68
	add a,h			;6a69
	ld h,l			;6a6a
	ld c,c			;6a6b
	jp 0059fh		;6a6c
	rst 38h			;6a6f
	ld (bc),a		;6a70
	cp 089h			;6a71
	call m,080e0h		;6a73
	add a,b			;6a76
	nop			;6a77
	ret nz			;6a78
	ret nz			;6a79
	add a,b			;6a7a
	add a,b			;6a7b
	inc c			;6a7c
	nop			;6a7d
	nop			;6a7e
l6a7fh:
	ret nz			;6a7f
l6a80h:
	inc bc			;6a80
	rlca			;6a81
	inc c			;6a82
l6a83h:
	inc c			;6a83
	jr $+26			;6a84
	ret m			;6a86
	cp b			;6a87
	jr l6a42h		;6a88
	ret m			;6a8a
	jr $+14			;6a8b
	inc c			;6a8d
	rlca			;6a8e
	inc bc			;6a8f
	ret nz			;6a90
	ret po			;6a91
	jr nc,l6ac4h		;6a92
	jr l6aaeh		;6a94
	rra			;6a96
	dec e			;6a97
	jr l6ab7h		;6a98
l6a9ah:
	rra			;6a9a
	jr l6acdh		;6a9b
l6a9dh:
	jr nc,l6a7fh		;6a9d
	ret nz			;6a9f
	inc bc			;6aa0
	inc b			;6aa1
l6aa2h:
	dec bc			;6aa2
	dec bc			;6aa3
	rla			;6aa4
	rla			;6aa5
	rst 30h			;6aa6
	ld d,a			;6aa7
	rst 30h			;6aa8
	ld d,a			;6aa9
	rst 30h			;6aaa
	rla			;6aab
	dec bc			;6aac
	dec bc			;6aad
l6aaeh:
	inc b			;6aae
	inc bc			;6aaf
	ret nz			;6ab0
	jr nz,l6a83h		;6ab1
	ret nc			;6ab3
	ret pe			;6ab4
	ret pe			;6ab5
	rst 28h			;6ab6
l6ab7h:
	jp pe,0eaefh		;6ab7
	rst 28h			;6aba
	ret pe			;6abb
	ret nc			;6abc
	ret nc			;6abd
	jr nz,l6a80h		;6abe
	nop			;6ac0
	ret nz			;6ac1
	inc bc			;6ac2
	inc c			;6ac3
l6ac4h:
	inc de			;6ac4
	cpl			;6ac5
	ld b,01fh		;6ac6
	rra			;6ac8
	ld b,0bfh		;6ac9
	sbc a,a			;6acb
	ld b,e			;6acc
l6acdh:
	ld b,b			;6acd
	jr nz,l6ae0h		;6ace
	inc c			;6ad0
	inc bc			;6ad1
	ret nz			;6ad2
	jr nc,l6a9dh		;6ad3
	call p,08000h		;6ad5
	add a,b			;6ad8
	nop			;6ad9
	ld sp,iy		;6ada
	jp nz,00402h		;6adc
	ex af,af'		;6adf
l6ae0h:
	jr nc,l6aa2h		;6ae0
	nop			;6ae2
	inc bc			;6ae3
	inc c			;6ae4
	djnz l6b60h		;6ae5
	ld h,b			;6ae7
	ret po			;6ae8
	ld sp,hl		;6ae9
	ld b,b			;6aea
	ld h,b			;6aeb
	inc a			;6aec
	ccf			;6aed
	rra			;6aee
	rrca			;6aef
	inc bc			;6af0
	nop			;6af1
	nop			;6af2
	ret nz			;6af3
	jr nc,$+10		;6af4
	cp 07eh			;6af6
	ld a,a			;6af8
l6af9h:
	rst 38h			;6af9
	ld (bc),a		;6afa
	ld b,03ch		;6afb
	call m,0f0f8h		;6afd
	ret nz			;6b00
	nop			;6b01
	nop			;6b02
	ld b,000h		;6b03
	ld (bc),a		;6b05
	rlca			;6b06
	ld c,000h		;6b07
	ld (bc),a		;6b09
	jr nz,l6b14h		;6b0a
	nop			;6b0c
	ld b,000h		;6b0d
	ld (bc),a		;6b0f
	rlca			;6b10
	ld c,000h		;6b11
	ld (bc),a		;6b13
l6b14h:
	jr nz,l6b1eh		;6b14
	nop			;6b16
	nop			;6b17
	add a,l			;6b18
	rlca			;6b19
	jr l6b3ch		;6b1a
	ld h,b			;6b1c
	ld b,b			;6b1d
l6b1eh:
	inc b			;6b1e
	ret nz			;6b1f
	adc a,h			;6b20
	ret po			;6b21
	or b			;6b22
	ld a,h			;6b23
	ld e,a			;6b24
	daa			;6b25
	jr l6b2fh		;6b26
	ret po			;6b28
	jr l6b2fh		;6b29
	ld b,002h		;6b2b
	inc b			;6b2d
l6b2eh:
	inc bc			;6b2e
l6b2fh:
	add a,a			;6b2f
	rlca			;6b30
	dec c			;6b31
	ld a,0fah		;6b32
	call po,0e018h		;6b34
	inc bc			;6b37
	nop			;6b38
	ld (bc),a		;6b39
	inc c			;6b3a
	add a,d			;6b3b
l6b3ch:
	nop			;6b3c
	ld (bc),a		;6b3d
	inc bc			;6b3e
	nop			;6b3f
	add a,l			;6b40
	ld b,b			;6b41
	nop			;6b42
	jr nz,$+26		;6b43
	rlca			;6b45
	dec bc			;6b46
	nop			;6b47
	adc a,b			;6b48
	ld (bc),a		;6b49
	nop			;6b4a
	inc b			;6b4b
	jr l6b2eh		;6b4c
	nop			;6b4e
	rlca			;6b4f
	ex af,af'		;6b50
	inc bc			;6b51
	nop			;6b52
	inc bc			;6b53
	add a,b			;6b54
	inc bc			;6b55
	nop			;6b56
	ld (bc),a		;6b57
	ld b,b			;6b58
	adc a,b			;6b59
	jr nz,l6b5ch		;6b5a
l6b5ch:
	ld b,080h		;6b5c
	jr l6b60h		;6b5e
l6b60h:
	ld (bc),a		;6b60
	nop			;6b61
	inc bc			;6b62
	ld bc,00002h		;6b63
	add a,(hl)		;6b66
	ld bc,00200h		;6b67
	inc b			;6b6a
	ex af,af'		;6b6b
	ret po			;6b6c
	inc bc			;6b6d
	nop			;6b6e
	add a,d			;6b6f
	jr l6b82h		;6b70
	ld b,000h		;6b72
	ld (bc),a		;6b74
	jr nz,l6af9h		;6b75
	djnz l6b7fh		;6b77
	dec c			;6b79
	nop			;6b7a
	adc a,b			;6b7b
	inc b			;6b7c
	nop			;6b7d
	ret po			;6b7e
l6b7fh:
	nop			;6b7f
	add a,b			;6b80
	nop			;6b81
l6b82h:
	ex af,af'		;6b82
	ld b,b			;6b83
	inc b			;6b84
	nop			;6b85
	add a,c			;6b86
	add a,b			;6b87
l6b88h:
	ld b,000h		;6b88
	add a,l			;6b8a
	add a,b			;6b8b
	ld bc,00000h		;6b8c
	ld bc,00006h		;6b8f
	add a,c			;6b92
	inc b			;6b93
	inc b			;6b94
	nop			;6b95
	add a,l			;6b96
	add hl,bc		;6b97
	add a,b			;6b98
	nop			;6b99
l6b9ah:
	ex af,af'		;6b9a
	ld b,b			;6b9b
	inc b			;6b9c
	nop			;6b9d
	add a,c			;6b9e
	add a,b			;6b9f
	ld b,000h		;6ba0
	add a,l			;6ba2
	add a,b			;6ba3
	ld bc,00000h		;6ba4
	ld bc,00006h		;6ba7
	add a,c			;6baa
	inc b			;6bab
	inc b			;6bac
	nop			;6bad
	add a,c			;6bae
	add hl,bc		;6baf
	nop			;6bb0
	add a,e			;6bb1
	nop			;6bb2
	ex af,af'		;6bb3
	rlca			;6bb4
	ld c,000h		;6bb5
	add a,d			;6bb7
	djnz l6b9ah		;6bb8
	dec c			;6bba
	nop			;6bbb
	add a,h			;6bbc
	ld b,b			;6bbd
	inc h			;6bbe
	ex af,af'		;6bbf
	inc bc			;6bc0
	inc c			;6bc1
	nop			;6bc2
	add a,h			;6bc3
	ld (bc),a		;6bc4
	inc h			;6bc5
	djnz l6b88h		;6bc6
	inc c			;6bc8
	nop			;6bc9
l6bcah:
	add a,l			;6bca
	inc e			;6bcb
	rla			;6bcc
	add hl,bc		;6bcd
	inc b			;6bce
	dec b			;6bcf
	dec bc			;6bd0
	nop			;6bd1
	add a,(hl)		;6bd2
	inc e			;6bd3
	call p,010c8h		;6bd4
	ld d,b			;6bd7
	add a,b			;6bd8
	ld a,(bc)		;6bd9
	nop			;6bda
	add a,a			;6bdb
	jr nz,l6be6h		;6bdc
	ld b,003h		;6bde
	ld (bc),a		;6be0
	inc bc			;6be1
	ld bc,00009h		;6be2
	add a,a			;6be5
l6be6h:
	ld (bc),a		;6be6
	ex af,af'		;6be7
	jr nc,l6bcah		;6be8
	and b			;6bea
	ld h,b			;6beb
	ret nz			;6bec
	add hl,bc		;6bed
	nop			;6bee
	add a,l			;6bef
	djnz l6c09h		;6bf0
	dec bc			;6bf2
	dec b			;6bf3
	dec b			;6bf4
	inc bc			;6bf5
	ld (bc),a		;6bf6
	inc bc			;6bf7
	ld bc,00005h		;6bf8
	adc a,e			;6bfb
	inc b			;6bfc
	call p,0d0e8h		;6bfd
	ret nc			;6c00
	and b			;6c01
	jr nz,$+34		;6c02
	ld b,b			;6c04
	ld b,b			;6c05
	ret nz			;6c06
	dec b			;6c07
	nop			;6c08
l6c09h:
	add a,l			;6c09
	jr nz,l6c14h		;6c0a
l6c0ch:
	inc b			;6c0c
	ld (bc),a		;6c0d
	ld (bc),a		;6c0e
	inc bc			;6c0f
	ld bc,00008h		;6c10
	adc a,d			;6c13
l6c14h:
	ld (bc),a		;6c14
	ex af,af'		;6c15
	djnz $+34		;6c16
	jr nz,$+66		;6c18
	ret nz			;6c1a
	ret nz			;6c1b
	add a,b			;6c1c
	add a,b			;6c1d
	rlca			;6c1e
	nop			;6c1f
l6c20h:
	add a,h			;6c20
	inc c			;6c21
	inc bc			;6c22
	ld bc,00902h		;6c23
	ld bc,00003h		;6c26
	add a,(hl)		;6c29
	jr l6c0ch		;6c2a
	ret nz			;6c2c
	and b			;6c2d
	ld b,b			;6c2e
	ret nz			;6c2f
	ld b,040h		;6c30
	adc a,b			;6c32
	ret nz			;6c33
	add a,b			;6c34
	nop			;6c35
	nop			;6c36
	djnz l6c3dh		;6c37
	ld (bc),a		;6c39
	ld bc,0000ch		;6c3a
l6c3dh:
	add a,(hl)		;6c3d
	inc b			;6c3e
	djnz l6c61h		;6c3f
	ld b,b			;6c41
	add a,b			;6c42
	nop			;6c43
	ld b,080h		;6c44
	ld b,000h		;6c46
	dec c			;6c48
	ld bc,00088h		;6c49
	jr nz,l6c4eh		;6c4c
l6c4eh:
	ld b,b			;6c4e
	ret nz			;6c4f
	ret nz			;6c50
	ld b,b			;6c51
	ret nz			;6c52
	ld b,040h		;6c53
	ld (bc),a		;6c55
	ret nz			;6c56
	add a,e			;6c57
	nop			;6c58
	ld b,001h		;6c59
	ld c,000h		;6c5b
	add a,a			;6c5d
	djnz l6c20h		;6c5e
	add a,b			;6c60
l6c61h:
	nop			;6c61
	nop			;6c62
	add a,b			;6c63
	nop			;6c64
	ld b,080h		;6c65
	inc bc			;6c67
	nop			;6c68
	add a,c			;6c69
	ld bc,0000fh		;6c6a
	add a,d			;6c6d
	ret nz			;6c6e
	nop			;6c6f
	inc bc			;6c70
	add a,b			;6c71
	dec bc			;6c72
	nop			;6c73
	add a,d			;6c74
	ld b,001h		;6c75
	ld c,000h		;6c77
	add a,d			;6c79
	jr nc,$-62		;6c7a
	inc bc			;6c7c
	nop			;6c7d
	ld (bc),a		;6c7e
	add a,b			;6c7f
	add hl,bc		;6c80
	nop			;6c81
	rrca			;6c82
	ld bc,08082h		;6c83
	ret nz			;6c86
	ld c,040h		;6c87
	ld (de),a		;6c89
	nop			;6c8a
	ld c,080h		;6c8b
	rrca			;6c8d
	ld bc,00081h		;6c8e
	ld c,040h		;6c91
	add a,d			;6c93
	ret nz			;6c94
	add a,b			;6c95
	djnz l6c98h		;6c96
l6c98h:
	ld c,080h		;6c98
	ld (bc),a		;6c9a
	nop			;6c9b
	nop			;6c9c
	ex af,af'		;6c9d
	nop			;6c9e
	adc a,b			;6c9f
	inc c			;6ca0
	inc bc			;6ca1
	dec b			;6ca2
	ld b,006h		;6ca3
	inc bc			;6ca5
	dec de			;6ca6
	dec e			;6ca7
	dec bc			;6ca8
	nop			;6ca9
	ld (bc),a		;6caa
	add a,b			;6cab
	add a,d			;6cac
	nop			;6cad
	add a,b			;6cae
	add hl,bc		;6caf
	nop			;6cb0
	adc a,b			;6cb1
	inc c			;6cb2
	ld b,007h		;6cb3
	inc bc			;6cb5
	add hl,bc		;6cb6
	dec c			;6cb7
	ld c,037h		;6cb8
	inc c			;6cba
	nop			;6cbb
	inc bc			;6cbc
	add a,b			;6cbd
	adc a,e			;6cbe
	nop			;6cbf
	add a,b			;6cc0
	add a,b			;6cc1
	ret nz			;6cc2
	ld l,a			;6cc3
	ld l,a			;6cc4
	ld (hl),a		;6cc5
	scf			;6cc6
	dec de			;6cc7
	rrca			;6cc8
	inc bc			;6cc9
	ld b,000h		;6cca
	adc a,d			;6ccc
	inc de			;6ccd
	dec sp			;6cce
	ld a,c			;6ccf
	inc a			;6cd0
	cp a			;6cd1
	sbc a,a			;6cd2
	rst 8			;6cd3
	and 0f8h		;6cd4
	ret nz			;6cd6
	add hl,bc		;6cd7
	nop			;6cd8
	add a,(hl)		;6cd9
	dec sp			;6cda
	add hl,sp		;6cdb
	inc e			;6cdc
	inc e			;6cdd
	ld c,003h		;6cde
	rlca			;6ce0
	nop			;6ce1
	adc a,c			;6ce2
	inc e			;6ce3
	ld c,0cfh		;6ce4
	rst 20h			;6ce6
	ex (sp),hl		;6ce7
	ret p			;6ce8
	ld a,h			;6ce9
	inc a			;6cea
	ex af,af'		;6ceb
	dec c			;6cec
	nop			;6ced
	adc a,d			;6cee
	ret p			;6cef
	ld c,h			;6cf0
	daa			;6cf1
	inc de			;6cf2
	dec e			;6cf3
	ld e,00fh		;6cf4
	rlca			;6cf6
	ld sp,00b3ch		;6cf7
	nop			;6cfa
	dec b			;6cfb
	add a,b			;6cfc
	ld b,000h		;6cfd
	adc a,d			;6cff
	ld h,b			;6d00
	jr c,l6d1fh		;6d01
	ld e,00eh		;6d03
	inc bc			;6d05
	add hl,de		;6d06
	ld e,01fh		;6d07
	rrca			;6d09
	dec c			;6d0a
	nop			;6d0b
	add a,e			;6d0c
	add a,b			;6d0d
	nop			;6d0e
	nop			;6d0f
	inc bc			;6d10
	add a,b			;6d11
	add a,(hl)		;6d12
	ld b,c			;6d13
	ld e,(hl)		;6d14
	cpl			;6d15
	rra			;6d16
	rrca			;6d17
	inc bc			;6d18
	rlca			;6d19
	nop			;6d1a
	adc a,c			;6d1b
	rla			;6d1c
	inc hl			;6d1d
	ld (hl),c		;6d1e
l6d1fh:
	call m,08f7fh		;6d1f
	di			;6d22
	cp 0f0h			;6d23
	dec bc			;6d25
	nop			;6d26
	add a,h			;6d27
	ld sp,00e19h		;6d28
	inc bc			;6d2b
	ex af,af'		;6d2c
	nop			;6d2d
	adc a,b			;6d2e
	inc c			;6d2f
	ld e,03fh		;6d30
	ld c,a			;6d32
	di			;6d33
	call m,0887eh		;6d34
	ld (de),a		;6d37
	nop			;6d38
	add a,l			;6d39
	rra			;6d3a
	ld l,a			;6d3b
	inc c			;6d3c
	inc bc			;6d3d
	ld bc,0000bh		;6d3e
	add a,(hl)		;6d41
	ret nz			;6d42
	ret m			;6d43
	ld e,0e2h		;6d44
	defb 0fdh,03fh,00ah ;illegal sequence	;6d46
	nop			;6d49
	add a,(hl)		;6d4a
	rlca			;6d4b
	jr l6d51h		;6d4c
	ld bc,00100h		;6d4e
l6d51h:
	inc c			;6d51
	nop			;6d52
	add a,h			;6d53
	ret m			;6d54
	call m,0c31eh		;6d55
	rlca			;6d58
	nop			;6d59
	ld (bc),a		;6d5a
	ld bc,00384h		;6d5b
	adc a,a			;6d5e
	ld a,a			;6d5f
	rra			;6d60
	inc bc			;6d61
	nop			;6d62
	adc a,l			;6d63
	rst 0			;6d64
	ld sp,hl		;6d65
	ld a,a			;6d66
	ld a,a			;6d67
	ld bc,0fdffh		;6d68
	ex (sp),hl		;6d6b
	ld e,0feh		;6d6c
	ret m			;6d6e
	ret p			;6d6f
	add a,b			;6d70
	dec bc			;6d71
	nop			;6d72
	add a,h			;6d73
	ld bc,00003h		;6d74
	rra			;6d77
	inc b			;6d78
	nop			;6d79
	adc a,h			;6d7a
	call m,0073eh		;6d7b
	ld a,b			;6d7e
	ld a,a			;6d7f
	ret p			;6d80
	inc bc			;6d81
	cp 0f8h			;6d82
	ret nz			;6d84
	jr c,$-62		;6d85
	ld c,000h		;6d87
	add a,(hl)		;6d89
	rrca			;6d8a
	ld sp,0fe47h		;6d8b
	dec c			;6d8e
	inc bc			;6d8f
	ld a,(bc)		;6d90
	nop			;6d91
	add a,(hl)		;6d92
	ret po			;6d93
	call m,07c83h		;6d94
	rst 38h			;6d97
	ex (sp),hl		;6d98
	ld a,(bc)		;6d99
	nop			;6d9a
	add a,(hl)		;6d9b
	ld b,01fh		;6d9c
	ld a,009h		;6d9e
	inc bc			;6da0
	ld (bc),a		;6da1
	dec bc			;6da2
	nop			;6da3
	add a,(hl)		;6da4
	add a,b			;6da5
	ld a,h			;6da6
	rst 38h			;6da7
	add a,e			;6da8
	inc e			;6da9
	ld bc,0000bh		;6daa
	add a,c			;6dad
	ld bc,00003h		;6dae
	adc a,h			;6db1
	dec e			;6db2
	cp 0ffh			;6db3
	ld a,b			;6db5
	ld b,a			;6db6
	ccf			;6db7
	ld a,039h		;6db8
	rlca			;6dba
	ld a,a			;6dbb
	ld h,b			;6dbc
	ret m			;6dbd
	inc d			;6dbe
	nop			;6dbf
	adc a,h			;6dc0
	cp 0e3h			;6dc1
	ld bc,l7f3fh		;6dc3
	jr c,l6dcfh		;6dc6
	ccf			;6dc8
	ld a,078h		;6dc9
	nop			;6dcb
	ld h,b			;6dcc
	rrca			;6dcd
	nop			;6dce
l6dcfh:
	add a,h			;6dcf
	ld l,a			;6dd0
	inc c			;6dd1
	inc bc			;6dd2
	ld bc,0000ch		;6dd3
	add a,l			;6dd6
	ret m			;6dd7
	ld e,0e2h		;6dd8
	defb 0fdh,03fh,00bh ;illegal sequence	;6dda
	nop			;6ddd
	add a,l			;6dde
	jr l6de4h		;6ddf
	ld bc,00100h		;6de1
l6de4h:
	inc c			;6de4
	nop			;6de5
	add a,h			;6de6
	ret m			;6de7
	call m,0c31eh		;6de8
	nop			;6deb
	ld b,000h		;6dec
	add a,a			;6dee
	ld bc,00102h		;6def
	nop			;6df2
	inc b			;6df3
	ld a,(bc)		;6df4
	inc b			;6df5
	ld a,(bc)		;6df6
	nop			;6df7
	add a,c			;6df8
	add a,b			;6df9
	rrca			;6dfa
	nop			;6dfb
	add a,c			;6dfc
	ld bc,00003h		;6dfd
	add a,c			;6e00
	inc b			;6e01
	jr l6e04h		;6e02
l6e04h:
	adc a,c			;6e04
	ex af,af'		;6e05
	inc d			;6e06
	ex af,af'		;6e07
	ld (bc),a		;6e08
	dec b			;6e09
	ld (bc),a		;6e0a
	djnz l6e35h		;6e0b
	djnz l6e15h		;6e0d
	nop			;6e0f
	add a,e			;6e10
	djnz l6e3bh		;6e11
	djnz $+5		;6e13
l6e15h:
	nop			;6e15
	add a,e			;6e16
	jr nz,$+82		;6e17
	jr nz,$+11		;6e19
	nop			;6e1b
	add a,a			;6e1c
	ex af,af'		;6e1d
	nop			;6e1e
	nop			;6e1f
	ld (bc),a		;6e20
	nop			;6e21
	nop			;6e22
	djnz l6e2dh		;6e23
	nop			;6e25
	add a,c			;6e26
	djnz l6e2eh		;6e27
	nop			;6e29
	add a,c			;6e2a
	jr nz,l6e34h		;6e2b
l6e2dh:
	nop			;6e2d
l6e2eh:
	adc a,l			;6e2e
l6e2fh:
	djnz l6e59h		;6e2f
	ld de,00102h		;6e31
l6e34h:
	ld b,b			;6e34
l6e35h:
	and b			;6e35
	ld b,h			;6e36
	ld a,(bc)		;6e37
	inc b			;6e38
	jr nz,l6e8bh		;6e39
l6e3bh:
	jr nz,l6e41h		;6e3b
	nop			;6e3d
	add a,e			;6e3e
	ex af,af'		;6e3f
	inc d			;6e40
l6e41h:
	adc a,b			;6e41
	dec b			;6e42
	nop			;6e43
	add a,e			;6e44
	djnz l6e6fh		;6e45
	djnz $+7		;6e47
	nop			;6e49
	adc a,e			;6e4a
	djnz l6e4dh		;6e4b
l6e4dh:
	ld bc,00000h		;6e4d
	ld b,b			;6e50
	nop			;6e51
	inc b			;6e52
	nop			;6e53
	nop			;6e54
	jr nz,l6e5dh		;6e55
	nop			;6e57
	add a,c			;6e58
l6e59h:
	ex af,af'		;6e59
	rlca			;6e5a
	nop			;6e5b
	add a,c			;6e5c
l6e5dh:
	djnz l6e62h		;6e5d
	nop			;6e5f
	nop			;6e60
	rst 38h			;6e61
l6e62h:
	nop			;6e62
	ld bc,00303h		;6e63
	ld (bc),a		;6e66
	add hl,bc		;6e67
	ld b,001h		;6e68
	nop			;6e6a
	inc bc			;6e6b
	dec b			;6e6c
	rlca			;6e6d
	add hl,bc		;6e6e
l6e6fh:
	ld (de),a		;6e6f
	ld (bc),a		;6e70
	ex af,af'		;6e71
	add a,b			;6e72
	ret nz			;6e73
	ret po			;6e74
	ret po			;6e75
	and b			;6e76
	ld c,b			;6e77
	or b			;6e78
	ret nz			;6e79
	nop			;6e7a
l6e7bh:
	ld h,b			;6e7b
	ret nc			;6e7c
	ret p			;6e7d
	ld c,b			;6e7e
	and h			;6e7f
	jr nz,l6e8ah		;6e80
	inc bc			;6e82
	ld b,00ch		;6e83
	inc c			;6e85
	dec c			;6e86
	rrca			;6e87
	rlca			;6e88
	ld (bc),a		;6e89
l6e8ah:
	inc bc			;6e8a
l6e8bh:
	ld bc,00203h		;6e8b
	inc b			;6e8e
	add hl,bc		;6e8f
	ld bc,0e004h		;6e90
	or b			;6e93
	sbc a,b			;6e94
	sbc a,b			;6e95
	ret c			;6e96
	ret m			;6e97
	ld (hl),b		;6e98
	jr nz,l6e7bh		;6e99
	ret nz			;6e9b
	ld h,b			;6e9c
	jr nz,l6e2fh		;6e9d
	ret z			;6e9f
	ld b,b			;6ea0
	djnz l6ea3h		;6ea1
l6ea3h:
	ld bc,00303h		;6ea3
	ld (bc),a		;6ea6
	add hl,bc		;6ea7
	ld b,001h		;6ea8
	nop			;6eaa
	rlca			;6eab
	ex af,af'		;6eac
	ld de,00212h		;6ead
	ld (bc),a		;6eb0
	ld bc,0c080h		;6eb1
	ret po			;6eb4
	ret po			;6eb5
	and b			;6eb6
	ld c,b			;6eb7
	or b			;6eb8
	ret nz			;6eb9
	nop			;6eba
l6ebbh:
	ld (hl),b		;6ebb
	adc a,b			;6ebc
	ld b,h			;6ebd
	inc h			;6ebe
	jr nz,l6ee1h		;6ebf
	ld b,b			;6ec1
	inc bc			;6ec2
	ld b,00ch		;6ec3
	inc c			;6ec5
	dec c			;6ec6
	rrca			;6ec7
	rlca			;6ec8
	ld (bc),a		;6ec9
	inc bc			;6eca
	ld bc,00205h		;6ecb
	inc b			;6ece
	inc b			;6ecf
l6ed0h:
	nop			;6ed0
	nop			;6ed1
	ret po			;6ed2
	or b			;6ed3
	sbc a,b			;6ed4
	sbc a,b			;6ed5
l6ed6h:
	ret c			;6ed6
	ret m			;6ed7
	ld (hl),b		;6ed8
	jr nz,l6ebbh		;6ed9
	ret nz			;6edb
l6edch:
	ld d,b			;6edc
	jr nz,l6eefh		;6edd
	djnz l6ee1h		;6edf
l6ee1h:
	add a,c			;6ee1
	nop			;6ee2
	nop			;6ee3
	inc b			;6ee4
	rst 38h			;6ee5
	add a,h			;6ee6
	ret m			;6ee7
	ret po			;6ee8
	ret nz			;6ee9
	add a,b			;6eea
	inc b			;6eeb
	rst 38h			;6eec
	add a,c			;6eed
	rlca			;6eee
l6eefh:
	inc bc			;6eef
	nop			;6ef0
	ld b,0ffh		;6ef1
	add a,h			;6ef3
	ccf			;6ef4
	rra			;6ef5
	rst 38h			;6ef6
	rst 38h			;6ef7
	dec b			;6ef8
	cp 086h			;6ef9
	rst 38h			;6efb
	rrca			;6efc
	rlca			;6efd
	inc bc			;6efe
	ld bc,00301h		;6eff
	add a,b			;6f02
	inc bc			;6f03
	nop			;6f04
	dec b			;6f05
	dec bc			;6f06
	ld (bc),a		;6f07
	add a,b			;6f08
	ld (bc),a		;6f09
	ret nz			;6f0a
	ld (bc),a		;6f0b
	ret po			;6f0c
	ld (bc),a		;6f0d
	ret p			;6f0e
	ld (bc),a		;6f0f
	dec bc			;6f10
	ld (bc),a		;6f11
	nop			;6f12
	inc b			;6f13
	dec bc			;6f14
	ld (bc),a		;6f15
	ret m			;6f16
	ld (bc),a		;6f17
	call m,0fe02h		;6f18
	add a,d			;6f1b
	rst 38h			;6f1c
	add a,b			;6f1d
	inc bc			;6f1e
	dec bc			;6f1f
	dec b			;6f20
	nop			;6f21
	inc bc			;6f22
	add a,b			;6f23
	ld b,0c0h		;6f24
	inc bc			;6f26
	ret po			;6f27
	inc bc			;6f28
	ret p			;6f29
	add a,c			;6f2a
	ret m			;6f2b
	ex af,af'		;6f2c
	inc bc			;6f2d
	ld (bc),a		;6f2e
	nop			;6f2f
	add a,(hl)		;6f30
	add a,b			;6f31
	ret po			;6f32
	ret m			;6f33
	cp 080h			;6f34
	ret po			;6f36
	ld b,000h		;6f37
	add a,d			;6f39
	ret nz			;6f3a
l6f3bh:
	ret p			;6f3b
	nop			;6f3c
	dec h			;6f3d
	ld bc,02183h		;6f3e
	ld b,c			;6f41
	rra			;6f42
	inc b			;6f43
	djnz $-120		;6f44
	jr nz,l6f78h		;6f46
	ld b,b			;6f48
	jr nc,l6f3bh		;6f49
	jr nc,l6f53h		;6f4b
	djnz l6ed0h		;6f4d
	jr nz,l6f55h		;6f4f
	djnz l6ed6h		;6f51
l6f53h:
	jr nz,l6f85h		;6f53
l6f55h:
	ld b,b			;6f55
	rlca			;6f56
	djnz l6edch		;6f57
l6f59h:
	ld hl,02030h		;6f59
	dec bc			;6f5c
	djnz $-125		;6f5d
	jr nz,$+5		;6f5f
	ret p			;6f61
	adc a,b			;6f62
	djnz l6f55h		;6f63
	jr nz,l6f77h		;6f65
	djnz l6f59h		;6f67
	ret p			;6f69
	jr nz,$+7		;6f6a
	djnz l6f72h		;6f6c
	ret p			;6f6e
	inc b			;6f6f
	djnz $+4		;6f70
l6f72h:
	ld hl,01008h		;6f72
	nop			;6f75
	add a,e			;6f76
l6f77h:
	rlca			;6f77
l6f78h:
	rra			;6f78
	rra			;6f79
	inc bc			;6f7a
	ccf			;6f7b
	ld (bc),a		;6f7c
	ld a,a			;6f7d
	add a,e			;6f7e
	ret p			;6f7f
	call m,003feh		;6f80
	rst 38h			;6f83
	add a,l			;6f84
l6f85h:
	call m,000ffh		;6f85
	ld a,h			;6f88
	ld a,h			;6f89
	dec b			;6f8a
	ld b,e			;6f8b
	add a,c			;6f8c
	rst 38h			;6f8d
	rlca			;6f8e
	ret nz			;6f8f
	adc a,h			;6f90
	rst 38h			;6f91
	ret nz			;6f92
	ret nz			;6f93
	ret po			;6f94
	ret po			;6f95
	ret p			;6f96
	ret p			;6f97
	ret m			;6f98
	cp h			;6f99
	cp h			;6f9a
	ld a,h			;6f9b
	ld a,h			;6f9c
	inc b			;6f9d
	ld b,e			;6f9e
	ld b,0c0h		;6f9f
	add a,a			;6fa1
	call c,0f8c0h		;6fa2
	call m,0fefch		;6fa5
	cp 003h			;6fa8
	rst 38h			;6faa
	inc bc			;6fab
	cp h			;6fac
	ld (bc),a		;6fad
	ld a,h			;6fae
	ld (bc),a		;6faf
	call m,00084h		;6fb0
	call c,0dcc0h		;6fb3
	inc bc			;6fb6
	ret nz			;6fb7
	add a,c			;6fb8
	add a,b			;6fb9
	ld b,0ffh		;6fba
	add a,(hl)		;6fbc
	ld b,d			;6fbd
	rst 38h			;6fbe
	nop			;6fbf
	add a,b			;6fc0
	ret nz			;6fc1
	ret nz			;6fc2
	inc b			;6fc3
	ret po			;6fc4
	add a,c			;6fc5
	nop			;6fc6
	rlca			;6fc7
	rra			;6fc8
	add a,d			;6fc9
	nop			;6fca
	ld d,b			;6fcb
	dec b			;6fcc
	ret nc			;6fcd
	ld (bc),a		;6fce
	ld d,b			;6fcf
	rlca			;6fd0
	rla			;6fd1
	add a,c			;6fd2
	rst 38h			;6fd3
	rlca			;6fd4
	rrca			;6fd5
	add a,d			;6fd6
	rst 38h			;6fd7
	rra			;6fd8
	ld b,017h		;6fd9
	add a,d			;6fdb
	rst 38h			;6fdc
	nop			;6fdd
	ld b,0fch		;6fde
	add a,c			;6fe0
	rst 38h			;6fe1
	ex af,af'		;6fe2
	sub b			;6fe3
	add a,l			;6fe4
	call m,0e080h		;6fe5
	ret m			;6fe8
	cp 003h			;6fe9
	rst 38h			;6feb
	adc a,b			;6fec
	ret m			;6fed
	cp 0c0h			;6fee
	ret p			;6ff0
	ret m			;6ff1
	cp 0c0h			;6ff2
	ret po			;6ff4
	nop			;6ff5
	ld b,021h		;6ff6
	add a,d			;6ff8
	ld (0061fh),a		;6ff9
	ld hl,04381h		;6ffc
	inc bc			;6fff
	rra			;7000
	adc a,b			;7001
	ld sp,012f1h		;7002
	inc hl			;7005
	inc (hl)		;7006
	inc hl			;7007
	di			;7008
	di			;7009
	rlca			;700a
	jp p,03281h		;700b
	rlca			;700e
	ld hl,01f87h		;700f
	ld sp,0f131h		;7012
	ld (de),a		;7015
	inc hl			;7016
	inc (hl)		;7017
	ex af,af'		;7018
	jp p,02108h		;7019
	adc a,b			;701c
	ld (01f21h),a		;701d
	ld sp,04131h		;7020
	rra			;7023
	rra			;7024
	dec b			;7025
	jp p,0f483h		;7026
	pop af			;7029
	pop af			;702a
	dec b			;702b
	ld (04383h),hl		;702c
	rra			;702f
	rra			;7030
	dec b			;7031
	ld hl,04381h		;7032
	inc bc			;7035
	rra			;7036
	and b			;7037
	ld hl,032ffh		;7038
	ld hl,01f21h		;703b
	rra			;703e
	ld hl,0ff32h		;703f
	ld b,e			;7042
	ld (02132h),a		;7043
	rst 38h			;7046
	ld hl,0ff32h		;7047
	ld b,e			;704a
	ld (02132h),a		;704b
	pop af			;704e
	pop af			;704f
	ld (de),a		;7050
	rst 38h			;7051
	inc hl			;7052
l7053h:
	ld (de),a		;7053
	ld (de),a		;7054
	pop af			;7055
	pop af			;7056
	ld b,e			;7057
	dec b			;7058
	ld (02183h),a		;7059
	call p,005f4h		;705c
	ld (02183h),a		;705f
	call p,007f4h		;7062
	di			;7065
	ex af,af'		;7066
	ld (02082h),a		;7067
	djnz l7070h		;706a
	ld hl,03202h		;706c
	nop			;706f
l7070h:
	ld (bc),a		;7070
	inc bc			;7071
	ld (bc),a		;7072
	ld bc,00006h		;7073
	add a,(hl)		;7076
	ret m			;7077
	rst 38h			;7078
	inc a			;7079
	jr nc,l70bbh		;707a
	ccf			;707c
	inc bc			;707d
	nop			;707e
	add a,l			;707f
	ret po			;7080
	rst 38h			;7081
	ret p			;7082
	add a,b			;7083
	ret m			;7084
	dec b			;7085
	nop			;7086
	add a,e			;7087
	ret p			;7088
	add a,b			;7089
	ret m			;708a
	rlca			;708b
	nop			;708c
	adc a,c			;708d
	ret po			;708e
	nop			;708f
	nop			;7090
	ret po			;7091
	ret m			;7092
	ret nz			;7093
	ret po			;7094
	ret p			;7095
	ret p			;7096
	dec b			;7097
sub_7098h:
	nop			;7098
	add a,e			;7099
	add a,b			;709a
	ret po			;709b
	ret m			;709c
	inc b			;709d
	nop			;709e
	sub h			;709f
	add a,b			;70a0
	ret po			;70a1
	ret m			;70a2
	cp 000h			;70a3
	ret nz			;70a5
	ret po			;70a6
	ret p			;70a7
	ret m			;70a8
	call m,080feh		;70a9
	add a,b			;70ac
	ret nz			;70ad
	ret po			;70ae
	ret p			;70af
	ret m			;70b0
	call m,0fefch		;70b1
	inc bc			;70b4
	nop			;70b5
	inc bc			;70b6
	add a,b			;70b7
	ld (bc),a		;70b8
	ret nz			;70b9
	adc a,b			;70ba
l70bbh:
	rst 38h			;70bb
	ret nz			;70bc
	ret nz			;70bd
	ld a,a			;70be
	ccf			;70bf
	rra			;70c0
	rrca			;70c1
	rlca			;70c2
	ld b,0c0h		;70c3
	add a,d			;70c5
	add a,b			;70c6
	nop			;70c7
	nop			;70c8
	add a,e			;70c9
	jr nz,$+18		;70ca
	djnz l70d5h		;70cc
	ret p			;70ce
	ld (bc),a		;70cf
	djnz l7053h		;70d0
	ld hl,03203h		;70d2
l70d5h:
	dec b			;70d5
	djnz $-123		;70d6
	ld hl,03232h		;70d8
	ld b,010h		;70db
	ld (bc),a		;70dd
l70deh:
	ld hl,0100ch		;70de
	inc b			;70e1
	ld hl,01017h		;70e2
	add a,c			;70e5
	ld hl,01007h		;70e6
	inc b			;70e9
	ret p			;70ea
	adc a,d			;70eb
	djnz l70deh		;70ec
	jr nz,l7100h		;70ee
l70f0h:
	djnz $-12		;70f0
	jp p,010f1h		;70f2
	djnz $+5		;70f5
	ret p			;70f7
	adc a,b			;70f8
	jr nz,l712bh		;70f9
	ld b,b			;70fb
	jr nc,l711eh		;70fc
	djnz l70f0h		;70fe
l7100h:
	ret p			;7100
	nop			;7101
	inc b			;7102
	nop			;7103
	ld (bc),a		;7104
	rst 38h			;7105
	ld (bc),a		;7106
	nop			;7107
	inc b			;7108
	rst 38h			;7109
	ld (bc),a		;710a
	nop			;710b
	add a,c			;710c
	rst 38h			;710d
l710eh:
	dec b			;710e
	nop			;710f
	inc bc			;7110
	rst 38h			;7111
	dec b			;7112
	nop			;7113
	ld (bc),a		;7114
	rst 38h			;7115
	add a,c			;7116
	nop			;7117
l7118h:
	dec b			;7118
	rst 38h			;7119
	ld (bc),a		;711a
	nop			;711b
	ld (bc),a		;711c
	rst 38h			;711d
l711eh:
	nop			;711e
	dec b			;711f
	ret p			;7120
	ld (bc),a		;7121
	ld hl,00f06h		;7122
	inc bc			;7125
	ld hl,0f005h		;7126
	inc bc			;7129
	ld (de),a		;712a
l712bh:
	dec b			;712b
	ret p			;712c
	inc bc			;712d
	rra			;712e
	dec b			;712f
	rrca			;7130
	ld (bc),a		;7131
	jp p,01081h		;7132
	nop			;7135
	inc b			;7136
	nop			;7137
	add a,a			;7138
	ld bc,00703h		;7139
	rrca			;713c
	rlca			;713d
	rra			;713e
	ld a,a			;713f
	dec b			;7140
	add a,c			;7141
	add a,(hl)		;7142
	ld bc,00703h		;7143
	rrca			;7146
	rra			;7147
	ccf			;7148
	dec b			;7149
	ld a,a			;714a
	add a,c			;714b
	rst 38h			;714c
	ex af,af'		;714d
	nop			;714e
	add a,e			;714f
	rlca			;7150
	rra			;7151
	ld a,a			;7152
	inc b			;7153
	add a,c			;7154
	dec b			;7155
	rst 38h			;7156
	add a,d			;7157
	ret po			;7158
	ret nz			;7159
	dec b			;715a
	ld a,a			;715b
	add a,c			;715c
	rst 38h			;715d
	inc bc			;715e
	nop			;715f
	ld (bc),a		;7160
	inc bc			;7161
	ld (bc),a		;7162
	inc c			;7163
	adc a,e			;7164
	inc a			;7165
	ld a,(hl)		;7166
	ld a,(hl)		;7167
	rrca			;7168
	rrca			;7169
	nop			;716a
	ex (sp),hl		;716b
	pop bc			;716c
	pop bc			;716d
	inc bc			;716e
	inc bc			;716f
	ld b,007h		;7170
	rlca			;7172
	nop			;7173
	add a,c			;7174
	ld bc,00600h		;7175
	djnz l717ch		;7178
	jr nz,l717fh		;717a
l717ch:
	djnz l710eh		;717c
	pop af			;717e
l717fh:
	jp p,0f3f2h		;717f
	di			;7182
	djnz $+18		;7183
	jr nz,l71a7h		;7185
	jr nc,l71b9h		;7187
	ld b,b			;7189
	ld b,e			;718a
	call po,02143h		;718b
	add hl,bc		;718e
	ret p			;718f
	inc bc			;7190
	djnz l7118h		;7191
	pop af			;7193
	call p,0f1f3h		;7194
	pop af			;7197
	ld b,003h		;7198
	add a,l			;719a
	ld b,b			;719b
	ld b,e			;719c
	call po,02143h		;719d
	inc b			;71a0
	ret p			;71a1
	add a,h			;71a2
	ret nz			;71a3
	or b			;71a4
	ret nz			;71a5
	or b			;71a6
l71a7h:
	inc bc			;71a7
	ld h,b			;71a8
	add a,e			;71a9
	or (hl)			;71aa
	add a,0c6h		;71ab
	inc bc			;71ad
	ld h,l			;71ae
	djnz l7211h		;71af
	nop			;71b1
	dec b			;71b2
	rla			;71b3
	inc b			;71b4
	ret nz			;71b5
	inc b			;71b6
	cp 003h			;71b7
l71b9h:
	call m,09008h		;71b9
	dec b			;71bc
	rst 38h			;71bd
	ld (bc),a		;71be
	nop			;71bf
	and d			;71c0
	rst 38h			;71c1
	ret po			;71c2
	pop hl			;71c3
	jp 0f88eh		;71c4
	ret po			;71c7
	inc bc			;71c8
	rra			;71c9
	rra			;71ca
	ccf			;71cb
	add a,b			;71cc
	inc bc			;71cd
	rrca			;71ce
	ld a,(hl)		;71cf
	ret p			;71d0
	add a,b			;71d1
	ret p			;71d2
	ccf			;71d3
	rst 38h			;71d4
	ret m			;71d5
	ret nz			;71d6
	inc bc			;71d7
	rra			;71d8
l71d9h:
	rlca			;71d9
	rlca			;71da
	ex (sp),hl		;71db
	inc bc			;71dc
	inc b			;71dd
	ld a,h			;71de
	inc b			;71df
	ld a,h			;71e0
	inc c			;71e1
	inc c			;71e2
	inc bc			;71e3
	add a,b			;71e4
	add a,d			;71e5
	rst 38h			;71e6
	nop			;71e7
	inc bc			;71e8
	add a,b			;71e9
	dec b			;71ea
	ld b,082h		;71eb
	rst 38h			;71ed
	cp 003h			;71ee
	sub b			;71f0
	sub c			;71f1
	sub e			;71f2
	sbc a,a			;71f3
	ret m			;71f4
	ret nz			;71f5
	ld b,001h		;71f6
	rrca			;71f8
	ld a,a			;71f9
	call m,0f0f8h		;71fa
	ret po			;71fd
	ret po			;71fe
	call m,007e0h		;71ff
	rra			;7202
	inc bc			;7203
	ccf			;7204
	sub c			;7205
	nop			;7206
	rrca			;7207
	ld bc,03f0fh		;7208
	ld bc,00000h		;720b
	rst 38h			;720e
	ccf			;720f
	rlca			;7210
l7211h:
	ccf			;7211
	rst 38h			;7212
	rst 38h			;7213
	nop			;7214
	nop			;7215
	rst 38h			;7216
	ex af,af'		;7217
	call m,0ff85h		;7218
	add a,b			;721b
	add a,b			;721c
	rst 38h			;721d
	nop			;721e
	inc bc			;721f
	add a,b			;7220
	inc b			;7221
	ccf			;7222
	add a,(hl)		;7223
	rra			;7224
	ccf			;7225
	ccf			;7226
	add a,b			;7227
	add a,b			;7228
	call m,0ff03h		;7229
	ld (bc),a		;722c
	nop			;722d
	sub c			;722e
	rst 38h			;722f
	add a,b			;7230
	ret m			;7231
	ret nz			;7232
	ret m			;7233
	cp 000h			;7234
	rrca			;7236
	rrca			;7237
	call m,0fce0h		;7238
	ret po			;723b
	ret m			;723c
	call m,000fch		;723d
	ex af,af'		;7240
	ld a,a			;7241
	adc a,h			;7242
	rst 38h			;7243
	nop			;7244
	nop			;7245
	ld bc,00703h		;7246
	rrca			;7249
	rra			;724a
	call pe,0b058h		;724b
	or b			;724e
	inc b			;724f
	jr nc,l71d9h		;7250
	ld e,07eh		;7252
	rlca			;7254
	rrca			;7255
	rra			;7256
	rra			;7257
	rrca			;7258
	inc bc			;7259
	rlca			;725a
	add a,l			;725b
	ld e,a			;725c
	nop			;725d
	nop			;725e
	ld a,h			;725f
	nop			;7260
	inc bc			;7261
	ret m			;7262
	add a,l			;7263
	ret nc			;7264
	ret p			;7265
	add a,b			;7266
	ret p			;7267
	cp 005h			;7268
	ret p			;726a
	add a,h			;726b
	ret m			;726c
	ret nz			;726d
	ld bc,0030fh		;726e
	rst 38h			;7271
	add a,l			;7272
	inc bc			;7273
	rrca			;7274
	ccf			;7275
	call m,005c0h		;7276
	rst 38h			;7279
	add a,e			;727a
	ret nz			;727b
	nop			;727c
	rrca			;727d
	inc bc			;727e
	rst 38h			;727f
	add a,h			;7280
	ret po			;7281
	nop			;7282
	inc bc			;7283
	ld a,a			;7284
	inc b			;7285
	rst 38h			;7286
	inc b			;7287
	nop			;7288
	inc bc			;7289
	rst 38h			;728a
	inc b			;728b
	nop			;728c
	add a,h			;728d
	rlca			;728e
	ret po			;728f
	rst 38h			;7290
	rst 38h			;7291
	ld b,0dbh		;7292
	adc a,b			;7294
	ret p			;7295
	rst 38h			;7296
	rrca			;7297
	ret po			;7298
	ret po			;7299
	rst 38h			;729a
	rra			;729b
	rlca			;729c
	inc bc			;729d
	nop			;729e
	ld (bc),a		;729f
	rst 38h			;72a0
	ld (bc),a		;72a1
	nop			;72a2
	add a,0c0h		;72a3
	rst 38h			;72a5
	nop			;72a6
	nop			;72a7
	rst 38h			;72a8
	call m,0fcc0h		;72a9
	rst 38h			;72ac
	call m,0ffffh		;72ad
	nop			;72b0
	nop			;72b1
	ret po			;72b2
	call m,03880h		;72b3
	jr $+30			;72b6
	adc a,(hl)		;72b8
	add a,a			;72b9
	jp 0f8e0h		;72ba
	ld a,a			;72bd
	rrca			;72be
	nop			;72bf
	nop			;72c0
	add a,b			;72c1
	rst 38h			;72c2
	rst 38h			;72c3
	rra			;72c4
	rst 38h			;72c5
	ret m			;72c6
	nop			;72c7
	inc bc			;72c8
	ccf			;72c9
	rst 38h			;72ca
	call m,000e0h		;72cb
	inc bc			;72ce
	ccf			;72cf
	call m,080e0h		;72d0
	ld bc,07e07h		;72d3
	ret p			;72d6
	add a,b			;72d7
	ld bc,l7f0fh		;72d8
	inc bc			;72db
	rrca			;72dc
	nop			;72dd
	rlca			;72de
	ccf			;72df
	inc bc			;72e0
	rra			;72e1
	inc bc			;72e2
	rra			;72e3
	ld a,a			;72e4
	nop			;72e5
	rlca			;72e6
	ld a,a			;72e7
	ld bc,0033fh		;72e8
	rst 38h			;72eb
	add a,a			;72ec
	rra			;72ed
	rst 38h			;72ee
	inc bc			;72ef
	rst 38h			;72f0
	nop			;72f1
	add a,b			;72f2
	ld a,(hl)		;72f3
	inc bc			;72f4
	nop			;72f5
	dec b			;72f6
	cp 082h			;72f7
	rst 38h			;72f9
	add a,b			;72fa
	inc bc			;72fb
	ccf			;72fc
	add a,c			;72fd
	ld e,003h		;72fe
	ccf			;7300
	ex af,af'		;7301
	in a,(081h)		;7302
	ld bc,0fc03h		;7304
	add a,c			;7307
	ld a,b			;7308
	inc b			;7309
	call m,0ff81h		;730a
	dec b			;730d
	ld a,a			;730e
	sbc a,c			;730f
	ld a,(hl)		;7310
	nop			;7311
	add a,b			;7312
	ret po			;7313
	ret p			;7314
	ret p			;7315
	ret m			;7316
	ld sp,hl		;7317
	ei			;7318
	ret po			;7319
	ret m			;731a
	ret m			;731b
	add a,b			;731c
	cp 07eh			;731d
	rst 38h			;731f
	add a,c			;7320
	add a,b			;7321
	ret po			;7322
	ret p			;7323
	ret m			;7324
	call m,090feh		;7325
	ret z			;7328
	inc bc			;7329
	rst 38h			;732a
	add a,l			;732b
	cp 0f8h			;732c
	ret po			;732e
	ret nz			;732f
	add a,b			;7330
	inc bc			;7331
	rst 38h			;7332
	sub d			;7333
	nop			;7334
	rrca			;7335
	ccf			;7336
	ld a,a			;7337
	ld bc,0ff80h		;7338
	rst 38h			;733b
	rrca			;733c
	rra			;733d
	ld a,a			;733e
	inc bc			;733f
	rlca			;7340
	rra			;7341
	ret nz			;7342
	ret p			;7343
	rra			;7344
	ccf			;7345
	inc bc			;7346
	rst 38h			;7347
	add a,h			;7348
	ccf			;7349
	ld a,a			;734a
	nop			;734b
	nop			;734c
	ld b,0ffh		;734d
	add a,e			;734f
	ld a,a			;7350
	ccf			;7351
	rrca			;7352
	inc bc			;7353
	nop			;7354
	rlca			;7355
	rst 38h			;7356
	add a,l			;7357
	nop			;7358
	ld a,(hl)		;7359
	nop			;735a
	nop			;735b
	rst 38h			;735c
	inc b			;735d
	ret p			;735e
	ld (bc),a		;735f
	rst 38h			;7360
	add a,c			;7361
	cp 004h			;7362
	add a,b			;7364
	add a,h			;7365
	ld bc,0e080h		;7366
	ret m			;7369
	dec b			;736a
	ld a,a			;736b
	rlca			;736c
	in a,(089h)		;736d
	rst 38h			;736f
	ld bc,01f07h		;7370
	ld a,a			;7373
	ld a,a			;7374
	ccf			;7375
	rra			;7376
	rlca			;7377
	ex af,af'		;7378
	add a,c			;7379
l737ah:
	add a,h			;737a
	ei			;737b
	or 0e6h			;737c
	add a,(hl)		;737e
	inc bc			;737f
	ld b,08ah		;7380
	inc bc			;7382
	add a,c			;7383
	inc c			;7384
	inc b			;7385
	ld b,b			;7386
	ld h,d			;7387
	ld a,(hl)		;7388
	inc a			;7389
	add a,c			;738a
	ret z			;738b
	ld b,064h		;738c
	adc a,d			;738e
	ret z			;738f
	ret nz			;7390
	ret po			;7391
	ret p			;7392
	ret p			;7393
	ret m			;7394
	ret m			;7395
	call m,0807fh		;7396
	inc bc			;7399
	ld bc,00004h		;739a
	add a,c			;739d
	inc bc			;739e
	inc bc			;739f
	rlca			;73a0
	add a,c			;73a1
	rst 38h			;73a2
	inc bc			;73a3
	nop			;73a4
	inc bc			;73a5
	rrca			;73a6
	ld (bc),a		;73a7
	nop			;73a8
	ld b,0ffh		;73a9
	ld (bc),a		;73ab
	nop			;73ac
	add a,h			;73ad
	rst 38h			;73ae
	ei			;73af
	rst 38h			;73b0
	rst 38h			;73b1
	inc bc			;73b2
	nop			;73b3
	inc b			;73b4
	ld bc,00795h		;73b5
	jr c,l737ah		;73b8
	inc bc			;73ba
	rrca			;73bb
	rra			;73bc
	rra			;73bd
	rrca			;73be
	nop			;73bf
	rrca			;73c0
	rst 38h			;73c1
	rrca			;73c2
	ld a,a			;73c3
	rlca			;73c4
	rrca			;73c5
	rlca			;73c6
	ld a,0feh		;73c7
	ld a,(hl)		;73c9
	cp 07ch			;73ca
	inc bc			;73cc
	cp 008h			;73cd
	add a,b			;73cf
	add a,c			;73d0
	ld bc,0fc06h		;73d1
	add a,e			;73d4
	pop hl			;73d5
	rst 38h			;73d6
	nop			;73d7
	inc bc			;73d8
	ld a,a			;73d9
	adc a,e			;73da
	rst 38h			;73db
	add a,b			;73dc
	nop			;73dd
	call m,0fcf8h		;73de
	cp 03fh			;73e1
	inc bc			;73e3
	ret nz			;73e4
	ret m			;73e5
	inc bc			;73e6
	add a,c			;73e7
	adc a,d			;73e8
	inc a			;73e9
	add a,c			;73ea
	add a,b			;73eb
	add a,b			;73ec
	ret p			;73ed
	sbc a,b			;73ee
	ret po			;73ef
	ccf			;73f0
	ccf			;73f1
	ld a,a			;73f2
	inc bc			;73f3
	rst 38h			;73f4
	inc b			;73f5
	ret nz			;73f6
	add a,(hl)		;73f7
	ld a,a			;73f8
	rst 38h			;73f9
	nop			;73fa
	nop			;73fb
	cp 000h			;73fc
	ld b,080h		;73fe
	ex af,af'		;7400
	add a,c			;7401
	add a,h			;7402
	rst 38h			;7403
	add a,c			;7404
	add a,c			;7405
	rst 38h			;7406
	inc b			;7407
	add a,c			;7408
	sbc a,d			;7409
	inc bc			;740a
	ret nz			;740b
	ret p			;740c
	call m,0839fh		;740d
	ld a,(hl)		;7410
	ld a,(hl)		;7411
	ccf			;7412
	rlca			;7413
	ccf			;7414
	rrca			;7415
	inc bc			;7416
	ret nz			;7417
	ret p			;7418
	call m,01cfeh		;7419
	cp 01eh			;741c
	cp 07eh			;741e
	ld c,001h		;7420
	add a,b			;7422
	add a,b			;7423
	inc bc			;7424
	rst 38h			;7425
	ld (bc),a		;7426
	nop			;7427
	add a,h			;7428
	rst 38h			;7429
	inc bc			;742a
	rrca			;742b
	rra			;742c
	inc b			;742d
	ccf			;742e
	ld (bc),a		;742f
	rra			;7430
	adc a,a			;7431
	ld a,a			;7432
	rrca			;7433
	rra			;7434
	rra			;7435
	rrca			;7436
	nop			;7437
	ld a,a			;7438
	nop			;7439
	ret p			;743a
	cp 0c0h			;743b
	ret nz			;743d
	call m,0f0e0h		;743e
	ex af,af'		;7441
	ld a,(hl)		;7442
	adc a,l			;7443
	inc bc			;7444
	ret nz			;7445
	ret p			;7446
	ret m			;7447
	ret m			;7448
	ret po			;7449
	rrca			;744a
	rst 38h			;744b
	cp 0fch			;744c
	ccf			;744e
	rra			;744f
	rra			;7450
	inc bc			;7451
	nop			;7452
	ld (bc),a		;7453
	rst 38h			;7454
	add a,e			;7455
	nop			;7456
	rst 38h			;7457
	rst 38h			;7458
	inc bc			;7459
	nop			;745a
	nop			;745b
	sub b			;745c
	ld b,e			;745d
	ld (02132h),a		;745e
	rst 38h			;7461
	ret c			;7462
	defb 0fdh,0d8h,044h ;illegal sequence	;7463
	ld (02132h),a		;7466
	rst 38h			;7469
	ret pe			;746a
	adc a,l			;746b
	ret pe			;746c
	dec b			;746d
	di			;746e
	add a,e			;746f
	call p,0f1f2h		;7470
	ld b,034h		;7473
	ld (bc),a		;7475
	ld (de),a		;7476
	inc b			;7477
	ld (03102h),a		;7478
	ld (bc),a		;747b
	pop af			;747c
	add a,e			;747d
	ld (de),a		;747e
	ld (00521h),a		;747f
	pop af			;7482
	add a,c			;7483
	djnz $+6		;7484
	pop af			;7486
	ld (bc),a		;7487
	ld hl,03293h		;7488
	nop			;748b
	pop af			;748c
	pop af			;748d
	ld hl,03221h		;748e
	ld (00043h),a		;7491
	ld hl,03221h		;7494
	ld c,a			;7497
	ld c,a			;7498
	ld (0ff43h),a		;7499
	ld b,e			;749c
	inc bc			;749d
	ld (02181h),a		;749e
	add hl,bc		;74a1
	pop af			;74a2
	add a,c			;74a3
	ld hl,0f10ah		;74a4
	rlca			;74a7
	ld hl,03203h		;74a8
	ld (bc),a		;74ab
	ld b,e			;74ac
	ld (bc),a		;74ad
	ld (de),a		;74ae
	add a,c			;74af
	ld (04305h),a		;74b0
	ld (bc),a		;74b3
	ld (de),a		;74b4
	dec b			;74b5
	ld b,e			;74b6
	adc a,e			;74b7
	ld (01f21h),a		;74b8
	ld b,e			;74bb
	ld b,e			;74bc
	ld (0f4f4h),a		;74bd
	ld b,e			;74c0
	ld (00521h),a		;74c1
	ld b,e			;74c4
	add a,e			;74c5
	ld (0f121h),a		;74c6
	ld b,043h		;74c9
	ld (bc),a		;74cb
	ld (de),a		;74cc
	ld (bc),a		;74cd
	ld (04304h),a		;74ce
	add a,l			;74d1
	ld (01021h),a		;74d2
	ld hl,00521h		;74d5
	ld (0f181h),a		;74d8
	inc bc			;74db
	ld (de),a		;74dc
	add a,h			;74dd
	inc hl			;74de
	inc (hl)		;74df
	ld c,(hl)		;74e0
	inc (hl)		;74e1
	inc b			;74e2
	pop af			;74e3
	add a,h			;74e4
	jp p,0f4f3h		;74e5
	jp p,0f108h		;74e8
	ld (bc),a		;74eb
	ld hl,03206h		;74ec
	ld (bc),a		;74ef
	rst 38h			;74f0
	inc bc			;74f1
	call po,04302h		;74f2
	adc a,a			;74f5
	ld (0ffffh),a		;74f6
	call po,04343h		;74f9
	ld (02121h),a		;74fc
	rst 38h			;74ff
	rst 38h			;7500
	ld b,e			;7501
	ld (02121h),a		;7502
	inc b			;7505
	pop af			;7506
	add a,c			;7507
	ld (0f10ch),hl		;7508
	add a,c			;750b
	ld hl,0f105h		;750c
	inc bc			;750f
	ld hl,0f105h		;7510
	inc bc			;7513
	ld (0f105h),a		;7514
	ld (bc),a		;7517
	ld (de),a		;7518
	add a,c			;7519
	ld sp,0f105h		;751a
	ld (bc),a		;751d
	jp p,0f381h		;751e
	inc bc			;7521
	pop af			;7522
	add a,(hl)		;7523
	ld hl,03232h		;7524
	ld sp,04141h		;7527
	inc bc			;752a
	rra			;752b
	inc bc			;752c
	inc hl			;752d
	add a,c			;752e
	ld b,e			;752f
	inc b			;7530
	rra			;7531
	add a,c			;7532
	ld hl,03203h		;7533
	add a,c			;7536
	djnz $+6		;7537
	pop af			;7539
	ld (bc),a		;753a
	ld hl,03281h		;753b
	ex af,af'		;753e
	pop af			;753f
	inc b			;7540
	ld hl,0f104h		;7541
	inc bc			;7544
	ld hl,0f10bh		;7545
	ld (bc),a		;7548
	ld hl,0f103h		;7549
	inc bc			;754c
	ld hl,03202h		;754d
	inc bc			;7550
	ld hl,03202h		;7551
	inc bc			;7554
	ld b,e			;7555
	inc bc			;7556
	ld (04305h),a		;7557
	ld (bc),a		;755a
	ld (04303h),a		;755b
	xor h			;755e
	pop af			;755f
	sub c			;7560
	sub c			;7561
	inc sp			;7562
	inc sp			;7563
	ld b,c			;7564
	ld b,d			;7565
	ld b,e			;7566
	ld b,d			;7567
	ld b,c			;7568
	ld b,c			;7569
	ld sp,03221h		;756a
	ld b,e			;756d
	call po,03243h		;756e
	ld hl,0f4f3h		;7571
	call p,0fefeh		;7574
	call p,0f3f4h		;7577
	ld b,c			;757a
	ld hl,04332h		;757b
	call po,03243h		;757e
	ld hl,04343h		;7581
	ld b,c			;7584
	ld b,d			;7585
	ld b,e			;7586
	ld b,d			;7587
	ld b,c			;7588
	di			;7589
	di			;758a
	rlca			;758b
	ld b,e			;758c
	dec b			;758d
	ld (04302h),a		;758e
	add a,c			;7591
	ld b,d			;7592
	ld b,021h		;7593
	ld (bc),a		;7595
	ld (0f10ch),a		;7596
	inc bc			;7599
	ld hl,03281h		;759a
	inc bc			;759d
	pop af			;759e
	adc a,c			;759f
	ld hl,03232h		;75a0
	ld b,e			;75a3
	ld b,e			;75a4
	ld hl,0f1f1h		;75a5
	ld (04304h),a		;75a8
	add a,e			;75ab
	ld (02121h),a		;75ac
	inc c			;75af
	ld b,e			;75b0
	ld b,042h		;75b1
	inc bc			;75b3
	ld (09102h),a		;75b4
	inc bc			;75b7
	ld b,e			;75b8
	add a,e			;75b9
	ld (0f12fh),a		;75ba
	inc b			;75bd
	ld b,e			;75be
	adc a,b			;75bf
	ld (0f12fh),a		;75c0
	pop af			;75c3
	ld sp,02131h		;75c4
	pop af			;75c7
	inc b			;75c8
	ld (de),a		;75c9
	add a,e			;75ca
	di			;75cb
	jp p,005f2h		;75cc
	pop af			;75cf
	inc bc			;75d0
	ld b,c			;75d1
	ld (bc),a		;75d2
	ld b,d			;75d3
	adc a,e			;75d4
	ld (02131h),a		;75d5
	or 0f9h			;75d8
	rra			;75da
	ld hl,0f61fh		;75db
	ld sp,hl		;75de
	rra			;75df
	rlca			;75e0
	ld b,e			;75e1
	add a,h			;75e2
	ld b,d			;75e3
	ld hl,0e1e1h		;75e4
	inc b			;75e7
	ld sp,02181h		;75e8
	ex af,af'		;75eb
	ld (02107h),a		;75ec
	ld (bc),a		;75ef
	pop af			;75f0
	inc b			;75f1
	ld hl,0ff03h		;75f2
	inc b			;75f5
	ld (01f04h),a		;75f6
	inc b			;75f9
	ld b,e			;75fa
	inc b			;75fb
	pop af			;75fc
	inc b			;75fd
	ld b,e			;75fe
	ld (bc),a		;75ff
	pop af			;7600
	ld (bc),a		;7601
	ld sp,hl		;7602
	inc bc			;7603
	ld hl,01f05h		;7604
	add a,e			;7607
	jp p,0f1f1h		;7608
	ex af,af'		;760b
	ld hl,03202h		;760c
	inc bc			;760f
	ld b,e			;7610
	ld (bc),a		;7611
	ld hl,03202h		;7612
	inc b			;7615
	ld b,e			;7616
	sub h			;7617
	ld hl,04332h		;7618
	rst 38h			;761b
	rst 38h			;761c
	ld b,e			;761d
	ld (0f132h),a		;761e
	ld hl,04332h		;7621
	ld b,e			;7624
	ld (02121h),a		;7625
	call p,031f4h		;7628
	ld (01204h),a		;762b
	add a,d			;762e
	call p,00442h		;762f
	ld sp,02102h		;7632
	adc a,h			;7635
	ld b,d			;7636
	inc (hl)		;7637
	inc hl			;7638
	ld hl,03221h		;7639
	inc de			;763c
	inc de			;763d
	ld (0f121h),a		;763e
	ld b,c			;7641
	inc b			;7642
	ld (0f381h),a		;7643
	inc bc			;7646
	jp p,0f181h		;7647
	inc bc			;764a
	ld (02081h),a		;764b
	inc bc			;764e
	ld hl,0ff82h		;764f
	ld (02103h),a		;7652
	add a,h			;7655
	ld (0e443h),a		;7656
	ld b,e			;7659
	inc bc			;765a
	ld (0f102h),a		;765b
	add a,a			;765e
	ld (de),a		;765f
	pop af			;7660
	pop af			;7661
	ld (de),a		;7662
	inc hl			;7663
	rst 38h			;7664
	ld hl,0f103h		;7665
	ld (bc),a		;7668
	jp p,03284h		;7669
	rst 38h			;766c
	ld (00332h),a		;766d
	ld hl,0f103h		;7670
	ld (bc),a		;7673
	ld b,e			;7674
	ld (bc),a		;7675
	ld (02103h),a		;7676
	add a,h			;7679
	pop af			;767a
	ld (04343h),a		;767b
	inc bc			;767e
	jp p,04302h		;767f
	ex af,af'		;7682
	ld hl,03202h		;7683
	dec b			;7686
	ld b,e			;7687
	inc b			;7688
	ld (04302h),a		;7689
	ld (bc),a		;768c
	ld (02102h),a		;768d
	ld (bc),a		;7690
	ld (04386h),a		;7691
	rst 38h			;7694
	ld (04343h),a		;7695
	ld sp,02105h		;7698
	ld (bc),a		;769b
	pop af			;769c
	ld (bc),a		;769d
	ld (04184h),a		;769e
	ld sp,02121h		;76a1
	inc bc			;76a4
	cpl			;76a5
	inc bc			;76a6
	inc (hl)		;76a7
	ld (bc),a		;76a8
	ld hl,0ff02h		;76a9
	nop			;76ac
	sub d			;76ad
	ret p			;76ae
	rrca			;76af
	rrca			;76b0
	ccf			;76b1
	jr c,l76bah		;76b2
	jr c,l76eeh		;76b4
	cp a			;76b6
	cp e			;76b7
	rst 38h			;76b8
	rrca			;76b9
l76bah:
	rrca			;76ba
	ret p			;76bb
	ret p			;76bc
	rrca			;76bd
	rst 38h			;76be
	di			;76bf
	inc bc			;76c0
	rst 38h			;76c1
	add a,(hl)		;76c2
	inc bc			;76c3
	ret m			;76c4
	rlca			;76c5
	rst 38h			;76c6
	ei			;76c7
	ld a,a			;76c8
	inc bc			;76c9
	ex de,hl		;76ca
	adc a,(hl)		;76cb
	rst 38h			;76cc
	ccf			;76cd
	ret p			;76ce
	ret nz			;76cf
	add a,b			;76d0
	add a,b			;76d1
	nop			;76d2
	rst 28h			;76d3
	rst 8			;76d4
	rst 8			;76d5
	rrca			;76d6
	inc bc			;76d7
	ld bc,00301h		;76d8
	jr nc,$-117		;76db
	ei			;76dd
	ret p			;76de
	ret p			;76df
	rrca			;76e0
	rrca			;76e1
	rst 38h			;76e2
	ret m			;76e3
	rrca			;76e4
	rrca			;76e5
	nop			;76e6
	ld (bc),a		;76e7
	res 0,(hl)		;76e8
	cp a			;76ea
	call m,0cbcbh		;76eb
l76eeh:
	ei			;76ee
	cp h			;76ef
	inc bc			;76f0
	ld sp,hl		;76f1
	add a,e			;76f2
	ei			;76f3
	cp h			;76f4
	cp h			;76f5
	inc bc			;76f6
	ei			;76f7
	inc b			;76f8
	ld sp,hl		;76f9
	add a,e			;76fa
	ei			;76fb
	set 1,e			;76fc
	rlca			;76fe
	ld sp,hl		;76ff
	add a,(hl)		;7700
	ei			;7701
	or 0b6h			;7702
	add a,0b6h		;7704
	or (hl)			;7706
	inc bc			;7707
	ld h,l			;7708
	ld (bc),a		;7709
	or 082h			;770a
	or (hl)			;770c
	add a,003h		;770d
	and 084h		;770f
	ld h,l			;7711
	ei			;7712
	cp h			;7713
	cp h			;7714
	inc b			;7715
	ei			;7716
	add a,c			;7717
	cp h			;7718
	nop			;7719
	add a,d			;771a
	rst 38h			;771b
	adc a,a			;771c
	ld b,081h		;771d
	adc a,e			;771f
	ld bc,0f1c1h		;7720
	ld sp,hl		;7723
	defb 0fdh,0ffh,0feh ;illegal sequence	;7724
	cp 0f8h			;7727
	ret p			;7729
	ret nz			;772a
	inc b			;772b
	add a,b			;772c
	add a,h			;772d
	rla			;772e
	rra			;772f
	rrca			;7730
	inc bc			;7731
	inc b			;7732
	ld bc,0e886h		;7733
	rrca			;7736
	ld bc,0f8c0h		;7737
	rst 38h			;773a
	inc bc			;773b
	ld a,a			;773c
	sub b			;773d
	rst 38h			;773e
	cp 000h			;773f
	rrca			;7741
	rst 38h			;7742
	rst 28h			;7743
	rst 28h			;7744
	rst 38h			;7745
	rrca			;7746
	rrca			;7747
	pop af			;7748
	pop de			;7749
	sbc a,a			;774a
	rst 38h			;774b
	xor e			;774c
	rst 38h			;774d
	nop			;774e
	inc bc			;774f
	ei			;7750
	add a,l			;7751
	cp h			;7752
	ei			;7753
	cp h			;7754
	cp h			;7755
	adc a,006h		;7756
	pop af			;7758
	sub h			;7759
	jp p,042f3h		;775a
	ld b,c			;775d
	ld sp,01231h		;775e
	inc hl			;7761
	inc (hl)		;7762
	call po,04142h		;7763
	ld sp,01231h		;7766
	inc hl			;7769
	inc (hl)		;776a
	call po,02121h		;776b
	inc b			;776e
	pop af			;776f
	add a,d			;7770
	jp p,003f3h		;7771
	ld hl,0f102h		;7774
	inc bc			;7777
	ld sp,hl		;7778
	adc a,b			;7779
	jp p,0f4f1h		;777a
	jp p,0f3f3h		;777d
	ld sp,hl		;7780
	ld sp,hl		;7781
	nop			;7782
	dec b			;7783
	rst 38h			;7784
	add a,e			;7785
	nop			;7786
	rst 38h			;7787
	rst 38h			;7788
	ld b,000h		;7789
	add a,h			;778b
	rst 38h			;778c
	nop			;778d
	nop			;778e
	rst 38h			;778f
	ld b,000h		;7790
	ld (bc),a		;7792
	rst 38h			;7793
	rlca			;7794
	nop			;7795
	adc a,c			;7796
	rst 38h			;7797
	nop			;7798
	nop			;7799
	rst 38h			;779a
	rst 38h			;779b
	nop			;779c
	nop			;779d
	rst 38h			;779e
	rst 38h			;779f
	ld b,000h		;77a0
	add a,e			;77a2
	rst 38h			;77a3
	nop			;77a4
	nop			;77a5
	ex af,af'		;77a6
	rst 38h			;77a7
	ld (bc),a		;77a8
	nop			;77a9
	ld (bc),a		;77aa
	rst 38h			;77ab
	add a,c			;77ac
	nop			;77ad
	nop			;77ae
	add a,c			;77af
	ld sp,hl		;77b0
	ld b,012h		;77b1
	ld (bc),a		;77b3
	pop af			;77b4
	rlca			;77b5
	ld (0f107h),a		;77b6
	ld (bc),a		;77b9
	ld (de),a		;77ba
	ld (bc),a		;77bb
	pop af			;77bc
	ex af,af'		;77bd
	ld (0f102h),a		;77be
	ld (bc),a		;77c1
	inc hl			;77c2
	ld (bc),a		;77c3
	inc d			;77c4
	ld (bc),a		;77c5
	cpl			;77c6
	rlca			;77c7
	ld hl,01f02h		;77c8
	ex af,af'		;77cb
	inc hl			;77cc
	ld (bc),a		;77cd
	inc (hl)		;77ce
	ld (bc),a		;77cf
	rra			;77d0
	nop			;77d1
	inc b			;77d2
	rst 38h			;77d3
	ld (bc),a		;77d4
	nop			;77d5
	dec b			;77d6
	rst 38h			;77d7
	add a,(hl)		;77d8
	nop			;77d9
	rst 38h			;77da
	rst 38h			;77db
	nop			;77dc
	rst 38h			;77dd
	rst 38h			;77de
	ex af,af'		;77df
	nop			;77e0
	add a,e			;77e1
	rst 38h			;77e2
	nop			;77e3
	nop			;77e4
	ld a,(bc)		;77e5
	rst 38h			;77e6
	ld (bc),a		;77e7
	nop			;77e8
	ld (bc),a		;77e9
	rst 38h			;77ea
	ld (bc),a		;77eb
	nop			;77ec
	ld (bc),a		;77ed
	rst 38h			;77ee
	inc bc			;77ef
	nop			;77f0
	ld (bc),a		;77f1
	rst 38h			;77f2
	add a,c			;77f3
	nop			;77f4
	ld b,0ffh		;77f5
	add a,e			;77f7
	nop			;77f8
	rst 38h			;77f9
	rst 38h			;77fa
	inc b			;77fb
	nop			;77fc
	add a,a			;77fd
	rst 38h			;77fe
	nop			;77ff
	nop			;7800
	rst 38h			;7801
	nop			;7802
	nop			;7803
	rst 38h			;7804
	rlca			;7805
	add a,c			;7806
	add a,c			;7807
	rst 38h			;7808
	ex af,af'		;7809
	add a,c			;780a
	nop			;780b
	inc bc			;780c
	rra			;780d
	ld (bc),a		;780e
	ld hl,01f02h		;780f
	ld b,023h		;7812
	inc bc			;7814
	rra			;7815
	ex af,af'		;7816
	inc hl			;7817
	inc bc			;7818
	pop af			;7819
	ld a,(bc)		;781a
	ld (04302h),a		;781b
	ld (bc),a		;781e
	ld (de),a		;781f
	ld (bc),a		;7820
	pop af			;7821
	ld (bc),a		;7822
	ld (04303h),a		;7823
	ld (bc),a		;7826
	ld hl,03406h		;7827
	inc b			;782a
	ld (de),a		;782b
	ld (bc),a		;782c
	pop af			;782d
	dec b			;782e
	ld (0f103h),a		;782f
	ld (bc),a		;7832
	ld (0f402h),a		;7833
	ld (bc),a		;7836
	cp 08ch			;7837
	call p,0f1f3h		;7839
	pop af			;783c
	jp p,0f3f2h		;783d
	di			;7840
	call p,0fef4h		;7841
	cp 000h			;7844
	add a,a			;7846
	rst 38h			;7847
	nop			;7848
	nop			;7849
	rst 38h			;784a
	rst 38h			;784b
	nop			;784c
	nop			;784d
	rlca			;784e
	rst 38h			;784f
	add a,h			;7850
	nop			;7851
	rst 38h			;7852
	rst 38h			;7853
	nop			;7854
	rlca			;7855
	rst 38h			;7856
	add a,a			;7857
	nop			;7858
	rst 38h			;7859
	rst 38h			;785a
	nop			;785b
	nop			;785c
	rst 38h			;785d
	rst 38h			;785e
	dec bc			;785f
	nop			;7860
	add a,l			;7861
	ld d,h			;7862
	nop			;7863
	ld d,h			;7864
	nop			;7865
	nop			;7866
	ex af,af'		;7867
	add a,b			;7868
	ex af,af'		;7869
	add a,c			;786a
	ex af,af'		;786b
	rra			;786c
	nop			;786d
	ld (bc),a		;786e
	ld hl,01f02h		;786f
	ld (bc),a		;7872
	inc hl			;7873
	dec d			;7874
	inc (hl)		;7875
	ld (bc),a		;7876
	ld hl,01f02h		;7877
	add hl,bc		;787a
	inc hl			;787b
	ex af,af'		;787c
	sbc a,a			;787d
	ex af,af'		;787e
	ld b,d			;787f
	ex af,af'		;7880
	ld (0f108h),a		;7881
	nop			;7884
	add a,h			;7885
	rst 38h			;7886
	add a,c			;7887
	add a,c			;7888
	rst 38h			;7889
	inc c			;788a
	add a,c			;788b
	add a,c			;788c
	rst 38h			;788d
	inc bc			;788e
	add a,c			;788f
	add a,c			;7890
	rst 38h			;7891
	inc c			;7892
	add a,c			;7893
	add a,c			;7894
	rst 38h			;7895
	inc bc			;7896
	add a,c			;7897
	add a,c			;7898
	rst 38h			;7899
	inc c			;789a
	add a,c			;789b
	add a,c			;789c
	rst 38h			;789d
	dec c			;789e
	add a,c			;789f
	and b			;78a0
	inc bc			;78a1
	ret nz			;78a2
	ret p			;78a3
	call m,0839fh		;78a4
	ld a,(hl)		;78a7
	ld a,(hl)		;78a8
	inc bc			;78a9
	ret nz			;78aa
	ret p			;78ab
	call m,0839fh		;78ac
	ld a,(hl)		;78af
	ld a,(hl)		;78b0
	inc bc			;78b1
	ret nz			;78b2
	ret p			;78b3
	call m,0ff8fh		;78b4
	add a,c			;78b7
	add a,c			;78b8
	call m,0f0c0h		;78b9
	call m,083ffh		;78bc
	rst 38h			;78bf
	ld a,(hl)		;78c0
	nop			;78c1
	ld (bc),a		;78c2
	pop af			;78c3
	adc a,(hl)		;78c4
	ld (de),a		;78c5
	pop af			;78c6
	pop af			;78c7
	ld (de),a		;78c8
	inc hl			;78c9
	rst 38h			;78ca
	ld (de),a		;78cb
	inc hl			;78cc
	inc hl			;78cd
	inc (hl)		;78ce
	rst 38h			;78cf
	inc hl			;78d0
	inc (hl)		;78d1
	inc (hl)		;78d2
	inc bc			;78d3
	pop af			;78d4
	adc a,l			;78d5
	ld (de),a		;78d6
	pop af			;78d7
sub_78d8h:
	pop af			;78d8
	ld (de),a		;78d9
	ld (de),a		;78da
	inc hl			;78db
	rst 38h			;78dc
	ld (de),a		;78dd
	inc hl			;78de
	inc hl			;78df
	inc (hl)		;78e0
	rst 38h			;78e1
	inc hl			;78e2
	inc b			;78e3
	pop af			;78e4
	adc a,b			;78e5
	ld (de),a		;78e6
	pop af			;78e7
	pop af			;78e8
	ld (de),a		;78e9
	ld (de),a		;78ea
	inc hl			;78eb
	rst 38h			;78ec
	inc hl			;78ed
	inc bc			;78ee
	inc (hl)		;78ef
	adc a,(hl)		;78f0
	inc hl			;78f1
	pop af			;78f2
	ld (de),a		;78f3
	pop af			;78f4
	pop af			;78f5
	ld (de),a		;78f6
	inc hl			;78f7
	rst 38h			;78f8
	ld (de),a		;78f9
	inc hl			;78fa
	inc hl			;78fb
	inc (hl)		;78fc
	rst 38h			;78fd
	inc hl			;78fe
	inc bc			;78ff
	inc (hl)		;7900
	add a,c			;7901
	ld hl,0f103h		;7902
	ld (bc),a		;7905
	jp p,03283h		;7906
	rst 38h			;7909
	ld hl,0f105h		;790a
	inc bc			;790d
	ld hl,0f103h		;790e
	ld (bc),a		;7911
	jp p,0f183h		;7912
	ld (de),a		;7915
	ld (de),a		;7916
	inc b			;7917
	pop af			;7918
	ld (bc),a		;7919
	di			;791a
	add a,c			;791b
	ld hl,00800h		;791c
	ld c,c			;791f
	ex af,af'		;7920
	inc h			;7921
	ex af,af'		;7922
	sub d			;7923
	nop			;7924
	jr l7977h		;7925
	nop			;7927
	ex af,af'		;7928
	rst 38h			;7929
	ld (bc),a		;792a
	nop			;792b
	rlca			;792c
	rst 38h			;792d
	add a,c			;792e
	nop			;792f
	ld b,0ffh		;7930
	nop			;7932
	add hl,bc		;7933
l7934h:
	rst 20h			;7934
	rlca			;7935
	ld (hl),b		;7936
	ex af,af'		;7937
	rst 20h			;7938
	nop			;7939
	add a,e			;793a
	rst 38h			;793b
	nop			;793c
	nop			;793d
	dec b			;793e
	rst 38h			;793f
	ld (bc),a		;7940
	nop			;7941
	add a,c			;7942
	rst 38h			;7943
	dec b			;7944
	nop			;7945
	inc b			;7946
	rst 38h			;7947
	dec b			;7948
	nop			;7949
	inc bc			;794a
	rst 38h			;794b
	dec b			;794c
	nop			;794d
	add a,e			;794e
	rst 38h			;794f
	nop			;7950
	nop			;7951
	inc b			;7952
	rst 38h			;7953
	nop			;7954
	ld (bc),a		;7955
	jp p,0f102h		;7956
	dec b			;7959
	ld bc,02f03h		;795a
	ld b,010h		;795d
	ld b,0f0h		;795f
	inc bc			;7961
	ld (de),a		;7962
	dec b			;7963
	ret p			;7964
	inc bc			;7965
	ld hl,00f05h		;7966
	nop			;7969
	sub e			;796a
	jr c,l7934h		;796b
	ld e,0e1h		;796d
	pop hl			;796f
	ld e,0f0h		;7970
	rrca			;7972
	ret p			;7973
	ret p			;7974
	rst 38h			;7975
	rst 38h			;7976
l7977h:
	cp a			;7977
	cp e			;7978
	rst 38h			;7979
	rst 38h			;797a
	rrca			;797b
	ret m			;797c
	ret m			;797d
	inc bc			;797e
	nop			;797f
	sbc a,c			;7980
	di			;7981
	rst 38h			;7982
	rrca			;7983
	rrca			;7984
	ret p			;7985
	ret p			;7986
	rrca			;7987
	rrca			;7988
	ret p			;7989
	ret p			;798a
	rst 0			;798b
	jp 0e0c0h		;798c
	ret po			;798f
	ret m			;7990
	ret nz			;7991
	ret p			;7992
	ei			;7993
	di			;7994
	inc bc			;7995
	rlca			;7996
	rlca			;7997
	rra			;7998
	inc bc			;7999
	inc bc			;799a
	rrca			;799b
	add a,(hl)		;799c
	nop			;799d
	xor e			;799e
	rst 38h			;799f
	xor e			;79a0
	rst 38h			;79a1
	rst 38h			;79a2
	nop			;79a3
	ld (bc),a		;79a4
	rlc d			;79a5
	ei			;79a7
	dec b			;79a8
	cp h			;79a9
	inc bc			;79aa
	ei			;79ab
	inc b			;79ac
	ld sp,hl		;79ad
	ld (bc),a		;79ae
	rlc h			;79af
	cp a			;79b1
	ld (bc),a		;79b2
	ld sp,hl		;79b3
	adc a,b			;79b4
	res 7,a			;79b5
	cp a			;79b7
	set 1,e			;79b8
	cp a			;79ba
	cp a			;79bb
	rlc (hl)		;79bc
	ld h,l			;79be
	add a,d			;79bf
	or (hl)			;79c0
	or 006h			;79c1
	ld h,l			;79c3
	add a,l			;79c4
	add a,0b6h		;79c5
	res 7,a			;79c7
	cp a			;79c9
	dec b			;79ca
	ld sp,hl		;79cb
	nop			;79cc
	add a,c			;79cd
	rst 38h			;79ce
	inc bc			;79cf
	nop			;79d0
	add a,e			;79d1
	rst 38h			;79d2
	nop			;79d3
	nop			;79d4
	inc b			;79d5
	rst 38h			;79d6
	ld (bc),a		;79d7
	nop			;79d8
	adc a,b			;79d9
	rst 38h			;79da
	nop			;79db
	nop			;79dc
	rst 38h			;79dd
	rst 38h			;79de
	nop			;79df
	nop			;79e0
	rst 38h			;79e1
	inc b			;79e2
	nop			;79e3
	ld (bc),a		;79e4
	rst 38h			;79e5
	inc bc			;79e6
	nop			;79e7
	add a,c			;79e8
	rst 38h			;79e9
	ld b,000h		;79ea
	ld (bc),a		;79ec
	rst 38h			;79ed
	ld (bc),a		;79ee
	nop			;79ef
	ld (bc),a		;79f0
	rst 38h			;79f1
	ld (bc),a		;79f2
	nop			;79f3
	ld (bc),a		;79f4
	rst 38h			;79f5
	ld (bc),a		;79f6
	nop			;79f7
	add a,e			;79f8
	rst 38h			;79f9
	nop			;79fa
	nop			;79fb
	inc b			;79fc
	rst 38h			;79fd
	ld (bc),a		;79fe
	nop			;79ff
	ld b,0ffh		;7a00
	nop			;7a02
	inc bc			;7a03
	ld (0f103h),a		;7a04
	ld (bc),a		;7a07
	ld (de),a		;7a08
	inc b			;7a09
	ld (0f103h),a		;7a0a
	ld (bc),a		;7a0d
	jp p,01202h		;7a0e
	dec b			;7a11
	ld b,e			;7a12
	ld (bc),a		;7a13
	ld hl,03203h		;7a14
	inc bc			;7a17
	pop af			;7a18
	ld b,023h		;7a19
	ld (bc),a		;7a1b
	rra			;7a1c
	ld (bc),a		;7a1d
	inc (hl)		;7a1e
	ld (bc),a		;7a1f
	cpl			;7a20
	ld (bc),a		;7a21
	ld hl,03402h		;7a22
	inc bc			;7a25
	pop af			;7a26
	inc b			;7a27
	ld (de),a		;7a28
	ld (bc),a		;7a29
	jp p,02307h		;7a2a
	nop			;7a2d
	dec c			;7a2e
	ld a,(hl)		;7a2f
	add a,c			;7a30
	nop			;7a31
	djnz l7ab2h		;7a32
	add a,e			;7a34
	nop			;7a35
	ld a,(hl)		;7a36
	nop			;7a37
	ld a,(bc)		;7a38
	ld a,(hl)		;7a39
	add a,c			;7a3a
	nop			;7a3b
	inc bc			;7a3c
	add a,c			;7a3d
	add a,c			;7a3e
	rst 38h			;7a3f
	inc c			;7a40
	ld a,(hl)		;7a41
	add a,c			;7a42
	nop			;7a43
	inc bc			;7a44
	ld a,(hl)		;7a45
	sbc a,b			;7a46
	nop			;7a47
	ld a,(hl)		;7a48
	add a,e			;7a49
	sbc a,a			;7a4a
	call m,0c0f0h		;7a4b
	inc bc			;7a4e
	ld a,(hl)		;7a4f
	ld a,(hl)		;7a50
	rst 38h			;7a51
	adc a,a			;7a52
	call m,0c0f0h		;7a53
	inc bc			;7a56
	ld a,(hl)		;7a57
	ld a,(hl)		;7a58
	add a,e			;7a59
	rst 38h			;7a5a
	call m,0c0f0h		;7a5b
	inc bc			;7a5e
	inc bc			;7a5f
	ld a,(hl)		;7a60
	add a,l			;7a61
	rst 38h			;7a62
	sbc a,h			;7a63
	ret p			;7a64
	ret nz			;7a65
	inc bc			;7a66
	nop			;7a67
	ld (bc),a		;7a68
	ld b,e			;7a69
	adc a,(hl)		;7a6a
	ld (043ffh),a		;7a6b
	ld (02132h),a		;7a6e
	rst 38h			;7a71
	ld (02121h),a		;7a72
	rra			;7a75
	rra			;7a76
	ld hl,0041fh		;7a77
	ld b,e			;7a7a
	adc a,c			;7a7b
	ld (043ffh),a		;7a7c
	ld (02132h),a		;7a7f
	rst 38h			;7a82
	ld (00421h),a		;7a83
	rra			;7a86
	add a,c			;7a87
	ld (04303h),a		;7a88
	adc a,b			;7a8b
	ld (032ffh),a		;7a8c
	ld hl,01f21h		;7a8f
	rra			;7a92
	jp p,0f103h		;7a93
	add a,e			;7a96
	ld (043ffh),a		;7a97
	inc bc			;7a9a
	ld (02188h),a		;7a9b
	rst 38h			;7a9e
	ld (02121h),a		;7a9f
	rra			;7aa2
	rra			;7aa3
	ld hl,01f03h		;7aa4
	add a,c			;7aa7
	ld hl,0f105h		;7aa8
	add a,l			;7aab
	ld hl,02132h		;7aac
	di			;7aaf
	di			;7ab0
	inc bc			;7ab1
l7ab2h:
	pop af			;7ab2
	inc bc			;7ab3
	ld hl,0f105h		;7ab4
	add a,h			;7ab7
	ld hl,02132h		;7ab8
	ld hl,0f104h		;7abb
	add a,c			;7abe
	ld hl,08d00h		;7abf
	ld bc,0f1c1h		;7ac2
	ld sp,hl		;7ac5
	defb 0fdh,0ffh,0feh ;illegal sequence	;7ac6
	cp 00fh			;7ac9
	ld bc,0f8c0h		;7acb
	rst 38h			;7ace
	inc bc			;7acf
	ld a,a			;7ad0
	nop			;7ad1
	ld b,0f1h		;7ad2
	ld (bc),a		;7ad4
	or 002h			;7ad5
	ld hl,0f104h		;7ad7
	ld (bc),a		;7ada
	or 000h			;7adb
	sub e			;7add
	ret m			;7ade
	ret p			;7adf
	rra			;7ae0
	ld a,a			;7ae1
	rrca			;7ae2
	ccf			;7ae3
	ld a,a			;7ae4
	dec bc			;7ae5
	ret m			;7ae6
	ret p			;7ae7
	rra			;7ae8
	ld a,a			;7ae9
	rrca			;7aea
	ccf			;7aeb
	ld a,a			;7aec
	dec bc			;7aed
	ret m			;7aee
	ret p			;7aef
	ret nz			;7af0
	inc b			;7af1
	add a,b			;7af2
	add a,c			;7af3
	dec bc			;7af4
	nop			;7af5
	add a,h			;7af6
	ld b,d			;7af7
	ld sp,l6162h		;7af8
	inc bc			;7afb
	sub (hl)		;7afc
	add a,l			;7afd
	jp (hl)			;7afe
	ld b,d			;7aff
	ld sp,04121h		;7b00
	inc bc			;7b03
	sub (hl)		;7b04
	adc a,c			;7b05
	jp (hl)			;7b06
	ld b,d			;7b07
	ld b,c			;7b08
	ld sp,01332h		;7b09
	inc h			;7b0c
	ld l,c			;7b0d
	jp (hl)			;7b0e
	nop			;7b0f
	add a,c			;7b10
	ld bc,0000ah		;7b11
	add a,l			;7b14
	inc bc			;7b15
	rlca			;7b16
	rrca			;7b17
	rra			;7b18
	ccf			;7b19
	ld b,000h		;7b1a
	add hl,bc		;7b1c
	rrca			;7b1d
	rlca			;7b1e
	nop			;7b1f
	ld (bc),a		;7b20
	ret p			;7b21
	add a,d			;7b22
	ret po			;7b23
	call m,0ff04h		;7b24
	add a,c			;7b27
	ret p			;7b28
	inc bc			;7b29
	nop			;7b2a
	add a,e			;7b2b
	ret nz			;7b2c
	ret m			;7b2d
	ret p			;7b2e
	ex af,af'		;7b2f
	nop			;7b30
	adc a,d			;7b31
	ret nz			;7b32
	ret po			;7b33
	ret p			;7b34
	rst 38h			;7b35
	nop			;7b36
	nop			;7b37
	cp a			;7b38
	ret nz			;7b39
	adc a,a			;7b3a
	inc bc			;7b3b
	inc b			;7b3c
	nop			;7b3d
	add a,a			;7b3e
	ld bc,00703h		;7b3f
	rrca			;7b42
	rra			;7b43
	ret p			;7b44
	ret po			;7b45
	inc bc			;7b46
	rrca			;7b47
	inc bc			;7b48
	rst 38h			;7b49
	add a,e			;7b4a
	call m,0c0f0h		;7b4b
	ex af,af'		;7b4e
	nop			;7b4f
	add a,c			;7b50
	add a,b			;7b51
	inc b			;7b52
	ret nz			;7b53
	add a,d			;7b54
	cp h			;7b55
	ld a,(hl)		;7b56
	inc bc			;7b57
	ret p			;7b58
	sub l			;7b59
	rra			;7b5a
	inc bc			;7b5b
	ret po			;7b5c
	add a,a			;7b5d
	add a,a			;7b5e
	inc bc			;7b5f
	add a,a			;7b60
	add a,a			;7b61
	ld a,a			;7b62
	ld a,a			;7b63
	ccf			;7b64
	ret po			;7b65
	call m,007e0h		;7b66
	rra			;7b69
	ccf			;7b6a
	ld a,a			;7b6b
	ld a,a			;7b6c
	cp 0fch			;7b6d
	inc bc			;7b6f
	ret m			;7b70
	inc bc			;7b71
	ret p			;7b72
	sbc a,b			;7b73
	rlca			;7b74
	inc bc			;7b75
	nop			;7b76
	ld a,a			;7b77
	ccf			;7b78
	rlca			;7b79
	nop			;7b7a
	nop			;7b7b
	ld d,a			;7b7c
	ld d,a			;7b7d
	add hl,hl		;7b7e
	add hl,hl		;7b7f
	xor b			;7b80
	xor b			;7b81
	rst 38h			;7b82
	rst 38h			;7b83
	rra			;7b84
	rlca			;7b85
	ret po			;7b86
	cp 0feh			;7b87
	ld a,h			;7b89
	ld (hl),b		;7b8a
	cp 003h			;7b8b
	rst 38h			;7b8d
	inc b			;7b8e
	nop			;7b8f
	adc a,(hl)		;7b90
	rst 38h			;7b91
	rlca			;7b92
	ccf			;7b93
	ccf			;7b94
	rst 38h			;7b95
	call m,0c0f0h		;7b96
	add a,b			;7b99
	nop			;7b9a
	rrca			;7b9b
	rrca			;7b9c
	nop			;7b9d
	rst 38h			;7b9e
	inc bc			;7b9f
	nop			;7ba0
	add a,c			;7ba1
	ld a,a			;7ba2
	inc b			;7ba3
	rrca			;7ba4
	adc a,(hl)		;7ba5
	rra			;7ba6
	inc bc			;7ba7
	ret po			;7ba8
	ret p			;7ba9
	ret po			;7baa
	rrca			;7bab
l7bach:
	rlca			;7bac
	inc c			;7bad
	rrca			;7bae
	rrca			;7baf
	rra			;7bb0
	ccf			;7bb1
	ccf			;7bb2
	ld a,a			;7bb3
	inc b			;7bb4
	ret p			;7bb5
	add a,h			;7bb6
	nop			;7bb7
	rrca			;7bb8
	rlca			;7bb9
	ccf			;7bba
	inc b			;7bbb
	inc bc			;7bbc
	sub c			;7bbd
	nop			;7bbe
	rst 38h			;7bbf
	cp 0f0h			;7bc0
l7bc2h:
	ret nz			;7bc2
	jr nc,$+26		;7bc3
	jr l7bd3h		;7bc5
	inc c			;7bc7
	jr l7be2h		;7bc8
	jr nc,l7bach		;7bca
	add a,b			;7bcc
	call m,003e0h		;7bcd
	ld h,b			;7bd0
	sbc a,d			;7bd1
	sub b			;7bd2
l7bd3h:
	sbc a,a			;7bd3
	sub b			;7bd4
	sbc a,a			;7bd5
	nop			;7bd6
	nop			;7bd7
	add a,b			;7bd8
	ret p			;7bd9
	inc bc			;7bda
	inc c			;7bdb
	jr $+26			;7bdc
	jr nc,l7c10h		;7bde
	jr l7bfah		;7be0
l7be2h:
	inc c			;7be2
	rlca			;7be3
	ld bc,0073fh		;7be4
	rst 38h			;7be7
	ret p			;7be8
	rrca			;7be9
	ld a,a			;7bea
	inc bc			;7beb
	inc bc			;7bec
	rlca			;7bed
	inc bc			;7bee
	ret p			;7bef
	sub l			;7bf0
	ei			;7bf1
	ld sp,hl		;7bf2
	ret m			;7bf3
	inc b			;7bf4
	cp 07bh			;7bf5
	ld (hl),09ch		;7bf7
	ld c,l			;7bf9
l7bfah:
	rst 20h			;7bfa
	inc sp			;7bfb
	ld sp,hl		;7bfc
	nop			;7bfd
sub_7bfeh:
	dec a			;7bfe
	ld h,l			;7bff
	ret			;7c00
	sub e			;7c01
	ld h,04eh		;7c02
	sbc a,h			;7c04
	ccf			;7c05
	ld b,00fh		;7c06
	dec b			;7c08
	nop			;7c09
	dec b			;7c0a
	ret p			;7c0b
	adc a,l			;7c0c
	rst 38h			;7c0d
	cp 0fch			;7c0e
l7c10h:
	ret m			;7c10
	ret p			;7c11
	nop			;7c12
	inc c			;7c13
	ld c,a			;7c14
l7c15h:
	rst 38h			;7c15
	rst 38h			;7c16
	call m,0c0f0h		;7c17
	inc bc			;7c1a
	nop			;7c1b
	rlca			;7c1c
	ld b,b			;7c1d
	ld (bc),a		;7c1e
	ret p			;7c1f
	add a,(hl)		;7c20
	jr nz,l7c33h		;7c21
	djnz l7c15h		;7c23
	ret nz			;7c25
	ret nz			;7c26
	inc b			;7c27
	nop			;7c28
	add a,c			;7c29
	rrca			;7c2a
	inc bc			;7c2b
	rst 38h			;7c2c
	add a,c			;7c2d
	ret p			;7c2e
	nop			;7c2f
	dec bc			;7c30
	ret p			;7c31
	add a,c			;7c32
l7c33h:
	ret po			;7c33
	dec bc			;7c34
	ld b,b			;7c35
	add a,c			;7c36
	call po,00005h		;7c37
	add a,e			;7c3a
	inc (hl)		;7c3b
	ld c,(hl)		;7c3c
	ld c,(hl)		;7c3d
	rlca			;7c3e
	jr nc,l7bc2h		;7c3f
	ld b,e			;7c41
	ld b,030h		;7c42
	ld (bc),a		;7c44
	ld (03004h),a		;7c45
	inc b			;7c48
	ld (02008h),a		;7c49
	dec b			;7c4c
	rra			;7c4d
	add a,c			;7c4e
	djnz l7c56h		;7c4f
	ret p			;7c51
	adc a,c			;7c52
	ret nc			;7c53
	add a,b			;7c54
	add a,b			;7c55
l7c56h:
	ret po			;7c56
	ret po			;7c57
	ret pe			;7c58
	ret pe			;7c59
	ret c			;7c5a
	ld e,l			;7c5b
	inc b			;7c5c
	dec b			;7c5d
	ex af,af'		;7c5e
	djnz l7c6bh		;7c5f
	inc de			;7c61
	add a,a			;7c62
	pop af			;7c63
	ld e,a			;7c64
	push de			;7c65
	ret c			;7c66
	ret c			;7c67
	ret pe			;7c68
	ret c			;7c69
	inc bc			;7c6a
l7c6bh:
	adc a,(hl)		;7c6b
	sub h			;7c6c
	ret c			;7c6d
	out (0d3h),a		;7c6e
	ld d,e			;7c70
	ret po			;7c71
	ld b,b			;7c72
	ld b,e			;7c73
	di			;7c74
	ld d,e			;7c75
	ld d,e			;7c76
	out (0d3h),a		;7c77
	ld b,e			;7c79
	ex (sp),hl		;7c7a
	ex (sp),hl		;7c7b
	ld b,e			;7c7c
	ex (sp),hl		;7c7d
	ld b,e			;7c7e
	ld b,e			;7c7f
	ld b,d			;7c80
	inc bc			;7c81
	ld (02104h),a		;7c82
	ld (bc),a		;7c85
	ld e,a			;7c86
	adc a,d			;7c87
	rst 18h			;7c88
	ret m			;7c89
	ret m			;7c8a
	defb 0fdh,0f5h,0f5h ;illegal sequence	;7c8b
	ld (0f353h),hl		;7c8e
	ld (02104h),a		;7c91
	add a,c			;7c94
	djnz l7c9dh		;7c95
	ld (0f102h),a		;7c97
	ld (bc),a		;7c9a
	ret po			;7c9b
	ld (bc),a		;7c9c
l7c9dh:
	ld c,(hl)		;7c9d
	ld b,043h		;7c9e
	ld b,0e4h		;7ca0
	add a,a			;7ca2
	ld b,b			;7ca3
	ld sp,0f51fh		;7ca4
	ld e,l			;7ca7
	ret c			;7ca8
	ret c			;7ca9
	inc bc			;7caa
	ret pe			;7cab
	add a,h			;7cac
	ret c			;7cad
	defb 0fdh,0f5h,080h ;illegal sequence	;7cae
	dec b			;7cb1
	ret po			;7cb2
	adc a,b			;7cb3
	ret pe			;7cb4
	adc a,l			;7cb5
	push de			;7cb6
	ld d,b			;7cb7
	ld d,b			;7cb8
	ld hl,03232h		;7cb9
	ex af,af'		;7cbc
	ld b,e			;7cbd
	ld b,0f3h		;7cbe
	dec b			;7cc0
	jp p,02103h		;7cc1
	ld (bc),a		;7cc4
	cpl			;7cc5
	add a,d			;7cc6
	pop af			;7cc7
	jp p,0f103h		;7cc8
	inc bc			;7ccb
	inc (hl)		;7ccc
	ld b,0f3h		;7ccd
	dec b			;7ccf
	jp p,02106h		;7cd0
	rlca			;7cd3
	ld (02103h),a		;7cd4
	ld (de),a		;7cd7
	pop af			;7cd8
	add a,l			;7cd9
	ld b,e			;7cda
	call po,03243h		;7cdb
	ld hl,01f03h		;7cde
	inc b			;7ce1
	ld c,(hl)		;7ce2
	add a,h			;7ce3
	inc (hl)		;7ce4
	inc hl			;7ce5
	ld (de),a		;7ce6
	pop af			;7ce7
	ld b,0e4h		;7ce8
	add a,d			;7cea
	ld b,e			;7ceb
	ld (04308h),a		;7cec
	rlca			;7cef
	ld (02181h),a		;7cf0
	inc b			;7cf3
	ld (02102h),a		;7cf4
	ld (bc),a		;7cf7
	rra			;7cf8
	rlca			;7cf9
	ld (de),a		;7cfa
	add a,c			;7cfb
	pop af			;7cfc
	nop			;7cfd
	ld (bc),a		;7cfe
	add a,b			;7cff
	rlca			;7d00
	ret nz			;7d01
	add a,e			;7d02
	add a,b			;7d03
	nop			;7d04
	add a,b			;7d05
	ex af,af'		;7d06
	ret nz			;7d07
	ld (bc),a		;7d08
	add a,b			;7d09
	ld (bc),a		;7d0a
	nop			;7d0b
	and e			;7d0c
	inc bc			;7d0d
	ld a,a			;7d0e
	ccf			;7d0f
	rrca			;7d10
	inc bc			;7d11
	ld a,a			;7d12
	rlca			;7d13
	nop			;7d14
	rra			;7d15
	rlca			;7d16
	rst 38h			;7d17
	rst 38h			;7d18
	cp 0f8h			;7d19
	ret nz			;7d1b
	nop			;7d1c
	rra			;7d1d
	rlca			;7d1e
	nop			;7d1f
	ret p			;7d20
	nop			;7d21
	nop			;7d22
	ret p			;7d23
	nop			;7d24
	rrca			;7d25
	nop			;7d26
	nop			;7d27
	rlca			;7d28
	rra			;7d29
	ccf			;7d2a
	ld a,a			;7d2b
	ld a,a			;7d2c
	rst 38h			;7d2d
	rst 38h			;7d2e
	nop			;7d2f
	inc bc			;7d30
	ret p			;7d31
	add a,h			;7d32
	ccf			;7d33
	rrca			;7d34
	inc bc			;7d35
	nop			;7d36
	inc bc			;7d37
	rrca			;7d38
	add a,h			;7d39
	rst 38h			;7d3a
	rrca			;7d3b
	rrca			;7d3c
	ld bc,00704h		;7d3d
	add a,c			;7d40
	inc bc			;7d41
	inc bc			;7d42
	ld bc,0f097h		;7d43
	call m,0fefeh		;7d46
	inc c			;7d49
	add a,c			;7d4a
	add a,c			;7d4b
	add a,a			;7d4c
	add a,a			;7d4d
	inc bc			;7d4e
	add a,a			;7d4f
	add a,a			;7d50
	ld a,a			;7d51
	ld a,a			;7d52
	ccf			;7d53
	inc c			;7d54
	add a,c			;7d55
	add a,c			;7d56
	rst 38h			;7d57
	rst 38h			;7d58
	ccf			;7d59
	rrca			;7d5a
	ld bc,00300h		;7d5b
	call p,0f30fh		;7d5e
	inc bc			;7d61
	jp p,0f103h		;7d62
	add a,c			;7d65
	ld (02104h),a		;7d66
	inc bc			;7d69
	djnz $-124		;7d6a
	ld d,e			;7d6c
	di			;7d6d
	inc bc			;7d6e
	jr nz,l7d74h		;7d6f
	djnz $-123		;7d71
	ld d,e			;7d73
l7d74h:
	jp p,003f2h		;7d74
	ld hl,01002h		;7d77
	inc bc			;7d7a
	call po,0f483h		;7d7b
	ld d,e			;7d7e
	ld d,e			;7d7f
	inc bc			;7d80
	out (003h),a		;7d81
	adc a,(hl)		;7d83
	add a,d			;7d84
	ret c			;7d85
	ld e,l			;7d86
	inc b			;7d87
	ld d,b			;7d88
	add a,d			;7d89
	ret nc			;7d8a
	adc a,l			;7d8b
	inc bc			;7d8c
	ret pe			;7d8d
	add a,l			;7d8e
	adc a,l			;7d8f
	push af			;7d90
	push af			;7d91
	ld e,l			;7d92
	ret c			;7d93
	inc b			;7d94
	adc a,(hl)		;7d95
	add a,c			;7d96
	ret c			;7d97
	dec b			;7d98
	ret pe			;7d99
	add a,e			;7d9a
	ret c			;7d9b
	ld e,l			;7d9c
	ret c			;7d9d
	inc bc			;7d9e
	adc a,(hl)		;7d9f
	add a,(hl)		;7da0
	ret c			;7da1
	out (0d3h),a		;7da2
	ld d,e			;7da4
	ret pe			;7da5
	ret c			;7da6
	inc bc			;7da7
	ld e,l			;7da8
	ld (bc),a		;7da9
	ld d,b			;7daa
	add a,c			;7dab
	djnz l7daeh		;7dac
l7daeh:
	ld b,000h		;7dae
	ld (bc),a		;7db0
	ld bc,l7f85h		;7db1
	ccf			;7db4
	rra			;7db5
	rrca			;7db6
	inc bc			;7db7
	inc bc			;7db8
	nop			;7db9
	inc bc			;7dba
	rst 38h			;7dbb
	add a,h			;7dbc
	add a,b			;7dbd
	ccf			;7dbe
	rrca			;7dbf
	inc bc			;7dc0
	ex af,af'		;7dc1
	nop			;7dc2
	add a,c			;7dc3
	ret p			;7dc4
	ld b,000h		;7dc5
	ld (bc),a		;7dc7
	rst 38h			;7dc8
	add a,h			;7dc9
	rrca			;7dca
	ccf			;7dcb
	rrca			;7dcc
	inc bc			;7dcd
	ex af,af'		;7dce
	nop			;7dcf
	add a,h			;7dd0
	rlca			;7dd1
	ccf			;7dd2
	ld a,a			;7dd3
	rlca			;7dd4
	inc b			;7dd5
	nop			;7dd6
	add a,h			;7dd7
	ret po			;7dd8
	call m,0e0feh		;7dd9
	nop			;7ddc
	rlca			;7ddd
	ret po			;7dde
	add a,c			;7ddf
	add ix,bc		;7de0
	djnz l7de7h		;7de2
	pop af			;7de4
	add a,d			;7de5
	ret p			;7de6
l7de7h:
	djnz l7df2h		;7de7
	ret p			;7de9
	ex af,af'		;7dea
	ret po			;7deb
	add a,d			;7dec
	ld b,h			;7ded
	push de			;7dee
	dec bc			;7def
	ld d,b			;7df0
	inc bc			;7df1
l7df2h:
	ret po			;7df2
	add a,c			;7df3
	call po,0e007h		;7df4
	add a,c			;7df7
	call po,08300h		;7df8
	inc a			;7dfb
	ld a,03fh		;7dfc
	inc bc			;7dfe
	rra			;7dff
	inc bc			;7e00
	rrca			;7e01
	ld (bc),a		;7e02
	rlca			;7e03
	adc a,e			;7e04
	rst 0			;7e05
	jp po,0f8f0h		;7e06
	call m,0fefeh		;7e09
	call m,001e0h		;7e0c
	rrca			;7e0f
	inc bc			;7e10
	cp 081h			;7e11
	ld a,b			;7e13
	rlca			;7e14
	ld a,a			;7e15
	adc a,b			;7e16
	ld a,018h		;7e17
	rlca			;7e19
	rra			;7e1a
	ccf			;7e1b
	ld a,a			;7e1c
	ld a,a			;7e1d
	nop			;7e1e
	inc bc			;7e1f
	rrca			;7e20
	ld (bc),a		;7e21
	rlca			;7e22
	add a,d			;7e23
	inc bc			;7e24
	ld bc,0ff03h		;7e25
	ld (bc),a		;7e28
	ld a,a			;7e29
	add a,e			;7e2a
	ccf			;7e2b
	rra			;7e2c
	rrca			;7e2d
	nop			;7e2e
	inc c			;7e2f
	ret po			;7e30
	ld (bc),a		;7e31
	ret pe			;7e32
	add a,d			;7e33
	defb 0edh ;next byte illegal after ed	;7e34
	push hl			;7e35
	inc b			;7e36
	ret pe			;7e37
	ld (bc),a		;7e38
	ret c			;7e39
	add a,h			;7e3a
	push de			;7e3b
	ld e,a			;7e3c
	di			;7e3d
	di			;7e3e
	ld b,031h		;7e3f
	inc bc			;7e41
	ld b,e			;7e42
	add a,l			;7e43
	di			;7e44
	ld d,e			;7e45
	ld d,e			;7e46
	out (0d3h),a		;7e47
	ex af,af'		;7e49
	ld hl,03208h		;7e4a
	nop			;7e4d
	sub c			;7e4e
	add a,b			;7e4f
	ret nz			;7e50
	ret po			;7e51
	ret po			;7e52
	call po,0f6f4h		;7e53
	or 000h			;7e56
	nop			;7e58
	add a,b			;7e59
	ret nz			;7e5a
	ret po			;7e5b
	ret p			;7e5c
	ret m			;7e5d
	call m,0030fh		;7e5e
	rlca			;7e61
	rlca			;7e62
	inc bc			;7e63
	inc bc			;7e64
	ld bc,00003h		;7e65
	add a,a			;7e68
	add a,b			;7e69
	ret nz			;7e6a
	ret po			;7e6b
	ret p			;7e6c
	ret m			;7e6d
	call m,000feh		;7e6e
	ld a,(bc)		;7e71
	jr nc,l7e7fh		;7e72
	ret po			;7e74
	ld (bc),a		;7e75
	add a,b			;7e76
	add a,c			;7e77
	ret nc			;7e78
	add hl,bc		;7e79
	djnz l7e83h		;7e7a
	ld b,b			;7e7c
	nop			;7e7d
	ld (bc),a		;7e7e
l7e7fh:
	nop			;7e7f
	sub (hl)		;7e80
	ccf			;7e81
	rst 38h			;7e82
l7e83h:
	ret m			;7e83
	ret nz			;7e84
	call m,0f8f0h		;7e85
	ret p			;7e88
	ret po			;7e89
	ret nz			;7e8a
	add a,b			;7e8b
	cp 0fch			;7e8c
	ret p			;7e8e
	di			;7e8f
	ex (sp),hl		;7e90
	rst 0			;7e91
	add a,a			;7e92
	rlca			;7e93
	rrca			;7e94
	rrca			;7e95
	inc bc			;7e96
	dec b			;7e97
	rst 38h			;7e98
	inc bc			;7e99
	nop			;7e9a
	ld (bc),a		;7e9b
	rst 38h			;7e9c
	add a,d			;7e9d
	ccf			;7e9e
	rlca			;7e9f
	inc b			;7ea0
	nop			;7ea1
	dec b			;7ea2
	rst 38h			;7ea3
	add a,l			;7ea4
	rra			;7ea5
	inc bc			;7ea6
	nop			;7ea7
	ei			;7ea8
	ei			;7ea9
	inc bc			;7eaa
	rst 30h			;7eab
	ld (bc),a		;7eac
	rst 20h			;7ead
	adc a,e			;7eae
	ld h,e			;7eaf
	ccf			;7eb0
	rra			;7eb1
	rrca			;7eb2
	rlca			;7eb3
	inc bc			;7eb4
	ld bc,00000h		;7eb5
	dec sp			;7eb8
	dec de			;7eb9
	inc bc			;7eba
	rlca			;7ebb
	ld (bc),a		;7ebc
	rrca			;7ebd
	add a,c			;7ebe
	inc bc			;7ebf
	inc bc			;7ec0
	rra			;7ec1
	inc bc			;7ec2
	rrca			;7ec3
	ld (bc),a		;7ec4
	rlca			;7ec5
	ld a,(bc)		;7ec6
	rst 38h			;7ec7
	inc bc			;7ec8
	ld a,a			;7ec9
	inc bc			;7eca
	ccf			;7ecb
	inc bc			;7ecc
	rra			;7ecd
	inc bc			;7ece
	rrca			;7ecf
	add a,h			;7ed0
	ld b,005h		;7ed1
	inc bc			;7ed3
	inc bc			;7ed4
	inc bc			;7ed5
	rlca			;7ed6
	ld (bc),a		;7ed7
	rrca			;7ed8
	add a,c			;7ed9
	inc bc			;7eda
	inc bc			;7edb
	rrca			;7edc
	inc bc			;7edd
	rra			;7ede
	ld (bc),a		;7edf
	ccf			;7ee0
	ld (bc),a		;7ee1
	ret nz			;7ee2
	inc bc			;7ee3
	ret po			;7ee4
	inc bc			;7ee5
	ret p			;7ee6
	inc bc			;7ee7
	ret m			;7ee8
	inc bc			;7ee9
	call m,0fe02h		;7eea
	add a,e			;7eed
	add a,b			;7eee
	ret p			;7eef
	cp 004h			;7ef0
	rst 38h			;7ef2
	add a,(hl)		;7ef3
	ccf			;7ef4
	ld a,a			;7ef5
	ccf			;7ef6
	rra			;7ef7
	rst 28h			;7ef8
	rst 28h			;7ef9
	inc bc			;7efa
	rst 30h			;7efb
	inc bc			;7efc
	rst 38h			;7efd
	dec b			;7efe
	nop			;7eff
l7f00h:
	add a,h			;7f00
	ret m			;7f01
	ret p			;7f02
	ex (sp),hl		;7f03
	rst 18h			;7f04
	inc b			;7f05
	rst 38h			;7f06
	add a,d			;7f07
	inc c			;7f08
	ld a,h			;7f09
	inc bc			;7f0a
	ret m			;7f0b
	inc b			;7f0c
	ret p			;7f0d
	dec b			;7f0e
l7f0fh:
	nop			;7f0f
	add a,d			;7f10
	cp 070h			;7f11
	inc b			;7f13
	rst 38h			;7f14
	add a,a			;7f15
	ret m			;7f16
	ret nz			;7f17
	nop			;7f18
	nop			;7f19
	rst 38h			;7f1a
	call m,005e0h		;7f1b
	nop			;7f1e
	add a,d			;7f1f
	ld a,a			;7f20
	ccf			;7f21
	inc bc			;7f22
	rra			;7f23
	add a,h			;7f24
	rrca			;7f25
	ld bc,00700h		;7f26
	rlca			;7f29
	nop			;7f2a
	ld (bc),a		;7f2b
	rst 38h			;7f2c
	add a,d			;7f2d
	rra			;7f2e
	inc bc			;7f2f
	inc b			;7f30
	nop			;7f31
	inc bc			;7f32
	inc bc			;7f33
	inc bc			;7f34
	ld bc,00002h		;7f35
	ld (bc),a		;7f38
	rst 38h			;7f39
	adc a,e			;7f3a
	ld a,a			;7f3b
	ccf			;7f3c
	rra			;7f3d
	rrca			;7f3e
l7f3fh:
	rlca			;7f3f
	inc bc			;7f40
	ld bc,00301h		;7f41
	rlca			;7f44
	rrca			;7f45
	inc bc			;7f46
	rlca			;7f47
	ld (bc),a		;7f48
	rra			;7f49
	inc bc			;7f4a
	rrca			;7f4b
	inc bc			;7f4c
	rlca			;7f4d
	sub c			;7f4e
	rst 38h			;7f4f
	nop			;7f50
	ret p			;7f51
	call m,00fc3h		;7f52
	ccf			;7f55
	call m,00fc3h		;7f56
	ccf			;7f59
	jr nc,$-62		;7f5a
	add a,b			;7f5c
	call m,0c0f0h		;7f5d
	ld b,0f8h		;7f60
	sub c			;7f62
	rst 38h			;7f63
	nop			;7f64
	inc bc			;7f65
	inc e			;7f66
	ret po			;7f67
	ret p			;7f68
	cp 0f8h			;7f69
	ret nz			;7f6b
	call m,0f8fch		;7f6c
	nop			;7f6f
	nop			;7f70
	rst 30h			;7f71
	rst 30h			;7f72
	di			;7f73
	inc b			;7f74
	rrca			;7f75
	add a,(hl)		;7f76
	rra			;7f77
	rrca			;7f78
	rla			;7f79
	dec sp			;7f7a
	dec a			;7f7b
	ld a,(hl)		;7f7c
	dec b			;7f7d
	rst 38h			;7f7e
	add a,(hl)		;7f7f
	ld a,a			;7f80
	rst 38h			;7f81
	ccf			;7f82
	rra			;7f83
	rlca			;7f84
l7f85h:
	ld bc,00003h		;7f85
	sub b			;7f88
	rst 38h			;7f89
	rst 30h			;7f8a
	rst 30h			;7f8b
	ei			;7f8c
	ld sp,hl		;7f8d
	ret m			;7f8e
	inc a			;7f8f
	ld b,07fh		;7f90
	ccf			;7f92
	rra			;7f93
	rrca			;7f94
	rlca			;7f95
	inc bc			;7f96
	ld bc,00300h		;7f97
	rst 38h			;7f9a
	sub a			;7f9b
	ld a,a			;7f9c
	rrca			;7f9d
	ld bc,0f07fh		;7f9e
	nop			;7fa1
	rst 38h			;7fa2
	rst 38h			;7fa3
	nop			;7fa4
	rlca			;7fa5
	inc bc			;7fa6
	ld bc,l7f00h		;7fa7
	ccf			;7faa
	rla			;7fab
	inc bc			;7fac
	ld de,08cf8h		;7fad
	ld b,0ffh		;7fb0
	rst 38h			;7fb2
	ld b,000h		;7fb3
	adc a,b			;7fb5
	add a,b			;7fb6
	adc a,b			;7fb7
	ret z			;7fb8
	call z,0f8eeh		;7fb9
	adc a,h			;7fbc
	ld b,003h		;7fbd
	ret p			;7fbf
	add a,d			;7fc0
	ret m			;7fc1
	call m,0ff03h		;7fc2
	add a,c			;7fc5
	ret m			;7fc6
	inc bc			;7fc7
	call m,0fe03h		;7fc8
	inc bc			;7fcb
	ld a,a			;7fcc
	inc bc			;7fcd
	ccf			;7fce
	inc bc			;7fcf
	rra			;7fd0
	inc bc			;7fd1
	rrca			;7fd2
	xor a			;7fd3
	ret m			;7fd4
	ret z			;7fd5
	adc a,b			;7fd6
	inc a			;7fd7
	call m,0efefh		;7fd8
	rst 8			;7fdb
	add a,a			;7fdc
	rlca			;7fdd
	rlca			;7fde
	inc bc			;7fdf
	inc bc			;7fe0
	nop			;7fe1
	nop			;7fe2
	ld a,a			;7fe3
	ccf			;7fe4
	rlca			;7fe5
	ccf			;7fe6
	rra			;7fe7
	rlca			;7fe8
	rst 38h			;7fe9
	nop			;7fea
	nop			;7feb
	rst 38h			;7fec
	ret po			;7fed
	call m,0e0f8h		;7fee
	ret p			;7ff1
	ret nz			;7ff2
	call m,0c3f0h		;7ff3
	rlca			;7ff6
	ccf			;7ff7
	call m,0fef0h		;7ff8
	ret po			;7ffb
	call m,0fce8h		;7ffc
sub_7fffh:
	nop			;7fff

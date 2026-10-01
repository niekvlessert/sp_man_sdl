; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank26_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank26.bin

	org 06000h

	cp (hl)			;6000
	cp (hl)			;6001
	cp (hl)			;6002
	cp (hl)			;6003
	push bc			;6004
	push bc			;6005
	push bc			;6006
	push bc			;6007
	ld bc,00104h		;6008
	inc b			;600b
	ld c,00dh		;600c
	ld c,00dh		;600e
	add hl,bc		;6010
	ld hl,02109h		;6011
	ex af,af'		;6014
	dec e			;6015
	ex af,af'		;6016
	dec e			;6017
	ld (de),a		;6018
	ld de,01112h		;6019
	jr l6035h		;601c
	jr l6037h		;601e
	cp (hl)			;6020
	cp (hl)			;6021
	cp h			;6022
	cp l			;6023
	push bc			;6024
	push bc			;6025
	cp d			;6026
	cp e			;6027
	ld bc,0b804h		;6028
	cp c			;602b
	ld c,00dh		;602c
	cp b			;602e
	cp c			;602f
	ld d,016h		;6030
	ld d,016h		;6032
	dec d			;6034
l6035h:
	dec d			;6035
	dec d			;6036
l6037h:
	dec d			;6037
	cp (hl)			;6038
	cp (hl)			;6039
	cp h			;603a
	cp l			;603b
	push bc			;603c
	push bc			;603d
	cp d			;603e
	cp e			;603f
	rrca			;6040
	rrca			;6041
	cp h			;6042
	cp l			;6043
	djnz l6056h		;6044
	cp d			;6046
	cp e			;6047
	dec h			;6048
	dec h			;6049
	dec h			;604a
	dec h			;604b
	dec h			;604c
	dec h			;604d
	dec h			;604e
	dec h			;604f
	add hl,bc		;6050
	inc c			;6051
	cp b			;6052
	cp c			;6053
	ex af,af'		;6054
	dec bc			;6055
l6056h:
	cp b			;6056
	cp c			;6057
	ld (de),a		;6058
	ld de,0b9b8h		;6059
	jr l6075h		;605c
	cp b			;605e
	cp c			;605f
	ld d,016h		;6060
	ld d,016h		;6062
	dec d			;6064
	dec d			;6065
	dec d			;6066
	dec d			;6067
	cp h			;6068
	cp l			;6069
	inc d			;606a
	inc de			;606b
	cp d			;606c
	cp e			;606d
	rlca			;606e
	ld a,(bc)		;606f
	nop			;6070
	nop			;6071
	nop			;6072
	nop			;6073
	nop			;6074
l6075h:
	nop			;6075
	nop			;6076
	nop			;6077
	nop			;6078
	nop			;6079
	nop			;607a
	nop			;607b
	nop			;607c
	nop			;607d
	nop			;607e
	nop			;607f
	ld a,l			;6080
	ld a,d			;6081
	ld a,(hl)		;6082
	adc a,b			;6083
	adc a,d			;6084
	adc a,e			;6085
	add a,c			;6086
	adc a,c			;6087
	adc a,l			;6088
	adc a,(hl)		;6089
	ld a,(hl)		;608a
	adc a,b			;608b
	adc a,d			;608c
	adc a,e			;608d
	adc a,h			;608e
	adc a,c			;608f
	ld a,l			;6090
	ld a,d			;6091
	ld a,(hl)		;6092
	adc a,b			;6093
	ld a,a			;6094
	add a,b			;6095
	add a,c			;6096
	adc a,c			;6097
	ld a,l			;6098
	ld a,d			;6099
	ld a,(hl)		;609a
	adc a,b			;609b
	adc a,a			;609c
	sub b			;609d
	adc a,h			;609e
	adc a,c			;609f
	ld a,l			;60a0
	ld a,d			;60a1
	ld a,(hl)		;60a2
	adc a,b			;60a3
	ld a,a			;60a4
	add a,b			;60a5
	add a,c			;60a6
	adc a,c			;60a7
	add a,e			;60a8
	add a,l			;60a9
	add a,a			;60aa
	adc a,b			;60ab
	adc a,a			;60ac
	sub b			;60ad
	adc a,h			;60ae
	adc a,c			;60af
	ld a,l			;60b0
	ld a,d			;60b1
	ld a,(hl)		;60b2
	adc a,b			;60b3
	ld a,a			;60b4
	add a,b			;60b5
	add a,c			;60b6
	adc a,c			;60b7
	add a,(hl)		;60b8
	add a,d			;60b9
	add a,h			;60ba
	adc a,b			;60bb
	adc a,a			;60bc
	sub b			;60bd
	adc a,h			;60be
	adc a,c			;60bf
	ld a,c			;60c0
	ld a,e			;60c1
	ld a,e			;60c2
	ld a,c			;60c3
	ld a,h			;60c4
	ld a,b			;60c5
	ld a,b			;60c6
	ld a,h			;60c7
	ld a,h			;60c8
	ld a,b			;60c9
	ld a,b			;60ca
	ld a,h			;60cb
	ld a,c			;60cc
	ld a,e			;60cd
	ld a,e			;60ce
	ld a,c			;60cf
	nop			;60d0
	nop			;60d1
	nop			;60d2
	ld (hl),c		;60d3
	sub c			;60d4
	sub d			;60d5
	sub e			;60d6
	sub h			;60d7
	ld a,l			;60d8
	ld a,d			;60d9
	ld a,(hl)		;60da
	adc a,b			;60db
	adc a,a			;60dc
	sub b			;60dd
	adc a,h			;60de
	adc a,c			;60df
	nop			;60e0
	nop			;60e1
	nop			;60e2
	ld (hl),c		;60e3
	sub c			;60e4
	sub d			;60e5
	sub e			;60e6
	sub h			;60e7
	ld a,a			;60e8
	add a,b			;60e9
	add a,c			;60ea
	adc a,b			;60eb
	add a,(hl)		;60ec
	add a,d			;60ed
	add a,h			;60ee
	adc a,c			;60ef
	sub c			;60f0
	sub d			;60f1
	sub e			;60f2
	sub h			;60f3
	ld a,a			;60f4
	add a,b			;60f5
	add a,c			;60f6
	adc a,c			;60f7
	add a,e			;60f8
	add a,l			;60f9
	add a,a			;60fa
	adc a,b			;60fb
	adc a,a			;60fc
	sub b			;60fd
	adc a,h			;60fe
	adc a,c			;60ff
	sub c			;6100
	sub d			;6101
	sub e			;6102
	sub h			;6103
	adc a,d			;6104
	adc a,e			;6105
	add a,c			;6106
	adc a,c			;6107
	adc a,l			;6108
	adc a,(hl)		;6109
	ld a,(hl)		;610a
	adc a,b			;610b
	adc a,d			;610c
	adc a,e			;610d
	adc a,h			;610e
	adc a,c			;610f
	ld a,l			;6110
	ld a,d			;6111
	ld a,(hl)		;6112
	adc a,b			;6113
	ld a,a			;6114
	add a,b			;6115
	add a,c			;6116
	adc a,c			;6117
	ld a,l			;6118
	ld a,d			;6119
	ld a,(hl)		;611a
	adc a,b			;611b
	ld (hl),d		;611c
	ld (hl),d		;611d
	ld (hl),d		;611e
	nop			;611f
	ld a,a			;6120
	add a,b			;6121
	add a,c			;6122
	adc a,b			;6123
	ld a,a			;6124
	add a,b			;6125
	add a,c			;6126
	adc a,c			;6127
	add a,(hl)		;6128
	add a,d			;6129
	add a,h			;612a
	adc a,b			;612b
	ld (hl),d		;612c
	ld (hl),d		;612d
l612eh:
	ld (hl),d		;612e
	nop			;612f
	nop			;6130
	nop			;6131
	nop			;6132
	nop			;6133
	nop			;6134
	nop			;6135
	ld (hl),h		;6136
	halt			;6137
	nop			;6138
	ld (hl),e		;6139
	ld (hl),a		;613a
	ld (hl),l		;613b
	nop			;613c
	nop			;613d
	nop			;613e
	nop			;613f
	nop			;6140
	nop			;6141
	nop			;6142
	nop			;6143
	ld (hl),h		;6144
	halt			;6145
	ld (hl),h		;6146
	halt			;6147
	ld (hl),a		;6148
	ld (hl),l		;6149
	ld (hl),a		;614a
	ld (hl),l		;614b
	nop			;614c
	nop			;614d
	nop			;614e
	nop			;614f
	nop			;6150
	nop			;6151
	nop			;6152
	nop			;6153
	ld (hl),h		;6154
	halt			;6155
	ld (hl),h		;6156
	nop			;6157
	ld (hl),a		;6158
	ld (hl),l		;6159
	ld (hl),a		;615a
	nop			;615b
	nop			;615c
	nop			;615d
	nop			;615e
	nop			;615f
	ld (hl),d		;6160
	ld (hl),d		;6161
	ld (hl),d		;6162
	nop			;6163
	nop			;6164
	ld (hl),h		;6165
	halt			;6166
	nop			;6167
	ld (hl),e		;6168
	ld (hl),a		;6169
	ld (hl),l		;616a
	nop			;616b
	sub c			;616c
	sub d			;616d
	sub e			;616e
	sub h			;616f
	ld c,(hl)		;6170
	ld c,(hl)		;6171
	inc hl			;6172
	ccf			;6173
	ld hl,03d66h		;6174
	ld e,h			;6177
	ld c,(hl)		;6178
	ld c,(hl)		;6179
	inc hl			;617a
	ccf			;617b
	adc a,a			;617c
	sub b			;617d
	adc a,h			;617e
	adc a,c			;617f
	ld c,(hl)		;6180
	ld c,a			;6181
	ld c,(hl)		;6182
	ld c,a			;6183
	ld e,h			;6184
	ld e,h			;6185
	ld e,h			;6186
	ld e,h			;6187
	ld c,(hl)		;6188
	ld c,a			;6189
	ld c,(hl)		;618a
	ld c,a			;618b
	adc a,a			;618c
	sub b			;618d
	adc a,h			;618e
	adc a,c			;618f
	ld c,(hl)		;6190
	ld c,(hl)		;6191
	inc hl			;6192
	ld d,c			;6193
	ld hl,03d66h		;6194
	ld d,c			;6197
	ld c,(hl)		;6198
	ld c,(hl)		;6199
	inc hl			;619a
	ld d,d			;619b
	adc a,a			;619c
	sub b			;619d
	adc a,h			;619e
	adc a,c			;619f
	ld d,c			;61a0
	ld c,a			;61a1
	ld c,(hl)		;61a2
	ld c,a			;61a3
	ld d,c			;61a4
	ld e,h			;61a5
	ld e,h			;61a6
	ld e,h			;61a7
	ld d,d			;61a8
	ld c,a			;61a9
	ld c,(hl)		;61aa
	ld c,a			;61ab
	adc a,a			;61ac
	sub b			;61ad
	adc a,h			;61ae
	adc a,c			;61af
	ld c,(hl)		;61b0
	ld c,a			;61b1
	inc hl			;61b2
	ccf			;61b3
	ld e,e			;61b4
	ld e,d			;61b5
	ld e,03ah		;61b6
	ld h,l			;61b8
	ld h,l			;61b9
	ld h,l			;61ba
	ld h,l			;61bb
	ld (hl),b		;61bc
	ld (hl),b		;61bd
	ld (hl),b		;61be
	ld (hl),b		;61bf
	ld c,(hl)		;61c0
	ld c,a			;61c1
	ld c,(hl)		;61c2
	ld c,a			;61c3
	ld e,h			;61c4
	ld e,h			;61c5
	ld e,h			;61c6
	djnz l6217h		;61c7
	ld c,a			;61c9
	dec e			;61ca
	add hl,bc		;61cb
	adc a,a			;61cc
	xor d			;61cd
	add hl,bc		;61ce
	ld a,(bc)		;61cf
	dec e			;61d0
	add hl,bc		;61d1
	ld a,(bc)		;61d2
	dec bc			;61d3
	add hl,bc		;61d4
	ld a,(bc)		;61d5
	dec bc			;61d6
	ld a,(de)		;61d7
	ld a,(bc)		;61d8
	dec bc			;61d9
	ld a,(de)		;61da
	rla			;61db
	dec bc			;61dc
	ld a,(de)		;61dd
	rla			;61de
	and b			;61df
	ld a,(de)		;61e0
	rla			;61e1
	ld (de),a		;61e2
	add hl,de		;61e3
	rla			;61e4
	ld (de),a		;61e5
	inc e			;61e6
	ld e,h			;61e7
	ld (de),a		;61e8
	add hl,de		;61e9
	ld c,(hl)		;61ea
	ld c,a			;61eb
	adc a,a			;61ec
	sub b			;61ed
	adc a,h			;61ee
	adc a,c			;61ef
	ld a,l			;61f0
	ld a,d			;61f1
	ld a,(hl)		;61f2
	adc a,b			;61f3
	ld a,a			;61f4
	add a,b			;61f5
	add a,c			;61f6
	xor d			;61f7
	add a,e			;61f8
	add a,l			;61f9
	xor d			;61fa
	add hl,bc		;61fb
	adc a,a			;61fc
	xor d			;61fd
	add hl,bc		;61fe
	ld a,(bc)		;61ff
	xor d			;6200
	add hl,bc		;6201
	ld a,(bc)		;6202
	dec bc			;6203
	add hl,bc		;6204
	ld a,(bc)		;6205
	dec bc			;6206
	ld a,(de)		;6207
	ld a,(bc)		;6208
	dec bc			;6209
	ld a,(de)		;620a
	rla			;620b
	dec bc			;620c
	ld a,(de)		;620d
	rla			;620e
	and b			;620f
	ld a,(de)		;6210
	rla			;6211
	and b			;6212
	adc a,b			;6213
	rla			;6214
	and b			;6215
	add a,c			;6216
l6217h:
	adc a,c			;6217
	and b			;6218
	add a,d			;6219
	add a,h			;621a
	adc a,b			;621b
	adc a,a			;621c
	sub b			;621d
	adc a,h			;621e
	adc a,c			;621f
	ld a,l			;6220
	ld a,d			;6221
	ld a,(hl)		;6222
	adc a,b			;6223
	ld a,a			;6224
	add a,b			;6225
	add a,c			;6226
	adc a,c			;6227
	add a,e			;6228
	add a,l			;6229
	add a,a			;622a
	or e			;622b
	adc a,a			;622c
	sub b			;622d
	adc a,h			;622e
	adc a,c			;622f
	ld a,l			;6230
	dec c			;6231
	ld a,(bc)		;6232
	dec bc			;6233
	or e			;6234
	ld c,00bh		;6235
	ld a,(de)		;6237
	ld e,l			;6238
	rrca			;6239
	ld a,(de)		;623a
	rla			;623b
	or e			;623c
	ld e,l			;623d
	rla			;623e
	and b			;623f
	xor d			;6240
	add hl,bc		;6241
	ld a,(bc)		;6242
	dec bc			;6243
	add hl,bc		;6244
	ld a,(bc)		;6245
	dec bc			;6246
	jr nz,l6253h		;6247
	dec bc			;6249
	jr nz,l6255h		;624a
	dec bc			;624c
	jr nz,l6258h		;624d
	ld a,(bc)		;624f
	ld a,(de)		;6250
	dec c			;6251
	ld a,(bc)		;6252
l6253h:
	dec bc			;6253
	rla			;6254
l6255h:
	ld c,00bh		;6255
	ld a,(de)		;6257
l6258h:
	or e			;6258
	rrca			;6259
	ld a,(de)		;625a
	rla			;625b
	or e			;625c
	ld e,l			;625d
	rla			;625e
	and b			;625f
	ld e,e			;6260
	ld d,c			;6261
	ld a,(hl)		;6262
	adc a,b			;6263
	ld e,e			;6264
	ld d,c			;6265
	add a,c			;6266
	adc a,c			;6267
l6268h:
	ld e,e			;6268
	ld d,c			;6269
	add a,a			;626a
	adc a,b			;626b
	ld e,e			;626c
	ld d,c			;626d
	adc a,h			;626e
	adc a,c			;626f
	ld e,e			;6270
	ld d,c			;6271
	and b			;6272
	adc a,b			;6273
	ld e,e			;6274
	ld d,c			;6275
	add a,c			;6276
	xor d			;6277
	ld e,h			;6278
	ld d,c			;6279
	xor d			;627a
	add hl,bc		;627b
	ld c,a			;627c
	dec e			;627d
	add hl,bc		;627e
	ld a,(bc)		;627f
	ld a,l			;6280
	ld e,(hl)		;6281
	ld e,(hl)		;6282
	ld e,(hl)		;6283
	adc a,d			;6284
	adc a,e			;6285
	sbc a,c			;6286
	ld h,l			;6287
	adc a,l			;6288
	adc a,(hl)		;6289
	ld a,(hl)		;628a
	sbc a,e			;628b
	adc a,d			;628c
	adc a,e			;628d
	adc a,h			;628e
	adc a,c			;628f
	ld d,d			;6290
	ld c,(hl)		;6291
	inc hl			;6292
	ccf			;6293
	ld e,h			;6294
	ld e,h			;6295
	ld e,h			;6296
	ld e,h			;6297
	ld c,(hl)		;6298
	ld c,a			;6299
	ld c,(hl)		;629a
	ld c,a			;629b
	adc a,a			;629c
	sub b			;629d
	adc a,h			;629e
	adc a,c			;629f
	ld a,l			;62a0
	ld a,d			;62a1
	ld a,(hl)		;62a2
	adc a,b			;62a3
	ld a,a			;62a4
	add a,b			;62a5
	add a,c			;62a6
	adc a,c			;62a7
	add a,e			;62a8
	add a,l			;62a9
	xor e			;62aa
	ex af,af'		;62ab
	adc a,a			;62ac
	xor d			;62ad
	add hl,bc		;62ae
	ld a,(bc)		;62af
	ld a,l			;62b0
	ld a,d			;62b1
	ld a,(hl)		;62b2
	adc a,b			;62b3
	ld a,a			;62b4
	add a,b			;62b5
	add a,c			;62b6
	xor d			;62b7
	and c			;62b8
	ld a,d			;62b9
	xor d			;62ba
	add hl,bc		;62bb
	jr l6268h		;62bc
	add hl,bc		;62be
	ld a,(bc)		;62bf
	ld d,b			;62c0
	ld c,a			;62c1
	ld c,(hl)		;62c2
	ld c,a			;62c3
	ld d,c			;62c4
	ld e,h			;62c5
	ld e,h			;62c6
	djnz l631ah		;62c7
	ld c,a			;62c9
	dec e			;62ca
	add hl,bc		;62cb
	sbc a,b			;62cc
	rra			;62cd
	add hl,bc		;62ce
	ld a,(bc)		;62cf
	xor d			;62d0
	add hl,bc		;62d1
	ld a,(bc)		;62d2
	dec bc			;62d3
	add hl,bc		;62d4
	ld a,(bc)		;62d5
	dec bc			;62d6
	ld a,(de)		;62d7
	ld a,(bc)		;62d8
	dec bc			;62d9
	ld a,(de)		;62da
	rla			;62db
	dec bc			;62dc
	ld a,(de)		;62dd
	rla			;62de
	ld (de),a		;62df
	xor d			;62e0
	add hl,bc		;62e1
	ld a,(bc)		;62e2
	dec bc			;62e3
	sbc a,c			;62e4
	ld h,l			;62e5
	ld h,l			;62e6
	ld d,b			;62e7
	adc a,l			;62e8
	sbc a,e			;62e9
	ld (hl),b		;62ea
	ld d,d			;62eb
	adc a,d			;62ec
	adc a,e			;62ed
	ld e,(hl)		;62ee
	ld e,(hl)		;62ef
	ld a,(de)		;62f0
	rla			;62f1
	ld (de),a		;62f2
	add hl,de		;62f3
	rla			;62f4
	ld (de),a		;62f5
	ld d,05bh		;62f6
	ld e,03ah		;62f8
	ld e,03ah		;62fa
	ld e,(hl)		;62fc
	ld e,(hl)		;62fd
	ld e,(hl)		;62fe
	ld e,(hl)		;62ff
	ld a,l			;6300
	ld a,d			;6301
	ld a,(hl)		;6302
	sbc a,c			;6303
	ld a,a			;6304
	add a,b			;6305
	add a,c			;6306
	adc a,c			;6307
	add a,e			;6308
	add a,l			;6309
	add a,a			;630a
	adc a,b			;630b
	adc a,a			;630c
	sub b			;630d
	adc a,h			;630e
	adc a,c			;630f
	ld h,l			;6310
	ld h,l			;6311
	ld h,l			;6312
	ld h,l			;6313
	sbc a,e			;6314
	ld (hl),b		;6315
	ld (hl),b		;6316
	ld (hl),b		;6317
	ld a,l			;6318
	sbc a,c			;6319
l631ah:
	ld h,l			;631a
	ld h,l			;631b
	adc a,a			;631c
	sub b			;631d
	sbc a,e			;631e
	ld (hl),b		;631f
	ld d,b			;6320
	ld c,a			;6321
	ld c,(hl)		;6322
	ld c,a			;6323
	ld d,c			;6324
	ld e,h			;6325
	ld e,h			;6326
	djnz l637ah		;6327
	ld c,a			;6329
	dec e			;632a
	add hl,bc		;632b
	ld d,c			;632c
	rra			;632d
	add hl,bc		;632e
	ld a,(bc)		;632f
	ld d,c			;6330
	ld e,h			;6331
	ld e,h			;6332
	ld d,c			;6333
	ld d,c			;6334
	ld c,a			;6335
	ld c,(hl)		;6336
	ld d,d			;6337
	ld d,c			;6338
	ld h,l			;6339
	ld h,l			;633a
	ld h,l			;633b
	ld d,d			;633c
	ld (hl),b		;633d
	ld (hl),b		;633e
	sub a			;633f
	ld h,l			;6340
	ld h,l			;6341
	sub (hl)		;6342
	adc a,b			;6343
	ld (hl),b		;6344
	sub a			;6345
	add a,c			;6346
	adc a,c			;6347
	sub (hl)		;6348
	add a,l			;6349
	add a,a			;634a
	adc a,b			;634b
	adc a,a			;634c
	sub b			;634d
	adc a,h			;634e
	adc a,c			;634f
	ld a,(de)		;6350
	rla			;6351
	and b			;6352
	adc a,b			;6353
	rla			;6354
	ld d,b			;6355
	add a,c			;6356
	adc a,c			;6357
	ld e,e			;6358
	ld d,c			;6359
	add a,a			;635a
	adc a,b			;635b
	ld e,e			;635c
	ld d,c			;635d
	adc a,h			;635e
	adc a,c			;635f
	ld hl,03d66h		;6360
	ld d,b			;6363
	ld c,(hl)		;6364
	ld c,a			;6365
	ld c,(hl)		;6366
	ld d,c			;6367
	ld e,e			;6368
	ld e,d			;6369
	ld e,e			;636a
	ld d,c			;636b
	ld e,(hl)		;636c
	ld e,(hl)		;636d
	ld d,d			;636e
	ld d,d			;636f
	ld hl,03d66h		;6370
	ld e,h			;6373
	ld c,(hl)		;6374
	ld c,(hl)		;6375
	inc hl			;6376
	ccf			;6377
	ld e,e			;6378
	ld e,e			;6379
l637ah:
	ld e,03ah		;637a
	ld e,h			;637c
	ld d,e			;637d
	ld d,a			;637e
	ld d,d			;637f
	ld e,h			;6380
	ld e,h			;6381
	ld e,h			;6382
	ld e,h			;6383
	ld c,(hl)		;6384
	ld c,a			;6385
	ld c,(hl)		;6386
	ld c,a			;6387
	ld e,e			;6388
	ld e,d			;6389
	ld e,e			;638a
	ld e,d			;638b
	ld e,(hl)		;638c
	ld e,(hl)		;638d
	ld d,d			;638e
	ld e,(hl)		;638f
	ld d,d			;6390
	ld d,e			;6391
	ld e,b			;6392
	ld l,(hl)		;6393
	ld e,(hl)		;6394
	ld e,(hl)		;6395
	ld d,d			;6396
	ld e,(hl)		;6397
	ld e,c			;6398
	ld e,c			;6399
	ld l,e			;639a
	ld d,(hl)		;639b
	ld e,h			;639c
	ld d,e			;639d
	ld d,a			;639e
	ld d,d			;639f
	ld e,c			;63a0
	ld e,c			;63a1
	ld l,e			;63a2
	ld d,(hl)		;63a3
	ld e,h			;63a4
	ld d,e			;63a5
	ld d,a			;63a6
	ld d,d			;63a7
	ld d,d			;63a8
	ld l,c			;63a9
	ld e,b			;63aa
	ld l,(hl)		;63ab
	ld e,(hl)		;63ac
	ld e,(hl)		;63ad
	ld d,d			;63ae
	ld e,(hl)		;63af
	ld h,h			;63b0
	ld l,d			;63b1
	ld h,h			;63b2
	ld l,d			;63b3
	ld h,d			;63b4
	ld h,a			;63b5
	ld h,d			;63b6
	ld h,a			;63b7
	ld h,e			;63b8
	ld c,h			;63b9
	ld h,e			;63ba
	ld c,h			;63bb
	ld h,e			;63bc
	ld l,b			;63bd
	ld h,e			;63be
	ld l,b			;63bf
	ld h,e			;63c0
	ld c,h			;63c1
	ld h,e			;63c2
	ld c,h			;63c3
	ld h,e			;63c4
	ld l,b			;63c5
	ld h,e			;63c6
	ld l,b			;63c7
	ld h,e			;63c8
	ld c,h			;63c9
	ld h,e			;63ca
	ld c,h			;63cb
	ld h,e			;63cc
	ld l,b			;63cd
	ld h,e			;63ce
	ld l,b			;63cf
	ld a,l			;63d0
	ld a,d			;63d1
	ld a,(hl)		;63d2
	adc a,b			;63d3
	ld a,a			;63d4
	add a,b			;63d5
	add a,c			;63d6
	adc a,c			;63d7
	add a,e			;63d8
	add a,l			;63d9
	add a,a			;63da
	adc a,b			;63db
	ld hl,03d66h		;63dc
	ld d,b			;63df
	ld a,l			;63e0
	ld a,d			;63e1
	ld a,(hl)		;63e2
	adc a,b			;63e3
	ld a,a			;63e4
	add a,b			;63e5
	add a,c			;63e6
	adc a,c			;63e7
	ld e,h			;63e8
	ld e,h			;63e9
	ld e,h			;63ea
	ld e,h			;63eb
	ld c,(hl)		;63ec
	ld c,a			;63ed
	ld c,(hl)		;63ee
	ld c,a			;63ef
	ld a,l			;63f0
	ld a,d			;63f1
	ld a,(hl)		;63f2
	adc a,b			;63f3
	ld a,a			;63f4
	add a,b			;63f5
	add a,c			;63f6
	adc a,c			;63f7
	ld hl,03d66h		;63f8
	ld e,h			;63fb
	ld c,(hl)		;63fc
	ld c,(hl)		;63fd
	inc hl			;63fe
	ccf			;63ff
	ld a,l			;6400
	sub l			;6401
	ld h,l			;6402
	ld d,d			;6403
	sbc a,e			;6404
	ld (hl),b		;6405
	ld h,h			;6406
	ld l,d			;6407
	ld e,h			;6408
	ld e,h			;6409
	ld h,d			;640a
	ld h,a			;640b
	ld c,(hl)		;640c
	ld c,a			;640d
	ld h,e			;640e
	ld c,h			;640f
	ld a,l			;6410
	ld a,d			;6411
	ld a,(hl)		;6412
	adc a,b			;6413
	ld a,a			;6414
	add a,b			;6415
	add a,c			;6416
	adc a,c			;6417
	ld a,l			;6418
	sub l			;6419
	ld h,l			;641a
	ld d,c			;641b
	sbc a,e			;641c
	ld (hl),b		;641d
	ld (hl),b		;641e
	ld d,d			;641f
	ld a,l			;6420
	ld a,d			;6421
	ld a,(hl)		;6422
	adc a,b			;6423
	ld a,a			;6424
	add a,b			;6425
	add a,c			;6426
	or e			;6427
	add a,e			;6428
	add a,l			;6429
	add a,a			;642a
	adc a,b			;642b
	adc a,a			;642c
	sub b			;642d
	adc a,h			;642e
	adc a,c			;642f
	xor a			;6430
	or d			;6431
	inc h			;6432
	cp h			;6433
	dec l			;6434
	inc (hl)		;6435
	ld h,025h		;6436
	or e			;6438
	ld e,l			;6439
	daa			;643a
	ld h,08fh		;643b
	or e			;643d
	inc a			;643e
	daa			;643f
	ld a,l			;6440
	ld a,d			;6441
	ld a,(hl)		;6442
	adc a,b			;6443
	cp e			;6444
	add a,b			;6445
	add a,c			;6446
	adc a,c			;6447
	dec h			;6448
	cp e			;6449
	add a,a			;644a
	adc a,b			;644b
	ld h,025h		;644c
	cp e			;644e
	adc a,c			;644f
	ld a,l			;6450
	or c			;6451
	inc sp			;6452
	ld (hl),07fh		;6453
	add a,b			;6455
	or c			;6456
	inc sp			;6457
	add a,e			;6458
	add a,l			;6459
	add a,a			;645a
	or c			;645b
	adc a,a			;645c
	sub b			;645d
	adc a,h			;645e
	adc a,c			;645f
	sbc a,c			;6460
	ld h,l			;6461
	ld h,l			;6462
	ld h,l			;6463
	ld a,a			;6464
	sbc a,e			;6465
	ld (hl),b		;6466
	ld (hl),b		;6467
	ld a,l			;6468
	ld a,d			;6469
	sbc a,c			;646a
	ld h,l			;646b
	adc a,a			;646c
	sub b			;646d
	adc a,h			;646e
	sbc a,e			;646f
	djnz l647bh		;6470
	ld a,(bc)		;6472
	dec bc			;6473
	add hl,bc		;6474
	ld a,(bc)		;6475
	dec bc			;6476
	ld a,(de)		;6477
	ld a,(bc)		;6478
	dec bc			;6479
	ld a,(de)		;647a
l647bh:
	rla			;647b
	dec bc			;647c
	ld a,(de)		;647d
	rla			;647e
	ld (de),a		;647f
	daa			;6480
l6481h:
	ld h,025h		;6481
	cp e			;6483
	ld (hl),027h		;6484
	ld h,025h		;6486
	inc sp			;6488
	ld (hl),027h		;6489
	ld h,02eh		;648b
	inc sp			;648d
	ld (hl),027h		;648e
	jr c,l64c0h		;6490
	inc sp			;6492
	ld (hl),04eh		;6493
	dec (hl)		;6495
	ld l,033h		;6496
	ld e,e			;6498
	ld e,d			;6499
	ld (05e2eh),a		;649a
	ld e,(hl)		;649d
	ld d,d			;649e
	jr c,l64c8h		;649f
	ld h,025h		;64a1
	inc l			;64a3
	ld (hl),027h		;64a4
	ld h,025h		;64a6
	inc sp			;64a8
	ld (hl),027h		;64a9
	ld h,02eh		;64ab
	inc sp			;64ad
	ld (hl),027h		;64ae
	ld a,l			;64b0
	ld a,d			;64b1
	ld a,(hl)		;64b2
	adc a,b			;64b3
	ld a,a			;64b4
	add a,b			;64b5
	add a,c			;64b6
	adc a,c			;64b7
	ld a,l			;64b8
	ld a,d			;64b9
	ld a,(hl)		;64ba
	adc a,b			;64bb
	ld e,h			;64bc
	ld e,h			;64bd
	ld e,h			;64be
	ld e,h			;64bf
l64c0h:
	ld a,(de)		;64c0
	rla			;64c1
	and b			;64c2
	adc a,b			;64c3
	rla			;64c4
	and b			;64c5
	add a,c			;64c6
	adc a,c			;64c7
l64c8h:
	ld e,e			;64c8
	ld e,d			;64c9
	ld d,c			;64ca
	ld e,h			;64cb
	ld e,(hl)		;64cc
	ld e,(hl)		;64cd
	ld d,d			;64ce
	ld c,a			;64cf
	xor e			;64d0
	ex af,af'		;64d1
	and c			;64d2
	sbc a,(hl)		;64d3
	add hl,bc		;64d4
	ld a,(bc)		;64d5
	jr l64e9h		;64d6
	ld a,(bc)		;64d8
	dec bc			;64d9
	ld e,l			;64da
	and d			;64db
	dec bc			;64dc
	jr nz,l6481h		;64dd
	adc a,c			;64df
	ld a,l			;64e0
	ld a,d			;64e1
	ld a,(hl)		;64e2
	adc a,b			;64e3
	and d			;64e4
	add a,b			;64e5
	add a,c			;64e6
	adc a,c			;64e7
	add a,e			;64e8
l64e9h:
	add a,l			;64e9
	add a,a			;64ea
	adc a,b			;64eb
	adc a,a			;64ec
	sub b			;64ed
	adc a,h			;64ee
	adc a,c			;64ef
	ld a,l			;64f0
	ld a,d			;64f1
	ld a,(hl)		;64f2
	adc a,b			;64f3
	cp e			;64f4
	add a,b			;64f5
	add a,c			;64f6
	adc a,c			;64f7
	dec h			;64f8
	inc l			;64f9
	ld e,h			;64fa
	ld e,h			;64fb
	ld h,025h		;64fc
	add hl,sp		;64fe
	ld c,a			;64ff
	ld e,h			;6500
	ld e,h			;6501
	ld e,h			;6502
	ld e,h			;6503
	add hl,sp		;6504
	ld c,a			;6505
	ld c,(hl)		;6506
	ld c,a			;6507
	dec h			;6508
	dec sp			;6509
	ld e,e			;650a
	ld e,d			;650b
	ld h,025h		;650c
	dec sp			;650e
	ld d,d			;650f
	ld a,l			;6510
	ld a,d			;6511
	ld a,(hl)		;6512
	sub l			;6513
	ld a,a			;6514
	add a,b			;6515
	sbc a,e			;6516
	ld (hl),b		;6517
	add a,e			;6518
	sub l			;6519
	ld h,l			;651a
	ld d,c			;651b
	sbc a,e			;651c
	ld (hl),b		;651d
	ld (hl),b		;651e
	ld d,d			;651f
	ld h,l			;6520
	ld d,c			;6521
	ld e,h			;6522
	ld e,h			;6523
	ld (hl),b		;6524
	ld d,d			;6525
	ld c,(hl)		;6526
l6527h:
	ld c,a			;6527
	ld e,e			;6528
	ld e,03ah		;6529
	ld e,e			;652b
	ld d,e			;652c
	ld d,a			;652d
	ld d,d			;652e
	ld e,(hl)		;652f
	ld a,l			;6530
	ld a,d			;6531
	ld a,(hl)		;6532
	adc a,b			;6533
	ld a,a			;6534
	add a,b			;6535
	add a,c			;6536
	adc a,c			;6537
	add a,(hl)		;6538
	add a,d			;6539
	add a,h			;653a
	adc a,b			;653b
	ld d,b			;653c
	ld hl,03d66h		;653d
	ld d,b			;6540
	ld c,(hl)		;6541
	inc hl			;6542
	ccf			;6543
	ld d,d			;6544
	ld e,e			;6545
	ld e,03ah		;6546
	ld h,l			;6548
	ld h,l			;6549
	ld h,l			;654a
	ld h,l			;654b
	ld (hl),b		;654c
	ld (hl),b		;654d
	ld (hl),b		;654e
	ld (hl),b		;654f
	daa			;6550
	ld h,025h		;6551
	inc l			;6553
	ld (hl),027h		;6554
	ld h,025h		;6556
	inc sp			;6558
	ld (hl),027h		;6559
	ld h,0b1h		;655b
	inc sp			;655d
	ld (hl),027h		;655e
	sub (hl)		;6560
	ld a,d			;6561
	ld a,(hl)		;6562
	adc a,b			;6563
	ld (hl),b		;6564
	sbc a,d			;6565
	add a,c			;6566
	adc a,c			;6567
	ld d,c			;6568
	ld h,l			;6569
	sub (hl)		;656a
	adc a,b			;656b
	ld d,c			;656c
	ld (hl),b		;656d
	ld (hl),b		;656e
	sbc a,d			;656f
	ld a,l			;6570
	ld a,d			;6571
	ld a,(hl)		;6572
	adc a,b			;6573
	ld a,a			;6574
	add a,b			;6575
	add a,c			;6576
	adc a,c			;6577
	ld d,c			;6578
	ld h,l			;6579
	sub (hl)		;657a
	adc a,b			;657b
	ld d,d			;657c
	ld (hl),b		;657d
	ld (hl),b		;657e
	sbc a,d			;657f
	ld d,b			;6580
	ld hl,03d66h		;6581
	ld d,c			;6584
	ld c,a			;6585
	ld c,(hl)		;6586
	ld c,a			;6587
	ld d,c			;6588
	ld e,d			;6589
	ld e,e			;658a
	ld e,d			;658b
	ld d,d			;658c
	ld e,(hl)		;658d
	ld d,d			;658e
	ld e,(hl)		;658f
	ld a,l			;6590
	or c			;6591
	inc sp			;6592
	ld (hl),08ah		;6593
	adc a,e			;6595
	or c			;6596
	inc sp			;6597
	adc a,l			;6598
	adc a,(hl)		;6599
	sub l			;659a
	jr c,l6527h		;659b
	sbc a,e			;659d
	ld (hl),b		;659e
	dec (hl)		;659f
	ld e,h			;65a0
	ld e,h			;65a1
	ld e,h			;65a2
	ld e,h			;65a3
	inc hl			;65a4
	ccf			;65a5
	ld c,(hl)		;65a6
	dec e			;65a7
	ld e,03ah		;65a8
	rra			;65aa
	add hl,bc		;65ab
	ld e,e			;65ac
	rra			;65ad
	add hl,bc		;65ae
	ld a,(bc)		;65af
	ld e,h			;65b0
	ld e,h			;65b1
	ld e,h			;65b2
	ld e,h			;65b3
	ld c,(hl)		;65b4
	ld c,(hl)		;65b5
	inc hl			;65b6
	ccf			;65b7
	ld a,(bc)		;65b8
	dec bc			;65b9
	ld a,(de)		;65ba
	rla			;65bb
	dec bc			;65bc
	ld a,(de)		;65bd
	rla			;65be
	and b			;65bf
	ld e,h			;65c0
	ld e,h			;65c1
	ld e,h			;65c2
	ld e,h			;65c3
	ld c,(hl)		;65c4
	ld c,a			;65c5
	ld c,(hl)		;65c6
	ld c,a			;65c7
	ld (de),a		;65c8
	add hl,de		;65c9
	ld c,(hl)		;65ca
	ld c,a			;65cb
	adc a,a			;65cc
	sub b			;65cd
	adc a,h			;65ce
	adc a,c			;65cf
	ld a,(de)		;65d0
	rla			;65d1
	ld (de),a		;65d2
	inc e			;65d3
	rla			;65d4
	ld (de),a		;65d5
	add hl,de		;65d6
	ld c,(hl)		;65d7
	ld (de),a		;65d8
	ld d,05ah		;65d9
	ld e,e			;65db
	ld d,05bh		;65dc
	ld e,03ah		;65de
	dec e			;65e0
l65e1h:
	add hl,bc		;65e1
	ld a,(bc)		;65e2
	dec bc			;65e3
	add hl,bc		;65e4
	ld a,(bc)		;65e5
	dec bc			;65e6
	ld a,(de)		;65e7
	ld a,(bc)		;65e8
	dec bc			;65e9
	ld a,(de)		;65ea
	rla			;65eb
	dec bc			;65ec
	ld a,(de)		;65ed
	rla			;65ee
	ld (de),a		;65ef
	ld c,(hl)		;65f0
	ld c,(hl)		;65f1
	inc hl			;65f2
	ld d,c			;65f3
	ld e,e			;65f4
	ld e,e			;65f5
	ld e,051h		;65f6
	ld e,e			;65f8
	ld e,e			;65f9
	ld e,052h		;65fa
	adc a,a			;65fc
	sub b			;65fd
	adc a,h			;65fe
	adc a,c			;65ff
	ld c,(hl)		;6600
	ld c,a			;6601
	ld c,(hl)		;6602
	ld c,a			;6603
	ld e,e			;6604
	ld e,d			;6605
	ld e,e			;6606
	ld e,d			;6607
	ld e,e			;6608
	ld e,d			;6609
	ld e,e			;660a
	ld e,d			;660b
	adc a,a			;660c
	sub b			;660d
	adc a,h			;660e
	adc a,c			;660f
	ld a,l			;6610
	dec c			;6611
	ld a,(bc)		;6612
	dec bc			;6613
	or e			;6614
	ld c,00bh		;6615
	ld a,(de)		;6617
	ld e,l			;6618
	rrca			;6619
	ld a,(de)		;661a
	rla			;661b
	or e			;661c
	ld e,l			;661d
	rla			;661e
	ld (de),a		;661f
	ld d,b			;6620
	ld h,l			;6621
	ld h,l			;6622
	adc a,b			;6623
	ld d,c			;6624
	ld (hl),b		;6625
	ld (hl),b		;6626
	adc a,c			;6627
	ld d,c			;6628
	ld h,l			;6629
	ld h,l			;662a
	adc a,b			;662b
	ld d,d			;662c
	ld (hl),b		;662d
	ld (hl),b		;662e
	adc a,c			;662f
	djnz l663ah		;6630
	and c			;6632
	sbc a,(hl)		;6633
	add hl,bc		;6634
	ld a,(bc)		;6635
	jr l6649h		;6636
	ld a,(bc)		;6638
	dec bc			;6639
l663ah:
	ld e,l			;663a
	and d			;663b
	dec bc			;663c
	jr nz,l65e1h		;663d
	adc a,c			;663f
	ld a,l			;6640
	ld a,d			;6641
	ld a,(hl)		;6642
	adc a,b			;6643
	ld a,a			;6644
	add a,b			;6645
	add a,c			;6646
	xor d			;6647
	ld e,h			;6648
l6649h:
	ld e,h			;6649
	djnz l6655h		;664a
	ld c,(hl)		;664c
	dec e			;664d
	add hl,bc		;664e
	ld a,(bc)		;664f
	ld a,(de)		;6650
	rla			;6651
	ld (de),a		;6652
	inc e			;6653
	rla			;6654
l6655h:
	ld (de),a		;6655
	add hl,de		;6656
	dec e			;6657
	ld (de),a		;6658
	ld d,010h		;6659
	add hl,bc		;665b
	ld d,010h		;665c
	add hl,bc		;665e
	ld a,(bc)		;665f
	djnz l666bh		;6660
	ld a,(bc)		;6662
	dec bc			;6663
	add hl,bc		;6664
	ld a,(bc)		;6665
	dec bc			;6666
	ld a,(de)		;6667
	ld a,(bc)		;6668
	dec bc			;6669
	ld a,(de)		;666a
l666bh:
	rla			;666b
	dec bc			;666c
	ld a,(de)		;666d
	rla			;666e
	and b			;666f
	ld d,c			;6670
	ld c,(hl)		;6671
	inc hl			;6672
	ccf			;6673
	ld d,c			;6674
	ld e,e			;6675
	ld e,03ah		;6676
	ld d,d			;6678
	ld e,e			;6679
	ld e,03ah		;667a
	adc a,a			;667c
	sub b			;667d
	adc a,h			;667e
	adc a,c			;667f
	nop			;6680
	nop			;6681
	nop			;6682
	nop			;6683
	nop			;6684
	nop			;6685
	nop			;6686
	nop			;6687
	nop			;6688
	nop			;6689
	nop			;668a
	nop			;668b
	nop			;668c
	or a			;668d
	cp b			;668e
	ld a,(bc)		;668f
	nop			;6690
	nop			;6691
	nop			;6692
	nop			;6693
	nop			;6694
	nop			;6695
	nop			;6696
	nop			;6697
	cp c			;6698
	cp d			;6699
	cp e			;669a
	jr nz,l669eh		;669b
	ld (bc),a		;669d
l669eh:
	ld (0000fh),hl		;669e
	nop			;66a1
	push bc			;66a2
	ld b,0b7h		;66a3
	ld b,003h		;66a5
	rlca			;66a7
	ld e,007h		;66a8
	inc b			;66aa
	ex af,af'		;66ab
	rra			;66ac
	ex af,af'		;66ad
	dec b			;66ae
	add hl,bc		;66af
	ld b,0c5h		;66b0
	nop			;66b2
	nop			;66b3
	rlca			;66b4
	inc bc			;66b5
	ld b,0beh		;66b6
	ex af,af'		;66b8
	inc b			;66b9
	rlca			;66ba
	jr c,l66c6h		;66bb
	dec b			;66bd
	ex af,af'		;66be
	add hl,sp		;66bf
	nop			;66c0
	nop			;66c1
	nop			;66c2
	nop			;66c3
	nop			;66c4
	nop			;66c5
l66c6h:
	nop			;66c6
	nop			;66c7
	ld a,(0c1c2h)		;66c8
	ret nz			;66cb
	add hl,hl		;66cc
	inc a			;66cd
	ld bc,00002h		;66ce
	nop			;66d1
	nop			;66d2
	nop			;66d3
	nop			;66d4
	nop			;66d5
	nop			;66d6
	nop			;66d7
	nop			;66d8
	nop			;66d9
	nop			;66da
	nop			;66db
	inc h			;66dc
	cp a			;66dd
	cp (hl)			;66de
	nop			;66df
	or a			;66e0
	ld (de),a		;66e1
	ld bc,01102h		;66e2
	ld a,(bc)		;66e5
	rla			;66e6
	ld l,a			;66e7
	jr z,l66f5h		;66e8
	add hl,hl		;66ea
	ld (hl),b		;66eb
	rrca			;66ec
	ld b,009h		;66ed
	ld l,d			;66ef
	ld d,h			;66f0
	ld h,c			;66f1
	dec c			;66f2
	ld h,(hl)		;66f3
	ld a,l			;66f4
l66f5h:
	ld h,d			;66f5
	ld a,c			;66f6
	ld h,a			;66f7
	sub (hl)		;66f8
	ld (hl),h		;66f9
	ld a,d			;66fa
	ld l,c			;66fb
	ld a,(hl)		;66fc
	ld a,a			;66fd
	ld h,h			;66fe
	ld d,l			;66ff
	inc de			;6700
	ld h,e			;6701
	ld e,c			;6702
	ld d,e			;6703
	ld l,(hl)		;6704
	ld d,e			;6705
	ld e,d			;6706
	ld e,h			;6707
	ld l,(hl)		;6708
	ld e,a			;6709
	ld l,e			;670a
	dec h			;670b
	ld l,(hl)		;670c
	ld l,b			;670d
	ld l,l			;670e
	ld d,05bh		;670f
	rlca			;6711
	ld c,077h		;6712
	ld e,e			;6714
	ex af,af'		;6715
	inc c			;6716
	ld h,05bh		;6717
	dec d			;6719
	add hl,de		;671a
	ld a,(de)		;671b
	ld e,e			;671c
	ld e,e			;671d
	ld e,e			;671e
	dec de			;671f
	ld (hl),e		;6720
	ld a,e			;6721
	ld a,b			;6722
	ld e,b			;6723
	ld e,l			;6724
	ld h,l			;6725
	ld e,l			;6726
	ld h,l			;6727
	inc e			;6728
	add a,b			;6729
	ld a,h			;672a
	adc a,c			;672b
	daa			;672c
	ld h,b			;672d
	ld h,b			;672e
	ld e,b			;672f
	ld l,(hl)		;6730
	ld d,(hl)		;6731
	ld d,a			;6732
	adc a,d			;6733
	ld e,l			;6734
	add a,h			;6735
	ld e,b			;6736
	adc a,l			;6737
	ld e,(hl)		;6738
	ld e,(hl)		;6739
	ld e,b			;673a
	sub b			;673b
	ld e,l			;673c
	add a,h			;673d
	ld e,b			;673e
	djnz l6794h		;673f
	ld e,c			;6741
	ld h,e			;6742
	inc a			;6743
	ld e,h			;6744
	ld e,d			;6745
	ld d,e			;6746
	ld l,(hl)		;6747
	ld c,(hl)		;6748
	ld e,a			;6749
	ld l,e			;674a
	ld l,(hl)		;674b
	ccf			;674c
	ld l,b			;674d
	ld l,l			;674e
	ld l,(hl)		;674f
	ld h,(hl)		;6750
	ld (hl),054h		;6751
	ld h,c			;6753
	ld h,a			;6754
	ld l,a			;6755
	ld a,l			;6756
	ld h,d			;6757
	ld l,c			;6758
	ld (hl),b		;6759
	sub (hl)		;675a
	ld (hl),h		;675b
	ld d,l			;675c
	ld l,d			;675d
	ld a,(hl)		;675e
	ld a,a			;675f
	dec hl			;6760
	ld hl,(0b83bh)		;6761
	ld a,c			;6764
	ld b,b			;6765
	inc sp			;6766
	ld a,(0527ah)		;6767
	inc (hl)		;676a
	ld d,c			;676b
	ld h,h			;676c
	ld (0382fh),a		;676d
	adc a,d			;6770
	ld d,(hl)		;6771
	ld d,a			;6772
	ld l,(hl)		;6773
	adc a,l			;6774
	ld e,b			;6775
	add a,h			;6776
	ld e,l			;6777
	sub h			;6778
	ld e,b			;6779
	ld e,(hl)		;677a
	ld e,(hl)		;677b
	add hl,sp		;677c
	ld e,b			;677d
	add a,h			;677e
	ld e,l			;677f
	ld e,b			;6780
	ld (hl),a		;6781
	ld (hl),e		;6782
	ld a,e			;6783
	ld h,l			;6784
	ld e,l			;6785
	ld h,l			;6786
	ld e,l			;6787
	adc a,c			;6788
	ld a,h			;6789
	add a,b			;678a
	ld b,l			;678b
	ld e,b			;678c
	ld h,b			;678d
	ld h,b			;678e
	ld d,b			;678f
	ld a,b			;6790
	scf			;6791
	jr nc,$+93		;6792
l6794h:
	ld c,a			;6794
	dec (hl)		;6795
	ld sp,0435bh		;6796
	ld b,d			;6799
	ld a,05bh		;679a
	ld b,h			;679c
	ld e,e			;679d
	ld e,e			;679e
	ld e,e			;679f
	ld a,c			;67a0
	add hl,bc		;67a1
	ld a,(bc)		;67a2
	dec bc			;67a3
	ld a,h			;67a4
	ld a,(bc)		;67a5
	dec bc			;67a6
	ld a,(de)		;67a7
	ld a,h			;67a8
	dec bc			;67a9
	ld a,(de)		;67aa
	rla			;67ab
	ld a,c			;67ac
	ld a,(de)		;67ad
	rla			;67ae
	ld (de),a		;67af
	ld a,l			;67b0
	ld a,d			;67b1
	ld a,(hl)		;67b2
	adc a,b			;67b3
	add hl,bc		;67b4
	ld a,(bc)		;67b5
	dec bc			;67b6
	ld a,(de)		;67b7
	ld a,(bc)		;67b8
	dec bc			;67b9
	ld a,(de)		;67ba
	rla			;67bb
	dec bc			;67bc
	ld a,(de)		;67bd
	rla			;67be
	ld (de),a		;67bf
	nop			;67c0
	nop			;67c1
	nop			;67c2
	nop			;67c3
	nop			;67c4
	nop			;67c5
	nop			;67c6
	nop			;67c7
	nop			;67c8
	nop			;67c9
	nop			;67ca
	nop			;67cb
	nop			;67cc
	nop			;67cd
	nop			;67ce
	nop			;67cf
	ld b,b			;67d0
	ld b,e			;67d1
	inc h			;67d2
	daa			;67d3
	ld b,d			;67d4
	ccf			;67d5
	dec h			;67d6
	jr z,l681bh		;67d7
	ccf			;67d9
	jr nz,l6805h		;67da
	ld b,d			;67dc
	ccf			;67dd
	inc e			;67de
	ld hl,(03821h)		;67df
	add hl,sp		;67e2
	jr c,l67feh		;67e3
	rra			;67e5
	rra			;67e6
	rra			;67e7
	call 0cdcah		;67e8
	call 0cbcch		;67eb
	call z,031cch		;67ee
	ld l,040h		;67f1
	ld b,e			;67f3
	ld (0422fh),a		;67f4
	ccf			;67f7
	inc sp			;67f8
	jr nz,$+68		;67f9
	ccf			;67fb
	inc (hl)		;67fc
	inc e			;67fd
l67feh:
	ld b,d			;67fe
	ccf			;67ff
	inc h			;6800
	daa			;6801
	ld hl,02538h		;6802
l6805h:
	jr z,$+27		;6805
	rra			;6807
	jr nz,$+43		;6808
	call 0cccah		;680a
	ld hl,(0cbcch)		;680d
	add hl,sp		;6810
	ld (03823h),hl		;6811
	rra			;6814
	add hl,de		;6815
	rra			;6816
	add hl,de		;6817
	call 0cdcah		;6818
l681bh:
	jp z,0cbcch		;681b
	call z,039cbh		;681e
	ld (03823h),hl		;6821
	rra			;6824
	add hl,de		;6825
	rra			;6826
	add hl,de		;6827
	jp z,0cacdh		;6828
	call 0cccbh		;682b
	set 1,h			;682e
	add hl,sp		;6830
	ld hl,02e31h		;6831
	rra			;6834
	add hl,de		;6835
	ld (0ca2fh),a		;6836
	call 02033h		;6839
	set 1,h			;683c
	inc (hl)		;683e
	call z,01339h		;683f
	inc d			;6842
	jr c,l685eh		;6843
	dec hl			;6845
	dec (hl)		;6846
	add hl,de		;6847
	call 0362ch		;6848
	call 02dcch		;684b
	scf			;684e
	call z,0ca21h		;684f
	jp z,01921h		;6852
	set 1,e			;6855
	add hl,de		;6857
	call 0362ch		;6858
	call 02dcch		;685b
l685eh:
	scf			;685e
	call z,02724h		;685f
	ld hl,025cah		;6862
	jr z,l6880h		;6865
	sla b			;6867
	add hl,hl		;6869
	call 01c2ch		;686a
	ld hl,(02dcch)		;686d
	jp z,03121h		;6870
	ld l,0cbh		;6873
	add hl,de		;6875
	ld (0362fh),a		;6876
	call 02033h		;6879
	scf			;687c
	call z,01c34h		;687d
l6880h:
	inc h			;6880
	daa			;6881
	ld hl,02513h		;6882
	jr z,l68a0h		;6885
	dec hl			;6887
	jr nz,l68b3h		;6888
	call 01c2ch		;688a
	ld hl,(02dcch)		;688d
	inc d			;6890
	ld hl,02e31h		;6891
	dec (hl)		;6894
	add hl,de		;6895
	ld (0362fh),a		;6896
	call 02033h		;6899
	scf			;689c
	call z,01c34h		;689d
l68a0h:
	inc hl			;68a0
	ld (01323h),hl		;68a1
	rra			;68a4
	add hl,de		;68a5
	rra			;68a6
	dec hl			;68a7
	call 0cdcah		;68a8
	inc l			;68ab
	call z,0cccbh		;68ac
	dec l			;68af
l68b0h:
	inc d			;68b0
	inc hl			;68b1
	inc hl			;68b2
l68b3h:
	ld (01935h),hl		;68b3
	rra			;68b6
	add hl,de		;68b7
	ld (hl),0cdh		;68b8
	jp z,037cdh		;68ba
	call z,0cccbh		;68bd
	add hl,sp		;68c0
	ld (0ca23h),hl		;68c1
	rra			;68c4
	add hl,de		;68c5
	rra			;68c6
	sla b			;68c7
	jp z,02ccdh		;68c9
	inc e			;68cc
	set 1,h			;68cd
	dec l			;68cf
	jp z,03938h		;68d0
	ld (019cbh),hl		;68d3
	rra			;68d6
	add hl,de		;68d7
	ld (hl),0cdh		;68d8
	jp z,03720h		;68da
	call z,01ccbh		;68dd
	inc h			;68e0
	daa			;68e1
	ld hl,02523h		;68e2
	jr z,l6900h		;68e5
	rra			;68e7
	nop			;68e8
	or (hl)			;68e9
	call 00029h		;68ea
	add hl,hl		;68ed
	call z,0232ah		;68ee
	ld hl,02e31h		;68f1
	rra			;68f4
	add hl,de		;68f5
	ld (0332fh),a		;68f6
	jr nz,l68b0h		;68f9
	and h			;68fb
	inc (hl)		;68fc
	inc e			;68fd
	halt			;68fe
	ld a,d			;68ff
l6900h:
	add hl,sp		;6900
	ld (03823h),hl		;6901
	rra			;6904
	add hl,de		;6905
	rra			;6906
	add hl,de		;6907
	call 0cacah		;6908
	call 0cbcch		;690b
	set 1,h			;690e
	ld sp,l612eh		;6910
	ld h,b			;6913
	ld (05e2fh),a		;6914
	ld e,a			;6917
	inc sp			;6918
	jr nz,$-126		;6919
	ld a,(hl)		;691b
	inc (hl)		;691c
	inc e			;691d
	add a,b			;691e
	ld a,(hl)		;691f
	dec d			;6920
	dec d			;6921
	dec d			;6922
	dec d			;6923
	dec b			;6924
	ld b,00ah		;6925
	add hl,bc		;6927
	rlca			;6928
	ex af,af'		;6929
	inc c			;692a
	dec bc			;692b
	dec d			;692c
	jr l6940h		;692d
	ld (de),a		;692f
	dec d			;6930
	jr l6944h		;6931
	ld (de),a		;6933
	dec b			;6934
	ld b,00ah		;6935
	add hl,bc		;6937
	rlca			;6938
	ex af,af'		;6939
	inc c			;693a
	dec bc			;693b
	dec d			;693c
	dec d			;693d
	dec d			;693e
	dec d			;693f
l6940h:
	dec d			;6940
	jr l6954h		;6941
	ld (de),a		;6943
l6944h:
	dec e			;6944
	ld h,030h		;6945
	ld e,01ah		;6947
	ld d,017h		;6949
	dec de			;694b
	dec c			;694c
	ld c,00fh		;694d
	djnz l6966h		;694f
	jr l6964h		;6951
	ld (de),a		;6953
l6954h:
	inc a			;6954
	ld a,041h		;6955
	dec sp			;6957
	dec d			;6958
	jr l696ch		;6959
	ld (de),a		;695b
	inc a			;695c
	ld a,041h		;695d
	dec sp			;695f
	ld b,l			;6960
	ld b,e			;6961
	ccf			;6962
	inc a			;6963
l6964h:
	ld b,(hl)		;6964
	add hl,sp		;6965
l6966h:
	dec a			;6966
	dec sp			;6967
	ld b,a			;6968
	jr c,l69adh		;6969
	ld b,c			;696b
l696ch:
	ld b,h			;696c
	ld b,b			;696d
	ld a,(04c3eh)		;696e
	ld c,a			;6971
	ld d,e			;6972
	ld d,l			;6973
	ld c,e			;6974
	ld c,l			;6975
	ld c,c			;6976
	ld d,(hl)		;6977
	ld d,c			;6978
	ld d,d			;6979
	ld c,b			;697a
	ld d,a			;697b
	ld c,(hl)		;697c
	ld c,d			;697d
	ld d,b			;697e
	ld d,h			;697f
	ld a,041h		;6980
	dec sp			;6982
	ld a,(01118h)		;6983
	ld (de),a		;6986
	dec a			;6987
	ld h,(hl)		;6988
	ld h,a			;6989
	ld (hl),e		;698a
	ld (hl),e		;698b
	ld (hl),l		;698c
	ld a,e			;698d
	ld (hl),c		;698e
	ld (hl),c		;698f
	ld a,(03a3ah)		;6990
	ld a,(03d3dh)		;6993
	dec a			;6996
	dec a			;6997
	ld l,l			;6998
	ld l,h			;6999
	ld h,(hl)		;699a
	ld h,a			;699b
	sub (hl)		;699c
	sbc a,b			;699d
	ld (hl),l		;699e
	ld a,e			;699f
	ld a,(03a3ah)		;69a0
	ld a,(03d3dh)		;69a3
	dec a			;69a6
	dec a			;69a7
	sub h			;69a8
	ld a,e			;69a9
	ld (hl),c		;69aa
	ld (hl),c		;69ab
	ld l,(hl)		;69ac
l69adh:
	ld h,h			;69ad
	ld a,h			;69ae
	ld a,h			;69af
	ld a,(03a3ah)		;69b0
	ld a,(03d3dh)		;69b3
	dec a			;69b6
	dec a			;69b7
	ld l,l			;69b8
	ld l,h			;69b9
	sub d			;69ba
	sub l			;69bb
	sub (hl)		;69bc
	sbc a,b			;69bd
	sub b			;69be
	sub c			;69bf
	ld b,a			;69c0
	ld c,b			;69c1
	ld c,c			;69c2
	ld c,d			;69c3
	ld c,e			;69c4
	ld c,h			;69c5
	ld c,l			;69c6
	ld c,h			;69c7
	ld c,(hl)		;69c8
	ld c,a			;69c9
	ld d,d			;69ca
	jp z,050cch		;69cb
	ld d,c			;69ce
	srl d			;69cf
	ld a,(02a1ch)		;69d1
	dec a			;69d4
	dec a			;69d5
	jr nz,$+43		;69d6
	ld (hl),e		;69d8
	ld (hl),e		;69d9
	dec h			;69da
	jr z,$+115		;69db
	ld (hl),c		;69dd
	inc h			;69de
	daa			;69df
	inc e			;69e0
	ld b,l			;69e1
	ld b,(hl)		;69e2
	dec l			;69e3
	jr nz,l6a2ah		;69e4
	ld b,a			;69e6
	inc l			;69e7
	rra			;69e8
	add hl,de		;69e9
	add hl,de		;69ea
	ld b,l			;69eb
	add hl,sp		;69ec
	ld (04423h),hl		;69ed
	scf			;69f0
	ld b,(hl)		;69f1
	ld b,l			;69f2
	inc e			;69f3
	ld (hl),047h		;69f4
	ld b,h			;69f6
	jr nz,$+71		;69f7
	add hl,de		;69f9
	rra			;69fa
	add hl,de		;69fb
	ld b,h			;69fc
	jr c,$+59		;69fd
	ld (01c34h),hl		;69ff
	ld a,(0333ah)		;6a02
	jr nz,l6a44h		;6a05
	dec a			;6a07
	ld (0922fh),a		;6a08
	sub l			;6a0b
	ld sp,0922eh		;6a0c
	sub l			;6a0f
	ld (hl),c		;6a10
	ld (hl),c		;6a11
	inc e			;6a12
	ld hl,(l7c7ch)		;6a13
	jr nz,l6a41h		;6a16
	dec h			;6a18
	jr z,l6a34h		;6a19
	rra			;6a1b
	inc h			;6a1c
	daa			;6a1d
	ld hl,04638h		;6a1e
	ld b,l			;6a21
	ld b,(hl)		;6a22
	dec l			;6a23
	ld b,a			;6a24
	ld b,h			;6a25
	ld b,a			;6a26
	inc l			;6a27
	add hl,de		;6a28
	rra			;6a29
l6a2ah:
	add hl,de		;6a2a
	dec hl			;6a2b
	add hl,sp		;6a2c
	ld (01323h),hl		;6a2d
	scf			;6a30
	ld b,(hl)		;6a31
	ld b,l			;6a32
	inc e			;6a33
l6a34h:
	ld (hl),047h		;6a34
	ld b,h			;6a36
	jr nz,$+55		;6a37
	add hl,de		;6a39
	rra			;6a3a
	add hl,de		;6a3b
	inc d			;6a3c
	jr c,l6a78h		;6a3d
	inc hl			;6a3f
	inc (hl)		;6a40
l6a41h:
	inc e			;6a41
	sub d			;6a42
	sub l			;6a43
l6a44h:
	inc sp			;6a44
	jr nz,$-110		;6a45
	sub c			;6a47
	rra			;6a48
	add hl,de		;6a49
	ld (0222fh),a		;6a4a
	ld hl,02e31h		;6a4d
	ccf			;6a50
	ld b,d			;6a51
	inc e			;6a52
	ld hl,(0423fh)		;6a53
	jr nz,l6a81h		;6a56
	ccf			;6a58
	ld b,d			;6a59
	dec h			;6a5a
	jr z,l6a9dh		;6a5b
	ld b,e			;6a5d
	inc h			;6a5e
	daa			;6a5f
	ld b,(hl)		;6a60
	ld b,l			;6a61
	ld b,(hl)		;6a62
	ld b,(hl)		;6a63
	ld b,a			;6a64
	ld b,h			;6a65
	ld b,a			;6a66
	ld b,a			;6a67
	add hl,de		;6a68
	rra			;6a69
	rra			;6a6a
	rra			;6a6b
	ld hl,03938h		;6a6c
	jr c,l6a8dh		;6a6f
	ld hl,(04546h)		;6a71
	jr nz,$+43		;6a74
	ld b,a			;6a76
	ld b,h			;6a77
l6a78h:
	dec h			;6a78
	jr z,l6a94h		;6a79
	rra			;6a7b
	inc h			;6a7c
	daa			;6a7d
	ld hl,04638h		;6a7e
l6a81h:
	ld b,l			;6a81
	ld b,l			;6a82
	ld b,(hl)		;6a83
	ld b,a			;6a84
	ld b,h			;6a85
	ld b,h			;6a86
	ld b,a			;6a87
	rra			;6a88
	add hl,de		;6a89
	rra			;6a8a
	add hl,de		;6a8b
	add hl,sp		;6a8c
l6a8dh:
	ld (03823h),hl		;6a8d
	ld b,l			;6a90
	ld b,(hl)		;6a91
	inc (hl)		;6a92
	inc e			;6a93
l6a94h:
	ld b,h			;6a94
	ld b,a			;6a95
	inc sp			;6a96
	jr nz,$+33		;6a97
	add hl,de		;6a99
	ld (0392fh),a		;6a9a
l6a9dh:
	ld hl,02e31h		;6a9d
	ld b,(hl)		;6aa0
	dec l			;6aa1
	scf			;6aa2
	ld b,(hl)		;6aa3
	ld b,a			;6aa4
	inc l			;6aa5
	ld (hl),047h		;6aa6
	add hl,de		;6aa8
	dec hl			;6aa9
	dec (hl)		;6aaa
	add hl,de		;6aab
	add hl,sp		;6aac
	inc de			;6aad
	inc d			;6aae
	jr c,l6ae8h		;6aaf
	ld b,(hl)		;6ab1
	inc (hl)		;6ab2
	inc e			;6ab3
	ld (hl),047h		;6ab4
	inc sp			;6ab6
	jr nz,$+71		;6ab7
	add hl,de		;6ab9
	ld (0442fh),a		;6aba
	ld hl,02e31h		;6abd
	inc e			;6ac0
	ld hl,(02d46h)		;6ac1
	jr nz,l6aefh		;6ac4
	ld b,a			;6ac6
	inc l			;6ac7
	dec h			;6ac8
	jr z,$+27		;6ac9
	dec hl			;6acb
	inc h			;6acc
	daa			;6acd
	ld hl,03713h		;6ace
	ld b,(hl)		;6ad1
	inc (hl)		;6ad2
	inc e			;6ad3
	ld (hl),047h		;6ad4
	inc sp			;6ad6
	jr nz,$+55		;6ad7
	add hl,de		;6ad9
	ld (0142fh),a		;6ada
	ld hl,02e31h		;6add
	dec c			;6ae0
	ld c,00fh		;6ae1
	djnz l6affh		;6ae3
	ld d,017h		;6ae5
	dec de			;6ae7
l6ae8h:
	dec e			;6ae8
	ld h,030h		;6ae9
	ld e,001h		;6aeb
	ld (bc),a		;6aed
	inc bc			;6aee
l6aefh:
	inc b			;6aef
	inc a			;6af0
	ld a,041h		;6af1
	dec sp			;6af3
	ld bc,00302h		;6af4
	inc b			;6af7
	inc a			;6af8
	ld a,041h		;6af9
	dec sp			;6afb
	ld bc,00302h		;6afc
l6affh:
	inc b			;6aff
	ld b,a			;6b00
	ld c,b			;6b01
	ld c,c			;6b02
	ld c,d			;6b03
	ld c,e			;6b04
	ld c,h			;6b05
	ld c,l			;6b06
	ld c,h			;6b07
	ld c,(hl)		;6b08
	jp z,0cacdh		;6b09
	call z,0cccbh		;6b0c
	bit 5,b			;6b0f
	ld l,c			;6b11
	ld l,a			;6b12
	ld l,(hl)		;6b13
	nop			;6b14
	cp d			;6b15
	cp h			;6b16
	nop			;6b17
	nop			;6b18
	cp l			;6b19
	cp (hl)			;6b1a
	nop			;6b1b
	nop			;6b1c
	ld a,a			;6b1d
	add a,c			;6b1e
	nop			;6b1f
	ld a,l			;6b20
	ld a,b			;6b21
l6b22h:
	nop			;6b22
	nop			;6b23
	ld (hl),d		;6b24
	or a			;6b25
	or a			;6b26
	ld h,b			;6b27
	ld (hl),b		;6b28
	cp c			;6b29
	cp b			;6b2a
	ld e,a			;6b2b
	ld (hl),h		;6b2c
	ld (hl),h		;6b2d
	add a,b			;6b2e
	ld a,(hl)		;6b2f
	ld (hl),a		;6b30
	add a,d			;6b31
	ld a,l			;6b32
	ld a,b			;6b33
	ld (hl),d		;6b34
	or a			;6b35
	or a			;6b36
	ld h,b			;6b37
	ld (hl),b		;6b38
	cp c			;6b39
	cp b			;6b3a
	ld e,a			;6b3b
	ld (hl),h		;6b3c
	ld (hl),h		;6b3d
	add a,b			;6b3e
	ld a,(hl)		;6b3f
	nop			;6b40
	adc a,c			;6b41
	adc a,d			;6b42
	nop			;6b43
	sub b			;6b44
	pop bc			;6b45
	jp nz,l79a4h		;6b46
	cp e			;6b49
	cp e			;6b4a
	ld a,d			;6b4b
	ld e,h			;6b4c
	ld e,l			;6b4d
	ld h,e			;6b4e
	ld h,d			;6b4f
	nop			;6b50
	adc a,c			;6b51
	add a,(hl)		;6b52
	nop			;6b53
	sub b			;6b54
	pop bc			;6b55
	jp nz,l79a4h		;6b56
	cp e			;6b59
	cp e			;6b5a
	ld a,d			;6b5b
	ld e,h			;6b5c
	ld e,l			;6b5d
	ld h,e			;6b5e
	ld h,d			;6b5f
	nop			;6b60
	nop			;6b61
	nop			;6b62
	nop			;6b63
	sub b			;6b64
	cp a			;6b65
	ret nz			;6b66
	and h			;6b67
	ld a,c			;6b68
	cp e			;6b69
	cp e			;6b6a
	ld a,d			;6b6b
	ld e,h			;6b6c
	ld e,l			;6b6d
	ld h,e			;6b6e
	ld h,d			;6b6f
	ld (hl),h		;6b70
	ld (hl),h		;6b71
	add a,b			;6b72
	ld a,(hl)		;6b73
	ld (hl),d		;6b74
	or a			;6b75
	or a			;6b76
	ld h,b			;6b77
	ld (hl),b		;6b78
	cp c			;6b79
	cp b			;6b7a
	ld e,a			;6b7b
	ld (hl),h		;6b7c
	ld (hl),h		;6b7d
	add a,b			;6b7e
	ld a,(hl)		;6b7f
	sub (hl)		;6b80
	sbc a,b			;6b81
	ld (hl),l		;6b82
	ld a,e			;6b83
	ld l,d			;6b84
	cp l			;6b85
	cp (hl)			;6b86
	ld h,h			;6b87
	ld l,l			;6b88
	cp a			;6b89
	cp h			;6b8a
	ld h,a			;6b8b
	nop			;6b8c
	nop			;6b8d
	ld (hl),l		;6b8e
	ld a,e			;6b8f
	ld l,d			;6b90
	ld l,e			;6b91
	nop			;6b92
	nop			;6b93
	ld l,l			;6b94
	ld l,h			;6b95
	nop			;6b96
	nop			;6b97
	nop			;6b98
	nop			;6b99
	nop			;6b9a
	nop			;6b9b
	nop			;6b9c
	nop			;6b9d
	sub (hl)		;6b9e
	sub a			;6b9f
	nop			;6ba0
	add a,a			;6ba1
	adc a,l			;6ba2
	nop			;6ba3
	nop			;6ba4
	nop			;6ba5
	nop			;6ba6
	nop			;6ba7
	nop			;6ba8
	nop			;6ba9
	nop			;6baa
	nop			;6bab
	sbc a,b			;6bac
	sbc a,d			;6bad
	xor (hl)		;6bae
	xor h			;6baf
	ld l,b			;6bb0
	ld l,c			;6bb1
	ld l,a			;6bb2
	ld l,(hl)		;6bb3
	nop			;6bb4
	add a,e			;6bb5
	add a,h			;6bb6
	nop			;6bb7
	nop			;6bb8
	add a,e			;6bb9
	add a,h			;6bba
	nop			;6bbb
	xor e			;6bbc
	xor d			;6bbd
	nop			;6bbe
	nop			;6bbf
	nop			;6bc0
	nop			;6bc1
	nop			;6bc2
	nop			;6bc3
	nop			;6bc4
	nop			;6bc5
	nop			;6bc6
	nop			;6bc7
	nop			;6bc8
	nop			;6bc9
	nop			;6bca
	nop			;6bcb
	nop			;6bcc
	nop			;6bcd
	sub (hl)		;6bce
	sub a			;6bcf
	nop			;6bd0
	nop			;6bd1
	nop			;6bd2
	nop			;6bd3
	nop			;6bd4
	nop			;6bd5
	nop			;6bd6
	nop			;6bd7
	nop			;6bd8
	nop			;6bd9
	nop			;6bda
	nop			;6bdb
	sbc a,b			;6bdc
	sbc a,d			;6bdd
	xor (hl)		;6bde
	xor h			;6bdf
	nop			;6be0
	nop			;6be1
	nop			;6be2
	nop			;6be3
	nop			;6be4
	nop			;6be5
	nop			;6be6
	nop			;6be7
	nop			;6be8
	nop			;6be9
	nop			;6bea
	nop			;6beb
	xor e			;6bec
	xor d			;6bed
	nop			;6bee
	nop			;6bef
	nop			;6bf0
	nop			;6bf1
	nop			;6bf2
	nop			;6bf3
	nop			;6bf4
	nop			;6bf5
	sub l			;6bf6
	sub h			;6bf7
	nop			;6bf8
	nop			;6bf9
	sub e			;6bfa
	adc a,(hl)		;6bfb
	nop			;6bfc
	nop			;6bfd
	sub c			;6bfe
	sbc a,a			;6bff
	sbc a,c			;6c00
	sbc a,e			;6c01
	xor a			;6c02
	xor l			;6c03
	sbc a,(hl)		;6c04
	sbc a,h			;6c05
	or b			;6c06
	or d			;6c07
	sub d			;6c08
	sbc a,l			;6c09
	or c			;6c0a
	and (hl)		;6c0b
	and b			;6c0c
	adc a,a			;6c0d
	and e			;6c0e
	or h			;6c0f
	nop			;6c10
	nop			;6c11
	nop			;6c12
	nop			;6c13
	xor b			;6c14
	xor c			;6c15
	nop			;6c16
	nop			;6c17
	and d			;6c18
	and a			;6c19
	nop			;6c1a
	nop			;6c1b
	or e			;6c1c
	and l			;6c1d
	nop			;6c1e
	nop			;6c1f
	nop			;6c20
	nop			;6c21
	ld (hl),a		;6c22
	add a,d			;6c23
	ld e,d			;6c24
	ld e,e			;6c25
	ld e,e			;6c26
	ld (hl),d		;6c27
	ld e,c			;6c28
	ld e,b			;6c29
	ld (hl),b		;6c2a
	ld (hl),b		;6c2b
	sub h			;6c2c
	sub e			;6c2d
	ld (hl),h		;6c2e
	ld (hl),h		;6c2f
	ld a,l			;6c30
	ld a,b			;6c31
	ld (hl),a		;6c32
	add a,d			;6c33
	ld e,e			;6c34
	ld (hl),d		;6c35
	ld (hl),d		;6c36
	ld h,c			;6c37
	ld e,b			;6c38
	ld (hl),b		;6c39
	ld (hl),b		;6c3a
	ld e,(hl)		;6c3b
	sub e			;6c3c
	ld (hl),h		;6c3d
	ld (hl),h		;6c3e
	add a,b			;6c3f
	ld a,l			;6c40
	ld a,b			;6c41
	nop			;6c42
	nop			;6c43
	ld (hl),d		;6c44
	ld h,c			;6c45
	ld h,c			;6c46
	ld h,b			;6c47
	ld (hl),b		;6c48
	ld (hl),b		;6c49
	ld e,(hl)		;6c4a
	ld e,a			;6c4b
	ld (hl),h		;6c4c
	ld (hl),h		;6c4d
	add a,b			;6c4e
	ld a,(hl)		;6c4f
	nop			;6c50
	nop			;6c51
	nop			;6c52
	nop			;6c53
	nop			;6c54
	nop			;6c55
	add a,l			;6c56
	add a,(hl)		;6c57
	nop			;6c58
	sub b			;6c59
	and c			;6c5a
	or l			;6c5b
	nop			;6c5c
	ld a,c			;6c5d
	halt			;6c5e
	halt			;6c5f
	nop			;6c60
	nop			;6c61
	ld h,l			;6c62
	ld h,h			;6c63
	nop			;6c64
	nop			;6c65
	ld h,(hl)		;6c66
	ld h,a			;6c67
	and h			;6c68
	nop			;6c69
	nop			;6c6a
	adc a,e			;6c6b
	ld a,d			;6c6c
	nop			;6c6d
	nop			;6c6e
	add a,a			;6c6f
	ld l,b			;6c70
	ld l,c			;6c71
	ld l,a			;6c72
	ld l,(hl)		;6c73
	nop			;6c74
	adc a,e			;6c75
	adc a,h			;6c76
	nop			;6c77
	nop			;6c78
	add a,a			;6c79
	adc a,b			;6c7a
	nop			;6c7b
	nop			;6c7c
	ld a,a			;6c7d
	add a,c			;6c7e
	nop			;6c7f
	nop			;6c80
	nop			;6c81
	nop			;6c82
	nop			;6c83
	sub b			;6c84
	sub l			;6c85
	sub b			;6c86
	sub l			;6c87
	sub c			;6c88
	sub d			;6c89
	sub c			;6c8a
	sub d			;6c8b
	sub c			;6c8c
	sub d			;6c8d
	sub c			;6c8e
	sub d			;6c8f
	sub (hl)		;6c90
	sbc a,b			;6c91
	ld (hl),l		;6c92
	ld a,e			;6c93
	ld l,d			;6c94
	cp l			;6c95
	cp (hl)			;6c96
	ld h,h			;6c97
	ld l,l			;6c98
	cp a			;6c99
	cp h			;6c9a
	ld h,a			;6c9b
	ld (hl),l		;6c9c
	ld a,e			;6c9d
	ld (hl),c		;6c9e
	ld (hl),c		;6c9f
	nop			;6ca0
	add a,l			;6ca1
	add a,(hl)		;6ca2
	nop			;6ca3
	sub b			;6ca4
	and c			;6ca5
	or l			;6ca6
	and h			;6ca7
	ld a,c			;6ca8
	halt			;6ca9
	halt			;6caa
	ld a,d			;6cab
	ld e,h			;6cac
	ld e,l			;6cad
	ld h,e			;6cae
	ld h,d			;6caf
	nop			;6cb0
	adc a,c			;6cb1
	adc a,d			;6cb2
	nop			;6cb3
	sub b			;6cb4
	and c			;6cb5
	or l			;6cb6
	and h			;6cb7
	ld a,c			;6cb8
	halt			;6cb9
	halt			;6cba
	ld a,d			;6cbb
	ld e,h			;6cbc
	ld e,l			;6cbd
	ld h,e			;6cbe
	ld h,d			;6cbf
	sub (hl)		;6cc0
	sbc a,b			;6cc1
	ld (hl),l		;6cc2
	ld a,e			;6cc3
	ld l,d			;6cc4
	cp l			;6cc5
	cp (hl)			;6cc6
	ld h,h			;6cc7
	ld l,l			;6cc8
	cp a			;6cc9
	cp h			;6cca
	ld h,a			;6ccb
	sub e			;6ccc
	sbc a,d			;6ccd
	sbc a,e			;6cce
	sub h			;6ccf
	nop			;6cd0
	nop			;6cd1
	nop			;6cd2
	nop			;6cd3
	ld h,c			;6cd4
	ld h,b			;6cd5
	ld e,d			;6cd6
	ld e,e			;6cd7
	ld e,(hl)		;6cd8
	ld e,a			;6cd9
	ld e,c			;6cda
	ld e,b			;6cdb
	add a,b			;6cdc
	ld a,(hl)		;6cdd
	sub h			;6cde
	sub e			;6cdf
	nop			;6ce0
	nop			;6ce1
	nop			;6ce2
	nop			;6ce3
	nop			;6ce4
	nop			;6ce5
	nop			;6ce6
	nop			;6ce7
	nop			;6ce8
	nop			;6ce9
	ld e,d			;6cea
	ld e,e			;6ceb
	nop			;6cec
	nop			;6ced
	ld e,c			;6cee
	ld e,b			;6cef
	nop			;6cf0
	nop			;6cf1
	nop			;6cf2
	nop			;6cf3
	sub b			;6cf4
	sub l			;6cf5
	ld e,d			;6cf6
	ld e,e			;6cf7
	sub c			;6cf8
	sub d			;6cf9
	ld e,c			;6cfa
	ld e,b			;6cfb
	sub c			;6cfc
	sub d			;6cfd
	sub h			;6cfe
	sub e			;6cff
	nop			;6d00
	nop			;6d01
	nop			;6d02
	nop			;6d03
	nop			;6d04
	nop			;6d05
	nop			;6d06
	nop			;6d07
	ld (hl),d		;6d08
	ld (hl),d		;6d09
	ld h,c			;6d0a
	ld h,b			;6d0b
	ld (hl),b		;6d0c
	ld (hl),b		;6d0d
	ld e,(hl)		;6d0e
	ld e,a			;6d0f
	sub h			;6d10
	sub e			;6d11
	ld (hl),h		;6d12
	ld (hl),h		;6d13
	ld e,d			;6d14
	ld e,e			;6d15
	ld (hl),d		;6d16
	ld (hl),d		;6d17
	ld e,c			;6d18
	ld e,b			;6d19
	ld (hl),b		;6d1a
	ld (hl),b		;6d1b
	sub h			;6d1c
	sub e			;6d1d
	ld (hl),h		;6d1e
	ld (hl),h		;6d1f
	add a,b			;6d20
	ld a,(hl)		;6d21
	nop			;6d22
	nop			;6d23
	ld h,c			;6d24
	ld h,b			;6d25
	ld e,d			;6d26
	ld e,e			;6d27
	ld e,(hl)		;6d28
	ld e,a			;6d29
	ld e,c			;6d2a
	ld e,b			;6d2b
	add a,b			;6d2c
	ld a,(hl)		;6d2d
	sub h			;6d2e
	sub e			;6d2f
	sub b			;6d30
	and c			;6d31
	or l			;6d32
	and h			;6d33
	ld a,c			;6d34
	halt			;6d35
	halt			;6d36
	ld a,d			;6d37
	ld (hl),d		;6d38
	ld (hl),d		;6d39
	ld h,c			;6d3a
	ld h,b			;6d3b
	ld (hl),b		;6d3c
	ld (hl),b		;6d3d
	ld e,(hl)		;6d3e
	ld e,a			;6d3f
	ld (hl),h		;6d40
	ld (hl),h		;6d41
	add a,b			;6d42
	ld a,(hl)		;6d43
	ld (hl),d		;6d44
	ld (hl),d		;6d45
	ld h,c			;6d46
	ld h,b			;6d47
	ld (hl),b		;6d48
	ld (hl),b		;6d49
	ld e,(hl)		;6d4a
	ld e,a			;6d4b
	ld (hl),h		;6d4c
	ld (hl),h		;6d4d
	add a,b			;6d4e
	ld a,(hl)		;6d4f
	nop			;6d50
	nop			;6d51
	sub h			;6d52
	sub e			;6d53
	sub b			;6d54
	sub l			;6d55
	ld e,d			;6d56
	ld e,e			;6d57
	sub c			;6d58
	sub d			;6d59
	ld e,c			;6d5a
	ld e,b			;6d5b
	sub c			;6d5c
	sub d			;6d5d
	sub h			;6d5e
	sub e			;6d5f
	nop			;6d60
	ld e,h			;6d61
	ld e,l			;6d62
	ld h,e			;6d63
	nop			;6d64
	ld (hl),a		;6d65
	add a,d			;6d66
	ld a,l			;6d67
	ld e,d			;6d68
	ld e,e			;6d69
	ld (hl),d		;6d6a
	ld (hl),d		;6d6b
	ld e,c			;6d6c
	ld e,b			;6d6d
	ld (hl),b		;6d6e
	ld (hl),b		;6d6f
	ld (hl),a		;6d70
	add a,d			;6d71
	ld a,l			;6d72
	ld a,b			;6d73
	ld e,d			;6d74
	ld e,e			;6d75
	ld (hl),d		;6d76
	ld (hl),d		;6d77
	ld e,c			;6d78
	ld e,b			;6d79
	ld (hl),b		;6d7a
	ld (hl),b		;6d7b
	sub h			;6d7c
	sub e			;6d7d
	ld (hl),h		;6d7e
	ld (hl),h		;6d7f
	nop			;6d80
	nop			;6d81
	nop			;6d82
	nop			;6d83
	nop			;6d84
	nop			;6d85
	nop			;6d86
	nop			;6d87
	nop			;6d88
	add a,l			;6d89
	add a,(hl)		;6d8a
	nop			;6d8b
	sub b			;6d8c
	and c			;6d8d
	or l			;6d8e
	and h			;6d8f
	ld (hl),a		;6d90
	add a,d			;6d91
	ld a,l			;6d92
	ld a,b			;6d93
	ld (hl),d		;6d94
	ld (hl),d		;6d95
	ld h,c			;6d96
	ld h,b			;6d97
	ld (hl),b		;6d98
	ld (hl),b		;6d99
	ld e,(hl)		;6d9a
	ld e,a			;6d9b
	ld (hl),h		;6d9c
	ld (hl),h		;6d9d
	add a,b			;6d9e
	ld a,(hl)		;6d9f
	ld a,c			;6da0
	halt			;6da1
	halt			;6da2
	ld a,d			;6da3
	sub b			;6da4
	sub l			;6da5
	ld e,d			;6da6
	ld e,e			;6da7
	sub c			;6da8
	sub d			;6da9
	ld e,c			;6daa
	ld e,b			;6dab
	sub c			;6dac
	sub d			;6dad
	sub h			;6dae
	sub e			;6daf
	sub (hl)		;6db0
	sbc a,b			;6db1
	ld (hl),l		;6db2
	ld a,e			;6db3
	ld l,d			;6db4
	ld l,e			;6db5
	ld h,l			;6db6
	ld h,h			;6db7
	ld l,l			;6db8
	ld l,h			;6db9
	ld h,(hl)		;6dba
	ld h,a			;6dbb
	nop			;6dbc
	nop			;6dbd
	ld (hl),l		;6dbe
	ld a,e			;6dbf
	ld (hl),l		;6dc0
	ld a,e			;6dc1
	ld (hl),c		;6dc2
	ld (hl),c		;6dc3
	ld h,l			;6dc4
	ld h,h			;6dc5
	ld a,h			;6dc6
	ld a,h			;6dc7
	ld h,(hl)		;6dc8
	ld h,a			;6dc9
	ld (hl),e		;6dca
	ld (hl),e		;6dcb
	nop			;6dcc
	nop			;6dcd
	nop			;6dce
	nop			;6dcf
	sub (hl)		;6dd0
	sbc a,b			;6dd1
	ld (hl),l		;6dd2
	ld a,e			;6dd3
	ld l,d			;6dd4
	ld l,e			;6dd5
	ld h,l			;6dd6
	ld h,h			;6dd7
	ld l,l			;6dd8
	ld l,h			;6dd9
	ld h,(hl)		;6dda
	ld h,a			;6ddb
	nop			;6ddc
	nop			;6ddd
	nop			;6dde
	nop			;6ddf
	ld (hl),c		;6de0
	ld (hl),c		;6de1
	sub (hl)		;6de2
	sbc a,b			;6de3
	ld a,h			;6de4
	ld a,h			;6de5
	ld l,d			;6de6
	ld l,e			;6de7
	ld (hl),e		;6de8
	ld (hl),e		;6de9
	ld l,l			;6dea
	ld l,h			;6deb
	nop			;6dec
	nop			;6ded
	nop			;6dee
	nop			;6def
	ld (hl),l		;6df0
	ld a,e			;6df1
	ld (hl),c		;6df2
	ld (hl),c		;6df3
	ld h,l			;6df4
	ld h,h			;6df5
	ld a,h			;6df6
	ld a,h			;6df7
	ld h,(hl)		;6df8
	ld h,a			;6df9
	ld (hl),e		;6dfa
	ld (hl),e		;6dfb
	nop			;6dfc
	adc a,e			;6dfd
	adc a,h			;6dfe
	nop			;6dff
	sbc a,e			;6e00
	sub h			;6e01
	ld (hl),l		;6e02
	ld a,e			;6e03
	ld l,a			;6e04
	ld l,(hl)		;6e05
	ld h,l			;6e06
	ld h,h			;6e07
	nop			;6e08
	nop			;6e09
	ld h,(hl)		;6e0a
	ld h,a			;6e0b
	nop			;6e0c
	nop			;6e0d
	ld (hl),l		;6e0e
	ld a,e			;6e0f
	ld (hl),l		;6e10
	ld a,e			;6e11
	ld (hl),c		;6e12
	ld (hl),c		;6e13
	ld h,l			;6e14
	ld h,h			;6e15
	ld a,h			;6e16
	ld a,h			;6e17
	ld h,(hl)		;6e18
	ld h,a			;6e19
	ld (hl),e		;6e1a
	ld (hl),e		;6e1b
	ld (hl),l		;6e1c
	ld a,e			;6e1d
	ld (hl),c		;6e1e
	ld (hl),c		;6e1f
	sub (hl)		;6e20
	sbc a,b			;6e21
	ld (hl),l		;6e22
	ld a,e			;6e23
	ld l,d			;6e24
	ld l,e			;6e25
	ld h,l			;6e26
	ld h,h			;6e27
	ld l,l			;6e28
	ld l,h			;6e29
	ld h,(hl)		;6e2a
	ld h,a			;6e2b
	sub (hl)		;6e2c
	sbc a,b			;6e2d
	nop			;6e2e
	nop			;6e2f
	sub (hl)		;6e30
	sbc a,b			;6e31
	sub e			;6e32
	sbc a,d			;6e33
	ld l,d			;6e34
	ld l,e			;6e35
	ld l,b			;6e36
	ld l,c			;6e37
	ld l,l			;6e38
	ld l,h			;6e39
	nop			;6e3a
	nop			;6e3b
	nop			;6e3c
	nop			;6e3d
	nop			;6e3e
	nop			;6e3f
	ld (hl),c		;6e40
	ld (hl),c		;6e41
	sub (hl)		;6e42
	sbc a,b			;6e43
	ld a,h			;6e44
	ld a,h			;6e45
	ld l,d			;6e46
	ld l,e			;6e47
	ld (hl),e		;6e48
	ld (hl),e		;6e49
	ld l,l			;6e4a
	ld l,h			;6e4b
	ld (hl),c		;6e4c
	ld (hl),c		;6e4d
	sub (hl)		;6e4e
	sbc a,b			;6e4f
	ld h,l			;6e50
	ld h,h			;6e51
	ld a,h			;6e52
	ld a,h			;6e53
	ld h,(hl)		;6e54
	ld h,a			;6e55
	ld (hl),e		;6e56
	ld (hl),e		;6e57
	nop			;6e58
	add a,a			;6e59
	adc a,b			;6e5a
	nop			;6e5b
	nop			;6e5c
	ld a,a			;6e5d
	add a,c			;6e5e
	nop			;6e5f
	sub (hl)		;6e60
	sbc a,b			;6e61
	sub d			;6e62
	sub l			;6e63
	ld l,d			;6e64
	ld l,e			;6e65
	sub d			;6e66
	sub l			;6e67
	ld l,l			;6e68
	ld l,h			;6e69
	sub b			;6e6a
	sub c			;6e6b
	sub (hl)		;6e6c
	sbc a,b			;6e6d
	nop			;6e6e
	nop			;6e6f
	ld (hl),l		;6e70
	ld a,e			;6e71
	ld (hl),c		;6e72
	ld (hl),c		;6e73
	ld h,l			;6e74
	ld h,h			;6e75
	ld a,h			;6e76
	ld a,h			;6e77
	ld h,(hl)		;6e78
	ld h,a			;6e79
	ld (hl),e		;6e7a
	ld (hl),e		;6e7b
	sub e			;6e7c
	sbc a,d			;6e7d
	sbc a,e			;6e7e
	sub h			;6e7f
	sub (hl)		;6e80
	sbc a,b			;6e81
	ld (hl),l		;6e82
	ld a,e			;6e83
	ld l,d			;6e84
	ld l,e			;6e85
	ld h,l			;6e86
	ld h,h			;6e87
	ld l,l			;6e88
	ld l,h			;6e89
	ld h,(hl)		;6e8a
	ld h,a			;6e8b
	sub (hl)		;6e8c
	sbc a,b			;6e8d
	ld (hl),l		;6e8e
	ld a,e			;6e8f
	ld h,l			;6e90
	ld h,h			;6e91
	ld a,h			;6e92
	ld a,h			;6e93
	ld h,(hl)		;6e94
	ld h,a			;6e95
	ld (hl),e		;6e96
	ld (hl),e		;6e97
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
	ld h,l			;6ea2
	ld h,h			;6ea3
	nop			;6ea4
	nop			;6ea5
	ld h,(hl)		;6ea6
	ld h,a			;6ea7
	nop			;6ea8
	nop			;6ea9
	nop			;6eaa
	nop			;6eab
	xor e			;6eac
	xor d			;6ead
	nop			;6eae
	nop			;6eaf
	ld (hl),c		;6eb0
	ld (hl),c		;6eb1
	sub (hl)		;6eb2
	ld (hl),c		;6eb3
	ld a,h			;6eb4
	ld a,h			;6eb5
	ld l,d			;6eb6
	ld a,h			;6eb7
	ld (hl),e		;6eb8
	ld (hl),e		;6eb9
	ld (hl),e		;6eba
	ld (hl),e		;6ebb
	ld (hl),c		;6ebc
	ld (hl),c		;6ebd
	sub (hl)		;6ebe
	sbc a,b			;6ebf
	ld h,l			;6ec0
	ld h,h			;6ec1
	ld a,h			;6ec2
	ld a,h			;6ec3
	ld h,(hl)		;6ec4
	ld h,a			;6ec5
	ld (hl),e		;6ec6
	ld (hl),e		;6ec7
	sub e			;6ec8
	sbc a,d			;6ec9
	sbc a,e			;6eca
	sub h			;6ecb
	ld l,b			;6ecc
	ld l,c			;6ecd
	ld l,a			;6ece
	ld l,(hl)		;6ecf
	ld l,d			;6ed0
	ld l,e			;6ed1
	nop			;6ed2
	nop			;6ed3
	ld l,l			;6ed4
	ld l,h			;6ed5
	nop			;6ed6
	nop			;6ed7
	nop			;6ed8
	nop			;6ed9
	nop			;6eda
	nop			;6edb
	nop			;6edc
	nop			;6edd
	nop			;6ede
	nop			;6edf
	nop			;6ee0
	nop			;6ee1
	ld h,l			;6ee2
	ld h,h			;6ee3
	nop			;6ee4
	nop			;6ee5
	ld h,(hl)		;6ee6
	ld h,a			;6ee7
	nop			;6ee8
	nop			;6ee9
	nop			;6eea
	nop			;6eeb
	nop			;6eec
	nop			;6eed
	nop			;6eee
	nop			;6eef
	ld a,h			;6ef0
	ld a,h			;6ef1
	ld l,d			;6ef2
	ld l,e			;6ef3
	ld (hl),e		;6ef4
	ld (hl),e		;6ef5
	ld l,l			;6ef6
	ld l,h			;6ef7
	nop			;6ef8
	nop			;6ef9
	nop			;6efa
	nop			;6efb
	nop			;6efc
	nop			;6efd
	nop			;6efe
	nop			;6eff
	sub (hl)		;6f00
	sbc a,b			;6f01
	sub e			;6f02
	sbc a,d			;6f03
	ld l,d			;6f04
	ld l,e			;6f05
	ld l,b			;6f06
	ld l,c			;6f07
	ld l,l			;6f08
	ld l,h			;6f09
	nop			;6f0a
	nop			;6f0b
	sub (hl)		;6f0c
	sbc a,b			;6f0d
	nop			;6f0e
	nop			;6f0f
	sbc a,e			;6f10
	sub h			;6f11
	ld (hl),l		;6f12
	ld a,e			;6f13
	ld l,a			;6f14
	ld l,(hl)		;6f15
	ld h,l			;6f16
	ld h,h			;6f17
	nop			;6f18
	nop			;6f19
	ld h,(hl)		;6f1a
	ld h,a			;6f1b
	nop			;6f1c
	nop			;6f1d
	nop			;6f1e
	nop			;6f1f
	ld h,d			;6f20
	nop			;6f21
	nop			;6f22
	nop			;6f23
	ld a,b			;6f24
	nop			;6f25
	nop			;6f26
	nop			;6f27
	ld h,c			;6f28
	ld h,b			;6f29
	nop			;6f2a
	nop			;6f2b
	ld e,(hl)		;6f2c
	ld e,a			;6f2d
	nop			;6f2e
	nop			;6f2f
	ld a,(03a3ah)		;6f30
	ld a,(03d3dh)		;6f33
	dec a			;6f36
	dec a			;6f37
	sub (hl)		;6f38
	sub e			;6f39
	sbc a,d			;6f3a
	sbc a,e			;6f3b
	ld l,d			;6f3c
	ld l,b			;6f3d
	ld l,c			;6f3e
	ld l,a			;6f3f
	ld a,(03a3ah)		;6f40
	ld a,(03d3dh)		;6f43
	dec a			;6f46
	dec a			;6f47
	sub (hl)		;6f48
	sub e			;6f49
	sbc a,d			;6f4a
	sbc a,e			;6f4b
	ld l,d			;6f4c
	ld l,b			;6f4d
	ld l,c			;6f4e
	ld l,a			;6f4f
	ld b,008h		;6f50
	rrca			;6f52
	dec c			;6f53
	dec a			;6f54
	dec bc			;6f55
	ld (de),a		;6f56
	dec a			;6f57
	sub h			;6f58
	and b			;6f59
	and (hl)		;6f5a
	nop			;6f5b
	ld l,(hl)		;6f5c
	nop			;6f5d
	nop			;6f5e
	nop			;6f5f
	ld a,(03a3ah)		;6f60
	ld a,(03d3dh)		;6f63
	dec a			;6f66
	dec a			;6f67
	nop			;6f68
	nop			;6f69
	nop			;6f6a
	nop			;6f6b
	nop			;6f6c
	nop			;6f6d
	nop			;6f6e
	nop			;6f6f
	ld h,(hl)		;6f70
	ld h,a			;6f71
	ld (hl),e		;6f72
	ld (hl),e		;6f73
	nop			;6f74
	sub e			;6f75
	sbc a,d			;6f76
	sbc a,e			;6f77
	nop			;6f78
	ld l,b			;6f79
	ld l,c			;6f7a
	ld l,a			;6f7b
	nop			;6f7c
	nop			;6f7d
	adc a,e			;6f7e
	adc a,h			;6f7f
	ld l,l			;6f80
	ld l,h			;6f81
	nop			;6f82
	nop			;6f83
	sub h			;6f84
	nop			;6f85
	nop			;6f86
	nop			;6f87
	ld l,(hl)		;6f88
	nop			;6f89
	nop			;6f8a
	nop			;6f8b
	nop			;6f8c
	nop			;6f8d
	nop			;6f8e
	nop			;6f8f
	ld l,l			;6f90
	ld l,h			;6f91
	nop			;6f92
	nop			;6f93
	sub h			;6f94
	nop			;6f95
	nop			;6f96
	nop			;6f97
	ld l,(hl)		;6f98
	nop			;6f99
	add a,e			;6f9a
	add a,h			;6f9b
	nop			;6f9c
	nop			;6f9d
	nop			;6f9e
	add a,l			;6f9f
	ld h,(hl)		;6fa0
	ld h,a			;6fa1
	ld (hl),e		;6fa2
	ld (hl),e		;6fa3
	nop			;6fa4
	sub e			;6fa5
	sbc a,d			;6fa6
	sbc a,e			;6fa7
	nop			;6fa8
	ld l,b			;6fa9
	ld l,c			;6faa
	ld l,a			;6fab
	add a,(hl)		;6fac
	add a,a			;6fad
	adc a,b			;6fae
	adc a,c			;6faf
	ld l,l			;6fb0
	ld l,h			;6fb1
	nop			;6fb2
	nop			;6fb3
	sub h			;6fb4
	nop			;6fb5
	nop			;6fb6
	nop			;6fb7
	ld l,(hl)		;6fb8
	nop			;6fb9
	nop			;6fba
	nop			;6fbb
	and d			;6fbc
	and e			;6fbd
	and h			;6fbe
	rlca			;6fbf
	nop			;6fc0
	nop			;6fc1
	nop			;6fc2
	nop			;6fc3
	nop			;6fc4
	and c			;6fc5
	and a			;6fc6
	nop			;6fc7
	and l			;6fc8
	ld a,(bc)		;6fc9
	ld de,005abh		;6fca
	add hl,bc		;6fcd
	djnz l6fdch		;6fce
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
l6fdch:
	ld c,0aah		;6fdc
	xor c			;6fde
	xor b			;6fdf
	nop			;6fe0
	nop			;6fe1
	add a,a			;6fe2
	adc a,b			;6fe3
	nop			;6fe4
	nop			;6fe5
	adc a,e			;6fe6
	adc a,h			;6fe7
	nop			;6fe8
	nop			;6fe9
	add a,a			;6fea
	adc a,b			;6feb
	nop			;6fec
	nop			;6fed
	ld a,a			;6fee
	add a,c			;6fef
	nop			;6ff0
	nop			;6ff1
	add a,a			;6ff2
	adc a,b			;6ff3
	nop			;6ff4
	nop			;6ff5
	adc a,e			;6ff6
	adc a,h			;6ff7
	nop			;6ff8
	nop			;6ff9
	add a,a			;6ffa
	adc a,l			;6ffb
	nop			;6ffc
	nop			;6ffd
	nop			;6ffe
	nop			;6fff
	sbc a,a			;7000
	ret			;7001
	call nz,000c7h		;7002
	and l			;7005
	and (hl)		;7006
	nop			;7007
	nop			;7008
	nop			;7009
	nop			;700a
	nop			;700b
	nop			;700c
	nop			;700d
	nop			;700e
	xor b			;700f
	inc b			;7010
	ld e,006h		;7011
	xor a			;7013
	and d			;7014
	rra			;7015
	rlca			;7016
	ld (bc),a		;7017
	and e			;7018
	daa			;7019
	ld a,(bc)		;701a
	ex af,af'		;701b
	inc de			;701c
	ld c,00bh		;701d
	add hl,bc		;701f
	dec e			;7020
	add hl,de		;7021
	ld b,h			;7022
	ld c,b			;7023
	ld d,018h		;7024
	ld b,e			;7026
	ld b,c			;7027
	add hl,hl		;7028
	ld bc,0542ch		;7029
	ld hl,(0b8b0h)		;702c
	ld d,l			;702f
	or a			;7030
	ld sp,02f49h		;7031
	dec l			;7034
	ld (0a74ah),a		;7035
	inc sp			;7038
	dec (hl)		;7039
	ld d,d			;703a
	and h			;703b
	inc (hl)		;703c
	ld (hl),039h		;703d
	ld a,000h		;703f
	nop			;7041
	adc a,c			;7042
	adc a,d			;7043
	nop			;7044
	nop			;7045
	add a,a			;7046
	adc a,b			;7047
	nop			;7048
	nop			;7049
	ld a,a			;704a
	add a,c			;704b
	nop			;704c
	ld e,h			;704d
	ld e,l			;704e
	ld h,e			;704f
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
	ld h,d			;705c
	nop			;705d
	nop			;705e
	nop			;705f
	nop			;7060
	nop			;7061
	add a,l			;7062
	add a,(hl)		;7063
	nop			;7064
	nop			;7065
	add a,a			;7066
	adc a,b			;7067
	nop			;7068
	nop			;7069
	ld a,a			;706a
	add a,c			;706b
	nop			;706c
	ld e,h			;706d
	ld e,l			;706e
	ld h,e			;706f
	nop			;7070
	nop			;7071
	nop			;7072
	nop			;7073
	nop			;7074
	nop			;7075
	nop			;7076
	nop			;7077
	nop			;7078
	nop			;7079
	and c			;707a
	ret z			;707b
	ld h,d			;707c
	and b			;707d
	cp l			;707e
	cp (hl)			;707f
	nop			;7080
	nop			;7081
	xor e			;7082
	call 0a9aah		;7083
	set 1,d			;7086
	call z,0c5c0h		;7088
	jp nz,0c3c1h		;708b
	add a,0bfh		;708e
	ld a,(de)		;7090
	xor h			;7091
	inc c			;7092
	or d			;7093
	dec h			;7094
	ld h,005h		;7095
	rrca			;7097
	inc d			;7098
	dec c			;7099
	jr z,l70bdh		;709a
	xor (hl)		;709c
	ld (de),a		;709d
	inc bc			;709e
	djnz l70b2h		;709f
	or c			;70a1
	cp c			;70a2
	inc a			;70a3
	dec d			;70a4
	dec hl			;70a5
	ld d,(hl)		;70a6
	ld b,b			;70a7
	dec de			;70a8
	ld (0464dh),hl		;70a9
	cp h			;70ac
	inc hl			;70ad
	ld c,(hl)		;70ae
	cp h			;70af
	cp d			;70b0
	scf			;70b1
l70b2h:
	or h			;70b2
	ld b,l			;70b3
	ld a,(05130h)		;70b4
	ld d,b			;70b7
	ld c,h			;70b8
	ld d,e			;70b9
	jr c,l70fbh		;70ba
	dec sp			;70bc
l70bdh:
	ld l,03dh		;70bd
	or (hl)			;70bf
	nop			;70c0
	ld (hl),a		;70c1
	add a,d			;70c2
	ld a,l			;70c3
	ld e,d			;70c4
	ld e,e			;70c5
	ld (hl),d		;70c6
	ld (hl),d		;70c7
	ld h,d			;70c8
	ld e,b			;70c9
	ld (hl),b		;70ca
	ld (hl),b		;70cb
	ld a,b			;70cc
	sub e			;70cd
	ld (hl),h		;70ce
	ld (hl),h		;70cf
	ld a,b			;70d0
	nop			;70d1
	nop			;70d2
	nop			;70d3
	ld h,c			;70d4
	ld h,b			;70d5
	nop			;70d6
	nop			;70d7
	ld e,(hl)		;70d8
	ld e,h			;70d9
	ld e,l			;70da
	ld h,e			;70db
	add a,b			;70dc
	ld (hl),a		;70dd
	add a,d			;70de
	ld a,l			;70df
	ld a,b			;70e0
	sbc a,e			;70e1
	cp a			;70e2
	sbc a,l			;70e3
	ld h,c			;70e4
	sbc a,d			;70e5
	ret nz			;70e6
	sbc a,(hl)		;70e7
	ld e,(hl)		;70e8
	sbc a,a			;70e9
	call nz,080c6h		;70ea
	set 0,c			;70ed
	jp 0c799h		;70ef
	or b			;70f2
	xor a			;70f3
	sbc a,h			;70f4
	ret			;70f5
	or c			;70f6
	xor (hl)		;70f7
	call 0524fh		;70f8
l70fbh:
	push bc			;70fb
	jp nz,05150h		;70fc
	rl l			;70ff
	ld bc,0121dh		;7101
	dec c			;7104
	ld (bc),a		;7105
	ld e,013h		;7106
	cp c			;7108
	jr nz,$+37		;7109
	inc d			;710b
	call z,01b1ah		;710c
	ld (01c09h),hl		;710f
	ccf			;7112
	inc l			;7113
	ld de,02e0bh		;7114
	inc (hl)		;7117
	ld a,(bc)		;7118
	djnz $+53		;7119
	dec l			;711b
	inc bc			;711c
	inc b			;711d
	daa			;711e
	ld h,035h		;711f
	ld b,b			;7121
	inc h			;7122
	jr c,$+56		;7123
	ld b,c			;7125
	dec h			;7126
	jr nc,l7160h		;7127
	ld b,(hl)		;7129
	ld b,e			;712a
	xor l			;712b
	ld b,l			;712c
	ld a,03dh		;712d
	cp d			;712f
	cp (hl)			;7130
	cp l			;7131
	ld c,c			;7132
	ld c,d			;7133
	or (hl)			;7134
	ld c,h			;7135
	ld c,l			;7136
	ld c,h			;7137
	ld c,(hl)		;7138
	ld c,a			;7139
	ld d,d			;713a
	jp z,050cch		;713b
	ld d,c			;713e
	bit 0,a			;713f
	cp b			;7141
	ex af,af'		;7142
	ld b,04bh		;7143
	or h			;7145
	rra			;7146
	jr l7197h		;7147
	ld c,a			;7149
	cp e			;714a
	rlca			;714b
	call z,0b250h		;714c
	ld hl,00f16h		;714f
	ld (01739h),a		;7152
	inc c			;7155
	cpl			;7156
	ld a,(00ec8h)		;7157
	ld sp,019c8h		;715a
	dec b			;715d
	jr z,l719ch		;715e
l7160h:
	add hl,hl		;7160
	dec hl			;7161
	or l			;7162
	ld c,d			;7163
	dec sp			;7164
	ld b,d			;7165
	or a			;7166
	ld c,h			;7167
	ld hl,(052bch)		;7168
	jp z,0b344h		;716b
	ld d,c			;716e
	srl d			;716f
	ld a,(03a3ah)		;7171
	dec a			;7174
	dec a			;7175
	dec a			;7176
	dec a			;7177
	ld l,l			;7178
	ld l,h			;7179
	sub d			;717a
	and l			;717b
	sub (hl)		;717c
	sbc a,b			;717d
	sub b			;717e
	sub c			;717f
	ld a,041h		;7180
	dec sp			;7182
	ld a,(01118h)		;7183
	ld (de),a		;7186
	dec a			;7187
	push bc			;7188
	xor b			;7189
	xor c			;718a
	ld d,(hl)		;718b
	and d			;718c
	ld a,e			;718d
	ld (hl),c		;718e
	and b			;718f
	ld a,l			;7190
	ld a,b			;7191
	ld (hl),a		;7192
	add a,d			;7193
	ld e,e			;7194
	ld (hl),d		;7195
	ld (hl),d		;7196
l7197h:
	ld h,c			;7197
	ld e,b			;7198
	ld (hl),b		;7199
	ld (hl),b		;719a
	and l			;719b
l719ch:
	inc h			;719c
	daa			;719d
	ld hl,l7d38h		;719e
	ld a,b			;71a1
	nop			;71a2
	nop			;71a3
	and d			;71a4
	ld h,c			;71a5
	ld h,c			;71a6
	and b			;71a7
	push bc			;71a8
	xor b			;71a9
	xor c			;71aa
	ld d,(hl)		;71ab
	add hl,sp		;71ac
	ld hl,02e31h		;71ad
	dec h			;71b0
	jr z,$+27		;71b1
	rra			;71b3
	jr nz,l71dfh		;71b4
	call 0cccah		;71b6
	ld hl,(0cbcch)		;71b9
	call z,0cc2ah		;71bc
	rr a			;71bf
	add hl,de		;71c1
	ld (0ca2fh),a		;71c2
	call 02033h		;71c5
	set 1,h			;71c8
	inc (hl)		;71ca
	call z,0cccbh		;71cb
	inc (hl)		;71ce
	call z,00000h		;71cf
	nop			;71d2
	nop			;71d3
	nop			;71d4
	nop			;71d5
	nop			;71d6
	nop			;71d7
	nop			;71d8
	nop			;71d9
	nop			;71da
	nop			;71db
	nop			;71dc
	nop			;71dd
	nop			;71de
l71dfh:
	nop			;71df
	ld d,a			;71e0
	nop			;71e1
	ld e,c			;71e2
	ld e,h			;71e3
	nop			;71e4
	ld e,(hl)		;71e5
	ld d,a			;71e6
	ld h,b			;71e7
	nop			;71e8
	ld h,c			;71e9
	ld h,b			;71ea
	nop			;71eb
	ld e,e			;71ec
	ld e,(hl)		;71ed
	nop			;71ee
	ld e,b			;71ef
	ld e,b			;71f0
	ld e,d			;71f1
	ld e,h			;71f2
	nop			;71f3
	ld e,a			;71f4
	ld e,l			;71f5
	ld h,c			;71f6
	ld e,d			;71f7
	ld e,(hl)		;71f8
	nop			;71f9
	ld e,c			;71fa
	nop			;71fb
	ld h,b			;71fc
	ld e,a			;71fd
	ld e,l			;71fe
	ld e,c			;71ff
	nop			;7200
	ld d,a			;7201
	ld e,d			;7202
	ld e,(hl)		;7203
	ld h,b			;7204
	ld e,l			;7205
	ld e,(hl)		;7206
	nop			;7207
	ld e,(hl)		;7208
	nop			;7209
	ld e,b			;720a
	ld e,a			;720b
	ld e,l			;720c
	ld d,a			;720d
	nop			;720e
	ld e,b			;720f
	nop			;7210
	nop			;7211
	ld e,l			;7212
	nop			;7213
	nop			;7214
	ld e,(hl)		;7215
	nop			;7216
	nop			;7217
	nop			;7218
	nop			;7219
	nop			;721a
	nop			;721b
	ld e,c			;721c
	nop			;721d
	nop			;721e
	ld h,d			;721f
	nop			;7220
	nop			;7221
	ld h,h			;7222
	nop			;7223
	ld d,a			;7224
	ld h,b			;7225
	nop			;7226
	ld e,e			;7227
	nop			;7228
	nop			;7229
	ld e,(hl)		;722a
	nop			;722b
	nop			;722c
	ld h,d			;722d
	nop			;722e
	ld h,b			;722f
	ld e,a			;7230
	nop			;7231
	nop			;7232
	ld h,b			;7233
	nop			;7234
	ld h,b			;7235
	ld d,a			;7236
	nop			;7237
	nop			;7238
	nop			;7239
	nop			;723a
	ld h,b			;723b
	nop			;723c
	ld e,a			;723d
	ld e,e			;723e
	nop			;723f
	ld h,b			;7240
	nop			;7241
	ld h,b			;7242
	nop			;7243
	nop			;7244
	nop			;7245
	nop			;7246
	ld e,(hl)		;7247
	nop			;7248
	ld h,b			;7249
	nop			;724a
	nop			;724b
	ld e,a			;724c
	nop			;724d
	ld e,h			;724e
	nop			;724f
	nop			;7250
	ld e,(hl)		;7251
	nop			;7252
	ld h,h			;7253
	ld e,c			;7254
	ld h,b			;7255
	ld e,a			;7256
	ld e,c			;7257
	ld h,b			;7258
	nop			;7259
	ld e,e			;725a
	nop			;725b
	nop			;725c
	ld e,(hl)		;725d
	nop			;725e
	nop			;725f
	nop			;7260
	nop			;7261
	nop			;7262
	ld h,d			;7263
	nop			;7264
	ld h,h			;7265
	nop			;7266
	ld h,b			;7267
	nop			;7268
	nop			;7269
	nop			;726a
	nop			;726b
	nop			;726c
	nop			;726d
	ld h,b			;726e
	nop			;726f
	ld e,a			;7270
	ld e,e			;7271
	ld h,b			;7272
	ld e,a			;7273
	ld e,b			;7274
	ld e,l			;7275
	ld e,h			;7276
	ld h,b			;7277
	ld e,e			;7278
	ld e,c			;7279
	ld h,c			;727a
	ld d,a			;727b
	ld h,b			;727c
	nop			;727d
	ld e,l			;727e
	ld e,a			;727f
	nop			;7280
	ld h,d			;7281
	nop			;7282
	nop			;7283
	nop			;7284
	nop			;7285
	nop			;7286
	ld e,l			;7287
	nop			;7288
	nop			;7289
	nop			;728a
	nop			;728b
	nop			;728c
	ld e,(hl)		;728d
	nop			;728e
	nop			;728f
	ld h,e			;7290
	ld h,b			;7291
	ld e,a			;7292
	nop			;7293
	ld e,(hl)		;7294
	ld h,e			;7295
	ld h,c			;7296
	ld e,(hl)		;7297
	ld h,b			;7298
	ld e,l			;7299
	ld e,h			;729a
	ld e,e			;729b
	ld e,e			;729c
	ld e,a			;729d
	ld e,c			;729e
	ld h,b			;729f
	ld h,b			;72a0
	ld h,d			;72a1
	nop			;72a2
	nop			;72a3
	nop			;72a4
	nop			;72a5
	nop			;72a6
	ld h,b			;72a7
	nop			;72a8
	ld h,b			;72a9
	ld e,a			;72aa
	nop			;72ab
	ld h,d			;72ac
	nop			;72ad
	nop			;72ae
	ld h,d			;72af
	nop			;72b0
	ld h,d			;72b1
	nop			;72b2
	ld h,b			;72b3
	ld h,d			;72b4
	ld h,b			;72b5
	ld h,h			;72b6
	nop			;72b7
	nop			;72b8
	nop			;72b9
	nop			;72ba
	ld h,d			;72bb
	nop			;72bc
	nop			;72bd
	ld h,b			;72be
	nop			;72bf
	ld h,d			;72c0
	nop			;72c1
	nop			;72c2
	nop			;72c3
	nop			;72c4
	nop			;72c5
	nop			;72c6
	nop			;72c7
	nop			;72c8
	nop			;72c9
	nop			;72ca
	nop			;72cb
	nop			;72cc
	nop			;72cd
	ld h,d			;72ce
	nop			;72cf
	or e			;72d0
	ld l,d			;72d1
	jr z,l72fdh		;72d2
	inc hl			;72d4
	inc h			;72d5
	dec h			;72d6
	ld h,017h		;72d7
	inc d			;72d9
	ld hl,l6b22h		;72da
	ld l,h			;72dd
	ld l,l			;72de
	ld de,02f2eh		;72df
	jr nc,l7315h		;72e2
	inc (hl)		;72e4
	dec hl			;72e5
	inc l			;72e6
	dec l			;72e7
	jr nz,l72ech		;72e8
	dec b			;72ea
	ld (de),a		;72eb
l72ech:
	dec b			;72ec
	inc b			;72ed
	ld (bc),a		;72ee
	rlca			;72ef
	or e			;72f0
	daa			;72f1
	dec (hl)		;72f2
	ld (hl),023h		;72f3
	ld (03433h),a		;72f5
	ex af,af'		;72f8
	dec b			;72f9
	ld b,003h		;72fa
	dec b			;72fc
l72fdh:
	inc bc			;72fd
	ld (bc),a		;72fe
	rlca			;72ff
	scf			;7300
	cpl			;7301
	jr nc,l7335h		;7302
	scf			;7304
	dec hl			;7305
	inc l			;7306
	dec l			;7307
	inc bc			;7308
	dec b			;7309
	rlca			;730a
	jr c,l730eh		;730b
	inc b			;730d
l730eh:
	ex af,af'		;730e
	ld (bc),a		;730f
	or e			;7310
	ld l,d			;7311
	dec (hl)		;7312
	ld (hl),023h		;7313
l7315h:
	ld (03433h),a		;7315
	ld b,008h		;7318
	ld (bc),a		;731a
	rlca			;731b
	rlca			;731c
	ld b,004h		;731d
	ld (bc),a		;731f
	scf			;7320
	cpl			;7321
	jr nc,l7355h		;7322
	scf			;7324
	dec hl			;7325
	inc l			;7326
	dec l			;7327
	dec b			;7328
	inc bc			;7329
	rlca			;732a
	jr c,$+6		;732b
	ld b,002h		;732d
	ex af,af'		;732f
	ld l,027h		;7330
	ld a,(02336h)		;7332
l7335h:
	add hl,sp		;7335
	inc sp			;7336
	inc (hl)		;7337
	jr nz,l733fh		;7338
	ld (bc),a		;733a
	ld (de),a		;733b
	rlca			;733c
	inc bc			;733d
	inc b			;733e
l733fh:
	dec b			;733f
	or e			;7340
	daa			;7341
	dec (hl)		;7342
	ld (hl),023h		;7343
	ld b,a			;7345
	ld c,b			;7346
	ld c,c			;7347
	inc hl			;7348
	ld b,h			;7349
	ld b,l			;734a
	ld b,(hl)		;734b
	rlca			;734c
	ld (hl),d		;734d
	ld (hl),e		;734e
	ld l,(hl)		;734f
	ld d,b			;7350
	ld d,c			;7351
	ld d,d			;7352
	ld d,e			;7353
	ld c,h			;7354
l7355h:
	ld a,l			;7355
	ld c,(hl)		;7356
	ld c,a			;7357
	ld c,d			;7358
	ld c,d			;7359
	ld c,d			;735a
	ld c,e			;735b
	ld b,(hl)		;735c
	ld a,d			;735d
	ld (hl),h		;735e
	ld (hl),h		;735f
	ld d,c			;7360
	ld e,c			;7361
	ld e,d			;7362
	ld e,e			;7363
	ld d,(hl)		;7364
	ld d,a			;7365
	jr z,$+90		;7366
	ld d,h			;7368
	or h			;7369
	ld d,l			;736a
	ld d,(hl)		;736b
	ld b,(hl)		;736c
	add a,e			;736d
	ld c,l			;736e
	add a,h			;736f
	ld h,c			;7370
	ld h,d			;7371
	ld h,e			;7372
	ld h,h			;7373
	ld b,b			;7374
	ld b,c			;7375
	ld e,a			;7376
	ld h,b			;7377
	ld e,h			;7378
	ld e,l			;7379
	ld d,d			;737a
	ld e,(hl)		;737b
	sub l			;737c
	adc a,d			;737d
	adc a,a			;737e
	adc a,e			;737f
	ld l,b			;7380
	ld l,c			;7381
	scf			;7382
	ld c,l			;7383
	ld h,(hl)		;7384
	ld a,067h		;7385
	jr nc,l73eeh		;7387
	scf			;7389
	ld e,l			;738a
	ld d,d			;738b
	sub h			;738c
	jr z,$+43		;738d
	ld c,(hl)		;738f
	ld bc,00503h		;7390
	rlca			;7393
	ld (bc),a		;7394
	inc bc			;7395
	inc bc			;7396
	ex af,af'		;7397
	inc bc			;7398
	ld bc,00205h		;7399
	ld (bc),a		;739c
	ld b,002h		;739d
	inc bc			;739f
	ld (bc),a		;73a0
	inc bc			;73a1
	ld (bc),a		;73a2
	ld b,004h		;73a3
	inc bc			;73a5
	ex af,af'		;73a6
	inc bc			;73a7
	ld bc,00508h		;73a8
	rlca			;73ab
	dec b			;73ac
	ld bc,00204h		;73ad
	inc bc			;73b0
	ld b,002h		;73b1
	inc b			;73b3
	ld (bc),a		;73b4
	rlca			;73b5
	inc b			;73b6
	ld bc,00204h		;73b7
	ex af,af'		;73ba
	inc b			;73bb
	ld (bc),a		;73bc
	ld b,001h		;73bd
	ld b,002h		;73bf
	dec b			;73c1
	ld bc,00304h		;73c2
	ld b,004h		;73c5
	ld (bc),a		;73c7
	ld bc,00502h		;73c8
	ld b,002h		;73cb
	inc b			;73cd
	ld (bc),a		;73ce
	inc bc			;73cf
	rlca			;73d0
	inc bc			;73d1
	ld (bc),a		;73d2
	rlca			;73d3
	inc b			;73d4
l73d5h:
	dec b			;73d5
	ex af,af'		;73d6
	inc b			;73d7
	inc b			;73d8
	ld (bc),a		;73d9
	inc bc			;73da
	ld (bc),a		;73db
	ld b,007h		;73dc
	ld b,008h		;73de
	dec b			;73e0
	ld (bc),a		;73e1
	ld b,008h		;73e2
	ld b,008h		;73e4
	inc b			;73e6
	inc bc			;73e7
	ld bc,00403h		;73e8
	ld b,004h		;73eb
	ld (bc),a		;73ed
l73eeh:
	rlca			;73ee
	ex af,af'		;73ef
	inc bc			;73f0
	ld (bc),a		;73f1
	inc b			;73f2
	ld (hl),c		;73f3
	ld bc,00504h		;73f4
	ld (hl),b		;73f7
	ld (bc),a		;73f8
	rlca			;73f9
	inc b			;73fa
	djnz l7402h		;73fb
	inc b			;73fd
	inc bc			;73fe
	ld (bc),a		;73ff
	ld (hl),h		;7400
	ld a,b			;7401
l7402h:
	ld b,h			;7402
	ld a,c			;7403
	and c			;7404
	add a,d			;7405
	halt			;7406
	ld (hl),a		;7407
	ld b,002h		;7408
	ld b,075h		;740a
	inc bc			;740c
	ld bc,0a002h		;740d
	ld a,a			;7410
	add a,b			;7411
	add a,c			;7412
	add a,d			;7413
	dec d			;7414
	ld a,(hl)		;7415
	ld (de),a		;7416
	ld d,005h		;7417
	ld a,e			;7419
	ld a,h			;741a
	ld a,l			;741b
	ld b,e			;741c
	or e			;741d
	or h			;741e
	and d			;741f
	cpl			;7420
	jr nc,l7474h		;7421
	ld e,c			;7423
	dec hl			;7424
	inc l			;7425
	adc a,b			;7426
	adc a,c			;7427
	add a,l			;7428
	ld c,l			;7429
	or e			;742a
	add a,a			;742b
	and e			;742c
	ld d,c			;742d
	jr nc,l73d5h		;742e
	add a,l			;7430
	ld e,d			;7431
	ld e,e			;7432
	sub e			;7433
	adc a,a			;7434
	sub b			;7435
	sub c			;7436
	sub d			;7437
	or l			;7438
	adc a,h			;7439
	adc a,l			;743a
	adc a,(hl)		;743b
	and (hl)		;743c
	and a			;743d
	xor b			;743e
	xor c			;743f
	ld b,004h		;7440
	dec b			;7442
	ld (bc),a		;7443
	inc bc			;7444
	ld b,004h		;7445
	rlca			;7447
	inc b			;7448
	ld b,004h		;7449
	inc bc			;744b
	inc bc			;744c
	dec b			;744d
	ld (bc),a		;744e
	inc bc			;744f
	inc b			;7450
	ld b,002h		;7451
	ld b,004h		;7453
	ex af,af'		;7455
	inc bc			;7456
	inc b			;7457
	dec b			;7458
	ld (bc),a		;7459
	dec b			;745a
	ld (bc),a		;745b
	dec b			;745c
	inc b			;745d
	inc b			;745e
	ld b,003h		;745f
	ld b,020h		;7461
	ld hl,00407h		;7463
	ld h,027h		;7466
	inc bc			;7468
	ex af,af'		;7469
	inc l			;746a
	dec l			;746b
	ld (bc),a		;746c
	dec b			;746d
	cp a			;746e
	ret nz			;746f
	ld (02423h),hl		;7470
	dec h			;7473
l7474h:
	jr z,l749fh		;7474
	ld hl,(02e2bh)		;7476
	cpl			;7479
	jr nc,l74adh		;747a
	pop bc			;747c
	jp nz,0c4c3h		;747d
	ld (bc),a		;7480
	inc bc			;7481
	dec b			;7482
	ld (bc),a		;7483
	inc bc			;7484
	ld bc,00304h		;7485
	inc bc			;7488
	ld (bc),a		;7489
	inc bc			;748a
	ld (bc),a		;748b
	inc bc			;748c
	inc b			;748d
	ld b,004h		;748e
	ld bc,00806h		;7490
	inc bc			;7493
	ld b,002h		;7494
	ld (bc),a		;7496
	inc b			;7497
	rlca			;7498
	ex af,af'		;7499
	ld (bc),a		;749a
	ld b,002h		;749b
	inc b			;749d
	dec b			;749e
l749fh:
	ld b,004h		;749f
	inc bc			;74a1
	ld (bc),a		;74a2
	ld b,001h		;74a3
	dec b			;74a5
	inc bc			;74a6
	dec b			;74a7
	ld b,003h		;74a8
	ld (bc),a		;74aa
	ld b,008h		;74ab
l74adh:
	ld (bc),a		;74ad
	inc b			;74ae
	and b			;74af
	ld (bc),a		;74b0
	dec b			;74b1
	rlca			;74b2
	inc bc			;74b3
	ld b,003h		;74b4
	ld b,004h		;74b6
	inc bc			;74b8
	inc b			;74b9
	dec b			;74ba
	ld b,0a1h		;74bb
	or b			;74bd
	or c			;74be
	and d			;74bf
	inc b			;74c0
	ld b,04ch		;74c1
	ld c,l			;74c3
	inc bc			;74c4
	inc b			;74c5
	ld b,(hl)		;74c6
	ld b,a			;74c7
	dec b			;74c8
	ex af,af'		;74c9
	ld b,b			;74ca
	ld b,c			;74cb
	and e			;74cc
	or d			;74cd
	and h			;74ce
	and l			;74cf
	ld c,(hl)		;74d0
	ld c,a			;74d1
	ld d,b			;74d2
	ld d,c			;74d3
	ld c,b			;74d4
	ld c,c			;74d5
	ld c,d			;74d6
	ld c,e			;74d7
	ld b,d			;74d8
	ld b,e			;74d9
	ld b,h			;74da
	ld b,l			;74db
	and (hl)		;74dc
	and a			;74dd
	xor b			;74de
	xor c			;74df
	inc bc			;74e0
	ld (bc),a		;74e1
	dec b			;74e2
	ld (bc),a		;74e3
	ld (bc),a		;74e4
	inc b			;74e5
	ld b,007h		;74e6
	ld bc,00503h		;74e8
	inc bc			;74eb
	ld l,e			;74ec
	ld l,h			;74ed
	ld l,l			;74ee
	ld de,00207h		;74ef
	ex af,af'		;74f2
	ld b,002h		;74f3
	ld b,003h		;74f5
	ex af,af'		;74f7
	dec b			;74f8
	rlca			;74f9
	ld (bc),a		;74fa
	inc b			;74fb
	ld b,003h		;74fc
	inc b			;74fe
	ex af,af'		;74ff
	inc b			;7500
	ld (bc),a		;7501
	ld b,010h		;7502
	dec b			;7504
	inc bc			;7505
	dec b			;7506
	ld (hl),b		;7507
	dec b			;7508
	ld (bc),a		;7509
	dec b			;750a
	ld (hl),c		;750b
	dec b			;750c
	ld (hl),d		;750d
	ld (hl),e		;750e
	ld (hl),h		;750f
	dec b			;7510
	ld b,003h		;7511
	ld (hl),l		;7513
	ld b,e			;7514
	ld (l7776h),a		;7515
	ld (hl),h		;7518
	ld a,b			;7519
	ld (hl),h		;751a
	ld a,c			;751b
	ld l,07ah		;751c
	ld (hl),h		;751e
	ld (hl),h		;751f
	inc b			;7520
	ld a,e			;7521
	ld a,h			;7522
	ld a,l			;7523
	dec d			;7524
	ld a,(hl)		;7525
	dec b			;7526
	rlca			;7527
	ld a,a			;7528
	add a,b			;7529
	add a,c			;752a
	inc a			;752b
	ld l,083h		;752c
	ld c,l			;752e
	add a,h			;752f
	add a,l			;7530
	add a,(hl)		;7531
	or b			;7532
	add a,a			;7533
	dec hl			;7534
	inc l			;7535
	adc a,b			;7536
	adc a,c			;7537
	cpl			;7538
	jr nc,l758ch		;7539
	ld e,c			;753b
	add hl,hl		;753c
	adc a,d			;753d
	ld c,(hl)		;753e
	adc a,e			;753f
	or d			;7540
	adc a,h			;7541
	adc a,l			;7542
	adc a,(hl)		;7543
	ld c,(hl)		;7544
	sub b			;7545
	sub c			;7546
	sub d			;7547
	add a,l			;7548
	ld e,d			;7549
	ld e,e			;754a
	sub e			;754b
	sub h			;754c
	jr z,l7578h		;754d
	ld c,(hl)		;754f
	rla			;7550
	inc d			;7551
	ld hl,02322h		;7552
	inc h			;7555
	dec h			;7556
	ld h,0b0h		;7557
	ld l,d			;7559
	jr z,l7585h		;755a
	nop			;755c
	nop			;755d
	nop			;755e
	nop			;755f
	jr nz,$+4		;7560
	dec b			;7562
	ld b,023h		;7563
	dec hl			;7565
	inc l			;7566
	dec l			;7567
	ld l,02fh		;7568
	jr nc,l759dh		;756a
	nop			;756c
	nop			;756d
	nop			;756e
	nop			;756f
	ld (bc),a		;7570
	inc b			;7571
	rlca			;7572
	ex af,af'		;7573
	inc hl			;7574
	add a,d			;7575
	inc sp			;7576
	inc (hl)		;7577
l7578h:
	or b			;7578
	ld l,d			;7579
	dec (hl)		;757a
	ld (hl),000h		;757b
	nop			;757d
	nop			;757e
	nop			;757f
	dec b			;7580
	inc bc			;7581
	ld b,038h		;7582
	scf			;7584
l7585h:
	dec hl			;7585
	inc l			;7586
	dec l			;7587
	scf			;7588
	cpl			;7589
	jr nc,l75bdh		;758a
l758ch:
	nop			;758c
	nop			;758d
	nop			;758e
	nop			;758f
	ld bc,00302h		;7590
	jr c,$+57		;7593
	dec hl			;7595
	inc l			;7596
	dec l			;7597
	scf			;7598
	cpl			;7599
	jr nc,l75cdh		;759a
	nop			;759c
l759dh:
	nop			;759d
	nop			;759e
	nop			;759f
	jr nz,l75a7h		;75a0
	ld (bc),a		;75a2
	inc bc			;75a3
	inc hl			;75a4
	add hl,sp		;75a5
	inc sp			;75a6
l75a7h:
	inc (hl)		;75a7
	ld l,06ah		;75a8
	dec (hl)		;75aa
	ld (hl),000h		;75ab
	nop			;75ad
	nop			;75ae
	nop			;75af
	ld (bc),a		;75b0
	ld bc,00306h		;75b1
	dec sp			;75b4
	inc a			;75b5
	dec a			;75b6
	ld a,074h		;75b7
	ld b,b			;75b9
	ld b,c			;75ba
	ld b,d			;75bb
	nop			;75bc
l75bdh:
	nop			;75bd
	nop			;75be
	nop			;75bf
	ld b,e			;75c0
	ld b,h			;75c1
	ld b,l			;75c2
	ld b,(hl)		;75c3
	inc hl			;75c4
	ld b,a			;75c5
	ld c,b			;75c6
	ld c,c			;75c7
	or b			;75c8
	ld l,d			;75c9
	dec (hl)		;75ca
	ld (hl),000h		;75cb
l75cdh:
	nop			;75cd
	nop			;75ce
	nop			;75cf
	ld c,d			;75d0
	ld c,d			;75d1
	ld c,d			;75d2
	ld c,e			;75d3
	ld c,h			;75d4
	ld c,l			;75d5
	ld c,(hl)		;75d6
	ld c,a			;75d7
	ld d,b			;75d8
	ld d,c			;75d9
	ld d,d			;75da
	ld d,e			;75db
	nop			;75dc
	nop			;75dd
	nop			;75de
	nop			;75df
	ld d,h			;75e0
	or c			;75e1
	ld d,l			;75e2
	ld d,(hl)		;75e3
	ld d,(hl)		;75e4
	ld d,a			;75e5
	jr z,l7640h		;75e6
	ld d,c			;75e8
	ld e,c			;75e9
	ld e,d			;75ea
	ld e,e			;75eb
	nop			;75ec
	nop			;75ed
	nop			;75ee
	nop			;75ef
	ld e,h			;75f0
	ld e,l			;75f1
	ld d,d			;75f2
	ld e,(hl)		;75f3
	ld b,b			;75f4
	ld b,c			;75f5
	ld e,a			;75f6
	ld h,b			;75f7
	ld h,c			;75f8
	ld h,d			;75f9
	ld h,e			;75fa
	ld h,h			;75fb
	nop			;75fc
	nop			;75fd
	nop			;75fe
	nop			;75ff
	ld h,l			;7600
	scf			;7601
	ld e,l			;7602
	ld d,d			;7603
	ld h,(hl)		;7604
	ld a,067h		;7605
	jr nc,l7671h		;7607
	ld l,c			;7609
	scf			;760a
	ld sp,00000h		;760b
	nop			;760e
	nop			;760f
	ld (hl),h		;7610
	ld b,b			;7611
	ld b,c			;7612
	ld b,d			;7613
	dec sp			;7614
	inc a			;7615
	dec a			;7616
	ld a,001h		;7617
	inc b			;7619
	ld b,004h		;761a
	ld (bc),a		;761c
	inc bc			;761d
	inc bc			;761e
	ld (bc),a		;761f
	inc b			;7620
	dec b			;7621
	inc bc			;7622
	rlca			;7623
	inc hl			;7624
	add a,d			;7625
	inc sp			;7626
	inc (hl)		;7627
	or b			;7628
	ld l,d			;7629
	dec (hl)		;762a
	ld (hl),000h		;762b
	nop			;762d
	nop			;762e
	nop			;762f
	rlca			;7630
	inc bc			;7631
	ld (bc),a		;7632
	rlca			;7633
	ld (bc),a		;7634
	inc b			;7635
	ld bc,00308h		;7636
	ld (bc),a		;7639
	ld b,002h		;763a
	ld (bc),a		;763c
	inc b			;763d
	inc bc			;763e
	inc b			;763f
l7640h:
	rst 38h			;7640
	rst 38h			;7641
	rst 38h			;7642
	rst 38h			;7643
	rst 38h			;7644
	rst 38h			;7645
	rst 38h			;7646
	rst 38h			;7647
	rst 38h			;7648
	rst 38h			;7649
	rst 38h			;764a
	rst 38h			;764b
	rst 38h			;764c
	rst 38h			;764d
	rst 38h			;764e
	rst 38h			;764f
	rst 38h			;7650
	rst 38h			;7651
	rst 38h			;7652
	rst 38h			;7653
	rst 38h			;7654
	rst 38h			;7655
	rst 38h			;7656
	rst 38h			;7657
	rst 38h			;7658
	rst 38h			;7659
	rst 38h			;765a
	rst 38h			;765b
	rst 38h			;765c
	rst 38h			;765d
	rst 38h			;765e
	rst 38h			;765f
	rst 38h			;7660
	rst 38h			;7661
	rst 38h			;7662
	rst 38h			;7663
	rst 38h			;7664
	rst 38h			;7665
	rst 38h			;7666
	rst 38h			;7667
	rst 38h			;7668
	rst 38h			;7669
	rst 38h			;766a
	rst 38h			;766b
	rst 38h			;766c
	rst 38h			;766d
	rst 38h			;766e
	rst 38h			;766f
	rst 38h			;7670
l7671h:
	rst 38h			;7671
	rst 38h			;7672
	rst 38h			;7673
	rst 38h			;7674
	rst 38h			;7675
	rst 38h			;7676
	rst 38h			;7677
	rst 38h			;7678
	rst 38h			;7679
	rst 38h			;767a
	rst 38h			;767b
	rst 38h			;767c
	rst 38h			;767d
	rst 38h			;767e
	rst 38h			;767f
	rst 38h			;7680
	rst 38h			;7681
	rst 38h			;7682
	rst 38h			;7683
	rst 38h			;7684
	rst 38h			;7685
	rst 38h			;7686
	rst 38h			;7687
	rst 38h			;7688
	rst 38h			;7689
	rst 38h			;768a
	rst 38h			;768b
	rst 38h			;768c
	rst 38h			;768d
	rst 38h			;768e
	rst 38h			;768f
	rst 38h			;7690
	rst 38h			;7691
	rst 38h			;7692
	rst 38h			;7693
	rst 38h			;7694
	rst 38h			;7695
	rst 38h			;7696
	rst 38h			;7697
	rst 38h			;7698
	rst 38h			;7699
	rst 38h			;769a
	rst 38h			;769b
	rst 38h			;769c
	rst 38h			;769d
	rst 38h			;769e
	rst 38h			;769f
	rst 38h			;76a0
	rst 38h			;76a1
	rst 38h			;76a2
	rst 38h			;76a3
	rst 38h			;76a4
	rst 38h			;76a5
	rst 38h			;76a6
	rst 38h			;76a7
	rst 38h			;76a8
	rst 38h			;76a9
	rst 38h			;76aa
	rst 38h			;76ab
	rst 38h			;76ac
	rst 38h			;76ad
	rst 38h			;76ae
	rst 38h			;76af
	rst 38h			;76b0
	rst 38h			;76b1
	rst 38h			;76b2
	rst 38h			;76b3
	rst 38h			;76b4
	rst 38h			;76b5
	rst 38h			;76b6
	rst 38h			;76b7
	rst 38h			;76b8
	rst 38h			;76b9
	rst 38h			;76ba
	rst 38h			;76bb
	rst 38h			;76bc
	rst 38h			;76bd
	rst 38h			;76be
	rst 38h			;76bf
	rst 38h			;76c0
	rst 38h			;76c1
	rst 38h			;76c2
	rst 38h			;76c3
	rst 38h			;76c4
	rst 38h			;76c5
	rst 38h			;76c6
	rst 38h			;76c7
	rst 38h			;76c8
	rst 38h			;76c9
	rst 38h			;76ca
	rst 38h			;76cb
	rst 38h			;76cc
	rst 38h			;76cd
	rst 38h			;76ce
	rst 38h			;76cf
	rst 38h			;76d0
	rst 38h			;76d1
	rst 38h			;76d2
	rst 38h			;76d3
	rst 38h			;76d4
	rst 38h			;76d5
	rst 38h			;76d6
	rst 38h			;76d7
	rst 38h			;76d8
	rst 38h			;76d9
	rst 38h			;76da
	rst 38h			;76db
	rst 38h			;76dc
	rst 38h			;76dd
	rst 38h			;76de
	rst 38h			;76df
	rst 38h			;76e0
	rst 38h			;76e1
	rst 38h			;76e2
	rst 38h			;76e3
	rst 38h			;76e4
	rst 38h			;76e5
	rst 38h			;76e6
	rst 38h			;76e7
	rst 38h			;76e8
	rst 38h			;76e9
	rst 38h			;76ea
	rst 38h			;76eb
	rst 38h			;76ec
	rst 38h			;76ed
	rst 38h			;76ee
	rst 38h			;76ef
	rst 38h			;76f0
	rst 38h			;76f1
	rst 38h			;76f2
	rst 38h			;76f3
	rst 38h			;76f4
	rst 38h			;76f5
	rst 38h			;76f6
	rst 38h			;76f7
	rst 38h			;76f8
	rst 38h			;76f9
	rst 38h			;76fa
	rst 38h			;76fb
	rst 38h			;76fc
	rst 38h			;76fd
	rst 38h			;76fe
	rst 38h			;76ff
	rst 38h			;7700
	rst 38h			;7701
	rst 38h			;7702
	rst 38h			;7703
	rst 38h			;7704
	rst 38h			;7705
	rst 38h			;7706
	rst 38h			;7707
	rst 38h			;7708
	rst 38h			;7709
	rst 38h			;770a
	rst 38h			;770b
	rst 38h			;770c
	rst 38h			;770d
	rst 38h			;770e
	rst 38h			;770f
	rst 38h			;7710
	rst 38h			;7711
	rst 38h			;7712
	rst 38h			;7713
	rst 38h			;7714
	rst 38h			;7715
	rst 38h			;7716
	rst 38h			;7717
	rst 38h			;7718
	rst 38h			;7719
	rst 38h			;771a
	rst 38h			;771b
	rst 38h			;771c
	rst 38h			;771d
	rst 38h			;771e
	rst 38h			;771f
	rst 38h			;7720
	rst 38h			;7721
	rst 38h			;7722
	rst 38h			;7723
	rst 38h			;7724
	rst 38h			;7725
	rst 38h			;7726
	rst 38h			;7727
	rst 38h			;7728
	rst 38h			;7729
	rst 38h			;772a
	rst 38h			;772b
	rst 38h			;772c
	rst 38h			;772d
	rst 38h			;772e
	rst 38h			;772f
	rst 38h			;7730
	rst 38h			;7731
	rst 38h			;7732
	rst 38h			;7733
	rst 38h			;7734
	rst 38h			;7735
	rst 38h			;7736
	rst 38h			;7737
	rst 38h			;7738
	rst 38h			;7739
	rst 38h			;773a
	rst 38h			;773b
	rst 38h			;773c
	rst 38h			;773d
	rst 38h			;773e
	rst 38h			;773f
	rst 38h			;7740
	rst 38h			;7741
	rst 38h			;7742
	rst 38h			;7743
	rst 38h			;7744
	rst 38h			;7745
	rst 38h			;7746
	rst 38h			;7747
	rst 38h			;7748
	rst 38h			;7749
	rst 38h			;774a
	rst 38h			;774b
	rst 38h			;774c
	rst 38h			;774d
	rst 38h			;774e
	rst 38h			;774f
	rst 38h			;7750
	rst 38h			;7751
	rst 38h			;7752
	rst 38h			;7753
	rst 38h			;7754
	rst 38h			;7755
	rst 38h			;7756
	rst 38h			;7757
	rst 38h			;7758
	rst 38h			;7759
	rst 38h			;775a
	rst 38h			;775b
	rst 38h			;775c
	rst 38h			;775d
	rst 38h			;775e
	rst 38h			;775f
	rst 38h			;7760
	rst 38h			;7761
	rst 38h			;7762
	rst 38h			;7763
	rst 38h			;7764
	rst 38h			;7765
	rst 38h			;7766
	rst 38h			;7767
	rst 38h			;7768
	rst 38h			;7769
	rst 38h			;776a
	rst 38h			;776b
	rst 38h			;776c
	rst 38h			;776d
	rst 38h			;776e
	rst 38h			;776f
	rst 38h			;7770
	rst 38h			;7771
	rst 38h			;7772
	rst 38h			;7773
	rst 38h			;7774
	rst 38h			;7775
l7776h:
	rst 38h			;7776
	rst 38h			;7777
	rst 38h			;7778
	rst 38h			;7779
	rst 38h			;777a
	rst 38h			;777b
	rst 38h			;777c
	rst 38h			;777d
	rst 38h			;777e
	rst 38h			;777f
	rst 38h			;7780
	rst 38h			;7781
	rst 38h			;7782
	rst 38h			;7783
	rst 38h			;7784
	rst 38h			;7785
	rst 38h			;7786
	rst 38h			;7787
	rst 38h			;7788
	rst 38h			;7789
	rst 38h			;778a
	rst 38h			;778b
	rst 38h			;778c
	rst 38h			;778d
	rst 38h			;778e
	rst 38h			;778f
	rst 38h			;7790
	rst 38h			;7791
	rst 38h			;7792
	rst 38h			;7793
	rst 38h			;7794
	rst 38h			;7795
	rst 38h			;7796
	rst 38h			;7797
	rst 38h			;7798
	rst 38h			;7799
	rst 38h			;779a
	rst 38h			;779b
	rst 38h			;779c
	rst 38h			;779d
	rst 38h			;779e
	rst 38h			;779f
	rst 38h			;77a0
	rst 38h			;77a1
	rst 38h			;77a2
	rst 38h			;77a3
	rst 38h			;77a4
	rst 38h			;77a5
	rst 38h			;77a6
	rst 38h			;77a7
	rst 38h			;77a8
	rst 38h			;77a9
	rst 38h			;77aa
	rst 38h			;77ab
	rst 38h			;77ac
	rst 38h			;77ad
	rst 38h			;77ae
	rst 38h			;77af
	rst 38h			;77b0
	rst 38h			;77b1
	rst 38h			;77b2
	rst 38h			;77b3
	rst 38h			;77b4
	rst 38h			;77b5
	rst 38h			;77b6
	rst 38h			;77b7
	rst 38h			;77b8
	rst 38h			;77b9
	rst 38h			;77ba
	rst 38h			;77bb
	rst 38h			;77bc
	rst 38h			;77bd
	rst 38h			;77be
	rst 38h			;77bf
	rst 38h			;77c0
	rst 38h			;77c1
	rst 38h			;77c2
	rst 38h			;77c3
	rst 38h			;77c4
	rst 38h			;77c5
	rst 38h			;77c6
	rst 38h			;77c7
	rst 38h			;77c8
	rst 38h			;77c9
	rst 38h			;77ca
	rst 38h			;77cb
	rst 38h			;77cc
	rst 38h			;77cd
	rst 38h			;77ce
	rst 38h			;77cf
	rst 38h			;77d0
	rst 38h			;77d1
	rst 38h			;77d2
	rst 38h			;77d3
	rst 38h			;77d4
	rst 38h			;77d5
	rst 38h			;77d6
	rst 38h			;77d7
	rst 38h			;77d8
	rst 38h			;77d9
	rst 38h			;77da
	rst 38h			;77db
	rst 38h			;77dc
	rst 38h			;77dd
	rst 38h			;77de
	rst 38h			;77df
	rst 38h			;77e0
	rst 38h			;77e1
	rst 38h			;77e2
	rst 38h			;77e3
	rst 38h			;77e4
	rst 38h			;77e5
	rst 38h			;77e6
	rst 38h			;77e7
	rst 38h			;77e8
	rst 38h			;77e9
	rst 38h			;77ea
	rst 38h			;77eb
	rst 38h			;77ec
	rst 38h			;77ed
	rst 38h			;77ee
	rst 38h			;77ef
	rst 38h			;77f0
	rst 38h			;77f1
	rst 38h			;77f2
	rst 38h			;77f3
	rst 38h			;77f4
	rst 38h			;77f5
	rst 38h			;77f6
	rst 38h			;77f7
	rst 38h			;77f8
	rst 38h			;77f9
	rst 38h			;77fa
	rst 38h			;77fb
	rst 38h			;77fc
	rst 38h			;77fd
	rst 38h			;77fe
	rst 38h			;77ff
	rst 38h			;7800
	rst 38h			;7801
	rst 38h			;7802
	rst 38h			;7803
	rst 38h			;7804
	rst 38h			;7805
	rst 38h			;7806
	rst 38h			;7807
	rst 38h			;7808
	rst 38h			;7809
	rst 38h			;780a
	rst 38h			;780b
	rst 38h			;780c
	rst 38h			;780d
	rst 38h			;780e
	rst 38h			;780f
	rst 38h			;7810
	rst 38h			;7811
	rst 38h			;7812
	rst 38h			;7813
	rst 38h			;7814
	rst 38h			;7815
	rst 38h			;7816
	rst 38h			;7817
	rst 38h			;7818
	rst 38h			;7819
	rst 38h			;781a
	rst 38h			;781b
	rst 38h			;781c
	rst 38h			;781d
	rst 38h			;781e
	rst 38h			;781f
	rst 38h			;7820
	rst 38h			;7821
	rst 38h			;7822
	rst 38h			;7823
	rst 38h			;7824
	rst 38h			;7825
	rst 38h			;7826
	rst 38h			;7827
	rst 38h			;7828
	rst 38h			;7829
	rst 38h			;782a
	rst 38h			;782b
	rst 38h			;782c
	rst 38h			;782d
	rst 38h			;782e
	rst 38h			;782f
	rst 38h			;7830
	rst 38h			;7831
	rst 38h			;7832
	rst 38h			;7833
	rst 38h			;7834
	rst 38h			;7835
	rst 38h			;7836
	rst 38h			;7837
	rst 38h			;7838
	rst 38h			;7839
	rst 38h			;783a
	rst 38h			;783b
	rst 38h			;783c
	rst 38h			;783d
	rst 38h			;783e
	rst 38h			;783f
	rst 38h			;7840
	rst 38h			;7841
	rst 38h			;7842
	rst 38h			;7843
	rst 38h			;7844
	rst 38h			;7845
	rst 38h			;7846
	rst 38h			;7847
	rst 38h			;7848
	rst 38h			;7849
	rst 38h			;784a
	rst 38h			;784b
	rst 38h			;784c
	rst 38h			;784d
	rst 38h			;784e
	rst 38h			;784f
	rst 38h			;7850
	rst 38h			;7851
	rst 38h			;7852
	rst 38h			;7853
	rst 38h			;7854
	rst 38h			;7855
	rst 38h			;7856
	rst 38h			;7857
	rst 38h			;7858
	rst 38h			;7859
	rst 38h			;785a
	rst 38h			;785b
	rst 38h			;785c
	rst 38h			;785d
	rst 38h			;785e
	rst 38h			;785f
	rst 38h			;7860
	rst 38h			;7861
	rst 38h			;7862
	rst 38h			;7863
	rst 38h			;7864
	rst 38h			;7865
	rst 38h			;7866
	rst 38h			;7867
	rst 38h			;7868
	rst 38h			;7869
	rst 38h			;786a
	rst 38h			;786b
	rst 38h			;786c
	rst 38h			;786d
	rst 38h			;786e
	rst 38h			;786f
	rst 38h			;7870
	rst 38h			;7871
	rst 38h			;7872
	rst 38h			;7873
	rst 38h			;7874
	rst 38h			;7875
	rst 38h			;7876
	rst 38h			;7877
	rst 38h			;7878
	rst 38h			;7879
	rst 38h			;787a
	rst 38h			;787b
	rst 38h			;787c
	rst 38h			;787d
	rst 38h			;787e
	rst 38h			;787f
	rst 38h			;7880
	rst 38h			;7881
	rst 38h			;7882
	rst 38h			;7883
	rst 38h			;7884
	rst 38h			;7885
	rst 38h			;7886
	rst 38h			;7887
	rst 38h			;7888
	rst 38h			;7889
	rst 38h			;788a
	rst 38h			;788b
	rst 38h			;788c
	rst 38h			;788d
	rst 38h			;788e
	rst 38h			;788f
	rst 38h			;7890
	rst 38h			;7891
	rst 38h			;7892
	rst 38h			;7893
	rst 38h			;7894
	rst 38h			;7895
	rst 38h			;7896
	rst 38h			;7897
	rst 38h			;7898
	rst 38h			;7899
	rst 38h			;789a
	rst 38h			;789b
	rst 38h			;789c
	rst 38h			;789d
	rst 38h			;789e
	rst 38h			;789f
	rst 38h			;78a0
	rst 38h			;78a1
	rst 38h			;78a2
	rst 38h			;78a3
	rst 38h			;78a4
	rst 38h			;78a5
	rst 38h			;78a6
	rst 38h			;78a7
	rst 38h			;78a8
	rst 38h			;78a9
	rst 38h			;78aa
	rst 38h			;78ab
	rst 38h			;78ac
	rst 38h			;78ad
	rst 38h			;78ae
	rst 38h			;78af
	rst 38h			;78b0
	rst 38h			;78b1
	rst 38h			;78b2
	rst 38h			;78b3
	rst 38h			;78b4
	rst 38h			;78b5
	rst 38h			;78b6
	rst 38h			;78b7
	rst 38h			;78b8
	rst 38h			;78b9
	rst 38h			;78ba
	rst 38h			;78bb
	rst 38h			;78bc
	rst 38h			;78bd
	rst 38h			;78be
	rst 38h			;78bf
	rst 38h			;78c0
	rst 38h			;78c1
	rst 38h			;78c2
	rst 38h			;78c3
	rst 38h			;78c4
	rst 38h			;78c5
	rst 38h			;78c6
	rst 38h			;78c7
	rst 38h			;78c8
	rst 38h			;78c9
	rst 38h			;78ca
	rst 38h			;78cb
	rst 38h			;78cc
	rst 38h			;78cd
	rst 38h			;78ce
	rst 38h			;78cf
	rst 38h			;78d0
	rst 38h			;78d1
	rst 38h			;78d2
	rst 38h			;78d3
	rst 38h			;78d4
	rst 38h			;78d5
	rst 38h			;78d6
	rst 38h			;78d7
	rst 38h			;78d8
	rst 38h			;78d9
	rst 38h			;78da
	rst 38h			;78db
	rst 38h			;78dc
	rst 38h			;78dd
	rst 38h			;78de
	rst 38h			;78df
	rst 38h			;78e0
	rst 38h			;78e1
	rst 38h			;78e2
	rst 38h			;78e3
	rst 38h			;78e4
	rst 38h			;78e5
	rst 38h			;78e6
	rst 38h			;78e7
	rst 38h			;78e8
	rst 38h			;78e9
	rst 38h			;78ea
	rst 38h			;78eb
	rst 38h			;78ec
	rst 38h			;78ed
	rst 38h			;78ee
	rst 38h			;78ef
	rst 38h			;78f0
	rst 38h			;78f1
	rst 38h			;78f2
	rst 38h			;78f3
	rst 38h			;78f4
	rst 38h			;78f5
	rst 38h			;78f6
	rst 38h			;78f7
	rst 38h			;78f8
	rst 38h			;78f9
	rst 38h			;78fa
	rst 38h			;78fb
	rst 38h			;78fc
	rst 38h			;78fd
	rst 38h			;78fe
	rst 38h			;78ff
	rst 38h			;7900
	rst 38h			;7901
	rst 38h			;7902
	rst 38h			;7903
	rst 38h			;7904
	rst 38h			;7905
	rst 38h			;7906
	rst 38h			;7907
	rst 38h			;7908
	rst 38h			;7909
	rst 38h			;790a
	rst 38h			;790b
	rst 38h			;790c
	rst 38h			;790d
	rst 38h			;790e
	rst 38h			;790f
	rst 38h			;7910
	rst 38h			;7911
	rst 38h			;7912
	rst 38h			;7913
	rst 38h			;7914
	rst 38h			;7915
	rst 38h			;7916
	rst 38h			;7917
	rst 38h			;7918
	rst 38h			;7919
	rst 38h			;791a
	rst 38h			;791b
	rst 38h			;791c
	rst 38h			;791d
	rst 38h			;791e
	rst 38h			;791f
	rst 38h			;7920
	rst 38h			;7921
	rst 38h			;7922
	rst 38h			;7923
	rst 38h			;7924
	rst 38h			;7925
	rst 38h			;7926
	rst 38h			;7927
	rst 38h			;7928
	rst 38h			;7929
	rst 38h			;792a
	rst 38h			;792b
	rst 38h			;792c
	rst 38h			;792d
	rst 38h			;792e
	rst 38h			;792f
	rst 38h			;7930
	rst 38h			;7931
	rst 38h			;7932
	rst 38h			;7933
	rst 38h			;7934
	rst 38h			;7935
	rst 38h			;7936
	rst 38h			;7937
	rst 38h			;7938
	rst 38h			;7939
	rst 38h			;793a
	rst 38h			;793b
	rst 38h			;793c
	rst 38h			;793d
	rst 38h			;793e
	rst 38h			;793f
	rst 38h			;7940
	rst 38h			;7941
	rst 38h			;7942
	rst 38h			;7943
	rst 38h			;7944
	rst 38h			;7945
	rst 38h			;7946
	rst 38h			;7947
	rst 38h			;7948
	rst 38h			;7949
	rst 38h			;794a
	rst 38h			;794b
	rst 38h			;794c
	rst 38h			;794d
	rst 38h			;794e
	rst 38h			;794f
	rst 38h			;7950
	rst 38h			;7951
	rst 38h			;7952
	rst 38h			;7953
	rst 38h			;7954
	rst 38h			;7955
	rst 38h			;7956
	rst 38h			;7957
	rst 38h			;7958
	rst 38h			;7959
	rst 38h			;795a
	rst 38h			;795b
	rst 38h			;795c
	rst 38h			;795d
	rst 38h			;795e
	rst 38h			;795f
	rst 38h			;7960
	rst 38h			;7961
	rst 38h			;7962
	rst 38h			;7963
	rst 38h			;7964
	rst 38h			;7965
	rst 38h			;7966
	rst 38h			;7967
	rst 38h			;7968
	rst 38h			;7969
	rst 38h			;796a
	rst 38h			;796b
	rst 38h			;796c
	rst 38h			;796d
	rst 38h			;796e
	rst 38h			;796f
	rst 38h			;7970
	rst 38h			;7971
	rst 38h			;7972
	rst 38h			;7973
	rst 38h			;7974
	rst 38h			;7975
	rst 38h			;7976
	rst 38h			;7977
	rst 38h			;7978
	rst 38h			;7979
	rst 38h			;797a
	rst 38h			;797b
	rst 38h			;797c
	rst 38h			;797d
	rst 38h			;797e
	rst 38h			;797f
	rst 38h			;7980
	rst 38h			;7981
	rst 38h			;7982
	rst 38h			;7983
	rst 38h			;7984
	rst 38h			;7985
	rst 38h			;7986
	rst 38h			;7987
	rst 38h			;7988
	rst 38h			;7989
	rst 38h			;798a
	rst 38h			;798b
	rst 38h			;798c
	rst 38h			;798d
	rst 38h			;798e
	rst 38h			;798f
	rst 38h			;7990
	rst 38h			;7991
	rst 38h			;7992
	rst 38h			;7993
	rst 38h			;7994
	rst 38h			;7995
	rst 38h			;7996
	rst 38h			;7997
	rst 38h			;7998
	rst 38h			;7999
	rst 38h			;799a
	rst 38h			;799b
	rst 38h			;799c
	rst 38h			;799d
	rst 38h			;799e
	rst 38h			;799f
	rst 38h			;79a0
	rst 38h			;79a1
	rst 38h			;79a2
	rst 38h			;79a3
l79a4h:
	rst 38h			;79a4
	rst 38h			;79a5
	rst 38h			;79a6
	rst 38h			;79a7
	rst 38h			;79a8
	rst 38h			;79a9
	rst 38h			;79aa
	rst 38h			;79ab
	rst 38h			;79ac
	rst 38h			;79ad
	rst 38h			;79ae
	rst 38h			;79af
	rst 38h			;79b0
	rst 38h			;79b1
	rst 38h			;79b2
	rst 38h			;79b3
	rst 38h			;79b4
	rst 38h			;79b5
	rst 38h			;79b6
	rst 38h			;79b7
	rst 38h			;79b8
	rst 38h			;79b9
	rst 38h			;79ba
	rst 38h			;79bb
	rst 38h			;79bc
	rst 38h			;79bd
	rst 38h			;79be
	rst 38h			;79bf
	rst 38h			;79c0
	rst 38h			;79c1
	rst 38h			;79c2
	rst 38h			;79c3
	rst 38h			;79c4
	rst 38h			;79c5
	rst 38h			;79c6
	rst 38h			;79c7
	rst 38h			;79c8
	rst 38h			;79c9
	rst 38h			;79ca
	rst 38h			;79cb
	rst 38h			;79cc
	rst 38h			;79cd
	rst 38h			;79ce
	rst 38h			;79cf
	rst 38h			;79d0
	rst 38h			;79d1
	rst 38h			;79d2
	rst 38h			;79d3
	rst 38h			;79d4
	rst 38h			;79d5
	rst 38h			;79d6
	rst 38h			;79d7
	rst 38h			;79d8
	rst 38h			;79d9
	rst 38h			;79da
	rst 38h			;79db
	rst 38h			;79dc
	rst 38h			;79dd
	rst 38h			;79de
	rst 38h			;79df
	rst 38h			;79e0
	rst 38h			;79e1
	rst 38h			;79e2
	rst 38h			;79e3
	rst 38h			;79e4
	rst 38h			;79e5
	rst 38h			;79e6
	rst 38h			;79e7
	rst 38h			;79e8
	rst 38h			;79e9
	rst 38h			;79ea
	rst 38h			;79eb
	rst 38h			;79ec
	rst 38h			;79ed
	rst 38h			;79ee
	rst 38h			;79ef
	rst 38h			;79f0
	rst 38h			;79f1
	rst 38h			;79f2
	rst 38h			;79f3
	rst 38h			;79f4
	rst 38h			;79f5
	rst 38h			;79f6
	rst 38h			;79f7
	rst 38h			;79f8
	rst 38h			;79f9
	rst 38h			;79fa
	rst 38h			;79fb
	rst 38h			;79fc
	rst 38h			;79fd
	rst 38h			;79fe
	rst 38h			;79ff
	rst 38h			;7a00
	rst 38h			;7a01
	rst 38h			;7a02
	rst 38h			;7a03
	rst 38h			;7a04
	rst 38h			;7a05
	rst 38h			;7a06
	rst 38h			;7a07
	rst 38h			;7a08
	rst 38h			;7a09
	rst 38h			;7a0a
	rst 38h			;7a0b
	rst 38h			;7a0c
	rst 38h			;7a0d
	rst 38h			;7a0e
	rst 38h			;7a0f
	rst 38h			;7a10
	rst 38h			;7a11
	rst 38h			;7a12
	rst 38h			;7a13
	rst 38h			;7a14
	rst 38h			;7a15
	rst 38h			;7a16
	rst 38h			;7a17
	rst 38h			;7a18
	rst 38h			;7a19
	rst 38h			;7a1a
	rst 38h			;7a1b
	rst 38h			;7a1c
	rst 38h			;7a1d
	rst 38h			;7a1e
	rst 38h			;7a1f
	rst 38h			;7a20
	rst 38h			;7a21
	rst 38h			;7a22
	rst 38h			;7a23
	rst 38h			;7a24
	rst 38h			;7a25
	rst 38h			;7a26
	rst 38h			;7a27
	rst 38h			;7a28
	rst 38h			;7a29
	rst 38h			;7a2a
	rst 38h			;7a2b
	rst 38h			;7a2c
	rst 38h			;7a2d
	rst 38h			;7a2e
	rst 38h			;7a2f
	rst 38h			;7a30
	rst 38h			;7a31
	rst 38h			;7a32
	rst 38h			;7a33
	rst 38h			;7a34
	rst 38h			;7a35
	rst 38h			;7a36
	rst 38h			;7a37
	rst 38h			;7a38
	rst 38h			;7a39
	rst 38h			;7a3a
	rst 38h			;7a3b
	rst 38h			;7a3c
	rst 38h			;7a3d
	rst 38h			;7a3e
	rst 38h			;7a3f
	rst 38h			;7a40
	rst 38h			;7a41
	rst 38h			;7a42
	rst 38h			;7a43
	rst 38h			;7a44
	rst 38h			;7a45
	rst 38h			;7a46
	rst 38h			;7a47
	rst 38h			;7a48
	rst 38h			;7a49
	rst 38h			;7a4a
	rst 38h			;7a4b
	rst 38h			;7a4c
	rst 38h			;7a4d
	rst 38h			;7a4e
	rst 38h			;7a4f
	rst 38h			;7a50
	rst 38h			;7a51
	rst 38h			;7a52
	rst 38h			;7a53
	rst 38h			;7a54
	rst 38h			;7a55
	rst 38h			;7a56
	rst 38h			;7a57
	rst 38h			;7a58
	rst 38h			;7a59
	rst 38h			;7a5a
	rst 38h			;7a5b
	rst 38h			;7a5c
	rst 38h			;7a5d
	rst 38h			;7a5e
	rst 38h			;7a5f
	rst 38h			;7a60
	rst 38h			;7a61
	rst 38h			;7a62
	rst 38h			;7a63
	rst 38h			;7a64
	rst 38h			;7a65
	rst 38h			;7a66
	rst 38h			;7a67
	rst 38h			;7a68
	rst 38h			;7a69
	rst 38h			;7a6a
	rst 38h			;7a6b
	rst 38h			;7a6c
	rst 38h			;7a6d
	rst 38h			;7a6e
	rst 38h			;7a6f
	rst 38h			;7a70
	rst 38h			;7a71
	rst 38h			;7a72
	rst 38h			;7a73
	rst 38h			;7a74
	rst 38h			;7a75
	rst 38h			;7a76
	rst 38h			;7a77
	rst 38h			;7a78
	rst 38h			;7a79
	rst 38h			;7a7a
	rst 38h			;7a7b
	rst 38h			;7a7c
	rst 38h			;7a7d
	rst 38h			;7a7e
	rst 38h			;7a7f
	rst 38h			;7a80
	rst 38h			;7a81
	rst 38h			;7a82
	rst 38h			;7a83
	rst 38h			;7a84
	rst 38h			;7a85
	rst 38h			;7a86
	rst 38h			;7a87
	rst 38h			;7a88
	rst 38h			;7a89
	rst 38h			;7a8a
	rst 38h			;7a8b
	rst 38h			;7a8c
	rst 38h			;7a8d
	rst 38h			;7a8e
	rst 38h			;7a8f
	rst 38h			;7a90
	rst 38h			;7a91
	rst 38h			;7a92
	rst 38h			;7a93
	rst 38h			;7a94
	rst 38h			;7a95
	rst 38h			;7a96
	rst 38h			;7a97
	rst 38h			;7a98
	rst 38h			;7a99
	rst 38h			;7a9a
	rst 38h			;7a9b
	rst 38h			;7a9c
	rst 38h			;7a9d
	rst 38h			;7a9e
	rst 38h			;7a9f
	rst 38h			;7aa0
	rst 38h			;7aa1
	rst 38h			;7aa2
	rst 38h			;7aa3
	rst 38h			;7aa4
	rst 38h			;7aa5
	rst 38h			;7aa6
	rst 38h			;7aa7
	rst 38h			;7aa8
	rst 38h			;7aa9
	rst 38h			;7aaa
	rst 38h			;7aab
	rst 38h			;7aac
	rst 38h			;7aad
	rst 38h			;7aae
	rst 38h			;7aaf
	rst 38h			;7ab0
	rst 38h			;7ab1
	rst 38h			;7ab2
	rst 38h			;7ab3
	rst 38h			;7ab4
	rst 38h			;7ab5
	rst 38h			;7ab6
	rst 38h			;7ab7
	rst 38h			;7ab8
	rst 38h			;7ab9
	rst 38h			;7aba
	rst 38h			;7abb
	rst 38h			;7abc
	rst 38h			;7abd
	rst 38h			;7abe
	rst 38h			;7abf
	rst 38h			;7ac0
	rst 38h			;7ac1
	rst 38h			;7ac2
	rst 38h			;7ac3
	rst 38h			;7ac4
	rst 38h			;7ac5
	rst 38h			;7ac6
	rst 38h			;7ac7
	rst 38h			;7ac8
	rst 38h			;7ac9
	rst 38h			;7aca
	rst 38h			;7acb
	rst 38h			;7acc
	rst 38h			;7acd
	rst 38h			;7ace
	rst 38h			;7acf
	rst 38h			;7ad0
	rst 38h			;7ad1
	rst 38h			;7ad2
	rst 38h			;7ad3
	rst 38h			;7ad4
	rst 38h			;7ad5
	rst 38h			;7ad6
	rst 38h			;7ad7
	rst 38h			;7ad8
	rst 38h			;7ad9
	rst 38h			;7ada
	rst 38h			;7adb
	rst 38h			;7adc
	rst 38h			;7add
	rst 38h			;7ade
	rst 38h			;7adf
	rst 38h			;7ae0
	rst 38h			;7ae1
	rst 38h			;7ae2
	rst 38h			;7ae3
	rst 38h			;7ae4
	rst 38h			;7ae5
	rst 38h			;7ae6
	rst 38h			;7ae7
	rst 38h			;7ae8
	rst 38h			;7ae9
	rst 38h			;7aea
	rst 38h			;7aeb
	rst 38h			;7aec
	rst 38h			;7aed
	rst 38h			;7aee
	rst 38h			;7aef
	rst 38h			;7af0
	rst 38h			;7af1
	rst 38h			;7af2
	rst 38h			;7af3
	rst 38h			;7af4
	rst 38h			;7af5
	rst 38h			;7af6
	rst 38h			;7af7
	rst 38h			;7af8
	rst 38h			;7af9
	rst 38h			;7afa
	rst 38h			;7afb
	rst 38h			;7afc
	rst 38h			;7afd
	rst 38h			;7afe
	rst 38h			;7aff
	rst 38h			;7b00
	rst 38h			;7b01
	rst 38h			;7b02
	rst 38h			;7b03
	rst 38h			;7b04
	rst 38h			;7b05
	rst 38h			;7b06
	rst 38h			;7b07
	rst 38h			;7b08
	rst 38h			;7b09
	rst 38h			;7b0a
	rst 38h			;7b0b
	rst 38h			;7b0c
	rst 38h			;7b0d
	rst 38h			;7b0e
	rst 38h			;7b0f
	rst 38h			;7b10
	rst 38h			;7b11
	rst 38h			;7b12
	rst 38h			;7b13
	rst 38h			;7b14
	rst 38h			;7b15
	rst 38h			;7b16
	rst 38h			;7b17
	rst 38h			;7b18
	rst 38h			;7b19
	rst 38h			;7b1a
	rst 38h			;7b1b
	rst 38h			;7b1c
	rst 38h			;7b1d
	rst 38h			;7b1e
	rst 38h			;7b1f
	rst 38h			;7b20
	rst 38h			;7b21
	rst 38h			;7b22
	rst 38h			;7b23
	rst 38h			;7b24
	rst 38h			;7b25
	rst 38h			;7b26
	rst 38h			;7b27
	rst 38h			;7b28
	rst 38h			;7b29
	rst 38h			;7b2a
	rst 38h			;7b2b
	rst 38h			;7b2c
	rst 38h			;7b2d
	rst 38h			;7b2e
	rst 38h			;7b2f
	rst 38h			;7b30
	rst 38h			;7b31
	rst 38h			;7b32
	rst 38h			;7b33
	rst 38h			;7b34
	rst 38h			;7b35
	rst 38h			;7b36
	rst 38h			;7b37
	rst 38h			;7b38
	rst 38h			;7b39
	rst 38h			;7b3a
	rst 38h			;7b3b
	rst 38h			;7b3c
	rst 38h			;7b3d
	rst 38h			;7b3e
	rst 38h			;7b3f
	rst 38h			;7b40
	rst 38h			;7b41
	rst 38h			;7b42
	rst 38h			;7b43
	rst 38h			;7b44
	rst 38h			;7b45
	rst 38h			;7b46
	rst 38h			;7b47
	rst 38h			;7b48
	rst 38h			;7b49
	rst 38h			;7b4a
	rst 38h			;7b4b
	rst 38h			;7b4c
	rst 38h			;7b4d
	rst 38h			;7b4e
	rst 38h			;7b4f
	rst 38h			;7b50
	rst 38h			;7b51
	rst 38h			;7b52
	rst 38h			;7b53
	rst 38h			;7b54
	rst 38h			;7b55
	rst 38h			;7b56
	rst 38h			;7b57
	rst 38h			;7b58
	rst 38h			;7b59
	rst 38h			;7b5a
	rst 38h			;7b5b
	rst 38h			;7b5c
	rst 38h			;7b5d
	rst 38h			;7b5e
	rst 38h			;7b5f
	rst 38h			;7b60
	rst 38h			;7b61
	rst 38h			;7b62
	rst 38h			;7b63
	rst 38h			;7b64
	rst 38h			;7b65
	rst 38h			;7b66
	rst 38h			;7b67
	rst 38h			;7b68
	rst 38h			;7b69
	rst 38h			;7b6a
	rst 38h			;7b6b
	rst 38h			;7b6c
	rst 38h			;7b6d
	rst 38h			;7b6e
	rst 38h			;7b6f
	rst 38h			;7b70
	rst 38h			;7b71
	rst 38h			;7b72
	rst 38h			;7b73
	rst 38h			;7b74
	rst 38h			;7b75
	rst 38h			;7b76
	rst 38h			;7b77
	rst 38h			;7b78
	rst 38h			;7b79
	rst 38h			;7b7a
	rst 38h			;7b7b
	rst 38h			;7b7c
	rst 38h			;7b7d
	rst 38h			;7b7e
	rst 38h			;7b7f
	rst 38h			;7b80
	rst 38h			;7b81
	rst 38h			;7b82
	rst 38h			;7b83
	rst 38h			;7b84
	rst 38h			;7b85
	rst 38h			;7b86
	rst 38h			;7b87
	rst 38h			;7b88
	rst 38h			;7b89
	rst 38h			;7b8a
	rst 38h			;7b8b
	rst 38h			;7b8c
	rst 38h			;7b8d
	rst 38h			;7b8e
	rst 38h			;7b8f
	rst 38h			;7b90
	rst 38h			;7b91
	rst 38h			;7b92
	rst 38h			;7b93
	rst 38h			;7b94
	rst 38h			;7b95
	rst 38h			;7b96
	rst 38h			;7b97
	rst 38h			;7b98
	rst 38h			;7b99
	rst 38h			;7b9a
	rst 38h			;7b9b
	rst 38h			;7b9c
	rst 38h			;7b9d
	rst 38h			;7b9e
	rst 38h			;7b9f
	rst 38h			;7ba0
	rst 38h			;7ba1
	rst 38h			;7ba2
	rst 38h			;7ba3
	rst 38h			;7ba4
	rst 38h			;7ba5
	rst 38h			;7ba6
	rst 38h			;7ba7
	rst 38h			;7ba8
	rst 38h			;7ba9
	rst 38h			;7baa
	rst 38h			;7bab
	rst 38h			;7bac
	rst 38h			;7bad
	rst 38h			;7bae
	rst 38h			;7baf
	rst 38h			;7bb0
	rst 38h			;7bb1
	rst 38h			;7bb2
	rst 38h			;7bb3
	rst 38h			;7bb4
	rst 38h			;7bb5
	rst 38h			;7bb6
	rst 38h			;7bb7
	rst 38h			;7bb8
	rst 38h			;7bb9
	rst 38h			;7bba
	rst 38h			;7bbb
	rst 38h			;7bbc
	rst 38h			;7bbd
	rst 38h			;7bbe
	rst 38h			;7bbf
	rst 38h			;7bc0
	rst 38h			;7bc1
	rst 38h			;7bc2
	rst 38h			;7bc3
	rst 38h			;7bc4
	rst 38h			;7bc5
	rst 38h			;7bc6
	rst 38h			;7bc7
	rst 38h			;7bc8
	rst 38h			;7bc9
	rst 38h			;7bca
	rst 38h			;7bcb
	rst 38h			;7bcc
	rst 38h			;7bcd
	rst 38h			;7bce
	rst 38h			;7bcf
	rst 38h			;7bd0
	rst 38h			;7bd1
	rst 38h			;7bd2
	rst 38h			;7bd3
	rst 38h			;7bd4
	rst 38h			;7bd5
	rst 38h			;7bd6
	rst 38h			;7bd7
	rst 38h			;7bd8
	rst 38h			;7bd9
	rst 38h			;7bda
	rst 38h			;7bdb
	rst 38h			;7bdc
	rst 38h			;7bdd
	rst 38h			;7bde
	rst 38h			;7bdf
	rst 38h			;7be0
	rst 38h			;7be1
	rst 38h			;7be2
	rst 38h			;7be3
	rst 38h			;7be4
	rst 38h			;7be5
	rst 38h			;7be6
	rst 38h			;7be7
	rst 38h			;7be8
	rst 38h			;7be9
	rst 38h			;7bea
	rst 38h			;7beb
	rst 38h			;7bec
	rst 38h			;7bed
	rst 38h			;7bee
	rst 38h			;7bef
	rst 38h			;7bf0
	rst 38h			;7bf1
	rst 38h			;7bf2
	rst 38h			;7bf3
	rst 38h			;7bf4
	rst 38h			;7bf5
	rst 38h			;7bf6
	rst 38h			;7bf7
	rst 38h			;7bf8
	rst 38h			;7bf9
	rst 38h			;7bfa
	rst 38h			;7bfb
	rst 38h			;7bfc
	rst 38h			;7bfd
	rst 38h			;7bfe
	rst 38h			;7bff
	rst 38h			;7c00
	rst 38h			;7c01
	rst 38h			;7c02
	rst 38h			;7c03
	rst 38h			;7c04
	rst 38h			;7c05
	rst 38h			;7c06
	rst 38h			;7c07
	rst 38h			;7c08
	rst 38h			;7c09
	rst 38h			;7c0a
	rst 38h			;7c0b
	rst 38h			;7c0c
	rst 38h			;7c0d
	rst 38h			;7c0e
	rst 38h			;7c0f
	rst 38h			;7c10
	rst 38h			;7c11
	rst 38h			;7c12
	rst 38h			;7c13
	rst 38h			;7c14
	rst 38h			;7c15
	rst 38h			;7c16
	rst 38h			;7c17
	rst 38h			;7c18
	rst 38h			;7c19
	rst 38h			;7c1a
	rst 38h			;7c1b
	rst 38h			;7c1c
	rst 38h			;7c1d
	rst 38h			;7c1e
	rst 38h			;7c1f
	rst 38h			;7c20
	rst 38h			;7c21
	rst 38h			;7c22
	rst 38h			;7c23
	rst 38h			;7c24
	rst 38h			;7c25
	rst 38h			;7c26
	rst 38h			;7c27
	rst 38h			;7c28
	rst 38h			;7c29
	rst 38h			;7c2a
	rst 38h			;7c2b
	rst 38h			;7c2c
	rst 38h			;7c2d
	rst 38h			;7c2e
	rst 38h			;7c2f
	rst 38h			;7c30
	rst 38h			;7c31
	rst 38h			;7c32
	rst 38h			;7c33
	rst 38h			;7c34
	rst 38h			;7c35
	rst 38h			;7c36
	rst 38h			;7c37
	rst 38h			;7c38
	rst 38h			;7c39
	rst 38h			;7c3a
	rst 38h			;7c3b
	rst 38h			;7c3c
	rst 38h			;7c3d
	rst 38h			;7c3e
	rst 38h			;7c3f
	rst 38h			;7c40
	rst 38h			;7c41
	rst 38h			;7c42
	rst 38h			;7c43
	rst 38h			;7c44
	rst 38h			;7c45
	rst 38h			;7c46
	rst 38h			;7c47
	rst 38h			;7c48
	rst 38h			;7c49
	rst 38h			;7c4a
	rst 38h			;7c4b
	rst 38h			;7c4c
	rst 38h			;7c4d
	rst 38h			;7c4e
	rst 38h			;7c4f
	rst 38h			;7c50
	rst 38h			;7c51
	rst 38h			;7c52
	rst 38h			;7c53
	rst 38h			;7c54
	rst 38h			;7c55
	rst 38h			;7c56
	rst 38h			;7c57
	rst 38h			;7c58
	rst 38h			;7c59
	rst 38h			;7c5a
	rst 38h			;7c5b
	rst 38h			;7c5c
	rst 38h			;7c5d
	rst 38h			;7c5e
	rst 38h			;7c5f
	rst 38h			;7c60
	rst 38h			;7c61
	rst 38h			;7c62
	rst 38h			;7c63
	rst 38h			;7c64
	rst 38h			;7c65
	rst 38h			;7c66
	rst 38h			;7c67
	rst 38h			;7c68
	rst 38h			;7c69
	rst 38h			;7c6a
	rst 38h			;7c6b
	rst 38h			;7c6c
	rst 38h			;7c6d
	rst 38h			;7c6e
	rst 38h			;7c6f
	rst 38h			;7c70
	rst 38h			;7c71
	rst 38h			;7c72
	rst 38h			;7c73
	rst 38h			;7c74
	rst 38h			;7c75
	rst 38h			;7c76
	rst 38h			;7c77
	rst 38h			;7c78
	rst 38h			;7c79
	rst 38h			;7c7a
	rst 38h			;7c7b
l7c7ch:
	rst 38h			;7c7c
	rst 38h			;7c7d
	rst 38h			;7c7e
	rst 38h			;7c7f
	rst 38h			;7c80
	rst 38h			;7c81
	rst 38h			;7c82
	rst 38h			;7c83
	rst 38h			;7c84
	rst 38h			;7c85
	rst 38h			;7c86
	rst 38h			;7c87
	rst 38h			;7c88
	rst 38h			;7c89
	rst 38h			;7c8a
	rst 38h			;7c8b
	rst 38h			;7c8c
	rst 38h			;7c8d
	rst 38h			;7c8e
	rst 38h			;7c8f
	rst 38h			;7c90
	rst 38h			;7c91
	rst 38h			;7c92
	rst 38h			;7c93
	rst 38h			;7c94
	rst 38h			;7c95
	rst 38h			;7c96
	rst 38h			;7c97
	rst 38h			;7c98
	rst 38h			;7c99
	rst 38h			;7c9a
	rst 38h			;7c9b
	rst 38h			;7c9c
	rst 38h			;7c9d
	rst 38h			;7c9e
	rst 38h			;7c9f
	rst 38h			;7ca0
	rst 38h			;7ca1
	rst 38h			;7ca2
	rst 38h			;7ca3
	rst 38h			;7ca4
	rst 38h			;7ca5
	rst 38h			;7ca6
	rst 38h			;7ca7
	rst 38h			;7ca8
	rst 38h			;7ca9
	rst 38h			;7caa
	rst 38h			;7cab
	rst 38h			;7cac
	rst 38h			;7cad
	rst 38h			;7cae
	rst 38h			;7caf
	rst 38h			;7cb0
	rst 38h			;7cb1
	rst 38h			;7cb2
	rst 38h			;7cb3
	rst 38h			;7cb4
	rst 38h			;7cb5
	rst 38h			;7cb6
	rst 38h			;7cb7
	rst 38h			;7cb8
	rst 38h			;7cb9
	rst 38h			;7cba
	rst 38h			;7cbb
	rst 38h			;7cbc
	rst 38h			;7cbd
	rst 38h			;7cbe
	rst 38h			;7cbf
	rst 38h			;7cc0
	rst 38h			;7cc1
	rst 38h			;7cc2
	rst 38h			;7cc3
	rst 38h			;7cc4
	rst 38h			;7cc5
	rst 38h			;7cc6
	rst 38h			;7cc7
	rst 38h			;7cc8
	rst 38h			;7cc9
	rst 38h			;7cca
	rst 38h			;7ccb
	rst 38h			;7ccc
	rst 38h			;7ccd
	rst 38h			;7cce
	rst 38h			;7ccf
	rst 38h			;7cd0
	rst 38h			;7cd1
	rst 38h			;7cd2
	rst 38h			;7cd3
	rst 38h			;7cd4
	rst 38h			;7cd5
	rst 38h			;7cd6
	rst 38h			;7cd7
	rst 38h			;7cd8
	rst 38h			;7cd9
	rst 38h			;7cda
	rst 38h			;7cdb
	rst 38h			;7cdc
	rst 38h			;7cdd
	rst 38h			;7cde
	rst 38h			;7cdf
	rst 38h			;7ce0
	rst 38h			;7ce1
	rst 38h			;7ce2
	rst 38h			;7ce3
	rst 38h			;7ce4
	rst 38h			;7ce5
	rst 38h			;7ce6
	rst 38h			;7ce7
	rst 38h			;7ce8
	rst 38h			;7ce9
	rst 38h			;7cea
	rst 38h			;7ceb
	rst 38h			;7cec
	rst 38h			;7ced
	rst 38h			;7cee
	rst 38h			;7cef
	rst 38h			;7cf0
	rst 38h			;7cf1
	rst 38h			;7cf2
	rst 38h			;7cf3
	rst 38h			;7cf4
	rst 38h			;7cf5
	rst 38h			;7cf6
	rst 38h			;7cf7
	rst 38h			;7cf8
	rst 38h			;7cf9
	rst 38h			;7cfa
	rst 38h			;7cfb
	rst 38h			;7cfc
	rst 38h			;7cfd
	rst 38h			;7cfe
	rst 38h			;7cff
	rst 38h			;7d00
	rst 38h			;7d01
	rst 38h			;7d02
	rst 38h			;7d03
	rst 38h			;7d04
	rst 38h			;7d05
	rst 38h			;7d06
	rst 38h			;7d07
	rst 38h			;7d08
	rst 38h			;7d09
	rst 38h			;7d0a
	rst 38h			;7d0b
	rst 38h			;7d0c
	rst 38h			;7d0d
	rst 38h			;7d0e
	rst 38h			;7d0f
	rst 38h			;7d10
	rst 38h			;7d11
	rst 38h			;7d12
	rst 38h			;7d13
	rst 38h			;7d14
	rst 38h			;7d15
	rst 38h			;7d16
	rst 38h			;7d17
	rst 38h			;7d18
	rst 38h			;7d19
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
l7d38h:
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

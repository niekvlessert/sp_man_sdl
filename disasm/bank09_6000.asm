; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank09_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank09.bin

	org 06000h

	nop			;6000
	nop			;6001
	nop			;6002
	nop			;6003
	nop			;6004
	nop			;6005
	nop			;6006
	nop			;6007
	nop			;6008
	nop			;6009
	nop			;600a
	nop			;600b
	nop			;600c
	nop			;600d
	nop			;600e
	nop			;600f
	ld bc,00101h		;6010
	ld bc,00101h		;6013
	ld bc,00101h		;6016
	ld bc,00101h		;6019
	ld bc,00101h		;601c
	ld bc,00202h		;601f
	ld (bc),a		;6022
	ld (bc),a		;6023
	ld (bc),a		;6024
	ld (bc),a		;6025
	ld (bc),a		;6026
	ld (bc),a		;6027
	ld (bc),a		;6028
	ld (bc),a		;6029
	ld (bc),a		;602a
	ld (bc),a		;602b
	ld (bc),a		;602c
	ld (bc),a		;602d
	ld (bc),a		;602e
	ld (bc),a		;602f
	inc bc			;6030
	inc bc			;6031
	inc bc			;6032
	inc bc			;6033
	inc bc			;6034
	inc bc			;6035
	inc bc			;6036
	inc bc			;6037
	inc bc			;6038
	inc bc			;6039
	inc bc			;603a
	inc bc			;603b
	inc bc			;603c
	inc bc			;603d
	inc bc			;603e
	inc bc			;603f
	inc b			;6040
	inc b			;6041
	inc b			;6042
	inc b			;6043
	inc b			;6044
	inc b			;6045
	inc b			;6046
	inc b			;6047
	inc b			;6048
	inc b			;6049
	inc b			;604a
	inc b			;604b
	inc b			;604c
	inc b			;604d
	inc b			;604e
	inc b			;604f
	dec b			;6050
	dec b			;6051
	dec b			;6052
	dec b			;6053
	dec b			;6054
	dec b			;6055
	dec b			;6056
	dec b			;6057
	dec b			;6058
	dec b			;6059
	dec b			;605a
	dec b			;605b
	dec b			;605c
	dec b			;605d
	dec b			;605e
	dec b			;605f
	ld b,006h		;6060
	ld b,006h		;6062
	ld b,006h		;6064
	ld b,006h		;6066
	ld b,006h		;6068
	ld b,006h		;606a
	ld b,006h		;606c
	ld b,006h		;606e
	rlca			;6070
	rlca			;6071
	rlca			;6072
	rlca			;6073
	rlca			;6074
	rlca			;6075
	rlca			;6076
	rlca			;6077
	rlca			;6078
	rlca			;6079
	rlca			;607a
	rlca			;607b
	rlca			;607c
	rlca			;607d
	rlca			;607e
	rlca			;607f
l6080h:
	ex af,af'		;6080
	ex af,af'		;6081
	ex af,af'		;6082
	ex af,af'		;6083
	ex af,af'		;6084
	ex af,af'		;6085
	ex af,af'		;6086
	ex af,af'		;6087
	ex af,af'		;6088
	ex af,af'		;6089
	ex af,af'		;608a
	ex af,af'		;608b
	ex af,af'		;608c
	ex af,af'		;608d
	ex af,af'		;608e
	ex af,af'		;608f
	add hl,bc		;6090
	add hl,bc		;6091
	add hl,bc		;6092
	add hl,bc		;6093
	add hl,bc		;6094
	add hl,bc		;6095
	add hl,bc		;6096
	add hl,bc		;6097
	add hl,bc		;6098
	add hl,bc		;6099
	add hl,bc		;609a
	add hl,bc		;609b
	add hl,bc		;609c
	add hl,bc		;609d
	add hl,bc		;609e
	add hl,bc		;609f
	ld a,(bc)		;60a0
	ld a,(bc)		;60a1
	ld a,(bc)		;60a2
	ld a,(bc)		;60a3
	ld a,(bc)		;60a4
	ld a,(bc)		;60a5
	ld a,(bc)		;60a6
	ld a,(bc)		;60a7
	ld a,(bc)		;60a8
	ld a,(bc)		;60a9
	ld a,(bc)		;60aa
	ld a,(bc)		;60ab
	ld a,(bc)		;60ac
	ld a,(bc)		;60ad
	ld a,(bc)		;60ae
	ld a,(bc)		;60af
	dec bc			;60b0
	dec bc			;60b1
	dec bc			;60b2
	dec bc			;60b3
	dec bc			;60b4
	dec bc			;60b5
	dec bc			;60b6
	dec bc			;60b7
	dec bc			;60b8
	dec bc			;60b9
	dec bc			;60ba
	dec bc			;60bb
	dec bc			;60bc
	dec bc			;60bd
	dec bc			;60be
	dec bc			;60bf
	inc c			;60c0
	inc c			;60c1
	inc c			;60c2
	inc c			;60c3
	inc c			;60c4
	inc c			;60c5
	inc c			;60c6
	inc c			;60c7
	inc c			;60c8
	inc c			;60c9
	inc c			;60ca
	inc c			;60cb
	inc c			;60cc
	inc c			;60cd
	inc c			;60ce
	inc c			;60cf
	dec c			;60d0
	dec c			;60d1
	dec c			;60d2
	dec c			;60d3
	dec c			;60d4
	dec c			;60d5
	dec c			;60d6
	dec c			;60d7
	dec c			;60d8
	dec c			;60d9
	dec c			;60da
	dec c			;60db
	dec c			;60dc
	dec c			;60dd
	dec c			;60de
	dec c			;60df
	ld c,00eh		;60e0
	ld c,00eh		;60e2
	ld c,00eh		;60e4
	ld c,00eh		;60e6
	ld c,00eh		;60e8
	ld c,00eh		;60ea
	ld c,00eh		;60ec
	ld c,00eh		;60ee
	rrca			;60f0
	rrca			;60f1
	rrca			;60f2
	rrca			;60f3
	rrca			;60f4
	rrca			;60f5
	rrca			;60f6
	rrca			;60f7
	rrca			;60f8
	rrca			;60f9
	rrca			;60fa
	rrca			;60fb
	rrca			;60fc
	rrca			;60fd
	rrca			;60fe
	rrca			;60ff
	nop			;6100
	nop			;6101
	nop			;6102
	nop			;6103
	nop			;6104
	nop			;6105
	rlca			;6106
	ld c,00eh		;6107
	rlca			;6109
	nop			;610a
	nop			;610b
	nop			;610c
	nop			;610d
	nop			;610e
	nop			;610f
	ld c,00eh		;6110
	ld c,00eh		;6112
	ld c,00eh		;6114
	ld c,00eh		;6116
	ld c,00eh		;6118
	ld c,00eh		;611a
	ld c,00eh		;611c
	ld c,00eh		;611e
	nop			;6120
	nop			;6121
	nop			;6122
	nop			;6123
	nop			;6124
	nop			;6125
	rlca			;6126
	ld c,00eh		;6127
	ld c,007h		;6129
	nop			;612b
	nop			;612c
	nop			;612d
	nop			;612e
	nop			;612f
	nop			;6130
	nop			;6131
	rlca			;6132
	ld c,00eh		;6133
	ld c,000h		;6135
	nop			;6137
	nop			;6138
	nop			;6139
	rlca			;613a
	ld c,00eh		;613b
	ld c,000h		;613d
	nop			;613f
	nop			;6140
	nop			;6141
	nop			;6142
	nop			;6143
	nop			;6144
	ld b,00ah		;6145
	ld c,00eh		;6147
	ld c,00ah		;6149
	ld b,000h		;614b
	nop			;614d
	nop			;614e
	nop			;614f
	rlca			;6150
	ld c,00eh		;6151
	ld c,00eh		;6153
	ld c,00eh		;6155
	nop			;6157
	rlca			;6158
	ld c,00eh		;6159
	ld c,00eh		;615b
	ld c,00eh		;615d
	nop			;615f
	nop			;6160
	nop			;6161
	nop			;6162
	nop			;6163
	dec c			;6164
	ex af,af'		;6165
	ex af,af'		;6166
	ld c,00eh		;6167
	ex af,af'		;6169
	ex af,af'		;616a
	dec c			;616b
	nop			;616c
	nop			;616d
	nop			;616e
	nop			;616f
	nop			;6170
	rlca			;6171
	rlca			;6172
	ld c,00eh		;6173
	ld c,00eh		;6175
	nop			;6177
	rlca			;6178
	rlca			;6179
	ld c,00eh		;617a
	ld c,00eh		;617c
	nop			;617e
	nop			;617f
	nop			;6180
	nop			;6181
	dec c			;6182
	ex af,af'		;6183
	ex af,af'		;6184
	ld c,008h		;6185
	ld c,00eh		;6187
	ex af,af'		;6189
	ld c,008h		;618a
	ex af,af'		;618c
	dec c			;618d
	nop			;618e
	nop			;618f
	nop			;6190
	rlca			;6191
	rlca			;6192
	ld c,00eh		;6193
	ld c,00eh		;6195
	nop			;6197
	rlca			;6198
	rlca			;6199
	ld c,00eh		;619a
	ld c,00eh		;619c
	nop			;619e
	nop			;619f
	ld b,006h		;61a0
	ld a,(bc)		;61a2
	ld b,00ah		;61a3
	ld c,00ah		;61a5
	ld c,00eh		;61a7
	ld a,(bc)		;61a9
	ld c,00ah		;61aa
	ld b,00ah		;61ac
	ld b,006h		;61ae
	rlca			;61b0
	ld c,00eh		;61b1
	ld c,00eh		;61b3
	ld c,00eh		;61b5
	nop			;61b7
	rlca			;61b8
	ld c,00eh		;61b9
	ld c,00eh		;61bb
	ld c,00eh		;61bd
	nop			;61bf
	inc c			;61c0
	ld c,00ch		;61c1
	dec c			;61c3
	dec c			;61c4
	rrca			;61c5
	add hl,bc		;61c6
	rrca			;61c7
	ld c,008h		;61c8
	inc c			;61ca
	dec c			;61cb
	rrca			;61cc
	ex af,af'		;61cd
	dec b			;61ce
	dec c			;61cf
	ld c,005h		;61d0
	dec b			;61d2
	dec c			;61d3
	rrca			;61d4
	dec b			;61d5
	rrca			;61d6
	ex af,af'		;61d7
	ex af,af'		;61d8
	ex af,af'		;61d9
	ex af,af'		;61da
	ex af,af'		;61db
	ld c,005h		;61dc
	dec c			;61de
	rrca			;61df
	ex af,af'		;61e0
	ld c,008h		;61e1
	dec b			;61e3
	dec c			;61e4
	rrca			;61e5
	add hl,bc		;61e6
	rrca			;61e7
	ex af,af'		;61e8
	inc c			;61e9
	dec c			;61ea
	rrca			;61eb
	dec c			;61ec
	inc c			;61ed
	inc c			;61ee
	inc c			;61ef
	nop			;61f0
	nop			;61f1
	nop			;61f2
	nop			;61f3
	nop			;61f4
	nop			;61f5
	nop			;61f6
	ld c,00ah		;61f7
	nop			;61f9
	nop			;61fa
	nop			;61fb
	nop			;61fc
	nop			;61fd
	nop			;61fe
	nop			;61ff
	nop			;6200
	nop			;6201
	ld a,(bc)		;6202
	ld c,00ah		;6203
	ld c,00ah		;6205
	ld c,00ah		;6207
	ld c,00ah		;6209
	ld c,00ah		;620b
	ld c,000h		;620d
	nop			;620f
	ld a,(bc)		;6210
	ld c,00ah		;6211
	ld c,00ah		;6213
	ld c,00ah		;6215
	ld c,00ah		;6217
	ld c,00ah		;6219
	ld c,00ah		;621b
	ld c,00ah		;621d
	ld c,000h		;621f
	nop			;6221
	nop			;6222
	nop			;6223
	nop			;6224
	nop			;6225
	ld b,00eh		;6226
	ld a,(bc)		;6228
	ld b,000h		;6229
	nop			;622b
	nop			;622c
	nop			;622d
	nop			;622e
	nop			;622f
	nop			;6230
	ld c,00eh		;6231
	ex af,af'		;6233
	dec c			;6234
	ex af,af'		;6235
	ld c,00eh		;6236
	ex af,af'		;6238
	dec c			;6239
	dec c			;623a
	ex af,af'		;623b
	ex af,af'		;623c
	ld c,000h		;623d
	nop			;623f
	dec c			;6240
	dec c			;6241
	ex af,af'		;6242
	ex af,af'		;6243
	ld c,00eh		;6244
	ex af,af'		;6246
	ex af,af'		;6247
	dec c			;6248
	ex af,af'		;6249
	dec c			;624a
	dec c			;624b
	add hl,bc		;624c
	dec c			;624d
	add hl,bc		;624e
	add hl,bc		;624f
	inc b			;6250
	ld c,00eh		;6251
	inc b			;6253
	inc b			;6254
	ld b,006h		;6255
	ld b,006h		;6257
	ld b,006h		;6259
	inc b			;625b
	inc b			;625c
	ld c,00eh		;625d
	inc b			;625f
	nop			;6260
	add hl,bc		;6261
	ld c,00dh		;6262
	ex af,af'		;6264
	ld c,008h		;6265
	ld c,009h		;6267
	ld c,008h		;6269
	dec c			;626b
	ex af,af'		;626c
	ld c,009h		;626d
	nop			;626f
	inc c			;6270
	dec bc			;6271
	inc c			;6272
	rrca			;6273
	ld c,00ch		;6274
	dec bc			;6276
	rrca			;6277
	inc c			;6278
	ld (bc),a		;6279
	inc bc			;627a
	ld c,003h		;627b
	ld (bc),a		;627d
	ld bc,00203h		;627e
	ld bc,00e03h		;6281
	inc bc			;6284
	ld (bc),a		;6285
	ld bc,00f0ch		;6286
	dec bc			;6289
	rrca			;628a
	inc c			;628b
	rrca			;628c
	inc c			;628d
	inc c			;628e
	rrca			;628f
	nop			;6290
	ld c,00eh		;6291
	ld c,00eh		;6293
	ld c,00eh		;6295
	nop			;6297
	rlca			;6298
	rlca			;6299
	rlca			;629a
	ld c,008h		;629b
	ex af,af'		;629d
	ld b,00eh		;629e
	nop			;62a0
	nop			;62a1
	nop			;62a2
	nop			;62a3
	ld a,(bc)		;62a4
	ex af,af'		;62a5
	ex af,af'		;62a6
	ex af,af'		;62a7
	ex af,af'		;62a8
	ex af,af'		;62a9
	ex af,af'		;62aa
	ex af,af'		;62ab
	ld c,00eh		;62ac
	ld c,00eh		;62ae
	dec c			;62b0
	dec c			;62b1
	ld c,00eh		;62b2
	ld c,00ah		;62b4
	nop			;62b6
	nop			;62b7
	nop			;62b8
	nop			;62b9
	nop			;62ba
	nop			;62bb
	nop			;62bc
	nop			;62bd
	nop			;62be
	nop			;62bf
	ld c,00eh		;62c0
	ld c,00eh		;62c2
	ld c,00eh		;62c4
	ld c,000h		;62c6
	rlca			;62c8
	rlca			;62c9
	rlca			;62ca
	dec c			;62cb
	ld c,008h		;62cc
	ex af,af'		;62ce
	ld b,000h		;62cf
	nop			;62d1
	nop			;62d2
	ld a,(bc)		;62d3
	ex af,af'		;62d4
	ex af,af'		;62d5
	ex af,af'		;62d6
	ex af,af'		;62d7
	ex af,af'		;62d8
	ex af,af'		;62d9
	ex af,af'		;62da
	ex af,af'		;62db
	ld c,00eh		;62dc
	ld c,00eh		;62de
	dec c			;62e0
	ex af,af'		;62e1
	dec c			;62e2
	ld c,00eh		;62e3
	ld c,00ah		;62e5
	nop			;62e7
	nop			;62e8
	nop			;62e9
	nop			;62ea
	nop			;62eb
	nop			;62ec
	nop			;62ed
	nop			;62ee
	nop			;62ef
	nop			;62f0
	ld c,00eh		;62f1
	ld c,00eh		;62f3
	ld c,00eh		;62f5
	ld c,007h		;62f7
	rlca			;62f9
	rlca			;62fa
	rlca			;62fb
	dec c			;62fc
	ld c,008h		;62fd
	ld c,000h		;62ff
	nop			;6301
	nop			;6302
	nop			;6303
	ld a,(bc)		;6304
	ex af,af'		;6305
	ex af,af'		;6306
	ex af,af'		;6307
	ex af,af'		;6308
	ex af,af'		;6309
	ex af,af'		;630a
	ex af,af'		;630b
	ld c,00eh		;630c
	ld c,00eh		;630e
	ld c,00dh		;6310
	dec c			;6312
	ld c,00eh		;6313
	ld a,(bc)		;6315
	nop			;6316
	nop			;6317
	nop			;6318
	nop			;6319
	nop			;631a
	nop			;631b
	nop			;631c
	nop			;631d
	nop			;631e
	nop			;631f
	nop			;6320
	nop			;6321
	nop			;6322
	nop			;6323
	nop			;6324
	nop			;6325
	rlca			;6326
	ld c,007h		;6327
	nop			;6329
	nop			;632a
	nop			;632b
	nop			;632c
	nop			;632d
	nop			;632e
	nop			;632f
	nop			;6330
	rlca			;6331
	rlca			;6332
	ld c,00eh		;6333
	ld c,00eh		;6335
	nop			;6337
	nop			;6338
	rlca			;6339
	rlca			;633a
	ld c,00eh		;633b
	ld c,00eh		;633d
	nop			;633f
	nop			;6340
	nop			;6341
	nop			;6342
	rlca			;6343
	ld c,007h		;6344
	nop			;6346
	nop			;6347
	nop			;6348
	nop			;6349
	rlca			;634a
	ld c,007h		;634b
	nop			;634d
	nop			;634e
	nop			;634f
	nop			;6350
	nop			;6351
	nop			;6352
	nop			;6353
	ld c,00eh		;6354
	ld b,00ah		;6356
	ld c,00ah		;6358
	ld b,00eh		;635a
	ld c,000h		;635c
	nop			;635e
	nop			;635f
	ex af,af'		;6360
	ld c,008h		;6361
	dec b			;6363
	dec c			;6364
	rrca			;6365
	add hl,bc		;6366
	rrca			;6367
	ex af,af'		;6368
	inc c			;6369
	dec c			;636a
	rrca			;636b
	dec c			;636c
	inc c			;636d
	inc c			;636e
	inc c			;636f
	dec bc			;6370
	dec bc			;6371
	dec bc			;6372
	dec bc			;6373
	ld c,00eh		;6374
	ld c,00eh		;6376
	dec bc			;6378
	dec bc			;6379
	dec bc			;637a
	dec bc			;637b
	dec bc			;637c
	dec bc			;637d
	dec bc			;637e
	dec bc			;637f
	rlca			;6380
	rlca			;6381
	rlca			;6382
	rlca			;6383
	dec bc			;6384
	dec bc			;6385
	dec bc			;6386
	dec bc			;6387
	rlca			;6388
	rlca			;6389
	rlca			;638a
	rlca			;638b
	rlca			;638c
	rlca			;638d
	rlca			;638e
	rlca			;638f
	nop			;6390
	nop			;6391
	ex af,af'		;6392
	ld c,00eh		;6393
	ex af,af'		;6395
	ex af,af'		;6396
	dec c			;6397
	rlca			;6398
	ex af,af'		;6399
	ex af,af'		;639a
	ld c,008h		;639b
	ex af,af'		;639d
	dec c			;639e
	nop			;639f
	nop			;63a0
	nop			;63a1
	nop			;63a2
	nop			;63a3
	ld c,008h		;63a4
	dec c			;63a6
	dec c			;63a7
	ex af,af'		;63a8
	rlca			;63a9
	dec c			;63aa
	ex af,af'		;63ab
	ex af,af'		;63ac
	nop			;63ad
	nop			;63ae
	nop			;63af
	nop			;63b0
	nop			;63b1
	nop			;63b2
	nop			;63b3
	nop			;63b4
	rlca			;63b5
	ld c,008h		;63b6
	ex af,af'		;63b8
	dec c			;63b9
	dec c			;63ba
	rlca			;63bb
	nop			;63bc
	nop			;63bd
	nop			;63be
	nop			;63bf
	nop			;63c0
	nop			;63c1
	nop			;63c2
	nop			;63c3
	ld c,008h		;63c4
	dec c			;63c6
	rlca			;63c7
	ex af,af'		;63c8
	ld c,00eh		;63c9
	ex af,af'		;63cb
	dec c			;63cc
	nop			;63cd
	nop			;63ce
	nop			;63cf
	dec bc			;63d0
	dec bc			;63d1
	dec bc			;63d2
	ld b,006h		;63d3
	ld c,00bh		;63d5
	dec bc			;63d7
	dec bc			;63d8
	dec bc			;63d9
	dec bc			;63da
	dec bc			;63db
	dec c			;63dc
	dec bc			;63dd
	dec bc			;63de
	nop			;63df
	ld c,h			;63e0
	ld c,h			;63e1
	ld c,h			;63e2
	ld c,h			;63e3
	ld c,l			;63e4
	ld c,l			;63e5
	ld c,h			;63e6
	ld c,h			;63e7
	ld c,h			;63e8
	ld c,h			;63e9
	ld c,h			;63ea
	ld c,h			;63eb
	ld c,a			;63ec
	ld c,h			;63ed
	ld c,h			;63ee
	ld b,b			;63ef
	dec bc			;63f0
	dec bc			;63f1
	dec bc			;63f2
	dec bc			;63f3
	dec bc			;63f4
	dec bc			;63f5
	dec bc			;63f6
	dec bc			;63f7
	dec bc			;63f8
	dec bc			;63f9
	dec bc			;63fa
	dec bc			;63fb
	ld a,(bc)		;63fc
	dec bc			;63fd
	dec bc			;63fe
	dec bc			;63ff
	ld c,h			;6400
	ld c,h			;6401
	ld c,h			;6402
	ld c,h			;6403
	ld c,h			;6404
	ld c,h			;6405
	ld c,(hl)		;6406
	ld c,h			;6407
	ld c,h			;6408
	ld c,(hl)		;6409
	ld c,h			;640a
	ld c,h			;640b
	ld c,a			;640c
	ld c,h			;640d
	ld c,h			;640e
	ld c,h			;640f
	dec bc			;6410
	dec bc			;6411
	dec bc			;6412
	ld a,(bc)		;6413
	dec bc			;6414
	dec bc			;6415
	dec bc			;6416
	dec bc			;6417
	dec bc			;6418
	dec bc			;6419
	dec bc			;641a
	dec bc			;641b
	dec bc			;641c
	dec bc			;641d
	dec bc			;641e
	dec bc			;641f
	ld c,h			;6420
	ld c,h			;6421
	ld c,h			;6422
	ld c,a			;6423
	ld c,h			;6424
	ld c,h			;6425
	ld c,(hl)		;6426
	ld c,h			;6427
	ld c,h			;6428
	ld c,(hl)		;6429
	ld c,h			;642a
	ld c,h			;642b
	ld c,h			;642c
	ld c,h			;642d
	ld c,h			;642e
	ld c,h			;642f
	inc c			;6430
	dec bc			;6431
	inc c			;6432
	rrca			;6433
	ld c,00ch		;6434
	dec bc			;6436
	rrca			;6437
	inc c			;6438
	inc b			;6439
	dec b			;643a
	ld c,005h		;643b
	inc b			;643d
	inc bc			;643e
	dec b			;643f
	inc b			;6440
	inc bc			;6441
	dec b			;6442
	ld c,005h		;6443
	inc b			;6445
	inc bc			;6446
	inc c			;6447
	rrca			;6448
	dec bc			;6449
	rrca			;644a
	inc c			;644b
	rrca			;644c
	inc c			;644d
	inc c			;644e
	rrca			;644f
	ld b,l			;6450
	ld b,l			;6451
	ld b,l			;6452
	ld b,l			;6453
	ld b,l			;6454
	ld b,l			;6455
	ld b,l			;6456
	ld b,l			;6457
	ld b,l			;6458
	ld b,l			;6459
	ld b,l			;645a
	ld b,l			;645b
	ld b,l			;645c
	ld b,l			;645d
	ld b,l			;645e
	ld b,l			;645f
	ld b,(hl)		;6460
	ld b,(hl)		;6461
	ld b,(hl)		;6462
	ld b,(hl)		;6463
	ld b,(hl)		;6464
	ld b,(hl)		;6465
	ld b,(hl)		;6466
	ld b,(hl)		;6467
	ld b,(hl)		;6468
	ld b,(hl)		;6469
	ld b,(hl)		;646a
	ld b,(hl)		;646b
	ld b,(hl)		;646c
	ld b,(hl)		;646d
	ld b,(hl)		;646e
	ld b,(hl)		;646f
	ld b,a			;6470
	ld b,a			;6471
	ld b,a			;6472
	ld b,a			;6473
	ld b,a			;6474
	ld b,a			;6475
	ld b,a			;6476
	ld b,a			;6477
	ld b,a			;6478
	ld b,a			;6479
	ld b,a			;647a
	ld b,a			;647b
	ld b,a			;647c
	ld b,a			;647d
	ld b,a			;647e
	ld b,a			;647f
	ld c,b			;6480
	ld c,b			;6481
	ld c,b			;6482
	ld c,b			;6483
	ld c,b			;6484
	ld c,b			;6485
	ld c,b			;6486
	ld c,b			;6487
	ld c,b			;6488
	ld c,b			;6489
	ld c,b			;648a
	ld c,b			;648b
	ld c,b			;648c
	ld c,b			;648d
	ld c,b			;648e
	ld c,b			;648f
	ld c,c			;6490
	ld c,c			;6491
	ld c,c			;6492
	ld c,c			;6493
	ld c,c			;6494
	ld c,c			;6495
	ld c,c			;6496
	ld c,c			;6497
	ld c,c			;6498
	ld c,c			;6499
	ld c,c			;649a
	ld c,c			;649b
	ld c,c			;649c
	ld c,c			;649d
	ld c,c			;649e
	ld c,c			;649f
	ld c,d			;64a0
	ld c,d			;64a1
	ld c,d			;64a2
	ld c,d			;64a3
	ld c,d			;64a4
	ld c,d			;64a5
	ld c,d			;64a6
	ld c,d			;64a7
	ld c,d			;64a8
	ld c,d			;64a9
	ld c,d			;64aa
	ld c,d			;64ab
	ld c,d			;64ac
	ld c,d			;64ad
	ld c,d			;64ae
	ld c,d			;64af
	ld c,e			;64b0
	ld c,e			;64b1
	ld c,e			;64b2
	ld c,e			;64b3
	ld c,e			;64b4
	ld c,e			;64b5
	ld c,e			;64b6
	ld c,e			;64b7
	ld c,e			;64b8
	ld c,e			;64b9
	ld c,e			;64ba
	ld c,e			;64bb
	ld c,e			;64bc
	ld c,e			;64bd
	ld c,e			;64be
	ld c,e			;64bf
	ld c,h			;64c0
	ld c,h			;64c1
	ld c,h			;64c2
	ld c,h			;64c3
	ld c,h			;64c4
	ld c,h			;64c5
	ld c,h			;64c6
	ld c,h			;64c7
	ld c,h			;64c8
	ld c,h			;64c9
	ld c,h			;64ca
	ld c,h			;64cb
	ld c,h			;64cc
	ld c,h			;64cd
	ld c,h			;64ce
	ld c,h			;64cf
	ld c,l			;64d0
	ld c,l			;64d1
	ld c,l			;64d2
	ld c,l			;64d3
	ld c,l			;64d4
	ld c,l			;64d5
	ld c,l			;64d6
	ld c,l			;64d7
	ld c,l			;64d8
	ld c,l			;64d9
	ld c,l			;64da
	ld c,l			;64db
	ld c,l			;64dc
	ld c,l			;64dd
	ld c,l			;64de
	ld c,l			;64df
	ld c,(hl)		;64e0
	ld c,(hl)		;64e1
	ld c,(hl)		;64e2
	ld c,(hl)		;64e3
	ld c,(hl)		;64e4
	ld c,(hl)		;64e5
	ld c,(hl)		;64e6
	ld c,(hl)		;64e7
	ld c,(hl)		;64e8
	ld c,(hl)		;64e9
	ld c,(hl)		;64ea
	ld c,(hl)		;64eb
	ld c,(hl)		;64ec
	ld c,(hl)		;64ed
	ld c,(hl)		;64ee
	ld c,(hl)		;64ef
	ld c,a			;64f0
	ld c,a			;64f1
	ld c,a			;64f2
	ld c,a			;64f3
	ld c,a			;64f4
	ld c,a			;64f5
	ld c,a			;64f6
	ld c,a			;64f7
	ld c,a			;64f8
	ld c,a			;64f9
	ld c,a			;64fa
	ld c,a			;64fb
	ld c,a			;64fc
	ld c,a			;64fd
	ld c,a			;64fe
	ld c,a			;64ff
	nop			;6500
	ld b,006h		;6501
	ld b,00dh		;6503
	dec bc			;6505
	dec bc			;6506
	dec bc			;6507
	dec bc			;6508
	dec bc			;6509
	dec bc			;650a
	dec bc			;650b
	dec bc			;650c
	dec bc			;650d
	dec bc			;650e
	dec bc			;650f
	ld b,b			;6510
	ld c,d			;6511
	ld c,d			;6512
	ld c,d			;6513
	ld c,(hl)		;6514
	ld c,(hl)		;6515
	ld c,(hl)		;6516
	ld c,h			;6517
	ld c,h			;6518
	ld c,h			;6519
	ld c,h			;651a
	ld c,h			;651b
	ld c,h			;651c
	ld c,h			;651d
	ld c,h			;651e
	ld c,h			;651f
	nop			;6520
	ld b,006h		;6521
	ld b,00dh		;6523
	ld b,006h		;6525
	ld b,006h		;6527
	ld b,00ah		;6529
	dec c			;652b
	ld a,(bc)		;652c
	ld b,006h		;652d
	ld b,040h		;652f
	ld c,d			;6531
	ld c,d			;6532
	ld c,d			;6533
	ld c,(hl)		;6534
	ld c,d			;6535
	ld c,d			;6536
	ld c,l			;6537
	ld c,l			;6538
	ld c,d			;6539
	ld c,l			;653a
	ld c,(hl)		;653b
	ld c,l			;653c
	ld c,l			;653d
	ld c,l			;653e
	ld c,l			;653f
	ld c,00bh		;6540
	dec bc			;6542
	dec bc			;6543
	dec bc			;6544
	dec bc			;6545
	ld b,00bh		;6546
	dec bc			;6548
	dec bc			;6549
	dec bc			;654a
	dec bc			;654b
	dec bc			;654c
	dec bc			;654d
	dec bc			;654e
	dec bc			;654f
	ld c,a			;6550
	ld c,h			;6551
	ld c,h			;6552
	ld c,h			;6553
	ld c,h			;6554
	ld c,h			;6555
	ld c,a			;6556
	ld b,(hl)		;6557
	ld b,(hl)		;6558
	ld c,h			;6559
	ld c,h			;655a
	ld c,h			;655b
	ld c,h			;655c
	ld c,h			;655d
	ld c,h			;655e
	ld c,h			;655f
	nop			;6560
	inc c			;6561
	dec bc			;6562
	ld b,006h		;6563
	ld b,00bh		;6565
	dec bc			;6567
	dec bc			;6568
	dec bc			;6569
	ld b,006h		;656a
	ld b,00bh		;656c
	dec bc			;656e
	dec bc			;656f
	ld b,b			;6570
	ld c,(hl)		;6571
	ld c,h			;6572
	ld c,d			;6573
	ld c,e			;6574
	ld c,e			;6575
	ld c,h			;6576
	ld c,h			;6577
	ld c,h			;6578
	ld c,h			;6579
	ld c,d			;657a
	ld c,e			;657b
	ld c,h			;657c
	ld c,h			;657d
	ld c,h			;657e
	ld c,h			;657f
	nop			;6580
	inc bc			;6581
	inc bc			;6582
	ld (bc),a		;6583
	ld (bc),a		;6584
	ld (bc),a		;6585
	ld (bc),a		;6586
	ld (bc),a		;6587
	ld (bc),a		;6588
	ld (bc),a		;6589
	ld (bc),a		;658a
	ld (bc),a		;658b
	ld (bc),a		;658c
	ld (bc),a		;658d
	ld (bc),a		;658e
	ld (bc),a		;658f
	ld (bc),a		;6590
	ld c,00eh		;6591
	inc bc			;6593
	inc bc			;6594
	ld (bc),a		;6595
	ld c,008h		;6596
	ld b,00dh		;6598
	inc bc			;659a
	ld c,00eh		;659b
	inc bc			;659d
	ld (bc),a		;659e
	ld bc,00b0bh		;659f
	ld c,00eh		;65a2
	ld b,00eh		;65a4
	ld b,006h		;65a6
	ld b,006h		;65a8
	ld b,006h		;65aa
	ld b,00bh		;65ac
	dec bc			;65ae
	dec bc			;65af
	ld c,h			;65b0
	ld c,h			;65b1
	ld c,l			;65b2
	ld c,l			;65b3
	ld c,l			;65b4
	ld c,l			;65b5
	ld c,l			;65b6
	ld c,l			;65b7
	ld c,l			;65b8
	ld c,l			;65b9
	ld c,l			;65ba
	ld c,e			;65bb
	ld c,l			;65bc
	ld c,h			;65bd
	ld c,h			;65be
	ld c,h			;65bf
	dec bc			;65c0
	dec bc			;65c1
	dec bc			;65c2
	dec bc			;65c3
	dec bc			;65c4
	dec bc			;65c5
	ld b,006h		;65c6
	dec bc			;65c8
	ld b,00bh		;65c9
	dec bc			;65cb
	dec bc			;65cc
	dec bc			;65cd
	dec bc			;65ce
	dec bc			;65cf
	ld c,h			;65d0
	ld c,h			;65d1
	ld c,h			;65d2
	ld c,h			;65d3
	ld c,h			;65d4
	ld c,h			;65d5
	ld c,h			;65d6
	ld c,h			;65d7
	ld b,(hl)		;65d8
	ld c,h			;65d9
	ld c,h			;65da
	ld c,h			;65db
	ld c,h			;65dc
	ld c,h			;65dd
	ld c,h			;65de
	ld c,h			;65df
	dec bc			;65e0
	dec c			;65e1
	ex af,af'		;65e2
	dec c			;65e3
	ex af,af'		;65e4
	dec bc			;65e5
	rlca			;65e6
	rlca			;65e7
	rlca			;65e8
	rlca			;65e9
	dec bc			;65ea
	ex af,af'		;65eb
	dec c			;65ec
	ex af,af'		;65ed
	dec c			;65ee
	dec bc			;65ef
	ld c,h			;65f0
	ld c,(hl)		;65f1
	ld c,h			;65f2
	ld c,(hl)		;65f3
	ld c,a			;65f4
	ld c,h			;65f5
	ld c,h			;65f6
	ld c,(hl)		;65f7
	ld c,e			;65f8
	ld c,h			;65f9
	ld c,h			;65fa
	ld c,a			;65fb
	ld c,(hl)		;65fc
	ld c,h			;65fd
	ld c,(hl)		;65fe
	ld c,h			;65ff
	dec bc			;6600
	inc c			;6601
	dec bc			;6602
	dec bc			;6603
	dec bc			;6604
	dec bc			;6605
	dec bc			;6606
	dec bc			;6607
	dec bc			;6608
	dec bc			;6609
	dec bc			;660a
	dec bc			;660b
	dec bc			;660c
	inc c			;660d
	dec bc			;660e
	dec bc			;660f
	ld c,h			;6610
	ld c,(hl)		;6611
	ld c,h			;6612
	ld c,h			;6613
	ld c,h			;6614
	ld c,h			;6615
	ld c,h			;6616
	ld c,(hl)		;6617
	ld c,h			;6618
	ld c,h			;6619
	ld c,h			;661a
	ld c,h			;661b
	ld c,h			;661c
	ld c,(hl)		;661d
	ld c,h			;661e
	ld c,h			;661f
	nop			;6620
	nop			;6621
	nop			;6622
	nop			;6623
	nop			;6624
	ld c,008h		;6625
	ld c,00dh		;6627
	ex af,af'		;6629
	ld c,000h		;662a
	nop			;662c
	nop			;662d
	nop			;662e
	nop			;662f
	ld b,008h		;6630
	ex af,af'		;6632
	dec c			;6633
	ex af,af'		;6634
	ld c,008h		;6635
	ld c,00eh		;6637
	ex af,af'		;6639
	dec c			;663a
	ex af,af'		;663b
	dec c			;663c
	ex af,af'		;663d
	ex af,af'		;663e
	ld b,00bh		;663f
	dec bc			;6641
	dec bc			;6642
	dec bc			;6643
	dec bc			;6644
	dec bc			;6645
	ex af,af'		;6646
	dec bc			;6647
	ex af,af'		;6648
	ld b,00bh		;6649
	dec bc			;664b
	dec bc			;664c
	dec bc			;664d
	dec bc			;664e
	dec bc			;664f
	ld c,h			;6650
	ld c,h			;6651
	ld c,(hl)		;6652
	ld c,h			;6653
	ld c,h			;6654
	ld c,h			;6655
	ld c,d			;6656
	ld c,(hl)		;6657
	ld c,d			;6658
	ld c,l			;6659
	ld c,h			;665a
	ld c,h			;665b
	ld c,h			;665c
	ld c,(hl)		;665d
	ld c,h			;665e
	ld c,h			;665f
	ld b,006h		;6660
	ld b,006h		;6662
	ex af,af'		;6664
	dec b			;6665
	ld b,005h		;6666
	dec b			;6668
	dec c			;6669
	dec c			;666a
	dec c			;666b
	dec c			;666c
	dec c			;666d
	dec b			;666e
	dec b			;666f
	ld c,c			;6670
	ld c,c			;6671
	ld c,h			;6672
	ld c,h			;6673
	ld c,(hl)		;6674
	ld c,b			;6675
	ld c,c			;6676
	ld c,b			;6677
	ld c,b			;6678
	ld c,(hl)		;6679
	ld c,(hl)		;667a
	ld c,(hl)		;667b
	ld c,(hl)		;667c
	ld c,(hl)		;667d
	ld c,(hl)		;667e
	ld c,(hl)		;667f
	nop			;6680
	add hl,bc		;6681
	ld b,006h		;6682
	add hl,bc		;6684
	ld b,006h		;6685
	dec c			;6687
	dec c			;6688
	dec c			;6689
	dec c			;668a
	dec c			;668b
	dec c			;668c
	dec c			;668d
	dec b			;668e
	nop			;668f
	ld b,b			;6690
	ld c,e			;6691
	ld c,h			;6692
	ld c,h			;6693
	ld c,(hl)		;6694
	ld c,b			;6695
	ld c,b			;6696
	ld c,(hl)		;6697
	ld c,(hl)		;6698
	ld c,(hl)		;6699
	ld c,(hl)		;669a
	ld c,(hl)		;669b
	ld c,(hl)		;669c
	ld c,(hl)		;669d
	ld c,(hl)		;669e
	ld b,b			;669f
	nop			;66a0
	nop			;66a1
	nop			;66a2
	dec b			;66a3
	dec c			;66a4
	dec c			;66a5
	add hl,bc		;66a6
	ld b,005h		;66a7
	dec c			;66a9
	dec c			;66aa
	dec b			;66ab
	nop			;66ac
	nop			;66ad
	nop			;66ae
	nop			;66af
	ld b,b			;66b0
	ld b,b			;66b1
	ld b,b			;66b2
	ld c,(hl)		;66b3
	ld c,(hl)		;66b4
	ld c,(hl)		;66b5
	ld c,(hl)		;66b6
	ld c,b			;66b7
	ld c,h			;66b8
	ld c,(hl)		;66b9
	ld c,(hl)		;66ba
	ld c,(hl)		;66bb
	ld b,b			;66bc
	ld b,b			;66bd
	ld b,b			;66be
	ld b,b			;66bf
	nop			;66c0
	dec c			;66c1
	dec c			;66c2
	dec c			;66c3
	dec c			;66c4
	dec c			;66c5
	dec c			;66c6
	dec c			;66c7
	dec b			;66c8
	dec b			;66c9
	ld b,009h		;66ca
	add hl,bc		;66cc
	ld b,006h		;66cd
	nop			;66cf
	ld b,b			;66d0
	ld c,(hl)		;66d1
	ld c,(hl)		;66d2
	ld c,(hl)		;66d3
	ld c,(hl)		;66d4
	ld c,(hl)		;66d5
	ld c,(hl)		;66d6
	ld c,(hl)		;66d7
	ld c,b			;66d8
	ld c,c			;66d9
	ld c,l			;66da
	ld c,(hl)		;66db
	ld c,(hl)		;66dc
	ld c,h			;66dd
	ld c,h			;66de
	ld b,b			;66df
	dec bc			;66e0
	dec bc			;66e1
	dec bc			;66e2
	dec bc			;66e3
	dec bc			;66e4
	rlca			;66e5
	rlca			;66e6
	rlca			;66e7
	rlca			;66e8
	rlca			;66e9
	rlca			;66ea
	dec bc			;66eb
	dec bc			;66ec
	dec bc			;66ed
	dec bc			;66ee
	dec bc			;66ef
	ld c,h			;66f0
	ld c,h			;66f1
	ld c,h			;66f2
	ld c,(hl)		;66f3
	ld c,h			;66f4
	ld c,h			;66f5
	ld c,(hl)		;66f6
	ld c,e			;66f7
	ld c,e			;66f8
	ld c,h			;66f9
	ld c,h			;66fa
	ld c,h			;66fb
	ld c,h			;66fc
	ld c,h			;66fd
	ld c,h			;66fe
	ld c,h			;66ff
	rlca			;6700
	rlca			;6701
	rlca			;6702
	rlca			;6703
	rlca			;6704
	rlca			;6705
	dec bc			;6706
	dec bc			;6707
	dec bc			;6708
	dec bc			;6709
	dec bc			;670a
	dec bc			;670b
	dec bc			;670c
	dec bc			;670d
	dec bc			;670e
	dec bc			;670f
	ld c,(hl)		;6710
	ld c,(hl)		;6711
	ld c,(hl)		;6712
	ld c,h			;6713
	ld c,e			;6714
	ld c,h			;6715
	ld c,h			;6716
	ld c,h			;6717
	ld c,h			;6718
	ld c,h			;6719
	ld c,h			;671a
	ld c,h			;671b
	ld c,h			;671c
	ld c,h			;671d
	ld c,h			;671e
	ld c,(hl)		;671f
	dec bc			;6720
	dec bc			;6721
	dec bc			;6722
	dec bc			;6723
	dec bc			;6724
	dec bc			;6725
	dec bc			;6726
	dec bc			;6727
	dec bc			;6728
	dec bc			;6729
	dec bc			;672a
	dec bc			;672b
	dec bc			;672c
	dec bc			;672d
	dec bc			;672e
	dec bc			;672f
	ld c,h			;6730
	ld c,h			;6731
	ld c,h			;6732
	ld c,h			;6733
	ld c,h			;6734
	ld c,h			;6735
	ld c,h			;6736
	ld c,h			;6737
	ld c,h			;6738
	ld c,h			;6739
	ld c,h			;673a
	ld c,h			;673b
	ld c,h			;673c
	ld c,h			;673d
	ld c,h			;673e
	ld c,h			;673f
	dec bc			;6740
	dec bc			;6741
	dec bc			;6742
	dec bc			;6743
	dec bc			;6744
	dec bc			;6745
	ld a,(bc)		;6746
	dec bc			;6747
	dec bc			;6748
	dec bc			;6749
	dec bc			;674a
	dec bc			;674b
	dec bc			;674c
	dec bc			;674d
	dec bc			;674e
	dec bc			;674f
	ld c,h			;6750
	ld c,h			;6751
	ld c,(hl)		;6752
	ld c,(hl)		;6753
	ld c,h			;6754
	ld c,h			;6755
	ld b,(hl)		;6756
	ld b,(hl)		;6757
	ld c,h			;6758
	ld c,h			;6759
	ld c,h			;675a
	ld c,h			;675b
	ld c,h			;675c
	ld c,h			;675d
	ld c,h			;675e
	ld c,h			;675f
	ld a,(bc)		;6760
	dec bc			;6761
	dec bc			;6762
	dec bc			;6763
	dec bc			;6764
	dec bc			;6765
	dec bc			;6766
	dec bc			;6767
	dec bc			;6768
	dec bc			;6769
	dec bc			;676a
	dec bc			;676b
	dec bc			;676c
	dec bc			;676d
	dec bc			;676e
	dec bc			;676f
	ld b,(hl)		;6770
	ld c,(hl)		;6771
	ld b,(hl)		;6772
	ld c,h			;6773
	ld c,h			;6774
	ld c,h			;6775
	ld c,h			;6776
	ld c,h			;6777
	ld c,h			;6778
	ld c,h			;6779
	ld c,h			;677a
	ld c,h			;677b
	ld c,h			;677c
	ld c,h			;677d
	ld c,h			;677e
	ld c,h			;677f
	nop			;6780
	nop			;6781
	ld a,(bc)		;6782
	dec bc			;6783
	dec bc			;6784
	dec bc			;6785
	dec bc			;6786
	dec bc			;6787
	dec bc			;6788
	dec bc			;6789
	dec bc			;678a
	dec bc			;678b
	dec bc			;678c
	dec bc			;678d
	dec bc			;678e
	dec bc			;678f
	ld b,b			;6790
	ld b,b			;6791
	ld b,(hl)		;6792
	ld c,(hl)		;6793
	ld b,(hl)		;6794
	ld c,h			;6795
	ld c,h			;6796
	ld c,h			;6797
	ld c,h			;6798
	ld c,h			;6799
	ld c,h			;679a
	ld c,h			;679b
	ld c,h			;679c
	ld c,h			;679d
	ld c,h			;679e
	ld c,h			;679f
	nop			;67a0
	nop			;67a1
	dec bc			;67a2
	ld a,(bc)		;67a3
	ld a,(bc)		;67a4
	dec bc			;67a5
	dec bc			;67a6
	dec bc			;67a7
	dec bc			;67a8
	dec bc			;67a9
	dec bc			;67aa
	dec bc			;67ab
	dec bc			;67ac
	dec bc			;67ad
	dec bc			;67ae
	dec bc			;67af
	ld b,b			;67b0
	ld b,b			;67b1
	ld b,(hl)		;67b2
	ld b,(hl)		;67b3
	ld b,(hl)		;67b4
	ld b,(hl)		;67b5
	ld b,(hl)		;67b6
	ld b,(hl)		;67b7
	ld c,h			;67b8
	ld c,h			;67b9
	ld c,h			;67ba
	ld c,h			;67bb
	ld c,h			;67bc
	ld c,h			;67bd
	ld c,h			;67be
	ld c,h			;67bf
	nop			;67c0
	nop			;67c1
	ld a,(bc)		;67c2
	dec bc			;67c3
	dec bc			;67c4
	dec bc			;67c5
	dec bc			;67c6
	dec bc			;67c7
	dec bc			;67c8
	dec bc			;67c9
	dec bc			;67ca
	dec bc			;67cb
	dec bc			;67cc
	dec bc			;67cd
	dec bc			;67ce
	dec bc			;67cf
	ld b,b			;67d0
	ld b,b			;67d1
	ld b,(hl)		;67d2
	ld c,(hl)		;67d3
	ld b,(hl)		;67d4
	ld c,h			;67d5
	ld c,h			;67d6
	ld c,h			;67d7
	ld c,h			;67d8
	ld c,h			;67d9
	ld c,h			;67da
	ld c,h			;67db
	ld c,h			;67dc
	ld c,h			;67dd
	ld c,h			;67de
	ld c,h			;67df
	ld a,(bc)		;67e0
	dec bc			;67e1
	dec bc			;67e2
	dec bc			;67e3
	dec bc			;67e4
	dec bc			;67e5
	dec bc			;67e6
	dec bc			;67e7
	dec bc			;67e8
	dec bc			;67e9
	dec bc			;67ea
	dec bc			;67eb
	dec bc			;67ec
	dec bc			;67ed
	dec bc			;67ee
	dec bc			;67ef
	ld b,(hl)		;67f0
	ld c,(hl)		;67f1
	ld b,(hl)		;67f2
	ld c,h			;67f3
	ld c,h			;67f4
	ld c,h			;67f5
	ld c,h			;67f6
	ld c,h			;67f7
	ld c,h			;67f8
	ld c,h			;67f9
	ld c,h			;67fa
	ld c,h			;67fb
	ld c,h			;67fc
	ld c,h			;67fd
	ld c,h			;67fe
	ld c,h			;67ff
	dec bc			;6800
	dec bc			;6801
	dec bc			;6802
	dec bc			;6803
	dec bc			;6804
	dec bc			;6805
	dec bc			;6806
	ld a,(bc)		;6807
	ld a,(bc)		;6808
	ld a,(bc)		;6809
	dec bc			;680a
	dec bc			;680b
	dec bc			;680c
	dec bc			;680d
	dec bc			;680e
	dec bc			;680f
	ld c,(hl)		;6810
	ld c,h			;6811
	ld c,h			;6812
	ld c,(hl)		;6813
	ld c,h			;6814
	ld c,h			;6815
	ld c,(hl)		;6816
	ld c,l			;6817
	ld c,l			;6818
	ld c,l			;6819
	ld c,(hl)		;681a
	ld c,(hl)		;681b
	ld c,h			;681c
	ld c,h			;681d
	ld c,h			;681e
	ld c,h			;681f
	nop			;6820
	nop			;6821
	nop			;6822
	nop			;6823
	dec bc			;6824
	inc c			;6825
	dec bc			;6826
	dec bc			;6827
	dec bc			;6828
	ld b,00bh		;6829
	dec bc			;682b
	dec bc			;682c
	inc c			;682d
	dec bc			;682e
	dec bc			;682f
	ld b,b			;6830
	ld b,b			;6831
	ld b,b			;6832
	ld b,b			;6833
	ld c,h			;6834
	ld c,(hl)		;6835
	ld c,h			;6836
	ld c,h			;6837
	ld c,h			;6838
	ld c,l			;6839
	ld c,(hl)		;683a
	ld c,h			;683b
	ld c,h			;683c
	ld c,(hl)		;683d
	ld c,h			;683e
	ld c,h			;683f
	dec bc			;6840
	dec bc			;6841
	dec bc			;6842
	dec bc			;6843
	dec bc			;6844
	dec bc			;6845
	ld b,00bh		;6846
	dec bc			;6848
	inc c			;6849
	dec bc			;684a
	dec bc			;684b
	nop			;684c
	nop			;684d
	nop			;684e
	nop			;684f
	ld c,h			;6850
	ld c,h			;6851
	ld c,h			;6852
	ld c,h			;6853
	ld c,h			;6854
	ld c,(hl)		;6855
	ld c,l			;6856
	ld c,h			;6857
	ld c,h			;6858
	ld c,(hl)		;6859
	ld c,h			;685a
	ld c,h			;685b
	ld b,b			;685c
	ld b,b			;685d
	ld b,b			;685e
	ld b,b			;685f
	ld a,(bc)		;6860
	ld a,(bc)		;6861
	ld a,(bc)		;6862
	dec bc			;6863
	dec bc			;6864
	dec bc			;6865
	dec bc			;6866
	dec bc			;6867
	dec bc			;6868
	dec bc			;6869
	dec bc			;686a
	dec bc			;686b
	dec bc			;686c
	dec bc			;686d
	dec bc			;686e
	dec bc			;686f
	ld b,(hl)		;6870
	ld b,(hl)		;6871
	ld b,(hl)		;6872
	ld c,h			;6873
	ld c,h			;6874
	ld c,h			;6875
	ld c,h			;6876
	ld c,h			;6877
	ld c,h			;6878
	ld c,(hl)		;6879
	ld c,h			;687a
	ld c,h			;687b
	ld c,h			;687c
	ld c,h			;687d
	ld c,h			;687e
	ld c,h			;687f
	dec bc			;6880
	dec bc			;6881
	dec bc			;6882
	dec bc			;6883
	dec bc			;6884
	dec bc			;6885
	dec bc			;6886
	dec bc			;6887
	dec bc			;6888
	dec bc			;6889
	dec bc			;688a
	dec bc			;688b
	dec bc			;688c
	ld a,(bc)		;688d
	ld a,(bc)		;688e
	ld a,(bc)		;688f
	ld c,h			;6890
	ld c,h			;6891
	ld c,h			;6892
	ld c,h			;6893
	ld c,h			;6894
	ld c,(hl)		;6895
	ld c,h			;6896
	ld c,h			;6897
	ld c,h			;6898
	ld c,h			;6899
	ld c,h			;689a
	ld c,h			;689b
	ld c,h			;689c
	ld b,(hl)		;689d
	ld b,(hl)		;689e
	ld b,(hl)		;689f
	rlca			;68a0
	rlca			;68a1
	rlca			;68a2
	dec bc			;68a3
	dec bc			;68a4
	dec bc			;68a5
	dec bc			;68a6
	dec bc			;68a7
	dec bc			;68a8
	dec bc			;68a9
	dec bc			;68aa
	dec bc			;68ab
	dec bc			;68ac
	dec bc			;68ad
	dec bc			;68ae
	dec bc			;68af
	ld c,(hl)		;68b0
	ld c,(hl)		;68b1
	ld c,(hl)		;68b2
	ld c,h			;68b3
	ld c,h			;68b4
	ld c,(hl)		;68b5
	ld c,(hl)		;68b6
	ld c,h			;68b7
	ld c,h			;68b8
	ld c,h			;68b9
	ld c,h			;68ba
	ld c,h			;68bb
	ld c,h			;68bc
	ld c,h			;68bd
	ld c,h			;68be
	ld c,h			;68bf
	rlca			;68c0
	rlca			;68c1
	rlca			;68c2
	dec bc			;68c3
	dec bc			;68c4
	dec bc			;68c5
	dec bc			;68c6
	dec bc			;68c7
	dec bc			;68c8
	dec bc			;68c9
	dec bc			;68ca
	dec bc			;68cb
	dec bc			;68cc
	dec bc			;68cd
	dec bc			;68ce
	dec bc			;68cf
	ld c,(hl)		;68d0
	ld c,(hl)		;68d1
	ld c,(hl)		;68d2
	ld b,a			;68d3
	ld c,(hl)		;68d4
	ld c,h			;68d5
	ld c,h			;68d6
	ld c,(hl)		;68d7
	ld c,h			;68d8
	ld c,h			;68d9
	ld c,h			;68da
	ld c,h			;68db
	ld b,a			;68dc
	ld b,a			;68dd
	ld b,a			;68de
	ld b,a			;68df
	dec bc			;68e0
	dec bc			;68e1
	inc c			;68e2
	dec bc			;68e3
	dec bc			;68e4
	dec bc			;68e5
	ld b,006h		;68e6
	ld b,006h		;68e8
	dec bc			;68ea
	dec bc			;68eb
	dec bc			;68ec
	inc c			;68ed
	dec bc			;68ee
	dec bc			;68ef
	ld c,h			;68f0
	ld c,h			;68f1
	ld c,(hl)		;68f2
	ld c,h			;68f3
	ld c,h			;68f4
	ld b,(hl)		;68f5
	ld c,d			;68f6
	ld c,d			;68f7
	ld c,d			;68f8
	ld c,d			;68f9
	ld b,(hl)		;68fa
	ld c,h			;68fb
	ld c,h			;68fc
	ld c,(hl)		;68fd
	ld c,h			;68fe
	ld c,h			;68ff
	nop			;6900
	dec bc			;6901
	dec bc			;6902
	dec c			;6903
	dec bc			;6904
	dec bc			;6905
	dec bc			;6906
	dec bc			;6907
	dec bc			;6908
	dec bc			;6909
	ld c,006h		;690a
	ld b,00bh		;690c
	dec bc			;690e
	dec bc			;690f
	ld b,b			;6910
	ld c,h			;6911
	ld c,h			;6912
	ld c,a			;6913
	ld c,h			;6914
	ld c,h			;6915
	ld c,h			;6916
	ld c,h			;6917
	ld c,h			;6918
	ld c,h			;6919
	ld c,l			;691a
	ld c,l			;691b
	ld c,h			;691c
	ld c,h			;691d
	ld c,h			;691e
	ld c,h			;691f
	dec bc			;6920
	dec bc			;6921
	dec bc			;6922
	dec bc			;6923
	dec bc			;6924
	ld b,006h		;6925
	ld b,006h		;6927
	ld b,00bh		;6929
	dec bc			;692b
	inc c			;692c
	dec bc			;692d
	dec bc			;692e
	dec bc			;692f
	ld c,(hl)		;6930
	ld c,(hl)		;6931
	ld c,(hl)		;6932
	ld c,(hl)		;6933
	ld c,(hl)		;6934
	ld c,h			;6935
	ld c,d			;6936
	ld c,d			;6937
	ld c,e			;6938
	ld c,e			;6939
	ld c,h			;693a
	ld c,h			;693b
	ld c,(hl)		;693c
	ld c,h			;693d
	ld c,h			;693e
	ld c,h			;693f
	dec bc			;6940
	ld b,00eh		;6941
	ld b,00bh		;6943
	dec bc			;6945
	dec bc			;6946
	dec bc			;6947
	dec bc			;6948
	dec bc			;6949
	dec bc			;694a
	dec bc			;694b
	dec bc			;694c
	dec bc			;694d
	dec bc			;694e
	dec bc			;694f
	ld c,h			;6950
	ld c,h			;6951
	ld c,a			;6952
	ld c,a			;6953
	ld c,h			;6954
	ld c,h			;6955
	ld c,h			;6956
	ld c,h			;6957
	ld c,h			;6958
	ld c,h			;6959
	ld c,h			;695a
	ld c,h			;695b
	ld c,h			;695c
	ld c,h			;695d
	ld c,h			;695e
	ld c,h			;695f
	dec bc			;6960
	inc c			;6961
	dec bc			;6962
	dec bc			;6963
	dec bc			;6964
	dec bc			;6965
	ld b,00ah		;6966
	ld a,(bc)		;6968
	ld b,00bh		;6969
	dec bc			;696b
	dec bc			;696c
	dec bc			;696d
	dec bc			;696e
	dec bc			;696f
	ld c,h			;6970
	ld c,(hl)		;6971
	ld c,h			;6972
	ld c,h			;6973
	ld c,h			;6974
	ld c,h			;6975
	ld c,l			;6976
	ld b,(hl)		;6977
	ld b,(hl)		;6978
	ld c,l			;6979
	ld c,h			;697a
	ld c,h			;697b
	ld c,h			;697c
	ld c,h			;697d
	ld c,h			;697e
	ld c,h			;697f
	dec bc			;6980
	dec bc			;6981
	dec bc			;6982
	dec bc			;6983
	dec bc			;6984
	dec bc			;6985
	ld b,006h		;6986
	ld b,006h		;6988
	dec bc			;698a
	dec bc			;698b
	dec bc			;698c
	dec bc			;698d
	dec bc			;698e
	dec bc			;698f
	ld c,h			;6990
	ld c,h			;6991
	ld c,(hl)		;6992
	ld c,h			;6993
	ld c,h			;6994
	ld c,h			;6995
	ld c,h			;6996
	ld c,d			;6997
	ld c,e			;6998
	ld c,h			;6999
	ld c,h			;699a
	ld c,h			;699b
	ld c,(hl)		;699c
	ld c,h			;699d
	ld c,h			;699e
	ld c,h			;699f
	nop			;69a0
	nop			;69a1
	nop			;69a2
	nop			;69a3
	inc bc			;69a4
	inc bc			;69a5
	ld b,008h		;69a6
	ld c,008h		;69a8
	inc bc			;69aa
	inc bc			;69ab
	nop			;69ac
	nop			;69ad
	nop			;69ae
	nop			;69af
	ld b,b			;69b0
	ld b,b			;69b1
	ld b,b			;69b2
	ld b,b			;69b3
	ld c,l			;69b4
	ld c,l			;69b5
	ld c,l			;69b6
	ld c,a			;69b7
	ld c,a			;69b8
	ld c,a			;69b9
	ld c,l			;69ba
	ld c,l			;69bb
	ld b,b			;69bc
	ld b,b			;69bd
	ld b,b			;69be
	ld b,b			;69bf
	inc c			;69c0
	dec bc			;69c1
	ld a,(bc)		;69c2
	ld b,006h		;69c3
	ld c,00bh		;69c5
	dec bc			;69c7
	dec bc			;69c8
	ld a,(bc)		;69c9
	ld b,006h		;69ca
	dec bc			;69cc
	dec bc			;69cd
	dec bc			;69ce
	nop			;69cf
	ld c,(hl)		;69d0
	ld c,h			;69d1
	ld c,h			;69d2
	ld c,e			;69d3
	ld c,e			;69d4
	ld c,e			;69d5
	ld c,h			;69d6
	ld c,h			;69d7
	ld c,h			;69d8
	ld c,a			;69d9
	ld c,h			;69da
	ld c,h			;69db
	ld c,h			;69dc
	ld c,h			;69dd
	ld c,h			;69de
	ld b,b			;69df
	dec bc			;69e0
	dec bc			;69e1
	dec bc			;69e2
	dec bc			;69e3
	dec bc			;69e4
	ld b,006h		;69e5
	ld b,006h		;69e7
	ld b,00bh		;69e9
	dec bc			;69eb
	dec bc			;69ec
	dec bc			;69ed
	dec bc			;69ee
	dec bc			;69ef
	ld c,h			;69f0
	ld c,h			;69f1
	ld c,h			;69f2
	ld c,h			;69f3
	ld c,h			;69f4
	ld c,e			;69f5
	ld c,e			;69f6
	ld c,e			;69f7
	ld c,h			;69f8
	ld c,h			;69f9
	ld c,h			;69fa
	ld c,h			;69fb
	ld c,h			;69fc
	ld c,h			;69fd
	ld c,h			;69fe
	ld c,h			;69ff
	dec bc			;6a00
	inc c			;6a01
	dec bc			;6a02
	dec bc			;6a03
	ld b,00bh		;6a04
	ld b,00bh		;6a06
	dec bc			;6a08
	dec bc			;6a09
	dec bc			;6a0a
	dec bc			;6a0b
	dec bc			;6a0c
	dec bc			;6a0d
	dec bc			;6a0e
	dec bc			;6a0f
	ld c,h			;6a10
	ld c,(hl)		;6a11
	ld c,h			;6a12
	ld c,h			;6a13
	ld c,l			;6a14
	ld c,(hl)		;6a15
	ld c,l			;6a16
	ld c,h			;6a17
	ld c,(hl)		;6a18
	ld c,h			;6a19
	ld c,h			;6a1a
	ld c,h			;6a1b
	ld c,h			;6a1c
	ld c,h			;6a1d
	ld c,h			;6a1e
	ld c,h			;6a1f
	dec bc			;6a20
	dec bc			;6a21
	inc c			;6a22
	dec bc			;6a23
	dec bc			;6a24
	dec bc			;6a25
	dec bc			;6a26
	ld a,(bc)		;6a27
	ld a,(bc)		;6a28
	ld b,00bh		;6a29
	dec bc			;6a2b
	dec bc			;6a2c
	dec bc			;6a2d
	dec bc			;6a2e
	dec bc			;6a2f
	ld c,h			;6a30
	ld c,h			;6a31
	ld c,(hl)		;6a32
	ld c,h			;6a33
	ld c,h			;6a34
	ld c,(hl)		;6a35
	ld c,(hl)		;6a36
	ld b,(hl)		;6a37
	ld c,e			;6a38
	ld c,l			;6a39
	ld c,h			;6a3a
	ld c,h			;6a3b
	ld c,h			;6a3c
	ld c,h			;6a3d
	ld c,h			;6a3e
	ld c,h			;6a3f
	nop			;6a40
	dec bc			;6a41
	inc c			;6a42
	dec bc			;6a43
	inc c			;6a44
	inc c			;6a45
	ld b,006h		;6a46
	ld b,006h		;6a48
	dec bc			;6a4a
	dec bc			;6a4b
	dec bc			;6a4c
	dec bc			;6a4d
	dec bc			;6a4e
	nop			;6a4f
	ld b,b			;6a50
	ld c,h			;6a51
	ld c,(hl)		;6a52
	ld c,h			;6a53
	ld c,(hl)		;6a54
	ld c,(hl)		;6a55
	ld c,e			;6a56
	ld c,d			;6a57
	ld c,e			;6a58
	ld c,e			;6a59
	ld c,h			;6a5a
	ld c,h			;6a5b
	ld c,h			;6a5c
	ld c,h			;6a5d
	ld c,h			;6a5e
	ld b,b			;6a5f
	ex af,af'		;6a60
	dec c			;6a61
	dec c			;6a62
	ex af,af'		;6a63
	dec c			;6a64
	dec c			;6a65
	dec c			;6a66
	dec c			;6a67
	dec c			;6a68
	dec c			;6a69
	dec c			;6a6a
	dec c			;6a6b
	dec c			;6a6c
	dec c			;6a6d
	nop			;6a6e
	nop			;6a6f
	ld c,(hl)		;6a70
	ld c,(hl)		;6a71
	ld c,(hl)		;6a72
	ld c,l			;6a73
	ld c,(hl)		;6a74
	ld c,(hl)		;6a75
	ld c,(hl)		;6a76
	ld c,(hl)		;6a77
	ld c,(hl)		;6a78
	ld c,(hl)		;6a79
	ld c,(hl)		;6a7a
	ld c,(hl)		;6a7b
	ld c,(hl)		;6a7c
	ld c,(hl)		;6a7d
	ld b,b			;6a7e
	ld b,b			;6a7f
	nop			;6a80
	dec bc			;6a81
	dec bc			;6a82
	dec bc			;6a83
	dec bc			;6a84
	dec bc			;6a85
	dec bc			;6a86
	dec bc			;6a87
	dec bc			;6a88
	dec bc			;6a89
	dec bc			;6a8a
	dec bc			;6a8b
	dec bc			;6a8c
	dec bc			;6a8d
	dec bc			;6a8e
	dec bc			;6a8f
	ld b,b			;6a90
	ld c,h			;6a91
	ld c,h			;6a92
	ld c,h			;6a93
	ld c,h			;6a94
	ld c,(hl)		;6a95
	ld c,h			;6a96
	ld c,(hl)		;6a97
	ld c,h			;6a98
	ld c,h			;6a99
	ld c,(hl)		;6a9a
	ld c,h			;6a9b
	ld c,h			;6a9c
	ld c,h			;6a9d
	ld c,h			;6a9e
	ld c,h			;6a9f
	dec bc			;6aa0
	ld b,006h		;6aa1
	ld b,006h		;6aa3
	dec bc			;6aa5
	ld b,00ah		;6aa6
	ld b,00bh		;6aa8
	dec bc			;6aaa
	ld b,006h		;6aab
	ld b,006h		;6aad
	dec bc			;6aaf
	ld c,h			;6ab0
	ld c,e			;6ab1
	ld c,e			;6ab2
	ld c,h			;6ab3
	ld c,e			;6ab4
	ld c,h			;6ab5
	ld c,e			;6ab6
	ld b,(hl)		;6ab7
	ld c,e			;6ab8
	ld c,h			;6ab9
	ld c,h			;6aba
	ld c,e			;6abb
	ld c,h			;6abc
	ld c,e			;6abd
	ld c,e			;6abe
	ld c,h			;6abf
	dec bc			;6ac0
	ld b,006h		;6ac1
	ld b,006h		;6ac3
	dec bc			;6ac5
	dec bc			;6ac6
	ld b,00ah		;6ac7
	ld b,00bh		;6ac9
	ld b,006h		;6acb
	ld b,006h		;6acd
	dec bc			;6acf
	ld c,h			;6ad0
	ld c,e			;6ad1
	ld c,e			;6ad2
	ld c,h			;6ad3
	ld c,e			;6ad4
	ld c,h			;6ad5
	ld c,h			;6ad6
	ld c,e			;6ad7
	ld b,(hl)		;6ad8
	ld c,e			;6ad9
	ld c,h			;6ada
	ld c,e			;6adb
	ld c,h			;6adc
	ld c,e			;6add
	ld c,e			;6ade
	ld c,h			;6adf
	dec bc			;6ae0
	dec bc			;6ae1
	dec bc			;6ae2
	dec bc			;6ae3
	dec bc			;6ae4
	dec bc			;6ae5
	ld b,00ah		;6ae6
	ld a,(bc)		;6ae8
	ld b,006h		;6ae9
	dec bc			;6aeb
	dec bc			;6aec
	dec bc			;6aed
	dec bc			;6aee
	dec bc			;6aef
	ld c,h			;6af0
	ld c,h			;6af1
	ld c,h			;6af2
	ld c,h			;6af3
	ld c,h			;6af4
	ld c,h			;6af5
	ld c,e			;6af6
	ld b,(hl)		;6af7
	ld b,(hl)		;6af8
	ld c,e			;6af9
	ld c,e			;6afa
	ld c,h			;6afb
	ld c,h			;6afc
	ld c,h			;6afd
	ld c,h			;6afe
	ld c,h			;6aff
	dec bc			;6b00
	dec bc			;6b01
	dec bc			;6b02
	dec bc			;6b03
	dec bc			;6b04
	ld b,006h		;6b05
	ld a,(bc)		;6b07
	ld a,(bc)		;6b08
	ld b,00bh		;6b09
	dec bc			;6b0b
	dec bc			;6b0c
	dec bc			;6b0d
	dec bc			;6b0e
	dec bc			;6b0f
	ld c,h			;6b10
	ld c,h			;6b11
	ld c,h			;6b12
	ld c,h			;6b13
	ld c,h			;6b14
	ld c,e			;6b15
	ld c,e			;6b16
	ld b,(hl)		;6b17
	ld b,(hl)		;6b18
	ld c,e			;6b19
	ld c,h			;6b1a
	ld c,h			;6b1b
	ld c,h			;6b1c
	ld c,h			;6b1d
	ld c,h			;6b1e
	ld c,h			;6b1f
	dec bc			;6b20
	rlca			;6b21
	rlca			;6b22
	rlca			;6b23
	rlca			;6b24
	dec bc			;6b25
	rlca			;6b26
	rlca			;6b27
	rlca			;6b28
	dec bc			;6b29
	dec bc			;6b2a
	rlca			;6b2b
	rlca			;6b2c
	rlca			;6b2d
	rlca			;6b2e
	dec bc			;6b2f
	ld c,h			;6b30
	ld c,e			;6b31
	ld c,e			;6b32
	ld c,(hl)		;6b33
	ld c,e			;6b34
	ld c,h			;6b35
	ld c,e			;6b36
	ld c,(hl)		;6b37
	ld c,e			;6b38
	ld c,h			;6b39
	ld c,h			;6b3a
	ld c,e			;6b3b
	ld c,(hl)		;6b3c
	ld c,e			;6b3d
	ld c,e			;6b3e
	ld c,h			;6b3f
	dec bc			;6b40
	rlca			;6b41
	rlca			;6b42
	rlca			;6b43
	rlca			;6b44
	dec bc			;6b45
	dec bc			;6b46
	rlca			;6b47
	rlca			;6b48
	rlca			;6b49
	dec bc			;6b4a
	rlca			;6b4b
	rlca			;6b4c
	rlca			;6b4d
	rlca			;6b4e
	dec bc			;6b4f
	ld c,h			;6b50
	ld c,e			;6b51
	ld c,e			;6b52
	ld c,(hl)		;6b53
	ld c,e			;6b54
	ld c,h			;6b55
	ld c,h			;6b56
	ld c,e			;6b57
	ld c,(hl)		;6b58
	ld c,e			;6b59
	ld c,h			;6b5a
	ld c,e			;6b5b
	ld c,(hl)		;6b5c
	ld c,e			;6b5d
	ld c,e			;6b5e
	ld c,h			;6b5f
	dec bc			;6b60
	dec bc			;6b61
	dec bc			;6b62
	dec bc			;6b63
	dec bc			;6b64
	dec bc			;6b65
	rlca			;6b66
	rlca			;6b67
	rlca			;6b68
	rlca			;6b69
	rlca			;6b6a
	dec bc			;6b6b
	dec bc			;6b6c
	dec bc			;6b6d
	dec bc			;6b6e
	dec bc			;6b6f
	ld c,h			;6b70
	ld c,h			;6b71
	ld c,h			;6b72
	ld c,h			;6b73
	ld c,h			;6b74
	ld c,h			;6b75
	ld c,e			;6b76
	ld c,(hl)		;6b77
	ld c,(hl)		;6b78
	ld c,(hl)		;6b79
	ld c,e			;6b7a
	ld c,h			;6b7b
	ld c,h			;6b7c
	ld c,h			;6b7d
	ld c,h			;6b7e
	ld c,h			;6b7f
	dec bc			;6b80
	dec bc			;6b81
	dec bc			;6b82
	dec bc			;6b83
	dec bc			;6b84
	rlca			;6b85
	rlca			;6b86
	rlca			;6b87
	rlca			;6b88
	rlca			;6b89
	dec bc			;6b8a
	dec bc			;6b8b
	dec bc			;6b8c
	dec bc			;6b8d
	dec bc			;6b8e
	dec bc			;6b8f
	ld c,h			;6b90
	ld c,h			;6b91
	ld c,h			;6b92
	ld c,h			;6b93
	ld c,h			;6b94
	ld c,e			;6b95
	ld c,(hl)		;6b96
	ld c,(hl)		;6b97
	ld c,(hl)		;6b98
	ld c,e			;6b99
	ld c,h			;6b9a
	ld c,h			;6b9b
	ld c,h			;6b9c
	ld c,h			;6b9d
	ld c,h			;6b9e
	ld c,h			;6b9f
	dec bc			;6ba0
	rlca			;6ba1
	rlca			;6ba2
	rlca			;6ba3
	rlca			;6ba4
	dec bc			;6ba5
	rlca			;6ba6
	rlca			;6ba7
	rlca			;6ba8
	rlca			;6ba9
	dec bc			;6baa
	dec bc			;6bab
	dec bc			;6bac
	dec bc			;6bad
	dec bc			;6bae
	dec bc			;6baf
	ld c,h			;6bb0
	ld c,e			;6bb1
	ld c,e			;6bb2
	ld c,(hl)		;6bb3
	ld c,e			;6bb4
	ld c,h			;6bb5
	ld c,e			;6bb6
	ld c,(hl)		;6bb7
	ld c,e			;6bb8
	ld c,h			;6bb9
	ld c,h			;6bba
	ld c,h			;6bbb
	ld c,h			;6bbc
	ld c,h			;6bbd
	ld c,h			;6bbe
	ld c,h			;6bbf
	dec bc			;6bc0
	dec bc			;6bc1
	inc c			;6bc2
	ld a,(bc)		;6bc3
	inc c			;6bc4
	dec bc			;6bc5
	ld c,00bh		;6bc6
	dec bc			;6bc8
	dec bc			;6bc9
	inc c			;6bca
	dec bc			;6bcb
	dec bc			;6bcc
	dec bc			;6bcd
	dec bc			;6bce
	dec bc			;6bcf
	ld c,h			;6bd0
	ld c,h			;6bd1
	ld b,(hl)		;6bd2
	ld c,e			;6bd3
	ld b,(hl)		;6bd4
	ld b,(hl)		;6bd5
	ld c,a			;6bd6
	ld c,h			;6bd7
	ld c,h			;6bd8
	ld c,h			;6bd9
	ld c,d			;6bda
	ld b,(hl)		;6bdb
	ld b,(hl)		;6bdc
	ld c,h			;6bdd
	ld c,h			;6bde
	ld c,h			;6bdf
	nop			;6be0
	nop			;6be1
	dec bc			;6be2
	ld c,00ch		;6be3
	ld c,00bh		;6be5
	ld c,006h		;6be7
	dec bc			;6be9
	dec bc			;6bea
	rrca			;6beb
	inc c			;6bec
	inc c			;6bed
	rrca			;6bee
	nop			;6bef
	dec bc			;6bf0
	dec bc			;6bf1
	inc c			;6bf2
	dec bc			;6bf3
	dec bc			;6bf4
	dec bc			;6bf5
	dec bc			;6bf6
	dec bc			;6bf7
	dec bc			;6bf8
	dec bc			;6bf9
	dec bc			;6bfa
	dec bc			;6bfb
	dec bc			;6bfc
	dec bc			;6bfd
	dec bc			;6bfe
	dec bc			;6bff
	ld c,h			;6c00
	ld c,h			;6c01
	ld c,(hl)		;6c02
	ld c,h			;6c03
	ld c,h			;6c04
	ld c,h			;6c05
	ld c,h			;6c06
	ld c,h			;6c07
	ld c,h			;6c08
	ld c,h			;6c09
	ld c,h			;6c0a
	ld c,h			;6c0b
	ld c,h			;6c0c
	ld c,h			;6c0d
	ld c,h			;6c0e
	ld c,h			;6c0f
	inc bc			;6c10
	ld c,00eh		;6c11
	inc bc			;6c13
	ld (bc),a		;6c14
	ld bc,0030eh		;6c15
	ld (bc),a		;6c18
	ld bc,00309h		;6c19
	ld (bc),a		;6c1c
	ld bc,00909h		;6c1d
	add hl,bc		;6c20
	ld bc,00202h		;6c21
	inc bc			;6c24
	ld c,00eh		;6c25
	inc bc			;6c27
	inc bc			;6c28
	ld (bc),a		;6c29
	ld (bc),a		;6c2a
	ld (bc),a		;6c2b
	ld bc,00101h		;6c2c
	nop			;6c2f
	ld bc,00302h		;6c30
	ld c,00eh		;6c33
	ld c,00eh		;6c35
	inc bc			;6c37
	inc bc			;6c38
	ld (bc),a		;6c39
	ld (bc),a		;6c3a
	ld (bc),a		;6c3b
	ld (bc),a		;6c3c
	ld bc,00001h		;6c3d
	add hl,bc		;6c40
	ld bc,00202h		;6c41
	inc bc			;6c44
	ld c,00eh		;6c45
	inc bc			;6c47
	inc bc			;6c48
	ld (bc),a		;6c49
	ld (bc),a		;6c4a
	ld (bc),a		;6c4b
	ld bc,00101h		;6c4c
	add hl,bc		;6c4f
	ld b,d			;6c50
	ld b,d			;6c51
	ld b,d			;6c52
	ld b,d			;6c53
	ld b,d			;6c54
	ld b,d			;6c55
	ld b,d			;6c56
	ld b,d			;6c57
	ld b,d			;6c58
	ld b,d			;6c59
	ld b,d			;6c5a
	ld b,d			;6c5b
	ld b,d			;6c5c
	ld b,d			;6c5d
	ld b,d			;6c5e
	ld b,d			;6c5f
	ex af,af'		;6c60
	ex af,af'		;6c61
	ex af,af'		;6c62
	ex af,af'		;6c63
	dec c			;6c64
	dec c			;6c65
	ex af,af'		;6c66
	dec c			;6c67
	dec c			;6c68
	dec c			;6c69
	dec c			;6c6a
	dec c			;6c6b
	dec c			;6c6c
	dec b			;6c6d
	dec b			;6c6e
	dec b			;6c6f
	ld c,(hl)		;6c70
	ld c,(hl)		;6c71
	ld c,(hl)		;6c72
	ld c,l			;6c73
	ld c,(hl)		;6c74
	ld c,(hl)		;6c75
	ld c,a			;6c76
	ld c,(hl)		;6c77
	ld c,(hl)		;6c78
	ld c,(hl)		;6c79
	ld c,(hl)		;6c7a
	ld c,(hl)		;6c7b
	ld c,(hl)		;6c7c
	ld c,a			;6c7d
	ld c,a			;6c7e
	ld c,a			;6c7f
	nop			;6c80
	nop			;6c81
	nop			;6c82
	rrca			;6c83
	rrca			;6c84
	rrca			;6c85
	ld c,00eh		;6c86
	rrca			;6c88
	rrca			;6c89
	rrca			;6c8a
	rrca			;6c8b
	rrca			;6c8c
	rrca			;6c8d
	rrca			;6c8e
	rrca			;6c8f
	ld b,(hl)		;6c90
	ld c,b			;6c91
	ld c,b			;6c92
	ld c,l			;6c93
	ld c,l			;6c94
	ld c,b			;6c95
	ld c,l			;6c96
	ld c,l			;6c97
	ld c,b			;6c98
	ld c,l			;6c99
	ld c,l			;6c9a
	ld c,l			;6c9b
	ld c,l			;6c9c
	ld c,l			;6c9d
	ld c,l			;6c9e
	ld b,(hl)		;6c9f
	nop			;6ca0
	nop			;6ca1
	nop			;6ca2
	rrca			;6ca3
	rrca			;6ca4
	rrca			;6ca5
	ld c,00eh		;6ca6
	rrca			;6ca8
	rrca			;6ca9
	rrca			;6caa
	rrca			;6cab
	rrca			;6cac
	rrca			;6cad
	rrca			;6cae
	rrca			;6caf
	ld b,(hl)		;6cb0
	ld c,b			;6cb1
	ld c,b			;6cb2
	ld c,l			;6cb3
	ld c,l			;6cb4
	ld c,b			;6cb5
	ld c,l			;6cb6
	ld c,l			;6cb7
	ld c,b			;6cb8
	ld c,l			;6cb9
	ld c,l			;6cba
	ld c,l			;6cbb
	ld c,l			;6cbc
	ld c,l			;6cbd
	ld c,l			;6cbe
	ld b,(hl)		;6cbf
	nop			;6cc0
	nop			;6cc1
	rrca			;6cc2
	rrca			;6cc3
	rrca			;6cc4
	rrca			;6cc5
	ld c,00eh		;6cc6
	rrca			;6cc8
	rrca			;6cc9
	rrca			;6cca
	rrca			;6ccb
	rrca			;6ccc
	rrca			;6ccd
	rrca			;6cce
	rrca			;6ccf
	ld b,b			;6cd0
	ld b,(hl)		;6cd1
	ld c,b			;6cd2
	ld c,l			;6cd3
	ld c,l			;6cd4
	ld c,b			;6cd5
	ld c,l			;6cd6
	ld c,l			;6cd7
	ld c,b			;6cd8
	ld c,l			;6cd9
	ld c,l			;6cda
	ld c,l			;6cdb
	ld c,l			;6cdc
	ld c,l			;6cdd
	ld b,(hl)		;6cde
	ld b,b			;6cdf
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
	nop			;6cea
	nop			;6ceb
	nop			;6cec
	nop			;6ced
	nop			;6cee
	nop			;6cef
	nop			;6cf0
	nop			;6cf1
	nop			;6cf2
	nop			;6cf3
	nop			;6cf4
	nop			;6cf5
	nop			;6cf6
	nop			;6cf7
	nop			;6cf8
	nop			;6cf9
	nop			;6cfa
	nop			;6cfb
	nop			;6cfc
	nop			;6cfd
	nop			;6cfe
	nop			;6cff
sub_6d00h:
	jp 0801fh		;6d00
	jp 080f4h		;6d03
	jp 00000h		;6d06
sub_6d09h:
	jp 0800fh		;6d09
	jp 08000h		;6d0c
	jp l6d30h		;6d0f
	jp l6e44h		;6d12
	jp l6d95h		;6d15
	jp l6d69h		;6d18
	jp l707dh		;6d1b
	rst 38h			;6d1e
	rst 38h			;6d1f
	rst 38h			;6d20
	rst 38h			;6d21
	rst 38h			;6d22
	rst 38h			;6d23
	rst 38h			;6d24
	rst 38h			;6d25
	rst 38h			;6d26
	rst 38h			;6d27
	rst 38h			;6d28
	rst 38h			;6d29
	rst 38h			;6d2a
	rst 38h			;6d2b
	rst 38h			;6d2c
	rst 38h			;6d2d
	rst 38h			;6d2e
	rst 38h			;6d2f
l6d30h:
	call sub_6d75h		;6d30
	ld a,(0ca10h)		;6d33
	call sub_6d00h		;6d36
	call 0476bh		;6d39
	ld hl,0c000h		;6d3c
	ld bc,005ffh		;6d3f
	call 04648h		;6d42
	ld a,001h		;6d45
	call 047dch		;6d47
	and 03eh		;6d4a
	cp 004h			;6d4c
	jr nz,l6d59h		;6d4e
	ld (0c0ebh),a		;6d50
	ld bc,00219h		;6d53
	call 00047h		;6d56
l6d59h:
	call sub_77fch		;6d59
	call sub_7683h		;6d5c
	call sub_6f99h		;6d5f
	call 04b8fh		;6d62
	call sub_6e77h		;6d65
	ret			;6d68
l6d69h:
	call sub_6d75h		;6d69
	call sub_6f99h		;6d6c
	call 0476bh		;6d6f
	jp 04b8fh		;6d72
sub_6d75h:
	ld hl,l705ch		;6d75
	ld b,009h		;6d78
	call 04a1fh		;6d7a
	ld a,(0ffe7h)		;6d7d
	and 008h		;6d80
	or 022h			;6d82
	ld b,a			;6d84
	ld c,008h		;6d85
	call 00047h		;6d87
	ld a,(0c0ebh)		;6d8a
	or a			;6d8d
	ret z			;6d8e
	ld bc,00219h		;6d8f
	jp 00047h		;6d92
l6d95h:
	ld a,(0ca10h)		;6d95
	cp 004h			;6d98
	push af			;6d9a
	call z,sub_6dc3h	;6d9b
	pop af			;6d9e
	cp 008h			;6d9f
	call z,sub_6dbdh	;6da1
	call sub_7203h		;6da4
	call sub_7ab5h		;6da7
	ld a,(0c0d4h)		;6daa
	dec a			;6dad
	jr z,l6debh		;6dae
	dec a			;6db0
	jr z,l6deeh		;6db1
	jp p,l6e08h		;6db3
	call sub_7ac4h		;6db6
	call sub_7755h		;6db9
	ret			;6dbc
sub_6dbdh:
	ld a,(0ca02h)		;6dbd
	and 003h		;6dc0
	ret nz			;6dc2
sub_6dc3h:
	di			;6dc3
	ld a,(0c0b5h)		;6dc4
	or a			;6dc7
	jr nz,l6de9h		;6dc8
	ld a,(0c0b4h)		;6dca
	cp 004h			;6dcd
	ret nc			;6dcf
	ld a,(0c0dbh)		;6dd0
	inc a			;6dd3
	cp 006h			;6dd4
	jr c,l6dd9h		;6dd6
	xor a			;6dd8
l6dd9h:
	ld (0c0dbh),a		;6dd9
	cp 004h			;6ddc
	jr c,l6de4h		;6dde
	neg			;6de0
	add a,006h		;6de2
l6de4h:
	set 7,a			;6de4
	ld (0c0b5h),a		;6de6
l6de9h:
	ei			;6de9
	ret			;6dea
l6debh:
	call sub_6d09h		;6deb
l6deeh:
	xor a			;6dee
	ld d,a			;6def
	ld e,a			;6df0
	ld (0ca1ch),de		;6df1
	ld (0ca1ah),de		;6df5
	ld (0ca14h),de		;6df9
	ld (0ca12h),de		;6dfd
	ld (0c0d5h),a		;6e01
	ld hl,0c0d4h		;6e04
	inc (hl)		;6e07
l6e08h:
	call sub_6e37h		;6e08
sub_6e0bh:
	ld c,018h		;6e0b
	ld de,00010h		;6e0d
	ld hl,0d988h		;6e10
	xor a			;6e13
l6e14h:
	ld b,004h		;6e14
l6e16h:
	ld (hl),a		;6e16
	inc hl			;6e17
	ld (hl),a		;6e18
	inc hl			;6e19
	ld (hl),a		;6e1a
	inc hl			;6e1b
	ld (hl),a		;6e1c
	inc hl			;6e1d
	ld (hl),a		;6e1e
	inc hl			;6e1f
	ld (hl),a		;6e20
	inc hl			;6e21
	ld (hl),a		;6e22
	inc hl			;6e23
	ld (hl),a		;6e24
	inc hl			;6e25
	djnz l6e16h		;6e26
	add hl,de		;6e28
	dec c			;6e29
	jr nz,l6e14h		;6e2a
	ret			;6e2c
sub_6e2dh:
	ld hl,0e000h		;6e2d
	ld bc,007ffh		;6e30
	call 04648h		;6e33
	ret			;6e36
sub_6e37h:
	ld hl,(0c0dch)		;6e37
	ld (0ca12h),hl		;6e3a
	ld hl,(0c0deh)		;6e3d
	ld (0ca14h),hl		;6e40
	ret			;6e43
l6e44h:
	call sub_7070h		;6e44
	ld a,(0c09bh)		;6e47
	rrca			;6e4a
	call sub_6f43h		;6e4b
	call sub_707eh		;6e4e
	ld a,(0ca10h)		;6e51
	or a			;6e54
	call z,sub_6e8ah	;6e55
	ld a,(0ca10h)		;6e58
	cp 002h			;6e5b
	call z,sub_6e97h	;6e5d
	call sub_7683h		;6e60
	ld a,001h		;6e63
	ld (0c09ch),a		;6e65
	ld a,(0ef60h)		;6e68
	rlca			;6e6b
	ret nc			;6e6c
	rlca			;6e6d
	jp c,04cf5h		;6e6e
	ld a,0c0h		;6e71
	ld (0ef60h),a		;6e73
	ret			;6e76
sub_6e77h:
	xor a			;6e77
	ld (0c0eah),a		;6e78
	ld hl,0e800h		;6e7b
	ld b,018h		;6e7e
l6e80h:
	call 04678h		;6e80
	and 01fh		;6e83
	ld (hl),a		;6e85
	inc hl			;6e86
	djnz l6e80h		;6e87
	ret			;6e89
sub_6e8ah:
	ld de,00020h		;6e8a
	ld b,0cdh		;6e8d
	jr l6e9ch		;6e8f
l6e91h:
	ld a,001h		;6e91
	ld (0c0eah),a		;6e93
	ret			;6e96
sub_6e97h:
	ld de,0ffe0h		;6e97
	ld b,05fh		;6e9a
l6e9ch:
	ld a,(0c0d4h)		;6e9c
	or a			;6e9f
	jr nz,l6e91h		;6ea0
	ld a,(0c0eah)		;6ea2
	or a			;6ea5
	ret nz			;6ea6
	push bc			;6ea7
	push de			;6ea8
	ld de,(0c0e6h)		;6ea9
	ld hl,(0ca12h)		;6ead
	call 04612h		;6eb0
	add hl,de		;6eb3
	ld a,d			;6eb4
	cp h			;6eb5
	ld (0c0e6h),hl		;6eb6
	call nz,sub_6f20h	;6eb9
	ld hl,(0c0e8h)		;6ebc
	ld de,(0ca14h)		;6ebf
	add hl,de		;6ec3
	pop de			;6ec4
	add hl,de		;6ec5
	ld (0c0e8h),hl		;6ec6
	ld de,(0ca1ch)		;6ec9
	ld d,000h		;6ecd
	add hl,de		;6ecf
	ld a,l			;6ed0
	srl a			;6ed1
	srl a			;6ed3
	srl a			;6ed5
	srl a			;6ed7
	srl a			;6ed9
	neg			;6edb
	pop bc			;6edd
	add a,b			;6ede
	push hl			;6edf
	exx			;6ee0
	pop hl			;6ee1
	ld l,a			;6ee2
	exx			;6ee3
	ld de,0e800h		;6ee4
	ld hl,0d988h		;6ee7
	ld b,018h		;6eea
l6eech:
	push bc			;6eec
	push hl			;6eed
	ld a,(de)		;6eee
	inc de			;6eef
	exx			;6ef0
	add a,h			;6ef1
	and 01fh		;6ef2
	exx			;6ef4
	ld c,a			;6ef5
	ld b,000h		;6ef6
	add hl,bc		;6ef8
	ld a,(hl)		;6ef9
	or a			;6efa
	jr nz,l6f01h		;6efb
	exx			;6efd
	ld a,l			;6efe
	exx			;6eff
	ld (hl),a		;6f00
l6f01h:
	pop hl			;6f01
	push hl			;6f02
	ld a,(de)		;6f03
	exx			;6f04
	add a,h			;6f05
	add a,00dh		;6f06
	and 01fh		;6f08
	exx			;6f0a
	ld c,a			;6f0b
	ld b,000h		;6f0c
	add hl,bc		;6f0e
	ld a,(hl)		;6f0f
	or a			;6f10
	jr nz,l6f17h		;6f11
	exx			;6f13
	ld a,l			;6f14
	exx			;6f15
	ld (hl),a		;6f16
l6f17h:
	pop hl			;6f17
	ld bc,00030h		;6f18
	add hl,bc		;6f1b
	pop bc			;6f1c
	djnz l6eech		;6f1d
	ret			;6f1f
sub_6f20h:
	ld a,(0c0d5h)		;6f20
	cp 002h			;6f23
	jr z,l6f35h		;6f25
	ld de,0e817h		;6f27
	ld hl,0e816h		;6f2a
	ld bc,00017h		;6f2d
	ld a,(de)		;6f30
	lddr			;6f31
	ld (de),a		;6f33
	ret			;6f34
l6f35h:
	ld de,0e800h		;6f35
	ld hl,0e801h		;6f38
	ld bc,00017h		;6f3b
	ld a,(de)		;6f3e
	ldir			;6f3f
	ld (de),a		;6f41
	ret			;6f42
sub_6f43h:
	jr c,l6f6fh		;6f43
	ld a,(0c0d2h)		;6f45
	sub 01ch		;6f48
	ld (0c9c5h),a		;6f4a
	add a,06ch		;6f4d
	ld (0c9cfh),a		;6f4f
	ld a,(0c0ebh)		;6f52
	or a			;6f55
	jr nz,l6f65h		;6f56
	ld a,(0c0bbh)		;6f58
	and 007h		;6f5b
	sub 008h		;6f5d
	and 00fh		;6f5f
	ld (0c9c7h),a		;6f61
	ret			;6f64
l6f65h:
	ld a,(0c0bbh)		;6f65
	cpl			;6f68
	and 007h		;6f69
	ld (0c9c7h),a		;6f6b
	ret			;6f6e
l6f6fh:
	ld a,(0c0d2h)		;6f6f
	sub 01ch		;6f72
	ld (0c9f1h),a		;6f74
	add a,08ch		;6f77
	ld (0c9fbh),a		;6f79
	ld a,(0c0ebh)		;6f7c
	or a			;6f7f
	jr nz,l6f8fh		;6f80
	ld a,(0c0bbh)		;6f82
	and 007h		;6f85
	sub 008h		;6f87
	and 00fh		;6f89
	ld (0c9f3h),a		;6f8b
	ret			;6f8e
l6f8fh:
	ld a,(0c0bbh)		;6f8f
	cpl			;6f92
	and 007h		;6f93
	ld (0c9f3h),a		;6f95
	ret			;6f98
sub_6f99h:
	ld de,0c9beh		;6f99
	ld hl,l7007h		;6f9c
	ld bc,00015h		;6f9f
	ldir			;6fa2
	ld de,0c9eah		;6fa4
	ld hl,l7034h		;6fa7
	ld bc,00015h		;6faa
	ldir			;6fad
	ld de,0c948h		;6faf
	ld hl,l7002h		;6fb2
	ld bc,00005h		;6fb5
	ldir			;6fb8
	ld de,0c978h		;6fba
	ld hl,l702fh		;6fbd
	ld bc,00005h		;6fc0
	ldir			;6fc3
	ld de,0c9a8h		;6fc5
	ld hl,l701ch		;6fc8
	ld bc,00013h		;6fcb
	ldir			;6fce
	ld de,0c9d4h		;6fd0
	ld hl,l7049h		;6fd3
	ld bc,00013h		;6fd6
	ldir			;6fd9
	ld a,(0ffe7h)		;6fdb
	and 028h		;6fde
	ld (0c9c3h),a		;6fe0
	ld (0c9efh),a		;6fe3
	or 002h			;6fe6
	ld (0c9abh),a		;6fe8
	ld (0c9d7h),a		;6feb
	ld a,(0c0ebh)		;6fee
	or a			;6ff1
	ret z			;6ff2
	ld a,09bh		;6ff3
	ld (0c9c8h),a		;6ff5
	ld (0c9f4h),a		;6ff8
	ld (0c9b0h),a		;6ffb
	ld (0c9dch),a		;6ffe
	ret			;7001
l7002h:
	inc b			;7002
	rst 28h			;7003
	add a,l			;7004
	inc b			;7005
	add a,b			;7006
l7007h:
	inc d			;7007
	ld (00481h),hl		;7008
	add a,b			;700b
	ex af,af'		;700c
	adc a,b			;700d
	nop			;700e
	sub a			;700f
	nop			;7010
	sub d			;7011
	jr nc,$-124		;7012
	rst 20h			;7014
	add a,l			;7015
	ld h,d			;7016
	add a,c			;7017
	nop			;7018
	sub e			;7019
	inc d			;701a
	add a,b			;701b
l701ch:
	ld (de),a		;701c
	ld (00a81h),hl		;701d
	adc a,b			;7020
	ret nz			;7021
	sub a			;7022
	nop			;7023
	sub d			;7024
	ccf			;7025
	add a,d			;7026
	rst 20h			;7027
	add a,l			;7028
	in a,(093h)		;7029
	ld h,d			;702b
	add a,c			;702c
	ld d,080h		;702d
l702fh:
	inc b			;702f
	rst 38h			;7030
	add a,l			;7031
	inc b			;7032
	add a,b			;7033
l7034h:
	inc d			;7034
	ld (00481h),hl		;7035
	add a,b			;7038
	ex af,af'		;7039
	adc a,b			;703a
	ret nz			;703b
	sub a			;703c
	nop			;703d
	sub d			;703e
	ld sp,0f782h		;703f
	add a,l			;7042
	ld h,d			;7043
	add a,c			;7044
	nop			;7045
	sub e			;7046
	inc d			;7047
	add a,b			;7048
l7049h:
	ld (de),a		;7049
	ld (00a81h),hl		;704a
	adc a,b			;704d
	ret nz			;704e
	sub a			;704f
	nop			;7050
	sub d			;7051
	ccf			;7052
	add a,d			;7053
	rst 30h			;7054
	add a,l			;7055
	in a,(093h)		;7056
	ld h,d			;7058
	add a,c			;7059
	ld d,080h		;705a
l705ch:
	nop			;705c
	inc b			;705d
	ld b,019h		;705e
	ld (bc),a		;7060
	jr nc,$+11		;7061
	add a,b			;7063
	inc b			;7064
	inc bc			;7065
	inc bc			;7066
	rst 38h			;7067
	ld a,(bc)		;7068
	nop			;7069
	ld bc,00762h		;706a
	rst 38h			;706d
	ex af,af'		;706e
	ld a,(bc)		;706f
sub_7070h:
	ld a,(0c0d8h)		;7070
	or a			;7073
	ret z			;7074
	dec a			;7075
	ld (0c0d8h),a		;7076
	ret nz			;7079
	jp 04da9h		;707a
l707dh:
	ret			;707d
sub_707eh:
	call sub_7221h		;707e
	call sub_70e4h		;7081
	ret			;7084
	ld hl,0c000h		;7085
	ld bc,0007fh		;7088
	call 04648h		;708b
	ld hl,0c180h		;708e
	ld bc,0007fh		;7091
	call 04648h		;7094
	ld hl,0c280h		;7097
	ld bc,0007fh		;709a
	call 04648h		;709d
	ret			;70a0
	ld a,(ix+01ah)		;70a1
	or a			;70a4
	ld h,0c0h		;70a5
	call z,sub_70d3h	;70a7
	ld l,a			;70aa
	inc l			;70ab
	res 7,(hl)		;70ac
	dec l			;70ae
	ld (hl),e		;70af
	inc h			;70b0
	ld (hl),d		;70b1
	inc h			;70b2
	ld (hl),a		;70b3
	inc h			;70b4
	ld (hl),c		;70b5
	ret			;70b6
	ld a,(ix+01ah)		;70b7
	or a			;70ba
	ld h,0c0h		;70bb
	call z,sub_70cfh	;70bd
	ld l,a			;70c0
	inc l			;70c1
	res 7,(hl)		;70c2
	dec l			;70c4
	ld (hl),e		;70c5
	inc h			;70c6
	ld (hl),d		;70c7
	inc h			;70c8
	ld (hl),a		;70c9
	inc h			;70ca
	ld (hl),c		;70cb
	inc h			;70cc
	ld (hl),b		;70cd
	ret			;70ce
sub_70cfh:
	ld l,03bh		;70cf
	jr l70d5h		;70d1
sub_70d3h:
	ld l,009h		;70d3
l70d5h:
	call sub_70ddh		;70d5
	ld (hl),00fh		;70d8
	dec l			;70da
	ld a,l			;70db
	ret			;70dc
sub_70ddh:
	xor a			;70dd
l70deh:
	cp (hl)			;70de
	ret z			;70df
	inc l			;70e0
	inc l			;70e1
	jr l70deh		;70e2
sub_70e4h:
	ld a,(0c09bh)		;70e4
	rrca			;70e7
	jp nc,l713fh		;70e8
	ld hl,0fa00h		;70eb
	ld de,0c4b9h		;70ee
	push de			;70f1
	call sub_70f7h		;70f2
	pop de			;70f5
	inc d			;70f6
sub_70f7h:
	xor a			;70f7
	call 046f0h		;70f8
	push hl			;70fb
	ex de,hl		;70fc
	call sub_7106h		;70fd
	pop hl			;7100
	ld de,00400h		;7101
	add hl,de		;7104
	ret			;7105
sub_7106h:
	ld a,(00007h)		;7106
	ld c,a			;7109
	ld de,0fff0h		;710a
	call sub_7117h		;710d
	ld de,00080h		;7110
	add hl,de		;7113
	ld de,0fff0h		;7114
sub_7117h:
	ld a,004h		;7117
l7119h:
	outi			;7119
	outi			;711b
	outi			;711d
	outi			;711f
	outi			;7121
	outi			;7123
	outi			;7125
	outi			;7127
	add hl,de		;7129
	outi			;712a
	outi			;712c
	outi			;712e
	outi			;7130
	outi			;7132
	outi			;7134
	outi			;7136
	outi			;7138
	add hl,de		;713a
	dec a			;713b
	jr nz,l7119h		;713c
	ret			;713e
l713fh:
	ld hl,0f200h		;713f
	ld de,0c1c1h		;7142
	push de			;7145
	call sub_714bh		;7146
	pop de			;7149
	inc d			;714a
sub_714bh:
	xor a			;714b
	call 046f0h		;714c
	push hl			;714f
	ex de,hl		;7150
	call sub_715ah		;7151
	pop hl			;7154
	ld de,00400h		;7155
	add hl,de		;7158
	ret			;7159
sub_715ah:
	ld a,(00007h)		;715a
	ld c,a			;715d
	call sub_7165h		;715e
	ld de,0ff80h		;7161
	add hl,de		;7164
sub_7165h:
	ld a,004h		;7165
l7167h:
	outi			;7167
	outi			;7169
	outi			;716b
	outi			;716d
	outi			;716f
	outi			;7171
	outi			;7173
	outi			;7175
	outi			;7177
	outi			;7179
	outi			;717b
	outi			;717d
	outi			;717f
	outi			;7181
	outi			;7183
	outi			;7185
	dec a			;7187
	jr nz,l7167h		;7188
	ret			;718a
l718bh:
	ld a,(hl)		;718b
	ld (de),a		;718c
	bit 7,e			;718d
	ret z			;718f
	push hl			;7190
	push de			;7191
	ld b,a			;7192
	ld a,d			;7193
	sub 0c1h		;7194
	cp 003h			;7196
	jp nc,l71adh		;7198
	add a,a			;719b
	add a,038h		;719c
	ld h,a			;719e
	ld a,e			;719f
	add a,040h		;71a0
	and 07ch		;71a2
	add a,a			;71a4
	ld l,a			;71a5
	add hl,hl		;71a6
	call sub_71c3h		;71a7
	pop de			;71aa
	pop hl			;71ab
	ret			;71ac
l71adh:
	dec a			;71ad
	add a,a			;71ae
	add a,038h		;71af
	ld h,a			;71b1
	ld a,e			;71b2
	add a,040h		;71b3
	cpl			;71b5
	and 07ch		;71b6
	xor 004h		;71b8
	add a,a			;71ba
	ld l,a			;71bb
	add hl,hl		;71bc
	call sub_71c3h		;71bd
	pop de			;71c0
	pop hl			;71c1
	ret			;71c2
sub_71c3h:
	ld a,(00007h)		;71c3
	inc a			;71c6
	ld c,a			;71c7
	ld a,003h		;71c8
	di			;71ca
	out (c),a		;71cb
	ld a,08eh		;71cd
	out (c),a		;71cf
	ld a,l			;71d1
	out (c),a		;71d2
	ld a,h			;71d4
	out (c),a		;71d5
	ei			;71d7
	ld a,b			;71d8
	dec c			;71d9
	ld l,a			;71da
	ld h,006h		;71db
	add hl,hl		;71dd
	add hl,hl		;71de
	add hl,hl		;71df
	add hl,hl		;71e0
	outi			;71e1
	outi			;71e3
	outi			;71e5
	outi			;71e7
	outi			;71e9
	outi			;71eb
	outi			;71ed
	outi			;71ef
	outi			;71f1
	outi			;71f3
	outi			;71f5
	outi			;71f7
	outi			;71f9
	outi			;71fb
	outi			;71fd
	outi			;71ff
	ei			;7201
	ret			;7202
sub_7203h:
	di			;7203
	ld hl,0c09ch		;7204
	ld a,(0c09bh)		;7207
	xor (hl)		;720a
	ei			;720b
	rrca			;720c
	jr c,l7213h		;720d
	ld a,0c0h		;720f
	jr l7215h		;7211
l7213h:
	ld a,0c3h		;7213
l7215h:
	ld (0c0aah),a		;7215
	inc a			;7218
	ld (0c0a6h),a		;7219
	inc a			;721c
	ld (0c0a8h),a		;721d
	ret			;7220
sub_7221h:
	exx			;7221
	ld a,(0c09bh)		;7222
	rrca			;7225
	jr c,l7230h		;7226
	ld bc,04060h		;7228
	ld de,0c0f0h		;722b
	jr l7236h		;722e
l7230h:
	ld bc,l6080h		;7230
	ld de,0c0f0h		;7233
l7236h:
	ld h,007h		;7236
	ld a,(0c0ebh)		;7238
	or a			;723b
	jr nz,l7244h		;723c
	ld a,(0c0bbh)		;723e
	and 007h		;7241
	ld h,a			;7243
l7244h:
	ld a,(0c0d2h)		;7244
	ld l,a			;7247
	push hl			;7248
	exx			;7249
	pop de			;724a
	call sub_7255h		;724b
	call sub_7470h		;724e
	call sub_72d5h		;7251
	ret			;7254
sub_7255h:
	ld a,e			;7255
	sub 018h		;7256
	cp 0d8h			;7258
	jr nz,l725dh		;725a
	inc a			;725c
l725dh:
	ld e,a			;725d
	ld (0c099h),a		;725e
	ld a,(0c09bh)		;7261
	rrca			;7264
	jr nc,l729eh		;7265
	ld hl,0c481h		;7267
	ld b,008h		;726a
l726ch:
	ld (hl),e		;726c
	inc l			;726d
	inc l			;726e
	inc l			;726f
	inc l			;7270
	ld (hl),e		;7271
	inc l			;7272
	inc l			;7273
	inc l			;7274
	inc l			;7275
	ld (hl),e		;7276
	inc l			;7277
	inc l			;7278
	inc l			;7279
	inc l			;727a
	ld (hl),e		;727b
	inc l			;727c
	inc l			;727d
	inc l			;727e
	inc l			;727f
	djnz l726ch		;7280
	ld hl,0c581h		;7282
	ld b,008h		;7285
l7287h:
	ld (hl),e		;7287
	inc l			;7288
	inc l			;7289
	inc l			;728a
	inc l			;728b
	ld (hl),e		;728c
	inc l			;728d
	inc l			;728e
	inc l			;728f
	inc l			;7290
	ld (hl),e		;7291
	inc l			;7292
	inc l			;7293
	inc l			;7294
	inc l			;7295
	ld (hl),e		;7296
	inc l			;7297
	inc l			;7298
	inc l			;7299
	inc l			;729a
	djnz l7287h		;729b
	ret			;729d
l729eh:
	ld hl,0c181h		;729e
	ld b,008h		;72a1
l72a3h:
	ld (hl),e		;72a3
	inc l			;72a4
	inc l			;72a5
	inc l			;72a6
	inc l			;72a7
	ld (hl),e		;72a8
	inc l			;72a9
	inc l			;72aa
	inc l			;72ab
	inc l			;72ac
	ld (hl),e		;72ad
	inc l			;72ae
	inc l			;72af
	inc l			;72b0
	inc l			;72b1
	ld (hl),e		;72b2
	inc l			;72b3
	inc l			;72b4
	inc l			;72b5
	inc l			;72b6
	djnz l72a3h		;72b7
	ld hl,0c281h		;72b9
	ld b,008h		;72bc
l72beh:
	ld (hl),e		;72be
	inc l			;72bf
	inc l			;72c0
	inc l			;72c1
	inc l			;72c2
	ld (hl),e		;72c3
	inc l			;72c4
	inc l			;72c5
	inc l			;72c6
	inc l			;72c7
	ld (hl),e		;72c8
	inc l			;72c9
	inc l			;72ca
	inc l			;72cb
	inc l			;72cc
	ld (hl),e		;72cd
	inc l			;72ce
	inc l			;72cf
	inc l			;72d0
	inc l			;72d1
	djnz l72beh		;72d2
	ret			;72d4
sub_72d5h:
	ld hl,0c009h		;72d5
	ld b,019h		;72d8
l72dah:
	push bc			;72da
	ld a,(hl)		;72db
	or a			;72dc
	jr z,l72e7h		;72dd
	dec l			;72df
	call sub_72edh		;72e0
l72e3h:
	set 0,l			;72e3
	ld h,0c0h		;72e5
l72e7h:
	inc l			;72e7
	inc l			;72e8
	pop bc			;72e9
	djnz l72dah		;72ea
	ret			;72ec
sub_72edh:
	ld a,(hl)		;72ed
	exx			;72ee
	cp b			;72ef
	jr c,l72ffh		;72f0
	cp c			;72f2
	jr c,l7310h		;72f3
	cp d			;72f5
	jr c,l7325h		;72f6
	cp e			;72f8
	jp nc,l72ffh		;72f9
	jp l7336h		;72fc
l72ffh:
	exx			;72ff
	ld a,(0c0aah)		;7300
	ld h,a			;7303
	inc l			;7304
	ld a,(hl)		;7305
	cp 001h			;7306
	call nz,sub_7345h	;7308
	set 7,(hl)		;730b
	jp l73a6h		;730d
l7310h:
	exx			;7310
	ld a,(0c0aah)		;7311
	ld h,a			;7314
	inc l			;7315
	ld a,(hl)		;7316
	cp 002h			;7317
	call nz,sub_735bh	;7319
	set 7,(hl)		;731c
	call l73a6h		;731e
	inc l			;7321
	jp l73bdh		;7322
l7325h:
	exx			;7325
	ld a,(0c0aah)		;7326
	ld h,a			;7329
	inc l			;732a
	ld a,(hl)		;732b
	cp 003h			;732c
	call nz,sub_7371h	;732e
	set 7,(hl)		;7331
	jp l73bdh		;7333
l7336h:
	exx			;7336
	ld a,(0c0aah)		;7337
	ld h,a			;733a
	inc l			;733b
	ld a,(hl)		;733c
	cp 004h			;733d
	call nz,sub_7387h	;733f
	set 7,(hl)		;7342
	ret			;7344
sub_7345h:
	bit 7,a			;7345
	jp nz,l739dh		;7347
	ld (hl),001h		;734a
	inc h			;734c
	ld a,(hl)		;734d
	or a			;734e
	call z,sub_741ah	;734f
	inc h			;7352
	ld a,(hl)		;7353
	or a			;7354
	call nz,sub_7462h	;7355
	dec h			;7358
	dec h			;7359
	ret			;735a
sub_735bh:
	bit 7,a			;735b
	jp nz,l739dh		;735d
	ld (hl),002h		;7360
	inc h			;7362
	ld a,(hl)		;7363
	or a			;7364
	call z,sub_741ah	;7365
	inc h			;7368
	ld a,(hl)		;7369
	or a			;736a
	call z,sub_741ah	;736b
	dec h			;736e
	dec h			;736f
	ret			;7370
sub_7371h:
	bit 7,a			;7371
	jp nz,l739dh		;7373
	ld (hl),003h		;7376
	inc h			;7378
	ld a,(hl)		;7379
	or a			;737a
	call nz,sub_7462h	;737b
	inc h			;737e
	ld a,(hl)		;737f
	or a			;7380
	call z,sub_741ah	;7381
	dec h			;7384
	dec h			;7385
	ret			;7386
sub_7387h:
	bit 7,a			;7387
	jp nz,l739dh		;7389
	ld (hl),004h		;738c
	inc h			;738e
	ld a,(hl)		;738f
	or a			;7390
	call nz,sub_7462h	;7391
	inc h			;7394
	ld a,(hl)		;7395
	or a			;7396
	call nz,sub_7462h	;7397
	dec h			;739a
	dec h			;739b
	ret			;739c
l739dh:
	call sub_7442h		;739d
	inc sp			;73a0
	inc sp			;73a1
	ret			;73a2
sub_73a3h:
	ld a,0ffh		;73a3
	ret			;73a5
l73a6h:
	ld a,(0c0a6h)		;73a6
	ld h,a			;73a9
	ld e,(hl)		;73aa
	ld d,h			;73ab
	ld a,(de)		;73ac
	or a			;73ad
	call z,sub_73a3h	;73ae
	ld h,0c3h		;73b1
	dec l			;73b3
	cp (hl)			;73b4
	call nz,sub_73fah	;73b5
	ld h,0c0h		;73b8
	jp l73d4h		;73ba
l73bdh:
	ld a,(0c0a8h)		;73bd
	ld h,a			;73c0
	ld e,(hl)		;73c1
	ld d,h			;73c2
	ld a,(de)		;73c3
	or a			;73c4
	call z,sub_73a3h	;73c5
	ld h,0c3h		;73c8
	dec l			;73ca
	cp (hl)			;73cb
	call nz,sub_73fah	;73cc
	ld h,0c0h		;73cf
	jp l73d4h		;73d1
l73d4h:
	inc e			;73d4
	ld a,(hl)		;73d5
	exx			;73d6
	add a,l			;73d7
	cp 0d8h			;73d8
	call z,sub_746eh	;73da
	exx			;73dd
	ld (de),a		;73de
	inc h			;73df
	ld a,(hl)		;73e0
	exx			;73e1
	add a,h			;73e2
	call c,sub_73eeh	;73e3
	exx			;73e6
	inc e			;73e7
	ld (de),a		;73e8
	inc e			;73e9
	inc h			;73ea
	ld a,(hl)		;73eb
	ld (de),a		;73ec
	ret			;73ed
sub_73eeh:
	ld a,0d8h		;73ee
	add a,l			;73f0
	cp 0d8h			;73f1
	call z,sub_746eh	;73f3
	exx			;73f6
	ld (de),a		;73f7
	exx			;73f8
	ret			;73f9
sub_73fah:
	ld a,(hl)		;73fa
	or a			;73fb
	jp nz,l718bh		;73fc
	pop bc			;73ff
	pop bc			;7400
	ld de,l72e3h		;7401
	ld a,d			;7404
	cp b			;7405
	jr nz,l740dh		;7406
	ld a,e			;7408
	cp c			;7409
	jr nz,l740dh		;740a
	push bc			;740c
l740dh:
	ld a,(0c0aah)		;740d
	ld h,a			;7410
	set 0,l			;7411
	res 7,(hl)		;7413
	dec l			;7415
	exx			;7416
	jp l7336h		;7417
sub_741ah:
	ld d,h			;741a
	call sub_742dh		;741b
	call c,sub_7423h	;741e
	ld (hl),e		;7421
	ret			;7422
sub_7423h:
	ld e,000h		;7423
	ld a,(0c0aah)		;7425
	ld h,a			;7428
	ld (hl),00eh		;7429
	ld h,d			;742b
	ret			;742c
sub_742dh:
	ld e,080h		;742d
	ex de,hl		;742f
	xor a			;7430
	ld b,020h		;7431
l7433h:
	cp (hl)			;7433
	jr z,l743fh		;7434
	inc l			;7436
	inc l			;7437
	inc l			;7438
	inc l			;7439
	djnz l7433h		;743a
	ex de,hl		;743c
	scf			;743d
	ret			;743e
l743fh:
	ex de,hl		;743f
	or a			;7440
	ret			;7441
sub_7442h:
	ld h,0c0h		;7442
	ld (hl),000h		;7444
	inc h			;7446
	ld a,(hl)		;7447
	or a			;7448
	call nz,sub_7462h	;7449
	inc h			;744c
	ld a,(hl)		;744d
	or a			;744e
	call nz,sub_7462h	;744f
	inc h			;7452
	ld (hl),000h		;7453
	inc h			;7455
	ld a,(hl)		;7456
	or a			;7457
	call nz,sub_7462h	;7458
	inc h			;745b
	ld a,(hl)		;745c
	or a			;745d
	call nz,sub_7462h	;745e
	ret			;7461
sub_7462h:
	ld (hl),000h		;7462
	ld c,a			;7464
	ld b,h			;7465
	xor a			;7466
	ld (bc),a		;7467
	inc c			;7468
	ld a,(0c099h)		;7469
	ld (bc),a		;746c
	ret			;746d
sub_746eh:
	inc a			;746e
	ret			;746f
sub_7470h:
	ld hl,0c03bh		;7470
	ld b,00ch		;7473
l7475h:
	push bc			;7475
	ld a,(hl)		;7476
	or a			;7477
	jr z,l7482h		;7478
	dec l			;747a
	call sub_7488h		;747b
l747eh:
	set 0,l			;747e
	ld h,0c0h		;7480
l7482h:
	inc l			;7482
	inc l			;7483
	pop bc			;7484
	djnz l7475h		;7485
	ret			;7487
sub_7488h:
	ld a,(hl)		;7488
	exx			;7489
	cp b			;748a
	jr c,l749ah		;748b
	cp c			;748d
	jr c,l74abh		;748e
	cp d			;7490
	jr c,l74c0h		;7491
	cp e			;7493
	jp nc,l749ah		;7494
	jp l74d1h		;7497
l749ah:
	exx			;749a
	ld a,(0c0aah)		;749b
	ld h,a			;749e
	inc l			;749f
	ld a,(hl)		;74a0
	cp 001h			;74a1
	call nz,sub_74e0h	;74a3
	set 7,(hl)		;74a6
	jp l753eh		;74a8
l74abh:
	exx			;74ab
	ld a,(0c0aah)		;74ac
	ld h,a			;74af
	inc l			;74b0
	ld a,(hl)		;74b1
	cp 002h			;74b2
	call nz,sub_74f6h	;74b4
	set 7,(hl)		;74b7
	call l753eh		;74b9
	inc l			;74bc
	jp l7566h		;74bd
l74c0h:
	exx			;74c0
	ld a,(0c0aah)		;74c1
	ld h,a			;74c4
	inc l			;74c5
	ld a,(hl)		;74c6
	cp 003h			;74c7
	call nz,sub_750ch	;74c9
	set 7,(hl)		;74cc
	jp l7566h		;74ce
l74d1h:
	exx			;74d1
	ld a,(0c0aah)		;74d2
	ld h,a			;74d5
	inc l			;74d6
	ld a,(hl)		;74d7
	cp 004h			;74d8
	call nz,sub_7522h	;74da
	set 7,(hl)		;74dd
	ret			;74df
sub_74e0h:
	bit 7,a			;74e0
	jp nz,l7538h		;74e2
	ld (hl),001h		;74e5
	inc h			;74e7
	ld a,(hl)		;74e8
	or a			;74e9
	call z,sub_75e4h	;74ea
	inc h			;74ed
	ld a,(hl)		;74ee
	or a			;74ef
	call nz,sub_766dh	;74f0
	dec h			;74f3
	dec h			;74f4
	ret			;74f5
sub_74f6h:
	bit 7,a			;74f6
	jp nz,l7538h		;74f8
	ld (hl),002h		;74fb
	inc h			;74fd
	ld a,(hl)		;74fe
	or a			;74ff
	call z,sub_75e4h	;7500
	inc h			;7503
	ld a,(hl)		;7504
	or a			;7505
	call z,sub_75e4h	;7506
	dec h			;7509
	dec h			;750a
	ret			;750b
sub_750ch:
	bit 7,a			;750c
	jp nz,l7538h		;750e
	ld (hl),003h		;7511
	inc h			;7513
	ld a,(hl)		;7514
	or a			;7515
	call nz,sub_766dh	;7516
	inc h			;7519
	ld a,(hl)		;751a
	or a			;751b
	call z,sub_75e4h	;751c
	dec h			;751f
	dec h			;7520
	ret			;7521
sub_7522h:
	bit 7,a			;7522
	jp nz,l7538h		;7524
	ld (hl),004h		;7527
	inc h			;7529
	ld a,(hl)		;752a
	or a			;752b
	call nz,sub_766dh	;752c
	inc h			;752f
	ld a,(hl)		;7530
	or a			;7531
	call nz,sub_766dh	;7532
	dec h			;7535
	dec h			;7536
	ret			;7537
l7538h:
	call sub_75f7h		;7538
	inc sp			;753b
	inc sp			;753c
	ret			;753d
l753eh:
	ld a,(0c0a6h)		;753e
	ld h,a			;7541
	ld d,a			;7542
	ld e,(hl)		;7543
	ld a,(de)		;7544
	or a			;7545
	call z,sub_73a3h	;7546
	ld h,0c3h		;7549
	dec l			;754b
	cp (hl)			;754c
	call nz,sub_75c4h	;754d
	ld h,0c0h		;7550
	call sub_758eh		;7552
	inc e			;7555
	ld a,(de)		;7556
	or a			;7557
	call z,sub_73a3h	;7558
	ld h,0c4h		;755b
	cp (hl)			;755d
	call nz,sub_75c4h	;755e
	ld h,0c0h		;7561
	jp l75a8h		;7563
l7566h:
	ld a,(0c0a8h)		;7566
	ld h,a			;7569
	ld d,a			;756a
	ld e,(hl)		;756b
	ld a,(de)		;756c
	or a			;756d
	call z,sub_73a3h	;756e
	ld h,0c3h		;7571
	dec l			;7573
	cp (hl)			;7574
	call nz,sub_75c4h	;7575
	ld h,0c0h		;7578
	call sub_758eh		;757a
	inc e			;757d
	ld a,(de)		;757e
	or a			;757f
	call z,sub_73a3h	;7580
	ld h,0c4h		;7583
	cp (hl)			;7585
	call nz,sub_75c4h	;7586
	ld h,0c0h		;7589
	jp l75a8h		;758b
sub_758eh:
	inc e			;758e
	ld a,(hl)		;758f
	exx			;7590
	add a,l			;7591
	cp 0d8h			;7592
	call z,sub_746eh	;7594
	exx			;7597
	ld (de),a		;7598
	inc h			;7599
	ld a,(hl)		;759a
	exx			;759b
	add a,h			;759c
	call c,sub_73eeh	;759d
	exx			;75a0
	inc e			;75a1
	ld (de),a		;75a2
	inc e			;75a3
	inc h			;75a4
	ld a,(hl)		;75a5
	ld (de),a		;75a6
	ret			;75a7
l75a8h:
	inc e			;75a8
	ld a,(hl)		;75a9
	exx			;75aa
	add a,l			;75ab
	cp 0d8h			;75ac
	call z,sub_746eh	;75ae
	exx			;75b1
	ld (de),a		;75b2
	inc h			;75b3
	ld a,(hl)		;75b4
	exx			;75b5
	add a,h			;75b6
	call c,sub_73eeh	;75b7
	exx			;75ba
	inc e			;75bb
	ld (de),a		;75bc
	inc e			;75bd
	inc h			;75be
	ld a,(hl)		;75bf
	add a,004h		;75c0
	ld (de),a		;75c2
	ret			;75c3
sub_75c4h:
	ld a,(hl)		;75c4
	or a			;75c5
	jp nz,l718bh		;75c6
	pop bc			;75c9
	pop bc			;75ca
	ld de,l747eh		;75cb
	ld a,d			;75ce
	cp b			;75cf
	jr nz,l75d7h		;75d0
	ld a,e			;75d2
	cp c			;75d3
	jr nz,l75d7h		;75d4
	push bc			;75d6
l75d7h:
	ld a,(0c0aah)		;75d7
	ld h,a			;75da
	set 0,l			;75db
	res 7,(hl)		;75dd
	dec l			;75df
	exx			;75e0
	jp l74d1h		;75e1
sub_75e4h:
	ld d,h			;75e4
	call sub_7617h		;75e5
	call c,sub_75edh	;75e8
	ld (hl),e		;75eb
	ret			;75ec
sub_75edh:
	ld e,000h		;75ed
	ld a,(0c0aah)		;75ef
	ld h,a			;75f2
	ld (hl),00eh		;75f3
	ld h,d			;75f5
	ret			;75f6
sub_75f7h:
	ld h,0c0h		;75f7
	ld (hl),000h		;75f9
	inc h			;75fb
	ld a,(hl)		;75fc
	or a			;75fd
	call nz,sub_766dh	;75fe
	inc h			;7601
	ld a,(hl)		;7602
	or a			;7603
	call nz,sub_766dh	;7604
	inc h			;7607
	ld (hl),000h		;7608
	inc h			;760a
	ld a,(hl)		;760b
	or a			;760c
	call nz,sub_766dh	;760d
	inc h			;7610
	ld a,(hl)		;7611
	or a			;7612
	call nz,sub_766dh	;7613
	ret			;7616
sub_7617h:
	ld e,0fch		;7617
	ex de,hl		;7619
	xor a			;761a
	ld b,010h		;761b
l761dh:
	cp (hl)			;761d
	ex af,af'		;761e
	dec l			;761f
	dec l			;7620
	dec l			;7621
	dec l			;7622
	ex af,af'		;7623
	jr z,l7632h		;7624
	cp (hl)			;7626
	jr z,l763eh		;7627
	dec l			;7629
	dec l			;762a
	dec l			;762b
	dec l			;762c
	djnz l761dh		;762d
	ex de,hl		;762f
	scf			;7630
	ret			;7631
l7632h:
	cp (hl)			;7632
	jr z,l7641h		;7633
	dec l			;7635
	dec l			;7636
	dec l			;7637
	dec l			;7638
	call sub_7649h		;7639
	jr l7641h		;763c
l763eh:
	call sub_7644h		;763e
l7641h:
	ex de,hl		;7641
	or a			;7642
	ret			;7643
sub_7644h:
	ld a,l			;7644
	add a,004h		;7645
	jr l764dh		;7647
sub_7649h:
	ld a,l			;7649
	add a,004h		;764a
	ld l,a			;764c
l764dh:
	push hl			;764d
	push de			;764e
	call sub_7655h		;764f
	pop de			;7652
	pop hl			;7653
	ret			;7654
sub_7655h:
	ld l,009h		;7655
	ld b,019h		;7657
l7659h:
	cp (hl)			;7659
	jp z,l7663h		;765a
	inc l			;765d
	inc l			;765e
	djnz l7659h		;765f
	scf			;7661
	ret			;7662
l7663h:
	ld (hl),000h		;7663
	ld a,(0c0aah)		;7665
	ld h,a			;7668
	ld (hl),00eh		;7669
	or a			;766b
	ret			;766c
sub_766dh:
	ld (hl),000h		;766d
	ld b,h			;766f
	ld c,a			;7670
	xor a			;7671
	ld (bc),a		;7672
	inc c			;7673
	ld a,(0c099h)		;7674
	ld (bc),a		;7677
	inc c			;7678
	inc c			;7679
	inc c			;767a
	xor a			;767b
	ld (bc),a		;767c
	inc c			;767d
	ld a,(0c099h)		;767e
	ld (bc),a		;7681
	ret			;7682
sub_7683h:
	ld a,(0c0d2h)		;7683
	and 0f8h		;7686
	push af			;7688
	ld l,a			;7689
	ld h,000h		;768a
	add hl,hl		;768c
	add hl,hl		;768d
	ld de,0c000h		;768e
	ld a,(0c09bh)		;7691
	rrca			;7694
	jr nc,l769ah		;7695
	ld de,0c400h		;7697
l769ah:
	add hl,de		;769a
	pop af			;769b
	rrca			;769c
	rrca			;769d
	rrca			;769e
	cp 009h			;769f
	jr c,l76bbh		;76a1
	sub 008h		;76a3
	push af			;76a5
	push de			;76a6
	neg			;76a7
	add a,018h		;76a9
	call sub_76bdh		;76ab
	ex (sp),hl		;76ae
	xor a			;76af
	call 046f0h		;76b0
	ld a,(00007h)		;76b3
	ld c,a			;76b6
	pop hl			;76b7
	pop af			;76b8
	jr l76cah		;76b9
l76bbh:
	ld a,018h		;76bb
sub_76bdh:
	push af			;76bd
	xor a			;76be
	call 046f0h		;76bf
	ld a,(00007h)		;76c2
	ld c,a			;76c5
	ld hl,0d988h		;76c6
	pop af			;76c9
l76cah:
	push af			;76ca
	exx			;76cb
	pop bc			;76cc
	ld a,(0c0b3h)		;76cd
	or a			;76d0
	jr nz,l771eh		;76d1
l76d3h:
	exx			;76d3
	outi			;76d4
	outi			;76d6
	outi			;76d8
	outi			;76da
	outi			;76dc
	outi			;76de
	outi			;76e0
	outi			;76e2
	outi			;76e4
	outi			;76e6
	outi			;76e8
	outi			;76ea
	outi			;76ec
	outi			;76ee
	outi			;76f0
	outi			;76f2
	outi			;76f4
	outi			;76f6
	outi			;76f8
	outi			;76fa
	outi			;76fc
	outi			;76fe
	outi			;7700
	outi			;7702
	outi			;7704
	outi			;7706
	outi			;7708
	outi			;770a
	outi			;770c
	outi			;770e
	outi			;7710
	outi			;7712
	ld de,00010h		;7714
	add hl,de		;7717
	exx			;7718
	djnz l76d3h		;7719
	exx			;771b
	ei			;771c
	ret			;771d
l771eh:
	exx			;771e
	call sub_772bh		;771f
	ld de,00010h		;7722
	add hl,de		;7725
	exx			;7726
	djnz l771eh		;7727
	exx			;7729
	ret			;772a
sub_772bh:
	push bc			;772b
	ld b,020h		;772c
l772eh:
	ld a,(hl)		;772e
	inc hl			;772f
	push bc			;7730
	call sub_773dh		;7731
	pop bc			;7734
	and 00fh		;7735
	out (c),a		;7737
	djnz l772eh		;7739
	pop bc			;773b
	ret			;773c
sub_773dh:
	push af			;773d
	ld a,007h		;773e
	push ix			;7740
	push hl			;7742
	push de			;7743
	call 00141h		;7744
	pop de			;7747
	pop hl			;7748
	pop ix			;7749
	bit 3,a			;774b
	pop bc			;774d
	ld a,b			;774e
	ret nz			;774f
	rrca			;7750
	rrca			;7751
	rrca			;7752
	rrca			;7753
	ret			;7754
sub_7755h:
	call 04e4ah		;7755
	ld a,l			;7758
	ld b,018h		;7759
	and 03fh		;775b
	cp 021h			;775d
	jr nc,l777ch		;775f
	ld de,0d988h		;7761
l7764h:
	push bc			;7764
	push hl			;7765
	push de			;7766
	call sub_77bah		;7767
	pop de			;776a
	pop hl			;776b
	ex de,hl		;776c
	ld bc,00030h		;776d
	add hl,bc		;7770
	ex de,hl		;7771
	ld bc,00040h		;7772
	add hl,bc		;7775
	res 3,h			;7776
	pop bc			;7778
	djnz l7764h		;7779
	ret			;777b
l777ch:
	ld c,a			;777c
	sub 020h		;777d
	add a,a			;777f
	ld e,a			;7780
	ld d,000h		;7781
	ld ix,sub_77bah		;7783
	add ix,de		;7787
	ld a,040h		;7789
	sub c			;778b
	add a,a			;778c
	ld e,a			;778d
	ld iy,sub_77bah		;778e
	add iy,de		;7792
	ld de,0d988h		;7794
l7797h:
	push bc			;7797
	push hl			;7798
	push de			;7799
	call sub_77b8h		;779a
	ld a,l			;779d
	and 0c0h		;779e
	ld l,a			;77a0
	call sub_77b6h		;77a1
	pop de			;77a4
	pop hl			;77a5
	ex de,hl		;77a6
	ld bc,00030h		;77a7
	add hl,bc		;77aa
	ex de,hl		;77ab
	ld bc,00040h		;77ac
	add hl,bc		;77af
	res 3,h			;77b0
	pop bc			;77b2
	djnz l7797h		;77b3
	ret			;77b5
sub_77b6h:
	jp (iy)			;77b6
sub_77b8h:
	jp (ix)			;77b8
sub_77bah:
	ldi			;77ba
	ldi			;77bc
	ldi			;77be
	ldi			;77c0
	ldi			;77c2
	ldi			;77c4
	ldi			;77c6
	ldi			;77c8
	ldi			;77ca
	ldi			;77cc
	ldi			;77ce
	ldi			;77d0
	ldi			;77d2
	ldi			;77d4
	ldi			;77d6
	ldi			;77d8
	ldi			;77da
	ldi			;77dc
	ldi			;77de
	ldi			;77e0
	ldi			;77e2
	ldi			;77e4
	ldi			;77e6
	ldi			;77e8
	ldi			;77ea
	ldi			;77ec
	ldi			;77ee
	ldi			;77f0
	ldi			;77f2
	ldi			;77f4
	ldi			;77f6
	ld a,(hl)		;77f8
	ld (de),a		;77f9
	inc de			;77fa
	ret			;77fb
sub_77fch:
	xor a			;77fc
	ld (0c0e5h),a		;77fd
	ld (0c0d7h),a		;7800
	ld hl,l7d76h		;7803
	ld a,(0ca10h)		;7806
	call 0468eh		;7809
	ld (0c0c8h),hl		;780c
	ld hl,l7c8ch		;780f
	ld a,(0ca10h)		;7812
	call 0468eh		;7815
	ld a,(0ca1eh)		;7818
	ex de,hl		;781b
	call 04639h		;781c
	ld (0c0cah),de		;781f
	ld (0ca34h),hl		;7823
	ld a,(0ca1eh)		;7826
	ld (0c0e1h),a		;7829
	xor a			;782c
	ld (0c0cdh),a		;782d
	ld (0c0cch),a		;7830
	ld a,0ffh		;7833
	ld (0ca33h),a		;7835
	call sub_7bedh		;7838
	call sub_7bedh		;783b
	call sub_7c08h		;783e
	ld hl,(0ca34h)		;7841
	dec hl			;7844
	ld (0ca34h),hl		;7845
l7848h:
	call sub_7ac4h		;7848
	call 04109h		;784b
	ld a,(0ca33h)		;784e
	or a			;7851
	jr nz,l7848h		;7852
	call sub_7ac4h		;7854
	ret			;7857
sub_7858h:
	ld a,01bh		;7858
	call 04c23h		;785a
	ld hl,(0c0cah)		;785d
	inc hl			;7860
	ld a,(hl)		;7861
	inc hl			;7862
	ld (0c0cah),hl		;7863
	cp 010h			;7866
	jr c,l7894h		;7868
	sub 010h		;786a
	cp 010h			;786c
	jp nc,04ae0h		;786e
	call 0461ah		;7871
	adc a,a			;7874
	ld a,c			;7875
	and h			;7876
	ld a,c			;7877
	jp c,0eb79h		;7878
	ld a,c			;787b
	defb 0fdh,079h,008h ;illegal sequence	;787c
	ld a,d			;787f
	inc e			;7880
	ld a,d			;7881
	inc hl			;7882
	ld a,d			;7883
	jr nc,l7900h		;7884
	jr c,l7902h		;7886
	ld d,h			;7888
	ld a,d			;7889
	ld h,l			;788a
	ld a,d			;788b
	ld l,d			;788c
	ld a,d			;788d
	add a,b			;788e
	ld a,d			;788f
	add a,a			;7890
	ld a,d			;7891
	sub h			;7892
	ld a,d			;7893
l7894h:
	call sub_789ch		;7894
	call sub_7aa1h		;7897
	or a			;789a
	ret			;789b
sub_789ch:
	add a,a			;789c
	add a,a			;789d
	ld e,a			;789e
	add a,a			;789f
	add a,e			;78a0
	ld hl,l78ffh		;78a1
	ld e,a			;78a4
	ld d,000h		;78a5
	add hl,de		;78a7
	ld e,(hl)		;78a8
	inc hl			;78a9
	ld d,(hl)		;78aa
	inc hl			;78ab
	ld (0c0c3h),de		;78ac
	ld a,d			;78b0
	rlca			;78b1
	sbc a,a			;78b2
	ld (0c0c5h),a		;78b3
	ld e,(hl)		;78b6
	inc hl			;78b7
	ld d,(hl)		;78b8
	inc hl			;78b9
	ld (0c0bdh),de		;78ba
	ld a,d			;78be
	rlca			;78bf
	sbc a,a			;78c0
	ld (0c0bfh),a		;78c1
	ld e,(hl)		;78c4
	inc hl			;78c5
	ld d,(hl)		;78c6
	inc hl			;78c7
	ld (0c0b8h),de		;78c8
	ld e,(hl)		;78cc
	inc hl			;78cd
	ld d,(hl)		;78ce
	inc hl			;78cf
	ld (0c0b6h),de		;78d0
	ld e,(hl)		;78d4
	inc hl			;78d5
	ld d,(hl)		;78d6
	inc hl			;78d7
	ld a,e			;78d8
	ld (0c0ceh),a		;78d9
	push de			;78dc
	ld a,(hl)		;78dd
	inc hl			;78de
	ld (0c0d5h),a		;78df
	ld a,(hl)		;78e2
	call sub_78ech		;78e3
	pop de			;78e6
	xor a			;78e7
	ld (0c0dah),a		;78e8
	ret			;78eb
sub_78ech:
	ret			;78ec
	bit 7,a			;78ed
	ret z			;78ef
sub_78f0h:
	ld a,(0ca35h)		;78f0
	and 0f0h		;78f3
	add a,010h		;78f5
	ld d,a			;78f7
	ld e,000h		;78f8
	ld (0ca34h),de		;78fa
	ret			;78fe
l78ffh:
	nop			;78ff
l7900h:
	nop			;7900
	nop			;7901
l7902h:
	ld (bc),a		;7902
	nop			;7903
	ld (bc),a		;7904
	nop			;7905
	nop			;7906
	nop			;7907
	jr nz,l790bh		;7908
	add a,b			;790a
l790bh:
	nop			;790b
	ld bc,00100h		;790c
	nop			;790f
	ld bc,00000h		;7910
	ld bc,00218h		;7913
	add a,b			;7916
	nop			;7917
	ld bc,00000h		;7918
	nop			;791b
	ld bc,00000h		;791c
	ld (bc),a		;791f
	jr l7923h		;7920
	nop			;7922
l7923h:
	nop			;7923
	ld bc,00000h		;7924
	nop			;7927
	ld bc,00000h		;7928
	inc bc			;792b
	jr l7931h		;792c
	add a,b			;792e
	nop			;792f
	rst 38h			;7930
l7931h:
	nop			;7931
	ld bc,00100h		;7932
	nop			;7935
	nop			;7936
	inc b			;7937
	jr $+10			;7938
	add a,b			;793a
	nop			;793b
	ld bc,0ff00h		;793c
	nop			;793f
	ld bc,00000h		;7940
	dec b			;7943
	jr nz,l794ah		;7944
	add a,b			;7946
	nop			;7947
	rst 38h			;7948
	nop			;7949
l794ah:
	nop			;794a
	nop			;794b
	ld bc,00000h		;794c
	ld b,018h		;794f
	rlca			;7951
	add a,b			;7952
	nop			;7953
	nop			;7954
	nop			;7955
	nop			;7956
	nop			;7957
	ld bc,00000h		;7958
	rlca			;795b
	nop			;795c
	nop			;795d
	add a,b			;795e
	nop			;795f
	nop			;7960
	nop			;7961
	inc b			;7962
	nop			;7963
	inc b			;7964
	nop			;7965
	nop			;7966
	nop			;7967
	jr nz,l796bh		;7968
	add a,b			;796a
l796bh:
	nop			;796b
	nop			;796c
	nop			;796d
	ld bc,00100h		;796e
	nop			;7971
	nop			;7972
	nop			;7973
	jr nz,l7977h		;7974
	add a,b			;7976
l7977h:
	nop			;7977
	nop			;7978
	nop			;7979
	ld (bc),a		;797a
	nop			;797b
	ld (bc),a		;797c
	nop			;797d
	nop			;797e
	ex af,af'		;797f
	ld bc,00001h		;7980
	nop			;7983
	ld (bc),a		;7984
	nop			;7985
	ld (bc),a		;7986
	nop			;7987
	ld (bc),a		;7988
	nop			;7989
	nop			;798a
	ld bc,00218h		;798b
	nop			;798e
	ld hl,(0c0cah)		;798f
	ld e,(hl)		;7992
	inc hl			;7993
	ld d,(hl)		;7994
	inc hl			;7995
	ld (0c0cah),hl		;7996
	ld a,(0ce4ch)		;7999
	or a			;799c
	ret z			;799d
	ld (0c0cah),de		;799e
	or a			;79a2
	ret			;79a3
	ld hl,(0c0cah)		;79a4
	ld e,(hl)		;79a7
	inc hl			;79a8
	ld d,(hl)		;79a9
	inc hl			;79aa
	ld (0c0cah),hl		;79ab
l79aeh:
	ld a,e			;79ae
	push de			;79af
	call sub_79c2h		;79b0
	ld a,(0c0d2h)		;79b3
	and 007h		;79b6
	ld c,a			;79b8
	pop af			;79b9
	and 0f8h		;79ba
	or c			;79bc
	ld (0c0d2h),a		;79bd
	or a			;79c0
	ret			;79c1
sub_79c2h:
	ei			;79c2
	ex af,af'		;79c3
l79c4h:
	ld a,(0c09ch)		;79c4
	or a			;79c7
	jr nz,l79c4h		;79c8
	ex af,af'		;79ca
	cp 007h			;79cb
	jp c,l79d6h		;79cd
	and 080h		;79d0
	ld (0c0d1h),a		;79d2
	ret			;79d5
l79d6h:
	ld (0c0b5h),a		;79d6
	ret			;79d9
	ld hl,(0c0cah)		;79da
	ld de,00024h		;79dd
	add hl,de		;79e0
	ld (0c0cah),hl		;79e1
	ld a,002h		;79e4
	ld (0c0ceh),a		;79e6
	or a			;79e9
	ret			;79ea
	ld hl,(0c0cah)		;79eb
	ld e,(hl)		;79ee
	inc hl			;79ef
	ld d,(hl)		;79f0
	inc hl			;79f1
	push hl			;79f2
	ex de,hl		;79f3
	call 04ce0h		;79f4
	pop hl			;79f7
	ld (0c0cah),hl		;79f8
	or a			;79fb
	ret			;79fc
	call sub_7bd6h		;79fd
	call 04e73h		;7a00
	call sub_78f0h		;7a03
	scf			;7a06
	ret			;7a07
	ld a,(0ef60h)		;7a08
	or a			;7a0b
	ret z			;7a0c
	ld hl,(0c0cah)		;7a0d
	dec hl			;7a10
	dec hl			;7a11
	ld (0c0cah),hl		;7a12
	ld a,007h		;7a15
	call sub_789ch		;7a17
	scf			;7a1a
	ret			;7a1b
	ld a,001h		;7a1c
	ld (0c0d6h),a		;7a1e
	scf			;7a21
	ret			;7a22
	ld hl,(0c0cah)		;7a23
	ld a,(hl)		;7a26
	inc hl			;7a27
	ld (0c0cah),hl		;7a28
	call 04e6bh		;7a2b
	or a			;7a2e
	ret			;7a2f
	call sub_6e2dh		;7a30
	call sub_6e0bh		;7a33
	or a			;7a36
	ret			;7a37
	ld hl,(0c0cah)		;7a38
	ld a,(hl)		;7a3b
	inc hl			;7a3c
	ld (0c0cah),hl		;7a3d
	or a			;7a40
	jr nz,l7a4fh		;7a41
	ld a,030h		;7a43
	ld (0c0d7h),a		;7a45
	ld a,084h		;7a48
	call 04aebh		;7a4a
	or a			;7a4d
	ret			;7a4e
l7a4fh:
	call 04aebh		;7a4f
	or a			;7a52
	ret			;7a53
	ld a,(0c0e1h)		;7a54
	or a			;7a57
	jr nz,l7a60h		;7a58
	ld hl,0ca1eh		;7a5a
	inc (hl)		;7a5d
	or a			;7a5e
	ret			;7a5f
l7a60h:
	xor a			;7a60
	ld (0c0e1h),a		;7a61
	ret			;7a64
	call sub_78f0h		;7a65
	or a			;7a68
	ret			;7a69
	ld hl,(0c0cah)		;7a6a
	ld e,(hl)		;7a6d
	inc hl			;7a6e
	ld d,(hl)		;7a6f
	inc hl			;7a70
	push hl			;7a71
	ex de,hl		;7a72
	ld a,(0ca33h)		;7a73
	or a			;7a76
	call nz,04cdch		;7a77
	pop hl			;7a7a
	ld (0c0cah),hl		;7a7b
	or a			;7a7e
	ret			;7a7f
	ld a,(0ca33h)		;7a80
	or a			;7a83
	ret nz			;7a84
	scf			;7a85
	ret			;7a86
	call sub_7bd6h		;7a87
	ld a,002h		;7a8a
	ld (0c0d4h),a		;7a8c
	call sub_78f0h		;7a8f
	scf			;7a92
	ret			;7a93
	ld hl,(0c0cah)		;7a94
	ld a,(hl)		;7a97
	inc hl			;7a98
	ld (0c0cah),hl		;7a99
	ld (0c0e5h),a		;7a9c
	or a			;7a9f
	ret			;7aa0
sub_7aa1h:
	ld a,(0ca33h)		;7aa1
	inc a			;7aa4
	ret nz			;7aa5
	ld a,d			;7aa6
	ld (0ca33h),a		;7aa7
	ret			;7aaa
sub_7aabh:
	ld a,(0ca33h)		;7aab
	or a			;7aae
	ret z			;7aaf
	dec a			;7ab0
	ld (0ca33h),a		;7ab1
	ret			;7ab4
sub_7ab5h:
	ld a,(0c0d7h)		;7ab5
	or a			;7ab8
	ret z			;7ab9
	dec a			;7aba
	ld (0c0d7h),a		;7abb
	ret nz			;7abe
	ld a,039h		;7abf
	jp 04aebh		;7ac1
sub_7ac4h:
	ld a,(0c0d6h)		;7ac4
	dec a			;7ac7
	jr z,l7aceh		;7ac8
	call sub_7ad2h		;7aca
	ret			;7acd
l7aceh:
	call sub_7bd6h		;7ace
	ret			;7ad1
sub_7ad2h:
	ld hl,(0c0b6h)		;7ad2
	ld a,h			;7ad5
	ld de,(0c0b8h)		;7ad6
	add hl,de		;7ada
	ld (0c0b6h),hl		;7adb
	xor h			;7ade
	bit 3,a			;7adf
	push af			;7ae1
	call sub_7b09h		;7ae2
	call sub_7c72h		;7ae5
	pop af			;7ae8
	ret z			;7ae9
	call sub_7bedh		;7aea
	ret c			;7aed
	call sub_7c08h		;7aee
	ld a,01bh		;7af1
	call 04c23h		;7af3
	ld hl,(0c0cah)		;7af6
	ld a,(hl)		;7af9
	cp 0feh			;7afa
	ret nz			;7afc
	inc hl			;7afd
	ld (0c0cah),hl		;7afe
	call sub_7bedh		;7b01
	ret c			;7b04
	call sub_7c08h		;7b05
	ret			;7b08
sub_7b09h:
	ld hl,0c0bah		;7b09
	ld de,0c0bdh		;7b0c
	ld a,(de)		;7b0f
	add a,(hl)		;7b10
	ld (hl),a		;7b11
	inc hl			;7b12
	inc de			;7b13
	ld a,(de)		;7b14
	adc a,(hl)		;7b15
	ld (hl),a		;7b16
	inc hl			;7b17
	inc de			;7b18
	ld a,(de)		;7b19
	adc a,(hl)		;7b1a
	ld (hl),a		;7b1b
	ld de,(0c0bdh)		;7b1c
	call 0460ah		;7b20
	sra d			;7b23
	rr e			;7b25
	sra d			;7b27
	rr e			;7b29
	sra d			;7b2b
	rr e			;7b2d
	ld (0ca14h),de		;7b2f
	ld de,(0c0bah)		;7b33
	sra d			;7b37
	rr e			;7b39
	sra d			;7b3b
	rr e			;7b3d
	sra d			;7b3f
	rr e			;7b41
	ld (0ca1ch),de		;7b43
	ld d,000h		;7b47
	call 0460ah		;7b49
	ld (0ca38h),de		;7b4c
	ld a,(0c0c1h)		;7b50
	ld c,a			;7b53
	ld hl,0c0c0h		;7b54
	ld de,0c0c3h		;7b57
	ld a,(de)		;7b5a
	add a,(hl)		;7b5b
	ld (hl),a		;7b5c
	inc hl			;7b5d
	inc de			;7b5e
	ld a,(de)		;7b5f
	adc a,(hl)		;7b60
	ld (hl),a		;7b61
	inc hl			;7b62
	inc de			;7b63
	ld a,(de)		;7b64
	adc a,(hl)		;7b65
	ld (hl),a		;7b66
	ld a,(0c0c1h)		;7b67
	ld h,a			;7b6a
	ld de,(0c0c3h)		;7b6b
	call 0460ah		;7b6f
	sra d			;7b72
	rr e			;7b74
	sra d			;7b76
	rr e			;7b78
	sra d			;7b7a
	rr e			;7b7c
	ld (0ca12h),de		;7b7e
	ld de,(0c0c0h)		;7b82
	sra d			;7b86
	rr e			;7b88
	sra d			;7b8a
	rr e			;7b8c
	sra d			;7b8e
	rr e			;7b90
	ld (0ca1ah),de		;7b92
	ld d,000h		;7b96
	call 0460ah		;7b98
	ld (0ca36h),de		;7b9b
	ld a,(0c0d5h)		;7b9f
	ld (0ca18h),a		;7ba2
	ld a,(0c0bbh)		;7ba5
	and 007h		;7ba8
	ld d,a			;7baa
	ld a,(0c0c1h)		;7bab
	and 007h		;7bae
	ld e,a			;7bb0
	ld (0ca31h),de		;7bb1
	ld a,(0c0d1h)		;7bb5
	or a			;7bb8
	jr nz,l7bc4h		;7bb9
	ld a,(0c0d2h)		;7bbb
	add a,h			;7bbe
	sub c			;7bbf
	ld (0c0d2h),a		;7bc0
	ret			;7bc3
l7bc4h:
	ld a,(0c0d2h)		;7bc4
	and 0f8h		;7bc7
	ld d,a			;7bc9
	ld a,(0c0d2h)		;7bca
	add a,h			;7bcd
	sub c			;7bce
	and 007h		;7bcf
	or d			;7bd1
	ld (0c0d2h),a		;7bd2
	ret			;7bd5
sub_7bd6h:
	xor a			;7bd6
	ld d,a			;7bd7
	ld e,a			;7bd8
	ld (0c0bdh),de		;7bd9
	ld (0c0c3h),de		;7bdd
	ld (0ca14h),de		;7be1
	ld (0ca12h),de		;7be5
	ld (0ca18h),a		;7be9
	ret			;7bec
sub_7bedh:
	ld a,01bh		;7bed
	call 04c23h		;7bef
	ld hl,(0c0cah)		;7bf2
l7bf5h:
	ld a,(hl)		;7bf5
	inc a			;7bf6
	or a			;7bf7
	jr z,l7c02h		;7bf8
	inc a			;7bfa
	ret nz			;7bfb
	inc hl			;7bfc
	ld (0c0cah),hl		;7bfd
	jr l7bf5h		;7c00
l7c02h:
	call sub_7858h		;7c02
	ret c			;7c05
	jr sub_7bedh		;7c06
sub_7c08h:
	ld hl,(0c0cah)		;7c08
	push hl			;7c0b
	ld a,01bh		;7c0c
	call 04c23h		;7c0e
	call sub_7c3eh		;7c11
	ld a,(0c0dah)		;7c14
	inc a			;7c17
	ld (0c0dah),a		;7c18
	cp 004h			;7c1b
	pop hl			;7c1d
	ld (0c0cah),hl		;7c1e
	ret c			;7c21
	xor a			;7c22
	ld (0c0dah),a		;7c23
	add hl,de		;7c26
	ld (0c0cah),hl		;7c27
	ret			;7c2a
sub_7c2bh:
	ld hl,(0ca34h)		;7c2b
	inc hl			;7c2e
	ld (0ca34h),hl		;7c2f
	ret			;7c32
sub_7c33h:
	dec a			;7c33
	ld (0c0e5h),a		;7c34
	ret nz			;7c37
	ld de,03801h		;7c38
	jp l79aeh		;7c3b
sub_7c3eh:
	ld a,(0c0e5h)		;7c3e
	or a			;7c41
	call nz,sub_7c33h	;7c42
	call sub_7c2bh		;7c45
	ld a,019h		;7c48
	call 04c15h		;7c4a
	call sub_7aabh		;7c4d
	ld a,(0c0ceh)		;7c50
	cp 009h			;7c53
	jp nc,04ae0h		;7c55
	call 0461ah		;7c58
	and a			;7c5b
	ld a,l			;7c5c
	jr z,l7cddh		;7c5d
	adc a,b			;7c5f
	ld a,l			;7c60
	inc e			;7c61
	ld a,(hl)		;7c62
	sbc a,07eh		;7c63
	ccf			;7c65
	ld a,(hl)		;7c66
	adc a,07eh		;7c67
	adc a,07eh		;7c69
	ld l,l			;7c6b
	ld a,h			;7c6c
	ld de,00000h		;7c6d
	ret			;7c70
sub_7c71h:
	ret			;7c71
sub_7c72h:
	ld hl,(0c0bbh)		;7c72
	ld a,l			;7c75
	rr h			;7c76
	rra			;7c78
	rra			;7c79
	rra			;7c7a
	and 03fh		;7c7b
	ld (0c0cdh),a		;7c7d
	ld a,(0c0c1h)		;7c80
	rrca			;7c83
	rrca			;7c84
	rrca			;7c85
	and 01fh		;7c86
	ld (0c0cch),a		;7c88
	ret			;7c8b
l7c8ch:
	sbc a,(hl)		;7c8c
	ld a,h			;7c8d
	or (hl)			;7c8e
	ld a,h			;7c8f
	adc a,07ch		;7c90
	and 07ch		;7c92
	cp 07ch			;7c94
	ld d,07dh		;7c96
	ld l,07dh		;7c98
	ld b,(hl)		;7c9a
	ld a,l			;7c9b
	ld e,(hl)		;7c9c
	ld a,l			;7c9d
	nop			;7c9e
	and b			;7c9f
	nop			;7ca0
	nop			;7ca1
	ret m			;7ca2
	and b			;7ca3
	and b			;7ca4
	djnz l7cd0h		;7ca5
	and e			;7ca7
	and b			;7ca8
	djnz l7cd4h		;7ca9
	and e			;7cab
	and b			;7cac
	djnz l7cd8h		;7cad
	and e			;7caf
	and b			;7cb0
	djnz $-88		;7cb1
	and e			;7cb3
	and b			;7cb4
	djnz $+98		;7cb5
	and h			;7cb7
	nop			;7cb8
	nop			;7cb9
	ld c,a			;7cba
	and l			;7cbb
	sbc a,h			;7cbc
	djnz $+60		;7cbd
	and a			;7cbf
	adc a,c			;7cc0
	jr nc,l7cf2h		;7cc1
	xor b			;7cc3
	nop			;7cc4
	ld d,b			;7cc5
	cpl			;7cc6
	xor b			;7cc7
	nop			;7cc8
	ld d,b			;7cc9
	cpl			;7cca
	xor b			;7ccb
	nop			;7ccc
	ld d,b			;7ccd
	ld (hl),b		;7cce
	xor c			;7ccf
l7cd0h:
	nop			;7cd0
	nop			;7cd1
	ld l,b			;7cd2
	xor d			;7cd3
l7cd4h:
	and b			;7cd4
	djnz l7cd7h		;7cd5
l7cd7h:
	xor e			;7cd7
l7cd8h:
	nop			;7cd8
	ld de,0ab68h		;7cd9
	ld b,b			;7cdc
l7cddh:
	ld de,0ab68h		;7cdd
	ld b,b			;7ce0
	ld de,0ab68h		;7ce1
	ld b,b			;7ce4
	ld de,0aba9h		;7ce5
	nop			;7ce8
	nop			;7ce9
	ld c,0adh		;7cea
	inc b			;7cec
	jr nc,$+16		;7ced
	xor l			;7cef
	jr nz,$+50		;7cf0
l7cf2h:
	ld c,0adh		;7cf2
	jr nz,$+50		;7cf4
	ld c,0adh		;7cf6
	jr nz,l7d2ah		;7cf8
	ld c,0adh		;7cfa
	jr nz,l7d2eh		;7cfc
	ld b,a			;7cfe
	xor (hl)		;7cff
	nop			;7d00
	nop			;7d01
	rst 38h			;7d02
	xor a			;7d03
	jr nz,$+19		;7d04
l7d06h:
	xor d			;7d06
	or d			;7d07
	ret po			;7d08
	ld (de),a		;7d09
	xor d			;7d0a
	or d			;7d0b
	ret po			;7d0c
	ld (de),a		;7d0d
	xor d			;7d0e
	or d			;7d0f
	ret po			;7d10
	ld (de),a		;7d11
	xor d			;7d12
	or d			;7d13
	ret po			;7d14
	ld (de),a		;7d15
	ld sp,000b3h		;7d16
	nop			;7d19
	ld e,(hl)		;7d1a
	or h			;7d1b
	dec b			;7d1c
	jr nc,l7d7dh		;7d1d
	or h			;7d1f
	dec b			;7d20
	jr nc,l7d64h		;7d21
	or (hl)			;7d23
	dec b			;7d24
	jr nc,l7d06h		;7d25
	or (hl)			;7d27
	dec b			;7d28
	ld b,b			;7d29
l7d2ah:
	ld sp,000b3h		;7d2a
	nop			;7d2d
l7d2eh:
	ld (hl),b		;7d2e
	or a			;7d2f
	nop			;7d30
	nop			;7d31
	ld (hl),b		;7d32
	or a			;7d33
	nop			;7d34
	nop			;7d35
	ld (hl),b		;7d36
	or a			;7d37
	nop			;7d38
	nop			;7d39
	ld (hl),b		;7d3a
	or a			;7d3b
	nop			;7d3c
	nop			;7d3d
	ld (hl),b		;7d3e
	or a			;7d3f
	nop			;7d40
	nop			;7d41
	ld (hl),b		;7d42
	or a			;7d43
	nop			;7d44
	nop			;7d45
	ld c,b			;7d46
	cp c			;7d47
	nop			;7d48
	nop			;7d49
	ld c,b			;7d4a
	cp c			;7d4b
	nop			;7d4c
	nop			;7d4d
	ld c,b			;7d4e
	cp c			;7d4f
	nop			;7d50
	nop			;7d51
	ld c,b			;7d52
	cp c			;7d53
	nop			;7d54
	nop			;7d55
	ld c,b			;7d56
	cp c			;7d57
	nop			;7d58
	nop			;7d59
	ld c,b			;7d5a
	cp c			;7d5b
	nop			;7d5c
	nop			;7d5d
	ld a,a			;7d5e
	cp d			;7d5f
	nop			;7d60
	nop			;7d61
	ld a,a			;7d62
	cp d			;7d63
l7d64h:
	nop			;7d64
	nop			;7d65
	ld a,a			;7d66
	cp d			;7d67
	nop			;7d68
	nop			;7d69
	ld a,a			;7d6a
	cp d			;7d6b
	nop			;7d6c
	nop			;7d6d
	ld a,a			;7d6e
	cp d			;7d6f
	nop			;7d70
	nop			;7d71
	ld a,a			;7d72
	cp d			;7d73
	nop			;7d74
	nop			;7d75
l7d76h:
	nop			;7d76
	add a,b			;7d77
	ret po			;7d78
	adc a,d			;7d79
	ld h,b			;7d7a
	sub b			;7d7b
	ret nc			;7d7c
l7d7dh:
	sub l			;7d7d
	or b			;7d7e
	sbc a,l			;7d7f
	ld (hl),b		;7d80
	and b			;7d81
	ret nz			;7d82
	and a			;7d83
	ret nc			;7d84
	or c			;7d85
	ret nc			;7d86
	or d			;7d87
	ld de,03700h		;7d88
	call 04e3ah		;7d8b
	ld de,(0c0cah)		;7d8e
	call sub_7db8h		;7d92
	ld de,(0c0cah)		;7d95
	ld hl,0ffdch		;7d99
	add hl,de		;7d9c
	push hl			;7d9d
	call 04e37h		;7d9e
	pop de			;7da1
	call sub_7db8h		;7da2
	jr l7db4h		;7da5
	ld de,02000h		;7da7
	call 04e37h		;7daa
	ld de,(0c0cah)		;7dad
	call sub_7db8h		;7db1
l7db4h:
	ld de,00006h		;7db4
	ret			;7db7
sub_7db8h:
	push de			;7db8
	push hl			;7db9
	exx			;7dba
	pop hl			;7dbb
	exx			;7dbc
	ld a,(0c0bbh)		;7dbd
	and 018h		;7dc0
	rrca			;7dc2
	rrca			;7dc3
	rrca			;7dc4
	ld hl,(0c0c8h)		;7dc5
	ld e,a			;7dc8
	ld d,000h		;7dc9
	add hl,de		;7dcb
	ld b,h			;7dcc
	ld c,l			;7dcd
	pop de			;7dce
	ld a,006h		;7dcf
l7dd1h:
	ex af,af'		;7dd1
	ld a,01bh		;7dd2
	call 04c23h		;7dd4
	ld a,(de)		;7dd7
	inc de			;7dd8
	ld h,000h		;7dd9
	ld l,a			;7ddb
	ld a,01ah		;7ddc
	call 04c23h		;7dde
	add hl,hl		;7de1
	add hl,hl		;7de2
	add hl,hl		;7de3
	add hl,hl		;7de4
	add hl,bc		;7de5
	push hl			;7de6
	exx			;7de7
	pop de			;7de8
	ld bc,00040h		;7de9
	ld a,(de)		;7dec
	ld (hl),a		;7ded
	inc e			;7dee
	inc e			;7def
	inc e			;7df0
	inc e			;7df1
	add hl,bc		;7df2
	res 3,h			;7df3
	ld a,(de)		;7df5
	ld (hl),a		;7df6
	inc e			;7df7
	inc e			;7df8
	inc e			;7df9
	inc e			;7dfa
	add hl,bc		;7dfb
	res 3,h			;7dfc
	ld a,(de)		;7dfe
	ld (hl),a		;7dff
	inc e			;7e00
	inc e			;7e01
	inc e			;7e02
	inc e			;7e03
	add hl,bc		;7e04
	res 3,h			;7e05
	ld a,(de)		;7e07
	ld (hl),a		;7e08
	inc e			;7e09
	inc e			;7e0a
	inc e			;7e0b
	inc e			;7e0c
	add hl,bc		;7e0d
	res 3,h			;7e0e
	exx			;7e10
	ex af,af'		;7e11
	dec a			;7e12
	jp nz,l7dd1h		;7e13
	ret			;7e16
sub_7e17h:
	ld a,l			;7e17
	sub 040h		;7e18
	ld l,a			;7e1a
	ret			;7e1b
	ld a,008h		;7e1c
	ld de,00018h		;7e1e
	call sub_7e55h		;7e21
	ld de,00008h		;7e24
	ret			;7e27
	ld e,018h		;7e28
	ld a,(0c0c1h)		;7e2a
	and 018h		;7e2d
	rrca			;7e2f
	rrca			;7e30
	rrca			;7e31
	neg			;7e32
	ld d,a			;7e34
	dec d			;7e35
	ld a,00fh		;7e36
	call sub_7e55h		;7e38
	ld de,0000fh		;7e3b
	ret			;7e3e
	ld e,018h		;7e3f
	ld a,(0c0c1h)		;7e41
	and 018h		;7e44
	rrca			;7e46
	rrca			;7e47
	rrca			;7e48
	sub 01ch		;7e49
	ld d,a			;7e4b
	ld a,00fh		;7e4c
	call sub_7e55h		;7e4e
	ld de,0000fh		;7e51
	ret			;7e54
sub_7e55h:
	push af			;7e55
	call 04e3ah		;7e56
	push hl			;7e59
	exx			;7e5a
	pop hl			;7e5b
	exx			;7e5c
	ld a,(0c0c1h)		;7e5d
	and 018h		;7e60
	rrca			;7e62
	ld hl,(0c0c8h)		;7e63
	ld e,a			;7e66
	ld d,000h		;7e67
	add hl,de		;7e69
	ld b,h			;7e6a
	ld c,l			;7e6b
	ld de,(0c0cah)		;7e6c
	pop af			;7e70
l7e71h:
	ex af,af'		;7e71
	ld a,01bh		;7e72
	call 04c23h		;7e74
	ld a,(de)		;7e77
	inc de			;7e78
	ld h,000h		;7e79
	ld l,a			;7e7b
	ld a,01ah		;7e7c
	call 04c23h		;7e7e
	add hl,hl		;7e81
	add hl,hl		;7e82
	add hl,hl		;7e83
	add hl,hl		;7e84
	add hl,bc		;7e85
	push hl			;7e86
	exx			;7e87
	pop de			;7e88
	ld a,(de)		;7e89
	ld (hl),a		;7e8a
	inc de			;7e8b
	inc l			;7e8c
	ld a,l			;7e8d
	and 03fh		;7e8e
	call z,sub_7e17h	;7e90
	ld a,(de)		;7e93
	ld (hl),a		;7e94
	inc de			;7e95
	inc l			;7e96
	ld a,l			;7e97
	and 03fh		;7e98
	call z,sub_7e17h	;7e9a
	ld a,(de)		;7e9d
	ld (hl),a		;7e9e
	inc de			;7e9f
	inc l			;7ea0
	ld a,l			;7ea1
	and 03fh		;7ea2
	call z,sub_7e17h	;7ea4
	ld a,(de)		;7ea7
	ld (hl),a		;7ea8
	inc de			;7ea9
	inc l			;7eaa
	ld a,l			;7eab
	and 03fh		;7eac
	call z,sub_7e17h	;7eae
	exx			;7eb1
	ex af,af'		;7eb2
	dec a			;7eb3
	jp nz,l7e71h		;7eb4
	ret			;7eb7
sub_7eb8h:
	ld a,l			;7eb8
	sub 040h		;7eb9
	ld l,a			;7ebb
	ret			;7ebc
	ld e,001h		;7ebd
	call sub_7c71h		;7ebf
	ld a,008h		;7ec2
	ld de,00018h		;7ec4
	call sub_7efch		;7ec7
	ld de,00008h		;7eca
	ret			;7ecd
	call sub_7c71h		;7ece
	ld d,000h		;7ed1
	ld e,0ffh		;7ed3
	ld a,008h		;7ed5
	call sub_7efch		;7ed7
	ld de,00008h		;7eda
	ret			;7edd
	call sub_7c71h		;7ede
	ld a,(0c0c1h)		;7ee1
	and 018h		;7ee4
	rrca			;7ee6
	rrca			;7ee7
	rrca			;7ee8
	neg			;7ee9
	and 003h		;7eeb
	neg			;7eed
	ld d,a			;7eef
	ld e,0ffh		;7ef0
	ld a,00fh		;7ef2
	call sub_7efch		;7ef4
	ret nz			;7ef7
	ld de,0000fh		;7ef8
	ret			;7efb
sub_7efch:
	push af			;7efc
	call 04e3ah		;7efd
	push hl			;7f00
	exx			;7f01
	pop hl			;7f02
	exx			;7f03
	ld a,(0c0c1h)		;7f04
	and 018h		;7f07
	sub 008h		;7f09
	rrca			;7f0b
	and 00ch		;7f0c
	ld hl,(0c0c8h)		;7f0e
	ld e,a			;7f11
	ld d,000h		;7f12
	add hl,de		;7f14
	ld b,h			;7f15
	ld c,l			;7f16
	ld de,(0c0cah)		;7f17
	pop af			;7f1b
l7f1ch:
	ex af,af'		;7f1c
	ld a,01bh		;7f1d
	call 04c23h		;7f1f
	ld a,(de)		;7f22
	inc de			;7f23
	ld h,000h		;7f24
	ld l,a			;7f26
	ld a,01ah		;7f27
	call 04c23h		;7f29
	add hl,hl		;7f2c
	add hl,hl		;7f2d
	add hl,hl		;7f2e
	add hl,hl		;7f2f
	add hl,bc		;7f30
	push hl			;7f31
	exx			;7f32
	pop de			;7f33
	ld a,(de)		;7f34
	ld (hl),a		;7f35
	inc de			;7f36
	inc l			;7f37
	ld a,l			;7f38
	and 03fh		;7f39
	call z,sub_7eb8h	;7f3b
	ld a,(de)		;7f3e
	ld (hl),a		;7f3f
	inc de			;7f40
	inc l			;7f41
	ld a,l			;7f42
	and 03fh		;7f43
	call z,sub_7eb8h	;7f45
	ld a,(de)		;7f48
	ld (hl),a		;7f49
	inc de			;7f4a
	inc l			;7f4b
	ld a,l			;7f4c
	and 03fh		;7f4d
	call z,sub_7eb8h	;7f4f
	ld a,(de)		;7f52
	ld (hl),a		;7f53
	inc de			;7f54
	inc l			;7f55
	ld a,l			;7f56
	and 03fh		;7f57
	call z,sub_7eb8h	;7f59
	exx			;7f5c
	ex af,af'		;7f5d
	dec a			;7f5e
	jp nz,l7f1ch		;7f5f
	ret			;7f62
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

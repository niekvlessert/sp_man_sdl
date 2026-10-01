; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank09_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank09.bin

	org 08000h

l8000h:
	nop			;8000
	nop			;8001
	nop			;8002
	nop			;8003
	nop			;8004
	nop			;8005
	nop			;8006
	nop			;8007
	nop			;8008
	nop			;8009
	nop			;800a
	nop			;800b
	nop			;800c
	nop			;800d
	nop			;800e
l800fh:
	nop			;800f
	ld bc,00101h		;8010
	ld bc,00101h		;8013
	ld bc,00101h		;8016
	ld bc,00101h		;8019
	ld bc,00101h		;801c
l801fh:
	ld bc,00202h		;801f
	ld (bc),a		;8022
	ld (bc),a		;8023
	ld (bc),a		;8024
	ld (bc),a		;8025
	ld (bc),a		;8026
	ld (bc),a		;8027
	ld (bc),a		;8028
	ld (bc),a		;8029
	ld (bc),a		;802a
	ld (bc),a		;802b
	ld (bc),a		;802c
	ld (bc),a		;802d
	ld (bc),a		;802e
	ld (bc),a		;802f
	inc bc			;8030
	inc bc			;8031
	inc bc			;8032
	inc bc			;8033
	inc bc			;8034
	inc bc			;8035
	inc bc			;8036
	inc bc			;8037
	inc bc			;8038
	inc bc			;8039
	inc bc			;803a
	inc bc			;803b
	inc bc			;803c
	inc bc			;803d
	inc bc			;803e
	inc bc			;803f
	inc b			;8040
	inc b			;8041
	inc b			;8042
	inc b			;8043
	inc b			;8044
	inc b			;8045
	inc b			;8046
	inc b			;8047
	inc b			;8048
	inc b			;8049
	inc b			;804a
	inc b			;804b
	inc b			;804c
	inc b			;804d
	inc b			;804e
	inc b			;804f
	dec b			;8050
	dec b			;8051
	dec b			;8052
	dec b			;8053
	dec b			;8054
	dec b			;8055
	dec b			;8056
	dec b			;8057
	dec b			;8058
	dec b			;8059
	dec b			;805a
	dec b			;805b
	dec b			;805c
	dec b			;805d
	dec b			;805e
	dec b			;805f
	ld b,006h		;8060
	ld b,006h		;8062
	ld b,006h		;8064
	ld b,006h		;8066
	ld b,006h		;8068
	ld b,006h		;806a
	ld b,006h		;806c
	ld b,006h		;806e
	rlca			;8070
	rlca			;8071
	rlca			;8072
	rlca			;8073
	rlca			;8074
	rlca			;8075
	rlca			;8076
	rlca			;8077
	rlca			;8078
	rlca			;8079
	rlca			;807a
	rlca			;807b
	rlca			;807c
	rlca			;807d
	rlca			;807e
	rlca			;807f
	ex af,af'		;8080
	ex af,af'		;8081
	ex af,af'		;8082
	ex af,af'		;8083
	ex af,af'		;8084
	ex af,af'		;8085
	ex af,af'		;8086
	ex af,af'		;8087
	ex af,af'		;8088
	ex af,af'		;8089
	ex af,af'		;808a
	ex af,af'		;808b
	ex af,af'		;808c
	ex af,af'		;808d
	ex af,af'		;808e
	ex af,af'		;808f
	add hl,bc		;8090
	add hl,bc		;8091
	add hl,bc		;8092
	add hl,bc		;8093
	add hl,bc		;8094
	add hl,bc		;8095
	add hl,bc		;8096
	add hl,bc		;8097
	add hl,bc		;8098
	add hl,bc		;8099
	add hl,bc		;809a
	add hl,bc		;809b
	add hl,bc		;809c
	add hl,bc		;809d
	add hl,bc		;809e
	add hl,bc		;809f
	ld a,(bc)		;80a0
	ld a,(bc)		;80a1
	ld a,(bc)		;80a2
	ld a,(bc)		;80a3
	ld a,(bc)		;80a4
	ld a,(bc)		;80a5
	ld a,(bc)		;80a6
	ld a,(bc)		;80a7
	ld a,(bc)		;80a8
	ld a,(bc)		;80a9
	ld a,(bc)		;80aa
	ld a,(bc)		;80ab
	ld a,(bc)		;80ac
	ld a,(bc)		;80ad
	ld a,(bc)		;80ae
	ld a,(bc)		;80af
	dec bc			;80b0
	dec bc			;80b1
	dec bc			;80b2
	dec bc			;80b3
	dec bc			;80b4
	dec bc			;80b5
	dec bc			;80b6
	dec bc			;80b7
	dec bc			;80b8
	dec bc			;80b9
	dec bc			;80ba
	dec bc			;80bb
	dec bc			;80bc
	dec bc			;80bd
	dec bc			;80be
	dec bc			;80bf
	inc c			;80c0
	inc c			;80c1
	inc c			;80c2
	inc c			;80c3
	inc c			;80c4
	inc c			;80c5
	inc c			;80c6
	inc c			;80c7
	inc c			;80c8
	inc c			;80c9
	inc c			;80ca
	inc c			;80cb
	inc c			;80cc
	inc c			;80cd
	inc c			;80ce
	inc c			;80cf
	dec c			;80d0
	dec c			;80d1
	dec c			;80d2
	dec c			;80d3
	dec c			;80d4
	dec c			;80d5
	dec c			;80d6
	dec c			;80d7
	dec c			;80d8
	dec c			;80d9
	dec c			;80da
	dec c			;80db
	dec c			;80dc
	dec c			;80dd
	dec c			;80de
	dec c			;80df
	ld c,00eh		;80e0
	ld c,00eh		;80e2
	ld c,00eh		;80e4
	ld c,00eh		;80e6
	ld c,00eh		;80e8
	ld c,00eh		;80ea
	ld c,00eh		;80ec
	ld c,00eh		;80ee
	rrca			;80f0
	rrca			;80f1
	rrca			;80f2
	rrca			;80f3
l80f4h:
	rrca			;80f4
	rrca			;80f5
	rrca			;80f6
	rrca			;80f7
	rrca			;80f8
	rrca			;80f9
	rrca			;80fa
	rrca			;80fb
	rrca			;80fc
	rrca			;80fd
	rrca			;80fe
	rrca			;80ff
	nop			;8100
	nop			;8101
	nop			;8102
	nop			;8103
	nop			;8104
	nop			;8105
	rlca			;8106
	ld c,00eh		;8107
	rlca			;8109
	nop			;810a
	nop			;810b
	nop			;810c
	nop			;810d
	nop			;810e
	nop			;810f
	ld c,00eh		;8110
	ld c,00eh		;8112
	ld c,00eh		;8114
	ld c,00eh		;8116
	ld c,00eh		;8118
	ld c,00eh		;811a
	ld c,00eh		;811c
	ld c,00eh		;811e
	nop			;8120
	nop			;8121
	nop			;8122
	nop			;8123
	nop			;8124
	nop			;8125
	rlca			;8126
	ld c,00eh		;8127
	ld c,007h		;8129
	nop			;812b
	nop			;812c
	nop			;812d
	nop			;812e
	nop			;812f
	nop			;8130
	nop			;8131
	rlca			;8132
	ld c,00eh		;8133
	ld c,000h		;8135
	nop			;8137
	nop			;8138
	nop			;8139
	rlca			;813a
	ld c,00eh		;813b
	ld c,000h		;813d
	nop			;813f
	nop			;8140
	nop			;8141
	nop			;8142
	nop			;8143
	nop			;8144
	ld b,00ah		;8145
	ld c,00eh		;8147
	ld c,00ah		;8149
	ld b,000h		;814b
	nop			;814d
	nop			;814e
	nop			;814f
	rlca			;8150
	ld c,00eh		;8151
	ld c,00eh		;8153
	ld c,00eh		;8155
	nop			;8157
	rlca			;8158
	ld c,00eh		;8159
	ld c,00eh		;815b
	ld c,00eh		;815d
	nop			;815f
	nop			;8160
	nop			;8161
	nop			;8162
	nop			;8163
	dec c			;8164
	ex af,af'		;8165
	ex af,af'		;8166
	ld c,00eh		;8167
	ex af,af'		;8169
	ex af,af'		;816a
	dec c			;816b
	nop			;816c
	nop			;816d
	nop			;816e
	nop			;816f
	nop			;8170
	rlca			;8171
	rlca			;8172
	ld c,00eh		;8173
	ld c,00eh		;8175
	nop			;8177
	rlca			;8178
	rlca			;8179
	ld c,00eh		;817a
	ld c,00eh		;817c
	nop			;817e
	nop			;817f
	nop			;8180
	nop			;8181
	dec c			;8182
	ex af,af'		;8183
	ex af,af'		;8184
	ld c,008h		;8185
	ld c,00eh		;8187
	ex af,af'		;8189
	ld c,008h		;818a
	ex af,af'		;818c
	dec c			;818d
	nop			;818e
	nop			;818f
	nop			;8190
	rlca			;8191
	rlca			;8192
	ld c,00eh		;8193
	ld c,00eh		;8195
	nop			;8197
	rlca			;8198
	rlca			;8199
	ld c,00eh		;819a
	ld c,00eh		;819c
	nop			;819e
	nop			;819f
	ld b,006h		;81a0
	ld a,(bc)		;81a2
	ld b,00ah		;81a3
	ld c,00ah		;81a5
	ld c,00eh		;81a7
	ld a,(bc)		;81a9
	ld c,00ah		;81aa
	ld b,00ah		;81ac
	ld b,006h		;81ae
	rlca			;81b0
	ld c,00eh		;81b1
	ld c,00eh		;81b3
	ld c,00eh		;81b5
	nop			;81b7
	rlca			;81b8
	ld c,00eh		;81b9
	ld c,00eh		;81bb
	ld c,00eh		;81bd
	nop			;81bf
	inc c			;81c0
	ld c,00ch		;81c1
	dec c			;81c3
	dec c			;81c4
	rrca			;81c5
	add hl,bc		;81c6
	rrca			;81c7
	ld c,008h		;81c8
	inc c			;81ca
	dec c			;81cb
	rrca			;81cc
	ex af,af'		;81cd
	dec b			;81ce
	dec c			;81cf
	ld c,005h		;81d0
	dec b			;81d2
	dec c			;81d3
	rrca			;81d4
	dec b			;81d5
	rrca			;81d6
	ex af,af'		;81d7
	ex af,af'		;81d8
	ex af,af'		;81d9
	ex af,af'		;81da
	ex af,af'		;81db
	ld c,005h		;81dc
	dec c			;81de
	rrca			;81df
	ex af,af'		;81e0
	ld c,008h		;81e1
	dec b			;81e3
	dec c			;81e4
	rrca			;81e5
	add hl,bc		;81e6
	rrca			;81e7
	ex af,af'		;81e8
	inc c			;81e9
	dec c			;81ea
	rrca			;81eb
	dec c			;81ec
	inc c			;81ed
	inc c			;81ee
	inc c			;81ef
	nop			;81f0
	nop			;81f1
	nop			;81f2
	nop			;81f3
	nop			;81f4
	nop			;81f5
	nop			;81f6
	ld c,00ah		;81f7
	nop			;81f9
	nop			;81fa
	nop			;81fb
	nop			;81fc
	nop			;81fd
	nop			;81fe
	nop			;81ff
	nop			;8200
	nop			;8201
	ld a,(bc)		;8202
	ld c,00ah		;8203
	ld c,00ah		;8205
	ld c,00ah		;8207
	ld c,00ah		;8209
	ld c,00ah		;820b
	ld c,000h		;820d
	nop			;820f
	ld a,(bc)		;8210
	ld c,00ah		;8211
	ld c,00ah		;8213
	ld c,00ah		;8215
	ld c,00ah		;8217
	ld c,00ah		;8219
	ld c,00ah		;821b
	ld c,00ah		;821d
	ld c,000h		;821f
	nop			;8221
	nop			;8222
	nop			;8223
	nop			;8224
	nop			;8225
	ld b,00eh		;8226
	ld a,(bc)		;8228
	ld b,000h		;8229
	nop			;822b
	nop			;822c
	nop			;822d
	nop			;822e
	nop			;822f
	nop			;8230
	ld c,00eh		;8231
	ex af,af'		;8233
	dec c			;8234
	ex af,af'		;8235
	ld c,00eh		;8236
	ex af,af'		;8238
	dec c			;8239
	dec c			;823a
	ex af,af'		;823b
	ex af,af'		;823c
	ld c,000h		;823d
	nop			;823f
	dec c			;8240
	dec c			;8241
	ex af,af'		;8242
	ex af,af'		;8243
	ld c,00eh		;8244
	ex af,af'		;8246
	ex af,af'		;8247
	dec c			;8248
	ex af,af'		;8249
	dec c			;824a
	dec c			;824b
	add hl,bc		;824c
	dec c			;824d
	add hl,bc		;824e
	add hl,bc		;824f
	inc b			;8250
	ld c,00eh		;8251
	inc b			;8253
	inc b			;8254
	ld b,006h		;8255
	ld b,006h		;8257
	ld b,006h		;8259
	inc b			;825b
	inc b			;825c
	ld c,00eh		;825d
	inc b			;825f
	nop			;8260
	add hl,bc		;8261
	ld c,00dh		;8262
	ex af,af'		;8264
	ld c,008h		;8265
	ld c,009h		;8267
	ld c,008h		;8269
	dec c			;826b
	ex af,af'		;826c
	ld c,009h		;826d
	nop			;826f
	inc c			;8270
	dec bc			;8271
	inc c			;8272
	rrca			;8273
	ld c,00ch		;8274
	dec bc			;8276
	rrca			;8277
	inc c			;8278
	ld (bc),a		;8279
	inc bc			;827a
	ld c,003h		;827b
	ld (bc),a		;827d
	ld bc,00203h		;827e
	ld bc,00e03h		;8281
	inc bc			;8284
	ld (bc),a		;8285
	ld bc,00f0ch		;8286
	dec bc			;8289
	rrca			;828a
	inc c			;828b
	rrca			;828c
	inc c			;828d
	inc c			;828e
	rrca			;828f
	nop			;8290
	ld c,00eh		;8291
	ld c,00eh		;8293
	ld c,00eh		;8295
	nop			;8297
	rlca			;8298
	rlca			;8299
	rlca			;829a
	ld c,008h		;829b
	ex af,af'		;829d
	ld b,00eh		;829e
	nop			;82a0
	nop			;82a1
	nop			;82a2
	nop			;82a3
	ld a,(bc)		;82a4
	ex af,af'		;82a5
	ex af,af'		;82a6
	ex af,af'		;82a7
	ex af,af'		;82a8
	ex af,af'		;82a9
	ex af,af'		;82aa
	ex af,af'		;82ab
	ld c,00eh		;82ac
	ld c,00eh		;82ae
	dec c			;82b0
	dec c			;82b1
	ld c,00eh		;82b2
	ld c,00ah		;82b4
	nop			;82b6
	nop			;82b7
	nop			;82b8
	nop			;82b9
	nop			;82ba
	nop			;82bb
	nop			;82bc
	nop			;82bd
	nop			;82be
	nop			;82bf
	ld c,00eh		;82c0
	ld c,00eh		;82c2
	ld c,00eh		;82c4
	ld c,000h		;82c6
	rlca			;82c8
	rlca			;82c9
	rlca			;82ca
	dec c			;82cb
	ld c,008h		;82cc
	ex af,af'		;82ce
	ld b,000h		;82cf
	nop			;82d1
	nop			;82d2
	ld a,(bc)		;82d3
	ex af,af'		;82d4
	ex af,af'		;82d5
	ex af,af'		;82d6
	ex af,af'		;82d7
	ex af,af'		;82d8
	ex af,af'		;82d9
	ex af,af'		;82da
	ex af,af'		;82db
	ld c,00eh		;82dc
	ld c,00eh		;82de
	dec c			;82e0
	ex af,af'		;82e1
	dec c			;82e2
	ld c,00eh		;82e3
	ld c,00ah		;82e5
	nop			;82e7
	nop			;82e8
	nop			;82e9
	nop			;82ea
	nop			;82eb
	nop			;82ec
	nop			;82ed
	nop			;82ee
	nop			;82ef
	nop			;82f0
	ld c,00eh		;82f1
	ld c,00eh		;82f3
	ld c,00eh		;82f5
	ld c,007h		;82f7
	rlca			;82f9
	rlca			;82fa
	rlca			;82fb
	dec c			;82fc
	ld c,008h		;82fd
	ld c,000h		;82ff
	nop			;8301
	nop			;8302
	nop			;8303
	ld a,(bc)		;8304
	ex af,af'		;8305
	ex af,af'		;8306
	ex af,af'		;8307
	ex af,af'		;8308
	ex af,af'		;8309
	ex af,af'		;830a
	ex af,af'		;830b
	ld c,00eh		;830c
	ld c,00eh		;830e
	ld c,00dh		;8310
	dec c			;8312
	ld c,00eh		;8313
	ld a,(bc)		;8315
	nop			;8316
	nop			;8317
	nop			;8318
	nop			;8319
	nop			;831a
	nop			;831b
	nop			;831c
	nop			;831d
	nop			;831e
	nop			;831f
	nop			;8320
	nop			;8321
	nop			;8322
	nop			;8323
	nop			;8324
	nop			;8325
	rlca			;8326
	ld c,007h		;8327
	nop			;8329
	nop			;832a
	nop			;832b
	nop			;832c
	nop			;832d
	nop			;832e
	nop			;832f
	nop			;8330
	rlca			;8331
	rlca			;8332
	ld c,00eh		;8333
	ld c,00eh		;8335
	nop			;8337
	nop			;8338
	rlca			;8339
	rlca			;833a
	ld c,00eh		;833b
	ld c,00eh		;833d
	nop			;833f
	nop			;8340
	nop			;8341
	nop			;8342
	rlca			;8343
	ld c,007h		;8344
	nop			;8346
	nop			;8347
	nop			;8348
	nop			;8349
	rlca			;834a
	ld c,007h		;834b
	nop			;834d
	nop			;834e
	nop			;834f
	nop			;8350
	nop			;8351
	nop			;8352
	nop			;8353
	ld c,00eh		;8354
	ld b,00ah		;8356
	ld c,00ah		;8358
	ld b,00eh		;835a
	ld c,000h		;835c
	nop			;835e
	nop			;835f
	ex af,af'		;8360
	ld c,008h		;8361
	dec b			;8363
	dec c			;8364
	rrca			;8365
	add hl,bc		;8366
	rrca			;8367
	ex af,af'		;8368
	inc c			;8369
	dec c			;836a
	rrca			;836b
	dec c			;836c
	inc c			;836d
	inc c			;836e
	inc c			;836f
	dec bc			;8370
	dec bc			;8371
	dec bc			;8372
	dec bc			;8373
	ld c,00eh		;8374
	ld c,00eh		;8376
	dec bc			;8378
	dec bc			;8379
	dec bc			;837a
	dec bc			;837b
	dec bc			;837c
	dec bc			;837d
	dec bc			;837e
	dec bc			;837f
	rlca			;8380
	rlca			;8381
	rlca			;8382
	rlca			;8383
	dec bc			;8384
	dec bc			;8385
	dec bc			;8386
	dec bc			;8387
	rlca			;8388
	rlca			;8389
	rlca			;838a
	rlca			;838b
	rlca			;838c
	rlca			;838d
	rlca			;838e
	rlca			;838f
	nop			;8390
	nop			;8391
	ex af,af'		;8392
	ld c,00eh		;8393
	ex af,af'		;8395
	ex af,af'		;8396
	dec c			;8397
	rlca			;8398
	ex af,af'		;8399
	ex af,af'		;839a
	ld c,008h		;839b
	ex af,af'		;839d
	dec c			;839e
	nop			;839f
	nop			;83a0
	nop			;83a1
	nop			;83a2
	nop			;83a3
	ld c,008h		;83a4
	dec c			;83a6
	dec c			;83a7
	ex af,af'		;83a8
	rlca			;83a9
	dec c			;83aa
	ex af,af'		;83ab
	ex af,af'		;83ac
	nop			;83ad
	nop			;83ae
	nop			;83af
	nop			;83b0
	nop			;83b1
	nop			;83b2
	nop			;83b3
	nop			;83b4
	rlca			;83b5
	ld c,008h		;83b6
	ex af,af'		;83b8
	dec c			;83b9
	dec c			;83ba
	rlca			;83bb
	nop			;83bc
	nop			;83bd
	nop			;83be
	nop			;83bf
	nop			;83c0
	nop			;83c1
	nop			;83c2
	nop			;83c3
	ld c,008h		;83c4
	dec c			;83c6
	rlca			;83c7
	ex af,af'		;83c8
	ld c,00eh		;83c9
	ex af,af'		;83cb
	dec c			;83cc
	nop			;83cd
	nop			;83ce
	nop			;83cf
	dec bc			;83d0
	dec bc			;83d1
	dec bc			;83d2
	ld b,006h		;83d3
	ld c,00bh		;83d5
	dec bc			;83d7
	dec bc			;83d8
	dec bc			;83d9
	dec bc			;83da
	dec bc			;83db
	dec c			;83dc
	dec bc			;83dd
	dec bc			;83de
	nop			;83df
	ld c,h			;83e0
	ld c,h			;83e1
	ld c,h			;83e2
	ld c,h			;83e3
	ld c,l			;83e4
	ld c,l			;83e5
	ld c,h			;83e6
	ld c,h			;83e7
	ld c,h			;83e8
	ld c,h			;83e9
	ld c,h			;83ea
	ld c,h			;83eb
	ld c,a			;83ec
	ld c,h			;83ed
	ld c,h			;83ee
	ld b,b			;83ef
	dec bc			;83f0
	dec bc			;83f1
	dec bc			;83f2
	dec bc			;83f3
	dec bc			;83f4
	dec bc			;83f5
	dec bc			;83f6
	dec bc			;83f7
	dec bc			;83f8
	dec bc			;83f9
	dec bc			;83fa
	dec bc			;83fb
	ld a,(bc)		;83fc
	dec bc			;83fd
	dec bc			;83fe
	dec bc			;83ff
	ld c,h			;8400
	ld c,h			;8401
	ld c,h			;8402
	ld c,h			;8403
	ld c,h			;8404
	ld c,h			;8405
	ld c,(hl)		;8406
	ld c,h			;8407
	ld c,h			;8408
	ld c,(hl)		;8409
	ld c,h			;840a
	ld c,h			;840b
	ld c,a			;840c
	ld c,h			;840d
	ld c,h			;840e
	ld c,h			;840f
	dec bc			;8410
	dec bc			;8411
	dec bc			;8412
	ld a,(bc)		;8413
	dec bc			;8414
	dec bc			;8415
	dec bc			;8416
	dec bc			;8417
	dec bc			;8418
	dec bc			;8419
	dec bc			;841a
	dec bc			;841b
	dec bc			;841c
	dec bc			;841d
	dec bc			;841e
	dec bc			;841f
	ld c,h			;8420
	ld c,h			;8421
	ld c,h			;8422
	ld c,a			;8423
	ld c,h			;8424
	ld c,h			;8425
	ld c,(hl)		;8426
	ld c,h			;8427
	ld c,h			;8428
	ld c,(hl)		;8429
	ld c,h			;842a
	ld c,h			;842b
	ld c,h			;842c
	ld c,h			;842d
	ld c,h			;842e
	ld c,h			;842f
	inc c			;8430
	dec bc			;8431
	inc c			;8432
	rrca			;8433
	ld c,00ch		;8434
	dec bc			;8436
	rrca			;8437
	inc c			;8438
	inc b			;8439
	dec b			;843a
	ld c,005h		;843b
	inc b			;843d
	inc bc			;843e
	dec b			;843f
	inc b			;8440
	inc bc			;8441
	dec b			;8442
	ld c,005h		;8443
	inc b			;8445
	inc bc			;8446
	inc c			;8447
	rrca			;8448
	dec bc			;8449
	rrca			;844a
	inc c			;844b
	rrca			;844c
	inc c			;844d
	inc c			;844e
	rrca			;844f
	ld b,l			;8450
	ld b,l			;8451
	ld b,l			;8452
	ld b,l			;8453
	ld b,l			;8454
	ld b,l			;8455
	ld b,l			;8456
	ld b,l			;8457
	ld b,l			;8458
	ld b,l			;8459
	ld b,l			;845a
	ld b,l			;845b
	ld b,l			;845c
	ld b,l			;845d
	ld b,l			;845e
	ld b,l			;845f
	ld b,(hl)		;8460
	ld b,(hl)		;8461
	ld b,(hl)		;8462
	ld b,(hl)		;8463
	ld b,(hl)		;8464
	ld b,(hl)		;8465
	ld b,(hl)		;8466
	ld b,(hl)		;8467
	ld b,(hl)		;8468
	ld b,(hl)		;8469
	ld b,(hl)		;846a
	ld b,(hl)		;846b
	ld b,(hl)		;846c
	ld b,(hl)		;846d
	ld b,(hl)		;846e
	ld b,(hl)		;846f
	ld b,a			;8470
	ld b,a			;8471
	ld b,a			;8472
	ld b,a			;8473
	ld b,a			;8474
	ld b,a			;8475
	ld b,a			;8476
	ld b,a			;8477
	ld b,a			;8478
	ld b,a			;8479
	ld b,a			;847a
	ld b,a			;847b
	ld b,a			;847c
	ld b,a			;847d
	ld b,a			;847e
	ld b,a			;847f
	ld c,b			;8480
	ld c,b			;8481
	ld c,b			;8482
	ld c,b			;8483
	ld c,b			;8484
	ld c,b			;8485
	ld c,b			;8486
	ld c,b			;8487
	ld c,b			;8488
	ld c,b			;8489
	ld c,b			;848a
	ld c,b			;848b
	ld c,b			;848c
	ld c,b			;848d
	ld c,b			;848e
	ld c,b			;848f
	ld c,c			;8490
	ld c,c			;8491
	ld c,c			;8492
	ld c,c			;8493
	ld c,c			;8494
	ld c,c			;8495
	ld c,c			;8496
	ld c,c			;8497
	ld c,c			;8498
	ld c,c			;8499
	ld c,c			;849a
	ld c,c			;849b
	ld c,c			;849c
	ld c,c			;849d
	ld c,c			;849e
	ld c,c			;849f
	ld c,d			;84a0
	ld c,d			;84a1
	ld c,d			;84a2
	ld c,d			;84a3
	ld c,d			;84a4
	ld c,d			;84a5
	ld c,d			;84a6
	ld c,d			;84a7
	ld c,d			;84a8
	ld c,d			;84a9
	ld c,d			;84aa
	ld c,d			;84ab
	ld c,d			;84ac
	ld c,d			;84ad
	ld c,d			;84ae
	ld c,d			;84af
	ld c,e			;84b0
	ld c,e			;84b1
	ld c,e			;84b2
	ld c,e			;84b3
	ld c,e			;84b4
	ld c,e			;84b5
	ld c,e			;84b6
	ld c,e			;84b7
	ld c,e			;84b8
	ld c,e			;84b9
	ld c,e			;84ba
	ld c,e			;84bb
	ld c,e			;84bc
	ld c,e			;84bd
	ld c,e			;84be
	ld c,e			;84bf
	ld c,h			;84c0
	ld c,h			;84c1
	ld c,h			;84c2
	ld c,h			;84c3
	ld c,h			;84c4
	ld c,h			;84c5
	ld c,h			;84c6
	ld c,h			;84c7
	ld c,h			;84c8
	ld c,h			;84c9
	ld c,h			;84ca
	ld c,h			;84cb
	ld c,h			;84cc
	ld c,h			;84cd
	ld c,h			;84ce
	ld c,h			;84cf
	ld c,l			;84d0
	ld c,l			;84d1
	ld c,l			;84d2
	ld c,l			;84d3
	ld c,l			;84d4
	ld c,l			;84d5
	ld c,l			;84d6
	ld c,l			;84d7
	ld c,l			;84d8
	ld c,l			;84d9
	ld c,l			;84da
	ld c,l			;84db
	ld c,l			;84dc
	ld c,l			;84dd
	ld c,l			;84de
	ld c,l			;84df
	ld c,(hl)		;84e0
	ld c,(hl)		;84e1
	ld c,(hl)		;84e2
	ld c,(hl)		;84e3
	ld c,(hl)		;84e4
	ld c,(hl)		;84e5
	ld c,(hl)		;84e6
	ld c,(hl)		;84e7
	ld c,(hl)		;84e8
	ld c,(hl)		;84e9
	ld c,(hl)		;84ea
	ld c,(hl)		;84eb
	ld c,(hl)		;84ec
	ld c,(hl)		;84ed
	ld c,(hl)		;84ee
	ld c,(hl)		;84ef
	ld c,a			;84f0
	ld c,a			;84f1
	ld c,a			;84f2
	ld c,a			;84f3
	ld c,a			;84f4
	ld c,a			;84f5
	ld c,a			;84f6
	ld c,a			;84f7
	ld c,a			;84f8
	ld c,a			;84f9
	ld c,a			;84fa
	ld c,a			;84fb
	ld c,a			;84fc
	ld c,a			;84fd
	ld c,a			;84fe
	ld c,a			;84ff
	nop			;8500
	ld b,006h		;8501
	ld b,00dh		;8503
	dec bc			;8505
	dec bc			;8506
	dec bc			;8507
	dec bc			;8508
	dec bc			;8509
	dec bc			;850a
	dec bc			;850b
	dec bc			;850c
	dec bc			;850d
	dec bc			;850e
	dec bc			;850f
	ld b,b			;8510
	ld c,d			;8511
	ld c,d			;8512
	ld c,d			;8513
	ld c,(hl)		;8514
	ld c,(hl)		;8515
	ld c,(hl)		;8516
	ld c,h			;8517
	ld c,h			;8518
	ld c,h			;8519
	ld c,h			;851a
	ld c,h			;851b
	ld c,h			;851c
	ld c,h			;851d
	ld c,h			;851e
	ld c,h			;851f
	nop			;8520
	ld b,006h		;8521
	ld b,00dh		;8523
	ld b,006h		;8525
	ld b,006h		;8527
	ld b,00ah		;8529
	dec c			;852b
	ld a,(bc)		;852c
	ld b,006h		;852d
	ld b,040h		;852f
	ld c,d			;8531
	ld c,d			;8532
	ld c,d			;8533
	ld c,(hl)		;8534
	ld c,d			;8535
	ld c,d			;8536
	ld c,l			;8537
	ld c,l			;8538
	ld c,d			;8539
	ld c,l			;853a
	ld c,(hl)		;853b
	ld c,l			;853c
	ld c,l			;853d
	ld c,l			;853e
	ld c,l			;853f
	ld c,00bh		;8540
	dec bc			;8542
	dec bc			;8543
	dec bc			;8544
	dec bc			;8545
	ld b,00bh		;8546
	dec bc			;8548
	dec bc			;8549
	dec bc			;854a
	dec bc			;854b
	dec bc			;854c
	dec bc			;854d
	dec bc			;854e
	dec bc			;854f
	ld c,a			;8550
	ld c,h			;8551
	ld c,h			;8552
	ld c,h			;8553
	ld c,h			;8554
	ld c,h			;8555
	ld c,a			;8556
	ld b,(hl)		;8557
	ld b,(hl)		;8558
	ld c,h			;8559
	ld c,h			;855a
	ld c,h			;855b
	ld c,h			;855c
	ld c,h			;855d
	ld c,h			;855e
	ld c,h			;855f
	nop			;8560
	inc c			;8561
	dec bc			;8562
	ld b,006h		;8563
	ld b,00bh		;8565
	dec bc			;8567
	dec bc			;8568
	dec bc			;8569
	ld b,006h		;856a
	ld b,00bh		;856c
	dec bc			;856e
	dec bc			;856f
	ld b,b			;8570
	ld c,(hl)		;8571
	ld c,h			;8572
	ld c,d			;8573
	ld c,e			;8574
	ld c,e			;8575
	ld c,h			;8576
	ld c,h			;8577
	ld c,h			;8578
	ld c,h			;8579
	ld c,d			;857a
	ld c,e			;857b
	ld c,h			;857c
	ld c,h			;857d
	ld c,h			;857e
	ld c,h			;857f
	nop			;8580
	inc bc			;8581
	inc bc			;8582
	ld (bc),a		;8583
	ld (bc),a		;8584
	ld (bc),a		;8585
	ld (bc),a		;8586
	ld (bc),a		;8587
	ld (bc),a		;8588
	ld (bc),a		;8589
	ld (bc),a		;858a
	ld (bc),a		;858b
	ld (bc),a		;858c
	ld (bc),a		;858d
	ld (bc),a		;858e
	ld (bc),a		;858f
	ld (bc),a		;8590
	ld c,00eh		;8591
	inc bc			;8593
	inc bc			;8594
	ld (bc),a		;8595
	ld c,008h		;8596
	ld b,00dh		;8598
	inc bc			;859a
	ld c,00eh		;859b
	inc bc			;859d
	ld (bc),a		;859e
	ld bc,00b0bh		;859f
	ld c,00eh		;85a2
	ld b,00eh		;85a4
	ld b,006h		;85a6
	ld b,006h		;85a8
	ld b,006h		;85aa
	ld b,00bh		;85ac
	dec bc			;85ae
	dec bc			;85af
	ld c,h			;85b0
	ld c,h			;85b1
	ld c,l			;85b2
	ld c,l			;85b3
	ld c,l			;85b4
	ld c,l			;85b5
	ld c,l			;85b6
	ld c,l			;85b7
	ld c,l			;85b8
	ld c,l			;85b9
	ld c,l			;85ba
	ld c,e			;85bb
	ld c,l			;85bc
	ld c,h			;85bd
	ld c,h			;85be
	ld c,h			;85bf
	dec bc			;85c0
	dec bc			;85c1
	dec bc			;85c2
	dec bc			;85c3
	dec bc			;85c4
	dec bc			;85c5
	ld b,006h		;85c6
	dec bc			;85c8
	ld b,00bh		;85c9
	dec bc			;85cb
	dec bc			;85cc
	dec bc			;85cd
	dec bc			;85ce
	dec bc			;85cf
	ld c,h			;85d0
	ld c,h			;85d1
	ld c,h			;85d2
	ld c,h			;85d3
	ld c,h			;85d4
	ld c,h			;85d5
	ld c,h			;85d6
	ld c,h			;85d7
	ld b,(hl)		;85d8
	ld c,h			;85d9
	ld c,h			;85da
	ld c,h			;85db
	ld c,h			;85dc
	ld c,h			;85dd
	ld c,h			;85de
	ld c,h			;85df
	dec bc			;85e0
	dec c			;85e1
	ex af,af'		;85e2
	dec c			;85e3
	ex af,af'		;85e4
	dec bc			;85e5
	rlca			;85e6
	rlca			;85e7
	rlca			;85e8
	rlca			;85e9
	dec bc			;85ea
	ex af,af'		;85eb
	dec c			;85ec
	ex af,af'		;85ed
	dec c			;85ee
	dec bc			;85ef
	ld c,h			;85f0
	ld c,(hl)		;85f1
	ld c,h			;85f2
	ld c,(hl)		;85f3
	ld c,a			;85f4
	ld c,h			;85f5
	ld c,h			;85f6
	ld c,(hl)		;85f7
	ld c,e			;85f8
	ld c,h			;85f9
	ld c,h			;85fa
	ld c,a			;85fb
	ld c,(hl)		;85fc
	ld c,h			;85fd
	ld c,(hl)		;85fe
	ld c,h			;85ff
	dec bc			;8600
	inc c			;8601
	dec bc			;8602
	dec bc			;8603
	dec bc			;8604
	dec bc			;8605
	dec bc			;8606
	dec bc			;8607
	dec bc			;8608
	dec bc			;8609
	dec bc			;860a
	dec bc			;860b
	dec bc			;860c
	inc c			;860d
	dec bc			;860e
	dec bc			;860f
	ld c,h			;8610
	ld c,(hl)		;8611
	ld c,h			;8612
	ld c,h			;8613
	ld c,h			;8614
	ld c,h			;8615
	ld c,h			;8616
	ld c,(hl)		;8617
	ld c,h			;8618
	ld c,h			;8619
	ld c,h			;861a
	ld c,h			;861b
	ld c,h			;861c
	ld c,(hl)		;861d
	ld c,h			;861e
	ld c,h			;861f
	nop			;8620
	nop			;8621
	nop			;8622
	nop			;8623
	nop			;8624
	ld c,008h		;8625
	ld c,00dh		;8627
	ex af,af'		;8629
	ld c,000h		;862a
	nop			;862c
	nop			;862d
	nop			;862e
	nop			;862f
	ld b,008h		;8630
	ex af,af'		;8632
	dec c			;8633
	ex af,af'		;8634
	ld c,008h		;8635
	ld c,00eh		;8637
	ex af,af'		;8639
	dec c			;863a
	ex af,af'		;863b
	dec c			;863c
	ex af,af'		;863d
	ex af,af'		;863e
	ld b,00bh		;863f
	dec bc			;8641
	dec bc			;8642
	dec bc			;8643
	dec bc			;8644
	dec bc			;8645
	ex af,af'		;8646
	dec bc			;8647
	ex af,af'		;8648
	ld b,00bh		;8649
	dec bc			;864b
	dec bc			;864c
	dec bc			;864d
	dec bc			;864e
	dec bc			;864f
	ld c,h			;8650
	ld c,h			;8651
	ld c,(hl)		;8652
	ld c,h			;8653
	ld c,h			;8654
	ld c,h			;8655
	ld c,d			;8656
	ld c,(hl)		;8657
	ld c,d			;8658
	ld c,l			;8659
	ld c,h			;865a
	ld c,h			;865b
	ld c,h			;865c
	ld c,(hl)		;865d
	ld c,h			;865e
	ld c,h			;865f
	ld b,006h		;8660
	ld b,006h		;8662
	ex af,af'		;8664
	dec b			;8665
	ld b,005h		;8666
	dec b			;8668
	dec c			;8669
	dec c			;866a
	dec c			;866b
	dec c			;866c
	dec c			;866d
	dec b			;866e
	dec b			;866f
	ld c,c			;8670
	ld c,c			;8671
	ld c,h			;8672
	ld c,h			;8673
	ld c,(hl)		;8674
	ld c,b			;8675
	ld c,c			;8676
	ld c,b			;8677
	ld c,b			;8678
	ld c,(hl)		;8679
	ld c,(hl)		;867a
	ld c,(hl)		;867b
	ld c,(hl)		;867c
	ld c,(hl)		;867d
	ld c,(hl)		;867e
	ld c,(hl)		;867f
	nop			;8680
	add hl,bc		;8681
	ld b,006h		;8682
	add hl,bc		;8684
	ld b,006h		;8685
	dec c			;8687
	dec c			;8688
	dec c			;8689
	dec c			;868a
	dec c			;868b
	dec c			;868c
	dec c			;868d
	dec b			;868e
	nop			;868f
	ld b,b			;8690
	ld c,e			;8691
	ld c,h			;8692
	ld c,h			;8693
	ld c,(hl)		;8694
	ld c,b			;8695
	ld c,b			;8696
	ld c,(hl)		;8697
	ld c,(hl)		;8698
	ld c,(hl)		;8699
	ld c,(hl)		;869a
	ld c,(hl)		;869b
	ld c,(hl)		;869c
	ld c,(hl)		;869d
	ld c,(hl)		;869e
	ld b,b			;869f
	nop			;86a0
	nop			;86a1
	nop			;86a2
	dec b			;86a3
	dec c			;86a4
	dec c			;86a5
	add hl,bc		;86a6
	ld b,005h		;86a7
	dec c			;86a9
	dec c			;86aa
	dec b			;86ab
	nop			;86ac
	nop			;86ad
	nop			;86ae
	nop			;86af
	ld b,b			;86b0
	ld b,b			;86b1
	ld b,b			;86b2
	ld c,(hl)		;86b3
	ld c,(hl)		;86b4
	ld c,(hl)		;86b5
	ld c,(hl)		;86b6
	ld c,b			;86b7
	ld c,h			;86b8
	ld c,(hl)		;86b9
	ld c,(hl)		;86ba
	ld c,(hl)		;86bb
	ld b,b			;86bc
	ld b,b			;86bd
	ld b,b			;86be
	ld b,b			;86bf
	nop			;86c0
	dec c			;86c1
	dec c			;86c2
	dec c			;86c3
	dec c			;86c4
	dec c			;86c5
	dec c			;86c6
	dec c			;86c7
	dec b			;86c8
	dec b			;86c9
	ld b,009h		;86ca
	add hl,bc		;86cc
	ld b,006h		;86cd
	nop			;86cf
	ld b,b			;86d0
	ld c,(hl)		;86d1
	ld c,(hl)		;86d2
	ld c,(hl)		;86d3
	ld c,(hl)		;86d4
	ld c,(hl)		;86d5
	ld c,(hl)		;86d6
	ld c,(hl)		;86d7
	ld c,b			;86d8
	ld c,c			;86d9
	ld c,l			;86da
	ld c,(hl)		;86db
	ld c,(hl)		;86dc
	ld c,h			;86dd
	ld c,h			;86de
	ld b,b			;86df
	dec bc			;86e0
	dec bc			;86e1
	dec bc			;86e2
	dec bc			;86e3
	dec bc			;86e4
	rlca			;86e5
	rlca			;86e6
	rlca			;86e7
	rlca			;86e8
	rlca			;86e9
	rlca			;86ea
	dec bc			;86eb
	dec bc			;86ec
	dec bc			;86ed
	dec bc			;86ee
	dec bc			;86ef
	ld c,h			;86f0
	ld c,h			;86f1
	ld c,h			;86f2
	ld c,(hl)		;86f3
	ld c,h			;86f4
	ld c,h			;86f5
	ld c,(hl)		;86f6
	ld c,e			;86f7
	ld c,e			;86f8
	ld c,h			;86f9
	ld c,h			;86fa
	ld c,h			;86fb
	ld c,h			;86fc
	ld c,h			;86fd
	ld c,h			;86fe
	ld c,h			;86ff
	rlca			;8700
	rlca			;8701
	rlca			;8702
	rlca			;8703
	rlca			;8704
	rlca			;8705
	dec bc			;8706
	dec bc			;8707
	dec bc			;8708
	dec bc			;8709
	dec bc			;870a
	dec bc			;870b
	dec bc			;870c
	dec bc			;870d
	dec bc			;870e
	dec bc			;870f
	ld c,(hl)		;8710
	ld c,(hl)		;8711
	ld c,(hl)		;8712
	ld c,h			;8713
	ld c,e			;8714
	ld c,h			;8715
	ld c,h			;8716
	ld c,h			;8717
	ld c,h			;8718
	ld c,h			;8719
	ld c,h			;871a
	ld c,h			;871b
	ld c,h			;871c
	ld c,h			;871d
	ld c,h			;871e
	ld c,(hl)		;871f
	dec bc			;8720
	dec bc			;8721
	dec bc			;8722
	dec bc			;8723
	dec bc			;8724
	dec bc			;8725
	dec bc			;8726
	dec bc			;8727
	dec bc			;8728
	dec bc			;8729
	dec bc			;872a
	dec bc			;872b
	dec bc			;872c
	dec bc			;872d
	dec bc			;872e
	dec bc			;872f
	ld c,h			;8730
	ld c,h			;8731
	ld c,h			;8732
	ld c,h			;8733
	ld c,h			;8734
	ld c,h			;8735
	ld c,h			;8736
	ld c,h			;8737
	ld c,h			;8738
	ld c,h			;8739
	ld c,h			;873a
	ld c,h			;873b
	ld c,h			;873c
	ld c,h			;873d
	ld c,h			;873e
	ld c,h			;873f
	dec bc			;8740
	dec bc			;8741
	dec bc			;8742
	dec bc			;8743
	dec bc			;8744
	dec bc			;8745
	ld a,(bc)		;8746
	dec bc			;8747
	dec bc			;8748
	dec bc			;8749
	dec bc			;874a
	dec bc			;874b
	dec bc			;874c
	dec bc			;874d
	dec bc			;874e
	dec bc			;874f
	ld c,h			;8750
	ld c,h			;8751
	ld c,(hl)		;8752
	ld c,(hl)		;8753
	ld c,h			;8754
	ld c,h			;8755
	ld b,(hl)		;8756
	ld b,(hl)		;8757
	ld c,h			;8758
	ld c,h			;8759
	ld c,h			;875a
	ld c,h			;875b
	ld c,h			;875c
	ld c,h			;875d
	ld c,h			;875e
	ld c,h			;875f
	ld a,(bc)		;8760
	dec bc			;8761
	dec bc			;8762
	dec bc			;8763
	dec bc			;8764
	dec bc			;8765
	dec bc			;8766
	dec bc			;8767
	dec bc			;8768
	dec bc			;8769
	dec bc			;876a
	dec bc			;876b
	dec bc			;876c
	dec bc			;876d
	dec bc			;876e
	dec bc			;876f
	ld b,(hl)		;8770
	ld c,(hl)		;8771
	ld b,(hl)		;8772
	ld c,h			;8773
	ld c,h			;8774
	ld c,h			;8775
	ld c,h			;8776
	ld c,h			;8777
	ld c,h			;8778
	ld c,h			;8779
	ld c,h			;877a
	ld c,h			;877b
	ld c,h			;877c
	ld c,h			;877d
	ld c,h			;877e
	ld c,h			;877f
	nop			;8780
	nop			;8781
	ld a,(bc)		;8782
	dec bc			;8783
	dec bc			;8784
	dec bc			;8785
	dec bc			;8786
	dec bc			;8787
	dec bc			;8788
	dec bc			;8789
	dec bc			;878a
	dec bc			;878b
	dec bc			;878c
	dec bc			;878d
	dec bc			;878e
	dec bc			;878f
	ld b,b			;8790
	ld b,b			;8791
	ld b,(hl)		;8792
	ld c,(hl)		;8793
	ld b,(hl)		;8794
	ld c,h			;8795
	ld c,h			;8796
	ld c,h			;8797
	ld c,h			;8798
	ld c,h			;8799
	ld c,h			;879a
	ld c,h			;879b
	ld c,h			;879c
	ld c,h			;879d
	ld c,h			;879e
	ld c,h			;879f
	nop			;87a0
	nop			;87a1
	dec bc			;87a2
	ld a,(bc)		;87a3
	ld a,(bc)		;87a4
	dec bc			;87a5
	dec bc			;87a6
	dec bc			;87a7
	dec bc			;87a8
	dec bc			;87a9
	dec bc			;87aa
	dec bc			;87ab
	dec bc			;87ac
	dec bc			;87ad
	dec bc			;87ae
	dec bc			;87af
	ld b,b			;87b0
	ld b,b			;87b1
	ld b,(hl)		;87b2
	ld b,(hl)		;87b3
	ld b,(hl)		;87b4
	ld b,(hl)		;87b5
	ld b,(hl)		;87b6
	ld b,(hl)		;87b7
	ld c,h			;87b8
	ld c,h			;87b9
	ld c,h			;87ba
	ld c,h			;87bb
	ld c,h			;87bc
	ld c,h			;87bd
	ld c,h			;87be
	ld c,h			;87bf
	nop			;87c0
	nop			;87c1
	ld a,(bc)		;87c2
	dec bc			;87c3
	dec bc			;87c4
	dec bc			;87c5
	dec bc			;87c6
	dec bc			;87c7
	dec bc			;87c8
	dec bc			;87c9
	dec bc			;87ca
	dec bc			;87cb
	dec bc			;87cc
	dec bc			;87cd
	dec bc			;87ce
	dec bc			;87cf
	ld b,b			;87d0
	ld b,b			;87d1
	ld b,(hl)		;87d2
	ld c,(hl)		;87d3
	ld b,(hl)		;87d4
	ld c,h			;87d5
	ld c,h			;87d6
	ld c,h			;87d7
	ld c,h			;87d8
	ld c,h			;87d9
	ld c,h			;87da
	ld c,h			;87db
	ld c,h			;87dc
	ld c,h			;87dd
	ld c,h			;87de
	ld c,h			;87df
	ld a,(bc)		;87e0
	dec bc			;87e1
	dec bc			;87e2
	dec bc			;87e3
	dec bc			;87e4
	dec bc			;87e5
	dec bc			;87e6
	dec bc			;87e7
	dec bc			;87e8
	dec bc			;87e9
	dec bc			;87ea
	dec bc			;87eb
	dec bc			;87ec
	dec bc			;87ed
	dec bc			;87ee
	dec bc			;87ef
	ld b,(hl)		;87f0
	ld c,(hl)		;87f1
	ld b,(hl)		;87f2
	ld c,h			;87f3
	ld c,h			;87f4
	ld c,h			;87f5
	ld c,h			;87f6
	ld c,h			;87f7
	ld c,h			;87f8
	ld c,h			;87f9
	ld c,h			;87fa
	ld c,h			;87fb
	ld c,h			;87fc
	ld c,h			;87fd
	ld c,h			;87fe
	ld c,h			;87ff
	dec bc			;8800
	dec bc			;8801
	dec bc			;8802
	dec bc			;8803
	dec bc			;8804
	dec bc			;8805
	dec bc			;8806
	ld a,(bc)		;8807
	ld a,(bc)		;8808
	ld a,(bc)		;8809
	dec bc			;880a
	dec bc			;880b
	dec bc			;880c
	dec bc			;880d
	dec bc			;880e
	dec bc			;880f
	ld c,(hl)		;8810
	ld c,h			;8811
	ld c,h			;8812
	ld c,(hl)		;8813
	ld c,h			;8814
	ld c,h			;8815
	ld c,(hl)		;8816
	ld c,l			;8817
	ld c,l			;8818
	ld c,l			;8819
	ld c,(hl)		;881a
	ld c,(hl)		;881b
	ld c,h			;881c
	ld c,h			;881d
	ld c,h			;881e
	ld c,h			;881f
	nop			;8820
	nop			;8821
	nop			;8822
	nop			;8823
	dec bc			;8824
	inc c			;8825
	dec bc			;8826
	dec bc			;8827
	dec bc			;8828
	ld b,00bh		;8829
	dec bc			;882b
	dec bc			;882c
	inc c			;882d
	dec bc			;882e
	dec bc			;882f
	ld b,b			;8830
	ld b,b			;8831
	ld b,b			;8832
	ld b,b			;8833
	ld c,h			;8834
	ld c,(hl)		;8835
	ld c,h			;8836
	ld c,h			;8837
	ld c,h			;8838
	ld c,l			;8839
	ld c,(hl)		;883a
	ld c,h			;883b
	ld c,h			;883c
	ld c,(hl)		;883d
	ld c,h			;883e
	ld c,h			;883f
	dec bc			;8840
	dec bc			;8841
	dec bc			;8842
	dec bc			;8843
	dec bc			;8844
	dec bc			;8845
	ld b,00bh		;8846
	dec bc			;8848
	inc c			;8849
	dec bc			;884a
	dec bc			;884b
	nop			;884c
	nop			;884d
	nop			;884e
	nop			;884f
	ld c,h			;8850
	ld c,h			;8851
	ld c,h			;8852
	ld c,h			;8853
	ld c,h			;8854
	ld c,(hl)		;8855
	ld c,l			;8856
	ld c,h			;8857
	ld c,h			;8858
	ld c,(hl)		;8859
	ld c,h			;885a
	ld c,h			;885b
	ld b,b			;885c
	ld b,b			;885d
	ld b,b			;885e
	ld b,b			;885f
	ld a,(bc)		;8860
	ld a,(bc)		;8861
	ld a,(bc)		;8862
	dec bc			;8863
	dec bc			;8864
	dec bc			;8865
	dec bc			;8866
	dec bc			;8867
	dec bc			;8868
	dec bc			;8869
	dec bc			;886a
	dec bc			;886b
	dec bc			;886c
	dec bc			;886d
	dec bc			;886e
	dec bc			;886f
	ld b,(hl)		;8870
	ld b,(hl)		;8871
	ld b,(hl)		;8872
	ld c,h			;8873
	ld c,h			;8874
	ld c,h			;8875
	ld c,h			;8876
	ld c,h			;8877
	ld c,h			;8878
	ld c,(hl)		;8879
	ld c,h			;887a
	ld c,h			;887b
	ld c,h			;887c
	ld c,h			;887d
	ld c,h			;887e
	ld c,h			;887f
	dec bc			;8880
	dec bc			;8881
	dec bc			;8882
	dec bc			;8883
	dec bc			;8884
	dec bc			;8885
	dec bc			;8886
	dec bc			;8887
	dec bc			;8888
	dec bc			;8889
	dec bc			;888a
	dec bc			;888b
	dec bc			;888c
	ld a,(bc)		;888d
	ld a,(bc)		;888e
	ld a,(bc)		;888f
	ld c,h			;8890
	ld c,h			;8891
	ld c,h			;8892
	ld c,h			;8893
	ld c,h			;8894
	ld c,(hl)		;8895
	ld c,h			;8896
	ld c,h			;8897
	ld c,h			;8898
	ld c,h			;8899
	ld c,h			;889a
	ld c,h			;889b
	ld c,h			;889c
	ld b,(hl)		;889d
	ld b,(hl)		;889e
	ld b,(hl)		;889f
	rlca			;88a0
	rlca			;88a1
	rlca			;88a2
	dec bc			;88a3
	dec bc			;88a4
	dec bc			;88a5
	dec bc			;88a6
	dec bc			;88a7
	dec bc			;88a8
	dec bc			;88a9
	dec bc			;88aa
	dec bc			;88ab
	dec bc			;88ac
	dec bc			;88ad
	dec bc			;88ae
	dec bc			;88af
	ld c,(hl)		;88b0
	ld c,(hl)		;88b1
	ld c,(hl)		;88b2
	ld c,h			;88b3
	ld c,h			;88b4
	ld c,(hl)		;88b5
	ld c,(hl)		;88b6
	ld c,h			;88b7
	ld c,h			;88b8
	ld c,h			;88b9
	ld c,h			;88ba
	ld c,h			;88bb
	ld c,h			;88bc
	ld c,h			;88bd
	ld c,h			;88be
	ld c,h			;88bf
	rlca			;88c0
	rlca			;88c1
	rlca			;88c2
	dec bc			;88c3
	dec bc			;88c4
	dec bc			;88c5
	dec bc			;88c6
	dec bc			;88c7
	dec bc			;88c8
	dec bc			;88c9
	dec bc			;88ca
	dec bc			;88cb
	dec bc			;88cc
	dec bc			;88cd
	dec bc			;88ce
	dec bc			;88cf
	ld c,(hl)		;88d0
	ld c,(hl)		;88d1
	ld c,(hl)		;88d2
	ld b,a			;88d3
	ld c,(hl)		;88d4
	ld c,h			;88d5
	ld c,h			;88d6
	ld c,(hl)		;88d7
	ld c,h			;88d8
	ld c,h			;88d9
	ld c,h			;88da
	ld c,h			;88db
	ld b,a			;88dc
	ld b,a			;88dd
	ld b,a			;88de
	ld b,a			;88df
	dec bc			;88e0
	dec bc			;88e1
	inc c			;88e2
	dec bc			;88e3
	dec bc			;88e4
	dec bc			;88e5
	ld b,006h		;88e6
	ld b,006h		;88e8
	dec bc			;88ea
	dec bc			;88eb
	dec bc			;88ec
	inc c			;88ed
	dec bc			;88ee
	dec bc			;88ef
	ld c,h			;88f0
	ld c,h			;88f1
	ld c,(hl)		;88f2
	ld c,h			;88f3
	ld c,h			;88f4
	ld b,(hl)		;88f5
	ld c,d			;88f6
	ld c,d			;88f7
	ld c,d			;88f8
	ld c,d			;88f9
	ld b,(hl)		;88fa
	ld c,h			;88fb
	ld c,h			;88fc
	ld c,(hl)		;88fd
	ld c,h			;88fe
	ld c,h			;88ff
	nop			;8900
	dec bc			;8901
	dec bc			;8902
	dec c			;8903
	dec bc			;8904
	dec bc			;8905
	dec bc			;8906
	dec bc			;8907
	dec bc			;8908
	dec bc			;8909
	ld c,006h		;890a
	ld b,00bh		;890c
	dec bc			;890e
	dec bc			;890f
	ld b,b			;8910
	ld c,h			;8911
	ld c,h			;8912
	ld c,a			;8913
	ld c,h			;8914
	ld c,h			;8915
	ld c,h			;8916
	ld c,h			;8917
	ld c,h			;8918
	ld c,h			;8919
	ld c,l			;891a
	ld c,l			;891b
	ld c,h			;891c
	ld c,h			;891d
	ld c,h			;891e
	ld c,h			;891f
	dec bc			;8920
	dec bc			;8921
	dec bc			;8922
	dec bc			;8923
	dec bc			;8924
	ld b,006h		;8925
	ld b,006h		;8927
	ld b,00bh		;8929
	dec bc			;892b
	inc c			;892c
	dec bc			;892d
	dec bc			;892e
	dec bc			;892f
	ld c,(hl)		;8930
	ld c,(hl)		;8931
	ld c,(hl)		;8932
	ld c,(hl)		;8933
	ld c,(hl)		;8934
	ld c,h			;8935
	ld c,d			;8936
	ld c,d			;8937
	ld c,e			;8938
	ld c,e			;8939
	ld c,h			;893a
	ld c,h			;893b
	ld c,(hl)		;893c
	ld c,h			;893d
	ld c,h			;893e
	ld c,h			;893f
	dec bc			;8940
	ld b,00eh		;8941
	ld b,00bh		;8943
	dec bc			;8945
	dec bc			;8946
	dec bc			;8947
	dec bc			;8948
	dec bc			;8949
	dec bc			;894a
	dec bc			;894b
	dec bc			;894c
	dec bc			;894d
	dec bc			;894e
	dec bc			;894f
	ld c,h			;8950
	ld c,h			;8951
	ld c,a			;8952
	ld c,a			;8953
	ld c,h			;8954
	ld c,h			;8955
	ld c,h			;8956
	ld c,h			;8957
	ld c,h			;8958
	ld c,h			;8959
	ld c,h			;895a
	ld c,h			;895b
	ld c,h			;895c
	ld c,h			;895d
	ld c,h			;895e
	ld c,h			;895f
	dec bc			;8960
	inc c			;8961
	dec bc			;8962
	dec bc			;8963
	dec bc			;8964
	dec bc			;8965
	ld b,00ah		;8966
	ld a,(bc)		;8968
	ld b,00bh		;8969
	dec bc			;896b
	dec bc			;896c
	dec bc			;896d
	dec bc			;896e
	dec bc			;896f
	ld c,h			;8970
	ld c,(hl)		;8971
	ld c,h			;8972
	ld c,h			;8973
	ld c,h			;8974
	ld c,h			;8975
	ld c,l			;8976
	ld b,(hl)		;8977
	ld b,(hl)		;8978
	ld c,l			;8979
	ld c,h			;897a
	ld c,h			;897b
	ld c,h			;897c
	ld c,h			;897d
	ld c,h			;897e
	ld c,h			;897f
	dec bc			;8980
	dec bc			;8981
	dec bc			;8982
	dec bc			;8983
	dec bc			;8984
	dec bc			;8985
	ld b,006h		;8986
	ld b,006h		;8988
	dec bc			;898a
	dec bc			;898b
	dec bc			;898c
	dec bc			;898d
	dec bc			;898e
	dec bc			;898f
	ld c,h			;8990
	ld c,h			;8991
	ld c,(hl)		;8992
	ld c,h			;8993
	ld c,h			;8994
	ld c,h			;8995
	ld c,h			;8996
	ld c,d			;8997
	ld c,e			;8998
	ld c,h			;8999
	ld c,h			;899a
	ld c,h			;899b
	ld c,(hl)		;899c
	ld c,h			;899d
	ld c,h			;899e
	ld c,h			;899f
	nop			;89a0
	nop			;89a1
	nop			;89a2
	nop			;89a3
	inc bc			;89a4
	inc bc			;89a5
	ld b,008h		;89a6
	ld c,008h		;89a8
	inc bc			;89aa
	inc bc			;89ab
	nop			;89ac
	nop			;89ad
	nop			;89ae
	nop			;89af
	ld b,b			;89b0
	ld b,b			;89b1
	ld b,b			;89b2
	ld b,b			;89b3
	ld c,l			;89b4
	ld c,l			;89b5
	ld c,l			;89b6
	ld c,a			;89b7
	ld c,a			;89b8
	ld c,a			;89b9
	ld c,l			;89ba
	ld c,l			;89bb
	ld b,b			;89bc
	ld b,b			;89bd
	ld b,b			;89be
	ld b,b			;89bf
	inc c			;89c0
	dec bc			;89c1
	ld a,(bc)		;89c2
	ld b,006h		;89c3
	ld c,00bh		;89c5
	dec bc			;89c7
	dec bc			;89c8
	ld a,(bc)		;89c9
	ld b,006h		;89ca
	dec bc			;89cc
	dec bc			;89cd
	dec bc			;89ce
	nop			;89cf
	ld c,(hl)		;89d0
	ld c,h			;89d1
	ld c,h			;89d2
	ld c,e			;89d3
	ld c,e			;89d4
	ld c,e			;89d5
	ld c,h			;89d6
	ld c,h			;89d7
	ld c,h			;89d8
	ld c,a			;89d9
	ld c,h			;89da
	ld c,h			;89db
	ld c,h			;89dc
	ld c,h			;89dd
	ld c,h			;89de
	ld b,b			;89df
	dec bc			;89e0
	dec bc			;89e1
	dec bc			;89e2
	dec bc			;89e3
	dec bc			;89e4
	ld b,006h		;89e5
	ld b,006h		;89e7
	ld b,00bh		;89e9
	dec bc			;89eb
	dec bc			;89ec
	dec bc			;89ed
	dec bc			;89ee
	dec bc			;89ef
	ld c,h			;89f0
	ld c,h			;89f1
	ld c,h			;89f2
	ld c,h			;89f3
	ld c,h			;89f4
	ld c,e			;89f5
	ld c,e			;89f6
	ld c,e			;89f7
	ld c,h			;89f8
	ld c,h			;89f9
	ld c,h			;89fa
	ld c,h			;89fb
	ld c,h			;89fc
	ld c,h			;89fd
	ld c,h			;89fe
	ld c,h			;89ff
	dec bc			;8a00
	inc c			;8a01
	dec bc			;8a02
	dec bc			;8a03
	ld b,00bh		;8a04
	ld b,00bh		;8a06
	dec bc			;8a08
	dec bc			;8a09
	dec bc			;8a0a
	dec bc			;8a0b
	dec bc			;8a0c
	dec bc			;8a0d
	dec bc			;8a0e
	dec bc			;8a0f
	ld c,h			;8a10
	ld c,(hl)		;8a11
	ld c,h			;8a12
	ld c,h			;8a13
	ld c,l			;8a14
	ld c,(hl)		;8a15
	ld c,l			;8a16
	ld c,h			;8a17
	ld c,(hl)		;8a18
	ld c,h			;8a19
	ld c,h			;8a1a
	ld c,h			;8a1b
	ld c,h			;8a1c
	ld c,h			;8a1d
	ld c,h			;8a1e
	ld c,h			;8a1f
	dec bc			;8a20
	dec bc			;8a21
	inc c			;8a22
	dec bc			;8a23
	dec bc			;8a24
	dec bc			;8a25
	dec bc			;8a26
	ld a,(bc)		;8a27
	ld a,(bc)		;8a28
	ld b,00bh		;8a29
	dec bc			;8a2b
	dec bc			;8a2c
	dec bc			;8a2d
	dec bc			;8a2e
	dec bc			;8a2f
	ld c,h			;8a30
	ld c,h			;8a31
	ld c,(hl)		;8a32
	ld c,h			;8a33
	ld c,h			;8a34
	ld c,(hl)		;8a35
	ld c,(hl)		;8a36
	ld b,(hl)		;8a37
	ld c,e			;8a38
	ld c,l			;8a39
	ld c,h			;8a3a
	ld c,h			;8a3b
	ld c,h			;8a3c
	ld c,h			;8a3d
	ld c,h			;8a3e
	ld c,h			;8a3f
	nop			;8a40
	dec bc			;8a41
	inc c			;8a42
	dec bc			;8a43
	inc c			;8a44
	inc c			;8a45
	ld b,006h		;8a46
	ld b,006h		;8a48
	dec bc			;8a4a
	dec bc			;8a4b
	dec bc			;8a4c
	dec bc			;8a4d
	dec bc			;8a4e
	nop			;8a4f
	ld b,b			;8a50
	ld c,h			;8a51
	ld c,(hl)		;8a52
	ld c,h			;8a53
	ld c,(hl)		;8a54
	ld c,(hl)		;8a55
	ld c,e			;8a56
	ld c,d			;8a57
	ld c,e			;8a58
	ld c,e			;8a59
	ld c,h			;8a5a
	ld c,h			;8a5b
	ld c,h			;8a5c
	ld c,h			;8a5d
	ld c,h			;8a5e
	ld b,b			;8a5f
	ex af,af'		;8a60
	dec c			;8a61
	dec c			;8a62
	ex af,af'		;8a63
	dec c			;8a64
	dec c			;8a65
	dec c			;8a66
	dec c			;8a67
	dec c			;8a68
	dec c			;8a69
	dec c			;8a6a
	dec c			;8a6b
	dec c			;8a6c
	dec c			;8a6d
	nop			;8a6e
	nop			;8a6f
	ld c,(hl)		;8a70
	ld c,(hl)		;8a71
	ld c,(hl)		;8a72
	ld c,l			;8a73
	ld c,(hl)		;8a74
	ld c,(hl)		;8a75
	ld c,(hl)		;8a76
	ld c,(hl)		;8a77
	ld c,(hl)		;8a78
	ld c,(hl)		;8a79
	ld c,(hl)		;8a7a
	ld c,(hl)		;8a7b
	ld c,(hl)		;8a7c
	ld c,(hl)		;8a7d
	ld b,b			;8a7e
	ld b,b			;8a7f
	nop			;8a80
	dec bc			;8a81
	dec bc			;8a82
	dec bc			;8a83
	dec bc			;8a84
	dec bc			;8a85
	dec bc			;8a86
	dec bc			;8a87
	dec bc			;8a88
	dec bc			;8a89
	dec bc			;8a8a
	dec bc			;8a8b
	dec bc			;8a8c
	dec bc			;8a8d
	dec bc			;8a8e
	dec bc			;8a8f
	ld b,b			;8a90
	ld c,h			;8a91
	ld c,h			;8a92
	ld c,h			;8a93
	ld c,h			;8a94
	ld c,(hl)		;8a95
	ld c,h			;8a96
	ld c,(hl)		;8a97
	ld c,h			;8a98
	ld c,h			;8a99
	ld c,(hl)		;8a9a
	ld c,h			;8a9b
	ld c,h			;8a9c
	ld c,h			;8a9d
	ld c,h			;8a9e
	ld c,h			;8a9f
	dec bc			;8aa0
	ld b,006h		;8aa1
	ld b,006h		;8aa3
	dec bc			;8aa5
	ld b,00ah		;8aa6
	ld b,00bh		;8aa8
	dec bc			;8aaa
	ld b,006h		;8aab
	ld b,006h		;8aad
	dec bc			;8aaf
	ld c,h			;8ab0
	ld c,e			;8ab1
	ld c,e			;8ab2
	ld c,h			;8ab3
	ld c,e			;8ab4
	ld c,h			;8ab5
	ld c,e			;8ab6
	ld b,(hl)		;8ab7
	ld c,e			;8ab8
	ld c,h			;8ab9
	ld c,h			;8aba
	ld c,e			;8abb
	ld c,h			;8abc
	ld c,e			;8abd
	ld c,e			;8abe
	ld c,h			;8abf
	dec bc			;8ac0
	ld b,006h		;8ac1
	ld b,006h		;8ac3
	dec bc			;8ac5
	dec bc			;8ac6
	ld b,00ah		;8ac7
	ld b,00bh		;8ac9
	ld b,006h		;8acb
	ld b,006h		;8acd
	dec bc			;8acf
	ld c,h			;8ad0
	ld c,e			;8ad1
	ld c,e			;8ad2
	ld c,h			;8ad3
	ld c,e			;8ad4
	ld c,h			;8ad5
	ld c,h			;8ad6
	ld c,e			;8ad7
	ld b,(hl)		;8ad8
	ld c,e			;8ad9
	ld c,h			;8ada
	ld c,e			;8adb
	ld c,h			;8adc
	ld c,e			;8add
	ld c,e			;8ade
	ld c,h			;8adf
	dec bc			;8ae0
	dec bc			;8ae1
	dec bc			;8ae2
	dec bc			;8ae3
	dec bc			;8ae4
	dec bc			;8ae5
	ld b,00ah		;8ae6
	ld a,(bc)		;8ae8
	ld b,006h		;8ae9
	dec bc			;8aeb
	dec bc			;8aec
	dec bc			;8aed
	dec bc			;8aee
	dec bc			;8aef
	ld c,h			;8af0
	ld c,h			;8af1
	ld c,h			;8af2
	ld c,h			;8af3
	ld c,h			;8af4
	ld c,h			;8af5
	ld c,e			;8af6
	ld b,(hl)		;8af7
	ld b,(hl)		;8af8
	ld c,e			;8af9
	ld c,e			;8afa
	ld c,h			;8afb
	ld c,h			;8afc
	ld c,h			;8afd
	ld c,h			;8afe
	ld c,h			;8aff
	dec bc			;8b00
	dec bc			;8b01
	dec bc			;8b02
	dec bc			;8b03
	dec bc			;8b04
	ld b,006h		;8b05
	ld a,(bc)		;8b07
	ld a,(bc)		;8b08
	ld b,00bh		;8b09
	dec bc			;8b0b
	dec bc			;8b0c
	dec bc			;8b0d
	dec bc			;8b0e
	dec bc			;8b0f
	ld c,h			;8b10
	ld c,h			;8b11
	ld c,h			;8b12
	ld c,h			;8b13
	ld c,h			;8b14
	ld c,e			;8b15
	ld c,e			;8b16
	ld b,(hl)		;8b17
	ld b,(hl)		;8b18
	ld c,e			;8b19
	ld c,h			;8b1a
	ld c,h			;8b1b
	ld c,h			;8b1c
	ld c,h			;8b1d
	ld c,h			;8b1e
	ld c,h			;8b1f
	dec bc			;8b20
	rlca			;8b21
	rlca			;8b22
	rlca			;8b23
	rlca			;8b24
	dec bc			;8b25
	rlca			;8b26
	rlca			;8b27
	rlca			;8b28
	dec bc			;8b29
	dec bc			;8b2a
	rlca			;8b2b
	rlca			;8b2c
	rlca			;8b2d
	rlca			;8b2e
	dec bc			;8b2f
	ld c,h			;8b30
	ld c,e			;8b31
	ld c,e			;8b32
	ld c,(hl)		;8b33
	ld c,e			;8b34
	ld c,h			;8b35
	ld c,e			;8b36
	ld c,(hl)		;8b37
	ld c,e			;8b38
	ld c,h			;8b39
	ld c,h			;8b3a
	ld c,e			;8b3b
	ld c,(hl)		;8b3c
	ld c,e			;8b3d
	ld c,e			;8b3e
	ld c,h			;8b3f
	dec bc			;8b40
	rlca			;8b41
	rlca			;8b42
	rlca			;8b43
	rlca			;8b44
	dec bc			;8b45
	dec bc			;8b46
	rlca			;8b47
	rlca			;8b48
	rlca			;8b49
	dec bc			;8b4a
	rlca			;8b4b
	rlca			;8b4c
	rlca			;8b4d
	rlca			;8b4e
	dec bc			;8b4f
	ld c,h			;8b50
	ld c,e			;8b51
	ld c,e			;8b52
	ld c,(hl)		;8b53
	ld c,e			;8b54
	ld c,h			;8b55
	ld c,h			;8b56
	ld c,e			;8b57
	ld c,(hl)		;8b58
	ld c,e			;8b59
	ld c,h			;8b5a
	ld c,e			;8b5b
	ld c,(hl)		;8b5c
	ld c,e			;8b5d
	ld c,e			;8b5e
	ld c,h			;8b5f
	dec bc			;8b60
	dec bc			;8b61
	dec bc			;8b62
	dec bc			;8b63
	dec bc			;8b64
	dec bc			;8b65
	rlca			;8b66
	rlca			;8b67
	rlca			;8b68
	rlca			;8b69
	rlca			;8b6a
	dec bc			;8b6b
	dec bc			;8b6c
	dec bc			;8b6d
	dec bc			;8b6e
	dec bc			;8b6f
	ld c,h			;8b70
	ld c,h			;8b71
	ld c,h			;8b72
	ld c,h			;8b73
	ld c,h			;8b74
	ld c,h			;8b75
	ld c,e			;8b76
	ld c,(hl)		;8b77
	ld c,(hl)		;8b78
	ld c,(hl)		;8b79
	ld c,e			;8b7a
	ld c,h			;8b7b
	ld c,h			;8b7c
	ld c,h			;8b7d
	ld c,h			;8b7e
	ld c,h			;8b7f
	dec bc			;8b80
	dec bc			;8b81
	dec bc			;8b82
	dec bc			;8b83
	dec bc			;8b84
	rlca			;8b85
	rlca			;8b86
	rlca			;8b87
	rlca			;8b88
	rlca			;8b89
	dec bc			;8b8a
	dec bc			;8b8b
	dec bc			;8b8c
	dec bc			;8b8d
	dec bc			;8b8e
	dec bc			;8b8f
	ld c,h			;8b90
	ld c,h			;8b91
	ld c,h			;8b92
	ld c,h			;8b93
	ld c,h			;8b94
	ld c,e			;8b95
	ld c,(hl)		;8b96
	ld c,(hl)		;8b97
	ld c,(hl)		;8b98
	ld c,e			;8b99
	ld c,h			;8b9a
	ld c,h			;8b9b
	ld c,h			;8b9c
	ld c,h			;8b9d
	ld c,h			;8b9e
	ld c,h			;8b9f
	dec bc			;8ba0
	rlca			;8ba1
	rlca			;8ba2
	rlca			;8ba3
	rlca			;8ba4
	dec bc			;8ba5
	rlca			;8ba6
	rlca			;8ba7
	rlca			;8ba8
	rlca			;8ba9
	dec bc			;8baa
	dec bc			;8bab
	dec bc			;8bac
	dec bc			;8bad
	dec bc			;8bae
	dec bc			;8baf
	ld c,h			;8bb0
	ld c,e			;8bb1
	ld c,e			;8bb2
	ld c,(hl)		;8bb3
	ld c,e			;8bb4
	ld c,h			;8bb5
	ld c,e			;8bb6
	ld c,(hl)		;8bb7
	ld c,e			;8bb8
	ld c,h			;8bb9
	ld c,h			;8bba
	ld c,h			;8bbb
	ld c,h			;8bbc
	ld c,h			;8bbd
	ld c,h			;8bbe
	ld c,h			;8bbf
	dec bc			;8bc0
	dec bc			;8bc1
	inc c			;8bc2
	ld a,(bc)		;8bc3
	inc c			;8bc4
	dec bc			;8bc5
	ld c,00bh		;8bc6
	dec bc			;8bc8
	dec bc			;8bc9
	inc c			;8bca
	dec bc			;8bcb
	dec bc			;8bcc
	dec bc			;8bcd
	dec bc			;8bce
	dec bc			;8bcf
	ld c,h			;8bd0
	ld c,h			;8bd1
	ld b,(hl)		;8bd2
	ld c,e			;8bd3
	ld b,(hl)		;8bd4
	ld b,(hl)		;8bd5
	ld c,a			;8bd6
	ld c,h			;8bd7
	ld c,h			;8bd8
	ld c,h			;8bd9
	ld c,d			;8bda
	ld b,(hl)		;8bdb
	ld b,(hl)		;8bdc
	ld c,h			;8bdd
	ld c,h			;8bde
	ld c,h			;8bdf
	nop			;8be0
	nop			;8be1
	dec bc			;8be2
	ld c,00ch		;8be3
	ld c,00bh		;8be5
	ld c,006h		;8be7
	dec bc			;8be9
	dec bc			;8bea
	rrca			;8beb
	inc c			;8bec
	inc c			;8bed
	rrca			;8bee
	nop			;8bef
	dec bc			;8bf0
	dec bc			;8bf1
	inc c			;8bf2
	dec bc			;8bf3
	dec bc			;8bf4
	dec bc			;8bf5
	dec bc			;8bf6
	dec bc			;8bf7
	dec bc			;8bf8
	dec bc			;8bf9
	dec bc			;8bfa
	dec bc			;8bfb
	dec bc			;8bfc
	dec bc			;8bfd
	dec bc			;8bfe
	dec bc			;8bff
	ld c,h			;8c00
	ld c,h			;8c01
	ld c,(hl)		;8c02
	ld c,h			;8c03
	ld c,h			;8c04
	ld c,h			;8c05
	ld c,h			;8c06
	ld c,h			;8c07
	ld c,h			;8c08
	ld c,h			;8c09
	ld c,h			;8c0a
	ld c,h			;8c0b
	ld c,h			;8c0c
	ld c,h			;8c0d
	ld c,h			;8c0e
	ld c,h			;8c0f
	inc bc			;8c10
	ld c,00eh		;8c11
	inc bc			;8c13
	ld (bc),a		;8c14
	ld bc,0030eh		;8c15
	ld (bc),a		;8c18
	ld bc,00309h		;8c19
	ld (bc),a		;8c1c
	ld bc,00909h		;8c1d
	add hl,bc		;8c20
	ld bc,00202h		;8c21
	inc bc			;8c24
	ld c,00eh		;8c25
	inc bc			;8c27
	inc bc			;8c28
	ld (bc),a		;8c29
	ld (bc),a		;8c2a
	ld (bc),a		;8c2b
	ld bc,00101h		;8c2c
	nop			;8c2f
	ld bc,00302h		;8c30
	ld c,00eh		;8c33
	ld c,00eh		;8c35
	inc bc			;8c37
	inc bc			;8c38
	ld (bc),a		;8c39
	ld (bc),a		;8c3a
	ld (bc),a		;8c3b
	ld (bc),a		;8c3c
	ld bc,00001h		;8c3d
	add hl,bc		;8c40
	ld bc,00202h		;8c41
	inc bc			;8c44
	ld c,00eh		;8c45
	inc bc			;8c47
	inc bc			;8c48
	ld (bc),a		;8c49
	ld (bc),a		;8c4a
	ld (bc),a		;8c4b
	ld bc,00101h		;8c4c
	add hl,bc		;8c4f
	ld b,d			;8c50
	ld b,d			;8c51
	ld b,d			;8c52
	ld b,d			;8c53
	ld b,d			;8c54
	ld b,d			;8c55
	ld b,d			;8c56
	ld b,d			;8c57
	ld b,d			;8c58
	ld b,d			;8c59
	ld b,d			;8c5a
	ld b,d			;8c5b
	ld b,d			;8c5c
	ld b,d			;8c5d
	ld b,d			;8c5e
	ld b,d			;8c5f
	ex af,af'		;8c60
	ex af,af'		;8c61
	ex af,af'		;8c62
	ex af,af'		;8c63
	dec c			;8c64
	dec c			;8c65
	ex af,af'		;8c66
	dec c			;8c67
	dec c			;8c68
	dec c			;8c69
	dec c			;8c6a
	dec c			;8c6b
	dec c			;8c6c
	dec b			;8c6d
	dec b			;8c6e
	dec b			;8c6f
	ld c,(hl)		;8c70
	ld c,(hl)		;8c71
	ld c,(hl)		;8c72
	ld c,l			;8c73
	ld c,(hl)		;8c74
	ld c,(hl)		;8c75
	ld c,a			;8c76
	ld c,(hl)		;8c77
	ld c,(hl)		;8c78
	ld c,(hl)		;8c79
	ld c,(hl)		;8c7a
	ld c,(hl)		;8c7b
	ld c,(hl)		;8c7c
	ld c,a			;8c7d
	ld c,a			;8c7e
	ld c,a			;8c7f
	nop			;8c80
	nop			;8c81
	nop			;8c82
	rrca			;8c83
	rrca			;8c84
	rrca			;8c85
	ld c,00eh		;8c86
	rrca			;8c88
	rrca			;8c89
	rrca			;8c8a
	rrca			;8c8b
	rrca			;8c8c
	rrca			;8c8d
	rrca			;8c8e
	rrca			;8c8f
	ld b,(hl)		;8c90
	ld c,b			;8c91
	ld c,b			;8c92
	ld c,l			;8c93
	ld c,l			;8c94
	ld c,b			;8c95
	ld c,l			;8c96
	ld c,l			;8c97
	ld c,b			;8c98
	ld c,l			;8c99
	ld c,l			;8c9a
	ld c,l			;8c9b
	ld c,l			;8c9c
	ld c,l			;8c9d
	ld c,l			;8c9e
	ld b,(hl)		;8c9f
	nop			;8ca0
	nop			;8ca1
	nop			;8ca2
	rrca			;8ca3
	rrca			;8ca4
	rrca			;8ca5
	ld c,00eh		;8ca6
	rrca			;8ca8
	rrca			;8ca9
	rrca			;8caa
	rrca			;8cab
	rrca			;8cac
	rrca			;8cad
	rrca			;8cae
	rrca			;8caf
	ld b,(hl)		;8cb0
	ld c,b			;8cb1
	ld c,b			;8cb2
	ld c,l			;8cb3
	ld c,l			;8cb4
	ld c,b			;8cb5
	ld c,l			;8cb6
	ld c,l			;8cb7
	ld c,b			;8cb8
	ld c,l			;8cb9
	ld c,l			;8cba
	ld c,l			;8cbb
	ld c,l			;8cbc
	ld c,l			;8cbd
	ld c,l			;8cbe
	ld b,(hl)		;8cbf
	nop			;8cc0
	nop			;8cc1
	rrca			;8cc2
	rrca			;8cc3
	rrca			;8cc4
	rrca			;8cc5
	ld c,00eh		;8cc6
	rrca			;8cc8
	rrca			;8cc9
	rrca			;8cca
	rrca			;8ccb
	rrca			;8ccc
	rrca			;8ccd
	rrca			;8cce
	rrca			;8ccf
	ld b,b			;8cd0
	ld b,(hl)		;8cd1
	ld c,b			;8cd2
	ld c,l			;8cd3
	ld c,l			;8cd4
	ld c,b			;8cd5
	ld c,l			;8cd6
	ld c,l			;8cd7
	ld c,b			;8cd8
	ld c,l			;8cd9
	ld c,l			;8cda
	ld c,l			;8cdb
	ld c,l			;8cdc
	ld c,l			;8cdd
	ld b,(hl)		;8cde
	ld b,b			;8cdf
	nop			;8ce0
	nop			;8ce1
	nop			;8ce2
	nop			;8ce3
	nop			;8ce4
	nop			;8ce5
	nop			;8ce6
	nop			;8ce7
	nop			;8ce8
	nop			;8ce9
	nop			;8cea
	nop			;8ceb
	nop			;8cec
	nop			;8ced
	nop			;8cee
	nop			;8cef
	nop			;8cf0
	nop			;8cf1
	nop			;8cf2
	nop			;8cf3
	nop			;8cf4
	nop			;8cf5
	nop			;8cf6
	nop			;8cf7
	nop			;8cf8
	nop			;8cf9
	nop			;8cfa
	nop			;8cfb
	nop			;8cfc
	nop			;8cfd
	nop			;8cfe
	nop			;8cff
	jp l801fh		;8d00
	jp l80f4h		;8d03
	jp 00000h		;8d06
	jp l800fh		;8d09
	jp l8000h		;8d0c
	jp 06d30h		;8d0f
	jp 06e44h		;8d12
	jp 06d95h		;8d15
	jp 06d69h		;8d18
	jp 0707dh		;8d1b
	rst 38h			;8d1e
	rst 38h			;8d1f
	rst 38h			;8d20
	rst 38h			;8d21
	rst 38h			;8d22
	rst 38h			;8d23
	rst 38h			;8d24
	rst 38h			;8d25
	rst 38h			;8d26
	rst 38h			;8d27
	rst 38h			;8d28
	rst 38h			;8d29
	rst 38h			;8d2a
	rst 38h			;8d2b
	rst 38h			;8d2c
	rst 38h			;8d2d
	rst 38h			;8d2e
	rst 38h			;8d2f
	call 06d75h		;8d30
	ld a,(0ca10h)		;8d33
	call 06d00h		;8d36
	call 0476bh		;8d39
	ld hl,0c000h		;8d3c
	ld bc,005ffh		;8d3f
	call 04648h		;8d42
	ld a,001h		;8d45
	call 047dch		;8d47
	and 03eh		;8d4a
	cp 004h			;8d4c
	jr nz,l8d59h		;8d4e
	ld (0c0ebh),a		;8d50
	ld bc,00219h		;8d53
	call 00047h		;8d56
l8d59h:
	call 077fch		;8d59
	call 07683h		;8d5c
	call 06f99h		;8d5f
	call 04b8fh		;8d62
	call 06e77h		;8d65
	ret			;8d68
	call 06d75h		;8d69
	call 06f99h		;8d6c
	call 0476bh		;8d6f
	jp 04b8fh		;8d72
	ld hl,0705ch		;8d75
	ld b,009h		;8d78
	call 04a1fh		;8d7a
	ld a,(0ffe7h)		;8d7d
	and 008h		;8d80
	or 022h			;8d82
	ld b,a			;8d84
	ld c,008h		;8d85
	call 00047h		;8d87
	ld a,(0c0ebh)		;8d8a
	or a			;8d8d
	ret z			;8d8e
	ld bc,00219h		;8d8f
	jp 00047h		;8d92
	ld a,(0ca10h)		;8d95
	cp 004h			;8d98
	push af			;8d9a
	call z,06dc3h		;8d9b
	pop af			;8d9e
	cp 008h			;8d9f
	call z,06dbdh		;8da1
	call 07203h		;8da4
	call 07ab5h		;8da7
	ld a,(0c0d4h)		;8daa
	dec a			;8dad
	jr z,l8debh		;8dae
	dec a			;8db0
	jr z,l8deeh		;8db1
	jp p,06e08h		;8db3
	call 07ac4h		;8db6
	call 07755h		;8db9
	ret			;8dbc
	ld a,(0ca02h)		;8dbd
	and 003h		;8dc0
	ret nz			;8dc2
	di			;8dc3
	ld a,(0c0b5h)		;8dc4
	or a			;8dc7
	jr nz,l8de9h		;8dc8
	ld a,(0c0b4h)		;8dca
	cp 004h			;8dcd
	ret nc			;8dcf
	ld a,(0c0dbh)		;8dd0
	inc a			;8dd3
	cp 006h			;8dd4
	jr c,l8dd9h		;8dd6
	xor a			;8dd8
l8dd9h:
	ld (0c0dbh),a		;8dd9
	cp 004h			;8ddc
	jr c,l8de4h		;8dde
	neg			;8de0
	add a,006h		;8de2
l8de4h:
	set 7,a			;8de4
	ld (0c0b5h),a		;8de6
l8de9h:
	ei			;8de9
	ret			;8dea
l8debh:
	call 06d09h		;8deb
l8deeh:
	xor a			;8dee
	ld d,a			;8def
	ld e,a			;8df0
	ld (0ca1ch),de		;8df1
	ld (0ca1ah),de		;8df5
	ld (0ca14h),de		;8df9
	ld (0ca12h),de		;8dfd
	ld (0c0d5h),a		;8e01
	ld hl,0c0d4h		;8e04
	inc (hl)		;8e07
	call 06e37h		;8e08
	ld c,018h		;8e0b
	ld de,00010h		;8e0d
	ld hl,0d988h		;8e10
	xor a			;8e13
l8e14h:
	ld b,004h		;8e14
l8e16h:
	ld (hl),a		;8e16
	inc hl			;8e17
	ld (hl),a		;8e18
	inc hl			;8e19
	ld (hl),a		;8e1a
	inc hl			;8e1b
	ld (hl),a		;8e1c
	inc hl			;8e1d
	ld (hl),a		;8e1e
	inc hl			;8e1f
	ld (hl),a		;8e20
	inc hl			;8e21
	ld (hl),a		;8e22
	inc hl			;8e23
	ld (hl),a		;8e24
	inc hl			;8e25
	djnz l8e16h		;8e26
	add hl,de		;8e28
	dec c			;8e29
	jr nz,l8e14h		;8e2a
	ret			;8e2c
	ld hl,0e000h		;8e2d
	ld bc,007ffh		;8e30
	call 04648h		;8e33
	ret			;8e36
	ld hl,(0c0dch)		;8e37
	ld (0ca12h),hl		;8e3a
	ld hl,(0c0deh)		;8e3d
	ld (0ca14h),hl		;8e40
	ret			;8e43
	call 07070h		;8e44
	ld a,(0c09bh)		;8e47
	rrca			;8e4a
	call 06f43h		;8e4b
	call 0707eh		;8e4e
	ld a,(0ca10h)		;8e51
	or a			;8e54
	call z,06e8ah		;8e55
	ld a,(0ca10h)		;8e58
	cp 002h			;8e5b
	call z,06e97h		;8e5d
	call 07683h		;8e60
	ld a,001h		;8e63
	ld (0c09ch),a		;8e65
	ld a,(0ef60h)		;8e68
	rlca			;8e6b
	ret nc			;8e6c
	rlca			;8e6d
	jp c,04cf5h		;8e6e
	ld a,0c0h		;8e71
	ld (0ef60h),a		;8e73
	ret			;8e76
	xor a			;8e77
	ld (0c0eah),a		;8e78
	ld hl,0e800h		;8e7b
	ld b,018h		;8e7e
l8e80h:
	call 04678h		;8e80
	and 01fh		;8e83
	ld (hl),a		;8e85
	inc hl			;8e86
	djnz l8e80h		;8e87
	ret			;8e89
	ld de,00020h		;8e8a
	ld b,0cdh		;8e8d
	jr l8e9ch		;8e8f
l8e91h:
	ld a,001h		;8e91
	ld (0c0eah),a		;8e93
	ret			;8e96
	ld de,0ffe0h		;8e97
	ld b,05fh		;8e9a
l8e9ch:
	ld a,(0c0d4h)		;8e9c
	or a			;8e9f
	jr nz,l8e91h		;8ea0
	ld a,(0c0eah)		;8ea2
	or a			;8ea5
	ret nz			;8ea6
	push bc			;8ea7
	push de			;8ea8
	ld de,(0c0e6h)		;8ea9
	ld hl,(0ca12h)		;8ead
	call 04612h		;8eb0
	add hl,de		;8eb3
	ld a,d			;8eb4
	cp h			;8eb5
	ld (0c0e6h),hl		;8eb6
	call nz,06f20h		;8eb9
	ld hl,(0c0e8h)		;8ebc
	ld de,(0ca14h)		;8ebf
	add hl,de		;8ec3
	pop de			;8ec4
	add hl,de		;8ec5
	ld (0c0e8h),hl		;8ec6
	ld de,(0ca1ch)		;8ec9
	ld d,000h		;8ecd
	add hl,de		;8ecf
	ld a,l			;8ed0
	srl a			;8ed1
	srl a			;8ed3
	srl a			;8ed5
	srl a			;8ed7
	srl a			;8ed9
	neg			;8edb
	pop bc			;8edd
	add a,b			;8ede
	push hl			;8edf
	exx			;8ee0
	pop hl			;8ee1
	ld l,a			;8ee2
	exx			;8ee3
	ld de,0e800h		;8ee4
	ld hl,0d988h		;8ee7
	ld b,018h		;8eea
l8eech:
	push bc			;8eec
	push hl			;8eed
	ld a,(de)		;8eee
	inc de			;8eef
	exx			;8ef0
	add a,h			;8ef1
	and 01fh		;8ef2
	exx			;8ef4
	ld c,a			;8ef5
	ld b,000h		;8ef6
	add hl,bc		;8ef8
	ld a,(hl)		;8ef9
	or a			;8efa
	jr nz,l8f01h		;8efb
	exx			;8efd
	ld a,l			;8efe
	exx			;8eff
	ld (hl),a		;8f00
l8f01h:
	pop hl			;8f01
	push hl			;8f02
	ld a,(de)		;8f03
	exx			;8f04
	add a,h			;8f05
	add a,00dh		;8f06
	and 01fh		;8f08
	exx			;8f0a
	ld c,a			;8f0b
	ld b,000h		;8f0c
	add hl,bc		;8f0e
	ld a,(hl)		;8f0f
	or a			;8f10
	jr nz,l8f17h		;8f11
	exx			;8f13
	ld a,l			;8f14
	exx			;8f15
	ld (hl),a		;8f16
l8f17h:
	pop hl			;8f17
	ld bc,00030h		;8f18
	add hl,bc		;8f1b
	pop bc			;8f1c
	djnz l8eech		;8f1d
	ret			;8f1f
	ld a,(0c0d5h)		;8f20
	cp 002h			;8f23
	jr z,l8f35h		;8f25
	ld de,0e817h		;8f27
	ld hl,0e816h		;8f2a
	ld bc,00017h		;8f2d
	ld a,(de)		;8f30
	lddr			;8f31
	ld (de),a		;8f33
	ret			;8f34
l8f35h:
	ld de,0e800h		;8f35
	ld hl,0e801h		;8f38
	ld bc,00017h		;8f3b
	ld a,(de)		;8f3e
	ldir			;8f3f
	ld (de),a		;8f41
	ret			;8f42
	jr c,l8f6fh		;8f43
	ld a,(0c0d2h)		;8f45
	sub 01ch		;8f48
	ld (0c9c5h),a		;8f4a
	add a,06ch		;8f4d
	ld (0c9cfh),a		;8f4f
	ld a,(0c0ebh)		;8f52
	or a			;8f55
	jr nz,l8f65h		;8f56
	ld a,(0c0bbh)		;8f58
	and 007h		;8f5b
	sub 008h		;8f5d
	and 00fh		;8f5f
	ld (0c9c7h),a		;8f61
	ret			;8f64
l8f65h:
	ld a,(0c0bbh)		;8f65
	cpl			;8f68
	and 007h		;8f69
	ld (0c9c7h),a		;8f6b
	ret			;8f6e
l8f6fh:
	ld a,(0c0d2h)		;8f6f
	sub 01ch		;8f72
	ld (0c9f1h),a		;8f74
	add a,08ch		;8f77
	ld (0c9fbh),a		;8f79
	ld a,(0c0ebh)		;8f7c
	or a			;8f7f
	jr nz,l8f8fh		;8f80
	ld a,(0c0bbh)		;8f82
	and 007h		;8f85
	sub 008h		;8f87
	and 00fh		;8f89
	ld (0c9f3h),a		;8f8b
	ret			;8f8e
l8f8fh:
	ld a,(0c0bbh)		;8f8f
	cpl			;8f92
	and 007h		;8f93
	ld (0c9f3h),a		;8f95
	ret			;8f98
	ld de,0c9beh		;8f99
	ld hl,07007h		;8f9c
	ld bc,00015h		;8f9f
	ldir			;8fa2
	ld de,0c9eah		;8fa4
	ld hl,07034h		;8fa7
	ld bc,00015h		;8faa
	ldir			;8fad
	ld de,0c948h		;8faf
	ld hl,07002h		;8fb2
	ld bc,00005h		;8fb5
	ldir			;8fb8
	ld de,0c978h		;8fba
	ld hl,0702fh		;8fbd
	ld bc,00005h		;8fc0
	ldir			;8fc3
	ld de,0c9a8h		;8fc5
	ld hl,0701ch		;8fc8
	ld bc,00013h		;8fcb
	ldir			;8fce
	ld de,0c9d4h		;8fd0
	ld hl,07049h		;8fd3
	ld bc,00013h		;8fd6
	ldir			;8fd9
	ld a,(0ffe7h)		;8fdb
	and 028h		;8fde
	ld (0c9c3h),a		;8fe0
	ld (0c9efh),a		;8fe3
	or 002h			;8fe6
	ld (0c9abh),a		;8fe8
	ld (0c9d7h),a		;8feb
	ld a,(0c0ebh)		;8fee
	or a			;8ff1
	ret z			;8ff2
	ld a,09bh		;8ff3
	ld (0c9c8h),a		;8ff5
	ld (0c9f4h),a		;8ff8
	ld (0c9b0h),a		;8ffb
	ld (0c9dch),a		;8ffe
	ret			;9001
	inc b			;9002
	rst 28h			;9003
	add a,l			;9004
	inc b			;9005
	add a,b			;9006
	inc d			;9007
	ld (00481h),hl		;9008
	add a,b			;900b
	ex af,af'		;900c
	adc a,b			;900d
	nop			;900e
	sub a			;900f
	nop			;9010
	sub d			;9011
	jr nc,$-124		;9012
	rst 20h			;9014
	add a,l			;9015
	ld h,d			;9016
	add a,c			;9017
	nop			;9018
	sub e			;9019
	inc d			;901a
	add a,b			;901b
	ld (de),a		;901c
	ld (00a81h),hl		;901d
	adc a,b			;9020
	ret nz			;9021
	sub a			;9022
	nop			;9023
	sub d			;9024
	ccf			;9025
	add a,d			;9026
	rst 20h			;9027
	add a,l			;9028
	in a,(093h)		;9029
	ld h,d			;902b
	add a,c			;902c
	ld d,080h		;902d
	inc b			;902f
	rst 38h			;9030
	add a,l			;9031
	inc b			;9032
	add a,b			;9033
	inc d			;9034
	ld (00481h),hl		;9035
	add a,b			;9038
	ex af,af'		;9039
	adc a,b			;903a
	ret nz			;903b
	sub a			;903c
	nop			;903d
	sub d			;903e
	ld sp,0f782h		;903f
	add a,l			;9042
	ld h,d			;9043
	add a,c			;9044
	nop			;9045
	sub e			;9046
	inc d			;9047
	add a,b			;9048
	ld (de),a		;9049
	ld (00a81h),hl		;904a
	adc a,b			;904d
	ret nz			;904e
	sub a			;904f
	nop			;9050
	sub d			;9051
	ccf			;9052
	add a,d			;9053
	rst 30h			;9054
	add a,l			;9055
	in a,(093h)		;9056
	ld h,d			;9058
	add a,c			;9059
	ld d,080h		;905a
	nop			;905c
	inc b			;905d
	ld b,019h		;905e
	ld (bc),a		;9060
	jr nc,$+11		;9061
	add a,b			;9063
	inc b			;9064
	inc bc			;9065
	inc bc			;9066
	rst 38h			;9067
	ld a,(bc)		;9068
	nop			;9069
	ld bc,00762h		;906a
	rst 38h			;906d
	ex af,af'		;906e
	ld a,(bc)		;906f
	ld a,(0c0d8h)		;9070
	or a			;9073
	ret z			;9074
	dec a			;9075
	ld (0c0d8h),a		;9076
	ret nz			;9079
	jp 04da9h		;907a
	ret			;907d
	call 07221h		;907e
	call 070e4h		;9081
	ret			;9084
	ld hl,0c000h		;9085
	ld bc,0007fh		;9088
	call 04648h		;908b
	ld hl,0c180h		;908e
	ld bc,0007fh		;9091
	call 04648h		;9094
	ld hl,0c280h		;9097
	ld bc,0007fh		;909a
	call 04648h		;909d
	ret			;90a0
	ld a,(ix+01ah)		;90a1
	or a			;90a4
	ld h,0c0h		;90a5
	call z,070d3h		;90a7
	ld l,a			;90aa
	inc l			;90ab
	res 7,(hl)		;90ac
	dec l			;90ae
	ld (hl),e		;90af
	inc h			;90b0
	ld (hl),d		;90b1
	inc h			;90b2
	ld (hl),a		;90b3
	inc h			;90b4
	ld (hl),c		;90b5
	ret			;90b6
	ld a,(ix+01ah)		;90b7
	or a			;90ba
	ld h,0c0h		;90bb
	call z,070cfh		;90bd
	ld l,a			;90c0
	inc l			;90c1
	res 7,(hl)		;90c2
	dec l			;90c4
	ld (hl),e		;90c5
	inc h			;90c6
	ld (hl),d		;90c7
	inc h			;90c8
	ld (hl),a		;90c9
	inc h			;90ca
	ld (hl),c		;90cb
	inc h			;90cc
	ld (hl),b		;90cd
	ret			;90ce
	ld l,03bh		;90cf
	jr l90d5h		;90d1
	ld l,009h		;90d3
l90d5h:
	call 070ddh		;90d5
	ld (hl),00fh		;90d8
	dec l			;90da
	ld a,l			;90db
	ret			;90dc
	xor a			;90dd
l90deh:
	cp (hl)			;90de
	ret z			;90df
	inc l			;90e0
	inc l			;90e1
	jr l90deh		;90e2
	ld a,(0c09bh)		;90e4
	rrca			;90e7
	jp nc,0713fh		;90e8
	ld hl,0fa00h		;90eb
	ld de,0c4b9h		;90ee
	push de			;90f1
	call 070f7h		;90f2
	pop de			;90f5
	inc d			;90f6
	xor a			;90f7
	call 046f0h		;90f8
	push hl			;90fb
	ex de,hl		;90fc
	call 07106h		;90fd
	pop hl			;9100
	ld de,00400h		;9101
	add hl,de		;9104
	ret			;9105
	ld a,(00007h)		;9106
	ld c,a			;9109
	ld de,0fff0h		;910a
	call 07117h		;910d
	ld de,00080h		;9110
	add hl,de		;9113
	ld de,0fff0h		;9114
	ld a,004h		;9117
l9119h:
	outi			;9119
	outi			;911b
	outi			;911d
	outi			;911f
	outi			;9121
	outi			;9123
	outi			;9125
	outi			;9127
	add hl,de		;9129
	outi			;912a
	outi			;912c
	outi			;912e
	outi			;9130
	outi			;9132
	outi			;9134
	outi			;9136
	outi			;9138
	add hl,de		;913a
	dec a			;913b
	jr nz,l9119h		;913c
	ret			;913e
	ld hl,0f200h		;913f
	ld de,0c1c1h		;9142
	push de			;9145
	call 0714bh		;9146
	pop de			;9149
	inc d			;914a
	xor a			;914b
	call 046f0h		;914c
	push hl			;914f
	ex de,hl		;9150
	call 0715ah		;9151
	pop hl			;9154
	ld de,00400h		;9155
	add hl,de		;9158
	ret			;9159
	ld a,(00007h)		;915a
	ld c,a			;915d
	call 07165h		;915e
	ld de,0ff80h		;9161
	add hl,de		;9164
	ld a,004h		;9165
l9167h:
	outi			;9167
	outi			;9169
	outi			;916b
	outi			;916d
	outi			;916f
	outi			;9171
	outi			;9173
	outi			;9175
	outi			;9177
	outi			;9179
	outi			;917b
	outi			;917d
	outi			;917f
	outi			;9181
	outi			;9183
	outi			;9185
	dec a			;9187
	jr nz,l9167h		;9188
	ret			;918a
	ld a,(hl)		;918b
	ld (de),a		;918c
	bit 7,e			;918d
	ret z			;918f
	push hl			;9190
	push de			;9191
	ld b,a			;9192
	ld a,d			;9193
	sub 0c1h		;9194
	cp 003h			;9196
	jp nc,071adh		;9198
	add a,a			;919b
	add a,038h		;919c
	ld h,a			;919e
	ld a,e			;919f
	add a,040h		;91a0
	and 07ch		;91a2
	add a,a			;91a4
	ld l,a			;91a5
	add hl,hl		;91a6
	call 071c3h		;91a7
	pop de			;91aa
	pop hl			;91ab
	ret			;91ac
	dec a			;91ad
	add a,a			;91ae
	add a,038h		;91af
	ld h,a			;91b1
	ld a,e			;91b2
	add a,040h		;91b3
	cpl			;91b5
	and 07ch		;91b6
	xor 004h		;91b8
	add a,a			;91ba
	ld l,a			;91bb
	add hl,hl		;91bc
	call 071c3h		;91bd
	pop de			;91c0
	pop hl			;91c1
	ret			;91c2
	ld a,(00007h)		;91c3
	inc a			;91c6
	ld c,a			;91c7
	ld a,003h		;91c8
	di			;91ca
	out (c),a		;91cb
	ld a,08eh		;91cd
	out (c),a		;91cf
	ld a,l			;91d1
	out (c),a		;91d2
	ld a,h			;91d4
	out (c),a		;91d5
	ei			;91d7
	ld a,b			;91d8
	dec c			;91d9
	ld l,a			;91da
	ld h,006h		;91db
	add hl,hl		;91dd
	add hl,hl		;91de
	add hl,hl		;91df
	add hl,hl		;91e0
	outi			;91e1
	outi			;91e3
	outi			;91e5
	outi			;91e7
	outi			;91e9
	outi			;91eb
	outi			;91ed
	outi			;91ef
	outi			;91f1
	outi			;91f3
	outi			;91f5
	outi			;91f7
	outi			;91f9
	outi			;91fb
	outi			;91fd
	outi			;91ff
	ei			;9201
	ret			;9202
	di			;9203
	ld hl,0c09ch		;9204
	ld a,(0c09bh)		;9207
	xor (hl)		;920a
	ei			;920b
	rrca			;920c
	jr c,l9213h		;920d
	ld a,0c0h		;920f
	jr l9215h		;9211
l9213h:
	ld a,0c3h		;9213
l9215h:
	ld (0c0aah),a		;9215
	inc a			;9218
	ld (0c0a6h),a		;9219
	inc a			;921c
	ld (0c0a8h),a		;921d
	ret			;9220
	exx			;9221
	ld a,(0c09bh)		;9222
	rrca			;9225
	jr c,l9230h		;9226
	ld bc,04060h		;9228
	ld de,0c0f0h		;922b
	jr l9236h		;922e
l9230h:
	ld bc,06080h		;9230
	ld de,0c0f0h		;9233
l9236h:
	ld h,007h		;9236
	ld a,(0c0ebh)		;9238
	or a			;923b
	jr nz,l9244h		;923c
	ld a,(0c0bbh)		;923e
	and 007h		;9241
	ld h,a			;9243
l9244h:
	ld a,(0c0d2h)		;9244
	ld l,a			;9247
	push hl			;9248
	exx			;9249
	pop de			;924a
	call 07255h		;924b
	call 07470h		;924e
	call 072d5h		;9251
	ret			;9254
	ld a,e			;9255
	sub 018h		;9256
	cp 0d8h			;9258
	jr nz,l925dh		;925a
	inc a			;925c
l925dh:
	ld e,a			;925d
	ld (0c099h),a		;925e
	ld a,(0c09bh)		;9261
	rrca			;9264
	jr nc,l929eh		;9265
	ld hl,0c481h		;9267
	ld b,008h		;926a
l926ch:
	ld (hl),e		;926c
	inc l			;926d
	inc l			;926e
	inc l			;926f
	inc l			;9270
	ld (hl),e		;9271
	inc l			;9272
	inc l			;9273
	inc l			;9274
	inc l			;9275
	ld (hl),e		;9276
	inc l			;9277
	inc l			;9278
	inc l			;9279
	inc l			;927a
	ld (hl),e		;927b
	inc l			;927c
	inc l			;927d
	inc l			;927e
	inc l			;927f
	djnz l926ch		;9280
	ld hl,0c581h		;9282
	ld b,008h		;9285
l9287h:
	ld (hl),e		;9287
	inc l			;9288
	inc l			;9289
	inc l			;928a
	inc l			;928b
	ld (hl),e		;928c
	inc l			;928d
	inc l			;928e
	inc l			;928f
	inc l			;9290
	ld (hl),e		;9291
	inc l			;9292
	inc l			;9293
	inc l			;9294
	inc l			;9295
	ld (hl),e		;9296
	inc l			;9297
	inc l			;9298
	inc l			;9299
	inc l			;929a
	djnz l9287h		;929b
	ret			;929d
l929eh:
	ld hl,0c181h		;929e
	ld b,008h		;92a1
l92a3h:
	ld (hl),e		;92a3
	inc l			;92a4
	inc l			;92a5
	inc l			;92a6
	inc l			;92a7
	ld (hl),e		;92a8
	inc l			;92a9
	inc l			;92aa
	inc l			;92ab
	inc l			;92ac
	ld (hl),e		;92ad
	inc l			;92ae
	inc l			;92af
	inc l			;92b0
	inc l			;92b1
	ld (hl),e		;92b2
	inc l			;92b3
	inc l			;92b4
	inc l			;92b5
	inc l			;92b6
	djnz l92a3h		;92b7
	ld hl,0c281h		;92b9
	ld b,008h		;92bc
l92beh:
	ld (hl),e		;92be
	inc l			;92bf
	inc l			;92c0
	inc l			;92c1
	inc l			;92c2
	ld (hl),e		;92c3
	inc l			;92c4
	inc l			;92c5
	inc l			;92c6
	inc l			;92c7
	ld (hl),e		;92c8
	inc l			;92c9
	inc l			;92ca
	inc l			;92cb
	inc l			;92cc
	ld (hl),e		;92cd
	inc l			;92ce
	inc l			;92cf
	inc l			;92d0
	inc l			;92d1
	djnz l92beh		;92d2
	ret			;92d4
	ld hl,0c009h		;92d5
	ld b,019h		;92d8
l92dah:
	push bc			;92da
	ld a,(hl)		;92db
	or a			;92dc
	jr z,l92e7h		;92dd
	dec l			;92df
	call 072edh		;92e0
	set 0,l			;92e3
	ld h,0c0h		;92e5
l92e7h:
	inc l			;92e7
	inc l			;92e8
	pop bc			;92e9
	djnz l92dah		;92ea
	ret			;92ec
	ld a,(hl)		;92ed
	exx			;92ee
	cp b			;92ef
	jr c,l92ffh		;92f0
	cp c			;92f2
	jr c,l9310h		;92f3
	cp d			;92f5
	jr c,l9325h		;92f6
	cp e			;92f8
	jp nc,072ffh		;92f9
	jp 07336h		;92fc
l92ffh:
	exx			;92ff
	ld a,(0c0aah)		;9300
	ld h,a			;9303
	inc l			;9304
	ld a,(hl)		;9305
	cp 001h			;9306
	call nz,07345h		;9308
	set 7,(hl)		;930b
	jp 073a6h		;930d
l9310h:
	exx			;9310
	ld a,(0c0aah)		;9311
	ld h,a			;9314
	inc l			;9315
	ld a,(hl)		;9316
	cp 002h			;9317
	call nz,0735bh		;9319
	set 7,(hl)		;931c
	call 073a6h		;931e
	inc l			;9321
	jp 073bdh		;9322
l9325h:
	exx			;9325
	ld a,(0c0aah)		;9326
	ld h,a			;9329
	inc l			;932a
	ld a,(hl)		;932b
	cp 003h			;932c
	call nz,07371h		;932e
	set 7,(hl)		;9331
	jp 073bdh		;9333
	exx			;9336
	ld a,(0c0aah)		;9337
	ld h,a			;933a
	inc l			;933b
	ld a,(hl)		;933c
	cp 004h			;933d
	call nz,07387h		;933f
	set 7,(hl)		;9342
	ret			;9344
	bit 7,a			;9345
	jp nz,0739dh		;9347
	ld (hl),001h		;934a
	inc h			;934c
	ld a,(hl)		;934d
	or a			;934e
	call z,0741ah		;934f
	inc h			;9352
	ld a,(hl)		;9353
	or a			;9354
	call nz,07462h		;9355
	dec h			;9358
	dec h			;9359
	ret			;935a
	bit 7,a			;935b
	jp nz,0739dh		;935d
	ld (hl),002h		;9360
	inc h			;9362
	ld a,(hl)		;9363
	or a			;9364
	call z,0741ah		;9365
	inc h			;9368
	ld a,(hl)		;9369
	or a			;936a
	call z,0741ah		;936b
	dec h			;936e
	dec h			;936f
	ret			;9370
	bit 7,a			;9371
	jp nz,0739dh		;9373
	ld (hl),003h		;9376
	inc h			;9378
	ld a,(hl)		;9379
	or a			;937a
	call nz,07462h		;937b
	inc h			;937e
	ld a,(hl)		;937f
	or a			;9380
	call z,0741ah		;9381
	dec h			;9384
	dec h			;9385
	ret			;9386
	bit 7,a			;9387
	jp nz,0739dh		;9389
	ld (hl),004h		;938c
	inc h			;938e
	ld a,(hl)		;938f
	or a			;9390
	call nz,07462h		;9391
	inc h			;9394
	ld a,(hl)		;9395
	or a			;9396
	call nz,07462h		;9397
	dec h			;939a
	dec h			;939b
	ret			;939c
	call 07442h		;939d
	inc sp			;93a0
	inc sp			;93a1
	ret			;93a2
	ld a,0ffh		;93a3
	ret			;93a5
	ld a,(0c0a6h)		;93a6
	ld h,a			;93a9
	ld e,(hl)		;93aa
	ld d,h			;93ab
	ld a,(de)		;93ac
	or a			;93ad
	call z,073a3h		;93ae
	ld h,0c3h		;93b1
	dec l			;93b3
	cp (hl)			;93b4
	call nz,073fah		;93b5
	ld h,0c0h		;93b8
	jp 073d4h		;93ba
	ld a,(0c0a8h)		;93bd
	ld h,a			;93c0
	ld e,(hl)		;93c1
	ld d,h			;93c2
	ld a,(de)		;93c3
	or a			;93c4
	call z,073a3h		;93c5
	ld h,0c3h		;93c8
	dec l			;93ca
	cp (hl)			;93cb
	call nz,073fah		;93cc
	ld h,0c0h		;93cf
	jp 073d4h		;93d1
	inc e			;93d4
	ld a,(hl)		;93d5
	exx			;93d6
	add a,l			;93d7
	cp 0d8h			;93d8
	call z,0746eh		;93da
	exx			;93dd
	ld (de),a		;93de
	inc h			;93df
	ld a,(hl)		;93e0
	exx			;93e1
	add a,h			;93e2
	call c,073eeh		;93e3
	exx			;93e6
	inc e			;93e7
	ld (de),a		;93e8
	inc e			;93e9
	inc h			;93ea
	ld a,(hl)		;93eb
	ld (de),a		;93ec
	ret			;93ed
	ld a,0d8h		;93ee
	add a,l			;93f0
	cp 0d8h			;93f1
	call z,0746eh		;93f3
	exx			;93f6
	ld (de),a		;93f7
	exx			;93f8
	ret			;93f9
	ld a,(hl)		;93fa
	or a			;93fb
	jp nz,0718bh		;93fc
	pop bc			;93ff
	pop bc			;9400
	ld de,072e3h		;9401
	ld a,d			;9404
	cp b			;9405
	jr nz,l940dh		;9406
	ld a,e			;9408
	cp c			;9409
	jr nz,l940dh		;940a
	push bc			;940c
l940dh:
	ld a,(0c0aah)		;940d
	ld h,a			;9410
	set 0,l			;9411
	res 7,(hl)		;9413
	dec l			;9415
	exx			;9416
	jp 07336h		;9417
	ld d,h			;941a
	call 0742dh		;941b
	call c,07423h		;941e
	ld (hl),e		;9421
	ret			;9422
	ld e,000h		;9423
	ld a,(0c0aah)		;9425
	ld h,a			;9428
	ld (hl),00eh		;9429
	ld h,d			;942b
	ret			;942c
	ld e,080h		;942d
	ex de,hl		;942f
	xor a			;9430
	ld b,020h		;9431
l9433h:
	cp (hl)			;9433
	jr z,l943fh		;9434
	inc l			;9436
	inc l			;9437
	inc l			;9438
	inc l			;9439
	djnz l9433h		;943a
	ex de,hl		;943c
	scf			;943d
	ret			;943e
l943fh:
	ex de,hl		;943f
	or a			;9440
	ret			;9441
	ld h,0c0h		;9442
	ld (hl),000h		;9444
	inc h			;9446
	ld a,(hl)		;9447
	or a			;9448
	call nz,07462h		;9449
	inc h			;944c
	ld a,(hl)		;944d
	or a			;944e
	call nz,07462h		;944f
	inc h			;9452
	ld (hl),000h		;9453
	inc h			;9455
	ld a,(hl)		;9456
	or a			;9457
	call nz,07462h		;9458
	inc h			;945b
	ld a,(hl)		;945c
	or a			;945d
	call nz,07462h		;945e
	ret			;9461
	ld (hl),000h		;9462
	ld c,a			;9464
	ld b,h			;9465
	xor a			;9466
	ld (bc),a		;9467
	inc c			;9468
	ld a,(0c099h)		;9469
	ld (bc),a		;946c
	ret			;946d
	inc a			;946e
	ret			;946f
	ld hl,0c03bh		;9470
	ld b,00ch		;9473
l9475h:
	push bc			;9475
	ld a,(hl)		;9476
	or a			;9477
	jr z,l9482h		;9478
	dec l			;947a
	call 07488h		;947b
	set 0,l			;947e
	ld h,0c0h		;9480
l9482h:
	inc l			;9482
	inc l			;9483
	pop bc			;9484
	djnz l9475h		;9485
	ret			;9487
	ld a,(hl)		;9488
	exx			;9489
	cp b			;948a
	jr c,l949ah		;948b
	cp c			;948d
	jr c,l94abh		;948e
	cp d			;9490
	jr c,l94c0h		;9491
	cp e			;9493
	jp nc,0749ah		;9494
	jp 074d1h		;9497
l949ah:
	exx			;949a
	ld a,(0c0aah)		;949b
	ld h,a			;949e
	inc l			;949f
	ld a,(hl)		;94a0
	cp 001h			;94a1
	call nz,074e0h		;94a3
	set 7,(hl)		;94a6
	jp 0753eh		;94a8
l94abh:
	exx			;94ab
	ld a,(0c0aah)		;94ac
	ld h,a			;94af
	inc l			;94b0
	ld a,(hl)		;94b1
	cp 002h			;94b2
	call nz,074f6h		;94b4
	set 7,(hl)		;94b7
	call 0753eh		;94b9
	inc l			;94bc
	jp 07566h		;94bd
l94c0h:
	exx			;94c0
	ld a,(0c0aah)		;94c1
	ld h,a			;94c4
	inc l			;94c5
	ld a,(hl)		;94c6
	cp 003h			;94c7
	call nz,0750ch		;94c9
	set 7,(hl)		;94cc
	jp 07566h		;94ce
	exx			;94d1
	ld a,(0c0aah)		;94d2
	ld h,a			;94d5
	inc l			;94d6
	ld a,(hl)		;94d7
	cp 004h			;94d8
	call nz,07522h		;94da
	set 7,(hl)		;94dd
	ret			;94df
	bit 7,a			;94e0
	jp nz,07538h		;94e2
	ld (hl),001h		;94e5
	inc h			;94e7
	ld a,(hl)		;94e8
	or a			;94e9
	call z,075e4h		;94ea
	inc h			;94ed
	ld a,(hl)		;94ee
	or a			;94ef
	call nz,0766dh		;94f0
	dec h			;94f3
	dec h			;94f4
	ret			;94f5
	bit 7,a			;94f6
	jp nz,07538h		;94f8
	ld (hl),002h		;94fb
	inc h			;94fd
	ld a,(hl)		;94fe
	or a			;94ff
	call z,075e4h		;9500
	inc h			;9503
	ld a,(hl)		;9504
	or a			;9505
	call z,075e4h		;9506
	dec h			;9509
	dec h			;950a
	ret			;950b
	bit 7,a			;950c
	jp nz,07538h		;950e
	ld (hl),003h		;9511
	inc h			;9513
	ld a,(hl)		;9514
	or a			;9515
	call nz,0766dh		;9516
	inc h			;9519
	ld a,(hl)		;951a
	or a			;951b
	call z,075e4h		;951c
	dec h			;951f
	dec h			;9520
	ret			;9521
	bit 7,a			;9522
	jp nz,07538h		;9524
	ld (hl),004h		;9527
	inc h			;9529
	ld a,(hl)		;952a
	or a			;952b
	call nz,0766dh		;952c
	inc h			;952f
	ld a,(hl)		;9530
	or a			;9531
	call nz,0766dh		;9532
	dec h			;9535
	dec h			;9536
	ret			;9537
	call 075f7h		;9538
	inc sp			;953b
	inc sp			;953c
	ret			;953d
	ld a,(0c0a6h)		;953e
	ld h,a			;9541
	ld d,a			;9542
	ld e,(hl)		;9543
	ld a,(de)		;9544
	or a			;9545
	call z,073a3h		;9546
	ld h,0c3h		;9549
	dec l			;954b
	cp (hl)			;954c
	call nz,075c4h		;954d
	ld h,0c0h		;9550
	call 0758eh		;9552
	inc e			;9555
	ld a,(de)		;9556
	or a			;9557
	call z,073a3h		;9558
	ld h,0c4h		;955b
	cp (hl)			;955d
	call nz,075c4h		;955e
	ld h,0c0h		;9561
	jp 075a8h		;9563
	ld a,(0c0a8h)		;9566
	ld h,a			;9569
	ld d,a			;956a
	ld e,(hl)		;956b
	ld a,(de)		;956c
	or a			;956d
	call z,073a3h		;956e
	ld h,0c3h		;9571
	dec l			;9573
	cp (hl)			;9574
	call nz,075c4h		;9575
	ld h,0c0h		;9578
	call 0758eh		;957a
	inc e			;957d
	ld a,(de)		;957e
	or a			;957f
	call z,073a3h		;9580
	ld h,0c4h		;9583
	cp (hl)			;9585
	call nz,075c4h		;9586
	ld h,0c0h		;9589
	jp 075a8h		;958b
	inc e			;958e
	ld a,(hl)		;958f
	exx			;9590
	add a,l			;9591
	cp 0d8h			;9592
	call z,0746eh		;9594
	exx			;9597
	ld (de),a		;9598
	inc h			;9599
	ld a,(hl)		;959a
	exx			;959b
	add a,h			;959c
	call c,073eeh		;959d
	exx			;95a0
	inc e			;95a1
	ld (de),a		;95a2
	inc e			;95a3
	inc h			;95a4
	ld a,(hl)		;95a5
	ld (de),a		;95a6
	ret			;95a7
	inc e			;95a8
	ld a,(hl)		;95a9
	exx			;95aa
	add a,l			;95ab
	cp 0d8h			;95ac
	call z,0746eh		;95ae
	exx			;95b1
	ld (de),a		;95b2
	inc h			;95b3
	ld a,(hl)		;95b4
	exx			;95b5
	add a,h			;95b6
	call c,073eeh		;95b7
	exx			;95ba
	inc e			;95bb
	ld (de),a		;95bc
	inc e			;95bd
	inc h			;95be
	ld a,(hl)		;95bf
	add a,004h		;95c0
	ld (de),a		;95c2
	ret			;95c3
	ld a,(hl)		;95c4
	or a			;95c5
	jp nz,0718bh		;95c6
	pop bc			;95c9
	pop bc			;95ca
	ld de,0747eh		;95cb
	ld a,d			;95ce
	cp b			;95cf
	jr nz,l95d7h		;95d0
	ld a,e			;95d2
	cp c			;95d3
	jr nz,l95d7h		;95d4
	push bc			;95d6
l95d7h:
	ld a,(0c0aah)		;95d7
	ld h,a			;95da
	set 0,l			;95db
	res 7,(hl)		;95dd
	dec l			;95df
	exx			;95e0
	jp 074d1h		;95e1
	ld d,h			;95e4
	call 07617h		;95e5
	call c,075edh		;95e8
	ld (hl),e		;95eb
	ret			;95ec
	ld e,000h		;95ed
	ld a,(0c0aah)		;95ef
	ld h,a			;95f2
	ld (hl),00eh		;95f3
	ld h,d			;95f5
	ret			;95f6
	ld h,0c0h		;95f7
	ld (hl),000h		;95f9
	inc h			;95fb
	ld a,(hl)		;95fc
	or a			;95fd
	call nz,0766dh		;95fe
	inc h			;9601
	ld a,(hl)		;9602
	or a			;9603
	call nz,0766dh		;9604
	inc h			;9607
	ld (hl),000h		;9608
	inc h			;960a
	ld a,(hl)		;960b
	or a			;960c
	call nz,0766dh		;960d
	inc h			;9610
	ld a,(hl)		;9611
	or a			;9612
	call nz,0766dh		;9613
	ret			;9616
	ld e,0fch		;9617
	ex de,hl		;9619
	xor a			;961a
	ld b,010h		;961b
l961dh:
	cp (hl)			;961d
	ex af,af'		;961e
	dec l			;961f
	dec l			;9620
	dec l			;9621
	dec l			;9622
	ex af,af'		;9623
	jr z,l9632h		;9624
	cp (hl)			;9626
	jr z,l963eh		;9627
	dec l			;9629
	dec l			;962a
	dec l			;962b
	dec l			;962c
	djnz l961dh		;962d
	ex de,hl		;962f
	scf			;9630
	ret			;9631
l9632h:
	cp (hl)			;9632
	jr z,l9641h		;9633
	dec l			;9635
	dec l			;9636
	dec l			;9637
	dec l			;9638
	call 07649h		;9639
	jr l9641h		;963c
l963eh:
	call 07644h		;963e
l9641h:
	ex de,hl		;9641
	or a			;9642
	ret			;9643
	ld a,l			;9644
	add a,004h		;9645
	jr l964dh		;9647
	ld a,l			;9649
	add a,004h		;964a
	ld l,a			;964c
l964dh:
	push hl			;964d
	push de			;964e
	call 07655h		;964f
	pop de			;9652
	pop hl			;9653
	ret			;9654
	ld l,009h		;9655
	ld b,019h		;9657
l9659h:
	cp (hl)			;9659
	jp z,07663h		;965a
	inc l			;965d
	inc l			;965e
	djnz l9659h		;965f
	scf			;9661
	ret			;9662
	ld (hl),000h		;9663
	ld a,(0c0aah)		;9665
	ld h,a			;9668
	ld (hl),00eh		;9669
	or a			;966b
	ret			;966c
	ld (hl),000h		;966d
	ld b,h			;966f
	ld c,a			;9670
	xor a			;9671
	ld (bc),a		;9672
	inc c			;9673
	ld a,(0c099h)		;9674
	ld (bc),a		;9677
	inc c			;9678
	inc c			;9679
	inc c			;967a
	xor a			;967b
	ld (bc),a		;967c
	inc c			;967d
	ld a,(0c099h)		;967e
	ld (bc),a		;9681
	ret			;9682
	ld a,(0c0d2h)		;9683
	and 0f8h		;9686
	push af			;9688
	ld l,a			;9689
	ld h,000h		;968a
	add hl,hl		;968c
	add hl,hl		;968d
	ld de,0c000h		;968e
	ld a,(0c09bh)		;9691
	rrca			;9694
	jr nc,l969ah		;9695
	ld de,0c400h		;9697
l969ah:
	add hl,de		;969a
	pop af			;969b
	rrca			;969c
	rrca			;969d
	rrca			;969e
	cp 009h			;969f
	jr c,l96bbh		;96a1
	sub 008h		;96a3
	push af			;96a5
	push de			;96a6
	neg			;96a7
	add a,018h		;96a9
	call 076bdh		;96ab
	ex (sp),hl		;96ae
	xor a			;96af
	call 046f0h		;96b0
	ld a,(00007h)		;96b3
	ld c,a			;96b6
	pop hl			;96b7
	pop af			;96b8
	jr l96cah		;96b9
l96bbh:
	ld a,018h		;96bb
	push af			;96bd
	xor a			;96be
	call 046f0h		;96bf
	ld a,(00007h)		;96c2
	ld c,a			;96c5
	ld hl,0d988h		;96c6
	pop af			;96c9
l96cah:
	push af			;96ca
	exx			;96cb
	pop bc			;96cc
	ld a,(0c0b3h)		;96cd
	or a			;96d0
	jr nz,l971eh		;96d1
l96d3h:
	exx			;96d3
	outi			;96d4
	outi			;96d6
	outi			;96d8
	outi			;96da
	outi			;96dc
	outi			;96de
	outi			;96e0
	outi			;96e2
	outi			;96e4
	outi			;96e6
	outi			;96e8
	outi			;96ea
	outi			;96ec
	outi			;96ee
	outi			;96f0
	outi			;96f2
	outi			;96f4
	outi			;96f6
	outi			;96f8
	outi			;96fa
	outi			;96fc
	outi			;96fe
	outi			;9700
	outi			;9702
	outi			;9704
	outi			;9706
	outi			;9708
	outi			;970a
	outi			;970c
	outi			;970e
	outi			;9710
	outi			;9712
	ld de,00010h		;9714
	add hl,de		;9717
	exx			;9718
	djnz l96d3h		;9719
	exx			;971b
	ei			;971c
	ret			;971d
l971eh:
	exx			;971e
	call 0772bh		;971f
	ld de,00010h		;9722
	add hl,de		;9725
	exx			;9726
	djnz l971eh		;9727
	exx			;9729
	ret			;972a
	push bc			;972b
	ld b,020h		;972c
l972eh:
	ld a,(hl)		;972e
	inc hl			;972f
	push bc			;9730
	call 0773dh		;9731
	pop bc			;9734
	and 00fh		;9735
	out (c),a		;9737
	djnz l972eh		;9739
	pop bc			;973b
	ret			;973c
	push af			;973d
	ld a,007h		;973e
	push ix			;9740
	push hl			;9742
	push de			;9743
	call 00141h		;9744
	pop de			;9747
	pop hl			;9748
	pop ix			;9749
	bit 3,a			;974b
	pop bc			;974d
	ld a,b			;974e
	ret nz			;974f
	rrca			;9750
	rrca			;9751
	rrca			;9752
	rrca			;9753
	ret			;9754
	call 04e4ah		;9755
	ld a,l			;9758
	ld b,018h		;9759
	and 03fh		;975b
	cp 021h			;975d
	jr nc,l977ch		;975f
	ld de,0d988h		;9761
l9764h:
	push bc			;9764
	push hl			;9765
	push de			;9766
	call 077bah		;9767
	pop de			;976a
	pop hl			;976b
	ex de,hl		;976c
	ld bc,00030h		;976d
	add hl,bc		;9770
	ex de,hl		;9771
	ld bc,00040h		;9772
	add hl,bc		;9775
	res 3,h			;9776
	pop bc			;9778
	djnz l9764h		;9779
	ret			;977b
l977ch:
	ld c,a			;977c
	sub 020h		;977d
	add a,a			;977f
	ld e,a			;9780
	ld d,000h		;9781
	ld ix,077bah		;9783
	add ix,de		;9787
	ld a,040h		;9789
	sub c			;978b
	add a,a			;978c
	ld e,a			;978d
	ld iy,077bah		;978e
	add iy,de		;9792
	ld de,0d988h		;9794
l9797h:
	push bc			;9797
	push hl			;9798
	push de			;9799
	call 077b8h		;979a
	ld a,l			;979d
	and 0c0h		;979e
	ld l,a			;97a0
	call 077b6h		;97a1
	pop de			;97a4
	pop hl			;97a5
	ex de,hl		;97a6
	ld bc,00030h		;97a7
	add hl,bc		;97aa
	ex de,hl		;97ab
	ld bc,00040h		;97ac
	add hl,bc		;97af
	res 3,h			;97b0
	pop bc			;97b2
	djnz l9797h		;97b3
	ret			;97b5
	jp (iy)			;97b6
	jp (ix)			;97b8
	ldi			;97ba
	ldi			;97bc
	ldi			;97be
	ldi			;97c0
	ldi			;97c2
	ldi			;97c4
	ldi			;97c6
	ldi			;97c8
	ldi			;97ca
	ldi			;97cc
	ldi			;97ce
	ldi			;97d0
	ldi			;97d2
	ldi			;97d4
	ldi			;97d6
	ldi			;97d8
	ldi			;97da
	ldi			;97dc
	ldi			;97de
	ldi			;97e0
	ldi			;97e2
	ldi			;97e4
	ldi			;97e6
	ldi			;97e8
	ldi			;97ea
	ldi			;97ec
	ldi			;97ee
	ldi			;97f0
	ldi			;97f2
	ldi			;97f4
	ldi			;97f6
	ld a,(hl)		;97f8
	ld (de),a		;97f9
	inc de			;97fa
	ret			;97fb
	xor a			;97fc
	ld (0c0e5h),a		;97fd
	ld (0c0d7h),a		;9800
	ld hl,07d76h		;9803
	ld a,(0ca10h)		;9806
	call 0468eh		;9809
	ld (0c0c8h),hl		;980c
	ld hl,07c8ch		;980f
	ld a,(0ca10h)		;9812
	call 0468eh		;9815
	ld a,(0ca1eh)		;9818
	ex de,hl		;981b
	call 04639h		;981c
	ld (0c0cah),de		;981f
	ld (0ca34h),hl		;9823
	ld a,(0ca1eh)		;9826
	ld (0c0e1h),a		;9829
	xor a			;982c
	ld (0c0cdh),a		;982d
	ld (0c0cch),a		;9830
	ld a,0ffh		;9833
	ld (0ca33h),a		;9835
	call 07bedh		;9838
	call 07bedh		;983b
	call 07c08h		;983e
	ld hl,(0ca34h)		;9841
	dec hl			;9844
	ld (0ca34h),hl		;9845
l9848h:
	call 07ac4h		;9848
	call 04109h		;984b
	ld a,(0ca33h)		;984e
	or a			;9851
	jr nz,l9848h		;9852
	call 07ac4h		;9854
	ret			;9857
	ld a,01bh		;9858
	call 04c23h		;985a
	ld hl,(0c0cah)		;985d
	inc hl			;9860
	ld a,(hl)		;9861
	inc hl			;9862
	ld (0c0cah),hl		;9863
	cp 010h			;9866
	jr c,l9894h		;9868
	sub 010h		;986a
	cp 010h			;986c
	jp nc,04ae0h		;986e
	call 0461ah		;9871
	adc a,a			;9874
	ld a,c			;9875
	and h			;9876
	ld a,c			;9877
	jp c,0eb79h		;9878
	ld a,c			;987b
	defb 0fdh,079h,008h ;illegal sequence	;987c
	ld a,d			;987f
	inc e			;9880
	ld a,d			;9881
	inc hl			;9882
	ld a,d			;9883
	jr nc,l9900h		;9884
	jr c,l9902h		;9886
	ld d,h			;9888
	ld a,d			;9889
	ld h,l			;988a
	ld a,d			;988b
	ld l,d			;988c
	ld a,d			;988d
	add a,b			;988e
	ld a,d			;988f
	add a,a			;9890
	ld a,d			;9891
	sub h			;9892
	ld a,d			;9893
l9894h:
	call 0789ch		;9894
	call 07aa1h		;9897
	or a			;989a
	ret			;989b
	add a,a			;989c
	add a,a			;989d
	ld e,a			;989e
	add a,a			;989f
	add a,e			;98a0
	ld hl,078ffh		;98a1
	ld e,a			;98a4
	ld d,000h		;98a5
	add hl,de		;98a7
	ld e,(hl)		;98a8
	inc hl			;98a9
	ld d,(hl)		;98aa
	inc hl			;98ab
	ld (0c0c3h),de		;98ac
	ld a,d			;98b0
	rlca			;98b1
	sbc a,a			;98b2
	ld (0c0c5h),a		;98b3
	ld e,(hl)		;98b6
	inc hl			;98b7
	ld d,(hl)		;98b8
	inc hl			;98b9
	ld (0c0bdh),de		;98ba
	ld a,d			;98be
	rlca			;98bf
	sbc a,a			;98c0
	ld (0c0bfh),a		;98c1
	ld e,(hl)		;98c4
	inc hl			;98c5
	ld d,(hl)		;98c6
	inc hl			;98c7
	ld (0c0b8h),de		;98c8
	ld e,(hl)		;98cc
	inc hl			;98cd
	ld d,(hl)		;98ce
	inc hl			;98cf
	ld (0c0b6h),de		;98d0
	ld e,(hl)		;98d4
	inc hl			;98d5
	ld d,(hl)		;98d6
	inc hl			;98d7
	ld a,e			;98d8
	ld (0c0ceh),a		;98d9
	push de			;98dc
	ld a,(hl)		;98dd
	inc hl			;98de
	ld (0c0d5h),a		;98df
	ld a,(hl)		;98e2
	call 078ech		;98e3
	pop de			;98e6
	xor a			;98e7
	ld (0c0dah),a		;98e8
	ret			;98eb
	ret			;98ec
	bit 7,a			;98ed
	ret z			;98ef
	ld a,(0ca35h)		;98f0
	and 0f0h		;98f3
	add a,010h		;98f5
	ld d,a			;98f7
	ld e,000h		;98f8
	ld (0ca34h),de		;98fa
	ret			;98fe
	nop			;98ff
l9900h:
	nop			;9900
	nop			;9901
l9902h:
	ld (bc),a		;9902
	nop			;9903
	ld (bc),a		;9904
	nop			;9905
	nop			;9906
	nop			;9907
	jr nz,l990bh		;9908
	add a,b			;990a
l990bh:
	nop			;990b
	ld bc,00100h		;990c
	nop			;990f
	ld bc,00000h		;9910
	ld bc,00218h		;9913
	add a,b			;9916
	nop			;9917
	ld bc,00000h		;9918
	nop			;991b
	ld bc,00000h		;991c
	ld (bc),a		;991f
	jr l9923h		;9920
	nop			;9922
l9923h:
	nop			;9923
	ld bc,00000h		;9924
	nop			;9927
	ld bc,00000h		;9928
	inc bc			;992b
	jr l9931h		;992c
	add a,b			;992e
	nop			;992f
	rst 38h			;9930
l9931h:
	nop			;9931
	ld bc,00100h		;9932
	nop			;9935
	nop			;9936
	inc b			;9937
	jr $+10			;9938
	add a,b			;993a
	nop			;993b
	ld bc,0ff00h		;993c
	nop			;993f
	ld bc,00000h		;9940
	dec b			;9943
	jr nz,l994ah		;9944
	add a,b			;9946
	nop			;9947
	rst 38h			;9948
	nop			;9949
l994ah:
	nop			;994a
	nop			;994b
	ld bc,00000h		;994c
	ld b,018h		;994f
	rlca			;9951
	add a,b			;9952
	nop			;9953
	nop			;9954
	nop			;9955
	nop			;9956
	nop			;9957
	ld bc,00000h		;9958
	rlca			;995b
	nop			;995c
	nop			;995d
	add a,b			;995e
	nop			;995f
	nop			;9960
	nop			;9961
	inc b			;9962
	nop			;9963
	inc b			;9964
	nop			;9965
	nop			;9966
	nop			;9967
	jr nz,l996bh		;9968
	add a,b			;996a
l996bh:
	nop			;996b
	nop			;996c
	nop			;996d
	ld bc,00100h		;996e
	nop			;9971
	nop			;9972
	nop			;9973
	jr nz,l9977h		;9974
	add a,b			;9976
l9977h:
	nop			;9977
	nop			;9978
	nop			;9979
	ld (bc),a		;997a
	nop			;997b
	ld (bc),a		;997c
	nop			;997d
	nop			;997e
	ex af,af'		;997f
	ld bc,00001h		;9980
	nop			;9983
	ld (bc),a		;9984
	nop			;9985
	ld (bc),a		;9986
	nop			;9987
	ld (bc),a		;9988
	nop			;9989
	nop			;998a
	ld bc,00218h		;998b
	nop			;998e
	ld hl,(0c0cah)		;998f
	ld e,(hl)		;9992
	inc hl			;9993
	ld d,(hl)		;9994
	inc hl			;9995
	ld (0c0cah),hl		;9996
	ld a,(0ce4ch)		;9999
	or a			;999c
	ret z			;999d
	ld (0c0cah),de		;999e
	or a			;99a2
	ret			;99a3
	ld hl,(0c0cah)		;99a4
	ld e,(hl)		;99a7
	inc hl			;99a8
	ld d,(hl)		;99a9
	inc hl			;99aa
	ld (0c0cah),hl		;99ab
	ld a,e			;99ae
	push de			;99af
	call 079c2h		;99b0
	ld a,(0c0d2h)		;99b3
	and 007h		;99b6
	ld c,a			;99b8
	pop af			;99b9
	and 0f8h		;99ba
	or c			;99bc
	ld (0c0d2h),a		;99bd
	or a			;99c0
	ret			;99c1
	ei			;99c2
	ex af,af'		;99c3
l99c4h:
	ld a,(0c09ch)		;99c4
	or a			;99c7
	jr nz,l99c4h		;99c8
	ex af,af'		;99ca
	cp 007h			;99cb
	jp c,079d6h		;99cd
	and 080h		;99d0
	ld (0c0d1h),a		;99d2
	ret			;99d5
	ld (0c0b5h),a		;99d6
	ret			;99d9
	ld hl,(0c0cah)		;99da
	ld de,00024h		;99dd
	add hl,de		;99e0
	ld (0c0cah),hl		;99e1
	ld a,002h		;99e4
	ld (0c0ceh),a		;99e6
	or a			;99e9
	ret			;99ea
	ld hl,(0c0cah)		;99eb
	ld e,(hl)		;99ee
	inc hl			;99ef
	ld d,(hl)		;99f0
	inc hl			;99f1
	push hl			;99f2
	ex de,hl		;99f3
	call 04ce0h		;99f4
	pop hl			;99f7
	ld (0c0cah),hl		;99f8
	or a			;99fb
	ret			;99fc
	call 07bd6h		;99fd
	call 04e73h		;9a00
	call 078f0h		;9a03
	scf			;9a06
	ret			;9a07
	ld a,(0ef60h)		;9a08
	or a			;9a0b
	ret z			;9a0c
	ld hl,(0c0cah)		;9a0d
	dec hl			;9a10
	dec hl			;9a11
	ld (0c0cah),hl		;9a12
	ld a,007h		;9a15
	call 0789ch		;9a17
	scf			;9a1a
	ret			;9a1b
	ld a,001h		;9a1c
	ld (0c0d6h),a		;9a1e
	scf			;9a21
	ret			;9a22
	ld hl,(0c0cah)		;9a23
	ld a,(hl)		;9a26
	inc hl			;9a27
	ld (0c0cah),hl		;9a28
	call 04e6bh		;9a2b
	or a			;9a2e
	ret			;9a2f
	call 06e2dh		;9a30
	call 06e0bh		;9a33
	or a			;9a36
	ret			;9a37
	ld hl,(0c0cah)		;9a38
	ld a,(hl)		;9a3b
	inc hl			;9a3c
	ld (0c0cah),hl		;9a3d
	or a			;9a40
	jr nz,l9a4fh		;9a41
	ld a,030h		;9a43
	ld (0c0d7h),a		;9a45
	ld a,084h		;9a48
	call 04aebh		;9a4a
	or a			;9a4d
	ret			;9a4e
l9a4fh:
	call 04aebh		;9a4f
	or a			;9a52
	ret			;9a53
	ld a,(0c0e1h)		;9a54
	or a			;9a57
	jr nz,l9a60h		;9a58
	ld hl,0ca1eh		;9a5a
	inc (hl)		;9a5d
	or a			;9a5e
	ret			;9a5f
l9a60h:
	xor a			;9a60
	ld (0c0e1h),a		;9a61
	ret			;9a64
	call 078f0h		;9a65
	or a			;9a68
	ret			;9a69
	ld hl,(0c0cah)		;9a6a
	ld e,(hl)		;9a6d
	inc hl			;9a6e
	ld d,(hl)		;9a6f
	inc hl			;9a70
	push hl			;9a71
	ex de,hl		;9a72
	ld a,(0ca33h)		;9a73
	or a			;9a76
	call nz,04cdch		;9a77
	pop hl			;9a7a
	ld (0c0cah),hl		;9a7b
	or a			;9a7e
	ret			;9a7f
	ld a,(0ca33h)		;9a80
	or a			;9a83
	ret nz			;9a84
	scf			;9a85
	ret			;9a86
	call 07bd6h		;9a87
	ld a,002h		;9a8a
	ld (0c0d4h),a		;9a8c
	call 078f0h		;9a8f
	scf			;9a92
	ret			;9a93
	ld hl,(0c0cah)		;9a94
	ld a,(hl)		;9a97
	inc hl			;9a98
	ld (0c0cah),hl		;9a99
	ld (0c0e5h),a		;9a9c
	or a			;9a9f
	ret			;9aa0
	ld a,(0ca33h)		;9aa1
	inc a			;9aa4
	ret nz			;9aa5
	ld a,d			;9aa6
	ld (0ca33h),a		;9aa7
	ret			;9aaa
	ld a,(0ca33h)		;9aab
	or a			;9aae
	ret z			;9aaf
	dec a			;9ab0
	ld (0ca33h),a		;9ab1
	ret			;9ab4
	ld a,(0c0d7h)		;9ab5
	or a			;9ab8
	ret z			;9ab9
	dec a			;9aba
	ld (0c0d7h),a		;9abb
	ret nz			;9abe
	ld a,039h		;9abf
	jp 04aebh		;9ac1
	ld a,(0c0d6h)		;9ac4
	dec a			;9ac7
	jr z,l9aceh		;9ac8
	call 07ad2h		;9aca
	ret			;9acd
l9aceh:
	call 07bd6h		;9ace
	ret			;9ad1
	ld hl,(0c0b6h)		;9ad2
	ld a,h			;9ad5
	ld de,(0c0b8h)		;9ad6
	add hl,de		;9ada
	ld (0c0b6h),hl		;9adb
	xor h			;9ade
	bit 3,a			;9adf
	push af			;9ae1
	call 07b09h		;9ae2
	call 07c72h		;9ae5
	pop af			;9ae8
	ret z			;9ae9
	call 07bedh		;9aea
	ret c			;9aed
	call 07c08h		;9aee
	ld a,01bh		;9af1
	call 04c23h		;9af3
	ld hl,(0c0cah)		;9af6
	ld a,(hl)		;9af9
	cp 0feh			;9afa
	ret nz			;9afc
	inc hl			;9afd
	ld (0c0cah),hl		;9afe
	call 07bedh		;9b01
	ret c			;9b04
	call 07c08h		;9b05
	ret			;9b08
	ld hl,0c0bah		;9b09
	ld de,0c0bdh		;9b0c
	ld a,(de)		;9b0f
	add a,(hl)		;9b10
	ld (hl),a		;9b11
	inc hl			;9b12
	inc de			;9b13
	ld a,(de)		;9b14
	adc a,(hl)		;9b15
	ld (hl),a		;9b16
	inc hl			;9b17
	inc de			;9b18
	ld a,(de)		;9b19
	adc a,(hl)		;9b1a
	ld (hl),a		;9b1b
	ld de,(0c0bdh)		;9b1c
	call 0460ah		;9b20
	sra d			;9b23
	rr e			;9b25
	sra d			;9b27
	rr e			;9b29
	sra d			;9b2b
	rr e			;9b2d
	ld (0ca14h),de		;9b2f
	ld de,(0c0bah)		;9b33
	sra d			;9b37
	rr e			;9b39
	sra d			;9b3b
	rr e			;9b3d
	sra d			;9b3f
	rr e			;9b41
	ld (0ca1ch),de		;9b43
	ld d,000h		;9b47
	call 0460ah		;9b49
	ld (0ca38h),de		;9b4c
	ld a,(0c0c1h)		;9b50
	ld c,a			;9b53
	ld hl,0c0c0h		;9b54
	ld de,0c0c3h		;9b57
	ld a,(de)		;9b5a
	add a,(hl)		;9b5b
	ld (hl),a		;9b5c
	inc hl			;9b5d
	inc de			;9b5e
	ld a,(de)		;9b5f
	adc a,(hl)		;9b60
	ld (hl),a		;9b61
	inc hl			;9b62
	inc de			;9b63
	ld a,(de)		;9b64
	adc a,(hl)		;9b65
	ld (hl),a		;9b66
	ld a,(0c0c1h)		;9b67
	ld h,a			;9b6a
	ld de,(0c0c3h)		;9b6b
	call 0460ah		;9b6f
	sra d			;9b72
	rr e			;9b74
	sra d			;9b76
	rr e			;9b78
	sra d			;9b7a
	rr e			;9b7c
	ld (0ca12h),de		;9b7e
	ld de,(0c0c0h)		;9b82
	sra d			;9b86
	rr e			;9b88
	sra d			;9b8a
	rr e			;9b8c
	sra d			;9b8e
	rr e			;9b90
	ld (0ca1ah),de		;9b92
	ld d,000h		;9b96
	call 0460ah		;9b98
	ld (0ca36h),de		;9b9b
	ld a,(0c0d5h)		;9b9f
	ld (0ca18h),a		;9ba2
	ld a,(0c0bbh)		;9ba5
	and 007h		;9ba8
	ld d,a			;9baa
	ld a,(0c0c1h)		;9bab
	and 007h		;9bae
	ld e,a			;9bb0
	ld (0ca31h),de		;9bb1
	ld a,(0c0d1h)		;9bb5
	or a			;9bb8
	jr nz,l9bc4h		;9bb9
	ld a,(0c0d2h)		;9bbb
	add a,h			;9bbe
	sub c			;9bbf
	ld (0c0d2h),a		;9bc0
	ret			;9bc3
l9bc4h:
	ld a,(0c0d2h)		;9bc4
	and 0f8h		;9bc7
	ld d,a			;9bc9
	ld a,(0c0d2h)		;9bca
	add a,h			;9bcd
	sub c			;9bce
	and 007h		;9bcf
	or d			;9bd1
	ld (0c0d2h),a		;9bd2
	ret			;9bd5
	xor a			;9bd6
	ld d,a			;9bd7
	ld e,a			;9bd8
	ld (0c0bdh),de		;9bd9
	ld (0c0c3h),de		;9bdd
	ld (0ca14h),de		;9be1
	ld (0ca12h),de		;9be5
	ld (0ca18h),a		;9be9
	ret			;9bec
l9bedh:
	ld a,01bh		;9bed
	call 04c23h		;9bef
	ld hl,(0c0cah)		;9bf2
l9bf5h:
	ld a,(hl)		;9bf5
	inc a			;9bf6
	or a			;9bf7
	jr z,l9c02h		;9bf8
	inc a			;9bfa
	ret nz			;9bfb
	inc hl			;9bfc
	ld (0c0cah),hl		;9bfd
	jr l9bf5h		;9c00
l9c02h:
	call 07858h		;9c02
	ret c			;9c05
	jr l9bedh		;9c06
	ld hl,(0c0cah)		;9c08
	push hl			;9c0b
	ld a,01bh		;9c0c
	call 04c23h		;9c0e
	call 07c3eh		;9c11
	ld a,(0c0dah)		;9c14
	inc a			;9c17
	ld (0c0dah),a		;9c18
	cp 004h			;9c1b
	pop hl			;9c1d
	ld (0c0cah),hl		;9c1e
	ret c			;9c21
	xor a			;9c22
	ld (0c0dah),a		;9c23
	add hl,de		;9c26
	ld (0c0cah),hl		;9c27
	ret			;9c2a
	ld hl,(0ca34h)		;9c2b
	inc hl			;9c2e
	ld (0ca34h),hl		;9c2f
	ret			;9c32
	dec a			;9c33
	ld (0c0e5h),a		;9c34
	ret nz			;9c37
	ld de,03801h		;9c38
	jp 079aeh		;9c3b
	ld a,(0c0e5h)		;9c3e
	or a			;9c41
	call nz,07c33h		;9c42
	call 07c2bh		;9c45
	ld a,019h		;9c48
	call 04c15h		;9c4a
	call 07aabh		;9c4d
	ld a,(0c0ceh)		;9c50
	cp 009h			;9c53
	jp nc,04ae0h		;9c55
	call 0461ah		;9c58
	and a			;9c5b
	ld a,l			;9c5c
	jr z,l9cddh		;9c5d
	adc a,b			;9c5f
	ld a,l			;9c60
	inc e			;9c61
	ld a,(hl)		;9c62
	sbc a,07eh		;9c63
	ccf			;9c65
	ld a,(hl)		;9c66
	adc a,07eh		;9c67
	adc a,07eh		;9c69
	ld l,l			;9c6b
	ld a,h			;9c6c
	ld de,00000h		;9c6d
	ret			;9c70
	ret			;9c71
	ld hl,(0c0bbh)		;9c72
	ld a,l			;9c75
	rr h			;9c76
	rra			;9c78
	rra			;9c79
	rra			;9c7a
	and 03fh		;9c7b
	ld (0c0cdh),a		;9c7d
	ld a,(0c0c1h)		;9c80
	rrca			;9c83
	rrca			;9c84
	rrca			;9c85
	and 01fh		;9c86
	ld (0c0cch),a		;9c88
	ret			;9c8b
	sbc a,(hl)		;9c8c
	ld a,h			;9c8d
	or (hl)			;9c8e
	ld a,h			;9c8f
	adc a,07ch		;9c90
	and 07ch		;9c92
	cp 07ch			;9c94
	ld d,07dh		;9c96
	ld l,07dh		;9c98
	ld b,(hl)		;9c9a
	ld a,l			;9c9b
	ld e,(hl)		;9c9c
	ld a,l			;9c9d
	nop			;9c9e
	and b			;9c9f
	nop			;9ca0
	nop			;9ca1
	ret m			;9ca2
	and b			;9ca3
	and b			;9ca4
	djnz l9cd0h		;9ca5
	and e			;9ca7
	and b			;9ca8
	djnz l9cd4h		;9ca9
	and e			;9cab
	and b			;9cac
	djnz l9cd8h		;9cad
	and e			;9caf
	and b			;9cb0
	djnz $-88		;9cb1
	and e			;9cb3
	and b			;9cb4
	djnz $+98		;9cb5
	and h			;9cb7
	nop			;9cb8
	nop			;9cb9
	ld c,a			;9cba
	and l			;9cbb
	sbc a,h			;9cbc
	djnz $+60		;9cbd
	and a			;9cbf
	adc a,c			;9cc0
	jr nc,l9cf2h		;9cc1
	xor b			;9cc3
	nop			;9cc4
	ld d,b			;9cc5
	cpl			;9cc6
	xor b			;9cc7
	nop			;9cc8
	ld d,b			;9cc9
	cpl			;9cca
	xor b			;9ccb
	nop			;9ccc
	ld d,b			;9ccd
	ld (hl),b		;9cce
	xor c			;9ccf
l9cd0h:
	nop			;9cd0
	nop			;9cd1
	ld l,b			;9cd2
	xor d			;9cd3
l9cd4h:
	and b			;9cd4
	djnz l9cd7h		;9cd5
l9cd7h:
	xor e			;9cd7
l9cd8h:
	nop			;9cd8
	ld de,0ab68h		;9cd9
	ld b,b			;9cdc
l9cddh:
	ld de,0ab68h		;9cdd
	ld b,b			;9ce0
	ld de,0ab68h		;9ce1
	ld b,b			;9ce4
	ld de,0aba9h		;9ce5
	nop			;9ce8
	nop			;9ce9
	ld c,0adh		;9cea
	inc b			;9cec
	jr nc,$+16		;9ced
	xor l			;9cef
	jr nz,$+50		;9cf0
l9cf2h:
	ld c,0adh		;9cf2
	jr nz,$+50		;9cf4
	ld c,0adh		;9cf6
	jr nz,l9d2ah		;9cf8
	ld c,0adh		;9cfa
	jr nz,l9d2eh		;9cfc
	ld b,a			;9cfe
	xor (hl)		;9cff
	nop			;9d00
	nop			;9d01
	rst 38h			;9d02
	xor a			;9d03
	jr nz,$+19		;9d04
l9d06h:
	xor d			;9d06
	or d			;9d07
	ret po			;9d08
	ld (de),a		;9d09
	xor d			;9d0a
	or d			;9d0b
	ret po			;9d0c
	ld (de),a		;9d0d
	xor d			;9d0e
	or d			;9d0f
	ret po			;9d10
	ld (de),a		;9d11
	xor d			;9d12
	or d			;9d13
	ret po			;9d14
	ld (de),a		;9d15
	ld sp,000b3h		;9d16
	nop			;9d19
	ld e,(hl)		;9d1a
	or h			;9d1b
	dec b			;9d1c
	jr nc,l9d7dh		;9d1d
	or h			;9d1f
	dec b			;9d20
	jr nc,l9d64h		;9d21
	or (hl)			;9d23
	dec b			;9d24
	jr nc,l9d06h		;9d25
	or (hl)			;9d27
	dec b			;9d28
	ld b,b			;9d29
l9d2ah:
	ld sp,000b3h		;9d2a
	nop			;9d2d
l9d2eh:
	ld (hl),b		;9d2e
	or a			;9d2f
	nop			;9d30
	nop			;9d31
	ld (hl),b		;9d32
	or a			;9d33
	nop			;9d34
	nop			;9d35
	ld (hl),b		;9d36
	or a			;9d37
	nop			;9d38
	nop			;9d39
	ld (hl),b		;9d3a
	or a			;9d3b
	nop			;9d3c
	nop			;9d3d
	ld (hl),b		;9d3e
	or a			;9d3f
	nop			;9d40
	nop			;9d41
	ld (hl),b		;9d42
	or a			;9d43
	nop			;9d44
	nop			;9d45
	ld c,b			;9d46
	cp c			;9d47
	nop			;9d48
	nop			;9d49
	ld c,b			;9d4a
	cp c			;9d4b
	nop			;9d4c
	nop			;9d4d
	ld c,b			;9d4e
	cp c			;9d4f
	nop			;9d50
	nop			;9d51
	ld c,b			;9d52
	cp c			;9d53
	nop			;9d54
	nop			;9d55
	ld c,b			;9d56
	cp c			;9d57
	nop			;9d58
	nop			;9d59
	ld c,b			;9d5a
	cp c			;9d5b
	nop			;9d5c
	nop			;9d5d
	ld a,a			;9d5e
	cp d			;9d5f
	nop			;9d60
	nop			;9d61
	ld a,a			;9d62
	cp d			;9d63
l9d64h:
	nop			;9d64
	nop			;9d65
	ld a,a			;9d66
	cp d			;9d67
	nop			;9d68
	nop			;9d69
	ld a,a			;9d6a
	cp d			;9d6b
	nop			;9d6c
	nop			;9d6d
	ld a,a			;9d6e
	cp d			;9d6f
	nop			;9d70
	nop			;9d71
	ld a,a			;9d72
	cp d			;9d73
	nop			;9d74
	nop			;9d75
	nop			;9d76
	add a,b			;9d77
	ret po			;9d78
	adc a,d			;9d79
	ld h,b			;9d7a
	sub b			;9d7b
	ret nc			;9d7c
l9d7dh:
	sub l			;9d7d
	or b			;9d7e
	sbc a,l			;9d7f
	ld (hl),b		;9d80
	and b			;9d81
	ret nz			;9d82
	and a			;9d83
	ret nc			;9d84
	or c			;9d85
	ret nc			;9d86
	or d			;9d87
	ld de,03700h		;9d88
	call 04e3ah		;9d8b
	ld de,(0c0cah)		;9d8e
	call 07db8h		;9d92
	ld de,(0c0cah)		;9d95
	ld hl,0ffdch		;9d99
	add hl,de		;9d9c
	push hl			;9d9d
	call 04e37h		;9d9e
	pop de			;9da1
	call 07db8h		;9da2
	jr l9db4h		;9da5
	ld de,02000h		;9da7
	call 04e37h		;9daa
	ld de,(0c0cah)		;9dad
	call 07db8h		;9db1
l9db4h:
	ld de,00006h		;9db4
	ret			;9db7
	push de			;9db8
	push hl			;9db9
	exx			;9dba
	pop hl			;9dbb
	exx			;9dbc
	ld a,(0c0bbh)		;9dbd
	and 018h		;9dc0
	rrca			;9dc2
	rrca			;9dc3
	rrca			;9dc4
	ld hl,(0c0c8h)		;9dc5
	ld e,a			;9dc8
	ld d,000h		;9dc9
	add hl,de		;9dcb
	ld b,h			;9dcc
	ld c,l			;9dcd
	pop de			;9dce
	ld a,006h		;9dcf
	ex af,af'		;9dd1
	ld a,01bh		;9dd2
	call 04c23h		;9dd4
	ld a,(de)		;9dd7
	inc de			;9dd8
	ld h,000h		;9dd9
	ld l,a			;9ddb
	ld a,01ah		;9ddc
	call 04c23h		;9dde
	add hl,hl		;9de1
	add hl,hl		;9de2
	add hl,hl		;9de3
	add hl,hl		;9de4
	add hl,bc		;9de5
	push hl			;9de6
	exx			;9de7
	pop de			;9de8
	ld bc,00040h		;9de9
	ld a,(de)		;9dec
	ld (hl),a		;9ded
	inc e			;9dee
	inc e			;9def
	inc e			;9df0
	inc e			;9df1
	add hl,bc		;9df2
	res 3,h			;9df3
	ld a,(de)		;9df5
	ld (hl),a		;9df6
	inc e			;9df7
	inc e			;9df8
	inc e			;9df9
	inc e			;9dfa
	add hl,bc		;9dfb
	res 3,h			;9dfc
	ld a,(de)		;9dfe
	ld (hl),a		;9dff
	inc e			;9e00
	inc e			;9e01
	inc e			;9e02
	inc e			;9e03
	add hl,bc		;9e04
	res 3,h			;9e05
	ld a,(de)		;9e07
	ld (hl),a		;9e08
	inc e			;9e09
	inc e			;9e0a
	inc e			;9e0b
	inc e			;9e0c
	add hl,bc		;9e0d
	res 3,h			;9e0e
	exx			;9e10
	ex af,af'		;9e11
	dec a			;9e12
	jp nz,07dd1h		;9e13
	ret			;9e16
	ld a,l			;9e17
	sub 040h		;9e18
	ld l,a			;9e1a
	ret			;9e1b
	ld a,008h		;9e1c
	ld de,00018h		;9e1e
	call 07e55h		;9e21
	ld de,00008h		;9e24
	ret			;9e27
	ld e,018h		;9e28
	ld a,(0c0c1h)		;9e2a
	and 018h		;9e2d
	rrca			;9e2f
	rrca			;9e30
	rrca			;9e31
	neg			;9e32
	ld d,a			;9e34
	dec d			;9e35
	ld a,00fh		;9e36
	call 07e55h		;9e38
	ld de,0000fh		;9e3b
	ret			;9e3e
	ld e,018h		;9e3f
	ld a,(0c0c1h)		;9e41
	and 018h		;9e44
	rrca			;9e46
	rrca			;9e47
	rrca			;9e48
	sub 01ch		;9e49
	ld d,a			;9e4b
	ld a,00fh		;9e4c
	call 07e55h		;9e4e
	ld de,0000fh		;9e51
	ret			;9e54
	push af			;9e55
	call 04e3ah		;9e56
	push hl			;9e59
	exx			;9e5a
	pop hl			;9e5b
	exx			;9e5c
	ld a,(0c0c1h)		;9e5d
	and 018h		;9e60
	rrca			;9e62
	ld hl,(0c0c8h)		;9e63
	ld e,a			;9e66
	ld d,000h		;9e67
	add hl,de		;9e69
	ld b,h			;9e6a
	ld c,l			;9e6b
	ld de,(0c0cah)		;9e6c
	pop af			;9e70
	ex af,af'		;9e71
	ld a,01bh		;9e72
	call 04c23h		;9e74
	ld a,(de)		;9e77
	inc de			;9e78
	ld h,000h		;9e79
	ld l,a			;9e7b
	ld a,01ah		;9e7c
	call 04c23h		;9e7e
	add hl,hl		;9e81
	add hl,hl		;9e82
	add hl,hl		;9e83
	add hl,hl		;9e84
	add hl,bc		;9e85
	push hl			;9e86
	exx			;9e87
	pop de			;9e88
	ld a,(de)		;9e89
	ld (hl),a		;9e8a
	inc de			;9e8b
	inc l			;9e8c
	ld a,l			;9e8d
	and 03fh		;9e8e
	call z,07e17h		;9e90
	ld a,(de)		;9e93
	ld (hl),a		;9e94
	inc de			;9e95
	inc l			;9e96
	ld a,l			;9e97
	and 03fh		;9e98
	call z,07e17h		;9e9a
	ld a,(de)		;9e9d
	ld (hl),a		;9e9e
	inc de			;9e9f
	inc l			;9ea0
	ld a,l			;9ea1
	and 03fh		;9ea2
	call z,07e17h		;9ea4
	ld a,(de)		;9ea7
	ld (hl),a		;9ea8
	inc de			;9ea9
	inc l			;9eaa
	ld a,l			;9eab
	and 03fh		;9eac
	call z,07e17h		;9eae
	exx			;9eb1
	ex af,af'		;9eb2
	dec a			;9eb3
	jp nz,07e71h		;9eb4
	ret			;9eb7
	ld a,l			;9eb8
	sub 040h		;9eb9
	ld l,a			;9ebb
	ret			;9ebc
	ld e,001h		;9ebd
	call 07c71h		;9ebf
	ld a,008h		;9ec2
	ld de,00018h		;9ec4
	call 07efch		;9ec7
	ld de,00008h		;9eca
	ret			;9ecd
	call 07c71h		;9ece
	ld d,000h		;9ed1
	ld e,0ffh		;9ed3
	ld a,008h		;9ed5
	call 07efch		;9ed7
	ld de,00008h		;9eda
	ret			;9edd
	call 07c71h		;9ede
	ld a,(0c0c1h)		;9ee1
	and 018h		;9ee4
	rrca			;9ee6
	rrca			;9ee7
	rrca			;9ee8
	neg			;9ee9
	and 003h		;9eeb
	neg			;9eed
	ld d,a			;9eef
	ld e,0ffh		;9ef0
	ld a,00fh		;9ef2
	call 07efch		;9ef4
	ret nz			;9ef7
	ld de,0000fh		;9ef8
	ret			;9efb
	push af			;9efc
	call 04e3ah		;9efd
	push hl			;9f00
	exx			;9f01
	pop hl			;9f02
	exx			;9f03
	ld a,(0c0c1h)		;9f04
	and 018h		;9f07
	sub 008h		;9f09
	rrca			;9f0b
	and 00ch		;9f0c
	ld hl,(0c0c8h)		;9f0e
	ld e,a			;9f11
	ld d,000h		;9f12
	add hl,de		;9f14
	ld b,h			;9f15
	ld c,l			;9f16
	ld de,(0c0cah)		;9f17
	pop af			;9f1b
	ex af,af'		;9f1c
	ld a,01bh		;9f1d
	call 04c23h		;9f1f
	ld a,(de)		;9f22
	inc de			;9f23
	ld h,000h		;9f24
	ld l,a			;9f26
	ld a,01ah		;9f27
	call 04c23h		;9f29
	add hl,hl		;9f2c
	add hl,hl		;9f2d
	add hl,hl		;9f2e
	add hl,hl		;9f2f
	add hl,bc		;9f30
	push hl			;9f31
	exx			;9f32
	pop de			;9f33
	ld a,(de)		;9f34
	ld (hl),a		;9f35
	inc de			;9f36
	inc l			;9f37
	ld a,l			;9f38
	and 03fh		;9f39
	call z,07eb8h		;9f3b
	ld a,(de)		;9f3e
	ld (hl),a		;9f3f
	inc de			;9f40
	inc l			;9f41
	ld a,l			;9f42
	and 03fh		;9f43
	call z,07eb8h		;9f45
	ld a,(de)		;9f48
	ld (hl),a		;9f49
	inc de			;9f4a
	inc l			;9f4b
	ld a,l			;9f4c
	and 03fh		;9f4d
	call z,07eb8h		;9f4f
	ld a,(de)		;9f52
	ld (hl),a		;9f53
	inc de			;9f54
	inc l			;9f55
	ld a,l			;9f56
	and 03fh		;9f57
	call z,07eb8h		;9f59
	exx			;9f5c
	ex af,af'		;9f5d
	dec a			;9f5e
	jp nz,07f1ch		;9f5f
	ret			;9f62
	rst 38h			;9f63
	rst 38h			;9f64
	rst 38h			;9f65
	rst 38h			;9f66
	rst 38h			;9f67
	rst 38h			;9f68
	rst 38h			;9f69
	rst 38h			;9f6a
	rst 38h			;9f6b
	rst 38h			;9f6c
	rst 38h			;9f6d
	rst 38h			;9f6e
	rst 38h			;9f6f
	rst 38h			;9f70
	rst 38h			;9f71
	rst 38h			;9f72
	rst 38h			;9f73
	rst 38h			;9f74
	rst 38h			;9f75
	rst 38h			;9f76
	rst 38h			;9f77
	rst 38h			;9f78
	rst 38h			;9f79
	rst 38h			;9f7a
	rst 38h			;9f7b
	rst 38h			;9f7c
	rst 38h			;9f7d
	rst 38h			;9f7e
	rst 38h			;9f7f
	rst 38h			;9f80
	rst 38h			;9f81
	rst 38h			;9f82
	rst 38h			;9f83
	rst 38h			;9f84
	rst 38h			;9f85
	rst 38h			;9f86
	rst 38h			;9f87
	rst 38h			;9f88
	rst 38h			;9f89
	rst 38h			;9f8a
	rst 38h			;9f8b
	rst 38h			;9f8c
	rst 38h			;9f8d
	rst 38h			;9f8e
	rst 38h			;9f8f
	rst 38h			;9f90
	rst 38h			;9f91
	rst 38h			;9f92
	rst 38h			;9f93
	rst 38h			;9f94
	rst 38h			;9f95
	rst 38h			;9f96
	rst 38h			;9f97
	rst 38h			;9f98
	rst 38h			;9f99
	rst 38h			;9f9a
	rst 38h			;9f9b
	rst 38h			;9f9c
	rst 38h			;9f9d
	rst 38h			;9f9e
	rst 38h			;9f9f
	rst 38h			;9fa0
	rst 38h			;9fa1
	rst 38h			;9fa2
	rst 38h			;9fa3
	rst 38h			;9fa4
	rst 38h			;9fa5
	rst 38h			;9fa6
	rst 38h			;9fa7
	rst 38h			;9fa8
	rst 38h			;9fa9
	rst 38h			;9faa
	rst 38h			;9fab
	rst 38h			;9fac
	rst 38h			;9fad
	rst 38h			;9fae
	rst 38h			;9faf
	rst 38h			;9fb0
	rst 38h			;9fb1
	rst 38h			;9fb2
	rst 38h			;9fb3
	rst 38h			;9fb4
	rst 38h			;9fb5
	rst 38h			;9fb6
	rst 38h			;9fb7
	rst 38h			;9fb8
	rst 38h			;9fb9
	rst 38h			;9fba
	rst 38h			;9fbb
	rst 38h			;9fbc
	rst 38h			;9fbd
	rst 38h			;9fbe
	rst 38h			;9fbf
	rst 38h			;9fc0
	rst 38h			;9fc1
	rst 38h			;9fc2
	rst 38h			;9fc3
	rst 38h			;9fc4
	rst 38h			;9fc5
	rst 38h			;9fc6
	rst 38h			;9fc7
	rst 38h			;9fc8
	rst 38h			;9fc9
	rst 38h			;9fca
	rst 38h			;9fcb
	rst 38h			;9fcc
	rst 38h			;9fcd
	rst 38h			;9fce
	rst 38h			;9fcf
	rst 38h			;9fd0
	rst 38h			;9fd1
	rst 38h			;9fd2
	rst 38h			;9fd3
	rst 38h			;9fd4
	rst 38h			;9fd5
	rst 38h			;9fd6
	rst 38h			;9fd7
	rst 38h			;9fd8
	rst 38h			;9fd9
	rst 38h			;9fda
	rst 38h			;9fdb
	rst 38h			;9fdc
	rst 38h			;9fdd
	rst 38h			;9fde
	rst 38h			;9fdf
	rst 38h			;9fe0
	rst 38h			;9fe1
	rst 38h			;9fe2
	rst 38h			;9fe3
	rst 38h			;9fe4
	rst 38h			;9fe5
	rst 38h			;9fe6
	rst 38h			;9fe7
	rst 38h			;9fe8
	rst 38h			;9fe9
	rst 38h			;9fea
	rst 38h			;9feb
	rst 38h			;9fec
	rst 38h			;9fed
	rst 38h			;9fee
	rst 38h			;9fef
	rst 38h			;9ff0
	rst 38h			;9ff1
	rst 38h			;9ff2
	rst 38h			;9ff3
	rst 38h			;9ff4
	rst 38h			;9ff5
	rst 38h			;9ff6
	rst 38h			;9ff7
	rst 38h			;9ff8
	rst 38h			;9ff9
	rst 38h			;9ffa
	rst 38h			;9ffb
	rst 38h			;9ffc
	rst 38h			;9ffd
	rst 38h			;9ffe
	rst 38h			;9fff

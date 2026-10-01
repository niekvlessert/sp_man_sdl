; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank26_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank26.bin

	org 08000h

	cp (hl)			;8000
	cp (hl)			;8001
	cp (hl)			;8002
	cp (hl)			;8003
	push bc			;8004
	push bc			;8005
	push bc			;8006
	push bc			;8007
	ld bc,00104h		;8008
	inc b			;800b
	ld c,00dh		;800c
	ld c,00dh		;800e
	add hl,bc		;8010
	ld hl,02109h		;8011
	ex af,af'		;8014
	dec e			;8015
	ex af,af'		;8016
	dec e			;8017
	ld (de),a		;8018
	ld de,01112h		;8019
	jr l8035h		;801c
	jr l8037h		;801e
	cp (hl)			;8020
	cp (hl)			;8021
	cp h			;8022
	cp l			;8023
	push bc			;8024
	push bc			;8025
	cp d			;8026
	cp e			;8027
	ld bc,0b804h		;8028
	cp c			;802b
	ld c,00dh		;802c
	cp b			;802e
	cp c			;802f
	ld d,016h		;8030
	ld d,016h		;8032
	dec d			;8034
l8035h:
	dec d			;8035
	dec d			;8036
l8037h:
	dec d			;8037
	cp (hl)			;8038
	cp (hl)			;8039
	cp h			;803a
	cp l			;803b
	push bc			;803c
	push bc			;803d
	cp d			;803e
	cp e			;803f
	rrca			;8040
	rrca			;8041
	cp h			;8042
	cp l			;8043
	djnz l8056h		;8044
	cp d			;8046
	cp e			;8047
	dec h			;8048
	dec h			;8049
	dec h			;804a
	dec h			;804b
	dec h			;804c
	dec h			;804d
	dec h			;804e
	dec h			;804f
	add hl,bc		;8050
	inc c			;8051
	cp b			;8052
	cp c			;8053
	ex af,af'		;8054
	dec bc			;8055
l8056h:
	cp b			;8056
	cp c			;8057
	ld (de),a		;8058
	ld de,0b9b8h		;8059
	jr l8075h		;805c
	cp b			;805e
	cp c			;805f
	ld d,016h		;8060
	ld d,016h		;8062
	dec d			;8064
	dec d			;8065
	dec d			;8066
	dec d			;8067
	cp h			;8068
	cp l			;8069
	inc d			;806a
	inc de			;806b
	cp d			;806c
	cp e			;806d
	rlca			;806e
	ld a,(bc)		;806f
	nop			;8070
	nop			;8071
	nop			;8072
	nop			;8073
	nop			;8074
l8075h:
	nop			;8075
	nop			;8076
	nop			;8077
	nop			;8078
	nop			;8079
	nop			;807a
	nop			;807b
	nop			;807c
	nop			;807d
	nop			;807e
	nop			;807f
	ld a,l			;8080
	ld a,d			;8081
	ld a,(hl)		;8082
	adc a,b			;8083
	adc a,d			;8084
	adc a,e			;8085
	add a,c			;8086
	adc a,c			;8087
	adc a,l			;8088
	adc a,(hl)		;8089
	ld a,(hl)		;808a
	adc a,b			;808b
	adc a,d			;808c
	adc a,e			;808d
	adc a,h			;808e
	adc a,c			;808f
	ld a,l			;8090
	ld a,d			;8091
	ld a,(hl)		;8092
	adc a,b			;8093
	ld a,a			;8094
	add a,b			;8095
	add a,c			;8096
	adc a,c			;8097
	ld a,l			;8098
	ld a,d			;8099
	ld a,(hl)		;809a
	adc a,b			;809b
	adc a,a			;809c
	sub b			;809d
	adc a,h			;809e
	adc a,c			;809f
	ld a,l			;80a0
	ld a,d			;80a1
	ld a,(hl)		;80a2
	adc a,b			;80a3
	ld a,a			;80a4
	add a,b			;80a5
	add a,c			;80a6
	adc a,c			;80a7
	add a,e			;80a8
	add a,l			;80a9
	add a,a			;80aa
	adc a,b			;80ab
	adc a,a			;80ac
	sub b			;80ad
	adc a,h			;80ae
	adc a,c			;80af
	ld a,l			;80b0
	ld a,d			;80b1
	ld a,(hl)		;80b2
	adc a,b			;80b3
	ld a,a			;80b4
	add a,b			;80b5
	add a,c			;80b6
	adc a,c			;80b7
	add a,(hl)		;80b8
	add a,d			;80b9
	add a,h			;80ba
	adc a,b			;80bb
	adc a,a			;80bc
	sub b			;80bd
	adc a,h			;80be
	adc a,c			;80bf
	ld a,c			;80c0
	ld a,e			;80c1
	ld a,e			;80c2
	ld a,c			;80c3
	ld a,h			;80c4
	ld a,b			;80c5
sub_80c6h:
	ld a,b			;80c6
	ld a,h			;80c7
	ld a,h			;80c8
	ld a,b			;80c9
	ld a,b			;80ca
	ld a,h			;80cb
	ld a,c			;80cc
	ld a,e			;80cd
	ld a,e			;80ce
	ld a,c			;80cf
	nop			;80d0
	nop			;80d1
	nop			;80d2
	ld (hl),c		;80d3
	sub c			;80d4
	sub d			;80d5
	sub e			;80d6
	sub h			;80d7
	ld a,l			;80d8
	ld a,d			;80d9
	ld a,(hl)		;80da
	adc a,b			;80db
	adc a,a			;80dc
	sub b			;80dd
	adc a,h			;80de
	adc a,c			;80df
	nop			;80e0
	nop			;80e1
	nop			;80e2
	ld (hl),c		;80e3
	sub c			;80e4
	sub d			;80e5
	sub e			;80e6
	sub h			;80e7
	ld a,a			;80e8
	add a,b			;80e9
	add a,c			;80ea
	adc a,b			;80eb
	add a,(hl)		;80ec
	add a,d			;80ed
	add a,h			;80ee
	adc a,c			;80ef
	sub c			;80f0
	sub d			;80f1
	sub e			;80f2
	sub h			;80f3
	ld a,a			;80f4
	add a,b			;80f5
	add a,c			;80f6
	adc a,c			;80f7
	add a,e			;80f8
	add a,l			;80f9
	add a,a			;80fa
	adc a,b			;80fb
	adc a,a			;80fc
	sub b			;80fd
	adc a,h			;80fe
	adc a,c			;80ff
	sub c			;8100
	sub d			;8101
	sub e			;8102
	sub h			;8103
	adc a,d			;8104
	adc a,e			;8105
	add a,c			;8106
	adc a,c			;8107
	adc a,l			;8108
	adc a,(hl)		;8109
	ld a,(hl)		;810a
	adc a,b			;810b
	adc a,d			;810c
	adc a,e			;810d
	adc a,h			;810e
	adc a,c			;810f
	ld a,l			;8110
	ld a,d			;8111
	ld a,(hl)		;8112
	adc a,b			;8113
	ld a,a			;8114
	add a,b			;8115
	add a,c			;8116
	adc a,c			;8117
	ld a,l			;8118
	ld a,d			;8119
	ld a,(hl)		;811a
	adc a,b			;811b
	ld (hl),d		;811c
	ld (hl),d		;811d
	ld (hl),d		;811e
	nop			;811f
	ld a,a			;8120
	add a,b			;8121
	add a,c			;8122
	adc a,b			;8123
	ld a,a			;8124
	add a,b			;8125
	add a,c			;8126
	adc a,c			;8127
	add a,(hl)		;8128
	add a,d			;8129
	add a,h			;812a
	adc a,b			;812b
	ld (hl),d		;812c
	ld (hl),d		;812d
	ld (hl),d		;812e
	nop			;812f
	nop			;8130
	nop			;8131
	nop			;8132
	nop			;8133
	nop			;8134
	nop			;8135
	ld (hl),h		;8136
	halt			;8137
	nop			;8138
	ld (hl),e		;8139
	ld (hl),a		;813a
	ld (hl),l		;813b
	nop			;813c
	nop			;813d
	nop			;813e
	nop			;813f
	nop			;8140
	nop			;8141
	nop			;8142
	nop			;8143
	ld (hl),h		;8144
	halt			;8145
	ld (hl),h		;8146
	halt			;8147
	ld (hl),a		;8148
	ld (hl),l		;8149
	ld (hl),a		;814a
	ld (hl),l		;814b
	nop			;814c
	nop			;814d
	nop			;814e
	nop			;814f
	nop			;8150
	nop			;8151
	nop			;8152
	nop			;8153
	ld (hl),h		;8154
	halt			;8155
	ld (hl),h		;8156
	nop			;8157
	ld (hl),a		;8158
	ld (hl),l		;8159
	ld (hl),a		;815a
	nop			;815b
	nop			;815c
	nop			;815d
	nop			;815e
	nop			;815f
	ld (hl),d		;8160
	ld (hl),d		;8161
	ld (hl),d		;8162
	nop			;8163
	nop			;8164
	ld (hl),h		;8165
	halt			;8166
	nop			;8167
	ld (hl),e		;8168
	ld (hl),a		;8169
	ld (hl),l		;816a
	nop			;816b
	sub c			;816c
	sub d			;816d
	sub e			;816e
	sub h			;816f
	ld c,(hl)		;8170
	ld c,(hl)		;8171
	inc hl			;8172
	ccf			;8173
	ld hl,03d66h		;8174
	ld e,h			;8177
	ld c,(hl)		;8178
	ld c,(hl)		;8179
	inc hl			;817a
	ccf			;817b
	adc a,a			;817c
	sub b			;817d
	adc a,h			;817e
	adc a,c			;817f
	ld c,(hl)		;8180
	ld c,a			;8181
	ld c,(hl)		;8182
	ld c,a			;8183
	ld e,h			;8184
	ld e,h			;8185
	ld e,h			;8186
	ld e,h			;8187
	ld c,(hl)		;8188
	ld c,a			;8189
	ld c,(hl)		;818a
	ld c,a			;818b
	adc a,a			;818c
	sub b			;818d
	adc a,h			;818e
	adc a,c			;818f
	ld c,(hl)		;8190
	ld c,(hl)		;8191
	inc hl			;8192
	ld d,c			;8193
	ld hl,03d66h		;8194
	ld d,c			;8197
	ld c,(hl)		;8198
	ld c,(hl)		;8199
	inc hl			;819a
	ld d,d			;819b
	adc a,a			;819c
	sub b			;819d
	adc a,h			;819e
	adc a,c			;819f
	ld d,c			;81a0
	ld c,a			;81a1
	ld c,(hl)		;81a2
	ld c,a			;81a3
	ld d,c			;81a4
	ld e,h			;81a5
	ld e,h			;81a6
	ld e,h			;81a7
	ld d,d			;81a8
	ld c,a			;81a9
	ld c,(hl)		;81aa
	ld c,a			;81ab
	adc a,a			;81ac
	sub b			;81ad
	adc a,h			;81ae
	adc a,c			;81af
	ld c,(hl)		;81b0
	ld c,a			;81b1
	inc hl			;81b2
	ccf			;81b3
	ld e,e			;81b4
	ld e,d			;81b5
	ld e,03ah		;81b6
	ld h,l			;81b8
	ld h,l			;81b9
	ld h,l			;81ba
	ld h,l			;81bb
	ld (hl),b		;81bc
	ld (hl),b		;81bd
	ld (hl),b		;81be
	ld (hl),b		;81bf
	ld c,(hl)		;81c0
	ld c,a			;81c1
	ld c,(hl)		;81c2
	ld c,a			;81c3
	ld e,h			;81c4
	ld e,h			;81c5
	ld e,h			;81c6
	djnz l8217h		;81c7
	ld c,a			;81c9
	dec e			;81ca
	add hl,bc		;81cb
	adc a,a			;81cc
	xor d			;81cd
	add hl,bc		;81ce
	ld a,(bc)		;81cf
	dec e			;81d0
	add hl,bc		;81d1
	ld a,(bc)		;81d2
	dec bc			;81d3
	add hl,bc		;81d4
	ld a,(bc)		;81d5
	dec bc			;81d6
	ld a,(de)		;81d7
	ld a,(bc)		;81d8
	dec bc			;81d9
	ld a,(de)		;81da
	rla			;81db
	dec bc			;81dc
	ld a,(de)		;81dd
	rla			;81de
	and b			;81df
	ld a,(de)		;81e0
	rla			;81e1
	ld (de),a		;81e2
	add hl,de		;81e3
	rla			;81e4
	ld (de),a		;81e5
	inc e			;81e6
	ld e,h			;81e7
	ld (de),a		;81e8
	add hl,de		;81e9
	ld c,(hl)		;81ea
	ld c,a			;81eb
	adc a,a			;81ec
	sub b			;81ed
	adc a,h			;81ee
	adc a,c			;81ef
	ld a,l			;81f0
	ld a,d			;81f1
	ld a,(hl)		;81f2
	adc a,b			;81f3
	ld a,a			;81f4
	add a,b			;81f5
	add a,c			;81f6
	xor d			;81f7
	add a,e			;81f8
	add a,l			;81f9
	xor d			;81fa
	add hl,bc		;81fb
	adc a,a			;81fc
	xor d			;81fd
	add hl,bc		;81fe
	ld a,(bc)		;81ff
	xor d			;8200
	add hl,bc		;8201
	ld a,(bc)		;8202
	dec bc			;8203
	add hl,bc		;8204
	ld a,(bc)		;8205
	dec bc			;8206
	ld a,(de)		;8207
	ld a,(bc)		;8208
	dec bc			;8209
	ld a,(de)		;820a
	rla			;820b
	dec bc			;820c
	ld a,(de)		;820d
	rla			;820e
	and b			;820f
	ld a,(de)		;8210
	rla			;8211
	and b			;8212
	adc a,b			;8213
	rla			;8214
	and b			;8215
	add a,c			;8216
l8217h:
	adc a,c			;8217
	and b			;8218
	add a,d			;8219
	add a,h			;821a
	adc a,b			;821b
	adc a,a			;821c
	sub b			;821d
	adc a,h			;821e
	adc a,c			;821f
	ld a,l			;8220
	ld a,d			;8221
	ld a,(hl)		;8222
	adc a,b			;8223
	ld a,a			;8224
	add a,b			;8225
	add a,c			;8226
	adc a,c			;8227
	add a,e			;8228
	add a,l			;8229
	add a,a			;822a
	or e			;822b
	adc a,a			;822c
	sub b			;822d
	adc a,h			;822e
	adc a,c			;822f
	ld a,l			;8230
	dec c			;8231
	ld a,(bc)		;8232
	dec bc			;8233
	or e			;8234
	ld c,00bh		;8235
	ld a,(de)		;8237
	ld e,l			;8238
	rrca			;8239
	ld a,(de)		;823a
	rla			;823b
	or e			;823c
	ld e,l			;823d
	rla			;823e
	and b			;823f
	xor d			;8240
	add hl,bc		;8241
	ld a,(bc)		;8242
	dec bc			;8243
	add hl,bc		;8244
	ld a,(bc)		;8245
	dec bc			;8246
	jr nz,l8253h		;8247
	dec bc			;8249
	jr nz,l8255h		;824a
	dec bc			;824c
	jr nz,l8258h		;824d
	ld a,(bc)		;824f
	ld a,(de)		;8250
	dec c			;8251
	ld a,(bc)		;8252
l8253h:
	dec bc			;8253
	rla			;8254
l8255h:
	ld c,00bh		;8255
	ld a,(de)		;8257
l8258h:
	or e			;8258
	rrca			;8259
	ld a,(de)		;825a
	rla			;825b
	or e			;825c
	ld e,l			;825d
	rla			;825e
	and b			;825f
	ld e,e			;8260
	ld d,c			;8261
	ld a,(hl)		;8262
	adc a,b			;8263
	ld e,e			;8264
	ld d,c			;8265
	add a,c			;8266
	adc a,c			;8267
l8268h:
	ld e,e			;8268
	ld d,c			;8269
	add a,a			;826a
	adc a,b			;826b
	ld e,e			;826c
	ld d,c			;826d
	adc a,h			;826e
	adc a,c			;826f
	ld e,e			;8270
	ld d,c			;8271
	and b			;8272
	adc a,b			;8273
	ld e,e			;8274
	ld d,c			;8275
	add a,c			;8276
	xor d			;8277
	ld e,h			;8278
	ld d,c			;8279
	xor d			;827a
	add hl,bc		;827b
	ld c,a			;827c
	dec e			;827d
	add hl,bc		;827e
	ld a,(bc)		;827f
	ld a,l			;8280
	ld e,(hl)		;8281
	ld e,(hl)		;8282
	ld e,(hl)		;8283
	adc a,d			;8284
	adc a,e			;8285
	sbc a,c			;8286
	ld h,l			;8287
	adc a,l			;8288
	adc a,(hl)		;8289
	ld a,(hl)		;828a
	sbc a,e			;828b
	adc a,d			;828c
	adc a,e			;828d
	adc a,h			;828e
	adc a,c			;828f
	ld d,d			;8290
	ld c,(hl)		;8291
	inc hl			;8292
	ccf			;8293
	ld e,h			;8294
	ld e,h			;8295
	ld e,h			;8296
	ld e,h			;8297
	ld c,(hl)		;8298
	ld c,a			;8299
	ld c,(hl)		;829a
	ld c,a			;829b
	adc a,a			;829c
	sub b			;829d
	adc a,h			;829e
	adc a,c			;829f
	ld a,l			;82a0
	ld a,d			;82a1
	ld a,(hl)		;82a2
	adc a,b			;82a3
	ld a,a			;82a4
	add a,b			;82a5
	add a,c			;82a6
	adc a,c			;82a7
	add a,e			;82a8
	add a,l			;82a9
	xor e			;82aa
	ex af,af'		;82ab
	adc a,a			;82ac
	xor d			;82ad
	add hl,bc		;82ae
	ld a,(bc)		;82af
	ld a,l			;82b0
	ld a,d			;82b1
	ld a,(hl)		;82b2
	adc a,b			;82b3
	ld a,a			;82b4
	add a,b			;82b5
	add a,c			;82b6
	xor d			;82b7
	and c			;82b8
	ld a,d			;82b9
	xor d			;82ba
	add hl,bc		;82bb
	jr l8268h		;82bc
	add hl,bc		;82be
	ld a,(bc)		;82bf
	ld d,b			;82c0
	ld c,a			;82c1
	ld c,(hl)		;82c2
	ld c,a			;82c3
	ld d,c			;82c4
	ld e,h			;82c5
	ld e,h			;82c6
	djnz l831ah		;82c7
	ld c,a			;82c9
	dec e			;82ca
	add hl,bc		;82cb
	sbc a,b			;82cc
	rra			;82cd
	add hl,bc		;82ce
	ld a,(bc)		;82cf
	xor d			;82d0
	add hl,bc		;82d1
	ld a,(bc)		;82d2
	dec bc			;82d3
	add hl,bc		;82d4
	ld a,(bc)		;82d5
	dec bc			;82d6
	ld a,(de)		;82d7
	ld a,(bc)		;82d8
	dec bc			;82d9
	ld a,(de)		;82da
	rla			;82db
	dec bc			;82dc
	ld a,(de)		;82dd
	rla			;82de
	ld (de),a		;82df
	xor d			;82e0
	add hl,bc		;82e1
	ld a,(bc)		;82e2
	dec bc			;82e3
	sbc a,c			;82e4
	ld h,l			;82e5
	ld h,l			;82e6
	ld d,b			;82e7
	adc a,l			;82e8
	sbc a,e			;82e9
	ld (hl),b		;82ea
	ld d,d			;82eb
	adc a,d			;82ec
	adc a,e			;82ed
	ld e,(hl)		;82ee
	ld e,(hl)		;82ef
	ld a,(de)		;82f0
	rla			;82f1
	ld (de),a		;82f2
	add hl,de		;82f3
	rla			;82f4
	ld (de),a		;82f5
	ld d,05bh		;82f6
	ld e,03ah		;82f8
	ld e,03ah		;82fa
	ld e,(hl)		;82fc
	ld e,(hl)		;82fd
	ld e,(hl)		;82fe
	ld e,(hl)		;82ff
	ld a,l			;8300
	ld a,d			;8301
	ld a,(hl)		;8302
	sbc a,c			;8303
	ld a,a			;8304
	add a,b			;8305
	add a,c			;8306
	adc a,c			;8307
	add a,e			;8308
	add a,l			;8309
	add a,a			;830a
	adc a,b			;830b
	adc a,a			;830c
	sub b			;830d
	adc a,h			;830e
	adc a,c			;830f
	ld h,l			;8310
	ld h,l			;8311
	ld h,l			;8312
	ld h,l			;8313
	sbc a,e			;8314
	ld (hl),b		;8315
	ld (hl),b		;8316
	ld (hl),b		;8317
	ld a,l			;8318
	sbc a,c			;8319
l831ah:
	ld h,l			;831a
	ld h,l			;831b
	adc a,a			;831c
	sub b			;831d
	sbc a,e			;831e
	ld (hl),b		;831f
	ld d,b			;8320
	ld c,a			;8321
	ld c,(hl)		;8322
	ld c,a			;8323
	ld d,c			;8324
	ld e,h			;8325
	ld e,h			;8326
	djnz l837ah		;8327
	ld c,a			;8329
	dec e			;832a
	add hl,bc		;832b
	ld d,c			;832c
	rra			;832d
	add hl,bc		;832e
	ld a,(bc)		;832f
	ld d,c			;8330
	ld e,h			;8331
	ld e,h			;8332
	ld d,c			;8333
	ld d,c			;8334
	ld c,a			;8335
	ld c,(hl)		;8336
	ld d,d			;8337
	ld d,c			;8338
	ld h,l			;8339
	ld h,l			;833a
	ld h,l			;833b
	ld d,d			;833c
	ld (hl),b		;833d
	ld (hl),b		;833e
	sub a			;833f
	ld h,l			;8340
	ld h,l			;8341
	sub (hl)		;8342
	adc a,b			;8343
	ld (hl),b		;8344
	sub a			;8345
	add a,c			;8346
	adc a,c			;8347
	sub (hl)		;8348
	add a,l			;8349
	add a,a			;834a
	adc a,b			;834b
	adc a,a			;834c
	sub b			;834d
	adc a,h			;834e
	adc a,c			;834f
	ld a,(de)		;8350
	rla			;8351
	and b			;8352
	adc a,b			;8353
	rla			;8354
	ld d,b			;8355
	add a,c			;8356
	adc a,c			;8357
	ld e,e			;8358
	ld d,c			;8359
	add a,a			;835a
	adc a,b			;835b
	ld e,e			;835c
	ld d,c			;835d
	adc a,h			;835e
	adc a,c			;835f
	ld hl,03d66h		;8360
	ld d,b			;8363
	ld c,(hl)		;8364
	ld c,a			;8365
	ld c,(hl)		;8366
	ld d,c			;8367
	ld e,e			;8368
	ld e,d			;8369
	ld e,e			;836a
	ld d,c			;836b
	ld e,(hl)		;836c
	ld e,(hl)		;836d
	ld d,d			;836e
	ld d,d			;836f
	ld hl,03d66h		;8370
	ld e,h			;8373
	ld c,(hl)		;8374
	ld c,(hl)		;8375
	inc hl			;8376
	ccf			;8377
	ld e,e			;8378
	ld e,e			;8379
l837ah:
	ld e,03ah		;837a
	ld e,h			;837c
	ld d,e			;837d
	ld d,a			;837e
	ld d,d			;837f
	ld e,h			;8380
	ld e,h			;8381
	ld e,h			;8382
	ld e,h			;8383
	ld c,(hl)		;8384
	ld c,a			;8385
	ld c,(hl)		;8386
	ld c,a			;8387
	ld e,e			;8388
	ld e,d			;8389
	ld e,e			;838a
	ld e,d			;838b
	ld e,(hl)		;838c
	ld e,(hl)		;838d
	ld d,d			;838e
	ld e,(hl)		;838f
	ld d,d			;8390
	ld d,e			;8391
	ld e,b			;8392
	ld l,(hl)		;8393
	ld e,(hl)		;8394
	ld e,(hl)		;8395
	ld d,d			;8396
	ld e,(hl)		;8397
	ld e,c			;8398
	ld e,c			;8399
	ld l,e			;839a
	ld d,(hl)		;839b
	ld e,h			;839c
	ld d,e			;839d
	ld d,a			;839e
	ld d,d			;839f
	ld e,c			;83a0
	ld e,c			;83a1
	ld l,e			;83a2
	ld d,(hl)		;83a3
	ld e,h			;83a4
	ld d,e			;83a5
	ld d,a			;83a6
	ld d,d			;83a7
	ld d,d			;83a8
	ld l,c			;83a9
	ld e,b			;83aa
	ld l,(hl)		;83ab
	ld e,(hl)		;83ac
	ld e,(hl)		;83ad
	ld d,d			;83ae
	ld e,(hl)		;83af
	ld h,h			;83b0
	ld l,d			;83b1
	ld h,h			;83b2
	ld l,d			;83b3
	ld h,d			;83b4
	ld h,a			;83b5
	ld h,d			;83b6
	ld h,a			;83b7
	ld h,e			;83b8
	ld c,h			;83b9
	ld h,e			;83ba
	ld c,h			;83bb
	ld h,e			;83bc
	ld l,b			;83bd
	ld h,e			;83be
	ld l,b			;83bf
	ld h,e			;83c0
	ld c,h			;83c1
	ld h,e			;83c2
	ld c,h			;83c3
	ld h,e			;83c4
	ld l,b			;83c5
	ld h,e			;83c6
	ld l,b			;83c7
	ld h,e			;83c8
	ld c,h			;83c9
	ld h,e			;83ca
	ld c,h			;83cb
	ld h,e			;83cc
	ld l,b			;83cd
	ld h,e			;83ce
	ld l,b			;83cf
	ld a,l			;83d0
	ld a,d			;83d1
	ld a,(hl)		;83d2
	adc a,b			;83d3
	ld a,a			;83d4
	add a,b			;83d5
	add a,c			;83d6
	adc a,c			;83d7
	add a,e			;83d8
	add a,l			;83d9
	add a,a			;83da
	adc a,b			;83db
	ld hl,03d66h		;83dc
	ld d,b			;83df
	ld a,l			;83e0
	ld a,d			;83e1
	ld a,(hl)		;83e2
	adc a,b			;83e3
	ld a,a			;83e4
	add a,b			;83e5
	add a,c			;83e6
	adc a,c			;83e7
	ld e,h			;83e8
	ld e,h			;83e9
	ld e,h			;83ea
	ld e,h			;83eb
	ld c,(hl)		;83ec
	ld c,a			;83ed
	ld c,(hl)		;83ee
	ld c,a			;83ef
	ld a,l			;83f0
	ld a,d			;83f1
	ld a,(hl)		;83f2
	adc a,b			;83f3
	ld a,a			;83f4
	add a,b			;83f5
	add a,c			;83f6
	adc a,c			;83f7
	ld hl,03d66h		;83f8
	ld e,h			;83fb
	ld c,(hl)		;83fc
	ld c,(hl)		;83fd
	inc hl			;83fe
	ccf			;83ff
	ld a,l			;8400
	sub l			;8401
	ld h,l			;8402
	ld d,d			;8403
	sbc a,e			;8404
	ld (hl),b		;8405
	ld h,h			;8406
	ld l,d			;8407
	ld e,h			;8408
	ld e,h			;8409
	ld h,d			;840a
	ld h,a			;840b
	ld c,(hl)		;840c
	ld c,a			;840d
	ld h,e			;840e
	ld c,h			;840f
	ld a,l			;8410
	ld a,d			;8411
	ld a,(hl)		;8412
	adc a,b			;8413
	ld a,a			;8414
	add a,b			;8415
	add a,c			;8416
	adc a,c			;8417
	ld a,l			;8418
	sub l			;8419
	ld h,l			;841a
	ld d,c			;841b
	sbc a,e			;841c
	ld (hl),b		;841d
	ld (hl),b		;841e
	ld d,d			;841f
	ld a,l			;8420
	ld a,d			;8421
	ld a,(hl)		;8422
	adc a,b			;8423
	ld a,a			;8424
	add a,b			;8425
	add a,c			;8426
	or e			;8427
	add a,e			;8428
	add a,l			;8429
	add a,a			;842a
	adc a,b			;842b
	adc a,a			;842c
	sub b			;842d
	adc a,h			;842e
	adc a,c			;842f
	xor a			;8430
	or d			;8431
	inc h			;8432
	cp h			;8433
	dec l			;8434
	inc (hl)		;8435
	ld h,025h		;8436
	or e			;8438
	ld e,l			;8439
	daa			;843a
	ld h,08fh		;843b
	or e			;843d
	inc a			;843e
	daa			;843f
	ld a,l			;8440
	ld a,d			;8441
	ld a,(hl)		;8442
	adc a,b			;8443
	cp e			;8444
	add a,b			;8445
	add a,c			;8446
	adc a,c			;8447
	dec h			;8448
	cp e			;8449
	add a,a			;844a
	adc a,b			;844b
	ld h,025h		;844c
	cp e			;844e
	adc a,c			;844f
	ld a,l			;8450
	or c			;8451
	inc sp			;8452
	ld (hl),07fh		;8453
	add a,b			;8455
	or c			;8456
	inc sp			;8457
	add a,e			;8458
	add a,l			;8459
	add a,a			;845a
	or c			;845b
	adc a,a			;845c
	sub b			;845d
	adc a,h			;845e
	adc a,c			;845f
	sbc a,c			;8460
	ld h,l			;8461
	ld h,l			;8462
	ld h,l			;8463
	ld a,a			;8464
	sbc a,e			;8465
	ld (hl),b		;8466
	ld (hl),b		;8467
	ld a,l			;8468
	ld a,d			;8469
	sbc a,c			;846a
	ld h,l			;846b
	adc a,a			;846c
	sub b			;846d
	adc a,h			;846e
	sbc a,e			;846f
	djnz l847bh		;8470
	ld a,(bc)		;8472
	dec bc			;8473
	add hl,bc		;8474
	ld a,(bc)		;8475
	dec bc			;8476
	ld a,(de)		;8477
	ld a,(bc)		;8478
	dec bc			;8479
	ld a,(de)		;847a
l847bh:
	rla			;847b
	dec bc			;847c
	ld a,(de)		;847d
	rla			;847e
	ld (de),a		;847f
	daa			;8480
l8481h:
	ld h,025h		;8481
	cp e			;8483
	ld (hl),027h		;8484
	ld h,025h		;8486
	inc sp			;8488
	ld (hl),027h		;8489
	ld h,02eh		;848b
	inc sp			;848d
	ld (hl),027h		;848e
	jr c,l84c0h		;8490
	inc sp			;8492
	ld (hl),04eh		;8493
	dec (hl)		;8495
	ld l,033h		;8496
	ld e,e			;8498
	ld e,d			;8499
	ld (05e2eh),a		;849a
	ld e,(hl)		;849d
	ld d,d			;849e
	jr c,l84c8h		;849f
	ld h,025h		;84a1
	inc l			;84a3
	ld (hl),027h		;84a4
	ld h,025h		;84a6
	inc sp			;84a8
	ld (hl),027h		;84a9
	ld h,02eh		;84ab
	inc sp			;84ad
	ld (hl),027h		;84ae
	ld a,l			;84b0
	ld a,d			;84b1
	ld a,(hl)		;84b2
	adc a,b			;84b3
	ld a,a			;84b4
	add a,b			;84b5
	add a,c			;84b6
	adc a,c			;84b7
	ld a,l			;84b8
	ld a,d			;84b9
	ld a,(hl)		;84ba
	adc a,b			;84bb
	ld e,h			;84bc
	ld e,h			;84bd
	ld e,h			;84be
	ld e,h			;84bf
l84c0h:
	ld a,(de)		;84c0
	rla			;84c1
	and b			;84c2
	adc a,b			;84c3
	rla			;84c4
	and b			;84c5
	add a,c			;84c6
	adc a,c			;84c7
l84c8h:
	ld e,e			;84c8
	ld e,d			;84c9
	ld d,c			;84ca
	ld e,h			;84cb
	ld e,(hl)		;84cc
	ld e,(hl)		;84cd
	ld d,d			;84ce
	ld c,a			;84cf
	xor e			;84d0
	ex af,af'		;84d1
	and c			;84d2
	sbc a,(hl)		;84d3
	add hl,bc		;84d4
	ld a,(bc)		;84d5
	jr l84e9h		;84d6
	ld a,(bc)		;84d8
	dec bc			;84d9
	ld e,l			;84da
	and d			;84db
	dec bc			;84dc
	jr nz,l8481h		;84dd
	adc a,c			;84df
	ld a,l			;84e0
	ld a,d			;84e1
	ld a,(hl)		;84e2
	adc a,b			;84e3
	and d			;84e4
	add a,b			;84e5
	add a,c			;84e6
	adc a,c			;84e7
	add a,e			;84e8
l84e9h:
	add a,l			;84e9
	add a,a			;84ea
	adc a,b			;84eb
	adc a,a			;84ec
	sub b			;84ed
	adc a,h			;84ee
	adc a,c			;84ef
	ld a,l			;84f0
	ld a,d			;84f1
	ld a,(hl)		;84f2
	adc a,b			;84f3
	cp e			;84f4
	add a,b			;84f5
	add a,c			;84f6
	adc a,c			;84f7
	dec h			;84f8
	inc l			;84f9
	ld e,h			;84fa
	ld e,h			;84fb
	ld h,025h		;84fc
	add hl,sp		;84fe
	ld c,a			;84ff
	ld e,h			;8500
	ld e,h			;8501
	ld e,h			;8502
	ld e,h			;8503
	add hl,sp		;8504
	ld c,a			;8505
	ld c,(hl)		;8506
	ld c,a			;8507
	dec h			;8508
	dec sp			;8509
	ld e,e			;850a
	ld e,d			;850b
	ld h,025h		;850c
	dec sp			;850e
	ld d,d			;850f
	ld a,l			;8510
	ld a,d			;8511
	ld a,(hl)		;8512
	sub l			;8513
	ld a,a			;8514
	add a,b			;8515
	sbc a,e			;8516
	ld (hl),b		;8517
	add a,e			;8518
	sub l			;8519
	ld h,l			;851a
	ld d,c			;851b
	sbc a,e			;851c
	ld (hl),b		;851d
	ld (hl),b		;851e
	ld d,d			;851f
	ld h,l			;8520
	ld d,c			;8521
	ld e,h			;8522
	ld e,h			;8523
	ld (hl),b		;8524
	ld d,d			;8525
	ld c,(hl)		;8526
l8527h:
	ld c,a			;8527
	ld e,e			;8528
	ld e,03ah		;8529
	ld e,e			;852b
	ld d,e			;852c
	ld d,a			;852d
	ld d,d			;852e
	ld e,(hl)		;852f
	ld a,l			;8530
	ld a,d			;8531
	ld a,(hl)		;8532
	adc a,b			;8533
	ld a,a			;8534
	add a,b			;8535
	add a,c			;8536
	adc a,c			;8537
	add a,(hl)		;8538
	add a,d			;8539
	add a,h			;853a
	adc a,b			;853b
	ld d,b			;853c
	ld hl,03d66h		;853d
	ld d,b			;8540
	ld c,(hl)		;8541
	inc hl			;8542
	ccf			;8543
	ld d,d			;8544
	ld e,e			;8545
	ld e,03ah		;8546
	ld h,l			;8548
	ld h,l			;8549
	ld h,l			;854a
	ld h,l			;854b
	ld (hl),b		;854c
	ld (hl),b		;854d
	ld (hl),b		;854e
	ld (hl),b		;854f
	daa			;8550
	ld h,025h		;8551
	inc l			;8553
	ld (hl),027h		;8554
	ld h,025h		;8556
	inc sp			;8558
	ld (hl),027h		;8559
	ld h,0b1h		;855b
	inc sp			;855d
	ld (hl),027h		;855e
	sub (hl)		;8560
	ld a,d			;8561
	ld a,(hl)		;8562
	adc a,b			;8563
	ld (hl),b		;8564
	sbc a,d			;8565
	add a,c			;8566
	adc a,c			;8567
	ld d,c			;8568
	ld h,l			;8569
	sub (hl)		;856a
	adc a,b			;856b
	ld d,c			;856c
	ld (hl),b		;856d
	ld (hl),b		;856e
	sbc a,d			;856f
	ld a,l			;8570
	ld a,d			;8571
	ld a,(hl)		;8572
	adc a,b			;8573
	ld a,a			;8574
	add a,b			;8575
	add a,c			;8576
	adc a,c			;8577
	ld d,c			;8578
	ld h,l			;8579
	sub (hl)		;857a
	adc a,b			;857b
	ld d,d			;857c
	ld (hl),b		;857d
	ld (hl),b		;857e
	sbc a,d			;857f
	ld d,b			;8580
	ld hl,03d66h		;8581
	ld d,c			;8584
	ld c,a			;8585
	ld c,(hl)		;8586
	ld c,a			;8587
	ld d,c			;8588
	ld e,d			;8589
	ld e,e			;858a
	ld e,d			;858b
	ld d,d			;858c
	ld e,(hl)		;858d
	ld d,d			;858e
	ld e,(hl)		;858f
	ld a,l			;8590
	or c			;8591
	inc sp			;8592
	ld (hl),08ah		;8593
	adc a,e			;8595
	or c			;8596
	inc sp			;8597
	adc a,l			;8598
	adc a,(hl)		;8599
	sub l			;859a
	jr c,l8527h		;859b
	sbc a,e			;859d
	ld (hl),b		;859e
	dec (hl)		;859f
	ld e,h			;85a0
	ld e,h			;85a1
	ld e,h			;85a2
	ld e,h			;85a3
	inc hl			;85a4
	ccf			;85a5
	ld c,(hl)		;85a6
	dec e			;85a7
	ld e,03ah		;85a8
	rra			;85aa
	add hl,bc		;85ab
	ld e,e			;85ac
	rra			;85ad
	add hl,bc		;85ae
	ld a,(bc)		;85af
	ld e,h			;85b0
	ld e,h			;85b1
	ld e,h			;85b2
	ld e,h			;85b3
	ld c,(hl)		;85b4
	ld c,(hl)		;85b5
	inc hl			;85b6
	ccf			;85b7
	ld a,(bc)		;85b8
	dec bc			;85b9
	ld a,(de)		;85ba
	rla			;85bb
	dec bc			;85bc
	ld a,(de)		;85bd
	rla			;85be
	and b			;85bf
	ld e,h			;85c0
	ld e,h			;85c1
	ld e,h			;85c2
	ld e,h			;85c3
	ld c,(hl)		;85c4
	ld c,a			;85c5
	ld c,(hl)		;85c6
	ld c,a			;85c7
	ld (de),a		;85c8
	add hl,de		;85c9
	ld c,(hl)		;85ca
	ld c,a			;85cb
	adc a,a			;85cc
	sub b			;85cd
	adc a,h			;85ce
	adc a,c			;85cf
	ld a,(de)		;85d0
	rla			;85d1
	ld (de),a		;85d2
	inc e			;85d3
	rla			;85d4
	ld (de),a		;85d5
	add hl,de		;85d6
	ld c,(hl)		;85d7
	ld (de),a		;85d8
	ld d,05ah		;85d9
	ld e,e			;85db
	ld d,05bh		;85dc
	ld e,03ah		;85de
	dec e			;85e0
l85e1h:
	add hl,bc		;85e1
	ld a,(bc)		;85e2
	dec bc			;85e3
	add hl,bc		;85e4
	ld a,(bc)		;85e5
	dec bc			;85e6
	ld a,(de)		;85e7
	ld a,(bc)		;85e8
	dec bc			;85e9
	ld a,(de)		;85ea
	rla			;85eb
	dec bc			;85ec
	ld a,(de)		;85ed
	rla			;85ee
	ld (de),a		;85ef
	ld c,(hl)		;85f0
	ld c,(hl)		;85f1
	inc hl			;85f2
	ld d,c			;85f3
	ld e,e			;85f4
	ld e,e			;85f5
	ld e,051h		;85f6
	ld e,e			;85f8
	ld e,e			;85f9
	ld e,052h		;85fa
	adc a,a			;85fc
	sub b			;85fd
	adc a,h			;85fe
	adc a,c			;85ff
	ld c,(hl)		;8600
	ld c,a			;8601
	ld c,(hl)		;8602
	ld c,a			;8603
	ld e,e			;8604
	ld e,d			;8605
	ld e,e			;8606
	ld e,d			;8607
	ld e,e			;8608
	ld e,d			;8609
	ld e,e			;860a
	ld e,d			;860b
	adc a,a			;860c
	sub b			;860d
	adc a,h			;860e
	adc a,c			;860f
	ld a,l			;8610
	dec c			;8611
	ld a,(bc)		;8612
	dec bc			;8613
	or e			;8614
	ld c,00bh		;8615
	ld a,(de)		;8617
	ld e,l			;8618
	rrca			;8619
	ld a,(de)		;861a
	rla			;861b
	or e			;861c
	ld e,l			;861d
	rla			;861e
	ld (de),a		;861f
	ld d,b			;8620
	ld h,l			;8621
	ld h,l			;8622
	adc a,b			;8623
	ld d,c			;8624
	ld (hl),b		;8625
	ld (hl),b		;8626
	adc a,c			;8627
	ld d,c			;8628
	ld h,l			;8629
	ld h,l			;862a
	adc a,b			;862b
	ld d,d			;862c
	ld (hl),b		;862d
	ld (hl),b		;862e
	adc a,c			;862f
	djnz l863ah		;8630
	and c			;8632
	sbc a,(hl)		;8633
	add hl,bc		;8634
	ld a,(bc)		;8635
	jr l8649h		;8636
	ld a,(bc)		;8638
	dec bc			;8639
l863ah:
	ld e,l			;863a
	and d			;863b
	dec bc			;863c
	jr nz,l85e1h		;863d
	adc a,c			;863f
	ld a,l			;8640
	ld a,d			;8641
	ld a,(hl)		;8642
	adc a,b			;8643
	ld a,a			;8644
	add a,b			;8645
	add a,c			;8646
	xor d			;8647
	ld e,h			;8648
l8649h:
	ld e,h			;8649
	djnz l8655h		;864a
	ld c,(hl)		;864c
	dec e			;864d
	add hl,bc		;864e
	ld a,(bc)		;864f
	ld a,(de)		;8650
	rla			;8651
	ld (de),a		;8652
	inc e			;8653
	rla			;8654
l8655h:
	ld (de),a		;8655
	add hl,de		;8656
	dec e			;8657
	ld (de),a		;8658
	ld d,010h		;8659
	add hl,bc		;865b
	ld d,010h		;865c
	add hl,bc		;865e
	ld a,(bc)		;865f
	djnz l866bh		;8660
	ld a,(bc)		;8662
	dec bc			;8663
	add hl,bc		;8664
	ld a,(bc)		;8665
	dec bc			;8666
	ld a,(de)		;8667
	ld a,(bc)		;8668
	dec bc			;8669
	ld a,(de)		;866a
l866bh:
	rla			;866b
	dec bc			;866c
	ld a,(de)		;866d
	rla			;866e
	and b			;866f
	ld d,c			;8670
	ld c,(hl)		;8671
	inc hl			;8672
	ccf			;8673
	ld d,c			;8674
	ld e,e			;8675
	ld e,03ah		;8676
	ld d,d			;8678
	ld e,e			;8679
	ld e,03ah		;867a
	adc a,a			;867c
	sub b			;867d
	adc a,h			;867e
	adc a,c			;867f
	nop			;8680
	nop			;8681
	nop			;8682
	nop			;8683
	nop			;8684
	nop			;8685
	nop			;8686
	nop			;8687
	nop			;8688
	nop			;8689
	nop			;868a
	nop			;868b
	nop			;868c
	or a			;868d
	cp b			;868e
	ld a,(bc)		;868f
	nop			;8690
	nop			;8691
	nop			;8692
	nop			;8693
	nop			;8694
	nop			;8695
	nop			;8696
	nop			;8697
	cp c			;8698
	cp d			;8699
	cp e			;869a
	jr nz,l869eh		;869b
	ld (bc),a		;869d
l869eh:
	ld (0000fh),hl		;869e
	nop			;86a1
	push bc			;86a2
	ld b,0b7h		;86a3
	ld b,003h		;86a5
	rlca			;86a7
	ld e,007h		;86a8
	inc b			;86aa
	ex af,af'		;86ab
	rra			;86ac
	ex af,af'		;86ad
	dec b			;86ae
	add hl,bc		;86af
	ld b,0c5h		;86b0
	nop			;86b2
	nop			;86b3
	rlca			;86b4
	inc bc			;86b5
	ld b,0beh		;86b6
	ex af,af'		;86b8
	inc b			;86b9
	rlca			;86ba
	jr c,l86c6h		;86bb
	dec b			;86bd
	ex af,af'		;86be
	add hl,sp		;86bf
	nop			;86c0
	nop			;86c1
	nop			;86c2
	nop			;86c3
	nop			;86c4
	nop			;86c5
l86c6h:
	nop			;86c6
	nop			;86c7
	ld a,(0c1c2h)		;86c8
	ret nz			;86cb
	add hl,hl		;86cc
	inc a			;86cd
	ld bc,00002h		;86ce
	nop			;86d1
	nop			;86d2
	nop			;86d3
	nop			;86d4
	nop			;86d5
	nop			;86d6
	nop			;86d7
	nop			;86d8
	nop			;86d9
	nop			;86da
	nop			;86db
	inc h			;86dc
	cp a			;86dd
	cp (hl)			;86de
	nop			;86df
	or a			;86e0
	ld (de),a		;86e1
	ld bc,01102h		;86e2
	ld a,(bc)		;86e5
	rla			;86e6
	ld l,a			;86e7
	jr z,l86f5h		;86e8
	add hl,hl		;86ea
	ld (hl),b		;86eb
	rrca			;86ec
	ld b,009h		;86ed
	ld l,d			;86ef
	ld d,h			;86f0
	ld h,c			;86f1
	dec c			;86f2
	ld h,(hl)		;86f3
	ld a,l			;86f4
l86f5h:
	ld h,d			;86f5
	ld a,c			;86f6
	ld h,a			;86f7
	sub (hl)		;86f8
	ld (hl),h		;86f9
	ld a,d			;86fa
	ld l,c			;86fb
	ld a,(hl)		;86fc
	ld a,a			;86fd
	ld h,h			;86fe
	ld d,l			;86ff
	inc de			;8700
	ld h,e			;8701
	ld e,c			;8702
	ld d,e			;8703
	ld l,(hl)		;8704
	ld d,e			;8705
	ld e,d			;8706
	ld e,h			;8707
	ld l,(hl)		;8708
	ld e,a			;8709
	ld l,e			;870a
	dec h			;870b
	ld l,(hl)		;870c
	ld l,b			;870d
	ld l,l			;870e
	ld d,05bh		;870f
	rlca			;8711
	ld c,077h		;8712
	ld e,e			;8714
	ex af,af'		;8715
	inc c			;8716
	ld h,05bh		;8717
	dec d			;8719
	add hl,de		;871a
	ld a,(de)		;871b
	ld e,e			;871c
	ld e,e			;871d
	ld e,e			;871e
	dec de			;871f
	ld (hl),e		;8720
	ld a,e			;8721
	ld a,b			;8722
	ld e,b			;8723
	ld e,l			;8724
	ld h,l			;8725
	ld e,l			;8726
	ld h,l			;8727
	inc e			;8728
	add a,b			;8729
	ld a,h			;872a
	adc a,c			;872b
	daa			;872c
	ld h,b			;872d
	ld h,b			;872e
	ld e,b			;872f
	ld l,(hl)		;8730
	ld d,(hl)		;8731
	ld d,a			;8732
	adc a,d			;8733
	ld e,l			;8734
	add a,h			;8735
	ld e,b			;8736
	adc a,l			;8737
	ld e,(hl)		;8738
	ld e,(hl)		;8739
	ld e,b			;873a
	sub b			;873b
	ld e,l			;873c
	add a,h			;873d
	ld e,b			;873e
	djnz l8794h		;873f
	ld e,c			;8741
	ld h,e			;8742
	inc a			;8743
	ld e,h			;8744
	ld e,d			;8745
	ld d,e			;8746
	ld l,(hl)		;8747
	ld c,(hl)		;8748
	ld e,a			;8749
	ld l,e			;874a
	ld l,(hl)		;874b
	ccf			;874c
	ld l,b			;874d
	ld l,l			;874e
	ld l,(hl)		;874f
	ld h,(hl)		;8750
	ld (hl),054h		;8751
	ld h,c			;8753
	ld h,a			;8754
	ld l,a			;8755
	ld a,l			;8756
	ld h,d			;8757
	ld l,c			;8758
	ld (hl),b		;8759
	sub (hl)		;875a
	ld (hl),h		;875b
	ld d,l			;875c
	ld l,d			;875d
	ld a,(hl)		;875e
	ld a,a			;875f
	dec hl			;8760
	ld hl,(0b83bh)		;8761
	ld a,c			;8764
	ld b,b			;8765
	inc sp			;8766
	ld a,(0527ah)		;8767
	inc (hl)		;876a
	ld d,c			;876b
	ld h,h			;876c
	ld (0382fh),a		;876d
	adc a,d			;8770
	ld d,(hl)		;8771
	ld d,a			;8772
	ld l,(hl)		;8773
	adc a,l			;8774
	ld e,b			;8775
	add a,h			;8776
	ld e,l			;8777
	sub h			;8778
	ld e,b			;8779
	ld e,(hl)		;877a
	ld e,(hl)		;877b
	add hl,sp		;877c
	ld e,b			;877d
	add a,h			;877e
	ld e,l			;877f
	ld e,b			;8780
	ld (hl),a		;8781
	ld (hl),e		;8782
	ld a,e			;8783
	ld h,l			;8784
	ld e,l			;8785
	ld h,l			;8786
	ld e,l			;8787
	adc a,c			;8788
	ld a,h			;8789
	add a,b			;878a
	ld b,l			;878b
	ld e,b			;878c
	ld h,b			;878d
	ld h,b			;878e
	ld d,b			;878f
	ld a,b			;8790
	scf			;8791
	jr nc,$+93		;8792
l8794h:
	ld c,a			;8794
	dec (hl)		;8795
	ld sp,0435bh		;8796
	ld b,d			;8799
	ld a,05bh		;879a
	ld b,h			;879c
	ld e,e			;879d
	ld e,e			;879e
	ld e,e			;879f
	ld a,c			;87a0
	add hl,bc		;87a1
	ld a,(bc)		;87a2
	dec bc			;87a3
	ld a,h			;87a4
	ld a,(bc)		;87a5
	dec bc			;87a6
	ld a,(de)		;87a7
	ld a,h			;87a8
	dec bc			;87a9
	ld a,(de)		;87aa
	rla			;87ab
	ld a,c			;87ac
	ld a,(de)		;87ad
	rla			;87ae
	ld (de),a		;87af
	ld a,l			;87b0
	ld a,d			;87b1
	ld a,(hl)		;87b2
	adc a,b			;87b3
	add hl,bc		;87b4
	ld a,(bc)		;87b5
	dec bc			;87b6
	ld a,(de)		;87b7
	ld a,(bc)		;87b8
	dec bc			;87b9
	ld a,(de)		;87ba
	rla			;87bb
	dec bc			;87bc
	ld a,(de)		;87bd
	rla			;87be
	ld (de),a		;87bf
	nop			;87c0
	nop			;87c1
	nop			;87c2
	nop			;87c3
	nop			;87c4
	nop			;87c5
	nop			;87c6
	nop			;87c7
	nop			;87c8
	nop			;87c9
	nop			;87ca
	nop			;87cb
	nop			;87cc
	nop			;87cd
	nop			;87ce
	nop			;87cf
	ld b,b			;87d0
	ld b,e			;87d1
	inc h			;87d2
	daa			;87d3
	ld b,d			;87d4
	ccf			;87d5
	dec h			;87d6
	jr z,l881bh		;87d7
	ccf			;87d9
	jr nz,l8805h		;87da
	ld b,d			;87dc
	ccf			;87dd
	inc e			;87de
	ld hl,(03821h)		;87df
	add hl,sp		;87e2
	jr c,l87feh		;87e3
	rra			;87e5
	rra			;87e6
	rra			;87e7
	call 0cdcah		;87e8
	call 0cbcch		;87eb
	call z,031cch		;87ee
	ld l,040h		;87f1
	ld b,e			;87f3
	ld (0422fh),a		;87f4
	ccf			;87f7
	inc sp			;87f8
	jr nz,$+68		;87f9
	ccf			;87fb
	inc (hl)		;87fc
	inc e			;87fd
l87feh:
	ld b,d			;87fe
	ccf			;87ff
	inc h			;8800
	daa			;8801
	ld hl,02538h		;8802
l8805h:
	jr z,$+27		;8805
	rra			;8807
	jr nz,$+43		;8808
	call 0cccah		;880a
	ld hl,(0cbcch)		;880d
	add hl,sp		;8810
	ld (03823h),hl		;8811
	rra			;8814
	add hl,de		;8815
	rra			;8816
	add hl,de		;8817
	call 0cdcah		;8818
l881bh:
	jp z,0cbcch		;881b
	call z,039cbh		;881e
	ld (03823h),hl		;8821
	rra			;8824
	add hl,de		;8825
	rra			;8826
	add hl,de		;8827
	jp z,0cacdh		;8828
	call 0cccbh		;882b
	set 1,h			;882e
	add hl,sp		;8830
	ld hl,02e31h		;8831
	rra			;8834
	add hl,de		;8835
	ld (0ca2fh),a		;8836
	call 02033h		;8839
	set 1,h			;883c
	inc (hl)		;883e
	call z,01339h		;883f
	inc d			;8842
	jr c,l885eh		;8843
	dec hl			;8845
	dec (hl)		;8846
	add hl,de		;8847
	call 0362ch		;8848
	call 02dcch		;884b
	scf			;884e
	call z,0ca21h		;884f
	jp z,01921h		;8852
	set 1,e			;8855
	add hl,de		;8857
	call 0362ch		;8858
	call 02dcch		;885b
l885eh:
	scf			;885e
	call z,02724h		;885f
	ld hl,025cah		;8862
	jr z,l8880h		;8865
	sla b			;8867
	add hl,hl		;8869
	call 01c2ch		;886a
	ld hl,(02dcch)		;886d
	jp z,03121h		;8870
	ld l,0cbh		;8873
	add hl,de		;8875
	ld (0362fh),a		;8876
	call 02033h		;8879
	scf			;887c
	call z,01c34h		;887d
l8880h:
	inc h			;8880
	daa			;8881
	ld hl,02513h		;8882
	jr z,l88a0h		;8885
	dec hl			;8887
	jr nz,l88b3h		;8888
	call 01c2ch		;888a
	ld hl,(02dcch)		;888d
	inc d			;8890
	ld hl,02e31h		;8891
	dec (hl)		;8894
	add hl,de		;8895
	ld (0362fh),a		;8896
	call 02033h		;8899
	scf			;889c
	call z,01c34h		;889d
l88a0h:
	inc hl			;88a0
	ld (01323h),hl		;88a1
	rra			;88a4
	add hl,de		;88a5
	rra			;88a6
	dec hl			;88a7
	call 0cdcah		;88a8
	inc l			;88ab
	call z,0cccbh		;88ac
	dec l			;88af
l88b0h:
	inc d			;88b0
	inc hl			;88b1
	inc hl			;88b2
l88b3h:
	ld (01935h),hl		;88b3
	rra			;88b6
	add hl,de		;88b7
	ld (hl),0cdh		;88b8
	jp z,037cdh		;88ba
	call z,0cccbh		;88bd
	add hl,sp		;88c0
	ld (0ca23h),hl		;88c1
	rra			;88c4
	add hl,de		;88c5
	rra			;88c6
	sla b			;88c7
	jp z,02ccdh		;88c9
	inc e			;88cc
	set 1,h			;88cd
	dec l			;88cf
	jp z,03938h		;88d0
	ld (019cbh),hl		;88d3
	rra			;88d6
	add hl,de		;88d7
	ld (hl),0cdh		;88d8
	jp z,03720h		;88da
	call z,01ccbh		;88dd
	inc h			;88e0
	daa			;88e1
	ld hl,02523h		;88e2
	jr z,l8900h		;88e5
	rra			;88e7
	nop			;88e8
	or (hl)			;88e9
	call 00029h		;88ea
	add hl,hl		;88ed
	call z,0232ah		;88ee
	ld hl,02e31h		;88f1
	rra			;88f4
	add hl,de		;88f5
	ld (0332fh),a		;88f6
	jr nz,l88b0h		;88f9
	and h			;88fb
	inc (hl)		;88fc
	inc e			;88fd
	halt			;88fe
	ld a,d			;88ff
l8900h:
	add hl,sp		;8900
	ld (03823h),hl		;8901
	rra			;8904
	add hl,de		;8905
	rra			;8906
	add hl,de		;8907
	call 0cacah		;8908
	call 0cbcch		;890b
	set 1,h			;890e
	ld sp,0612eh		;8910
	ld h,b			;8913
	ld (05e2fh),a		;8914
	ld e,a			;8917
	inc sp			;8918
	jr nz,$-126		;8919
	ld a,(hl)		;891b
	inc (hl)		;891c
	inc e			;891d
	add a,b			;891e
	ld a,(hl)		;891f
	dec d			;8920
	dec d			;8921
	dec d			;8922
	dec d			;8923
	dec b			;8924
	ld b,00ah		;8925
	add hl,bc		;8927
	rlca			;8928
	ex af,af'		;8929
	inc c			;892a
	dec bc			;892b
	dec d			;892c
	jr l8940h		;892d
	ld (de),a		;892f
	dec d			;8930
	jr l8944h		;8931
	ld (de),a		;8933
	dec b			;8934
	ld b,00ah		;8935
	add hl,bc		;8937
	rlca			;8938
	ex af,af'		;8939
	inc c			;893a
	dec bc			;893b
	dec d			;893c
	dec d			;893d
	dec d			;893e
	dec d			;893f
l8940h:
	dec d			;8940
	jr l8954h		;8941
	ld (de),a		;8943
l8944h:
	dec e			;8944
	ld h,030h		;8945
	ld e,01ah		;8947
	ld d,017h		;8949
	dec de			;894b
	dec c			;894c
	ld c,00fh		;894d
	djnz l8966h		;894f
	jr l8964h		;8951
	ld (de),a		;8953
l8954h:
	inc a			;8954
	ld a,041h		;8955
	dec sp			;8957
	dec d			;8958
	jr l896ch		;8959
	ld (de),a		;895b
	inc a			;895c
	ld a,041h		;895d
	dec sp			;895f
	ld b,l			;8960
	ld b,e			;8961
	ccf			;8962
	inc a			;8963
l8964h:
	ld b,(hl)		;8964
	add hl,sp		;8965
l8966h:
	dec a			;8966
	dec sp			;8967
	ld b,a			;8968
	jr c,l89adh		;8969
	ld b,c			;896b
l896ch:
	ld b,h			;896c
	ld b,b			;896d
	ld a,(04c3eh)		;896e
	ld c,a			;8971
	ld d,e			;8972
	ld d,l			;8973
	ld c,e			;8974
	ld c,l			;8975
	ld c,c			;8976
	ld d,(hl)		;8977
	ld d,c			;8978
	ld d,d			;8979
	ld c,b			;897a
	ld d,a			;897b
	ld c,(hl)		;897c
	ld c,d			;897d
	ld d,b			;897e
	ld d,h			;897f
	ld a,041h		;8980
	dec sp			;8982
	ld a,(01118h)		;8983
	ld (de),a		;8986
	dec a			;8987
	ld h,(hl)		;8988
	ld h,a			;8989
	ld (hl),e		;898a
	ld (hl),e		;898b
	ld (hl),l		;898c
	ld a,e			;898d
	ld (hl),c		;898e
	ld (hl),c		;898f
	ld a,(03a3ah)		;8990
	ld a,(03d3dh)		;8993
	dec a			;8996
	dec a			;8997
	ld l,l			;8998
	ld l,h			;8999
	ld h,(hl)		;899a
	ld h,a			;899b
	sub (hl)		;899c
	sbc a,b			;899d
	ld (hl),l		;899e
	ld a,e			;899f
	ld a,(03a3ah)		;89a0
	ld a,(03d3dh)		;89a3
	dec a			;89a6
	dec a			;89a7
	sub h			;89a8
	ld a,e			;89a9
	ld (hl),c		;89aa
	ld (hl),c		;89ab
	ld l,(hl)		;89ac
l89adh:
	ld h,h			;89ad
	ld a,h			;89ae
	ld a,h			;89af
	ld a,(03a3ah)		;89b0
	ld a,(03d3dh)		;89b3
	dec a			;89b6
	dec a			;89b7
	ld l,l			;89b8
	ld l,h			;89b9
	sub d			;89ba
	sub l			;89bb
	sub (hl)		;89bc
	sbc a,b			;89bd
	sub b			;89be
	sub c			;89bf
	ld b,a			;89c0
	ld c,b			;89c1
	ld c,c			;89c2
	ld c,d			;89c3
	ld c,e			;89c4
	ld c,h			;89c5
	ld c,l			;89c6
	ld c,h			;89c7
	ld c,(hl)		;89c8
	ld c,a			;89c9
	ld d,d			;89ca
	jp z,050cch		;89cb
	ld d,c			;89ce
	srl d			;89cf
	ld a,(02a1ch)		;89d1
	dec a			;89d4
	dec a			;89d5
	jr nz,$+43		;89d6
	ld (hl),e		;89d8
	ld (hl),e		;89d9
	dec h			;89da
	jr z,$+115		;89db
	ld (hl),c		;89dd
	inc h			;89de
	daa			;89df
	inc e			;89e0
	ld b,l			;89e1
	ld b,(hl)		;89e2
	dec l			;89e3
	jr nz,l8a2ah		;89e4
	ld b,a			;89e6
	inc l			;89e7
	rra			;89e8
	add hl,de		;89e9
	add hl,de		;89ea
	ld b,l			;89eb
	add hl,sp		;89ec
	ld (04423h),hl		;89ed
	scf			;89f0
	ld b,(hl)		;89f1
	ld b,l			;89f2
	inc e			;89f3
	ld (hl),047h		;89f4
	ld b,h			;89f6
	jr nz,$+71		;89f7
	add hl,de		;89f9
	rra			;89fa
	add hl,de		;89fb
	ld b,h			;89fc
	jr c,$+59		;89fd
	ld (01c34h),hl		;89ff
	ld a,(0333ah)		;8a02
	jr nz,l8a44h		;8a05
	dec a			;8a07
	ld (l922fh),a		;8a08
	sub l			;8a0b
	ld sp,l922eh		;8a0c
	sub l			;8a0f
	ld (hl),c		;8a10
	ld (hl),c		;8a11
	inc e			;8a12
	ld hl,(07c7ch)		;8a13
	jr nz,l8a41h		;8a16
	dec h			;8a18
	jr z,l8a34h		;8a19
	rra			;8a1b
	inc h			;8a1c
	daa			;8a1d
	ld hl,04638h		;8a1e
	ld b,l			;8a21
	ld b,(hl)		;8a22
	dec l			;8a23
	ld b,a			;8a24
	ld b,h			;8a25
	ld b,a			;8a26
	inc l			;8a27
	add hl,de		;8a28
	rra			;8a29
l8a2ah:
	add hl,de		;8a2a
	dec hl			;8a2b
	add hl,sp		;8a2c
	ld (01323h),hl		;8a2d
	scf			;8a30
	ld b,(hl)		;8a31
	ld b,l			;8a32
	inc e			;8a33
l8a34h:
	ld (hl),047h		;8a34
	ld b,h			;8a36
	jr nz,$+55		;8a37
	add hl,de		;8a39
	rra			;8a3a
	add hl,de		;8a3b
	inc d			;8a3c
	jr c,l8a78h		;8a3d
	inc hl			;8a3f
	inc (hl)		;8a40
l8a41h:
	inc e			;8a41
	sub d			;8a42
	sub l			;8a43
l8a44h:
	inc sp			;8a44
	jr nz,$-110		;8a45
	sub c			;8a47
	rra			;8a48
	add hl,de		;8a49
	ld (0222fh),a		;8a4a
	ld hl,02e31h		;8a4d
	ccf			;8a50
	ld b,d			;8a51
	inc e			;8a52
	ld hl,(0423fh)		;8a53
	jr nz,l8a81h		;8a56
	ccf			;8a58
	ld b,d			;8a59
	dec h			;8a5a
	jr z,l8a9dh		;8a5b
	ld b,e			;8a5d
	inc h			;8a5e
	daa			;8a5f
	ld b,(hl)		;8a60
	ld b,l			;8a61
	ld b,(hl)		;8a62
	ld b,(hl)		;8a63
	ld b,a			;8a64
	ld b,h			;8a65
	ld b,a			;8a66
	ld b,a			;8a67
	add hl,de		;8a68
	rra			;8a69
	rra			;8a6a
	rra			;8a6b
	ld hl,03938h		;8a6c
	jr c,l8a8dh		;8a6f
	ld hl,(04546h)		;8a71
	jr nz,$+43		;8a74
	ld b,a			;8a76
	ld b,h			;8a77
l8a78h:
	dec h			;8a78
	jr z,l8a94h		;8a79
	rra			;8a7b
	inc h			;8a7c
	daa			;8a7d
	ld hl,04638h		;8a7e
l8a81h:
	ld b,l			;8a81
	ld b,l			;8a82
	ld b,(hl)		;8a83
	ld b,a			;8a84
	ld b,h			;8a85
	ld b,h			;8a86
	ld b,a			;8a87
	rra			;8a88
	add hl,de		;8a89
	rra			;8a8a
	add hl,de		;8a8b
	add hl,sp		;8a8c
l8a8dh:
	ld (03823h),hl		;8a8d
	ld b,l			;8a90
	ld b,(hl)		;8a91
	inc (hl)		;8a92
	inc e			;8a93
l8a94h:
	ld b,h			;8a94
	ld b,a			;8a95
	inc sp			;8a96
	jr nz,$+33		;8a97
	add hl,de		;8a99
	ld (0392fh),a		;8a9a
l8a9dh:
	ld hl,02e31h		;8a9d
	ld b,(hl)		;8aa0
	dec l			;8aa1
	scf			;8aa2
	ld b,(hl)		;8aa3
	ld b,a			;8aa4
	inc l			;8aa5
	ld (hl),047h		;8aa6
	add hl,de		;8aa8
	dec hl			;8aa9
	dec (hl)		;8aaa
	add hl,de		;8aab
	add hl,sp		;8aac
	inc de			;8aad
	inc d			;8aae
	jr c,l8ae8h		;8aaf
	ld b,(hl)		;8ab1
	inc (hl)		;8ab2
	inc e			;8ab3
	ld (hl),047h		;8ab4
	inc sp			;8ab6
	jr nz,$+71		;8ab7
	add hl,de		;8ab9
	ld (0442fh),a		;8aba
	ld hl,02e31h		;8abd
	inc e			;8ac0
	ld hl,(02d46h)		;8ac1
	jr nz,l8aefh		;8ac4
	ld b,a			;8ac6
	inc l			;8ac7
	dec h			;8ac8
	jr z,$+27		;8ac9
	dec hl			;8acb
	inc h			;8acc
	daa			;8acd
	ld hl,03713h		;8ace
	ld b,(hl)		;8ad1
	inc (hl)		;8ad2
	inc e			;8ad3
	ld (hl),047h		;8ad4
	inc sp			;8ad6
	jr nz,$+55		;8ad7
	add hl,de		;8ad9
	ld (0142fh),a		;8ada
	ld hl,02e31h		;8add
	dec c			;8ae0
	ld c,00fh		;8ae1
	djnz l8affh		;8ae3
	ld d,017h		;8ae5
	dec de			;8ae7
l8ae8h:
	dec e			;8ae8
	ld h,030h		;8ae9
	ld e,001h		;8aeb
	ld (bc),a		;8aed
	inc bc			;8aee
l8aefh:
	inc b			;8aef
	inc a			;8af0
	ld a,041h		;8af1
	dec sp			;8af3
	ld bc,00302h		;8af4
	inc b			;8af7
	inc a			;8af8
	ld a,041h		;8af9
	dec sp			;8afb
	ld bc,00302h		;8afc
l8affh:
	inc b			;8aff
	ld b,a			;8b00
	ld c,b			;8b01
	ld c,c			;8b02
	ld c,d			;8b03
	ld c,e			;8b04
	ld c,h			;8b05
	ld c,l			;8b06
	ld c,h			;8b07
	ld c,(hl)		;8b08
	jp z,0cacdh		;8b09
	call z,0cccbh		;8b0c
	bit 5,b			;8b0f
	ld l,c			;8b11
	ld l,a			;8b12
	ld l,(hl)		;8b13
	nop			;8b14
	cp d			;8b15
	cp h			;8b16
	nop			;8b17
	nop			;8b18
	cp l			;8b19
	cp (hl)			;8b1a
	nop			;8b1b
	nop			;8b1c
	ld a,a			;8b1d
	add a,c			;8b1e
	nop			;8b1f
	ld a,l			;8b20
	ld a,b			;8b21
	nop			;8b22
	nop			;8b23
	ld (hl),d		;8b24
	or a			;8b25
	or a			;8b26
	ld h,b			;8b27
	ld (hl),b		;8b28
	cp c			;8b29
	cp b			;8b2a
	ld e,a			;8b2b
	ld (hl),h		;8b2c
	ld (hl),h		;8b2d
	add a,b			;8b2e
	ld a,(hl)		;8b2f
	ld (hl),a		;8b30
	add a,d			;8b31
	ld a,l			;8b32
	ld a,b			;8b33
	ld (hl),d		;8b34
	or a			;8b35
	or a			;8b36
	ld h,b			;8b37
	ld (hl),b		;8b38
	cp c			;8b39
	cp b			;8b3a
	ld e,a			;8b3b
	ld (hl),h		;8b3c
	ld (hl),h		;8b3d
	add a,b			;8b3e
	ld a,(hl)		;8b3f
	nop			;8b40
	adc a,c			;8b41
	adc a,d			;8b42
	nop			;8b43
	sub b			;8b44
	pop bc			;8b45
	jp nz,079a4h		;8b46
	cp e			;8b49
	cp e			;8b4a
	ld a,d			;8b4b
	ld e,h			;8b4c
	ld e,l			;8b4d
	ld h,e			;8b4e
	ld h,d			;8b4f
	nop			;8b50
	adc a,c			;8b51
	add a,(hl)		;8b52
	nop			;8b53
	sub b			;8b54
	pop bc			;8b55
	jp nz,079a4h		;8b56
	cp e			;8b59
	cp e			;8b5a
	ld a,d			;8b5b
	ld e,h			;8b5c
	ld e,l			;8b5d
	ld h,e			;8b5e
	ld h,d			;8b5f
	nop			;8b60
	nop			;8b61
	nop			;8b62
	nop			;8b63
	sub b			;8b64
	cp a			;8b65
	ret nz			;8b66
	and h			;8b67
	ld a,c			;8b68
	cp e			;8b69
	cp e			;8b6a
	ld a,d			;8b6b
	ld e,h			;8b6c
	ld e,l			;8b6d
	ld h,e			;8b6e
	ld h,d			;8b6f
	ld (hl),h		;8b70
	ld (hl),h		;8b71
	add a,b			;8b72
	ld a,(hl)		;8b73
	ld (hl),d		;8b74
	or a			;8b75
	or a			;8b76
	ld h,b			;8b77
	ld (hl),b		;8b78
	cp c			;8b79
	cp b			;8b7a
	ld e,a			;8b7b
	ld (hl),h		;8b7c
	ld (hl),h		;8b7d
	add a,b			;8b7e
	ld a,(hl)		;8b7f
	sub (hl)		;8b80
	sbc a,b			;8b81
	ld (hl),l		;8b82
	ld a,e			;8b83
	ld l,d			;8b84
	cp l			;8b85
	cp (hl)			;8b86
	ld h,h			;8b87
	ld l,l			;8b88
	cp a			;8b89
	cp h			;8b8a
	ld h,a			;8b8b
	nop			;8b8c
	nop			;8b8d
	ld (hl),l		;8b8e
	ld a,e			;8b8f
	ld l,d			;8b90
	ld l,e			;8b91
	nop			;8b92
	nop			;8b93
	ld l,l			;8b94
	ld l,h			;8b95
	nop			;8b96
	nop			;8b97
	nop			;8b98
	nop			;8b99
	nop			;8b9a
	nop			;8b9b
	nop			;8b9c
	nop			;8b9d
	sub (hl)		;8b9e
	sub a			;8b9f
	nop			;8ba0
	add a,a			;8ba1
	adc a,l			;8ba2
	nop			;8ba3
	nop			;8ba4
	nop			;8ba5
	nop			;8ba6
	nop			;8ba7
	nop			;8ba8
	nop			;8ba9
	nop			;8baa
	nop			;8bab
	sbc a,b			;8bac
	sbc a,d			;8bad
	xor (hl)		;8bae
	xor h			;8baf
	ld l,b			;8bb0
	ld l,c			;8bb1
	ld l,a			;8bb2
	ld l,(hl)		;8bb3
	nop			;8bb4
	add a,e			;8bb5
	add a,h			;8bb6
	nop			;8bb7
	nop			;8bb8
	add a,e			;8bb9
	add a,h			;8bba
	nop			;8bbb
	xor e			;8bbc
	xor d			;8bbd
	nop			;8bbe
	nop			;8bbf
	nop			;8bc0
	nop			;8bc1
	nop			;8bc2
	nop			;8bc3
	nop			;8bc4
	nop			;8bc5
	nop			;8bc6
	nop			;8bc7
	nop			;8bc8
	nop			;8bc9
	nop			;8bca
	nop			;8bcb
	nop			;8bcc
	nop			;8bcd
	sub (hl)		;8bce
	sub a			;8bcf
	nop			;8bd0
	nop			;8bd1
	nop			;8bd2
	nop			;8bd3
	nop			;8bd4
	nop			;8bd5
	nop			;8bd6
	nop			;8bd7
	nop			;8bd8
	nop			;8bd9
	nop			;8bda
	nop			;8bdb
	sbc a,b			;8bdc
	sbc a,d			;8bdd
	xor (hl)		;8bde
	xor h			;8bdf
	nop			;8be0
	nop			;8be1
	nop			;8be2
	nop			;8be3
	nop			;8be4
	nop			;8be5
	nop			;8be6
	nop			;8be7
	nop			;8be8
	nop			;8be9
	nop			;8bea
	nop			;8beb
	xor e			;8bec
	xor d			;8bed
	nop			;8bee
	nop			;8bef
	nop			;8bf0
	nop			;8bf1
	nop			;8bf2
	nop			;8bf3
	nop			;8bf4
	nop			;8bf5
	sub l			;8bf6
	sub h			;8bf7
	nop			;8bf8
	nop			;8bf9
	sub e			;8bfa
	adc a,(hl)		;8bfb
	nop			;8bfc
	nop			;8bfd
	sub c			;8bfe
	sbc a,a			;8bff
	sbc a,c			;8c00
	sbc a,e			;8c01
	xor a			;8c02
	xor l			;8c03
	sbc a,(hl)		;8c04
	sbc a,h			;8c05
	or b			;8c06
	or d			;8c07
	sub d			;8c08
	sbc a,l			;8c09
	or c			;8c0a
	and (hl)		;8c0b
	and b			;8c0c
	adc a,a			;8c0d
	and e			;8c0e
	or h			;8c0f
	nop			;8c10
	nop			;8c11
	nop			;8c12
	nop			;8c13
	xor b			;8c14
	xor c			;8c15
	nop			;8c16
	nop			;8c17
	and d			;8c18
	and a			;8c19
	nop			;8c1a
	nop			;8c1b
	or e			;8c1c
	and l			;8c1d
	nop			;8c1e
	nop			;8c1f
	nop			;8c20
	nop			;8c21
	ld (hl),a		;8c22
	add a,d			;8c23
	ld e,d			;8c24
	ld e,e			;8c25
	ld e,e			;8c26
	ld (hl),d		;8c27
	ld e,c			;8c28
	ld e,b			;8c29
	ld (hl),b		;8c2a
	ld (hl),b		;8c2b
	sub h			;8c2c
	sub e			;8c2d
	ld (hl),h		;8c2e
	ld (hl),h		;8c2f
	ld a,l			;8c30
	ld a,b			;8c31
	ld (hl),a		;8c32
	add a,d			;8c33
	ld e,e			;8c34
	ld (hl),d		;8c35
	ld (hl),d		;8c36
	ld h,c			;8c37
	ld e,b			;8c38
	ld (hl),b		;8c39
	ld (hl),b		;8c3a
	ld e,(hl)		;8c3b
	sub e			;8c3c
	ld (hl),h		;8c3d
	ld (hl),h		;8c3e
	add a,b			;8c3f
	ld a,l			;8c40
	ld a,b			;8c41
	nop			;8c42
	nop			;8c43
	ld (hl),d		;8c44
	ld h,c			;8c45
	ld h,c			;8c46
	ld h,b			;8c47
	ld (hl),b		;8c48
	ld (hl),b		;8c49
	ld e,(hl)		;8c4a
	ld e,a			;8c4b
	ld (hl),h		;8c4c
	ld (hl),h		;8c4d
	add a,b			;8c4e
	ld a,(hl)		;8c4f
	nop			;8c50
	nop			;8c51
	nop			;8c52
	nop			;8c53
	nop			;8c54
	nop			;8c55
	add a,l			;8c56
	add a,(hl)		;8c57
	nop			;8c58
	sub b			;8c59
	and c			;8c5a
	or l			;8c5b
	nop			;8c5c
	ld a,c			;8c5d
	halt			;8c5e
	halt			;8c5f
	nop			;8c60
	nop			;8c61
	ld h,l			;8c62
	ld h,h			;8c63
	nop			;8c64
	nop			;8c65
	ld h,(hl)		;8c66
	ld h,a			;8c67
	and h			;8c68
	nop			;8c69
	nop			;8c6a
	adc a,e			;8c6b
	ld a,d			;8c6c
	nop			;8c6d
	nop			;8c6e
	add a,a			;8c6f
	ld l,b			;8c70
	ld l,c			;8c71
	ld l,a			;8c72
	ld l,(hl)		;8c73
	nop			;8c74
	adc a,e			;8c75
	adc a,h			;8c76
	nop			;8c77
	nop			;8c78
	add a,a			;8c79
	adc a,b			;8c7a
	nop			;8c7b
	nop			;8c7c
	ld a,a			;8c7d
	add a,c			;8c7e
	nop			;8c7f
	nop			;8c80
	nop			;8c81
	nop			;8c82
	nop			;8c83
	sub b			;8c84
	sub l			;8c85
	sub b			;8c86
	sub l			;8c87
	sub c			;8c88
	sub d			;8c89
	sub c			;8c8a
	sub d			;8c8b
	sub c			;8c8c
	sub d			;8c8d
	sub c			;8c8e
	sub d			;8c8f
	sub (hl)		;8c90
	sbc a,b			;8c91
	ld (hl),l		;8c92
	ld a,e			;8c93
	ld l,d			;8c94
	cp l			;8c95
	cp (hl)			;8c96
	ld h,h			;8c97
	ld l,l			;8c98
	cp a			;8c99
	cp h			;8c9a
	ld h,a			;8c9b
	ld (hl),l		;8c9c
	ld a,e			;8c9d
	ld (hl),c		;8c9e
	ld (hl),c		;8c9f
	nop			;8ca0
	add a,l			;8ca1
	add a,(hl)		;8ca2
	nop			;8ca3
	sub b			;8ca4
	and c			;8ca5
	or l			;8ca6
	and h			;8ca7
	ld a,c			;8ca8
	halt			;8ca9
	halt			;8caa
	ld a,d			;8cab
	ld e,h			;8cac
	ld e,l			;8cad
	ld h,e			;8cae
	ld h,d			;8caf
	nop			;8cb0
	adc a,c			;8cb1
	adc a,d			;8cb2
	nop			;8cb3
	sub b			;8cb4
	and c			;8cb5
	or l			;8cb6
	and h			;8cb7
	ld a,c			;8cb8
	halt			;8cb9
	halt			;8cba
	ld a,d			;8cbb
	ld e,h			;8cbc
	ld e,l			;8cbd
	ld h,e			;8cbe
	ld h,d			;8cbf
	sub (hl)		;8cc0
	sbc a,b			;8cc1
	ld (hl),l		;8cc2
	ld a,e			;8cc3
	ld l,d			;8cc4
	cp l			;8cc5
	cp (hl)			;8cc6
	ld h,h			;8cc7
	ld l,l			;8cc8
	cp a			;8cc9
	cp h			;8cca
	ld h,a			;8ccb
	sub e			;8ccc
	sbc a,d			;8ccd
	sbc a,e			;8cce
	sub h			;8ccf
	nop			;8cd0
	nop			;8cd1
	nop			;8cd2
	nop			;8cd3
	ld h,c			;8cd4
	ld h,b			;8cd5
	ld e,d			;8cd6
	ld e,e			;8cd7
	ld e,(hl)		;8cd8
	ld e,a			;8cd9
	ld e,c			;8cda
	ld e,b			;8cdb
	add a,b			;8cdc
	ld a,(hl)		;8cdd
	sub h			;8cde
	sub e			;8cdf
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
	ld e,d			;8cea
	ld e,e			;8ceb
	nop			;8cec
	nop			;8ced
	ld e,c			;8cee
	ld e,b			;8cef
	nop			;8cf0
	nop			;8cf1
	nop			;8cf2
	nop			;8cf3
	sub b			;8cf4
	sub l			;8cf5
	ld e,d			;8cf6
	ld e,e			;8cf7
	sub c			;8cf8
	sub d			;8cf9
	ld e,c			;8cfa
	ld e,b			;8cfb
	sub c			;8cfc
	sub d			;8cfd
	sub h			;8cfe
	sub e			;8cff
	nop			;8d00
	nop			;8d01
	nop			;8d02
	nop			;8d03
	nop			;8d04
	nop			;8d05
	nop			;8d06
	nop			;8d07
	ld (hl),d		;8d08
	ld (hl),d		;8d09
	ld h,c			;8d0a
	ld h,b			;8d0b
	ld (hl),b		;8d0c
	ld (hl),b		;8d0d
	ld e,(hl)		;8d0e
	ld e,a			;8d0f
	sub h			;8d10
	sub e			;8d11
	ld (hl),h		;8d12
	ld (hl),h		;8d13
	ld e,d			;8d14
	ld e,e			;8d15
	ld (hl),d		;8d16
	ld (hl),d		;8d17
	ld e,c			;8d18
	ld e,b			;8d19
	ld (hl),b		;8d1a
	ld (hl),b		;8d1b
	sub h			;8d1c
	sub e			;8d1d
	ld (hl),h		;8d1e
	ld (hl),h		;8d1f
	add a,b			;8d20
	ld a,(hl)		;8d21
	nop			;8d22
	nop			;8d23
	ld h,c			;8d24
	ld h,b			;8d25
	ld e,d			;8d26
	ld e,e			;8d27
	ld e,(hl)		;8d28
	ld e,a			;8d29
	ld e,c			;8d2a
	ld e,b			;8d2b
	add a,b			;8d2c
	ld a,(hl)		;8d2d
	sub h			;8d2e
	sub e			;8d2f
	sub b			;8d30
	and c			;8d31
	or l			;8d32
	and h			;8d33
	ld a,c			;8d34
	halt			;8d35
	halt			;8d36
	ld a,d			;8d37
	ld (hl),d		;8d38
	ld (hl),d		;8d39
	ld h,c			;8d3a
	ld h,b			;8d3b
	ld (hl),b		;8d3c
	ld (hl),b		;8d3d
	ld e,(hl)		;8d3e
	ld e,a			;8d3f
	ld (hl),h		;8d40
	ld (hl),h		;8d41
	add a,b			;8d42
	ld a,(hl)		;8d43
	ld (hl),d		;8d44
	ld (hl),d		;8d45
	ld h,c			;8d46
	ld h,b			;8d47
	ld (hl),b		;8d48
	ld (hl),b		;8d49
	ld e,(hl)		;8d4a
	ld e,a			;8d4b
	ld (hl),h		;8d4c
	ld (hl),h		;8d4d
	add a,b			;8d4e
	ld a,(hl)		;8d4f
	nop			;8d50
	nop			;8d51
	sub h			;8d52
	sub e			;8d53
	sub b			;8d54
	sub l			;8d55
	ld e,d			;8d56
	ld e,e			;8d57
	sub c			;8d58
	sub d			;8d59
	ld e,c			;8d5a
	ld e,b			;8d5b
	sub c			;8d5c
	sub d			;8d5d
	sub h			;8d5e
	sub e			;8d5f
	nop			;8d60
	ld e,h			;8d61
	ld e,l			;8d62
	ld h,e			;8d63
	nop			;8d64
	ld (hl),a		;8d65
	add a,d			;8d66
	ld a,l			;8d67
	ld e,d			;8d68
	ld e,e			;8d69
	ld (hl),d		;8d6a
	ld (hl),d		;8d6b
	ld e,c			;8d6c
	ld e,b			;8d6d
	ld (hl),b		;8d6e
	ld (hl),b		;8d6f
	ld (hl),a		;8d70
	add a,d			;8d71
	ld a,l			;8d72
	ld a,b			;8d73
	ld e,d			;8d74
	ld e,e			;8d75
	ld (hl),d		;8d76
	ld (hl),d		;8d77
	ld e,c			;8d78
	ld e,b			;8d79
	ld (hl),b		;8d7a
	ld (hl),b		;8d7b
	sub h			;8d7c
	sub e			;8d7d
	ld (hl),h		;8d7e
	ld (hl),h		;8d7f
	nop			;8d80
	nop			;8d81
	nop			;8d82
	nop			;8d83
	nop			;8d84
	nop			;8d85
	nop			;8d86
	nop			;8d87
	nop			;8d88
	add a,l			;8d89
	add a,(hl)		;8d8a
	nop			;8d8b
	sub b			;8d8c
	and c			;8d8d
	or l			;8d8e
	and h			;8d8f
	ld (hl),a		;8d90
	add a,d			;8d91
	ld a,l			;8d92
	ld a,b			;8d93
	ld (hl),d		;8d94
	ld (hl),d		;8d95
	ld h,c			;8d96
	ld h,b			;8d97
	ld (hl),b		;8d98
	ld (hl),b		;8d99
	ld e,(hl)		;8d9a
	ld e,a			;8d9b
	ld (hl),h		;8d9c
	ld (hl),h		;8d9d
	add a,b			;8d9e
	ld a,(hl)		;8d9f
	ld a,c			;8da0
	halt			;8da1
	halt			;8da2
	ld a,d			;8da3
	sub b			;8da4
	sub l			;8da5
	ld e,d			;8da6
	ld e,e			;8da7
	sub c			;8da8
	sub d			;8da9
	ld e,c			;8daa
	ld e,b			;8dab
	sub c			;8dac
	sub d			;8dad
	sub h			;8dae
	sub e			;8daf
	sub (hl)		;8db0
	sbc a,b			;8db1
	ld (hl),l		;8db2
	ld a,e			;8db3
	ld l,d			;8db4
	ld l,e			;8db5
	ld h,l			;8db6
	ld h,h			;8db7
	ld l,l			;8db8
	ld l,h			;8db9
	ld h,(hl)		;8dba
	ld h,a			;8dbb
	nop			;8dbc
	nop			;8dbd
	ld (hl),l		;8dbe
	ld a,e			;8dbf
	ld (hl),l		;8dc0
	ld a,e			;8dc1
	ld (hl),c		;8dc2
	ld (hl),c		;8dc3
	ld h,l			;8dc4
	ld h,h			;8dc5
	ld a,h			;8dc6
	ld a,h			;8dc7
	ld h,(hl)		;8dc8
	ld h,a			;8dc9
	ld (hl),e		;8dca
	ld (hl),e		;8dcb
	nop			;8dcc
	nop			;8dcd
	nop			;8dce
	nop			;8dcf
	sub (hl)		;8dd0
	sbc a,b			;8dd1
	ld (hl),l		;8dd2
	ld a,e			;8dd3
	ld l,d			;8dd4
	ld l,e			;8dd5
	ld h,l			;8dd6
	ld h,h			;8dd7
	ld l,l			;8dd8
	ld l,h			;8dd9
	ld h,(hl)		;8dda
	ld h,a			;8ddb
	nop			;8ddc
	nop			;8ddd
	nop			;8dde
	nop			;8ddf
	ld (hl),c		;8de0
	ld (hl),c		;8de1
	sub (hl)		;8de2
	sbc a,b			;8de3
	ld a,h			;8de4
	ld a,h			;8de5
	ld l,d			;8de6
	ld l,e			;8de7
	ld (hl),e		;8de8
	ld (hl),e		;8de9
	ld l,l			;8dea
	ld l,h			;8deb
	nop			;8dec
	nop			;8ded
	nop			;8dee
	nop			;8def
	ld (hl),l		;8df0
	ld a,e			;8df1
	ld (hl),c		;8df2
	ld (hl),c		;8df3
	ld h,l			;8df4
	ld h,h			;8df5
	ld a,h			;8df6
	ld a,h			;8df7
	ld h,(hl)		;8df8
	ld h,a			;8df9
	ld (hl),e		;8dfa
	ld (hl),e		;8dfb
	nop			;8dfc
	adc a,e			;8dfd
	adc a,h			;8dfe
	nop			;8dff
	sbc a,e			;8e00
	sub h			;8e01
	ld (hl),l		;8e02
	ld a,e			;8e03
	ld l,a			;8e04
	ld l,(hl)		;8e05
	ld h,l			;8e06
	ld h,h			;8e07
	nop			;8e08
	nop			;8e09
	ld h,(hl)		;8e0a
	ld h,a			;8e0b
	nop			;8e0c
	nop			;8e0d
	ld (hl),l		;8e0e
	ld a,e			;8e0f
	ld (hl),l		;8e10
	ld a,e			;8e11
	ld (hl),c		;8e12
	ld (hl),c		;8e13
	ld h,l			;8e14
	ld h,h			;8e15
	ld a,h			;8e16
	ld a,h			;8e17
	ld h,(hl)		;8e18
	ld h,a			;8e19
	ld (hl),e		;8e1a
	ld (hl),e		;8e1b
	ld (hl),l		;8e1c
	ld a,e			;8e1d
	ld (hl),c		;8e1e
	ld (hl),c		;8e1f
	sub (hl)		;8e20
	sbc a,b			;8e21
	ld (hl),l		;8e22
	ld a,e			;8e23
	ld l,d			;8e24
	ld l,e			;8e25
	ld h,l			;8e26
	ld h,h			;8e27
	ld l,l			;8e28
	ld l,h			;8e29
	ld h,(hl)		;8e2a
	ld h,a			;8e2b
	sub (hl)		;8e2c
	sbc a,b			;8e2d
	nop			;8e2e
	nop			;8e2f
	sub (hl)		;8e30
	sbc a,b			;8e31
	sub e			;8e32
	sbc a,d			;8e33
	ld l,d			;8e34
	ld l,e			;8e35
	ld l,b			;8e36
	ld l,c			;8e37
	ld l,l			;8e38
	ld l,h			;8e39
	nop			;8e3a
	nop			;8e3b
	nop			;8e3c
	nop			;8e3d
	nop			;8e3e
	nop			;8e3f
	ld (hl),c		;8e40
	ld (hl),c		;8e41
	sub (hl)		;8e42
	sbc a,b			;8e43
	ld a,h			;8e44
	ld a,h			;8e45
	ld l,d			;8e46
	ld l,e			;8e47
	ld (hl),e		;8e48
	ld (hl),e		;8e49
	ld l,l			;8e4a
	ld l,h			;8e4b
	ld (hl),c		;8e4c
	ld (hl),c		;8e4d
	sub (hl)		;8e4e
	sbc a,b			;8e4f
	ld h,l			;8e50
	ld h,h			;8e51
	ld a,h			;8e52
	ld a,h			;8e53
	ld h,(hl)		;8e54
	ld h,a			;8e55
	ld (hl),e		;8e56
	ld (hl),e		;8e57
	nop			;8e58
	add a,a			;8e59
	adc a,b			;8e5a
	nop			;8e5b
	nop			;8e5c
	ld a,a			;8e5d
	add a,c			;8e5e
	nop			;8e5f
	sub (hl)		;8e60
	sbc a,b			;8e61
	sub d			;8e62
	sub l			;8e63
	ld l,d			;8e64
	ld l,e			;8e65
	sub d			;8e66
	sub l			;8e67
	ld l,l			;8e68
	ld l,h			;8e69
	sub b			;8e6a
	sub c			;8e6b
	sub (hl)		;8e6c
	sbc a,b			;8e6d
	nop			;8e6e
	nop			;8e6f
	ld (hl),l		;8e70
	ld a,e			;8e71
	ld (hl),c		;8e72
	ld (hl),c		;8e73
	ld h,l			;8e74
	ld h,h			;8e75
	ld a,h			;8e76
	ld a,h			;8e77
	ld h,(hl)		;8e78
	ld h,a			;8e79
	ld (hl),e		;8e7a
	ld (hl),e		;8e7b
	sub e			;8e7c
	sbc a,d			;8e7d
	sbc a,e			;8e7e
	sub h			;8e7f
	sub (hl)		;8e80
	sbc a,b			;8e81
	ld (hl),l		;8e82
	ld a,e			;8e83
	ld l,d			;8e84
	ld l,e			;8e85
	ld h,l			;8e86
	ld h,h			;8e87
	ld l,l			;8e88
	ld l,h			;8e89
	ld h,(hl)		;8e8a
	ld h,a			;8e8b
	sub (hl)		;8e8c
	sbc a,b			;8e8d
	ld (hl),l		;8e8e
	ld a,e			;8e8f
	ld h,l			;8e90
	ld h,h			;8e91
	ld a,h			;8e92
	ld a,h			;8e93
	ld h,(hl)		;8e94
	ld h,a			;8e95
	ld (hl),e		;8e96
	ld (hl),e		;8e97
	nop			;8e98
	nop			;8e99
	nop			;8e9a
	nop			;8e9b
	nop			;8e9c
	nop			;8e9d
	nop			;8e9e
	nop			;8e9f
	nop			;8ea0
	nop			;8ea1
	ld h,l			;8ea2
	ld h,h			;8ea3
	nop			;8ea4
	nop			;8ea5
	ld h,(hl)		;8ea6
	ld h,a			;8ea7
	nop			;8ea8
	nop			;8ea9
	nop			;8eaa
	nop			;8eab
	xor e			;8eac
	xor d			;8ead
	nop			;8eae
	nop			;8eaf
	ld (hl),c		;8eb0
	ld (hl),c		;8eb1
	sub (hl)		;8eb2
	ld (hl),c		;8eb3
	ld a,h			;8eb4
	ld a,h			;8eb5
	ld l,d			;8eb6
	ld a,h			;8eb7
	ld (hl),e		;8eb8
	ld (hl),e		;8eb9
	ld (hl),e		;8eba
	ld (hl),e		;8ebb
	ld (hl),c		;8ebc
	ld (hl),c		;8ebd
	sub (hl)		;8ebe
	sbc a,b			;8ebf
	ld h,l			;8ec0
	ld h,h			;8ec1
	ld a,h			;8ec2
	ld a,h			;8ec3
	ld h,(hl)		;8ec4
	ld h,a			;8ec5
	ld (hl),e		;8ec6
	ld (hl),e		;8ec7
	sub e			;8ec8
	sbc a,d			;8ec9
	sbc a,e			;8eca
	sub h			;8ecb
	ld l,b			;8ecc
	ld l,c			;8ecd
	ld l,a			;8ece
	ld l,(hl)		;8ecf
	ld l,d			;8ed0
	ld l,e			;8ed1
	nop			;8ed2
	nop			;8ed3
	ld l,l			;8ed4
	ld l,h			;8ed5
	nop			;8ed6
	nop			;8ed7
	nop			;8ed8
	nop			;8ed9
	nop			;8eda
	nop			;8edb
	nop			;8edc
	nop			;8edd
	nop			;8ede
	nop			;8edf
	nop			;8ee0
	nop			;8ee1
	ld h,l			;8ee2
	ld h,h			;8ee3
	nop			;8ee4
	nop			;8ee5
	ld h,(hl)		;8ee6
	ld h,a			;8ee7
	nop			;8ee8
	nop			;8ee9
	nop			;8eea
	nop			;8eeb
	nop			;8eec
	nop			;8eed
	nop			;8eee
	nop			;8eef
	ld a,h			;8ef0
	ld a,h			;8ef1
	ld l,d			;8ef2
	ld l,e			;8ef3
	ld (hl),e		;8ef4
	ld (hl),e		;8ef5
	ld l,l			;8ef6
	ld l,h			;8ef7
	nop			;8ef8
	nop			;8ef9
	nop			;8efa
	nop			;8efb
	nop			;8efc
	nop			;8efd
	nop			;8efe
	nop			;8eff
	sub (hl)		;8f00
	sbc a,b			;8f01
	sub e			;8f02
	sbc a,d			;8f03
	ld l,d			;8f04
	ld l,e			;8f05
	ld l,b			;8f06
	ld l,c			;8f07
	ld l,l			;8f08
	ld l,h			;8f09
	nop			;8f0a
	nop			;8f0b
	sub (hl)		;8f0c
	sbc a,b			;8f0d
	nop			;8f0e
	nop			;8f0f
	sbc a,e			;8f10
	sub h			;8f11
	ld (hl),l		;8f12
	ld a,e			;8f13
	ld l,a			;8f14
	ld l,(hl)		;8f15
	ld h,l			;8f16
	ld h,h			;8f17
	nop			;8f18
	nop			;8f19
	ld h,(hl)		;8f1a
	ld h,a			;8f1b
	nop			;8f1c
	nop			;8f1d
	nop			;8f1e
	nop			;8f1f
	ld h,d			;8f20
	nop			;8f21
	nop			;8f22
	nop			;8f23
	ld a,b			;8f24
	nop			;8f25
	nop			;8f26
	nop			;8f27
	ld h,c			;8f28
	ld h,b			;8f29
	nop			;8f2a
	nop			;8f2b
	ld e,(hl)		;8f2c
	ld e,a			;8f2d
	nop			;8f2e
	nop			;8f2f
	ld a,(03a3ah)		;8f30
	ld a,(03d3dh)		;8f33
	dec a			;8f36
	dec a			;8f37
	sub (hl)		;8f38
	sub e			;8f39
	sbc a,d			;8f3a
	sbc a,e			;8f3b
	ld l,d			;8f3c
	ld l,b			;8f3d
	ld l,c			;8f3e
	ld l,a			;8f3f
	ld a,(03a3ah)		;8f40
	ld a,(03d3dh)		;8f43
	dec a			;8f46
	dec a			;8f47
	sub (hl)		;8f48
	sub e			;8f49
	sbc a,d			;8f4a
	sbc a,e			;8f4b
	ld l,d			;8f4c
	ld l,b			;8f4d
	ld l,c			;8f4e
	ld l,a			;8f4f
	ld b,008h		;8f50
	rrca			;8f52
	dec c			;8f53
	dec a			;8f54
	dec bc			;8f55
	ld (de),a		;8f56
	dec a			;8f57
	sub h			;8f58
	and b			;8f59
	and (hl)		;8f5a
	nop			;8f5b
	ld l,(hl)		;8f5c
	nop			;8f5d
	nop			;8f5e
	nop			;8f5f
	ld a,(03a3ah)		;8f60
	ld a,(03d3dh)		;8f63
	dec a			;8f66
	dec a			;8f67
	nop			;8f68
	nop			;8f69
	nop			;8f6a
	nop			;8f6b
	nop			;8f6c
	nop			;8f6d
	nop			;8f6e
	nop			;8f6f
	ld h,(hl)		;8f70
	ld h,a			;8f71
	ld (hl),e		;8f72
	ld (hl),e		;8f73
	nop			;8f74
	sub e			;8f75
	sbc a,d			;8f76
	sbc a,e			;8f77
	nop			;8f78
	ld l,b			;8f79
	ld l,c			;8f7a
	ld l,a			;8f7b
	nop			;8f7c
	nop			;8f7d
	adc a,e			;8f7e
	adc a,h			;8f7f
	ld l,l			;8f80
	ld l,h			;8f81
	nop			;8f82
	nop			;8f83
	sub h			;8f84
	nop			;8f85
	nop			;8f86
	nop			;8f87
	ld l,(hl)		;8f88
	nop			;8f89
	nop			;8f8a
	nop			;8f8b
	nop			;8f8c
	nop			;8f8d
	nop			;8f8e
	nop			;8f8f
	ld l,l			;8f90
	ld l,h			;8f91
	nop			;8f92
	nop			;8f93
	sub h			;8f94
	nop			;8f95
	nop			;8f96
	nop			;8f97
	ld l,(hl)		;8f98
	nop			;8f99
	add a,e			;8f9a
	add a,h			;8f9b
	nop			;8f9c
	nop			;8f9d
	nop			;8f9e
	add a,l			;8f9f
	ld h,(hl)		;8fa0
	ld h,a			;8fa1
	ld (hl),e		;8fa2
	ld (hl),e		;8fa3
	nop			;8fa4
	sub e			;8fa5
	sbc a,d			;8fa6
	sbc a,e			;8fa7
	nop			;8fa8
	ld l,b			;8fa9
	ld l,c			;8faa
	ld l,a			;8fab
	add a,(hl)		;8fac
	add a,a			;8fad
	adc a,b			;8fae
	adc a,c			;8faf
	ld l,l			;8fb0
	ld l,h			;8fb1
	nop			;8fb2
	nop			;8fb3
	sub h			;8fb4
	nop			;8fb5
	nop			;8fb6
	nop			;8fb7
	ld l,(hl)		;8fb8
	nop			;8fb9
	nop			;8fba
	nop			;8fbb
	and d			;8fbc
	and e			;8fbd
	and h			;8fbe
	rlca			;8fbf
	nop			;8fc0
	nop			;8fc1
	nop			;8fc2
	nop			;8fc3
	nop			;8fc4
	and c			;8fc5
	and a			;8fc6
	nop			;8fc7
	and l			;8fc8
	ld a,(bc)		;8fc9
	ld de,005abh		;8fca
	add hl,bc		;8fcd
	djnz l8fdch		;8fce
	nop			;8fd0
	nop			;8fd1
	nop			;8fd2
	nop			;8fd3
	nop			;8fd4
	nop			;8fd5
	nop			;8fd6
	nop			;8fd7
	nop			;8fd8
	nop			;8fd9
	nop			;8fda
	nop			;8fdb
l8fdch:
	ld c,0aah		;8fdc
	xor c			;8fde
	xor b			;8fdf
	nop			;8fe0
	nop			;8fe1
	add a,a			;8fe2
	adc a,b			;8fe3
	nop			;8fe4
	nop			;8fe5
	adc a,e			;8fe6
	adc a,h			;8fe7
	nop			;8fe8
	nop			;8fe9
	add a,a			;8fea
	adc a,b			;8feb
	nop			;8fec
	nop			;8fed
	ld a,a			;8fee
	add a,c			;8fef
	nop			;8ff0
	nop			;8ff1
	add a,a			;8ff2
	adc a,b			;8ff3
	nop			;8ff4
	nop			;8ff5
	adc a,e			;8ff6
	adc a,h			;8ff7
	nop			;8ff8
	nop			;8ff9
	add a,a			;8ffa
	adc a,l			;8ffb
	nop			;8ffc
	nop			;8ffd
	nop			;8ffe
	nop			;8fff
	sbc a,a			;9000
	ret			;9001
	call nz,000c7h		;9002
	and l			;9005
	and (hl)		;9006
	nop			;9007
	nop			;9008
	nop			;9009
	nop			;900a
	nop			;900b
	nop			;900c
	nop			;900d
	nop			;900e
	xor b			;900f
	inc b			;9010
	ld e,006h		;9011
	xor a			;9013
	and d			;9014
	rra			;9015
	rlca			;9016
	ld (bc),a		;9017
	and e			;9018
	daa			;9019
	ld a,(bc)		;901a
	ex af,af'		;901b
	inc de			;901c
	ld c,00bh		;901d
	add hl,bc		;901f
	dec e			;9020
	add hl,de		;9021
	ld b,h			;9022
	ld c,b			;9023
	ld d,018h		;9024
	ld b,e			;9026
	ld b,c			;9027
	add hl,hl		;9028
	ld bc,0542ch		;9029
	ld hl,(0b8b0h)		;902c
	ld d,l			;902f
	or a			;9030
	ld sp,02f49h		;9031
	dec l			;9034
	ld (0a74ah),a		;9035
	inc sp			;9038
	dec (hl)		;9039
	ld d,d			;903a
	and h			;903b
	inc (hl)		;903c
	ld (hl),039h		;903d
	ld a,000h		;903f
	nop			;9041
	adc a,c			;9042
	adc a,d			;9043
	nop			;9044
	nop			;9045
	add a,a			;9046
	adc a,b			;9047
	nop			;9048
	nop			;9049
	ld a,a			;904a
	add a,c			;904b
	nop			;904c
	ld e,h			;904d
	ld e,l			;904e
	ld h,e			;904f
	nop			;9050
	nop			;9051
	nop			;9052
	nop			;9053
	nop			;9054
	nop			;9055
	nop			;9056
	nop			;9057
	nop			;9058
	nop			;9059
	nop			;905a
	nop			;905b
	ld h,d			;905c
	nop			;905d
	nop			;905e
	nop			;905f
	nop			;9060
	nop			;9061
	add a,l			;9062
	add a,(hl)		;9063
	nop			;9064
	nop			;9065
	add a,a			;9066
	adc a,b			;9067
	nop			;9068
	nop			;9069
	ld a,a			;906a
	add a,c			;906b
	nop			;906c
	ld e,h			;906d
	ld e,l			;906e
	ld h,e			;906f
	nop			;9070
	nop			;9071
	nop			;9072
	nop			;9073
	nop			;9074
	nop			;9075
	nop			;9076
	nop			;9077
	nop			;9078
	nop			;9079
	and c			;907a
	ret z			;907b
	ld h,d			;907c
	and b			;907d
	cp l			;907e
	cp (hl)			;907f
	nop			;9080
	nop			;9081
	xor e			;9082
	call 0a9aah		;9083
	set 1,d			;9086
	call z,0c5c0h		;9088
	jp nz,0c3c1h		;908b
	add a,0bfh		;908e
	ld a,(de)		;9090
	xor h			;9091
	inc c			;9092
	or d			;9093
	dec h			;9094
	ld h,005h		;9095
	rrca			;9097
	inc d			;9098
	dec c			;9099
	jr z,l90bdh		;909a
	xor (hl)		;909c
	ld (de),a		;909d
	inc bc			;909e
	djnz l90b2h		;909f
	or c			;90a1
	cp c			;90a2
	inc a			;90a3
	dec d			;90a4
	dec hl			;90a5
	ld d,(hl)		;90a6
	ld b,b			;90a7
	dec de			;90a8
	ld (0464dh),hl		;90a9
	cp h			;90ac
	inc hl			;90ad
	ld c,(hl)		;90ae
	cp h			;90af
	cp d			;90b0
	scf			;90b1
l90b2h:
	or h			;90b2
	ld b,l			;90b3
	ld a,(05130h)		;90b4
	ld d,b			;90b7
	ld c,h			;90b8
	ld d,e			;90b9
	jr c,l90fbh		;90ba
	dec sp			;90bc
l90bdh:
	ld l,03dh		;90bd
	or (hl)			;90bf
	nop			;90c0
	ld (hl),a		;90c1
	add a,d			;90c2
	ld a,l			;90c3
	ld e,d			;90c4
	ld e,e			;90c5
	ld (hl),d		;90c6
	ld (hl),d		;90c7
	ld h,d			;90c8
	ld e,b			;90c9
	ld (hl),b		;90ca
	ld (hl),b		;90cb
	ld a,b			;90cc
	sub e			;90cd
	ld (hl),h		;90ce
	ld (hl),h		;90cf
	ld a,b			;90d0
	nop			;90d1
	nop			;90d2
	nop			;90d3
	ld h,c			;90d4
	ld h,b			;90d5
	nop			;90d6
	nop			;90d7
	ld e,(hl)		;90d8
	ld e,h			;90d9
	ld e,l			;90da
	ld h,e			;90db
	add a,b			;90dc
	ld (hl),a		;90dd
	add a,d			;90de
	ld a,l			;90df
	ld a,b			;90e0
	sbc a,e			;90e1
	cp a			;90e2
	sbc a,l			;90e3
	ld h,c			;90e4
	sbc a,d			;90e5
	ret nz			;90e6
	sbc a,(hl)		;90e7
	ld e,(hl)		;90e8
	sbc a,a			;90e9
	call nz,sub_80c6h	;90ea
	set 0,c			;90ed
	jp 0c799h		;90ef
	or b			;90f2
	xor a			;90f3
	sbc a,h			;90f4
	ret			;90f5
	or c			;90f6
	xor (hl)		;90f7
	call 0524fh		;90f8
l90fbh:
	push bc			;90fb
	jp nz,05150h		;90fc
	rl l			;90ff
	ld bc,0121dh		;9101
	dec c			;9104
	ld (bc),a		;9105
	ld e,013h		;9106
	cp c			;9108
	jr nz,$+37		;9109
	inc d			;910b
	call z,01b1ah		;910c
	ld (01c09h),hl		;910f
	ccf			;9112
	inc l			;9113
	ld de,02e0bh		;9114
	inc (hl)		;9117
	ld a,(bc)		;9118
	djnz $+53		;9119
	dec l			;911b
	inc bc			;911c
	inc b			;911d
	daa			;911e
	ld h,035h		;911f
	ld b,b			;9121
	inc h			;9122
	jr c,$+56		;9123
	ld b,c			;9125
	dec h			;9126
	jr nc,l9160h		;9127
	ld b,(hl)		;9129
	ld b,e			;912a
	xor l			;912b
	ld b,l			;912c
	ld a,03dh		;912d
	cp d			;912f
	cp (hl)			;9130
	cp l			;9131
	ld c,c			;9132
	ld c,d			;9133
	or (hl)			;9134
	ld c,h			;9135
	ld c,l			;9136
	ld c,h			;9137
	ld c,(hl)		;9138
	ld c,a			;9139
	ld d,d			;913a
	jp z,050cch		;913b
	ld d,c			;913e
	bit 0,a			;913f
	cp b			;9141
	ex af,af'		;9142
	ld b,04bh		;9143
	or h			;9145
	rra			;9146
	jr l9197h		;9147
	ld c,a			;9149
	cp e			;914a
	rlca			;914b
	call z,0b250h		;914c
	ld hl,00f16h		;914f
	ld (01739h),a		;9152
	inc c			;9155
	cpl			;9156
	ld a,(00ec8h)		;9157
	ld sp,019c8h		;915a
	dec b			;915d
	jr z,l919ch		;915e
l9160h:
	add hl,hl		;9160
	dec hl			;9161
	or l			;9162
	ld c,d			;9163
	dec sp			;9164
	ld b,d			;9165
	or a			;9166
	ld c,h			;9167
	ld hl,(052bch)		;9168
	jp z,0b344h		;916b
	ld d,c			;916e
	srl d			;916f
	ld a,(03a3ah)		;9171
	dec a			;9174
	dec a			;9175
	dec a			;9176
	dec a			;9177
	ld l,l			;9178
	ld l,h			;9179
	sub d			;917a
	and l			;917b
	sub (hl)		;917c
	sbc a,b			;917d
	sub b			;917e
	sub c			;917f
	ld a,041h		;9180
	dec sp			;9182
	ld a,(01118h)		;9183
	ld (de),a		;9186
	dec a			;9187
	push bc			;9188
	xor b			;9189
	xor c			;918a
	ld d,(hl)		;918b
	and d			;918c
	ld a,e			;918d
	ld (hl),c		;918e
	and b			;918f
	ld a,l			;9190
	ld a,b			;9191
	ld (hl),a		;9192
	add a,d			;9193
	ld e,e			;9194
	ld (hl),d		;9195
	ld (hl),d		;9196
l9197h:
	ld h,c			;9197
	ld e,b			;9198
	ld (hl),b		;9199
	ld (hl),b		;919a
	and l			;919b
l919ch:
	inc h			;919c
	daa			;919d
	ld hl,07d38h		;919e
	ld a,b			;91a1
	nop			;91a2
	nop			;91a3
	and d			;91a4
	ld h,c			;91a5
	ld h,c			;91a6
	and b			;91a7
	push bc			;91a8
	xor b			;91a9
	xor c			;91aa
	ld d,(hl)		;91ab
	add hl,sp		;91ac
	ld hl,02e31h		;91ad
	dec h			;91b0
	jr z,$+27		;91b1
	rra			;91b3
	jr nz,l91dfh		;91b4
	call 0cccah		;91b6
	ld hl,(0cbcch)		;91b9
	call z,0cc2ah		;91bc
	rr a			;91bf
	add hl,de		;91c1
	ld (0ca2fh),a		;91c2
	call 02033h		;91c5
	set 1,h			;91c8
	inc (hl)		;91ca
	call z,0cccbh		;91cb
	inc (hl)		;91ce
	call z,00000h		;91cf
	nop			;91d2
	nop			;91d3
	nop			;91d4
	nop			;91d5
	nop			;91d6
	nop			;91d7
	nop			;91d8
	nop			;91d9
	nop			;91da
	nop			;91db
	nop			;91dc
	nop			;91dd
	nop			;91de
l91dfh:
	nop			;91df
	ld d,a			;91e0
	nop			;91e1
	ld e,c			;91e2
	ld e,h			;91e3
	nop			;91e4
	ld e,(hl)		;91e5
	ld d,a			;91e6
	ld h,b			;91e7
	nop			;91e8
	ld h,c			;91e9
	ld h,b			;91ea
	nop			;91eb
	ld e,e			;91ec
	ld e,(hl)		;91ed
	nop			;91ee
	ld e,b			;91ef
	ld e,b			;91f0
	ld e,d			;91f1
	ld e,h			;91f2
	nop			;91f3
	ld e,a			;91f4
	ld e,l			;91f5
	ld h,c			;91f6
	ld e,d			;91f7
	ld e,(hl)		;91f8
	nop			;91f9
	ld e,c			;91fa
	nop			;91fb
	ld h,b			;91fc
	ld e,a			;91fd
	ld e,l			;91fe
	ld e,c			;91ff
	nop			;9200
	ld d,a			;9201
	ld e,d			;9202
	ld e,(hl)		;9203
	ld h,b			;9204
	ld e,l			;9205
	ld e,(hl)		;9206
	nop			;9207
	ld e,(hl)		;9208
	nop			;9209
	ld e,b			;920a
	ld e,a			;920b
	ld e,l			;920c
	ld d,a			;920d
	nop			;920e
	ld e,b			;920f
	nop			;9210
	nop			;9211
	ld e,l			;9212
	nop			;9213
	nop			;9214
	ld e,(hl)		;9215
	nop			;9216
	nop			;9217
	nop			;9218
	nop			;9219
	nop			;921a
	nop			;921b
	ld e,c			;921c
	nop			;921d
	nop			;921e
	ld h,d			;921f
	nop			;9220
	nop			;9221
	ld h,h			;9222
	nop			;9223
	ld d,a			;9224
	ld h,b			;9225
	nop			;9226
	ld e,e			;9227
	nop			;9228
	nop			;9229
	ld e,(hl)		;922a
	nop			;922b
	nop			;922c
	ld h,d			;922d
l922eh:
	nop			;922e
l922fh:
	ld h,b			;922f
	ld e,a			;9230
	nop			;9231
	nop			;9232
	ld h,b			;9233
	nop			;9234
	ld h,b			;9235
	ld d,a			;9236
	nop			;9237
	nop			;9238
	nop			;9239
	nop			;923a
	ld h,b			;923b
	nop			;923c
	ld e,a			;923d
	ld e,e			;923e
	nop			;923f
	ld h,b			;9240
	nop			;9241
	ld h,b			;9242
	nop			;9243
	nop			;9244
	nop			;9245
	nop			;9246
	ld e,(hl)		;9247
	nop			;9248
	ld h,b			;9249
	nop			;924a
	nop			;924b
	ld e,a			;924c
	nop			;924d
	ld e,h			;924e
	nop			;924f
	nop			;9250
	ld e,(hl)		;9251
	nop			;9252
	ld h,h			;9253
	ld e,c			;9254
	ld h,b			;9255
	ld e,a			;9256
	ld e,c			;9257
	ld h,b			;9258
	nop			;9259
	ld e,e			;925a
	nop			;925b
	nop			;925c
	ld e,(hl)		;925d
	nop			;925e
	nop			;925f
	nop			;9260
	nop			;9261
	nop			;9262
	ld h,d			;9263
	nop			;9264
	ld h,h			;9265
	nop			;9266
	ld h,b			;9267
	nop			;9268
	nop			;9269
	nop			;926a
	nop			;926b
	nop			;926c
	nop			;926d
	ld h,b			;926e
	nop			;926f
	ld e,a			;9270
	ld e,e			;9271
	ld h,b			;9272
	ld e,a			;9273
	ld e,b			;9274
	ld e,l			;9275
	ld e,h			;9276
	ld h,b			;9277
	ld e,e			;9278
	ld e,c			;9279
	ld h,c			;927a
	ld d,a			;927b
	ld h,b			;927c
	nop			;927d
	ld e,l			;927e
	ld e,a			;927f
	nop			;9280
	ld h,d			;9281
	nop			;9282
	nop			;9283
	nop			;9284
	nop			;9285
	nop			;9286
	ld e,l			;9287
	nop			;9288
	nop			;9289
	nop			;928a
	nop			;928b
	nop			;928c
	ld e,(hl)		;928d
	nop			;928e
	nop			;928f
	ld h,e			;9290
	ld h,b			;9291
	ld e,a			;9292
	nop			;9293
	ld e,(hl)		;9294
	ld h,e			;9295
	ld h,c			;9296
	ld e,(hl)		;9297
	ld h,b			;9298
	ld e,l			;9299
	ld e,h			;929a
	ld e,e			;929b
	ld e,e			;929c
	ld e,a			;929d
	ld e,c			;929e
	ld h,b			;929f
	ld h,b			;92a0
	ld h,d			;92a1
	nop			;92a2
	nop			;92a3
	nop			;92a4
	nop			;92a5
	nop			;92a6
	ld h,b			;92a7
	nop			;92a8
	ld h,b			;92a9
	ld e,a			;92aa
	nop			;92ab
	ld h,d			;92ac
	nop			;92ad
	nop			;92ae
	ld h,d			;92af
	nop			;92b0
	ld h,d			;92b1
	nop			;92b2
	ld h,b			;92b3
	ld h,d			;92b4
	ld h,b			;92b5
	ld h,h			;92b6
	nop			;92b7
	nop			;92b8
	nop			;92b9
	nop			;92ba
	ld h,d			;92bb
	nop			;92bc
	nop			;92bd
	ld h,b			;92be
	nop			;92bf
	ld h,d			;92c0
	nop			;92c1
	nop			;92c2
	nop			;92c3
	nop			;92c4
	nop			;92c5
	nop			;92c6
	nop			;92c7
	nop			;92c8
	nop			;92c9
	nop			;92ca
	nop			;92cb
	nop			;92cc
	nop			;92cd
	ld h,d			;92ce
	nop			;92cf
	or e			;92d0
	ld l,d			;92d1
	jr z,l92fdh		;92d2
	inc hl			;92d4
	inc h			;92d5
	dec h			;92d6
	ld h,017h		;92d7
	inc d			;92d9
	ld hl,06b22h		;92da
	ld l,h			;92dd
	ld l,l			;92de
	ld de,02f2eh		;92df
	jr nc,l9315h		;92e2
	inc (hl)		;92e4
	dec hl			;92e5
	inc l			;92e6
	dec l			;92e7
	jr nz,l92ech		;92e8
	dec b			;92ea
	ld (de),a		;92eb
l92ech:
	dec b			;92ec
	inc b			;92ed
	ld (bc),a		;92ee
	rlca			;92ef
	or e			;92f0
	daa			;92f1
	dec (hl)		;92f2
	ld (hl),023h		;92f3
	ld (03433h),a		;92f5
	ex af,af'		;92f8
	dec b			;92f9
	ld b,003h		;92fa
	dec b			;92fc
l92fdh:
	inc bc			;92fd
	ld (bc),a		;92fe
	rlca			;92ff
	scf			;9300
	cpl			;9301
	jr nc,l9335h		;9302
	scf			;9304
	dec hl			;9305
	inc l			;9306
	dec l			;9307
	inc bc			;9308
	dec b			;9309
	rlca			;930a
	jr c,l930eh		;930b
	inc b			;930d
l930eh:
	ex af,af'		;930e
	ld (bc),a		;930f
	or e			;9310
	ld l,d			;9311
	dec (hl)		;9312
	ld (hl),023h		;9313
l9315h:
	ld (03433h),a		;9315
	ld b,008h		;9318
	ld (bc),a		;931a
	rlca			;931b
	rlca			;931c
	ld b,004h		;931d
	ld (bc),a		;931f
	scf			;9320
	cpl			;9321
	jr nc,l9355h		;9322
	scf			;9324
	dec hl			;9325
	inc l			;9326
	dec l			;9327
	dec b			;9328
	inc bc			;9329
	rlca			;932a
	jr c,$+6		;932b
	ld b,002h		;932d
	ex af,af'		;932f
	ld l,027h		;9330
	ld a,(02336h)		;9332
l9335h:
	add hl,sp		;9335
	inc sp			;9336
	inc (hl)		;9337
	jr nz,l933fh		;9338
	ld (bc),a		;933a
	ld (de),a		;933b
	rlca			;933c
	inc bc			;933d
	inc b			;933e
l933fh:
	dec b			;933f
	or e			;9340
	daa			;9341
	dec (hl)		;9342
	ld (hl),023h		;9343
	ld b,a			;9345
	ld c,b			;9346
	ld c,c			;9347
	inc hl			;9348
	ld b,h			;9349
	ld b,l			;934a
	ld b,(hl)		;934b
	rlca			;934c
	ld (hl),d		;934d
	ld (hl),e		;934e
	ld l,(hl)		;934f
	ld d,b			;9350
	ld d,c			;9351
	ld d,d			;9352
	ld d,e			;9353
	ld c,h			;9354
l9355h:
	ld a,l			;9355
	ld c,(hl)		;9356
	ld c,a			;9357
	ld c,d			;9358
	ld c,d			;9359
	ld c,d			;935a
	ld c,e			;935b
	ld b,(hl)		;935c
	ld a,d			;935d
	ld (hl),h		;935e
	ld (hl),h		;935f
	ld d,c			;9360
	ld e,c			;9361
	ld e,d			;9362
	ld e,e			;9363
	ld d,(hl)		;9364
	ld d,a			;9365
	jr z,$+90		;9366
	ld d,h			;9368
	or h			;9369
	ld d,l			;936a
	ld d,(hl)		;936b
	ld b,(hl)		;936c
	add a,e			;936d
	ld c,l			;936e
	add a,h			;936f
	ld h,c			;9370
	ld h,d			;9371
	ld h,e			;9372
	ld h,h			;9373
	ld b,b			;9374
	ld b,c			;9375
	ld e,a			;9376
	ld h,b			;9377
	ld e,h			;9378
	ld e,l			;9379
	ld d,d			;937a
	ld e,(hl)		;937b
	sub l			;937c
	adc a,d			;937d
	adc a,a			;937e
	adc a,e			;937f
	ld l,b			;9380
	ld l,c			;9381
	scf			;9382
	ld c,l			;9383
	ld h,(hl)		;9384
	ld a,067h		;9385
	jr nc,l93eeh		;9387
	scf			;9389
	ld e,l			;938a
	ld d,d			;938b
	sub h			;938c
	jr z,$+43		;938d
	ld c,(hl)		;938f
	ld bc,00503h		;9390
	rlca			;9393
	ld (bc),a		;9394
	inc bc			;9395
	inc bc			;9396
	ex af,af'		;9397
	inc bc			;9398
	ld bc,00205h		;9399
	ld (bc),a		;939c
	ld b,002h		;939d
	inc bc			;939f
	ld (bc),a		;93a0
	inc bc			;93a1
	ld (bc),a		;93a2
	ld b,004h		;93a3
	inc bc			;93a5
	ex af,af'		;93a6
	inc bc			;93a7
	ld bc,00508h		;93a8
	rlca			;93ab
	dec b			;93ac
	ld bc,00204h		;93ad
	inc bc			;93b0
	ld b,002h		;93b1
	inc b			;93b3
	ld (bc),a		;93b4
	rlca			;93b5
	inc b			;93b6
	ld bc,00204h		;93b7
	ex af,af'		;93ba
	inc b			;93bb
	ld (bc),a		;93bc
	ld b,001h		;93bd
	ld b,002h		;93bf
	dec b			;93c1
	ld bc,00304h		;93c2
	ld b,004h		;93c5
	ld (bc),a		;93c7
	ld bc,00502h		;93c8
	ld b,002h		;93cb
	inc b			;93cd
	ld (bc),a		;93ce
	inc bc			;93cf
	rlca			;93d0
	inc bc			;93d1
	ld (bc),a		;93d2
	rlca			;93d3
	inc b			;93d4
l93d5h:
	dec b			;93d5
	ex af,af'		;93d6
	inc b			;93d7
	inc b			;93d8
	ld (bc),a		;93d9
	inc bc			;93da
	ld (bc),a		;93db
	ld b,007h		;93dc
	ld b,008h		;93de
	dec b			;93e0
	ld (bc),a		;93e1
	ld b,008h		;93e2
	ld b,008h		;93e4
	inc b			;93e6
	inc bc			;93e7
	ld bc,00403h		;93e8
	ld b,004h		;93eb
	ld (bc),a		;93ed
l93eeh:
	rlca			;93ee
	ex af,af'		;93ef
	inc bc			;93f0
	ld (bc),a		;93f1
	inc b			;93f2
	ld (hl),c		;93f3
	ld bc,00504h		;93f4
	ld (hl),b		;93f7
	ld (bc),a		;93f8
	rlca			;93f9
	inc b			;93fa
	djnz l9402h		;93fb
	inc b			;93fd
	inc bc			;93fe
	ld (bc),a		;93ff
	ld (hl),h		;9400
	ld a,b			;9401
l9402h:
	ld b,h			;9402
	ld a,c			;9403
	and c			;9404
	add a,d			;9405
	halt			;9406
	ld (hl),a		;9407
	ld b,002h		;9408
	ld b,075h		;940a
	inc bc			;940c
	ld bc,0a002h		;940d
	ld a,a			;9410
	add a,b			;9411
	add a,c			;9412
	add a,d			;9413
	dec d			;9414
	ld a,(hl)		;9415
	ld (de),a		;9416
	ld d,005h		;9417
	ld a,e			;9419
	ld a,h			;941a
	ld a,l			;941b
	ld b,e			;941c
	or e			;941d
	or h			;941e
	and d			;941f
	cpl			;9420
	jr nc,l9474h		;9421
	ld e,c			;9423
	dec hl			;9424
	inc l			;9425
	adc a,b			;9426
	adc a,c			;9427
	add a,l			;9428
	ld c,l			;9429
	or e			;942a
	add a,a			;942b
	and e			;942c
	ld d,c			;942d
	jr nc,l93d5h		;942e
	add a,l			;9430
	ld e,d			;9431
	ld e,e			;9432
	sub e			;9433
	adc a,a			;9434
	sub b			;9435
	sub c			;9436
	sub d			;9437
	or l			;9438
	adc a,h			;9439
	adc a,l			;943a
	adc a,(hl)		;943b
	and (hl)		;943c
	and a			;943d
	xor b			;943e
	xor c			;943f
	ld b,004h		;9440
	dec b			;9442
	ld (bc),a		;9443
	inc bc			;9444
	ld b,004h		;9445
	rlca			;9447
	inc b			;9448
	ld b,004h		;9449
	inc bc			;944b
	inc bc			;944c
	dec b			;944d
	ld (bc),a		;944e
	inc bc			;944f
	inc b			;9450
	ld b,002h		;9451
	ld b,004h		;9453
	ex af,af'		;9455
	inc bc			;9456
	inc b			;9457
	dec b			;9458
	ld (bc),a		;9459
	dec b			;945a
	ld (bc),a		;945b
	dec b			;945c
	inc b			;945d
	inc b			;945e
	ld b,003h		;945f
	ld b,020h		;9461
	ld hl,00407h		;9463
	ld h,027h		;9466
	inc bc			;9468
	ex af,af'		;9469
	inc l			;946a
	dec l			;946b
	ld (bc),a		;946c
	dec b			;946d
	cp a			;946e
	ret nz			;946f
	ld (02423h),hl		;9470
	dec h			;9473
l9474h:
	jr z,l949fh		;9474
	ld hl,(02e2bh)		;9476
	cpl			;9479
	jr nc,l94adh		;947a
	pop bc			;947c
	jp nz,0c4c3h		;947d
	ld (bc),a		;9480
	inc bc			;9481
	dec b			;9482
	ld (bc),a		;9483
	inc bc			;9484
	ld bc,00304h		;9485
	inc bc			;9488
	ld (bc),a		;9489
	inc bc			;948a
	ld (bc),a		;948b
	inc bc			;948c
	inc b			;948d
	ld b,004h		;948e
	ld bc,00806h		;9490
	inc bc			;9493
	ld b,002h		;9494
	ld (bc),a		;9496
	inc b			;9497
	rlca			;9498
	ex af,af'		;9499
	ld (bc),a		;949a
	ld b,002h		;949b
	inc b			;949d
	dec b			;949e
l949fh:
	ld b,004h		;949f
	inc bc			;94a1
	ld (bc),a		;94a2
	ld b,001h		;94a3
	dec b			;94a5
	inc bc			;94a6
	dec b			;94a7
	ld b,003h		;94a8
	ld (bc),a		;94aa
	ld b,008h		;94ab
l94adh:
	ld (bc),a		;94ad
	inc b			;94ae
	and b			;94af
	ld (bc),a		;94b0
	dec b			;94b1
	rlca			;94b2
	inc bc			;94b3
	ld b,003h		;94b4
	ld b,004h		;94b6
	inc bc			;94b8
	inc b			;94b9
	dec b			;94ba
	ld b,0a1h		;94bb
	or b			;94bd
	or c			;94be
	and d			;94bf
	inc b			;94c0
	ld b,04ch		;94c1
	ld c,l			;94c3
	inc bc			;94c4
	inc b			;94c5
	ld b,(hl)		;94c6
	ld b,a			;94c7
	dec b			;94c8
	ex af,af'		;94c9
	ld b,b			;94ca
	ld b,c			;94cb
	and e			;94cc
	or d			;94cd
	and h			;94ce
	and l			;94cf
	ld c,(hl)		;94d0
	ld c,a			;94d1
	ld d,b			;94d2
	ld d,c			;94d3
	ld c,b			;94d4
	ld c,c			;94d5
	ld c,d			;94d6
	ld c,e			;94d7
	ld b,d			;94d8
	ld b,e			;94d9
	ld b,h			;94da
	ld b,l			;94db
	and (hl)		;94dc
	and a			;94dd
	xor b			;94de
	xor c			;94df
	inc bc			;94e0
	ld (bc),a		;94e1
	dec b			;94e2
	ld (bc),a		;94e3
	ld (bc),a		;94e4
	inc b			;94e5
	ld b,007h		;94e6
	ld bc,00503h		;94e8
	inc bc			;94eb
	ld l,e			;94ec
	ld l,h			;94ed
	ld l,l			;94ee
	ld de,00207h		;94ef
	ex af,af'		;94f2
	ld b,002h		;94f3
	ld b,003h		;94f5
	ex af,af'		;94f7
	dec b			;94f8
	rlca			;94f9
	ld (bc),a		;94fa
	inc b			;94fb
	ld b,003h		;94fc
	inc b			;94fe
	ex af,af'		;94ff
	inc b			;9500
	ld (bc),a		;9501
	ld b,010h		;9502
	dec b			;9504
	inc bc			;9505
	dec b			;9506
	ld (hl),b		;9507
	dec b			;9508
	ld (bc),a		;9509
	dec b			;950a
	ld (hl),c		;950b
	dec b			;950c
	ld (hl),d		;950d
	ld (hl),e		;950e
	ld (hl),h		;950f
	dec b			;9510
	ld b,003h		;9511
	ld (hl),l		;9513
	ld b,e			;9514
	ld (07776h),a		;9515
	ld (hl),h		;9518
	ld a,b			;9519
	ld (hl),h		;951a
	ld a,c			;951b
	ld l,07ah		;951c
	ld (hl),h		;951e
	ld (hl),h		;951f
	inc b			;9520
	ld a,e			;9521
	ld a,h			;9522
	ld a,l			;9523
	dec d			;9524
	ld a,(hl)		;9525
	dec b			;9526
	rlca			;9527
	ld a,a			;9528
	add a,b			;9529
	add a,c			;952a
	inc a			;952b
	ld l,083h		;952c
	ld c,l			;952e
	add a,h			;952f
	add a,l			;9530
	add a,(hl)		;9531
	or b			;9532
	add a,a			;9533
	dec hl			;9534
	inc l			;9535
	adc a,b			;9536
	adc a,c			;9537
	cpl			;9538
	jr nc,l958ch		;9539
	ld e,c			;953b
	add hl,hl		;953c
	adc a,d			;953d
	ld c,(hl)		;953e
	adc a,e			;953f
	or d			;9540
	adc a,h			;9541
	adc a,l			;9542
	adc a,(hl)		;9543
	ld c,(hl)		;9544
	sub b			;9545
	sub c			;9546
	sub d			;9547
	add a,l			;9548
	ld e,d			;9549
	ld e,e			;954a
	sub e			;954b
	sub h			;954c
	jr z,l9578h		;954d
	ld c,(hl)		;954f
	rla			;9550
	inc d			;9551
	ld hl,02322h		;9552
	inc h			;9555
	dec h			;9556
	ld h,0b0h		;9557
	ld l,d			;9559
	jr z,l9585h		;955a
	nop			;955c
	nop			;955d
	nop			;955e
	nop			;955f
	jr nz,$+4		;9560
	dec b			;9562
	ld b,023h		;9563
	dec hl			;9565
	inc l			;9566
	dec l			;9567
	ld l,02fh		;9568
	jr nc,l959dh		;956a
	nop			;956c
	nop			;956d
	nop			;956e
	nop			;956f
	ld (bc),a		;9570
	inc b			;9571
	rlca			;9572
	ex af,af'		;9573
	inc hl			;9574
	add a,d			;9575
	inc sp			;9576
	inc (hl)		;9577
l9578h:
	or b			;9578
	ld l,d			;9579
	dec (hl)		;957a
	ld (hl),000h		;957b
	nop			;957d
	nop			;957e
	nop			;957f
	dec b			;9580
	inc bc			;9581
	ld b,038h		;9582
	scf			;9584
l9585h:
	dec hl			;9585
	inc l			;9586
	dec l			;9587
	scf			;9588
	cpl			;9589
	jr nc,l95bdh		;958a
l958ch:
	nop			;958c
	nop			;958d
	nop			;958e
	nop			;958f
	ld bc,00302h		;9590
	jr c,$+57		;9593
	dec hl			;9595
	inc l			;9596
	dec l			;9597
	scf			;9598
	cpl			;9599
	jr nc,l95cdh		;959a
	nop			;959c
l959dh:
	nop			;959d
	nop			;959e
	nop			;959f
	jr nz,l95a7h		;95a0
	ld (bc),a		;95a2
	inc bc			;95a3
	inc hl			;95a4
	add hl,sp		;95a5
	inc sp			;95a6
l95a7h:
	inc (hl)		;95a7
	ld l,06ah		;95a8
	dec (hl)		;95aa
	ld (hl),000h		;95ab
	nop			;95ad
	nop			;95ae
	nop			;95af
	ld (bc),a		;95b0
	ld bc,00306h		;95b1
	dec sp			;95b4
	inc a			;95b5
	dec a			;95b6
	ld a,074h		;95b7
	ld b,b			;95b9
	ld b,c			;95ba
	ld b,d			;95bb
	nop			;95bc
l95bdh:
	nop			;95bd
	nop			;95be
	nop			;95bf
	ld b,e			;95c0
	ld b,h			;95c1
	ld b,l			;95c2
	ld b,(hl)		;95c3
	inc hl			;95c4
	ld b,a			;95c5
	ld c,b			;95c6
	ld c,c			;95c7
	or b			;95c8
	ld l,d			;95c9
	dec (hl)		;95ca
	ld (hl),000h		;95cb
l95cdh:
	nop			;95cd
	nop			;95ce
	nop			;95cf
	ld c,d			;95d0
	ld c,d			;95d1
	ld c,d			;95d2
	ld c,e			;95d3
	ld c,h			;95d4
	ld c,l			;95d5
	ld c,(hl)		;95d6
	ld c,a			;95d7
	ld d,b			;95d8
	ld d,c			;95d9
	ld d,d			;95da
	ld d,e			;95db
	nop			;95dc
	nop			;95dd
	nop			;95de
	nop			;95df
	ld d,h			;95e0
	or c			;95e1
	ld d,l			;95e2
	ld d,(hl)		;95e3
	ld d,(hl)		;95e4
	ld d,a			;95e5
	jr z,l9640h		;95e6
	ld d,c			;95e8
	ld e,c			;95e9
	ld e,d			;95ea
	ld e,e			;95eb
	nop			;95ec
	nop			;95ed
	nop			;95ee
	nop			;95ef
	ld e,h			;95f0
	ld e,l			;95f1
	ld d,d			;95f2
	ld e,(hl)		;95f3
	ld b,b			;95f4
	ld b,c			;95f5
	ld e,a			;95f6
	ld h,b			;95f7
	ld h,c			;95f8
	ld h,d			;95f9
	ld h,e			;95fa
	ld h,h			;95fb
	nop			;95fc
	nop			;95fd
	nop			;95fe
	nop			;95ff
	ld h,l			;9600
	scf			;9601
	ld e,l			;9602
	ld d,d			;9603
	ld h,(hl)		;9604
	ld a,067h		;9605
	jr nc,l9671h		;9607
	ld l,c			;9609
	scf			;960a
	ld sp,00000h		;960b
	nop			;960e
	nop			;960f
	ld (hl),h		;9610
	ld b,b			;9611
	ld b,c			;9612
	ld b,d			;9613
	dec sp			;9614
	inc a			;9615
	dec a			;9616
	ld a,001h		;9617
	inc b			;9619
	ld b,004h		;961a
	ld (bc),a		;961c
	inc bc			;961d
	inc bc			;961e
	ld (bc),a		;961f
	inc b			;9620
	dec b			;9621
	inc bc			;9622
	rlca			;9623
	inc hl			;9624
	add a,d			;9625
	inc sp			;9626
	inc (hl)		;9627
	or b			;9628
	ld l,d			;9629
	dec (hl)		;962a
	ld (hl),000h		;962b
	nop			;962d
	nop			;962e
	nop			;962f
	rlca			;9630
	inc bc			;9631
	ld (bc),a		;9632
	rlca			;9633
	ld (bc),a		;9634
	inc b			;9635
	ld bc,00308h		;9636
	ld (bc),a		;9639
	ld b,002h		;963a
	ld (bc),a		;963c
	inc b			;963d
	inc bc			;963e
	inc b			;963f
l9640h:
	rst 38h			;9640
	rst 38h			;9641
	rst 38h			;9642
	rst 38h			;9643
	rst 38h			;9644
	rst 38h			;9645
	rst 38h			;9646
	rst 38h			;9647
	rst 38h			;9648
	rst 38h			;9649
	rst 38h			;964a
	rst 38h			;964b
	rst 38h			;964c
	rst 38h			;964d
	rst 38h			;964e
	rst 38h			;964f
	rst 38h			;9650
	rst 38h			;9651
	rst 38h			;9652
	rst 38h			;9653
	rst 38h			;9654
	rst 38h			;9655
	rst 38h			;9656
	rst 38h			;9657
	rst 38h			;9658
	rst 38h			;9659
	rst 38h			;965a
	rst 38h			;965b
	rst 38h			;965c
	rst 38h			;965d
	rst 38h			;965e
	rst 38h			;965f
	rst 38h			;9660
	rst 38h			;9661
	rst 38h			;9662
	rst 38h			;9663
	rst 38h			;9664
	rst 38h			;9665
	rst 38h			;9666
	rst 38h			;9667
	rst 38h			;9668
	rst 38h			;9669
	rst 38h			;966a
	rst 38h			;966b
	rst 38h			;966c
	rst 38h			;966d
	rst 38h			;966e
	rst 38h			;966f
	rst 38h			;9670
l9671h:
	rst 38h			;9671
	rst 38h			;9672
	rst 38h			;9673
	rst 38h			;9674
	rst 38h			;9675
	rst 38h			;9676
	rst 38h			;9677
	rst 38h			;9678
	rst 38h			;9679
	rst 38h			;967a
	rst 38h			;967b
	rst 38h			;967c
	rst 38h			;967d
	rst 38h			;967e
	rst 38h			;967f
	rst 38h			;9680
	rst 38h			;9681
	rst 38h			;9682
	rst 38h			;9683
	rst 38h			;9684
	rst 38h			;9685
	rst 38h			;9686
	rst 38h			;9687
	rst 38h			;9688
	rst 38h			;9689
	rst 38h			;968a
	rst 38h			;968b
	rst 38h			;968c
	rst 38h			;968d
	rst 38h			;968e
	rst 38h			;968f
	rst 38h			;9690
	rst 38h			;9691
	rst 38h			;9692
	rst 38h			;9693
	rst 38h			;9694
	rst 38h			;9695
	rst 38h			;9696
	rst 38h			;9697
	rst 38h			;9698
	rst 38h			;9699
	rst 38h			;969a
	rst 38h			;969b
	rst 38h			;969c
	rst 38h			;969d
	rst 38h			;969e
	rst 38h			;969f
	rst 38h			;96a0
	rst 38h			;96a1
	rst 38h			;96a2
	rst 38h			;96a3
	rst 38h			;96a4
	rst 38h			;96a5
	rst 38h			;96a6
	rst 38h			;96a7
	rst 38h			;96a8
	rst 38h			;96a9
	rst 38h			;96aa
	rst 38h			;96ab
	rst 38h			;96ac
	rst 38h			;96ad
	rst 38h			;96ae
	rst 38h			;96af
	rst 38h			;96b0
	rst 38h			;96b1
	rst 38h			;96b2
	rst 38h			;96b3
	rst 38h			;96b4
	rst 38h			;96b5
	rst 38h			;96b6
	rst 38h			;96b7
	rst 38h			;96b8
	rst 38h			;96b9
	rst 38h			;96ba
	rst 38h			;96bb
	rst 38h			;96bc
	rst 38h			;96bd
	rst 38h			;96be
	rst 38h			;96bf
	rst 38h			;96c0
	rst 38h			;96c1
	rst 38h			;96c2
	rst 38h			;96c3
	rst 38h			;96c4
	rst 38h			;96c5
	rst 38h			;96c6
	rst 38h			;96c7
	rst 38h			;96c8
	rst 38h			;96c9
	rst 38h			;96ca
	rst 38h			;96cb
	rst 38h			;96cc
	rst 38h			;96cd
	rst 38h			;96ce
	rst 38h			;96cf
	rst 38h			;96d0
	rst 38h			;96d1
	rst 38h			;96d2
	rst 38h			;96d3
	rst 38h			;96d4
	rst 38h			;96d5
	rst 38h			;96d6
	rst 38h			;96d7
	rst 38h			;96d8
	rst 38h			;96d9
	rst 38h			;96da
	rst 38h			;96db
	rst 38h			;96dc
	rst 38h			;96dd
	rst 38h			;96de
	rst 38h			;96df
	rst 38h			;96e0
	rst 38h			;96e1
	rst 38h			;96e2
	rst 38h			;96e3
	rst 38h			;96e4
	rst 38h			;96e5
	rst 38h			;96e6
	rst 38h			;96e7
	rst 38h			;96e8
	rst 38h			;96e9
	rst 38h			;96ea
	rst 38h			;96eb
	rst 38h			;96ec
	rst 38h			;96ed
	rst 38h			;96ee
	rst 38h			;96ef
	rst 38h			;96f0
	rst 38h			;96f1
	rst 38h			;96f2
	rst 38h			;96f3
	rst 38h			;96f4
	rst 38h			;96f5
	rst 38h			;96f6
	rst 38h			;96f7
	rst 38h			;96f8
	rst 38h			;96f9
	rst 38h			;96fa
	rst 38h			;96fb
	rst 38h			;96fc
	rst 38h			;96fd
	rst 38h			;96fe
	rst 38h			;96ff
	rst 38h			;9700
	rst 38h			;9701
	rst 38h			;9702
	rst 38h			;9703
	rst 38h			;9704
	rst 38h			;9705
	rst 38h			;9706
	rst 38h			;9707
	rst 38h			;9708
	rst 38h			;9709
	rst 38h			;970a
	rst 38h			;970b
	rst 38h			;970c
	rst 38h			;970d
	rst 38h			;970e
	rst 38h			;970f
	rst 38h			;9710
	rst 38h			;9711
	rst 38h			;9712
	rst 38h			;9713
	rst 38h			;9714
	rst 38h			;9715
	rst 38h			;9716
	rst 38h			;9717
	rst 38h			;9718
	rst 38h			;9719
	rst 38h			;971a
	rst 38h			;971b
	rst 38h			;971c
	rst 38h			;971d
	rst 38h			;971e
	rst 38h			;971f
	rst 38h			;9720
	rst 38h			;9721
	rst 38h			;9722
	rst 38h			;9723
	rst 38h			;9724
	rst 38h			;9725
	rst 38h			;9726
	rst 38h			;9727
	rst 38h			;9728
	rst 38h			;9729
	rst 38h			;972a
	rst 38h			;972b
	rst 38h			;972c
	rst 38h			;972d
	rst 38h			;972e
	rst 38h			;972f
	rst 38h			;9730
	rst 38h			;9731
	rst 38h			;9732
	rst 38h			;9733
	rst 38h			;9734
	rst 38h			;9735
	rst 38h			;9736
	rst 38h			;9737
	rst 38h			;9738
	rst 38h			;9739
	rst 38h			;973a
	rst 38h			;973b
	rst 38h			;973c
	rst 38h			;973d
	rst 38h			;973e
	rst 38h			;973f
	rst 38h			;9740
	rst 38h			;9741
	rst 38h			;9742
	rst 38h			;9743
	rst 38h			;9744
	rst 38h			;9745
	rst 38h			;9746
	rst 38h			;9747
	rst 38h			;9748
	rst 38h			;9749
	rst 38h			;974a
	rst 38h			;974b
	rst 38h			;974c
	rst 38h			;974d
	rst 38h			;974e
	rst 38h			;974f
	rst 38h			;9750
	rst 38h			;9751
	rst 38h			;9752
	rst 38h			;9753
	rst 38h			;9754
	rst 38h			;9755
	rst 38h			;9756
	rst 38h			;9757
	rst 38h			;9758
	rst 38h			;9759
	rst 38h			;975a
	rst 38h			;975b
	rst 38h			;975c
	rst 38h			;975d
	rst 38h			;975e
	rst 38h			;975f
	rst 38h			;9760
	rst 38h			;9761
	rst 38h			;9762
	rst 38h			;9763
	rst 38h			;9764
	rst 38h			;9765
	rst 38h			;9766
	rst 38h			;9767
	rst 38h			;9768
	rst 38h			;9769
	rst 38h			;976a
	rst 38h			;976b
	rst 38h			;976c
	rst 38h			;976d
	rst 38h			;976e
	rst 38h			;976f
	rst 38h			;9770
	rst 38h			;9771
	rst 38h			;9772
	rst 38h			;9773
	rst 38h			;9774
	rst 38h			;9775
	rst 38h			;9776
	rst 38h			;9777
	rst 38h			;9778
	rst 38h			;9779
	rst 38h			;977a
	rst 38h			;977b
	rst 38h			;977c
	rst 38h			;977d
	rst 38h			;977e
	rst 38h			;977f
	rst 38h			;9780
	rst 38h			;9781
	rst 38h			;9782
	rst 38h			;9783
	rst 38h			;9784
	rst 38h			;9785
	rst 38h			;9786
	rst 38h			;9787
	rst 38h			;9788
	rst 38h			;9789
	rst 38h			;978a
	rst 38h			;978b
	rst 38h			;978c
	rst 38h			;978d
	rst 38h			;978e
	rst 38h			;978f
	rst 38h			;9790
	rst 38h			;9791
	rst 38h			;9792
	rst 38h			;9793
	rst 38h			;9794
	rst 38h			;9795
	rst 38h			;9796
	rst 38h			;9797
	rst 38h			;9798
	rst 38h			;9799
	rst 38h			;979a
	rst 38h			;979b
	rst 38h			;979c
	rst 38h			;979d
	rst 38h			;979e
	rst 38h			;979f
	rst 38h			;97a0
	rst 38h			;97a1
	rst 38h			;97a2
	rst 38h			;97a3
	rst 38h			;97a4
	rst 38h			;97a5
	rst 38h			;97a6
	rst 38h			;97a7
	rst 38h			;97a8
	rst 38h			;97a9
	rst 38h			;97aa
	rst 38h			;97ab
	rst 38h			;97ac
	rst 38h			;97ad
	rst 38h			;97ae
	rst 38h			;97af
	rst 38h			;97b0
	rst 38h			;97b1
	rst 38h			;97b2
	rst 38h			;97b3
	rst 38h			;97b4
	rst 38h			;97b5
	rst 38h			;97b6
	rst 38h			;97b7
	rst 38h			;97b8
	rst 38h			;97b9
	rst 38h			;97ba
	rst 38h			;97bb
	rst 38h			;97bc
	rst 38h			;97bd
	rst 38h			;97be
	rst 38h			;97bf
	rst 38h			;97c0
	rst 38h			;97c1
	rst 38h			;97c2
	rst 38h			;97c3
	rst 38h			;97c4
	rst 38h			;97c5
	rst 38h			;97c6
	rst 38h			;97c7
	rst 38h			;97c8
	rst 38h			;97c9
	rst 38h			;97ca
	rst 38h			;97cb
	rst 38h			;97cc
	rst 38h			;97cd
	rst 38h			;97ce
	rst 38h			;97cf
	rst 38h			;97d0
	rst 38h			;97d1
	rst 38h			;97d2
	rst 38h			;97d3
	rst 38h			;97d4
	rst 38h			;97d5
	rst 38h			;97d6
	rst 38h			;97d7
	rst 38h			;97d8
	rst 38h			;97d9
	rst 38h			;97da
	rst 38h			;97db
	rst 38h			;97dc
	rst 38h			;97dd
	rst 38h			;97de
	rst 38h			;97df
	rst 38h			;97e0
	rst 38h			;97e1
	rst 38h			;97e2
	rst 38h			;97e3
	rst 38h			;97e4
	rst 38h			;97e5
	rst 38h			;97e6
	rst 38h			;97e7
	rst 38h			;97e8
	rst 38h			;97e9
	rst 38h			;97ea
	rst 38h			;97eb
	rst 38h			;97ec
	rst 38h			;97ed
	rst 38h			;97ee
	rst 38h			;97ef
	rst 38h			;97f0
	rst 38h			;97f1
	rst 38h			;97f2
	rst 38h			;97f3
	rst 38h			;97f4
	rst 38h			;97f5
	rst 38h			;97f6
	rst 38h			;97f7
	rst 38h			;97f8
	rst 38h			;97f9
	rst 38h			;97fa
	rst 38h			;97fb
	rst 38h			;97fc
	rst 38h			;97fd
	rst 38h			;97fe
	rst 38h			;97ff
	rst 38h			;9800
	rst 38h			;9801
	rst 38h			;9802
	rst 38h			;9803
	rst 38h			;9804
	rst 38h			;9805
	rst 38h			;9806
	rst 38h			;9807
	rst 38h			;9808
	rst 38h			;9809
	rst 38h			;980a
	rst 38h			;980b
	rst 38h			;980c
	rst 38h			;980d
	rst 38h			;980e
	rst 38h			;980f
	rst 38h			;9810
	rst 38h			;9811
	rst 38h			;9812
	rst 38h			;9813
	rst 38h			;9814
	rst 38h			;9815
	rst 38h			;9816
	rst 38h			;9817
	rst 38h			;9818
	rst 38h			;9819
	rst 38h			;981a
	rst 38h			;981b
	rst 38h			;981c
	rst 38h			;981d
	rst 38h			;981e
	rst 38h			;981f
	rst 38h			;9820
	rst 38h			;9821
	rst 38h			;9822
	rst 38h			;9823
	rst 38h			;9824
	rst 38h			;9825
	rst 38h			;9826
	rst 38h			;9827
	rst 38h			;9828
	rst 38h			;9829
	rst 38h			;982a
	rst 38h			;982b
	rst 38h			;982c
	rst 38h			;982d
	rst 38h			;982e
	rst 38h			;982f
	rst 38h			;9830
	rst 38h			;9831
	rst 38h			;9832
	rst 38h			;9833
	rst 38h			;9834
	rst 38h			;9835
	rst 38h			;9836
	rst 38h			;9837
	rst 38h			;9838
	rst 38h			;9839
	rst 38h			;983a
	rst 38h			;983b
	rst 38h			;983c
	rst 38h			;983d
	rst 38h			;983e
	rst 38h			;983f
	rst 38h			;9840
	rst 38h			;9841
	rst 38h			;9842
	rst 38h			;9843
	rst 38h			;9844
	rst 38h			;9845
	rst 38h			;9846
	rst 38h			;9847
	rst 38h			;9848
	rst 38h			;9849
	rst 38h			;984a
	rst 38h			;984b
	rst 38h			;984c
	rst 38h			;984d
	rst 38h			;984e
	rst 38h			;984f
	rst 38h			;9850
	rst 38h			;9851
	rst 38h			;9852
	rst 38h			;9853
	rst 38h			;9854
	rst 38h			;9855
	rst 38h			;9856
	rst 38h			;9857
	rst 38h			;9858
	rst 38h			;9859
	rst 38h			;985a
	rst 38h			;985b
	rst 38h			;985c
	rst 38h			;985d
	rst 38h			;985e
	rst 38h			;985f
	rst 38h			;9860
	rst 38h			;9861
	rst 38h			;9862
	rst 38h			;9863
	rst 38h			;9864
	rst 38h			;9865
	rst 38h			;9866
	rst 38h			;9867
	rst 38h			;9868
	rst 38h			;9869
	rst 38h			;986a
	rst 38h			;986b
	rst 38h			;986c
	rst 38h			;986d
	rst 38h			;986e
	rst 38h			;986f
	rst 38h			;9870
	rst 38h			;9871
	rst 38h			;9872
	rst 38h			;9873
	rst 38h			;9874
	rst 38h			;9875
	rst 38h			;9876
	rst 38h			;9877
	rst 38h			;9878
	rst 38h			;9879
	rst 38h			;987a
	rst 38h			;987b
	rst 38h			;987c
	rst 38h			;987d
	rst 38h			;987e
	rst 38h			;987f
	rst 38h			;9880
	rst 38h			;9881
	rst 38h			;9882
	rst 38h			;9883
	rst 38h			;9884
	rst 38h			;9885
	rst 38h			;9886
	rst 38h			;9887
	rst 38h			;9888
	rst 38h			;9889
	rst 38h			;988a
	rst 38h			;988b
	rst 38h			;988c
	rst 38h			;988d
	rst 38h			;988e
	rst 38h			;988f
	rst 38h			;9890
	rst 38h			;9891
	rst 38h			;9892
	rst 38h			;9893
	rst 38h			;9894
	rst 38h			;9895
	rst 38h			;9896
	rst 38h			;9897
	rst 38h			;9898
	rst 38h			;9899
	rst 38h			;989a
	rst 38h			;989b
	rst 38h			;989c
	rst 38h			;989d
	rst 38h			;989e
	rst 38h			;989f
	rst 38h			;98a0
	rst 38h			;98a1
	rst 38h			;98a2
	rst 38h			;98a3
	rst 38h			;98a4
	rst 38h			;98a5
	rst 38h			;98a6
	rst 38h			;98a7
	rst 38h			;98a8
	rst 38h			;98a9
	rst 38h			;98aa
	rst 38h			;98ab
	rst 38h			;98ac
	rst 38h			;98ad
	rst 38h			;98ae
	rst 38h			;98af
	rst 38h			;98b0
	rst 38h			;98b1
	rst 38h			;98b2
	rst 38h			;98b3
	rst 38h			;98b4
	rst 38h			;98b5
	rst 38h			;98b6
	rst 38h			;98b7
	rst 38h			;98b8
	rst 38h			;98b9
	rst 38h			;98ba
	rst 38h			;98bb
	rst 38h			;98bc
	rst 38h			;98bd
	rst 38h			;98be
	rst 38h			;98bf
	rst 38h			;98c0
	rst 38h			;98c1
	rst 38h			;98c2
	rst 38h			;98c3
	rst 38h			;98c4
	rst 38h			;98c5
	rst 38h			;98c6
	rst 38h			;98c7
	rst 38h			;98c8
	rst 38h			;98c9
	rst 38h			;98ca
	rst 38h			;98cb
	rst 38h			;98cc
	rst 38h			;98cd
	rst 38h			;98ce
	rst 38h			;98cf
	rst 38h			;98d0
	rst 38h			;98d1
	rst 38h			;98d2
	rst 38h			;98d3
	rst 38h			;98d4
	rst 38h			;98d5
	rst 38h			;98d6
	rst 38h			;98d7
	rst 38h			;98d8
	rst 38h			;98d9
	rst 38h			;98da
	rst 38h			;98db
	rst 38h			;98dc
	rst 38h			;98dd
	rst 38h			;98de
	rst 38h			;98df
	rst 38h			;98e0
	rst 38h			;98e1
	rst 38h			;98e2
	rst 38h			;98e3
	rst 38h			;98e4
	rst 38h			;98e5
	rst 38h			;98e6
	rst 38h			;98e7
	rst 38h			;98e8
	rst 38h			;98e9
	rst 38h			;98ea
	rst 38h			;98eb
	rst 38h			;98ec
	rst 38h			;98ed
	rst 38h			;98ee
	rst 38h			;98ef
	rst 38h			;98f0
	rst 38h			;98f1
	rst 38h			;98f2
	rst 38h			;98f3
	rst 38h			;98f4
	rst 38h			;98f5
	rst 38h			;98f6
	rst 38h			;98f7
	rst 38h			;98f8
	rst 38h			;98f9
	rst 38h			;98fa
	rst 38h			;98fb
	rst 38h			;98fc
	rst 38h			;98fd
	rst 38h			;98fe
	rst 38h			;98ff
	rst 38h			;9900
	rst 38h			;9901
	rst 38h			;9902
	rst 38h			;9903
	rst 38h			;9904
	rst 38h			;9905
	rst 38h			;9906
	rst 38h			;9907
	rst 38h			;9908
	rst 38h			;9909
	rst 38h			;990a
	rst 38h			;990b
	rst 38h			;990c
	rst 38h			;990d
	rst 38h			;990e
	rst 38h			;990f
	rst 38h			;9910
	rst 38h			;9911
	rst 38h			;9912
	rst 38h			;9913
	rst 38h			;9914
	rst 38h			;9915
	rst 38h			;9916
	rst 38h			;9917
	rst 38h			;9918
	rst 38h			;9919
	rst 38h			;991a
	rst 38h			;991b
	rst 38h			;991c
	rst 38h			;991d
	rst 38h			;991e
	rst 38h			;991f
	rst 38h			;9920
	rst 38h			;9921
	rst 38h			;9922
	rst 38h			;9923
	rst 38h			;9924
	rst 38h			;9925
	rst 38h			;9926
	rst 38h			;9927
	rst 38h			;9928
	rst 38h			;9929
	rst 38h			;992a
	rst 38h			;992b
	rst 38h			;992c
	rst 38h			;992d
	rst 38h			;992e
	rst 38h			;992f
	rst 38h			;9930
	rst 38h			;9931
	rst 38h			;9932
	rst 38h			;9933
	rst 38h			;9934
	rst 38h			;9935
	rst 38h			;9936
	rst 38h			;9937
	rst 38h			;9938
	rst 38h			;9939
	rst 38h			;993a
	rst 38h			;993b
	rst 38h			;993c
	rst 38h			;993d
	rst 38h			;993e
	rst 38h			;993f
	rst 38h			;9940
	rst 38h			;9941
	rst 38h			;9942
	rst 38h			;9943
	rst 38h			;9944
	rst 38h			;9945
	rst 38h			;9946
	rst 38h			;9947
	rst 38h			;9948
	rst 38h			;9949
	rst 38h			;994a
	rst 38h			;994b
	rst 38h			;994c
	rst 38h			;994d
	rst 38h			;994e
	rst 38h			;994f
	rst 38h			;9950
	rst 38h			;9951
	rst 38h			;9952
	rst 38h			;9953
	rst 38h			;9954
	rst 38h			;9955
	rst 38h			;9956
	rst 38h			;9957
	rst 38h			;9958
	rst 38h			;9959
	rst 38h			;995a
	rst 38h			;995b
	rst 38h			;995c
	rst 38h			;995d
	rst 38h			;995e
	rst 38h			;995f
	rst 38h			;9960
	rst 38h			;9961
	rst 38h			;9962
	rst 38h			;9963
	rst 38h			;9964
	rst 38h			;9965
	rst 38h			;9966
	rst 38h			;9967
	rst 38h			;9968
	rst 38h			;9969
	rst 38h			;996a
	rst 38h			;996b
	rst 38h			;996c
	rst 38h			;996d
	rst 38h			;996e
	rst 38h			;996f
	rst 38h			;9970
	rst 38h			;9971
	rst 38h			;9972
	rst 38h			;9973
	rst 38h			;9974
	rst 38h			;9975
	rst 38h			;9976
	rst 38h			;9977
	rst 38h			;9978
	rst 38h			;9979
	rst 38h			;997a
	rst 38h			;997b
	rst 38h			;997c
	rst 38h			;997d
	rst 38h			;997e
	rst 38h			;997f
	rst 38h			;9980
	rst 38h			;9981
	rst 38h			;9982
	rst 38h			;9983
	rst 38h			;9984
	rst 38h			;9985
	rst 38h			;9986
	rst 38h			;9987
	rst 38h			;9988
	rst 38h			;9989
	rst 38h			;998a
	rst 38h			;998b
	rst 38h			;998c
	rst 38h			;998d
	rst 38h			;998e
	rst 38h			;998f
	rst 38h			;9990
	rst 38h			;9991
	rst 38h			;9992
	rst 38h			;9993
	rst 38h			;9994
	rst 38h			;9995
	rst 38h			;9996
	rst 38h			;9997
	rst 38h			;9998
	rst 38h			;9999
	rst 38h			;999a
	rst 38h			;999b
	rst 38h			;999c
	rst 38h			;999d
	rst 38h			;999e
	rst 38h			;999f
	rst 38h			;99a0
	rst 38h			;99a1
	rst 38h			;99a2
	rst 38h			;99a3
	rst 38h			;99a4
	rst 38h			;99a5
	rst 38h			;99a6
	rst 38h			;99a7
	rst 38h			;99a8
	rst 38h			;99a9
	rst 38h			;99aa
	rst 38h			;99ab
	rst 38h			;99ac
	rst 38h			;99ad
	rst 38h			;99ae
	rst 38h			;99af
	rst 38h			;99b0
	rst 38h			;99b1
	rst 38h			;99b2
	rst 38h			;99b3
	rst 38h			;99b4
	rst 38h			;99b5
	rst 38h			;99b6
	rst 38h			;99b7
	rst 38h			;99b8
	rst 38h			;99b9
	rst 38h			;99ba
	rst 38h			;99bb
	rst 38h			;99bc
	rst 38h			;99bd
	rst 38h			;99be
	rst 38h			;99bf
	rst 38h			;99c0
	rst 38h			;99c1
	rst 38h			;99c2
	rst 38h			;99c3
	rst 38h			;99c4
	rst 38h			;99c5
	rst 38h			;99c6
	rst 38h			;99c7
	rst 38h			;99c8
	rst 38h			;99c9
	rst 38h			;99ca
	rst 38h			;99cb
	rst 38h			;99cc
	rst 38h			;99cd
	rst 38h			;99ce
	rst 38h			;99cf
	rst 38h			;99d0
	rst 38h			;99d1
	rst 38h			;99d2
	rst 38h			;99d3
	rst 38h			;99d4
	rst 38h			;99d5
	rst 38h			;99d6
	rst 38h			;99d7
	rst 38h			;99d8
	rst 38h			;99d9
	rst 38h			;99da
	rst 38h			;99db
	rst 38h			;99dc
	rst 38h			;99dd
	rst 38h			;99de
	rst 38h			;99df
	rst 38h			;99e0
	rst 38h			;99e1
	rst 38h			;99e2
	rst 38h			;99e3
	rst 38h			;99e4
	rst 38h			;99e5
	rst 38h			;99e6
	rst 38h			;99e7
	rst 38h			;99e8
	rst 38h			;99e9
	rst 38h			;99ea
	rst 38h			;99eb
	rst 38h			;99ec
	rst 38h			;99ed
	rst 38h			;99ee
	rst 38h			;99ef
	rst 38h			;99f0
	rst 38h			;99f1
	rst 38h			;99f2
	rst 38h			;99f3
	rst 38h			;99f4
	rst 38h			;99f5
	rst 38h			;99f6
	rst 38h			;99f7
	rst 38h			;99f8
	rst 38h			;99f9
	rst 38h			;99fa
	rst 38h			;99fb
	rst 38h			;99fc
	rst 38h			;99fd
	rst 38h			;99fe
	rst 38h			;99ff
	rst 38h			;9a00
	rst 38h			;9a01
	rst 38h			;9a02
	rst 38h			;9a03
	rst 38h			;9a04
	rst 38h			;9a05
	rst 38h			;9a06
	rst 38h			;9a07
	rst 38h			;9a08
	rst 38h			;9a09
	rst 38h			;9a0a
	rst 38h			;9a0b
	rst 38h			;9a0c
	rst 38h			;9a0d
	rst 38h			;9a0e
	rst 38h			;9a0f
	rst 38h			;9a10
	rst 38h			;9a11
	rst 38h			;9a12
	rst 38h			;9a13
	rst 38h			;9a14
	rst 38h			;9a15
	rst 38h			;9a16
	rst 38h			;9a17
	rst 38h			;9a18
	rst 38h			;9a19
	rst 38h			;9a1a
	rst 38h			;9a1b
	rst 38h			;9a1c
	rst 38h			;9a1d
	rst 38h			;9a1e
	rst 38h			;9a1f
	rst 38h			;9a20
	rst 38h			;9a21
	rst 38h			;9a22
	rst 38h			;9a23
	rst 38h			;9a24
	rst 38h			;9a25
	rst 38h			;9a26
	rst 38h			;9a27
	rst 38h			;9a28
	rst 38h			;9a29
	rst 38h			;9a2a
	rst 38h			;9a2b
	rst 38h			;9a2c
	rst 38h			;9a2d
	rst 38h			;9a2e
	rst 38h			;9a2f
	rst 38h			;9a30
	rst 38h			;9a31
	rst 38h			;9a32
	rst 38h			;9a33
	rst 38h			;9a34
	rst 38h			;9a35
	rst 38h			;9a36
	rst 38h			;9a37
	rst 38h			;9a38
	rst 38h			;9a39
	rst 38h			;9a3a
	rst 38h			;9a3b
	rst 38h			;9a3c
	rst 38h			;9a3d
	rst 38h			;9a3e
	rst 38h			;9a3f
	rst 38h			;9a40
	rst 38h			;9a41
	rst 38h			;9a42
	rst 38h			;9a43
	rst 38h			;9a44
	rst 38h			;9a45
	rst 38h			;9a46
	rst 38h			;9a47
	rst 38h			;9a48
	rst 38h			;9a49
	rst 38h			;9a4a
	rst 38h			;9a4b
	rst 38h			;9a4c
	rst 38h			;9a4d
	rst 38h			;9a4e
	rst 38h			;9a4f
	rst 38h			;9a50
	rst 38h			;9a51
	rst 38h			;9a52
	rst 38h			;9a53
	rst 38h			;9a54
	rst 38h			;9a55
	rst 38h			;9a56
	rst 38h			;9a57
	rst 38h			;9a58
	rst 38h			;9a59
	rst 38h			;9a5a
	rst 38h			;9a5b
	rst 38h			;9a5c
	rst 38h			;9a5d
	rst 38h			;9a5e
	rst 38h			;9a5f
	rst 38h			;9a60
	rst 38h			;9a61
	rst 38h			;9a62
	rst 38h			;9a63
	rst 38h			;9a64
	rst 38h			;9a65
	rst 38h			;9a66
	rst 38h			;9a67
	rst 38h			;9a68
	rst 38h			;9a69
	rst 38h			;9a6a
	rst 38h			;9a6b
	rst 38h			;9a6c
	rst 38h			;9a6d
	rst 38h			;9a6e
	rst 38h			;9a6f
	rst 38h			;9a70
	rst 38h			;9a71
	rst 38h			;9a72
	rst 38h			;9a73
	rst 38h			;9a74
	rst 38h			;9a75
	rst 38h			;9a76
	rst 38h			;9a77
	rst 38h			;9a78
	rst 38h			;9a79
	rst 38h			;9a7a
	rst 38h			;9a7b
	rst 38h			;9a7c
	rst 38h			;9a7d
	rst 38h			;9a7e
	rst 38h			;9a7f
	rst 38h			;9a80
	rst 38h			;9a81
	rst 38h			;9a82
	rst 38h			;9a83
	rst 38h			;9a84
	rst 38h			;9a85
	rst 38h			;9a86
	rst 38h			;9a87
	rst 38h			;9a88
	rst 38h			;9a89
	rst 38h			;9a8a
	rst 38h			;9a8b
	rst 38h			;9a8c
	rst 38h			;9a8d
	rst 38h			;9a8e
	rst 38h			;9a8f
	rst 38h			;9a90
	rst 38h			;9a91
	rst 38h			;9a92
	rst 38h			;9a93
	rst 38h			;9a94
	rst 38h			;9a95
	rst 38h			;9a96
	rst 38h			;9a97
	rst 38h			;9a98
	rst 38h			;9a99
	rst 38h			;9a9a
	rst 38h			;9a9b
	rst 38h			;9a9c
	rst 38h			;9a9d
	rst 38h			;9a9e
	rst 38h			;9a9f
	rst 38h			;9aa0
	rst 38h			;9aa1
	rst 38h			;9aa2
	rst 38h			;9aa3
	rst 38h			;9aa4
	rst 38h			;9aa5
	rst 38h			;9aa6
	rst 38h			;9aa7
	rst 38h			;9aa8
	rst 38h			;9aa9
	rst 38h			;9aaa
	rst 38h			;9aab
	rst 38h			;9aac
	rst 38h			;9aad
	rst 38h			;9aae
	rst 38h			;9aaf
	rst 38h			;9ab0
	rst 38h			;9ab1
	rst 38h			;9ab2
	rst 38h			;9ab3
	rst 38h			;9ab4
	rst 38h			;9ab5
	rst 38h			;9ab6
	rst 38h			;9ab7
	rst 38h			;9ab8
	rst 38h			;9ab9
	rst 38h			;9aba
	rst 38h			;9abb
	rst 38h			;9abc
	rst 38h			;9abd
	rst 38h			;9abe
	rst 38h			;9abf
	rst 38h			;9ac0
	rst 38h			;9ac1
	rst 38h			;9ac2
	rst 38h			;9ac3
	rst 38h			;9ac4
	rst 38h			;9ac5
	rst 38h			;9ac6
	rst 38h			;9ac7
	rst 38h			;9ac8
	rst 38h			;9ac9
	rst 38h			;9aca
	rst 38h			;9acb
	rst 38h			;9acc
	rst 38h			;9acd
	rst 38h			;9ace
	rst 38h			;9acf
	rst 38h			;9ad0
	rst 38h			;9ad1
	rst 38h			;9ad2
	rst 38h			;9ad3
	rst 38h			;9ad4
	rst 38h			;9ad5
	rst 38h			;9ad6
	rst 38h			;9ad7
	rst 38h			;9ad8
	rst 38h			;9ad9
	rst 38h			;9ada
	rst 38h			;9adb
	rst 38h			;9adc
	rst 38h			;9add
	rst 38h			;9ade
	rst 38h			;9adf
	rst 38h			;9ae0
	rst 38h			;9ae1
	rst 38h			;9ae2
	rst 38h			;9ae3
	rst 38h			;9ae4
	rst 38h			;9ae5
	rst 38h			;9ae6
	rst 38h			;9ae7
	rst 38h			;9ae8
	rst 38h			;9ae9
	rst 38h			;9aea
	rst 38h			;9aeb
	rst 38h			;9aec
	rst 38h			;9aed
	rst 38h			;9aee
	rst 38h			;9aef
	rst 38h			;9af0
	rst 38h			;9af1
	rst 38h			;9af2
	rst 38h			;9af3
	rst 38h			;9af4
	rst 38h			;9af5
	rst 38h			;9af6
	rst 38h			;9af7
	rst 38h			;9af8
	rst 38h			;9af9
	rst 38h			;9afa
	rst 38h			;9afb
	rst 38h			;9afc
	rst 38h			;9afd
	rst 38h			;9afe
	rst 38h			;9aff
	rst 38h			;9b00
	rst 38h			;9b01
	rst 38h			;9b02
	rst 38h			;9b03
	rst 38h			;9b04
	rst 38h			;9b05
	rst 38h			;9b06
	rst 38h			;9b07
	rst 38h			;9b08
	rst 38h			;9b09
	rst 38h			;9b0a
	rst 38h			;9b0b
	rst 38h			;9b0c
	rst 38h			;9b0d
	rst 38h			;9b0e
	rst 38h			;9b0f
	rst 38h			;9b10
	rst 38h			;9b11
	rst 38h			;9b12
	rst 38h			;9b13
	rst 38h			;9b14
	rst 38h			;9b15
	rst 38h			;9b16
	rst 38h			;9b17
	rst 38h			;9b18
	rst 38h			;9b19
	rst 38h			;9b1a
	rst 38h			;9b1b
	rst 38h			;9b1c
	rst 38h			;9b1d
	rst 38h			;9b1e
	rst 38h			;9b1f
	rst 38h			;9b20
	rst 38h			;9b21
	rst 38h			;9b22
	rst 38h			;9b23
	rst 38h			;9b24
	rst 38h			;9b25
	rst 38h			;9b26
	rst 38h			;9b27
	rst 38h			;9b28
	rst 38h			;9b29
	rst 38h			;9b2a
	rst 38h			;9b2b
	rst 38h			;9b2c
	rst 38h			;9b2d
	rst 38h			;9b2e
	rst 38h			;9b2f
	rst 38h			;9b30
	rst 38h			;9b31
	rst 38h			;9b32
	rst 38h			;9b33
	rst 38h			;9b34
	rst 38h			;9b35
	rst 38h			;9b36
	rst 38h			;9b37
	rst 38h			;9b38
	rst 38h			;9b39
	rst 38h			;9b3a
	rst 38h			;9b3b
	rst 38h			;9b3c
	rst 38h			;9b3d
	rst 38h			;9b3e
	rst 38h			;9b3f
	rst 38h			;9b40
	rst 38h			;9b41
	rst 38h			;9b42
	rst 38h			;9b43
	rst 38h			;9b44
	rst 38h			;9b45
	rst 38h			;9b46
	rst 38h			;9b47
	rst 38h			;9b48
	rst 38h			;9b49
	rst 38h			;9b4a
	rst 38h			;9b4b
	rst 38h			;9b4c
	rst 38h			;9b4d
	rst 38h			;9b4e
	rst 38h			;9b4f
	rst 38h			;9b50
	rst 38h			;9b51
	rst 38h			;9b52
	rst 38h			;9b53
	rst 38h			;9b54
	rst 38h			;9b55
	rst 38h			;9b56
	rst 38h			;9b57
	rst 38h			;9b58
	rst 38h			;9b59
	rst 38h			;9b5a
	rst 38h			;9b5b
	rst 38h			;9b5c
	rst 38h			;9b5d
	rst 38h			;9b5e
	rst 38h			;9b5f
	rst 38h			;9b60
	rst 38h			;9b61
	rst 38h			;9b62
	rst 38h			;9b63
	rst 38h			;9b64
	rst 38h			;9b65
	rst 38h			;9b66
	rst 38h			;9b67
	rst 38h			;9b68
	rst 38h			;9b69
	rst 38h			;9b6a
	rst 38h			;9b6b
	rst 38h			;9b6c
	rst 38h			;9b6d
	rst 38h			;9b6e
	rst 38h			;9b6f
	rst 38h			;9b70
	rst 38h			;9b71
	rst 38h			;9b72
	rst 38h			;9b73
	rst 38h			;9b74
	rst 38h			;9b75
	rst 38h			;9b76
	rst 38h			;9b77
	rst 38h			;9b78
	rst 38h			;9b79
	rst 38h			;9b7a
	rst 38h			;9b7b
	rst 38h			;9b7c
	rst 38h			;9b7d
	rst 38h			;9b7e
	rst 38h			;9b7f
	rst 38h			;9b80
	rst 38h			;9b81
	rst 38h			;9b82
	rst 38h			;9b83
	rst 38h			;9b84
	rst 38h			;9b85
	rst 38h			;9b86
	rst 38h			;9b87
	rst 38h			;9b88
	rst 38h			;9b89
	rst 38h			;9b8a
	rst 38h			;9b8b
	rst 38h			;9b8c
	rst 38h			;9b8d
	rst 38h			;9b8e
	rst 38h			;9b8f
	rst 38h			;9b90
	rst 38h			;9b91
	rst 38h			;9b92
	rst 38h			;9b93
	rst 38h			;9b94
	rst 38h			;9b95
	rst 38h			;9b96
	rst 38h			;9b97
	rst 38h			;9b98
	rst 38h			;9b99
	rst 38h			;9b9a
	rst 38h			;9b9b
	rst 38h			;9b9c
	rst 38h			;9b9d
	rst 38h			;9b9e
	rst 38h			;9b9f
	rst 38h			;9ba0
	rst 38h			;9ba1
	rst 38h			;9ba2
	rst 38h			;9ba3
	rst 38h			;9ba4
	rst 38h			;9ba5
	rst 38h			;9ba6
	rst 38h			;9ba7
	rst 38h			;9ba8
	rst 38h			;9ba9
	rst 38h			;9baa
	rst 38h			;9bab
	rst 38h			;9bac
	rst 38h			;9bad
	rst 38h			;9bae
	rst 38h			;9baf
	rst 38h			;9bb0
	rst 38h			;9bb1
	rst 38h			;9bb2
	rst 38h			;9bb3
	rst 38h			;9bb4
	rst 38h			;9bb5
	rst 38h			;9bb6
	rst 38h			;9bb7
	rst 38h			;9bb8
	rst 38h			;9bb9
	rst 38h			;9bba
	rst 38h			;9bbb
	rst 38h			;9bbc
	rst 38h			;9bbd
	rst 38h			;9bbe
	rst 38h			;9bbf
	rst 38h			;9bc0
	rst 38h			;9bc1
	rst 38h			;9bc2
	rst 38h			;9bc3
	rst 38h			;9bc4
	rst 38h			;9bc5
	rst 38h			;9bc6
	rst 38h			;9bc7
	rst 38h			;9bc8
	rst 38h			;9bc9
	rst 38h			;9bca
	rst 38h			;9bcb
	rst 38h			;9bcc
	rst 38h			;9bcd
	rst 38h			;9bce
	rst 38h			;9bcf
	rst 38h			;9bd0
	rst 38h			;9bd1
	rst 38h			;9bd2
	rst 38h			;9bd3
	rst 38h			;9bd4
	rst 38h			;9bd5
	rst 38h			;9bd6
	rst 38h			;9bd7
	rst 38h			;9bd8
	rst 38h			;9bd9
	rst 38h			;9bda
	rst 38h			;9bdb
	rst 38h			;9bdc
	rst 38h			;9bdd
	rst 38h			;9bde
	rst 38h			;9bdf
	rst 38h			;9be0
	rst 38h			;9be1
	rst 38h			;9be2
	rst 38h			;9be3
	rst 38h			;9be4
	rst 38h			;9be5
	rst 38h			;9be6
	rst 38h			;9be7
	rst 38h			;9be8
	rst 38h			;9be9
	rst 38h			;9bea
	rst 38h			;9beb
	rst 38h			;9bec
	rst 38h			;9bed
	rst 38h			;9bee
	rst 38h			;9bef
	rst 38h			;9bf0
	rst 38h			;9bf1
	rst 38h			;9bf2
	rst 38h			;9bf3
	rst 38h			;9bf4
	rst 38h			;9bf5
	rst 38h			;9bf6
	rst 38h			;9bf7
	rst 38h			;9bf8
	rst 38h			;9bf9
	rst 38h			;9bfa
	rst 38h			;9bfb
	rst 38h			;9bfc
	rst 38h			;9bfd
	rst 38h			;9bfe
	rst 38h			;9bff
	rst 38h			;9c00
	rst 38h			;9c01
	rst 38h			;9c02
	rst 38h			;9c03
	rst 38h			;9c04
	rst 38h			;9c05
	rst 38h			;9c06
	rst 38h			;9c07
	rst 38h			;9c08
	rst 38h			;9c09
	rst 38h			;9c0a
	rst 38h			;9c0b
	rst 38h			;9c0c
	rst 38h			;9c0d
	rst 38h			;9c0e
	rst 38h			;9c0f
	rst 38h			;9c10
	rst 38h			;9c11
	rst 38h			;9c12
	rst 38h			;9c13
	rst 38h			;9c14
	rst 38h			;9c15
	rst 38h			;9c16
	rst 38h			;9c17
	rst 38h			;9c18
	rst 38h			;9c19
	rst 38h			;9c1a
	rst 38h			;9c1b
	rst 38h			;9c1c
	rst 38h			;9c1d
	rst 38h			;9c1e
	rst 38h			;9c1f
	rst 38h			;9c20
	rst 38h			;9c21
	rst 38h			;9c22
	rst 38h			;9c23
	rst 38h			;9c24
	rst 38h			;9c25
	rst 38h			;9c26
	rst 38h			;9c27
	rst 38h			;9c28
	rst 38h			;9c29
	rst 38h			;9c2a
	rst 38h			;9c2b
	rst 38h			;9c2c
	rst 38h			;9c2d
	rst 38h			;9c2e
	rst 38h			;9c2f
	rst 38h			;9c30
	rst 38h			;9c31
	rst 38h			;9c32
	rst 38h			;9c33
	rst 38h			;9c34
	rst 38h			;9c35
	rst 38h			;9c36
	rst 38h			;9c37
	rst 38h			;9c38
	rst 38h			;9c39
	rst 38h			;9c3a
	rst 38h			;9c3b
	rst 38h			;9c3c
	rst 38h			;9c3d
	rst 38h			;9c3e
	rst 38h			;9c3f
	rst 38h			;9c40
	rst 38h			;9c41
	rst 38h			;9c42
	rst 38h			;9c43
	rst 38h			;9c44
	rst 38h			;9c45
	rst 38h			;9c46
	rst 38h			;9c47
	rst 38h			;9c48
	rst 38h			;9c49
	rst 38h			;9c4a
	rst 38h			;9c4b
	rst 38h			;9c4c
	rst 38h			;9c4d
	rst 38h			;9c4e
	rst 38h			;9c4f
	rst 38h			;9c50
	rst 38h			;9c51
	rst 38h			;9c52
	rst 38h			;9c53
	rst 38h			;9c54
	rst 38h			;9c55
	rst 38h			;9c56
	rst 38h			;9c57
	rst 38h			;9c58
	rst 38h			;9c59
	rst 38h			;9c5a
	rst 38h			;9c5b
	rst 38h			;9c5c
	rst 38h			;9c5d
	rst 38h			;9c5e
	rst 38h			;9c5f
	rst 38h			;9c60
	rst 38h			;9c61
	rst 38h			;9c62
	rst 38h			;9c63
	rst 38h			;9c64
	rst 38h			;9c65
	rst 38h			;9c66
	rst 38h			;9c67
	rst 38h			;9c68
	rst 38h			;9c69
	rst 38h			;9c6a
	rst 38h			;9c6b
	rst 38h			;9c6c
	rst 38h			;9c6d
	rst 38h			;9c6e
	rst 38h			;9c6f
	rst 38h			;9c70
	rst 38h			;9c71
	rst 38h			;9c72
	rst 38h			;9c73
	rst 38h			;9c74
	rst 38h			;9c75
	rst 38h			;9c76
	rst 38h			;9c77
	rst 38h			;9c78
	rst 38h			;9c79
	rst 38h			;9c7a
	rst 38h			;9c7b
	rst 38h			;9c7c
	rst 38h			;9c7d
	rst 38h			;9c7e
	rst 38h			;9c7f
	rst 38h			;9c80
	rst 38h			;9c81
	rst 38h			;9c82
	rst 38h			;9c83
	rst 38h			;9c84
	rst 38h			;9c85
	rst 38h			;9c86
	rst 38h			;9c87
	rst 38h			;9c88
	rst 38h			;9c89
	rst 38h			;9c8a
	rst 38h			;9c8b
	rst 38h			;9c8c
	rst 38h			;9c8d
	rst 38h			;9c8e
	rst 38h			;9c8f
	rst 38h			;9c90
	rst 38h			;9c91
	rst 38h			;9c92
	rst 38h			;9c93
	rst 38h			;9c94
	rst 38h			;9c95
	rst 38h			;9c96
	rst 38h			;9c97
	rst 38h			;9c98
	rst 38h			;9c99
	rst 38h			;9c9a
	rst 38h			;9c9b
	rst 38h			;9c9c
	rst 38h			;9c9d
	rst 38h			;9c9e
	rst 38h			;9c9f
	rst 38h			;9ca0
	rst 38h			;9ca1
	rst 38h			;9ca2
	rst 38h			;9ca3
	rst 38h			;9ca4
	rst 38h			;9ca5
	rst 38h			;9ca6
	rst 38h			;9ca7
	rst 38h			;9ca8
	rst 38h			;9ca9
	rst 38h			;9caa
	rst 38h			;9cab
	rst 38h			;9cac
	rst 38h			;9cad
	rst 38h			;9cae
	rst 38h			;9caf
	rst 38h			;9cb0
	rst 38h			;9cb1
	rst 38h			;9cb2
	rst 38h			;9cb3
	rst 38h			;9cb4
	rst 38h			;9cb5
	rst 38h			;9cb6
	rst 38h			;9cb7
	rst 38h			;9cb8
	rst 38h			;9cb9
	rst 38h			;9cba
	rst 38h			;9cbb
	rst 38h			;9cbc
	rst 38h			;9cbd
	rst 38h			;9cbe
	rst 38h			;9cbf
	rst 38h			;9cc0
	rst 38h			;9cc1
	rst 38h			;9cc2
	rst 38h			;9cc3
	rst 38h			;9cc4
	rst 38h			;9cc5
	rst 38h			;9cc6
	rst 38h			;9cc7
	rst 38h			;9cc8
	rst 38h			;9cc9
	rst 38h			;9cca
	rst 38h			;9ccb
	rst 38h			;9ccc
	rst 38h			;9ccd
	rst 38h			;9cce
	rst 38h			;9ccf
	rst 38h			;9cd0
	rst 38h			;9cd1
	rst 38h			;9cd2
	rst 38h			;9cd3
	rst 38h			;9cd4
	rst 38h			;9cd5
	rst 38h			;9cd6
	rst 38h			;9cd7
	rst 38h			;9cd8
	rst 38h			;9cd9
	rst 38h			;9cda
	rst 38h			;9cdb
	rst 38h			;9cdc
	rst 38h			;9cdd
	rst 38h			;9cde
	rst 38h			;9cdf
	rst 38h			;9ce0
	rst 38h			;9ce1
	rst 38h			;9ce2
	rst 38h			;9ce3
	rst 38h			;9ce4
	rst 38h			;9ce5
	rst 38h			;9ce6
	rst 38h			;9ce7
	rst 38h			;9ce8
	rst 38h			;9ce9
	rst 38h			;9cea
	rst 38h			;9ceb
	rst 38h			;9cec
	rst 38h			;9ced
	rst 38h			;9cee
	rst 38h			;9cef
	rst 38h			;9cf0
	rst 38h			;9cf1
	rst 38h			;9cf2
	rst 38h			;9cf3
	rst 38h			;9cf4
	rst 38h			;9cf5
	rst 38h			;9cf6
	rst 38h			;9cf7
	rst 38h			;9cf8
	rst 38h			;9cf9
	rst 38h			;9cfa
	rst 38h			;9cfb
	rst 38h			;9cfc
	rst 38h			;9cfd
	rst 38h			;9cfe
	rst 38h			;9cff
	rst 38h			;9d00
	rst 38h			;9d01
	rst 38h			;9d02
	rst 38h			;9d03
	rst 38h			;9d04
	rst 38h			;9d05
	rst 38h			;9d06
	rst 38h			;9d07
	rst 38h			;9d08
	rst 38h			;9d09
	rst 38h			;9d0a
	rst 38h			;9d0b
	rst 38h			;9d0c
	rst 38h			;9d0d
	rst 38h			;9d0e
	rst 38h			;9d0f
	rst 38h			;9d10
	rst 38h			;9d11
	rst 38h			;9d12
	rst 38h			;9d13
	rst 38h			;9d14
	rst 38h			;9d15
	rst 38h			;9d16
	rst 38h			;9d17
	rst 38h			;9d18
	rst 38h			;9d19
	rst 38h			;9d1a
	rst 38h			;9d1b
	rst 38h			;9d1c
	rst 38h			;9d1d
	rst 38h			;9d1e
	rst 38h			;9d1f
	rst 38h			;9d20
	rst 38h			;9d21
	rst 38h			;9d22
	rst 38h			;9d23
	rst 38h			;9d24
	rst 38h			;9d25
	rst 38h			;9d26
	rst 38h			;9d27
	rst 38h			;9d28
	rst 38h			;9d29
	rst 38h			;9d2a
	rst 38h			;9d2b
	rst 38h			;9d2c
	rst 38h			;9d2d
	rst 38h			;9d2e
	rst 38h			;9d2f
	rst 38h			;9d30
	rst 38h			;9d31
	rst 38h			;9d32
	rst 38h			;9d33
	rst 38h			;9d34
	rst 38h			;9d35
	rst 38h			;9d36
	rst 38h			;9d37
	rst 38h			;9d38
	rst 38h			;9d39
	rst 38h			;9d3a
	rst 38h			;9d3b
	rst 38h			;9d3c
	rst 38h			;9d3d
	rst 38h			;9d3e
	rst 38h			;9d3f
	rst 38h			;9d40
	rst 38h			;9d41
	rst 38h			;9d42
	rst 38h			;9d43
	rst 38h			;9d44
	rst 38h			;9d45
	rst 38h			;9d46
	rst 38h			;9d47
	rst 38h			;9d48
	rst 38h			;9d49
	rst 38h			;9d4a
	rst 38h			;9d4b
	rst 38h			;9d4c
	rst 38h			;9d4d
	rst 38h			;9d4e
	rst 38h			;9d4f
	rst 38h			;9d50
	rst 38h			;9d51
	rst 38h			;9d52
	rst 38h			;9d53
	rst 38h			;9d54
	rst 38h			;9d55
	rst 38h			;9d56
	rst 38h			;9d57
	rst 38h			;9d58
	rst 38h			;9d59
	rst 38h			;9d5a
	rst 38h			;9d5b
	rst 38h			;9d5c
	rst 38h			;9d5d
	rst 38h			;9d5e
	rst 38h			;9d5f
	rst 38h			;9d60
	rst 38h			;9d61
	rst 38h			;9d62
	rst 38h			;9d63
	rst 38h			;9d64
	rst 38h			;9d65
	rst 38h			;9d66
	rst 38h			;9d67
	rst 38h			;9d68
	rst 38h			;9d69
	rst 38h			;9d6a
	rst 38h			;9d6b
	rst 38h			;9d6c
	rst 38h			;9d6d
	rst 38h			;9d6e
	rst 38h			;9d6f
	rst 38h			;9d70
	rst 38h			;9d71
	rst 38h			;9d72
	rst 38h			;9d73
	rst 38h			;9d74
	rst 38h			;9d75
	rst 38h			;9d76
	rst 38h			;9d77
	rst 38h			;9d78
	rst 38h			;9d79
	rst 38h			;9d7a
	rst 38h			;9d7b
	rst 38h			;9d7c
	rst 38h			;9d7d
	rst 38h			;9d7e
	rst 38h			;9d7f
	rst 38h			;9d80
	rst 38h			;9d81
	rst 38h			;9d82
	rst 38h			;9d83
	rst 38h			;9d84
	rst 38h			;9d85
	rst 38h			;9d86
	rst 38h			;9d87
	rst 38h			;9d88
	rst 38h			;9d89
	rst 38h			;9d8a
	rst 38h			;9d8b
	rst 38h			;9d8c
	rst 38h			;9d8d
	rst 38h			;9d8e
	rst 38h			;9d8f
	rst 38h			;9d90
	rst 38h			;9d91
	rst 38h			;9d92
	rst 38h			;9d93
	rst 38h			;9d94
	rst 38h			;9d95
	rst 38h			;9d96
	rst 38h			;9d97
	rst 38h			;9d98
	rst 38h			;9d99
	rst 38h			;9d9a
	rst 38h			;9d9b
	rst 38h			;9d9c
	rst 38h			;9d9d
	rst 38h			;9d9e
	rst 38h			;9d9f
	rst 38h			;9da0
	rst 38h			;9da1
	rst 38h			;9da2
	rst 38h			;9da3
	rst 38h			;9da4
	rst 38h			;9da5
	rst 38h			;9da6
	rst 38h			;9da7
	rst 38h			;9da8
	rst 38h			;9da9
	rst 38h			;9daa
	rst 38h			;9dab
	rst 38h			;9dac
	rst 38h			;9dad
	rst 38h			;9dae
	rst 38h			;9daf
	rst 38h			;9db0
	rst 38h			;9db1
	rst 38h			;9db2
	rst 38h			;9db3
	rst 38h			;9db4
	rst 38h			;9db5
	rst 38h			;9db6
	rst 38h			;9db7
	rst 38h			;9db8
	rst 38h			;9db9
	rst 38h			;9dba
	rst 38h			;9dbb
	rst 38h			;9dbc
	rst 38h			;9dbd
	rst 38h			;9dbe
	rst 38h			;9dbf
	rst 38h			;9dc0
	rst 38h			;9dc1
	rst 38h			;9dc2
	rst 38h			;9dc3
	rst 38h			;9dc4
	rst 38h			;9dc5
	rst 38h			;9dc6
	rst 38h			;9dc7
	rst 38h			;9dc8
	rst 38h			;9dc9
	rst 38h			;9dca
	rst 38h			;9dcb
	rst 38h			;9dcc
	rst 38h			;9dcd
	rst 38h			;9dce
	rst 38h			;9dcf
	rst 38h			;9dd0
	rst 38h			;9dd1
	rst 38h			;9dd2
	rst 38h			;9dd3
	rst 38h			;9dd4
	rst 38h			;9dd5
	rst 38h			;9dd6
	rst 38h			;9dd7
	rst 38h			;9dd8
	rst 38h			;9dd9
	rst 38h			;9dda
	rst 38h			;9ddb
	rst 38h			;9ddc
	rst 38h			;9ddd
	rst 38h			;9dde
	rst 38h			;9ddf
	rst 38h			;9de0
	rst 38h			;9de1
	rst 38h			;9de2
	rst 38h			;9de3
	rst 38h			;9de4
	rst 38h			;9de5
	rst 38h			;9de6
	rst 38h			;9de7
	rst 38h			;9de8
	rst 38h			;9de9
	rst 38h			;9dea
	rst 38h			;9deb
	rst 38h			;9dec
	rst 38h			;9ded
	rst 38h			;9dee
	rst 38h			;9def
	rst 38h			;9df0
	rst 38h			;9df1
	rst 38h			;9df2
	rst 38h			;9df3
	rst 38h			;9df4
	rst 38h			;9df5
	rst 38h			;9df6
	rst 38h			;9df7
	rst 38h			;9df8
	rst 38h			;9df9
	rst 38h			;9dfa
	rst 38h			;9dfb
	rst 38h			;9dfc
	rst 38h			;9dfd
	rst 38h			;9dfe
	rst 38h			;9dff
	rst 38h			;9e00
	rst 38h			;9e01
	rst 38h			;9e02
	rst 38h			;9e03
	rst 38h			;9e04
	rst 38h			;9e05
	rst 38h			;9e06
	rst 38h			;9e07
	rst 38h			;9e08
	rst 38h			;9e09
	rst 38h			;9e0a
	rst 38h			;9e0b
	rst 38h			;9e0c
	rst 38h			;9e0d
	rst 38h			;9e0e
	rst 38h			;9e0f
	rst 38h			;9e10
	rst 38h			;9e11
	rst 38h			;9e12
	rst 38h			;9e13
	rst 38h			;9e14
	rst 38h			;9e15
	rst 38h			;9e16
	rst 38h			;9e17
	rst 38h			;9e18
	rst 38h			;9e19
	rst 38h			;9e1a
	rst 38h			;9e1b
	rst 38h			;9e1c
	rst 38h			;9e1d
	rst 38h			;9e1e
	rst 38h			;9e1f
	rst 38h			;9e20
	rst 38h			;9e21
	rst 38h			;9e22
	rst 38h			;9e23
	rst 38h			;9e24
	rst 38h			;9e25
	rst 38h			;9e26
	rst 38h			;9e27
	rst 38h			;9e28
	rst 38h			;9e29
	rst 38h			;9e2a
	rst 38h			;9e2b
	rst 38h			;9e2c
	rst 38h			;9e2d
	rst 38h			;9e2e
	rst 38h			;9e2f
	rst 38h			;9e30
	rst 38h			;9e31
	rst 38h			;9e32
	rst 38h			;9e33
	rst 38h			;9e34
	rst 38h			;9e35
	rst 38h			;9e36
	rst 38h			;9e37
	rst 38h			;9e38
	rst 38h			;9e39
	rst 38h			;9e3a
	rst 38h			;9e3b
	rst 38h			;9e3c
	rst 38h			;9e3d
	rst 38h			;9e3e
	rst 38h			;9e3f
	rst 38h			;9e40
	rst 38h			;9e41
	rst 38h			;9e42
	rst 38h			;9e43
	rst 38h			;9e44
	rst 38h			;9e45
	rst 38h			;9e46
	rst 38h			;9e47
	rst 38h			;9e48
	rst 38h			;9e49
	rst 38h			;9e4a
	rst 38h			;9e4b
	rst 38h			;9e4c
	rst 38h			;9e4d
	rst 38h			;9e4e
	rst 38h			;9e4f
	rst 38h			;9e50
	rst 38h			;9e51
	rst 38h			;9e52
	rst 38h			;9e53
	rst 38h			;9e54
	rst 38h			;9e55
	rst 38h			;9e56
	rst 38h			;9e57
	rst 38h			;9e58
	rst 38h			;9e59
	rst 38h			;9e5a
	rst 38h			;9e5b
	rst 38h			;9e5c
	rst 38h			;9e5d
	rst 38h			;9e5e
	rst 38h			;9e5f
	rst 38h			;9e60
	rst 38h			;9e61
	rst 38h			;9e62
	rst 38h			;9e63
	rst 38h			;9e64
	rst 38h			;9e65
	rst 38h			;9e66
	rst 38h			;9e67
	rst 38h			;9e68
	rst 38h			;9e69
	rst 38h			;9e6a
	rst 38h			;9e6b
	rst 38h			;9e6c
	rst 38h			;9e6d
	rst 38h			;9e6e
	rst 38h			;9e6f
	rst 38h			;9e70
	rst 38h			;9e71
	rst 38h			;9e72
	rst 38h			;9e73
	rst 38h			;9e74
	rst 38h			;9e75
	rst 38h			;9e76
	rst 38h			;9e77
	rst 38h			;9e78
	rst 38h			;9e79
	rst 38h			;9e7a
	rst 38h			;9e7b
	rst 38h			;9e7c
	rst 38h			;9e7d
	rst 38h			;9e7e
	rst 38h			;9e7f
	rst 38h			;9e80
	rst 38h			;9e81
	rst 38h			;9e82
	rst 38h			;9e83
	rst 38h			;9e84
	rst 38h			;9e85
	rst 38h			;9e86
	rst 38h			;9e87
	rst 38h			;9e88
	rst 38h			;9e89
	rst 38h			;9e8a
	rst 38h			;9e8b
	rst 38h			;9e8c
	rst 38h			;9e8d
	rst 38h			;9e8e
	rst 38h			;9e8f
	rst 38h			;9e90
	rst 38h			;9e91
	rst 38h			;9e92
	rst 38h			;9e93
	rst 38h			;9e94
	rst 38h			;9e95
	rst 38h			;9e96
	rst 38h			;9e97
	rst 38h			;9e98
	rst 38h			;9e99
	rst 38h			;9e9a
	rst 38h			;9e9b
	rst 38h			;9e9c
	rst 38h			;9e9d
	rst 38h			;9e9e
	rst 38h			;9e9f
	rst 38h			;9ea0
	rst 38h			;9ea1
	rst 38h			;9ea2
	rst 38h			;9ea3
	rst 38h			;9ea4
	rst 38h			;9ea5
	rst 38h			;9ea6
	rst 38h			;9ea7
	rst 38h			;9ea8
	rst 38h			;9ea9
	rst 38h			;9eaa
	rst 38h			;9eab
	rst 38h			;9eac
	rst 38h			;9ead
	rst 38h			;9eae
	rst 38h			;9eaf
	rst 38h			;9eb0
	rst 38h			;9eb1
	rst 38h			;9eb2
	rst 38h			;9eb3
	rst 38h			;9eb4
	rst 38h			;9eb5
	rst 38h			;9eb6
	rst 38h			;9eb7
	rst 38h			;9eb8
	rst 38h			;9eb9
	rst 38h			;9eba
	rst 38h			;9ebb
	rst 38h			;9ebc
	rst 38h			;9ebd
	rst 38h			;9ebe
	rst 38h			;9ebf
	rst 38h			;9ec0
	rst 38h			;9ec1
	rst 38h			;9ec2
	rst 38h			;9ec3
	rst 38h			;9ec4
	rst 38h			;9ec5
	rst 38h			;9ec6
	rst 38h			;9ec7
	rst 38h			;9ec8
	rst 38h			;9ec9
	rst 38h			;9eca
	rst 38h			;9ecb
	rst 38h			;9ecc
	rst 38h			;9ecd
	rst 38h			;9ece
	rst 38h			;9ecf
	rst 38h			;9ed0
	rst 38h			;9ed1
	rst 38h			;9ed2
	rst 38h			;9ed3
	rst 38h			;9ed4
	rst 38h			;9ed5
	rst 38h			;9ed6
	rst 38h			;9ed7
	rst 38h			;9ed8
	rst 38h			;9ed9
	rst 38h			;9eda
	rst 38h			;9edb
	rst 38h			;9edc
	rst 38h			;9edd
	rst 38h			;9ede
	rst 38h			;9edf
	rst 38h			;9ee0
	rst 38h			;9ee1
	rst 38h			;9ee2
	rst 38h			;9ee3
	rst 38h			;9ee4
	rst 38h			;9ee5
	rst 38h			;9ee6
	rst 38h			;9ee7
	rst 38h			;9ee8
	rst 38h			;9ee9
	rst 38h			;9eea
	rst 38h			;9eeb
	rst 38h			;9eec
	rst 38h			;9eed
	rst 38h			;9eee
	rst 38h			;9eef
	rst 38h			;9ef0
	rst 38h			;9ef1
	rst 38h			;9ef2
	rst 38h			;9ef3
	rst 38h			;9ef4
	rst 38h			;9ef5
	rst 38h			;9ef6
	rst 38h			;9ef7
	rst 38h			;9ef8
	rst 38h			;9ef9
	rst 38h			;9efa
	rst 38h			;9efb
	rst 38h			;9efc
	rst 38h			;9efd
	rst 38h			;9efe
	rst 38h			;9eff
	rst 38h			;9f00
	rst 38h			;9f01
	rst 38h			;9f02
	rst 38h			;9f03
	rst 38h			;9f04
	rst 38h			;9f05
	rst 38h			;9f06
	rst 38h			;9f07
	rst 38h			;9f08
	rst 38h			;9f09
	rst 38h			;9f0a
	rst 38h			;9f0b
	rst 38h			;9f0c
	rst 38h			;9f0d
	rst 38h			;9f0e
	rst 38h			;9f0f
	rst 38h			;9f10
	rst 38h			;9f11
	rst 38h			;9f12
	rst 38h			;9f13
	rst 38h			;9f14
	rst 38h			;9f15
	rst 38h			;9f16
	rst 38h			;9f17
	rst 38h			;9f18
	rst 38h			;9f19
	rst 38h			;9f1a
	rst 38h			;9f1b
	rst 38h			;9f1c
	rst 38h			;9f1d
	rst 38h			;9f1e
	rst 38h			;9f1f
	rst 38h			;9f20
	rst 38h			;9f21
	rst 38h			;9f22
	rst 38h			;9f23
	rst 38h			;9f24
	rst 38h			;9f25
	rst 38h			;9f26
	rst 38h			;9f27
	rst 38h			;9f28
	rst 38h			;9f29
	rst 38h			;9f2a
	rst 38h			;9f2b
	rst 38h			;9f2c
	rst 38h			;9f2d
	rst 38h			;9f2e
	rst 38h			;9f2f
	rst 38h			;9f30
	rst 38h			;9f31
	rst 38h			;9f32
	rst 38h			;9f33
	rst 38h			;9f34
	rst 38h			;9f35
	rst 38h			;9f36
	rst 38h			;9f37
	rst 38h			;9f38
	rst 38h			;9f39
	rst 38h			;9f3a
	rst 38h			;9f3b
	rst 38h			;9f3c
	rst 38h			;9f3d
	rst 38h			;9f3e
	rst 38h			;9f3f
	rst 38h			;9f40
	rst 38h			;9f41
	rst 38h			;9f42
	rst 38h			;9f43
	rst 38h			;9f44
	rst 38h			;9f45
	rst 38h			;9f46
	rst 38h			;9f47
	rst 38h			;9f48
	rst 38h			;9f49
	rst 38h			;9f4a
	rst 38h			;9f4b
	rst 38h			;9f4c
	rst 38h			;9f4d
	rst 38h			;9f4e
	rst 38h			;9f4f
	rst 38h			;9f50
	rst 38h			;9f51
	rst 38h			;9f52
	rst 38h			;9f53
	rst 38h			;9f54
	rst 38h			;9f55
	rst 38h			;9f56
	rst 38h			;9f57
	rst 38h			;9f58
	rst 38h			;9f59
	rst 38h			;9f5a
	rst 38h			;9f5b
	rst 38h			;9f5c
	rst 38h			;9f5d
	rst 38h			;9f5e
	rst 38h			;9f5f
	rst 38h			;9f60
	rst 38h			;9f61
	rst 38h			;9f62
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

; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank19_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank19.bin

	org 08000h

sub_8000h:
	inc bc			;8000
	nop			;8001
	cpl			;8002
l8003h:
	ret			;8003
	add hl,sp		;8004
	add hl,bc		;8005
	rlca			;8006
	nop			;8007
	nop			;8008
	ret m			;8009
	inc c			;800a
	rst 38h			;800b
	inc b			;800c
	rst 38h			;800d
	ret p			;800e
	ld c,a			;800f
	ret po			;8010
	ret p			;8011
	rst 38h			;8012
	inc b			;8013
	inc c			;8014
	rst 38h			;8015
	ex af,af'		;8016
	ret m			;8017
	nop			;8018
	rlca			;8019
	rrca			;801a
	add hl,bc		;801b
	ld a,a			;801c
	rst 28h			;801d
	inc c			;801e
	jr c,l8059h		;801f
	inc c			;8021
	rst 28h			;8022
	ld a,a			;8023
	rrca			;8024
	rrca			;8025
	rlca			;8026
	nop			;8027
	ret m			;8028
	dec bc			;8029
	rst 38h			;802a
	inc c			;802b
	rst 38h			;802c
	rst 38h			;802d
	ld b,0efh		;802e
	rrca			;8030
	ld b,003h		;8031
	rst 38h			;8033
	add a,e			;8034
	inc c			;8035
	ei			;8036
	ret m			;8037
	nop			;8038
	rst 38h			;8039
	inc bc			;803a
	add hl,bc		;803b
	inc d			;803c
	ld a,(bc)		;803d
	ld b,l			;803e
	ccf			;803f
	rrca			;8040
	rlca			;8041
	inc bc			;8042
	ld bc,0751fh		;8043
	ld b,d			;8046
	inc h			;8047
	jr l804eh		;8048
	ret nz			;804a
	ret po			;804b
	ret pe			;804c
	inc c			;804d
l804eh:
	call po,0dcb6h		;804e
	ret m			;8051
	ret p			;8052
	ret po			;8053
	call p,014eah		;8054
	ret pe			;8057
	ex af,af'		;8058
l8059h:
	nop			;8059
	inc b			;805a
	ld e,02fh		;805b
	ld (hl),a		;805d
	ld a,e			;805e
	cp 0fch			;805f
	call m,0f8f8h		;8061
	rst 38h			;8064
	ld a,e			;8065
	ld a,a			;8066
	ccf			;8067
	rra			;8068
	rlca			;8069
	jr nz,l8084h		;806a
	inc d			;806c
	jp p,05ffah		;806d
	cpl			;8070
	rrca			;8071
	rlca			;8072
	rlca			;8073
	rst 38h			;8074
	or 0fah			;8075
	inc e			;8077
	ret m			;8078
	ret po			;8079
	inc bc			;807a
	rlca			;807b
	rla			;807c
	jr nc,l80a6h		;807d
sub_807fh:
	ld l,l			;807f
	dec sp			;8080
	rra			;8081
l8082h:
	rrca			;8082
	rlca			;8083
l8084h:
	cpl			;8084
	ld d,a			;8085
	jr z,l809fh		;8086
	djnz l808ah		;8088
l808ah:
	ret nz			;808a
	sub b			;808b
	jr z,$+82		;808c
	and d			;808e
	call m,0e0f0h		;808f
	ret nz			;8092
	add a,b			;8093
	ret m			;8094
	xor (hl)		;8095
	ld b,d			;8096
	inc h			;8097
	jr l80bah		;8098
	inc b			;809a
	jr l80c5h		;809b
	ld c,a			;809d
	ld e,a			;809e
l809fh:
	jp m,0f0f4h		;809f
	ret po			;80a2
	ret po			;80a3
	rst 38h			;80a4
	ld l,a			;80a5
l80a6h:
	ld e,a			;80a6
	jr c,l80c8h		;80a7
	rlca			;80a9
	jr nz,l8124h		;80aa
	call p,0deeeh		;80ac
	ld a,a			;80af
	ccf			;80b0
	ccf			;80b1
	rra			;80b2
	rra			;80b3
	rst 38h			;80b4
	sbc a,0feh		;80b5
	call m,sub_81f8h	;80b7
l80bah:
	ret po			;80ba
	nop			;80bb
	rst 38h			;80bc
	rlca			;80bd
	inc bc			;80be
	ld bc,00d07h		;80bf
	ld a,h			;80c2
	cp 073h			;80c3
l80c5h:
	ld b,039h		;80c5
	inc bc			;80c7
l80c8h:
	ld a,l			;80c8
	jp m,00a75h		;80c9
	nop			;80cc
	ret po			;80cd
	nop			;80ce
	add a,b			;80cf
	ret po			;80d0
	or b			;80d1
	ld a,07fh		;80d2
	adc a,060h		;80d4
	sbc a,h			;80d6
	ret nz			;80d7
	cp (hl)			;80d8
	ld e,a			;80d9
	ld l,0d0h		;80da
	nop			;80dc
l80ddh:
	ld bc,00804h		;80dd
sub_80e0h:
	inc b			;80e0
	inc a			;80e1
	ld b,003h		;80e2
	adc a,a			;80e4
	ld a,a			;80e5
	jr c,$+58		;80e6
	ld a,h			;80e8
	ld b,08eh		;80e9
	ei			;80eb
	nop			;80ec
	ret nz			;80ed
	ret po			;80ee
	djnz $+34		;80ef
	inc a			;80f1
	ld h,b			;80f2
	ret nz			;80f3
	pop af			;80f4
	cp 01ch			;80f5
	inc e			;80f7
sub_80f8h:
	ld a,060h		;80f8
	pop af			;80fa
	rst 18h			;80fb
	nop			;80fc
	nop			;80fd
sub_80feh:
	rlca			;80fe
	dec sp			;80ff
	ld a,b			;8100
	rlca			;8101
	ld bc,01a26h		;8102
	rlca			;8105
	ld (hl),d		;8106
	call m,00107h		;8107
	ld (bc),a		;810a
	dec b			;810b
	ld (bc),a		;810c
	nop			;810d
	ret po			;810e
	inc e			;810f
	ld e,0e0h		;8110
	add a,b			;8112
	ld h,h			;8113
	ld e,b			;8114
	ret po			;8115
	ld c,(hl)		;8116
	ccf			;8117
	ret po			;8118
l8119h:
	add a,b			;8119
	ld b,b			;811a
	jr nz,l80ddh		;811b
	nop			;811d
	ld bc,0790ch		;811e
	call m,03c7ch		;8121
l8124h:
	dec de			;8124
	ld a,a			;8125
	adc a,a			;8126
	defb 0fdh,07ch ;ld a,iyh	;8127
	jr c,l812dh		;8129
	ld b,003h		;812b
l812dh:
	nop			;812d
	ret nz			;812e
	ret p			;812f
	sbc a,(hl)		;8130
	ccf			;8131
	ld a,03ch		;8132
	ret c			;8134
	cp 0f1h			;8135
	cp a			;8137
	ld a,01ch		;8138
	ld b,b			;813a
	ret po			;813b
	add a,c			;813c
	ret nz			;813d
	nop			;813e
	add a,c			;813f
	ld b,003h		;8140
	ld c,088h		;8142
	halt			;8144
	ret m			;8145
	rlca			;8146
	inc e			;8147
	inc bc			;8148
	rrca			;8149
	ret m			;814a
	halt			;814b
	inc bc			;814c
	ld c,082h		;814d
	ld b,060h		;814f
	inc bc			;8151
	ld (hl),b		;8152
	adc a,b			;8153
	ld l,(hl)		;8154
	rra			;8155
	ret po			;8156
	jr c,l8119h		;8157
	ret p			;8159
	rra			;815a
	ld l,(hl)		;815b
	inc bc			;815c
	ld (hl),b		;815d
	add a,c			;815e
	ld h,b			;815f
	nop			;8160
	and b			;8161
	inc bc			;8162
	dec de			;8163
	dec sp			;8164
	ld a,e			;8165
	ld a,e			;8166
	ld a,d			;8167
	defb 0fdh,0fbh,0fbh ;illegal sequence	;8168
	defb 0fdh,07ah,07bh ;illegal sequence	;816b
	ld a,e			;816e
	dec sp			;816f
	dec de			;8170
	inc bc			;8171
	ret nz			;8172
	ret c			;8173
	call c,0dedeh		;8174
	ld e,(hl)		;8177
	cp a			;8178
	rst 18h			;8179
	rst 18h			;817a
	cp a			;817b
	ld e,(hl)		;817c
	sbc a,0deh		;817d
	call c,0c0d8h		;817f
	ld b,000h		;8182
	inc bc			;8184
	ld (bc),a		;8185
	ld (bc),a		;8186
	rlca			;8187
	add a,l			;8188
	ld (de),a		;8189
	add hl,de		;818a
	rrca			;818b
	rlca			;818c
	ld bc,l8003h		;818d
	inc bc			;8190
l8191h:
	ld b,b			;8191
	inc bc			;8192
	jr nz,l8197h		;8193
	djnz $-121		;8195
l8197h:
	jr c,l8191h		;8197
	ret p			;8199
	ret po			;819a
	add a,b			;819b
	inc bc			;819c
	ld bc,00303h		;819d
	inc bc			;81a0
	rlca			;81a1
	inc bc			;81a2
	rrca			;81a3
	add a,c			;81a4
	ld b,006h		;81a5
	nop			;81a7
	inc bc			;81a8
	add a,b			;81a9
	inc bc			;81aa
	ret nz			;81ab
	ld (bc),a		;81ac
	ret po			;81ad
	add a,c			;81ae
	ret nz			;81af
	ld a,(bc)		;81b0
	nop			;81b1
	adc a,h			;81b2
	ld bc,00602h		;81b3
	ld l,044h		;81b6
	ld h,b			;81b8
	scf			;81b9
	ccf			;81ba
	rra			;81bb
	rlca			;81bc
	nop			;81bd
	nop			;81be
	ld b,020h		;81bf
	inc bc			;81c1
	ld h,b			;81c2
	inc bc			;81c3
	ret po			;81c4
	add a,c			;81c5
	ret nz			;81c6
	dec b			;81c7
	nop			;81c8
	adc a,c			;81c9
	ld bc,00703h		;81ca
	rrca			;81cd
	rra			;81ce
	rra			;81cf
	ccf			;81d0
	rra			;81d1
	ex af,af'		;81d2
	inc b			;81d3
	nop			;81d4
	add a,d			;81d5
	jr nz,$+66		;81d6
	dec b			;81d8
	ret nz			;81d9
	inc bc			;81da
	add a,b			;81db
	dec bc			;81dc
	nop			;81dd
	adc a,c			;81de
	inc bc			;81df
	ld l,06eh		;81e0
	ld h,h			;81e2
	ld (hl),b		;81e3
	ld a,c			;81e4
	ccf			;81e5
	ccf			;81e6
	rrca			;81e7
	inc b			;81e8
	nop			;81e9
	adc a,e			;81ea
	inc b			;81eb
	ex af,af'		;81ec
	adc a,b			;81ed
	djnz $+18		;81ee
	jr nz,l8212h		;81f0
	ld b,b			;81f2
	ret nz			;81f3
	add a,b			;81f4
	add a,b			;81f5
l81f6h:
	rlca			;81f6
	nop			;81f7
sub_81f8h:
	add a,d			;81f8
	inc bc			;81f9
	rrca			;81fa
	inc bc			;81fb
	rra			;81fc
	add a,d			;81fd
	rrca			;81fe
	ld b,006h		;81ff
	nop			;8201
	adc a,c			;8202
	inc c			;8203
	jr c,l81f6h		;8204
	ret p			;8206
	ret po			;8207
	ret po			;8208
l8209h:
	ret nz			;8209
	ret nz			;820a
	add a,b			;820b
	ld a,(bc)		;820c
	nop			;820d
	adc a,d			;820e
	jr nz,$+81		;820f
	ld e,(hl)		;8211
l8212h:
	ret z			;8212
	ret po			;8213
	pop hl			;8214
	ld a,a			;8215
	ld a,a			;8216
	ld a,00ch		;8217
	ld b,000h		;8219
	add a,a			;821b
	ld (bc),a		;821c
	add a,h			;821d
	ex af,af'		;821e
	djnz l8281h		;821f
	ret nz			;8221
	add a,b			;8222
	add hl,bc		;8223
	nop			;8224
	add a,c			;8225
	rra			;8226
	inc bc			;8227
	ccf			;8228
	add a,d			;8229
	rra			;822a
	ld e,00ah		;822b
	nop			;822d
	add a,l			;822e
	call m,0f0f8h		;822f
	ret po			;8232
	add a,b			;8233
	add hl,bc		;8234
	nop			;8235
	adc a,d			;8236
	jr l8269h		;8237
	ld h,(hl)		;8239
	ld l,a			;823a
	or 0f0h			;823b
	ld (hl),b		;823d
	ld a,c			;823e
	ld a,018h		;823f
	add hl,bc		;8241
	nop			;8242
	add a,l			;8243
	ret nz			;8244
	nop			;8245
	rlca			;8246
	jr c,l8209h		;8247
	add hl,bc		;8249
	nop			;824a
	add a,e			;824b
l824ch:
	ld c,01fh		;824c
	rra			;824e
	inc bc			;824f
	rrca			;8250
	add a,c			;8251
	ld b,00ah		;8252
	nop			;8254
	add a,l			;8255
	ret nz			;8256
	ret m			;8257
	rst 38h			;8258
	ret m			;8259
	ret nz			;825a
	rlca			;825b
	nop			;825c
	adc a,d			;825d
	inc c			;825e
	ld a,(06270h)		;825f
	rst 30h			;8262
	di			;8263
	ret p			;8264
	ld a,b			;8265
	ld a,a			;8266
	ccf			;8267
	dec bc			;8268
l8269h:
	nop			;8269
	add a,l			;826a
	add a,b			;826b
	ld b,b			;826c
	nop			;826d
	nop			;826e
	call m,00007h		;826f
	add a,e			;8272
	inc b			;8273
	rrca			;8274
	rra			;8275
	inc bc			;8276
	rrca			;8277
	add a,c			;8278
	rlca			;8279
	dec bc			;827a
	nop			;827b
	add a,a			;827c
	add a,b			;827d
	ret nz			;827e
	ret po			;827f
	ret p			;8280
l8281h:
	ret m			;8281
	call m,00602h		;8282
	nop			;8285
	adc a,d			;8286
	rrca			;8287
	ccf			;8288
	inc a			;8289
	ld a,c			;828a
	ld (hl),e		;828b
	ld (hl),c		;828c
	ld a,b			;828d
	jr c,l829ch		;828e
	inc bc			;8290
	rlca			;8291
	nop			;8292
	adc a,h			;8293
	add a,b			;8294
	nop			;8295
	add a,b			;8296
	add a,b			;8297
	ret nz			;8298
	ld b,b			;8299
	jr nz,l829ch		;829a
l829ch:
	nop			;829c
	ret nz			;829d
	jr nc,l82a8h		;829e
	dec b			;82a0
	nop			;82a1
	add a,a			;82a2
	inc bc			;82a3
	rlca			;82a4
	rrca			;82a5
	rrca			;82a6
	rlca			;82a7
l82a8h:
	rlca			;82a8
	inc bc			;82a9
	add hl,bc		;82aa
	nop			;82ab
	sbc a,c			;82ac
	add a,b			;82ad
	ret nz			;82ae
	ret nz			;82af
	ret po			;82b0
	ret po			;82b1
	ret p			;82b2
	ret p			;82b3
	ret m			;82b4
	jr c,l82c3h		;82b5
	inc b			;82b7
	nop			;82b8
	nop			;82b9
	rlca			;82ba
	rra			;82bb
	ld a,038h		;82bc
	ld a,c			;82be
	ld a,b			;82bf
	jr c,l82deh		;82c0
	inc c			;82c2
l82c3h:
	ld b,002h		;82c3
	ld bc,00005h		;82c5
	add a,e			;82c8
	ret nz			;82c9
	jr nz,l824ch		;82ca
	inc bc			;82cc
	ret nz			;82cd
	ld (bc),a		;82ce
	ld b,b			;82cf
	inc bc			;82d0
	nop			;82d1
	add a,e			;82d2
	add a,b			;82d3
	ld b,b			;82d4
	jr nz,$+5		;82d5
	nop			;82d7
	add a,c			;82d8
	ld bc,00704h		;82d9
	ld (bc),a		;82dc
	inc bc			;82dd
l82deh:
	ld (bc),a		;82de
	ld bc,00007h		;82df
	add a,c			;82e2
	ret nz			;82e3
	add hl,bc		;82e4
	ret po			;82e5
	adc a,e			;82e6
	ld h,b			;82e7
	jr nz,l82eah		;82e8
l82eah:
	nop			;82ea
	ld bc,00f07h		;82eb
	add hl,de		;82ee
	ld (de),a		;82ef
	rlca			;82f0
	rlca			;82f1
	inc bc			;82f2
	ld (bc),a		;82f3
	ld b,000h		;82f4
	add a,a			;82f6
	add a,b			;82f7
	ret po			;82f8
	ret p			;82f9
	ret m			;82fa
	jr c,l830dh		;82fb
	djnz l8302h		;82fd
	jr nz,l8304h		;82ff
	ld b,b			;8301
l8302h:
	inc bc			;8302
	add a,b			;8303
l8304h:
	inc bc			;8304
	nop			;8305
	add a,c			;8306
	ld b,003h		;8307
	rrca			;8309
	inc bc			;830a
	rlca			;830b
	inc bc			;830c
l830dh:
	inc bc			;830d
	inc bc			;830e
	ld bc,00004h		;830f
	add a,e			;8312
	ret nz			;8313
	ret po			;8314
	ret po			;8315
	inc bc			;8316
	ret nz			;8317
	inc bc			;8318
	add a,b			;8319
	inc b			;831a
	nop			;831b
	add a,e			;831c
	inc bc			;831d
	inc b			;831e
	ld bc,00303h		;831f
	ld (bc),a		;8322
	ld (bc),a		;8323
	inc bc			;8324
	nop			;8325
l8326h:
	sub b			;8326
	ld bc,00402h		;8327
	nop			;832a
	ret po			;832b
	ret m			;832c
	ld a,h			;832d
	inc e			;832e
	sbc a,(hl)		;832f
	ld e,01ch		;8330
	jr c,l8364h		;8332
	ld h,b			;8334
	ld b,b			;8335
	add a,b			;8336
	ld b,000h		;8337
	add a,c			;8339
	inc bc			;833a
	add hl,bc		;833b
	rlca			;833c
	add a,d			;833d
	ld b,004h		;833e
	inc b			;8340
	nop			;8341
	add a,c			;8342
	add a,b			;8343
	inc b			;8344
	ret po			;8345
	ld (bc),a		;8346
	ret nz			;8347
	ld (bc),a		;8348
	add a,b			;8349
	rlca			;834a
	nop			;834b
	adc a,h			;834c
	ld bc,00100h		;834d
	ld bc,00203h		;8350
	inc b			;8353
	nop			;8354
	nop			;8355
	inc bc			;8356
	inc c			;8357
	djnz l835dh		;8358
	nop			;835a
	adc a,d			;835b
	ret p			;835c
l835dh:
	call m,sub_9e3ch	;835d
	adc a,08eh		;8360
	ld e,01ch		;8362
l8364h:
	jr nc,l8326h		;8364
	ex af,af'		;8366
	nop			;8367
	adc a,e			;8368
	ld bc,00303h		;8369
	rlca			;836c
	rlca			;836d
	rrca			;836e
	rrca			;836f
	rra			;8370
	inc e			;8371
	jr nc,$+34		;8372
	dec b			;8374
	nop			;8375
	add a,a			;8376
	ret nz			;8377
	ret po			;8378
	ret p			;8379
	ret p			;837a
	ret po			;837b
	ret po			;837c
	ret nz			;837d
	inc c			;837e
	nop			;837f
	add a,l			;8380
	ld bc,00002h		;8381
	nop			;8384
	ccf			;8385
	ld b,000h		;8386
	adc a,d			;8388
	jr nc,l83e7h		;8389
	ld c,046h		;838b
	rst 28h			;838d
	rst 8			;838e
	rrca			;838f
	ld e,0feh		;8390
l8392h:
	call m,00009h		;8392
	add a,a			;8395
	ld bc,00703h		;8396
	rrca			;8399
	rra			;839a
	ccf			;839b
	ld b,b			;839c
	rlca			;839d
	nop			;839e
sub_839fh:
	add a,e			;839f
	jr nz,l8392h		;83a0
	ret m			;83a2
	inc bc			;83a3
	ret p			;83a4
	add a,c			;83a5
	ret po			;83a6
	dec c			;83a7
	nop			;83a8
	add a,l			;83a9
	inc bc			;83aa
	nop			;83ab
	ret po			;83ac
	inc e			;83ad
	inc bc			;83ae
	ex af,af'		;83af
	nop			;83b0
	adc a,d			;83b1
	jr l83c0h		;83b2
	ld h,(hl)		;83b4
	or 06fh			;83b5
	rrca			;83b7
	ld c,09eh		;83b8
	ld a,h			;83ba
	jr l83c5h		;83bb
	nop			;83bd
	add a,l			;83be
	inc bc			;83bf
l83c0h:
	rra			;83c0
	rst 38h			;83c1
	rra			;83c2
	inc bc			;83c3
	ld a,(bc)		;83c4
l83c5h:
	nop			;83c5
	add a,e			;83c6
	ld (hl),b		;83c7
	ret m			;83c8
	ret m			;83c9
	inc bc			;83ca
	ret p			;83cb
	add a,c			;83cc
	ld h,b			;83cd
	ld a,(bc)		;83ce
	nop			;83cf
	add a,a			;83d0
	ld b,b			;83d1
	ld hl,00810h		;83d2
	ld b,003h		;83d5
	ld bc,00009h		;83d7
	adc a,d			;83da
	inc b			;83db
	jp p,0137ah		;83dc
	rlca			;83df
	add a,a			;83e0
	cp 0feh			;83e1
	ld a,h			;83e3
	jr nc,l83ech		;83e4
	nop			;83e6
l83e7h:
	add a,l			;83e7
	ccf			;83e8
	rra			;83e9
	rrca			;83ea
	rlca			;83eb
l83ech:
	ld bc,0000bh		;83ec
	add a,c			;83ef
	ret m			;83f0
	inc bc			;83f1
	call m,0f882h		;83f2
	ld a,b			;83f5
	ex af,af'		;83f6
	nop			;83f7
	adc a,e			;83f8
	jr nz,$+18		;83f9
	ld de,00808h		;83fb
	inc b			;83fe
sub_83ffh:
	inc b			;83ff
	ld (bc),a		;8400
	inc bc			;8401
	ld bc,00801h		;8402
	nop			;8405
	adc a,c			;8406
	ret nz			;8407
	ld (hl),h		;8408
	halt			;8409
	ld h,00eh		;840a
	sbc a,(hl)		;840c
	call m,0f0fch		;840d
	inc bc			;8410
	nop			;8411
	adc a,c			;8412
	jr nc,l8431h		;8413
	rrca			;8415
	rrca			;8416
	rlca			;8417
	rlca			;8418
	inc bc			;8419
	inc bc			;841a
	ld bc,0000ah		;841b
	add a,d			;841e
	ret nz			;841f
	ret p			;8420
	inc bc			;8421
	ret m			;8422
	add a,d			;8423
	ret p			;8424
	ld h,b			;8425
	ld b,000h		;8426
	ld b,004h		;8428
	inc bc			;842a
	ld b,003h		;842b
	rlca			;842d
	add a,c			;842e
	inc bc			;842f
	rlca			;8430
l8431h:
	nop			;8431
	adc a,l			;8432
	add a,b			;8433
	ld b,b			;8434
	ld h,b			;8435
	ld (hl),h		;8436
	ld (0ec06h),hl		;8437
	call m,0e0f8h		;843a
	nop			;843d
	inc b			;843e
	ld (bc),a		;843f
	dec b			;8440
	inc bc			;8441
	inc bc			;8442
l8443h:
	ld bc,00009h		;8443
	adc a,c			;8446
	add a,b			;8447
	ret nz			;8448
	ret po			;8449
	ret p			;844a
	ret m			;844b
	ret m			;844c
	call m,010f8h		;844d
	inc b			;8450
	nop			;8451
	sbc a,(hl)		;8452
	inc bc			;8453
	inc c			;8454
	djnz l847dh		;8455
	cpl			;8457
	ld c,a			;8458
	ld b,(hl)		;8459
	ld h,b			;845a
	ld h,b			;845b
	jr nc,l849ah		;845c
	rla			;845e
	ld c,003h		;845f
	nop			;8461
	nop			;8462
	ret nz			;8463
	ret p			;8464
	jr c,l847bh		;8465
	inc e			;8467
	ld c,00ah		;8468
	ld a,(de)		;846a
	ld d,024h		;846b
	call z,07098h		;846d
	ret nz			;8470
	inc bc			;8471
	nop			;8472
	adc a,h			;8473
	inc bc			;8474
	rrca			;8475
	rra			;8476
	rra			;8477
	ccf			;8478
	ccf			;8479
	rra			;847a
l847bh:
	rra			;847b
	rrca			;847c
l847dh:
	inc bc			;847d
	ex af,af'		;847e
	ld bc,00005h		;847f
	adc a,l			;8482
	ret nz			;8483
	ret pe			;8484
	ret po			;8485
	ret p			;8486
	call p,0e8e4h		;8487
	ret c			;848a
	jr nc,l84edh		;848b
	add a,b			;848d
	nop			;848e
	nop			;848f
	nop			;8490
	ret po			;8491
	nop			;8492
	inc c			;8493
	rra			;8494
	rra			;8495
	ld e,01ch		;8496
	dec e			;8498
	dec a			;8499
l849ah:
	inc a			;849a
	ld a,03fh		;849b
	rra			;849d
	rlca			;849e
	rlca			;849f
	inc bc			;84a0
	nop			;84a1
	ld (hl),b		;84a2
	ret m			;84a3
	call m,01ffeh		;84a4
	rst 8			;84a7
	rst 28h			;84a8
	rst 28h			;84a9
	adc a,01eh		;84aa
	cp 0feh			;84ac
	call m,sub_80f8h	;84ae
	nop			;84b1
	jr c,l8533h		;84b2
	ld a,a			;84b4
	ld a,b			;84b5
	inc sp			;84b6
	scf			;84b7
	scf			;84b8
	inc sp			;84b9
	ld a,c			;84ba
	ld a,h			;84bb
	ccf			;84bc
	rrca			;84bd
	rlca			;84be
	rlca			;84bf
	inc bc			;84c0
	nop			;84c1
	ret po			;84c2
	ret p			;84c3
	ret p			;84c4
l84c5h:
	ld (hl),b		;84c5
	jr c,$-96		;84c6
	sbc a,0deh		;84c8
	sbc a,h			;84ca
	jr c,l84c5h		;84cb
	call m,0bcfch		;84cd
	jr l84d2h		;84d0
l84d2h:
	ld (hl),b		;84d2
	call m,07fffh		;84d3
	jr c,l84ebh		;84d6
	inc de			;84d8
	add hl,de		;84d9
	inc a			;84da
	ld a,(hl)		;84db
	rst 38h			;84dc
	rst 38h			;84dd
	rst 30h			;84de
	ld h,e			;84df
	inc bc			;84e0
	inc bc			;84e1
	ld h,b			;84e2
	ret p			;84e3
	ret p			;84e4
	cp 0ffh			;84e5
	ccf			;84e7
	sbc a,a			;84e8
	sbc a,0e8h		;84e9
l84ebh:
	ld l,b			;84eb
	sbc a,b			;84ec
l84edh:
	call m,0bffeh		;84ed
	sbc a,a			;84f0
	ld c,000h		;84f1
	and b			;84f3
	ld bc,00603h		;84f4
	ld bc,0301bh		;84f7
	ld a,a			;84fa
	rst 38h			;84fb
	jr nz,l857dh		;84fc
	inc (hl)		;84fe
	jr $+15			;84ff
	ld b,002h		;8501
	ld bc,0e820h		;8503
	ld a,(de)		;8506
	ret nz			;8507
	jp c,0ff3fh		;8508
	cp a			;850b
	ccf			;850c
	defb 0fdh,09ah,01ah ;illegal sequence	;850d
	ld e,d			;8510
	jp z,020f8h		;8511
	inc bc			;8514
	nop			;8515
	sbc a,l			;8516
	inc c			;8517
	dec de			;8518
	rlca			;8519
	ccf			;851a
	jr nz,$+1		;851b
	ld a,a			;851d
	rla			;851e
	inc de			;851f
	add hl,bc		;8520
	ld b,003h		;8521
	ld bc,0f8e0h		;8523
	ret nz			;8526
	ld a,(de)		;8527
	jp c,0e4a5h		;8528
	ld h,h			;852b
	call po,080e7h		;852c
	ret nz			;852f
	jp c,0f8dah		;8530
l8533h:
	ret po			;8533
	nop			;8534
	adc a,l			;8535
	inc sp			;8536
	rlca			;8537
	rlca			;8538
	dec de			;8539
	inc de			;853a
	ld h,a			;853b
	ccf			;853c
	ex af,af'		;853d
	rlca			;853e
	inc hl			;853f
	ld b,e			;8540
	rrca			;8541
	dec bc			;8542
	inc bc			;8543
	rlca			;8544
	call 0f066h		;8545
	ret p			;8548
	call pe,0e6e4h		;8549
	call m,0f089h		;854c
	ret nz			;854f
	ret nz			;8550
	ret po			;8551
	add a,h			;8552
	ret nz			;8553
	add a,b			;8554
	nop			;8555
	inc bc			;8556
	ld a,(hl)		;8557
	ld a,h			;8558
	jr c,l8579h		;8559
	rra			;855b
	cp 00bh			;855c
	ld e,01bh		;855e
	inc hl			;8560
	ld c,l			;8561
	ld c,c			;8562
	inc c			;8563
	ld c,003h		;8564
	ld h,b			;8566
	cp a			;8567
	rra			;8568
	adc a,03dh		;8569
	ret m			;856b
	cp h			;856c
	jp (hl)			;856d
	ld a,0d8h		;856e
	ret nz			;8570
	ld a,b			;8571
	inc b			;8572
	ld b,d			;8573
	add a,b			;8574
	nop			;8575
	ld h,(hl)		;8576
	rrca			;8577
	rrca			;8578
l8579h:
	scf			;8579
	daa			;857a
	ld h,a			;857b
l857ch:
	ccf			;857c
l857dh:
	sub c			;857d
	rrca			;857e
	inc bc			;857f
	inc bc			;8580
	rlca			;8581
	ld hl,00103h		;8582
	nop			;8585
	call z,0e0e0h		;8586
	ret c			;8589
	ret z			;858a
	and 0fch		;858b
	djnz $-30		;858d
	call nz,0f0c2h		;858f
	ret nc			;8592
	inc bc			;8593
	ret po			;8594
	or b			;8595
	ld b,0fdh		;8596
	ret m			;8598
	ld (hl),e		;8599
	cp h			;859a
	rra			;859b
	dec a			;859c
	sub a			;859d
	ld a,h			;859e
	dec de			;859f
	inc bc			;85a0
	ld e,020h		;85a1
	ld b,d			;85a3
	ld bc,0c000h		;85a4
	ld a,(hl)		;85a7
	ld a,01ch		;85a8
	ld a,b			;85aa
	ret m			;85ab
	ld a,a			;85ac
	ret nc			;85ad
	ld a,b			;85ae
	ret c			;85af
	call nz,sub_92b2h	;85b0
	jr nc,l8625h		;85b3
	ret nz			;85b5
	nop			;85b6
	ld bc,02103h		;85b7
	rlca			;85ba
	inc bc			;85bb
	inc bc			;85bc
	rrca			;85bd
	sub c			;85be
	ccf			;85bf
	ld h,a			;85c0
	daa			;85c1
	scf			;85c2
	rrca			;85c3
	rrca			;85c4
	ld h,(hl)		;85c5
	inc bc			;85c6
	ret po			;85c7
	xor l			;85c8
	ret nc			;85c9
	ret p			;85ca
	jp nz,0e0c4h		;85cb
	djnz $-2		;85ce
	and 0c8h		;85d0
	ret c			;85d2
	ret po			;85d3
	ret po			;85d4
	call z,00100h		;85d5
	ld b,d			;85d8
	jr nz,l85f9h		;85d9
	inc bc			;85db
	dec de			;85dc
	ld a,h			;85dd
	sub a			;85de
	dec a			;85df
	rra			;85e0
	cp h			;85e1
	ld (hl),e		;85e2
	ret m			;85e3
	defb 0fdh,006h,0c0h ;illegal sequence	;85e4
	ld (hl),b		;85e7
	jr nc,l857ch		;85e8
	or d			;85ea
	call nz,078d8h		;85eb
	ret nc			;85ee
	ld a,a			;85ef
	ret m			;85f0
	ld a,b			;85f1
	inc e			;85f2
	ld a,07eh		;85f3
	ret nz			;85f5
	inc bc			;85f6
	rlca			;85f7
	rst 0			;85f8
l85f9h:
	dec bc			;85f9
	rrca			;85fa
	ld b,e			;85fb
	inc hl			;85fc
	rlca			;85fd
	ex af,af'		;85fe
	ccf			;85ff
	ld h,a			;8600
	inc de			;8601
	dec de			;8602
	rlca			;8603
	rlca			;8604
	inc sp			;8605
	nop			;8606
	add a,b			;8607
	ret nz			;8608
	add a,h			;8609
	ret po			;860a
	ret nz			;860b
	ret nz			;860c
	ret p			;860d
	adc a,c			;860e
	call m,0e4e6h		;860f
	call pe,0f0f0h		;8612
	ld h,(hl)		;8615
	inc bc			;8616
	ld c,00ch		;8617
	ld c,c			;8619
	ld c,l			;861a
	inc hl			;861b
	dec de			;861c
	ld e,00bh		;861d
	cp 01fh			;861f
	ld e,038h		;8621
	ld a,h			;8623
	ld a,(hl)		;8624
l8625h:
	inc bc			;8625
	nop			;8626
	add a,b			;8627
	ld b,d			;8628
	inc b			;8629
	ld a,b			;862a
	ret nz			;862b
	ret c			;862c
	ld a,0e9h		;862d
	cp h			;862f
	ret m			;8630
	dec a			;8631
	adc a,01fh		;8632
	cp a			;8634
	ld h,b			;8635
	nop			;8636
	inc c			;8637
	ld (bc),a		;8638
	ld bc,0f979h		;8639
	rst 38h			;863c
	djnz l863fh		;863d
l863fh:
	ccf			;863f
	inc bc			;8640
	add hl,bc		;8641
	and b			;8642
	ld de,00021h		;8643
	ld b,b			;8646
	ld h,(hl)		;8647
	ld h,a			;8648
	ld e,a			;8649
	sbc a,0feh		;864a
	rst 38h			;864c
	nop			;864d
	adc a,b			;864e
	rst 30h			;864f
	rst 38h			;8650
	sub 0deh		;8651
	ld a,a			;8653
	daa			;8654
	sub (hl)		;8655
	nop			;8656
	djnz l865dh		;8657
	ld (bc),a		;8659
	ld a,(bc)		;865a
	ld a,c			;865b
	rst 0			;865c
l865dh:
	ld (hl),c		;865d
	add hl,sp		;865e
	ld a,009h		;865f
	inc bc			;8661
	ld (bc),a		;8662
	dec b			;8663
	nop			;8664
	sub c			;8665
	ld c,b			;8666
	ld (hl),b		;8667
	ld h,b			;8668
	xor 073h		;8669
	sbc a,09ch		;866b
	add hl,hl		;866d
	ld (hl),e		;866e
	and 060h		;866f
	ld d,b			;8671
	ex af,af'		;8672
	nop			;8673
	nop			;8674
	ld hl,00311h		;8675
	add hl,bc		;8678
	sbc a,d			;8679
	ccf			;867a
	nop			;867b
	djnz $+1		;867c
	ld sp,hl		;867e
	ld a,c			;867f
	ld bc,00c02h		;8680
	nop			;8683
	sub (hl)		;8684
	daa			;8685
	ld a,a			;8686
	sbc a,0d6h		;8687
	rst 38h			;8689
	rst 30h			;868a
	adc a,b			;868b
	nop			;868c
	rst 38h			;868d
	cp 0deh			;868e
	ld e,a			;8690
	ld h,a			;8691
	ld h,(hl)		;8692
	ld b,b			;8693
	inc bc			;8694
	nop			;8695
	or b			;8696
	ld (bc),a		;8697
	inc bc			;8698
	add hl,bc		;8699
	ld a,039h		;869a
sub_869ch:
	ld (hl),c		;869c
	rst 0			;869d
	ld a,c			;869e
	ld a,(bc)		;869f
	ld (bc),a		;86a0
	inc b			;86a1
	djnz l86a4h		;86a2
l86a4h:
	nop			;86a4
	ex af,af'		;86a5
	ld d,b			;86a6
	ld h,b			;86a7
	and 073h		;86a8
	add hl,hl		;86aa
	sbc a,h			;86ab
	sbc a,073h		;86ac
	xor 060h		;86ae
	ld (hl),b		;86b0
	ld c,b			;86b1
	nop			;86b2
	nop			;86b3
	ld l,c			;86b4
	call po,07bfeh		;86b5
	ld l,e			;86b8
	rst 38h			;86b9
	rst 28h			;86ba
	ld de,0ff00h		;86bb
	ld a,a			;86be
	ld a,e			;86bf
	jp m,066e6h		;86c0
	ld (bc),a		;86c3
	nop			;86c4
	add a,h			;86c5
	adc a,b			;86c6
	inc bc			;86c7
	sub b			;86c8
	sbc a,b			;86c9
	call m,00800h		;86ca
	rst 38h			;86cd
	sbc a,a			;86ce
	sbc a,(hl)		;86cf
	add a,b			;86d0
	ld b,b			;86d1
	jr nc,l86d4h		;86d2
l86d4h:
	nop			;86d4
	djnz l86e1h		;86d5
	ld b,067h		;86d7
	adc a,094h		;86d9
	add hl,sp		;86db
	ld a,e			;86dc
	adc a,077h		;86dd
	ld b,00eh		;86df
l86e1h:
	ld (de),a		;86e1
	dec b			;86e2
	nop			;86e3
	and a			;86e4
	ld b,b			;86e5
	ret nz			;86e6
	sub b			;86e7
	ld a,h			;86e8
	sbc a,h			;86e9
	adc a,(hl)		;86ea
	ex (sp),hl		;86eb
	sbc a,(hl)		;86ec
	ld d,b			;86ed
	ld b,b			;86ee
	jr nz,l86f9h		;86ef
	nop			;86f1
	ld (bc),a		;86f2
	ld h,(hl)		;86f3
	and 0fah		;86f4
	ld a,e			;86f6
	ld a,a			;86f7
	rst 38h			;86f8
l86f9h:
	nop			;86f9
	ld de,0ffefh		;86fa
	ld l,e			;86fd
	ld a,e			;86fe
	cp 0e4h			;86ff
	ld l,c			;8701
	nop			;8702
	jr nc,l8745h		;8703
	add a,b			;8705
	sbc a,(hl)		;8706
	sbc a,a			;8707
	rst 38h			;8708
	ex af,af'		;8709
	nop			;870a
	call m,09003h		;870b
	add a,d			;870e
	adc a,b			;870f
	add a,h			;8710
	inc bc			;8711
	nop			;8712
	sbc a,e			;8713
	ld (de),a		;8714
	ld c,006h		;8715
	ld (hl),a		;8717
	adc a,07bh		;8718
	add hl,sp		;871a
	sub h			;871b
	adc a,067h		;871c
	ld b,00ah		;871e
	djnz l8722h		;8720
l8722h:
	nop			;8722
	ex af,af'		;8723
	jr nz,$+66		;8724
	ld d,b			;8726
	sbc a,(hl)		;8727
	ex (sp),hl		;8728
	adc a,(hl)		;8729
	sbc a,h			;872a
	ld a,h			;872b
	sub b			;872c
	ret nz			;872d
	ld b,b			;872e
	inc bc			;872f
	nop			;8730
	adc a,l			;8731
	inc sp			;8732
	rlca			;8733
	rlca			;8734
	inc hl			;8735
	inc de			;8736
	ld h,a			;8737
	ccf			;8738
	inc bc			;8739
	rlca			;873a
	inc hl			;873b
	ld b,e			;873c
	rrca			;873d
	ld b,d			;873e
	inc bc			;873f
	rlca			;8740
	call 0f066h		;8741
	ret p			;8744
l8745h:
	ld (0e6e4h),hl		;8745
	call m,0f060h		;8748
	ret nz			;874b
	ret nz			;874c
	ret po			;874d
	add a,b			;874e
	ret nz			;874f
	add a,b			;8750
	nop			;8751
	inc bc			;8752
	ld a,(hl)		;8753
	ld a,h			;8754
	jr c,l8775h		;8755
	rra			;8757
	cp 008h			;8758
	ld e,01bh		;875a
	inc hl			;875c
	ld c,l			;875d
	ld c,c			;875e
	inc c			;875f
	ld c,003h		;8760
	ld h,b			;8762
	cp a			;8763
	rra			;8764
	adc a,03dh		;8765
	ret m			;8767
	cp h			;8768
	adc a,c			;8769
	ld a,0d8h		;876a
	ret nz			;876c
	ld a,b			;876d
	inc b			;876e
	ld b,d			;876f
	add a,b			;8770
	nop			;8771
	ld h,(hl)		;8772
	rrca			;8773
	rrca			;8774
l8775h:
	ld b,h			;8775
	daa			;8776
	ld h,a			;8777
l8778h:
	ccf			;8778
	ld b,00fh		;8779
	inc bc			;877b
	inc bc			;877c
	rlca			;877d
	ld bc,00103h		;877e
	nop			;8781
	call z,0e0e0h		;8782
	call nz,0e6c8h		;8785
	call m,0e0c0h		;8788
	call nz,0f0c2h		;878b
	ld b,d			;878e
	inc bc			;878f
	ret po			;8790
	or b			;8791
	ld b,0fdh		;8792
	ret m			;8794
	ld (hl),e		;8795
	cp h			;8796
	rra			;8797
	dec a			;8798
	sub c			;8799
	ld a,h			;879a
	dec de			;879b
	inc bc			;879c
	ld e,020h		;879d
	ld b,d			;879f
	ld bc,0c000h		;87a0
	ld a,(hl)		;87a3
	ld a,01ch		;87a4
	ld a,b			;87a6
	ret m			;87a7
	ld a,a			;87a8
	djnz l8823h		;87a9
	ret c			;87ab
	call nz,sub_92b2h	;87ac
	jr nc,l8821h		;87af
	ret nz			;87b1
	nop			;87b2
	ld bc,00103h		;87b3
	rlca			;87b6
	inc bc			;87b7
	inc bc			;87b8
	rrca			;87b9
	ld b,03fh		;87ba
	ld h,a			;87bc
	daa			;87bd
	ld b,h			;87be
	rrca			;87bf
	rrca			;87c0
	ld h,(hl)		;87c1
	inc bc			;87c2
	ret po			;87c3
	xor l			;87c4
	ld b,d			;87c5
	ret p			;87c6
	jp nz,0e0c4h		;87c7
	ret nz			;87ca
	call m,0c8e6h		;87cb
	call nz,0e0e0h		;87ce
	call z,00100h		;87d1
	ld b,d			;87d4
	jr nz,l87f5h		;87d5
	inc bc			;87d7
	dec de			;87d8
	ld a,h			;87d9
	sub c			;87da
	dec a			;87db
	rra			;87dc
	cp h			;87dd
	ld (hl),e		;87de
	ret m			;87df
	defb 0fdh,006h,0c0h ;illegal sequence	;87e0
	ld (hl),b		;87e3
	jr nc,l8778h		;87e4
	or d			;87e6
	call nz,078d8h		;87e7
	djnz l886bh		;87ea
	ret m			;87ec
	ld a,b			;87ed
	inc e			;87ee
	ld a,07eh		;87ef
	ret nz			;87f1
	inc bc			;87f2
	rlca			;87f3
	rst 0			;87f4
l87f5h:
	ld b,d			;87f5
	rrca			;87f6
	ld b,e			;87f7
	inc hl			;87f8
	rlca			;87f9
	inc bc			;87fa
	ccf			;87fb
	ld h,a			;87fc
	inc de			;87fd
	inc hl			;87fe
	rlca			;87ff
	rlca			;8800
	inc sp			;8801
	nop			;8802
	add a,b			;8803
	ret nz			;8804
	add a,b			;8805
	ret po			;8806
	ret nz			;8807
	ret nz			;8808
	ret p			;8809
	ld h,b			;880a
	call m,0e4e6h		;880b
	ld (0f0f0h),hl		;880e
	ld h,(hl)		;8811
	inc bc			;8812
	ld c,00ch		;8813
	ld c,c			;8815
	ld c,l			;8816
	inc hl			;8817
	dec de			;8818
	ld e,008h		;8819
	cp 01fh			;881b
	ld e,038h		;881d
	ld a,h			;881f
	ld a,(hl)		;8820
l8821h:
	inc bc			;8821
	nop			;8822
l8823h:
	add a,b			;8823
	ld b,d			;8824
	inc b			;8825
	ld a,b			;8826
	ret nz			;8827
	ret c			;8828
	ld a,089h		;8829
	cp h			;882b
	ret m			;882c
	dec a			;882d
	adc a,01fh		;882e
	cp a			;8830
	ld h,b			;8831
	nop			;8832
	inc c			;8833
	ld (bc),a		;8834
	ld bc,0f979h		;8835
	rst 38h			;8838
	ld h,c			;8839
	add hl,sp		;883a
	ccf			;883b
	inc bc			;883c
	add hl,bc		;883d
	and b			;883e
	ld de,00021h		;883f
	ld b,b			;8842
	ld h,(hl)		;8843
	ld h,a			;8844
	ld e,a			;8845
	sbc a,0feh		;8846
	rst 38h			;8848
	sbc a,014h		;8849
	rst 30h			;884b
	rst 38h			;884c
	sub 0deh		;884d
	ld a,a			;884f
	daa			;8850
	sub (hl)		;8851
	nop			;8852
	djnz l8859h		;8853
	ld (bc),a		;8855
	ld a,(bc)		;8856
	ld a,c			;8857
	rst 0			;8858
l8859h:
	djnz l885bh		;8859
l885bh:
	ld a,009h		;885b
	inc bc			;885d
	ld (bc),a		;885e
	dec b			;885f
	nop			;8860
l8861h:
	sub c			;8861
	ld c,b			;8862
	ld (hl),b		;8863
	ld h,b			;8864
	xor 073h		;8865
	nop			;8867
	adc a,b			;8868
	add hl,hl		;8869
	ld (hl),e		;886a
l886bh:
	and 060h		;886b
	ld d,b			;886d
	ex af,af'		;886e
	nop			;886f
	nop			;8870
	ld hl,00311h		;8871
	add hl,bc		;8874
	sbc a,d			;8875
	ccf			;8876
	add hl,sp		;8877
	ld h,c			;8878
	rst 38h			;8879
	ld sp,hl		;887a
	ld a,c			;887b
	ld bc,00c02h		;887c
	nop			;887f
	sub (hl)		;8880
	daa			;8881
	ld a,a			;8882
	sbc a,0d6h		;8883
	rst 38h			;8885
	rst 30h			;8886
	inc d			;8887
	sbc a,0ffh		;8888
	cp 0deh			;888a
	ld e,a			;888c
	ld h,a			;888d
	ld h,(hl)		;888e
	ld b,b			;888f
	inc bc			;8890
	nop			;8891
	or b			;8892
	ld (bc),a		;8893
	inc bc			;8894
	add hl,bc		;8895
	ld a,000h		;8896
	djnz l8861h		;8898
	ld a,c			;889a
	ld a,(bc)		;889b
	ld (bc),a		;889c
	inc b			;889d
	djnz l88a0h		;889e
l88a0h:
	nop			;88a0
	ex af,af'		;88a1
	ld d,b			;88a2
	ld h,b			;88a3
	and 073h		;88a4
	add hl,hl		;88a6
	adc a,b			;88a7
	nop			;88a8
	ld (hl),e		;88a9
	xor 060h		;88aa
	ld (hl),b		;88ac
	ld c,b			;88ad
	nop			;88ae
	nop			;88af
	ld l,c			;88b0
	call po,07bfeh		;88b1
	ld l,e			;88b4
	rst 38h			;88b5
	rst 28h			;88b6
	jr z,$+125		;88b7
	rst 38h			;88b9
	ld a,a			;88ba
	ld a,e			;88bb
	jp m,066e6h		;88bc
	ld (bc),a		;88bf
	nop			;88c0
	add a,h			;88c1
	adc a,b			;88c2
	inc bc			;88c3
	sub b			;88c4
	sbc a,b			;88c5
	call m,sub_869ch	;88c6
	rst 38h			;88c9
	sbc a,a			;88ca
	sbc a,(hl)		;88cb
	add a,b			;88cc
	ld b,b			;88cd
	jr nc,l88d0h		;88ce
l88d0h:
	nop			;88d0
	djnz l88ddh		;88d1
	ld b,067h		;88d3
	adc a,094h		;88d5
	ld de,0ce00h		;88d7
	ld (hl),a		;88da
	ld b,00eh		;88db
l88ddh:
	ld (de),a		;88dd
	dec b			;88de
	nop			;88df
	and a			;88e0
	ld b,b			;88e1
	ret nz			;88e2
	sub b			;88e3
	ld a,h			;88e4
	nop			;88e5
	ex af,af'		;88e6
l88e7h:
	ex (sp),hl		;88e7
	sbc a,(hl)		;88e8
	ld d,b			;88e9
	ld b,b			;88ea
	jr nz,l88f5h		;88eb
	nop			;88ed
	ld (bc),a		;88ee
	ld h,(hl)		;88ef
	and 0fah		;88f0
	ld a,e			;88f2
	ld a,a			;88f3
	rst 38h			;88f4
l88f5h:
	ld a,e			;88f5
	jr z,l88e7h		;88f6
	rst 38h			;88f8
	ld l,e			;88f9
	ld a,e			;88fa
	cp 0e4h			;88fb
	ld l,c			;88fd
	nop			;88fe
	jr nc,l8941h		;88ff
	add a,b			;8901
	sbc a,(hl)		;8902
	sbc a,a			;8903
	rst 38h			;8904
	add a,(hl)		;8905
	sbc a,h			;8906
	call m,09003h		;8907
	add a,d			;890a
	adc a,b			;890b
	add a,h			;890c
	inc bc			;890d
	nop			;890e
	sbc a,e			;890f
	ld (de),a		;8910
	ld c,006h		;8911
	ld (hl),a		;8913
	adc a,000h		;8914
	ld de,0ce94h		;8916
	ld h,a			;8919
	ld b,00ah		;891a
	djnz l891eh		;891c
l891eh:
	nop			;891e
	ex af,af'		;891f
	jr nz,l8962h		;8920
	ld d,b			;8922
	sbc a,(hl)		;8923
	ex (sp),hl		;8924
	ex af,af'		;8925
	nop			;8926
	ld a,h			;8927
	sub b			;8928
	ret nz			;8929
	ld b,b			;892a
	inc bc			;892b
	nop			;892c
	nop			;892d
	add a,l			;892e
	nop			;892f
	ld (0fd7dh),a		;8930
	cp 004h			;8933
	rst 38h			;8935
	ld (bc),a		;8936
	ld a,a			;8937
	or l			;8938
	ccf			;8939
	rra			;893a
	rrca			;893b
	rlca			;893c
	inc bc			;893d
	nop			;893e
	ld c,b			;893f
	or h			;8940
l8941h:
	jp z,02de4h		;8941
	and 056h		;8944
	jp m,0fdfdh		;8946
	ei			;8949
	rst 38h			;894a
	rst 38h			;894b
	cp 0f8h			;894c
	ld bc,0230dh		;894e
	ld (hl),d		;8951
	ld (hl),c		;8952
	ret m			;8953
	push hl			;8954
	call p,059a6h		;8955
	ld (de),a		;8958
	dec de			;8959
	add hl,bc		;895a
	inc bc			;895b
	ld bc,0c000h		;895c
	or b			;895f
	ret z			;8960
	ld (hl),h		;8961
l8962h:
	ld a,(01dd2h)		;8962
	xor c			;8965
	dec b			;8966
	sub d			;8967
	ld h,d			;8968
	push af			;8969
	pop bc			;896a
	or d			;896b
	call c,000b0h		;896c
	sbc a,l			;896f
	nop			;8970
	add a,c			;8971
	ld b,c			;8972
	ld (0170fh),hl		;8973
	inc bc			;8976
	inc c			;8977
	inc de			;8978
	ld a,(bc)		;8979
	ld c,02bh		;897a
	inc bc			;897c
	nop			;897d
	ld bc,00000h		;897e
	ld (bc),a		;8981
	ld b,04ch		;8982
	ld l,b			;8984
	ret p			;8985
	ld d,b			;8986
	ret p			;8987
	ld d,b			;8988
	ret po			;8989
	ret nc			;898a
	ret m			;898b
	add a,b			;898c
	dec b			;898d
	nop			;898e
	sbc a,e			;898f
	jr nz,$+87		;8990
	inc (hl)		;8992
	ld c,01ch		;8993
	dec de			;8995
	inc c			;8996
	rra			;8997
	dec d			;8998
	dec e			;8999
	ld (bc),a		;899a
	ld bc,00100h		;899b
	nop			;899e
	nop			;899f
	ld a,(bc)		;89a0
	call nc,0e0d8h		;89a1
	ret p			;89a4
	ld (hl),b		;89a5
	ret p			;89a6
	ret p			;89a7
	or b			;89a8
	ld l,b			;89a9
	add a,b			;89aa
	inc bc			;89ab
	nop			;89ac
	nop			;89ad
	add a,l			;89ae
	ld sp,0317bh		;89af
	ccf			;89b2
	ld a,a			;89b3
	inc bc			;89b4
	rst 38h			;89b5
	add a,d			;89b6
	dec a			;89b7
	jp 0db03h		;89b8
	adc a,b			;89bb
	jp 03f3fh		;89bc
	adc a,h			;89bf
	sbc a,08ch		;89c0
	call m,003feh		;89c2
	rst 38h			;89c5
	add a,d			;89c6
	cp h			;89c7
	jp 0db03h		;89c8
	add a,(hl)		;89cb
	jp 0fcfch		;89cc
	ccf			;89cf
	ccf			;89d0
	jp 0db03h		;89d1
	add a,d			;89d4
	jp 0033dh		;89d5
	rst 38h			;89d8
	adc a,b			;89d9
	ld a,a			;89da
	ccf			;89db
	ld sp,0317bh		;89dc
	call m,0c3fch		;89df
	inc bc			;89e2
	in a,(082h)		;89e3
	jp 003bch		;89e5
	rst 38h			;89e8
	add a,l			;89e9
	cp 0fch			;89ea
	adc a,h			;89ec
	sbc a,08ch		;89ed
	nop			;89ef
	dec b			;89f0
	rst 38h			;89f1
	adc a,(hl)		;89f2
	rst 18h			;89f3
	ld h,a			;89f4
	inc de			;89f5
	adc a,e			;89f6
	ld b,c			;89f7
	and c			;89f8
	sub c			;89f9
	sub b			;89fa
	jr z,$+70		;89fb
	and h			;89fd
	nop			;89fe
	add a,b			;89ff
	add a,b			;8a00
	dec b			;8a01
	ret nz			;8a02
	inc b			;8a03
	ret po			;8a04
	inc b			;8a05
	ret p			;8a06
	add a,c			;8a07
	jr $+6			;8a08
	nop			;8a0a
	inc bc			;8a0b
	ld bc,00b02h		;8a0c
	add a,a			;8a0f
	ld (de),a		;8a10
	inc (hl)		;8a11
	ld h,l			;8a12
	ld c,c			;8a13
	jp 0f09fh		;8a14
	ld b,0f8h		;8a17
	inc bc			;8a19
	ret p			;8a1a
	ld (bc),a		;8a1b
	ret po			;8a1c
	ld (bc),a		;8a1d
	ret nz			;8a1e
	ld (bc),a		;8a1f
	add a,b			;8a20
	ld (bc),a		;8a21
	nop			;8a22
	add a,(hl)		;8a23
	ld hl,l8443h		;8a24
	ex af,af'		;8a27
	ld bc,0040fh		;8a28
	rst 38h			;8a2b
	add a,h			;8a2c
	call m,0c0f0h		;8a2d
	nop			;8a30
	dec b			;8a31
	rst 38h			;8a32
	ld (bc),a		;8a33
	cp 084h			;8a34
	call m,sub_80e0h	;8a36
	add a,b			;8a39
	ld b,000h		;8a3a
	add a,e			;8a3c
	ret nz			;8a3d
	ret p			;8a3e
	call m,0ff05h		;8a3f
l8a42h:
	add a,a			;8a42
	rst 18h			;8a43
	ld h,a			;8a44
	inc de			;8a45
	adc a,e			;8a46
	ld b,c			;8a47
	and c			;8a48
	sub c			;8a49
	dec b			;8a4a
	nop			;8a4b
	ld (bc),a		;8a4c
	add a,b			;8a4d
	dec b			;8a4e
	ret nz			;8a4f
	inc b			;8a50
	ret po			;8a51
	add a,l			;8a52
	sub b			;8a53
	jr z,l8a9ah		;8a54
	and h			;8a56
	jr $+6			;8a57
	nop			;8a59
	inc bc			;8a5a
	ld bc,00b02h		;8a5b
	add a,d			;8a5e
	ld (de),a		;8a5f
	inc (hl)		;8a60
	dec b			;8a61
	ret p			;8a62
	ld b,0f8h		;8a63
	inc bc			;8a65
	ret p			;8a66
	ld (bc),a		;8a67
	ret po			;8a68
	add a,h			;8a69
	ld h,l			;8a6a
	ld c,c			;8a6b
	jp 0059fh		;8a6c
	rst 38h			;8a6f
	ld (bc),a		;8a70
	cp 089h			;8a71
	call m,sub_80e0h	;8a73
	add a,b			;8a76
	nop			;8a77
	ret nz			;8a78
	ret nz			;8a79
	add a,b			;8a7a
	add a,b			;8a7b
	inc c			;8a7c
	nop			;8a7d
	nop			;8a7e
l8a7fh:
	ret nz			;8a7f
l8a80h:
	inc bc			;8a80
	rlca			;8a81
	inc c			;8a82
l8a83h:
	inc c			;8a83
	jr $+26			;8a84
	ret m			;8a86
	cp b			;8a87
	jr l8a42h		;8a88
	ret m			;8a8a
	jr $+14			;8a8b
	inc c			;8a8d
	rlca			;8a8e
	inc bc			;8a8f
	ret nz			;8a90
	ret po			;8a91
	jr nc,l8ac4h		;8a92
	jr l8aaeh		;8a94
	rra			;8a96
	dec e			;8a97
	jr l8ab7h		;8a98
l8a9ah:
	rra			;8a9a
	jr l8acdh		;8a9b
l8a9dh:
	jr nc,l8a7fh		;8a9d
	ret nz			;8a9f
	inc bc			;8aa0
	inc b			;8aa1
l8aa2h:
	dec bc			;8aa2
	dec bc			;8aa3
	rla			;8aa4
	rla			;8aa5
	rst 30h			;8aa6
	ld d,a			;8aa7
	rst 30h			;8aa8
	ld d,a			;8aa9
	rst 30h			;8aaa
	rla			;8aab
	dec bc			;8aac
	dec bc			;8aad
l8aaeh:
	inc b			;8aae
	inc bc			;8aaf
	ret nz			;8ab0
	jr nz,l8a83h		;8ab1
	ret nc			;8ab3
	ret pe			;8ab4
	ret pe			;8ab5
	rst 28h			;8ab6
l8ab7h:
	jp pe,0eaefh		;8ab7
	rst 28h			;8aba
	ret pe			;8abb
	ret nc			;8abc
	ret nc			;8abd
	jr nz,l8a80h		;8abe
	nop			;8ac0
	ret nz			;8ac1
	inc bc			;8ac2
	inc c			;8ac3
l8ac4h:
	inc de			;8ac4
	cpl			;8ac5
	ld b,01fh		;8ac6
	rra			;8ac8
	ld b,0bfh		;8ac9
	sbc a,a			;8acb
	ld b,e			;8acc
l8acdh:
	ld b,b			;8acd
	jr nz,l8ae0h		;8ace
	inc c			;8ad0
	inc bc			;8ad1
	ret nz			;8ad2
	jr nc,l8a9dh		;8ad3
	call p,sub_8000h	;8ad5
	add a,b			;8ad8
	nop			;8ad9
	ld sp,iy		;8ada
	jp nz,00402h		;8adc
	ex af,af'		;8adf
l8ae0h:
	jr nc,l8aa2h		;8ae0
	nop			;8ae2
	inc bc			;8ae3
	inc c			;8ae4
	djnz l8b60h		;8ae5
	ld h,b			;8ae7
	ret po			;8ae8
	ld sp,hl		;8ae9
	ld b,b			;8aea
	ld h,b			;8aeb
	inc a			;8aec
	ccf			;8aed
	rra			;8aee
	rrca			;8aef
	inc bc			;8af0
	nop			;8af1
	nop			;8af2
	ret nz			;8af3
	jr nc,$+10		;8af4
	cp 07eh			;8af6
	ld a,a			;8af8
l8af9h:
	rst 38h			;8af9
	ld (bc),a		;8afa
	ld b,03ch		;8afb
	call m,0f0f8h		;8afd
	ret nz			;8b00
	nop			;8b01
	nop			;8b02
	ld b,000h		;8b03
	ld (bc),a		;8b05
	rlca			;8b06
	ld c,000h		;8b07
	ld (bc),a		;8b09
	jr nz,l8b14h		;8b0a
	nop			;8b0c
	ld b,000h		;8b0d
	ld (bc),a		;8b0f
	rlca			;8b10
	ld c,000h		;8b11
	ld (bc),a		;8b13
l8b14h:
	jr nz,l8b1eh		;8b14
	nop			;8b16
	nop			;8b17
	add a,l			;8b18
	rlca			;8b19
	jr l8b3ch		;8b1a
	ld h,b			;8b1c
	ld b,b			;8b1d
l8b1eh:
	inc b			;8b1e
	ret nz			;8b1f
	adc a,h			;8b20
	ret po			;8b21
	or b			;8b22
	ld a,h			;8b23
	ld e,a			;8b24
	daa			;8b25
	jr l8b2fh		;8b26
	ret po			;8b28
	jr l8b2fh		;8b29
	ld b,002h		;8b2b
	inc b			;8b2d
l8b2eh:
	inc bc			;8b2e
l8b2fh:
	add a,a			;8b2f
	rlca			;8b30
	dec c			;8b31
	ld a,0fah		;8b32
	call po,0e018h		;8b34
	inc bc			;8b37
	nop			;8b38
	ld (bc),a		;8b39
	inc c			;8b3a
	add a,d			;8b3b
l8b3ch:
	nop			;8b3c
	ld (bc),a		;8b3d
	inc bc			;8b3e
	nop			;8b3f
	add a,l			;8b40
	ld b,b			;8b41
	nop			;8b42
	jr nz,$+26		;8b43
	rlca			;8b45
	dec bc			;8b46
	nop			;8b47
	adc a,b			;8b48
	ld (bc),a		;8b49
	nop			;8b4a
	inc b			;8b4b
	jr l8b2eh		;8b4c
	nop			;8b4e
	rlca			;8b4f
	ex af,af'		;8b50
	inc bc			;8b51
	nop			;8b52
	inc bc			;8b53
	add a,b			;8b54
	inc bc			;8b55
	nop			;8b56
	ld (bc),a		;8b57
	ld b,b			;8b58
	adc a,b			;8b59
	jr nz,l8b5ch		;8b5a
l8b5ch:
	ld b,080h		;8b5c
	jr l8b60h		;8b5e
l8b60h:
	ld (bc),a		;8b60
	nop			;8b61
	inc bc			;8b62
	ld bc,00002h		;8b63
	add a,(hl)		;8b66
	ld bc,00200h		;8b67
	inc b			;8b6a
	ex af,af'		;8b6b
	ret po			;8b6c
	inc bc			;8b6d
	nop			;8b6e
	add a,d			;8b6f
	jr l8b82h		;8b70
	ld b,000h		;8b72
	ld (bc),a		;8b74
	jr nz,l8af9h		;8b75
	djnz l8b7fh		;8b77
	dec c			;8b79
	nop			;8b7a
	adc a,b			;8b7b
	inc b			;8b7c
	nop			;8b7d
	ret po			;8b7e
l8b7fh:
	nop			;8b7f
	add a,b			;8b80
	nop			;8b81
l8b82h:
	ex af,af'		;8b82
	ld b,b			;8b83
	inc b			;8b84
	nop			;8b85
	add a,c			;8b86
	add a,b			;8b87
l8b88h:
	ld b,000h		;8b88
	add a,l			;8b8a
	add a,b			;8b8b
	ld bc,00000h		;8b8c
	ld bc,00006h		;8b8f
	add a,c			;8b92
	inc b			;8b93
	inc b			;8b94
	nop			;8b95
	add a,l			;8b96
	add hl,bc		;8b97
	add a,b			;8b98
	nop			;8b99
l8b9ah:
	ex af,af'		;8b9a
	ld b,b			;8b9b
	inc b			;8b9c
	nop			;8b9d
	add a,c			;8b9e
	add a,b			;8b9f
	ld b,000h		;8ba0
	add a,l			;8ba2
	add a,b			;8ba3
	ld bc,00000h		;8ba4
	ld bc,00006h		;8ba7
	add a,c			;8baa
	inc b			;8bab
	inc b			;8bac
	nop			;8bad
	add a,c			;8bae
	add hl,bc		;8baf
	nop			;8bb0
	add a,e			;8bb1
	nop			;8bb2
	ex af,af'		;8bb3
	rlca			;8bb4
	ld c,000h		;8bb5
	add a,d			;8bb7
	djnz l8b9ah		;8bb8
	dec c			;8bba
	nop			;8bbb
	add a,h			;8bbc
	ld b,b			;8bbd
	inc h			;8bbe
	ex af,af'		;8bbf
	inc bc			;8bc0
	inc c			;8bc1
	nop			;8bc2
	add a,h			;8bc3
	ld (bc),a		;8bc4
	inc h			;8bc5
	djnz l8b88h		;8bc6
	inc c			;8bc8
	nop			;8bc9
l8bcah:
	add a,l			;8bca
	inc e			;8bcb
	rla			;8bcc
	add hl,bc		;8bcd
	inc b			;8bce
	dec b			;8bcf
	dec bc			;8bd0
	nop			;8bd1
	add a,(hl)		;8bd2
	inc e			;8bd3
	call p,010c8h		;8bd4
	ld d,b			;8bd7
	add a,b			;8bd8
	ld a,(bc)		;8bd9
	nop			;8bda
	add a,a			;8bdb
	jr nz,l8be6h		;8bdc
	ld b,003h		;8bde
	ld (bc),a		;8be0
	inc bc			;8be1
	ld bc,00009h		;8be2
	add a,a			;8be5
l8be6h:
	ld (bc),a		;8be6
	ex af,af'		;8be7
	jr nc,l8bcah		;8be8
	and b			;8bea
	ld h,b			;8beb
	ret nz			;8bec
	add hl,bc		;8bed
	nop			;8bee
	add a,l			;8bef
	djnz l8c09h		;8bf0
	dec bc			;8bf2
	dec b			;8bf3
	dec b			;8bf4
	inc bc			;8bf5
	ld (bc),a		;8bf6
	inc bc			;8bf7
	ld bc,00005h		;8bf8
	adc a,e			;8bfb
	inc b			;8bfc
	call p,0d0e8h		;8bfd
	ret nc			;8c00
	and b			;8c01
	jr nz,$+34		;8c02
	ld b,b			;8c04
	ld b,b			;8c05
	ret nz			;8c06
	dec b			;8c07
	nop			;8c08
l8c09h:
	add a,l			;8c09
	jr nz,l8c14h		;8c0a
l8c0ch:
	inc b			;8c0c
	ld (bc),a		;8c0d
	ld (bc),a		;8c0e
	inc bc			;8c0f
	ld bc,00008h		;8c10
	adc a,d			;8c13
l8c14h:
	ld (bc),a		;8c14
	ex af,af'		;8c15
	djnz $+34		;8c16
	jr nz,$+66		;8c18
	ret nz			;8c1a
	ret nz			;8c1b
	add a,b			;8c1c
	add a,b			;8c1d
	rlca			;8c1e
	nop			;8c1f
l8c20h:
	add a,h			;8c20
	inc c			;8c21
	inc bc			;8c22
	ld bc,00902h		;8c23
	ld bc,00003h		;8c26
	add a,(hl)		;8c29
	jr l8c0ch		;8c2a
	ret nz			;8c2c
	and b			;8c2d
	ld b,b			;8c2e
	ret nz			;8c2f
	ld b,040h		;8c30
	adc a,b			;8c32
	ret nz			;8c33
	add a,b			;8c34
	nop			;8c35
	nop			;8c36
	djnz l8c3dh		;8c37
	ld (bc),a		;8c39
	ld bc,0000ch		;8c3a
l8c3dh:
	add a,(hl)		;8c3d
	inc b			;8c3e
	djnz l8c61h		;8c3f
	ld b,b			;8c41
	add a,b			;8c42
	nop			;8c43
	ld b,080h		;8c44
	ld b,000h		;8c46
	dec c			;8c48
	ld bc,00088h		;8c49
	jr nz,l8c4eh		;8c4c
l8c4eh:
	ld b,b			;8c4e
	ret nz			;8c4f
	ret nz			;8c50
	ld b,b			;8c51
	ret nz			;8c52
	ld b,040h		;8c53
	ld (bc),a		;8c55
	ret nz			;8c56
	add a,e			;8c57
	nop			;8c58
	ld b,001h		;8c59
	ld c,000h		;8c5b
	add a,a			;8c5d
	djnz l8c20h		;8c5e
	add a,b			;8c60
l8c61h:
	nop			;8c61
	nop			;8c62
	add a,b			;8c63
	nop			;8c64
	ld b,080h		;8c65
	inc bc			;8c67
	nop			;8c68
	add a,c			;8c69
	ld bc,0000fh		;8c6a
	add a,d			;8c6d
	ret nz			;8c6e
	nop			;8c6f
	inc bc			;8c70
	add a,b			;8c71
	dec bc			;8c72
	nop			;8c73
	add a,d			;8c74
	ld b,001h		;8c75
	ld c,000h		;8c77
	add a,d			;8c79
	jr nc,$-62		;8c7a
	inc bc			;8c7c
	nop			;8c7d
	ld (bc),a		;8c7e
	add a,b			;8c7f
	add hl,bc		;8c80
	nop			;8c81
	rrca			;8c82
	ld bc,l8082h		;8c83
	ret nz			;8c86
	ld c,040h		;8c87
	ld (de),a		;8c89
	nop			;8c8a
	ld c,080h		;8c8b
	rrca			;8c8d
	ld bc,00081h		;8c8e
	ld c,040h		;8c91
	add a,d			;8c93
	ret nz			;8c94
	add a,b			;8c95
	djnz l8c98h		;8c96
l8c98h:
	ld c,080h		;8c98
	ld (bc),a		;8c9a
	nop			;8c9b
	nop			;8c9c
	ex af,af'		;8c9d
	nop			;8c9e
	adc a,b			;8c9f
	inc c			;8ca0
	inc bc			;8ca1
	dec b			;8ca2
	ld b,006h		;8ca3
	inc bc			;8ca5
	dec de			;8ca6
	dec e			;8ca7
	dec bc			;8ca8
	nop			;8ca9
	ld (bc),a		;8caa
	add a,b			;8cab
	add a,d			;8cac
	nop			;8cad
	add a,b			;8cae
	add hl,bc		;8caf
	nop			;8cb0
	adc a,b			;8cb1
	inc c			;8cb2
	ld b,007h		;8cb3
	inc bc			;8cb5
	add hl,bc		;8cb6
	dec c			;8cb7
	ld c,037h		;8cb8
	inc c			;8cba
	nop			;8cbb
	inc bc			;8cbc
	add a,b			;8cbd
	adc a,e			;8cbe
	nop			;8cbf
	add a,b			;8cc0
	add a,b			;8cc1
	ret nz			;8cc2
	ld l,a			;8cc3
	ld l,a			;8cc4
	ld (hl),a		;8cc5
	scf			;8cc6
	dec de			;8cc7
	rrca			;8cc8
	inc bc			;8cc9
	ld b,000h		;8cca
	adc a,d			;8ccc
	inc de			;8ccd
	dec sp			;8cce
	ld a,c			;8ccf
	inc a			;8cd0
	cp a			;8cd1
	sbc a,a			;8cd2
	rst 8			;8cd3
	and 0f8h		;8cd4
	ret nz			;8cd6
	add hl,bc		;8cd7
	nop			;8cd8
	add a,(hl)		;8cd9
	dec sp			;8cda
	add hl,sp		;8cdb
	inc e			;8cdc
	inc e			;8cdd
	ld c,003h		;8cde
	rlca			;8ce0
	nop			;8ce1
	adc a,c			;8ce2
	inc e			;8ce3
	ld c,0cfh		;8ce4
	rst 20h			;8ce6
	ex (sp),hl		;8ce7
	ret p			;8ce8
	ld a,h			;8ce9
	inc a			;8cea
	ex af,af'		;8ceb
	dec c			;8cec
	nop			;8ced
	adc a,d			;8cee
	ret p			;8cef
	ld c,h			;8cf0
	daa			;8cf1
	inc de			;8cf2
	dec e			;8cf3
	ld e,00fh		;8cf4
	rlca			;8cf6
	ld sp,00b3ch		;8cf7
	nop			;8cfa
	dec b			;8cfb
	add a,b			;8cfc
	ld b,000h		;8cfd
	adc a,d			;8cff
l8d00h:
	ld h,b			;8d00
	jr c,l8d1fh		;8d01
	ld e,00eh		;8d03
	inc bc			;8d05
	add hl,de		;8d06
	ld e,01fh		;8d07
	rrca			;8d09
	dec c			;8d0a
	nop			;8d0b
	add a,e			;8d0c
	add a,b			;8d0d
	nop			;8d0e
	nop			;8d0f
	inc bc			;8d10
	add a,b			;8d11
	add a,(hl)		;8d12
	ld b,c			;8d13
	ld e,(hl)		;8d14
	cpl			;8d15
	rra			;8d16
	rrca			;8d17
	inc bc			;8d18
	rlca			;8d19
	nop			;8d1a
	adc a,c			;8d1b
	rla			;8d1c
	inc hl			;8d1d
	ld (hl),c		;8d1e
l8d1fh:
	call m,sub_8f7fh	;8d1f
	di			;8d22
	cp 0f0h			;8d23
	dec bc			;8d25
	nop			;8d26
	add a,h			;8d27
	ld sp,00e19h		;8d28
	inc bc			;8d2b
	ex af,af'		;8d2c
	nop			;8d2d
	adc a,b			;8d2e
	inc c			;8d2f
	ld e,03fh		;8d30
	ld c,a			;8d32
	di			;8d33
	call m,0887eh		;8d34
	ld (de),a		;8d37
	nop			;8d38
	add a,l			;8d39
	rra			;8d3a
	ld l,a			;8d3b
	inc c			;8d3c
	inc bc			;8d3d
	ld bc,0000bh		;8d3e
	add a,(hl)		;8d41
	ret nz			;8d42
	ret m			;8d43
	ld e,0e2h		;8d44
	defb 0fdh,03fh,00ah ;illegal sequence	;8d46
	nop			;8d49
	add a,(hl)		;8d4a
	rlca			;8d4b
	jr l8d51h		;8d4c
	ld bc,00100h		;8d4e
l8d51h:
	inc c			;8d51
	nop			;8d52
	add a,h			;8d53
	ret m			;8d54
	call m,0c31eh		;8d55
	rlca			;8d58
	nop			;8d59
	ld (bc),a		;8d5a
	ld bc,00384h		;8d5b
	adc a,a			;8d5e
	ld a,a			;8d5f
	rra			;8d60
	inc bc			;8d61
	nop			;8d62
	adc a,l			;8d63
	rst 0			;8d64
	ld sp,hl		;8d65
	ld a,a			;8d66
	ld a,a			;8d67
	ld bc,0fdffh		;8d68
	ex (sp),hl		;8d6b
	ld e,0feh		;8d6c
	ret m			;8d6e
	ret p			;8d6f
	add a,b			;8d70
	dec bc			;8d71
	nop			;8d72
	add a,h			;8d73
	ld bc,00003h		;8d74
	rra			;8d77
	inc b			;8d78
	nop			;8d79
	adc a,h			;8d7a
	call m,0073eh		;8d7b
	ld a,b			;8d7e
	ld a,a			;8d7f
	ret p			;8d80
	inc bc			;8d81
	cp 0f8h			;8d82
	ret nz			;8d84
	jr c,$-62		;8d85
	ld c,000h		;8d87
	add a,(hl)		;8d89
	rrca			;8d8a
	ld sp,0fe47h		;8d8b
	dec c			;8d8e
	inc bc			;8d8f
	ld a,(bc)		;8d90
	nop			;8d91
	add a,(hl)		;8d92
	ret po			;8d93
	call m,07c83h		;8d94
	rst 38h			;8d97
	ex (sp),hl		;8d98
	ld a,(bc)		;8d99
	nop			;8d9a
	add a,(hl)		;8d9b
	ld b,01fh		;8d9c
	ld a,009h		;8d9e
	inc bc			;8da0
	ld (bc),a		;8da1
	dec bc			;8da2
	nop			;8da3
	add a,(hl)		;8da4
	add a,b			;8da5
	ld a,h			;8da6
	rst 38h			;8da7
	add a,e			;8da8
	inc e			;8da9
	ld bc,0000bh		;8daa
	add a,c			;8dad
	ld bc,00003h		;8dae
	adc a,h			;8db1
	dec e			;8db2
	cp 0ffh			;8db3
	ld a,b			;8db5
	ld b,a			;8db6
	ccf			;8db7
	ld a,039h		;8db8
	rlca			;8dba
	ld a,a			;8dbb
	ld h,b			;8dbc
	ret m			;8dbd
	inc d			;8dbe
	nop			;8dbf
	adc a,h			;8dc0
	cp 0e3h			;8dc1
	ld bc,07f3fh		;8dc3
	jr c,l8dcfh		;8dc6
	ccf			;8dc8
	ld a,078h		;8dc9
	nop			;8dcb
	ld h,b			;8dcc
	rrca			;8dcd
	nop			;8dce
l8dcfh:
	add a,h			;8dcf
	ld l,a			;8dd0
	inc c			;8dd1
	inc bc			;8dd2
	ld bc,0000ch		;8dd3
	add a,l			;8dd6
	ret m			;8dd7
	ld e,0e2h		;8dd8
	defb 0fdh,03fh,00bh ;illegal sequence	;8dda
	nop			;8ddd
	add a,l			;8dde
	jr l8de4h		;8ddf
	ld bc,00100h		;8de1
l8de4h:
	inc c			;8de4
	nop			;8de5
	add a,h			;8de6
	ret m			;8de7
	call m,0c31eh		;8de8
	nop			;8deb
	ld b,000h		;8dec
	add a,a			;8dee
	ld bc,00102h		;8def
	nop			;8df2
	inc b			;8df3
	ld a,(bc)		;8df4
	inc b			;8df5
	ld a,(bc)		;8df6
	nop			;8df7
	add a,c			;8df8
	add a,b			;8df9
	rrca			;8dfa
	nop			;8dfb
	add a,c			;8dfc
	ld bc,00003h		;8dfd
	add a,c			;8e00
	inc b			;8e01
	jr l8e04h		;8e02
l8e04h:
	adc a,c			;8e04
	ex af,af'		;8e05
	inc d			;8e06
	ex af,af'		;8e07
	ld (bc),a		;8e08
	dec b			;8e09
	ld (bc),a		;8e0a
	djnz l8e35h		;8e0b
	djnz l8e15h		;8e0d
	nop			;8e0f
	add a,e			;8e10
	djnz l8e3bh		;8e11
	djnz $+5		;8e13
l8e15h:
	nop			;8e15
	add a,e			;8e16
	jr nz,$+82		;8e17
	jr nz,$+11		;8e19
	nop			;8e1b
	add a,a			;8e1c
	ex af,af'		;8e1d
	nop			;8e1e
	nop			;8e1f
	ld (bc),a		;8e20
	nop			;8e21
	nop			;8e22
	djnz l8e2dh		;8e23
	nop			;8e25
	add a,c			;8e26
	djnz l8e2eh		;8e27
	nop			;8e29
	add a,c			;8e2a
	jr nz,l8e34h		;8e2b
l8e2dh:
	nop			;8e2d
l8e2eh:
	adc a,l			;8e2e
l8e2fh:
	djnz l8e59h		;8e2f
	ld de,00102h		;8e31
l8e34h:
	ld b,b			;8e34
l8e35h:
	and b			;8e35
	ld b,h			;8e36
	ld a,(bc)		;8e37
	inc b			;8e38
	jr nz,l8e8bh		;8e39
l8e3bh:
	jr nz,l8e41h		;8e3b
	nop			;8e3d
	add a,e			;8e3e
	ex af,af'		;8e3f
	inc d			;8e40
l8e41h:
	adc a,b			;8e41
	dec b			;8e42
	nop			;8e43
	add a,e			;8e44
	djnz l8e6fh		;8e45
	djnz $+7		;8e47
	nop			;8e49
	adc a,e			;8e4a
	djnz l8e4dh		;8e4b
l8e4dh:
	ld bc,00000h		;8e4d
	ld b,b			;8e50
	nop			;8e51
	inc b			;8e52
	nop			;8e53
	nop			;8e54
	jr nz,l8e5dh		;8e55
	nop			;8e57
	add a,c			;8e58
l8e59h:
	ex af,af'		;8e59
	rlca			;8e5a
	nop			;8e5b
	add a,c			;8e5c
l8e5dh:
	djnz l8e62h		;8e5d
	nop			;8e5f
	nop			;8e60
	rst 38h			;8e61
l8e62h:
	nop			;8e62
	ld bc,00303h		;8e63
	ld (bc),a		;8e66
	add hl,bc		;8e67
	ld b,001h		;8e68
	nop			;8e6a
	inc bc			;8e6b
	dec b			;8e6c
	rlca			;8e6d
	add hl,bc		;8e6e
l8e6fh:
	ld (de),a		;8e6f
	ld (bc),a		;8e70
	ex af,af'		;8e71
	add a,b			;8e72
	ret nz			;8e73
	ret po			;8e74
	ret po			;8e75
	and b			;8e76
	ld c,b			;8e77
	or b			;8e78
	ret nz			;8e79
	nop			;8e7a
l8e7bh:
	ld h,b			;8e7b
	ret nc			;8e7c
	ret p			;8e7d
	ld c,b			;8e7e
	and h			;8e7f
	jr nz,l8e8ah		;8e80
	inc bc			;8e82
	ld b,00ch		;8e83
	inc c			;8e85
	dec c			;8e86
	rrca			;8e87
	rlca			;8e88
	ld (bc),a		;8e89
l8e8ah:
	inc bc			;8e8a
l8e8bh:
	ld bc,00203h		;8e8b
	inc b			;8e8e
	add hl,bc		;8e8f
	ld bc,0e004h		;8e90
	or b			;8e93
	sbc a,b			;8e94
	sbc a,b			;8e95
	ret c			;8e96
	ret m			;8e97
	ld (hl),b		;8e98
	jr nz,l8e7bh		;8e99
	ret nz			;8e9b
	ld h,b			;8e9c
	jr nz,l8e2fh		;8e9d
	ret z			;8e9f
	ld b,b			;8ea0
	djnz l8ea3h		;8ea1
l8ea3h:
	ld bc,00303h		;8ea3
	ld (bc),a		;8ea6
	add hl,bc		;8ea7
	ld b,001h		;8ea8
	nop			;8eaa
	rlca			;8eab
	ex af,af'		;8eac
	ld de,00212h		;8ead
	ld (bc),a		;8eb0
	ld bc,0c080h		;8eb1
	ret po			;8eb4
	ret po			;8eb5
	and b			;8eb6
	ld c,b			;8eb7
	or b			;8eb8
	ret nz			;8eb9
	nop			;8eba
l8ebbh:
	ld (hl),b		;8ebb
	adc a,b			;8ebc
	ld b,h			;8ebd
	inc h			;8ebe
	jr nz,l8ee1h		;8ebf
	ld b,b			;8ec1
	inc bc			;8ec2
	ld b,00ch		;8ec3
	inc c			;8ec5
	dec c			;8ec6
	rrca			;8ec7
	rlca			;8ec8
	ld (bc),a		;8ec9
	inc bc			;8eca
	ld bc,00205h		;8ecb
	inc b			;8ece
	inc b			;8ecf
l8ed0h:
	nop			;8ed0
	nop			;8ed1
	ret po			;8ed2
	or b			;8ed3
	sbc a,b			;8ed4
	sbc a,b			;8ed5
l8ed6h:
	ret c			;8ed6
	ret m			;8ed7
	ld (hl),b		;8ed8
	jr nz,l8ebbh		;8ed9
	ret nz			;8edb
l8edch:
	ld d,b			;8edc
	jr nz,l8eefh		;8edd
	djnz l8ee1h		;8edf
l8ee1h:
	add a,c			;8ee1
	nop			;8ee2
	nop			;8ee3
	inc b			;8ee4
	rst 38h			;8ee5
	add a,h			;8ee6
	ret m			;8ee7
	ret po			;8ee8
	ret nz			;8ee9
	add a,b			;8eea
	inc b			;8eeb
	rst 38h			;8eec
	add a,c			;8eed
	rlca			;8eee
l8eefh:
	inc bc			;8eef
	nop			;8ef0
	ld b,0ffh		;8ef1
	add a,h			;8ef3
	ccf			;8ef4
	rra			;8ef5
	rst 38h			;8ef6
	rst 38h			;8ef7
	dec b			;8ef8
	cp 086h			;8ef9
	rst 38h			;8efb
	rrca			;8efc
	rlca			;8efd
	inc bc			;8efe
	ld bc,00301h		;8eff
	add a,b			;8f02
	inc bc			;8f03
	nop			;8f04
	dec b			;8f05
	dec bc			;8f06
	ld (bc),a		;8f07
	add a,b			;8f08
	ld (bc),a		;8f09
	ret nz			;8f0a
	ld (bc),a		;8f0b
	ret po			;8f0c
	ld (bc),a		;8f0d
	ret p			;8f0e
	ld (bc),a		;8f0f
	dec bc			;8f10
	ld (bc),a		;8f11
	nop			;8f12
	inc b			;8f13
	dec bc			;8f14
	ld (bc),a		;8f15
	ret m			;8f16
	ld (bc),a		;8f17
	call m,0fe02h		;8f18
	add a,d			;8f1b
	rst 38h			;8f1c
	add a,b			;8f1d
	inc bc			;8f1e
	dec bc			;8f1f
	dec b			;8f20
	nop			;8f21
	inc bc			;8f22
	add a,b			;8f23
	ld b,0c0h		;8f24
	inc bc			;8f26
	ret po			;8f27
	inc bc			;8f28
	ret p			;8f29
	add a,c			;8f2a
	ret m			;8f2b
	ex af,af'		;8f2c
	inc bc			;8f2d
	ld (bc),a		;8f2e
	nop			;8f2f
	add a,(hl)		;8f30
	add a,b			;8f31
	ret po			;8f32
	ret m			;8f33
	cp 080h			;8f34
	ret po			;8f36
	ld b,000h		;8f37
	add a,d			;8f39
	ret nz			;8f3a
l8f3bh:
	ret p			;8f3b
	nop			;8f3c
	dec h			;8f3d
	ld bc,02183h		;8f3e
	ld b,c			;8f41
	rra			;8f42
	inc b			;8f43
	djnz $-120		;8f44
	jr nz,l8f78h		;8f46
	ld b,b			;8f48
	jr nc,l8f3bh		;8f49
	jr nc,l8f53h		;8f4b
	djnz l8ed0h		;8f4d
	jr nz,l8f55h		;8f4f
	djnz l8ed6h		;8f51
l8f53h:
	jr nz,l8f85h		;8f53
l8f55h:
	ld b,b			;8f55
	rlca			;8f56
	djnz l8edch		;8f57
l8f59h:
	ld hl,02030h		;8f59
	dec bc			;8f5c
	djnz $-125		;8f5d
	jr nz,$+5		;8f5f
	ret p			;8f61
	adc a,b			;8f62
	djnz l8f55h		;8f63
	jr nz,l8f77h		;8f65
	djnz l8f59h		;8f67
	ret p			;8f69
	jr nz,$+7		;8f6a
	djnz l8f72h		;8f6c
	ret p			;8f6e
	inc b			;8f6f
	djnz $+4		;8f70
l8f72h:
	ld hl,01008h		;8f72
	nop			;8f75
	add a,e			;8f76
l8f77h:
	rlca			;8f77
l8f78h:
	rra			;8f78
	rra			;8f79
	inc bc			;8f7a
	ccf			;8f7b
	ld (bc),a		;8f7c
	ld a,a			;8f7d
	add a,e			;8f7e
sub_8f7fh:
	ret p			;8f7f
	call m,003feh		;8f80
	rst 38h			;8f83
	add a,l			;8f84
l8f85h:
	call m,000ffh		;8f85
	ld a,h			;8f88
	ld a,h			;8f89
	dec b			;8f8a
	ld b,e			;8f8b
	add a,c			;8f8c
	rst 38h			;8f8d
	rlca			;8f8e
	ret nz			;8f8f
	adc a,h			;8f90
	rst 38h			;8f91
	ret nz			;8f92
	ret nz			;8f93
	ret po			;8f94
	ret po			;8f95
	ret p			;8f96
	ret p			;8f97
	ret m			;8f98
	cp h			;8f99
	cp h			;8f9a
	ld a,h			;8f9b
	ld a,h			;8f9c
	inc b			;8f9d
	ld b,e			;8f9e
	ld b,0c0h		;8f9f
	add a,a			;8fa1
	call c,0f8c0h		;8fa2
	call m,0fefch		;8fa5
	cp 003h			;8fa8
	rst 38h			;8faa
	inc bc			;8fab
	cp h			;8fac
	ld (bc),a		;8fad
	ld a,h			;8fae
	ld (bc),a		;8faf
	call m,00084h		;8fb0
	call c,0dcc0h		;8fb3
	inc bc			;8fb6
	ret nz			;8fb7
	add a,c			;8fb8
	add a,b			;8fb9
	ld b,0ffh		;8fba
	add a,(hl)		;8fbc
	ld b,d			;8fbd
	rst 38h			;8fbe
	nop			;8fbf
	add a,b			;8fc0
	ret nz			;8fc1
	ret nz			;8fc2
	inc b			;8fc3
	ret po			;8fc4
	add a,c			;8fc5
	nop			;8fc6
	rlca			;8fc7
	rra			;8fc8
	add a,d			;8fc9
	nop			;8fca
	ld d,b			;8fcb
	dec b			;8fcc
	ret nc			;8fcd
	ld (bc),a		;8fce
	ld d,b			;8fcf
	rlca			;8fd0
	rla			;8fd1
	add a,c			;8fd2
	rst 38h			;8fd3
	rlca			;8fd4
	rrca			;8fd5
	add a,d			;8fd6
	rst 38h			;8fd7
	rra			;8fd8
	ld b,017h		;8fd9
	add a,d			;8fdb
	rst 38h			;8fdc
	nop			;8fdd
	ld b,0fch		;8fde
	add a,c			;8fe0
	rst 38h			;8fe1
	ex af,af'		;8fe2
	sub b			;8fe3
	add a,l			;8fe4
	call m,0e080h		;8fe5
	ret m			;8fe8
	cp 003h			;8fe9
	rst 38h			;8feb
	adc a,b			;8fec
	ret m			;8fed
	cp 0c0h			;8fee
	ret p			;8ff0
	ret m			;8ff1
	cp 0c0h			;8ff2
	ret po			;8ff4
	nop			;8ff5
	ld b,021h		;8ff6
	add a,d			;8ff8
	ld (0061fh),a		;8ff9
	ld hl,04381h		;8ffc
	inc bc			;8fff
	rra			;9000
	adc a,b			;9001
	ld sp,012f1h		;9002
	inc hl			;9005
	inc (hl)		;9006
	inc hl			;9007
sub_9008h:
	di			;9008
	di			;9009
	rlca			;900a
	jp p,03281h		;900b
	rlca			;900e
	ld hl,01f87h		;900f
	ld sp,0f131h		;9012
	ld (de),a		;9015
	inc hl			;9016
	inc (hl)		;9017
	ex af,af'		;9018
	jp p,02108h		;9019
	adc a,b			;901c
	ld (01f21h),a		;901d
	ld sp,04131h		;9020
	rra			;9023
	rra			;9024
	dec b			;9025
	jp p,0f483h		;9026
	pop af			;9029
	pop af			;902a
	dec b			;902b
	ld (04383h),hl		;902c
	rra			;902f
	rra			;9030
	dec b			;9031
	ld hl,04381h		;9032
	inc bc			;9035
	rra			;9036
	and b			;9037
	ld hl,032ffh		;9038
	ld hl,01f21h		;903b
	rra			;903e
	ld hl,0ff32h		;903f
	ld b,e			;9042
	ld (02132h),a		;9043
	rst 38h			;9046
	ld hl,0ff32h		;9047
	ld b,e			;904a
	ld (02132h),a		;904b
	pop af			;904e
	pop af			;904f
	ld (de),a		;9050
	rst 38h			;9051
	inc hl			;9052
l9053h:
	ld (de),a		;9053
	ld (de),a		;9054
	pop af			;9055
	pop af			;9056
	ld b,e			;9057
	dec b			;9058
	ld (02183h),a		;9059
	call p,005f4h		;905c
	ld (02183h),a		;905f
	call p,007f4h		;9062
	di			;9065
	ex af,af'		;9066
	ld (02082h),a		;9067
	djnz l9070h		;906a
	ld hl,03202h		;906c
	nop			;906f
l9070h:
	ld (bc),a		;9070
	inc bc			;9071
	ld (bc),a		;9072
	ld bc,00006h		;9073
	add a,(hl)		;9076
	ret m			;9077
	rst 38h			;9078
	inc a			;9079
	jr nc,l90bbh		;907a
	ccf			;907c
	inc bc			;907d
	nop			;907e
	add a,l			;907f
	ret po			;9080
	rst 38h			;9081
	ret p			;9082
	add a,b			;9083
	ret m			;9084
	dec b			;9085
	nop			;9086
	add a,e			;9087
	ret p			;9088
	add a,b			;9089
	ret m			;908a
	rlca			;908b
	nop			;908c
	adc a,c			;908d
	ret po			;908e
	nop			;908f
	nop			;9090
	ret po			;9091
	ret m			;9092
	ret nz			;9093
	ret po			;9094
	ret p			;9095
	ret p			;9096
	dec b			;9097
	nop			;9098
	add a,e			;9099
	add a,b			;909a
	ret po			;909b
	ret m			;909c
	inc b			;909d
	nop			;909e
	sub h			;909f
	add a,b			;90a0
	ret po			;90a1
	ret m			;90a2
	cp 000h			;90a3
	ret nz			;90a5
	ret po			;90a6
	ret p			;90a7
	ret m			;90a8
	call m,sub_80feh	;90a9
	add a,b			;90ac
	ret nz			;90ad
	ret po			;90ae
	ret p			;90af
	ret m			;90b0
	call m,0fefch		;90b1
	inc bc			;90b4
	nop			;90b5
	inc bc			;90b6
	add a,b			;90b7
	ld (bc),a		;90b8
	ret nz			;90b9
	adc a,b			;90ba
l90bbh:
	rst 38h			;90bb
	ret nz			;90bc
	ret nz			;90bd
	ld a,a			;90be
	ccf			;90bf
	rra			;90c0
	rrca			;90c1
	rlca			;90c2
	ld b,0c0h		;90c3
	add a,d			;90c5
	add a,b			;90c6
	nop			;90c7
	nop			;90c8
	add a,e			;90c9
	jr nz,$+18		;90ca
	djnz l90d5h		;90cc
	ret p			;90ce
	ld (bc),a		;90cf
	djnz l9053h		;90d0
	ld hl,03203h		;90d2
l90d5h:
	dec b			;90d5
	djnz $-123		;90d6
	ld hl,03232h		;90d8
	ld b,010h		;90db
	ld (bc),a		;90dd
l90deh:
	ld hl,0100ch		;90de
	inc b			;90e1
	ld hl,01017h		;90e2
	add a,c			;90e5
	ld hl,01007h		;90e6
	inc b			;90e9
	ret p			;90ea
	adc a,d			;90eb
	djnz l90deh		;90ec
	jr nz,l9100h		;90ee
l90f0h:
	djnz $-12		;90f0
	jp p,010f1h		;90f2
	djnz $+5		;90f5
	ret p			;90f7
	adc a,b			;90f8
	jr nz,l912bh		;90f9
	ld b,b			;90fb
	jr nc,l911eh		;90fc
sub_90feh:
	djnz l90f0h		;90fe
l9100h:
	ret p			;9100
	nop			;9101
l9102h:
	inc b			;9102
	nop			;9103
	ld (bc),a		;9104
	rst 38h			;9105
	ld (bc),a		;9106
	nop			;9107
	inc b			;9108
	rst 38h			;9109
	ld (bc),a		;910a
	nop			;910b
	add a,c			;910c
	rst 38h			;910d
l910eh:
	dec b			;910e
	nop			;910f
	inc bc			;9110
	rst 38h			;9111
	dec b			;9112
	nop			;9113
	ld (bc),a		;9114
	rst 38h			;9115
	add a,c			;9116
	nop			;9117
l9118h:
	dec b			;9118
	rst 38h			;9119
	ld (bc),a		;911a
	nop			;911b
	ld (bc),a		;911c
	rst 38h			;911d
l911eh:
	nop			;911e
	dec b			;911f
	ret p			;9120
	ld (bc),a		;9121
	ld hl,00f06h		;9122
	inc bc			;9125
	ld hl,0f005h		;9126
	inc bc			;9129
	ld (de),a		;912a
l912bh:
	dec b			;912b
	ret p			;912c
	inc bc			;912d
	rra			;912e
	dec b			;912f
	rrca			;9130
	ld (bc),a		;9131
	jp p,01081h		;9132
	nop			;9135
	inc b			;9136
	nop			;9137
	add a,a			;9138
	ld bc,00703h		;9139
	rrca			;913c
	rlca			;913d
	rra			;913e
	ld a,a			;913f
	dec b			;9140
	add a,c			;9141
	add a,(hl)		;9142
	ld bc,00703h		;9143
	rrca			;9146
	rra			;9147
	ccf			;9148
	dec b			;9149
	ld a,a			;914a
	add a,c			;914b
	rst 38h			;914c
	ex af,af'		;914d
	nop			;914e
	add a,e			;914f
	rlca			;9150
	rra			;9151
	ld a,a			;9152
	inc b			;9153
	add a,c			;9154
	dec b			;9155
	rst 38h			;9156
	add a,d			;9157
	ret po			;9158
	ret nz			;9159
	dec b			;915a
	ld a,a			;915b
	add a,c			;915c
	rst 38h			;915d
	inc bc			;915e
	nop			;915f
	ld (bc),a		;9160
	inc bc			;9161
	ld (bc),a		;9162
	inc c			;9163
	adc a,e			;9164
	inc a			;9165
	ld a,(hl)		;9166
	ld a,(hl)		;9167
	rrca			;9168
	rrca			;9169
	nop			;916a
	ex (sp),hl		;916b
	pop bc			;916c
	pop bc			;916d
	inc bc			;916e
	inc bc			;916f
	ld b,007h		;9170
	rlca			;9172
	nop			;9173
	add a,c			;9174
	ld bc,00600h		;9175
	djnz l917ch		;9178
	jr nz,l917fh		;917a
l917ch:
	djnz l910eh		;917c
	pop af			;917e
l917fh:
	jp p,0f3f2h		;917f
	di			;9182
	djnz $+18		;9183
	jr nz,l91a7h		;9185
	jr nc,l91b9h		;9187
	ld b,b			;9189
	ld b,e			;918a
	call po,02143h		;918b
	add hl,bc		;918e
	ret p			;918f
	inc bc			;9190
	djnz l9118h		;9191
	pop af			;9193
	call p,0f1f3h		;9194
	pop af			;9197
	ld b,003h		;9198
	add a,l			;919a
	ld b,b			;919b
	ld b,e			;919c
	call po,02143h		;919d
	inc b			;91a0
	ret p			;91a1
	add a,h			;91a2
	ret nz			;91a3
	or b			;91a4
	ret nz			;91a5
	or b			;91a6
l91a7h:
	inc bc			;91a7
	ld h,b			;91a8
	add a,e			;91a9
	or (hl)			;91aa
	add a,0c6h		;91ab
	inc bc			;91ad
	ld h,l			;91ae
	djnz l9211h		;91af
	nop			;91b1
	dec b			;91b2
	rla			;91b3
	inc b			;91b4
	ret nz			;91b5
	inc b			;91b6
	cp 003h			;91b7
l91b9h:
	call m,sub_9008h	;91b9
	dec b			;91bc
	rst 38h			;91bd
	ld (bc),a		;91be
	nop			;91bf
	and d			;91c0
	rst 38h			;91c1
	ret po			;91c2
	pop hl			;91c3
	jp 0f88eh		;91c4
	ret po			;91c7
	inc bc			;91c8
	rra			;91c9
	rra			;91ca
	ccf			;91cb
	add a,b			;91cc
	inc bc			;91cd
	rrca			;91ce
	ld a,(hl)		;91cf
	ret p			;91d0
	add a,b			;91d1
	ret p			;91d2
	ccf			;91d3
	rst 38h			;91d4
	ret m			;91d5
	ret nz			;91d6
	inc bc			;91d7
	rra			;91d8
l91d9h:
	rlca			;91d9
	rlca			;91da
	ex (sp),hl		;91db
	inc bc			;91dc
	inc b			;91dd
	ld a,h			;91de
	inc b			;91df
	ld a,h			;91e0
	inc c			;91e1
	inc c			;91e2
	inc bc			;91e3
	add a,b			;91e4
	add a,d			;91e5
	rst 38h			;91e6
	nop			;91e7
	inc bc			;91e8
	add a,b			;91e9
	dec b			;91ea
	ld b,082h		;91eb
	rst 38h			;91ed
	cp 003h			;91ee
	sub b			;91f0
	sub c			;91f1
	sub e			;91f2
	sbc a,a			;91f3
	ret m			;91f4
	ret nz			;91f5
	ld b,001h		;91f6
	rrca			;91f8
	ld a,a			;91f9
	call m,0f0f8h		;91fa
	ret po			;91fd
	ret po			;91fe
	call m,007e0h		;91ff
	rra			;9202
	inc bc			;9203
	ccf			;9204
	sub c			;9205
	nop			;9206
	rrca			;9207
	ld bc,03f0fh		;9208
	ld bc,00000h		;920b
	rst 38h			;920e
	ccf			;920f
	rlca			;9210
l9211h:
	ccf			;9211
	rst 38h			;9212
	rst 38h			;9213
	nop			;9214
	nop			;9215
	rst 38h			;9216
	ex af,af'		;9217
	call m,0ff85h		;9218
	add a,b			;921b
	add a,b			;921c
	rst 38h			;921d
	nop			;921e
	inc bc			;921f
	add a,b			;9220
	inc b			;9221
	ccf			;9222
	add a,(hl)		;9223
	rra			;9224
	ccf			;9225
	ccf			;9226
	add a,b			;9227
	add a,b			;9228
	call m,0ff03h		;9229
	ld (bc),a		;922c
	nop			;922d
	sub c			;922e
	rst 38h			;922f
	add a,b			;9230
	ret m			;9231
	ret nz			;9232
	ret m			;9233
	cp 000h			;9234
	rrca			;9236
	rrca			;9237
	call m,0fce0h		;9238
	ret po			;923b
	ret m			;923c
	call m,000fch		;923d
	ex af,af'		;9240
	ld a,a			;9241
	adc a,h			;9242
	rst 38h			;9243
	nop			;9244
	nop			;9245
	ld bc,00703h		;9246
	rrca			;9249
	rra			;924a
	call pe,0b058h		;924b
	or b			;924e
	inc b			;924f
	jr nc,l91d9h		;9250
	ld e,07eh		;9252
	rlca			;9254
	rrca			;9255
	rra			;9256
	rra			;9257
	rrca			;9258
	inc bc			;9259
	rlca			;925a
	add a,l			;925b
	ld e,a			;925c
	nop			;925d
	nop			;925e
	ld a,h			;925f
	nop			;9260
	inc bc			;9261
	ret m			;9262
	add a,l			;9263
	ret nc			;9264
	ret p			;9265
	add a,b			;9266
	ret p			;9267
	cp 005h			;9268
	ret p			;926a
	add a,h			;926b
	ret m			;926c
	ret nz			;926d
	ld bc,0030fh		;926e
	rst 38h			;9271
	add a,l			;9272
	inc bc			;9273
	rrca			;9274
	ccf			;9275
	call m,005c0h		;9276
	rst 38h			;9279
	add a,e			;927a
	ret nz			;927b
	nop			;927c
	rrca			;927d
	inc bc			;927e
	rst 38h			;927f
	add a,h			;9280
	ret po			;9281
	nop			;9282
	inc bc			;9283
	ld a,a			;9284
	inc b			;9285
	rst 38h			;9286
	inc b			;9287
	nop			;9288
	inc bc			;9289
	rst 38h			;928a
	inc b			;928b
	nop			;928c
	add a,h			;928d
	rlca			;928e
	ret po			;928f
	rst 38h			;9290
	rst 38h			;9291
	ld b,0dbh		;9292
	adc a,b			;9294
	ret p			;9295
	rst 38h			;9296
	rrca			;9297
	ret po			;9298
	ret po			;9299
	rst 38h			;929a
	rra			;929b
	rlca			;929c
	inc bc			;929d
	nop			;929e
	ld (bc),a		;929f
	rst 38h			;92a0
	ld (bc),a		;92a1
	nop			;92a2
	add a,0c0h		;92a3
	rst 38h			;92a5
	nop			;92a6
	nop			;92a7
	rst 38h			;92a8
	call m,0fcc0h		;92a9
	rst 38h			;92ac
	call m,0ffffh		;92ad
	nop			;92b0
	nop			;92b1
sub_92b2h:
	ret po			;92b2
	call m,03880h		;92b3
	jr $+30			;92b6
	adc a,(hl)		;92b8
	add a,a			;92b9
	jp 0f8e0h		;92ba
	ld a,a			;92bd
	rrca			;92be
	nop			;92bf
	nop			;92c0
	add a,b			;92c1
	rst 38h			;92c2
	rst 38h			;92c3
	rra			;92c4
	rst 38h			;92c5
	ret m			;92c6
	nop			;92c7
	inc bc			;92c8
	ccf			;92c9
	rst 38h			;92ca
	call m,000e0h		;92cb
	inc bc			;92ce
	ccf			;92cf
	call m,sub_80e0h	;92d0
	ld bc,07e07h		;92d3
	ret p			;92d6
	add a,b			;92d7
	ld bc,07f0fh		;92d8
	inc bc			;92db
	rrca			;92dc
	nop			;92dd
	rlca			;92de
	ccf			;92df
	inc bc			;92e0
	rra			;92e1
	inc bc			;92e2
	rra			;92e3
	ld a,a			;92e4
	nop			;92e5
	rlca			;92e6
	ld a,a			;92e7
	ld bc,0033fh		;92e8
	rst 38h			;92eb
	add a,a			;92ec
	rra			;92ed
	rst 38h			;92ee
	inc bc			;92ef
	rst 38h			;92f0
	nop			;92f1
	add a,b			;92f2
	ld a,(hl)		;92f3
	inc bc			;92f4
	nop			;92f5
	dec b			;92f6
	cp 082h			;92f7
	rst 38h			;92f9
	add a,b			;92fa
	inc bc			;92fb
	ccf			;92fc
	add a,c			;92fd
	ld e,003h		;92fe
	ccf			;9300
	ex af,af'		;9301
	in a,(081h)		;9302
	ld bc,0fc03h		;9304
	add a,c			;9307
	ld a,b			;9308
	inc b			;9309
	call m,0ff81h		;930a
	dec b			;930d
	ld a,a			;930e
	sbc a,c			;930f
	ld a,(hl)		;9310
	nop			;9311
	add a,b			;9312
	ret po			;9313
	ret p			;9314
	ret p			;9315
	ret m			;9316
	ld sp,hl		;9317
	ei			;9318
	ret po			;9319
	ret m			;931a
	ret m			;931b
	add a,b			;931c
	cp 07eh			;931d
	rst 38h			;931f
	add a,c			;9320
	add a,b			;9321
	ret po			;9322
	ret p			;9323
	ret m			;9324
	call m,sub_90feh	;9325
	ret z			;9328
	inc bc			;9329
	rst 38h			;932a
	add a,l			;932b
	cp 0f8h			;932c
	ret po			;932e
	ret nz			;932f
	add a,b			;9330
	inc bc			;9331
	rst 38h			;9332
	sub d			;9333
	nop			;9334
	rrca			;9335
	ccf			;9336
	ld a,a			;9337
	ld bc,0ff80h		;9338
	rst 38h			;933b
	rrca			;933c
	rra			;933d
	ld a,a			;933e
	inc bc			;933f
	rlca			;9340
	rra			;9341
	ret nz			;9342
	ret p			;9343
	rra			;9344
	ccf			;9345
	inc bc			;9346
	rst 38h			;9347
	add a,h			;9348
	ccf			;9349
	ld a,a			;934a
	nop			;934b
	nop			;934c
	ld b,0ffh		;934d
	add a,e			;934f
	ld a,a			;9350
	ccf			;9351
	rrca			;9352
	inc bc			;9353
	nop			;9354
	rlca			;9355
	rst 38h			;9356
	add a,l			;9357
	nop			;9358
	ld a,(hl)		;9359
	nop			;935a
	nop			;935b
	rst 38h			;935c
	inc b			;935d
	ret p			;935e
	ld (bc),a		;935f
	rst 38h			;9360
	add a,c			;9361
	cp 004h			;9362
	add a,b			;9364
	add a,h			;9365
	ld bc,0e080h		;9366
	ret m			;9369
	dec b			;936a
	ld a,a			;936b
	rlca			;936c
	in a,(089h)		;936d
	rst 38h			;936f
	ld bc,01f07h		;9370
	ld a,a			;9373
	ld a,a			;9374
	ccf			;9375
	rra			;9376
	rlca			;9377
	ex af,af'		;9378
	add a,c			;9379
l937ah:
	add a,h			;937a
	ei			;937b
	or 0e6h			;937c
	add a,(hl)		;937e
	inc bc			;937f
	ld b,08ah		;9380
	inc bc			;9382
	add a,c			;9383
	inc c			;9384
	inc b			;9385
	ld b,b			;9386
	ld h,d			;9387
	ld a,(hl)		;9388
	inc a			;9389
	add a,c			;938a
	ret z			;938b
	ld b,064h		;938c
	adc a,d			;938e
	ret z			;938f
	ret nz			;9390
	ret po			;9391
	ret p			;9392
	ret p			;9393
	ret m			;9394
	ret m			;9395
	call m,sub_807fh	;9396
	inc bc			;9399
	ld bc,00004h		;939a
	add a,c			;939d
	inc bc			;939e
	inc bc			;939f
	rlca			;93a0
	add a,c			;93a1
	rst 38h			;93a2
	inc bc			;93a3
	nop			;93a4
	inc bc			;93a5
	rrca			;93a6
	ld (bc),a		;93a7
	nop			;93a8
	ld b,0ffh		;93a9
	ld (bc),a		;93ab
	nop			;93ac
	add a,h			;93ad
	rst 38h			;93ae
	ei			;93af
	rst 38h			;93b0
	rst 38h			;93b1
	inc bc			;93b2
	nop			;93b3
	inc b			;93b4
	ld bc,00795h		;93b5
	jr c,l937ah		;93b8
	inc bc			;93ba
	rrca			;93bb
	rra			;93bc
	rra			;93bd
	rrca			;93be
	nop			;93bf
	rrca			;93c0
	rst 38h			;93c1
	rrca			;93c2
	ld a,a			;93c3
	rlca			;93c4
	rrca			;93c5
	rlca			;93c6
	ld a,0feh		;93c7
	ld a,(hl)		;93c9
	cp 07ch			;93ca
	inc bc			;93cc
	cp 008h			;93cd
	add a,b			;93cf
	add a,c			;93d0
	ld bc,0fc06h		;93d1
	add a,e			;93d4
	pop hl			;93d5
	rst 38h			;93d6
	nop			;93d7
	inc bc			;93d8
	ld a,a			;93d9
	adc a,e			;93da
	rst 38h			;93db
	add a,b			;93dc
	nop			;93dd
	call m,0fcf8h		;93de
	cp 03fh			;93e1
	inc bc			;93e3
	ret nz			;93e4
	ret m			;93e5
	inc bc			;93e6
	add a,c			;93e7
	adc a,d			;93e8
	inc a			;93e9
	add a,c			;93ea
	add a,b			;93eb
	add a,b			;93ec
	ret p			;93ed
	sbc a,b			;93ee
	ret po			;93ef
	ccf			;93f0
	ccf			;93f1
	ld a,a			;93f2
	inc bc			;93f3
	rst 38h			;93f4
	inc b			;93f5
	ret nz			;93f6
	add a,(hl)		;93f7
	ld a,a			;93f8
	rst 38h			;93f9
	nop			;93fa
	nop			;93fb
	cp 000h			;93fc
	ld b,080h		;93fe
	ex af,af'		;9400
	add a,c			;9401
	add a,h			;9402
	rst 38h			;9403
	add a,c			;9404
	add a,c			;9405
	rst 38h			;9406
	inc b			;9407
	add a,c			;9408
	sbc a,d			;9409
	inc bc			;940a
	ret nz			;940b
	ret p			;940c
	call m,sub_839fh	;940d
	ld a,(hl)		;9410
	ld a,(hl)		;9411
	ccf			;9412
	rlca			;9413
	ccf			;9414
	rrca			;9415
	inc bc			;9416
	ret nz			;9417
	ret p			;9418
	call m,01cfeh		;9419
	cp 01eh			;941c
	cp 07eh			;941e
	ld c,001h		;9420
	add a,b			;9422
	add a,b			;9423
	inc bc			;9424
	rst 38h			;9425
	ld (bc),a		;9426
	nop			;9427
	add a,h			;9428
	rst 38h			;9429
	inc bc			;942a
	rrca			;942b
	rra			;942c
	inc b			;942d
	ccf			;942e
	ld (bc),a		;942f
	rra			;9430
	adc a,a			;9431
	ld a,a			;9432
	rrca			;9433
	rra			;9434
	rra			;9435
	rrca			;9436
	nop			;9437
	ld a,a			;9438
	nop			;9439
	ret p			;943a
	cp 0c0h			;943b
	ret nz			;943d
	call m,0f0e0h		;943e
	ex af,af'		;9441
	ld a,(hl)		;9442
	adc a,l			;9443
	inc bc			;9444
	ret nz			;9445
	ret p			;9446
	ret m			;9447
	ret m			;9448
	ret po			;9449
	rrca			;944a
	rst 38h			;944b
	cp 0fch			;944c
	ccf			;944e
	rra			;944f
	rra			;9450
	inc bc			;9451
	nop			;9452
	ld (bc),a		;9453
	rst 38h			;9454
	add a,e			;9455
	nop			;9456
	rst 38h			;9457
	rst 38h			;9458
	inc bc			;9459
	nop			;945a
	nop			;945b
	sub b			;945c
	ld b,e			;945d
	ld (02132h),a		;945e
	rst 38h			;9461
	ret c			;9462
	defb 0fdh,0d8h,044h ;illegal sequence	;9463
	ld (02132h),a		;9466
	rst 38h			;9469
	ret pe			;946a
	adc a,l			;946b
	ret pe			;946c
	dec b			;946d
	di			;946e
	add a,e			;946f
	call p,0f1f2h		;9470
	ld b,034h		;9473
	ld (bc),a		;9475
	ld (de),a		;9476
	inc b			;9477
	ld (03102h),a		;9478
	ld (bc),a		;947b
	pop af			;947c
	add a,e			;947d
	ld (de),a		;947e
	ld (00521h),a		;947f
	pop af			;9482
	add a,c			;9483
	djnz $+6		;9484
	pop af			;9486
	ld (bc),a		;9487
	ld hl,03293h		;9488
	nop			;948b
	pop af			;948c
	pop af			;948d
	ld hl,03221h		;948e
	ld (00043h),a		;9491
	ld hl,03221h		;9494
	ld c,a			;9497
	ld c,a			;9498
	ld (0ff43h),a		;9499
	ld b,e			;949c
	inc bc			;949d
	ld (02181h),a		;949e
	add hl,bc		;94a1
	pop af			;94a2
	add a,c			;94a3
	ld hl,0f10ah		;94a4
	rlca			;94a7
	ld hl,03203h		;94a8
	ld (bc),a		;94ab
	ld b,e			;94ac
	ld (bc),a		;94ad
	ld (de),a		;94ae
	add a,c			;94af
	ld (04305h),a		;94b0
	ld (bc),a		;94b3
	ld (de),a		;94b4
	dec b			;94b5
	ld b,e			;94b6
	adc a,e			;94b7
	ld (01f21h),a		;94b8
	ld b,e			;94bb
	ld b,e			;94bc
	ld (0f4f4h),a		;94bd
	ld b,e			;94c0
	ld (00521h),a		;94c1
	ld b,e			;94c4
	add a,e			;94c5
	ld (0f121h),a		;94c6
	ld b,043h		;94c9
	ld (bc),a		;94cb
	ld (de),a		;94cc
	ld (bc),a		;94cd
	ld (04304h),a		;94ce
	add a,l			;94d1
	ld (01021h),a		;94d2
	ld hl,00521h		;94d5
	ld (0f181h),a		;94d8
	inc bc			;94db
	ld (de),a		;94dc
	add a,h			;94dd
	inc hl			;94de
	inc (hl)		;94df
	ld c,(hl)		;94e0
	inc (hl)		;94e1
	inc b			;94e2
	pop af			;94e3
	add a,h			;94e4
	jp p,0f4f3h		;94e5
	jp p,0f108h		;94e8
	ld (bc),a		;94eb
	ld hl,03206h		;94ec
	ld (bc),a		;94ef
	rst 38h			;94f0
	inc bc			;94f1
	call po,04302h		;94f2
	adc a,a			;94f5
	ld (0ffffh),a		;94f6
	call po,04343h		;94f9
	ld (02121h),a		;94fc
	rst 38h			;94ff
	rst 38h			;9500
	ld b,e			;9501
	ld (02121h),a		;9502
	inc b			;9505
	pop af			;9506
	add a,c			;9507
	ld (0f10ch),hl		;9508
	add a,c			;950b
	ld hl,0f105h		;950c
	inc bc			;950f
	ld hl,0f105h		;9510
	inc bc			;9513
	ld (0f105h),a		;9514
	ld (bc),a		;9517
	ld (de),a		;9518
	add a,c			;9519
	ld sp,0f105h		;951a
	ld (bc),a		;951d
	jp p,0f381h		;951e
	inc bc			;9521
	pop af			;9522
	add a,(hl)		;9523
	ld hl,03232h		;9524
	ld sp,04141h		;9527
	inc bc			;952a
	rra			;952b
	inc bc			;952c
	inc hl			;952d
	add a,c			;952e
	ld b,e			;952f
	inc b			;9530
	rra			;9531
	add a,c			;9532
	ld hl,03203h		;9533
	add a,c			;9536
	djnz $+6		;9537
	pop af			;9539
	ld (bc),a		;953a
	ld hl,03281h		;953b
	ex af,af'		;953e
	pop af			;953f
	inc b			;9540
	ld hl,0f104h		;9541
	inc bc			;9544
	ld hl,0f10bh		;9545
	ld (bc),a		;9548
	ld hl,0f103h		;9549
	inc bc			;954c
	ld hl,03202h		;954d
	inc bc			;9550
	ld hl,03202h		;9551
	inc bc			;9554
	ld b,e			;9555
	inc bc			;9556
	ld (04305h),a		;9557
	ld (bc),a		;955a
	ld (04303h),a		;955b
	xor h			;955e
	pop af			;955f
	sub c			;9560
	sub c			;9561
	inc sp			;9562
	inc sp			;9563
	ld b,c			;9564
	ld b,d			;9565
	ld b,e			;9566
	ld b,d			;9567
	ld b,c			;9568
	ld b,c			;9569
	ld sp,03221h		;956a
	ld b,e			;956d
	call po,03243h		;956e
	ld hl,0f4f3h		;9571
	call p,0fefeh		;9574
	call p,0f3f4h		;9577
	ld b,c			;957a
	ld hl,04332h		;957b
	call po,03243h		;957e
	ld hl,04343h		;9581
	ld b,c			;9584
	ld b,d			;9585
	ld b,e			;9586
	ld b,d			;9587
	ld b,c			;9588
	di			;9589
	di			;958a
	rlca			;958b
	ld b,e			;958c
	dec b			;958d
	ld (04302h),a		;958e
	add a,c			;9591
	ld b,d			;9592
	ld b,021h		;9593
	ld (bc),a		;9595
	ld (0f10ch),a		;9596
	inc bc			;9599
	ld hl,03281h		;959a
	inc bc			;959d
	pop af			;959e
	adc a,c			;959f
	ld hl,03232h		;95a0
	ld b,e			;95a3
	ld b,e			;95a4
	ld hl,0f1f1h		;95a5
	ld (04304h),a		;95a8
	add a,e			;95ab
	ld (02121h),a		;95ac
	inc c			;95af
	ld b,e			;95b0
	ld b,042h		;95b1
	inc bc			;95b3
	ld (l9102h),a		;95b4
	inc bc			;95b7
	ld b,e			;95b8
	add a,e			;95b9
	ld (0f12fh),a		;95ba
	inc b			;95bd
	ld b,e			;95be
	adc a,b			;95bf
	ld (0f12fh),a		;95c0
	pop af			;95c3
	ld sp,02131h		;95c4
	pop af			;95c7
	inc b			;95c8
	ld (de),a		;95c9
	add a,e			;95ca
	di			;95cb
	jp p,005f2h		;95cc
	pop af			;95cf
	inc bc			;95d0
	ld b,c			;95d1
	ld (bc),a		;95d2
	ld b,d			;95d3
	adc a,e			;95d4
	ld (02131h),a		;95d5
	or 0f9h			;95d8
	rra			;95da
	ld hl,0f61fh		;95db
	ld sp,hl		;95de
	rra			;95df
	rlca			;95e0
	ld b,e			;95e1
	add a,h			;95e2
	ld b,d			;95e3
	ld hl,0e1e1h		;95e4
	inc b			;95e7
	ld sp,02181h		;95e8
	ex af,af'		;95eb
	ld (02107h),a		;95ec
	ld (bc),a		;95ef
	pop af			;95f0
	inc b			;95f1
	ld hl,0ff03h		;95f2
	inc b			;95f5
	ld (01f04h),a		;95f6
	inc b			;95f9
	ld b,e			;95fa
	inc b			;95fb
	pop af			;95fc
	inc b			;95fd
	ld b,e			;95fe
	ld (bc),a		;95ff
	pop af			;9600
	ld (bc),a		;9601
	ld sp,hl		;9602
	inc bc			;9603
	ld hl,01f05h		;9604
	add a,e			;9607
	jp p,0f1f1h		;9608
	ex af,af'		;960b
	ld hl,03202h		;960c
	inc bc			;960f
	ld b,e			;9610
	ld (bc),a		;9611
	ld hl,03202h		;9612
	inc b			;9615
	ld b,e			;9616
	sub h			;9617
	ld hl,04332h		;9618
	rst 38h			;961b
	rst 38h			;961c
	ld b,e			;961d
	ld (0f132h),a		;961e
	ld hl,04332h		;9621
	ld b,e			;9624
	ld (02121h),a		;9625
	call p,031f4h		;9628
	ld (01204h),a		;962b
	add a,d			;962e
	call p,00442h		;962f
	ld sp,02102h		;9632
	adc a,h			;9635
	ld b,d			;9636
	inc (hl)		;9637
	inc hl			;9638
	ld hl,03221h		;9639
	inc de			;963c
	inc de			;963d
	ld (0f121h),a		;963e
	ld b,c			;9641
	inc b			;9642
	ld (0f381h),a		;9643
	inc bc			;9646
	jp p,0f181h		;9647
	inc bc			;964a
	ld (02081h),a		;964b
	inc bc			;964e
	ld hl,0ff82h		;964f
	ld (02103h),a		;9652
	add a,h			;9655
	ld (0e443h),a		;9656
	ld b,e			;9659
	inc bc			;965a
	ld (0f102h),a		;965b
	add a,a			;965e
	ld (de),a		;965f
	pop af			;9660
	pop af			;9661
	ld (de),a		;9662
	inc hl			;9663
	rst 38h			;9664
	ld hl,0f103h		;9665
	ld (bc),a		;9668
	jp p,03284h		;9669
	rst 38h			;966c
	ld (00332h),a		;966d
	ld hl,0f103h		;9670
	ld (bc),a		;9673
	ld b,e			;9674
	ld (bc),a		;9675
	ld (02103h),a		;9676
	add a,h			;9679
	pop af			;967a
	ld (04343h),a		;967b
	inc bc			;967e
	jp p,04302h		;967f
	ex af,af'		;9682
	ld hl,03202h		;9683
	dec b			;9686
	ld b,e			;9687
	inc b			;9688
	ld (04302h),a		;9689
	ld (bc),a		;968c
	ld (02102h),a		;968d
	ld (bc),a		;9690
	ld (04386h),a		;9691
	rst 38h			;9694
	ld (04343h),a		;9695
	ld sp,02105h		;9698
	ld (bc),a		;969b
	pop af			;969c
	ld (bc),a		;969d
	ld (04184h),a		;969e
	ld sp,02121h		;96a1
	inc bc			;96a4
	cpl			;96a5
	inc bc			;96a6
	inc (hl)		;96a7
	ld (bc),a		;96a8
	ld hl,0ff02h		;96a9
	nop			;96ac
	sub d			;96ad
	ret p			;96ae
	rrca			;96af
	rrca			;96b0
	ccf			;96b1
	jr c,l96bah		;96b2
	jr c,l96eeh		;96b4
	cp a			;96b6
	cp e			;96b7
	rst 38h			;96b8
	rrca			;96b9
l96bah:
	rrca			;96ba
	ret p			;96bb
	ret p			;96bc
	rrca			;96bd
	rst 38h			;96be
	di			;96bf
	inc bc			;96c0
	rst 38h			;96c1
	add a,(hl)		;96c2
	inc bc			;96c3
	ret m			;96c4
	rlca			;96c5
	rst 38h			;96c6
	ei			;96c7
	ld a,a			;96c8
	inc bc			;96c9
	ex de,hl		;96ca
	adc a,(hl)		;96cb
	rst 38h			;96cc
	ccf			;96cd
	ret p			;96ce
	ret nz			;96cf
	add a,b			;96d0
	add a,b			;96d1
	nop			;96d2
	rst 28h			;96d3
	rst 8			;96d4
	rst 8			;96d5
	rrca			;96d6
	inc bc			;96d7
	ld bc,00301h		;96d8
	jr nc,$-117		;96db
	ei			;96dd
	ret p			;96de
	ret p			;96df
	rrca			;96e0
	rrca			;96e1
	rst 38h			;96e2
	ret m			;96e3
	rrca			;96e4
	rrca			;96e5
	nop			;96e6
	ld (bc),a		;96e7
	res 0,(hl)		;96e8
	cp a			;96ea
	call m,0cbcbh		;96eb
l96eeh:
	ei			;96ee
	cp h			;96ef
	inc bc			;96f0
	ld sp,hl		;96f1
	add a,e			;96f2
	ei			;96f3
	cp h			;96f4
	cp h			;96f5
	inc bc			;96f6
	ei			;96f7
	inc b			;96f8
	ld sp,hl		;96f9
	add a,e			;96fa
	ei			;96fb
	set 1,e			;96fc
	rlca			;96fe
	ld sp,hl		;96ff
	add a,(hl)		;9700
	ei			;9701
	or 0b6h			;9702
	add a,0b6h		;9704
	or (hl)			;9706
	inc bc			;9707
	ld h,l			;9708
	ld (bc),a		;9709
	or 082h			;970a
	or (hl)			;970c
	add a,003h		;970d
	and 084h		;970f
	ld h,l			;9711
	ei			;9712
	cp h			;9713
	cp h			;9714
	inc b			;9715
	ei			;9716
	add a,c			;9717
	cp h			;9718
	nop			;9719
	add a,d			;971a
	rst 38h			;971b
	adc a,a			;971c
	ld b,081h		;971d
	adc a,e			;971f
	ld bc,0f1c1h		;9720
	ld sp,hl		;9723
	defb 0fdh,0ffh,0feh ;illegal sequence	;9724
	cp 0f8h			;9727
	ret p			;9729
	ret nz			;972a
	inc b			;972b
	add a,b			;972c
	add a,h			;972d
	rla			;972e
	rra			;972f
	rrca			;9730
	inc bc			;9731
	inc b			;9732
	ld bc,0e886h		;9733
	rrca			;9736
	ld bc,0f8c0h		;9737
	rst 38h			;973a
	inc bc			;973b
	ld a,a			;973c
	sub b			;973d
	rst 38h			;973e
	cp 000h			;973f
	rrca			;9741
	rst 38h			;9742
	rst 28h			;9743
	rst 28h			;9744
	rst 38h			;9745
	rrca			;9746
	rrca			;9747
	pop af			;9748
	pop de			;9749
	sbc a,a			;974a
	rst 38h			;974b
	xor e			;974c
	rst 38h			;974d
	nop			;974e
	inc bc			;974f
	ei			;9750
	add a,l			;9751
	cp h			;9752
	ei			;9753
	cp h			;9754
	cp h			;9755
	adc a,006h		;9756
	pop af			;9758
	sub h			;9759
	jp p,042f3h		;975a
	ld b,c			;975d
	ld sp,01231h		;975e
	inc hl			;9761
	inc (hl)		;9762
	call po,04142h		;9763
	ld sp,01231h		;9766
	inc hl			;9769
	inc (hl)		;976a
	call po,02121h		;976b
	inc b			;976e
	pop af			;976f
	add a,d			;9770
	jp p,003f3h		;9771
	ld hl,0f102h		;9774
	inc bc			;9777
	ld sp,hl		;9778
	adc a,b			;9779
	jp p,0f4f1h		;977a
	jp p,0f3f3h		;977d
	ld sp,hl		;9780
	ld sp,hl		;9781
	nop			;9782
	dec b			;9783
	rst 38h			;9784
	add a,e			;9785
	nop			;9786
	rst 38h			;9787
	rst 38h			;9788
	ld b,000h		;9789
	add a,h			;978b
	rst 38h			;978c
	nop			;978d
	nop			;978e
	rst 38h			;978f
	ld b,000h		;9790
	ld (bc),a		;9792
	rst 38h			;9793
	rlca			;9794
	nop			;9795
	adc a,c			;9796
	rst 38h			;9797
	nop			;9798
	nop			;9799
	rst 38h			;979a
	rst 38h			;979b
	nop			;979c
	nop			;979d
	rst 38h			;979e
	rst 38h			;979f
	ld b,000h		;97a0
	add a,e			;97a2
	rst 38h			;97a3
	nop			;97a4
	nop			;97a5
	ex af,af'		;97a6
	rst 38h			;97a7
	ld (bc),a		;97a8
	nop			;97a9
	ld (bc),a		;97aa
	rst 38h			;97ab
	add a,c			;97ac
	nop			;97ad
	nop			;97ae
	add a,c			;97af
	ld sp,hl		;97b0
	ld b,012h		;97b1
	ld (bc),a		;97b3
	pop af			;97b4
	rlca			;97b5
	ld (0f107h),a		;97b6
	ld (bc),a		;97b9
	ld (de),a		;97ba
	ld (bc),a		;97bb
	pop af			;97bc
	ex af,af'		;97bd
	ld (0f102h),a		;97be
	ld (bc),a		;97c1
	inc hl			;97c2
	ld (bc),a		;97c3
	inc d			;97c4
	ld (bc),a		;97c5
	cpl			;97c6
	rlca			;97c7
	ld hl,01f02h		;97c8
	ex af,af'		;97cb
	inc hl			;97cc
	ld (bc),a		;97cd
	inc (hl)		;97ce
	ld (bc),a		;97cf
	rra			;97d0
	nop			;97d1
	inc b			;97d2
	rst 38h			;97d3
	ld (bc),a		;97d4
	nop			;97d5
	dec b			;97d6
	rst 38h			;97d7
	add a,(hl)		;97d8
	nop			;97d9
	rst 38h			;97da
	rst 38h			;97db
	nop			;97dc
	rst 38h			;97dd
	rst 38h			;97de
	ex af,af'		;97df
	nop			;97e0
	add a,e			;97e1
	rst 38h			;97e2
	nop			;97e3
	nop			;97e4
	ld a,(bc)		;97e5
	rst 38h			;97e6
	ld (bc),a		;97e7
	nop			;97e8
	ld (bc),a		;97e9
	rst 38h			;97ea
	ld (bc),a		;97eb
	nop			;97ec
	ld (bc),a		;97ed
	rst 38h			;97ee
	inc bc			;97ef
	nop			;97f0
	ld (bc),a		;97f1
	rst 38h			;97f2
	add a,c			;97f3
	nop			;97f4
	ld b,0ffh		;97f5
	add a,e			;97f7
	nop			;97f8
	rst 38h			;97f9
	rst 38h			;97fa
	inc b			;97fb
	nop			;97fc
	add a,a			;97fd
	rst 38h			;97fe
	nop			;97ff
	nop			;9800
	rst 38h			;9801
	nop			;9802
	nop			;9803
	rst 38h			;9804
	rlca			;9805
	add a,c			;9806
	add a,c			;9807
	rst 38h			;9808
	ex af,af'		;9809
	add a,c			;980a
	nop			;980b
	inc bc			;980c
	rra			;980d
	ld (bc),a		;980e
	ld hl,01f02h		;980f
	ld b,023h		;9812
	inc bc			;9814
	rra			;9815
	ex af,af'		;9816
	inc hl			;9817
	inc bc			;9818
	pop af			;9819
	ld a,(bc)		;981a
	ld (04302h),a		;981b
	ld (bc),a		;981e
	ld (de),a		;981f
	ld (bc),a		;9820
	pop af			;9821
	ld (bc),a		;9822
	ld (04303h),a		;9823
	ld (bc),a		;9826
	ld hl,03406h		;9827
	inc b			;982a
	ld (de),a		;982b
	ld (bc),a		;982c
	pop af			;982d
	dec b			;982e
	ld (0f103h),a		;982f
	ld (bc),a		;9832
	ld (0f402h),a		;9833
	ld (bc),a		;9836
	cp 08ch			;9837
	call p,0f1f3h		;9839
	pop af			;983c
	jp p,0f3f2h		;983d
	di			;9840
	call p,0fef4h		;9841
	cp 000h			;9844
	add a,a			;9846
	rst 38h			;9847
	nop			;9848
	nop			;9849
	rst 38h			;984a
	rst 38h			;984b
	nop			;984c
	nop			;984d
	rlca			;984e
	rst 38h			;984f
	add a,h			;9850
	nop			;9851
	rst 38h			;9852
	rst 38h			;9853
	nop			;9854
	rlca			;9855
	rst 38h			;9856
	add a,a			;9857
	nop			;9858
	rst 38h			;9859
	rst 38h			;985a
	nop			;985b
	nop			;985c
	rst 38h			;985d
	rst 38h			;985e
	dec bc			;985f
	nop			;9860
	add a,l			;9861
	ld d,h			;9862
	nop			;9863
	ld d,h			;9864
	nop			;9865
	nop			;9866
	ex af,af'		;9867
	add a,b			;9868
	ex af,af'		;9869
	add a,c			;986a
	ex af,af'		;986b
	rra			;986c
	nop			;986d
	ld (bc),a		;986e
	ld hl,01f02h		;986f
	ld (bc),a		;9872
	inc hl			;9873
	dec d			;9874
	inc (hl)		;9875
	ld (bc),a		;9876
	ld hl,01f02h		;9877
	add hl,bc		;987a
	inc hl			;987b
	ex af,af'		;987c
	sbc a,a			;987d
	ex af,af'		;987e
	ld b,d			;987f
	ex af,af'		;9880
	ld (0f108h),a		;9881
	nop			;9884
	add a,h			;9885
	rst 38h			;9886
	add a,c			;9887
	add a,c			;9888
	rst 38h			;9889
	inc c			;988a
	add a,c			;988b
	add a,c			;988c
	rst 38h			;988d
	inc bc			;988e
	add a,c			;988f
	add a,c			;9890
	rst 38h			;9891
	inc c			;9892
	add a,c			;9893
	add a,c			;9894
	rst 38h			;9895
	inc bc			;9896
	add a,c			;9897
	add a,c			;9898
	rst 38h			;9899
	inc c			;989a
	add a,c			;989b
	add a,c			;989c
	rst 38h			;989d
	dec c			;989e
	add a,c			;989f
	and b			;98a0
	inc bc			;98a1
	ret nz			;98a2
	ret p			;98a3
	call m,sub_839fh	;98a4
	ld a,(hl)		;98a7
	ld a,(hl)		;98a8
	inc bc			;98a9
	ret nz			;98aa
	ret p			;98ab
	call m,sub_839fh	;98ac
	ld a,(hl)		;98af
	ld a,(hl)		;98b0
	inc bc			;98b1
	ret nz			;98b2
	ret p			;98b3
	call m,0ff8fh		;98b4
	add a,c			;98b7
	add a,c			;98b8
	call m,0f0c0h		;98b9
	call m,sub_83ffh	;98bc
	rst 38h			;98bf
	ld a,(hl)		;98c0
	nop			;98c1
	ld (bc),a		;98c2
	pop af			;98c3
	adc a,(hl)		;98c4
	ld (de),a		;98c5
	pop af			;98c6
	pop af			;98c7
	ld (de),a		;98c8
	inc hl			;98c9
	rst 38h			;98ca
	ld (de),a		;98cb
	inc hl			;98cc
	inc hl			;98cd
	inc (hl)		;98ce
	rst 38h			;98cf
	inc hl			;98d0
	inc (hl)		;98d1
	inc (hl)		;98d2
	inc bc			;98d3
	pop af			;98d4
	adc a,l			;98d5
	ld (de),a		;98d6
	pop af			;98d7
	pop af			;98d8
	ld (de),a		;98d9
	ld (de),a		;98da
	inc hl			;98db
	rst 38h			;98dc
	ld (de),a		;98dd
	inc hl			;98de
	inc hl			;98df
	inc (hl)		;98e0
	rst 38h			;98e1
	inc hl			;98e2
	inc b			;98e3
	pop af			;98e4
	adc a,b			;98e5
	ld (de),a		;98e6
	pop af			;98e7
	pop af			;98e8
	ld (de),a		;98e9
	ld (de),a		;98ea
	inc hl			;98eb
	rst 38h			;98ec
	inc hl			;98ed
	inc bc			;98ee
	inc (hl)		;98ef
	adc a,(hl)		;98f0
	inc hl			;98f1
	pop af			;98f2
	ld (de),a		;98f3
	pop af			;98f4
	pop af			;98f5
	ld (de),a		;98f6
	inc hl			;98f7
	rst 38h			;98f8
	ld (de),a		;98f9
	inc hl			;98fa
	inc hl			;98fb
	inc (hl)		;98fc
	rst 38h			;98fd
	inc hl			;98fe
	inc bc			;98ff
	inc (hl)		;9900
	add a,c			;9901
	ld hl,0f103h		;9902
	ld (bc),a		;9905
	jp p,03283h		;9906
	rst 38h			;9909
	ld hl,0f105h		;990a
	inc bc			;990d
	ld hl,0f103h		;990e
	ld (bc),a		;9911
	jp p,0f183h		;9912
	ld (de),a		;9915
	ld (de),a		;9916
	inc b			;9917
	pop af			;9918
	ld (bc),a		;9919
	di			;991a
	add a,c			;991b
	ld hl,00800h		;991c
	ld c,c			;991f
	ex af,af'		;9920
	inc h			;9921
	ex af,af'		;9922
	sub d			;9923
	nop			;9924
	jr l9977h		;9925
	nop			;9927
	ex af,af'		;9928
	rst 38h			;9929
	ld (bc),a		;992a
	nop			;992b
	rlca			;992c
	rst 38h			;992d
	add a,c			;992e
	nop			;992f
	ld b,0ffh		;9930
	nop			;9932
	add hl,bc		;9933
l9934h:
	rst 20h			;9934
	rlca			;9935
	ld (hl),b		;9936
	ex af,af'		;9937
	rst 20h			;9938
	nop			;9939
	add a,e			;993a
	rst 38h			;993b
	nop			;993c
	nop			;993d
	dec b			;993e
	rst 38h			;993f
	ld (bc),a		;9940
	nop			;9941
	add a,c			;9942
	rst 38h			;9943
	dec b			;9944
	nop			;9945
	inc b			;9946
	rst 38h			;9947
	dec b			;9948
	nop			;9949
	inc bc			;994a
	rst 38h			;994b
	dec b			;994c
	nop			;994d
	add a,e			;994e
	rst 38h			;994f
	nop			;9950
	nop			;9951
	inc b			;9952
	rst 38h			;9953
	nop			;9954
	ld (bc),a		;9955
	jp p,0f102h		;9956
	dec b			;9959
	ld bc,02f03h		;995a
	ld b,010h		;995d
	ld b,0f0h		;995f
	inc bc			;9961
	ld (de),a		;9962
	dec b			;9963
	ret p			;9964
	inc bc			;9965
	ld hl,00f05h		;9966
	nop			;9969
	sub e			;996a
	jr c,l9934h		;996b
	ld e,0e1h		;996d
	pop hl			;996f
	ld e,0f0h		;9970
	rrca			;9972
	ret p			;9973
	ret p			;9974
	rst 38h			;9975
	rst 38h			;9976
l9977h:
	cp a			;9977
	cp e			;9978
	rst 38h			;9979
	rst 38h			;997a
	rrca			;997b
	ret m			;997c
	ret m			;997d
	inc bc			;997e
	nop			;997f
	sbc a,c			;9980
	di			;9981
	rst 38h			;9982
	rrca			;9983
	rrca			;9984
	ret p			;9985
	ret p			;9986
	rrca			;9987
	rrca			;9988
	ret p			;9989
	ret p			;998a
	rst 0			;998b
	jp 0e0c0h		;998c
	ret po			;998f
	ret m			;9990
	ret nz			;9991
	ret p			;9992
	ei			;9993
	di			;9994
	inc bc			;9995
	rlca			;9996
	rlca			;9997
	rra			;9998
	inc bc			;9999
	inc bc			;999a
	rrca			;999b
	add a,(hl)		;999c
	nop			;999d
	xor e			;999e
	rst 38h			;999f
	xor e			;99a0
	rst 38h			;99a1
	rst 38h			;99a2
	nop			;99a3
	ld (bc),a		;99a4
	rlc d			;99a5
	ei			;99a7
	dec b			;99a8
	cp h			;99a9
	inc bc			;99aa
	ei			;99ab
	inc b			;99ac
	ld sp,hl		;99ad
	ld (bc),a		;99ae
	rlc h			;99af
	cp a			;99b1
	ld (bc),a		;99b2
	ld sp,hl		;99b3
	adc a,b			;99b4
	res 7,a			;99b5
	cp a			;99b7
	set 1,e			;99b8
	cp a			;99ba
	cp a			;99bb
	rlc (hl)		;99bc
	ld h,l			;99be
	add a,d			;99bf
	or (hl)			;99c0
	or 006h			;99c1
	ld h,l			;99c3
	add a,l			;99c4
	add a,0b6h		;99c5
	res 7,a			;99c7
	cp a			;99c9
	dec b			;99ca
	ld sp,hl		;99cb
	nop			;99cc
	add a,c			;99cd
	rst 38h			;99ce
	inc bc			;99cf
	nop			;99d0
	add a,e			;99d1
	rst 38h			;99d2
	nop			;99d3
	nop			;99d4
	inc b			;99d5
	rst 38h			;99d6
	ld (bc),a		;99d7
	nop			;99d8
	adc a,b			;99d9
	rst 38h			;99da
	nop			;99db
	nop			;99dc
	rst 38h			;99dd
	rst 38h			;99de
	nop			;99df
	nop			;99e0
	rst 38h			;99e1
	inc b			;99e2
	nop			;99e3
	ld (bc),a		;99e4
	rst 38h			;99e5
	inc bc			;99e6
	nop			;99e7
	add a,c			;99e8
	rst 38h			;99e9
	ld b,000h		;99ea
	ld (bc),a		;99ec
	rst 38h			;99ed
	ld (bc),a		;99ee
	nop			;99ef
	ld (bc),a		;99f0
	rst 38h			;99f1
	ld (bc),a		;99f2
	nop			;99f3
	ld (bc),a		;99f4
	rst 38h			;99f5
	ld (bc),a		;99f6
	nop			;99f7
	add a,e			;99f8
	rst 38h			;99f9
	nop			;99fa
	nop			;99fb
	inc b			;99fc
	rst 38h			;99fd
	ld (bc),a		;99fe
	nop			;99ff
	ld b,0ffh		;9a00
	nop			;9a02
	inc bc			;9a03
	ld (0f103h),a		;9a04
	ld (bc),a		;9a07
	ld (de),a		;9a08
	inc b			;9a09
	ld (0f103h),a		;9a0a
	ld (bc),a		;9a0d
	jp p,01202h		;9a0e
	dec b			;9a11
	ld b,e			;9a12
	ld (bc),a		;9a13
	ld hl,03203h		;9a14
	inc bc			;9a17
	pop af			;9a18
	ld b,023h		;9a19
	ld (bc),a		;9a1b
	rra			;9a1c
	ld (bc),a		;9a1d
	inc (hl)		;9a1e
	ld (bc),a		;9a1f
	cpl			;9a20
	ld (bc),a		;9a21
	ld hl,03402h		;9a22
	inc bc			;9a25
	pop af			;9a26
	inc b			;9a27
	ld (de),a		;9a28
	ld (bc),a		;9a29
	jp p,02307h		;9a2a
	nop			;9a2d
	dec c			;9a2e
	ld a,(hl)		;9a2f
	add a,c			;9a30
	nop			;9a31
	djnz l9ab2h		;9a32
	add a,e			;9a34
	nop			;9a35
	ld a,(hl)		;9a36
	nop			;9a37
	ld a,(bc)		;9a38
	ld a,(hl)		;9a39
	add a,c			;9a3a
	nop			;9a3b
	inc bc			;9a3c
	add a,c			;9a3d
	add a,c			;9a3e
	rst 38h			;9a3f
	inc c			;9a40
	ld a,(hl)		;9a41
	add a,c			;9a42
	nop			;9a43
	inc bc			;9a44
	ld a,(hl)		;9a45
	sbc a,b			;9a46
	nop			;9a47
	ld a,(hl)		;9a48
	add a,e			;9a49
	sbc a,a			;9a4a
	call m,0c0f0h		;9a4b
	inc bc			;9a4e
	ld a,(hl)		;9a4f
	ld a,(hl)		;9a50
	rst 38h			;9a51
	adc a,a			;9a52
	call m,0c0f0h		;9a53
	inc bc			;9a56
	ld a,(hl)		;9a57
	ld a,(hl)		;9a58
	add a,e			;9a59
	rst 38h			;9a5a
	call m,0c0f0h		;9a5b
	inc bc			;9a5e
	inc bc			;9a5f
	ld a,(hl)		;9a60
	add a,l			;9a61
	rst 38h			;9a62
	sbc a,h			;9a63
	ret p			;9a64
	ret nz			;9a65
	inc bc			;9a66
	nop			;9a67
	ld (bc),a		;9a68
	ld b,e			;9a69
	adc a,(hl)		;9a6a
	ld (043ffh),a		;9a6b
	ld (02132h),a		;9a6e
	rst 38h			;9a71
	ld (02121h),a		;9a72
	rra			;9a75
	rra			;9a76
	ld hl,0041fh		;9a77
	ld b,e			;9a7a
	adc a,c			;9a7b
	ld (043ffh),a		;9a7c
	ld (02132h),a		;9a7f
	rst 38h			;9a82
	ld (00421h),a		;9a83
	rra			;9a86
	add a,c			;9a87
	ld (04303h),a		;9a88
	adc a,b			;9a8b
	ld (032ffh),a		;9a8c
	ld hl,01f21h		;9a8f
	rra			;9a92
	jp p,0f103h		;9a93
	add a,e			;9a96
	ld (043ffh),a		;9a97
	inc bc			;9a9a
	ld (02188h),a		;9a9b
	rst 38h			;9a9e
	ld (02121h),a		;9a9f
	rra			;9aa2
	rra			;9aa3
	ld hl,01f03h		;9aa4
	add a,c			;9aa7
	ld hl,0f105h		;9aa8
	add a,l			;9aab
	ld hl,02132h		;9aac
	di			;9aaf
	di			;9ab0
	inc bc			;9ab1
l9ab2h:
	pop af			;9ab2
	inc bc			;9ab3
	ld hl,0f105h		;9ab4
	add a,h			;9ab7
	ld hl,02132h		;9ab8
	ld hl,0f104h		;9abb
	add a,c			;9abe
	ld hl,l8d00h		;9abf
	ld bc,0f1c1h		;9ac2
	ld sp,hl		;9ac5
	defb 0fdh,0ffh,0feh ;illegal sequence	;9ac6
	cp 00fh			;9ac9
	ld bc,0f8c0h		;9acb
	rst 38h			;9ace
	inc bc			;9acf
	ld a,a			;9ad0
	nop			;9ad1
	ld b,0f1h		;9ad2
	ld (bc),a		;9ad4
	or 002h			;9ad5
	ld hl,0f104h		;9ad7
	ld (bc),a		;9ada
	or 000h			;9adb
	sub e			;9add
	ret m			;9ade
	ret p			;9adf
	rra			;9ae0
	ld a,a			;9ae1
	rrca			;9ae2
	ccf			;9ae3
	ld a,a			;9ae4
	dec bc			;9ae5
	ret m			;9ae6
	ret p			;9ae7
	rra			;9ae8
	ld a,a			;9ae9
	rrca			;9aea
	ccf			;9aeb
	ld a,a			;9aec
	dec bc			;9aed
	ret m			;9aee
	ret p			;9aef
	ret nz			;9af0
	inc b			;9af1
	add a,b			;9af2
	add a,c			;9af3
	dec bc			;9af4
	nop			;9af5
	add a,h			;9af6
	ld b,d			;9af7
	ld sp,06162h		;9af8
	inc bc			;9afb
	sub (hl)		;9afc
	add a,l			;9afd
	jp (hl)			;9afe
	ld b,d			;9aff
	ld sp,04121h		;9b00
	inc bc			;9b03
	sub (hl)		;9b04
	adc a,c			;9b05
	jp (hl)			;9b06
	ld b,d			;9b07
	ld b,c			;9b08
	ld sp,01332h		;9b09
	inc h			;9b0c
	ld l,c			;9b0d
	jp (hl)			;9b0e
	nop			;9b0f
	add a,c			;9b10
	ld bc,0000ah		;9b11
	add a,l			;9b14
	inc bc			;9b15
	rlca			;9b16
	rrca			;9b17
	rra			;9b18
	ccf			;9b19
	ld b,000h		;9b1a
	add hl,bc		;9b1c
	rrca			;9b1d
	rlca			;9b1e
	nop			;9b1f
	ld (bc),a		;9b20
	ret p			;9b21
	add a,d			;9b22
	ret po			;9b23
	call m,0ff04h		;9b24
	add a,c			;9b27
	ret p			;9b28
	inc bc			;9b29
	nop			;9b2a
	add a,e			;9b2b
	ret nz			;9b2c
	ret m			;9b2d
	ret p			;9b2e
	ex af,af'		;9b2f
	nop			;9b30
	adc a,d			;9b31
	ret nz			;9b32
	ret po			;9b33
	ret p			;9b34
	rst 38h			;9b35
	nop			;9b36
	nop			;9b37
	cp a			;9b38
	ret nz			;9b39
	adc a,a			;9b3a
	inc bc			;9b3b
	inc b			;9b3c
	nop			;9b3d
	add a,a			;9b3e
	ld bc,00703h		;9b3f
	rrca			;9b42
	rra			;9b43
	ret p			;9b44
	ret po			;9b45
	inc bc			;9b46
	rrca			;9b47
	inc bc			;9b48
	rst 38h			;9b49
	add a,e			;9b4a
	call m,0c0f0h		;9b4b
	ex af,af'		;9b4e
	nop			;9b4f
	add a,c			;9b50
	add a,b			;9b51
	inc b			;9b52
	ret nz			;9b53
	add a,d			;9b54
	cp h			;9b55
	ld a,(hl)		;9b56
	inc bc			;9b57
	ret p			;9b58
	sub l			;9b59
	rra			;9b5a
	inc bc			;9b5b
	ret po			;9b5c
	add a,a			;9b5d
	add a,a			;9b5e
	inc bc			;9b5f
	add a,a			;9b60
	add a,a			;9b61
	ld a,a			;9b62
	ld a,a			;9b63
	ccf			;9b64
	ret po			;9b65
	call m,007e0h		;9b66
	rra			;9b69
	ccf			;9b6a
	ld a,a			;9b6b
	ld a,a			;9b6c
	cp 0fch			;9b6d
	inc bc			;9b6f
	ret m			;9b70
	inc bc			;9b71
	ret p			;9b72
	sbc a,b			;9b73
	rlca			;9b74
	inc bc			;9b75
	nop			;9b76
	ld a,a			;9b77
	ccf			;9b78
	rlca			;9b79
	nop			;9b7a
	nop			;9b7b
	ld d,a			;9b7c
	ld d,a			;9b7d
	add hl,hl		;9b7e
	add hl,hl		;9b7f
	xor b			;9b80
	xor b			;9b81
	rst 38h			;9b82
	rst 38h			;9b83
	rra			;9b84
	rlca			;9b85
	ret po			;9b86
	cp 0feh			;9b87
	ld a,h			;9b89
	ld (hl),b		;9b8a
	cp 003h			;9b8b
	rst 38h			;9b8d
	inc b			;9b8e
	nop			;9b8f
	adc a,(hl)		;9b90
	rst 38h			;9b91
	rlca			;9b92
	ccf			;9b93
	ccf			;9b94
	rst 38h			;9b95
	call m,0c0f0h		;9b96
	add a,b			;9b99
	nop			;9b9a
	rrca			;9b9b
	rrca			;9b9c
	nop			;9b9d
	rst 38h			;9b9e
	inc bc			;9b9f
	nop			;9ba0
	add a,c			;9ba1
	ld a,a			;9ba2
	inc b			;9ba3
	rrca			;9ba4
	adc a,(hl)		;9ba5
	rra			;9ba6
	inc bc			;9ba7
	ret po			;9ba8
	ret p			;9ba9
	ret po			;9baa
	rrca			;9bab
l9bach:
	rlca			;9bac
	inc c			;9bad
	rrca			;9bae
	rrca			;9baf
	rra			;9bb0
	ccf			;9bb1
	ccf			;9bb2
	ld a,a			;9bb3
	inc b			;9bb4
	ret p			;9bb5
	add a,h			;9bb6
	nop			;9bb7
	rrca			;9bb8
	rlca			;9bb9
	ccf			;9bba
	inc b			;9bbb
	inc bc			;9bbc
	sub c			;9bbd
	nop			;9bbe
	rst 38h			;9bbf
	cp 0f0h			;9bc0
l9bc2h:
	ret nz			;9bc2
	jr nc,$+26		;9bc3
	jr l9bd3h		;9bc5
	inc c			;9bc7
	jr l9be2h		;9bc8
	jr nc,l9bach		;9bca
	add a,b			;9bcc
	call m,003e0h		;9bcd
	ld h,b			;9bd0
	sbc a,d			;9bd1
	sub b			;9bd2
l9bd3h:
	sbc a,a			;9bd3
	sub b			;9bd4
	sbc a,a			;9bd5
	nop			;9bd6
	nop			;9bd7
	add a,b			;9bd8
	ret p			;9bd9
	inc bc			;9bda
	inc c			;9bdb
	jr $+26			;9bdc
	jr nc,l9c10h		;9bde
	jr l9bfah		;9be0
l9be2h:
	inc c			;9be2
	rlca			;9be3
	ld bc,0073fh		;9be4
	rst 38h			;9be7
	ret p			;9be8
	rrca			;9be9
	ld a,a			;9bea
	inc bc			;9beb
	inc bc			;9bec
	rlca			;9bed
	inc bc			;9bee
	ret p			;9bef
	sub l			;9bf0
	ei			;9bf1
	ld sp,hl		;9bf2
	ret m			;9bf3
	inc b			;9bf4
	cp 07bh			;9bf5
	ld (hl),09ch		;9bf7
	ld c,l			;9bf9
l9bfah:
	rst 20h			;9bfa
	inc sp			;9bfb
	ld sp,hl		;9bfc
	nop			;9bfd
	dec a			;9bfe
	ld h,l			;9bff
	ret			;9c00
	sub e			;9c01
	ld h,04eh		;9c02
	sbc a,h			;9c04
	ccf			;9c05
	ld b,00fh		;9c06
	dec b			;9c08
	nop			;9c09
	dec b			;9c0a
	ret p			;9c0b
	adc a,l			;9c0c
	rst 38h			;9c0d
	cp 0fch			;9c0e
l9c10h:
	ret m			;9c10
	ret p			;9c11
	nop			;9c12
	inc c			;9c13
	ld c,a			;9c14
l9c15h:
	rst 38h			;9c15
	rst 38h			;9c16
	call m,0c0f0h		;9c17
	inc bc			;9c1a
	nop			;9c1b
	rlca			;9c1c
	ld b,b			;9c1d
	ld (bc),a		;9c1e
	ret p			;9c1f
	add a,(hl)		;9c20
	jr nz,l9c33h		;9c21
	djnz l9c15h		;9c23
	ret nz			;9c25
	ret nz			;9c26
	inc b			;9c27
	nop			;9c28
	add a,c			;9c29
	rrca			;9c2a
	inc bc			;9c2b
	rst 38h			;9c2c
	add a,c			;9c2d
	ret p			;9c2e
	nop			;9c2f
	dec bc			;9c30
	ret p			;9c31
	add a,c			;9c32
l9c33h:
	ret po			;9c33
	dec bc			;9c34
	ld b,b			;9c35
	add a,c			;9c36
	call po,00005h		;9c37
	add a,e			;9c3a
	inc (hl)		;9c3b
	ld c,(hl)		;9c3c
	ld c,(hl)		;9c3d
	rlca			;9c3e
	jr nc,l9bc2h		;9c3f
	ld b,e			;9c41
	ld b,030h		;9c42
	ld (bc),a		;9c44
	ld (03004h),a		;9c45
	inc b			;9c48
	ld (02008h),a		;9c49
	dec b			;9c4c
	rra			;9c4d
	add a,c			;9c4e
	djnz l9c56h		;9c4f
	ret p			;9c51
	adc a,c			;9c52
	ret nc			;9c53
	add a,b			;9c54
	add a,b			;9c55
l9c56h:
	ret po			;9c56
	ret po			;9c57
	ret pe			;9c58
	ret pe			;9c59
	ret c			;9c5a
	ld e,l			;9c5b
	inc b			;9c5c
	dec b			;9c5d
	ex af,af'		;9c5e
	djnz l9c6bh		;9c5f
	inc de			;9c61
	add a,a			;9c62
	pop af			;9c63
	ld e,a			;9c64
	push de			;9c65
	ret c			;9c66
	ret c			;9c67
	ret pe			;9c68
	ret c			;9c69
	inc bc			;9c6a
l9c6bh:
	adc a,(hl)		;9c6b
	sub h			;9c6c
	ret c			;9c6d
	out (0d3h),a		;9c6e
	ld d,e			;9c70
	ret po			;9c71
	ld b,b			;9c72
	ld b,e			;9c73
	di			;9c74
	ld d,e			;9c75
	ld d,e			;9c76
	out (0d3h),a		;9c77
	ld b,e			;9c79
	ex (sp),hl		;9c7a
	ex (sp),hl		;9c7b
	ld b,e			;9c7c
	ex (sp),hl		;9c7d
	ld b,e			;9c7e
	ld b,e			;9c7f
	ld b,d			;9c80
	inc bc			;9c81
	ld (02104h),a		;9c82
	ld (bc),a		;9c85
	ld e,a			;9c86
	adc a,d			;9c87
	rst 18h			;9c88
	ret m			;9c89
	ret m			;9c8a
	defb 0fdh,0f5h,0f5h ;illegal sequence	;9c8b
	ld (0f353h),hl		;9c8e
	ld (02104h),a		;9c91
	add a,c			;9c94
	djnz l9c9dh		;9c95
	ld (0f102h),a		;9c97
	ld (bc),a		;9c9a
	ret po			;9c9b
	ld (bc),a		;9c9c
l9c9dh:
	ld c,(hl)		;9c9d
	ld b,043h		;9c9e
	ld b,0e4h		;9ca0
	add a,a			;9ca2
	ld b,b			;9ca3
	ld sp,0f51fh		;9ca4
	ld e,l			;9ca7
	ret c			;9ca8
	ret c			;9ca9
	inc bc			;9caa
	ret pe			;9cab
	add a,h			;9cac
	ret c			;9cad
	defb 0fdh,0f5h,080h ;illegal sequence	;9cae
	dec b			;9cb1
	ret po			;9cb2
	adc a,b			;9cb3
	ret pe			;9cb4
	adc a,l			;9cb5
	push de			;9cb6
	ld d,b			;9cb7
	ld d,b			;9cb8
	ld hl,03232h		;9cb9
	ex af,af'		;9cbc
	ld b,e			;9cbd
	ld b,0f3h		;9cbe
	dec b			;9cc0
	jp p,02103h		;9cc1
	ld (bc),a		;9cc4
	cpl			;9cc5
	add a,d			;9cc6
	pop af			;9cc7
	jp p,0f103h		;9cc8
	inc bc			;9ccb
	inc (hl)		;9ccc
	ld b,0f3h		;9ccd
	dec b			;9ccf
	jp p,02106h		;9cd0
	rlca			;9cd3
	ld (02103h),a		;9cd4
	ld (de),a		;9cd7
	pop af			;9cd8
	add a,l			;9cd9
	ld b,e			;9cda
	call po,03243h		;9cdb
	ld hl,01f03h		;9cde
	inc b			;9ce1
	ld c,(hl)		;9ce2
	add a,h			;9ce3
	inc (hl)		;9ce4
	inc hl			;9ce5
	ld (de),a		;9ce6
	pop af			;9ce7
	ld b,0e4h		;9ce8
	add a,d			;9cea
	ld b,e			;9ceb
	ld (04308h),a		;9cec
	rlca			;9cef
	ld (02181h),a		;9cf0
	inc b			;9cf3
	ld (02102h),a		;9cf4
	ld (bc),a		;9cf7
	rra			;9cf8
	rlca			;9cf9
	ld (de),a		;9cfa
	add a,c			;9cfb
	pop af			;9cfc
	nop			;9cfd
	ld (bc),a		;9cfe
	add a,b			;9cff
	rlca			;9d00
	ret nz			;9d01
	add a,e			;9d02
	add a,b			;9d03
	nop			;9d04
	add a,b			;9d05
	ex af,af'		;9d06
	ret nz			;9d07
	ld (bc),a		;9d08
	add a,b			;9d09
	ld (bc),a		;9d0a
	nop			;9d0b
	and e			;9d0c
	inc bc			;9d0d
	ld a,a			;9d0e
	ccf			;9d0f
	rrca			;9d10
	inc bc			;9d11
	ld a,a			;9d12
	rlca			;9d13
	nop			;9d14
	rra			;9d15
	rlca			;9d16
	rst 38h			;9d17
	rst 38h			;9d18
	cp 0f8h			;9d19
	ret nz			;9d1b
	nop			;9d1c
	rra			;9d1d
	rlca			;9d1e
	nop			;9d1f
	ret p			;9d20
	nop			;9d21
	nop			;9d22
	ret p			;9d23
	nop			;9d24
	rrca			;9d25
	nop			;9d26
	nop			;9d27
	rlca			;9d28
	rra			;9d29
	ccf			;9d2a
	ld a,a			;9d2b
	ld a,a			;9d2c
	rst 38h			;9d2d
	rst 38h			;9d2e
	nop			;9d2f
	inc bc			;9d30
	ret p			;9d31
	add a,h			;9d32
	ccf			;9d33
	rrca			;9d34
	inc bc			;9d35
	nop			;9d36
	inc bc			;9d37
	rrca			;9d38
	add a,h			;9d39
	rst 38h			;9d3a
	rrca			;9d3b
	rrca			;9d3c
	ld bc,00704h		;9d3d
	add a,c			;9d40
	inc bc			;9d41
	inc bc			;9d42
	ld bc,0f097h		;9d43
	call m,0fefeh		;9d46
	inc c			;9d49
	add a,c			;9d4a
	add a,c			;9d4b
	add a,a			;9d4c
	add a,a			;9d4d
	inc bc			;9d4e
	add a,a			;9d4f
	add a,a			;9d50
	ld a,a			;9d51
	ld a,a			;9d52
	ccf			;9d53
	inc c			;9d54
	add a,c			;9d55
	add a,c			;9d56
	rst 38h			;9d57
	rst 38h			;9d58
	ccf			;9d59
	rrca			;9d5a
	ld bc,00300h		;9d5b
	call p,0f30fh		;9d5e
	inc bc			;9d61
	jp p,0f103h		;9d62
	add a,c			;9d65
	ld (02104h),a		;9d66
	inc bc			;9d69
	djnz $-124		;9d6a
	ld d,e			;9d6c
	di			;9d6d
	inc bc			;9d6e
	jr nz,l9d74h		;9d6f
	djnz $-123		;9d71
	ld d,e			;9d73
l9d74h:
	jp p,003f2h		;9d74
	ld hl,01002h		;9d77
	inc bc			;9d7a
	call po,0f483h		;9d7b
	ld d,e			;9d7e
	ld d,e			;9d7f
	inc bc			;9d80
	out (003h),a		;9d81
	adc a,(hl)		;9d83
	add a,d			;9d84
	ret c			;9d85
	ld e,l			;9d86
	inc b			;9d87
	ld d,b			;9d88
	add a,d			;9d89
	ret nc			;9d8a
	adc a,l			;9d8b
	inc bc			;9d8c
	ret pe			;9d8d
	add a,l			;9d8e
	adc a,l			;9d8f
	push af			;9d90
	push af			;9d91
	ld e,l			;9d92
	ret c			;9d93
	inc b			;9d94
	adc a,(hl)		;9d95
	add a,c			;9d96
	ret c			;9d97
	dec b			;9d98
	ret pe			;9d99
	add a,e			;9d9a
	ret c			;9d9b
	ld e,l			;9d9c
	ret c			;9d9d
	inc bc			;9d9e
	adc a,(hl)		;9d9f
	add a,(hl)		;9da0
	ret c			;9da1
	out (0d3h),a		;9da2
	ld d,e			;9da4
	ret pe			;9da5
	ret c			;9da6
	inc bc			;9da7
	ld e,l			;9da8
	ld (bc),a		;9da9
	ld d,b			;9daa
	add a,c			;9dab
	djnz l9daeh		;9dac
l9daeh:
	ld b,000h		;9dae
	ld (bc),a		;9db0
	ld bc,07f85h		;9db1
	ccf			;9db4
	rra			;9db5
	rrca			;9db6
	inc bc			;9db7
	inc bc			;9db8
	nop			;9db9
	inc bc			;9dba
	rst 38h			;9dbb
	add a,h			;9dbc
	add a,b			;9dbd
	ccf			;9dbe
	rrca			;9dbf
	inc bc			;9dc0
	ex af,af'		;9dc1
	nop			;9dc2
	add a,c			;9dc3
	ret p			;9dc4
	ld b,000h		;9dc5
	ld (bc),a		;9dc7
	rst 38h			;9dc8
	add a,h			;9dc9
	rrca			;9dca
	ccf			;9dcb
	rrca			;9dcc
	inc bc			;9dcd
	ex af,af'		;9dce
	nop			;9dcf
	add a,h			;9dd0
	rlca			;9dd1
	ccf			;9dd2
	ld a,a			;9dd3
	rlca			;9dd4
	inc b			;9dd5
	nop			;9dd6
	add a,h			;9dd7
	ret po			;9dd8
	call m,0e0feh		;9dd9
	nop			;9ddc
	rlca			;9ddd
	ret po			;9dde
	add a,c			;9ddf
	add ix,bc		;9de0
	djnz l9de7h		;9de2
	pop af			;9de4
	add a,d			;9de5
	ret p			;9de6
l9de7h:
	djnz l9df2h		;9de7
	ret p			;9de9
	ex af,af'		;9dea
	ret po			;9deb
	add a,d			;9dec
	ld b,h			;9ded
	push de			;9dee
	dec bc			;9def
	ld d,b			;9df0
	inc bc			;9df1
l9df2h:
	ret po			;9df2
	add a,c			;9df3
	call po,0e007h		;9df4
	add a,c			;9df7
	call po,08300h		;9df8
	inc a			;9dfb
	ld a,03fh		;9dfc
	inc bc			;9dfe
	rra			;9dff
	inc bc			;9e00
	rrca			;9e01
	ld (bc),a		;9e02
	rlca			;9e03
	adc a,e			;9e04
	rst 0			;9e05
	jp po,0f8f0h		;9e06
	call m,0fefeh		;9e09
	call m,001e0h		;9e0c
	rrca			;9e0f
	inc bc			;9e10
	cp 081h			;9e11
	ld a,b			;9e13
	rlca			;9e14
	ld a,a			;9e15
	adc a,b			;9e16
	ld a,018h		;9e17
	rlca			;9e19
	rra			;9e1a
	ccf			;9e1b
	ld a,a			;9e1c
	ld a,a			;9e1d
	nop			;9e1e
	inc bc			;9e1f
	rrca			;9e20
	ld (bc),a		;9e21
	rlca			;9e22
	add a,d			;9e23
	inc bc			;9e24
	ld bc,0ff03h		;9e25
	ld (bc),a		;9e28
	ld a,a			;9e29
	add a,e			;9e2a
	ccf			;9e2b
	rra			;9e2c
	rrca			;9e2d
	nop			;9e2e
	inc c			;9e2f
	ret po			;9e30
	ld (bc),a		;9e31
	ret pe			;9e32
	add a,d			;9e33
	defb 0edh ;next byte illegal after ed	;9e34
	push hl			;9e35
	inc b			;9e36
	ret pe			;9e37
	ld (bc),a		;9e38
	ret c			;9e39
	add a,h			;9e3a
	push de			;9e3b
sub_9e3ch:
	ld e,a			;9e3c
	di			;9e3d
	di			;9e3e
	ld b,031h		;9e3f
	inc bc			;9e41
	ld b,e			;9e42
	add a,l			;9e43
	di			;9e44
	ld d,e			;9e45
	ld d,e			;9e46
	out (0d3h),a		;9e47
	ex af,af'		;9e49
	ld hl,03208h		;9e4a
	nop			;9e4d
	sub c			;9e4e
	add a,b			;9e4f
	ret nz			;9e50
	ret po			;9e51
	ret po			;9e52
	call po,0f6f4h		;9e53
	or 000h			;9e56
	nop			;9e58
	add a,b			;9e59
	ret nz			;9e5a
	ret po			;9e5b
	ret p			;9e5c
	ret m			;9e5d
	call m,0030fh		;9e5e
	rlca			;9e61
	rlca			;9e62
	inc bc			;9e63
	inc bc			;9e64
	ld bc,00003h		;9e65
	add a,a			;9e68
	add a,b			;9e69
	ret nz			;9e6a
	ret po			;9e6b
	ret p			;9e6c
	ret m			;9e6d
	call m,000feh		;9e6e
	ld a,(bc)		;9e71
	jr nc,l9e7fh		;9e72
	ret po			;9e74
	ld (bc),a		;9e75
	add a,b			;9e76
	add a,c			;9e77
	ret nc			;9e78
	add hl,bc		;9e79
	djnz l9e83h		;9e7a
	ld b,b			;9e7c
	nop			;9e7d
	ld (bc),a		;9e7e
l9e7fh:
	nop			;9e7f
	sub (hl)		;9e80
	ccf			;9e81
	rst 38h			;9e82
l9e83h:
	ret m			;9e83
	ret nz			;9e84
	call m,0f8f0h		;9e85
	ret p			;9e88
	ret po			;9e89
	ret nz			;9e8a
	add a,b			;9e8b
	cp 0fch			;9e8c
	ret p			;9e8e
	di			;9e8f
	ex (sp),hl		;9e90
	rst 0			;9e91
	add a,a			;9e92
	rlca			;9e93
	rrca			;9e94
	rrca			;9e95
	inc bc			;9e96
	dec b			;9e97
	rst 38h			;9e98
	inc bc			;9e99
	nop			;9e9a
	ld (bc),a		;9e9b
	rst 38h			;9e9c
	add a,d			;9e9d
	ccf			;9e9e
	rlca			;9e9f
	inc b			;9ea0
	nop			;9ea1
	dec b			;9ea2
	rst 38h			;9ea3
	add a,l			;9ea4
	rra			;9ea5
	inc bc			;9ea6
	nop			;9ea7
	ei			;9ea8
	ei			;9ea9
	inc bc			;9eaa
	rst 30h			;9eab
	ld (bc),a		;9eac
	rst 20h			;9ead
	adc a,e			;9eae
	ld h,e			;9eaf
	ccf			;9eb0
	rra			;9eb1
	rrca			;9eb2
	rlca			;9eb3
	inc bc			;9eb4
	ld bc,00000h		;9eb5
	dec sp			;9eb8
	dec de			;9eb9
	inc bc			;9eba
	rlca			;9ebb
	ld (bc),a		;9ebc
	rrca			;9ebd
	add a,c			;9ebe
	inc bc			;9ebf
	inc bc			;9ec0
	rra			;9ec1
	inc bc			;9ec2
	rrca			;9ec3
	ld (bc),a		;9ec4
	rlca			;9ec5
	ld a,(bc)		;9ec6
	rst 38h			;9ec7
	inc bc			;9ec8
	ld a,a			;9ec9
	inc bc			;9eca
	ccf			;9ecb
	inc bc			;9ecc
	rra			;9ecd
	inc bc			;9ece
	rrca			;9ecf
	add a,h			;9ed0
	ld b,005h		;9ed1
	inc bc			;9ed3
	inc bc			;9ed4
	inc bc			;9ed5
	rlca			;9ed6
	ld (bc),a		;9ed7
	rrca			;9ed8
	add a,c			;9ed9
	inc bc			;9eda
	inc bc			;9edb
	rrca			;9edc
	inc bc			;9edd
	rra			;9ede
	ld (bc),a		;9edf
	ccf			;9ee0
	ld (bc),a		;9ee1
	ret nz			;9ee2
	inc bc			;9ee3
	ret po			;9ee4
	inc bc			;9ee5
	ret p			;9ee6
	inc bc			;9ee7
	ret m			;9ee8
	inc bc			;9ee9
	call m,0fe02h		;9eea
	add a,e			;9eed
	add a,b			;9eee
	ret p			;9eef
	cp 004h			;9ef0
	rst 38h			;9ef2
	add a,(hl)		;9ef3
	ccf			;9ef4
	ld a,a			;9ef5
	ccf			;9ef6
	rra			;9ef7
	rst 28h			;9ef8
	rst 28h			;9ef9
	inc bc			;9efa
	rst 30h			;9efb
	inc bc			;9efc
	rst 38h			;9efd
	dec b			;9efe
	nop			;9eff
	add a,h			;9f00
	ret m			;9f01
	ret p			;9f02
	ex (sp),hl		;9f03
	rst 18h			;9f04
	inc b			;9f05
	rst 38h			;9f06
	add a,d			;9f07
	inc c			;9f08
	ld a,h			;9f09
	inc bc			;9f0a
	ret m			;9f0b
	inc b			;9f0c
	ret p			;9f0d
	dec b			;9f0e
	nop			;9f0f
	add a,d			;9f10
	cp 070h			;9f11
	inc b			;9f13
	rst 38h			;9f14
	add a,a			;9f15
	ret m			;9f16
	ret nz			;9f17
	nop			;9f18
	nop			;9f19
	rst 38h			;9f1a
	call m,005e0h		;9f1b
	nop			;9f1e
	add a,d			;9f1f
	ld a,a			;9f20
	ccf			;9f21
	inc bc			;9f22
	rra			;9f23
	add a,h			;9f24
	rrca			;9f25
	ld bc,00700h		;9f26
	rlca			;9f29
	nop			;9f2a
	ld (bc),a		;9f2b
	rst 38h			;9f2c
	add a,d			;9f2d
	rra			;9f2e
	inc bc			;9f2f
	inc b			;9f30
	nop			;9f31
	inc bc			;9f32
	inc bc			;9f33
	inc bc			;9f34
	ld bc,00002h		;9f35
	ld (bc),a		;9f38
	rst 38h			;9f39
	adc a,e			;9f3a
	ld a,a			;9f3b
	ccf			;9f3c
	rra			;9f3d
	rrca			;9f3e
	rlca			;9f3f
	inc bc			;9f40
	ld bc,00301h		;9f41
	rlca			;9f44
	rrca			;9f45
	inc bc			;9f46
	rlca			;9f47
	ld (bc),a		;9f48
	rra			;9f49
	inc bc			;9f4a
	rrca			;9f4b
	inc bc			;9f4c
	rlca			;9f4d
	sub c			;9f4e
	rst 38h			;9f4f
	nop			;9f50
	ret p			;9f51
	call m,00fc3h		;9f52
	ccf			;9f55
	call m,00fc3h		;9f56
	ccf			;9f59
	jr nc,$-62		;9f5a
	add a,b			;9f5c
	call m,0c0f0h		;9f5d
	ld b,0f8h		;9f60
	sub c			;9f62
	rst 38h			;9f63
	nop			;9f64
	inc bc			;9f65
	inc e			;9f66
	ret po			;9f67
	ret p			;9f68
	cp 0f8h			;9f69
	ret nz			;9f6b
	call m,0f8fch		;9f6c
	nop			;9f6f
	nop			;9f70
	rst 30h			;9f71
	rst 30h			;9f72
	di			;9f73
	inc b			;9f74
	rrca			;9f75
	add a,(hl)		;9f76
	rra			;9f77
	rrca			;9f78
	rla			;9f79
	dec sp			;9f7a
	dec a			;9f7b
	ld a,(hl)		;9f7c
	dec b			;9f7d
	rst 38h			;9f7e
	add a,(hl)		;9f7f
	ld a,a			;9f80
	rst 38h			;9f81
	ccf			;9f82
	rra			;9f83
	rlca			;9f84
	ld bc,00003h		;9f85
	sub b			;9f88
	rst 38h			;9f89
	rst 30h			;9f8a
	rst 30h			;9f8b
	ei			;9f8c
	ld sp,hl		;9f8d
	ret m			;9f8e
	inc a			;9f8f
	ld b,07fh		;9f90
	ccf			;9f92
	rra			;9f93
	rrca			;9f94
	rlca			;9f95
	inc bc			;9f96
	ld bc,00300h		;9f97
	rst 38h			;9f9a
	sub a			;9f9b
	ld a,a			;9f9c
	rrca			;9f9d
	ld bc,0f07fh		;9f9e
	nop			;9fa1
	rst 38h			;9fa2
	rst 38h			;9fa3
	nop			;9fa4
	rlca			;9fa5
	inc bc			;9fa6
	ld bc,07f00h		;9fa7
	ccf			;9faa
	rla			;9fab
	inc bc			;9fac
	ld de,08cf8h		;9fad
	ld b,0ffh		;9fb0
	rst 38h			;9fb2
	ld b,000h		;9fb3
	adc a,b			;9fb5
	add a,b			;9fb6
	adc a,b			;9fb7
	ret z			;9fb8
	call z,0f8eeh		;9fb9
	adc a,h			;9fbc
	ld b,003h		;9fbd
	ret p			;9fbf
	add a,d			;9fc0
	ret m			;9fc1
	call m,0ff03h		;9fc2
	add a,c			;9fc5
	ret m			;9fc6
	inc bc			;9fc7
	call m,0fe03h		;9fc8
	inc bc			;9fcb
	ld a,a			;9fcc
	inc bc			;9fcd
	ccf			;9fce
	inc bc			;9fcf
	rra			;9fd0
	inc bc			;9fd1
	rrca			;9fd2
	xor a			;9fd3
	ret m			;9fd4
	ret z			;9fd5
	adc a,b			;9fd6
	inc a			;9fd7
	call m,0efefh		;9fd8
	rst 8			;9fdb
	add a,a			;9fdc
	rlca			;9fdd
	rlca			;9fde
	inc bc			;9fdf
	inc bc			;9fe0
	nop			;9fe1
	nop			;9fe2
	ld a,a			;9fe3
	ccf			;9fe4
	rlca			;9fe5
	ccf			;9fe6
	rra			;9fe7
	rlca			;9fe8
	rst 38h			;9fe9
	nop			;9fea
	nop			;9feb
	rst 38h			;9fec
	ret po			;9fed
	call m,0e0f8h		;9fee
	ret p			;9ff1
	ret nz			;9ff2
	call m,0c3f0h		;9ff3
	rlca			;9ff6
	ccf			;9ff7
	call m,0fef0h		;9ff8
	ret po			;9ffb
	call m,0fce8h		;9ffc
	nop			;9fff

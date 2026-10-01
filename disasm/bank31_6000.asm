; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank31_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank31.bin

	org 06000h

	ld hl,00000h		;6000
	ld bc,00202h		;6003
	ld (bc),a		;6006
	ld (bc),a		;6007
	nop			;6008
	dec bc			;6009
	nop			;600a
	nop			;600b
	ld bc,00808h		;600c
	ld (bc),a		;600f
	ex af,af'		;6010
	nop			;6011
	ld a,(bc)		;6012
	nop			;6013
	nop			;6014
	ld bc,01010h		;6015
	ld (bc),a		;6018
	nop			;6019
	nop			;601a
	ld bc,01010h		;601b
	ld bc,00000h		;601e
	ld bc,01010h		;6021
	ld bc,00010h		;6024
	inc b			;6027
	nop			;6028
	nop			;6029
	ld bc,00101h		;602a
	ld bc,00001h		;602d
	ld b,000h		;6030
	nop			;6032
	ld bc,00808h		;6033
	ex af,af'		;6036
	ex af,af'		;6037
	nop			;6038
	ld bc,01010h		;6039
	ld (bc),a		;603c
	nop			;603d
	nop			;603e
	ld bc,01010h		;603f
	ld bc,00000h		;6042
	ld bc,01010h		;6045
	ld bc,00010h		;6048
	ld bc,00000h		;604b
	ld bc,01010h		;604e
	ld b,000h		;6051
	nop			;6053
	ld bc,00101h		;6054
	inc b			;6057
	ld bc,00100h		;6058
	add hl,bc		;605b
	ex af,af'		;605c
	ld (de),a		;605d
	ex af,af'		;605e
	nop			;605f
	inc bc			;6060
	nop			;6061
	nop			;6062
	ld bc,00404h		;6063
	ld b,004h		;6066
	nop			;6068
	inc b			;6069
	nop			;606a
	nop			;606b
	ld bc,00202h		;606c
	inc b			;606f
	ld (bc),a		;6070
	nop			;6071
	ld bc,00406h		;6072
	ld (bc),a		;6075
	ld b,000h		;6076
	ld (bc),a		;6078
	nop			;6079
	nop			;607a
	ld bc,01010h		;607b
	ld (bc),a		;607e
	nop			;607f
	nop			;6080
	ld bc,01010h		;6081
	ex af,af'		;6084
	nop			;6085
	nop			;6086
	ld bc,00101h		;6087
	inc bc			;608a
	ld bc,00100h		;608b
	dec b			;608e
	inc b			;608f
	add hl,bc		;6090
	dec b			;6091
	nop			;6092
	ld b,000h		;6093
	nop			;6095
	ld bc,01010h		;6096
	ld bc,00010h		;6099
	dec b			;609c
	nop			;609d
	nop			;609e
	ld bc,00808h		;609f
	rlca			;60a2
	ex af,af'		;60a3
	nop			;60a4
	dec b			;60a5
	nop			;60a6
	nop			;60a7
	ld bc,01414h		;60a8
	ld bc,00014h		;60ab
	ld bc,00004h		;60ae
	ld bc,00000h		;60b1
	ld bc,01010h		;60b4
	inc bc			;60b7
	nop			;60b8
	nop			;60b9
	ld bc,01010h		;60ba
	ld bc,00414h		;60bd
	inc bc			;60c0
	inc b			;60c1
	nop			;60c2
	ld bc,01010h		;60c3
	dec b			;60c6
	nop			;60c7
	nop			;60c8
	ld bc,00808h		;60c9
	ld a,(bc)		;60cc
	ex af,af'		;60cd
	nop			;60ce
	ld bc,0020ah		;60cf
	inc b			;60d2
	ld a,(bc)		;60d3
	nop			;60d4
	ld (bc),a		;60d5
	ld (bc),a		;60d6
	nop			;60d7
	ld bc,00406h		;60d8
	inc bc			;60db
	ld b,000h		;60dc
	inc bc			;60de
	nop			;60df
	nop			;60e0
	ld bc,00404h		;60e1
	ld bc,01014h		;60e4
	ld bc,00004h		;60e7
	ld bc,00000h		;60ea
	ld bc,01010h		;60ed
	ld bc,00000h		;60f0
	ld bc,01414h		;60f3
	ld bc,00014h		;60f6
	ld bc,00105h		;60f9
	inc b			;60fc
	dec b			;60fd
	nop			;60fe
	ld bc,01015h		;60ff
	ld (bc),a		;6102
	nop			;6103
	nop			;6104
	ld bc,01010h		;6105
	ld bc,00404h		;6108
	ld (bc),a		;610b
	inc b			;610c
	nop			;610d
	ld (bc),a		;610e
	nop			;610f
	nop			;6110
	ld bc,00a0ah		;6111
	ld (bc),a		;6114
	ld a,(bc)		;6115
	nop			;6116
	inc b			;6117
	ex af,af'		;6118
	nop			;6119
	ld bc,00000h		;611a
	ld bc,01010h		;611d
	ld bc,00101h		;6120
	ld bc,00405h		;6123
	ld bc,01015h		;6126
	ld bc,00005h		;6129
	ld bc,01015h		;612c
	ld bc,00005h		;612f
	ld bc,01015h		;6132
	ld bc,00015h		;6135
	ld bc,00005h		;6138
	ld bc,01015h		;613b
	ld (bc),a		;613e
	dec b			;613f
	nop			;6140
	ld (bc),a		;6141
	nop			;6142
	nop			;6143
	ld bc,00202h		;6144
	ld (bc),a		;6147
	ld (bc),a		;6148
	nop			;6149
	ld bc,0080ah		;614a
	ld bc,0000ah		;614d
	inc b			;6150
	ex af,af'		;6151
	nop			;6152
	ld bc,0020ah		;6153
	ld de,0000ah		;6156
	inc c			;6159
	nop			;615a
	nop			;615b
	ld bc,00404h		;615c
	inc bc			;615f
	inc b			;6160
	nop			;6161
	ex af,af'		;6162
	nop			;6163
	nop			;6164
	ld bc,00404h		;6165
	ld (bc),a		;6168
	inc b			;6169
	nop			;616a
	ex af,af'		;616b
	nop			;616c
	nop			;616d
	ld bc,01515h		;616e
	ld bc,00005h		;6171
	ld bc,00000h		;6174
	ld bc,01010h		;6177
	ld bc,00000h		;617a
	ld bc,01414h		;617d
	ld (bc),a		;6180
	inc b			;6181
	nop			;6182
	ld bc,01010h		;6183
	ld bc,00000h		;6186
	ld bc,01010h		;6189
	ld bc,00010h		;618c
	ld bc,00505h		;618f
	ld bc,01015h		;6192
	ld bc,00005h		;6195
	ld bc,01010h		;6198
	ld bc,00000h		;619b
	ld bc,01515h		;619e
	ld bc,00015h		;61a1
	ld (bc),a		;61a4
	dec b			;61a5
	nop			;61a6
	ld bc,01015h		;61a7
	ld bc,00005h		;61aa
	ld bc,01015h		;61ad
	ld bc,00015h		;61b0
	ld (bc),a		;61b3
	dec b			;61b4
	nop			;61b5
	inc b			;61b6
	nop			;61b7
	nop			;61b8
	ld bc,00808h		;61b9
	ld (bc),a		;61bc
	ex af,af'		;61bd
	nop			;61be
	ld bc,0020ah		;61bf
	inc c			;61c2
	ld a,(bc)		;61c3
	nop			;61c4
	ld (bc),a		;61c5
	ld (bc),a		;61c6
	nop			;61c7
	ld bc,01010h		;61c8
	ld bc,00010h		;61cb
	ld bc,00000h		;61ce
	ld bc,01010h		;61d1
	ld bc,00010h		;61d4
	ld bc,00000h		;61d7
	ld bc,01010h		;61da
	ex af,af'		;61dd
	nop			;61de
	nop			;61df
	ld bc,01111h		;61e0
	ld bc,00011h		;61e3
	ld (bc),a		;61e6
	ld bc,00100h		;61e7
	ld de,00110h		;61ea
	ld de,00200h		;61ed
	ld bc,00100h		;61f0
	dec b			;61f3
	inc b			;61f4
	inc bc			;61f5
	dec b			;61f6
	nop			;61f7
	ld bc,01014h		;61f8
	ld bc,00206h		;61fb
	ld bc,00006h		;61fe
	inc b			;6201
	ld (bc),a		;6202
	nop			;6203
	ld bc,0080ah		;6204
	inc bc			;6207
	ld a,(bc)		;6208
	nop			;6209
	ld bc,0101ah		;620a
	ld (bc),a		;620d
	ld a,(de)		;620e
	nop			;620f
	ld (bc),a		;6210
	ld a,(bc)		;6211
	nop			;6212
	ld bc,0101ah		;6213
	ld bc,0000ah		;6216
	dec b			;6219
	nop			;621a
	nop			;621b
	ld bc,01010h		;621c
	ld bc,00111h		;621f
	ld (bc),a		;6222
	ld bc,00100h		;6223
	ex af,af'		;6226
	ex af,af'		;6227
	ld (bc),a		;6228
	ex af,af'		;6229
	nop			;622a
	ld (bc),a		;622b
	nop			;622c
	nop			;622d
	ld bc,00808h		;622e
	inc b			;6231
	ex af,af'		;6232
	nop			;6233
	inc bc			;6234
	nop			;6235
	nop			;6236
	ld bc,00101h		;6237
	inc b			;623a
	ld bc,00100h		;623b
	ld de,00110h		;623e
	djnz l6243h		;6241
l6243h:
	ld bc,00000h		;6243
	ld bc,01515h		;6246
	ld (bc),a		;6249
	dec b			;624a
	nop			;624b
	ld bc,01015h		;624c
	ld bc,00000h		;624f
	ld bc,01010h		;6252
	ld bc,00414h		;6255
	ld bc,00105h		;6258
	ld bc,00005h		;625b
	ld bc,00000h		;625e
	ld bc,00505h		;6261
	ld bc,01015h		;6264
	ld bc,00015h		;6267
	ld bc,01015h		;626a
	ld bc,00015h		;626d
	ld bc,01015h		;6270
	ld bc,00015h		;6273
	ld bc,00005h		;6276
	ld bc,01014h		;6279
	ld (bc),a		;627c
	nop			;627d
	nop			;627e
	ld bc,00404h		;627f
	ld bc,00004h		;6282
	ld bc,00105h		;6285
	ld bc,00005h		;6288
	ld bc,01005h		;628b
	ld bc,00000h		;628e
	ld (bc),a		;6291
	djnz $+18		;6292
	ld bc,00010h		;6294
	ld (bc),a		;6297
	nop			;6298
	nop			;6299
	ld bc,00404h		;629a
	inc bc			;629d
	inc b			;629e
	nop			;629f
	inc b			;62a0
	nop			;62a1
	nop			;62a2
	ld bc,00a0ah		;62a3
	ld c,00ah		;62a6
	nop			;62a8
	inc b			;62a9
	ld (bc),a		;62aa
	nop			;62ab
	ld bc,00406h		;62ac
	ld bc,00006h		;62af
	dec b			;62b2
	nop			;62b3
	nop			;62b4
	ld bc,00202h		;62b5
	inc b			;62b8
	nop			;62b9
	nop			;62ba
	ld bc,01010h		;62bb
	ld bc,00010h		;62be
	ld bc,00404h		;62c1
	ld (bc),a		;62c4
	inc b			;62c5
	nop			;62c6
	ld bc,00105h		;62c7
	ld (bc),a		;62ca
	dec b			;62cb
	nop			;62cc
	ld bc,01011h		;62cd
	ld bc,00010h		;62d0
	inc bc			;62d3
	nop			;62d4
	nop			;62d5
	ld bc,00101h		;62d6
	inc bc			;62d9
	ld bc,00100h		;62da
	dec b			;62dd
	inc b			;62de
	ld bc,00005h		;62df
	ld (bc),a		;62e2
	inc b			;62e3
	nop			;62e4
	ld bc,00206h		;62e5
	inc bc			;62e8
	ld b,000h		;62e9
	dec b			;62eb
	ld (bc),a		;62ec
	nop			;62ed
	ld (bc),a		;62ee
	nop			;62ef
	nop			;62f0
	ld bc,01010h		;62f1
	ld bc,00010h		;62f4
	dec b			;62f7
	nop			;62f8
	nop			;62f9
	ld bc,00505h		;62fa
	ld bc,00001h		;62fd
	ld bc,00000h		;6300
	ld bc,01010h		;6303
	ld bc,00010h		;6306
	ld bc,00505h		;6309
	ld bc,01015h		;630c
	ld bc,00005h		;630f
	inc bc			;6312
	nop			;6313
	nop			;6314
	ld bc,00808h		;6315
	ld (bc),a		;6318
	ex af,af'		;6319
	nop			;631a
	ld bc,0020ah		;631b
	ld bc,0000ah		;631e
	ld (bc),a		;6321
	ld (bc),a		;6322
	nop			;6323
	ld bc,00406h		;6324
	ld bc,00006h		;6327
	ld (bc),a		;632a
	nop			;632b
	nop			;632c
	ld bc,00505h		;632d
	inc bc			;6330
	dec b			;6331
	nop			;6332
	ld bc,00000h		;6333
	ld bc,01010h		;6336
	ld (bc),a		;6339
	nop			;633a
	nop			;633b
	ld bc,01010h		;633c
	ld (bc),a		;633f
	nop			;6340
	nop			;6341
	ld bc,00505h		;6342
	ld bc,00005h		;6345
	ld (bc),a		;6348
	nop			;6349
	nop			;634a
	ld bc,00101h		;634b
	ex af,af'		;634e
	ld bc,00100h		;634f
	ex af,af'		;6352
	ex af,af'		;6353
	inc b			;6354
	ex af,af'		;6355
	nop			;6356
	ld bc,01010h		;6357
	ld bc,00010h		;635a
	ld bc,00000h		;635d
	ld bc,01010h		;6360
	ld bc,00010h		;6363
	inc c			;6366
	nop			;6367
	nop			;6368
	ld bc,00404h		;6369
	dec b			;636c
	inc b			;636d
	nop			;636e
	inc bc			;636f
	nop			;6370
	nop			;6371
	ld bc,00808h		;6372
	dec b			;6375
	ex af,af'		;6376
	nop			;6377
	ld bc,00101h		;6378
	ld (bc),a		;637b
	ld bc,00400h		;637c
	nop			;637f
	nop			;6380
	ld bc,00202h		;6381
	ld b,000h		;6384
	nop			;6386
	ld bc,01414h		;6387
	ld (bc),a		;638a
	inc b			;638b
	nop			;638c
	ld bc,01014h		;638d
	ld bc,00014h		;6390
	ld bc,00004h		;6393
	ld bc,01014h		;6396
	inc bc			;6399
	nop			;639a
	nop			;639b
	ld bc,00808h		;639c
	ex af,af'		;639f
	ex af,af'		;63a0
	nop			;63a1
	ld bc,00109h		;63a2
	ld bc,01019h		;63a5
	ld bc,00001h		;63a8
	ld bc,00809h		;63ab
	ld bc,01019h		;63ae
	ld bc,00008h		;63b1
	ld bc,00202h		;63b4
	inc bc			;63b7
	ld (bc),a		;63b8
	nop			;63b9
	ld bc,01012h		;63ba
	ld bc,00416h		;63bd
	ld bc,00006h		;63c0
	ld bc,01014h		;63c3
	ld bc,00010h		;63c6
	ld bc,00404h		;63c9
	ld bc,00004h		;63cc
	inc bc			;63cf
	nop			;63d0
	nop			;63d1
	ld bc,00101h		;63d2
	ld bc,00001h		;63d5
	ld bc,00809h		;63d8
	inc bc			;63db
	ex af,af'		;63dc
	nop			;63dd
	ld bc,01018h		;63de
	ld bc,00018h		;63e1
	ld (bc),a		;63e4
	ex af,af'		;63e5
	nop			;63e6
	ld bc,01212h		;63e7
	ld bc,00002h		;63ea
	ld bc,0080ah		;63ed
	ld (bc),a		;63f0
	ex af,af'		;63f1
	nop			;63f2
	ld bc,00202h		;63f3
	ld bc,00002h		;63f6
	ld bc,01818h		;63f9
	ld bc,00111h		;63fc
	ld bc,00405h		;63ff
	ld bc,01015h		;6402
	ld bc,00216h		;6405
	ld bc,00006h		;6408
	inc bc			;640b
	ld (bc),a		;640c
	nop			;640d
	ld bc,00406h		;640e
	ld bc,00006h		;6411
	ld bc,00002h		;6414
	ld bc,01012h		;6417
	ld bc,00002h		;641a
	ld bc,01010h		;641d
	ld bc,00212h		;6420
	inc bc			;6423
	ld (bc),a		;6424
	nop			;6425
	ld (bc),a		;6426
	nop			;6427
	nop			;6428
	ld bc,00202h		;6429
	ld bc,00002h		;642c
	ld bc,00404h		;642f
	ld bc,00000h		;6432
	ld bc,01010h		;6435
	ld bc,00404h		;6438
	ld bc,00004h		;643b
	ld (bc),a		;643e
	djnz l6451h		;643f
	inc bc			;6441
	nop			;6442
	nop			;6443
	ld bc,00101h		;6444
	ld bc,00405h		;6447
	ld (bc),a		;644a
	ld bc,00100h		;644b
	ex af,af'		;644e
	ex af,af'		;644f
	inc b			;6450
l6451h:
	ex af,af'		;6451
	nop			;6452
	ld (bc),a		;6453
	nop			;6454
	nop			;6455
	ld bc,01010h		;6456
	ld bc,00111h		;6459
	ld bc,00415h		;645c
	ld (bc),a		;645f
	dec d			;6460
	nop			;6461
	ld bc,00011h		;6462
	ld bc,00809h		;6465
	dec b			;6468
	add hl,bc		;6469
	nop			;646a
	ld bc,00001h		;646b
	ld bc,00000h		;646e
	ld bc,00404h		;6471
	ld (bc),a		;6474
	inc b			;6475
	nop			;6476
	ld bc,00206h		;6477
	inc b			;647a
	ld b,000h		;647b
	rlca			;647d
	ld (bc),a		;647e
	nop			;647f
	inc bc			;6480
	nop			;6481
	nop			;6482
	ld bc,00202h		;6483
	inc b			;6486
	nop			;6487
	nop			;6488
	ld bc,01010h		;6489
	inc b			;648c
	nop			;648d
	nop			;648e
	ld bc,00505h		;648f
	add hl,bc		;6492
	dec b			;6493
	nop			;6494
	inc b			;6495
	inc b			;6496
	nop			;6497
	ld (bc),a		;6498
	nop			;6499
	nop			;649a
	ld bc,00505h		;649b
	dec b			;649e
	dec b			;649f
	nop			;64a0
	ld bc,00001h		;64a1
	ld bc,00809h		;64a4
	ld bc,00009h		;64a7
	inc bc			;64aa
	ex af,af'		;64ab
	nop			;64ac
	ld bc,01018h		;64ad
	ld bc,0020ah		;64b0
	ld bc,0101ah		;64b3
	ld bc,0001ah		;64b6
	ld bc,0101ah		;64b9
	ld (bc),a		;64bc
	ld a,(de)		;64bd
	nop			;64be
	ld bc,00002h		;64bf
	dec b			;64c2
	nop			;64c3
	nop			;64c4
	ld bc,01212h		;64c5
	ld bc,00002h		;64c8
	ld (bc),a		;64cb
	nop			;64cc
	nop			;64cd
	ld bc,00202h		;64ce
	dec b			;64d1
	nop			;64d2
	nop			;64d3
	ld bc,01010h		;64d4
	ld bc,00010h		;64d7
	ld bc,00000h		;64da
	ld bc,01010h		;64dd
	ld bc,00000h		;64e0
	ld bc,01010h		;64e3
	ld bc,00000h		;64e6
	ld bc,01010h		;64e9
	ld bc,00010h		;64ec
	ld bc,00404h		;64ef
	ld (bc),a		;64f2
	inc b			;64f3
	nop			;64f4
	ld bc,00105h		;64f5
	inc bc			;64f8
	dec b			;64f9
	nop			;64fa
	inc b			;64fb
	ld bc,00100h		;64fc
	ex af,af'		;64ff
	ex af,af'		;6500
	dec c			;6501
	ex af,af'		;6502
	nop			;6503
	ld bc,01018h		;6504
	ld bc,00018h		;6507
	ld bc,00119h		;650a
	ld bc,00001h		;650d
	inc bc			;6510
	nop			;6511
	nop			;6512
	ld bc,01010h		;6513
	ld bc,00414h		;6516
	ld bc,00014h		;6519
	ld (bc),a		;651c
	inc b			;651d
	nop			;651e
	dec l			;651f
	nop			;6520
	nop			;6521
	ld bc,00808h		;6522
	inc b			;6525
	ex af,af'		;6526
	nop			;6527
	rlca			;6528
	nop			;6529
	nop			;652a
	ld bc,01010h		;652b
	ld bc,00010h		;652e
	dec de			;6531
	nop			;6532
	nop			;6533
	ld bc,00202h		;6534
	ld bc,00002h		;6537
	ld bc,0080ah		;653a
	ld (bc),a		;653d
	ld a,(bc)		;653e
	nop			;653f
	inc b			;6540
	nop			;6541
	nop			;6542
	ld bc,00808h		;6543
	dec b			;6546
	ex af,af'		;6547
	nop			;6548
	ld bc,0020ah		;6549
	inc bc			;654c
	ld (bc),a		;654d
	nop			;654e
	ld (bc),a		;654f
	nop			;6550
	nop			;6551
	ld bc,00404h		;6552
	inc b			;6555
	inc b			;6556
	nop			;6557
	ld bc,00105h		;6558
	ld bc,01015h		;655b
	dec b			;655e
	nop			;655f
	nop			;6560
	ld bc,00404h		;6561
	inc b			;6564
	inc b			;6565
	nop			;6566
	inc bc			;6567
	nop			;6568
	nop			;6569
	ld bc,00202h		;656a
	ld (bc),a		;656d
	ld (bc),a		;656e
	nop			;656f
	inc bc			;6570
	nop			;6571
	nop			;6572
	ld bc,00202h		;6573
	ld bc,00406h		;6576
	ld bc,00006h		;6579
	ld bc,00004h		;657c
	ld bc,00105h		;657f
	dec b			;6582
	dec b			;6583
	nop			;6584
	ld bc,00808h		;6585
	inc b			;6588
	ex af,af'		;6589
	nop			;658a
	ld bc,0020ah		;658b
	ld (bc),a		;658e
	ld a,(bc)		;658f
	nop			;6590
	ld (bc),a		;6591
	ld (bc),a		;6592
	nop			;6593
	ld bc,00406h		;6594
	dec b			;6597
	ld b,000h		;6598
	ld bc,00000h		;659a
	ld bc,01010h		;659d
	ld bc,00010h		;65a0
	inc bc			;65a3
	nop			;65a4
	nop			;65a5
	ld bc,00404h		;65a6
	ld bc,00004h		;65a9
	ld bc,00105h		;65ac
	ld (bc),a		;65af
	dec b			;65b0
	nop			;65b1
	ld bc,00000h		;65b2
	ld bc,00101h		;65b5
	ld (bc),a		;65b8
	ld bc,00100h		;65b9
	add hl,bc		;65bc
	ex af,af'		;65bd
	ld bc,00009h		;65be
	dec b			;65c1
	ex af,af'		;65c2
	nop			;65c3
	ld bc,00109h		;65c4
	inc b			;65c7
	add hl,bc		;65c8
	nop			;65c9
	ld (bc),a		;65ca
	ex af,af'		;65cb
	nop			;65cc
	ld bc,0020ah		;65cd
	ld (bc),a		;65d0
	ld a,(bc)		;65d1
	nop			;65d2
	ld (bc),a		;65d3
	ld (bc),a		;65d4
	nop			;65d5
	ld bc,00406h		;65d6
	ld (bc),a		;65d9
	ld b,000h		;65da
	ld bc,01016h		;65dc
	ld (bc),a		;65df
	ld d,000h		;65e0
	ld (bc),a		;65e2
	ld b,000h		;65e3
	ld bc,00004h		;65e5
	inc bc			;65e8
	nop			;65e9
	nop			;65ea
	ld bc,00404h		;65eb
	ld bc,01014h		;65ee
	ld (bc),a		;65f1
	inc b			;65f2
	nop			;65f3
	ld b,000h		;65f4
	nop			;65f6
	ld bc,00101h		;65f7
	rlca			;65fa
	ld bc,00100h		;65fb
	ex af,af'		;65fe
	ex af,af'		;65ff
	ld bc,00008h		;6600
	ld bc,0020ah		;6603
	ld bc,00002h		;6606
	ld bc,00406h		;6609
	inc bc			;660c
	ld b,000h		;660d
	inc b			;660f
	ld (bc),a		;6610
	nop			;6611
	inc bc			;6612
	nop			;6613
	nop			;6614
	ld bc,01212h		;6615
	ld bc,00012h		;6618
	dec b			;661b
	nop			;661c
	nop			;661d
	ld bc,01010h		;661e
	ld bc,00414h		;6621
	ld bc,00004h		;6624
	inc b			;6627
	nop			;6628
	nop			;6629
	ld bc,00404h		;662a
	ld bc,01014h		;662d
	ld (bc),a		;6630
	inc b			;6631
	nop			;6632
	ld b,000h		;6633
	nop			;6635
	ld bc,00202h		;6636
	ld bc,00404h		;6639
	ld bc,00105h		;663c
	ld (bc),a		;663f
	dec b			;6640
	nop			;6641
	rlca			;6642
	nop			;6643
	nop			;6644
	ld bc,00101h		;6645
	dec b			;6648
	ld bc,00100h		;6649
	add hl,bc		;664c
	ex af,af'		;664d
	ld c,008h		;664e
	nop			;6650
	ld bc,01018h		;6651
	ld bc,00010h		;6654
	ld (bc),a		;6657
	nop			;6658
	nop			;6659
	ld bc,01010h		;665a
	ld bc,00010h		;665d
	ld bc,00000h		;6660
	ld bc,00404h		;6663
	ld bc,01216h		;6666
	ld bc,00016h		;6669
	dec b			;666c
	nop			;666d
	nop			;666e
	ld bc,01010h		;666f
	ld bc,00212h		;6672
	ld bc,00002h		;6675
	inc bc			;6678
	nop			;6679
	nop			;667a
	ld bc,00404h		;667b
	ld bc,00004h		;667e
	ld bc,01014h		;6681
	ld bc,00010h		;6684
	inc bc			;6687
	nop			;6688
	nop			;6689
	ld bc,00404h		;668a
	ld bc,01014h		;668d
	ld bc,00115h		;6690
	dec b			;6693
	nop			;6694
	nop			;6695
	ld bc,00101h		;6696
	inc b			;6699
	ld bc,00100h		;669a
	add hl,bc		;669d
	ex af,af'		;669e
	dec b			;669f
	add hl,bc		;66a0
	nop			;66a1
	ld (bc),a		;66a2
	ld bc,00100h		;66a3
	nop			;66a6
	nop			;66a7
	ld bc,01010h		;66a8
	ld bc,00010h		;66ab
	ld bc,00000h		;66ae
	ld bc,01010h		;66b1
	ld bc,00000h		;66b4
	ld bc,01010h		;66b7
	ld bc,00414h		;66ba
	ld bc,00004h		;66bd
	ld bc,01014h		;66c0
	ld (bc),a		;66c3
	inc b			;66c4
	nop			;66c5
	ld bc,01014h		;66c6
	ld bc,00004h		;66c9
	ld bc,01010h		;66cc
	ld bc,00010h		;66cf
	ld bc,00000h		;66d2
	ld bc,01010h		;66d5
	dec b			;66d8
	nop			;66d9
	nop			;66da
	ld bc,0ffffh		;66db
	rst 38h			;66de
	rst 38h			;66df
	rst 38h			;66e0
	rst 38h			;66e1
	rst 38h			;66e2
	rst 38h			;66e3
	add hl,de		;66e4
	nop			;66e5
	nop			;66e6
	ld bc,00202h		;66e7
	ld (bc),a		;66ea
	ld (bc),a		;66eb
	nop			;66ec
	dec b			;66ed
	nop			;66ee
	nop			;66ef
	ld bc,01010h		;66f0
	ld (bc),a		;66f3
	nop			;66f4
	nop			;66f5
	ld bc,01010h		;66f6
	ld bc,00000h		;66f9
	ld bc,00404h		;66fc
	inc bc			;66ff
	inc b			;6700
	nop			;6701
	ld bc,00206h		;6702
	ld bc,00006h		;6705
	ld bc,00002h		;6708
	ld bc,00000h		;670b
	ld bc,01010h		;670e
	ld bc,00010h		;6711
	ld bc,00000h		;6714
	ld bc,01010h		;6717
	ld bc,00010h		;671a
	inc bc			;671d
	nop			;671e
	nop			;671f
	ld bc,00808h		;6720
	ld c,008h		;6723
	nop			;6725
	ld bc,00109h		;6726
	ld bc,00009h		;6729
	inc bc			;672c
	ld bc,00100h		;672d
	dec b			;6730
	inc b			;6731
	ld b,005h		;6732
	nop			;6734
	ld bc,01014h		;6735
	ld bc,00000h		;6738
	ld bc,01010h		;673b
	ld bc,00010h		;673e
	ld bc,00404h		;6741
	ld bc,00004h		;6744
	ld bc,00000h		;6747
	ld bc,00404h		;674a
	ld (bc),a		;674d
	inc b			;674e
	nop			;674f
	ld bc,00202h		;6750
	ld (bc),a		;6753
	ld (bc),a		;6754
	nop			;6755
	ld bc,0080ah		;6756
	ld bc,0000ah		;6759
	inc bc			;675c
	ex af,af'		;675d
	nop			;675e
	ld bc,00109h		;675f
	ld (bc),a		;6762
	add hl,bc		;6763
	nop			;6764
	ld (bc),a		;6765
	ld bc,00300h		;6766
	nop			;6769
	nop			;676a
	ld bc,00a0ah		;676b
	inc c			;676e
	ld a,(bc)		;676f
	nop			;6770
	dec bc			;6771
	ex af,af'		;6772
	nop			;6773
	inc b			;6774
	nop			;6775
	nop			;6776
	ld bc,00101h		;6777
	ld bc,00001h		;677a
	ld bc,00000h		;677d
	ld bc,01010h		;6780
	ld bc,00010h		;6783
	inc bc			;6786
	nop			;6787
	nop			;6788
	ld bc,01010h		;6789
	ld bc,00a1ah		;678c
	ld (bc),a		;678f
	ld a,(bc)		;6790
	nop			;6791
	ld bc,00000h		;6792
	ld bc,00101h		;6795
	inc bc			;6798
	ld bc,00100h		;6799
	add hl,bc		;679c
	ex af,af'		;679d
	dec b			;679e
	add hl,bc		;679f
	nop			;67a0
	ld bc,00008h		;67a1
	inc bc			;67a4
	nop			;67a5
	nop			;67a6
	ld bc,00101h		;67a7
	ld (bc),a		;67aa
	ld bc,00300h		;67ab
	nop			;67ae
	nop			;67af
	ld bc,00404h		;67b0
	ld bc,00206h		;67b3
	inc b			;67b6
	ld (bc),a		;67b7
	nop			;67b8
	inc bc			;67b9
	nop			;67ba
	nop			;67bb
	ld bc,00505h		;67bc
	dec b			;67bf
	dec b			;67c0
	nop			;67c1
	add hl,bc		;67c2
	nop			;67c3
	nop			;67c4
	ld bc,00404h		;67c5
	ld bc,00105h		;67c8
	ld bc,00001h		;67cb
	dec b			;67ce
	nop			;67cf
	nop			;67d0
	ld bc,00404h		;67d1
	ld (bc),a		;67d4
	inc b			;67d5
	nop			;67d6
	inc bc			;67d7
	nop			;67d8
	nop			;67d9
	ld bc,00404h		;67da
	ld (bc),a		;67dd
	inc b			;67de
	nop			;67df
	inc b			;67e0
	nop			;67e1
	nop			;67e2
	ld bc,00202h		;67e3
	ld bc,00002h		;67e6
	inc b			;67e9
	nop			;67ea
	nop			;67eb
	ld bc,00404h		;67ec
	ld (bc),a		;67ef
	inc b			;67f0
	nop			;67f1
	inc b			;67f2
	nop			;67f3
	nop			;67f4
	ld bc,00202h		;67f5
	ld (bc),a		;67f8
	ld (bc),a		;67f9
	nop			;67fa
	dec b			;67fb
	nop			;67fc
	nop			;67fd
	ld bc,00202h		;67fe
	ld bc,00002h		;6801
	inc bc			;6804
	nop			;6805
	nop			;6806
	ld bc,00202h		;6807
	ld bc,0080ah		;680a
	ld (bc),a		;680d
	ld a,(bc)		;680e
	nop			;680f
	ld bc,00008h		;6810
	ld bc,00000h		;6813
	ld bc,01010h		;6816
	ld bc,00010h		;6819
	ld bc,00808h		;681c
	ld bc,01010h		;681f
	ld bc,00010h		;6822
	ld bc,00000h		;6825
	ld bc,01212h		;6828
	ld bc,00012h		;682b
	ld bc,00002h		;682e
	ld bc,01010h		;6831
	ld bc,00000h		;6834
	ld bc,01010h		;6837
	ld bc,00010h		;683a
	ld bc,00808h		;683d
	ld bc,00109h		;6840
	ex af,af'		;6843
	add hl,bc		;6844
	nop			;6845
	dec b			;6846
	ld bc,00100h		;6847
	dec b			;684a
	inc b			;684b
	inc bc			;684c
	nop			;684d
	nop			;684e
	ld bc,00404h		;684f
	ld bc,00004h		;6852
	ld bc,02024h		;6855
	inc bc			;6858
	inc b			;6859
	nop			;685a
	ld bc,02024h		;685b
	ld bc,00004h		;685e
	ld bc,00206h		;6861
	inc bc			;6864
	ld b,000h		;6865
	rlca			;6867
	ld (bc),a		;6868
	nop			;6869
	ld bc,01010h		;686a
	ld (bc),a		;686d
	nop			;686e
	nop			;686f
	ld bc,00404h		;6870
	ld bc,00105h		;6873
	ld bc,01015h		;6876
	ld bc,00014h		;6879
	ld bc,00010h		;687c
	ld (bc),a		;687f
	nop			;6880
	nop			;6881
	ld bc,00505h		;6882
	ld bc,01015h		;6885
	ld bc,00015h		;6888
	ld bc,00004h		;688b
	inc bc			;688e
	nop			;688f
	nop			;6890
	ld bc,01010h		;6891
	ld bc,00515h		;6894
	ld (bc),a		;6897
	dec b			;6898
	nop			;6899
	ld bc,00001h		;689a
	inc bc			;689d
	nop			;689e
	nop			;689f
	ld bc,00101h		;68a0
	inc b			;68a3
	ld bc,00100h		;68a4
	add hl,bc		;68a7
	ex af,af'		;68a8
	rlca			;68a9
	ex af,af'		;68aa
	nop			;68ab
	ld (bc),a		;68ac
	nop			;68ad
	nop			;68ae
	ld bc,00202h		;68af
	ld (bc),a		;68b2
	ld (bc),a		;68b3
	nop			;68b4
	inc bc			;68b5
	nop			;68b6
	nop			;68b7
	ld bc,00202h		;68b8
	ld b,002h		;68bb
	nop			;68bd
	dec bc			;68be
	nop			;68bf
	nop			;68c0
	ld bc,00202h		;68c1
	ld (bc),a		;68c4
	ld (bc),a		;68c5
	nop			;68c6
	inc bc			;68c7
	nop			;68c8
	nop			;68c9
	ld bc,00202h		;68ca
	ld (bc),a		;68cd
	ld (bc),a		;68ce
	nop			;68cf
	inc bc			;68d0
	nop			;68d1
	nop			;68d2
	ld bc,00202h		;68d3
	ld (bc),a		;68d6
	ld (bc),a		;68d7
	nop			;68d8
	ld bc,01010h		;68d9
	ld (bc),a		;68dc
	djnz l68dfh		;68dd
l68dfh:
	rrca			;68df
	nop			;68e0
	nop			;68e1
	ld bc,00606h		;68e2
	ld bc,00006h		;68e5
	ld bc,00004h		;68e8
	dec b			;68eb
	nop			;68ec
	nop			;68ed
	ld bc,00202h		;68ee
	rlca			;68f1
	ld (bc),a		;68f2
	nop			;68f3
	ld bc,00000h		;68f4
	ld bc,00404h		;68f7
	inc bc			;68fa
	inc b			;68fb
	nop			;68fc
	ld bc,00105h		;68fd
	ld (bc),a		;6900
	dec b			;6901
	nop			;6902
	ld bc,00001h		;6903
	dec b			;6906
	nop			;6907
	nop			;6908
	ld bc,00808h		;6909
	ld bc,00008h		;690c
	ld bc,0020ah		;690f
	dec b			;6912
	nop			;6913
	nop			;6914
	ld bc,00404h		;6915
	inc b			;6918
	inc b			;6919
	nop			;691a
	dec b			;691b
	nop			;691c
	nop			;691d
	ld bc,00404h		;691e
	inc b			;6921
	inc b			;6922
	nop			;6923
	ld bc,00105h		;6924
	ld bc,01015h		;6927
	ld bc,00015h		;692a
	ld bc,00005h		;692d
	inc b			;6930
	nop			;6931
	nop			;6932
	ld bc,00101h		;6933
	ld (bc),a		;6936
	ld bc,00100h		;6937
	ex af,af'		;693a
	ex af,af'		;693b
	inc b			;693c
	ex af,af'		;693d
	nop			;693e
	ld b,000h		;693f
	nop			;6941
	ld bc,00101h		;6942
	dec b			;6945
	ld bc,00d00h		;6946
	nop			;6949
	nop			;694a
	ld bc,00808h		;694b
	inc b			;694e
	ex af,af'		;694f
	nop			;6950
	ld bc,00000h		;6951
	ld bc,01111h		;6954
	ld (bc),a		;6957
	djnz l695ah		;6958
l695ah:
	ld bc,00000h		;695a
	ld bc,01010h		;695d
	ld (bc),a		;6960
	djnz l6963h		;6961
l6963h:
	ld bc,00808h		;6963
	inc c			;6966
	ex af,af'		;6967
	nop			;6968
	ld bc,01018h		;6969
	ld bc,00018h		;696c
	ld bc,00008h		;696f
	ld bc,02028h		;6972
	inc bc			;6975
	nop			;6976
	nop			;6977
	ld bc,01010h		;6978
	inc bc			;697b
	nop			;697c
	nop			;697d
	ld bc,01818h		;697e
	ld bc,00008h		;6981
	ld bc,00101h		;6984
	ld (bc),a		;6987
	ld bc,00100h		;6988
	add hl,bc		;698b
	ex af,af'		;698c
	ld bc,00009h		;698d
	inc bc			;6990
	ex af,af'		;6991
	nop			;6992
	ld a,(bc)		;6993
	nop			;6994
	nop			;6995
	ld bc,00505h		;6996
	ld (bc),a		;6999
	dec b			;699a
	nop			;699b
	dec b			;699c
	nop			;699d
	nop			;699e
	ld bc,00404h		;699f
	inc b			;69a2
	inc b			;69a3
	nop			;69a4
	dec b			;69a5
	nop			;69a6
	nop			;69a7
	ld bc,00808h		;69a8
	inc bc			;69ab
	ex af,af'		;69ac
	nop			;69ad
	ld bc,00101h		;69ae
	dec b			;69b1
	nop			;69b2
	nop			;69b3
	ld bc,00101h		;69b4
	inc b			;69b7
	ld bc,00500h		;69b8
	nop			;69bb
	nop			;69bc
	ld bc,00404h		;69bd
	ld bc,00004h		;69c0
	ld bc,00105h		;69c3
	ld bc,00004h		;69c6
	inc bc			;69c9
	nop			;69ca
	nop			;69cb
	ld bc,00404h		;69cc
	inc b			;69cf
	inc b			;69d0
	nop			;69d1
	ld bc,00206h		;69d2
	ld (bc),a		;69d5
	ld (bc),a		;69d6
	nop			;69d7
	rlca			;69d8
	nop			;69d9
	nop			;69da
	ld bc,00202h		;69db
	ld b,002h		;69de
	nop			;69e0
	ld b,000h		;69e1
	nop			;69e3
	ld bc,00202h		;69e4
	dec b			;69e7
	ld (bc),a		;69e8
	nop			;69e9
	ld (bc),a		;69ea
	nop			;69eb
	nop			;69ec
	ld bc,00808h		;69ed
	ld bc,00008h		;69f0
	dec b			;69f3
	nop			;69f4
	nop			;69f5
	ld bc,00808h		;69f6
	ld bc,01018h		;69f9
	ld bc,00018h		;69fc
	dec b			;69ff
	nop			;6a00
	nop			;6a01
	ld bc,00808h		;6a02
	ld bc,00008h		;6a05
	ld bc,01018h		;6a08
	ld bc,00008h		;6a0b
	ld bc,00000h		;6a0e
	ld bc,00101h		;6a11
	ld (bc),a		;6a14
	ld bc,00100h		;6a15
	nop			;6a18
	nop			;6a19
	ld bc,01010h		;6a1a
	ld bc,00010h		;6a1d
	dec b			;6a20
	nop			;6a21
	nop			;6a22
	ld bc,00101h		;6a23
	ld (bc),a		;6a26
	ld bc,00600h		;6a27
	nop			;6a2a
	nop			;6a2b
	ld bc,00202h		;6a2c
	ld (bc),a		;6a2f
	ld (bc),a		;6a30
	nop			;6a31
	ld bc,01010h		;6a32
	ld (bc),a		;6a35
	djnz l6a38h		;6a36
l6a38h:
	ld bc,00808h		;6a38
	ld (bc),a		;6a3b
	ex af,af'		;6a3c
	nop			;6a3d
	ld b,000h		;6a3e
	nop			;6a40
	ld bc,00101h		;6a41
	ld bc,01011h		;6a44
	ld (bc),a		;6a47
	ld de,00100h		;6a48
	ld bc,00100h		;6a4b
	inc b			;6a4e
	inc b			;6a4f
	ld bc,00004h		;6a50
	ld bc,00206h		;6a53
	ex af,af'		;6a56
	ld b,000h		;6a57
	ld bc,01010h		;6a59
	ld bc,00010h		;6a5c
	inc bc			;6a5f
	nop			;6a60
	nop			;6a61
	ld bc,00404h		;6a62
	ld (bc),a		;6a65
	inc b			;6a66
	nop			;6a67
	ld bc,00206h		;6a68
	inc b			;6a6b
	ld b,000h		;6a6c
	rlca			;6a6e
	ld (bc),a		;6a6f
	nop			;6a70
	ld bc,00404h		;6a71
	ld (bc),a		;6a74
	inc b			;6a75
	nop			;6a76
	ld bc,00105h		;6a77
	ex af,af'		;6a7a
	dec b			;6a7b
	nop			;6a7c
	ld (bc),a		;6a7d
	ld bc,00100h		;6a7e
	add hl,bc		;6a81
	ex af,af'		;6a82
	inc bc			;6a83
	add hl,bc		;6a84
	nop			;6a85
	ld bc,00008h		;6a86
	ld bc,01018h		;6a89
	ld bc,00018h		;6a8c
	inc b			;6a8f
	ex af,af'		;6a90
	nop			;6a91
	ld bc,01018h		;6a92
	ld bc,00018h		;6a95
	ld (bc),a		;6a98
	nop			;6a99
	nop			;6a9a
	ld bc,01010h		;6a9b
	inc bc			;6a9e
	nop			;6a9f
	nop			;6aa0
	ld bc,01010h		;6aa1
	ld bc,00010h		;6aa4
	ld bc,00404h		;6aa7
	ld bc,01014h		;6aaa
	ld bc,00010h		;6aad
	ld bc,00000h		;6ab0
	ld bc,01010h		;6ab3
	ld bc,00010h		;6ab6
	ld bc,00404h		;6ab9
	ld bc,01010h		;6abc
	ld (bc),a		;6abf
	nop			;6ac0
	nop			;6ac1
	ld bc,00404h		;6ac2
	ld bc,00004h		;6ac5
	ld bc,01010h		;6ac8
	ld bc,00010h		;6acb
	ld bc,00404h		;6ace
	ld bc,00004h		;6ad1
	ld bc,01014h		;6ad4
	inc b			;6ad7
	nop			;6ad8
	nop			;6ad9
	ld bc,00404h		;6ada
	inc bc			;6add
	inc b			;6ade
	nop			;6adf
	ld bc,00000h		;6ae0
	ld bc,02020h		;6ae3
	ld bc,00a2ah		;6ae6
	ld bc,0002ah		;6ae9
	ld (bc),a		;6aec
	ld a,(bc)		;6aed
	nop			;6aee
	ld bc,00000h		;6aef
	ld bc,01010h		;6af2
	ld bc,00404h		;6af5
	ld bc,00004h		;6af8
	ld bc,01111h		;6afb
	ld bc,00000h		;6afe
	ld bc,01010h		;6b01
	ld bc,00000h		;6b04
	ld bc,01010h		;6b07
	ld bc,00000h		;6b0a
	ld bc,01010h		;6b0d
	ld bc,00000h		;6b10
	ld bc,01010h		;6b13
	ld bc,00202h		;6b16
	ld (bc),a		;6b19
	ld (bc),a		;6b1a
	nop			;6b1b
	ld bc,0080ah		;6b1c
	ld bc,0000ah		;6b1f
	ld bc,00008h		;6b22
	ld bc,01111h		;6b25
	ld (bc),a		;6b28
	ld bc,00100h		;6b29
	dec d			;6b2c
	inc d			;6b2d
	ld bc,00005h		;6b2e
	ld bc,01015h		;6b31
	ld bc,00005h		;6b34
	ld bc,01015h		;6b37
	ld bc,00005h		;6b3a
	ld (bc),a		;6b3d
	dec d			;6b3e
	djnz l6b42h		;6b3f
	dec d			;6b41
l6b42h:
	nop			;6b42
	inc bc			;6b43
	dec b			;6b44
	nop			;6b45
	ld bc,00001h		;6b46
	ld (bc),a		;6b49
	nop			;6b4a
	nop			;6b4b
	ld bc,00808h		;6b4c
	rlca			;6b4f
	ex af,af'		;6b50
	nop			;6b51
	ld bc,0020ah		;6b52
	inc bc			;6b55
	ld a,(bc)		;6b56
	nop			;6b57
	ld bc,0202ah		;6b58
	ld bc,0002ah		;6b5b
	inc bc			;6b5e
	nop			;6b5f
	nop			;6b60
	ld bc,01010h		;6b61
	ld (bc),a		;6b64
	djnz l6b67h		;6b65
l6b67h:
	ld bc,00000h		;6b67
	ld bc,01414h		;6b6a
	ld bc,00014h		;6b6d
	ld bc,00004h		;6b70
	ld bc,01014h		;6b73
	ld bc,00014h		;6b76
	dec b			;6b79
	nop			;6b7a
	nop			;6b7b
	ld bc,02424h		;6b7c
	ld bc,00024h		;6b7f
	ld (bc),a		;6b82
	inc b			;6b83
	nop			;6b84
	ld bc,01010h		;6b85
	ld bc,00000h		;6b88
	ld bc,01414h		;6b8b
	ld bc,00004h		;6b8e
	ld bc,01014h		;6b91
	ld bc,00004h		;6b94
	ld bc,00000h		;6b97
	ld bc,01000h		;6b9a
	ld (bc),a		;6b9d
	nop			;6b9e
	nop			;6b9f
	ld bc,01010h		;6ba0
	ld bc,00000h		;6ba3
	ld bc,01010h		;6ba6
	ld bc,00414h		;6ba9
	ld bc,01014h		;6bac
	ld bc,00014h		;6baf
	ld bc,00000h		;6bb2
	ld bc,01000h		;6bb5
	ld bc,00000h		;6bb8
	ld bc,00808h		;6bbb
	dec b			;6bbe
	ex af,af'		;6bbf
	nop			;6bc0
	ld bc,01018h		;6bc1
	ld (bc),a		;6bc4
	ex af,af'		;6bc5
	nop			;6bc6
	ld bc,01018h		;6bc7
	ld bc,00008h		;6bca
	ld bc,01018h		;6bcd
	ld bc,00000h		;6bd0
	ld bc,01414h		;6bd3
	ld (bc),a		;6bd6
	inc b			;6bd7
	nop			;6bd8
	ld bc,01000h		;6bd9
	ld bc,01010h		;6bdc
	ld bc,00010h		;6bdf
	ld bc,00202h		;6be2
	ld (bc),a		;6be5
	ld (bc),a		;6be6
	nop			;6be7
	inc b			;6be8
	nop			;6be9
	nop			;6bea
	ld bc,00202h		;6beb
	inc b			;6bee
	ld (bc),a		;6bef
	nop			;6bf0
	inc b			;6bf1
	nop			;6bf2
	nop			;6bf3
	ld bc,00808h		;6bf4
	ld bc,0020ah		;6bf7
	inc bc			;6bfa
	ld a,(bc)		;6bfb
	nop			;6bfc
	inc bc			;6bfd
	nop			;6bfe
	nop			;6bff
	ld bc,00808h		;6c00
	ld (bc),a		;6c03
	ex af,af'		;6c04
	nop			;6c05
	inc bc			;6c06
	nop			;6c07
	nop			;6c08
	ld bc,01010h		;6c09
	ld bc,00414h		;6c0c
	ld (bc),a		;6c0f
	inc b			;6c10
	nop			;6c11
	ld bc,01014h		;6c12
	ld bc,00000h		;6c15
	ld bc,01010h		;6c18
	ld bc,00414h		;6c1b
	ld bc,00004h		;6c1e
	ld bc,01014h		;6c21
	ld bc,00004h		;6c24
	ld bc,01014h		;6c27
	ld bc,00010h		;6c2a
	ld bc,00000h		;6c2d
	ld bc,01414h		;6c30
	ld (bc),a		;6c33
	inc b			;6c34
	nop			;6c35
	ld bc,01014h		;6c36
	ld bc,00014h		;6c39
	inc bc			;6c3c
	nop			;6c3d
	nop			;6c3e
	ld bc,00808h		;6c3f
	ld a,(bc)		;6c42
	ex af,af'		;6c43
	nop			;6c44
	ld bc,02028h		;6c45
	ld bc,00028h		;6c48
	ld (bc),a		;6c4b
	nop			;6c4c
	nop			;6c4d
	ld bc,01010h		;6c4e
	ld bc,00111h		;6c51
	ld bc,00405h		;6c54
	ld bc,01011h		;6c57
	ld bc,00001h		;6c5a
	ld bc,01415h		;6c5d
	ld (bc),a		;6c60
	dec b			;6c61
	nop			;6c62
	ld bc,01011h		;6c63
	ld bc,00809h		;6c66
	ld (bc),a		;6c69
	add hl,bc		;6c6a
	nop			;6c6b
	ld bc,00001h		;6c6c
	ld bc,00000h		;6c6f
	ld bc,01818h		;6c72
	ld bc,00018h		;6c75
	ld (bc),a		;6c78
	ex af,af'		;6c79
	nop			;6c7a
	ld (bc),a		;6c7b
	nop			;6c7c
	nop			;6c7d
	ld bc,00505h		;6c7e
	ld bc,00005h		;6c81
	ld bc,01015h		;6c84
	ld (bc),a		;6c87
	dec b			;6c88
	nop			;6c89
	ld bc,01015h		;6c8a
	ld bc,00015h		;6c8d
	add hl,bc		;6c90
	dec b			;6c91
	nop			;6c92
	ld bc,00004h		;6c93
	ld bc,00206h		;6c96
	inc bc			;6c99
	ld b,000h		;6c9a
	ld bc,01012h		;6c9c
	ld bc,00010h		;6c9f
	inc bc			;6ca2
	nop			;6ca3
	nop			;6ca4
	ld bc,00202h		;6ca5
	dec b			;6ca8
	ld (bc),a		;6ca9
	nop			;6caa
	ld bc,0ffffh		;6cab
	rst 38h			;6cae
	rst 38h			;6caf
	rst 38h			;6cb0
	rst 38h			;6cb1
	rst 38h			;6cb2
	rst 38h			;6cb3
	ld d,000h		;6cb4
	nop			;6cb6
	ld bc,00202h		;6cb7
	ld (bc),a		;6cba
	ld (bc),a		;6cbb
	nop			;6cbc
	ld bc,0080ah		;6cbd
	dec c			;6cc0
	ld a,(bc)		;6cc1
	nop			;6cc2
	dec bc			;6cc3
	nop			;6cc4
	nop			;6cc5
	ld bc,01010h		;6cc6
	ld bc,00010h		;6cc9
	dec b			;6ccc
	nop			;6ccd
	nop			;6cce
	ld bc,00808h		;6ccf
	ex af,af'		;6cd2
	ex af,af'		;6cd3
	nop			;6cd4
	ld bc,00109h		;6cd5
	ld (bc),a		;6cd8
	add hl,bc		;6cd9
	nop			;6cda
	inc bc			;6cdb
	ld bc,00100h		;6cdc
	dec b			;6cdf
	inc b			;6ce0
	inc c			;6ce1
	dec b			;6ce2
	nop			;6ce3
	inc c			;6ce4
	inc b			;6ce5
	nop			;6ce6
	ld bc,00206h		;6ce7
	inc bc			;6cea
	ld b,000h		;6ceb
	dec c			;6ced
	ld (bc),a		;6cee
	nop			;6cef
	inc b			;6cf0
	nop			;6cf1
	nop			;6cf2
	ld bc,01010h		;6cf3
	ld bc,00010h		;6cf6
	dec b			;6cf9
	nop			;6cfa
	nop			;6cfb
	ld bc,00808h		;6cfc
	ld b,008h		;6cff
	nop			;6d01
	rlca			;6d02
	nop			;6d03
	nop			;6d04
	ld bc,00404h		;6d05
	dec bc			;6d08
	inc b			;6d09
	nop			;6d0a
	inc d			;6d0b
	nop			;6d0c
	nop			;6d0d
	ld bc,01010h		;6d0e
	inc b			;6d11
	nop			;6d12
	nop			;6d13
	ld bc,00808h		;6d14
	rlca			;6d17
	ex af,af'		;6d18
	nop			;6d19
	ld bc,00109h		;6d1a
	rlca			;6d1d
	add hl,bc		;6d1e
	nop			;6d1f
	djnz l6d23h		;6d20
	nop			;6d22
l6d23h:
	inc c			;6d23
	nop			;6d24
	nop			;6d25
	ld bc,01010h		;6d26
	ld bc,00010h		;6d29
	ex af,af'		;6d2c
	nop			;6d2d
	nop			;6d2e
	ld bc,00a0ah		;6d2f
	ld b,00ah		;6d32
	nop			;6d34
	dec b			;6d35
	ex af,af'		;6d36
	nop			;6d37
	ld bc,00109h		;6d38
	ld bc,00009h		;6d3b
	inc bc			;6d3e
	ld bc,00100h		;6d3f
	dec b			;6d42
	inc b			;6d43
	ld bc,00005h		;6d44
	ld bc,00004h		;6d47
	dec b			;6d4a
	nop			;6d4b
	nop			;6d4c
	ld bc,01212h		;6d4d
	ld (bc),a		;6d50
	ld (de),a		;6d51
	nop			;6d52
	add hl,bc		;6d53
	ld (bc),a		;6d54
	nop			;6d55
	ld b,000h		;6d56
	nop			;6d58
	ld bc,00808h		;6d59
	inc b			;6d5c
	ex af,af'		;6d5d
	nop			;6d5e
	ld bc,00109h		;6d5f
	ld (bc),a		;6d62
	add hl,bc		;6d63
	nop			;6d64
	ld bc,00008h		;6d65
	ld bc,0020ah		;6d68
	ld (bc),a		;6d6b
	ld (bc),a		;6d6c
	nop			;6d6d
	ld bc,00406h		;6d6e
	rrca			;6d71
	ld b,000h		;6d72
	ld bc,00002h		;6d74
	inc bc			;6d77
	nop			;6d78
	nop			;6d79
	ld bc,00101h		;6d7a
	inc bc			;6d7d
	ld bc,00100h		;6d7e
	add hl,bc		;6d81
	ex af,af'		;6d82
	ex af,af'		;6d83
	add hl,bc		;6d84
	nop			;6d85
	ld b,008h		;6d86
	nop			;6d88
	ld b,000h		;6d89
	nop			;6d8b
	ld bc,00202h		;6d8c
	ld bc,00002h		;6d8f
	ld bc,00000h		;6d92
	ld bc,01010h		;6d95
	ld bc,00515h		;6d98
	ld bc,00005h		;6d9b
	ld bc,01015h		;6d9e
	ld bc,00809h		;6da1
	ld bc,01019h		;6da4
	ld bc,00008h		;6da7
	ld bc,01010h		;6daa
	ld bc,00000h		;6dad
	ld bc,01515h		;6db0
	ld bc,00005h		;6db3
	ld bc,01015h		;6db6
	ld (bc),a		;6db9
	dec b			;6dba
	nop			;6dbb
	ld bc,01005h		;6dbc
	dec b			;6dbf
	nop			;6dc0
	nop			;6dc1
	ld bc,00606h		;6dc2
	rlca			;6dc5
	ld b,000h		;6dc6
	ld bc,00002h		;6dc8
	dec bc			;6dcb
	nop			;6dcc
	nop			;6dcd
	ld bc,00404h		;6dce
	ld bc,00206h		;6dd1
	ld bc,00006h		;6dd4
	rlca			;6dd7
	nop			;6dd8
	nop			;6dd9
	ld bc,01010h		;6dda
	ld (bc),a		;6ddd
	djnz l6de0h		;6dde
l6de0h:
	inc b			;6de0
	nop			;6de1
	nop			;6de2
	ld bc,00404h		;6de3
	inc bc			;6de6
	inc b			;6de7
	nop			;6de8
	dec b			;6de9
	nop			;6dea
	nop			;6deb
	ld bc,00808h		;6dec
	ld (bc),a		;6def
	ex af,af'		;6df0
	nop			;6df1
	ld bc,0020ah		;6df2
	ld a,(bc)		;6df5
	ld a,(bc)		;6df6
	nop			;6df7
	ld b,000h		;6df8
	nop			;6dfa
	ld bc,00101h		;6dfb
	dec b			;6dfe
	ld bc,00700h		;6dff
	nop			;6e02
	nop			;6e03
	ld bc,00808h		;6e04
	ld (bc),a		;6e07
	ex af,af'		;6e08
	nop			;6e09
	ld bc,00101h		;6e0a
	ld bc,00001h		;6e0d
	ld bc,01010h		;6e10
	ld bc,00010h		;6e13
	ld (bc),a		;6e16
	nop			;6e17
	nop			;6e18
	ld bc,00101h		;6e19
	ld bc,00001h		;6e1c
	ld bc,00405h		;6e1f
	ld (bc),a		;6e22
	dec b			;6e23
	nop			;6e24
	inc b			;6e25
	nop			;6e26
	nop			;6e27
	ld bc,00101h		;6e28
	ld (bc),a		;6e2b
	ld bc,00100h		;6e2c
	nop			;6e2f
	nop			;6e30
	ld bc,00808h		;6e31
	ld (bc),a		;6e34
	ex af,af'		;6e35
	nop			;6e36
	ld bc,00202h		;6e37
	ld (bc),a		;6e3a
	ld (bc),a		;6e3b
	nop			;6e3c
	ld bc,01010h		;6e3d
	ld bc,00010h		;6e40
	ld bc,00000h		;6e43
	ld bc,01010h		;6e46
	ld bc,00000h		;6e49
	ld bc,01010h		;6e4c
	ld bc,00010h		;6e4f
	ld bc,00202h		;6e52
	ld bc,01010h		;6e55
	ld bc,00000h		;6e58
	ld bc,01010h		;6e5b
	ld bc,00404h		;6e5e
	ld bc,00004h		;6e61
	ld bc,01216h		;6e64
	ld bc,00012h		;6e67
	ld bc,00000h		;6e6a
	ld bc,01010h		;6e6d
	ld bc,00010h		;6e70
	ld b,000h		;6e73
	nop			;6e75
	ld bc,00404h		;6e76
	inc b			;6e79
	inc b			;6e7a
	nop			;6e7b
	dec b			;6e7c
	nop			;6e7d
	nop			;6e7e
	ld bc,00202h		;6e7f
	ld bc,00002h		;6e82
	add hl,bc		;6e85
	nop			;6e86
	nop			;6e87
	ld bc,00101h		;6e88
	ld bc,00001h		;6e8b
	inc d			;6e8e
	nop			;6e8f
	nop			;6e90
	ld bc,00404h		;6e91
	dec b			;6e94
	inc b			;6e95
	nop			;6e96
	ld b,000h		;6e97
	nop			;6e99
	ld bc,00808h		;6e9a
	dec bc			;6e9d
	ex af,af'		;6e9e
	nop			;6e9f
	ex af,af'		;6ea0
	nop			;6ea1
	nop			;6ea2
	ld bc,00202h		;6ea3
	ld (bc),a		;6ea6
	ld (bc),a		;6ea7
	nop			;6ea8
	ex af,af'		;6ea9
	nop			;6eaa
	nop			;6eab
	ld bc,00202h		;6eac
	ex af,af'		;6eaf
	nop			;6eb0
	nop			;6eb1
	ld bc,00808h		;6eb2
	add hl,bc		;6eb5
	ex af,af'		;6eb6
	nop			;6eb7
	ld c,000h		;6eb8
	nop			;6eba
	ld bc,00101h		;6ebb
	ld (bc),a		;6ebe
	ld bc,00800h		;6ebf
	nop			;6ec2
	nop			;6ec3
	ld bc,00101h		;6ec4
	ld bc,00001h		;6ec7
	ld de,00000h		;6eca
	ld bc,00404h		;6ecd
	inc bc			;6ed0
	inc b			;6ed1
	nop			;6ed2
	ld c,000h		;6ed3
	nop			;6ed5
	ld bc,00404h		;6ed6
	ld (bc),a		;6ed9
	inc b			;6eda
	nop			;6edb
	rrca			;6edc
	nop			;6edd
	nop			;6ede
	ld bc,00404h		;6edf
	ld (bc),a		;6ee2
	inc b			;6ee3
	nop			;6ee4
	dec bc			;6ee5
	nop			;6ee6
	nop			;6ee7
	ld bc,00404h		;6ee8
	inc bc			;6eeb
	inc b			;6eec
	nop			;6eed
	ld a,(bc)		;6eee
	nop			;6eef
	nop			;6ef0
	ld bc,00404h		;6ef1
	ld bc,00004h		;6ef4
	ld b,000h		;6ef7
	nop			;6ef9
	ld bc,00808h		;6efa
	rrca			;6efd
	ex af,af'		;6efe
	nop			;6eff
	dec b			;6f00
	nop			;6f01
	nop			;6f02
	ld bc,00404h		;6f03
	ld bc,00004h		;6f06
	inc bc			;6f09
	nop			;6f0a
	nop			;6f0b
	ld bc,00404h		;6f0c
	ld (bc),a		;6f0f
	inc b			;6f10
	nop			;6f11
	rlca			;6f12
	nop			;6f13
	nop			;6f14
	ld bc,00404h		;6f15
	rlca			;6f18
	nop			;6f19
	nop			;6f1a
	ld bc,00404h		;6f1b
	ld bc,00004h		;6f1e
	dec b			;6f21
	nop			;6f22
	nop			;6f23
	ld bc,00404h		;6f24
	ld (bc),a		;6f27
	inc b			;6f28
	nop			;6f29
	add hl,bc		;6f2a
	nop			;6f2b
	nop			;6f2c
	ld bc,00808h		;6f2d
	ld bc,00008h		;6f30
	ld bc,00109h		;6f33
	rlca			;6f36
	ld bc,00100h		;6f37
	ex af,af'		;6f3a
	ex af,af'		;6f3b
	ld b,008h		;6f3c
	nop			;6f3e
	ld b,000h		;6f3f
	nop			;6f41
	ld bc,00101h		;6f42
	ld bc,00001h		;6f45
	rlca			;6f48
	nop			;6f49
	nop			;6f4a
	ld bc,00a0ah		;6f4b
	ld b,000h		;6f4e
	nop			;6f50
	ld bc,02020h		;6f51
	ld bc,00222h		;6f54
	ld bc,00002h		;6f57
	dec b			;6f5a
	nop			;6f5b
	nop			;6f5c
	ld bc,02222h		;6f5d
	dec b			;6f60
	nop			;6f61
	nop			;6f62
	ld bc,00202h		;6f63
	ld bc,00002h		;6f66
	inc b			;6f69
	nop			;6f6a
	nop			;6f6b
	ld bc,00202h		;6f6c
	dec c			;6f6f
	nop			;6f70
	nop			;6f71
	ld bc,00202h		;6f72
	ld bc,01012h		;6f75
	ld bc,00010h		;6f78
	ld bc,00000h		;6f7b
	ld bc,01010h		;6f7e
	ld bc,00000h		;6f81
	ld bc,01010h		;6f84
	inc bc			;6f87
	nop			;6f88
	nop			;6f89
	ld bc,00404h		;6f8a
	ld bc,00004h		;6f8d
	ld b,000h		;6f90
	nop			;6f92
	ld bc,00101h		;6f93
	ld bc,00001h		;6f96
	dec b			;6f99
	nop			;6f9a
	nop			;6f9b
	ld bc,00101h		;6f9c
	ld bc,00001h		;6f9f
	ld (bc),a		;6fa2
	nop			;6fa3
	nop			;6fa4
	ld bc,01010h		;6fa5
	ld bc,00202h		;6fa8
	ld bc,01012h		;6fab
	ld bc,00000h		;6fae
	ld bc,01010h		;6fb1
	dec bc			;6fb4
	nop			;6fb5
	nop			;6fb6
	ld bc,01212h		;6fb7
	ld bc,00012h		;6fba
	ld bc,00002h		;6fbd
	rlca			;6fc0
	nop			;6fc1
	nop			;6fc2
	ld bc,01010h		;6fc3
	inc bc			;6fc6
	nop			;6fc7
	nop			;6fc8
	ld bc,00202h		;6fc9
	ld bc,00002h		;6fcc
	dec b			;6fcf
	nop			;6fd0
	nop			;6fd1
	ld bc,01010h		;6fd2
	ld (bc),a		;6fd5
	djnz l6fd8h		;6fd6
l6fd8h:
	inc bc			;6fd8
	nop			;6fd9
	nop			;6fda
	ld bc,00202h		;6fdb
	ld (bc),a		;6fde
	ld (bc),a		;6fdf
	nop			;6fe0
	rlca			;6fe1
	nop			;6fe2
	nop			;6fe3
	ld bc,00101h		;6fe4
	ld (bc),a		;6fe7
	ld bc,00100h		;6fe8
	dec b			;6feb
	inc b			;6fec
	dec b			;6fed
	dec b			;6fee
	nop			;6fef
	ld a,(bc)		;6ff0
	inc b			;6ff1
	nop			;6ff2
	ld bc,02024h		;6ff3
	ld bc,00020h		;6ff6
	rlca			;6ff9
	nop			;6ffa
	nop			;6ffb
	ld bc,00808h		;6ffc
	ld bc,00008h		;6fff
	ld b,000h		;7002
	nop			;7004
	ld bc,00202h		;7005
	ld bc,00406h		;7008
	ld bc,00006h		;700b
	dec c			;700e
	nop			;700f
	nop			;7010
	ld bc,00202h		;7011
	ld bc,00002h		;7014
	ld bc,01012h		;7017
	ld bc,00010h		;701a
	ld bc,00000h		;701d
	ld bc,01010h		;7020
	ld bc,00212h		;7023
	ld bc,00002h		;7026
	ld bc,01012h		;7029
	ld bc,00012h		;702c
	ld bc,00002h		;702f
	ld bc,01012h		;7032
	ld bc,00012h		;7035
	ld (bc),a		;7038
	ld (bc),a		;7039
	nop			;703a
	ld bc,0181ah		;703b
	ld bc,0000ah		;703e
	dec b			;7041
	nop			;7042
	nop			;7043
	ld bc,00808h		;7044
	ld bc,00008h		;7047
	ld bc,00101h		;704a
	inc bc			;704d
	ld bc,00100h		;704e
	nop			;7051
	nop			;7052
	ld bc,00a0ah		;7053
	inc bc			;7056
	ld a,(bc)		;7057
	nop			;7058
	ld b,002h		;7059
	nop			;705b
	ld bc,00000h		;705c
	ld bc,00101h		;705f
	ld (bc),a		;7062
	ld bc,00100h		;7063
	dec b			;7066
	inc b			;7067
	ld (bc),a		;7068
	dec b			;7069
	nop			;706a
	ld a,(bc)		;706b
	nop			;706c
	nop			;706d
	ld bc,00101h		;706e
	ld a,(bc)		;7071
	ld bc,00100h		;7072
	dec b			;7075
	inc b			;7076
	ld bc,01015h		;7077
	ld bc,00014h		;707a
	ld bc,00004h		;707d
	ld bc,01014h		;7080
	ld bc,00014h		;7083
	ld bc,00004h		;7086
	ld bc,01014h		;7089
	ld bc,00004h		;708c
	ld bc,01014h		;708f
	ld bc,00014h		;7092
	ld bc,00004h		;7095
	ld bc,01216h		;7098
	ld bc,00016h		;709b
	ex af,af'		;709e
	nop			;709f
	nop			;70a0
	ld bc,00808h		;70a1
	ld bc,00008h		;70a4
	dec b			;70a7
	nop			;70a8
	nop			;70a9
	ld bc,00101h		;70aa
	ld b,001h		;70ad
	nop			;70af
	ex af,af'		;70b0
	nop			;70b1
	nop			;70b2
	ld bc,01010h		;70b3
	ld bc,00010h		;70b6
	ld (bc),a		;70b9
	nop			;70ba
	nop			;70bb
	ld bc,01010h		;70bc
	ld bc,00010h		;70bf
	ld (bc),a		;70c2
	nop			;70c3
	nop			;70c4
	ld bc,01010h		;70c5
	ld (bc),a		;70c8
	nop			;70c9
	nop			;70ca
	ld bc,00202h		;70cb
	dec b			;70ce
	ld (bc),a		;70cf
	nop			;70d0
	ld bc,01012h		;70d1
	ld bc,00012h		;70d4
	ld bc,00002h		;70d7
	ld bc,00000h		;70da
	ld bc,01010h		;70dd
	ld bc,00010h		;70e0
	ld bc,00202h		;70e3
	ld b,002h		;70e6
	nop			;70e8
	dec b			;70e9
	nop			;70ea
	nop			;70eb
	ld bc,00101h		;70ec
	inc c			;70ef
	ld bc,00100h		;70f0
	add hl,bc		;70f3
	ex af,af'		;70f4
	ld bc,00009h		;70f5
	dec b			;70f8
	ex af,af'		;70f9
	nop			;70fa
	ld bc,01018h		;70fb
	ld bc,00018h		;70fe
	ld bc,00008h		;7101
	ld bc,01010h		;7104
	ld bc,00000h		;7107
	ld bc,01010h		;710a
	ld bc,00404h		;710d
	ld bc,01014h		;7110
	ld bc,00004h		;7113
	ld (bc),a		;7116
	inc d			;7117
	djnz l711bh		;7118
	inc d			;711a
l711bh:
	nop			;711b
	inc bc			;711c
	inc b			;711d
	nop			;711e
	ld bc,00206h		;711f
	ld bc,00006h		;7122
	inc b			;7125
	nop			;7126
	nop			;7127
	ld bc,00808h		;7128
	dec b			;712b
	ex af,af'		;712c
	nop			;712d
	inc b			;712e
	nop			;712f
	nop			;7130
	ld bc,00101h		;7131
	dec b			;7134
	ld bc,00100h		;7135
	ex af,af'		;7138
	ex af,af'		;7139
	rlca			;713a
	ex af,af'		;713b
	nop			;713c
	dec b			;713d
	nop			;713e
	nop			;713f
	ld bc,00202h		;7140
	ld (bc),a		;7143
	ld (bc),a		;7144
	nop			;7145
	ld b,000h		;7146
	nop			;7148
	ld bc,00404h		;7149
	ld bc,00004h		;714c
	rlca			;714f
	nop			;7150
	nop			;7151
	ld bc,00202h		;7152
	ld (bc),a		;7155
	ld (bc),a		;7156
	nop			;7157
	ld b,000h		;7158
	nop			;715a
	ld bc,00202h		;715b
	ld bc,00002h		;715e
	inc bc			;7161
	nop			;7162
	nop			;7163
	ld bc,00101h		;7164
	inc bc			;7167
	ld bc,00100h		;7168
	nop			;716b
	nop			;716c
	ld bc,01010h		;716d
	ld bc,00010h		;7170
	ld bc,00000h		;7173
	ld bc,01010h		;7176
	ld bc,00010h		;7179
	ld bc,00000h		;717c
	ld bc,01414h		;717f
	ld (bc),a		;7182
	inc b			;7183
	nop			;7184
	ld bc,01014h		;7185
	inc c			;7188
	nop			;7189
	nop			;718a
	ld bc,00808h		;718b
	ld bc,00008h		;718e
	ld (bc),a		;7191
	nop			;7192
	nop			;7193
	ld bc,00404h		;7194
	inc b			;7197
	inc b			;7198
	nop			;7199
	dec b			;719a
	nop			;719b
	nop			;719c
	ld bc,02424h		;719d
	ld bc,00024h		;71a0
	ld a,(de)		;71a3
	nop			;71a4
	nop			;71a5
	ld bc,02222h		;71a6
	ld bc,00022h		;71a9
	ld a,(bc)		;71ac
	nop			;71ad
	nop			;71ae
	ld bc,00202h		;71af
	ld (bc),a		;71b2
	ld (bc),a		;71b3
	nop			;71b4
	ex af,af'		;71b5
	nop			;71b6
	nop			;71b7
	ld bc,01010h		;71b8
	ld bc,00010h		;71bb
	ld bc,00000h		;71be
	ld bc,01010h		;71c1
	ld bc,00010h		;71c4
	ld bc,00000h		;71c7
	ld bc,01010h		;71ca
	ld bc,00010h		;71cd
	ld bc,00000h		;71d0
	ld bc,01010h		;71d3
	ld (bc),a		;71d6
	djnz l71d9h		;71d7
l71d9h:
	ld bc,00404h		;71d9
	ld (bc),a		;71dc
	inc b			;71dd
	nop			;71de
	ld bc,01010h		;71df
	ld bc,00010h		;71e2
	ld bc,00000h		;71e5
	ld bc,01010h		;71e8
	ld bc,00010h		;71eb
	ld bc,00202h		;71ee
	ld bc,00002h		;71f1
	ld bc,01012h		;71f4
	ld bc,00012h		;71f7
	ld bc,00002h		;71fa
	ld bc,01012h		;71fd
	ld bc,00012h		;7200
	ld bc,00002h		;7203
	ex af,af'		;7206
	nop			;7207
	nop			;7208
	ld bc,00101h		;7209
	ld c,001h		;720c
	nop			;720e
	rrca			;720f
	nop			;7210
	nop			;7211
	ld bc,00808h		;7212
	rlca			;7215
	ex af,af'		;7216
	nop			;7217
	dec sp			;7218
	nop			;7219
	nop			;721a
	ld bc,0ffffh		;721b
	rst 38h			;721e
	rst 38h			;721f
	rst 38h			;7220
	rst 38h			;7221
	rst 38h			;7222
	rst 38h			;7223
	rst 38h			;7224
	rst 38h			;7225
	rst 38h			;7226
	rst 38h			;7227
	rst 38h			;7228
	rst 38h			;7229
	rst 38h			;722a
	rst 38h			;722b
	rst 38h			;722c
	rst 38h			;722d
	rst 38h			;722e
	rst 38h			;722f
	rst 38h			;7230
	rst 38h			;7231
	rst 38h			;7232
	rst 38h			;7233
	rst 38h			;7234
	rst 38h			;7235
	rst 38h			;7236
	rst 38h			;7237
	rst 38h			;7238
	rst 38h			;7239
	rst 38h			;723a
	rst 38h			;723b
	rst 38h			;723c
	rst 38h			;723d
	rst 38h			;723e
	rst 38h			;723f
	rst 38h			;7240
	rst 38h			;7241
	rst 38h			;7242
	rst 38h			;7243
	rst 38h			;7244
	rst 38h			;7245
	rst 38h			;7246
	rst 38h			;7247
	rst 38h			;7248
	rst 38h			;7249
	rst 38h			;724a
	rst 38h			;724b
	rst 38h			;724c
	rst 38h			;724d
	rst 38h			;724e
	rst 38h			;724f
	rst 38h			;7250
	rst 38h			;7251
	rst 38h			;7252
	rst 38h			;7253
	rst 38h			;7254
	rst 38h			;7255
	rst 38h			;7256
	rst 38h			;7257
	rst 38h			;7258
	rst 38h			;7259
	rst 38h			;725a
	rst 38h			;725b
	rst 38h			;725c
	rst 38h			;725d
	rst 38h			;725e
	rst 38h			;725f
	rst 38h			;7260
	rst 38h			;7261
	rst 38h			;7262
	rst 38h			;7263
	rst 38h			;7264
	rst 38h			;7265
	rst 38h			;7266
	rst 38h			;7267
	rst 38h			;7268
	rst 38h			;7269
	rst 38h			;726a
	rst 38h			;726b
	rst 38h			;726c
	rst 38h			;726d
	rst 38h			;726e
	rst 38h			;726f
	rst 38h			;7270
	rst 38h			;7271
	rst 38h			;7272
	rst 38h			;7273
	rst 38h			;7274
	rst 38h			;7275
	rst 38h			;7276
	rst 38h			;7277
	rst 38h			;7278
	rst 38h			;7279
	rst 38h			;727a
	rst 38h			;727b
	rst 38h			;727c
	rst 38h			;727d
	rst 38h			;727e
	rst 38h			;727f
	rst 38h			;7280
	rst 38h			;7281
	rst 38h			;7282
	rst 38h			;7283
	rst 38h			;7284
	rst 38h			;7285
	rst 38h			;7286
	rst 38h			;7287
	rst 38h			;7288
	rst 38h			;7289
	rst 38h			;728a
	rst 38h			;728b
	rst 38h			;728c
	rst 38h			;728d
	rst 38h			;728e
	rst 38h			;728f
	rst 38h			;7290
	rst 38h			;7291
	rst 38h			;7292
	rst 38h			;7293
	rst 38h			;7294
	rst 38h			;7295
	rst 38h			;7296
	rst 38h			;7297
	rst 38h			;7298
	rst 38h			;7299
	rst 38h			;729a
	rst 38h			;729b
	rst 38h			;729c
	rst 38h			;729d
	rst 38h			;729e
	rst 38h			;729f
	rst 38h			;72a0
	rst 38h			;72a1
	rst 38h			;72a2
	rst 38h			;72a3
	rst 38h			;72a4
	rst 38h			;72a5
	rst 38h			;72a6
	rst 38h			;72a7
	rst 38h			;72a8
	rst 38h			;72a9
	rst 38h			;72aa
	rst 38h			;72ab
	rst 38h			;72ac
	rst 38h			;72ad
	rst 38h			;72ae
	rst 38h			;72af
	rst 38h			;72b0
	rst 38h			;72b1
	rst 38h			;72b2
	rst 38h			;72b3
	rst 38h			;72b4
	rst 38h			;72b5
	rst 38h			;72b6
	rst 38h			;72b7
	rst 38h			;72b8
	rst 38h			;72b9
	rst 38h			;72ba
	rst 38h			;72bb
	rst 38h			;72bc
	rst 38h			;72bd
	rst 38h			;72be
	rst 38h			;72bf
	rst 38h			;72c0
	rst 38h			;72c1
	rst 38h			;72c2
	rst 38h			;72c3
	rst 38h			;72c4
	rst 38h			;72c5
	rst 38h			;72c6
	rst 38h			;72c7
	rst 38h			;72c8
	rst 38h			;72c9
	rst 38h			;72ca
	rst 38h			;72cb
	rst 38h			;72cc
	rst 38h			;72cd
	rst 38h			;72ce
	rst 38h			;72cf
	rst 38h			;72d0
	rst 38h			;72d1
	rst 38h			;72d2
	rst 38h			;72d3
	rst 38h			;72d4
	rst 38h			;72d5
	rst 38h			;72d6
	rst 38h			;72d7
	rst 38h			;72d8
	rst 38h			;72d9
	rst 38h			;72da
	rst 38h			;72db
	rst 38h			;72dc
	rst 38h			;72dd
	rst 38h			;72de
	rst 38h			;72df
	rst 38h			;72e0
	rst 38h			;72e1
	rst 38h			;72e2
	rst 38h			;72e3
	rst 38h			;72e4
	rst 38h			;72e5
	rst 38h			;72e6
	rst 38h			;72e7
	rst 38h			;72e8
	rst 38h			;72e9
	rst 38h			;72ea
	rst 38h			;72eb
	rst 38h			;72ec
	rst 38h			;72ed
	rst 38h			;72ee
	rst 38h			;72ef
	rst 38h			;72f0
	rst 38h			;72f1
	rst 38h			;72f2
	rst 38h			;72f3
	rst 38h			;72f4
	rst 38h			;72f5
	rst 38h			;72f6
	rst 38h			;72f7
	rst 38h			;72f8
	rst 38h			;72f9
	rst 38h			;72fa
	rst 38h			;72fb
	rst 38h			;72fc
	rst 38h			;72fd
	rst 38h			;72fe
	rst 38h			;72ff
	rst 38h			;7300
	rst 38h			;7301
	rst 38h			;7302
	rst 38h			;7303
	rst 38h			;7304
	rst 38h			;7305
	rst 38h			;7306
	rst 38h			;7307
	rst 38h			;7308
	rst 38h			;7309
	rst 38h			;730a
	rst 38h			;730b
	rst 38h			;730c
	rst 38h			;730d
	rst 38h			;730e
	rst 38h			;730f
	rst 38h			;7310
	rst 38h			;7311
	rst 38h			;7312
	rst 38h			;7313
	rst 38h			;7314
	rst 38h			;7315
	rst 38h			;7316
	rst 38h			;7317
	rst 38h			;7318
	rst 38h			;7319
	rst 38h			;731a
	rst 38h			;731b
	rst 38h			;731c
	rst 38h			;731d
	rst 38h			;731e
	rst 38h			;731f
	rst 38h			;7320
	rst 38h			;7321
	rst 38h			;7322
	rst 38h			;7323
	rst 38h			;7324
	rst 38h			;7325
	rst 38h			;7326
	rst 38h			;7327
	rst 38h			;7328
	rst 38h			;7329
	rst 38h			;732a
	rst 38h			;732b
	rst 38h			;732c
	rst 38h			;732d
	rst 38h			;732e
	rst 38h			;732f
	rst 38h			;7330
	rst 38h			;7331
	rst 38h			;7332
	rst 38h			;7333
	rst 38h			;7334
	rst 38h			;7335
	rst 38h			;7336
	rst 38h			;7337
	rst 38h			;7338
	rst 38h			;7339
	rst 38h			;733a
	rst 38h			;733b
	rst 38h			;733c
	rst 38h			;733d
	rst 38h			;733e
	rst 38h			;733f
	rst 38h			;7340
	rst 38h			;7341
	rst 38h			;7342
	rst 38h			;7343
	rst 38h			;7344
	rst 38h			;7345
	rst 38h			;7346
	rst 38h			;7347
	rst 38h			;7348
	rst 38h			;7349
	rst 38h			;734a
	rst 38h			;734b
	rst 38h			;734c
	rst 38h			;734d
	rst 38h			;734e
	rst 38h			;734f
	rst 38h			;7350
	rst 38h			;7351
	rst 38h			;7352
	rst 38h			;7353
	rst 38h			;7354
	rst 38h			;7355
	rst 38h			;7356
	rst 38h			;7357
	rst 38h			;7358
	rst 38h			;7359
	rst 38h			;735a
	rst 38h			;735b
	rst 38h			;735c
	rst 38h			;735d
	rst 38h			;735e
	rst 38h			;735f
	rst 38h			;7360
	rst 38h			;7361
	rst 38h			;7362
	rst 38h			;7363
	rst 38h			;7364
	rst 38h			;7365
	rst 38h			;7366
	rst 38h			;7367
	rst 38h			;7368
	rst 38h			;7369
	rst 38h			;736a
	rst 38h			;736b
	rst 38h			;736c
	rst 38h			;736d
	rst 38h			;736e
	rst 38h			;736f
	rst 38h			;7370
	rst 38h			;7371
	rst 38h			;7372
	rst 38h			;7373
	rst 38h			;7374
	rst 38h			;7375
	rst 38h			;7376
	rst 38h			;7377
	rst 38h			;7378
	rst 38h			;7379
	rst 38h			;737a
	rst 38h			;737b
	rst 38h			;737c
	rst 38h			;737d
	rst 38h			;737e
	rst 38h			;737f
	rst 38h			;7380
	rst 38h			;7381
	rst 38h			;7382
	rst 38h			;7383
	rst 38h			;7384
	rst 38h			;7385
	rst 38h			;7386
	rst 38h			;7387
	rst 38h			;7388
	rst 38h			;7389
	rst 38h			;738a
	rst 38h			;738b
	rst 38h			;738c
	rst 38h			;738d
	rst 38h			;738e
	rst 38h			;738f
	rst 38h			;7390
	rst 38h			;7391
	rst 38h			;7392
	rst 38h			;7393
	rst 38h			;7394
	rst 38h			;7395
	rst 38h			;7396
	rst 38h			;7397
	rst 38h			;7398
	rst 38h			;7399
	rst 38h			;739a
	rst 38h			;739b
	rst 38h			;739c
	rst 38h			;739d
	rst 38h			;739e
	rst 38h			;739f
	rst 38h			;73a0
	rst 38h			;73a1
	rst 38h			;73a2
	rst 38h			;73a3
	rst 38h			;73a4
	rst 38h			;73a5
	rst 38h			;73a6
	rst 38h			;73a7
	rst 38h			;73a8
	rst 38h			;73a9
	rst 38h			;73aa
	rst 38h			;73ab
	rst 38h			;73ac
	rst 38h			;73ad
	rst 38h			;73ae
	rst 38h			;73af
	rst 38h			;73b0
	rst 38h			;73b1
	rst 38h			;73b2
	rst 38h			;73b3
	rst 38h			;73b4
	rst 38h			;73b5
	rst 38h			;73b6
	rst 38h			;73b7
	rst 38h			;73b8
	rst 38h			;73b9
	rst 38h			;73ba
	rst 38h			;73bb
	rst 38h			;73bc
	rst 38h			;73bd
	rst 38h			;73be
	rst 38h			;73bf
	rst 38h			;73c0
	rst 38h			;73c1
	rst 38h			;73c2
	rst 38h			;73c3
	rst 38h			;73c4
	rst 38h			;73c5
	rst 38h			;73c6
	rst 38h			;73c7
	rst 38h			;73c8
	rst 38h			;73c9
	rst 38h			;73ca
	rst 38h			;73cb
	rst 38h			;73cc
	rst 38h			;73cd
	rst 38h			;73ce
	rst 38h			;73cf
	rst 38h			;73d0
	rst 38h			;73d1
	rst 38h			;73d2
	rst 38h			;73d3
	rst 38h			;73d4
	rst 38h			;73d5
	rst 38h			;73d6
	rst 38h			;73d7
	rst 38h			;73d8
	rst 38h			;73d9
	rst 38h			;73da
	rst 38h			;73db
	rst 38h			;73dc
	rst 38h			;73dd
	rst 38h			;73de
	rst 38h			;73df
	rst 38h			;73e0
	rst 38h			;73e1
	rst 38h			;73e2
	rst 38h			;73e3
	rst 38h			;73e4
	rst 38h			;73e5
	rst 38h			;73e6
	rst 38h			;73e7
	rst 38h			;73e8
	rst 38h			;73e9
	rst 38h			;73ea
	rst 38h			;73eb
	rst 38h			;73ec
	rst 38h			;73ed
	rst 38h			;73ee
	rst 38h			;73ef
	rst 38h			;73f0
	rst 38h			;73f1
	rst 38h			;73f2
	rst 38h			;73f3
	rst 38h			;73f4
	rst 38h			;73f5
	rst 38h			;73f6
	rst 38h			;73f7
	rst 38h			;73f8
	rst 38h			;73f9
	rst 38h			;73fa
	rst 38h			;73fb
	rst 38h			;73fc
	rst 38h			;73fd
	rst 38h			;73fe
	rst 38h			;73ff
	rst 38h			;7400
	rst 38h			;7401
	rst 38h			;7402
	rst 38h			;7403
	rst 38h			;7404
	rst 38h			;7405
	rst 38h			;7406
	rst 38h			;7407
	rst 38h			;7408
	rst 38h			;7409
	rst 38h			;740a
	rst 38h			;740b
	rst 38h			;740c
	rst 38h			;740d
	rst 38h			;740e
	rst 38h			;740f
	rst 38h			;7410
	rst 38h			;7411
	rst 38h			;7412
	rst 38h			;7413
	rst 38h			;7414
	rst 38h			;7415
	rst 38h			;7416
	rst 38h			;7417
	rst 38h			;7418
	rst 38h			;7419
	rst 38h			;741a
	rst 38h			;741b
	rst 38h			;741c
	rst 38h			;741d
	rst 38h			;741e
	rst 38h			;741f
	rst 38h			;7420
	rst 38h			;7421
	rst 38h			;7422
	rst 38h			;7423
	rst 38h			;7424
	rst 38h			;7425
	rst 38h			;7426
	rst 38h			;7427
	rst 38h			;7428
	rst 38h			;7429
	rst 38h			;742a
	rst 38h			;742b
	rst 38h			;742c
	rst 38h			;742d
	rst 38h			;742e
	rst 38h			;742f
	rst 38h			;7430
	rst 38h			;7431
	rst 38h			;7432
	rst 38h			;7433
	rst 38h			;7434
	rst 38h			;7435
	rst 38h			;7436
	rst 38h			;7437
	rst 38h			;7438
	rst 38h			;7439
	rst 38h			;743a
	rst 38h			;743b
	rst 38h			;743c
	rst 38h			;743d
	rst 38h			;743e
	rst 38h			;743f
	rst 38h			;7440
	rst 38h			;7441
	rst 38h			;7442
	rst 38h			;7443
	rst 38h			;7444
	rst 38h			;7445
	rst 38h			;7446
	rst 38h			;7447
	rst 38h			;7448
	rst 38h			;7449
	rst 38h			;744a
	rst 38h			;744b
	rst 38h			;744c
	rst 38h			;744d
	rst 38h			;744e
	rst 38h			;744f
	rst 38h			;7450
	rst 38h			;7451
	rst 38h			;7452
	rst 38h			;7453
	rst 38h			;7454
	rst 38h			;7455
	rst 38h			;7456
	rst 38h			;7457
	rst 38h			;7458
	rst 38h			;7459
	rst 38h			;745a
	rst 38h			;745b
	rst 38h			;745c
	rst 38h			;745d
	rst 38h			;745e
	rst 38h			;745f
	rst 38h			;7460
	rst 38h			;7461
	rst 38h			;7462
	rst 38h			;7463
	rst 38h			;7464
	rst 38h			;7465
	rst 38h			;7466
	rst 38h			;7467
	rst 38h			;7468
	rst 38h			;7469
	rst 38h			;746a
	rst 38h			;746b
	rst 38h			;746c
	rst 38h			;746d
	rst 38h			;746e
	rst 38h			;746f
	rst 38h			;7470
	rst 38h			;7471
	rst 38h			;7472
	rst 38h			;7473
	rst 38h			;7474
	rst 38h			;7475
	rst 38h			;7476
	rst 38h			;7477
	rst 38h			;7478
	rst 38h			;7479
	rst 38h			;747a
	rst 38h			;747b
	rst 38h			;747c
	rst 38h			;747d
	rst 38h			;747e
	rst 38h			;747f
	rst 38h			;7480
	rst 38h			;7481
	rst 38h			;7482
	rst 38h			;7483
	rst 38h			;7484
	rst 38h			;7485
	rst 38h			;7486
	rst 38h			;7487
	rst 38h			;7488
	rst 38h			;7489
	rst 38h			;748a
	rst 38h			;748b
	rst 38h			;748c
	rst 38h			;748d
	rst 38h			;748e
	rst 38h			;748f
	rst 38h			;7490
	rst 38h			;7491
	rst 38h			;7492
	rst 38h			;7493
	rst 38h			;7494
	rst 38h			;7495
	rst 38h			;7496
	rst 38h			;7497
	rst 38h			;7498
	rst 38h			;7499
	rst 38h			;749a
	rst 38h			;749b
	rst 38h			;749c
	rst 38h			;749d
	rst 38h			;749e
	rst 38h			;749f
	rst 38h			;74a0
	rst 38h			;74a1
	rst 38h			;74a2
	rst 38h			;74a3
	rst 38h			;74a4
	rst 38h			;74a5
	rst 38h			;74a6
	rst 38h			;74a7
	rst 38h			;74a8
	rst 38h			;74a9
	rst 38h			;74aa
	rst 38h			;74ab
	rst 38h			;74ac
	rst 38h			;74ad
	rst 38h			;74ae
	rst 38h			;74af
	rst 38h			;74b0
	rst 38h			;74b1
	rst 38h			;74b2
	rst 38h			;74b3
	rst 38h			;74b4
	rst 38h			;74b5
	rst 38h			;74b6
	rst 38h			;74b7
	rst 38h			;74b8
	rst 38h			;74b9
	rst 38h			;74ba
	rst 38h			;74bb
	rst 38h			;74bc
	rst 38h			;74bd
	rst 38h			;74be
	rst 38h			;74bf
	rst 38h			;74c0
	rst 38h			;74c1
	rst 38h			;74c2
	rst 38h			;74c3
	rst 38h			;74c4
	rst 38h			;74c5
	rst 38h			;74c6
	rst 38h			;74c7
	rst 38h			;74c8
	rst 38h			;74c9
	rst 38h			;74ca
	rst 38h			;74cb
	rst 38h			;74cc
	rst 38h			;74cd
	rst 38h			;74ce
	rst 38h			;74cf
	rst 38h			;74d0
	rst 38h			;74d1
	rst 38h			;74d2
	rst 38h			;74d3
	rst 38h			;74d4
	rst 38h			;74d5
	rst 38h			;74d6
	rst 38h			;74d7
	rst 38h			;74d8
	rst 38h			;74d9
	rst 38h			;74da
	rst 38h			;74db
	rst 38h			;74dc
	rst 38h			;74dd
	rst 38h			;74de
	rst 38h			;74df
	rst 38h			;74e0
	rst 38h			;74e1
	rst 38h			;74e2
	rst 38h			;74e3
	rst 38h			;74e4
	rst 38h			;74e5
	rst 38h			;74e6
	rst 38h			;74e7
	rst 38h			;74e8
	rst 38h			;74e9
	rst 38h			;74ea
	rst 38h			;74eb
	rst 38h			;74ec
	rst 38h			;74ed
	rst 38h			;74ee
	rst 38h			;74ef
	rst 38h			;74f0
	rst 38h			;74f1
	rst 38h			;74f2
	rst 38h			;74f3
	rst 38h			;74f4
	rst 38h			;74f5
	rst 38h			;74f6
	rst 38h			;74f7
	rst 38h			;74f8
	rst 38h			;74f9
	rst 38h			;74fa
	rst 38h			;74fb
	rst 38h			;74fc
	rst 38h			;74fd
	rst 38h			;74fe
	rst 38h			;74ff
	rst 38h			;7500
	rst 38h			;7501
	rst 38h			;7502
	rst 38h			;7503
	rst 38h			;7504
	rst 38h			;7505
	rst 38h			;7506
	rst 38h			;7507
	rst 38h			;7508
	rst 38h			;7509
	rst 38h			;750a
	rst 38h			;750b
	rst 38h			;750c
	rst 38h			;750d
	rst 38h			;750e
	rst 38h			;750f
	rst 38h			;7510
	rst 38h			;7511
	rst 38h			;7512
	rst 38h			;7513
	rst 38h			;7514
	rst 38h			;7515
	rst 38h			;7516
	rst 38h			;7517
	rst 38h			;7518
	rst 38h			;7519
	rst 38h			;751a
	rst 38h			;751b
	rst 38h			;751c
	rst 38h			;751d
	rst 38h			;751e
	rst 38h			;751f
	rst 38h			;7520
	rst 38h			;7521
	rst 38h			;7522
	rst 38h			;7523
	rst 38h			;7524
	rst 38h			;7525
	rst 38h			;7526
	rst 38h			;7527
	rst 38h			;7528
	rst 38h			;7529
	rst 38h			;752a
	rst 38h			;752b
	rst 38h			;752c
	rst 38h			;752d
	rst 38h			;752e
	rst 38h			;752f
	rst 38h			;7530
	rst 38h			;7531
	rst 38h			;7532
	rst 38h			;7533
	rst 38h			;7534
	rst 38h			;7535
	rst 38h			;7536
	rst 38h			;7537
	rst 38h			;7538
	rst 38h			;7539
	rst 38h			;753a
	rst 38h			;753b
	rst 38h			;753c
	rst 38h			;753d
	rst 38h			;753e
	rst 38h			;753f
	rst 38h			;7540
	rst 38h			;7541
	rst 38h			;7542
	rst 38h			;7543
	rst 38h			;7544
	rst 38h			;7545
	rst 38h			;7546
	rst 38h			;7547
	rst 38h			;7548
	rst 38h			;7549
	rst 38h			;754a
	rst 38h			;754b
	rst 38h			;754c
	rst 38h			;754d
	rst 38h			;754e
	rst 38h			;754f
	rst 38h			;7550
	rst 38h			;7551
	rst 38h			;7552
	rst 38h			;7553
	rst 38h			;7554
	rst 38h			;7555
	rst 38h			;7556
	rst 38h			;7557
	rst 38h			;7558
	rst 38h			;7559
	rst 38h			;755a
	rst 38h			;755b
	rst 38h			;755c
	rst 38h			;755d
	rst 38h			;755e
	rst 38h			;755f
	rst 38h			;7560
	rst 38h			;7561
	rst 38h			;7562
	rst 38h			;7563
	rst 38h			;7564
	rst 38h			;7565
	rst 38h			;7566
	rst 38h			;7567
	rst 38h			;7568
	rst 38h			;7569
	rst 38h			;756a
	rst 38h			;756b
	rst 38h			;756c
	rst 38h			;756d
	rst 38h			;756e
	rst 38h			;756f
	rst 38h			;7570
	rst 38h			;7571
	rst 38h			;7572
	rst 38h			;7573
	rst 38h			;7574
	rst 38h			;7575
	rst 38h			;7576
	rst 38h			;7577
	rst 38h			;7578
	rst 38h			;7579
	rst 38h			;757a
	rst 38h			;757b
	rst 38h			;757c
	rst 38h			;757d
	rst 38h			;757e
	rst 38h			;757f
	rst 38h			;7580
	rst 38h			;7581
	rst 38h			;7582
	rst 38h			;7583
	rst 38h			;7584
	rst 38h			;7585
	rst 38h			;7586
	rst 38h			;7587
	rst 38h			;7588
	rst 38h			;7589
	rst 38h			;758a
	rst 38h			;758b
	rst 38h			;758c
	rst 38h			;758d
	rst 38h			;758e
	rst 38h			;758f
	rst 38h			;7590
	rst 38h			;7591
	rst 38h			;7592
	rst 38h			;7593
	rst 38h			;7594
	rst 38h			;7595
	rst 38h			;7596
	rst 38h			;7597
	rst 38h			;7598
	rst 38h			;7599
	rst 38h			;759a
	rst 38h			;759b
	rst 38h			;759c
	rst 38h			;759d
	rst 38h			;759e
	rst 38h			;759f
	rst 38h			;75a0
	rst 38h			;75a1
	rst 38h			;75a2
	rst 38h			;75a3
	rst 38h			;75a4
	rst 38h			;75a5
	rst 38h			;75a6
	rst 38h			;75a7
	rst 38h			;75a8
	rst 38h			;75a9
	rst 38h			;75aa
	rst 38h			;75ab
	rst 38h			;75ac
	rst 38h			;75ad
	rst 38h			;75ae
	rst 38h			;75af
	rst 38h			;75b0
	rst 38h			;75b1
	rst 38h			;75b2
	rst 38h			;75b3
	rst 38h			;75b4
	rst 38h			;75b5
	rst 38h			;75b6
	rst 38h			;75b7
	rst 38h			;75b8
	rst 38h			;75b9
	rst 38h			;75ba
	rst 38h			;75bb
	rst 38h			;75bc
	rst 38h			;75bd
	rst 38h			;75be
	rst 38h			;75bf
	rst 38h			;75c0
	rst 38h			;75c1
	rst 38h			;75c2
	rst 38h			;75c3
	rst 38h			;75c4
	rst 38h			;75c5
	rst 38h			;75c6
	rst 38h			;75c7
	rst 38h			;75c8
	rst 38h			;75c9
	rst 38h			;75ca
	rst 38h			;75cb
	rst 38h			;75cc
	rst 38h			;75cd
	rst 38h			;75ce
	rst 38h			;75cf
	rst 38h			;75d0
	rst 38h			;75d1
	rst 38h			;75d2
	rst 38h			;75d3
	rst 38h			;75d4
	rst 38h			;75d5
	rst 38h			;75d6
	rst 38h			;75d7
	rst 38h			;75d8
	rst 38h			;75d9
	rst 38h			;75da
	rst 38h			;75db
	rst 38h			;75dc
	rst 38h			;75dd
	rst 38h			;75de
	rst 38h			;75df
	rst 38h			;75e0
	rst 38h			;75e1
	rst 38h			;75e2
	rst 38h			;75e3
	rst 38h			;75e4
	rst 38h			;75e5
	rst 38h			;75e6
	rst 38h			;75e7
	rst 38h			;75e8
	rst 38h			;75e9
	rst 38h			;75ea
	rst 38h			;75eb
	rst 38h			;75ec
	rst 38h			;75ed
	rst 38h			;75ee
	rst 38h			;75ef
	rst 38h			;75f0
	rst 38h			;75f1
	rst 38h			;75f2
	rst 38h			;75f3
	rst 38h			;75f4
	rst 38h			;75f5
	rst 38h			;75f6
	rst 38h			;75f7
	rst 38h			;75f8
	rst 38h			;75f9
	rst 38h			;75fa
	rst 38h			;75fb
	rst 38h			;75fc
	rst 38h			;75fd
	rst 38h			;75fe
	rst 38h			;75ff
	rst 38h			;7600
	rst 38h			;7601
	rst 38h			;7602
	rst 38h			;7603
	rst 38h			;7604
	rst 38h			;7605
	rst 38h			;7606
	rst 38h			;7607
	rst 38h			;7608
	rst 38h			;7609
	rst 38h			;760a
	rst 38h			;760b
	rst 38h			;760c
	rst 38h			;760d
	rst 38h			;760e
	rst 38h			;760f
	rst 38h			;7610
	rst 38h			;7611
	rst 38h			;7612
	rst 38h			;7613
	rst 38h			;7614
	rst 38h			;7615
	rst 38h			;7616
	rst 38h			;7617
	rst 38h			;7618
	rst 38h			;7619
	rst 38h			;761a
	rst 38h			;761b
	rst 38h			;761c
	rst 38h			;761d
	rst 38h			;761e
	rst 38h			;761f
	rst 38h			;7620
	rst 38h			;7621
	rst 38h			;7622
	rst 38h			;7623
	rst 38h			;7624
	rst 38h			;7625
	rst 38h			;7626
	rst 38h			;7627
	rst 38h			;7628
	rst 38h			;7629
	rst 38h			;762a
	rst 38h			;762b
	rst 38h			;762c
	rst 38h			;762d
	rst 38h			;762e
	rst 38h			;762f
	rst 38h			;7630
	rst 38h			;7631
	rst 38h			;7632
	rst 38h			;7633
	rst 38h			;7634
	rst 38h			;7635
	rst 38h			;7636
	rst 38h			;7637
	rst 38h			;7638
	rst 38h			;7639
	rst 38h			;763a
	rst 38h			;763b
	rst 38h			;763c
	rst 38h			;763d
	rst 38h			;763e
	rst 38h			;763f
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

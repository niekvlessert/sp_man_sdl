; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank02_8000_runtime.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank02.bin

	org 08000h

	jp l801bh		;8000	c3 1b 80	. . .
	jp l8224h		;8003	c3 24 82	. $ .
	jp l878ah		;8006	c3 8a 87	. . .
	jp l8f11h		;8009	c3 11 8f	. . .
	jp l8f64h		;800c	c3 64 8f	. d .
	jp l8fc5h		;800f	c3 c5 8f	. . .
	jp l8238h		;8012	c3 38 82	. 8 .
	jp l828ah		;8015	c3 8a 82	. . .
	jp l8220h		;8018	c3 20 82	.   .
l801bh:
	call sub_8031h		;801b	cd 31 80	. 1 .
	call sub_82b4h		;801e	cd b4 82	. . .
	ld a,(0c907h)		;8021	3a 07 c9	: . .
	and 010h		;8024	e6 10		. .
	call nz,sub_8599h	;8026	c4 99 85	. . .
	ld a,(0ca43h)		;8029	3a 43 ca	: C .
	or a			;802c	b7		.
	call z,sub_84f6h	;802d	cc f6 84	. . .
	ret			;8030	c9		.
sub_8031h:
	call sub_8060h		;8031	cd 60 80	. ` .
	ld a,(ix+001h)		;8034	dd 7e 01	. ~ .
	or a			;8037	b7		.
	jp z,077d0h		;8038	ca d0 77	. . w
	call 07747h		;803b	cd 47 77	. G w
	ld a,(0c0ech)		;803e	3a ec c0	: . .
	or a			;8041	b7		.
	ret z			;8042	c8		.
	call 077d0h		;8043	cd d0 77	. . w
	xor a			;8046	af		.
	ld (0c0ech),a		;8047	32 ec c0	2 . .
	ld (ix+019h),a		;804a	dd 77 19	. w .
	ld (ix+01ah),a		;804d	dd 77 1a	. w .
	ld (ix+01bh),a		;8050	dd 77 1b	. w .
	ld (ix+01ch),a		;8053	dd 77 1c	. w .
	ld (ix+01dh),a		;8056	dd 77 1d	. w .
	ld (ix+01eh),a		;8059	dd 77 1e	. w .
	ld (ix+01fh),a		;805c	dd 77 1f	. w .
	ret			;805f	c9		.
sub_8060h:
	ld ix,0ca40h		;8060	dd 21 40 ca	. ! @ .
	ld a,(0ce75h)		;8064	3a 75 ce	: u .
	or a			;8067	b7		.
	ret nz			;8068	c0		.
	ld a,(ix+001h)		;8069	dd 7e 01	. ~ .
	dec a			;806c	3d		=
	jr z,l80dah		;806d	28 6b		( k
	dec a			;806f	3d		=
	jr z,l80efh		;8070	28 7d		( }
	call sub_80f4h		;8072	cd f4 80	. . .
	call sub_820dh		;8075	cd 0d 82	. . .
	call sub_8108h		;8078	cd 08 81	. . .
	ld a,(0ca03h)		;807b	3a 03 ca	: . .
	rrca			;807e	0f		.
	ret c			;807f	d8		.
	ld a,(0ce76h)		;8080	3a 76 ce	: v .
	or a			;8083	b7		.
	ret nz			;8084	c0		.
	ld a,(0ce75h)		;8085	3a 75 ce	: u .
	or a			;8088	b7		.
	ret nz			;8089	c0		.
	ld a,(ix+018h)		;808a	dd 7e 18	. ~ .
	or a			;808d	b7		.
	jr z,l8099h		;808e	28 09		( .
	dec a			;8090	3d		=
	ld (ix+018h),a		;8091	dd 77 18	. w .
	ld (ix+004h),000h	;8094	dd 36 04 00	. 6 . .
	ret			;8098	c9		.
l8099h:
	call 07c44h		;8099	cd 44 7c	. D |
	ret			;809c	c9		.
	ld (ix+001h),001h	;809d	dd 36 01 01	. 6 . .
	ld (ix+003h),001h	;80a1	dd 36 03 01	. 6 . .
	ld (ix+015h),02dh	;80a5	dd 36 15 2d	. 6 . -
	res 7,(ix+014h)		;80a9	dd cb 14 be	. . . .
	ld (ix+005h),006h	;80ad	dd 36 05 06	. 6 . .
	xor a			;80b1	af		.
	ld (ix+019h),a		;80b2	dd 77 19	. w .
	ld (ix+01ah),a		;80b5	dd 77 1a	. w .
	ld (ix+01bh),a		;80b8	dd 77 1b	. w .
	ld (ix+01ch),a		;80bb	dd 77 1c	. w .
	ld (ix+01dh),a		;80be	dd 77 1d	. w .
	ld (ix+01eh),a		;80c1	dd 77 1e	. w .
	ld (ix+01fh),a		;80c4	dd 77 1f	. w .
	set 3,(ix+015h)		;80c7	dd cb 15 de	. . . .
	ld a,04ch		;80cb	3e 4c		> L
	call 04aebh		;80cd	cd eb 4a	. . J
	ld hl,0c947h		;80d0	21 47 c9	! G .
	set 0,(hl)		;80d3	cb c6		. .
	ld (ix+017h),028h	;80d5	dd 36 17 28	. 6 . (
	ret			;80d9	c9		.
l80dah:
	ld b,00ah		;80da	06 0a		. .
	ld a,(ix+005h)		;80dc	dd 7e 05	. ~ .
	inc a			;80df	3c		<
	cp b			;80e0	b8		.
	jr c,l80e5h		;80e1	38 02		8 .
	ld a,006h		;80e3	3e 06		> .
l80e5h:
	ld (ix+005h),a		;80e5	dd 77 05	. w .
	call 06ad2h		;80e8	cd d2 6a	. . j
	ret nz			;80eb	c0		.
	inc (ix+001h)		;80ec	dd 34 01	. 4 .
l80efh:
	ld (ix+000h),000h	;80ef	dd 36 00 00	. 6 . .
	ret			;80f3	c9		.
sub_80f4h:
	ld a,(0cb02h)		;80f4	3a 02 cb	: . .
	or a			;80f7	b7		.
	ret z			;80f8	c8		.
	dec a			;80f9	3d		=
	ld (0cb02h),a		;80fa	32 02 cb	2 . .
	ret			;80fd	c9		.
l80feh:
	ld hl,00000h		;80fe	21 00 00	! . .
	ld (0ca4bh),hl		;8101	22 4b ca	" K .
	ld (0ca4dh),hl		;8104	22 4d ca	" M .
	ret			;8107	c9		.
sub_8108h:
	ld a,(0c900h)		;8108	3a 00 c9	: . .
	cp 004h			;810b	fe 04		. .
	jr z,l8114h		;810d	28 05		( .
	ld a,(0c908h)		;810f	3a 08 c9	: . .
	jr l8117h		;8112	18 03		. .
l8114h:
	ld a,(0c909h)		;8114	3a 09 c9	: . .
l8117h:
	and 00fh		;8117	e6 0f		. .
	ld (0cb18h),a		;8119	32 18 cb	2 . .
	jr z,l80feh		;811c	28 e0		( .
	ld e,a			;811e	5f		_
	add a,a			;811f	87		.
	add a,a			;8120	87		.
	add a,a			;8121	87		.
	add a,e			;8122	83		.
	ld e,a			;8123	5f		_
	ld d,000h		;8124	16 00		. .
	ld hl,l817dh		;8126	21 7d 81	! } .
	add hl,de		;8129	19		.
	ld a,(hl)		;812a	7e		~
	ld (0cb18h),a		;812b	32 18 cb	2 . .
	inc hl			;812e	23		#
	ld e,(hl)		;812f	5e		^
	inc hl			;8130	23		#
	ld d,(hl)		;8131	56		V
	inc hl			;8132	23		#
	ld c,(hl)		;8133	4e		N
	inc hl			;8134	23		#
	ld b,(hl)		;8135	46		F
	inc hl			;8136	23		#
	ld a,(0cb01h)		;8137	3a 01 cb	: . .
	or a			;813a	b7		.
	push af			;813b	f5		.
	push hl			;813c	e5		.
	ex de,hl		;813d	eb		.
	call nz,sub_8177h	;813e	c4 77 81	. w .
	ld (0ca4bh),hl		;8141	22 4b ca	" K .
	ld bc,(0ca47h)		;8144	ed 4b 47 ca	. K G .
	add hl,bc		;8148	09		.
	ld a,h			;8149	7c		|
	cp 014h			;814a	fe 14		. .
	jr nc,l8151h		;814c	30 03		0 .
	ld (0ca47h),hl		;814e	22 47 ca	" G .
l8151h:
	pop hl			;8151	e1		.
	ld e,(hl)		;8152	5e		^
	inc hl			;8153	23		#
	ld d,(hl)		;8154	56		V
	inc hl			;8155	23		#
	ld c,(hl)		;8156	4e		N
	inc hl			;8157	23		#
	ld b,(hl)		;8158	46		F
	inc hl			;8159	23		#
	pop af			;815a	f1		.
	ex de,hl		;815b	eb		.
	call nz,sub_8177h	;815c	c4 77 81	. w .
	ld (0ca4dh),hl		;815f	22 4d ca	" M .
	ld bc,(0ca49h)		;8162	ed 4b 49 ca	. K I .
	add hl,bc		;8166	09		.
	ex de,hl		;8167	eb		.
	ld hl,0ff80h		;8168	21 80 ff	! . .
	add hl,de		;816b	19		.
	ld a,h			;816c	7c		|
	cp 01dh			;816d	fe 1d		. .
	jr nc,l8175h		;816f	30 04		0 .
	ld (0ca49h),de		;8171	ed 53 49 ca	. S I .
l8175h:
	or a			;8175	b7		.
	ret			;8176	c9		.
sub_8177h:
	add hl,bc		;8177	09		.
	dec a			;8178	3d		=
	jp nz,sub_8177h		;8179	c2 77 81	. w .
	ret			;817c	c9		.
l817dh:
	nop			;817d	00		.
	nop			;817e	00		.
	nop			;817f	00		.
	nop			;8180	00		.
	nop			;8181	00		.
	nop			;8182	00		.
	nop			;8183	00		.
	nop			;8184	00		.
	nop			;8185	00		.
	rlca			;8186	07		.
	add a,b			;8187	80		.
	rst 38h			;8188	ff		.
	ex de,hl		;8189	eb		.
	rst 38h			;818a	ff		.
	nop			;818b	00		.
	nop			;818c	00		.
	nop			;818d	00		.
	nop			;818e	00		.
	inc bc			;818f	03		.
	add a,b			;8190	80		.
	nop			;8191	00		.
	dec d			;8192	15		.
	nop			;8193	00		.
	nop			;8194	00		.
	nop			;8195	00		.
	nop			;8196	00		.
	nop			;8197	00		.
	nop			;8198	00		.
	nop			;8199	00		.
	nop			;819a	00		.
	nop			;819b	00		.
	nop			;819c	00		.
	nop			;819d	00		.
	nop			;819e	00		.
	nop			;819f	00		.
	nop			;81a0	00		.
	dec b			;81a1	05		.
	nop			;81a2	00		.
	nop			;81a3	00		.
	nop			;81a4	00		.
	nop			;81a5	00		.
	add a,b			;81a6	80		.
	rst 38h			;81a7	ff		.
	ex de,hl		;81a8	eb		.
	rst 38h			;81a9	ff		.
	ld b,0a0h		;81aa	06 a0		. .
	rst 38h			;81ac	ff		.
	ret p			;81ad	f0		.
	rst 38h			;81ae	ff		.
	and b			;81af	a0		.
	rst 38h			;81b0	ff		.
	ret p			;81b1	f0		.
	rst 38h			;81b2	ff		.
	inc b			;81b3	04		.
	ld h,b			;81b4	60		`
	nop			;81b5	00		.
	djnz l81b8h		;81b6	10 00		. .
l81b8h:
	and b			;81b8	a0		.
	rst 38h			;81b9	ff		.
	ret p			;81ba	f0		.
	rst 38h			;81bb	ff		.
	nop			;81bc	00		.
	nop			;81bd	00		.
	nop			;81be	00		.
	nop			;81bf	00		.
	nop			;81c0	00		.
	add a,b			;81c1	80		.
	rst 38h			;81c2	ff		.
	ex de,hl		;81c3	eb		.
	rst 38h			;81c4	ff		.
	ld bc,00000h		;81c5	01 00 00	. . .
	nop			;81c8	00		.
	nop			;81c9	00		.
	add a,b			;81ca	80		.
	nop			;81cb	00		.
	dec d			;81cc	15		.
	nop			;81cd	00		.
	ex af,af'		;81ce	08		.
	and b			;81cf	a0		.
	rst 38h			;81d0	ff		.
	ret p			;81d1	f0		.
	rst 38h			;81d2	ff		.
	ld h,b			;81d3	60		`
	nop			;81d4	00		.
	djnz l81d7h		;81d5	10 00		. .
l81d7h:
	ld (bc),a		;81d7	02		.
	ld h,b			;81d8	60		`
	nop			;81d9	00		.
	djnz l81dch		;81da	10 00		. .
l81dch:
	ld h,b			;81dc	60		`
	nop			;81dd	00		.
	djnz l81e0h		;81de	10 00		. .
l81e0h:
	ld bc,00000h		;81e0	01 00 00	. . .
	nop			;81e3	00		.
	nop			;81e4	00		.
	add a,b			;81e5	80		.
	nop			;81e6	00		.
	dec d			;81e7	15		.
	nop			;81e8	00		.
	nop			;81e9	00		.
	nop			;81ea	00		.
	nop			;81eb	00		.
	nop			;81ec	00		.
	nop			;81ed	00		.
	nop			;81ee	00		.
	nop			;81ef	00		.
	nop			;81f0	00		.
	nop			;81f1	00		.
	rlca			;81f2	07		.
	add a,b			;81f3	80		.
	rst 38h			;81f4	ff		.
	ex de,hl		;81f5	eb		.
	rst 38h			;81f6	ff		.
	nop			;81f7	00		.
	nop			;81f8	00		.
	nop			;81f9	00		.
	nop			;81fa	00		.
	inc bc			;81fb	03		.
	add a,b			;81fc	80		.
	nop			;81fd	00		.
	dec d			;81fe	15		.
	nop			;81ff	00		.
	nop			;8200	00		.
	nop			;8201	00		.
	nop			;8202	00		.
	nop			;8203	00		.
	nop			;8204	00		.
l8205h:
	nop			;8205	00		.
	nop			;8206	00		.
	nop			;8207	00		.
	nop			;8208	00		.
	nop			;8209	00		.
	nop			;820a	00		.
	nop			;820b	00		.
	nop			;820c	00		.
sub_820dh:
	ld a,(0c908h)		;820d	3a 08 c9	: . .
	ld b,000h		;8210	06 00		. .
	and 003h		;8212	e6 03		. .
	jr z,l821bh		;8214	28 05		( .
	inc b			;8216	04		.
	rrca			;8217	0f		.
	jr c,l821bh		;8218	38 01		8 .
	inc b			;821a	04		.
l821bh:
	ld hl,0ca45h		;821b	21 45 ca	! E .
	ld (hl),b		;821e	70		p
	ret			;821f	c9		.
l8220h:
	call l8224h		;8220	cd 24 82	. $ .
	ret			;8223	c9		.
l8224h:
	call sub_8279h		;8224	cd 79 82	. y .
	call sub_829fh		;8227	cd 9f 82	. . .
	xor a			;822a	af		.
	ld (0c0ech),a		;822b	32 ec c0	2 . .
	ld (0cb01h),a		;822e	32 01 cb	2 . .
	ld (0ca19h),a		;8231	32 19 ca	2 . .
	dec a			;8234	3d		=
	ld (0cb02h),a		;8235	32 02 cb	2 . .
l8238h:
	xor a			;8238	af		.
	ld (0cc01h),a		;8239	32 01 cc	2 . .
	ld (0cb1dh),a		;823c	32 1d cb	2 . .
	call sub_828bh		;823f	cd 8b 82	. . .
	ld hl,0ca40h		;8242	21 40 ca	! @ .
	ld bc,0003fh		;8245	01 3f 00	. ? .
	call 04648h		;8248	cd 48 46	. H F
	call sub_8254h		;824b	cd 54 82	. T .
	call sub_83e7h		;824e	cd e7 83	. . .
	jp l8704h		;8251	c3 04 87	. . .
sub_8254h:
	ld ix,0ca40h		;8254	dd 21 40 ca	. ! @ .
	ld (ix+000h),001h	;8258	dd 36 00 01	. 6 . .
	ld (ix+008h),008h	;825c	dd 36 08 08	. 6 . .
	ld (ix+00ah),005h	;8260	dd 36 0a 05	. 6 . .
	ld (ix+015h),039h	;8264	dd 36 15 39	. 6 . 9
	ld (ix+013h),003h	;8268	dd 36 13 03	. 6 . .
	ld (ix+014h),003h	;826c	dd 36 14 03	. 6 . .
	ld (ix+018h),00fh	;8270	dd 36 18 0f	. 6 . .
	set 7,(ix+014h)		;8274	dd cb 14 fe	. . . .
	ret			;8278	c9		.
sub_8279h:
	ld hl,0cb40h		;8279	21 40 cb	! @ .
	ld bc,00027h		;827c	01 27 00	. ' .
	call 04648h		;827f	cd 48 46	. H F
	xor a			;8282	af		.
	ld (0cb1ah),a		;8283	32 1a cb	2 . .
	call sub_84a5h		;8286	cd a5 84	. . .
	ret			;8289	c9		.
l828ah:
	ret			;828a	c9		.
sub_828bh:
	ld ix,0cac0h		;828b	dd 21 c0 ca	. ! . .
	call sub_8296h		;828f	cd 96 82	. . .
	ld ix,0cae0h		;8292	dd 21 e0 ca	. ! . .
sub_8296h:
	ld (ix+019h),000h	;8296	dd 36 19 00	. 6 . .
	ld (ix+01ah),000h	;829a	dd 36 1a 00	. 6 . .
	ret			;829e	c9		.
sub_829fh:
	xor a			;829f	af		.
	ld (0cb03h),a		;82a0	32 03 cb	2 . .
	ld hl,0cac0h		;82a3	21 c0 ca	! . .
	ld bc,0003fh		;82a6	01 3f 00	. ? .
	call 04648h		;82a9	cd 48 46	. H F
	ld bc,0ff80h		;82ac	01 80 ff	. . .
	ld (0cb1bh),bc		;82af	ed 43 1b cb	. C . .
	ret			;82b3	c9		.
sub_82b4h:
	call sub_82c6h		;82b4	cd c6 82	. . .
	ld ix,0cac0h		;82b7	dd 21 c0 ca	. ! . .
	call sub_82d2h		;82bb	cd d2 82	. . .
	ld ix,0cae0h		;82be	dd 21 e0 ca	. ! . .
	call sub_82d2h		;82c2	cd d2 82	. . .
	ret			;82c5	c9		.
sub_82c6h:
	ld a,(0ca02h)		;82c6	3a 02 ca	: . .
	and 003h		;82c9	e6 03		. .
	ld (0cac5h),a		;82cb	32 c5 ca	2 . .
	ld (0cae5h),a		;82ce	32 e5 ca	2 . .
	ret			;82d1	c9		.
sub_82d2h:
	ld a,(0ca41h)		;82d2	3a 41 ca	: A .
	or a			;82d5	b7		.
	ret nz			;82d6	c0		.
	ld a,(ix+000h)		;82d7	dd 7e 00	. ~ .
	or a			;82da	b7		.
	ret z			;82db	c8		.
	call sub_82e2h		;82dc	cd e2 82	. . .
	jp 077d0h		;82df	c3 d0 77	. . w
sub_82e2h:
	ld a,(ix+001h)		;82e2	dd 7e 01	. ~ .
	dec a			;82e5	3d		=
	jr z,l8320h		;82e6	28 38		( 8
	jp p,l8320h		;82e8	f2 20 83	.   .
	ld bc,00300h		;82eb	01 00 03	. . .
	call 076ffh		;82ee	cd ff 76	. . v
	ret nc			;82f1	d0		.
	call 0756ch		;82f2	cd 6c 75	. l u
	call 04612h		;82f5	cd 12 46	. . F
l82f8h:
	call sub_834ch		;82f8	cd 4c 83	. L .
	ld a,(0cb41h)		;82fb	3a 41 cb	: A .
	ld c,a			;82fe	4f		O
	ld hl,l831ah		;82ff	21 1a 83	! . .
	ld a,(0cb05h)		;8302	3a 05 cb	: . .
	bit 7,(ix+018h)		;8305	dd cb 18 7e	. . . ~
	jr nz,l830eh		;8309	20 03		  .
	ld hl,0831dh		;830b	21 1d 83	! . .
l830eh:
	call 04600h		;830e	cd 00 46	. . F
l8311h:
	ld a,(hl)		;8311	7e		~
	ld b,a			;8312	47		G
	call sub_84ach		;8313	cd ac 84	. . .
	inc (ix+001h)		;8316	dd 34 01	. 4 .
	ret			;8319	c9		.
l831ah:
	ex af,af'		;831a	08		.
	rlca			;831b	07		.
	ld b,002h		;831c	06 02		. .
	inc bc			;831e	03		.
	inc b			;831f	04		.
l8320h:
	call sub_8324h		;8320	cd 24 83	. $ .
	ret			;8323	c9		.
sub_8324h:
	ld hl,(0ca49h)		;8324	2a 49 ca	* I .
	ld bc,(0cb1bh)		;8327	ed 4b 1b cb	. K . .
	add hl,bc		;832b	09		.
	ld (ix+00ah),h		;832c	dd 74 0a	. t .
	ld (ix+009h),l		;832f	dd 75 09	. u .
	ld hl,(0ca47h)		;8332	2a 47 ca	* G .
	ld bc,000e0h		;8335	01 e0 00	. . .
	add hl,bc		;8338	09		.
	ld b,(ix+018h)		;8339	dd 46 18	. F .
	ld c,(ix+017h)		;833c	dd 4e 17	. N .
	add hl,bc		;833f	09		.
	ld (ix+008h),h		;8340	dd 74 08	. t .
	ld (ix+007h),l		;8343	dd 75 07	. u .
	ret			;8346	c9		.
	sra h			;8347	cb 2c		. ,
	rr l			;8349	cb 1d		. .
	ret			;834b	c9		.
sub_834ch:
	call sub_837ah		;834c	cd 7a 83	. z .
	jr c,l8359h		;834f	38 08		8 .
	xor h			;8351	ac		.
	bit 7,a			;8352	cb 7f		. .
	jr nz,l8359h		;8354	20 03		  .
	ld a,h			;8356	7c		|
	cpl			;8357	2f		/
	ld h,a			;8358	67		g
l8359h:
	bit 7,h			;8359	cb 7c		. |
	jr z,l8361h		;835b	28 04		( .
	set 7,(ix+010h)		;835d	dd cb 10 fe	. . . .
l8361h:
	bit 7,(ix+010h)		;8361	dd cb 10 7e	. . . ~
	push af			;8365	f5		.
	ld a,(ix+003h)		;8366	dd 7e 03	. ~ .
	ld de,l839ch		;8369	11 9c 83	. . .
	call 04624h		;836c	cd 24 46	. $ F
	pop af			;836f	f1		.
	call nz,04612h		;8370	c4 12 46	. . F
	ld (ix+018h),h		;8373	dd 74 18	. t .
	ld (ix+017h),l		;8376	dd 75 17	. u .
	ret			;8379	c9		.
sub_837ah:
	ld iy,0cac0h		;837a	fd 21 c0 ca	. ! . .
	call sub_8392h		;837e	cd 92 83	. . .
	jr nz,l838eh		;8381	20 0b		  .
	ld iy,0cae0h		;8383	fd 21 e0 ca	. ! . .
	call sub_8392h		;8387	cd 92 83	. . .
	jr nz,l838eh		;838a	20 02		  .
	scf			;838c	37		7
	ret			;838d	c9		.
l838eh:
	ld a,(iy+018h)		;838e	fd 7e 18	. ~ .
	ret			;8391	c9		.
sub_8392h:
	ld a,(iy+000h)		;8392	fd 7e 00	. ~ .
	or a			;8395	b7		.
	ret z			;8396	c8		.
	ld a,(iy+001h)		;8397	fd 7e 01	. ~ .
	or a			;839a	b7		.
	ret			;839b	c9		.
l839ch:
	add a,b			;839c	80		.
	ld (bc),a		;839d	02		.
	nop			;839e	00		.
	inc bc			;839f	03		.
	nop			;83a0	00		.
	inc b			;83a1	04		.
	nop			;83a2	00		.
	dec b			;83a3	05		.
sub_83a4h:
	ld a,(iy+003h)		;83a4	fd 7e 03	. ~ .
	ld (0cb1ah),a		;83a7	32 1a cb	2 . .
	push iy			;83aa	fd e5		. .
	call sub_83b2h		;83ac	cd b2 83	. . .
	pop iy			;83af	fd e1		. .
	ret			;83b1	c9		.
sub_83b2h:
	call sub_83b8h		;83b2	cd b8 83	. . .
	jp sub_83e7h		;83b5	c3 e7 83	. . .
sub_83b8h:
	ld a,(0cb1ah)		;83b8	3a 1a cb	: . .
	cp 00ah			;83bb	fe 0a		. .
	call z,sub_843dh	;83bd	cc 3d 84	. = .
	cp 002h			;83c0	fe 02		. .
	jp z,l8479h		;83c2	ca 79 84	. y .
	cp 00ch			;83c5	fe 0c		. .
	call z,08437h		;83c7	cc 37 84	. 7 .
	cp 003h			;83ca	fe 03		. .
	jp z,l8443h		;83cc	ca 43 84	. C .
	cp 00bh			;83cf	fe 0b		. .
	jp z,l8457h		;83d1	ca 57 84	. W .
	cp 00dh			;83d4	fe 0d		. .
	jp z,l844bh		;83d6	ca 4b 84	. K .
	cp 007h			;83d9	fe 07		. .
	jp z,l845dh		;83db	ca 5d 84	. ] .
	cp 00eh			;83de	fe 0e		. .
	jp z,l8470h		;83e0	ca 70 84	. p .
	call sub_84ddh		;83e3	cd dd 84	. . .
	ret			;83e6	c9		.
sub_83e7h:
	ld c,000h		;83e7	0e 00		. .
	ld ix,0cb40h		;83e9	dd 21 40 cb	. ! @ .
	ld b,005h		;83ed	06 05		. .
l83efh:
	ld a,(ix+000h)		;83ef	dd 7e 00	. ~ .
	or a			;83f2	b7		.
	jr z,l8406h		;83f3	28 11		( .
	ld a,(ix+001h)		;83f5	dd 7e 01	. ~ .
	dec a			;83f8	3d		=
	cp 00ah			;83f9	fe 0a		. .
	jr nc,l8406h		;83fb	30 09		0 .
	ld hl,l842dh		;83fd	21 2d 84	! - .
	call 04600h		;8400	cd 00 46	. . F
	ld a,(hl)		;8403	7e		~
l8404h:
	add a,c			;8404	81		.
l8405h:
	ld c,a			;8405	4f		O
l8406h:
	ld de,00008h		;8406	11 08 00	. . .
	add ix,de		;8409	dd 19		. .
	djnz l83efh		;840b	10 e2		. .
	ld a,c			;840d	79		y
	and 0f0h		;840e	e6 f0		. .
	rrca			;8410	0f		.
	rrca			;8411	0f		.
	rrca			;8412	0f		.
	rrca			;8413	0f		.
	ld c,a			;8414	4f		O
	ld a,(0ca04h)		;8415	3a 04 ca	: . .
	add a,a			;8418	87		.
	add a,a			;8419	87		.
	add a,c			;841a	81		.
	ld c,a			;841b	4f		O
	ld a,(0cb08h)		;841c	3a 08 cb	: . .
	call 04e79h		;841f	cd 79 4e	. y N
	add a,c			;8422	81		.
	cp 010h			;8423	fe 10		. .
	jr c,l8429h		;8425	38 02		8 .
	ld a,00fh		;8427	3e 0f		> .
l8429h:
	ld (0ca19h),a		;8429	32 19 ca	2 . .
	ret			;842c	c9		.
l842dh:
	djnz $+10		;842d	10 08		. .
	jr nz,$+18		;842f	20 10		  .
	nop			;8431	00		.
	nop			;8432	00		.
	nop			;8433	00		.
	nop			;8434	00		.
	nop			;8435	00		.
	jr l8405h		;8436	18 cd		. .
	ld d,087h		;8438	16 87		. .
	ld a,001h		;843a	3e 01		> .
	ret			;843c	c9		.
sub_843dh:
	call sub_871ah		;843d	cd 1a 87	. . .
	ld a,00ah		;8440	3e 0a		> .
	ret			;8442	c9		.
l8443h:
	ld b,080h		;8443	06 80		. .
	ld c,003h		;8445	0e 03		. .
	jp sub_84ach		;8447	c3 ac 84	. . .
	ret			;844a	c9		.
l844bh:
	ld a,00ah		;844b	3e 0a		> .
	call 04af5h		;844d	cd f5 4a	. . J
	ret			;8450	c9		.
	ld a,00fh		;8451	3e 0f		> .
	call 04af5h		;8453	cd f5 4a	. . J
	ret			;8456	c9		.
l8457h:
	ld a,001h		;8457	3e 01		> .
	ld (0cb1dh),a		;8459	32 1d cb	2 . .
	ret			;845c	c9		.
l845dh:
	ld a,(ix+017h)		;845d	dd 7e 17	. ~ .
	cpl			;8460	2f		/
	push af			;8461	f5		.
	call 06f8ch		;8462	cd 8c 6f	. . o
	jp c,0469fh		;8465	da 9f 46	. . F
	pop af			;8468	f1		.
	ld (ix+001h),002h	;8469	dd 36 01 02	. 6 . .
	jp l82f8h		;846d	c3 f8 82	. . .
l8470h:
	call sub_8484h		;8470	cd 84 84	. . .
	ld a,00ah		;8473	3e 0a		> .
	call 04af5h		;8475	cd f5 4a	. . J
	ret			;8478	c9		.
l8479h:
	ld a,(0cb01h)		;8479	3a 01 cb	: . .
	inc a			;847c	3c		<
	cp 005h			;847d	fe 05		. .
	ret nc			;847f	d0		.
	ld (0cb01h),a		;8480	32 01 cb	2 . .
	ret			;8483	c9		.
sub_8484h:
	ld de,(0cb07h)		;8484	ed 5b 07 cb	. [ . .
	ld b,d			;8488	42		B
	ld e,0ffh		;8489	1e ff		. .
	inc d			;848b	14		.
	ld a,010h		;848c	3e 10		> .
	cp d			;848e	ba		.
	jr nc,l8492h		;848f	30 01		0 .
	ld d,a			;8491	57		W
l8492h:
	ld (0cb07h),de		;8492	ed 53 07 cb	. S . .
	ex de,hl		;8496	eb		.
	ld a,h			;8497	7c		|
	call 04e79h		;8498	cd 79 4e	. y N
	ld h,a			;849b	67		g
	ld a,b			;849c	78		x
	call 04e79h		;849d	cd 79 4e	. y N
	cp h			;84a0	bc		.
	ret z			;84a1	c8		.
	jp l871eh		;84a2	c3 1e 87	. . .
sub_84a5h:
	xor a			;84a5	af		.
	ld (0cb05h),a		;84a6	32 05 cb	2 . .
	ld b,a			;84a9	47		G
	ld c,a			;84aa	4f		O
	inc c			;84ab	0c		.
sub_84ach:
	push ix			;84ac	dd e5		. .
	call sub_84c0h		;84ae	cd c0 84	. . .
	ld a,b			;84b1	78		x
	or a			;84b2	b7		.
	jr nz,l84b7h		;84b3	20 02		  .
	ld b,001h		;84b5	06 01		. .
l84b7h:
	ld (ix+001h),c		;84b7	dd 71 01	. q .
	ld (ix+000h),b		;84ba	dd 70 00	. p .
	pop ix			;84bd	dd e1		. .
	ret			;84bf	c9		.
sub_84c0h:
	ld a,b			;84c0	78		x
	or a			;84c1	b7		.
	ld ix,0cb40h		;84c2	dd 21 40 cb	. ! @ .
	ret z			;84c6	c8		.
	sub 002h		;84c7	d6 02		. .
	sub 003h		;84c9	d6 03		. .
	ld ix,0cb58h		;84cb	dd 21 58 cb	. ! X .
	ret c			;84cf	d8		.
	dec a			;84d0	3d		=
	sub 003h		;84d1	d6 03		. .
	ld ix,0cb50h		;84d3	dd 21 50 cb	. ! P .
	ret c			;84d7	d8		.
	ld ix,0cb48h		;84d8	dd 21 48 cb	. ! H .
	ret			;84dc	c9		.
sub_84ddh:
	ld c,a			;84dd	4f		O
	ld b,005h		;84de	06 05		. .
	ld ix,0cb40h		;84e0	dd 21 40 cb	. ! @ .
l84e4h:
	ld a,(ix+000h)		;84e4	dd 7e 00	. ~ .
	cp 009h			;84e7	fe 09		. .
	jr nc,l84eeh		;84e9	30 03		0 .
	ld (ix+001h),c		;84eb	dd 71 01	. q .
l84eeh:
	ld de,00008h		;84ee	11 08 00	. . .
	add ix,de		;84f1	dd 19		. .
	djnz l84e4h		;84f3	10 ef		. .
	ret			;84f5	c9		.
sub_84f6h:
	call sub_8530h		;84f6	cd 30 85	. 0 .
	ld a,(0c907h)		;84f9	3a 07 c9	: . .
	bit 5,a			;84fc	cb 6f		. o
	ret z			;84fe	c8		.
	call sub_8526h		;84ff	cd 26 85	. & .
	ret z			;8502	c8		.
	ld a,008h		;8503	3e 08		> .
	call 04af5h		;8505	cd f5 4a	. . J
l8508h:
	call sub_8569h		;8508	cd 69 85	. i .
	ld b,005h		;850b	06 05		. .
	ld ix,0cb40h		;850d	dd 21 40 cb	. ! @ .
l8511h:
	ld a,(ix+000h)		;8511	dd 7e 00	. ~ .
	and 00fh		;8514	e6 0f		. .
	jr z,l851eh		;8516	28 06		( .
	call sub_8588h		;8518	cd 88 85	. . .
	ld (ix+000h),a		;851b	dd 77 00	. w .
l851eh:
	ld de,00008h		;851e	11 08 00	. . .
	add ix,de		;8521	dd 19		. .
	djnz l8511h		;8523	10 ec		. .
	ret			;8525	c9		.
sub_8526h:
	ld a,(0cb50h)		;8526	3a 50 cb	: P .
	or a			;8529	b7		.
	ret nz			;852a	c0		.
	ld a,(0cb58h)		;852b	3a 58 cb	: X .
	or a			;852e	b7		.
	ret			;852f	c9		.
sub_8530h:
	ld a,(0cb02h)		;8530	3a 02 cb	: . .
	cp 02eh			;8533	fe 2e		. .
	ret nc			;8535	d0		.
	ld hl,0ca02h		;8536	21 02 ca	! . .
	ld a,(0ca10h)		;8539	3a 10 ca	: . .
	cp 005h			;853c	fe 05		. .
	ld a,00fh		;853e	3e 0f		> .
	jr c,l8544h		;8540	38 02		8 .
	ld a,01fh		;8542	3e 1f		> .
l8544h:
	and (hl)		;8544	a6		.
	ret nz			;8545	c0		.
	ld hl,(0cb07h)		;8546	2a 07 cb	* . .
	ld b,h			;8549	44		D
	ld de,00003h		;854a	11 03 00	. . .
	or a			;854d	b7		.
	sbc hl,de		;854e	ed 52		. R
	ret c			;8550	d8		.
	ld d,000h		;8551	16 00		. .
	ld e,b			;8553	58		X
	or a			;8554	b7		.
	sbc hl,de		;8555	ed 52		. R
	ret c			;8557	d8		.
	ld (0cb07h),hl		;8558	22 07 cb	" . .
	ld a,b			;855b	78		x
	call 04e79h		;855c	cd 79 4e	. y N
	ld b,a			;855f	47		G
	ld a,h			;8560	7c		|
	call 04e79h		;8561	cd 79 4e	. y N
	xor b			;8564	a8		.
	ret z			;8565	c8		.
	jp l871eh		;8566	c3 1e 87	. . .
sub_8569h:
	ld a,(0cb05h)		;8569	3a 05 cb	: . .
	inc a			;856c	3c		<
	cp 003h			;856d	fe 03		. .
	jr c,l8572h		;856f	38 01		8 .
	xor a			;8571	af		.
l8572h:
	ld (0cb05h),a		;8572	32 05 cb	2 . .
	rrca			;8575	0f		.
	ld bc,00000h		;8576	01 00 00	. . .
	jr c,l8583h		;8579	38 08		8 .
	ld bc,00080h		;857b	01 80 00	. . .
	jr nz,l8583h		;857e	20 03		  .
	ld bc,0ff80h		;8580	01 80 ff	. . .
l8583h:
	ld (0cb1bh),bc		;8583	ed 43 1b cb	. C . .
	ret			;8587	c9		.
sub_8588h:
	ld hl,l8590h		;8588	21 90 85	! . .
	call 04600h		;858b	cd 00 46	. . F
	ld a,(hl)		;858e	7e		~
	ret			;858f	c9		.
l8590h:
	nop			;8590	00		.
	ld bc,00403h		;8591	01 03 04	. . .
	ld (bc),a		;8594	02		.
	dec b			;8595	05		.
	ex af,af'		;8596	08		.
	ld b,007h		;8597	06 07		. .
sub_8599h:
	ld a,(0ca43h)		;8599	3a 43 ca	: C .
	or a			;859c	b7		.
	ret nz			;859d	c0		.
	xor a			;859e	af		.
	ld (0cc0eh),a		;859f	32 0e cc	2 . .
	ld iy,0cb40h		;85a2	fd 21 40 cb	. ! @ .
	ld ix,0cc40h		;85a6	dd 21 40 cc	. ! @ .
	ld a,(iy+000h)		;85aa	fd 7e 00	. ~ .
	or a			;85ad	b7		.
	ld b,003h		;85ae	06 03		. .
	call nz,sub_85e7h	;85b0	c4 e7 85	. . .
	ld iy,0cb50h		;85b3	fd 21 50 cb	. ! P .
	ld ix,0cca0h		;85b7	dd 21 a0 cc	. ! . .
	ld a,(iy+000h)		;85bb	fd 7e 00	. ~ .
	or a			;85be	b7		.
	ld b,002h		;85bf	06 02		. .
	call nz,sub_85e7h	;85c1	c4 e7 85	. . .
	ld iy,0cb58h		;85c4	fd 21 58 cb	. ! X .
	ld ix,0cce0h		;85c8	dd 21 e0 cc	. ! . .
	ld a,(iy+000h)		;85cc	fd 7e 00	. ~ .
	or a			;85cf	b7		.
	ld b,002h		;85d0	06 02		. .
	call nz,sub_85e7h	;85d2	c4 e7 85	. . .
	ld iy,0cb48h		;85d5	fd 21 48 cb	. ! H .
	ld ix,0cd20h		;85d9	dd 21 20 cd	. !   .
	ld a,(iy+000h)		;85dd	fd 7e 00	. ~ .
	or a			;85e0	b7		.
	ld b,001h		;85e1	06 01		. .
	call nz,sub_85e7h	;85e3	c4 e7 85	. . .
	ret			;85e6	c9		.
sub_85e7h:
	cp 080h			;85e7	fe 80		. .
	jr nz,l85edh		;85e9	20 02		  .
	ld a,001h		;85eb	3e 01		> .
l85edh:
	cp 005h			;85ed	fe 05		. .
	jr nz,l85fdh		;85ef	20 0c		  .
	ld (iy+000h),001h	;85f1	fd 36 00 01	. 6 . .
	call l85fdh		;85f5	cd fd 85	. . .
	ld (iy+000h),005h	;85f8	fd 36 00 05	. 6 . .
	ret			;85fc	c9		.
l85fdh:
	ld a,(iy+001h)		;85fd	fd 7e 01	. ~ .
	cp 00bh			;8600	fe 0b		. .
	jp nc,04ae0h		;8602	d2 e0 4a	. . J
l8605h:
	call 0461ah		;8605	cd 1a 46	. . F
l8608h:
	ld e,086h		;8608	1e 86		. .
	sbc a,h			;860a	9c		.
	adc a,h			;860b	8c		.
	ld e,086h		;860c	1e 86		. .
	ld d,b			;860e	50		P
	adc a,(hl)		;860f	8e		.
	ld e,086h		;8610	1e 86		. .
	ld e,086h		;8612	1e 86		. .
	ld e,086h		;8614	1e 86		. .
	ld e,086h		;8616	1e 86		. .
	ld e,086h		;8618	1e 86		. .
	ld e,086h		;861a	1e 86		. .
	pop af			;861c	f1		.
	adc a,e			;861d	8b		.
	ret			;861e	c9		.
sub_861fh:
	and 00fh		;861f	e6 0f		. .
	dec a			;8621	3d		=
	add a,a			;8622	87		.
	ld l,a			;8623	6f		o
	add a,a			;8624	87		.
	add a,l			;8625	85		.
	ld l,a			;8626	6f		o
	ld h,000h		;8627	26 00		& .
	add hl,bc		;8629	09		.
	ld e,(hl)		;862a	5e		^
	inc hl			;862b	23		#
	ld d,(hl)		;862c	56		V
	inc hl			;862d	23		#
	ld c,(hl)		;862e	4e		N
	inc hl			;862f	23		#
	ld b,(hl)		;8630	46		F
	inc hl			;8631	23		#
	ld a,(hl)		;8632	7e		~
	inc hl			;8633	23		#
	ld h,(hl)		;8634	66		f
	ld l,a			;8635	6f		o
	ret			;8636	c9		.
	ld a,(ix+003h)		;8637	dd 7e 03	. ~ .
	jr l8644h		;863a	18 08		. .
sub_863ch:
	ld a,(iy+000h)		;863c	fd 7e 00	. ~ .
	and 00fh		;863f	e6 0f		. .
	jr nz,l8644h		;8641	20 01		  .
	inc a			;8643	3c		<
l8644h:
	push hl			;8644	e5		.
	call sub_8661h		;8645	cd 61 86	. a .
	ld a,l			;8648	7d		}
	rlca			;8649	07		.
	sbc a,a			;864a	9f		.
	ld h,a			;864b	67		g
	add hl,hl		;864c	29		)
	add hl,hl		;864d	29		)
	add hl,hl		;864e	29		)
	add hl,hl		;864f	29		)
	add hl,hl		;8650	29		)
	add hl,bc		;8651	09		.
	ex (sp),hl		;8652	e3		.
	ld l,h			;8653	6c		l
	ld a,l			;8654	7d		}
	rlca			;8655	07		.
	sbc a,a			;8656	9f		.
	ld h,a			;8657	67		g
	add hl,hl		;8658	29		)
	add hl,hl		;8659	29		)
	add hl,hl		;865a	29		)
	add hl,hl		;865b	29		)
	add hl,hl		;865c	29		)
	add hl,de		;865d	19		.
	ex de,hl		;865e	eb		.
	pop bc			;865f	c1		.
	ret			;8660	c9		.
sub_8661h:
	sub 002h		;8661	d6 02		. .
	sub 003h		;8663	d6 03		. .
	jr c,l8684h		;8665	38 1d		8 .
	dec a			;8667	3d		=
	sub 003h		;8668	d6 03		. .
	jr c,l8675h		;866a	38 09		8 .
	ld bc,(0ca47h)		;866c	ed 4b 47 ca	. K G .
	ld de,(0ca49h)		;8670	ed 5b 49 ca	. [ I .
	ret			;8674	c9		.
l8675h:
	ld a,(0cad8h)		;8675	3a d8 ca	: . .
	bit 7,a			;8678	cb 7f		. .
	jr nz,l8693h		;867a	20 17		  .
	ld a,(0caf8h)		;867c	3a f8 ca	: . .
	bit 7,a			;867f	cb 7f		. .
	jr nz,l869ch		;8681	20 19		  .
	ret			;8683	c9		.
l8684h:
	ld a,(0cad8h)		;8684	3a d8 ca	: . .
	bit 7,a			;8687	cb 7f		. .
	jr z,l8693h		;8689	28 08		( .
	ld a,(0caf8h)		;868b	3a f8 ca	: . .
	bit 7,a			;868e	cb 7f		. .
	jr z,l869ch		;8690	28 0a		( .
	ret			;8692	c9		.
l8693h:
	ld bc,(0cac7h)		;8693	ed 4b c7 ca	. K . .
	ld de,(0cac9h)		;8697	ed 5b c9 ca	. [ . .
	ret			;869b	c9		.
l869ch:
	ld bc,(0cae7h)		;869c	ed 4b e7 ca	. K . .
	ld de,(0cae9h)		;86a0	ed 5b e9 ca	. [ . .
	ret			;86a4	c9		.
sub_86a5h:
	ld (ix+000h),a		;86a5	dd 77 00	. w .
	ld a,(iy+000h)		;86a8	fd 7e 00	. ~ .
	ld (ix+003h),a		;86ab	dd 77 03	. w .
	ret			;86ae	c9		.
sub_86afh:
	call 075c2h		;86af	cd c2 75	. . u
	ret z			;86b2	c8		.
	jp c,l87dbh		;86b3	da db 87	. . .
	bit 4,a			;86b6	cb 67		. g
	call nz,sub_86cbh	;86b8	c4 cb 86	. . .
	jp l87dbh		;86bb	c3 db 87	. . .
sub_86beh:
	call 075c2h		;86be	cd c2 75	. . u
	ret z			;86c1	c8		.
	jp c,l87dbh		;86c2	da db 87	. . .
	bit 4,a			;86c5	cb 67		. g
	jp nz,sub_86cbh		;86c7	c2 cb 86	. . .
	ret			;86ca	c9		.
sub_86cbh:
	call 076f1h		;86cb	cd f1 76	. . v
	ex de,hl		;86ce	eb		.
	ld a,(hl)		;86cf	7e		~
	cp 0a7h			;86d0	fe a7		. .
	ret c			;86d2	d8		.
	inc a			;86d3	3c		<
	cp 0afh			;86d4	fe af		. .
	jr z,l86e2h		;86d6	28 0a		( .
	ret nc			;86d8	d0		.
	ld (hl),a		;86d9	77		w
	ld a,01eh		;86da	3e 1e		> .
	call 04af5h		;86dc	cd f5 4a	. . J
	jp l87dbh		;86df	c3 db 87	. . .
l86e2h:
	ld (hl),000h		;86e2	36 00		6 .
	ld a,01fh		;86e4	3e 1f		> .
	call 04af5h		;86e6	cd f5 4a	. . J
	jp l87dbh		;86e9	c3 db 87	. . .
sub_86ech:
	ld a,(ix+004h)		;86ec	dd 7e 04	. ~ .
	or a			;86ef	b7		.
	jp nz,l87dbh		;86f0	c2 db 87	. . .
	ld a,(ix+008h)		;86f3	dd 7e 08	. ~ .
	cp 018h			;86f6	fe 18		. .
	jp nc,l87dbh		;86f8	d2 db 87	. . .
	ld a,(ix+00ah)		;86fb	dd 7e 0a	. ~ .
	cp 020h			;86fe	fe 20		.  
	ret c			;8700	d8		.
	jp l87dbh		;8701	c3 db 87	. . .
l8704h:
	push hl			;8704	e5		.
l8705h:
	ld hl,0f0f9h		;8705	21 f9 f0	! . .
	ld (hl),000h		;8708	36 00		6 .
	pop hl			;870a	e1		.
	ld hl,0cc40h		;870b	21 40 cc	! @ .
	ld bc,000ffh		;870e	01 ff 00	. . .
	call 04648h		;8711	cd 48 46	. H F
	jr l871eh		;8714	18 08		. .
	ld c,000h		;8716	0e 00		. .
	jr l873dh		;8718	18 23		. #
sub_871ah:
	ld c,006h		;871a	0e 06		. .
	jr l873dh		;871c	18 1f		. .
l871eh:
	call sub_8732h		;871e	cd 32 87	. 2 .
	ld a,(0cb08h)		;8721	3a 08 cb	: . .
	call 04e79h		;8724	cd 79 4e	. y N
	xor a			;8727	af		.
	ld c,000h		;8728	0e 00		. .
	ld hl,00040h		;872a	21 40 00	! @ .
	ld de,0c9a0h		;872d	11 a0 c9	. . .
	jr l8749h		;8730	18 17		. .
sub_8732h:
	ld a,(0cb41h)		;8732	3a 41 cb	: A .
	ld c,000h		;8735	0e 00		. .
	cp 00ah			;8737	fe 0a		. .
	jr nz,l873dh		;8739	20 02		  .
	ld c,006h		;873b	0e 06		. .
l873dh:
	ld a,(0cb08h)		;873d	3a 08 cb	: . .
	call 04e79h		;8740	cd 79 4e	. y N
	ld hl,00020h		;8743	21 20 00	!   .
	ld de,0ca00h		;8746	11 00 ca	. . .
l8749h:
	push de			;8749	d5		.
	push hl			;874a	e5		.
	add a,a			;874b	87		.
	add a,c			;874c	81		.
	ld l,a			;874d	6f		o
	ld h,000h		;874e	26 00		& .
	add hl,hl		;8750	29		)
	add hl,hl		;8751	29		)
	add hl,hl		;8752	29		)
	add hl,hl		;8753	29		)
	add hl,hl		;8754	29		)
	ld de,l89b0h		;8755	11 b0 89	. . .
	add hl,de		;8758	19		.
	pop bc			;8759	c1		.
	pop de			;875a	d1		.
	ex de,hl		;875b	eb		.
	jp l87fbh		;875c	c3 fb 87	. . .
sub_875fh:
	call 075c2h		;875f	cd c2 75	. . u
	bit 5,a			;8762	cb 6f		. o
	jp nz,l87bfh		;8764	c2 bf 87	. . .
	bit 1,a			;8767	cb 4f		. O
	ret z			;8769	c8		.
	ld (ix+004h),0ffh	;876a	dd 36 04 ff	. 6 . .
	ret			;876e	c9		.
sub_876fh:
	ld ix,0ca40h		;876f	dd 21 40 ca	. ! @ .
	ld de,00140h		;8773	11 40 01	. @ .
	ld hl,001e0h		;8776	21 e0 01	! . .
	call sub_875fh		;8779	cd 5f 87	. _ .
	ld ix,0ca40h		;877c	dd 21 40 ca	. ! @ .
	ld de,001c0h		;8780	11 c0 01	. . .
	ld hl,001e0h		;8783	21 e0 01	! . .
	call sub_875fh		;8786	cd 5f 87	. _ .
	ret			;8789	c9		.
l878ah:
	call sub_876fh		;878a	cd 6f 87	. o .
	ld ix,0cc40h		;878d	dd 21 40 cc	. ! @ .
	ld b,008h		;8791	06 08		. .
l8793h:
	ld a,(ix+000h)		;8793	dd 7e 00	. ~ .
	or a			;8796	b7		.
	push bc			;8797	c5		.
	call nz,sub_87a4h	;8798	c4 a4 87	. . .
	pop bc			;879b	c1		.
	ld de,00020h		;879c	11 20 00	.   .
	add ix,de		;879f	dd 19		. .
	djnz l8793h		;87a1	10 f0		. .
	ret			;87a3	c9		.
sub_87a4h:
	cp 009h			;87a4	fe 09		. .
	jp nc,04ae0h		;87a6	d2 e0 4a	. . J
	call 0461ah		;87a9	cd 1a 46	. . F
	cp (hl)			;87ac	be		.
	add a,a			;87ad	87		.
	cp (hl)			;87ae	be		.
	add a,a			;87af	87		.
	cp (hl)			;87b0	be		.
	add a,a			;87b1	87		.
	cp (hl)			;87b2	be		.
	add a,a			;87b3	87		.
	ld c,(hl)		;87b4	4e		N
	adc a,l			;87b5	8d		.
	cp (hl)			;87b6	be		.
	add a,a			;87b7	87		.
	cp (hl)			;87b8	be		.
	add a,a			;87b9	87		.
	sbc a,e			;87ba	9b		.
	adc a,(hl)		;87bb	8e		.
	ld (hl),a		;87bc	77		w
	adc a,b			;87bd	88		.
	ret			;87be	c9		.
l87bfh:
	ld c,000h		;87bf	0e 00		. .
	ld a,(iy+000h)		;87c1	fd 7e 00	. ~ .
	cp 003h			;87c4	fe 03		. .
	ret nz			;87c6	c0		.
	ld a,(iy+001h)		;87c7	fd 7e 01	. ~ .
	dec a			;87ca	3d		=
	ret nz			;87cb	c0		.
	push iy			;87cc	fd e5		. .
	call sub_83a4h		;87ce	cd a4 83	. . .
	pop ix			;87d1	dd e1		. .
	call 06e98h		;87d3	cd 98 6e	. . n
	ld a,009h		;87d6	3e 09		> .
	jp 04af5h		;87d8	c3 f5 4a	. . J
l87dbh:
	ld (ix+000h),000h	;87db	dd 36 00 00	. 6 . .
	or a			;87df	b7		.
	ret			;87e0	c9		.
sub_87e1h:
	ld de,00020h		;87e1	11 20 00	.   .
l87e4h:
	ld a,(ix+000h)		;87e4	dd 7e 00	. ~ .
	and a			;87e7	a7		.
	jr z,l87f0h		;87e8	28 06		( .
	add ix,de		;87ea	dd 19		. .
	djnz l87e4h		;87ec	10 f6		. .
	scf			;87ee	37		7
	ret			;87ef	c9		.
l87f0h:
	push ix			;87f0	dd e5		. .
	pop hl			;87f2	e1		.
	xor a			;87f3	af		.
	ld b,020h		;87f4	06 20		.  
l87f6h:
	ld (hl),a		;87f6	77		w
	inc l			;87f7	2c		,
	djnz l87f6h		;87f8	10 fc		. .
	ret			;87fa	c9		.
l87fbh:
	push de			;87fb	d5		.
	call sub_880dh		;87fc	cd 0d 88	. . .
	ld de,00800h		;87ff	11 00 08	. . .
	add hl,de		;8802	19		.
	pop de			;8803	d1		.
	push de			;8804	d5		.
	call sub_880dh		;8805	cd 0d 88	. . .
	ld de,00800h		;8808	11 00 08	. . .
	add hl,de		;880b	19		.
	pop de			;880c	d1		.
sub_880dh:
	push bc			;880d	c5		.
	push hl			;880e	e5		.
	ex de,hl		;880f	eb		.
	call 046ach		;8810	cd ac 46	. . F
	pop hl			;8813	e1		.
	pop bc			;8814	c1		.
	ret			;8815	c9		.
l8816h:
	push ix			;8816	dd e5		. .
	pop hl			;8818	e1		.
	ld a,(hl)		;8819	7e		~
	ld de,00020h		;881a	11 20 00	.   .
	add hl,de		;881d	19		.
	or (hl)			;881e	b6		.
	add hl,de		;881f	19		.
	or (hl)			;8820	b6		.
	ret nz			;8821	c0		.
	push ix			;8822	dd e5		. .
	ld b,003h		;8824	06 03		. .
	call sub_87e1h		;8826	cd e1 87	. . .
	call sub_883bh		;8829	cd 3b 88	. ; .
	ld (ix+003h),005h	;882c	dd 36 03 05	. 6 . .
	ld (ix+005h),004h	;8830	dd 36 05 04	. 6 . .
	pop ix			;8834	dd e1		. .
	ld b,003h		;8836	06 03		. .
	call sub_87e1h		;8838	cd e1 87	. . .
sub_883bh:
	xor a			;883b	af		.
	ld (0cb1dh),a		;883c	32 1d cb	2 . .
	ld a,008h		;883f	3e 08		> .
	call sub_86a5h		;8841	cd a5 86	. . .
	ld (ix+014h),003h	;8844	dd 36 14 03	. 6 . .
	ld (ix+013h),003h	;8848	dd 36 13 03	. 6 . .
	xor a			;884c	af		.
	ld hl,0000ch		;884d	21 0c 00	! . .
	call sub_863ch		;8850	cd 3c 86	. < .
	ld (ix+00ah),d		;8853	dd 72 0a	. r .
	ld (ix+009h),e		;8856	dd 73 09	. s .
	ld (ix+008h),b		;8859	dd 70 08	. p .
	ld (ix+007h),c		;885c	dd 71 07	. q .
	ld de,00180h		;885f	11 80 01	. . .
	call 06bfdh		;8862	cd fd 6b	. . k
	ld (ix+015h),005h	;8865	dd 36 15 05	. 6 . .
	ld (ix+017h),005h	;8869	dd 36 17 05	. 6 . .
	call sub_8950h		;886d	cd 50 89	. P .
	ld a,00ch		;8870	3e 0c		> .
	call 04af5h		;8872	cd f5 4a	. . J
	or a			;8875	b7		.
	ret			;8876	c9		.
	call sub_8885h		;8877	cd 85 88	. . .
	call 06a7fh		;887a	cd 7f 6a	. . j
	ld a,(ix+000h)		;887d	dd 7e 00	. ~ .
	or a			;8880	b7		.
	jp nz,077d0h		;8881	c2 d0 77	. . w
	ret			;8884	c9		.
sub_8885h:
	ld a,(ix+001h)		;8885	dd 7e 01	. ~ .
	cp 006h			;8888	fe 06		. .
	jp nc,04ae0h		;888a	d2 e0 4a	. . J
	call 0461ah		;888d	cd 1a 46	. . F
	sbc a,h			;8890	9c		.
	adc a,b			;8891	88		.
	or b			;8892	b0		.
	adc a,b			;8893	88		.
	call nz,0f988h		;8894	c4 88 f9	. . .
	adc a,b			;8897	88		.
	inc e			;8898	1c		.
	adc a,c			;8899	89		.
	inc (hl)		;889a	34		4
	adc a,c			;889b	89		.
	call sub_88e6h		;889c	cd e6 88	. . .
	dec (ix+017h)		;889f	dd 35 17	. 5 .
	ret nz			;88a2	c0		.
	ld (ix+017h),005h	;88a3	dd 36 17 05	. 6 . .
	ld de,000c0h		;88a7	11 c0 00	. . .
	call 06bfdh		;88aa	cd fd 6b	. . k
	jp l894ch		;88ad	c3 4c 89	. L .
	call sub_88e6h		;88b0	cd e6 88	. . .
	dec (ix+017h)		;88b3	dd 35 17	. 5 .
	ret nz			;88b6	c0		.
	ld (ix+017h),005h	;88b7	dd 36 17 05	. 6 . .
	ld de,00040h		;88bb	11 40 00	. @ .
	call 06bfdh		;88be	cd fd 6b	. . k
	jp l894ch		;88c1	c3 4c 89	. L .
	call sub_88e6h		;88c4	cd e6 88	. . .
	dec (ix+017h)		;88c7	dd 35 17	. 5 .
	ret nz			;88ca	c0		.
l88cbh:
	ld (ix+017h),003h	;88cb	dd 36 17 03	. 6 . .
	ld a,(ix+005h)		;88cf	dd 7e 05	. ~ .
	and 004h		;88d2	e6 04		. .
	inc a			;88d4	3c		<
	ld (ix+005h),a		;88d5	dd 77 05	. w .
	call sub_8950h		;88d8	cd 50 89	. P .
	ld de,00000h		;88db	11 00 00	. . .
	call 06bfdh		;88de	cd fd 6b	. . k
	ld (ix+001h),003h	;88e1	dd 36 01 03	. 6 . .
	ret			;88e5	c9		.
sub_88e6h:
	ld a,(ix+00ah)		;88e6	dd 7e 0a	. ~ .
	cp 01dh			;88e9	fe 1d		. .
	jr nc,l88cbh		;88eb	30 de		0 .
	ld h,001h		;88ed	26 01		& .
	ld d,h			;88ef	54		T
	ld l,000h		;88f0	2e 00		. .
	ld e,l			;88f2	5d		]
	call 075c2h		;88f3	cd c2 75	. . u
	ret z			;88f6	c8		.
	jr l88cbh		;88f7	18 d2		. .
	dec (ix+017h)		;88f9	dd 35 17	. 5 .
	ret nz			;88fc	c0		.
	ld (ix+017h),005h	;88fd	dd 36 17 05	. 6 . .
	ld a,(ix+005h)		;8901	dd 7e 05	. ~ .
	inc a			;8904	3c		<
	ld (ix+005h),a		;8905	dd 77 05	. w .
	push af			;8908	f5		.
	call sub_8950h		;8909	cd 50 89	. P .
	pop af			;890c	f1		.
	and 003h		;890d	e6 03		. .
	cp 003h			;890f	fe 03		. .
	ret nz			;8911	c0		.
	call sub_8973h		;8912	cd 73 89	. s .
	ld a,00dh		;8915	3e 0d		> .
	call 04af5h		;8917	cd f5 4a	. . J
	jr l894ch		;891a	18 30		. 0
	dec (ix+017h)		;891c	dd 35 17	. 5 .
	ret nz			;891f	c0		.
	bit 0,(ix+003h)		;8920	dd cb 03 46	. . . F
	jr z,l894ch		;8924	28 26		( &
	call 04e65h		;8926	cd 65 4e	. e N
	call 04dd7h		;8929	cd d7 4d	. . M
	call 07523h		;892c	cd 23 75	. # u
	call 07058h		;892f	cd 58 70	. X p
	jr l894ch		;8932	18 18		. .
	bit 0,(ix+003h)		;8934	dd cb 03 46	. . . F
	jp z,l87dbh		;8938	ca db 87	. . .
	call 0708bh		;893b	cd 8b 70	. . p
	ld a,00eh		;893e	3e 0e		> .
	call 04af5h		;8940	cd f5 4a	. . J
	call 07523h		;8943	cd 23 75	. # u
	call 07058h		;8946	cd 58 70	. X p
	jp l87dbh		;8949	c3 db 87	. . .
l894ch:
	inc (ix+001h)		;894c	dd 34 01	. 4 .
	ret			;894f	c9		.
sub_8950h:
	ld a,(ix+005h)		;8950	dd 7e 05	. ~ .
	bit 2,a			;8953	cb 57		. W
	ret nz			;8955	c0		.
	cp 003h			;8956	fe 03		. .
	jr c,l895ch		;8958	38 02		8 .
	ld a,002h		;895a	3e 02		> .
l895ch:
	add a,a			;895c	87		.
	add a,a			;895d	87		.
	add a,a			;895e	87		.
	add a,a			;895f	87		.
	add a,a			;8960	87		.
	add a,a			;8961	87		.
	ld l,a			;8962	6f		o
	ld h,000h		;8963	26 00		& .
	ld de,l8b30h		;8965	11 30 8b	. 0 .
	add hl,de		;8968	19		.
	ex de,hl		;8969	eb		.
	ld bc,00040h		;896a	01 40 00	. @ .
	ld hl,0ca20h		;896d	21 20 ca	!   .
	jp l87fbh		;8970	c3 fb 87	. . .
sub_8973h:
	ld bc,01000h		;8973	01 00 10	. . .
	ld hl,0ef01h		;8976	21 01 ef	! . .
l8979h:
	ld a,(hl)		;8979	7e		~
	and 0e0h		;897a	e6 e0		. .
	call sub_89aah		;897c	cd aa 89	. . .
	rrca			;897f	0f		.
	ld d,a			;8980	57		W
	inc hl			;8981	23		#
	inc hl			;8982	23		#
	ld a,(hl)		;8983	7e		~
	and 0e0h		;8984	e6 e0		. .
	call sub_89aah		;8986	cd aa 89	. . .
	rlca			;8989	07		.
	rlca			;898a	07		.
	rlca			;898b	07		.
	ld e,a			;898c	5f		_
	inc hl			;898d	23		#
	inc hl			;898e	23		#
	ld a,(hl)		;898f	7e		~
	and 0e0h		;8990	e6 e0		. .
	call sub_89aah		;8992	cd aa 89	. . .
	rlca			;8995	07		.
	rlca			;8996	07		.
	rlca			;8997	07		.
	or d			;8998	b2		.
	ld d,a			;8999	57		W
	inc hl			;899a	23		#
	inc hl			;899b	23		#
	ld a,c			;899c	79		y
	inc c			;899d	0c		.
	push af			;899e	f5		.
	push hl			;899f	e5		.
	push bc			;89a0	c5		.
	call 04776h		;89a1	cd 76 47	. v G
	pop bc			;89a4	c1		.
	pop hl			;89a5	e1		.
	pop af			;89a6	f1		.
	djnz l8979h		;89a7	10 d0		. .
	ret			;89a9	c9		.
sub_89aah:
	sub 040h		;89aa	d6 40		. @
	ret nc			;89ac	d0		.
	ld a,000h		;89ad	3e 00		> .
	ret			;89af	c9		.
l89b0h:
	nop			;89b0	00		.
	nop			;89b1	00		.
	nop			;89b2	00		.
	nop			;89b3	00		.
	nop			;89b4	00		.
	nop			;89b5	00		.
	inc a			;89b6	3c		<
	inc a			;89b7	3c		<
	inc a			;89b8	3c		<
	inc a			;89b9	3c		<
	nop			;89ba	00		.
	nop			;89bb	00		.
	nop			;89bc	00		.
	nop			;89bd	00		.
	nop			;89be	00		.
	nop			;89bf	00		.
	nop			;89c0	00		.
	nop			;89c1	00		.
	nop			;89c2	00		.
	nop			;89c3	00		.
	nop			;89c4	00		.
	nop			;89c5	00		.
	inc a			;89c6	3c		<
	inc a			;89c7	3c		<
	inc a			;89c8	3c		<
	inc a			;89c9	3c		<
	nop			;89ca	00		.
	nop			;89cb	00		.
	nop			;89cc	00		.
	nop			;89cd	00		.
	nop			;89ce	00		.
	nop			;89cf	00		.
	nop			;89d0	00		.
	nop			;89d1	00		.
	ld bc,00101h		;89d2	01 01 01	. . .
	ld bc,00000h		;89d5	01 00 00	. . .
	nop			;89d8	00		.
	nop			;89d9	00		.
	ld bc,00101h		;89da	01 01 01	. . .
	ld bc,00000h		;89dd	01 00 00	. . .
	nop			;89e0	00		.
	nop			;89e1	00		.
	add a,b			;89e2	80		.
	add a,b			;89e3	80		.
	add a,b			;89e4	80		.
	add a,b			;89e5	80		.
	nop			;89e6	00		.
	nop			;89e7	00		.
	nop			;89e8	00		.
	nop			;89e9	00		.
	add a,b			;89ea	80		.
	add a,b			;89eb	80		.
	add a,b			;89ec	80		.
	add a,b			;89ed	80		.
	nop			;89ee	00		.
	nop			;89ef	00		.
	nop			;89f0	00		.
	nop			;89f1	00		.
	nop			;89f2	00		.
	nop			;89f3	00		.
	nop			;89f4	00		.
	nop			;89f5	00		.
	inc e			;89f6	1c		.
	ld a,063h		;89f7	3e 63		> c
	ld a,01ch		;89f9	3e 1c		> .
	nop			;89fb	00		.
	nop			;89fc	00		.
	nop			;89fd	00		.
	nop			;89fe	00		.
	nop			;89ff	00		.
	nop			;8a00	00		.
	nop			;8a01	00		.
	nop			;8a02	00		.
	nop			;8a03	00		.
	nop			;8a04	00		.
	nop			;8a05	00		.
	inc e			;8a06	1c		.
	ld a,063h		;8a07	3e 63		> c
	ld a,01ch		;8a09	3e 1c		> .
	nop			;8a0b	00		.
	nop			;8a0c	00		.
	nop			;8a0d	00		.
	nop			;8a0e	00		.
	nop			;8a0f	00		.
	nop			;8a10	00		.
	nop			;8a11	00		.
	ld bc,00101h		;8a12	01 01 01	. . .
	ld bc,00000h		;8a15	01 00 00	. . .
	nop			;8a18	00		.
	nop			;8a19	00		.
	ld bc,00101h		;8a1a	01 01 01	. . .
	ld bc,00000h		;8a1d	01 00 00	. . .
	nop			;8a20	00		.
	nop			;8a21	00		.
	add a,b			;8a22	80		.
	add a,b			;8a23	80		.
	add a,b			;8a24	80		.
	add a,b			;8a25	80		.
	nop			;8a26	00		.
	nop			;8a27	00		.
	nop			;8a28	00		.
	nop			;8a29	00		.
	add a,b			;8a2a	80		.
	add a,b			;8a2b	80		.
	add a,b			;8a2c	80		.
	add a,b			;8a2d	80		.
	nop			;8a2e	00		.
	nop			;8a2f	00		.
l8a30h:
	nop			;8a30	00		.
	nop			;8a31	00		.
	nop			;8a32	00		.
	nop			;8a33	00		.
	nop			;8a34	00		.
	inc e			;8a35	1c		.
	ld a,063h		;8a36	3e 63		> c
	pop bc			;8a38	c1		.
	ld h,e			;8a39	63		c
	ld a,01ch		;8a3a	3e 1c		> .
	nop			;8a3c	00		.
	nop			;8a3d	00		.
	nop			;8a3e	00		.
	nop			;8a3f	00		.
	nop			;8a40	00		.
	nop			;8a41	00		.
	nop			;8a42	00		.
	nop			;8a43	00		.
	nop			;8a44	00		.
	inc e			;8a45	1c		.
	ld a,063h		;8a46	3e 63		> c
	pop bc			;8a48	c1		.
	ld h,e			;8a49	63		c
	ld a,01ch		;8a4a	3e 1c		> .
	nop			;8a4c	00		.
	nop			;8a4d	00		.
	nop			;8a4e	00		.
	nop			;8a4f	00		.
	nop			;8a50	00		.
	nop			;8a51	00		.
	ld bc,00101h		;8a52	01 01 01	. . .
	ld bc,00000h		;8a55	01 00 00	. . .
	nop			;8a58	00		.
	nop			;8a59	00		.
	ld bc,00101h		;8a5a	01 01 01	. . .
	ld bc,00000h		;8a5d	01 00 00	. . .
	add a,b			;8a60	80		.
	add a,b			;8a61	80		.
	ret nz			;8a62	c0		.
	ret nz			;8a63	c0		.
	ret nz			;8a64	c0		.
	ret nz			;8a65	c0		.
	add a,b			;8a66	80		.
	nop			;8a67	00		.
	add a,b			;8a68	80		.
	add a,b			;8a69	80		.
	ret nz			;8a6a	c0		.
	ret nz			;8a6b	c0		.
	ret nz			;8a6c	c0		.
	ret nz			;8a6d	c0		.
	add a,b			;8a6e	80		.
	nop			;8a6f	00		.
	nop			;8a70	00		.
	nop			;8a71	00		.
	nop			;8a72	00		.
	nop			;8a73	00		.
	dec b			;8a74	05		.
	nop			;8a75	00		.
	ld (bc),a		;8a76	02		.
	nop			;8a77	00		.
	nop			;8a78	00		.
	inc b			;8a79	04		.
	nop			;8a7a	00		.
	dec b			;8a7b	05		.
	nop			;8a7c	00		.
	nop			;8a7d	00		.
	nop			;8a7e	00		.
	nop			;8a7f	00		.
	nop			;8a80	00		.
	nop			;8a81	00		.
	nop			;8a82	00		.
	nop			;8a83	00		.
	ret po			;8a84	e0		.
	ld a,b			;8a85	78		x
	cp h			;8a86	bc		.
	inc e			;8a87	1c		.
	inc e			;8a88	1c		.
	cp h			;8a89	bc		.
	ld a,b			;8a8a	78		x
	ret po			;8a8b	e0		.
	nop			;8a8c	00		.
	nop			;8a8d	00		.
	nop			;8a8e	00		.
	nop			;8a8f	00		.
	nop			;8a90	00		.
	jr $+26			;8a91	18 18		. .
	jr $+26			;8a93	18 18		. .
	jr l8aafh		;8a95	18 18		. .
	nop			;8a97	00		.
	jr l8ab2h		;8a98	18 18		. .
	jr $+26			;8a9a	18 18		. .
	jr l8ab6h		;8a9c	18 18		. .
	nop			;8a9e	00		.
	nop			;8a9f	00		.
	nop			;8aa0	00		.
	jr l8abbh		;8aa1	18 18		. .
	jr $+26			;8aa3	18 18		. .
	jr l8abfh		;8aa5	18 18		. .
	nop			;8aa7	00		.
	jr l8ac2h		;8aa8	18 18		. .
	jr l8ac4h		;8aaa	18 18		. .
	jr l8ac6h		;8aac	18 18		. .
	nop			;8aae	00		.
l8aafh:
	nop			;8aaf	00		.
	nop			;8ab0	00		.
	nop			;8ab1	00		.
l8ab2h:
	rla			;8ab2	17		.
	ld bc,0000ah		;8ab3	01 0a 00	. . .
l8ab6h:
	ld (bc),a		;8ab6	02		.
	nop			;8ab7	00		.
	nop			;8ab8	00		.
	inc b			;8ab9	04		.
	nop			;8aba	00		.
l8abbh:
	ld a,(bc)		;8abb	0a		.
	ld bc,00017h		;8abc	01 17 00	. . .
l8abfh:
	nop			;8abf	00		.
	nop			;8ac0	00		.
	nop			;8ac1	00		.
l8ac2h:
	add a,b			;8ac2	80		.
	ret po			;8ac3	e0		.
l8ac4h:
	ret p			;8ac4	f0		.
	ld a,b			;8ac5	78		x
l8ac6h:
	call m,03c3ch		;8ac6	fc 3c 3c	. < <
	call m,0f078h		;8ac9	fc 78 f0	. x .
	ret po			;8acc	e0		.
	add a,b			;8acd	80		.
	nop			;8ace	00		.
	nop			;8acf	00		.
	nop			;8ad0	00		.
	inc e			;8ad1	1c		.
	inc e			;8ad2	1c		.
	inc e			;8ad3	1c		.
	inc e			;8ad4	1c		.
	inc e			;8ad5	1c		.
	inc e			;8ad6	1c		.
	nop			;8ad7	00		.
	inc e			;8ad8	1c		.
	inc e			;8ad9	1c		.
	inc e			;8ada	1c		.
	inc e			;8adb	1c		.
	inc e			;8adc	1c		.
	inc e			;8add	1c		.
	nop			;8ade	00		.
	nop			;8adf	00		.
	nop			;8ae0	00		.
	jr c,l8b1bh		;8ae1	38 38		8 8
	jr c,l8b1dh		;8ae3	38 38		8 8
	jr c,l8b1fh		;8ae5	38 38		8 8
	nop			;8ae7	00		.
	jr c,l8b22h		;8ae8	38 38		8 8
	jr c,l8b24h		;8aea	38 38		8 8
	jr c,l8b26h		;8aec	38 38		8 8
	nop			;8aee	00		.
	nop			;8aef	00		.
	sbc a,a			;8af0	9f		.
	inc bc			;8af1	03		.
	daa			;8af2	27		'
	nop			;8af3	00		.
	dec d			;8af4	15		.
	nop			;8af5	00		.
	ld bc,00000h		;8af6	01 00 00	. . .
	add hl,bc		;8af9	09		.
	nop			;8afa	00		.
	dec b			;8afb	05		.
	nop			;8afc	00		.
	daa			;8afd	27		'
	inc bc			;8afe	03		.
	sbc a,a			;8aff	9f		.
	nop			;8b00	00		.
	ret nz			;8b01	c0		.
	ret po			;8b02	e0		.
	ret p			;8b03	f0		.
l8b04h:
	ret m			;8b04	f8		.
	jr c,l8b83h		;8b05	38 7c		8 |
	inc e			;8b07	1c		.
	inc e			;8b08	1c		.
	ld a,h			;8b09	7c		|
	jr c,l8b04h		;8b0a	38 f8		8 .
	ret p			;8b0c	f0		.
	ret po			;8b0d	e0		.
	ret nz			;8b0e	c0		.
	nop			;8b0f	00		.
	ex af,af'		;8b10	08		.
l8b11h:
	ex af,af'		;8b11	08		.
	inc e			;8b12	1c		.
	inc e			;8b13	1c		.
	inc e			;8b14	1c		.
	inc e			;8b15	1c		.
	ex af,af'		;8b16	08		.
	nop			;8b17	00		.
	ex af,af'		;8b18	08		.
	ex af,af'		;8b19	08		.
	inc e			;8b1a	1c		.
l8b1bh:
	inc e			;8b1b	1c		.
	inc e			;8b1c	1c		.
l8b1dh:
	inc e			;8b1d	1c		.
	ex af,af'		;8b1e	08		.
l8b1fh:
	nop			;8b1f	00		.
	djnz l8b32h		;8b20	10 10		. .
l8b22h:
	jr c,$+58		;8b22	38 38		8 8
l8b24h:
	jr c,$+58		;8b24	38 38		8 8
l8b26h:
	djnz l8b28h		;8b26	10 00		. .
l8b28h:
	djnz l8b3ah		;8b28	10 10		. .
	jr c,l8b64h		;8b2a	38 38		8 8
	jr c,l8b66h		;8b2c	38 38		8 8
	djnz l8b30h		;8b2e	10 00		. .
l8b30h:
	nop			;8b30	00		.
	nop			;8b31	00		.
l8b32h:
	nop			;8b32	00		.
	add hl,bc		;8b33	09		.
	ld bc,0061fh		;8b34	01 1f 06	. . .
	ld b,009h		;8b37	06 09		. .
	add hl,bc		;8b39	09		.
l8b3ah:
	rrca			;8b3a	0f		.
	ld bc,0011fh		;8b3b	01 1f 01	. . .
	ld (bc),a		;8b3e	02		.
	inc b			;8b3f	04		.
	nop			;8b40	00		.
	nop			;8b41	00		.
	nop			;8b42	00		.
	ld l,b			;8b43	68		h
	ex af,af'		;8b44	08		.
	ex af,af'		;8b45	08		.
	sub h			;8b46	94		.
	call p,00808h		;8b47	f4 08 08	. . .
	ld l,h			;8b4a	6c		l
	ret m			;8b4b	f8		.
	ex af,af'		;8b4c	08		.
	ret p			;8b4d	f0		.
	nop			;8b4e	00		.
	nop			;8b4f	00		.
	ex af,af'		;8b50	08		.
	inc c			;8b51	0c		.
	ld c,006h		;8b52	0e 06		. .
	ld e,000h		;8b54	1e 00		. .
	add hl,bc		;8b56	09		.
	add hl,bc		;8b57	09		.
	ld b,006h		;8b58	06 06		. .
	nop			;8b5a	00		.
	ld e,000h		;8b5b	1e 00		. .
	ld c,00ch		;8b5d	0e 0c		. .
	ex af,af'		;8b5f	08		.
	nop			;8b60	00		.
	nop			;8b61	00		.
	nop			;8b62	00		.
	sub b			;8b63	90		.
l8b64h:
	ret p			;8b64	f0		.
	ret p			;8b65	f0		.
l8b66h:
	ld l,b			;8b66	68		h
	ex af,af'		;8b67	08		.
	call p,sub_90f4h	;8b68	f4 f4 90	. . .
	nop			;8b6b	00		.
	ret p			;8b6c	f0		.
	nop			;8b6d	00		.
	nop			;8b6e	00		.
	nop			;8b6f	00		.
	nop			;8b70	00		.
	nop			;8b71	00		.
	nop			;8b72	00		.
	ld a,(bc)		;8b73	0a		.
	ld a,(bc)		;8b74	0a		.
	jp m,03535h		;8b75	fa 35 35	. 5 5
	ld c,d			;8b78	4a		J
	ld c,d			;8b79	4a		J
	ld a,d			;8b7a	7a		z
	rrca			;8b7b	0f		.
	jp m,02809h		;8b7c	fa 09 28	. . (
	ex af,af'		;8b7f	08		.
	nop			;8b80	00		.
	nop			;8b81	00		.
	nop			;8b82	00		.
l8b83h:
	ret nc			;8b83	d0		.
	inc d			;8b84	14		.
	inc d			;8b85	14		.
	inc l			;8b86	2c		,
	call pe,01010h		;8b87	ec 10 10	. . .
	call nc,018f4h		;8b8a	d4 f4 18	. . .
l8b8dh:
	ret po			;8b8d	e0		.
	nop			;8b8e	00		.
	nop			;8b8f	00		.
	djnz l8ba2h		;8b90	10 10		. .
	jr nc,$+51		;8b92	30 31		0 1
	pop af			;8b94	f1		.
l8b95h:
	dec b			;8b95	05		.
	ld c,d			;8b96	4a		J
	ld c,d			;8b97	4a		J
	dec (hl)		;8b98	35		5
	dec (hl)		;8b99	35		5
	dec b			;8b9a	05		.
	ret p			;8b9b	f0		.
	ld bc,01030h		;8b9c	01 30 10	. 0 .
	djnz l8ba1h		;8b9f	10 00		. .
l8ba1h:
	nop			;8ba1	00		.
l8ba2h:
	nop			;8ba2	00		.
	jr nz,l8b8dh		;8ba3	20 e8		  .
	ret pe			;8ba5	e8		.
	ret nc			;8ba6	d0		.
	djnz l8b95h		;8ba7	10 ec		. .
	call pe,00828h		;8ba9	ec 28 08	. ( .
	ret po			;8bac	e0		.
	nop			;8bad	00		.
	nop			;8bae	00		.
	nop			;8baf	00		.
	nop			;8bb0	00		.
	nop			;8bb1	00		.
	ld b,00ah		;8bb2	06 0a		. .
	ld a,(bc)		;8bb4	0a		.
	jp m,03535h		;8bb5	fa 35 35	. 5 5
	ld c,d			;8bb8	4a		J
	ld c,d			;8bb9	4a		J
	ld a,d			;8bba	7a		z
	rrca			;8bbb	0f		.
	jp m,03807h		;8bbc	fa 07 38	. . 8
	ld b,000h		;8bbf	06 00		. .
	nop			;8bc1	00		.
	nop			;8bc2	00		.
	ret nc			;8bc3	d0		.
	ld de,02b15h		;8bc4	11 15 2b	. . +
l8bc7h:
	ex de,hl		;8bc7	eb		.
	inc d			;8bc8	14		.
	inc d			;8bc9	14		.
	push de			;8bca	d5		.
	push af			;8bcb	f5		.
	ld a,(de)		;8bcc	1a		.
	ret po			;8bcd	e0		.
	nop			;8bce	00		.
	nop			;8bcf	00		.
	nop			;8bd0	00		.
	ld b,038h		;8bd1	06 38		. 8
	ld sp,005f1h		;8bd3	31 f1 05	1 . .
	ld c,d			;8bd6	4a		J
	ld c,d			;8bd7	4a		J
	dec (hl)		;8bd8	35		5
	dec (hl)		;8bd9	35		5
	dec b			;8bda	05		.
	ret p			;8bdb	f0		.
	ld bc,00638h		;8bdc	01 38 06	. 8 .
	nop			;8bdf	00		.
	nop			;8be0	00		.
	nop			;8be1	00		.
	nop			;8be2	00		.
	jr nz,l8bc7h		;8be3	20 e2		  .
	jp pe,014d4h		;8be5	ea d4 14	. . .
	ex de,hl		;8be8	eb		.
	ex de,hl		;8be9	eb		.
	ld hl,(0e00ah)		;8bea	2a 0a e0	* . .
	nop			;8bed	00		.
	nop			;8bee	00		.
	nop			;8bef	00		.
	nop			;8bf0	00		.
	ld a,(iy+000h)		;8bf1	fd 7e 00	. ~ .
	dec a			;8bf4	3d		=
	jp nz,l8c9ch		;8bf5	c2 9c 8c	. . .
	ld a,(0cb1dh)		;8bf8	3a 1d cb	: . .
	or a			;8bfb	b7		.
	jp nz,l8816h		;8bfc	c2 16 88	. . .
	push ix			;8bff	dd e5		. .
	pop hl			;8c01	e1		.
	ld a,(hl)		;8c02	7e		~
	ld de,00020h		;8c03	11 20 00	.   .
	add hl,de		;8c06	19		.
	or (hl)			;8c07	b6		.
	add hl,de		;8c08	19		.
	or (hl)			;8c09	b6		.
	ret nz			;8c0a	c0		.
	push ix			;8c0b	dd e5		. .
	push bc			;8c0d	c5		.
	call sub_8c35h		;8c0e	cd 35 8c	. 5 .
	pop bc			;8c11	c1		.
	pop ix			;8c12	dd e1		. .
	push ix			;8c14	dd e5		. .
	push bc			;8c16	c5		.
	call sub_8c35h		;8c17	cd 35 8c	. 5 .
	pop bc			;8c1a	c1		.
	pop ix			;8c1b	dd e1		. .
	ld hl,00100h		;8c1d	21 00 01	! . .
	call nc,sub_8c2eh	;8c20	d4 2e 8c	. . .
	call sub_8c35h		;8c23	cd 35 8c	. 5 .
	ld hl,0ff00h		;8c26	21 00 ff	! . .
	call nc,sub_8c2eh	;8c29	d4 2e 8c	. . .
	or a			;8c2c	b7		.
	ret			;8c2d	c9		.
sub_8c2eh:
	ld (ix+00ch),h		;8c2e	dd 74 0c	. t .
	ld (ix+00bh),l		;8c31	dd 75 0b	. u .
	ret			;8c34	c9		.
sub_8c35h:
	call sub_8c47h		;8c35	cd 47 8c	. G .
	ret c			;8c38	d8		.
	push iy			;8c39	fd e5		. .
	call sub_8d51h		;8c3b	cd 51 8d	. Q .
	pop iy			;8c3e	fd e1		. .
	ld a,003h		;8c40	3e 03		> .
	call 04af0h		;8c42	cd f0 4a	. . J
	or a			;8c45	b7		.
	ret			;8c46	c9		.
sub_8c47h:
	call sub_87e1h		;8c47	cd e1 87	. . .
	ret c			;8c4a	d8		.
	ld a,(0cb08h)		;8c4b	3a 08 cb	: . .
	call 04e79h		;8c4e	cd 79 4e	. y N
	inc a			;8c51	3c		<
	add a,a			;8c52	87		.
	ld (ix+006h),a		;8c53	dd 77 06	. w .
	ld a,(iy+000h)		;8c56	fd 7e 00	. ~ .
	ld (ix+003h),a		;8c59	dd 77 03	. w .
	ld bc,l8ddch		;8c5c	01 dc 8d	. . .
	call sub_861fh		;8c5f	cd 1f 86	. . .
	ld (ix+00bh),e		;8c62	dd 73 0b	. s .
	ld (ix+00ch),d		;8c65	dd 72 0c	. r .
	ld (ix+00dh),c		;8c68	dd 71 0d	. q .
	ld (ix+00eh),b		;8c6b	dd 70 0e	. p .
	call sub_863ch		;8c6e	cd 3c 86	. < .
	ld (ix+00ah),d		;8c71	dd 72 0a	. r .
	ld (ix+009h),e		;8c74	dd 73 09	. s .
	ld (ix+008h),b		;8c77	dd 70 08	. p .
	ld (ix+007h),c		;8c7a	dd 71 07	. q .
	ld (ix+014h),003h	;8c7d	dd 36 14 03	. 6 . .
	ld (ix+013h),003h	;8c81	dd 36 13 03	. 6 . .
	ld a,004h		;8c85	3e 04		> .
	call sub_86a5h		;8c87	cd a5 86	. . .
	ld a,(iy+000h)		;8c8a	fd 7e 00	. ~ .
	dec a			;8c8d	3d		=
	jr nz,l8d0bh		;8c8e	20 7b		  {
	ld a,(0cb08h)		;8c90	3a 08 cb	: . .
	call 04e79h		;8c93	cd 79 4e	. y N
	add a,00fh		;8c96	c6 0f		. .
	ld (ix+005h),a		;8c98	dd 77 05	. w .
	ret			;8c9b	c9		.
l8c9ch:
	ld a,(iy+000h)		;8c9c	fd 7e 00	. ~ .
	dec a			;8c9f	3d		=
	jr nz,l8ca9h		;8ca0	20 07		  .
	ld a,(0cb1dh)		;8ca2	3a 1d cb	: . .
	or a			;8ca5	b7		.
	jp nz,l8816h		;8ca6	c2 16 88	. . .
l8ca9h:
	call sub_8ccdh		;8ca9	cd cd 8c	. . .
	ret c			;8cac	d8		.
	ld a,(0cb08h)		;8cad	3a 08 cb	: . .
	call 04e79h		;8cb0	cd 79 4e	. y N
	inc a			;8cb3	3c		<
	ld (ix+006h),a		;8cb4	dd 77 06	. w .
	push af			;8cb7	f5		.
	push iy			;8cb8	fd e5		. .
	call sub_8d51h		;8cba	cd 51 8d	. Q .
	pop iy			;8cbd	fd e1		. .
	pop af			;8cbf	f1		.
	cp 003h			;8cc0	fe 03		. .
	ld a,004h		;8cc2	3e 04		> .
	jr z,l8cc8h		;8cc4	28 02		( .
	ld a,002h		;8cc6	3e 02		> .
l8cc8h:
	call 04af0h		;8cc8	cd f0 4a	. . J
	or a			;8ccb	b7		.
	ret			;8ccc	c9		.
sub_8ccdh:
	call sub_87e1h		;8ccd	cd e1 87	. . .
	ret c			;8cd0	d8		.
	ld a,(iy+000h)		;8cd1	fd 7e 00	. ~ .
	ld (ix+003h),a		;8cd4	dd 77 03	. w .
	ld bc,l8ddch		;8cd7	01 dc 8d	. . .
	call sub_861fh		;8cda	cd 1f 86	. . .
	ld (ix+00bh),e		;8cdd	dd 73 0b	. s .
	ld (ix+00ch),d		;8ce0	dd 72 0c	. r .
	ld (ix+00dh),c		;8ce3	dd 71 0d	. q .
	ld (ix+00eh),b		;8ce6	dd 70 0e	. p .
	call sub_863ch		;8ce9	cd 3c 86	. < .
	ld (ix+00ah),d		;8cec	dd 72 0a	. r .
	ld (ix+009h),e		;8cef	dd 73 09	. s .
	ld (ix+008h),b		;8cf2	dd 70 08	. p .
	ld (ix+007h),c		;8cf5	dd 71 07	. q .
	ld (ix+014h),003h	;8cf8	dd 36 14 03	. 6 . .
	ld (ix+013h),003h	;8cfc	dd 36 13 03	. 6 . .
	ld a,004h		;8d00	3e 04		> .
	call sub_86a5h		;8d02	cd a5 86	. . .
	ld a,(iy+000h)		;8d05	fd 7e 00	. ~ .
	dec a			;8d08	3d		=
	jr z,l8d1ch		;8d09	28 11		( .
l8d0bh:
	xor a			;8d0b	af		.
	add a,a			;8d0c	87		.
	ld c,a			;8d0d	4f		O
	ld a,(ix+00ch)		;8d0e	dd 7e 0c	. ~ .
	or a			;8d11	b7		.
	jr z,l8d16h		;8d12	28 02		( .
	ld a,001h		;8d14	3e 01		> .
l8d16h:
	add a,c			;8d16	81		.
	ld (ix+005h),a		;8d17	dd 77 05	. w .
	or a			;8d1a	b7		.
	ret			;8d1b	c9		.
l8d1ch:
	ld a,(0cb08h)		;8d1c	3a 08 cb	: . .
	call 04e79h		;8d1f	cd 79 4e	. y N
	add a,00ch		;8d22	c6 0c		. .
	ld (ix+005h),a		;8d24	dd 77 05	. w .
	or a			;8d27	b7		.
	ret			;8d28	c9		.
	ld bc,l8ddch		;8d29	01 dc 8d	. . .
	call sub_861fh		;8d2c	cd 1f 86	. . .
	ld (ix+00bh),e		;8d2f	dd 73 0b	. s .
	ld (ix+00ch),d		;8d32	dd 72 0c	. r .
	ld (ix+00dh),c		;8d35	dd 71 0d	. q .
	ld (ix+00eh),b		;8d38	dd 70 0e	. p .
	ld a,(0cb08h)		;8d3b	3a 08 cb	: . .
	call 04e79h		;8d3e	cd 79 4e	. y N
	add a,a			;8d41	87		.
	ld c,a			;8d42	4f		O
	ld a,d			;8d43	7a		z
	or a			;8d44	b7		.
	jr z,l8d49h		;8d45	28 02		( .
	ld a,001h		;8d47	3e 01		> .
l8d49h:
	add a,c			;8d49	81		.
	ld (ix+005h),a		;8d4a	dd 77 05	. w .
	ret			;8d4d	c9		.
	call 06a7fh		;8d4e	cd 7f 6a	. . j
sub_8d51h:
	call sub_86ech		;8d51	cd ec 86	. . .
	ret nc			;8d54	d0		.
	bit 1,(ix+005h)		;8d55	dd cb 05 4e	. . . N
	jp nz,l8da1h		;8d59	c2 a1 8d	. . .
	call sub_8e0ch		;8d5c	cd 0c 8e	. . .
	jp z,077d0h		;8d5f	ca d0 77	. . w
	ld h,(ix+00eh)		;8d62	dd 66 0e	. f .
	ld l,(ix+00dh)		;8d65	dd 6e 0d	. n .
	ld a,h			;8d68	7c		|
	cpl			;8d69	2f		/
	ld h,a			;8d6a	67		g
	ld a,l			;8d6b	7d		}
	cpl			;8d6c	2f		/
	ld l,a			;8d6d	6f		o
	inc hl			;8d6e	23		#
	sra h			;8d6f	cb 2c		. ,
	rr l			;8d71	cb 1d		. .
	ld bc,00100h		;8d73	01 00 01	. . .
	add hl,bc		;8d76	09		.
	ex de,hl		;8d77	eb		.
	ld h,(ix+00ch)		;8d78	dd 66 0c	. f .
	ld l,(ix+00bh)		;8d7b	dd 6e 0b	. n .
	ld a,h			;8d7e	7c		|
	cpl			;8d7f	2f		/
	ld h,a			;8d80	67		g
	ld a,l			;8d81	7d		}
	cpl			;8d82	2f		/
	ld l,a			;8d83	6f		o
	inc hl			;8d84	23		#
	sra h			;8d85	cb 2c		. ,
	rr l			;8d87	cb 1d		. .
	ld bc,00100h		;8d89	01 00 01	. . .
	add hl,bc		;8d8c	09		.
	call sub_86afh		;8d8d	cd af 86	. . .
	ld de,00100h		;8d90	11 00 01	. . .
	ld hl,00100h		;8d93	21 00 01	! . .
	call sub_86afh		;8d96	cd af 86	. . .
	ld a,(ix+000h)		;8d99	dd 7e 00	. ~ .
	or a			;8d9c	b7		.
	jp nz,077d0h		;8d9d	c2 d0 77	. . w
	ret			;8da0	c9		.
l8da1h:
	call sub_8e0ch		;8da1	cd 0c 8e	. . .
	jp z,077d0h		;8da4	ca d0 77	. . w
	ld de,00080h		;8da7	11 80 00	. . .
	ld hl,00080h		;8daa	21 80 00	! . .
	call sub_86beh		;8dad	cd be 86	. . .
	ld de,00080h		;8db0	11 80 00	. . .
	ld hl,00180h		;8db3	21 80 01	! . .
	call sub_86beh		;8db6	cd be 86	. . .
	ld de,00180h		;8db9	11 80 01	. . .
	ld hl,00180h		;8dbc	21 80 01	! . .
	call sub_86beh		;8dbf	cd be 86	. . .
	ld de,00180h		;8dc2	11 80 01	. . .
	ld hl,00080h		;8dc5	21 80 00	! . .
	call sub_86beh		;8dc8	cd be 86	. . .
	ld de,00100h		;8dcb	11 00 01	. . .
	ld hl,00100h		;8dce	21 00 01	! . .
	call sub_86afh		;8dd1	cd af 86	. . .
	ld a,(ix+000h)		;8dd4	dd 7e 00	. ~ .
	or a			;8dd7	b7		.
	jp nz,077d0h		;8dd8	c2 d0 77	. . w
	ret			;8ddb	c9		.
l8ddch:
	nop			;8ddc	00		.
	nop			;8ddd	00		.
	nop			;8dde	00		.
	ld (bc),a		;8ddf	02		.
	rlca			;8de0	07		.
	ld b,000h		;8de1	06 00		. .
	nop			;8de3	00		.
	nop			;8de4	00		.
	ld (bc),a		;8de5	02		.
	rst 38h			;8de6	ff		.
	nop			;8de7	00		.
	nop			;8de8	00		.
	ld (bc),a		;8de9	02		.
	nop			;8dea	00		.
	nop			;8deb	00		.
	rst 38h			;8dec	ff		.
	nop			;8ded	00		.
	nop			;8dee	00		.
	nop			;8def	00		.
	nop			;8df0	00		.
	cp 0ffh			;8df1	fe ff		. .
	nop			;8df3	00		.
	nop			;8df4	00		.
	nop			;8df5	00		.
	nop			;8df6	00		.
	cp 007h			;8df7	fe 07		. .
	nop			;8df9	00		.
	nop			;8dfa	00		.
	nop			;8dfb	00		.
	nop			;8dfc	00		.
	cp 0ffh			;8dfd	fe ff		. .
	nop			;8dff	00		.
	nop			;8e00	00		.
	cp 000h			;8e01	fe 00		. .
	nop			;8e03	00		.
	rst 38h			;8e04	ff		.
	nop			;8e05	00		.
	nop			;8e06	00		.
	nop			;8e07	00		.
	nop			;8e08	00		.
	ld (bc),a		;8e09	02		.
	rst 38h			;8e0a	ff		.
	nop			;8e0b	00		.
sub_8e0ch:
	ld d,(ix+00ah)		;8e0c	dd 56 0a	. V .
	ld e,(ix+008h)		;8e0f	dd 5e 08	. ^ .
	call 07b06h		;8e12	cd 06 7b	. . {
	jr nc,l8e4dh		;8e15	30 36		0 6
	ex de,hl		;8e17	eb		.
	ld d,0deh		;8e18	16 de		. .
	ld e,(hl)		;8e1a	5e		^
	ld a,(de)		;8e1b	1a		.
	or a			;8e1c	b7		.
	ret nz			;8e1d	c0		.
	inc hl			;8e1e	23		#
	ld e,(hl)		;8e1f	5e		^
	ld a,(de)		;8e20	1a		.
	or a			;8e21	b7		.
	ret nz			;8e22	c0		.
	inc hl			;8e23	23		#
	ld e,(hl)		;8e24	5e		^
	ld a,(de)		;8e25	1a		.
	or a			;8e26	b7		.
	ret nz			;8e27	c0		.
	ld bc,0002eh		;8e28	01 2e 00	. . .
	add hl,bc		;8e2b	09		.
	ld e,(hl)		;8e2c	5e		^
	ld a,(de)		;8e2d	1a		.
	or a			;8e2e	b7		.
	ret nz			;8e2f	c0		.
	inc hl			;8e30	23		#
	ld e,(hl)		;8e31	5e		^
	ld a,(de)		;8e32	1a		.
	or a			;8e33	b7		.
	ret nz			;8e34	c0		.
	inc hl			;8e35	23		#
	ld e,(hl)		;8e36	5e		^
	ld a,(de)		;8e37	1a		.
	or a			;8e38	b7		.
	ret nz			;8e39	c0		.
	ld bc,0002eh		;8e3a	01 2e 00	. . .
	add hl,bc		;8e3d	09		.
	ld e,(hl)		;8e3e	5e		^
	ld a,(de)		;8e3f	1a		.
	or a			;8e40	b7		.
	ret nz			;8e41	c0		.
	inc hl			;8e42	23		#
	ld e,(hl)		;8e43	5e		^
	ld a,(de)		;8e44	1a		.
	or a			;8e45	b7		.
	ret nz			;8e46	c0		.
	inc hl			;8e47	23		#
	ld e,(hl)		;8e48	5e		^
	ld a,(de)		;8e49	1a		.
	or a			;8e4a	b7		.
	ret nz			;8e4b	c0		.
	ret			;8e4c	c9		.
l8e4dh:
	or 0ffh			;8e4d	f6 ff		. .
	ret			;8e4f	c9		.
	ld b,001h		;8e50	06 01		. .
	call sub_87e1h		;8e52	cd e1 87	. . .
	ret c			;8e55	d8		.
	ld a,(0cc0eh)		;8e56	3a 0e cc	: . .
	or a			;8e59	b7		.
	ret nz			;8e5a	c0		.
	ld a,001h		;8e5b	3e 01		> .
	ld (0cc0eh),a		;8e5d	32 0e cc	2 . .
	ld a,007h		;8e60	3e 07		> .
	call sub_86a5h		;8e62	cd a5 86	. . .
	ld (ix+014h),003h	;8e65	dd 36 14 03	. 6 . .
	ld (ix+013h),003h	;8e69	dd 36 13 03	. 6 . .
	ld a,(iy+000h)		;8e6d	fd 7e 00	. ~ .
	ld a,004h		;8e70	3e 04		> .
	ld (ix+003h),a		;8e72	dd 77 03	. w .
	xor a			;8e75	af		.
	ld hl,0000ch		;8e76	21 0c 00	! . .
	call sub_863ch		;8e79	cd 3c 86	. < .
	ld (ix+00ah),d		;8e7c	dd 72 0a	. r .
	ld (ix+009h),e		;8e7f	dd 73 09	. s .
	ld (ix+008h),b		;8e82	dd 70 08	. p .
	ld (ix+007h),c		;8e85	dd 71 07	. q .
	ld de,00000h		;8e88	11 00 00	. . .
	ld hl,00100h		;8e8b	21 00 01	! . .
	call 06bebh		;8e8e	cd eb 6b	. . k
	ld (ix+015h),005h	;8e91	dd 36 15 05	. 6 . .
	ld (ix+017h),001h	;8e95	dd 36 17 01	. 6 . .
	or a			;8e99	b7		.
	ret			;8e9a	c9		.
	call sub_8ebbh		;8e9b	cd bb 8e	. . .
	ld d,000h		;8e9e	16 00		. .
	ld e,d			;8ea0	5a		Z
	ld l,d			;8ea1	6a		j
	ld h,d			;8ea2	62		b
	inc h			;8ea3	24		$
	call sub_86beh		;8ea4	cd be 86	. . .
	ld d,000h		;8ea7	16 00		. .
	ld e,d			;8ea9	5a		Z
	ld l,d			;8eaa	6a		j
	inc d			;8eab	14		.
	ld h,d			;8eac	62		b
	call sub_86afh		;8ead	cd af 86	. . .
	call sub_86ech		;8eb0	cd ec 86	. . .
	ld a,(ix+000h)		;8eb3	dd 7e 00	. ~ .
	or a			;8eb6	b7		.
	jp nz,077d0h		;8eb7	c2 d0 77	. . w
	ret			;8eba	c9		.
sub_8ebbh:
	ld a,(0ca10h)		;8ebb	3a 10 ca	: . .
	cp 004h			;8ebe	fe 04		. .
	jp z,06a7fh		;8ec0	ca 7f 6a	. . j
	call 06c29h		;8ec3	cd 29 6c	. ) l
	ld de,00100h		;8ec6	11 00 01	. . .
	ld hl,00200h		;8ec9	21 00 02	! . .
	call sub_8f06h		;8ecc	cd 06 8f	. . .
	ld de,00000h		;8ecf	11 00 00	. . .
	ld hl,00100h		;8ed2	21 00 01	! . .
	jr nc,l8effh		;8ed5	30 28		0 (
	ld de,00100h		;8ed7	11 00 01	. . .
	ld hl,00300h		;8eda	21 00 03	! . .
	call sub_8f06h		;8edd	cd 06 8f	. . .
	ld de,00000h		;8ee0	11 00 00	. . .
	ld hl,00200h		;8ee3	21 00 02	! . .
	jr nc,l8effh		;8ee6	30 17		0 .
	ld de,00300h		;8ee8	11 00 03	. . .
	ld hl,00200h		;8eeb	21 00 02	! . .
	call sub_8f06h		;8eee	cd 06 8f	. . .
	ld de,00200h		;8ef1	11 00 02	. . .
	ld hl,00100h		;8ef4	21 00 01	! . .
	jr nc,l8effh		;8ef7	30 06		0 .
	ld de,00200h		;8ef9	11 00 02	. . .
	ld hl,00000h		;8efc	21 00 00	! . .
l8effh:
	call 06bebh		;8eff	cd eb 6b	. . k
	call 06a7fh		;8f02	cd 7f 6a	. . j
	ret			;8f05	c9		.
sub_8f06h:
	call 075aah		;8f06	cd aa 75	. . u
	ccf			;8f09	3f		?
	ret nc			;8f0a	d0		.
	cp 003h			;8f0b	fe 03		. .
	scf			;8f0d	37		7
	ret z			;8f0e	c8		.
	or a			;8f0f	b7		.
l8f10h:
	ret			;8f10	c9		.
l8f11h:
	ret			;8f11	c9		.
sub_8f12h:
	ld a,0afh		;8f12	3e af		> .
	push hl			;8f14	e5		.
	push af			;8f15	f5		.
	call 0465fh		;8f16	cd 5f 46	. _ F
	pop bc			;8f19	c1		.
	pop hl			;8f1a	e1		.
	push af			;8f1b	f5		.
	push hl			;8f1c	e5		.
	push bc			;8f1d	c5		.
	ld a,(0f342h)		;8f1e	3a 42 f3	: B .
	ld h,040h		;8f21	26 40		& @
	call 00024h		;8f23	cd 24 00	. $ .
	pop af			;8f26	f1		.
	pop hl			;8f27	e1		.
	call sub_8f34h		;8f28	cd 34 8f	. 4 .
	pop af			;8f2b	f1		.
	push hl			;8f2c	e5		.
	ld h,040h		;8f2d	26 40		& @
	call 00024h		;8f2f	cd 24 00	. $ .
	pop hl			;8f32	e1		.
	ret			;8f33	c9		.
sub_8f34h:
	or a			;8f34	b7		.
	jr z,l8f4dh		;8f35	28 16		( .
	push hl			;8f37	e5		.
	ld hl,0c000h		;8f38	21 00 c0	! . .
	ld de,04000h		;8f3b	11 00 40	. . @
	ld bc,01000h		;8f3e	01 00 10	. . .
	call sub_8f56h		;8f41	cd 56 8f	. V .
	ld hl,(070f0h)		;8f44	2a f0 70	* . p
	pop de			;8f47	d1		.
	ld (070f0h),de		;8f48	ed 53 f0 70	. S . p
	ret			;8f4c	c9		.
l8f4dh:
	ld hl,0d000h		;8f4d	21 00 d0	! . .
	ld de,05000h		;8f50	11 00 50	. . P
	ld bc,020f0h		;8f53	01 f0 20	. .  
sub_8f56h:
	ld a,(hl)		;8f56	7e		~
	ex af,af'		;8f57	08		.
	ld a,(de)		;8f58	1a		.
	ld (hl),a		;8f59	77		w
	ex af,af'		;8f5a	08		.
	ld (de),a		;8f5b	12		.
	inc hl			;8f5c	23		#
	inc de			;8f5d	13		.
	dec bc			;8f5e	0b		.
	ld a,b			;8f5f	78		x
	or c			;8f60	b1		.
	jr nz,sub_8f56h		;8f61	20 f3		  .
	ret			;8f63	c9		.
l8f64h:
	ld a,(0ffa7h)		;8f64	3a a7 ff	: . .
	cp 0c9h			;8f67	fe c9		. .
	ret z			;8f69	c8		.
	ld a,(0fd9ah)		;8f6a	3a 9a fd	: . .
	ld bc,(0fd9bh)		;8f6d	ed 4b 9b fd	. K . .
	push af			;8f71	f5		.
	push bc			;8f72	c5		.
	ld a,0c9h		;8f73	3e c9		> .
	ld (0fd9ah),a		;8f75	32 9a fd	2 . .
	call sub_8f86h		;8f78	cd 86 8f	. . .
	di			;8f7b	f3		.
	pop bc			;8f7c	c1		.
	pop af			;8f7d	f1		.
	ld (0fd9ah),a		;8f7e	32 9a fd	2 . .
	ld (0fd9bh),bc		;8f81	ed 43 9b fd	. C . .
	ret			;8f85	c9		.
sub_8f86h:
	call sub_8fb7h		;8f86	cd b7 8f	. . .
	di			;8f89	f3		.
	ld de,(0c000h)		;8f8a	ed 5b 00 c0	. [ . .
	ld (0c000h),sp		;8f8e	ed 73 00 c0	. s . .
	ld hl,(0c000h)		;8f92	2a 00 c0	* . .
	ld (0c000h),de		;8f95	ed 53 00 c0	. S . .
	call sub_8f12h		;8f99	cd 12 8f	. . .
	ld sp,0d000h		;8f9c	31 00 d0	1 . .
	call sub_8f12h+1	;8f9f	cd 13 8f	. . .
	ld a,01fh		;8fa2	3e 1f		> .
	call 04c07h		;8fa4	cd 07 4c	. . L
	ld sp,0d200h		;8fa7	31 00 d2	1 . .
	jp 06000h		;8faa	c3 00 60	. . `
sub_8fadh:
	call 04b8fh		;8fad	cd 8f 4b	. . K
	ld a,(0f3e0h)		;8fb0	3a e0 f3	: . .
	set 5,a			;8fb3	cb ef		. .
	jr l8fbfh		;8fb5	18 08		. .
sub_8fb7h:
	call 04b78h		;8fb7	cd 78 4b	. x K
	ld a,(0f3e0h)		;8fba	3a e0 f3	: . .
	res 5,a			;8fbd	cb af		. .
l8fbfh:
	ld b,a			;8fbf	47		G
	ld c,001h		;8fc0	0e 01		. .
	jp 00047h		;8fc2	c3 47 00	. G .
l8fc5h:
	di			;8fc5	f3		.
	call sub_8f12h		;8fc6	cd 12 8f	. . .
	ld sp,0d000h		;8fc9	31 00 d0	1 . .
	push hl			;8fcc	e5		.
	call sub_8f12h+1	;8fcd	cd 13 8f	. . .
	pop hl			;8fd0	e1		.
	ld sp,hl		;8fd1	f9		.
	call 06003h		;8fd2	cd 03 60	. . `
	ld a,001h		;8fd5	3e 01		> .
	call 04c07h		;8fd7	cd 07 4c	. . L
	call sub_8fadh		;8fda	cd ad 8f	. . .
	ret			;8fdd	c9		.
	ex af,af'		;8fde	08		.
	ld h,b			;8fdf	60		`
	ld (bc),a		;8fe0	02		.
	and (hl)		;8fe1	a6		.
	ld de,00560h		;8fe2	11 60 05	. ` .
	and (hl)		;8fe5	a6		.
	inc b			;8fe6	04		.
	ld h,b			;8fe7	60		`
	ld (bc),a		;8fe8	02		.
	and (hl)		;8fe9	a6		.
	ld (bc),a		;8fea	02		.
	jp pe,06003h		;8feb	ea 03 60	. . `
	inc bc			;8fee	03		.
	and (hl)		;8fef	a6		.
	add a,c			;8ff0	81		.
	ld h,b			;8ff1	60		`
	inc bc			;8ff2	03		.
	and (hl)		;8ff3	a6		.
	inc b			;8ff4	04		.
	ld h,b			;8ff5	60		`
	dec d			;8ff6	15		.
	and (hl)		;8ff7	a6		.
	dec b			;8ff8	05		.
	ld h,b			;8ff9	60		`
	inc b			;8ffa	04		.
	and (hl)		;8ffb	a6		.
	inc b			;8ffc	04		.
	ld h,b			;8ffd	60		`
	adc a,e			;8ffe	8b		.
	and (hl)		;8fff	a6		.
	and 0aeh		;9000	e6 ae		. .
	xor (hl)		;9002	ae		.
	and (hl)		;9003	a6		.
l9004h:
	and (hl)		;9004	a6		.
	ld h,b			;9005	60		`
	ld h,b			;9006	60		`
	and 0a6h		;9007	e6 a6		. .
	and (hl)		;9009	a6		.
	dec b			;900a	05		.
	jp pe,0e683h		;900b	ea 83 e6	. . .
	and (hl)		;900e	a6		.
	and (hl)		;900f	a6		.
	dec b			;9010	05		.
	jp pe,0a602h		;9011	ea 02 a6	. . .
	inc b			;9014	04		.
	jp pe,0a602h		;9015	ea 02 a6	. . .
	jr l9004h		;9018	18 ea		. .
	ex af,af'		;901a	08		.
	and (hl)		;901b	a6		.
	nop			;901c	00		.
	ex af,af'		;901d	08		.
	ld l,a			;901e	6f		o
	ld (bc),a		;901f	02		.
	and (hl)		;9020	a6		.
	ld de,0056fh		;9021	11 6f 05	. o .
	and (hl)		;9024	a6		.
	inc b			;9025	04		.
	ld l,a			;9026	6f		o
	ld (bc),a		;9027	02		.
	and (hl)		;9028	a6		.
	ld (bc),a		;9029	02		.
	jp pe,06f03h		;902a	ea 03 6f	. . o
	inc bc			;902d	03		.
	and (hl)		;902e	a6		.
	add a,c			;902f	81		.
	ld l,a			;9030	6f		o
	inc bc			;9031	03		.
	and (hl)		;9032	a6		.
	inc b			;9033	04		.
	ld l,a			;9034	6f		o
	dec d			;9035	15		.
	and (hl)		;9036	a6		.
	dec b			;9037	05		.
	ld l,a			;9038	6f		o
	inc b			;9039	04		.
	and (hl)		;903a	a6		.
	inc b			;903b	04		.
	ld l,a			;903c	6f		o
	adc a,e			;903d	8b		.
	and (hl)		;903e	a6		.
	and 0aeh		;903f	e6 ae		. .
	xor (hl)		;9041	ae		.
	and (hl)		;9042	a6		.
l9043h:
	and (hl)		;9043	a6		.
	ld l,a			;9044	6f		o
	ld l,a			;9045	6f		o
	and 0a6h		;9046	e6 a6		. .
	and (hl)		;9048	a6		.
	dec b			;9049	05		.
	jp pe,0e683h		;904a	ea 83 e6	. . .
	and (hl)		;904d	a6		.
	and (hl)		;904e	a6		.
	dec b			;904f	05		.
	jp pe,0a602h		;9050	ea 02 a6	. . .
	inc b			;9053	04		.
	jp pe,0a602h		;9054	ea 02 a6	. . .
	jr l9043h		;9057	18 ea		. .
	ex af,af'		;9059	08		.
	and (hl)		;905a	a6		.
	nop			;905b	00		.
	add a,c			;905c	81		.
	ld bc,00305h		;905d	01 05 03	. . .
	ld (bc),a		;9060	02		.
	ld bc,04084h		;9061	01 84 40	. . @
	add a,b			;9064	80		.
	cp 0f8h			;9065	fe f8		. .
	inc b			;9067	04		.
	nop			;9068	00		.
	ld (bc),a		;9069	02		.
	add a,b			;906a	80		.
	inc b			;906b	04		.
	ret nz			;906c	c0		.
	ei			;906d	fb		.
	add a,b			;906e	80		.
	nop			;906f	00		.
	nop			;9070	00		.
	inc a			;9071	3c		<
	ld a,a			;9072	7f		.
	ld c,019h		;9073	0e 19		. .
	djnz $+35		;9075	10 21		. !
	inc hl			;9077	23		#
	nop			;9078	00		.
	nop			;9079	00		.
	inc a			;907a	3c		<
	rst 38h			;907b	ff		.
l907ch:
	jr c,l907ch		;907c	38 fe		8 .
	jr l90feh		;907e	18 7e		. ~
	nop			;9080	00		.
l9081h:
	jr c,l9081h		;9081	38 fe		8 .
	jr c,l9091h		;9083	38 0c		8 .
	inc b			;9085	04		.
	cp 040h			;9086	fe 40		. @
	inc bc			;9088	03		.
	inc b			;9089	04		.
	ld a,a			;908a	7f		.
	ccf			;908b	3f		?
	ld a,a			;908c	7f		.
	ld a,a			;908d	7f		.
	inc bc			;908e	03		.
	daa			;908f	27		'
	ld c,a			;9090	4f		O
l9091h:
	ld c,a			;9091	4f		O
	cpl			;9092	2f		/
	rrca			;9093	0f		.
	daa			;9094	27		'
	daa			;9095	27		'
	inc hl			;9096	23		#
	ld sp,0f2e4h		;9097	31 e4 f2	1 . .
l909ah:
	ld (hl),d		;909a	72		r
	ld (hl),d		;909b	72		r
	ld h,h			;909c	64		d
	ret po			;909d	e0		.
	call m,018feh		;909e	fc fe 18	. . .
	rrca			;90a1	0f		.
l90a2h:
	inc bc			;90a2	03		.
	ld a,a			;90a3	7f		.
l90a4h:
	ld a,a			;90a4	7f		.
	ccf			;90a5	3f		?
l90a6h:
	rlca			;90a6	07		.
	nop			;90a7	00		.
l90a8h:
	ld a,a			;90a8	7f		.
	rst 30h			;90a9	f7		.
l90aah:
	jp 0f301h		;90aa	c3 01 f3	. . .
	ex (sp),hl		;90ad	e3		.
	ld bc,03c00h		;90ae	01 00 3c	. . <
	add a,c			;90b1	81		.
	add a,c			;90b2	81		.
	rst 0			;90b3	c7		.
	cp 038h			;90b4	fe 38		. 8
	cp 07ch			;90b6	fe 7c		. |
l90b8h:
	ld bc,07f1eh		;90b8	01 1e 7f	. . .
	inc e			;90bb	1c		.
l90bch:
	inc sp			;90bc	33		3
	daa			;90bd	27		'
l90beh:
	ld l,a			;90be	6f		o
	ld c,a			;90bf	4f		O
l90c0h:
	add a,e			;90c0	83		.
	jr c,l9141h		;90c1	38 7e		8 ~
	inc a			;90c3	3c		<
	rrca			;90c4	0f		.
	jp 0f9f1h		;90c5	c3 f1 f9	. . .
	cp 0feh			;90c8	fe fe		. .
	inc b			;90ca	04		.
	inc c			;90cb	0c		.
	jr l90beh		;90cc	18 f0		. .
	cp 0f8h			;90ce	fe f8		. .
	cp c			;90d0	b9		.
	ld a,(hl)		;90d1	7e		~
	ld a,a			;90d2	7f		.
	rst 38h			;90d3	ff		.
	rst 38h			;90d4	ff		.
	cp 07eh			;90d5	fe 7e		. ~
	sbc a,l			;90d7	9d		.
	ld c,a			;90d8	4f		O
	cpl			;90d9	2f		/
	daa			;90da	27		'
	inc hl			;90db	23		#
	ld sp,0001ch		;90dc	31 1c 00	1 . .
	nop			;90df	00		.
	or 0ech			;90e0	f6 ec		. .
	exx			;90e2	d9		.
	rst 38h			;90e3	ff		.
	cp 078h			;90e4	fe 78		. x
	nop			;90e6	00		.
	nop			;90e7	00		.
	ret z			;90e8	c8		.
	inc bc			;90e9	03		.
	call po,0ec84h		;90ea	e4 84 ec	. . .
	call z,0f098h		;90ed	cc 98 f0	. . .
	nop			;90f0	00		.
	rst 38h			;90f1	ff		.
	rst 38h			;90f2	ff		.
	rst 38h			;90f3	ff		.
sub_90f4h:
	rst 38h			;90f4	ff		.
	rst 38h			;90f5	ff		.
	rst 38h			;90f6	ff		.
	rst 38h			;90f7	ff		.
	rst 38h			;90f8	ff		.
	rst 38h			;90f9	ff		.
	rst 38h			;90fa	ff		.
	rst 38h			;90fb	ff		.
	rst 38h			;90fc	ff		.
	rst 38h			;90fd	ff		.
l90feh:
	rst 38h			;90fe	ff		.
	rst 38h			;90ff	ff		.
	inc b			;9100	04		.
	sub d			;9101	92		.
	ex af,af'		;9102	08		.
	sub d			;9103	92		.
	inc c			;9104	0c		.
	sub d			;9105	92		.
	djnz l909ah		;9106	10 92		. .
	inc d			;9108	14		.
	sub d			;9109	92		.
	inc d			;910a	14		.
	sub d			;910b	92		.
	djnz $-108		;910c	10 92		. .
	djnz l90a2h		;910e	10 92		. .
	djnz l90a4h		;9110	10 92		. .
	jr l90a6h		;9112	18 92		. .
	jr l90a8h		;9114	18 92		. .
	jr l90aah		;9116	18 92		. .
	jr $-108		;9118	18 92		. .
	inc e			;911a	1c		.
	sub d			;911b	92		.
	nop			;911c	00		.
	sub d			;911d	92		.
	inc h			;911e	24		$
	sub d			;911f	92		.
	inc h			;9120	24		$
	sub d			;9121	92		.
	inc h			;9122	24		$
	sub d			;9123	92		.
	jr z,l90b8h		;9124	28 92		( .
	inc l			;9126	2c		,
	sub d			;9127	92		.
	jr nc,l90bch		;9128	30 92		0 .
	inc (hl)		;912a	34		4
l912bh:
	sub d			;912b	92		.
	jr c,l90c0h		;912c	38 92		8 .
	inc h			;912e	24		$
l912fh:
	sub d			;912f	92		.
	inc a			;9130	3c		<
	sub d			;9131	92		.
	ld b,b			;9132	40		@
l9133h:
	sub d			;9133	92		.
	ld b,h			;9134	44		D
	sub d			;9135	92		.
	ld c,b			;9136	48		H
	sub d			;9137	92		.
	ld c,h			;9138	4c		L
	sub d			;9139	92		.
	ld d,b			;913a	50		P
l913bh:
	sub d			;913b	92		.
	ld d,h			;913c	54		T
l913dh:
	sub d			;913d	92		.
	ld e,b			;913e	58		X
	sub d			;913f	92		.
	ld e,h			;9140	5c		\
l9141h:
	sub d			;9141	92		.
	ld h,b			;9142	60		`
	sub d			;9143	92		.
	ld h,h			;9144	64		d
	sub d			;9145	92		.
	ld l,b			;9146	68		h
	sub d			;9147	92		.
	ld l,h			;9148	6c		l
	sub d			;9149	92		.
	ld (hl),b		;914a	70		p
	sub d			;914b	92		.
	ld a,b			;914c	78		x
	sub d			;914d	92		.
	ld a,h			;914e	7c		|
	sub d			;914f	92		.
	add a,b			;9150	80		.
	sub d			;9151	92		.
	add a,h			;9152	84		.
	sub d			;9153	92		.
	adc a,b			;9154	88		.
	sub d			;9155	92		.
	adc a,h			;9156	8c		.
l9157h:
	sub d			;9157	92		.
	sub b			;9158	90		.
	sub d			;9159	92		.
	sub h			;915a	94		.
	sub d			;915b	92		.
	sbc a,b			;915c	98		.
	sub d			;915d	92		.
	sbc a,h			;915e	9c		.
	sub d			;915f	92		.
	and b			;9160	a0		.
	sub d			;9161	92		.
	and h			;9162	a4		.
	sub d			;9163	92		.
	xor b			;9164	a8		.
	sub d			;9165	92		.
	xor h			;9166	ac		.
	sub d			;9167	92		.
	or b			;9168	b0		.
	sub d			;9169	92		.
	or h			;916a	b4		.
	sub d			;916b	92		.
	cp h			;916c	bc		.
	sub d			;916d	92		.
	ret nz			;916e	c0		.
	sub d			;916f	92		.
	call nz,0c892h		;9170	c4 92 c8	. . .
	sub d			;9173	92		.
	call z,0d092h		;9174	cc 92 d0	. . .
	sub d			;9177	92		.
	call nc,0d892h		;9178	d4 92 d8	. . .
	sub d			;917b	92		.
	call c,0e092h		;917c	dc 92 e0	. . .
	sub d			;917f	92		.
	call po,0e892h		;9180	e4 92 e8	. . .
	sub d			;9183	92		.
	call pe,0f092h		;9184	ec 92 f0	. . .
	sub d			;9187	92		.
	call p,0f892h		;9188	f4 92 f8	. . .
	sub d			;918b	92		.
	call m,00092h		;918c	fc 92 00	. . .
	sub e			;918f	93		.
	inc b			;9190	04		.
	sub e			;9191	93		.
	ex af,af'		;9192	08		.
	sub e			;9193	93		.
	inc c			;9194	0c		.
	sub e			;9195	93		.
	djnz l912bh		;9196	10 93		. .
	inc d			;9198	14		.
	sub e			;9199	93		.
	jr l912fh		;919a	18 93		. .
	inc e			;919c	1c		.
	sub e			;919d	93		.
	jr nz,l9133h		;919e	20 93		  .
	inc l			;91a0	2c		,
	sub e			;91a1	93		.
	inc l			;91a2	2c		,
	sub e			;91a3	93		.
	inc l			;91a4	2c		,
	sub e			;91a5	93		.
	jr z,l913bh		;91a6	28 93		( .
	jr nc,l913dh		;91a8	30 93		0 .
	inc (hl)		;91aa	34		4
	sub e			;91ab	93		.
	ld c,b			;91ac	48		H
	sub e			;91ad	93		.
	ld l,b			;91ae	68		h
	sub e			;91af	93		.
	ld h,h			;91b0	64		d
	sub e			;91b1	93		.
	ld l,h			;91b2	6c		l
	sub e			;91b3	93		.
	ld (hl),b		;91b4	70		p
	sub e			;91b5	93		.
	ld (hl),h		;91b6	74		t
	sub e			;91b7	93		.
	ld a,b			;91b8	78		x
	sub e			;91b9	93		.
	ld a,h			;91ba	7c		|
	sub e			;91bb	93		.
	ld c,b			;91bc	48		H
	sub e			;91bd	93		.
	ld c,h			;91be	4c		L
	sub e			;91bf	93		.
	ld d,b			;91c0	50		P
	sub e			;91c1	93		.
	jr c,l9157h		;91c2	38 93		8 .
	ld h,b			;91c4	60		`
	sub e			;91c5	93		.
	add a,b			;91c6	80		.
	sub e			;91c7	93		.
	add a,h			;91c8	84		.
	sub e			;91c9	93		.
	adc a,b			;91ca	88		.
	sub e			;91cb	93		.
	adc a,h			;91cc	8c		.
	sub e			;91cd	93		.
	ld (hl),h		;91ce	74		t
	sub d			;91cf	92		.
	inc a			;91d0	3c		<
	sub e			;91d1	93		.
	ld b,h			;91d2	44		D
	sub e			;91d3	93		.
	ld c,b			;91d4	48		H
	sub e			;91d5	93		.
	ld c,b			;91d6	48		H
	sub e			;91d7	93		.
	ld c,b			;91d8	48		H
	sub e			;91d9	93		.
	ld e,b			;91da	58		X
	sub e			;91db	93		.
	ld e,h			;91dc	5c		\
	sub e			;91dd	93		.
	sub b			;91de	90		.
	sub e			;91df	93		.
	sub h			;91e0	94		.
	sub e			;91e1	93		.
	cp b			;91e2	b8		.
	sub d			;91e3	92		.
	sbc a,b			;91e4	98		.
	sub e			;91e5	93		.
	sbc a,h			;91e6	9c		.
	sub e			;91e7	93		.
	ld d,h			;91e8	54		T
	sub e			;91e9	93		.
	and b			;91ea	a0		.
	sub e			;91eb	93		.
	and h			;91ec	a4		.
	sub e			;91ed	93		.
	xor b			;91ee	a8		.
	sub e			;91ef	93		.
	inc h			;91f0	24		$
	sub e			;91f1	93		.
	xor h			;91f2	ac		.
	sub e			;91f3	93		.
	or b			;91f4	b0		.
	sub e			;91f5	93		.
	or h			;91f6	b4		.
	sub e			;91f7	93		.
	or h			;91f8	b4		.
	sub e			;91f9	93		.
	or h			;91fa	b4		.
	sub e			;91fb	93		.
	or h			;91fc	b4		.
	sub e			;91fd	93		.
	or h			;91fe	b4		.
	sub e			;91ff	93		.
	inc bc			;9200	03		.
	inc bc			;9201	03		.
	nop			;9202	00		.
	nop			;9203	00		.
	inc b			;9204	04		.
	inc b			;9205	04		.
	add hl,sp		;9206	39		9
	nop			;9207	00		.
	inc b			;9208	04		.
	inc b			;9209	04		.
	ld sp,00400h		;920a	31 00 04	1 . .
	inc b			;920d	04		.
	ld d,(hl)		;920e	56		V
	nop			;920f	00		.
	inc b			;9210	04		.
	inc b			;9211	04		.
	ld sp,00301h		;9212	31 01 03	1 . .
	inc bc			;9215	03		.
	ld d,d			;9216	52		R
	nop			;9217	00		.
	inc b			;9218	04		.
	add a,h			;9219	84		.
	cp l			;921a	bd		.
	jr z,$+8		;921b	28 06		( .
	adc a,d			;921d	8a		.
	ld d,(hl)		;921e	56		V
	jr l9225h		;921f	18 04		. .
	inc b			;9221	04		.
	ld sp,00400h		;9222	31 00 04	1 . .
l9225h:
	add a,h			;9225	84		.
	cp c			;9226	b9		.
	nop			;9227	00		.
	inc b			;9228	04		.
	add a,h			;9229	84		.
	cp c			;922a	b9		.
	ld bc,l8508h		;922b	01 08 85	. . .
	inc d			;922e	14		.
	ret p			;922f	f0		.
	inc b			;9230	04		.
	add a,h			;9231	84		.
	cp c			;9232	b9		.
	ld bc,l8404h		;9233	01 04 84	. . .
	cp c			;9236	b9		.
	ld bc,l8404h		;9237	01 04 84	. . .
	cp l			;923a	bd		.
	ld (bc),a		;923b	02		.
	inc b			;923c	04		.
	add a,h			;923d	84		.
	cp l			;923e	bd		.
	ld bc,l8404h		;923f	01 04 84	. . .
	cp l			;9242	bd		.
	jr $+6			;9243	18 04		. .
	add a,h			;9245	84		.
	cp c			;9246	b9		.
	ld bc,08604h		;9247	01 04 86	. . .
	ld d,(hl)		;924a	56		V
	inc c			;924b	0c		.
	inc b			;924c	04		.
	add a,h			;924d	84		.
	cp l			;924e	bd		.
	ld bc,l8608h		;924f	01 08 86	. . .
	cp c			;9252	b9		.
	ld a,(bc)		;9253	0a		.
	ld b,088h		;9254	06 88		. .
	ld a,a			;9256	7f		.
	dec b			;9257	05		.
	inc b			;9258	04		.
	add a,h			;9259	84		.
	ld d,(hl)		;925a	56		V
	ld bc,l8404h		;925b	01 04 84	. . .
	cp c			;925e	b9		.
	ld bc,08604h		;925f	01 04 86	. . .
	ld d,(hl)		;9262	56		V
	ld b,004h		;9263	06 04		. .
	add a,h			;9265	84		.
	cp l			;9266	bd		.
	dec b			;9267	05		.
	dec b			;9268	05		.
	dec b			;9269	05		.
	inc b			;926a	04		.
	nop			;926b	00		.
	inc b			;926c	04		.
	add a,h			;926d	84		.
	cp c			;926e	b9		.
	ld bc,l8605h		;926f	01 05 86	. . .
	ld d,(hl)		;9272	56		V
	ex af,af'		;9273	08		.
	inc b			;9274	04		.
	add a,h			;9275	84		.
	cp l			;9276	bd		.
	nop			;9277	00		.
	ld b,084h		;9278	06 84		. .
	cp l			;927a	bd		.
	ld c,00ah		;927b	0e 0a		. .
	adc a,h			;927d	8c		.
	ld e,(hl)		;927e	5e		^
	rra			;927f	1f		.
	inc b			;9280	04		.
	add a,h			;9281	84		.
	ld d,(hl)		;9282	56		V
	ld bc,00806h		;9283	01 06 08	. . .
	or c			;9286	b1		.
	nop			;9287	00		.
	inc b			;9288	04		.
	add a,(hl)		;9289	86		.
	ld d,(hl)		;928a	56		V
	ld b,004h		;928b	06 04		. .
	add a,h			;928d	84		.
	cp l			;928e	bd		.
	ld b,004h		;928f	06 04		. .
	add a,(hl)		;9291	86		.
	cp l			;9292	bd		.
	ld bc,00405h		;9293	01 05 04	. . .
	inc b			;9296	04		.
	ld b,004h		;9297	06 04		. .
	add a,h			;9299	84		.
	cp l			;929a	bd		.
	ld (bc),a		;929b	02		.
	ld a,(bc)		;929c	0a		.
	ld a,(bc)		;929d	0a		.
	inc b			;929e	04		.
	nop			;929f	00		.
	inc b			;92a0	04		.
	add a,h			;92a1	84		.
	cp l			;92a2	bd		.
	inc b			;92a3	04		.
	inc b			;92a4	04		.
	add a,h			;92a5	84		.
	ld d,(hl)		;92a6	56		V
	ld bc,l8608h		;92a7	01 08 86	. . .
	cp c			;92aa	b9		.
	ld d,b			;92ab	50		P
	ld b,086h		;92ac	06 86		. .
	ld d,(hl)		;92ae	56		V
	ld b,004h		;92af	06 04		. .
	add a,h			;92b1	84		.
	cp c			;92b2	b9		.
	ret p			;92b3	f0		.
	inc bc			;92b4	03		.
	inc bc			;92b5	03		.
	ld d,(hl)		;92b6	56		V
	nop			;92b7	00		.
	ld (bc),a		;92b8	02		.
	ld (bc),a		;92b9	02		.
	inc b			;92ba	04		.
	nop			;92bb	00		.
	inc b			;92bc	04		.
	add a,h			;92bd	84		.
	or l			;92be	b5		.
	nop			;92bf	00		.
	rlca			;92c0	07		.
	add a,a			;92c1	87		.
	ld d,(hl)		;92c2	56		V
	ld b,009h		;92c3	06 09		. .
	adc a,b			;92c5	88		.
	ld d,(hl)		;92c6	56		V
	dec c			;92c7	0d		.
	inc b			;92c8	04		.
	add a,h			;92c9	84		.
	ld d,(hl)		;92ca	56		V
	ld bc,00303h		;92cb	01 03 03	. . .
	ld l,a			;92ce	6f		o
	nop			;92cf	00		.
	inc bc			;92d0	03		.
	add a,e			;92d1	83		.
	ld b,(hl)		;92d2	46		F
	ld bc,08303h		;92d3	01 03 83	. . .
	ld b,(hl)		;92d6	46		F
	ld bc,08303h		;92d7	01 03 83	. . .
	inc b			;92da	04		.
	ld a,b			;92db	78		x
	ld b,008h		;92dc	06 08		. .
	inc d			;92de	14		.
	ld bc,l8404h		;92df	01 04 84	. . .
	cp l			;92e2	bd		.
	nop			;92e3	00		.
	inc bc			;92e4	03		.
	inc bc			;92e5	03		.
	inc b			;92e6	04		.
	nop			;92e7	00		.
	inc b			;92e8	04		.
	add a,h			;92e9	84		.
	cp l			;92ea	bd		.
	nop			;92eb	00		.
	inc b			;92ec	04		.
	inc b			;92ed	04		.
	cp l			;92ee	bd		.
	nop			;92ef	00		.
	inc b			;92f0	04		.
	add a,h			;92f1	84		.
	cp l			;92f2	bd		.
	ld bc,l8404h		;92f3	01 04 84	. . .
	cp c			;92f6	b9		.
	nop			;92f7	00		.
	ld (bc),a		;92f8	02		.
	ld (bc),a		;92f9	02		.
	nop			;92fa	00		.
	nop			;92fb	00		.
	inc bc			;92fc	03		.
	inc bc			;92fd	03		.
	inc b			;92fe	04		.
	nop			;92ff	00		.
	inc b			;9300	04		.
	inc b			;9301	04		.
	or l			;9302	b5		.
	nop			;9303	00		.
	inc b			;9304	04		.
	add a,h			;9305	84		.
	cp l			;9306	bd		.
	ld bc,l8404h		;9307	01 04 84	. . .
	cp c			;930a	b9		.
	ld (bc),a		;930b	02		.
	inc b			;930c	04		.
	add a,h			;930d	84		.
	cp l			;930e	bd		.
	ld bc,00406h		;930f	01 06 04	. . .
	cp l			;9312	bd		.
	ld bc,l8406h		;9313	01 06 84	. . .
	or l			;9316	b5		.
	jr nc,l931fh		;9317	30 06		0 .
	inc b			;9319	04		.
	cp l			;931a	bd		.
	ld bc,l8705h		;931b	01 05 87	. . .
	ld d,(hl)		;931e	56		V
l931fh:
	ld (bc),a		;931f	02		.
	inc b			;9320	04		.
	inc b			;9321	04		.
	ld h,a			;9322	67		g
	nop			;9323	00		.
	add hl,bc		;9324	09		.
	ld b,01ch		;9325	06 1c		. .
	jr nc,l932ch		;9327	30 03		0 .
	inc bc			;9329	03		.
	inc b			;932a	04		.
	nop			;932b	00		.
l932ch:
	inc bc			;932c	03		.
	inc bc			;932d	03		.
	nop			;932e	00		.
	nop			;932f	00		.
	ex af,af'		;9330	08		.
	adc a,h			;9331	8c		.
	dec a			;9332	3d		=
	ld a,(bc)		;9333	0a		.
	inc c			;9334	0c		.
	adc a,h			;9335	8c		.
	inc d			;9336	14		.
	inc l			;9337	2c		,
	inc b			;9338	04		.
	inc b			;9339	04		.
	dec l			;933a	2d		-
	nop			;933b	00		.
	inc bc			;933c	03		.
	inc bc			;933d	03		.
	inc b			;933e	04		.
	nop			;933f	00		.
	inc bc			;9340	03		.
	inc bc			;9341	03		.
	inc b			;9342	04		.
	nop			;9343	00		.
	inc bc			;9344	03		.
	inc bc			;9345	03		.
	inc b			;9346	04		.
	nop			;9347	00		.
	inc b			;9348	04		.
	inc b			;9349	04		.
	dec a			;934a	3d		=
	nop			;934b	00		.
	inc b			;934c	04		.
	inc b			;934d	04		.
	ld hl,00400h		;934e	21 00 04	! . .
	inc b			;9351	04		.
	ld sp,00400h		;9352	31 00 04	1 . .
	inc b			;9355	04		.
	ld hl,00400h		;9356	21 00 04	! . .
	add a,h			;9359	84		.
	cp l			;935a	bd		.
	nop			;935b	00		.
	inc b			;935c	04		.
	add a,h			;935d	84		.
	or c			;935e	b1		.
	nop			;935f	00		.
	inc b			;9360	04		.
	inc b			;9361	04		.
	ld sp,00600h		;9362	31 00 06	1 . .
	ld a,(bc)		;9365	0a		.
	ld d,d			;9366	52		R
	nop			;9367	00		.
	inc b			;9368	04		.
	add a,h			;9369	84		.
	cp c			;936a	b9		.
	ex af,af'		;936b	08		.
	inc bc			;936c	03		.
	inc bc			;936d	03		.
	ld d,(hl)		;936e	56		V
	nop			;936f	00		.
	inc b			;9370	04		.
	inc b			;9371	04		.
	dec a			;9372	3d		=
	nop			;9373	00		.
	inc b			;9374	04		.
	add a,h			;9375	84		.
	cp c			;9376	b9		.
	nop			;9377	00		.
	inc b			;9378	04		.
	inc b			;9379	04		.
	dec a			;937a	3d		=
	nop			;937b	00		.
	inc b			;937c	04		.
	add a,h			;937d	84		.
	cp c			;937e	b9		.
	nop			;937f	00		.
	ld b,006h		;9380	06 06		. .
	dec a			;9382	3d		=
	inc a			;9383	3c		<
	ld (bc),a		;9384	02		.
	ld (bc),a		;9385	02		.
	nop			;9386	00		.
	nop			;9387	00		.
	inc b			;9388	04		.
	add a,h			;9389	84		.
	cp l			;938a	bd		.
	inc b			;938b	04		.
	inc b			;938c	04		.
	inc b			;938d	04		.
	ld sp,00400h		;938e	31 00 04	1 . .
	add a,h			;9391	84		.
	or c			;9392	b1		.
	nop			;9393	00		.
	ld b,08ch		;9394	06 8c		. .
	inc d			;9396	14		.
	dec h			;9397	25		%
	inc b			;9398	04		.
	add a,h			;9399	84		.
	ld d,(hl)		;939a	56		V
	ld (bc),a		;939b	02		.
	inc b			;939c	04		.
	add a,h			;939d	84		.
	cp c			;939e	b9		.
	nop			;939f	00		.
	ld (bc),a		;93a0	02		.
	add a,d			;93a1	82		.
	ld d,(hl)		;93a2	56		V
	inc bc			;93a3	03		.
	inc c			;93a4	0c		.
	inc c			;93a5	0c		.
	inc b			;93a6	04		.
	sbc a,c			;93a7	99		.
	dec bc			;93a8	0b		.
	sub e			;93a9	93		.
	dec a			;93aa	3d		=
	ld b,b			;93ab	40		@
	ld a,(bc)		;93ac	0a		.
	add a,l			;93ad	85		.
	ld d,(hl)		;93ae	56		V
	nop			;93af	00		.
	inc c			;93b0	0c		.
	adc a,h			;93b1	8c		.
	inc d			;93b2	14		.
	and b			;93b3	a0		.
	inc b			;93b4	04		.
	inc b			;93b5	04		.
	or l			;93b6	b5		.
	nop			;93b7	00		.
	jp z,04e93h		;93b8	ca 93 4e	. . N
	sub (hl)		;93bb	96		.
	ld b,(hl)		;93bc	46		F
	sbc a,d			;93bd	9a		.
	ld a,09ch		;93be	3e 9c		> .
	and d			;93c0	a2		.
	sbc a,l			;93c1	9d		.
	sbc a,d			;93c2	9a		.
	sbc a,a			;93c3	9f		.
	ld h,a			;93c4	67		g
	and d			;93c5	a2		.
	ld l,a			;93c6	6f		o
	and e			;93c7	a3		.
	ld c,e			;93c8	4b		K
	and h			;93c9	a4		.
	djnz l93cch		;93ca	10 00		. .
l93cch:
	ld h,l			;93cc	65		e
	dec b			;93cd	05		.
	rst 38h			;93ce	ff		.
	djnz l93f3h		;93cf	10 22		. "
	ld e,a			;93d1	5f		_
	ld b,001h		;93d2	06 01		. .
	ld (bc),a		;93d4	02		.
	djnz l93ffh		;93d5	10 28		. (
	ld d,c			;93d7	51		Q
	adc a,l			;93d8	8d		.
	ld b,002h		;93d9	06 02		. .
	rra			;93db	1f		.
	inc bc			;93dc	03		.
	ld (bc),a		;93dd	02		.
	add a,(hl)		;93de	86		.
	inc bc			;93df	03		.
	ld (de),a		;93e0	12		.
	nop			;93e1	00		.
	djnz l9414h		;93e2	10 30		. 0
	ld d,c			;93e4	51		Q
	adc a,l			;93e5	8d		.
	ld b,010h		;93e6	06 10		. .
	rra			;93e8	1f		.
	inc bc			;93e9	03		.
	ld (bc),a		;93ea	02		.
	add a,(hl)		;93eb	86		.
	inc bc			;93ec	03		.
l93edh:
	ld (de),a		;93ed	12		.
	ld bc,03810h		;93ee	01 10 38	. . 8
	ld d,c			;93f1	51		Q
	adc a,l			;93f2	8d		.
l93f3h:
	ld b,002h		;93f3	06 02		. .
	rra			;93f5	1f		.
	inc b			;93f6	04		.
	ld (bc),a		;93f7	02		.
	add a,(hl)		;93f8	86		.
	inc bc			;93f9	03		.
	ld (de),a		;93fa	12		.
	nop			;93fb	00		.
	djnz l943eh		;93fc	10 40		. @
	ld d,c			;93fe	51		Q
l93ffh:
	adc a,(hl)		;93ff	8e		.
	ex af,af'		;9400	08		.
	ld bc,0031fh		;9401	01 1f 03	. . .
	ld bc,00220h		;9404	01 20 02	.   .
	ld h,b			;9407	60		`
	ld (bc),a		;9408	02		.
	djnz l941bh		;9409	10 10		. .
	ld b,h			;940b	44		D
l940ch:
	ld d,c			;940c	51		Q
	adc a,l			;940d	8d		.
	ld b,010h		;940e	06 10		. .
l9410h:
	rra			;9410	1f		.
	inc b			;9411	04		.
l9412h:
	ld (bc),a		;9412	02		.
	add a,(hl)		;9413	86		.
l9414h:
	inc bc			;9414	03		.
	ld (de),a		;9415	12		.
	ld bc,04c10h		;9416	01 10 4c	. . L
	ld d,c			;9419	51		Q
	adc a,l			;941a	8d		.
l941bh:
	ld b,006h		;941b	06 06		. .
	rra			;941d	1f		.
	inc b			;941e	04		.
	ld (bc),a		;941f	02		.
	add a,(hl)		;9420	86		.
	inc bc			;9421	03		.
	ld (de),a		;9422	12		.
	nop			;9423	00		.
	sub b			;9424	90		.
	ld d,b			;9425	50		P
l9426h:
	ld d,c			;9426	51		Q
	adc a,(hl)		;9427	8e		.
	ex af,af'		;9428	08		.
	ld bc,0031fh		;9429	01 1f 03	. . .
	ld bc,00220h		;942c	01 20 02	.   .
	ld (hl),b		;942f	70		p
	ld (bc),a		;9430	02		.
	djnz $+18		;9431	10 10		. .
	ld l,b			;9433	68		h
	ld e,005h		;9434	1e 05		. .
	add a,d			;9436	82		.
	djnz l94a2h		;9437	10 69		. i
	ld e,005h		;9439	1e 05		. .
	rrca			;943b	0f		.
	sub b			;943c	90		.
	add a,b			;943d	80		.
l943eh:
	ld d,c			;943e	51		Q
	adc a,l			;943f	8d		.
	ld b,008h		;9440	06 08		. .
	ld bc,00203h		;9442	01 03 02	. . .
	ex af,af'		;9445	08		.
	inc bc			;9446	03		.
	jr l940ch		;9447	18 c3		. .
	djnz $-126		;9449	10 80		. .
	ld d,c			;944b	51		Q
	adc a,l			;944c	8d		.
	ld b,008h		;944d	06 08		. .
l944fh:
	rra			;944f	1f		.
	inc b			;9450	04		.
	ld (bc),a		;9451	02		.
	add a,(hl)		;9452	86		.
	inc bc			;9453	03		.
	jr l9457h		;9454	18 01		. .
	sub b			;9456	90		.
l9457h:
	adc a,b			;9457	88		.
	ld d,c			;9458	51		Q
	adc a,l			;9459	8d		.
l945ah:
	ld b,002h		;945a	06 02		. .
	ld bc,00203h		;945c	01 03 02	. . .
	ex af,af'		;945f	08		.
	inc bc			;9460	03		.
	jr l9426h		;9461	18 c3		. .
	djnz l93edh		;9463	10 88		. .
	ld d,c			;9465	51		Q
	adc a,l			;9466	8d		.
	ld b,00ch		;9467	06 0c		. .
	rra			;9469	1f		.
	inc b			;946a	04		.
	ld (bc),a		;946b	02		.
	add a,(hl)		;946c	86		.
	inc bc			;946d	03		.
	jr l9472h		;946e	18 02		. .
	djnz l9412h		;9470	10 a0		. .
l9472h:
	ld h,l			;9472	65		e
	dec b			;9473	05		.
l9474h:
	rst 38h			;9474	ff		.
	djnz $-94		;9475	10 a0		. .
	ld d,c			;9477	51		Q
	adc a,l			;9478	8d		.
	ld b,002h		;9479	06 02		. .
	rra			;947b	1f		.
	inc b			;947c	04		.
l947dh:
	ld (bc),a		;947d	02		.
	inc b			;947e	04		.
	inc bc			;947f	03		.
	dec d			;9480	15		.
	ld bc,0a810h		;9481	01 10 a8	. . .
	ld d,c			;9484	51		Q
	adc a,l			;9485	8d		.
	ld b,003h		;9486	06 03		. .
	rra			;9488	1f		.
l9489h:
	inc b			;9489	04		.
	ld (bc),a		;948a	02		.
	inc b			;948b	04		.
	inc bc			;948c	03		.
	dec d			;948d	15		.
	ld bc,0b010h		;948e	01 10 b0	. . .
	ld d,c			;9491	51		Q
	adc a,l			;9492	8d		.
	ld b,002h		;9493	06 02		. .
	rra			;9495	1f		.
	inc b			;9496	04		.
l9497h:
	ld (bc),a		;9497	02		.
	inc b			;9498	04		.
	inc bc			;9499	03		.
	dec d			;949a	15		.
	dec b			;949b	05		.
	djnz l944fh		;949c	10 b1		. .
	ld e,a			;949e	5f		_
l949fh:
	ld b,001h		;949f	06 01		. .
	nop			;94a1	00		.
l94a2h:
	djnz l945ah		;94a2	10 b6		. .
	ld d,c			;94a4	51		Q
	adc a,l			;94a5	8d		.
l94a6h:
	ld b,002h		;94a6	06 02		. .
	rra			;94a8	1f		.
	inc b			;94a9	04		.
	ld (bc),a		;94aa	02		.
	inc b			;94ab	04		.
	inc bc			;94ac	03		.
	dec d			;94ad	15		.
l94aeh:
	dec b			;94ae	05		.
	djnz l9474h		;94af	10 c3		. .
	inc h			;94b1	24		$
	ld b,012h		;94b2	06 12		. .
	nop			;94b4	00		.
	djnz l947dh		;94b5	10 c6		. .
	rra			;94b7	1f		.
	dec b			;94b8	05		.
	ex af,af'		;94b9	08		.
	djnz l9489h		;94ba	10 cd		. .
	rra			;94bc	1f		.
	dec b			;94bd	05		.
	rlca			;94be	07		.
	djnz l9497h		;94bf	10 d6		. .
	jr nz,l94c8h		;94c1	20 05		  .
	dec bc			;94c3	0b		.
	djnz l949fh		;94c4	10 d9		. .
	jr nz,$+7		;94c6	20 05		  .
l94c8h:
	dec bc			;94c8	0b		.
	djnz l94a6h		;94c9	10 db		. .
	inc h			;94cb	24		$
	ld b,012h		;94cc	06 12		. .
	nop			;94ce	00		.
	djnz l94aeh		;94cf	10 dd		. .
	jr nz,l94d8h		;94d1	20 05		  .
	inc b			;94d3	04		.
	sub b			;94d4	90		.
	call po,00520h		;94d5	e4 20 05	.   .
l94d8h:
	ld a,(bc)		;94d8	0a		.
	djnz $-23		;94d9	10 e7		. .
	ld (00a05h),hl		;94db	22 05 0a	" . .
	sub b			;94de	90		.
	jp pe,00520h		;94df	ea 20 05	.   .
	inc c			;94e2	0c		.
	sub b			;94e3	90		.
	call pe,00520h		;94e4	ec 20 05	.   .
	dec c			;94e7	0d		.
	djnz $-12		;94e8	10 f2		. .
	ld h,08ah		;94ea	26 8a		& .
	inc b			;94ec	04		.
	rrca			;94ed	0f		.
	inc bc			;94ee	03		.
	inc bc			;94ef	03		.
	ld (bc),a		;94f0	02		.
	ld de,0f610h		;94f1	11 10 f6	. . .
	ld d,l			;94f4	55		U
	ld b,010h		;94f5	06 10		. .
	ld a,(de)		;94f7	1a		.
	sub c			;94f8	91		.
	dec b			;94f9	05		.
	ld h,08ah		;94fa	26 8a		& .
	inc b			;94fc	04		.
	dec c			;94fd	0d		.
	inc bc			;94fe	03		.
	inc bc			;94ff	03		.
	ld (bc),a		;9500	02		.
	ld de,00b11h		;9501	11 11 0b	. . .
	ld d,l			;9504	55		U
	ld b,010h		;9505	06 10		. .
	sub (hl)		;9507	96		.
	ld de,02019h		;9508	11 19 20	. .  
	dec b			;950b	05		.
	dec c			;950c	0d		.
	ld de,0551dh		;950d	11 1d 55	. . U
	ld b,010h		;9510	06 10		. .
	sbc a,h			;9512	9c		.
	sub c			;9513	91		.
	inc h			;9514	24		$
	jr nz,l951ch		;9515	20 05		  .
	rrca			;9517	0f		.
	sub c			;9518	91		.
	daa			;9519	27		'
	jr nz,l9521h		;951a	20 05		  .
l951ch:
	rrca			;951c	0f		.
	ld de,0202ah		;951d	11 2a 20	. *  
	dec b			;9520	05		.
l9521h:
	dec c			;9521	0d		.
	ld de,0552dh		;9522	11 2d 55	. - U
	ld b,010h		;9525	06 10		. .
	sbc a,l			;9527	9d		.
	sub c			;9528	91		.
	ld (hl),020h		;9529	36 20		6  
	dec b			;952b	05		.
	rrca			;952c	0f		.
	sub c			;952d	91		.
	add hl,sp		;952e	39		9
	jr nz,l9536h		;952f	20 05		  .
	rrca			;9531	0f		.
	ld de,0203dh		;9532	11 3d 20	. =  
	dec b			;9535	05		.
l9536h:
	dec c			;9536	0d		.
	ld de,0243fh		;9537	11 3f 24	. ? $
	ld b,012h		;953a	06 12		. .
	nop			;953c	00		.
	ld de,02041h		;953d	11 41 20	. A  
l9540h:
	dec b			;9540	05		.
	inc c			;9541	0c		.
	ld de,01f42h		;9542	11 42 1f	. B .
	dec b			;9545	05		.
	add hl,bc		;9546	09		.
	ld de,01f48h		;9547	11 48 1f	. H .
	dec b			;954a	05		.
	ld b,011h		;954b	06 11		. .
	ld d,c			;954d	51		Q
	jr nz,l9555h		;954e	20 05		  .
	inc b			;9550	04		.
	ld de,02054h		;9551	11 54 20	. T  
	dec b			;9554	05		.
l9555h:
	inc b			;9555	04		.
	ld de,02457h		;9556	11 57 24	. W $
	ld b,012h		;9559	06 12		. .
	nop			;955b	00		.
	sub c			;955c	91		.
	ld d,(hl)		;955d	56		V
	jr nz,l9565h		;955e	20 05		  .
	add hl,bc		;9560	09		.
	sub c			;9561	91		.
	ld e,b			;9562	58		X
	jr nz,l956ah		;9563	20 05		  .
l9565h:
	ld a,(bc)		;9565	0a		.
	ld de,0225ch		;9566	11 5c 22	. \ "
	dec b			;9569	05		.
l956ah:
	ld a,(bc)		;956a	0a		.
	ld de,02265h		;956b	11 65 22	. e "
	dec b			;956e	05		.
	dec c			;956f	0d		.
	sub c			;9570	91		.
	ld h,a			;9571	67		g
	ld d,c			;9572	51		Q
	adc a,l			;9573	8d		.
	ld b,002h		;9574	06 02		. .
	ld bc,00203h		;9576	01 03 02	. . .
	ex af,af'		;9579	08		.
	inc bc			;957a	03		.
	jr l9540h		;957b	18 c3		. .
	ld de,0266eh		;957d	11 6e 26	. n &
	adc a,d			;9580	8a		.
	inc b			;9581	04		.
	rrca			;9582	0f		.
	inc bc			;9583	03		.
	inc bc			;9584	03		.
	ld (bc),a		;9585	02		.
	ld de,07411h		;9586	11 11 74	. . t
	jr nz,l9590h		;9589	20 05		  .
	dec c			;958b	0d		.
	ld de,02077h		;958c	11 77 20	. w  
	dec b			;958f	05		.
l9590h:
	dec c			;9590	0d		.
	ld de,0267eh		;9591	11 7e 26	. ~ &
	adc a,d			;9594	8a		.
	inc b			;9595	04		.
	rrca			;9596	0f		.
	inc bc			;9597	03		.
	inc bc			;9598	03		.
	ld (bc),a		;9599	02		.
	ld de,l8311h		;959a	11 11 83	. . .
	ld (00d05h),hl		;959d	22 05 0d	" . .
	ld de,02487h		;95a0	11 87 24	. . $
	ld b,012h		;95a3	06 12		. .
	nop			;95a5	00		.
	ld de,02089h		;95a6	11 89 20	. .  
	dec b			;95a9	05		.
	dec bc			;95aa	0b		.
	ld de,01f8ah		;95ab	11 8a 1f	. . .
	dec b			;95ae	05		.
l95afh:
	ex af,af'		;95af	08		.
	ld de,05190h		;95b0	11 90 51	. . Q
	adc a,l			;95b3	8d		.
	ld b,004h		;95b4	06 04		. .
	rra			;95b6	1f		.
	ld (bc),a		;95b7	02		.
	ld (bc),a		;95b8	02		.
	inc b			;95b9	04		.
	inc bc			;95ba	03		.
	dec d			;95bb	15		.
	dec b			;95bc	05		.
	ld de,01f91h		;95bd	11 91 1f	. . .
	dec b			;95c0	05		.
	rlca			;95c1	07		.
	ld de,05198h		;95c2	11 98 51	. . Q
	adc a,l			;95c5	8d		.
	ld b,002h		;95c6	06 02		. .
	rra			;95c8	1f		.
	ld (bc),a		;95c9	02		.
	ld (bc),a		;95ca	02		.
	inc b			;95cb	04		.
	inc bc			;95cc	03		.
	dec d			;95cd	15		.
	dec b			;95ce	05		.
	ld de,01f99h		;95cf	11 99 1f	. . .
	dec b			;95d2	05		.
	ex af,af'		;95d3	08		.
	ld de,0249fh		;95d4	11 9f 24	. . $
	ld b,012h		;95d7	06 12		. .
	nop			;95d9	00		.
	ld de,01fa0h		;95da	11 a0 1f	. . .
	dec b			;95dd	05		.
	ld bc,0ac91h		;95de	01 91 ac	. . .
	ld d,c			;95e1	51		Q
	adc a,l			;95e2	8d		.
	ld b,002h		;95e3	06 02		. .
	ld bc,00203h		;95e5	01 03 02	. . .
	ex af,af'		;95e8	08		.
	inc bc			;95e9	03		.
	jr l95afh		;95ea	18 c3		. .
	jr nz,l95f0h		;95ec	20 02		  .
	jr nz,l95f5h		;95ee	20 05		  .
l95f0h:
	inc h			;95f0	24		$
	jr nz,$+6		;95f1	20 04		  .
	jr nz,l95fah		;95f3	20 05		  .
l95f5h:
	dec l			;95f5	2d		-
	jr nz,l95fch		;95f6	20 04		  .
	jr nz,l95ffh		;95f8	20 05		  .
l95fah:
	jr nc,$+34		;95fa	30 20		0  
l95fch:
	inc b			;95fc	04		.
	rra			;95fd	1f		.
	dec b			;95fe	05		.
l95ffh:
	ld h,020h		;95ff	26 20		&  
	dec b			;9601	05		.
	rra			;9602	1f		.
	dec b			;9603	05		.
	ld (004b0h),a		;9604	32 b0 04	2 . .
	ld d,c			;9607	51		Q
	adc a,l			;9608	8d		.
	ld b,002h		;9609	06 02		. .
	rra			;960b	1f		.
	ld (bc),a		;960c	02		.
	ld (bc),a		;960d	02		.
	inc b			;960e	04		.
	inc bc			;960f	03		.
	dec d			;9610	15		.
	dec b			;9611	05		.
	jr nc,l961ah		;9612	30 06		0 .
	rra			;9614	1f		.
	dec b			;9615	05		.
	dec c			;9616	0d		.
	or b			;9617	b0		.
	ex af,af'		;9618	08		.
	ld d,c			;9619	51		Q
l961ah:
	adc a,l			;961a	8d		.
	ld b,003h		;961b	06 03		. .
	rra			;961d	1f		.
	ld (bc),a		;961e	02		.
	ld (bc),a		;961f	02		.
	inc b			;9620	04		.
	inc bc			;9621	03		.
	dec d			;9622	15		.
	dec b			;9623	05		.
	or b			;9624	b0		.
	inc c			;9625	0c		.
	pop de			;9626	d1		.
	adc a,l			;9627	8d		.
	ld b,004h		;9628	06 04		. .
	rra			;962a	1f		.
	ld (bc),a		;962b	02		.
	ld (bc),a		;962c	02		.
	inc b			;962d	04		.
	inc bc			;962e	03		.
	dec d			;962f	15		.
	dec b			;9630	05		.
	jr nc,$+15		;9631	30 0d		0 .
	rra			;9633	1f		.
	dec b			;9634	05		.
	rrca			;9635	0f		.
	jr nc,l9650h		;9636	30 18		0 .
	ld d,(hl)		;9638	56		V
	dec b			;9639	05		.
	nop			;963a	00		.
	jr nc,l9676h		;963b	30 39		0 9
	ld b,a			;963d	47		G
	dec b			;963e	05		.
	ld c,040h		;963f	0e 40		. @
	jr z,l96a2h		;9641	28 5f		( _
	dec b			;9643	05		.
	inc bc			;9644	03		.
	ld d,b			;9645	50		P
	nop			;9646	00		.
	ld h,h			;9647	64		d
	adc a,b			;9648	88		.
	ld (bc),a		;9649	02		.
	inc c			;964a	0c		.
	ld (bc),a		;964b	02		.
	dec a			;964c	3d		=
	nop			;964d	00		.
	djnz l9671h		;964e	10 21		. !
l9650h:
	ld d,c			;9650	51		Q
	adc a,l			;9651	8d		.
	ld b,010h		;9652	06 10		. .
	rra			;9654	1f		.
	inc bc			;9655	03		.
	ld (bc),a		;9656	02		.
	add a,(hl)		;9657	86		.
	inc bc			;9658	03		.
	ld (de),a		;9659	12		.
	nop			;965a	00		.
	djnz $+41		;965b	10 27		. '
	add hl,de		;965d	19		.
	ld b,014h		;965e	06 14		. .
	ld e,010h		;9660	1e 10		. .
	daa			;9662	27		'
	ld d,c			;9663	51		Q
	adc a,l			;9664	8d		.
	ld b,010h		;9665	06 10		. .
	rra			;9667	1f		.
	inc bc			;9668	03		.
	ld (bc),a		;9669	02		.
	add a,(hl)		;966a	86		.
	inc bc			;966b	03		.
	ld (de),a		;966c	12		.
	ld bc,02f10h		;966d	01 10 2f	. . /
	ld d,c			;9670	51		Q
l9671h:
	adc a,l			;9671	8d		.
	ld b,008h		;9672	06 08		. .
	rra			;9674	1f		.
	inc bc			;9675	03		.
l9676h:
	ld (bc),a		;9676	02		.
	add a,(hl)		;9677	86		.
	inc bc			;9678	03		.
	ld (de),a		;9679	12		.
	nop			;967a	00		.
	djnz l96aeh		;967b	10 31		. 1
	ld d,c			;967d	51		Q
	adc a,(hl)		;967e	8e		.
	ex af,af'		;967f	08		.
	ld bc,0041fh		;9680	01 1f 04	. . .
	ld bc,00320h		;9683	01 20 03	.   .
	ld c,b			;9686	48		H
	ld (bc),a		;9687	02		.
	djnz $+18		;9688	10 10		. .
	scf			;968a	37		7
	add hl,de		;968b	19		.
	ld b,014h		;968c	06 14		. .
	ld e,010h		;968e	1e 10		. .
	ld b,e			;9690	43		C
	add hl,hl		;9691	29		)
	dec b			;9692	05		.
	ld (de),a		;9693	12		.
	djnz $+71		;9694	10 45		. E
	add hl,hl		;9696	29		)
	dec b			;9697	05		.
	ld (de),a		;9698	12		.
l9699h:
	djnz l96e6h		;9699	10 4b		. K
	add hl,hl		;969b	29		)
	dec b			;969c	05		.
	inc d			;969d	14		.
	djnz l96edh		;969e	10 4d		. M
	add hl,hl		;96a0	29		)
	dec b			;96a1	05		.
l96a2h:
	inc d			;96a2	14		.
	djnz l96f4h		;96a3	10 4f		. O
	ld d,c			;96a5	51		Q
	adc a,l			;96a6	8d		.
	ld b,008h		;96a7	06 08		. .
	rra			;96a9	1f		.
	inc b			;96aa	04		.
	ld (bc),a		;96ab	02		.
	add a,(hl)		;96ac	86		.
	inc bc			;96ad	03		.
l96aeh:
	jr l96b0h		;96ae	18 00		. .
l96b0h:
	djnz l9703h		;96b0	10 51		. Q
	add hl,hl		;96b2	29		)
	dec b			;96b3	05		.
	add a,h			;96b4	84		.
	djnz l970eh		;96b5	10 57		. W
	ld d,c			;96b7	51		Q
	adc a,l			;96b8	8d		.
	ld b,004h		;96b9	06 04		. .
l96bbh:
	rra			;96bb	1f		.
	inc b			;96bc	04		.
	ld (bc),a		;96bd	02		.
	add a,(hl)		;96be	86		.
	inc bc			;96bf	03		.
	jr l96c2h		;96c0	18 00		. .
l96c2h:
	djnz l971fh		;96c2	10 5b		. [
	add hl,de		;96c4	19		.
	ld b,014h		;96c5	06 14		. .
	ld e,010h		;96c7	1e 10		. .
	ld h,d			;96c9	62		b
	add hl,hl		;96ca	29		)
	dec b			;96cb	05		.
	add a,e			;96cc	83		.
	djnz l9733h		;96cd	10 64		. d
	add hl,hl		;96cf	29		)
	dec b			;96d0	05		.
	add a,e			;96d1	83		.
	djnz l973dh		;96d2	10 69		. i
	daa			;96d4	27		'
	dec b			;96d5	05		.
	inc c			;96d6	0c		.
	djnz l974ah		;96d7	10 71		. q
	add hl,de		;96d9	19		.
	ld b,014h		;96da	06 14		. .
	ld e,010h		;96dc	1e 10		. .
	ld (hl),c		;96de	71		q
	daa			;96df	27		'
	dec b			;96e0	05		.
	ex af,af'		;96e1	08		.
	djnz $+121		;96e2	10 77		. w
	ld d,c			;96e4	51		Q
	adc a,l			;96e5	8d		.
l96e6h:
	ld b,008h		;96e6	06 08		. .
	rra			;96e8	1f		.
	inc b			;96e9	04		.
	ld (bc),a		;96ea	02		.
	add a,(hl)		;96eb	86		.
	inc bc			;96ec	03		.
l96edh:
	jr l96efh		;96ed	18 00		. .
l96efh:
	djnz l976ah		;96ef	10 79		. y
	daa			;96f1	27		'
	dec b			;96f2	05		.
	ld (de),a		;96f3	12		.
l96f4h:
	djnz l9770h		;96f4	10 7a		. z
	add hl,de		;96f6	19		.
l96f7h:
	ld b,094h		;96f7	06 94		. .
	ld bc,08110h		;96f9	01 10 81	. . .
	daa			;96fc	27		'
	dec b			;96fd	05		.
l96feh:
	ld c,010h		;96fe	0e 10		. .
	add a,l			;9700	85		.
	add hl,hl		;9701	29		)
	dec b			;9702	05		.
l9703h:
	add a,e			;9703	83		.
	djnz $-119		;9704	10 87		. .
	add hl,de		;9706	19		.
	ld b,014h		;9707	06 14		. .
	ld e,010h		;9709	1e 10		. .
	add a,a			;970b	87		.
	add hl,hl		;970c	29		)
	dec b			;970d	05		.
l970eh:
	add a,e			;970e	83		.
	djnz l9699h		;970f	10 88		. .
	ld e,a			;9711	5f		_
	ld b,001h		;9712	06 01		. .
	ld bc,l8f10h		;9714	01 10 8f	. . .
	ld l,007h		;9717	2e 07		. .
	ld (bc),a		;9719	02		.
	add a,d			;971a	82		.
	add a,d			;971b	82		.
	djnz l96bbh		;971c	10 9d		. .
	add hl,hl		;971e	29		)
l971fh:
	dec b			;971f	05		.
	inc d			;9720	14		.
	djnz l96c2h		;9721	10 9f		. .
	add hl,hl		;9723	29		)
	dec b			;9724	05		.
	inc d			;9725	14		.
	djnz $-94		;9726	10 a0		. .
	add hl,hl		;9728	29		)
	dec b			;9729	05		.
	add a,e			;972a	83		.
	sub b			;972b	90		.
	and l			;972c	a5		.
	add hl,hl		;972d	29		)
	dec b			;972e	05		.
	inc d			;972f	14		.
	sub b			;9730	90		.
	xor c			;9731	a9		.
	add hl,hl		;9732	29		)
l9733h:
	dec b			;9733	05		.
	add a,l			;9734	85		.
	djnz $-78		;9735	10 b0		. .
	ld e,a			;9737	5f		_
	ld b,001h		;9738	06 01		. .
	nop			;973a	00		.
	djnz $-75		;973b	10 b3		. .
l973dh:
	add hl,hl		;973d	29		)
	dec b			;973e	05		.
	add a,h			;973f	84		.
	djnz l96f7h		;9740	10 b5		. .
	add hl,hl		;9742	29		)
	dec b			;9743	05		.
	add a,(hl)		;9744	86		.
	djnz l96feh		;9745	10 b7		. .
	add hl,hl		;9747	29		)
	dec b			;9748	05		.
	adc a,b			;9749	88		.
l974ah:
	jr nz,l974dh		;974a	20 01		  .
	add hl,hl		;974c	29		)
l974dh:
	dec b			;974d	05		.
	and b			;974e	a0		.
	jr nz,l9752h		;974f	20 01		  .
	add hl,hl		;9751	29		)
l9752h:
	dec b			;9752	05		.
	and d			;9753	a2		.
	jr nz,l9757h		;9754	20 01		  .
	dec hl			;9756	2b		+
l9757h:
	adc a,c			;9757	89		.
	inc bc			;9758	03		.
	xor b			;9759	a8		.
	djnz l975eh		;975a	10 02		. .
	ld d,0a0h		;975c	16 a0		. .
l975eh:
	inc bc			;975e	03		.
	add hl,hl		;975f	29		)
	dec b			;9760	05		.
	dec c			;9761	0d		.
	and b			;9762	a0		.
	inc bc			;9763	03		.
	add hl,hl		;9764	29		)
	dec b			;9765	05		.
	rrca			;9766	0f		.
	jr nz,l9772h		;9767	20 09		  .
	add hl,hl		;9769	29		)
l976ah:
	dec b			;976a	05		.
	dec d			;976b	15		.
	and b			;976c	a0		.
	dec bc			;976d	0b		.
	add hl,hl		;976e	29		)
	dec b			;976f	05		.
l9770h:
	dec c			;9770	0d		.
	and b			;9771	a0		.
l9772h:
	dec bc			;9772	0b		.
	add hl,hl		;9773	29		)
	dec b			;9774	05		.
	rrca			;9775	0f		.
	jr nz,l978dh		;9776	20 15		  .
	ld e,a			;9778	5f		_
	ld b,001h		;9779	06 01		. .
	ld bc,01520h		;977b	01 20 15	.   .
	ld l,007h		;977e	2e 07		. .
	dec e			;9780	1d		.
	nop			;9781	00		.
	add a,d			;9782	82		.
	and b			;9783	a0		.
	dec de			;9784	1b		.
	dec hl			;9785	2b		+
	adc a,c			;9786	89		.
	inc bc			;9787	03		.
	add hl,bc		;9788	09		.
	djnz l978dh		;9789	10 02		. .
	ld d,020h		;978b	16 20		.  
l978dh:
	ld hl,0072eh		;978d	21 2e 07	! . .
	dec h			;9790	25		%
	nop			;9791	00		.
	add a,d			;9792	82		.
	and b			;9793	a0		.
	inc hl			;9794	23		#
	add hl,hl		;9795	29		)
	dec b			;9796	05		.
	ld a,(bc)		;9797	0a		.
	jr nc,l979ah		;9798	30 00		0 .
l979ah:
	add hl,hl		;979a	29		)
	dec b			;979b	05		.
	adc a,b			;979c	88		.
	jr nc,l979fh		;979d	30 00		0 .
l979fh:
	add hl,hl		;979f	29		)
	dec b			;97a0	05		.
	inc d			;97a1	14		.
	jr nc,l97a6h		;97a2	30 02		0 .
	add hl,hl		;97a4	29		)
	dec b			;97a5	05		.
l97a6h:
	adc a,b			;97a6	88		.
	jr nc,l97abh		;97a7	30 02		0 .
	add hl,hl		;97a9	29		)
	dec b			;97aa	05		.
l97abh:
	inc d			;97ab	14		.
	jr nc,$+6		;97ac	30 04		0 .
	add hl,hl		;97ae	29		)
	dec b			;97af	05		.
	adc a,d			;97b0	8a		.
	jr nc,$+6		;97b1	30 04		0 .
	add hl,hl		;97b3	29		)
	dec b			;97b4	05		.
	ld (de),a		;97b5	12		.
	jr nc,l97beh		;97b6	30 06		0 .
	add hl,hl		;97b8	29		)
	dec b			;97b9	05		.
	adc a,d			;97ba	8a		.
	jr nc,l97c3h		;97bb	30 06		0 .
	add hl,hl		;97bd	29		)
l97beh:
	dec b			;97be	05		.
	ld (de),a		;97bf	12		.
	jr nc,l97ceh		;97c0	30 0c		0 .
	add hl,hl		;97c2	29		)
l97c3h:
	dec b			;97c3	05		.
	inc d			;97c4	14		.
	jr nc,l97d5h		;97c5	30 0e		0 .
	add hl,hl		;97c7	29		)
	dec b			;97c8	05		.
	inc d			;97c9	14		.
	jr nc,l97e4h		;97ca	30 18		0 .
	ld d,c			;97cc	51		Q
	adc a,l			;97cd	8d		.
l97ceh:
	ld b,004h		;97ce	06 04		. .
	rra			;97d0	1f		.
	inc b			;97d1	04		.
	ld (bc),a		;97d2	02		.
	add a,(hl)		;97d3	86		.
	inc bc			;97d4	03		.
l97d5h:
	jr l97d7h		;97d5	18 00		. .
l97d7h:
	jr nc,l97f3h		;97d7	30 1a		0 .
	dec l			;97d9	2d		-
	dec b			;97da	05		.
	add a,e			;97db	83		.
	jr nc,l97f8h		;97dc	30 1a		0 .
	dec l			;97de	2d		-
	dec b			;97df	05		.
	inc d			;97e0	14		.
	jr nc,l9803h		;97e1	30 20		0  
	ld e,a			;97e3	5f		_
l97e4h:
	ld b,001h		;97e4	06 01		. .
	nop			;97e6	00		.
	jr nc,$+42		;97e7	30 28		0 (
	dec l			;97e9	2d		-
	dec b			;97ea	05		.
	add a,e			;97eb	83		.
	jr nc,$+42		;97ec	30 28		0 (
	dec l			;97ee	2d		-
	dec b			;97ef	05		.
	inc d			;97f0	14		.
	jr nc,$+53		;97f1	30 33		0 3
l97f3h:
	add hl,hl		;97f3	29		)
	dec b			;97f4	05		.
	inc d			;97f5	14		.
	jr nc,l982dh		;97f6	30 35		0 5
l97f8h:
	add hl,hl		;97f8	29		)
	dec b			;97f9	05		.
	inc d			;97fa	14		.
	jr nc,l9835h		;97fb	30 38		0 8
	add hl,hl		;97fd	29		)
	dec b			;97fe	05		.
	ld (de),a		;97ff	12		.
	jr nc,l983fh		;9800	30 3d		0 =
	add hl,hl		;9802	29		)
l9803h:
	dec b			;9803	05		.
	add a,e			;9804	83		.
	jr nc,l9845h		;9805	30 3e		0 >
	ld e,a			;9807	5f		_
	ld b,001h		;9808	06 01		. .
	ld bc,03f30h		;980a	01 30 3f	. 0 ?
	add hl,hl		;980d	29		)
	dec b			;980e	05		.
	add a,e			;980f	83		.
	jr nc,l9853h		;9810	30 41		0 A
l9812h:
	ld sp,00a06h		;9812	31 06 0a	1 . .
	ld bc,04c30h		;9815	01 30 4c	. 0 L
	ld sp,00a06h		;9818	31 06 0a	1 . .
	nop			;981b	00		.
l981ch:
	jr nc,l986eh		;981c	30 50		0 P
	ld d,c			;981e	51		Q
	adc a,(hl)		;981f	8e		.
	ex af,af'		;9820	08		.
	ld bc,0031fh		;9821	01 1f 03	. . .
	ld bc,00320h		;9824	01 20 03	.   .
	ld (hl),b		;9827	70		p
	ld (bc),a		;9828	02		.
	djnz $+50		;9829	10 30		. 0
	ld d,b			;982b	50		P
	add hl,hl		;982c	29		)
l982dh:
	dec b			;982d	05		.
	add a,e			;982e	83		.
	jr nc,l9883h		;982f	30 52		0 R
	add hl,hl		;9831	29		)
l9832h:
	dec b			;9832	05		.
	add a,e			;9833	83		.
	or b			;9834	b0		.
l9835h:
	ld d,h			;9835	54		T
	add hl,hl		;9836	29		)
	dec b			;9837	05		.
l9838h:
	adc a,h			;9838	8c		.
	jr nc,l988fh		;9839	30 54		0 T
	add hl,hl		;983b	29		)
	dec b			;983c	05		.
	ld (de),a		;983d	12		.
	or b			;983e	b0		.
l983fh:
	ld d,(hl)		;983f	56		V
	add hl,hl		;9840	29		)
	dec b			;9841	05		.
	adc a,h			;9842	8c		.
	jr nc,$+88		;9843	30 56		0 V
l9845h:
	add hl,hl		;9845	29		)
	dec b			;9846	05		.
	ld (de),a		;9847	12		.
	jr nc,$+95		;9848	30 5d		0 ]
	ld sp,00a06h		;984a	31 06 0a	1 . .
	ld bc,060b0h		;984d	01 b0 60	. . `
l9850h:
	add hl,hl		;9850	29		)
	dec b			;9851	05		.
	inc d			;9852	14		.
l9853h:
	or b			;9853	b0		.
	ld h,d			;9854	62		b
	add hl,hl		;9855	29		)
	dec b			;9856	05		.
	inc d			;9857	14		.
	jr nc,$+103		;9858	30 65		0 e
	ld sp,00a06h		;985a	31 06 0a	1 . .
	nop			;985d	00		.
	jr nc,l98c7h		;985e	30 67		0 g
	pop de			;9860	d1		.
	adc a,l			;9861	8d		.
	ld b,008h		;9862	06 08		. .
	rra			;9864	1f		.
	inc b			;9865	04		.
	ld (bc),a		;9866	02		.
	add a,(hl)		;9867	86		.
	inc bc			;9868	03		.
l9869h:
	jr l986bh		;9869	18 00		. .
l986bh:
	jr nc,l98d5h		;986b	30 68		0 h
	add hl,hl		;986d	29		)
l986eh:
	dec b			;986e	05		.
	add a,e			;986f	83		.
l9870h:
	jr nc,l98dch		;9870	30 6a		0 j
	add hl,hl		;9872	29		)
	dec b			;9873	05		.
	add a,e			;9874	83		.
	jr nc,l98e4h		;9875	30 6d		0 m
l9877h:
	ld sp,00a06h		;9877	31 06 0a	1 . .
	ld bc,07030h		;987a	01 30 70	. 0 p
	dec hl			;987d	2b		+
	adc a,c			;987e	89		.
	inc bc			;987f	03		.
	inc d			;9880	14		.
l9881h:
	djnz l9885h		;9881	10 02		. .
l9883h:
	ld d,030h		;9883	16 30		. 0
l9885h:
	ld a,h			;9885	7c		|
	ld sp,00a06h		;9886	31 06 0a	1 . .
	ld bc,07e30h		;9889	01 30 7e	. 0 ~
	add hl,hl		;988c	29		)
l988dh:
	dec b			;988d	05		.
	inc d			;988e	14		.
l988fh:
	jr nc,l9812h		;988f	30 81		0 .
	ld sp,00a06h		;9891	31 06 0a	1 . .
	nop			;9894	00		.
	jr nc,l981ch		;9895	30 85		0 .
	ld sp,00a06h		;9897	31 06 0a	1 . .
	ld bc,l8a30h		;989a	01 30 8a	. 0 .
	dec l			;989d	2d		-
	dec b			;989e	05		.
	add a,e			;989f	83		.
	jr nc,l9832h		;98a0	30 90		0 .
	ld e,a			;98a2	5f		_
	ld b,001h		;98a3	06 01		. .
	nop			;98a5	00		.
	jr nc,l9838h		;98a6	30 90		0 .
	dec l			;98a8	2d		-
	dec b			;98a9	05		.
	inc d			;98aa	14		.
	jr nc,l983fh		;98ab	30 92		0 .
	pop de			;98ad	d1		.
	adc a,l			;98ae	8d		.
	ld b,00ah		;98af	06 0a		. .
	rra			;98b1	1f		.
	inc b			;98b2	04		.
	ld (bc),a		;98b3	02		.
	add a,(hl)		;98b4	86		.
	inc bc			;98b5	03		.
	jr l98b8h		;98b6	18 00		. .
l98b8h:
	or b			;98b8	b0		.
	sub d			;98b9	92		.
	ld d,c			;98ba	51		Q
	adc a,(hl)		;98bb	8e		.
	ex af,af'		;98bc	08		.
l98bdh:
	ld bc,0031fh		;98bd	01 1f 03	. . .
	ld bc,00320h		;98c0	01 20 03	.   .
	ld (hl),b		;98c3	70		p
	ld (bc),a		;98c4	02		.
	djnz l98f7h		;98c5	10 30		. 0
l98c7h:
	sbc a,d			;98c7	9a		.
	add hl,hl		;98c8	29		)
	dec b			;98c9	05		.
	inc c			;98ca	0c		.
	jr nc,l9869h		;98cb	30 9c		0 .
	add hl,hl		;98cd	29		)
	dec b			;98ce	05		.
	adc a,d			;98cf	8a		.
	jr nc,l9870h		;98d0	30 9e		0 .
	add hl,hl		;98d2	29		)
	dec b			;98d3	05		.
	adc a,d			;98d4	8a		.
l98d5h:
	jr nc,l9877h		;98d5	30 a0		0 .
	add hl,hl		;98d7	29		)
	dec b			;98d8	05		.
	inc c			;98d9	0c		.
	jr nc,l9881h		;98da	30 a5		0 .
l98dch:
	add hl,hl		;98dc	29		)
	dec b			;98dd	05		.
	djnz l9910h		;98de	10 30		. 0
	and a			;98e0	a7		.
	add hl,hl		;98e1	29		)
	dec b			;98e2	05		.
	add a,(hl)		;98e3	86		.
l98e4h:
	jr nc,l988dh		;98e4	30 a7		0 .
	add hl,hl		;98e6	29		)
	dec b			;98e7	05		.
	djnz l991ah		;98e8	10 30		. 0
	xor c			;98ea	a9		.
	add hl,hl		;98eb	29		)
	dec b			;98ec	05		.
	add a,(hl)		;98ed	86		.
	jr nc,$-85		;98ee	30 a9		0 .
	add hl,hl		;98f0	29		)
	dec b			;98f1	05		.
	djnz l9924h		;98f2	10 30		. 0
	xor (hl)		;98f4	ae		.
	ld d,e			;98f5	53		S
	adc a,b			;98f6	88		.
l98f7h:
	ld (bc),a		;98f7	02		.
	nop			;98f8	00		.
	ld (bc),a		;98f9	02		.
	ld hl,(0b830h)		;98fa	2a 30 b8	* 0 .
	cpl			;98fd	2f		/
	dec b			;98fe	05		.
	sbc a,b			;98ff	98		.
	jr nc,l98bdh		;9900	30 bb		0 .
	cpl			;9902	2f		/
	dec b			;9903	05		.
	adc a,(hl)		;9904	8e		.
	jr nc,$-67		;9905	30 bb		0 .
	cpl			;9907	2f		/
	dec b			;9908	05		.
	sub c			;9909	91		.
	ld b,b			;990a	40		@
	ld (bc),a		;990b	02		.
	cpl			;990c	2f		/
	dec b			;990d	05		.
	sbc a,c			;990e	99		.
	ld b,b			;990f	40		@
l9910h:
	inc bc			;9910	03		.
	cpl			;9911	2f		/
	dec b			;9912	05		.
	inc e			;9913	1c		.
	ld b,b			;9914	40		@
	ld b,02fh		;9915	06 2f		. /
	dec b			;9917	05		.
	ld a,(de)		;9918	1a		.
	ld b,b			;9919	40		@
l991ah:
	ex af,af'		;991a	08		.
	cpl			;991b	2f		/
	dec b			;991c	05		.
	add a,l			;991d	85		.
	ret nz			;991e	c0		.
	add hl,bc		;991f	09		.
	xor c			;9920	a9		.
	dec b			;9921	05		.
	adc a,b			;9922	88		.
	ret nz			;9923	c0		.
l9924h:
	add hl,bc		;9924	09		.
	add hl,hl		;9925	29		)
	dec b			;9926	05		.
	adc a,d			;9927	8a		.
	ld b,b			;9928	40		@
	add hl,bc		;9929	09		.
	add hl,hl		;992a	29		)
	dec b			;992b	05		.
	ld d,040h		;992c	16 40		. @
	dec bc			;992e	0b		.
	cpl			;992f	2f		/
	dec b			;9930	05		.
	inc bc			;9931	03		.
	ld b,b			;9932	40		@
	ld c,02fh		;9933	0e 2f		. /
	dec b			;9935	05		.
	add a,l			;9936	85		.
	ld b,b			;9937	40		@
	rrca			;9938	0f		.
	xor c			;9939	a9		.
	dec b			;993a	05		.
	ex af,af'		;993b	08		.
	ld b,b			;993c	40		@
	rrca			;993d	0f		.
	add hl,hl		;993e	29		)
	dec b			;993f	05		.
	ld a,(bc)		;9940	0a		.
	ld b,b			;9941	40		@
	djnz l9973h		;9942	10 2f		. /
	dec b			;9944	05		.
	ld (bc),a		;9945	02		.
	ld b,b			;9946	40		@
	rla			;9947	17		.
	add hl,hl		;9948	29		)
	dec b			;9949	05		.
	inc d			;994a	14		.
	ld b,b			;994b	40		@
	rla			;994c	17		.
	add hl,hl		;994d	29		)
	dec b			;994e	05		.
	ld d,040h		;994f	16 40		. @
	jr nz,l9982h		;9951	20 2f		  /
	dec b			;9953	05		.
	inc bc			;9954	03		.
	ld b,b			;9955	40		@
	ld hl,0052fh		;9956	21 2f 05	! / .
	dec b			;9959	05		.
	ld b,b			;995a	40		@
	inc hl			;995b	23		#
	add hl,hl		;995c	29		)
	dec b			;995d	05		.
	adc a,b			;995e	88		.
	ld b,b			;995f	40		@
	inc hl			;9960	23		#
	add hl,hl		;9961	29		)
	dec b			;9962	05		.
	adc a,d			;9963	8a		.
	ld b,b			;9964	40		@
	dec h			;9965	25		%
	cpl			;9966	2f		/
	dec b			;9967	05		.
	inc bc			;9968	03		.
	ld b,b			;9969	40		@
	daa			;996a	27		'
	cpl			;996b	2f		/
	dec b			;996c	05		.
	ld b,040h		;996d	06 40		. @
	daa			;996f	27		'
	cpl			;9970	2f		/
	dec b			;9971	05		.
	rla			;9972	17		.
l9973h:
	ld b,b			;9973	40		@
	jr z,$+49		;9974	28 2f		( /
	dec b			;9976	05		.
l9977h:
	dec de			;9977	1b		.
	ld b,b			;9978	40		@
	add hl,hl		;9979	29		)
	cpl			;997a	2f		/
	dec b			;997b	05		.
	jr l99beh		;997c	18 40		. @
	dec (hl)		;997e	35		5
	add hl,hl		;997f	29		)
	dec b			;9980	05		.
	sub (hl)		;9981	96		.
l9982h:
	ld b,b			;9982	40		@
	dec (hl)		;9983	35		5
	add hl,hl		;9984	29		)
	dec b			;9985	05		.
	sbc a,b			;9986	98		.
	ld b,b			;9987	40		@
	ld b,e			;9988	43		C
	add hl,hl		;9989	29		)
	dec b			;998a	05		.
	ld d,040h		;998b	16 40		. @
	ld b,e			;998d	43		C
	add hl,hl		;998e	29		)
	dec b			;998f	05		.
	jr l99e2h		;9990	18 50		. P
	inc b			;9992	04		.
	dec hl			;9993	2b		+
	adc a,c			;9994	89		.
	inc bc			;9995	03		.
	add a,e			;9996	83		.
	jr l999bh		;9997	18 02		. .
	ld d,050h		;9999	16 50		. P
l999bh:
	inc b			;999b	04		.
	dec hl			;999c	2b		+
	adc a,c			;999d	89		.
	inc bc			;999e	03		.
	inc d			;999f	14		.
	jr z,l99a4h		;99a0	28 02		( .
	ld d,050h		;99a2	16 50		. P
l99a4h:
	djnz l9977h		;99a4	10 d1		. .
	adc a,(hl)		;99a6	8e		.
	ex af,af'		;99a7	08		.
	ld bc,0031fh		;99a8	01 1f 03	. . .
	ld bc,00320h		;99ab	01 20 03	.   .
	ld c,b			;99ae	48		H
	ld (bc),a		;99af	02		.
	djnz l9a02h		;99b0	10 50		. P
	ld de,00529h		;99b2	11 29 05	. ) .
	inc d			;99b5	14		.
	ld d,b			;99b6	50		P
	ld de,00529h		;99b7	11 29 05	. ) .
	add a,e			;99ba	83		.
	ld d,b			;99bb	50		P
	inc de			;99bc	13		.
	add hl,hl		;99bd	29		)
l99beh:
	dec b			;99be	05		.
	inc d			;99bf	14		.
	ld d,b			;99c0	50		P
	inc de			;99c1	13		.
	add hl,hl		;99c2	29		)
	dec b			;99c3	05		.
	add a,e			;99c4	83		.
	ld d,b			;99c5	50		P
	jr $+97			;99c6	18 5f		. _
	ld b,001h		;99c8	06 01		. .
	ld bc,02450h		;99ca	01 50 24	. P $
	and a			;99cd	a7		.
	dec b			;99ce	05		.
	ld b,050h		;99cf	06 50		. P
	jr z,l99a4h		;99d1	28 d1		( .
	adc a,l			;99d3	8d		.
	ld b,00ah		;99d4	06 0a		. .
	rra			;99d6	1f		.
	inc b			;99d7	04		.
	ld (bc),a		;99d8	02		.
	add a,(hl)		;99d9	86		.
	inc bc			;99da	03		.
	jr l99ddh		;99db	18 00		. .
l99ddh:
	ld d,b			;99dd	50		P
	jr z,l9a11h		;99de	28 31		( 1
	ld b,00ah		;99e0	06 0a		. .
l99e2h:
	nop			;99e2	00		.
	ld d,b			;99e3	50		P
	jr c,l9a13h		;99e4	38 2d		8 -
	dec b			;99e6	05		.
	add a,e			;99e7	83		.
	ld d,b			;99e8	50		P
	add hl,sp		;99e9	39		9
	dec l			;99ea	2d		-
	dec b			;99eb	05		.
	inc d			;99ec	14		.
	ld d,b			;99ed	50		P
	ld b,c			;99ee	41		A
	or c			;99ef	b1		.
	ld b,00ah		;99f0	06 0a		. .
	ld bc,04750h		;99f2	01 50 47	. P G
	dec hl			;99f5	2b		+
	adc a,c			;99f6	89		.
	inc bc			;99f7	03		.
	add a,e			;99f8	83		.
	djnz l99fdh		;99f9	10 02		. .
	ld d,050h		;99fb	16 50		. P
l99fdh:
	ld c,b			;99fd	48		H
	ld e,a			;99fe	5f		_
	ld b,001h		;99ff	06 01		. .
	nop			;9a01	00		.
l9a02h:
	ld d,b			;9a02	50		P
	ld d,b			;9a03	50		P
	ld d,c			;9a04	51		Q
	adc a,l			;9a05	8d		.
	ld b,004h		;9a06	06 04		. .
	rra			;9a08	1f		.
	inc b			;9a09	04		.
	ld (bc),a		;9a0a	02		.
	add a,(hl)		;9a0b	86		.
	inc bc			;9a0c	03		.
	jr l9a0fh		;9a0d	18 00		. .
l9a0fh:
	ld d,b			;9a0f	50		P
	ld d,d			;9a10	52		R
l9a11h:
	dec hl			;9a11	2b		+
	adc a,c			;9a12	89		.
l9a13h:
	inc bc			;9a13	03		.
	inc d			;9a14	14		.
	djnz l9a19h		;9a15	10 02		. .
	ld d,050h		;9a17	16 50		. P
l9a19h:
	add a,b			;9a19	80		.
	ld e,a			;9a1a	5f		_
	dec b			;9a1b	05		.
	inc bc			;9a1c	03		.
	ld d,b			;9a1d	50		P
	adc a,c			;9a1e	89		.
	inc a			;9a1f	3c		<
	ld b,001h		;9a20	06 01		. .
	nop			;9a22	00		.
	ld d,b			;9a23	50		P
	adc a,c			;9a24	89		.
	inc a			;9a25	3c		<
	ld b,012h		;9a26	06 12		. .
	ld (bc),a		;9a28	02		.
	ld d,b			;9a29	50		P
	sbc a,b			;9a2a	98		.
	inc a			;9a2b	3c		<
	ld b,001h		;9a2c	06 01		. .
	ld bc,l9850h		;9a2e	01 50 98	. P .
	inc a			;9a31	3c		<
	ld b,013h		;9a32	06 13		. .
	inc bc			;9a34	03		.
	ld d,b			;9a35	50		P
	sbc a,(hl)		;9a36	9e		.
	inc a			;9a37	3c		<
	ld b,004h		;9a38	06 04		. .
	inc b			;9a3a	04		.
	ld d,b			;9a3b	50		P
	sbc a,(hl)		;9a3c	9e		.
	ld a,d			;9a3d	7a		z
	adc a,b			;9a3e	88		.
l9a3fh:
	ld (bc),a		;9a3f	02		.
	ex af,af'		;9a40	08		.
	ld (bc),a		;9a41	02		.
	dec sp			;9a42	3b		;
	nop			;9a43	00		.
	nop			;9a44	00		.
	nop			;9a45	00		.
	djnz l9a61h		;9a46	10 19		. .
	ld (01405h),a		;9a48	32 05 14	2 . .
	djnz l9a68h		;9a4b	10 1b		. .
	ld (01405h),a		;9a4d	32 05 14	2 . .
	djnz l9a6fh		;9a50	10 1d		. .
	ld (01405h),a		;9a52	32 05 14	2 . .
	djnz l9a76h		;9a55	10 1f		. .
	ld d,c			;9a57	51		Q
	adc a,h			;9a58	8c		.
	ld b,008h		;9a59	06 08		. .
	rra			;9a5b	1f		.
	inc bc			;9a5c	03		.
	ld (bc),a		;9a5d	02		.
	sub b			;9a5e	90		.
	ld (bc),a		;9a5f	02		.
	inc de			;9a60	13		.
l9a61h:
	djnz l9a83h		;9a61	10 20		.  
	ld (l8405h),a		;9a63	32 05 84	2 . .
	djnz l9a8ah		;9a66	10 22		. "
l9a68h:
	ld (l8405h),a		;9a68	32 05 84	2 . .
	djnz l9a95h		;9a6b	10 28		. (
	ld d,c			;9a6d	51		Q
	adc a,h			;9a6e	8c		.
l9a6fh:
	ld b,00ch		;9a6f	06 0c		. .
	rra			;9a71	1f		.
	inc bc			;9a72	03		.
	ld (bc),a		;9a73	02		.
	sub b			;9a74	90		.
	ld (bc),a		;9a75	02		.
l9a76h:
	inc de			;9a76	13		.
	djnz $+42		;9a77	10 28		. (
	ld d,c			;9a79	51		Q
	adc a,h			;9a7a	8c		.
	ld b,002h		;9a7b	06 02		. .
	rra			;9a7d	1f		.
	inc b			;9a7e	04		.
	ld (bc),a		;9a7f	02		.
	sub b			;9a80	90		.
	ld (bc),a		;9a81	02		.
	inc de			;9a82	13		.
l9a83h:
	djnz $+52		;9a83	10 32		. 2
	ld d,c			;9a85	51		Q
	adc a,h			;9a86	8c		.
	ld b,010h		;9a87	06 10		. .
	rra			;9a89	1f		.
l9a8ah:
	inc bc			;9a8a	03		.
	ld (bc),a		;9a8b	02		.
	sub b			;9a8c	90		.
	ld (bc),a		;9a8d	02		.
	inc de			;9a8e	13		.
	djnz $+54		;9a8f	10 34		. 4
	ld d,c			;9a91	51		Q
	adc a,h			;9a92	8c		.
	ld b,005h		;9a93	06 05		. .
l9a95h:
	rra			;9a95	1f		.
	inc bc			;9a96	03		.
	ld (bc),a		;9a97	02		.
	sub b			;9a98	90		.
	ld (bc),a		;9a99	02		.
	inc de			;9a9a	13		.
l9a9bh:
	djnz $+55		;9a9b	10 35		. 5
	ld (l8205h),a		;9a9d	32 05 82	2 . .
	djnz l9ad7h		;9aa0	10 35		. 5
	ld (01405h),a		;9aa2	32 05 14	2 . .
	djnz l9adeh		;9aa5	10 37		. 7
	ld (l8205h),a		;9aa7	32 05 82	2 . .
	djnz $+58		;9aaa	10 38		. 8
	ld (01405h),a		;9aac	32 05 14	2 . .
	djnz l9ae9h		;9aaf	10 38		. 8
	ld d,c			;9ab1	51		Q
	adc a,l			;9ab2	8d		.
	ld b,00ch		;9ab3	06 0c		. .
	nop			;9ab5	00		.
	ld b,002h		;9ab6	06 02		. .
	adc a,h			;9ab8	8c		.
	inc bc			;9ab9	03		.
	jr l9a3fh		;9aba	18 83		. .
	djnz $+65		;9abc	10 3f		. ?
	inc e			;9abe	1c		.
	adc a,b			;9abf	88		.
	ld (bc),a		;9ac0	02		.
	add a,d			;9ac1	82		.
	ld (bc),a		;9ac2	02		.
	dec e			;9ac3	1d		.
	djnz l9b09h		;9ac4	10 43		. C
	ld d,c			;9ac6	51		Q
	adc a,l			;9ac7	8d		.
l9ac8h:
	ld b,004h		;9ac8	06 04		. .
	rra			;9aca	1f		.
	inc b			;9acb	04		.
	ld (bc),a		;9acc	02		.
	adc a,b			;9acd	88		.
	inc bc			;9ace	03		.
	jr l9ad4h		;9acf	18 03		. .
	djnz $+70		;9ad1	10 44		. D
	inc e			;9ad3	1c		.
l9ad4h:
	adc a,b			;9ad4	88		.
	ld (bc),a		;9ad5	02		.
	inc d			;9ad6	14		.
l9ad7h:
	ld (bc),a		;9ad7	02		.
	dec e			;9ad8	1d		.
	djnz l9b26h		;9ad9	10 4b		. K
	ld (l8405h),a		;9adb	32 05 84	2 . .
l9adeh:
	djnz l9b2eh		;9ade	10 4e		. N
	ld (l8405h),a		;9ae0	32 05 84	2 . .
	djnz l9b45h		;9ae3	10 60		. `
	daa			;9ae5	27		'
	dec b			;9ae6	05		.
	ex af,af'		;9ae7	08		.
	sub b			;9ae8	90		.
l9ae9h:
	ld h,d			;9ae9	62		b
	daa			;9aea	27		'
	dec b			;9aeb	05		.
	djnz l9afeh		;9aec	10 10		. .
	ld h,h			;9aee	64		d
	and a			;9aef	a7		.
	dec b			;9af0	05		.
	inc c			;9af1	0c		.
	djnz l9b5ah		;9af2	10 66		. f
	daa			;9af4	27		'
	dec b			;9af5	05		.
	inc c			;9af6	0c		.
	sub b			;9af7	90		.
	ld l,b			;9af8	68		h
	daa			;9af9	27		'
	dec b			;9afa	05		.
	inc b			;9afb	04		.
	djnz l9b6eh		;9afc	10 70		. p
l9afeh:
	ld (hl),d		;9afe	72		r
	dec b			;9aff	05		.
	jr z,$+18		;9b00	28 10		( .
	ld (hl),d		;9b02	72		r
	ld d,c			;9b03	51		Q
	adc a,h			;9b04	8c		.
	ld b,004h		;9b05	06 04		. .
	rra			;9b07	1f		.
	inc bc			;9b08	03		.
l9b09h:
	ld (bc),a		;9b09	02		.
	djnz $+4		;9b0a	10 02		. .
	inc de			;9b0c	13		.
	djnz l9b87h		;9b0d	10 78		. x
	ld d,c			;9b0f	51		Q
	adc a,h			;9b10	8c		.
	ld b,00ch		;9b11	06 0c		. .
	rra			;9b13	1f		.
	inc bc			;9b14	03		.
	ld (bc),a		;9b15	02		.
	djnz $+4		;9b16	10 02		. .
	inc de			;9b18	13		.
	djnz l9a9bh		;9b19	10 80		. .
	ld d,c			;9b1b	51		Q
	adc a,h			;9b1c	8c		.
	ld b,002h		;9b1d	06 02		. .
	rra			;9b1f	1f		.
	inc bc			;9b20	03		.
	ld (bc),a		;9b21	02		.
	djnz l9b26h		;9b22	10 02		. .
	inc de			;9b24	13		.
	sub b			;9b25	90		.
l9b26h:
	add a,h			;9b26	84		.
	daa			;9b27	27		'
	dec b			;9b28	05		.
	inc b			;9b29	04		.
l9b2ah:
	djnz $-118		;9b2a	10 88		. .
	ld d,c			;9b2c	51		Q
	adc a,h			;9b2d	8c		.
l9b2eh:
	ld b,006h		;9b2e	06 06		. .
	rra			;9b30	1f		.
	inc bc			;9b31	03		.
l9b32h:
	ld (bc),a		;9b32	02		.
	djnz $+4		;9b33	10 02		. .
	inc de			;9b35	13		.
	djnz l9ac8h		;9b36	10 90		. .
	ld d,c			;9b38	51		Q
	adc a,h			;9b39	8c		.
	ld b,010h		;9b3a	06 10		. .
	rra			;9b3c	1f		.
	inc bc			;9b3d	03		.
	ld (bc),a		;9b3e	02		.
	djnz l9b43h		;9b3f	10 02		. .
	inc de			;9b41	13		.
l9b42h:
	sub b			;9b42	90		.
l9b43h:
	sub h			;9b43	94		.
	daa			;9b44	27		'
l9b45h:
	dec b			;9b45	05		.
	inc b			;9b46	04		.
l9b47h:
	djnz $-102		;9b47	10 98		. .
	ld d,c			;9b49	51		Q
	adc a,h			;9b4a	8c		.
	ld b,008h		;9b4b	06 08		. .
	rra			;9b4d	1f		.
	inc bc			;9b4e	03		.
l9b4fh:
	ld (bc),a		;9b4f	02		.
	djnz l9b54h		;9b50	10 02		. .
	inc de			;9b52	13		.
	sub b			;9b53	90		.
l9b54h:
	sbc a,b			;9b54	98		.
	daa			;9b55	27		'
	dec b			;9b56	05		.
	inc c			;9b57	0c		.
	sub b			;9b58	90		.
	xor b			;9b59	a8		.
l9b5ah:
	inc e			;9b5a	1c		.
	adc a,b			;9b5b	88		.
	ld (bc),a		;9b5c	02		.
	add a,d			;9b5d	82		.
	ld (bc),a		;9b5e	02		.
	dec e			;9b5f	1d		.
	sub b			;9b60	90		.
	xor b			;9b61	a8		.
	inc e			;9b62	1c		.
	adc a,b			;9b63	88		.
	ld (bc),a		;9b64	02		.
	inc d			;9b65	14		.
	ld (bc),a		;9b66	02		.
	dec e			;9b67	1d		.
	sub b			;9b68	90		.
	xor h			;9b69	ac		.
	inc e			;9b6a	1c		.
	adc a,b			;9b6b	88		.
	ld (bc),a		;9b6c	02		.
	add a,d			;9b6d	82		.
l9b6eh:
	ld (bc),a		;9b6e	02		.
	dec e			;9b6f	1d		.
	sub b			;9b70	90		.
l9b71h:
	xor h			;9b71	ac		.
	inc e			;9b72	1c		.
	adc a,b			;9b73	88		.
	ld (bc),a		;9b74	02		.
	inc d			;9b75	14		.
	ld (bc),a		;9b76	02		.
	dec e			;9b77	1d		.
	djnz l9b2ah		;9b78	10 b0		. .
l9b7ah:
	inc e			;9b7a	1c		.
l9b7bh:
	adc a,b			;9b7b	88		.
	ld (bc),a		;9b7c	02		.
	add a,d			;9b7d	82		.
	ld (bc),a		;9b7e	02		.
	dec e			;9b7f	1d		.
	djnz l9b32h		;9b80	10 b0		. .
	inc e			;9b82	1c		.
l9b83h:
	adc a,b			;9b83	88		.
	ld (bc),a		;9b84	02		.
	inc d			;9b85	14		.
	ld (bc),a		;9b86	02		.
l9b87h:
	dec e			;9b87	1d		.
	djnz l9b42h		;9b88	10 b8		. .
	ld (01405h),a		;9b8a	32 05 14	2 . .
	djnz l9b47h		;9b8d	10 b8		. .
	ld (l8205h),a		;9b8f	32 05 82	2 . .
	djnz l9b4fh		;9b92	10 bb		. .
	ld (01405h),a		;9b94	32 05 14	2 . .
	djnz l9b54h		;9b97	10 bb		. .
	ld (l8205h),a		;9b99	32 05 82	2 . .
l9b9ch:
	djnz l9b71h		;9b9c	10 d3		. .
	inc e			;9b9e	1c		.
	adc a,b			;9b9f	88		.
	ld (bc),a		;9ba0	02		.
	inc d			;9ba1	14		.
l9ba2h:
	ld (bc),a		;9ba2	02		.
	dec e			;9ba3	1d		.
	djnz l9b7ah		;9ba4	10 d4		. .
	inc sp			;9ba6	33		3
	dec b			;9ba7	05		.
	rst 38h			;9ba8	ff		.
	djnz l9b83h		;9ba9	10 d8		. .
	ld (01405h),a		;9bab	32 05 14	2 . .
	djnz $-30		;9bae	10 e0		. .
l9bb0h:
	and l			;9bb0	a5		.
	dec b			;9bb1	05		.
	adc a,h			;9bb2	8c		.
	djnz $-29		;9bb3	10 e1		. .
	and l			;9bb5	a5		.
	dec b			;9bb6	05		.
	sub b			;9bb7	90		.
	djnz l9b9ch		;9bb8	10 e2		. .
	and l			;9bba	a5		.
	dec b			;9bbb	05		.
	add a,h			;9bbc	84		.
	djnz l9ba2h		;9bbd	10 e3		. .
	and l			;9bbf	a5		.
	dec b			;9bc0	05		.
l9bc1h:
	adc a,b			;9bc1	88		.
	sub b			;9bc2	90		.
	call po,00525h		;9bc3	e4 25 05	. % .
l9bc6h:
	adc a,h			;9bc6	8c		.
	djnz l9bb0h		;9bc7	10 e7		. .
	ld (l8405h),a		;9bc9	32 05 84	2 . .
	sub b			;9bcc	90		.
l9bcdh:
	rst 20h			;9bcd	e7		.
	dec h			;9bce	25		%
	dec b			;9bcf	05		.
	ex af,af'		;9bd0	08		.
	sub b			;9bd1	90		.
	ret pe			;9bd2	e8		.
	dec h			;9bd3	25		%
	dec b			;9bd4	05		.
	inc c			;9bd5	0c		.
	djnz l9bc1h		;9bd6	10 e9		. .
	ld (l8405h),a		;9bd8	32 05 84	2 . .
	djnz l9bc6h		;9bdb	10 e9		. .
	ld (01205h),a		;9bdd	32 05 12	2 . .
	djnz l9bcdh		;9be0	10 eb		. .
	ld (01205h),a		;9be2	32 05 12	2 . .
l9be5h:
	sub b			;9be5	90		.
	call pe,00525h		;9be6	ec 25 05	. % .
	djnz l9b7bh		;9be9	10 90		. .
	defb 0edh ;next byte illegal after ed	;9beb	ed		.
	dec h			;9bec	25		%
	dec b			;9bed	05		.
l9beeh:
	ld (de),a		;9bee	12		.
	djnz l9be5h		;9bef	10 f4		. .
	and a			;9bf1	a7		.
	dec b			;9bf2	05		.
	ex af,af'		;9bf3	08		.
	djnz l9beeh		;9bf4	10 f8		. .
	and a			;9bf6	a7		.
	dec b			;9bf7	05		.
	inc c			;9bf8	0c		.
	sub b			;9bf9	90		.
	ret m			;9bfa	f8		.
	and a			;9bfb	a7		.
	dec b			;9bfc	05		.
	ld (de),a		;9bfd	12		.
	ld de,02800h		;9bfe	11 00 28	. . (
	dec b			;9c01	05		.
	inc c			;9c02	0c		.
	ld de,0510fh		;9c03	11 0f 51	. . Q
	adc a,h			;9c06	8c		.
	ld b,008h		;9c07	06 08		. .
	rra			;9c09	1f		.
	inc bc			;9c0a	03		.
	ld (bc),a		;9c0b	02		.
	sub b			;9c0c	90		.
	ld (bc),a		;9c0d	02		.
	inc de			;9c0e	13		.
	ld de,02810h		;9c0f	11 10 28	. . (
	dec b			;9c12	05		.
	ex af,af'		;9c13	08		.
	ld de,0511fh		;9c14	11 1f 51	. . Q
	adc a,h			;9c17	8c		.
	ld b,012h		;9c18	06 12		. .
	rra			;9c1a	1f		.
	inc bc			;9c1b	03		.
	ld (bc),a		;9c1c	02		.
	sub b			;9c1d	90		.
	ld (bc),a		;9c1e	02		.
	inc de			;9c1f	13		.
	ld de,02824h		;9c20	11 24 28	. $ (
	dec b			;9c23	05		.
	inc c			;9c24	0c		.
	ld de,0512fh		;9c25	11 2f 51	. / Q
	adc a,h			;9c28	8c		.
	ld b,004h		;9c29	06 04		. .
	rra			;9c2b	1f		.
	inc bc			;9c2c	03		.
	ld (bc),a		;9c2d	02		.
	sub b			;9c2e	90		.
	ld (bc),a		;9c2f	02		.
	inc de			;9c30	13		.
	ld de,05f5ch		;9c31	11 5c 5f	. \ _
	dec b			;9c34	05		.
	inc bc			;9c35	03		.
	jr nz,l9c38h		;9c36	20 00		  .
l9c38h:
	ld a,086h		;9c38	3e 86		> .
	ld (bc),a		;9c3a	02		.
	rst 38h			;9c3b	ff		.
	nop			;9c3c	00		.
	nop			;9c3d	00		.
	djnz l9c60h		;9c3e	10 20		.  
	add hl,de		;9c40	19		.
	ld b,012h		;9c41	06 12		. .
	ld e,010h		;9c43	1e 10		. .
	jr z,l9c60h		;9c45	28 19		( .
	ld b,092h		;9c47	06 92		. .
	ld bc,02a10h		;9c49	01 10 2a	. . *
	add hl,de		;9c4c	19		.
	ld b,010h		;9c4d	06 10		. .
	ld e,010h		;9c4f	1e 10		. .
	inc l			;9c51	2c		,
	rla			;9c52	17		.
	dec b			;9c53	05		.
	add a,e			;9c54	83		.
	sub b			;9c55	90		.
	ld l,039h		;9c56	2e 39		. 9
	ld b,008h		;9c58	06 08		. .
	nop			;9c5a	00		.
	sub b			;9c5b	90		.
	inc (hl)		;9c5c	34		4
	sub a			;9c5d	97		.
	dec b			;9c5e	05		.
	add a,e			;9c5f	83		.
l9c60h:
	djnz $+62		;9c60	10 3c		. <
	add hl,de		;9c62	19		.
	ld b,010h		;9c63	06 10		. .
	ld e,010h		;9c65	1e 10		. .
	ld b,b			;9c67	40		@
	add hl,sp		;9c68	39		9
	ld b,008h		;9c69	06 08		. .
	ld bc,04c10h		;9c6b	01 10 4c	. . L
	add hl,de		;9c6e	19		.
	ld b,010h		;9c6f	06 10		. .
	ld e,010h		;9c71	1e 10		. .
	ld d,b			;9c73	50		P
	add hl,sp		;9c74	39		9
	ld b,088h		;9c75	06 88		. .
	nop			;9c77	00		.
	djnz l9ccah		;9c78	10 50		. P
	rla			;9c7a	17		.
	dec b			;9c7b	05		.
	add a,e			;9c7c	83		.
	djnz l9cd3h		;9c7d	10 54		. T
	add hl,de		;9c7f	19		.
	ld b,012h		;9c80	06 12		. .
	ld e,010h		;9c82	1e 10		. .
	ld (hl),b		;9c84	70		p
	scf			;9c85	37		7
	adc a,c			;9c86	89		.
	inc bc			;9c87	03		.
	dec bc			;9c88	0b		.
	jr nz,$+4		;9c89	20 02		  .
	scf			;9c8b	37		7
	jr nz,l9c95h		;9c8c	20 07		  .
	add hl,de		;9c8e	19		.
	ld b,080h		;9c8f	06 80		. .
	ex af,af'		;9c91	08		.
	jr nz,l9c9bh		;9c92	20 07		  .
	add hl,de		;9c94	19		.
l9c95h:
	ld b,080h		;9c95	06 80		. .
	ld a,(bc)		;9c97	0a		.
	jr nz,l9ca1h		;9c98	20 07		  .
	add hl,de		;9c9a	19		.
l9c9bh:
	ld b,080h		;9c9b	06 80		. .
	djnz l9cbfh		;9c9d	10 20		.  
	inc d			;9c9f	14		.
	add hl,sp		;9ca0	39		9
l9ca1h:
	ld b,08ch		;9ca1	06 8c		. .
	inc bc			;9ca3	03		.
	jr nz,$+25		;9ca4	20 17		  .
	add hl,de		;9ca6	19		.
	ld b,080h		;9ca7	06 80		. .
	ex af,af'		;9ca9	08		.
	jr nz,l9cc3h		;9caa	20 17		  .
	add hl,de		;9cac	19		.
	ld b,000h		;9cad	06 00		. .
	jr l9cd1h		;9caf	18 20		.  
	inc h			;9cb1	24		$
	add hl,sp		;9cb2	39		9
	ld b,008h		;9cb3	06 08		. .
	ld (bc),a		;9cb5	02		.
	jr nz,l9cdfh		;9cb6	20 27		  '
	add hl,de		;9cb8	19		.
	ld b,000h		;9cb9	06 00		. .
	inc d			;9cbb	14		.
	jr nz,l9ce5h		;9cbc	20 27		  '
	add hl,de		;9cbe	19		.
l9cbfh:
	ld b,080h		;9cbf	06 80		. .
	ld d,0a0h		;9cc1	16 a0		. .
l9cc3h:
	scf			;9cc3	37		7
	add hl,de		;9cc4	19		.
	ld b,000h		;9cc5	06 00		. .
	inc bc			;9cc7	03		.
	and b			;9cc8	a0		.
	scf			;9cc9	37		7
l9ccah:
	add hl,de		;9cca	19		.
	ld b,080h		;9ccb	06 80		. .
	inc bc			;9ccd	03		.
	jr nz,$+57		;9cce	20 37		  7
	add hl,de		;9cd0	19		.
l9cd1h:
	ld b,080h		;9cd1	06 80		. .
l9cd3h:
	add hl,de		;9cd3	19		.
	jr nz,$+57		;9cd4	20 37		  7
	add hl,de		;9cd6	19		.
	ld b,000h		;9cd7	06 00		. .
	add hl,de		;9cd9	19		.
	jr nz,l9d1fh		;9cda	20 43		  C
	add hl,de		;9cdc	19		.
	ld b,080h		;9cdd	06 80		. .
l9cdfh:
	inc b			;9cdf	04		.
	jr nz,l9d25h		;9ce0	20 43		  C
	add hl,de		;9ce2	19		.
	ld b,000h		;9ce3	06 00		. .
l9ce5h:
	ld (de),a		;9ce5	12		.
	jr nc,$+18		;9ce6	30 10		0 .
	jr c,$+7		;9ce8	38 05		8 .
	inc c			;9cea	0c		.
	jr nc,$+18		;9ceb	30 10		0 .
	add hl,de		;9ced	19		.
	ld b,086h		;9cee	06 86		. .
	ld bc,01430h		;9cf0	01 30 14	. 0 .
	add hl,de		;9cf3	19		.
	ld b,086h		;9cf4	06 86		. .
	ld bc,01530h		;9cf6	01 30 15	. 0 .
	jr c,l9d00h		;9cf9	38 05		8 .
	inc b			;9cfb	04		.
	jr nc,l9d1ch		;9cfc	30 1e		0 .
	jr c,$+7		;9cfe	38 05		8 .
l9d00h:
	inc c			;9d00	0c		.
	jr nc,$+34		;9d01	30 20		0  
	add hl,de		;9d03	19		.
	ld b,086h		;9d04	06 86		. .
	ld bc,02630h		;9d06	01 30 26	. 0 &
	add hl,de		;9d09	19		.
	ld b,086h		;9d0a	06 86		. .
	ld bc,02830h		;9d0c	01 30 28	. 0 (
	dec l			;9d0f	2d		-
	dec b			;9d10	05		.
	ld (de),a		;9d11	12		.
	jr nc,l9d3dh		;9d12	30 29		0 )
	rla			;9d14	17		.
	dec b			;9d15	05		.
	add a,e			;9d16	83		.
	jr nc,$+46		;9d17	30 2c		0 ,
	rla			;9d19	17		.
	dec b			;9d1a	05		.
	add a,e			;9d1b	83		.
l9d1ch:
	jr nc,l9d4dh		;9d1c	30 2f		0 /
	rla			;9d1e	17		.
l9d1fh:
	dec b			;9d1f	05		.
	add a,e			;9d20	83		.
	or b			;9d21	b0		.
	ld sp,00517h		;9d22	31 17 05	1 . .
l9d25h:
	add a,e			;9d25	83		.
	jr nc,$+59		;9d26	30 39		0 9
	add hl,sp		;9d28	39		9
	ld b,008h		;9d29	06 08		. .
	nop			;9d2b	00		.
	jr nc,l9d72h		;9d2c	30 44		0 D
	add hl,de		;9d2e	19		.
	ld b,010h		;9d2f	06 10		. .
	ld e,030h		;9d31	1e 30		. 0
	ld c,c			;9d33	49		I
	add hl,sp		;9d34	39		9
	ld b,008h		;9d35	06 08		. .
	nop			;9d37	00		.
	jr nc,$+86		;9d38	30 54		0 T
	add hl,de		;9d3a	19		.
	ld b,090h		;9d3b	06 90		. .
l9d3dh:
	ld bc,05930h		;9d3d	01 30 59	. 0 Y
	add hl,sp		;9d40	39		9
	ld b,008h		;9d41	06 08		. .
	nop			;9d43	00		.
	jr nc,l9da0h		;9d44	30 5a		0 Z
	add hl,de		;9d46	19		.
	ld b,012h		;9d47	06 12		. .
	ld e,030h		;9d49	1e 30		. 0
	ld e,h			;9d4b	5c		\
	add hl,de		;9d4c	19		.
l9d4dh:
	ld b,092h		;9d4d	06 92		. .
	ld bc,06830h		;9d4f	01 30 68	. 0 h
	add hl,de		;9d52	19		.
	ld b,012h		;9d53	06 12		. .
	ld e,030h		;9d55	1e 30		. 0
	ld l,c			;9d57	69		i
	jr c,l9d5fh		;9d58	38 05		8 .
	ld b,030h		;9d5a	06 30		. 0
	ld l,c			;9d5c	69		i
	jr c,$+7		;9d5d	38 05		8 .
l9d5fh:
	dec c			;9d5f	0d		.
	jr nc,l9dd2h		;9d60	30 70		0 p
	add hl,de		;9d62	19		.
	ld b,012h		;9d63	06 12		. .
	ld e,030h		;9d65	1e 30		. 0
	ld (hl),d		;9d67	72		r
	jr c,l9d6fh		;9d68	38 05		8 .
	ld b,030h		;9d6a	06 30		. 0
	ld (hl),d		;9d6c	72		r
	jr c,$+7		;9d6d	38 05		8 .
l9d6fh:
	dec c			;9d6f	0d		.
	jr nc,l9deah		;9d70	30 78		0 x
l9d72h:
	add hl,de		;9d72	19		.
l9d73h:
	ld b,012h		;9d73	06 12		. .
	ld e,040h		;9d75	1e 40		. @
	ld bc,00639h		;9d77	01 39 06	. 9 .
	ex af,af'		;9d7a	08		.
	ld (bc),a		;9d7b	02		.
	ld b,b			;9d7c	40		@
	inc bc			;9d7d	03		.
	add hl,de		;9d7e	19		.
	ld b,080h		;9d7f	06 80		. .
	ex af,af'		;9d81	08		.
	ld b,b			;9d82	40		@
	inc bc			;9d83	03		.
	add hl,de		;9d84	19		.
	ld b,000h		;9d85	06 00		. .
	ld (de),a		;9d87	12		.
	ld b,b			;9d88	40		@
	inc bc			;9d89	03		.
	add hl,de		;9d8a	19		.
	ld b,000h		;9d8b	06 00		. .
	jr $+66			;9d8d	18 40		. @
	ex af,af'		;9d8f	08		.
l9d90h:
	add hl,sp		;9d90	39		9
	ld b,010h		;9d91	06 10		. .
	inc bc			;9d93	03		.
	ld b,b			;9d94	40		@
	ld l,05fh		;9d95	2e 5f		. _
	dec b			;9d97	05		.
	inc bc			;9d98	03		.
	ld d,b			;9d99	50		P
	nop			;9d9a	00		.
	inc d			;9d9b	14		.
	dec b			;9d9c	05		.
	rst 38h			;9d9d	ff		.
l9d9eh:
	nop			;9d9e	00		.
	nop			;9d9f	00		.
l9da0h:
	nop			;9da0	00		.
l9da1h:
	nop			;9da1	00		.
	djnz $+36		;9da2	10 22		. "
	ld d,c			;9da4	51		Q
	adc a,l			;9da5	8d		.
	ld b,006h		;9da6	06 06		. .
	rra			;9da8	1f		.
	inc b			;9da9	04		.
	ld (bc),a		;9daa	02		.
	add a,(hl)		;9dab	86		.
l9dach:
	inc bc			;9dac	03		.
	jr $+3			;9dad	18 01		. .
	djnz $+50		;9daf	10 30		. 0
	ld d,c			;9db1	51		Q
	adc a,l			;9db2	8d		.
	ld b,00ch		;9db3	06 0c		. .
	rra			;9db5	1f		.
	inc b			;9db6	04		.
	ld (bc),a		;9db7	02		.
	add a,(hl)		;9db8	86		.
	inc bc			;9db9	03		.
	jr $+3			;9dba	18 01		. .
	djnz l9e00h		;9dbc	10 42		. B
	daa			;9dbe	27		'
	dec b			;9dbf	05		.
	inc c			;9dc0	0c		.
	djnz $+74		;9dc1	10 48		. H
	ld d,c			;9dc3	51		Q
	adc a,l			;9dc4	8d		.
	ld b,00ch		;9dc5	06 0c		. .
	rra			;9dc7	1f		.
	inc b			;9dc8	04		.
	ld (bc),a		;9dc9	02		.
	add a,(hl)		;9dca	86		.
	inc bc			;9dcb	03		.
	jr $+3			;9dcc	18 01		. .
	djnz $+104		;9dce	10 66		. f
	daa			;9dd0	27		'
	dec b			;9dd1	05		.
l9dd2h:
	ex af,af'		;9dd2	08		.
	djnz l9e49h		;9dd3	10 74		. t
	ld d,c			;9dd5	51		Q
l9dd6h:
	adc a,l			;9dd6	8d		.
	ld b,004h		;9dd7	06 04		. .
	nop			;9dd9	00		.
	inc b			;9dda	04		.
	ld (bc),a		;9ddb	02		.
	add a,(hl)		;9ddc	86		.
	inc bc			;9ddd	03		.
	jr l9da1h		;9dde	18 c1		. .
	djnz $+118		;9de0	10 74		. t
	ld d,c			;9de2	51		Q
	adc a,l			;9de3	8d		.
	ld b,00ch		;9de4	06 0c		. .
	nop			;9de6	00		.
	inc b			;9de7	04		.
	ld (bc),a		;9de8	02		.
	add a,(hl)		;9de9	86		.
l9deah:
	inc bc			;9dea	03		.
	jr $-61			;9deb	18 c1		. .
	djnz l9d73h		;9ded	10 84		. .
l9defh:
	ld b,c			;9def	41		A
	ld b,004h		;9df0	06 04		. .
	ld bc,l9410h		;9df2	01 10 94	. . .
	daa			;9df5	27		'
	dec b			;9df6	05		.
	ex af,af'		;9df7	08		.
	djnz l9d90h		;9df8	10 96		. .
	ld c,c			;9dfa	49		I
	ld b,084h		;9dfb	06 84		. .
	rra			;9dfd	1f		.
	djnz $-104		;9dfe	10 96		. .
l9e00h:
	ld c,c			;9e00	49		I
	ld b,010h		;9e01	06 10		. .
	rra			;9e03	1f		.
	djnz l9d9eh		;9e04	10 98		. .
	ld b,c			;9e06	41		A
	ld b,004h		;9e07	06 04		. .
	ld (bc),a		;9e09	02		.
	djnz l9dach		;9e0a	10 a0		. .
	daa			;9e0c	27		'
	dec b			;9e0d	05		.
	inc c			;9e0e	0c		.
	djnz $-82		;9e0f	10 ac		. .
l9e11h:
	ld b,c			;9e11	41		A
	ld b,004h		;9e12	06 04		. .
	inc bc			;9e14	03		.
	djnz $-72		;9e15	10 b6		. .
	daa			;9e17	27		'
	dec b			;9e18	05		.
	ex af,af'		;9e19	08		.
	djnz l9dd6h		;9e1a	10 ba		. .
	daa			;9e1c	27		'
	dec b			;9e1d	05		.
	inc c			;9e1e	0c		.
	djnz $-62		;9e1f	10 c0		. .
	ld b,c			;9e21	41		A
	ld b,004h		;9e22	06 04		. .
	inc b			;9e24	04		.
	djnz l9defh		;9e25	10 c8		. .
	daa			;9e27	27		'
	dec b			;9e28	05		.
	ex af,af'		;9e29	08		.
	djnz $-46		;9e2a	10 d0		. .
	daa			;9e2c	27		'
	dec b			;9e2d	05		.
	djnz l9e40h		;9e2e	10 10		. .
	call nc,00641h		;9e30	d4 41 06	. A .
	inc b			;9e33	04		.
	dec b			;9e34	05		.
	djnz l9e11h		;9e35	10 da		. .
	ld d,c			;9e37	51		Q
	adc a,h			;9e38	8c		.
	ld b,008h		;9e39	06 08		. .
l9e3bh:
	rra			;9e3b	1f		.
	inc b			;9e3c	04		.
	ld (bc),a		;9e3d	02		.
	djnz $+4		;9e3e	10 02		. .
l9e40h:
	inc de			;9e40	13		.
	djnz $-22		;9e41	10 e8		. .
	ld b,c			;9e43	41		A
	ld b,004h		;9e44	06 04		. .
l9e46h:
	ld (bc),a		;9e46	02		.
	djnz l9e3bh		;9e47	10 f2		. .
l9e49h:
	daa			;9e49	27		'
	dec b			;9e4a	05		.
	ex af,af'		;9e4b	08		.
	djnz l9e46h		;9e4c	10 f8		. .
	ld d,c			;9e4e	51		Q
	adc a,h			;9e4f	8c		.
	ld b,010h		;9e50	06 10		. .
	rra			;9e52	1f		.
	inc b			;9e53	04		.
	ld (bc),a		;9e54	02		.
	djnz $+4		;9e55	10 02		. .
	inc de			;9e57	13		.
	djnz $-2		;9e58	10 fc		. .
	ld b,c			;9e5a	41		A
	ld b,004h		;9e5b	06 04		. .
	inc bc			;9e5d	03		.
	ld de,05104h		;9e5e	11 04 51	. . Q
	adc a,h			;9e61	8c		.
	ld b,00ah		;9e62	06 0a		. .
	rra			;9e64	1f		.
	inc b			;9e65	04		.
	ld (bc),a		;9e66	02		.
	djnz $+4		;9e67	10 02		. .
	inc de			;9e69	13		.
	ld de,04108h		;9e6a	11 08 41	. . A
	ld b,004h		;9e6d	06 04		. .
	ld bc,02011h		;9e6f	01 11 20	. .  
	ld b,c			;9e72	41		A
	ld b,004h		;9e73	06 04		. .
	rlca			;9e75	07		.
	sub c			;9e76	91		.
	jr z,$+67		;9e77	28 41		( A
	ld b,004h		;9e79	06 04		. .
	rlca			;9e7b	07		.
	ld de,04130h		;9e7c	11 30 41	. 0 A
	ld b,004h		;9e7f	06 04		. .
	rlca			;9e81	07		.
	ld de,04940h		;9e82	11 40 49	. @ I
	ld b,00ch		;9e85	06 0c		. .
	rra			;9e87	1f		.
	ld de,04944h		;9e88	11 44 49	. D I
	ld b,08ch		;9e8b	06 8c		. .
	rra			;9e8d	1f		.
	ld de,04948h		;9e8e	11 48 49	. H I
	ld b,00ch		;9e91	06 0c		. .
	rra			;9e93	1f		.
	ld de,04958h		;9e94	11 58 49	. X I
	ld b,08ch		;9e97	06 8c		. .
	rra			;9e99	1f		.
	ld de,0495eh		;9e9a	11 5e 49	. ^ I
	ld b,00ch		;9e9d	06 0c		. .
	rra			;9e9f	1f		.
	ld de,0496bh		;9ea0	11 6b 49	. k I
	ld b,00ch		;9ea3	06 0c		. .
	rra			;9ea5	1f		.
	ld de,02172h		;9ea6	11 72 21	. r !
	dec b			;9ea9	05		.
	nop			;9eaa	00		.
	ld de,0497bh		;9eab	11 7b 49	. { I
	ld b,08ch		;9eae	06 8c		. .
	rra			;9eb0	1f		.
	ld de,02188h		;9eb1	11 88 21	. . !
	dec b			;9eb4	05		.
	ld bc,l8b11h		;9eb5	01 11 8b	. . .
	ld c,c			;9eb8	49		I
	ld b,00ah		;9eb9	06 0a		. .
	rra			;9ebb	1f		.
	ld de,0499bh		;9ebc	11 9b 49	. . I
	ld b,090h		;9ebf	06 90		. .
	rra			;9ec1	1f		.
	ld de,021a0h		;9ec2	11 a0 21	. . !
	dec b			;9ec5	05		.
	ld (bc),a		;9ec6	02		.
	ld de,049abh		;9ec7	11 ab 49	. . I
	ld b,010h		;9eca	06 10		. .
	rra			;9ecc	1f		.
	ld de,021b4h		;9ecd	11 b4 21	. . !
	dec b			;9ed0	05		.
	ld bc,0c811h		;9ed1	01 11 c8	. . .
	ld hl,00005h		;9ed4	21 05 00	! . .
	ld de,021dbh		;9ed7	11 db 21	. . !
	dec b			;9eda	05		.
	ld bc,0e811h		;9edb	01 11 e8	. . .
	ld hl,00005h		;9ede	21 05 00	! . .
	ld de,021fah		;9ee1	11 fa 21	. . !
	dec b			;9ee4	05		.
	ld (bc),a		;9ee5	02		.
	ld de,0a1fah		;9ee6	11 fa a1	. . .
	dec b			;9ee9	05		.
	nop			;9eea	00		.
	ld (de),a		;9eeb	12		.
	ld a,(bc)		;9eec	0a		.
	ld hl,00005h		;9eed	21 05 00	! . .
	ld (de),a		;9ef0	12		.
	ld a,(bc)		;9ef1	0a		.
	and c			;9ef2	a1		.
	dec b			;9ef3	05		.
	ld (bc),a		;9ef4	02		.
	ld (de),a		;9ef5	12		.
	ld hl,00521h		;9ef6	21 21 05	! ! .
	nop			;9ef9	00		.
	ld (de),a		;9efa	12		.
	ld hl,00521h		;9efb	21 21 05	! ! .
	ld bc,03112h		;9efe	01 12 31	. . 1
	ld hl,00205h		;9f01	21 05 02	! . .
	ld (de),a		;9f04	12		.
	ld sp,005a1h		;9f05	31 a1 05	1 . .
	ld bc,04212h		;9f08	01 12 42	. . B
	ld hl,00105h		;9f0b	21 05 01	! . .
	ld (de),a		;9f0e	12		.
	ld b,h			;9f0f	44		D
	ld c,c			;9f10	49		I
	ld b,08ah		;9f11	06 8a		. .
	rra			;9f13	1f		.
	ld (de),a		;9f14	12		.
	ld c,d			;9f15	4a		J
	ld hl,00205h		;9f16	21 05 02	! . .
	ld (de),a		;9f19	12		.
	ld d,d			;9f1a	52		R
	ld hl,00105h		;9f1b	21 05 01	! . .
	ld (de),a		;9f1e	12		.
	ld h,d			;9f1f	62		b
	ld hl,00005h		;9f20	21 05 00	! . .
	ld (de),a		;9f23	12		.
	ld h,h			;9f24	64		d
	ld c,c			;9f25	49		I
	ld b,00ch		;9f26	06 0c		. .
	rra			;9f28	1f		.
	ld (de),a		;9f29	12		.
	ld l,b			;9f2a	68		h
	ld hl,00205h		;9f2b	21 05 02	! . .
	ld (de),a		;9f2e	12		.
	ld a,d			;9f2f	7a		z
	ld hl,00105h		;9f30	21 05 01	! . .
	ld (de),a		;9f33	12		.
	add a,b			;9f34	80		.
	ld c,c			;9f35	49		I
	ld b,08ch		;9f36	06 8c		. .
	rra			;9f38	1f		.
	ld (de),a		;9f39	12		.
	adc a,b			;9f3a	88		.
	ld hl,00005h		;9f3b	21 05 00	! . .
	ld (de),a		;9f3e	12		.
	adc a,d			;9f3f	8a		.
	ld hl,00205h		;9f40	21 05 02	! . .
	ld (de),a		;9f43	12		.
	sbc a,d			;9f44	9a		.
	ld hl,00105h		;9f45	21 05 01	! . .
	ld (de),a		;9f48	12		.
	and b			;9f49	a0		.
	ld c,c			;9f4a	49		I
	ld b,00ch		;9f4b	06 0c		. .
	rra			;9f4d	1f		.
	ld (de),a		;9f4e	12		.
	and h			;9f4f	a4		.
	ld hl,00005h		;9f50	21 05 00	! . .
	ld (de),a		;9f53	12		.
	cp b			;9f54	b8		.
	ld hl,00105h		;9f55	21 05 01	! . .
	ld (de),a		;9f58	12		.
	cp h			;9f59	bc		.
	ld c,c			;9f5a	49		I
	ld b,08ch		;9f5b	06 8c		. .
	rra			;9f5d	1f		.
	ld (de),a		;9f5e	12		.
	ret z			;9f5f	c8		.
	ld hl,00205h		;9f60	21 05 02	! . .
	ld (de),a		;9f63	12		.
	call nc,00649h		;9f64	d4 49 06	. I .
	ld b,01fh		;9f67	06 1f		. .
	ld (de),a		;9f69	12		.
	call nc,00649h		;9f6a	d4 49 06	. I .
	inc c			;9f6d	0c		.
	rra			;9f6e	1f		.
	ld (de),a		;9f6f	12		.
	call nc,00649h		;9f70	d4 49 06	. I .
	ld (de),a		;9f73	12		.
	rra			;9f74	1f		.
	ld (de),a		;9f75	12		.
	ret c			;9f76	d8		.
	ld c,c			;9f77	49		I
	ld b,086h		;9f78	06 86		. .
	rra			;9f7a	1f		.
	ld (de),a		;9f7b	12		.
	ret c			;9f7c	d8		.
	ld c,c			;9f7d	49		I
	ld b,08ch		;9f7e	06 8c		. .
	rra			;9f80	1f		.
	ld (de),a		;9f81	12		.
	ret c			;9f82	d8		.
	ld c,c			;9f83	49		I
	ld b,092h		;9f84	06 92		. .
	rra			;9f86	1f		.
	inc de			;9f87	13		.
	rrca			;9f88	0f		.
	ld e,a			;9f89	5f		_
	dec b			;9f8a	05		.
	inc bc			;9f8b	03		.
	inc de			;9f8c	13		.
	djnz $+121		;9f8d	10 77		. w
	adc a,e			;9f8f	8b		.
	ld (bc),a		;9f90	02		.
	dec b			;9f91	05		.
	add a,l			;9f92	85		.
	ld (bc),a		;9f93	02		.
	halt			;9f94	76		v
	ld (bc),a		;9f95	02		.
	halt			;9f96	76		v
	nop			;9f97	00		.
	nop			;9f98	00		.
	nop			;9f99	00		.
	djnz l9fc2h		;9f9a	10 26		. &
	ld c,l			;9f9c	4d		M
	dec b			;9f9d	05		.
	add a,h			;9f9e	84		.
	djnz l9fc9h		;9f9f	10 28		. (
	cpl			;9fa1	2f		/
	dec b			;9fa2	05		.
	sub b			;9fa3	90		.
	djnz $+44		;9fa4	10 2a		. *
	cpl			;9fa6	2f		/
	dec b			;9fa7	05		.
	sub h			;9fa8	94		.
	djnz l9fd7h		;9fa9	10 2c		. ,
	cpl			;9fab	2f		/
	dec b			;9fac	05		.
	sub h			;9fad	94		.
	djnz l9fe0h		;9fae	10 30		. 0
	cpl			;9fb0	2f		/
	dec b			;9fb1	05		.
	sub (hl)		;9fb2	96		.
	djnz l9fe5h		;9fb3	10 30		. 0
	cpl			;9fb5	2f		/
	dec b			;9fb6	05		.
	sbc a,e			;9fb7	9b		.
	djnz l9ff0h		;9fb8	10 36		. 6
	cpl			;9fba	2f		/
	dec b			;9fbb	05		.
	sub b			;9fbc	90		.
	jr nz,l9fc2h		;9fbd	20 03		  .
	ld c,b			;9fbf	48		H
	adc a,c			;9fc0	89		.
	inc bc			;9fc1	03		.
l9fc2h:
	ld (de),a		;9fc2	12		.
	ld (bc),a		;9fc3	02		.
	ld (bc),a		;9fc4	02		.
	ld c,b			;9fc5	48		H
	jr nz,l9fd2h		;9fc6	20 0a		  .
	ld c,b			;9fc8	48		H
l9fc9h:
	adc a,c			;9fc9	89		.
	inc bc			;9fca	03		.
	dec l			;9fcb	2d		-
	ld bc,04802h		;9fcc	01 02 48	. . H
	jr nz,l9ffbh		;9fcf	20 2a		  *
	ld c,l			;9fd1	4d		M
l9fd2h:
	dec b			;9fd2	05		.
	inc hl			;9fd3	23		#
	jr nc,l9fdbh		;9fd4	30 05		0 .
	ld c,l			;9fd6	4d		M
l9fd7h:
	dec b			;9fd7	05		.
	rlca			;9fd8	07		.
	jr nc,l9fe5h		;9fd9	30 0a		0 .
l9fdbh:
	ld c,d			;9fdb	4a		J
	dec b			;9fdc	05		.
	ld c,030h		;9fdd	0e 30		. 0
	ld a,(bc)		;9fdf	0a		.
l9fe0h:
	ld c,d			;9fe0	4a		J
	dec b			;9fe1	05		.
	ld (de),a		;9fe2	12		.
	jr nc,l9ff1h		;9fe3	30 0c		0 .
l9fe5h:
	ld c,d			;9fe5	4a		J
	dec b			;9fe6	05		.
	ld (de),a		;9fe7	12		.
	or b			;9fe8	b0		.
	inc c			;9fe9	0c		.
	ld c,d			;9fea	4a		J
	dec b			;9feb	05		.
	ld b,030h		;9fec	06 30		. 0
	ld c,04ah		;9fee	0e 4a		. J
l9ff0h:
	dec b			;9ff0	05		.
l9ff1h:
	ld (de),a		;9ff1	12		.
	jr nc,$+16		;9ff2	30 0e		0 .
	ld c,d			;9ff4	4a		J
	dec b			;9ff5	05		.
	inc bc			;9ff6	03		.
	jr nc,$+18		;9ff7	30 10		0 .
	ld c,d			;9ff9	4a		J
	dec b			;9ffa	05		.
l9ffbh:
	ld (de),a		;9ffb	12		.
	jr nc,$+18		;9ffc	30 10		0 .
	ld c,d			;9ffe	4a		J
	dec b			;9fff	05		.

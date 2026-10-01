; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank05_8000_runtime.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank05.bin

	org 08000h

	ld a,(ix+001h)		;8000	dd 7e 01	. ~ .
	dec a			;8003	3d		=
	jr z,l803fh		;8004	28 39		( 9
	dec a			;8006	3d		=
	jr z,l804eh		;8007	28 45		( E
	call 06796h		;8009	cd 96 67	. . g
	rrca			;800c	0f		.
	rrca			;800d	0f		.
	and 001h		;800e	e6 01		. .
	ld (ix+020h),a		;8010	dd 77 20	. w  
	ld l,(ix+020h)		;8013	dd 6e 20	. n  
	ld h,000h		;8016	26 00		& .
	add hl,hl		;8018	29		)
	ld de,l806bh		;8019	11 6b 80	. k .
	add hl,de		;801c	19		.
	ld e,(hl)		;801d	5e		^
	inc hl			;801e	23		#
	ld d,(hl)		;801f	56		V
	ld l,(ix+038h)		;8020	dd 6e 38	. n 8
	dec l			;8023	2d		-
	ld h,000h		;8024	26 00		& .
	add hl,hl		;8026	29		)
	add hl,de		;8027	19		.
	ld a,(hl)		;8028	7e		~
	add a,(ix+008h)		;8029	dd 86 08	. . .
	ld (ix+008h),a		;802c	dd 77 08	. w .
	inc hl			;802f	23		#
	ld a,(hl)		;8030	7e		~
	add a,(ix+00ah)		;8031	dd 86 0a	. . .
	ld (ix+00ah),a		;8034	dd 77 0a	. w .
	ld a,008h		;8037	3e 08		> .
	call sub_8062h		;8039	cd 62 80	. b .
	jp 06c1dh		;803c	c3 1d 6c	. . l
l803fh:
	call 06adfh		;803f	cd df 6a	. . j
	ret nz			;8042	c0		.
	call 06bfah		;8043	cd fa 6b	. . k
	ld a,006h		;8046	3e 06		> .
	call 06ae8h		;8048	cd e8 6a	. . j
	jp 06c1dh		;804b	c3 1d 6c	. . l
l804eh:
	call 06adfh		;804e	cd df 6a	. . j
	jr z,l805ch		;8051	28 09		( .
	cp 003h			;8053	fe 03		. .
	ret nz			;8055	c0		.
	ld de,00000h		;8056	11 00 00	. . .
	jp l9bfah		;8059	c3 fa 9b	. . .
l805ch:
	ld a,028h		;805c	3e 28		> (
	ld (ix+001h),001h	;805e	dd 36 01 01	. 6 . .
sub_8062h:
	call 06ae8h		;8062	cd e8 6a	. . j
	ld de,0ff40h		;8065	11 40 ff	. @ .
	jp 06bfdh		;8068	c3 fd 6b	. . k
l806bh:
	ld l,a			;806b	6f		o
	add a,b			;806c	80		.
	ld (hl),a		;806d	77		w
	add a,b			;806e	80		.
	inc b			;806f	04		.
	nop			;8070	00		.
	ex af,af'		;8071	08		.
	nop			;8072	00		.
	nop			;8073	00		.
	ld (bc),a		;8074	02		.
	inc c			;8075	0c		.
	ld (bc),a		;8076	02		.
	nop			;8077	00		.
	nop			;8078	00		.
	inc b			;8079	04		.
	ld bc,00108h		;807a	01 08 01	. . .
	inc c			;807d	0c		.
	ld bc,07eddh		;807e	01 dd 7e	. . ~
	ld bc,01acdh		;8081	01 cd 1a	. . .
	ld b,(hl)		;8084	46		F
	adc a,a			;8085	8f		.
	add a,b			;8086	80		.
	sbc a,a			;8087	9f		.
	add a,b			;8088	80		.
	call 0f180h		;8089	cd 80 f1	. . .
	add a,b			;808c	80		.
	defb 0fdh,080h,0cdh ;illegal sequence	;808d	fd 80 cd	. . .
	ld d,h			;8090	54		T
	ld h,a			;8091	67		g
	ld a,020h		;8092	3e 20		>  
	call 06adbh		;8094	cd db 6a	. . j
	inc (ix+03dh)		;8097	dd 34 3d	. 4 =
	ld a,001h		;809a	3e 01		> .
	jp l8121h		;809c	c3 21 81	. ! .
	call 06ad2h		;809f	cd d2 6a	. . j
	jp z,l80b3h		;80a2	ca b3 80	. . .
	call sub_8110h		;80a5	cd 10 81	. . .
	jr c,l80b3h		;80a8	38 09		8 .
	ld a,(0ca02h)		;80aa	3a 02 ca	: . .
	and 007h		;80ad	e6 07		. .
	ret nz			;80af	c0		.
	jp 06b43h		;80b0	c3 43 6b	. C k
l80b3h:
	ld a,(0ca48h)		;80b3	3a 48 ca	: H .
	sub (ix+008h)		;80b6	dd 96 08	. . .
	ld b,000h		;80b9	06 00		. .
	jr nc,l80c0h		;80bb	30 03		0 .
	neg			;80bd	ed 44		. D
	inc b			;80bf	04		.
l80c0h:
	ld (ix+022h),a		;80c0	dd 77 22	. w "
	ld (ix+023h),a		;80c3	dd 77 23	. w #
	ld (ix+020h),b		;80c6	dd 70 20	. p  
	ld a,002h		;80c9	3e 02		> .
	jr l8121h		;80cb	18 54		. T
	ld a,(ix+022h)		;80cd	dd 7e 22	. ~ "
	dec (ix+022h)		;80d0	dd 35 22	. 5 "
	and a			;80d3	a7		.
	ret nz			;80d4	c0		.
	call sub_8106h		;80d5	cd 06 81	. . .
	ld a,001h		;80d8	3e 01		> .
	xor (ix+020h)		;80da	dd ae 20	. .  
	ld (ix+020h),a		;80dd	dd 77 20	. w  
	ld a,(ix+021h)		;80e0	dd 7e 21	. ~ !
	and a			;80e3	a7		.
	ld a,003h		;80e4	3e 03		> .
	jr z,l80efh		;80e6	28 07		( .
	ld a,008h		;80e8	3e 08		> .
	call 06adbh		;80ea	cd db 6a	. . j
	ld a,004h		;80ed	3e 04		> .
l80efh:
	jr l8121h		;80ef	18 30		. 0
	ld a,(ix+023h)		;80f1	dd 7e 23	. ~ #
	dec (ix+023h)		;80f4	dd 35 23	. 5 #
	and a			;80f7	a7		.
	ret nz			;80f8	c0		.
	ld a,001h		;80f9	3e 01		> .
	jr l8121h		;80fb	18 24		. $
	call 06ad2h		;80fd	cd d2 6a	. . j
	ret nz			;8100	c0		.
	ld a,008h		;8101	3e 08		> .
	call 06adbh		;8103	cd db 6a	. . j
sub_8106h:
	ld a,020h		;8106	3e 20		>  
	call 06adbh		;8108	cd db 6a	. . j
	ld b,000h		;810b	06 00		. .
	jp l9cb5h		;810d	c3 b5 9c	. . .
sub_8110h:
	ld a,(0ca4ah)		;8110	3a 4a ca	: J .
	sub (ix+00ah)		;8113	dd 96 0a	. . .
	jr nc,l811ah		;8116	30 02		0 .
	neg			;8118	ed 44		. D
l811ah:
	cp 006h			;811a	fe 06		. .
	ret nc			;811c	d0		.
	inc (ix+021h)		;811d	dd 34 21	. 4 !
	ret			;8120	c9		.
l8121h:
	ld (ix+001h),a		;8121	dd 77 01	. w .
	ld l,(ix+001h)		;8124	dd 6e 01	. n .
	dec l			;8127	2d		-
	ld h,000h		;8128	26 00		& .
	add hl,hl		;812a	29		)
	ld de,l8148h		;812b	11 48 81	. H .
	add hl,de		;812e	19		.
	ld d,000h		;812f	16 00		. .
	ld a,(ix+020h)		;8131	dd 7e 20	. ~  
	and a			;8134	a7		.
	ld a,(hl)		;8135	7e		~
	jr z,l813fh		;8136	28 07		( .
	and a			;8138	a7		.
	jr z,l813fh		;8139	28 04		( .
	ld d,0ffh		;813b	16 ff		. .
	neg			;813d	ed 44		. D
l813fh:
	ld e,a			;813f	5f		_
	inc hl			;8140	23		#
	ld l,(hl)		;8141	6e		n
	ld h,000h		;8142	26 00		& .
	ex de,hl		;8144	eb		.
	jp 06bebh		;8145	c3 eb 6b	. . k
l8148h:
	jr nz,l814ah		;8148	20 00		  .
l814ah:
	ret nz			;814a	c0		.
	nop			;814b	00		.
	ret nz			;814c	c0		.
	nop			;814d	00		.
	nop			;814e	00		.
	ret nz			;814f	c0		.
	call 06754h		;8150	cd 54 67	. T g
	ld a,(ix+008h)		;8153	dd 7e 08	. ~ .
	bit 7,a			;8156	cb 7f		. .
	jr z,l816bh		;8158	28 11		( .
	res 7,a			;815a	cb bf		. .
	ld (ix+008h),a		;815c	dd 77 08	. w .
	ld (ix+00ah),001h	;815f	dd 36 0a 01	. 6 . .
	ld a,(0ca19h)		;8163	3a 19 ca	: . .
	cp 004h			;8166	fe 04		. .
	jp c,06e98h		;8168	da 98 6e	. . n
l816bh:
	ld (ix+017h),001h	;816b	dd 36 17 01	. 6 . .
	ret			;816f	c9		.
	call sub_817dh		;8170	cd 7d 81	. } .
	ld a,(ix+004h)		;8173	dd 7e 04	. ~ .
	or a			;8176	b7		.
	ret z			;8177	c8		.
	ld (ix+017h),002h	;8178	dd 36 17 02	. 6 . .
	ret			;817c	c9		.
sub_817dh:
	ld a,(ix+00ah)		;817d	dd 7e 0a	. ~ .
	cp 002h			;8180	fe 02		. .
	jr c,l8188h		;8182	38 04		8 .
	dec (ix+017h)		;8184	dd 35 17	. 5 .
	ret nz			;8187	c0		.
l8188h:
	ld (ix+017h),00ah	;8188	dd 36 17 0a	. 6 . .
	ld iy,0ca40h		;818c	fd 21 40 ca	. ! @ .
	ld a,(0ca19h)		;8190	3a 19 ca	: . .
	srl a			;8193	cb 3f		. ?
	add a,00ah		;8195	c6 0a		. .
	add a,(ix+003h)		;8197	dd 86 03	. . .
	call 06b6ch		;819a	cd 6c 6b	. l k
	ld a,(ix+00eh)		;819d	dd 7e 0e	. ~ .
	rlca			;81a0	07		.
	ld a,000h		;81a1	3e 00		> .
	jr nc,l81a6h		;81a3	30 01		0 .
	inc a			;81a5	3c		<
l81a6h:
	ld (ix+005h),a		;81a6	dd 77 05	. w .
	ret			;81a9	c9		.
	ld a,(iy+000h)		;81aa	fd 7e 00	. ~ .
	cp 004h			;81ad	fe 04		. .
	jr z,l81d6h		;81af	28 25		( %
	cp 007h			;81b1	fe 07		. .
	jr z,l81d6h		;81b3	28 21		( !
	cp 006h			;81b5	fe 06		. .
	jr z,l81bch		;81b7	28 03		( .
	cp 005h			;81b9	fe 05		. .
	ret nz			;81bb	c0		.
l81bch:
	ld a,(iy+012h)		;81bc	fd 7e 12	. ~ .
	cp 004h			;81bf	fe 04		. .
	ret nc			;81c1	d0		.
	add a,a			;81c2	87		.
	add a,a			;81c3	87		.
	ld e,a			;81c4	5f		_
	ld d,000h		;81c5	16 00		. .
	ld hl,l820dh		;81c7	21 0d 82	! . .
	add hl,de		;81ca	19		.
	ld e,(hl)		;81cb	5e		^
	inc hl			;81cc	23		#
	ld d,(hl)		;81cd	56		V
	inc hl			;81ce	23		#
	ld c,(hl)		;81cf	4e		N
	inc hl			;81d0	23		#
	ld b,(hl)		;81d1	46		F
	call sub_81f2h		;81d2	cd f2 81	. . .
	ret			;81d5	c9		.
l81d6h:
	ld d,(iy+00eh)		;81d6	fd 56 0e	. V .
	ld e,(iy+00dh)		;81d9	fd 5e 0d	. ^ .
	ld b,(iy+00ch)		;81dc	fd 46 0c	. F .
	ld c,(iy+00bh)		;81df	fd 4e 0b	. N .
	sra b			;81e2	cb 28		. (
	rr c			;81e4	cb 19		. .
	sra b			;81e6	cb 28		. (
	rr c			;81e8	cb 19		. .
	sra d			;81ea	cb 2a		. *
	rr e			;81ec	cb 1b		. .
	sra d			;81ee	cb 2a		. *
	rr e			;81f0	cb 1b		. .
sub_81f2h:
	ld h,(ix+00ch)		;81f2	dd 66 0c	. f .
	ld l,(ix+00bh)		;81f5	dd 6e 0b	. n .
	add hl,bc		;81f8	09		.
	ld (ix+00ch),h		;81f9	dd 74 0c	. t .
	ld (ix+00bh),l		;81fc	dd 75 0b	. u .
	ld h,(ix+00eh)		;81ff	dd 66 0e	. f .
	ld l,(ix+00dh)		;8202	dd 6e 0d	. n .
	add hl,de		;8205	19		.
	ld (ix+00eh),h		;8206	dd 74 0e	. t .
	ld (ix+00dh),l		;8209	dd 75 0d	. u .
	ret			;820c	c9		.
l820dh:
	ld b,b			;820d	40		@
	nop			;820e	00		.
	nop			;820f	00		.
	nop			;8210	00		.
	nop			;8211	00		.
	nop			;8212	00		.
	ld b,b			;8213	40		@
	nop			;8214	00		.
	ret nz			;8215	c0		.
	rst 38h			;8216	ff		.
	nop			;8217	00		.
	nop			;8218	00		.
	nop			;8219	00		.
	nop			;821a	00		.
	ret nz			;821b	c0		.
	rst 38h			;821c	ff		.
	ld a,(ix+001h)		;821d	dd 7e 01	. ~ .
	dec a			;8220	3d		=
	jr z,l8249h		;8221	28 26		( &
	dec a			;8223	3d		=
	jr z,l8257h		;8224	28 31		( 1
	dec a			;8226	3d		=
	jr z,l8272h		;8227	28 49		( I
	call 06754h		;8229	cd 54 67	. T g
	ld (ix+03eh),005h	;822c	dd 36 3e 05	. 6 > .
	ld (ix+006h),002h	;8230	dd 36 06 02	. 6 . .
	ld b,060h		;8234	06 60		. `
	ld a,(0ca19h)		;8236	3a 19 ca	: . .
	cp 006h			;8239	fe 06		. .
	jr c,l8243h		;823b	38 06		8 .
	ld (ix+016h),02ch	;823d	dd 36 16 2c	. 6 . ,
	ld b,010h		;8241	06 10		. .
l8243h:
	ld (ix+017h),b		;8243	dd 70 17	. p .
	jp 06c1dh		;8246	c3 1d 6c	. . l
l8249h:
	call 06ad2h		;8249	cd d2 6a	. . j
	ret nz			;824c	c0		.
	call sub_82abh		;824d	cd ab 82	. . .
	ld (ix+006h),000h	;8250	dd 36 06 00	. 6 . .
	jp 06c1dh		;8254	c3 1d 6c	. . l
l8257h:
	call 06ad2h		;8257	cd d2 6a	. . j
	jp z,06c1dh		;825a	ca 1d 6c	. . l
	ld a,(0ca02h)		;825d	3a 02 ca	: . .
	and 003h		;8260	e6 03		. .
	ret nz			;8262	c0		.
	ld a,001h		;8263	3e 01		> .
	xor (ix+006h)		;8265	dd ae 06	. . .
	ld (ix+006h),a		;8268	dd 77 06	. w .
	and a			;826b	a7		.
	ret z			;826c	c8		.
	ld a,020h		;826d	3e 20		>  
	jp 04af0h		;826f	c3 f0 4a	. . J
l8272h:
	ld a,(ix+00ah)		;8272	dd 7e 0a	. ~ .
	and a			;8275	a7		.
	jp m,l82a3h		;8276	fa a3 82	. . .
	cp 008h			;8279	fe 08		. .
	jr c,l82a3h		;827b	38 26		8 &
	ld a,(0ca19h)		;827d	3a 19 ca	: . .
	rrca			;8280	0f		.
	rrca			;8281	0f		.
	and 003h		;8282	e6 03		. .
	ld d,a			;8284	57		W
	ld a,(ix+020h)		;8285	dd 7e 20	. ~  
	cp 004h			;8288	fe 04		. .
	jr nc,l829eh		;828a	30 12		0 .
	inc (ix+020h)		;828c	dd 34 20	. 4  
	ld e,a			;828f	5f		_
	ld l,a			;8290	6f		o
	ld h,000h		;8291	26 00		& .
	add hl,hl		;8293	29		)
	ld bc,l82c2h		;8294	01 c2 82	. . .
	add hl,bc		;8297	09		.
	ld c,(hl)		;8298	4e		N
	inc hl			;8299	23		#
	ld b,(hl)		;829a	46		F
	jp l9024h		;829b	c3 24 90	. $ .
l829eh:
	ld a,017h		;829e	3e 17		> .
	call 04af0h		;82a0	cd f0 4a	. . J
l82a3h:
	ld (ix+020h),000h	;82a3	dd 36 20 00	. 6   .
	ld (ix+001h),002h	;82a7	dd 36 01 02	. 6 . .
sub_82abh:
	ld a,(0ca19h)		;82ab	3a 19 ca	: . .
	rrca			;82ae	0f		.
	rrca			;82af	0f		.
	and 007h		;82b0	e6 07		. .
	ld l,a			;82b2	6f		o
	ld h,000h		;82b3	26 00		& .
	ld de,l82beh		;82b5	11 be 82	. . .
	add hl,de		;82b8	19		.
	ld a,(hl)		;82b9	7e		~
	ld (ix+017h),a		;82ba	dd 77 17	. w .
	ret			;82bd	c9		.
l82beh:
	jr $+26			;82be	18 18		. .
	djnz l82cah		;82c0	10 08		. .
l82c2h:
	nop			;82c2	00		.
	inc b			;82c3	04		.
	inc b			;82c4	04		.
	nop			;82c5	00		.
	rlca			;82c6	07		.
	inc b			;82c7	04		.
	inc bc			;82c8	03		.
	add hl,bc		;82c9	09		.
l82cah:
	ld a,(ix+001h)		;82ca	dd 7e 01	. ~ .
	and a			;82cd	a7		.
	jr nz,l82f5h		;82ce	20 25		  %
l82d0h:
	call 06754h		;82d0	cd 54 67	. T g
l82d3h:
	ld a,d			;82d3	7a		z
	rlca			;82d4	07		.
	jr nc,l82deh		;82d5	30 07		0 .
	inc (ix+020h)		;82d7	dd 34 20	. 4  
	ld (ix+006h),004h	;82da	dd 36 06 04	. 6 . .
l82deh:
	ld a,020h		;82de	3e 20		>  
	ld (ix+017h),a		;82e0	dd 77 17	. w .
	ld a,(0ce53h)		;82e3	3a 53 ce	: S .
	inc a			;82e6	3c		<
	cp 004h			;82e7	fe 04		. .
	jr nz,l82efh		;82e9	20 04		  .
	inc (ix+03dh)		;82eb	dd 34 3d	. 4 =
	xor a			;82ee	af		.
l82efh:
	ld (0ce53h),a		;82ef	32 53 ce	2 S .
	jp 06c1dh		;82f2	c3 1d 6c	. . l
l82f5h:
	call sub_8304h		;82f5	cd 04 83	. . .
	ld a,(0ca02h)		;82f8	3a 02 ca	: . .
	xor (ix+02dh)		;82fb	dd ae 2d	. . -
	and 01fh		;82fe	e6 1f		. .
	ret nz			;8300	c0		.
	jp 072d4h		;8301	c3 d4 72	. . r
sub_8304h:
	ld a,(0ca02h)		;8304	3a 02 ca	: . .
	add a,(ix+02dh)		;8307	dd 86 2d	. . -
	and 007h		;830a	e6 07		. .
	ret nz			;830c	c0		.
	call 06b94h		;830d	cd 94 6b	. . k
	ld a,(ix+020h)		;8310	dd 7e 20	. ~  
	and a			;8313	a7		.
	ld hl,l8327h		;8314	21 27 83	! ' .
	jr z,l831ch		;8317	28 03		( .
	ld hl,l832fh		;8319	21 2f 83	! / .
l831ch:
	ld a,c			;831c	79		y
	and 007h		;831d	e6 07		. .
	call 04600h		;831f	cd 00 46	. . F
	ld a,(hl)		;8322	7e		~
	ld (ix+006h),a		;8323	dd 77 06	. w .
	ret			;8326	c9		.
l8327h:
	nop			;8327	00		.
	ld bc,00302h		;8328	01 02 03	. . .
	inc bc			;832b	03		.
	inc bc			;832c	03		.
	nop			;832d	00		.
	nop			;832e	00		.
l832fh:
	inc b			;832f	04		.
	inc b			;8330	04		.
	rlca			;8331	07		.
	rlca			;8332	07		.
	rlca			;8333	07		.
	ld b,005h		;8334	06 05		. .
	inc b			;8336	04		.
	ret			;8337	c9		.
	ld hl,00040h		;8338	21 40 00	! @ .
	call 06bf3h		;833b	cd f3 6b	. . k
	jp 06c3ah		;833e	c3 3a 6c	. : l
sub_8341h:
	ld a,(ix+001h)		;8341	dd 7e 01	. ~ .
	or a			;8344	b7		.
	jr nz,l8367h		;8345	20 20		   
sub_8347h:
	call 06754h		;8347	cd 54 67	. T g
	ld b,000h		;834a	06 00		. .
	ld a,d			;834c	7a		z
	rlca			;834d	07		.
	ld a,003h		;834e	3e 03		> .
	jr nc,l835bh		;8350	30 09		0 .
	inc (ix+020h)		;8352	dd 34 20	. 4  
	inc b			;8355	04		.
	ld (ix+006h),b		;8356	dd 70 06	. p .
	ld a,004h		;8359	3e 04		> .
l835bh:
	ld (ix+03eh),a		;835b	dd 77 3e	. w >
	call 06796h		;835e	cd 96 67	. . g
	call 06ae8h		;8361	cd e8 6a	. . j
	jp 06c1dh		;8364	c3 1d 6c	. . l
l8367h:
	call 06adfh		;8367	cd df 6a	. . j
	ret nz			;836a	c0		.
	ld a,010h		;836b	3e 10		> .
	call 06ae8h		;836d	cd e8 6a	. . j
	ld a,016h		;8370	3e 16		> .
	call 0684ch		;8372	cd 4c 68	. L h
	jr c,l8394h		;8375	38 1d		8 .
	ld a,(ix+020h)		;8377	dd 7e 20	. ~  
	ld b,002h		;837a	06 02		. .
	ld c,0feh		;837c	0e fe		. .
	and a			;837e	a7		.
	jr z,l8384h		;837f	28 03		( .
	ld bc,00202h		;8381	01 02 02	. . .
l8384h:
	call 06929h		;8384	cd 29 69	. ) i
	ld a,(ix+020h)		;8387	dd 7e 20	. ~  
	ld (iy+020h),a		;838a	fd 77 20	. w  
	ld a,(ix+03dh)		;838d	dd 7e 3d	. ~ =
	and a			;8390	a7		.
	call nz,sub_83a9h	;8391	c4 a9 83	. . .
l8394h:
	call 0699eh		;8394	cd 9e 69	. . i
	inc (ix+021h)		;8397	dd 34 21	. 4 !
	ld a,003h		;839a	3e 03		> .
	cp (ix+021h)		;839c	dd be 21	. . !
	ret nz			;839f	c0		.
	ld (ix+021h),000h	;83a0	dd 36 21 00	. 6 ! .
	ld a,040h		;83a4	3e 40		> @
	jp 06ae8h		;83a6	c3 e8 6a	. . j
sub_83a9h:
	inc (ix+022h)		;83a9	dd 34 22	. 4 "
	ld a,(ix+022h)		;83ac	dd 7e 22	. ~ "
	rrca			;83af	0f		.
	ret c			;83b0	d8		.
	inc (iy+03dh)		;83b1	fd 34 3d	. 4 =
	ret			;83b4	c9		.
	call 06754h		;83b5	cd 54 67	. T g
	ld hl,00060h		;83b8	21 60 00	! ` .
sub_83bbh:
	call 06bf3h		;83bb	cd f3 6b	. . k
	ret			;83be	c9		.
	call sub_8402h		;83bf	cd 02 84	. . .
	ld a,(ix+001h)		;83c2	dd 7e 01	. ~ .
	dec a			;83c5	3d		=
	jr z,l83e2h		;83c6	28 1a		( .
	jp p,l83f9h		;83c8	f2 f9 83	. . .
	call 0755dh		;83cb	cd 5d 75	. ] u
	ld a,d			;83ce	7a		z
	or a			;83cf	b7		.
	ret p			;83d0	f0		.
	ld a,e			;83d1	7b		{
	add a,000h		;83d2	c6 00		. .
	cp 008h			;83d4	fe 08		. .
	ret nc			;83d6	d0		.
	inc (ix+001h)		;83d7	dd 34 01	. 4 .
	ld (ix+017h),003h	;83da	dd 36 17 03	. 6 . .
	ld (ix+018h),005h	;83de	dd 36 18 05	. 6 . .
l83e2h:
	dec (ix+018h)		;83e2	dd 35 18	. 5 .
	ret nz			;83e5	c0		.
	ld (ix+018h),005h	;83e6	dd 36 18 05	. 6 . .
	call sub_8420h		;83ea	cd 20 84	.   .
	dec (ix+017h)		;83ed	dd 35 17	. 5 .
	ret nz			;83f0	c0		.
	inc (ix+001h)		;83f1	dd 34 01	. 4 .
	ld (ix+018h),00ah	;83f4	dd 36 18 0a	. 6 . .
	ret			;83f8	c9		.
l83f9h:
	dec (ix+018h)		;83f9	dd 35 18	. 5 .
	ret nz			;83fc	c0		.
	ld (ix+001h),000h	;83fd	dd 36 01 00	. 6 . .
	ret			;8401	c9		.
sub_8402h:
	ld hl,00200h		;8402	21 00 02	! . .
	ld de,00200h		;8405	11 00 02	. . .
	call 076d0h		;8408	cd d0 76	. . v
	call 07b18h		;840b	cd 18 7b	. . {
	ld a,(de)		;840e	1a		.
	cp 0cch			;840f	fe cc		. .
	ret z			;8411	c8		.
	call 06b43h		;8412	cd 43 6b	. C k
	ret			;8415	c9		.
	ld a,(ix+00ch)		;8416	dd 7e 0c	. ~ .
	or a			;8419	b7		.
	ld a,000h		;841a	3e 00		> .
	ret m			;841c	f8		.
	ld a,003h		;841d	3e 03		> .
	ret			;841f	c9		.
sub_8420h:
	ld bc,00000h		;8420	01 00 00	. . .
	jp l9cb5h		;8423	c3 b5 9c	. . .
	ld hl,l842fh		;8426	21 2f 84	! / .
	call 07186h		;8429	cd 86 71	. . q
	jp 07306h		;842c	c3 06 73	. . s
l842fh:
	nop			;842f	00		.
	rst 38h			;8430	ff		.
	ld (ix+017h),01eh	;8431	dd 36 17 1e	. 6 . .
	call 06754h		;8435	cd 54 67	. T g
	ld a,d			;8438	7a		z
	and 080h		;8439	e6 80		. .
	rlca			;843b	07		.
	ld (ix+020h),a		;843c	dd 77 20	. w  
	ld (ix+005h),a		;843f	dd 77 05	. w .
	ld de,0ffd0h		;8442	11 d0 ff	. . .
	call 06bfdh		;8445	cd fd 6b	. . k
	ld (ix+03dh),001h	;8448	dd 36 3d 01	. 6 = .
	ret			;844c	c9		.
	ld a,(ix+001h)		;844d	dd 7e 01	. ~ .
	dec a			;8450	3d		=
	jr z,l846bh		;8451	28 18		( .
	call sub_84aah		;8453	cd aa 84	. . .
	dec (ix+017h)		;8456	dd 35 17	. 5 .
	ret nz			;8459	c0		.
	call sub_8488h		;845a	cd 88 84	. . .
	call 06bfah		;845d	cd fa 6b	. . k
	ld (ix+017h),008h	;8460	dd 36 17 08	. 6 . .
	ld (ix+018h),002h	;8464	dd 36 18 02	. 6 . .
	inc (ix+001h)		;8468	dd 34 01	. 4 .
l846bh:
	call sub_84aah		;846b	cd aa 84	. . .
	dec (ix+017h)		;846e	dd 35 17	. 5 .
	ret nz			;8471	c0		.
	call sub_84dch		;8472	cd dc 84	. . .
	ld (ix+017h),008h	;8475	dd 36 17 08	. 6 . .
	dec (ix+018h)		;8479	dd 35 18	. 5 .
	jp nz,l849dh		;847c	c2 9d 84	. . .
	ld (ix+001h),000h	;847f	dd 36 01 00	. 6 . .
	ld (ix+017h),028h	;8483	dd 36 17 28	. 6 . (
	ret			;8487	c9		.
sub_8488h:
	ld h,(ix+00eh)		;8488	dd 66 0e	. f .
	ld l,(ix+00dh)		;848b	dd 6e 0d	. n .
	ld (ix+012h),000h	;848e	dd 36 12 00	. 6 . .
	ld (ix+011h),000h	;8492	dd 36 11 00	. 6 . .
	ld (ix+012h),h		;8496	dd 74 12	. t .
	ld (ix+011h),l		;8499	dd 75 11	. u .
	ret			;849c	c9		.
l849dh:
	ld h,(ix+012h)		;849d	dd 66 12	. f .
	ld l,(ix+011h)		;84a0	dd 6e 11	. n .
	ld (ix+00eh),h		;84a3	dd 74 0e	. t .
	ld (ix+00dh),l		;84a6	dd 75 0d	. u .
	ret			;84a9	c9		.
sub_84aah:
	ld d,(ix+00ah)		;84aa	dd 56 0a	. V .
	ld e,(ix+008h)		;84ad	dd 5e 08	. ^ .
	call sub_84d2h		;84b0	cd d2 84	. . .
	add a,d			;84b3	82		.
	ld d,a			;84b4	57		W
	call 0753ch		;84b5	cd 3c 75	. < u
	jr c,l84beh		;84b8	38 04		8 .
	ret z			;84ba	c8		.
	jp 06b53h		;84bb	c3 53 6b	. S k
l84beh:
	call sub_84cbh		;84be	cd cb 84	. . .
	call 0753ch		;84c1	cd 3c 75	. < u
	jp c,06b53h		;84c4	da 53 6b	. S k
	ret z			;84c7	c8		.
	jp 06b53h		;84c8	c3 53 6b	. S k
sub_84cbh:
	ld a,(ix+00eh)		;84cb	dd 7e 0e	. ~ .
	neg			;84ce	ed 44		. D
	jr l84d6h		;84d0	18 04		. .
sub_84d2h:
	ld a,(ix+00eh)		;84d2	dd 7e 0e	. ~ .
	or a			;84d5	b7		.
l84d6h:
	ld a,0ffh		;84d6	3e ff		> .
	ret m			;84d8	f8		.
	ld a,005h		;84d9	3e 05		> .
	ret			;84db	c9		.
sub_84dch:
	ld hl,l84f1h		;84dc	21 f1 84	! . .
	ld a,(ix+020h)		;84df	dd 7e 20	. ~  
	and a			;84e2	a7		.
	jr z,l84e8h		;84e3	28 03		( .
	ld hl,l84f5h		;84e5	21 f5 84	! . .
l84e8h:
	call 07186h		;84e8	cd 86 71	. . q
	ld bc,00200h		;84eb	01 00 02	. . .
	jp 07306h		;84ee	c3 06 73	. . s
l84f1h:
	ld (bc),a		;84f1	02		.
	inc b			;84f2	04		.
	ld b,0ffh		;84f3	06 ff		. .
l84f5h:
	ld a,(bc)		;84f5	0a		.
	inc c			;84f6	0c		.
	ld c,0ffh		;84f7	0e ff		. .
	ld de,l858fh		;84f9	11 8f 85	. . .
	call 07b65h		;84fc	cd 65 7b	. e {
	ld a,(ix+001h)		;84ff	dd 7e 01	. ~ .
	cp 004h			;8502	fe 04		. .
	jp nc,04ae0h		;8504	d2 e0 4a	. . J
	call 0461ah		;8507	cd 1a 46	. . F
	ld (de),a		;850a	12		.
	add a,l			;850b	85		.
	ld b,b			;850c	40		@
	add a,l			;850d	85		.
	ld h,a			;850e	67		g
	add a,l			;850f	85		.
	add a,b			;8510	80		.
	add a,l			;8511	85		.
	call 06754h		;8512	cd 54 67	. T g
	call 06796h		;8515	cd 96 67	. . g
	ld c,a			;8518	4f		O
	and 00fh		;8519	e6 0f		. .
	ld (ix+020h),a		;851b	dd 77 20	. w  
	xor c			;851e	a9		.
	ld (ix+003h),a		;851f	dd 77 03	. w .
	or a			;8522	b7		.
	jr z,l8531h		;8523	28 0c		( .
	ld (ix+006h),002h	;8525	dd 36 06 02	. 6 . .
	ld a,(ix+008h)		;8529	dd 7e 08	. ~ .
	add a,004h		;852c	c6 04		. .
	ld (ix+008h),a		;852e	dd 77 08	. w .
l8531h:
	ld (ix+020h),000h	;8531	dd 36 20 00	. 6   .
	ld a,(ix+003h)		;8535	dd 7e 03	. ~ .
	srl a			;8538	cb 3f		. ?
	call sub_8650h		;853a	cd 50 86	. P .
	jp 06c1dh		;853d	c3 1d 6c	. . l
	ld a,(ix+037h)		;8540	dd 7e 37	. ~ 7
	and a			;8543	a7		.
	ret nz			;8544	c0		.
	call 07dcdh		;8545	cd cd 7d	. . }
	call 07dc3h		;8548	cd c3 7d	. . }
	ld a,(ix+003h)		;854b	dd 7e 03	. ~ .
	or a			;854e	b7		.
	jr nz,l855ah		;854f	20 09		  .
	ld (ix+006h),001h	;8551	dd 36 06 01	. 6 . .
	ld (ix+001h),003h	;8555	dd 36 01 03	. 6 . .
	ret			;8559	c9		.
l855ah:
	ld (ix+006h),003h	;855a	dd 36 06 03	. 6 . .
	ld (ix+001h),002h	;855e	dd 36 01 02	. 6 . .
	ld (ix+017h),003h	;8562	dd 36 17 03	. 6 . .
	ret			;8566	c9		.
	dec (ix+017h)		;8567	dd 35 17	. 5 .
	ret nz			;856a	c0		.
	call 07dcdh		;856b	cd cd 7d	. . }
	ld (ix+017h),003h	;856e	dd 36 17 03	. 6 . .
	ld a,(ix+006h)		;8572	dd 7e 06	. ~ .
	inc a			;8575	3c		<
	ld (ix+006h),a		;8576	dd 77 06	. w .
	cp 005h			;8579	fe 05		. .
	ret nz			;857b	c0		.
	ld (ix+001h),003h	;857c	dd 36 01 03	. 6 . .
	ret			;8580	c9		.
	ld l,(ix+020h)		;8581	dd 6e 20	. n  
	ld h,000h		;8584	26 00		& .
	ld de,l858fh		;8586	11 8f 85	. . .
	add hl,hl		;8589	29		)
	add hl,de		;858a	19		.
	ld e,(hl)		;858b	5e		^
	inc hl			;858c	23		#
	ld d,(hl)		;858d	56		V
	ret			;858e	c9		.
l858fh:
	sbc a,e			;858f	9b		.
	add a,l			;8590	85		.
	xor e			;8591	ab		.
	add a,l			;8592	85		.
	or (hl)			;8593	b6		.
	add a,l			;8594	85		.
	call po,00d85h		;8595	e4 85 0d	. . .
	add a,(hl)		;8598	86		.
	ld sp,01086h		;8599	31 86 10	1 . .
	nop			;859c	00		.
	nop			;859d	00		.
	ld bc,0fe01h		;859e	01 01 fe	. . .
	ld bc,08c00h		;85a1	01 00 8c	. . .
	ld (bc),a		;85a4	02		.
	cp 00dh			;85a5	fe 0d		. .
	nop			;85a7	00		.
	ld bc,0ff03h		;85a8	01 03 ff	. . .
	dec bc			;85ab	0b		.
	nop			;85ac	00		.
	nop			;85ad	00		.
	ld bc,0fe01h		;85ae	01 01 fe	. . .
	dec c			;85b1	0d		.
	nop			;85b2	00		.
	ld bc,0ff03h		;85b3	01 03 ff	. . .
	ld l,000h		;85b6	2e 00		. .
	nop			;85b8	00		.
	ld bc,0fe01h		;85b9	01 01 fe	. . .
	ld bc,08c00h		;85bc	01 00 8c	. . .
	ld (bc),a		;85bf	02		.
	cp 00dh			;85c0	fe 0d		. .
	nop			;85c2	00		.
	ld bc,0fe03h		;85c3	01 03 fe	. . .
	nop			;85c6	00		.
	inc bc			;85c7	03		.
	ld bc,0fe01h		;85c8	01 01 fe	. . .
	ld bc,08c03h		;85cb	01 03 8c	. . .
	ld (bc),a		;85ce	02		.
	cp 00dh			;85cf	fe 0d		. .
	inc bc			;85d1	03		.
	ld bc,0fe03h		;85d2	01 03 fe	. . .
	nop			;85d5	00		.
	ld b,001h		;85d6	06 01		. .
	ld bc,001feh		;85d8	01 fe 01	. . .
	ld b,08ch		;85db	06 8c		. .
	ld (bc),a		;85dd	02		.
	cp 00dh			;85de	fe 0d		. .
	ld b,001h		;85e0	06 01		. .
	inc bc			;85e2	03		.
	rst 38h			;85e3	ff		.
	add hl,hl		;85e4	29		)
	nop			;85e5	00		.
	nop			;85e6	00		.
	ld bc,0fe01h		;85e7	01 01 fe	. . .
	dec c			;85ea	0d		.
	nop			;85eb	00		.
	ld bc,0fe03h		;85ec	01 03 fe	. . .
	nop			;85ef	00		.
	inc bc			;85f0	03		.
	ld bc,0fe01h		;85f1	01 01 fe	. . .
	ld bc,08c03h		;85f4	01 03 8c	. . .
	ld (bc),a		;85f7	02		.
	cp 00dh			;85f8	fe 0d		. .
	inc bc			;85fa	03		.
	ld bc,0fe03h		;85fb	01 03 fe	. . .
	nop			;85fe	00		.
	ld b,001h		;85ff	06 01		. .
	ld bc,001feh		;8601	01 fe 01	. . .
	ld b,08ch		;8604	06 8c		. .
	ld (bc),a		;8606	02		.
	cp 00dh			;8607	fe 0d		. .
	ld b,001h		;8609	06 01		. .
	inc bc			;860b	03		.
	rst 38h			;860c	ff		.
	inc h			;860d	24		$
	nop			;860e	00		.
	nop			;860f	00		.
	ld bc,0fe01h		;8610	01 01 fe	. . .
	dec c			;8613	0d		.
	nop			;8614	00		.
	ld bc,0fe03h		;8615	01 03 fe	. . .
	nop			;8618	00		.
	inc bc			;8619	03		.
	ld bc,0fe01h		;861a	01 01 fe	. . .
	dec c			;861d	0d		.
	inc bc			;861e	03		.
	ld bc,0fe03h		;861f	01 03 fe	. . .
	nop			;8622	00		.
	ld b,001h		;8623	06 01		. .
	ld bc,001feh		;8625	01 fe 01	. . .
	ld b,08ch		;8628	06 8c		. .
	ld (bc),a		;862a	02		.
	cp 00dh			;862b	fe 0d		. .
	ld b,001h		;862d	06 01		. .
	inc bc			;862f	03		.
	rst 38h			;8630	ff		.
	rra			;8631	1f		.
	nop			;8632	00		.
	nop			;8633	00		.
	ld bc,0fe01h		;8634	01 01 fe	. . .
	dec c			;8637	0d		.
	nop			;8638	00		.
	ld bc,0fe03h		;8639	01 03 fe	. . .
	nop			;863c	00		.
	inc bc			;863d	03		.
	ld bc,0fe01h		;863e	01 01 fe	. . .
	dec c			;8641	0d		.
	inc bc			;8642	03		.
	ld bc,0fe03h		;8643	01 03 fe	. . .
	nop			;8646	00		.
	ld b,001h		;8647	06 01		. .
	ld bc,00dfeh		;8649	01 fe 0d	. . .
	ld b,001h		;864c	06 01		. .
	inc bc			;864e	03		.
	rst 38h			;864f	ff		.
sub_8650h:
	ld de,0ffa0h		;8650	11 a0 ff	. . .
	ld b,005h		;8653	06 05		. .
	call sub_8663h		;8655	cd 63 86	. c .
	or a			;8658	b7		.
	ret z			;8659	c8		.
	ld b,005h		;865a	06 05		. .
	ld de,00060h		;865c	11 60 00	. ` .
	call sub_8663h		;865f	cd 63 86	. c .
	ret			;8662	c9		.
sub_8663h:
	push ix			;8663	dd e5		. .
	push af			;8665	f5		.
	call sub_866dh		;8666	cd 6d 86	. m .
	pop af			;8669	f1		.
	pop ix			;866a	dd e1		. .
	ret			;866c	c9		.
sub_866dh:
	ld a,02ch		;866d	3e 2c		> ,
	push de			;866f	d5		.
	push bc			;8670	c5		.
	call 069bfh		;8671	cd bf 69	. . i
	pop bc			;8674	c1		.
	pop hl			;8675	e1		.
	ret c			;8676	d8		.
	push bc			;8677	c5		.
	call sub_83bbh		;8678	cd bb 83	. . .
	ld h,(iy+00ah)		;867b	fd 66 0a	. f .
	ld l,(iy+009h)		;867e	fd 6e 09	. n .
	ld de,0fe00h		;8681	11 00 fe	. . .
	add hl,de		;8684	19		.
	ld (ix+00ah),h		;8685	dd 74 0a	. t .
	ld (ix+009h),l		;8688	dd 75 09	. u .
	pop bc			;868b	c1		.
	ld a,(iy+008h)		;868c	fd 7e 08	. ~ .
	add a,b			;868f	80		.
	ld (ix+008h),a		;8690	dd 77 08	. w .
	ret			;8693	c9		.
	ld a,(ix+001h)		;8694	dd 7e 01	. ~ .
	call 0461ah		;8697	cd 1a 46	. . F
	and h			;869a	a4		.
	add a,(hl)		;869b	86		.
	or c			;869c	b1		.
	add a,(hl)		;869d	86		.
	ret nc			;869e	d0		.
	add a,(hl)		;869f	86		.
	pop af			;86a0	f1		.
	add a,(hl)		;86a1	86		.
	rst 38h			;86a2	ff		.
	add a,(hl)		;86a3	86		.
	call 06754h		;86a4	cd 54 67	. T g
	ld a,d			;86a7	7a		z
	rlca			;86a8	07		.
	jr nc,l86aeh		;86a9	30 03		0 .
	inc (ix+03dh)		;86ab	dd 34 3d	. 4 =
l86aeh:
	jp 06c1dh		;86ae	c3 1d 6c	. . l
	call 0755dh		;86b1	cd 5d 75	. ] u
	ld a,e			;86b4	7b		{
	bit 7,a			;86b5	cb 7f		. .
	jr z,l86bbh		;86b7	28 02		( .
	neg			;86b9	ed 44		. D
l86bbh:
	cp 002h			;86bb	fe 02		. .
	jp c,06c1dh		;86bd	da 1d 6c	. . l
	cp 008h			;86c0	fe 08		. .
	ret nc			;86c2	d0		.
	ld a,d			;86c3	7a		z
	bit 7,a			;86c4	cb 7f		. .
	jr z,l86cah		;86c6	28 02		( .
	neg			;86c8	ed 44		. D
l86cah:
	cp 008h			;86ca	fe 08		. .
	ret nc			;86cc	d0		.
	jp 06c1dh		;86cd	c3 1d 6c	. . l
	call 06b94h		;86d0	cd 94 6b	. . k
	ld a,c			;86d3	79		y
	call sub_8708h		;86d4	cd 08 87	. . .
	jr z,l86ech		;86d7	28 13		( .
	ld a,b			;86d9	78		x
	add a,002h		;86da	c6 02		. .
	and 007h		;86dc	e6 07		. .
	call sub_8708h		;86de	cd 08 87	. . .
	jr z,l86ech		;86e1	28 09		( .
	ld a,b			;86e3	78		x
	add a,004h		;86e4	c6 04		. .
	and 007h		;86e6	e6 07		. .
	ld (ix+020h),a		;86e8	dd 77 20	. w  
	ld b,a			;86eb	47		G
l86ech:
	call sub_8724h		;86ec	cd 24 87	. $ .
	jr l86f8h		;86ef	18 07		. .
	call 06ad2h		;86f1	cd d2 6a	. . j
	ret nz			;86f4	c0		.
	call 06be6h		;86f5	cd e6 6b	. . k
l86f8h:
	ld (ix+017h),004h	;86f8	dd 36 17 04	. 6 . .
	jp 06c1dh		;86fc	c3 1d 6c	. . l
	call 06ad2h		;86ff	cd d2 6a	. . j
	ret nz			;8702	c0		.
	ld (ix+001h),002h	;8703	dd 36 01 02	. 6 . .
	ret			;8707	c9		.
sub_8708h:
	ld (ix+020h),a		;8708	dd 77 20	. w  
	push af			;870b	f5		.
	ld l,a			;870c	6f		o
	ld h,000h		;870d	26 00		& .
	add hl,hl		;870f	29		)
	ld de,l873fh		;8710	11 3f 87	. ? .
	add hl,de		;8713	19		.
	ld a,(hl)		;8714	7e		~
	add a,(ix+008h)		;8715	dd 86 08	. . .
	ld e,a			;8718	5f		_
	inc hl			;8719	23		#
	ld a,(hl)		;871a	7e		~
	add a,(ix+00ah)		;871b	dd 86 0a	. . .
	ld d,a			;871e	57		W
	call 0753ch		;871f	cd 3c 75	. < u
	pop bc			;8722	c1		.
	ret			;8723	c9		.
sub_8724h:
	ld a,b			;8724	78		x
	ld l,a			;8725	6f		o
	ld h,000h		;8726	26 00		& .
	add hl,hl		;8728	29		)
	ld de,l874fh		;8729	11 4f 87	. O .
	add hl,de		;872c	19		.
	ld a,(hl)		;872d	7e		~
	call sub_8734h		;872e	cd 34 87	. 4 .
	inc hl			;8731	23		#
	ld a,(hl)		;8732	7e		~
	ex de,hl		;8733	eb		.
sub_8734h:
	ld d,000h		;8734	16 00		. .
	bit 7,a			;8736	cb 7f		. .
	jr z,l873bh		;8738	28 01		( .
	dec d			;873a	15		.
l873bh:
	ld e,a			;873b	5f		_
	jp 06bebh		;873c	c3 eb 6b	. . k
l873fh:
	nop			;873f	00		.
	rst 38h			;8740	ff		.
	rst 38h			;8741	ff		.
	rst 38h			;8742	ff		.
	rst 38h			;8743	ff		.
	nop			;8744	00		.
	rst 38h			;8745	ff		.
	inc bc			;8746	03		.
	nop			;8747	00		.
	inc bc			;8748	03		.
	inc bc			;8749	03		.
	inc bc			;874a	03		.
	inc bc			;874b	03		.
	nop			;874c	00		.
	inc bc			;874d	03		.
	rst 38h			;874e	ff		.
l874fh:
	nop			;874f	00		.
	and b			;8750	a0		.
	and b			;8751	a0		.
	and b			;8752	a0		.
	and b			;8753	a0		.
	nop			;8754	00		.
	and b			;8755	a0		.
	ld h,b			;8756	60		`
	nop			;8757	00		.
	ld h,b			;8758	60		`
	ld h,b			;8759	60		`
	ld h,b			;875a	60		`
	ld h,b			;875b	60		`
	nop			;875c	00		.
	ld h,b			;875d	60		`
	and b			;875e	a0		.
	call 06754h		;875f	cd 54 67	. T g
	push ix			;8762	dd e5		. .
	ld de,0ffa0h		;8764	11 a0 ff	. . .
	call sub_8777h		;8767	cd 77 87	. w .
	pop ix			;876a	dd e1		. .
	push ix			;876c	dd e5		. .
	ld de,00060h		;876e	11 60 00	. ` .
	call sub_8777h		;8771	cd 77 87	. w .
	pop ix			;8774	dd e1		. .
	ret			;8776	c9		.
sub_8777h:
	ld a,02ch		;8777	3e 2c		> ,
	push de			;8779	d5		.
	call 069bfh		;877a	cd bf 69	. . i
	pop hl			;877d	e1		.
	ret c			;877e	d8		.
	call sub_83bbh		;877f	cd bb 83	. . .
	ld h,(iy+00ah)		;8782	fd 66 0a	. f .
	ld l,(iy+009h)		;8785	fd 6e 09	. n .
	ld de,0fe00h		;8788	11 00 fe	. . .
l878bh:
	add hl,de		;878b	19		.
	ld (ix+00ah),h		;878c	dd 74 0a	. t .
	ld (ix+009h),l		;878f	dd 75 09	. u .
	ld a,(iy+008h)		;8792	fd 7e 08	. ~ .
	add a,005h		;8795	c6 05		. .
	ld (ix+008h),a		;8797	dd 77 08	. w .
	ret			;879a	c9		.
	ld a,(ix+00ah)		;879b	dd 7e 0a	. ~ .
	cp 0f6h			;879e	fe f6		. .
	jp z,06e98h		;87a0	ca 98 6e	. . n
	ld a,(ix+037h)		;87a3	dd 7e 37	. ~ 7
	or a			;87a6	b7		.
	ret nz			;87a7	c0		.
	set 6,(ix+015h)		;87a8	dd cb 15 f6	. . . .
	bit 0,(ix+001h)		;87ac	dd cb 01 46	. . . F
	ret nz			;87b0	c0		.
	ld a,013h		;87b1	3e 13		> .
	call 04af5h		;87b3	cd f5 4a	. . J
	set 0,(ix+001h)		;87b6	dd cb 01 c6	. . . .
	ret			;87ba	c9		.
	inc (ix+018h)		;87bb	dd 34 18	. 4 .
	jp l82d0h		;87be	c3 d0 82	. . .
	call sub_8304h		;87c1	cd 04 83	. . .
	call 06adfh		;87c4	cd df 6a	. . j
	ret nz			;87c7	c0		.
	ld a,(ix+02dh)		;87c8	dd 7e 2d	. ~ -
	add a,a			;87cb	87		.
	add a,01ch		;87cc	c6 1c		. .
	ld (ix+018h),a		;87ce	dd 77 18	. w .
	ld l,(ix+025h)		;87d1	dd 6e 25	. n %
	ld h,000h		;87d4	26 00		& .
	ld de,l87ebh		;87d6	11 eb 87	. . .
	add hl,de		;87d9	19		.
	ld a,(hl)		;87da	7e		~
	add a,001h		;87db	c6 01		. .
	dec a			;87dd	3d		=
	jr nc,l87e5h		;87de	30 05		0 .
	ld (ix+025h),000h	;87e0	dd 36 25 00	. 6 % .
	ld a,(de)		;87e4	1a		.
l87e5h:
	inc (ix+025h)		;87e5	dd 34 25	. 4 %
	jp 072f6h		;87e8	c3 f6 72	. . r
l87ebh:
	ex af,af'		;87eb	08		.
	ld a,(bc)		;87ec	0a		.
	inc c			;87ed	0c		.
	ld c,010h		;87ee	0e 10		. .
	rst 38h			;87f0	ff		.
	call sub_88eah		;87f1	cd ea 88	. . .
	ld a,(ix+001h)		;87f4	dd 7e 01	. ~ .
	cp 005h			;87f7	fe 05		. .
	jp nc,04ae0h		;87f9	d2 e0 4a	. . J
	call 0461ah		;87fc	cd 1a 46	. . F
	add hl,bc		;87ff	09		.
	adc a,b			;8800	88		.
	jr z,l878bh		;8801	28 88		( .
	scf			;8803	37		7
	adc a,b			;8804	88		.
	ld c,c			;8805	49		I
	adc a,b			;8806	88		.
	ld e,b			;8807	58		X
	adc a,b			;8808	88		.
	ld (ix+003h),001h	;8809	dd 36 03 01	. 6 . .
	ld (ix+00ah),01ch	;880d	dd 36 0a 1c	. 6 . .
	ld (ix+008h),000h	;8811	dd 36 08 00	. 6 . .
	ld (ix+017h),050h	;8815	dd 36 17 50	. 6 . P
	ld de,0ffe0h		;8819	11 e0 ff	. . .
	ld hl,00020h		;881c	21 20 00	!   .
	call 06bebh		;881f	cd eb 6b	. . k
	jr l8824h		;8822	18 00		. .
l8824h:
	inc (ix+001h)		;8824	dd 34 01	. 4 .
	ret			;8827	c9		.
	dec (ix+017h)		;8828	dd 35 17	. 5 .
	ret nz			;882b	c0		.
	ld de,00020h		;882c	11 20 00	.   .
	call 06bfdh		;882f	cd fd 6b	. . k
	call 06bfdh		;8832	cd fd 6b	. . k
	jr l8824h		;8835	18 ed		. .
	call sub_885ch		;8837	cd 5c 88	. \ .
	ld a,(ix+00ah)		;883a	dd 7e 0a	. ~ .
	cp 018h			;883d	fe 18		. .
	ret c			;883f	d8		.
	call 06bfah		;8840	cd fa 6b	. . k
	ld (ix+017h),078h	;8843	dd 36 17 78	. 6 . x
	jr l8824h		;8847	18 db		. .
	call sub_885ch		;8849	cd 5c 88	. \ .
	dec (ix+017h)		;884c	dd 35 17	. 5 .
	ret nz			;884f	c0		.
	ld de,0ffc0h		;8850	11 c0 ff	. . .
	call 06bfdh		;8853	cd fd 6b	. . k
	jr l8824h		;8856	18 cc		. .
	call sub_885ch		;8858	cd 5c 88	. \ .
	ret			;885b	c9		.
sub_885ch:
	ld a,(ix+002h)		;885c	dd 7e 02	. ~ .
	dec a			;885f	3d		=
	jr z,l887bh		;8860	28 19		( .
	jp p,l8886h		;8862	f2 86 88	. . .
	call sub_8894h		;8865	cd 94 88	. . .
	jr nz,l8870h		;8868	20 06		  .
	call sub_88a1h		;886a	cd a1 88	. . .
	jp l88cfh		;886d	c3 cf 88	. . .
l8870h:
	inc (ix+002h)		;8870	dd 34 02	. 4 .
	ld a,(ix+008h)		;8873	dd 7e 08	. ~ .
	cp 009h			;8876	fe 09		. .
	jp l88d6h		;8878	c3 d6 88	. . .
l887bh:
	ld a,(ix+008h)		;887b	dd 7e 08	. ~ .
	sub 007h		;887e	d6 07		. .
	cp 001h			;8880	fe 01		. .
	ret nc			;8882	d0		.
	inc (ix+002h)		;8883	dd 34 02	. 4 .
l8886h:
	call sub_8894h		;8886	cd 94 88	. . .
	jr nz,l8870h		;8889	20 e5		  .
	call sub_88a1h		;888b	cd a1 88	. . .
	ret nz			;888e	c0		.
	ld (ix+002h),000h	;888f	dd 36 02 00	. 6 . .
	ret			;8893	c9		.
sub_8894h:
	ld de,001feh		;8894	11 fe 01	. . .
	call 07595h		;8897	cd 95 75	. . u
	ret nz			;889a	c0		.
	ld de,00106h		;889b	11 06 01	. . .
	jp 07595h		;889e	c3 95 75	. . u
sub_88a1h:
	call 0756ch		;88a1	cd 6c 75	. l u
	bit 7,d			;88a4	cb 7a		. z
	jr z,l88abh		;88a6	28 03		( .
	call 0460ah		;88a8	cd 0a 46	. . F
l88abh:
	bit 7,h			;88ab	cb 7c		. |
	jr z,l88c0h		;88ad	28 11		( .
	call 04612h		;88af	cd 12 46	. . F
sub_88b2h:
	add hl,hl		;88b2	29		)
	or a			;88b3	b7		.
	sbc hl,de		;88b4	ed 52		. R
	ret c			;88b6	d8		.
	ld bc,00180h		;88b7	01 80 01	. . .
	or a			;88ba	b7		.
	sbc hl,bc		;88bb	ed 42		. B
	ret nc			;88bd	d0		.
	xor a			;88be	af		.
	ret			;88bf	c9		.
l88c0h:
	call sub_88b2h		;88c0	cd b2 88	. . .
	ret z			;88c3	c8		.
	ccf			;88c4	3f		?
	ret			;88c5	c9		.
	ld a,(ix+022h)		;88c6	dd 7e 22	. ~ "
	dec a			;88c9	3d		=
	ld (ix+022h),a		;88ca	dd 77 22	. w "
	xor a			;88cd	af		.
	ret			;88ce	c9		.
l88cfh:
	ld (ix+003h),001h	;88cf	dd 36 03 01	. 6 . .
	jp z,06bf0h		;88d3	ca f0 6b	. . k
l88d6h:
	ld hl,00030h		;88d6	21 30 00	! 0 .
	ld (ix+003h),002h	;88d9	dd 36 03 02	. 6 . .
	jp c,06bf3h		;88dd	da f3 6b	. . k
	call 04612h		;88e0	cd 12 46	. . F
	ld (ix+003h),000h	;88e3	dd 36 03 00	. 6 . .
	jp 06bf3h		;88e7	c3 f3 6b	. . k
sub_88eah:
	ld a,(0ca02h)		;88ea	3a 02 ca	: . .
	and 017h		;88ed	e6 17		. .
	ret nz			;88ef	c0		.
	call 0750fh		;88f0	cd 0f 75	. . u
	ret c			;88f3	d8		.
	ld de,00000h		;88f4	11 00 00	. . .
	ld bc,00200h		;88f7	01 00 02	. . .
	push ix			;88fa	dd e5		. .
	call 09d1eh		;88fc	cd 1e 9d	. . .
	pop ix			;88ff	dd e1		. .
	push ix			;8901	dd e5		. .
	ld de,00002h		;8903	11 02 00	. . .
	ld bc,00206h		;8906	01 06 02	. . .
	call 09d1eh		;8909	cd 1e 9d	. . .
	pop ix			;890c	dd e1		. .
	ret			;890e	c9		.
	ret			;890f	c9		.
	ld a,(ix+001h)		;8910	dd 7e 01	. ~ .
	cp 002h			;8913	fe 02		. .
	jp nc,04ae0h		;8915	d2 e0 4a	. . J
	call 0461ah		;8918	cd 1a 46	. . F
	rra			;891b	1f		.
	adc a,c			;891c	89		.
	daa			;891d	27		'
	adc a,c			;891e	89		.
	inc (ix+001h)		;891f	dd 34 01	. 4 .
	ret			;8922	c9		.
	ld (ix+001h),a		;8923	dd 77 01	. w .
	ret			;8926	c9		.
	call sub_8952h		;8927	cd 52 89	. R .
	ld a,(ix+022h)		;892a	dd 7e 22	. ~ "
	or a			;892d	b7		.
	ret z			;892e	c8		.
	jp l8932h		;892f	c3 32 89	. 2 .
l8932h:
	ld a,(ix+021h)		;8932	dd 7e 21	. ~ !
	dec a			;8935	3d		=
	jr z,l8944h		;8936	28 0c		( .
	ld a,(iy+027h)		;8938	fd 7e 27	. ~ '
	add a,(iy+029h)		;893b	fd 86 29	. . )
	call sub_894dh		;893e	cd 4d 89	. M .
	jp l8a30h		;8941	c3 30 8a	. 0 .
l8944h:
	ld a,(iy+027h)		;8944	fd 7e 27	. ~ '
	call sub_894dh		;8947	cd 4d 89	. M .
	jp l89feh		;894a	c3 fe 89	. . .
sub_894dh:
	ld c,a			;894d	4f		O
	ld b,(iy+026h)		;894e	fd 46 26	. F &
	ret			;8951	c9		.
sub_8952h:
	call 068deh		;8952	cd de 68	. . h
	jr c,l896ah		;8955	38 13		8 .
	ld a,(iy+00ah)		;8957	fd 7e 0a	. ~ .
	ld (ix+00ah),a		;895a	dd 77 0a	. w .
	ld a,(iy+009h)		;895d	fd 7e 09	. ~ .
	ld (ix+009h),a		;8960	dd 77 09	. w .
	ld a,(iy+022h)		;8963	fd 7e 22	. ~ "
	ld (ix+022h),a		;8966	dd 77 22	. w "
	ret			;8969	c9		.
l896ah:
	dec (ix+00ah)		;896a	dd 35 0a	. 5 .
	ret			;896d	c9		.
sub_896eh:
	ld b,(ix+008h)		;896e	dd 46 08	. F .
	ld c,(ix+007h)		;8971	dd 4e 07	. N .
	add hl,bc		;8974	09		.
	push hl			;8975	e5		.
	ex de,hl		;8976	eb		.
	or a			;8977	b7		.
	sbc hl,de		;8978	ed 52		. R
	ld b,005h		;897a	06 05		. .
l897ch:
	sra h			;897c	cb 2c		. ,
	rr l			;897e	cb 1d		. .
	djnz l897ch		;8980	10 fa		. .
	pop bc			;8982	c1		.
	ret			;8983	c9		.
sub_8984h:
	ld b,(ix+00ah)		;8984	dd 46 0a	. F .
	ld c,(ix+009h)		;8987	dd 4e 09	. N .
	add hl,bc		;898a	09		.
	push hl			;898b	e5		.
	ex de,hl		;898c	eb		.
	or a			;898d	b7		.
	sbc hl,de		;898e	ed 52		. R
	ld b,005h		;8990	06 05		. .
l8992h:
	sra h			;8992	cb 2c		. ,
	rr l			;8994	cb 1d		. .
	djnz l8992h		;8996	10 fa		. .
	pop bc			;8998	c1		.
	ret			;8999	c9		.
sub_899ah:
	push hl			;899a	e5		.
	ld hl,00000h		;899b	21 00 00	! . .
	call sub_8984h		;899e	cd 84 89	. . .
	push bc			;89a1	c5		.
	exx			;89a2	d9		.
	pop de			;89a3	d1		.
	exx			;89a4	d9		.
	ex (sp),hl		;89a5	e3		.
	ex de,hl		;89a6	eb		.
	ld hl,00004h		;89a7	21 04 00	! . .
	call sub_896eh		;89aa	cd 6e 89	. n .
	push bc			;89ad	c5		.
	exx			;89ae	d9		.
	pop hl			;89af	e1		.
	exx			;89b0	d9		.
	pop de			;89b1	d1		.
	ret			;89b2	c9		.
sub_89b3h:
	push hl			;89b3	e5		.
	ld hl,00000h		;89b4	21 00 00	! . .
	call sub_8984h		;89b7	cd 84 89	. . .
	push bc			;89ba	c5		.
	exx			;89bb	d9		.
	pop de			;89bc	d1		.
	exx			;89bd	d9		.
	ex (sp),hl		;89be	e3		.
	ex de,hl		;89bf	eb		.
	ld hl,00001h		;89c0	21 01 00	! . .
	call sub_896eh		;89c3	cd 6e 89	. n .
	push bc			;89c6	c5		.
	exx			;89c7	d9		.
	pop hl			;89c8	e1		.
	exx			;89c9	d9		.
	pop de			;89ca	d1		.
	ret			;89cb	c9		.
sub_89cch:
	push hl			;89cc	e5		.
	ld hl,00004h		;89cd	21 04 00	! . .
	call sub_8984h		;89d0	cd 84 89	. . .
	push bc			;89d3	c5		.
	exx			;89d4	d9		.
	pop de			;89d5	d1		.
	exx			;89d6	d9		.
	ex (sp),hl		;89d7	e3		.
	ex de,hl		;89d8	eb		.
	ld hl,00004h		;89d9	21 04 00	! . .
	call sub_896eh		;89dc	cd 6e 89	. n .
	push bc			;89df	c5		.
	exx			;89e0	d9		.
	pop hl			;89e1	e1		.
	exx			;89e2	d9		.
	pop de			;89e3	d1		.
	ret			;89e4	c9		.
sub_89e5h:
	push hl			;89e5	e5		.
	ld hl,00004h		;89e6	21 04 00	! . .
	call sub_8984h		;89e9	cd 84 89	. . .
	push bc			;89ec	c5		.
	exx			;89ed	d9		.
	pop de			;89ee	d1		.
	exx			;89ef	d9		.
	ex (sp),hl		;89f0	e3		.
	ex de,hl		;89f1	eb		.
	ld hl,00001h		;89f2	21 01 00	! . .
	call sub_896eh		;89f5	cd 6e 89	. n .
	push bc			;89f8	c5		.
	exx			;89f9	d9		.
	pop hl			;89fa	e1		.
	exx			;89fb	d9		.
	pop de			;89fc	d1		.
	ret			;89fd	c9		.
l89feh:
	ld a,(iy+028h)		;89fe	fd 7e 28	. ~ (
	push af			;8a01	f5		.
	ld a,(iy+028h)		;8a02	fd 7e 28	. ~ (
	push bc			;8a05	c5		.
	push af			;8a06	f5		.
	call sub_8a62h		;8a07	cd 62 8a	. b .
	call sub_899ah		;8a0a	cd 9a 89	. . .
	exx			;8a0d	d9		.
	ld c,(iy+029h)		;8a0e	fd 4e 29	. N )
	ld b,0cbh		;8a11	06 cb		. .
	exx			;8a13	d9		.
	ld bc,00001h		;8a14	01 01 00	. . .
	call sub_8a68h		;8a17	cd 68 8a	. h .
	pop af			;8a1a	f1		.
	pop bc			;8a1b	c1		.
	add a,b			;8a1c	80		.
	ld b,a			;8a1d	47		G
	call sub_8a62h		;8a1e	cd 62 8a	. b .
	call sub_89cch		;8a21	cd cc 89	. . .
	pop af			;8a24	f1		.
	exx			;8a25	d9		.
	ld c,a			;8a26	4f		O
	ld b,0cah		;8a27	06 ca		. .
	exx			;8a29	d9		.
	ld bc,0ff00h		;8a2a	01 00 ff	. . .
	jp sub_8a68h		;8a2d	c3 68 8a	. h .
l8a30h:
	ld a,(iy+029h)		;8a30	fd 7e 29	. ~ )
	push af			;8a33	f5		.
	ld a,(iy+028h)		;8a34	fd 7e 28	. ~ (
	push bc			;8a37	c5		.
	push af			;8a38	f5		.
	call sub_8a62h		;8a39	cd 62 8a	. b .
	call sub_89b3h		;8a3c	cd b3 89	. . .
	exx			;8a3f	d9		.
	ld c,(iy+028h)		;8a40	fd 4e 28	. N (
	ld b,0cah		;8a43	06 ca		. .
	exx			;8a45	d9		.
	ld bc,00100h		;8a46	01 00 01	. . .
	call sub_8a68h		;8a49	cd 68 8a	. h .
	pop af			;8a4c	f1		.
	pop bc			;8a4d	c1		.
	add a,b			;8a4e	80		.
	ld b,a			;8a4f	47		G
	call sub_8a62h		;8a50	cd 62 8a	. b .
	call sub_89e5h		;8a53	cd e5 89	. . .
	pop af			;8a56	f1		.
	exx			;8a57	d9		.
	ld c,a			;8a58	4f		O
	ld b,0cbh		;8a59	06 cb		. .
	exx			;8a5b	d9		.
	ld bc,000ffh		;8a5c	01 ff 00	. . .
	jp sub_8a68h		;8a5f	c3 68 8a	. h .
sub_8a62h:
	ld d,b			;8a62	50		P
	ld h,c			;8a63	61		a
	ld l,000h		;8a64	2e 00		. .
	ld e,l			;8a66	5d		]
	ret			;8a67	c9		.
sub_8a68h:
	ld a,075h		;8a68	3e 75		> u
	push ix			;8a6a	dd e5		. .
	push ix			;8a6c	dd e5		. .
	pop iy			;8a6e	fd e1		. .
	push hl			;8a70	e5		.
	push de			;8a71	d5		.
	push bc			;8a72	c5		.
	exx			;8a73	d9		.
	push hl			;8a74	e5		.
	push de			;8a75	d5		.
	push bc			;8a76	c5		.
	exx			;8a77	d9		.
	call 070dah		;8a78	cd da 70	. . p
	exx			;8a7b	d9		.
	pop bc			;8a7c	c1		.
	pop de			;8a7d	d1		.
	pop hl			;8a7e	e1		.
	exx			;8a7f	d9		.
	pop bc			;8a80	c1		.
	pop de			;8a81	d1		.
	pop hl			;8a82	e1		.
	jr c,l8aabh		;8a83	38 26		8 &
	exx			;8a85	d9		.
	ld (ix+008h),h		;8a86	dd 74 08	. t .
	ld (ix+007h),l		;8a89	dd 75 07	. u .
	ld (ix+00ah),d		;8a8c	dd 72 0a	. r .
	ld (ix+009h),e		;8a8f	dd 73 09	. s .
	ld (ix+011h),b		;8a92	dd 70 11	. p .
	ld (ix+00fh),c		;8a95	dd 71 0f	. q .
	exx			;8a98	d9		.
	ld (ix+00ch),h		;8a99	dd 74 0c	. t .
	ld (ix+00bh),l		;8a9c	dd 75 0b	. u .
	ld (ix+00eh),d		;8a9f	dd 72 0e	. r .
	ld (ix+00dh),e		;8aa2	dd 73 0d	. s .
	ld (ix+012h),b		;8aa5	dd 70 12	. p .
	ld (ix+010h),c		;8aa8	dd 71 10	. q .
l8aabh:
	pop ix			;8aab	dd e1		. .
	ret			;8aad	c9		.
	ret			;8aae	c9		.
l8aafh:
	ld (bc),a		;8aaf	02		.
	inc c			;8ab0	0c		.
	ex af,af'		;8ab1	08		.
	ld (de),a		;8ab2	12		.
	rlca			;8ab3	07		.
	inc a			;8ab4	3c		<
	inc c			;8ab5	0c		.
	ex af,af'		;8ab6	08		.
	ld (de),a		;8ab7	12		.
	rlca			;8ab8	07		.
	jr z,$+17		;8ab9	28 0f		( .
	ld b,008h		;8abb	06 08		. .
	rrca			;8abd	0f		.
	ld e,014h		;8abe	1e 14		. .
	dec c			;8ac0	0d		.
	add hl,bc		;8ac1	09		.
	add hl,bc		;8ac2	09		.
	ld (0070fh),a		;8ac3	32 0f 07	2 . .
	inc c			;8ac6	0c		.
	ex af,af'		;8ac7	08		.
	ld (00a12h),a		;8ac8	32 12 0a	2 . .
	ld a,(bc)		;8acb	0a		.
	inc c			;8acc	0c		.
	jr z,$+17		;8acd	28 0f		( .
	inc b			;8acf	04		.
	djnz l8adfh		;8ad0	10 0d		. .
	ld (00712h),a		;8ad2	32 12 07	2 . .
	inc c			;8ad5	0c		.
	inc c			;8ad6	0c		.
	call sub_8b79h		;8ad7	cd 79 8b	. y .
	ld a,(ix+001h)		;8ada	dd 7e 01	. ~ .
	cp 006h			;8add	fe 06		. .
l8adfh:
	jp nc,04ae0h		;8adf	d2 e0 4a	. . J
	call 0461ah		;8ae2	cd 1a 46	. . F
	pop af			;8ae5	f1		.
	adc a,d			;8ae6	8a		.
	ld b,(hl)		;8ae7	46		F
	adc a,e			;8ae8	8b		.
	ld c,h			;8ae9	4c		L
	adc a,e			;8aea	8b		.
	ld e,a			;8aeb	5f		_
	adc a,e			;8aec	8b		.
	ld l,h			;8aed	6c		l
	adc a,e			;8aee	8b		.
	ld (hl),d		;8aef	72		r
	adc a,e			;8af0	8b		.
	call 06796h		;8af1	cd 96 67	. . g
	add a,020h		;8af4	c6 20		.  
	ld (ix+018h),a		;8af6	dd 77 18	. w .
	ld (ix+017h),020h	;8af9	dd 36 17 20	. 6 .  
	ld (ix+00ah),01fh	;8afd	dd 36 0a 1f	. 6 . .
	ld (ix+008h),014h	;8b01	dd 36 08 14	. 6 . .
	push ix			;8b05	dd e5		. .
	push ix			;8b07	dd e5		. .
	pop iy			;8b09	fd e1		. .
	ld a,035h		;8b0b	3e 35		> 5
	call 069bfh		;8b0d	cd bf 69	. . i
	ld (ix+00ah),01fh	;8b10	dd 36 0a 1f	. 6 . .
	ld (ix+008h),014h	;8b14	dd 36 08 14	. 6 . .
	ld (ix+021h),002h	;8b18	dd 36 21 02	. 6 ! .
	push iy			;8b1c	fd e5		. .
	pop ix			;8b1e	dd e1		. .
	ld a,035h		;8b20	3e 35		> 5
	call 069bfh		;8b22	cd bf 69	. . i
	ld (ix+00ah),01fh	;8b25	dd 36 0a 1f	. 6 . .
	ld (ix+008h),002h	;8b29	dd 36 08 02	. 6 . .
	inc (ix+005h)		;8b2d	dd 34 05	. 4 .
	ld (ix+021h),001h	;8b30	dd 36 21 01	. 6 ! .
	pop ix			;8b34	dd e1		. .
	call sub_8be2h		;8b36	cd e2 8b	. . .
	call sub_8b3eh		;8b39	cd 3e 8b	. > .
	jr l8b46h		;8b3c	18 08		. .
sub_8b3eh:
	inc (ix+001h)		;8b3e	dd 34 01	. 4 .
	ret			;8b41	c9		.
l8b42h:
	ld (ix+001h),a		;8b42	dd 77 01	. w .
	ret			;8b45	c9		.
l8b46h:
	call sub_8b88h		;8b46	cd 88 8b	. . .
	call sub_8b3eh		;8b49	cd 3e 8b	. > .
	ld a,(ix+023h)		;8b4c	dd 7e 23	. ~ #
	or a			;8b4f	b7		.
	ld de,0fe00h		;8b50	11 00 fe	. . .
	jp nz,06bfdh		;8b53	c2 fd 6b	. . k
	call sub_8bc0h		;8b56	cd c0 8b	. . .
	dec (ix+017h)		;8b59	dd 35 17	. 5 .
	ret nz			;8b5c	c0		.
	jr sub_8b3eh		;8b5d	18 df		. .
	call sub_8bc0h		;8b5f	cd c0 8b	. . .
	ld a,(ix+037h)		;8b62	dd 7e 37	. ~ 7
	cp 002h			;8b65	fe 02		. .
	jp nz,06e98h		;8b67	c2 98 6e	. . n
	jr sub_8b3eh		;8b6a	18 d2		. .
	ld (ix+022h),001h	;8b6c	dd 36 22 01	. 6 " .
	jr sub_8b3eh		;8b70	18 cc		. .
	xor a			;8b72	af		.
	ld (ix+022h),a		;8b73	dd 77 22	. w "
	inc a			;8b76	3c		<
	jr l8b42h		;8b77	18 c9		. .
sub_8b79h:
	ld a,(0ca02h)		;8b79	3a 02 ca	: . .
	and 007h		;8b7c	e6 07		. .
	ret nz			;8b7e	c0		.
	dec (ix+018h)		;8b7f	dd 35 18	. 5 .
	ret nz			;8b82	c0		.
	ld (ix+023h),001h	;8b83	dd 36 23 01	. 6 # .
	ret			;8b87	c9		.
sub_8b88h:
	ld a,(ix+024h)		;8b88	dd 7e 24	. ~ $
	push af			;8b8b	f5		.
	call sub_8b9bh		;8b8c	cd 9b 8b	. . .
	pop af			;8b8f	f1		.
	inc a			;8b90	3c		<
	cp 008h			;8b91	fe 08		. .
	jr c,l8b97h		;8b93	38 02		8 .
	ld a,001h		;8b95	3e 01		> .
l8b97h:
	ld (ix+024h),a		;8b97	dd 77 24	. w $
	ret			;8b9a	c9		.
sub_8b9bh:
	ld l,a			;8b9b	6f		o
	add a,a			;8b9c	87		.
	add a,a			;8b9d	87		.
	add a,l			;8b9e	85		.
	ld hl,l8aafh		;8b9f	21 af 8a	! . .
	call 04600h		;8ba2	cd 00 46	. . F
	ld a,(hl)		;8ba5	7e		~
	inc hl			;8ba6	23		#
	ld (ix+017h),a		;8ba7	dd 77 17	. w .
	ld a,(hl)		;8baa	7e		~
	inc hl			;8bab	23		#
	ld (ix+026h),a		;8bac	dd 77 26	. w &
	ld a,(hl)		;8baf	7e		~
	inc hl			;8bb0	23		#
	ld (ix+027h),a		;8bb1	dd 77 27	. w '
	ld a,(hl)		;8bb4	7e		~
	inc hl			;8bb5	23		#
	ld (ix+028h),a		;8bb6	dd 77 28	. w (
	ld a,(hl)		;8bb9	7e		~
	inc hl			;8bba	23		#
	ld (ix+029h),a		;8bbb	dd 77 29	. w )
	ret			;8bbe	c9		.
	ret			;8bbf	c9		.
sub_8bc0h:
	ld d,(ix+00ah)		;8bc0	dd 56 0a	. V .
	ld e,(ix+008h)		;8bc3	dd 5e 08	. ^ .
	call sub_8be9h		;8bc6	cd e9 8b	. . .
	add a,d			;8bc9	82		.
	ld d,a			;8bca	57		W
	call 0753ch		;8bcb	cd 3c 75	. < u
	jr c,l8bd7h		;8bce	38 07		8 .
	cp 003h			;8bd0	fe 03		. .
	ret nz			;8bd2	c0		.
	jp 06b53h		;8bd3	c3 53 6b	. S k
	ret			;8bd6	c9		.
l8bd7h:
	ld a,(ix+00ah)		;8bd7	dd 7e 0a	. ~ .
	sub 002h		;8bda	d6 02		. .
	cp 01ch			;8bdc	fe 1c		. .
	ret c			;8bde	d8		.
	jp 06b53h		;8bdf	c3 53 6b	. S k
sub_8be2h:
	ld de,0ffa0h		;8be2	11 a0 ff	. . .
	call 06bfdh		;8be5	cd fd 6b	. . k
	ret			;8be8	c9		.
sub_8be9h:
	ld a,(ix+00eh)		;8be9	dd 7e 0e	. ~ .
	or a			;8bec	b7		.
	ld a,0ffh		;8bed	3e ff		> .
	ret m			;8bef	f8		.
	ld a,005h		;8bf0	3e 05		> .
	ret			;8bf2	c9		.
	ld a,(ix+001h)		;8bf3	dd 7e 01	. ~ .
	dec a			;8bf6	3d		=
	jr z,l8c0eh		;8bf7	28 15		( .
	call 06754h		;8bf9	cd 54 67	. T g
	call 04678h		;8bfc	cd 78 46	. x F
	and 003h		;8bff	e6 03		. .
	ld (ix+006h),a		;8c01	dd 77 06	. w .
	call sub_8c1dh		;8c04	cd 1d 8c	. . .
	ld (ix+03eh),00dh	;8c07	dd 36 3e 0d	. 6 > .
	jp 06c1dh		;8c0b	c3 1d 6c	. . l
l8c0eh:
	call 06ad2h		;8c0e	cd d2 6a	. . j
	ret nz			;8c11	c0		.
	ld a,(ix+006h)		;8c12	dd 7e 06	. ~ .
	call sub_9f32h		;8c15	cd 32 9f	. 2 .
	ld b,004h		;8c18	06 04		. .
	call 06ac2h		;8c1a	cd c2 6a	. . j
sub_8c1dh:
	ld a,(0ca19h)		;8c1d	3a 19 ca	: . .
	rrca			;8c20	0f		.
	rrca			;8c21	0f		.
	and 003h		;8c22	e6 03		. .
	ld l,a			;8c24	6f		o
	ld h,000h		;8c25	26 00		& .
	ld de,l8c30h		;8c27	11 30 8c	. 0 .
	add hl,de		;8c2a	19		.
	ld a,(hl)		;8c2b	7e		~
	ld (ix+017h),a		;8c2c	dd 77 17	. w .
	ret			;8c2f	c9		.
l8c30h:
	ld (de),a		;8c30	12		.
	djnz l8c3dh		;8c31	10 0a		. .
	ex af,af'		;8c33	08		.
	ld a,(ix+001h)		;8c34	dd 7e 01	. ~ .
	dec a			;8c37	3d		=
	jr z,l8c61h		;8c38	28 27		( '
	call 06754h		;8c3a	cd 54 67	. T g
l8c3dh:
	ld a,d			;8c3d	7a		z
	rlca			;8c3e	07		.
	jr nc,l8c44h		;8c3f	30 03		0 .
	inc (ix+023h)		;8c41	dd 34 23	. 4 #
l8c44h:
	call 06796h		;8c44	cd 96 67	. . g
	ld (ix+021h),a		;8c47	dd 77 21	. w !
	call sub_8c9bh		;8c4a	cd 9b 8c	. . .
	ld (ix+03eh),00eh	;8c4d	dd 36 3e 0e	. 6 > .
	call sub_8cdfh		;8c51	cd df 8c	. . .
	ld a,(0ca04h)		;8c54	3a 04 ca	: . .
	and a			;8c57	a7		.
	jr z,l8c5eh		;8c58	28 04		( .
	ld (ix+016h),018h	;8c5a	dd 36 16 18	. 6 . .
l8c5eh:
	jp 06c1dh		;8c5e	c3 1d 6c	. . l
l8c61h:
	call sub_8cbah		;8c61	cd ba 8c	. . .
	ld l,(ix+021h)		;8c64	dd 6e 21	. n !
	ld h,000h		;8c67	26 00		& .
	add hl,hl		;8c69	29		)
	add hl,hl		;8c6a	29		)
	ld de,l8d1bh		;8c6b	11 1b 8d	. . .
	add hl,de		;8c6e	19		.
	ld a,(ix+008h)		;8c6f	dd 7e 08	. ~ .
	sub 002h		;8c72	d6 02		. .
	rlca			;8c74	07		.
	jr c,l8c7fh		;8c75	38 08		8 .
	ld a,(ix+00ah)		;8c77	dd 7e 0a	. ~ .
	sub 002h		;8c7a	d6 02		. .
	rlca			;8c7c	07		.
	jr nc,l8c81h		;8c7d	30 02		0 .
l8c7fh:
	inc hl			;8c7f	23		#
	inc hl			;8c80	23		#
l8c81h:
	ld e,(hl)		;8c81	5e		^
	inc hl			;8c82	23		#
	ld d,(hl)		;8c83	56		V
	ld a,(ix+008h)		;8c84	dd 7e 08	. ~ .
	add a,e			;8c87	83		.
	ld e,a			;8c88	5f		_
	ld a,(ix+00ah)		;8c89	dd 7e 0a	. ~ .
	add a,d			;8c8c	82		.
	ld d,a			;8c8d	57		W
	call 0753ch		;8c8e	cd 3c 75	. < u
	ret c			;8c91	d8		.
	ret z			;8c92	c8		.
	ld a,001h		;8c93	3e 01		> .
	xor (ix+021h)		;8c95	dd ae 21	. . !
	ld (ix+021h),a		;8c98	dd 77 21	. w !
sub_8c9bh:
	ld l,(ix+021h)		;8c9b	dd 6e 21	. n !
	ld h,000h		;8c9e	26 00		& .
	add hl,hl		;8ca0	29		)
	add hl,hl		;8ca1	29		)
	ld de,l8cfbh		;8ca2	11 fb 8c	. . .
	add hl,de		;8ca5	19		.
	ld a,(hl)		;8ca6	7e		~
	ld (ix+00bh),a		;8ca7	dd 77 0b	. w .
	inc hl			;8caa	23		#
	ld a,(hl)		;8cab	7e		~
	ld (ix+00ch),a		;8cac	dd 77 0c	. w .
	inc hl			;8caf	23		#
	ld a,(hl)		;8cb0	7e		~
	ld (ix+00dh),a		;8cb1	dd 77 0d	. w .
	inc hl			;8cb4	23		#
	ld a,(hl)		;8cb5	7e		~
	ld (ix+00eh),a		;8cb6	dd 77 0e	. w .
	ret			;8cb9	c9		.
sub_8cbah:
	ld a,(ix+023h)		;8cba	dd 7e 23	. ~ #
	and a			;8cbd	a7		.
	ret nz			;8cbe	c0		.
	call 06ad2h		;8cbf	cd d2 6a	. . j
	ret nz			;8cc2	c0		.
	call 06adfh		;8cc3	cd df 6a	. . j
	ret nz			;8cc6	c0		.
	ld (ix+018h),006h	;8cc7	dd 36 18 06	. 6 . .
	ld d,000h		;8ccb	16 00		. .
	ld bc,002feh		;8ccd	01 fe 02	. . .
	call sub_9f90h		;8cd0	cd 90 9f	. . .
	ld bc,00207h		;8cd3	01 07 02	. . .
	ld d,001h		;8cd6	16 01		. .
	call sub_9f90h		;8cd8	cd 90 9f	. . .
	dec (ix+022h)		;8cdb	dd 35 22	. 5 "
	ret nz			;8cde	c0		.
sub_8cdfh:
	ld a,(0ca19h)		;8cdf	3a 19 ca	: . .
	rrca			;8ce2	0f		.
	and 007h		;8ce3	e6 07		. .
	ld l,a			;8ce5	6f		o
	ld h,000h		;8ce6	26 00		& .
	add hl,hl		;8ce8	29		)
	ld de,l8d0bh		;8ce9	11 0b 8d	. . .
	add hl,de		;8cec	19		.
	ld a,(hl)		;8ced	7e		~
	ld (ix+017h),a		;8cee	dd 77 17	. w .
	inc hl			;8cf1	23		#
	ld a,(hl)		;8cf2	7e		~
	ld (ix+022h),a		;8cf3	dd 77 22	. w "
	ld (ix+018h),001h	;8cf6	dd 36 18 01	. 6 . .
	ret			;8cfa	c9		.
l8cfbh:
	add a,b			;8cfb	80		.
	rst 38h			;8cfc	ff		.
	nop			;8cfd	00		.
	nop			;8cfe	00		.
	add a,b			;8cff	80		.
	nop			;8d00	00		.
	nop			;8d01	00		.
	nop			;8d02	00		.
	nop			;8d03	00		.
	nop			;8d04	00		.
	add a,b			;8d05	80		.
	nop			;8d06	00		.
	nop			;8d07	00		.
	nop			;8d08	00		.
	add a,b			;8d09	80		.
	rst 38h			;8d0a	ff		.
l8d0bh:
	jr c,$+3		;8d0b	38 01		8 .
	jr nc,l8d10h		;8d0d	30 01		0 .
	inc l			;8d0f	2c		,
l8d10h:
	ld (bc),a		;8d10	02		.
	jr z,l8d15h		;8d11	28 02		( .
	jr nc,l8d17h		;8d13	30 02		0 .
l8d15h:
	inc l			;8d15	2c		,
	inc bc			;8d16	03		.
l8d17h:
	jr nc,l8d1ch		;8d17	30 03		0 .
	inc l			;8d19	2c		,
	inc b			;8d1a	04		.
l8d1bh:
	rst 38h			;8d1b	ff		.
l8d1ch:
	nop			;8d1c	00		.
	rst 38h			;8d1d	ff		.
	dec b			;8d1e	05		.
	rlca			;8d1f	07		.
	nop			;8d20	00		.
	rlca			;8d21	07		.
	dec b			;8d22	05		.
	nop			;8d23	00		.
	rlca			;8d24	07		.
	ld b,007h		;8d25	06 07		. .
	nop			;8d27	00		.
	cp 006h			;8d28	fe 06		. .
	cp 0c9h			;8d2a	fe c9		. .
	ld de,l8dbch		;8d2c	11 bc 8d	. . .
	call 07b65h		;8d2f	cd 65 7b	. e {
	ld a,(ix+001h)		;8d32	dd 7e 01	. ~ .
	dec a			;8d35	3d		=
	jr z,l8d55h		;8d36	28 1d		( .
	dec a			;8d38	3d		=
	jr z,l8d76h		;8d39	28 3b		( ;
	call 06754h		;8d3b	cd 54 67	. T g
	call 06796h		;8d3e	cd 96 67	. . g
	ld (ix+020h),a		;8d41	dd 77 20	. w  
	ld de,l8da4h		;8d44	11 a4 8d	. . .
	ld l,a			;8d47	6f		o
	ld h,000h		;8d48	26 00		& .
	add hl,de		;8d4a	19		.
	ld a,(hl)		;8d4b	7e		~
	ld (ix+017h),a		;8d4c	dd 77 17	. w .
	inc (ix+018h)		;8d4f	dd 34 18	. 4 .
	jp 06c1dh		;8d52	c3 1d 6c	. . l
l8d55h:
	call 06ad2h		;8d55	cd d2 6a	. . j
	ret nz			;8d58	c0		.
	ld a,(ix+021h)		;8d59	dd 7e 21	. ~ !
	inc (ix+021h)		;8d5c	dd 34 21	. 4 !
	add a,008h		;8d5f	c6 08		. .
	ld (ix+006h),a		;8d61	dd 77 06	. w .
	cp 00ch			;8d64	fe 0c		. .
	ret nz			;8d66	c0		.
	ld a,022h		;8d67	3e 22		> "
	call 04af0h		;8d69	cd f0 4a	. . J
	xor a			;8d6c	af		.
	ld (ix+006h),a		;8d6d	dd 77 06	. w .
	ld (ix+021h),a		;8d70	dd 77 21	. w !
	jp 06c1dh		;8d73	c3 1d 6c	. . l
l8d76h:
	call 06adfh		;8d76	cd df 6a	. . j
	ret nz			;8d79	c0		.
	ld b,008h		;8d7a	06 08		. .
	call 06ac2h		;8d7c	cd c2 6a	. . j
	jr z,l8d92h		;8d7f	28 11		( .
	cp 004h			;8d81	fe 04		. .
	ret nz			;8d83	c0		.
	ld l,(ix+020h)		;8d84	dd 6e 20	. n  
	ld h,000h		;8d87	26 00		& .
	ld de,08dach		;8d89	11 ac 8d	. . .
	add hl,de		;8d8c	19		.
	ld a,(hl)		;8d8d	7e		~
	ld (ix+018h),a		;8d8e	dd 77 18	. w .
	ret			;8d91	c9		.
l8d92h:
	ld l,(ix+020h)		;8d92	dd 6e 20	. n  
	ld h,000h		;8d95	26 00		& .
	ld de,08db4h		;8d97	11 b4 8d	. . .
	add hl,de		;8d9a	19		.
	ld a,(hl)		;8d9b	7e		~
	ld (ix+017h),a		;8d9c	dd 77 17	. w .
	ld (ix+001h),001h	;8d9f	dd 36 01 01	. 6 . .
	ret			;8da3	c9		.
l8da4h:
	ex af,af'		;8da4	08		.
	jr $+10			;8da5	18 08		. .
	ld bc,00101h		;8da7	01 01 01	. . .
	ld bc,00802h		;8daa	01 02 08	. . .
	ex af,af'		;8dad	08		.
	jr nz,l8dc0h		;8dae	20 10		  .
	ex af,af'		;8db0	08		.
	djnz $+42		;8db1	10 28		. (
	ld bc,02010h		;8db3	01 10 20	. .  
	djnz l8dd8h		;8db6	10 20		.  
	ex af,af'		;8db8	08		.
	ex af,af'		;8db9	08		.
	inc b			;8dba	04		.
	ld (bc),a		;8dbb	02		.
l8dbch:
	sub 08dh		;8dbc	d6 8d		. .
	pop hl			;8dbe	e1		.
	adc a,l			;8dbf	8d		.
l8dc0h:
	pop af			;8dc0	f1		.
	adc a,l			;8dc1	8d		.
	ld bc,0118eh		;8dc2	01 8e 11	. . .
	adc a,(hl)		;8dc5	8e		.
	ld hl,0318eh		;8dc6	21 8e 31	! . 1
	adc a,(hl)		;8dc9	8e		.
	ld b,c			;8dca	41		A
	adc a,(hl)		;8dcb	8e		.
	ld d,c			;8dcc	51		Q
	adc a,(hl)		;8dcd	8e		.
	ld h,c			;8dce	61		a
	adc a,(hl)		;8dcf	8e		.
	ld (hl),c		;8dd0	71		q
	adc a,(hl)		;8dd1	8e		.
	ld h,c			;8dd2	61		a
	adc a,(hl)		;8dd3	8e		.
	ld d,c			;8dd4	51		Q
	adc a,(hl)		;8dd5	8e		.
	dec bc			;8dd6	0b		.
	nop			;8dd7	00		.
l8dd8h:
	nop			;8dd8	00		.
	ld bc,0fe00h		;8dd9	01 00 fe	. . .
	inc c			;8ddc	0c		.
	nop			;8ddd	00		.
	ld bc,0ff01h		;8dde	01 01 ff	. . .
	djnz l8de3h		;8de1	10 00		. .
l8de3h:
	nop			;8de3	00		.
	ld bc,0fe00h		;8de4	01 00 fe	. . .
	inc c			;8de7	0c		.
	nop			;8de8	00		.
	ld bc,0fe01h		;8de9	01 01 fe	. . .
	inc b			;8dec	04		.
	ld bc,00201h		;8ded	01 01 02	. . .
	rst 38h			;8df0	ff		.
	djnz l8df3h		;8df1	10 00		. .
l8df3h:
	nop			;8df3	00		.
	ld bc,0fe00h		;8df4	01 00 fe	. . .
	inc c			;8df7	0c		.
	nop			;8df8	00		.
	ld bc,0fe01h		;8df9	01 01 fe	. . .
	inc b			;8dfc	04		.
	ld bc,00301h		;8dfd	01 01 03	. . .
	rst 38h			;8e00	ff		.
	djnz l8e03h		;8e01	10 00		. .
l8e03h:
	nop			;8e03	00		.
	ld bc,0fe00h		;8e04	01 00 fe	. . .
	inc c			;8e07	0c		.
	nop			;8e08	00		.
	ld bc,0fe01h		;8e09	01 01 fe	. . .
	inc b			;8e0c	04		.
	ld bc,00401h		;8e0d	01 01 04	. . .
	rst 38h			;8e10	ff		.
	djnz l8e13h		;8e11	10 00		. .
l8e13h:
	nop			;8e13	00		.
	ld bc,0fe00h		;8e14	01 00 fe	. . .
	inc c			;8e17	0c		.
	nop			;8e18	00		.
	ld bc,0fe01h		;8e19	01 01 fe	. . .
	inc b			;8e1c	04		.
	ld bc,00501h		;8e1d	01 01 05	. . .
	rst 38h			;8e20	ff		.
	djnz l8e23h		;8e21	10 00		. .
l8e23h:
	nop			;8e23	00		.
	ld bc,0fe00h		;8e24	01 00 fe	. . .
	inc c			;8e27	0c		.
	nop			;8e28	00		.
	ld bc,0fe01h		;8e29	01 01 fe	. . .
	dec b			;8e2c	05		.
	ld bc,00601h		;8e2d	01 01 06	. . .
	rst 38h			;8e30	ff		.
	djnz l8e33h		;8e31	10 00		. .
l8e33h:
	nop			;8e33	00		.
	ld bc,0fe00h		;8e34	01 00 fe	. . .
	inc c			;8e37	0c		.
	nop			;8e38	00		.
	ld bc,0fe01h		;8e39	01 01 fe	. . .
	ld b,001h		;8e3c	06 01		. .
	ld bc,0ff07h		;8e3e	01 07 ff	. . .
	djnz l8e43h		;8e41	10 00		. .
l8e43h:
	nop			;8e43	00		.
	ld bc,0fe00h		;8e44	01 00 fe	. . .
	inc c			;8e47	0c		.
	nop			;8e48	00		.
	ld bc,0fe01h		;8e49	01 01 fe	. . .
	rlca			;8e4c	07		.
	ld bc,00801h		;8e4d	01 01 08	. . .
	rst 38h			;8e50	ff		.
	djnz l8e53h		;8e51	10 00		. .
l8e53h:
	nop			;8e53	00		.
	ld bc,0fe00h		;8e54	01 00 fe	. . .
	inc c			;8e57	0c		.
	nop			;8e58	00		.
	ld bc,0fe01h		;8e59	01 01 fe	. . .
	inc b			;8e5c	04		.
	ld bc,00901h		;8e5d	01 01 09	. . .
	rst 38h			;8e60	ff		.
	djnz l8e63h		;8e61	10 00		. .
l8e63h:
	nop			;8e63	00		.
	ld bc,0fe00h		;8e64	01 00 fe	. . .
	inc c			;8e67	0c		.
	nop			;8e68	00		.
	ld bc,0fe01h		;8e69	01 01 fe	. . .
	inc b			;8e6c	04		.
	ld bc,00a01h		;8e6d	01 01 0a	. . .
	rst 38h			;8e70	ff		.
	djnz l8e73h		;8e71	10 00		. .
l8e73h:
	nop			;8e73	00		.
	ld bc,0fe00h		;8e74	01 00 fe	. . .
	inc c			;8e77	0c		.
	nop			;8e78	00		.
	ld bc,0fe01h		;8e79	01 01 fe	. . .
	inc b			;8e7c	04		.
	ld bc,00b01h		;8e7d	01 01 0b	. . .
	rst 38h			;8e80	ff		.
	ld a,(ix+001h)		;8e81	dd 7e 01	. ~ .
	cp 004h			;8e84	fe 04		. .
	jp nc,04ae0h		;8e86	d2 e0 4a	. . J
	call 0461ah		;8e89	cd 1a 46	. . F
	and e			;8e8c	a3		.
	adc a,(hl)		;8e8d	8e		.
	res 1,(hl)		;8e8e	cb 8e		. .
	ld hl,0388fh		;8e90	21 8f 38	! . 8
	adc a,a			;8e93	8f		.
	call 06c4bh		;8e94	cd 4b 6c	. K l
	call 06754h		;8e97	cd 54 67	. T g
	ld (ix+017h),03ch	;8e9a	dd 36 17 3c	. 6 . <
	ld (ix+008h),00ah	;8e9e	dd 36 08 0a	. 6 . .
	ret			;8ea2	c9		.
	call sub_8ebah		;8ea3	cd ba 8e	. . .
	dec (ix+017h)		;8ea6	dd 35 17	. 5 .
	ret nz			;8ea9	c0		.
	inc (ix+001h)		;8eaa	dd 34 01	. 4 .
	ld (ix+018h),02dh	;8ead	dd 36 18 2d	. 6 . -
	ld (ix+017h),001h	;8eb1	dd 36 17 01	. 6 . .
	ld (ix+002h),0ffh	;8eb5	dd 36 02 ff	. 6 . .
	ret			;8eb9	c9		.
sub_8ebah:
	ld a,(ix+009h)		;8eba	dd 7e 09	. ~ .
	or a			;8ebd	b7		.
	ret nz			;8ebe	c0		.
	ld b,(ix+00ah)		;8ebf	dd 46 0a	. F .
	ld a,01ah		;8ec2	3e 1a		> .
	cp b			;8ec4	b8		.
	ld a,042h		;8ec5	3e 42		> B
	jp z,04af5h		;8ec7	ca f5 4a	. . J
	ret			;8eca	c9		.
	call sub_8ebah		;8ecb	cd ba 8e	. . .
	call sub_8f5fh		;8ece	cd 5f 8f	. _ .
	call sub_8ef5h		;8ed1	cd f5 8e	. . .
	dec (ix+017h)		;8ed4	dd 35 17	. 5 .
	ret nz			;8ed7	c0		.
	call sub_8f42h		;8ed8	cd 42 8f	. B .
	ld a,(ix+018h)		;8edb	dd 7e 18	. ~ .
	sub 004h		;8ede	d6 04		. .
	jr nc,l8ee4h		;8ee0	30 02		0 .
	ld a,02dh		;8ee2	3e 2d		> -
l8ee4h:
	inc a			;8ee4	3c		<
	ld (ix+018h),a		;8ee5	dd 77 18	. w .
	ld d,a			;8ee8	57		W
	ld a,(0ca19h)		;8ee9	3a 19 ca	: . .
	neg			;8eec	ed 44		. D
	add a,01ah		;8eee	c6 1a		. .
	add a,d			;8ef0	82		.
	ld (ix+017h),a		;8ef1	dd 77 17	. w .
	ret			;8ef4	c9		.
sub_8ef5h:
	ld a,(ix+002h)		;8ef5	dd 7e 02	. ~ .
	ld b,(ix+004h)		;8ef8	dd 46 04	. F .
	sub b			;8efb	90		.
	ld (ix+002h),a		;8efc	dd 77 02	. w .
	ld (ix+004h),000h	;8eff	dd 36 04 00	. 6 . .
	push af			;8f03	f5		.
	ld a,b			;8f04	78		x
	or a			;8f05	b7		.
	ld a,025h		;8f06	3e 25		> %
	call nz,04af0h		;8f08	c4 f0 4a	. . J
	pop af			;8f0b	f1		.
	ret nc			;8f0c	d0		.
	ld (ix+015h),06fh	;8f0d	dd 36 15 6f	. 6 . o
	inc (ix+001h)		;8f11	dd 34 01	. 4 .
	ld (ix+017h),028h	;8f14	dd 36 17 28	. 6 . (
	call 07058h		;8f18	cd 58 70	. X p
	ld a,001h		;8f1b	3e 01		> .
	ld (0ce76h),a		;8f1d	32 76 ce	2 v .
	ret			;8f20	c9		.
	call sub_8f5fh		;8f21	cd 5f 8f	. _ .
	dec (ix+017h)		;8f24	dd 35 17	. 5 .
	ret nz			;8f27	c0		.
	ld a,052h		;8f28	3e 52		> R
	call 04aebh		;8f2a	cd eb 4a	. . J
	call 04d2bh		;8f2d	cd 2b 4d	. + M
	ld (ix+017h),014h	;8f30	dd 36 17 14	. 6 . .
	inc (ix+001h)		;8f34	dd 34 01	. 4 .
	ret			;8f37	c9		.
	dec (ix+017h)		;8f38	dd 35 17	. 5 .
	ret nz			;8f3b	c0		.
	ld a,001h		;8f3c	3e 01		> .
	ld (0ca0fh),a		;8f3e	32 0f ca	2 . .
	ret			;8f41	c9		.
sub_8f42h:
	push ix			;8f42	dd e5		. .
	push ix			;8f44	dd e5		. .
	ld a,023h		;8f46	3e 23		> #
	call 069a3h		;8f48	cd a3 69	. . i
	pop iy			;8f4b	fd e1		. .
	jp c,l8f5ch		;8f4d	da 5c 8f	. \ .
	ld a,(iy+008h)		;8f50	fd 7e 08	. ~ .
	ld (ix+008h),a		;8f53	dd 77 08	. w .
	ld a,(iy+00ah)		;8f56	fd 7e 0a	. ~ .
	ld (ix+00ah),a		;8f59	dd 77 0a	. w .
l8f5ch:
	pop ix			;8f5c	dd e1		. .
	ret			;8f5e	c9		.
sub_8f5fh:
	ld a,(ix+021h)		;8f5f	dd 7e 21	. ~ !
	inc a			;8f62	3c		<
	and 00fh		;8f63	e6 0f		. .
	ld (ix+021h),a		;8f65	dd 77 21	. w !
	ld de,l8f74h		;8f68	11 74 8f	. t .
	call 04624h		;8f6b	cd 24 46	. $ F
	ex de,hl		;8f6e	eb		.
	ld a,00bh		;8f6f	3e 0b		> .
	jp 04776h		;8f71	c3 76 47	. v G
l8f74h:
	ld d,(hl)		;8f74	56		V
	rlca			;8f75	07		.
	ld d,(hl)		;8f76	56		V
	rlca			;8f77	07		.
	ld b,l			;8f78	45		E
	rlca			;8f79	07		.
	inc (hl)		;8f7a	34		4
	rlca			;8f7b	07		.
	inc hl			;8f7c	23		#
	rlca			;8f7d	07		.
	ld (de),a		;8f7e	12		.
	ld b,001h		;8f7f	06 01		. .
	dec b			;8f81	05		.
	nop			;8f82	00		.
	inc b			;8f83	04		.
	nop			;8f84	00		.
	inc bc			;8f85	03		.
	nop			;8f86	00		.
	inc b			;8f87	04		.
	ld bc,01205h		;8f88	01 05 12	. . .
	ld b,023h		;8f8b	06 23		. #
	rlca			;8f8d	07		.
	inc (hl)		;8f8e	34		4
	rlca			;8f8f	07		.
	ld b,l			;8f90	45		E
	rlca			;8f91	07		.
	ld d,(hl)		;8f92	56		V
	rlca			;8f93	07		.
	ld a,(ix+001h)		;8f94	dd 7e 01	. ~ .
	cp 004h			;8f97	fe 04		. .
	jp nc,04ae0h		;8f99	d2 e0 4a	. . J
	call 0461ah		;8f9c	cd 1a 46	. . F
	and a			;8f9f	a7		.
	adc a,a			;8fa0	8f		.
	cp b			;8fa1	b8		.
	adc a,a			;8fa2	8f		.
	call 0008fh		;8fa3	cd 8f 00	. . .
	sub b			;8fa6	90		.
	call 06796h		;8fa7	cd 96 67	. . g
	push af			;8faa	f5		.
	call 06796h		;8fab	cd 96 67	. . g
	pop bc			;8fae	c1		.
	ld d,a			;8faf	57		W
	ld e,b			;8fb0	58		X
	call sub_9001h		;8fb1	cd 01 90	. . .
	inc (ix+001h)		;8fb4	dd 34 01	. 4 .
	ret			;8fb7	c9		.
	dec (ix+017h)		;8fb8	dd 35 17	. 5 .
	ret nz			;8fbb	c0		.
	inc (ix+001h)		;8fbc	dd 34 01	. 4 .
	ld (ix+017h),00fh	;8fbf	dd 36 17 0f	. 6 . .
	ld a,(ix+008h)		;8fc3	dd 7e 08	. ~ .
	cp 00ch			;8fc6	fe 0c		. .
	ret c			;8fc8	d8		.
	inc (ix+021h)		;8fc9	dd 34 21	. 4 !
	ret			;8fcc	c9		.
	dec (ix+017h)		;8fcd	dd 35 17	. 5 .
	call z,07143h		;8fd0	cc 43 71	. C q
	bit 0,(ix+021h)		;8fd3	dd cb 21 46	. . ! F
	ld hl,00080h		;8fd7	21 80 00	! . .
	call nz,04612h		;8fda	c4 12 46	. . F
	ld de,00000h		;8fdd	11 00 00	. . .
	call 06d4fh		;8fe0	cd 4f 6d	. O m
	ld a,(0ca48h)		;8fe3	3a 48 ca	: H .
	sub (ix+008h)		;8fe6	dd 96 08	. . .
	bit 0,(ix+021h)		;8fe9	dd cb 21 46	. . ! F
	call z,sub_8ffeh	;8fed	cc fe 8f	. . .
	ret c			;8ff0	d8		.
	inc (ix+001h)		;8ff1	dd 34 01	. 4 .
	ld iy,0ca40h		;8ff4	fd 21 40 ca	. ! @ .
	ld a,014h		;8ff8	3e 14		> .
	call 06b6ch		;8ffa	cd 6c 6b	. l k
	ret			;8ffd	c9		.
sub_8ffeh:
	ccf			;8ffe	3f		?
	ret			;8fff	c9		.
	ret			;9000	c9		.
sub_9001h:
	ld (ix+017h),01ah	;9001	dd 36 17 1a	. 6 . .
	ld a,d			;9005	7a		z
	sub (ix+00ah)		;9006	dd 96 0a	. . .
	ld l,a			;9009	6f		o
	rlca			;900a	07		.
	sbc a,a			;900b	9f		.
	ld h,a			;900c	67		g
	ld b,h			;900d	44		D
	ld c,l			;900e	4d		M
	add hl,hl		;900f	29		)
	add hl,hl		;9010	29		)
	add hl,hl		;9011	29		)
	ex de,hl		;9012	eb		.
	ld a,l			;9013	7d		}
	sub (ix+008h)		;9014	dd 96 08	. . .
	ld l,a			;9017	6f		o
	rlca			;9018	07		.
	sbc a,a			;9019	9f		.
	ld h,a			;901a	67		g
	ld b,h			;901b	44		D
	ld c,l			;901c	4d		M
	add hl,hl		;901d	29		)
	add hl,bc		;901e	09		.
	add hl,hl		;901f	29		)
	add hl,hl		;9020	29		)
	jp 06bebh		;9021	c3 eb 6b	. . k
l9024h:
	call 09d1eh		;9024	cd 1e 9d	. . .
	ld (iy+000h),045h	;9027	fd 36 00 45	. 6 . E
	ld (iy+013h),004h	;902b	fd 36 13 04	. 6 . .
	ld (iy+014h),084h	;902f	fd 36 14 84	. 6 . .
	ld (iy+016h),000h	;9033	fd 36 16 00	. 6 . .
	ld (iy+015h),0b9h	;9037	fd 36 15 b9	. 6 . .
	ret			;903b	c9		.
	jp 09d60h		;903c	c3 60 9d	. ` .
	ld a,030h		;903f	3e 30		> 0
	call 04af5h		;9041	cd f5 4a	. . J
	call 06754h		;9044	cd 54 67	. T g
	ld (ix+00ah),01fh	;9047	dd 36 0a 1f	. 6 . .
	ld de,00000h		;904b	11 00 00	. . .
	call sub_915dh		;904e	cd 5d 91	. ] .
	jp 06e98h		;9051	c3 98 6e	. . n
	ld a,(ix+001h)		;9054	dd 7e 01	. ~ .
	dec a			;9057	3d		=
	jr z,l9083h		;9058	28 29		( )
	dec a			;905a	3d		=
	jr z,l90a6h		;905b	28 49		( I
	jp p,l90bfh		;905d	f2 bf 90	. . .
	ld a,(0c0d4h)		;9060	3a d4 c0	: . .
	or a			;9063	b7		.
	jr nz,l906ah		;9064	20 04		  .
	dec (ix+017h)		;9066	dd 35 17	. 5 .
	ret nz			;9069	c0		.
l906ah:
	ld (ix+017h),004h	;906a	dd 36 17 04	. 6 . .
	ld (ix+012h),001h	;906e	dd 36 12 01	. 6 . .
	inc (ix+001h)		;9072	dd 34 01	. 4 .
	ld a,(ix+003h)		;9075	dd 7e 03	. ~ .
	or a			;9078	b7		.
	ld a,020h		;9079	3e 20		>  
	jr z,l907fh		;907b	28 02		( .
	ld a,008h		;907d	3e 08		> .
l907fh:
	ld (ix+002h),a		;907f	dd 77 02	. w .
	ret			;9082	c9		.
l9083h:
	call sub_909eh		;9083	cd 9e 90	. . .
	call 06c29h		;9086	cd 29 6c	. ) l
	dec (ix+017h)		;9089	dd 35 17	. 5 .
	ret nz			;908c	c0		.
	inc (ix+001h)		;908d	dd 34 01	. 4 .
	ld a,(ix+003h)		;9090	dd 7e 03	. ~ .
	or a			;9093	b7		.
	ld a,031h		;9094	3e 31		> 1
	jp z,04af5h		;9096	ca f5 4a	. . J
	ld a,02ch		;9099	3e 2c		> ,
	jp 04af5h		;909b	c3 f5 4a	. . J
sub_909eh:
	bit 0,(ix+017h)		;909e	dd cb 17 46	. . . F
	ret nz			;90a2	c0		.
	jp l90cfh		;90a3	c3 cf 90	. . .
l90a6h:
	call 06c29h		;90a6	cd 29 6c	. ) l
	ld a,(ix+012h)		;90a9	dd 7e 12	. ~ .
	add a,004h		;90ac	c6 04		. .
	ld (ix+012h),a		;90ae	dd 77 12	. w .
	call l90cfh		;90b1	cd cf 90	. . .
	ld a,(ix+012h)		;90b4	dd 7e 12	. ~ .
	cp (ix+002h)		;90b7	dd be 02	. . .
	ret c			;90ba	d8		.
	inc (ix+001h)		;90bb	dd 34 01	. 4 .
	ret			;90be	c9		.
l90bfh:
	call 06c29h		;90bf	cd 29 6c	. ) l
	ld a,(ix+00ah)		;90c2	dd 7e 0a	. ~ .
	sub 004h		;90c5	d6 04		. .
	cp 020h			;90c7	fe 20		.  
	jp nc,06each		;90c9	d2 ac 6e	. . n
	ld (ix+00ah),a		;90cc	dd 77 0a	. w .
l90cfh:
	ld a,(ix+003h)		;90cf	dd 7e 03	. ~ .
	or a			;90d2	b7		.
	jr nz,l90d9h		;90d3	20 04		  .
	ld (0ce73h),ix		;90d5	dd 22 73 ce	. " s .
l90d9h:
	ld a,(ix+012h)		;90d9	dd 7e 12	. ~ .
	ld b,(ix+00ah)		;90dc	dd 46 0a	. F .
	cp b			;90df	b8		.
	jr c,l90e3h		;90e0	38 01		8 .
	ld a,b			;90e2	78		x
l90e3h:
	inc a			;90e3	3c		<
	ld (ix+011h),a		;90e4	dd 77 11	. w .
	ld d,(ix+00ah)		;90e7	dd 56 0a	. V .
	ld e,(ix+008h)		;90ea	dd 5e 08	. ^ .
	call 07b06h		;90ed	cd 06 7b	. . {
	ret nc			;90f0	d0		.
	ex de,hl		;90f1	eb		.
	ld b,(ix+011h)		;90f2	dd 46 11	. F .
	ld a,b			;90f5	78		x
	or a			;90f6	b7		.
	ret z			;90f7	c8		.
	ld a,(ix+003h)		;90f8	dd 7e 03	. ~ .
	or a			;90fb	b7		.
	jr nz,l913ah		;90fc	20 3c		  <
	ld a,(hl)		;90fe	7e		~
	exx			;90ff	d9		.
	ld h,0deh		;9100	26 de		& .
	ld l,a			;9102	6f		o
	ld a,(hl)		;9103	7e		~
	exx			;9104	d9		.
	cp 003h			;9105	fe 03		. .
	jp z,06each		;9107	ca ac 6e	. . n
	ld c,001h		;910a	0e 01		. .
	call sub_911eh		;910c	cd 1e 91	. . .
l910fh:
	ld a,(hl)		;910f	7e		~
	exx			;9110	d9		.
	ld h,0deh		;9111	26 de		& .
	ld l,a			;9113	6f		o
	ld a,(hl)		;9114	7e		~
	exx			;9115	d9		.
	cp 003h			;9116	fe 03		. .
	ret z			;9118	c8		.
	ld (hl),d		;9119	72		r
	dec hl			;911a	2b		+
	djnz l910fh		;911b	10 f2		. .
	ret			;911d	c9		.
sub_911eh:
	ld a,(0c0d4h)		;911e	3a d4 c0	: . .
	or a			;9121	b7		.
	ld d,0cbh		;9122	16 cb		. .
	ret z			;9124	c8		.
	ld a,(ix+00fh)		;9125	dd 7e 0f	. ~ .
	ld d,0cch		;9128	16 cc		. .
	cp 007h			;912a	fe 07		. .
	ret z			;912c	c8		.
	cp 000h			;912d	fe 00		. .
	ret z			;912f	c8		.
	inc d			;9130	14		.
	cp 006h			;9131	fe 06		. .
	ret z			;9133	c8		.
	cp 001h			;9134	fe 01		. .
	ret z			;9136	c8		.
	ld d,0cbh		;9137	16 cb		. .
	ret			;9139	c9		.
l913ah:
	ld a,(ix+018h)		;913a	dd 7e 18	. ~ .
	inc a			;913d	3c		<
	ld (ix+018h),a		;913e	dd 77 18	. w .
	rrca			;9141	0f		.
	ld de,0cccdh		;9142	11 cd cc	. . .
	jr c,l914ah		;9145	38 03		8 .
	ld de,0cdcch		;9147	11 cc cd	. . .
l914ah:
	ld a,(hl)		;914a	7e		~
	cp 003h			;914b	fe 03		. .
	ret z			;914d	c8		.
	ld (hl),d		;914e	72		r
	dec hl			;914f	2b		+
	dec b			;9150	05		.
	ret z			;9151	c8		.
	ld (hl),e		;9152	73		s
	dec hl			;9153	2b		+
	djnz l914ah		;9154	10 f4		. .
	ret			;9156	c9		.
	ld a,001h		;9157	3e 01		> .
	ld b,001h		;9159	06 01		. .
	jr l9161h		;915b	18 04		. .
sub_915dh:
	xor a			;915d	af		.
	ld h,a			;915e	67		g
	ld b,008h		;915f	06 08		. .
l9161h:
	push af			;9161	f5		.
	push hl			;9162	e5		.
	push bc			;9163	c5		.
	push ix			;9164	dd e5		. .
	push ix			;9166	dd e5		. .
	push de			;9168	d5		.
	push af			;9169	f5		.
	push hl			;916a	e5		.
	ld a,046h		;916b	3e 46		> F
	call 070dah		;916d	cd da 70	. . p
	pop hl			;9170	e1		.
	pop bc			;9171	c1		.
	pop de			;9172	d1		.
	pop iy			;9173	fd e1		. .
	jp c,l91a2h		;9175	da a2 91	. . .
	ld (ix+00fh),h		;9178	dd 74 0f	. t .
	ld (ix+003h),b		;917b	dd 70 03	. p .
	ld b,(iy+008h)		;917e	fd 46 08	. F .
	ld c,(iy+007h)		;9181	fd 4e 07	. N .
	ld l,000h		;9184	2e 00		. .
	ld h,e			;9186	63		c
	add hl,bc		;9187	09		.
	ld (ix+008h),h		;9188	dd 74 08	. t .
	ld (ix+007h),l		;918b	dd 75 07	. u .
	ld b,(iy+00ah)		;918e	fd 46 0a	. F .
	ld c,(iy+009h)		;9191	fd 4e 09	. N .
	ld h,d			;9194	62		b
	ld l,000h		;9195	2e 00		. .
	add hl,bc		;9197	09		.
	ld (ix+00ah),h		;9198	dd 74 0a	. t .
	ld (ix+009h),l		;919b	dd 75 09	. u .
	ld (ix+017h),014h	;919e	dd 36 17 14	. 6 . .
l91a2h:
	pop ix			;91a2	dd e1		. .
	pop bc			;91a4	c1		.
	pop hl			;91a5	e1		.
	pop af			;91a6	f1		.
	inc e			;91a7	1c		.
	inc h			;91a8	24		$
	djnz l9161h		;91a9	10 b6		. .
	ret			;91ab	c9		.
	ld a,(ix+008h)		;91ac	dd 7e 08	. ~ .
	sub 0f0h		;91af	d6 f0		. .
	cp 008h			;91b1	fe 08		. .
	jp c,06e98h		;91b3	da 98 6e	. . n
	ld a,(ix+001h)		;91b6	dd 7e 01	. ~ .
	cp 004h			;91b9	fe 04		. .
	jp nc,04ae0h		;91bb	d2 e0 4a	. . J
	call 0461ah		;91be	cd 1a 46	. . F
	ld e,l			;91c1	5d		]
	sub d			;91c2	92		.
	ld e,l			;91c3	5d		]
	sub d			;91c4	92		.
	ld d,e			;91c5	53		S
	sub d			;91c6	92		.
	ld hl,0dd92h		;91c7	21 92 dd	! . .
	ld a,(hl)		;91ca	7e		~
	dec d			;91cb	15		.
	and 004h		;91cc	e6 04		. .
	or 022h			;91ce	f6 22		. "
	ld (ix+015h),a		;91d0	dd 77 15	. w .
	call 06754h		;91d3	cd 54 67	. T g
	ld a,(ix+008h)		;91d6	dd 7e 08	. ~ .
	add a,003h		;91d9	c6 03		. .
	ld (ix+008h),a		;91db	dd 77 08	. w .
	call 06796h		;91de	cd 96 67	. . g
	ld (ix+006h),a		;91e1	dd 77 06	. w .
	res 7,(ix+006h)		;91e4	dd cb 06 be	. . . .
	and 007h		;91e8	e6 07		. .
	call sub_9226h		;91ea	cd 26 92	. & .
	ld a,c			;91ed	79		y
	and 007h		;91ee	e6 07		. .
	add a,a			;91f0	87		.
	add a,a			;91f1	87		.
	add a,a			;91f2	87		.
	add a,a			;91f3	87		.
	add a,a			;91f4	87		.
	ld (ix+026h),a		;91f5	dd 77 26	. w &
	rl c			;91f8	cb 11		. .
	sbc a,a			;91fa	9f		.
	add a,a			;91fb	87		.
	inc a			;91fc	3c		<
	add a,a			;91fd	87		.
	ld (ix+012h),a		;91fe	dd 77 12	. w .
	ld b,006h		;9201	06 06		. .
	ld (ix+017h),000h	;9203	dd 36 17 00	. 6 . .
l9207h:
	call sub_922dh		;9207	cd 2d 92	. - .
	jr c,l9219h		;920a	38 0d		8 .
	ld (ix+017h),001h	;920c	dd 36 17 01	. 6 . .
	ld (ix+018h),000h	;9210	dd 36 18 00	. 6 . .
	ld (ix+001h),002h	;9214	dd 36 01 02	. 6 . .
	ret			;9218	c9		.
l9219h:
	ld (ix+024h),b		;9219	dd 70 24	. p $
	ld (ix+001h),003h	;921c	dd 36 01 03	. 6 . .
	ret			;9220	c9		.
	ld b,(ix+024h)		;9221	dd 46 24	. F $
	jr l9207h		;9224	18 e1		. .
sub_9226h:
	ld c,085h		;9226	0e 85		. .
	dec a			;9228	3d		=
	ret z			;9229	c8		.
	ld c,001h		;922a	0e 01		. .
	ret			;922c	c9		.
sub_922dh:
	push bc			;922d	c5		.
	call sub_923ah		;922e	cd 3a 92	. : .
	jr c,l9238h		;9231	38 05		8 .
	pop bc			;9233	c1		.
	djnz sub_922dh		;9234	10 f7		. .
	or a			;9236	b7		.
	ret			;9237	c9		.
l9238h:
	pop bc			;9238	c1		.
	ret			;9239	c9		.
sub_923ah:
	call 0682ah		;923a	cd 2a 68	. * h
	ret c			;923d	d8		.
	ld h,(ix+008h)		;923e	dd 66 08	. f .
	ld (iy+008h),h		;9241	fd 74 08	. t .
	ld (iy+00ah),01ch	;9244	fd 36 0a 1c	. 6 . .
	ld a,(ix+003h)		;9248	dd 7e 03	. ~ .
	ld (iy+003h),a		;924b	fd 77 03	. w .
	inc a			;924e	3c		<
	ld (ix+003h),a		;924f	dd 77 03	. w .
	ret			;9252	c9		.
	ld a,(ix+017h)		;9253	dd 7e 17	. ~ .
	add a,(ix+012h)		;9256	dd 86 12	. . .
	ld (ix+017h),a		;9259	dd 77 17	. w .
	ret			;925c	c9		.
	call 068deh		;925d	cd de 68	. . h
	jp c,06e98h		;9260	da 98 6e	. . n
	ld a,(ix+003h)		;9263	dd 7e 03	. ~ .
	ld c,a			;9266	4f		O
	add a,a			;9267	87		.
	ld hl,l92d8h		;9268	21 d8 92	! . .
	ld e,a			;926b	5f		_
	ld d,000h		;926c	16 00		. .
	add hl,de		;926e	19		.
	ld a,(iy+017h)		;926f	fd 7e 17	. ~ .
	add a,(hl)		;9272	86		.
	ld c,a			;9273	4f		O
	sub (iy+026h)		;9274	fd 96 26	. . &
	add a,040h		;9277	c6 40		. @
	cp 080h			;9279	fe 80		. .
	ld a,c			;927b	79		y
	jr c,l9280h		;927c	38 02		8 .
	sub 080h		;927e	d6 80		. .
l9280h:
	inc hl			;9280	23		#
	ld e,(hl)		;9281	5e		^
	push de			;9282	d5		.
	push af			;9283	f5		.
	push de			;9284	d5		.
	call 074efh		;9285	cd ef 74	. . t
	pop de			;9288	d1		.
	call sub_92b9h		;9289	cd b9 92	. . .
	ld e,(iy+007h)		;928c	fd 5e 07	. ^ .
	ld d,(iy+008h)		;928f	fd 56 08	. V .
	add hl,de		;9292	19		.
	ld (ix+007h),l		;9293	dd 75 07	. u .
	ld (ix+008h),h		;9296	dd 74 08	. t .
	pop af			;9299	f1		.
	call 074edh		;929a	cd ed 74	. . t
	pop de			;929d	d1		.
	call sub_92b9h		;929e	cd b9 92	. . .
	ld e,(iy+009h)		;92a1	fd 5e 09	. ^ .
	ld d,(iy+00ah)		;92a4	fd 56 0a	. V .
	add hl,de		;92a7	19		.
	ld (ix+009h),l		;92a8	dd 75 09	. u .
	ld (ix+00ah),h		;92ab	dd 74 0a	. t .
	ld a,(ix+008h)		;92ae	dd 7e 08	. ~ .
	cp 018h			;92b1	fe 18		. .
	ret c			;92b3	d8		.
	ld (ix+008h),01dh	;92b4	dd 36 08 1d	. 6 . .
	ret			;92b8	c9		.
sub_92b9h:
	bit 7,h			;92b9	cb 7c		. |
	jr nz,l92ceh		;92bb	20 11		  .
	ld h,l			;92bd	65		e
sub_92beh:
	call 072b0h		;92be	cd b0 72	. . r
	srl h			;92c1	cb 3c		. <
	rr l			;92c3	cb 1d		. .
	srl h			;92c5	cb 3c		. <
	rr l			;92c7	cb 1d		. .
	srl h			;92c9	cb 3c		. <
	rr l			;92cb	cb 1d		. .
	ret			;92cd	c9		.
l92ceh:
	ld a,l			;92ce	7d		}
	neg			;92cf	ed 44		. D
	ld h,a			;92d1	67		g
	call sub_92beh		;92d2	cd be 92	. . .
	jp 04612h		;92d5	c3 12 46	. . F
l92d8h:
	nop			;92d8	00		.
	jr z,l92dbh		;92d9	28 00		( .
l92dbh:
	jr c,l92ddh		;92db	38 00		8 .
l92ddh:
	ld c,b			;92dd	48		H
	ld b,b			;92de	40		@
	jr z,l9321h		;92df	28 40		( @
	jr c,$+66		;92e1	38 40		8 @
	ld c,b			;92e3	48		H
	ld a,(0ca02h)		;92e4	3a 02 ca	: . .
	and 001h		;92e7	e6 01		. .
	ld (ix+005h),a		;92e9	dd 77 05	. w .
	ld a,(ix+001h)		;92ec	dd 7e 01	. ~ .
	dec a			;92ef	3d		=
	jr z,l9324h		;92f0	28 32		( 2
	dec a			;92f2	3d		=
	jr z,l934eh		;92f3	28 59		( Y
	call 06796h		;92f5	cd 96 67	. . g
	ld b,a			;92f8	47		G
	and 07fh		;92f9	e6 7f		. .
	ld (ix+008h),a		;92fb	dd 77 08	. w .
	ld a,b			;92fe	78		x
	rlca			;92ff	07		.
	ld hl,00040h		;9300	21 40 00	! @ .
	jr nc,l930bh		;9303	30 06		0 .
	inc (ix+021h)		;9305	dd 34 21	. 4 !
	ld hl,0ffc0h		;9308	21 c0 ff	! . .
l930bh:
	call 06bf3h		;930b	cd f3 6b	. . k
	call 06796h		;930e	cd 96 67	. . g
	ld (ix+00ah),a		;9311	dd 77 0a	. w .
	ld a,040h		;9314	3e 40		> @
	call 06adbh		;9316	cd db 6a	. . j
	ld (ix+017h),001h	;9319	dd 36 17 01	. 6 . .
	ld (ix+03dh),001h	;931d	dd 36 3d 01	. 6 = .
l9321h:
	jp 06c1dh		;9321	c3 1d 6c	. . l
l9324h:
	ld a,(ix+021h)		;9324	dd 7e 21	. ~ !
	ld de,00100h		;9327	11 00 01	. . .
	and a			;932a	a7		.
	jr nz,l9330h		;932b	20 03		  .
	ld de,00102h		;932d	11 02 01	. . .
l9330h:
	call sub_936eh		;9330	cd 6e 93	. n .
	ret z			;9333	c8		.
	ld l,(ix+00bh)		;9334	dd 6e 0b	. n .
	ld h,(ix+00ch)		;9337	dd 66 0c	. f .
	ld (ix+022h),l		;933a	dd 75 22	. u "
	ld (ix+023h),h		;933d	dd 74 23	. t #
	call 06be6h		;9340	cd e6 6b	. . k
	call 04678h		;9343	cd 78 46	. x F
	and 00fh		;9346	e6 0f		. .
	ld (ix+017h),a		;9348	dd 77 17	. w .
	jp 06c1dh		;934b	c3 1d 6c	. . l
l934eh:
	call 06ad2h		;934e	cd d2 6a	. . j
	ret nz			;9351	c0		.
	ld l,(ix+022h)		;9352	dd 6e 22	. n "
	ld h,(ix+023h)		;9355	dd 66 23	. f #
	ld (ix+00bh),l		;9358	dd 75 0b	. u .
	ld (ix+00ch),h		;935b	dd 74 0c	. t .
	call 06b43h		;935e	cd 43 6b	. C k
	ld a,001h		;9361	3e 01		> .
	xor (ix+021h)		;9363	dd ae 21	. . !
	ld (ix+021h),a		;9366	dd 77 21	. w !
	ld (ix+001h),001h	;9369	dd 36 01 01	. 6 . .
	ret			;936d	c9		.
sub_936eh:
	ld a,e			;936e	7b		{
	add a,(ix+008h)		;936f	dd 86 08	. . .
	ld e,a			;9372	5f		_
	ld a,d			;9373	7a		z
	add a,(ix+00ah)		;9374	dd 86 0a	. . .
	ld d,a			;9377	57		W
	jp 0753ch		;9378	c3 3c 75	. < u
	ld a,(0ca02h)		;937b	3a 02 ca	: . .
	xor (ix+02dh)		;937e	dd ae 2d	. . -
	and 003h		;9381	e6 03		. .
	jr z,l9387h		;9383	28 02		( .
	ld a,0ffh		;9385	3e ff		> .
l9387h:
	inc a			;9387	3c		<
	ld (ix+03dh),a		;9388	dd 77 3d	. w =
	call 06c26h		;938b	cd 26 6c	. & l
	ld a,(ix+001h)		;938e	dd 7e 01	. ~ .
	call 0461ah		;9391	cd 1a 46	. . F
	sbc a,d			;9394	9a		.
	sub e			;9395	93		.
	and h			;9396	a4		.
	sub e			;9397	93		.
	cp (hl)			;9398	be		.
	sub e			;9399	93		.
	call 06754h		;939a	cd 54 67	. T g
	inc (ix+001h)		;939d	dd 34 01	. 4 .
	ld (ix+017h),014h	;93a0	dd 36 17 14	. 6 . .
	dec (ix+017h)		;93a4	dd 35 17	. 5 .
	ret nz			;93a7	c0		.
	inc (ix+001h)		;93a8	dd 34 01	. 4 .
	ld hl,00070h		;93ab	21 70 00	! p .
	call 06bf3h		;93ae	cd f3 6b	. . k
	ld hl,00011h		;93b1	21 11 00	! . .
	ld de,00016h		;93b4	11 16 00	. . .
	call 06c04h		;93b7	cd 04 6c	. . l
	call sub_93f9h		;93ba	cd f9 93	. . .
	ret			;93bd	c9		.
	ld a,(0ca04h)		;93be	3a 04 ca	: . .
	or a			;93c1	b7		.
	jr z,l93dbh		;93c2	28 17		( .
	ld a,(0ca02h)		;93c4	3a 02 ca	: . .
	xor (ix+02dh)		;93c7	dd ae 2d	. . -
	inc (ix+00ah)		;93ca	dd 34 0a	. 4 .
	inc (ix+008h)		;93cd	dd 34 08	. 4 .
	and 0cfh		;93d0	e6 cf		. .
	call z,07143h		;93d2	cc 43 71	. C q
	dec (ix+00ah)		;93d5	dd 35 0a	. 5 .
	dec (ix+008h)		;93d8	dd 35 08	. 5 .
l93dbh:
	ld a,(ix+005h)		;93db	dd 7e 05	. ~ .
	xor 001h		;93de	ee 01		. .
	ld (ix+005h),a		;93e0	dd 77 05	. w .
	ld hl,00100h		;93e3	21 00 01	! . .
	ld de,00100h		;93e6	11 00 01	. . .
	call 0759ah		;93e9	cd 9a 75	. . u
	call sub_93feh		;93ec	cd fe 93	. . .
	ld hl,000a0h		;93ef	21 a0 00	! . .
	ld de,000c0h		;93f2	11 c0 00	. . .
	call 06caeh		;93f5	cd ae 6c	. . l
	ret			;93f8	c9		.
sub_93f9h:
	ld (ix+02ah),0ffh	;93f9	dd 36 2a ff	. 6 * .
	ret			;93fd	c9		.
sub_93feh:
	push af			;93fe	f5		.
	call sub_943eh		;93ff	cd 3e 94	. > .
	pop af			;9402	f1		.
	jr nc,l9420h		;9403	30 1b		0 .
	jr nz,l9420h		;9405	20 19		  .
	ld a,(ix+00ah)		;9407	dd 7e 0a	. ~ .
	ld (ix+028h),a		;940a	dd 77 28	. w (
	ld a,(ix+009h)		;940d	dd 7e 09	. ~ .
	ld (ix+029h),a		;9410	dd 77 29	. w )
	ld a,(ix+008h)		;9413	dd 7e 08	. ~ .
	ld (ix+02ah),a		;9416	dd 77 2a	. w *
	ld a,(ix+007h)		;9419	dd 7e 07	. ~ .
	ld (ix+02bh),a		;941c	dd 77 2b	. w +
	ret			;941f	c9		.
l9420h:
	ld a,(ix+02ah)		;9420	dd 7e 2a	. ~ *
	inc a			;9423	3c		<
	ret z			;9424	c8		.
	ld a,(ix+028h)		;9425	dd 7e 28	. ~ (
	ld (ix+00ah),a		;9428	dd 77 0a	. w .
	ld a,(ix+029h)		;942b	dd 7e 29	. ~ )
	ld (ix+009h),a		;942e	dd 77 09	. w .
	ld a,(ix+02ah)		;9431	dd 7e 2a	. ~ *
	ld (ix+008h),a		;9434	dd 77 08	. w .
	ld a,(ix+02bh)		;9437	dd 7e 2b	. ~ +
	ld (ix+007h),a		;943a	dd 77 07	. w .
	ret			;943d	c9		.
sub_943eh:
	ld de,(0ca14h)		;943e	ed 5b 14 ca	. [ . .
	ld h,(ix+028h)		;9442	dd 66 28	. f (
	ld l,(ix+029h)		;9445	dd 6e 29	. n )
	add hl,de		;9448	19		.
	ld (ix+028h),h		;9449	dd 74 28	. t (
	ld (ix+029h),l		;944c	dd 75 29	. u )
	ld de,(0ca12h)		;944f	ed 5b 12 ca	. [ . .
	ld h,(ix+02ah)		;9453	dd 66 2a	. f *
	ld l,(ix+02bh)		;9456	dd 6e 2b	. n +
	add hl,de		;9459	19		.
	ld (ix+02ah),h		;945a	dd 74 2a	. t *
	ld (ix+02bh),l		;945d	dd 75 2b	. u +
	ret			;9460	c9		.
	call 06796h		;9461	cd 96 67	. . g
	ld d,a			;9464	57		W
	and 07fh		;9465	e6 7f		. .
	ld (ix+008h),a		;9467	dd 77 08	. w .
	call 06796h		;946a	cd 96 67	. . g
	ld (ix+00ah),a		;946d	dd 77 0a	. w .
	jp l82d3h		;9470	c3 d3 82	. . .
	jp l82cah		;9473	c3 ca 82	. . .
	ret			;9476	c9		.
l9477h:
	ld a,(ix+001h)		;9477	dd 7e 01	. ~ .
	dec a			;947a	3d		=
	jr z,l94bch		;947b	28 3f		( ?
	dec a			;947d	3d		=
	jr z,l94edh		;947e	28 6d		( m
sub_9480h:
	call 04678h		;9480	cd 78 46	. x F
	ld b,a			;9483	47		G
	and 007h		;9484	e6 07		. .
	ld l,a			;9486	6f		o
	ld h,000h		;9487	26 00		& .
	add hl,hl		;9489	29		)
	ld de,l94ach		;948a	11 ac 94	. . .
	add hl,de		;948d	19		.
	ld a,(hl)		;948e	7e		~
	ld (ix+008h),a		;948f	dd 77 08	. w .
	inc hl			;9492	23		#
	ld a,b			;9493	78		x
	rrca			;9494	0f		.
	ld a,(hl)		;9495	7e		~
	jr c,l9499h		;9496	38 01		8 .
	inc a			;9498	3c		<
l9499h:
	ld (ix+00ah),a		;9499	dd 77 0a	. w .
	ld a,b			;949c	78		x
	rrca			;949d	0f		.
	rrca			;949e	0f		.
	rrca			;949f	0f		.
	and 003h		;94a0	e6 03		. .
	inc a			;94a2	3c		<
	ld (ix+020h),a		;94a3	dd 77 20	. w  
	ld (ix+017h),a		;94a6	dd 77 17	. w .
	jp 06c1dh		;94a9	c3 1d 6c	. . l
l94ach:
	inc b			;94ac	04		.
	ld bc,00502h		;94ad	01 02 05	. . .
	ld (bc),a		;94b0	02		.
	ex af,af'		;94b1	08		.
	ld (bc),a		;94b2	02		.
	dec bc			;94b3	0b		.
	inc b			;94b4	04		.
	rrca			;94b5	0f		.
	ex af,af'		;94b6	08		.
	dec d			;94b7	15		.
	inc b			;94b8	04		.
	dec c			;94b9	0d		.
	ld b,011h		;94ba	06 11		. .
l94bch:
	call 06ad2h		;94bc	cd d2 6a	. . j
	ret nz			;94bf	c0		.
	ld a,(ix+020h)		;94c0	dd 7e 20	. ~  
	ld (ix+017h),a		;94c3	dd 77 17	. w .
	ld b,006h		;94c6	06 06		. .
	call 06ab8h		;94c8	cd b8 6a	. . j
	ret nz			;94cb	c0		.
	ld (ix+005h),006h	;94cc	dd 36 05 06	. 6 . .
	ld hl,00040h		;94d0	21 40 00	! @ .
	call 06bf3h		;94d3	cd f3 6b	. . k
	ld hl,00010h		;94d6	21 10 00	! . .
	call 06c0ch		;94d9	cd 0c 6c	. . l
	ld hl,0ce51h		;94dc	21 51 ce	! Q .
	dec (hl)		;94df	35		5
	set 7,(ix+014h)		;94e0	dd cb 14 fe	. . . .
	inc (ix+008h)		;94e4	dd 34 08	. 4 .
	inc (ix+008h)		;94e7	dd 34 08	. 4 .
	jp 06c1dh		;94ea	c3 1d 6c	. . l
l94edh:
	call 06a9ah		;94ed	cd 9a 6a	. . j
	ld a,(ix+005h)		;94f0	dd 7e 05	. ~ .
	cp 007h			;94f3	fe 07		. .
	ret z			;94f5	c8		.
	inc (ix+005h)		;94f6	dd 34 05	. 4 .
	ret			;94f9	c9		.
	call 06754h		;94fa	cd 54 67	. T g
	ld a,(0ca10h)		;94fd	3a 10 ca	: . .
	cp 005h			;9500	fe 05		. .
	jr z,l9507h		;9502	28 03		( .
	inc (ix+005h)		;9504	dd 34 05	. 4 .
l9507h:
	ret			;9507	c9		.
	ld a,(ix+001h)		;9508	dd 7e 01	. ~ .
	or a			;950b	b7		.
	jr nz,l9517h		;950c	20 09		  .
	inc (ix+001h)		;950e	dd 34 01	. 4 .
	call 06ce9h		;9511	cd e9 6c	. . l
	jp 06cf5h		;9514	c3 f5 6c	. . l
l9517h:
	call sub_953ch		;9517	cd 3c 95	. < .
	ld a,(ix+008h)		;951a	dd 7e 08	. ~ .
	cp 018h			;951d	fe 18		. .
	jp nc,06e98h		;951f	d2 98 6e	. . n
	ld a,(ix+00ah)		;9522	dd 7e 0a	. ~ .
	cp 024h			;9525	fe 24		. $
	jp nc,06e98h		;9527	d2 98 6e	. . n
	ld a,(ix+004h)		;952a	dd 7e 04	. ~ .
	or a			;952d	b7		.
	ld a,023h		;952e	3e 23		> #
	call nz,04af5h		;9530	c4 f5 4a	. . J
	call 07cach		;9533	cd ac 7c	. . |
	jp nc,07747h		;9536	d2 47 77	. G w
	jp 07cc3h		;9539	c3 c3 7c	. . |
sub_953ch:
	ld a,(ix+003h)		;953c	dd 7e 03	. ~ .
	and 003h		;953f	e6 03		. .
	ld (ix+003h),a		;9541	dd 77 03	. w .
	call 06d2ch		;9544	cd 2c 6d	. , m
	ld h,(ix+028h)		;9547	dd 66 28	. f (
	ld l,(ix+029h)		;954a	dd 6e 29	. n )
	ld d,(ix+00ah)		;954d	dd 56 0a	. V .
	ld e,(ix+009h)		;9550	dd 5e 09	. ^ .
	ld a,(0ca02h)		;9553	3a 02 ca	: . .
	and 007h		;9556	e6 07		. .
	jr nz,l955eh		;9558	20 04		  .
	ld bc,00040h		;955a	01 40 00	. @ .
	add hl,bc		;955d	09		.
l955eh:
	call sub_95a4h		;955e	cd a4 95	. . .
	ld (ix+012h),h		;9561	dd 74 12	. t .
	ld (ix+011h),l		;9564	dd 75 11	. u .
	bit 7,h			;9567	cb 7c		. |
	call nz,04612h		;9569	c4 12 46	. . F
	ld bc,00060h		;956c	01 60 00	. ` .
	or a			;956f	b7		.
	sbc hl,bc		;9570	ed 42		. B
	jr c,l9578h		;9572	38 04		8 .
	set 2,(ix+003h)		;9574	dd cb 03 d6	. . . .
l9578h:
	ld h,(ix+02ah)		;9578	dd 66 2a	. f *
	ld l,(ix+02bh)		;957b	dd 6e 2b	. n +
	ld d,(ix+008h)		;957e	dd 56 08	. V .
	ld e,(ix+007h)		;9581	dd 5e 07	. ^ .
	call sub_95a4h		;9584	cd a4 95	. . .
	ld (ix+010h),h		;9587	dd 74 10	. t .
	ld (ix+00fh),l		;958a	dd 75 0f	. u .
	bit 7,h			;958d	cb 7c		. |
	call nz,04612h		;958f	c4 12 46	. . F
	ld bc,00060h		;9592	01 60 00	. ` .
	or a			;9595	b7		.
	sbc hl,bc		;9596	ed 42		. B
	jr c,l959eh		;9598	38 04		8 .
	set 3,(ix+003h)		;959a	dd cb 03 de	. . . .
l959eh:
	call sub_95bch		;959e	cd bc 95	. . .
	jp 06a9ah		;95a1	c3 9a 6a	. . j
sub_95a4h:
	or a			;95a4	b7		.
	sbc hl,de		;95a5	ed 52		. R
	sra h			;95a7	cb 2c		. ,
	rr l			;95a9	cb 1d		. .
	sra h			;95ab	cb 2c		. ,
	rr l			;95ad	cb 1d		. .
	sra h			;95af	cb 2c		. ,
	rr l			;95b1	cb 1d		. .
	sra h			;95b3	cb 2c		. ,
	rr l			;95b5	cb 1d		. .
	sra h			;95b7	cb 2c		. ,
	rr l			;95b9	cb 1d		. .
	ret			;95bb	c9		.
sub_95bch:
	ld h,(ix+00eh)		;95bc	dd 66 0e	. f .
	ld l,(ix+00dh)		;95bf	dd 6e 0d	. n .
	sra h			;95c2	cb 2c		. ,
	rr l			;95c4	cb 1d		. .
	ld (ix+00eh),h		;95c6	dd 74 0e	. t .
	ld (ix+00dh),l		;95c9	dd 75 0d	. u .
	ld h,(ix+00ch)		;95cc	dd 66 0c	. f .
	ld l,(ix+00bh)		;95cf	dd 6e 0b	. n .
	sra h			;95d2	cb 2c		. ,
	rr l			;95d4	cb 1d		. .
	ld (ix+00ch),h		;95d6	dd 74 0c	. t .
	ld (ix+00bh),l		;95d9	dd 75 0b	. u .
	ret			;95dc	c9		.
	ld a,(iy+000h)		;95dd	fd 7e 00	. ~ .
	cp 004h			;95e0	fe 04		. .
	jr z,l9609h		;95e2	28 25		( %
	cp 007h			;95e4	fe 07		. .
	jr z,l9609h		;95e6	28 21		( !
	cp 006h			;95e8	fe 06		. .
	jr z,l95efh		;95ea	28 03		( .
	cp 005h			;95ec	fe 05		. .
	ret nz			;95ee	c0		.
l95efh:
	ld a,(iy+012h)		;95ef	fd 7e 12	. ~ .
	cp 004h			;95f2	fe 04		. .
	ret nc			;95f4	d0		.
	add a,a			;95f5	87		.
	add a,a			;95f6	87		.
	ld e,a			;95f7	5f		_
	ld d,000h		;95f8	16 00		. .
	ld hl,l9637h		;95fa	21 37 96	! 7 .
	add hl,de		;95fd	19		.
	ld e,(hl)		;95fe	5e		^
	inc hl			;95ff	23		#
	ld d,(hl)		;9600	56		V
	inc hl			;9601	23		#
	ld c,(hl)		;9602	4e		N
	inc hl			;9603	23		#
	ld b,(hl)		;9604	46		F
	call sub_961dh		;9605	cd 1d 96	. . .
	ret			;9608	c9		.
l9609h:
	ld d,(iy+00eh)		;9609	fd 56 0e	. V .
	ld e,(iy+00dh)		;960c	fd 5e 0d	. ^ .
	sra d			;960f	cb 2a		. *
	rr e			;9611	cb 1b		. .
	ld b,(iy+00ch)		;9613	fd 46 0c	. F .
	ld c,(iy+00bh)		;9616	fd 4e 0b	. N .
	sra b			;9619	cb 28		. (
	rr c			;961b	cb 19		. .
sub_961dh:
	ld a,(ix+003h)		;961d	dd 7e 03	. ~ .
	and 005h		;9620	e6 05		. .
	jr nz,l962ah		;9622	20 06		  .
	ld (ix+00ch),b		;9624	dd 70 0c	. p .
	ld (ix+00bh),c		;9627	dd 71 0b	. q .
l962ah:
	ld a,(ix+003h)		;962a	dd 7e 03	. ~ .
	and 00ah		;962d	e6 0a		. .
	ret nz			;962f	c0		.
	ld (ix+00eh),d		;9630	dd 72 0e	. r .
	ld (ix+00dh),e		;9633	dd 73 0d	. s .
	ret			;9636	c9		.
l9637h:
	ld b,b			;9637	40		@
	nop			;9638	00		.
	nop			;9639	00		.
	nop			;963a	00		.
	nop			;963b	00		.
	nop			;963c	00		.
	ld b,b			;963d	40		@
	nop			;963e	00		.
	ret nz			;963f	c0		.
	rst 38h			;9640	ff		.
	nop			;9641	00		.
	nop			;9642	00		.
	nop			;9643	00		.
	nop			;9644	00		.
	ret nz			;9645	c0		.
	rst 38h			;9646	ff		.
	call sub_9480h		;9647	cd 80 94	. . .
	call 06796h		;964a	cd 96 67	. . g
	ld (ix+00ah),a		;964d	dd 77 0a	. w .
	ld (ix+008h),002h	;9650	dd 36 08 02	. 6 . .
	ret			;9654	c9		.
	jp l9477h		;9655	c3 77 94	. w .
	call sub_8341h		;9658	cd 41 83	. A .
	ld a,(ix+017h)		;965b	dd 7e 17	. ~ .
	and a			;965e	a7		.
	jr z,l9666h		;965f	28 05		( .
	dec a			;9661	3d		=
	ld (ix+017h),a		;9662	dd 77 17	. w .
	ret			;9665	c9		.
l9666h:
	ld a,(ix+020h)		;9666	dd 7e 20	. ~  
	and a			;9669	a7		.
	ld bc,00000h		;966a	01 00 00	. . .
	ld hl,l9698h		;966d	21 98 96	! . .
	jr z,l9678h		;9670	28 06		( .
	ld bc,00200h		;9672	01 00 02	. . .
	ld hl,l969ch		;9675	21 9c 96	! . .
l9678h:
	call 07300h		;9678	cd 00 73	. . s
l967bh:
	ld l,(ix+023h)		;967b	dd 6e 23	. n #
	ld h,000h		;967e	26 00		& .
	ld de,l9691h		;9680	11 91 96	. . .
	add hl,de		;9683	19		.
	ld a,(hl)		;9684	7e		~
	and a			;9685	a7		.
	jr nz,l968ch		;9686	20 04		  .
	ex de,hl		;9688	eb		.
	ld (ix+023h),a		;9689	dd 77 23	. w #
l968ch:
	ld a,(hl)		;968c	7e		~
	ld (ix+017h),a		;968d	dd 77 17	. w .
	ret			;9690	c9		.
l9691h:
	jr l969bh		;9691	18 08		. .
	jr z,l969dh		;9693	28 08		( .
	jr l96cfh		;9695	18 38		. 8
	nop			;9697	00		.
l9698h:
	ld bc,00302h		;9698	01 02 03	. . .
l969bh:
	rst 38h			;969b	ff		.
l969ch:
	dec c			;969c	0d		.
l969dh:
	ld c,00fh		;969d	0e 0f		. .
	rst 38h			;969f	ff		.
	call sub_8347h		;96a0	cd 47 83	. G .
	inc (ix+03dh)		;96a3	dd 34 3d	. 4 =
	ld (ix+03eh),000h	;96a6	dd 36 3e 00	. 6 > .
	jr l967bh		;96aa	18 cf		. .
	call 06e91h		;96ac	cd 91 6e	. . n
	ld de,l97c5h		;96af	11 c5 97	. . .
	call 07b65h		;96b2	cd 65 7b	. e {
	ld a,(ix+001h)		;96b5	dd 7e 01	. ~ .
	dec a			;96b8	3d		=
	jr z,l96d8h		;96b9	28 1d		( .
	dec a			;96bb	3d		=
	jr z,l96ffh		;96bc	28 41		( A
	dec a			;96be	3d		=
	jr z,l9711h		;96bf	28 50		( P
	ld a,(0ca19h)		;96c1	3a 19 ca	: . .
	cp 005h			;96c4	fe 05		. .
	jr c,l96cch		;96c6	38 04		8 .
	ld (ix+016h),040h	;96c8	dd 36 16 40	. 6 . @
l96cch:
	call 06754h		;96cc	cd 54 67	. T g
l96cfh:
	call sub_976bh		;96cf	cd 6b 97	. k .
	call sub_972dh		;96d2	cd 2d 97	. - .
	jp 06c1dh		;96d5	c3 1d 6c	. . l
l96d8h:
	call sub_971bh		;96d8	cd 1b 97	. . .
	ld a,(ix+006h)		;96db	dd 7e 06	. ~ .
	dec a			;96de	3d		=
	jr nz,l96eah		;96df	20 09		  .
	set 7,(ix+014h)		;96e1	dd cb 14 fe	. . . .
	call 07c63h		;96e5	cd 63 7c	. c |
	jr c,l96f0h		;96e8	38 06		8 .
l96eah:
	res 7,(ix+014h)		;96ea	dd cb 14 be	. . . .
	jr l9760h		;96ee	18 70		. p
l96f0h:
	call 07cbeh		;96f0	cd be 7c	. . |
	ld a,001h		;96f3	3e 01		> .
	ld (0ce76h),a		;96f5	32 76 ce	2 v .
	ld (ix+006h),003h	;96f8	dd 36 06 03	. 6 . .
	jp 06c1dh		;96fc	c3 1d 6c	. . l
l96ffh:
	ld b,008h		;96ff	06 08		. .
	call 06ac2h		;9701	cd c2 6a	. . j
	cp 007h			;9704	fe 07		. .
	ret nz			;9706	c0		.
	call 07058h		;9707	cd 58 70	. X p
	ld (ix+017h),020h	;970a	dd 36 17 20	. 6 .  
	jp 06c1dh		;970e	c3 1d 6c	. . l
l9711h:
	call 06ad2h		;9711	cd d2 6a	. . j
	ret nz			;9714	c0		.
	ld a,001h		;9715	3e 01		> .
	ld (0ca0fh),a		;9717	32 0f ca	2 . .
	ret			;971a	c9		.
sub_971bh:
	call 06ad2h		;971b	cd d2 6a	. . j
	ret nz			;971e	c0		.
	ld a,(0ca02h)		;971f	3a 02 ca	: . .
	and 003h		;9722	e6 03		. .
	ret nz			;9724	c0		.
	dec (ix+026h)		;9725	dd 35 26	. 5 &
	jr z,sub_972dh		;9728	28 03		( .
	jp 0b6c9h		;972a	c3 c9 b6	. . .
sub_972dh:
	ld l,(ix+027h)		;972d	dd 6e 27	. n '
	inc (ix+027h)		;9730	dd 34 27	. 4 '
	ld h,000h		;9733	26 00		& .
	add hl,hl		;9735	29		)
	ld de,l9755h		;9736	11 55 97	. U .
	add hl,de		;9739	19		.
	ld a,(hl)		;973a	7e		~
	inc a			;973b	3c		<
	jr nz,l9742h		;973c	20 04		  .
	ld (ix+027h),a		;973e	dd 77 27	. w '
	ex de,hl		;9741	eb		.
l9742h:
	ld a,(hl)		;9742	7e		~
	ld b,a			;9743	47		G
	and 07fh		;9744	e6 7f		. .
	ld (ix+026h),a		;9746	dd 77 26	. w &
	ld a,b			;9749	78		x
	and 080h		;974a	e6 80		. .
	ld (ix+025h),a		;974c	dd 77 25	. w %
	inc hl			;974f	23		#
	ld a,(hl)		;9750	7e		~
	ld (ix+017h),a		;9751	dd 77 17	. w .
	ret			;9754	c9		.
l9755h:
	ld b,038h		;9755	06 38		. 8
	add a,a			;9757	87		.
	ld c,h			;9758	4c		L
	ex af,af'		;9759	08		.
	ld c,(hl)		;975a	4e		N
	add a,l			;975b	85		.
	inc a			;975c	3c		<
	add a,l			;975d	85		.
	jr z,$+1		;975e	28 ff		( .
l9760h:
	ld a,(ix+020h)		;9760	dd 7e 20	. ~  
	and a			;9763	a7		.
	call z,sub_976bh	;9764	cc 6b 97	. k .
	dec (ix+020h)		;9767	dd 35 20	. 5  
	ret			;976a	c9		.
sub_976bh:
	ld l,(ix+021h)		;976b	dd 6e 21	. n !
	ld h,000h		;976e	26 00		& .
	add hl,hl		;9770	29		)
	ld a,(0ca19h)		;9771	3a 19 ca	: . .
	ld de,l979bh		;9774	11 9b 97	. . .
	cp 004h			;9777	fe 04		. .
	jr c,l977eh		;9779	38 03		8 .
	ld de,l97b0h		;977b	11 b0 97	. . .
l977eh:
	add hl,de		;977e	19		.
	ld a,(hl)		;977f	7e		~
	and a			;9780	a7		.
	jr nz,l9787h		;9781	20 04		  .
	ld (ix+021h),a		;9783	dd 77 21	. w !
	ex de,hl		;9786	eb		.
l9787h:
	inc (ix+021h)		;9787	dd 34 21	. 4 !
	ld a,(hl)		;978a	7e		~
	ld (ix+020h),a		;978b	dd 77 20	. w  
	inc hl			;978e	23		#
	ld a,(hl)		;978f	7e		~
	ld (ix+006h),a		;9790	dd 77 06	. w .
	dec a			;9793	3d		=
	ret nz			;9794	c0		.
	call 07ca7h		;9795	cd a7 7c	. . |
	jp l9c60h		;9798	c3 60 9c	. ` .
l979bh:
	jr nz,l979fh		;979b	20 02		  .
	inc b			;979d	04		.
	nop			;979e	00		.
l979fh:
	jr z,l97a2h		;979f	28 01		( .
	inc b			;97a1	04		.
l97a2h:
	nop			;97a2	00		.
	jr nc,l97a7h		;97a3	30 02		0 .
	ex af,af'		;97a5	08		.
	nop			;97a6	00		.
l97a7h:
	jr l97abh		;97a7	18 02		. .
	inc b			;97a9	04		.
	nop			;97aa	00		.
l97abh:
	ld (00401h),hl		;97ab	22 01 04	" . .
	nop			;97ae	00		.
	nop			;97af	00		.
l97b0h:
	jr nz,l97b4h		;97b0	20 02		  .
	inc b			;97b2	04		.
	nop			;97b3	00		.
l97b4h:
	ex af,af'		;97b4	08		.
	ld bc,00004h		;97b5	01 04 00	. . .
	jr nc,l97bch		;97b8	30 02		0 .
	ex af,af'		;97ba	08		.
	nop			;97bb	00		.
l97bch:
	jr l97c0h		;97bc	18 02		. .
	inc b			;97be	04		.
	nop			;97bf	00		.
l97c0h:
	jr nz,l97c3h		;97c0	20 01		  .
	inc b			;97c2	04		.
l97c3h:
	nop			;97c3	00		.
	nop			;97c4	00		.
l97c5h:
	push de			;97c5	d5		.
	sub a			;97c6	97		.
	in a,(097h)		;97c7	db 97		. .
	pop hl			;97c9	e1		.
	sub a			;97ca	97		.
	rst 20h			;97cb	e7		.
	sub a			;97cc	97		.
	defb 0edh ;next byte illegal after ed	;97cd	ed		.
	sub a			;97ce	97		.
	di			;97cf	f3		.
	sub a			;97d0	97		.
	ld sp,hl		;97d1	f9		.
	sub a			;97d2	97		.
	rst 38h			;97d3	ff		.
	sub a			;97d4	97		.
	ld b,000h		;97d5	06 00		. .
	nop			;97d7	00		.
	ld bc,0ff00h		;97d8	01 00 ff	. . .
	ld b,000h		;97db	06 00		. .
	nop			;97dd	00		.
	ld bc,0ff01h		;97de	01 01 ff	. . .
	ld b,000h		;97e1	06 00		. .
	nop			;97e3	00		.
	ld bc,0ff02h		;97e4	01 02 ff	. . .
	ld b,000h		;97e7	06 00		. .
	nop			;97e9	00		.
	ld bc,0ff04h		;97ea	01 04 ff	. . .
	ld b,000h		;97ed	06 00		. .
	nop			;97ef	00		.
	ld bc,0ff05h		;97f0	01 05 ff	. . .
	ld b,000h		;97f3	06 00		. .
	nop			;97f5	00		.
	ld bc,0ff06h		;97f6	01 06 ff	. . .
	ld b,000h		;97f9	06 00		. .
	nop			;97fb	00		.
	ld bc,0ff07h		;97fc	01 07 ff	. . .
	ld b,0fdh		;97ff	06 fd		. .
	ld (bc),a		;9801	02		.
	ld bc,0ff03h		;9802	01 03 ff	. . .
	ld a,(ix+001h)		;9805	dd 7e 01	. ~ .
	dec a			;9808	3d		=
	jr z,l9820h		;9809	28 15		( .
	call 06754h		;980b	cd 54 67	. T g
	ld a,d			;980e	7a		z
	rlca			;980f	07		.
	ld a,00ah		;9810	3e 0a		> .
	jr nc,l981ah		;9812	30 06		0 .
	ld (ix+006h),00ah	;9814	dd 36 06 0a	. 6 . .
	ld a,008h		;9818	3e 08		> .
l981ah:
	call 06adbh		;981a	cd db 6a	. . j
	jp 06c1dh		;981d	c3 1d 6c	. . l
l9820h:
	ld a,(ix+00ah)		;9820	dd 7e 0a	. ~ .
	cp 015h			;9823	fe 15		. .
	ret nc			;9825	d0		.
	ld a,(0ca02h)		;9826	3a 02 ca	: . .
	and 003h		;9829	e6 03		. .
	ret nz			;982b	c0		.
	call 06ad2h		;982c	cd d2 6a	. . j
	ret z			;982f	c8		.
	inc (ix+006h)		;9830	dd 34 06	. 4 .
	ld a,(ix+006h)		;9833	dd 7e 06	. ~ .
	dec a			;9836	3d		=
	ret nz			;9837	c0		.
	ld a,032h		;9838	3e 32		> 2
	jp 04af0h		;983a	c3 f0 4a	. . J
	ld a,(ix+001h)		;983d	dd 7e 01	. ~ .
	call 0461ah		;9840	cd 1a 46	. . F
	ld c,e			;9843	4b		K
	sbc a,b			;9844	98		.
	ld h,h			;9845	64		d
	sbc a,b			;9846	98		.
	res 3,b			;9847	cb 98		. .
	dec bc			;9849	0b		.
	sbc a,c			;984a	99		.
	call 06796h		;984b	cd 96 67	. . g
	ld (ix+008h),a		;984e	dd 77 08	. w .
	call 06796h		;9851	cd 96 67	. . g
	ld (ix+00ah),a		;9854	dd 77 0a	. w .
	call 06796h		;9857	cd 96 67	. . g
	ld (ix+020h),a		;985a	dd 77 20	. w  
	call 06796h		;985d	cd 96 67	. . g
	ld (ix+001h),a		;9860	dd 77 01	. w .
	ret			;9863	c9		.
	ld a,(ix+002h)		;9864	dd 7e 02	. ~ .
	dec a			;9867	3d		=
	jr z,l988bh		;9868	28 21		( !
	dec a			;986a	3d		=
	jr z,l98a0h		;986b	28 33		( 3
	dec a			;986d	3d		=
	jr z,l98c3h		;986e	28 53		( S
	call 06796h		;9870	cd 96 67	. . g
	ld (ix+021h),a		;9873	dd 77 21	. w !
	call 06796h		;9876	cd 96 67	. . g
	ld (ix+022h),a		;9879	dd 77 22	. w "
	call 06796h		;987c	cd 96 67	. . g
	ld (ix+023h),a		;987f	dd 77 23	. w #
	call sub_9915h		;9882	cd 15 99	. . .
	call sub_992bh		;9885	cd 2b 99	. + .
	jp l990ch		;9888	c3 0c 99	. . .
l988bh:
	ld a,(0ca34h)		;988b	3a 34 ca	: 4 .
	cp (ix+023h)		;988e	dd be 23	. . #
	jp nc,l989bh		;9891	d2 9b 98	. . .
	call 06ad2h		;9894	cd d2 6a	. . j
	ret nz			;9897	c0		.
	jp l990ch		;9898	c3 0c 99	. . .
l989bh:
	ld (ix+002h),003h	;989b	dd 36 02 03	. 6 . .
	ret			;989f	c9		.
l98a0h:
	call 06adfh		;98a0	cd df 6a	. . j
	ret nz			;98a3	c0		.
	call sub_9924h		;98a4	cd 24 99	. $ .
	call 06814h		;98a7	cd 14 68	. . h
	ret c			;98aa	d8		.
	call 06926h		;98ab	cd 26 69	. & i
	call sub_9936h		;98ae	cd 36 99	. 6 .
	ld a,007h		;98b1	3e 07		> .
	call 0699fh		;98b3	cd 9f 69	. . i
	dec (ix+024h)		;98b6	dd 35 24	. 5 $
	ret nz			;98b9	c0		.
	call sub_991eh		;98ba	cd 1e 99	. . .
	call sub_992bh		;98bd	cd 2b 99	. + .
	jp l9910h		;98c0	c3 10 99	. . .
l98c3h:
	ld a,(ix+037h)		;98c3	dd 7e 37	. ~ 7
	and a			;98c6	a7		.
	ret nz			;98c7	c0		.
	jp 06e98h		;98c8	c3 98 6e	. . n
	ld a,(ix+002h)		;98cb	dd 7e 02	. ~ .
	dec a			;98ce	3d		=
	jr z,l98ech		;98cf	28 1b		( .
	dec a			;98d1	3d		=
	jr z,l98c3h		;98d2	28 ef		( .
	call 06796h		;98d4	cd 96 67	. . g
	ld d,a			;98d7	57		W
	and 07fh		;98d8	e6 7f		. .
	ld (ix+021h),a		;98da	dd 77 21	. w !
	ld a,d			;98dd	7a		z
	rlca			;98de	07		.
	jr nc,l98e4h		;98df	30 03		0 .
	inc (ix+03dh)		;98e1	dd 34 3d	. 4 =
l98e4h:
	call sub_9915h		;98e4	cd 15 99	. . .
	call sub_992bh		;98e7	cd 2b 99	. + .
	jr l990ch		;98ea	18 20		.  
l98ech:
	call 06ad2h		;98ec	cd d2 6a	. . j
	ret nz			;98ef	c0		.
	ld a,(ix+021h)		;98f0	dd 7e 21	. ~ !
	ld (ix+017h),a		;98f3	dd 77 17	. w .
	call 06814h		;98f6	cd 14 68	. . h
	ret c			;98f9	d8		.
	call 06926h		;98fa	cd 26 69	. & i
	call sub_9936h		;98fd	cd 36 99	. 6 .
	ld a,005h		;9900	3e 05		> .
	call 0699fh		;9902	cd 9f 69	. . i
	dec (ix+024h)		;9905	dd 35 24	. 5 $
	ret nz			;9908	c0		.
	jr l990ch		;9909	18 01		. .
	ret			;990b	c9		.
l990ch:
	inc (ix+002h)		;990c	dd 34 02	. 4 .
	ret			;990f	c9		.
l9910h:
	ld (ix+002h),001h	;9910	dd 36 02 01	. 6 . .
	ret			;9914	c9		.
sub_9915h:
	ld (ix+017h),001h	;9915	dd 36 17 01	. 6 . .
	ld (ix+018h),001h	;9919	dd 36 18 01	. 6 . .
	ret			;991d	c9		.
sub_991eh:
	ld a,(ix+021h)		;991e	dd 7e 21	. ~ !
	ld (ix+017h),a		;9921	dd 77 17	. w .
sub_9924h:
	ld a,(ix+022h)		;9924	dd 7e 22	. ~ "
	ld (ix+018h),a		;9927	dd 77 18	. w .
	ret			;992a	c9		.
sub_992bh:
	ld a,(ix+020h)		;992b	dd 7e 20	. ~  
	ld (ix+024h),a		;992e	dd 77 24	. w $
	ld (ix+025h),000h	;9931	dd 36 25 00	. 6 % .
	ret			;9935	c9		.
sub_9936h:
	inc (ix+025h)		;9936	dd 34 25	. 4 %
	ld a,(ix+025h)		;9939	dd 7e 25	. ~ %
	ld (iy+038h),a		;993c	fd 77 38	. w 8
	ret			;993f	c9		.
	call 06c3ah		;9940	cd 3a 6c	. : l
	ld a,(ix+001h)		;9943	dd 7e 01	. ~ .
	dec a			;9946	3d		=
	jr z,l9956h		;9947	28 0d		( .
	dec a			;9949	3d		=
	jr z,l9970h		;994a	28 24		( $
	call 06754h		;994c	cd 54 67	. T g
	ld (ix+008h),0fch	;994f	dd 36 08 fc	. 6 . .
	jp 06c1dh		;9953	c3 1d 6c	. . l
l9956h:
	call sub_9990h		;9956	cd 90 99	. . .
	jr c,l9968h		;9959	38 0d		8 .
	ld (iy+008h),001h	;995b	fd 36 08 01	. 6 . .
	call sub_9990h		;995f	cd 90 99	. . .
	jr c,l9968h		;9962	38 04		8 .
	ld (iy+008h),010h	;9964	fd 36 08 10	. 6 . .
l9968h:
	ld a,040h		;9968	3e 40		> @
	call 06ae8h		;996a	cd e8 6a	. . j
	jp 06c1dh		;996d	c3 1d 6c	. . l
l9970h:
	ld a,(ix+020h)		;9970	dd 7e 20	. ~  
	and a			;9973	a7		.
	call z,sub_9984h	;9974	cc 84 99	. . .
	call 06adfh		;9977	cd df 6a	. . j
	ret nz			;997a	c0		.
	call sub_9990h		;997b	cd 90 99	. . .
	ret c			;997e	d8		.
	ld a,040h		;997f	3e 40		> @
	jp 06ae8h		;9981	c3 e8 6a	. . j
sub_9984h:
	ld a,(0ca18h)		;9984	3a 18 ca	: . .
	dec a			;9987	3d		=
	ret z			;9988	c8		.
	inc (ix+020h)		;9989	dd 34 20	. 4  
	dec (ix+00ah)		;998c	dd 35 0a	. 5 .
	ret			;998f	c9		.
sub_9990h:
	call 06814h		;9990	cd 14 68	. . h
	ret c			;9993	d8		.
	call 06926h		;9994	cd 26 69	. & i
	jp 0699eh		;9997	c3 9e 69	. . i
	ld a,(ix+001h)		;999a	dd 7e 01	. ~ .
	dec a			;999d	3d		=
	jr z,l99e0h		;999e	28 40		( @
	dec a			;99a0	3d		=
	jr z,l99edh		;99a1	28 4a		( J
	call 06754h		;99a3	cd 54 67	. T g
	ld a,d			;99a6	7a		z
	rlca			;99a7	07		.
	ld c,015h		;99a8	0e 15		. .
	jr nc,l99b1h		;99aa	30 05		0 .
	inc (ix+020h)		;99ac	dd 34 20	. 4  
	ld c,001h		;99af	0e 01		. .
l99b1h:
	ld (ix+008h),c		;99b1	dd 71 08	. q .
	ld (ix+00ah),020h	;99b4	dd 36 0a 20	. 6 .  
	call 06796h		;99b8	cd 96 67	. . g
	ld d,a			;99bb	57		W
	and 00fh		;99bc	e6 0f		. .
	ld (ix+022h),a		;99be	dd 77 22	. w "
	ld a,d			;99c1	7a		z
	rrca			;99c2	0f		.
	rrca			;99c3	0f		.
	rrca			;99c4	0f		.
	rrca			;99c5	0f		.
	and 003h		;99c6	e6 03		. .
	ld l,a			;99c8	6f		o
	ld h,000h		;99c9	26 00		& .
	ld de,l99dch		;99cb	11 dc 99	. . .
	add hl,de		;99ce	19		.
	ld a,(hl)		;99cf	7e		~
	ld (ix+024h),a		;99d0	dd 77 24	. w $
	call 06796h		;99d3	cd 96 67	. . g
	ld (ix+021h),a		;99d6	dd 77 21	. w !
	jp 06c1dh		;99d9	c3 1d 6c	. . l
l99dch:
	dec e			;99dc	1d		.
	dec d			;99dd	15		.
	dec c			;99de	0d		.
	dec b			;99df	05		.
l99e0h:
	ld a,(ix+00ah)		;99e0	dd 7e 0a	. ~ .
	cp (ix+024h)		;99e3	dd be 24	. . $
	ret nz			;99e6	c0		.
	inc (ix+017h)		;99e7	dd 34 17	. 4 .
	jp 06c1dh		;99ea	c3 1d 6c	. . l
l99edh:
	dec (ix+017h)		;99ed	dd 35 17	. 5 .
	ret nz			;99f0	c0		.
	ld (ix+017h),008h	;99f1	dd 36 17 08	. 6 . .
	ld a,01ah		;99f5	3e 1a		> .
	call 0684ch		;99f7	cd 4c 68	. L h
	ret c			;99fa	d8		.
	ld a,(ix+008h)		;99fb	dd 7e 08	. ~ .
	ld (iy+008h),a		;99fe	fd 77 08	. w .
	ld a,(ix+007h)		;9a01	dd 7e 07	. ~ .
	ld (iy+007h),a		;9a04	fd 77 07	. w .
	ld a,(ix+00ah)		;9a07	dd 7e 0a	. ~ .
	ld (iy+00ah),a		;9a0a	fd 77 0a	. w .
	ld a,(ix+009h)		;9a0d	dd 7e 09	. ~ .
	ld (iy+009h),a		;9a10	fd 77 09	. w .
	ld a,(ix+020h)		;9a13	dd 7e 20	. ~  
	ld (iy+020h),a		;9a16	fd 77 20	. w  
	ld a,(ix+021h)		;9a19	dd 7e 21	. ~ !
	ld (iy+021h),a		;9a1c	fd 77 21	. w !
	inc (iy+001h)		;9a1f	fd 34 01	. 4 .
	ld a,(ix+023h)		;9a22	dd 7e 23	. ~ #
	ld (iy+023h),a		;9a25	fd 77 23	. w #
	and a			;9a28	a7		.
	jr nz,l9a2eh		;9a29	20 03		  .
	inc (iy+03dh)		;9a2b	fd 34 3d	. 4 =
l9a2eh:
	inc a			;9a2e	3c		<
	ld (ix+023h),a		;9a2f	dd 77 23	. w #
	cp (ix+022h)		;9a32	dd be 22	. . "
	ret nz			;9a35	c0		.
	jp 06e98h		;9a36	c3 98 6e	. . n
	ld a,(ix+03ah)		;9a39	dd 7e 3a	. ~ :
	ld (ix+000h),a		;9a3c	dd 77 00	. w .
	ret			;9a3f	c9		.
	ret			;9a40	c9		.
	ld (ix+015h),02dh	;9a41	dd 36 15 2d	. 6 . -
	ld b,004h		;9a45	06 04		. .
	call 06ab8h		;9a47	cd b8 6a	. . j
	ret nz			;9a4a	c0		.
	ld a,(ix+03dh)		;9a4b	dd 7e 3d	. ~ =
	and a			;9a4e	a7		.
	jp z,06e98h		;9a4f	ca 98 6e	. . n
	ld (ix+03dh),000h	;9a52	dd 36 3d 00	. 6 = .
	ld e,(ix+008h)		;9a56	dd 5e 08	. ^ .
	ld d,(ix+00ah)		;9a59	dd 56 0a	. V .
	call 06f55h		;9a5c	cd 55 6f	. U o
	jp 06e98h		;9a5f	c3 98 6e	. . n
	push de			;9a62	d5		.
	ld a,069h		;9a63	3e 69		> i
	call 0684ch		;9a65	cd 4c 68	. L h
	pop de			;9a68	d1		.
	ret c			;9a69	d8		.
	ld l,(ix+008h)		;9a6a	dd 6e 08	. n .
	ld h,(ix+00ah)		;9a6d	dd 66 0a	. f .
	add hl,de		;9a70	19		.
	ld (iy+008h),l		;9a71	fd 75 08	. u .
	ld (iy+00ah),h		;9a74	fd 74 0a	. t .
	ld (iy+001h),001h	;9a77	fd 36 01 01	. 6 . .
	ret			;9a7b	c9		.
	ld a,(ix+001h)		;9a7c	dd 7e 01	. ~ .
	dec a			;9a7f	3d		=
	jr z,l9a98h		;9a80	28 16		( .
	call 06796h		;9a82	cd 96 67	. . g
	ld (ix+008h),a		;9a85	dd 77 08	. w .
	call 06796h		;9a88	cd 96 67	. . g
	ld (ix+00ah),a		;9a8b	dd 77 0a	. w .
	ld a,(0ce4ch)		;9a8e	3a 4c ce	: L .
	and a			;9a91	a7		.
	jp z,06e98h		;9a92	ca 98 6e	. . n
	jp 06c1dh		;9a95	c3 1d 6c	. . l
l9a98h:
	ld de,l9aadh		;9a98	11 ad 9a	. . .
	call 07b65h		;9a9b	cd 65 7b	. e {
	ld b,006h		;9a9e	06 06		. .
	call 06ac2h		;9aa0	cd c2 6a	. . j
	jp z,06e98h		;9aa3	ca 98 6e	. . n
	dec a			;9aa6	3d		=
	ret nz			;9aa7	c0		.
	ld a,033h		;9aa8	3e 33		> 3
	jp 04af0h		;9aaa	c3 f0 4a	. . J
l9aadh:
	cp c			;9aad	b9		.
	sbc a,d			;9aae	9a		.
	cp a			;9aaf	bf		.
	sbc a,d			;9ab0	9a		.
	push bc			;9ab1	c5		.
	sbc a,d			;9ab2	9a		.
l9ab3h:
	res 3,d			;9ab3	cb 9a		. .
	pop de			;9ab5	d1		.
	sbc a,d			;9ab6	9a		.
	push bc			;9ab7	c5		.
	sbc a,d			;9ab8	9a		.
	ld b,000h		;9ab9	06 00		. .
	nop			;9abb	00		.
	ld bc,0ff00h		;9abc	01 00 ff	. . .
	ld b,000h		;9abf	06 00		. .
	nop			;9ac1	00		.
	ld bc,0ff01h		;9ac2	01 01 ff	. . .
	ld b,000h		;9ac5	06 00		. .
	nop			;9ac7	00		.
	ld bc,0ff02h		;9ac8	01 02 ff	. . .
	ld b,000h		;9acb	06 00		. .
	nop			;9acd	00		.
	ld bc,0ff03h		;9ace	01 03 ff	. . .
	ld b,000h		;9ad1	06 00		. .
	nop			;9ad3	00		.
	ld bc,0ff04h		;9ad4	01 04 ff	. . .
	call 06e91h		;9ad7	cd 91 6e	. . n
	ld a,(ix+001h)		;9ada	dd 7e 01	. ~ .
	dec a			;9add	3d		=
	jr z,l9afeh		;9ade	28 1e		( .
	ld (ix+015h),004h	;9ae0	dd 36 15 04	. 6 . .
	ld de,l9b0ah		;9ae4	11 0a 9b	. . .
	call 07b65h		;9ae7	cd 65 7b	. e {
	ld b,008h		;9aea	06 08		. .
	call 06ac2h		;9aec	cd c2 6a	. . j
	ret nz			;9aef	c0		.
	call 07058h		;9af0	cd 58 70	. X p
	call 07523h		;9af3	cd 23 75	. # u
	ld (ix+017h),030h	;9af6	dd 36 17 30	. 6 . 0
	ld (ix+001h),001h	;9afa	dd 36 01 01	. 6 . .
l9afeh:
	call 06ad2h		;9afe	cd d2 6a	. . j
	ret nz			;9b01	c0		.
	ld a,001h		;9b02	3e 01		> .
	ld (0ca0fh),a		;9b04	32 0f ca	2 . .
	jp 06e98h		;9b07	c3 98 6e	. . n
l9b0ah:
	ld a,(de)		;9b0a	1a		.
	sbc a,e			;9b0b	9b		.
	jr nz,$-99		;9b0c	20 9b		  .
	ld h,09bh		;9b0e	26 9b		& .
	inc l			;9b10	2c		,
	sbc a,e			;9b11	9b		.
	ld (0269bh),a		;9b12	32 9b 26	2 . &
	sbc a,e			;9b15	9b		.
	jr nz,l9ab3h		;9b16	20 9b		  .
	ld a,(de)		;9b18	1a		.
	sbc a,e			;9b19	9b		.
	ld b,003h		;9b1a	06 03		. .
	ld (bc),a		;9b1c	02		.
	ld bc,0ff00h		;9b1d	01 00 ff	. . .
	ld b,003h		;9b20	06 03		. .
	ld bc,00101h		;9b22	01 01 01	. . .
	rst 38h			;9b25	ff		.
	ld b,002h		;9b26	06 02		. .
	ld bc,00201h		;9b28	01 01 02	. . .
	rst 38h			;9b2b	ff		.
	ld b,000h		;9b2c	06 00		. .
	nop			;9b2e	00		.
	ld bc,0ff03h		;9b2f	01 03 ff	. . .
	ld b,001h		;9b32	06 01		. .
	ld bc,00401h		;9b34	01 01 04	. . .
	rst 38h			;9b37	ff		.
	ld a,(ix+001h)		;9b38	dd 7e 01	. ~ .
	dec a			;9b3b	3d		=
	jr z,l9b6fh		;9b3c	28 31		( 1
	ld (ix+015h),004h	;9b3e	dd 36 15 04	. 6 . .
	call sub_9b70h		;9b42	cd 70 9b	. p .
	ld b,003h		;9b45	06 03		. .
	call 06ac2h		;9b47	cd c2 6a	. . j
	ret nz			;9b4a	c0		.
	ld a,(ix+03eh)		;9b4b	dd 7e 3e	. ~ >
	and a			;9b4e	a7		.
	jr z,l9b5bh		;9b4f	28 0a		( .
	ld (ix+006h),a		;9b51	dd 77 06	. w .
	ld (ix+015h),046h	;9b54	dd 36 15 46	. 6 . F
	jp 06c1dh		;9b58	c3 1d 6c	. . l
l9b5bh:
	ld a,(ix+03dh)		;9b5b	dd 7e 3d	. ~ =
	and a			;9b5e	a7		.
	jp z,06e98h		;9b5f	ca 98 6e	. . n
	ld (ix+03dh),000h	;9b62	dd 36 3d 00	. 6 = .
	ld e,(ix+008h)		;9b66	dd 5e 08	. ^ .
	ld d,(ix+00ah)		;9b69	dd 56 0a	. V .
	jp 06f55h		;9b6c	c3 55 6f	. U o
l9b6fh:
	ret			;9b6f	c9		.
sub_9b70h:
	ld de,l9ba2h		;9b70	11 a2 9b	. . .
	ld a,(ix+03eh)		;9b73	dd 7e 3e	. ~ >
	and a			;9b76	a7		.
	jr z,l9b87h		;9b77	28 0e		( .
	dec a			;9b79	3d		=
	dec a			;9b7a	3d		=
	dec a			;9b7b	3d		=
	ld l,a			;9b7c	6f		o
	ld h,000h		;9b7d	26 00		& .
	add hl,hl		;9b7f	29		)
	ld de,l9b8ah		;9b80	11 8a 9b	. . .
	add hl,de		;9b83	19		.
	ld e,(hl)		;9b84	5e		^
	inc hl			;9b85	23		#
	ld d,(hl)		;9b86	56		V
l9b87h:
	jp 07b65h		;9b87	c3 65 7b	. e {
l9b8ah:
	and d			;9b8a	a2		.
	sbc a,e			;9b8b	9b		.
	and d			;9b8c	a2		.
	sbc a,e			;9b8d	9b		.
	xor (hl)		;9b8e	ae		.
	sbc a,e			;9b8f	9b		.
	and d			;9b90	a2		.
	sbc a,e			;9b91	9b		.
	and d			;9b92	a2		.
	sbc a,e			;9b93	9b		.
	and d			;9b94	a2		.
	sbc a,e			;9b95	9b		.
	xor b			;9b96	a8		.
	sbc a,e			;9b97	9b		.
	xor b			;9b98	a8		.
	sbc a,e			;9b99	9b		.
	and d			;9b9a	a2		.
	sbc a,e			;9b9b	9b		.
	and d			;9b9c	a2		.
	sbc a,e			;9b9d	9b		.
	or h			;9b9e	b4		.
	sbc a,e			;9b9f	9b		.
	cp d			;9ba0	ba		.
	sbc a,e			;9ba1	9b		.
l9ba2h:
	ret nz			;9ba2	c0		.
	sbc a,e			;9ba3	9b		.
	add a,09bh		;9ba4	c6 9b		. .
	ret nz			;9ba6	c0		.
	sbc a,e			;9ba7	9b		.
	call z,0d29bh		;9ba8	cc 9b d2	. . .
	sbc a,e			;9bab	9b		.
	call z,0d89bh		;9bac	cc 9b d8	. . .
	sbc a,e			;9baf	9b		.
	ex (sp),hl		;9bb0	e3		.
	sbc a,e			;9bb1	9b		.
	ret c			;9bb2	d8		.
	sbc a,e			;9bb3	9b		.
	xor 09bh		;9bb4	ee 9b		. .
	xor 09bh		;9bb6	ee 9b		. .
	xor 09bh		;9bb8	ee 9b		. .
	call p,0f49bh		;9bba	f4 9b f4	. . .
	sbc a,e			;9bbd	9b		.
	call p,0069bh		;9bbe	f4 9b 06	. . .
	nop			;9bc1	00		.
	rst 38h			;9bc2	ff		.
	ld bc,0ff00h		;9bc3	01 00 ff	. . .
	ld b,000h		;9bc6	06 00		. .
	rst 38h			;9bc8	ff		.
	ld bc,0ff01h		;9bc9	01 01 ff	. . .
	ld b,001h		;9bcc	06 01		. .
	ld bc,00001h		;9bce	01 01 00	. . .
	rst 38h			;9bd1	ff		.
	ld b,001h		;9bd2	06 01		. .
	ld bc,00101h		;9bd4	01 01 01	. . .
	rst 38h			;9bd7	ff		.
	dec bc			;9bd8	0b		.
	ld (bc),a		;9bd9	02		.
	ld (bc),a		;9bda	02		.
	ld bc,0fe00h		;9bdb	01 00 fe	. . .
	nop			;9bde	00		.
	nop			;9bdf	00		.
	ld bc,0ff05h		;9be0	01 05 ff	. . .
	dec bc			;9be3	0b		.
	ld (bc),a		;9be4	02		.
	ld bc,00101h		;9be5	01 01 01	. . .
	cp 000h			;9be8	fe 00		. .
	nop			;9bea	00		.
	ld bc,0ff05h		;9beb	01 05 ff	. . .
	ld b,000h		;9bee	06 00		. .
	nop			;9bf0	00		.
	ld bc,0ff0dh		;9bf1	01 0d ff	. . .
	ld b,000h		;9bf4	06 00		. .
	nop			;9bf6	00		.
	ld bc,0ff0eh		;9bf7	01 0e ff	. . .
l9bfah:
	push de			;9bfa	d5		.
	ld bc,0ffa0h		;9bfb	01 a0 ff	. . .
	call sub_9c07h		;9bfe	cd 07 9c	. . .
	pop de			;9c01	d1		.
	ret z			;9c02	c8		.
	ld e,d			;9c03	5a		Z
	ld bc,00060h		;9c04	01 60 00	. ` .
sub_9c07h:
	ld d,061h		;9c07	16 61		. a
	call 07207h		;9c09	cd 07 72	. . r
	ret nz			;9c0c	c0		.
	call 0721dh		;9c0d	cd 1d 72	. . r
	ld (hl),d		;9c10	72		r
	ld a,e			;9c11	7b		{
	rrca			;9c12	0f		.
	rrca			;9c13	0f		.
	rrca			;9c14	0f		.
	rrca			;9c15	0f		.
	and 00fh		;9c16	e6 0f		. .
	ld d,a			;9c18	57		W
	ld a,e			;9c19	7b		{
	and 00fh		;9c1a	e6 0f		. .
	ld e,a			;9c1c	5f		_
	ld a,008h		;9c1d	3e 08		> .
	add a,l			;9c1f	85		.
	ld l,a			;9c20	6f		o
	ld a,(ix+008h)		;9c21	dd 7e 08	. ~ .
	add a,e			;9c24	83		.
	ld (hl),a		;9c25	77		w
	inc l			;9c26	2c		,
	inc l			;9c27	2c		,
	ld a,(ix+00ah)		;9c28	dd 7e 0a	. ~ .
	add a,d			;9c2b	82		.
	ld (hl),a		;9c2c	77		w
	inc l			;9c2d	2c		,
	ld (hl),c		;9c2e	71		q
	inc l			;9c2f	2c		,
	ld (hl),b		;9c30	70		p
	ld a,l			;9c31	7d		}
	and 0e0h		;9c32	e6 e0		. .
	ld l,a			;9c34	6f		o
	call 066f7h		;9c35	cd f7 66	. . f
	ld (hl),006h		;9c38	36 06		6 .
	ret			;9c3a	c9		.
	ld a,(ix+001h)		;9c3b	dd 7e 01	. ~ .
	dec a			;9c3e	3d		=
	jr z,l9c57h		;9c3f	28 16		( .
	call 06ad2h		;9c41	cd d2 6a	. . j
	ret nz			;9c44	c0		.
	call 06bf0h		;9c45	cd f0 6b	. . k
	ld de,0ff80h		;9c48	11 80 ff	. . .
	call 06bfdh		;9c4b	cd fd 6b	. . k
	ld de,0ffe0h		;9c4e	11 e0 ff	. . .
	call 06c16h		;9c51	cd 16 6c	. . l
	jp 06c1dh		;9c54	c3 1d 6c	. . l
l9c57h:
	ld a,(0ca02h)		;9c57	3a 02 ca	: . .
	and 001h		;9c5a	e6 01		. .
	ret z			;9c5c	c8		.
	jp 06a9ah		;9c5d	c3 9a 6a	. . j
l9c60h:
	ld a,066h		;9c60	3e 66		> f
	call 0684ch		;9c62	cd 4c 68	. L h
	ret c			;9c65	d8		.
	ld bc,00102h		;9c66	01 02 01	. . .
	jp 06929h		;9c69	c3 29 69	. ) i
	ld a,(ix+001h)		;9c6c	dd 7e 01	. ~ .
	dec a			;9c6f	3d		=
	jr z,l9caah		;9c70	28 38		( 8
	ld de,0ff80h		;9c72	11 80 ff	. . .
	call 06bfdh		;9c75	cd fd 6b	. . k
	ld de,0fff0h		;9c78	11 f0 ff	. . .
	call 06c16h		;9c7b	cd 16 6c	. . l
	ld (ix+007h),080h	;9c7e	dd 36 07 80	. 6 . .
	ld a,(0ca19h)		;9c82	3a 19 ca	: . .
	cp 005h			;9c85	fe 05		. .
	ld a,004h		;9c87	3e 04		> .
	jr c,l9ca4h		;9c89	38 19		8 .
	ld a,(0ca48h)		;9c8b	3a 48 ca	: H .
	inc a			;9c8e	3c		<
	sub 00bh		;9c8f	d6 0b		. .
	ld hl,00008h		;9c91	21 08 00	! . .
	jr nc,l9c9bh		;9c94	30 05		0 .
	neg			;9c96	ed 44		. D
	ld hl,0fff8h		;9c98	21 f8 ff	! . .
l9c9bh:
	cp 002h			;9c9b	fe 02		. .
	jr c,l9ca2h		;9c9d	38 03		8 .
	call 06c0ch		;9c9f	cd 0c 6c	. . l
l9ca2h:
	ld a,00ch		;9ca2	3e 0c		> .
l9ca4h:
	ld (ix+016h),a		;9ca4	dd 77 16	. w .
	jp 06c1dh		;9ca7	c3 1d 6c	. . l
l9caah:
	jp 06a9ah		;9caa	c3 9a 6a	. . j
	call sub_9ccbh		;9cad	cd cb 9c	. . .
	inc (hl)		;9cb0	34		4
	inc (hl)		;9cb1	34		4
	inc (hl)		;9cb2	34		4
	jr l9cb8h		;9cb3	18 03		. .
l9cb5h:
	call sub_9ccbh		;9cb5	cd cb 9c	. . .
l9cb8h:
	call sub_9cdeh		;9cb8	cd de 9c	. . .
	ld a,015h		;9cbb	3e 15		> .
	jp 04af0h		;9cbd	c3 f0 4a	. . J
	call sub_9ccbh		;9cc0	cd cb 9c	. . .
	call sub_9cdeh		;9cc3	cd de 9c	. . .
	ld a,019h		;9cc6	3e 19		> .
	jp 04af0h		;9cc8	c3 f0 4a	. . J
sub_9ccbh:
	ld a,(0ca19h)		;9ccb	3a 19 ca	: . .
	rrca			;9cce	0f		.
	and 07fh		;9ccf	e6 7f		. .
	ld l,a			;9cd1	6f		o
	ld h,000h		;9cd2	26 00		& .
	ld de,09d15h		;9cd4	11 15 9d	. . .
	add hl,de		;9cd7	19		.
	ld a,(hl)		;9cd8	7e		~
	ld hl,0ca26h		;9cd9	21 26 ca	! & .
	ld (hl),a		;9cdc	77		w
	ret			;9cdd	c9		.
sub_9cdeh:
	ld l,b			;9cde	68		h
	ld h,000h		;9cdf	26 00		& .
	ld de,l9d0dh		;9ce1	11 0d 9d	. . .
	add hl,de		;9ce4	19		.
	ld a,(hl)		;9ce5	7e		~
	ld c,a			;9ce6	4f		O
	push bc			;9ce7	c5		.
	call 07362h		;9ce8	cd 62 73	. b s
	pop bc			;9ceb	c1		.
	ret nz			;9cec	c0		.
	srl c			;9ced	cb 39		. 9
	ld b,067h		;9cef	06 67		. g
	call 07371h		;9cf1	cd 71 73	. q s
	ld de,00010h		;9cf4	11 10 00	. . .
	add hl,de		;9cf7	19		.
	ld (hl),035h		;9cf8	36 35		6 5
	ld a,l			;9cfa	7d		}
	and 0e0h		;9cfb	e6 e0		. .
	ld l,a			;9cfd	6f		o
	ld de,00007h		;9cfe	11 07 00	. . .
	add hl,de		;9d01	19		.
	ld a,(0ca12h)		;9d02	3a 12 ca	: . .
	ld (hl),a		;9d05	77		w
	ld a,(0ca14h)		;9d06	3a 14 ca	: . .
	inc l			;9d09	2c		,
	inc l			;9d0a	2c		,
	ld (hl),a		;9d0b	77		w
	ret			;9d0c	c9		.
l9d0dh:
	nop			;9d0d	00		.
	ld (bc),a		;9d0e	02		.
	inc b			;9d0f	04		.
	ld b,008h		;9d10	06 08		. .
	ld a,(bc)		;9d12	0a		.
	inc c			;9d13	0c		.
	ld c,010h		;9d14	0e 10		. .
	ld (de),a		;9d16	12		.
	ld d,018h		;9d17	16 18		. .
	inc e			;9d19	1c		.
	ld e,020h		;9d1a	1e 20		.  
	ld (0d5c9h),hl		;9d1c	22 c9 d5	" . .
	push bc			;9d1f	c5		.
	ld a,070h		;9d20	3e 70		> p
	call 0684ch		;9d22	cd 4c 68	. L h
	jr c,l9d4dh		;9d25	38 26		8 &
	ld (iy+017h),006h	;9d27	fd 36 17 06	. 6 . .
	pop bc			;9d2b	c1		.
	call 06929h		;9d2c	cd 29 69	. ) i
	pop de			;9d2f	d1		.
	ld l,d			;9d30	6a		j
	ld h,000h		;9d31	26 00		& .
	add hl,hl		;9d33	29		)
	ld bc,l9d50h		;9d34	01 50 9d	. P .
	add hl,bc		;9d37	09		.
	ld a,(hl)		;9d38	7e		~
	ld (iy+012h),a		;9d39	fd 77 12	. w .
	inc hl			;9d3c	23		#
	ld a,(hl)		;9d3d	7e		~
l9d3eh:
	ld (iy+011h),a		;9d3e	fd 77 11	. w .
	ld d,000h		;9d41	16 00		. .
	ld hl,l9d58h		;9d43	21 58 9d	! X .
	add hl,de		;9d46	19		.
	ld a,(hl)		;9d47	7e		~
	ld (iy+00fh),a		;9d48	fd 77 0f	. w .
	or a			;9d4b	b7		.
	ret			;9d4c	c9		.
l9d4dh:
	pop hl			;9d4d	e1		.
	pop hl			;9d4e	e1		.
	ret			;9d4f	c9		.
l9d50h:
	djnz l9d62h		;9d50	10 10		. .
	ld (de),a		;9d52	12		.
	ld de,01214h		;9d53	11 14 12	. . .
	inc d			;9d56	14		.
	inc de			;9d57	13		.
l9d58h:
	ld b,b			;9d58	40		@
	add a,b			;9d59	80		.
	ret nz			;9d5a	c0		.
	nop			;9d5b	00		.
	ld h,b			;9d5c	60		`
	and b			;9d5d	a0		.
	ret po			;9d5e	e0		.
	jr nz,l9d3eh		;9d5f	20 dd		  .
	ld a,(hl)		;9d61	7e		~
l9d62h:
	ld bc,0283dh		;9d62	01 3d 28	. = (
	dec d			;9d65	15		.
	dec a			;9d66	3d		=
	jr z,l9d86h		;9d67	28 1d		( .
	ld a,(ix+012h)		;9d69	dd 7e 12	. ~ .
	ld (0ca26h),a		;9d6c	32 26 ca	2 & .
	ld a,(ix+00fh)		;9d6f	dd 7e 0f	. ~ .
	call sub_9de8h		;9d72	cd e8 9d	. . .
	call 06b6fh		;9d75	cd 6f 6b	. o k
	jp 06c1dh		;9d78	c3 1d 6c	. . l
	call 06ad2h		;9d7b	cd d2 6a	. . j
	ret nz			;9d7e	c0		.
	ld (ix+018h),060h	;9d7f	dd 36 18 60	. 6 . `
	jp 06c1dh		;9d83	c3 1d 6c	. . l
l9d86h:
	call 06adfh		;9d86	cd df 6a	. . j
	ret z			;9d89	c8		.
	ld a,(0ca02h)		;9d8a	3a 02 ca	: . .
	and 003h		;9d8d	e6 03		. .
	ret nz			;9d8f	c0		.
	ld a,(ix+012h)		;9d90	dd 7e 12	. ~ .
	ld iy,0ca40h		;9d93	fd 21 40 ca	. ! @ .
	call 06b85h		;9d97	cd 85 6b	. . k
	call sub_9da1h		;9d9a	cd a1 9d	. . .
	call 06b6fh		;9d9d	cd 6f 6b	. o k
	ret			;9da0	c9		.
sub_9da1h:
	call sub_9da9h		;9da1	cd a9 9d	. . .
	call sub_9dd2h		;9da4	cd d2 9d	. . .
	jr sub_9de8h		;9da7	18 3f		. ?
sub_9da9h:
	ld d,a			;9da9	57		W
	ld a,(0ca23h)		;9daa	3a 23 ca	: # .
	ld b,a			;9dad	47		G
	ld a,(0ca24h)		;9dae	3a 24 ca	: $ .
	and a			;9db1	a7		.
	rlca			;9db2	07		.
	add a,b			;9db3	80		.
	or a			;9db4	b7		.
	jp po,l9dbeh		;9db5	e2 be 9d	. . .
	ex af,af'		;9db8	08		.
	ld a,03fh		;9db9	3e 3f		> ?
	sub d			;9dbb	92		.
	ld d,a			;9dbc	57		W
	ex af,af'		;9dbd	08		.
l9dbeh:
	ld b,0c0h		;9dbe	06 c0		. .
	jr z,l9dceh		;9dc0	28 0c		( .
	dec a			;9dc2	3d		=
	ld b,000h		;9dc3	06 00		. .
	jr z,l9dceh		;9dc5	28 07		( .
	dec a			;9dc7	3d		=
	ld b,080h		;9dc8	06 80		. .
	jr z,l9dceh		;9dca	28 02		( .
	ld b,040h		;9dcc	06 40		. @
l9dceh:
	ld a,d			;9dce	7a		z
	add a,b			;9dcf	80		.
	ld b,a			;9dd0	47		G
	ret			;9dd1	c9		.
sub_9dd2h:
	ld d,(ix+011h)		;9dd2	dd 56 11	. V .
	ld c,(ix+00fh)		;9dd5	dd 4e 0f	. N .
	ld a,c			;9dd8	79		y
	neg			;9dd9	ed 44		. D
	add a,b			;9ddb	80		.
	cp 07fh			;9ddc	fe 7f		. .
	ld a,d			;9dde	7a		z
	jr c,l9de3h		;9ddf	38 02		8 .
	neg			;9de1	ed 44		. D
l9de3h:
	add a,c			;9de3	81		.
	ld (ix+00fh),a		;9de4	dd 77 0f	. w .
	ret			;9de7	c9		.
sub_9de8h:
	ld d,a			;9de8	57		W
	ld bc,00001h		;9de9	01 01 00	. . .
	sub 040h		;9dec	d6 40		. @
	jr c,l9e04h		;9dee	38 14		8 .
	ld d,a			;9df0	57		W
	inc b			;9df1	04		.
	sub 040h		;9df2	d6 40		. @
	jr c,l9dfeh		;9df4	38 08		8 .
	ld d,a			;9df6	57		W
	dec c			;9df7	0d		.
	sub 040h		;9df8	d6 40		. @
	jr c,l9e04h		;9dfa	38 08		8 .
	ld d,a			;9dfc	57		W
	dec b			;9dfd	05		.
l9dfeh:
	ld a,d			;9dfe	7a		z
	neg			;9dff	ed 44		. D
	add a,03fh		;9e01	c6 3f		. ?
	ld d,a			;9e03	57		W
l9e04h:
	ld a,d			;9e04	7a		z
	ld (0ca20h),a		;9e05	32 20 ca	2   .
	ld hl,0ca23h		;9e08	21 23 ca	! # .
	ld (hl),c		;9e0b	71		q
	inc hl			;9e0c	23		#
	ld (hl),b		;9e0d	70		p
	ret			;9e0e	c9		.
	ld a,074h		;9e0f	3e 74		> t
	call 0684ch		;9e11	cd 4c 68	. L h
	ret c			;9e14	d8		.
	call 04678h		;9e15	cd 78 46	. x F
	ld b,a			;9e18	47		G
	and 003h		;9e19	e6 03		. .
	ld l,a			;9e1b	6f		o
	ld h,000h		;9e1c	26 00		& .
	ld de,l9e67h		;9e1e	11 67 9e	. g .
	add hl,de		;9e21	19		.
	ld l,(hl)		;9e22	6e		n
	ld h,0ffh		;9e23	26 ff		& .
	add hl,hl		;9e25	29		)
	ld (iy+00dh),l		;9e26	fd 75 0d	. u .
	ld (iy+00eh),h		;9e29	fd 74 0e	. t .
	ld a,(ix+008h)		;9e2c	dd 7e 08	. ~ .
	add a,002h		;9e2f	c6 02		. .
	cp 006h			;9e31	fe 06		. .
	ld de,l9e6bh		;9e33	11 6b 9e	. k .
	jr nc,l9e3bh		;9e36	30 03		0 .
	ld de,09e6fh		;9e38	11 6f 9e	. o .
l9e3bh:
	ld a,b			;9e3b	78		x
	rlca			;9e3c	07		.
	and 003h		;9e3d	e6 03		. .
	ld l,a			;9e3f	6f		o
	ld h,000h		;9e40	26 00		& .
	add hl,de		;9e42	19		.
	ld a,(hl)		;9e43	7e		~
l9e44h:
	ld (iy+008h),a		;9e44	fd 77 08	. w .
	ld (iy+00ah),01fh	;9e47	fd 36 0a 1f	. 6 . .
	ld a,b			;9e4b	78		x
	rrca			;9e4c	0f		.
	and 007h		;9e4d	e6 07		. .
	ld l,a			;9e4f	6f		o
	ld h,000h		;9e50	26 00		& .
	ld de,09e73h		;9e52	11 73 9e	. s .
	add hl,de		;9e55	19		.
	ld l,(hl)		;9e56	6e		n
	ld h,000h		;9e57	26 00		& .
	ld a,b			;9e59	78		x
	rrca			;9e5a	0f		.
	jr c,l9e60h		;9e5b	38 03		8 .
	call 04612h		;9e5d	cd 12 46	. . F
l9e60h:
	ld (iy+00bh),l		;9e60	fd 75 0b	. u .
	ld (iy+00ch),h		;9e63	fd 74 0c	. t .
	ret			;9e66	c9		.
l9e67h:
	ret nz			;9e67	c0		.
	add a,b			;9e68	80		.
	ld b,b			;9e69	40		@
	nop			;9e6a	00		.
l9e6bh:
	nop			;9e6b	00		.
	ld (bc),a		;9e6c	02		.
	inc b			;9e6d	04		.
	ld b,010h		;9e6e	06 10		. .
	ld (de),a		;9e70	12		.
	inc d			;9e71	14		.
	ld d,000h		;9e72	16 00		. .
	djnz $+26		;9e74	10 18		. .
	ld a,(de)		;9e76	1a		.
	jr nz,$+38		;9e77	20 24		  $
	jr z,l9e44h		;9e79	28 c9		( .
	ret			;9e7b	c9		.
	ld a,(ix+001h)		;9e7c	dd 7e 01	. ~ .
	dec a			;9e7f	3d		=
	jr z,l9e8ch		;9e80	28 0a		( .
	jp p,l9ea4h		;9e82	f2 a4 9e	. . .
	ld (ix+017h),020h	;9e85	dd 36 17 20	. 6 .  
	inc (ix+001h)		;9e89	dd 34 01	. 4 .
l9e8ch:
	dec (ix+017h)		;9e8c	dd 35 17	. 5 .
	ret nz			;9e8f	c0		.
	ld (ix+017h),00ah	;9e90	dd 36 17 0a	. 6 . .
	ld a,(ix+00fh)		;9e94	dd 7e 0f	. ~ .
	ld (ix+018h),a		;9e97	dd 77 18	. w .
	ld (ix+015h),004h	;9e9a	dd 36 15 04	. 6 . .
	inc (ix+001h)		;9e9e	dd 34 01	. 4 .
	call 06be6h		;9ea1	cd e6 6b	. . k
l9ea4h:
	ld a,(ix+00fh)		;9ea4	dd 7e 0f	. ~ .
	or a			;9ea7	b7		.
	call nz,sub_9efbh	;9ea8	c4 fb 9e	. . .
	ld a,(ix+017h)		;9eab	dd 7e 17	. ~ .
	jr z,l9eb5h		;9eae	28 05		( .
	dec a			;9eb0	3d		=
	ld (ix+017h),a		;9eb1	dd 77 17	. w .
	ret			;9eb4	c9		.
l9eb5h:
	call sub_9ec0h		;9eb5	cd c0 9e	. . .
	ld a,(ix+018h)		;9eb8	dd 7e 18	. ~ .
	or a			;9ebb	b7		.
	ret nz			;9ebc	c0		.
	jp 06each		;9ebd	c3 ac 6e	. . n
sub_9ec0h:
	ld b,002h		;9ec0	06 02		. .
l9ec2h:
	push bc			;9ec2	c5		.
	call sub_9ecah		;9ec3	cd ca 9e	. . .
	pop bc			;9ec6	c1		.
	djnz l9ec2h		;9ec7	10 f9		. .
	ret			;9ec9	c9		.
sub_9ecah:
	ld a,(ix+018h)		;9eca	dd 7e 18	. ~ .
	or a			;9ecd	b7		.
	ret z			;9ece	c8		.
	dec a			;9ecf	3d		=
	ld (ix+018h),a		;9ed0	dd 77 18	. w .
	ld a,01dh		;9ed3	3e 1d		> .
	call 04af5h		;9ed5	cd f5 4a	. . J
	ld a,(ix+008h)		;9ed8	dd 7e 08	. ~ .
	sub (ix+010h)		;9edb	dd 96 10	. . .
	ld (ix+008h),a		;9ede	dd 77 08	. w .
	ld a,(ix+00ah)		;9ee1	dd 7e 0a	. ~ .
	sub (ix+012h)		;9ee4	dd 96 12	. . .
	ld (ix+00ah),a		;9ee7	dd 77 0a	. w .
	xor a			;9eea	af		.
	ld h,a			;9eeb	67		g
	ld l,a			;9eec	6f		o
	ld d,a			;9eed	57		W
	ld e,a			;9eee	5f		_
	call 076d0h		;9eef	cd d0 76	. . v
	call 076f1h		;9ef2	cd f1 76	. . v
	jr nc,l9efah		;9ef5	30 03		0 .
	ld a,0a7h		;9ef7	3e a7		> .
	ld (de),a		;9ef9	12		.
l9efah:
	ret			;9efa	c9		.
sub_9efbh:
	ld b,002h		;9efb	06 02		. .
l9efdh:
	push bc			;9efd	c5		.
	call sub_9f05h		;9efe	cd 05 9f	. . .
	pop bc			;9f01	c1		.
	djnz l9efdh		;9f02	10 f9		. .
	ret			;9f04	c9		.
sub_9f05h:
	ld a,(ix+00fh)		;9f05	dd 7e 0f	. ~ .
	or a			;9f08	b7		.
	ret z			;9f09	c8		.
	dec a			;9f0a	3d		=
	ld (ix+00fh),a		;9f0b	dd 77 0f	. w .
	xor a			;9f0e	af		.
	ld h,a			;9f0f	67		g
	ld l,a			;9f10	6f		o
	ld d,a			;9f11	57		W
	ld e,a			;9f12	5f		_
	call 076d0h		;9f13	cd d0 76	. . v
	call 076f1h		;9f16	cd f1 76	. . v
	jr nc,l9f1fh		;9f19	30 04		0 .
	ld a,(ix+011h)		;9f1b	dd 7e 11	. ~ .
	ld (de),a		;9f1e	12		.
l9f1fh:
	ld a,(ix+010h)		;9f1f	dd 7e 10	. ~ .
	add a,(ix+008h)		;9f22	dd 86 08	. . .
	ld (ix+008h),a		;9f25	dd 77 08	. w .
	ld a,(ix+012h)		;9f28	dd 7e 12	. ~ .
	add a,(ix+00ah)		;9f2b	dd 86 0a	. . .
	ld (ix+00ah),a		;9f2e	dd 77 0a	. w .
	ret			;9f31	c9		.
sub_9f32h:
	ld a,06eh		;9f32	3e 6e		> n
	call 0684ch		;9f34	cd 4c 68	. L h
	ret c			;9f37	d8		.
	ld bc,00202h		;9f38	01 02 02	. . .
	ld a,(ix+006h)		;9f3b	dd 7e 06	. ~ .
	inc a			;9f3e	3c		<
	and 003h		;9f3f	e6 03		. .
	ld (iy+020h),a		;9f41	fd 77 20	. w  
	jp 06929h		;9f44	c3 29 69	. ) i
	ld a,(ix+001h)		;9f47	dd 7e 01	. ~ .
	dec a			;9f4a	3d		=
	jr z,l9f57h		;9f4b	28 0a		( .
	call sub_9f69h		;9f4d	cd 69 9f	. i .
	ld (ix+017h),008h	;9f50	dd 36 17 08	. 6 . .
	jp 06c1dh		;9f54	c3 1d 6c	. . l
l9f57h:
	call 06ad2h		;9f57	cd d2 6a	. . j
	ret nz			;9f5a	c0		.
	ld a,(ix+005h)		;9f5b	dd 7e 05	. ~ .
	cp 002h			;9f5e	fe 02		. .
	ret z			;9f60	c8		.
	inc (ix+005h)		;9f61	dd 34 05	. 4 .
	ld a,008h		;9f64	3e 08		> .
	jp 06adbh		;9f66	c3 db 6a	. . j
sub_9f69h:
	ld l,(ix+020h)		;9f69	dd 6e 20	. n  
	ld h,000h		;9f6c	26 00		& .
	add hl,hl		;9f6e	29		)
	add hl,hl		;9f6f	29		)
	ld de,l9f80h		;9f70	11 80 9f	. . .
	add hl,de		;9f73	19		.
	ld e,(hl)		;9f74	5e		^
	inc hl			;9f75	23		#
	ld d,(hl)		;9f76	56		V
	inc hl			;9f77	23		#
	ld a,(hl)		;9f78	7e		~
	inc hl			;9f79	23		#
	ld h,(hl)		;9f7a	66		f
	ld l,a			;9f7b	6f		o
	ex de,hl		;9f7c	eb		.
	jp 06bebh		;9f7d	c3 eb 6b	. . k
l9f80h:
	nop			;9f80	00		.
	nop			;9f81	00		.
	add a,b			;9f82	80		.
	nop			;9f83	00		.
	add a,b			;9f84	80		.
	rst 38h			;9f85	ff		.
	nop			;9f86	00		.
	nop			;9f87	00		.
	nop			;9f88	00		.
	nop			;9f89	00		.
	add a,b			;9f8a	80		.
	rst 38h			;9f8b	ff		.
	add a,b			;9f8c	80		.
	nop			;9f8d	00		.
	nop			;9f8e	00		.
	nop			;9f8f	00		.
sub_9f90h:
	push de			;9f90	d5		.
	push bc			;9f91	c5		.
	ld a,06fh		;9f92	3e 6f		> o
	call 0684ch		;9f94	cd 4c 68	. L h
	pop bc			;9f97	c1		.
	pop de			;9f98	d1		.
	ret c			;9f99	d8		.
	ld (iy+020h),d		;9f9a	fd 72 20	. r  
	ld a,(ix+008h)		;9f9d	dd 7e 08	. ~ .
	add a,c			;9fa0	81		.
	ld (iy+008h),a		;9fa1	fd 77 08	. w .
	ld a,(ix+00ah)		;9fa4	dd 7e 0a	. ~ .
	add a,b			;9fa7	80		.
	ld (iy+00ah),a		;9fa8	fd 77 0a	. w .
	ld (iy+017h),004h	;9fab	fd 36 17 04	. 6 . .
	ret			;9faf	c9		.
	ld b,004h		;9fb0	06 04		. .
	call 06ab8h		;9fb2	cd b8 6a	. . j
	ld a,(ix+001h)		;9fb5	dd 7e 01	. ~ .
	dec a			;9fb8	3d		=
	jr z,l9fd0h		;9fb9	28 15		( .
	dec a			;9fbb	3d		=
	jr z,l9fdah		;9fbc	28 1c		( .
	ld a,(ix+020h)		;9fbe	dd 7e 20	. ~  
	ld hl,00080h		;9fc1	21 80 00	! . .
	or a			;9fc4	b7		.
	jr nz,l9fcah		;9fc5	20 03		  .
	ld hl,0ff80h		;9fc7	21 80 ff	! . .
l9fcah:
	call 06bf3h		;9fca	cd f3 6b	. . k
	jp 06c1dh		;9fcd	c3 1d 6c	. . l
l9fd0h:
	call 06ad2h		;9fd0	cd d2 6a	. . j
	ret nz			;9fd3	c0		.
	call sub_9fe9h		;9fd4	cd e9 9f	. . .
	jp 06c1dh		;9fd7	c3 1d 6c	. . l
l9fdah:
	ld l,(ix+00fh)		;9fda	dd 6e 0f	. n .
	ld h,(ix+010h)		;9fdd	dd 66 10	. f .
	ld e,(ix+011h)		;9fe0	dd 5e 11	. ^ .
	ld d,(ix+012h)		;9fe3	dd 56 12	. V .
	jp 06d4fh		;9fe6	c3 4f 6d	. O m
sub_9fe9h:
	ld iy,0ca40h		;9fe9	fd 21 40 ca	. ! @ .
	ld a,020h		;9fed	3e 20		>  
	call 06b7fh		;9fef	cd 7f 6b	. . k
	ld (ix+00fh),l		;9ff2	dd 75 0f	. u .
	ld (ix+010h),h		;9ff5	dd 74 10	. t .
	ld (ix+011h),e		;9ff8	dd 73 11	. s .
	ld (ix+012h),d		;9ffb	dd 72 12	. r .
	ret			;9ffe	c9		.
	ret			;9fff	c9		.

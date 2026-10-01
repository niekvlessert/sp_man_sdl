; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank09_6000_runtime.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank09.bin

	org 06000h

	nop			;6000	00		.
	nop			;6001	00		.
	nop			;6002	00		.
	nop			;6003	00		.
	nop			;6004	00		.
	nop			;6005	00		.
	nop			;6006	00		.
	nop			;6007	00		.
	nop			;6008	00		.
	nop			;6009	00		.
	nop			;600a	00		.
	nop			;600b	00		.
	nop			;600c	00		.
	nop			;600d	00		.
	nop			;600e	00		.
	nop			;600f	00		.
	ld bc,00101h		;6010	01 01 01	. . .
	ld bc,00101h		;6013	01 01 01	. . .
	ld bc,00101h		;6016	01 01 01	. . .
	ld bc,00101h		;6019	01 01 01	. . .
	ld bc,00101h		;601c	01 01 01	. . .
	ld bc,00202h		;601f	01 02 02	. . .
	ld (bc),a		;6022	02		.
	ld (bc),a		;6023	02		.
	ld (bc),a		;6024	02		.
	ld (bc),a		;6025	02		.
	ld (bc),a		;6026	02		.
	ld (bc),a		;6027	02		.
	ld (bc),a		;6028	02		.
	ld (bc),a		;6029	02		.
	ld (bc),a		;602a	02		.
	ld (bc),a		;602b	02		.
	ld (bc),a		;602c	02		.
	ld (bc),a		;602d	02		.
	ld (bc),a		;602e	02		.
	ld (bc),a		;602f	02		.
	inc bc			;6030	03		.
	inc bc			;6031	03		.
	inc bc			;6032	03		.
	inc bc			;6033	03		.
	inc bc			;6034	03		.
	inc bc			;6035	03		.
	inc bc			;6036	03		.
	inc bc			;6037	03		.
	inc bc			;6038	03		.
	inc bc			;6039	03		.
	inc bc			;603a	03		.
	inc bc			;603b	03		.
	inc bc			;603c	03		.
	inc bc			;603d	03		.
	inc bc			;603e	03		.
	inc bc			;603f	03		.
	inc b			;6040	04		.
	inc b			;6041	04		.
	inc b			;6042	04		.
	inc b			;6043	04		.
	inc b			;6044	04		.
	inc b			;6045	04		.
	inc b			;6046	04		.
	inc b			;6047	04		.
	inc b			;6048	04		.
	inc b			;6049	04		.
	inc b			;604a	04		.
	inc b			;604b	04		.
	inc b			;604c	04		.
	inc b			;604d	04		.
	inc b			;604e	04		.
	inc b			;604f	04		.
	dec b			;6050	05		.
	dec b			;6051	05		.
	dec b			;6052	05		.
	dec b			;6053	05		.
	dec b			;6054	05		.
	dec b			;6055	05		.
	dec b			;6056	05		.
	dec b			;6057	05		.
	dec b			;6058	05		.
	dec b			;6059	05		.
	dec b			;605a	05		.
	dec b			;605b	05		.
	dec b			;605c	05		.
	dec b			;605d	05		.
	dec b			;605e	05		.
	dec b			;605f	05		.
	ld b,006h		;6060	06 06		. .
	ld b,006h		;6062	06 06		. .
	ld b,006h		;6064	06 06		. .
	ld b,006h		;6066	06 06		. .
	ld b,006h		;6068	06 06		. .
	ld b,006h		;606a	06 06		. .
	ld b,006h		;606c	06 06		. .
	ld b,006h		;606e	06 06		. .
	rlca			;6070	07		.
	rlca			;6071	07		.
	rlca			;6072	07		.
	rlca			;6073	07		.
	rlca			;6074	07		.
	rlca			;6075	07		.
	rlca			;6076	07		.
	rlca			;6077	07		.
	rlca			;6078	07		.
	rlca			;6079	07		.
	rlca			;607a	07		.
	rlca			;607b	07		.
	rlca			;607c	07		.
	rlca			;607d	07		.
	rlca			;607e	07		.
	rlca			;607f	07		.
l6080h:
	ex af,af'		;6080	08		.
	ex af,af'		;6081	08		.
	ex af,af'		;6082	08		.
	ex af,af'		;6083	08		.
	ex af,af'		;6084	08		.
	ex af,af'		;6085	08		.
	ex af,af'		;6086	08		.
	ex af,af'		;6087	08		.
	ex af,af'		;6088	08		.
	ex af,af'		;6089	08		.
	ex af,af'		;608a	08		.
	ex af,af'		;608b	08		.
	ex af,af'		;608c	08		.
	ex af,af'		;608d	08		.
	ex af,af'		;608e	08		.
	ex af,af'		;608f	08		.
	add hl,bc		;6090	09		.
	add hl,bc		;6091	09		.
	add hl,bc		;6092	09		.
	add hl,bc		;6093	09		.
	add hl,bc		;6094	09		.
	add hl,bc		;6095	09		.
	add hl,bc		;6096	09		.
	add hl,bc		;6097	09		.
	add hl,bc		;6098	09		.
	add hl,bc		;6099	09		.
	add hl,bc		;609a	09		.
	add hl,bc		;609b	09		.
	add hl,bc		;609c	09		.
	add hl,bc		;609d	09		.
	add hl,bc		;609e	09		.
	add hl,bc		;609f	09		.
	ld a,(bc)		;60a0	0a		.
	ld a,(bc)		;60a1	0a		.
	ld a,(bc)		;60a2	0a		.
	ld a,(bc)		;60a3	0a		.
	ld a,(bc)		;60a4	0a		.
	ld a,(bc)		;60a5	0a		.
	ld a,(bc)		;60a6	0a		.
	ld a,(bc)		;60a7	0a		.
	ld a,(bc)		;60a8	0a		.
	ld a,(bc)		;60a9	0a		.
	ld a,(bc)		;60aa	0a		.
	ld a,(bc)		;60ab	0a		.
	ld a,(bc)		;60ac	0a		.
	ld a,(bc)		;60ad	0a		.
	ld a,(bc)		;60ae	0a		.
	ld a,(bc)		;60af	0a		.
	dec bc			;60b0	0b		.
	dec bc			;60b1	0b		.
	dec bc			;60b2	0b		.
	dec bc			;60b3	0b		.
	dec bc			;60b4	0b		.
	dec bc			;60b5	0b		.
	dec bc			;60b6	0b		.
	dec bc			;60b7	0b		.
	dec bc			;60b8	0b		.
	dec bc			;60b9	0b		.
	dec bc			;60ba	0b		.
	dec bc			;60bb	0b		.
	dec bc			;60bc	0b		.
	dec bc			;60bd	0b		.
	dec bc			;60be	0b		.
	dec bc			;60bf	0b		.
	inc c			;60c0	0c		.
	inc c			;60c1	0c		.
	inc c			;60c2	0c		.
	inc c			;60c3	0c		.
	inc c			;60c4	0c		.
	inc c			;60c5	0c		.
	inc c			;60c6	0c		.
	inc c			;60c7	0c		.
	inc c			;60c8	0c		.
	inc c			;60c9	0c		.
	inc c			;60ca	0c		.
	inc c			;60cb	0c		.
	inc c			;60cc	0c		.
	inc c			;60cd	0c		.
	inc c			;60ce	0c		.
	inc c			;60cf	0c		.
	dec c			;60d0	0d		.
	dec c			;60d1	0d		.
	dec c			;60d2	0d		.
	dec c			;60d3	0d		.
	dec c			;60d4	0d		.
	dec c			;60d5	0d		.
	dec c			;60d6	0d		.
	dec c			;60d7	0d		.
	dec c			;60d8	0d		.
	dec c			;60d9	0d		.
	dec c			;60da	0d		.
	dec c			;60db	0d		.
	dec c			;60dc	0d		.
	dec c			;60dd	0d		.
	dec c			;60de	0d		.
	dec c			;60df	0d		.
	ld c,00eh		;60e0	0e 0e		. .
	ld c,00eh		;60e2	0e 0e		. .
	ld c,00eh		;60e4	0e 0e		. .
	ld c,00eh		;60e6	0e 0e		. .
	ld c,00eh		;60e8	0e 0e		. .
	ld c,00eh		;60ea	0e 0e		. .
	ld c,00eh		;60ec	0e 0e		. .
	ld c,00eh		;60ee	0e 0e		. .
	rrca			;60f0	0f		.
	rrca			;60f1	0f		.
	rrca			;60f2	0f		.
	rrca			;60f3	0f		.
	rrca			;60f4	0f		.
	rrca			;60f5	0f		.
	rrca			;60f6	0f		.
	rrca			;60f7	0f		.
	rrca			;60f8	0f		.
	rrca			;60f9	0f		.
	rrca			;60fa	0f		.
	rrca			;60fb	0f		.
	rrca			;60fc	0f		.
	rrca			;60fd	0f		.
	rrca			;60fe	0f		.
	rrca			;60ff	0f		.
	nop			;6100	00		.
	nop			;6101	00		.
	nop			;6102	00		.
	nop			;6103	00		.
	nop			;6104	00		.
	nop			;6105	00		.
	rlca			;6106	07		.
	ld c,00eh		;6107	0e 0e		. .
	rlca			;6109	07		.
	nop			;610a	00		.
	nop			;610b	00		.
	nop			;610c	00		.
	nop			;610d	00		.
	nop			;610e	00		.
	nop			;610f	00		.
	ld c,00eh		;6110	0e 0e		. .
	ld c,00eh		;6112	0e 0e		. .
	ld c,00eh		;6114	0e 0e		. .
	ld c,00eh		;6116	0e 0e		. .
	ld c,00eh		;6118	0e 0e		. .
	ld c,00eh		;611a	0e 0e		. .
	ld c,00eh		;611c	0e 0e		. .
	ld c,00eh		;611e	0e 0e		. .
	nop			;6120	00		.
	nop			;6121	00		.
	nop			;6122	00		.
	nop			;6123	00		.
	nop			;6124	00		.
	nop			;6125	00		.
	rlca			;6126	07		.
	ld c,00eh		;6127	0e 0e		. .
	ld c,007h		;6129	0e 07		. .
	nop			;612b	00		.
	nop			;612c	00		.
	nop			;612d	00		.
	nop			;612e	00		.
	nop			;612f	00		.
	nop			;6130	00		.
	nop			;6131	00		.
	rlca			;6132	07		.
	ld c,00eh		;6133	0e 0e		. .
	ld c,000h		;6135	0e 00		. .
	nop			;6137	00		.
	nop			;6138	00		.
	nop			;6139	00		.
	rlca			;613a	07		.
	ld c,00eh		;613b	0e 0e		. .
	ld c,000h		;613d	0e 00		. .
	nop			;613f	00		.
	nop			;6140	00		.
	nop			;6141	00		.
	nop			;6142	00		.
	nop			;6143	00		.
	nop			;6144	00		.
	ld b,00ah		;6145	06 0a		. .
	ld c,00eh		;6147	0e 0e		. .
	ld c,00ah		;6149	0e 0a		. .
	ld b,000h		;614b	06 00		. .
	nop			;614d	00		.
	nop			;614e	00		.
	nop			;614f	00		.
	rlca			;6150	07		.
	ld c,00eh		;6151	0e 0e		. .
	ld c,00eh		;6153	0e 0e		. .
	ld c,00eh		;6155	0e 0e		. .
	nop			;6157	00		.
	rlca			;6158	07		.
	ld c,00eh		;6159	0e 0e		. .
	ld c,00eh		;615b	0e 0e		. .
	ld c,00eh		;615d	0e 0e		. .
	nop			;615f	00		.
	nop			;6160	00		.
	nop			;6161	00		.
	nop			;6162	00		.
	nop			;6163	00		.
	dec c			;6164	0d		.
	ex af,af'		;6165	08		.
	ex af,af'		;6166	08		.
	ld c,00eh		;6167	0e 0e		. .
	ex af,af'		;6169	08		.
	ex af,af'		;616a	08		.
	dec c			;616b	0d		.
	nop			;616c	00		.
	nop			;616d	00		.
	nop			;616e	00		.
	nop			;616f	00		.
	nop			;6170	00		.
	rlca			;6171	07		.
	rlca			;6172	07		.
	ld c,00eh		;6173	0e 0e		. .
	ld c,00eh		;6175	0e 0e		. .
	nop			;6177	00		.
	rlca			;6178	07		.
	rlca			;6179	07		.
	ld c,00eh		;617a	0e 0e		. .
	ld c,00eh		;617c	0e 0e		. .
	nop			;617e	00		.
	nop			;617f	00		.
	nop			;6180	00		.
	nop			;6181	00		.
	dec c			;6182	0d		.
	ex af,af'		;6183	08		.
	ex af,af'		;6184	08		.
	ld c,008h		;6185	0e 08		. .
	ld c,00eh		;6187	0e 0e		. .
	ex af,af'		;6189	08		.
	ld c,008h		;618a	0e 08		. .
	ex af,af'		;618c	08		.
	dec c			;618d	0d		.
	nop			;618e	00		.
	nop			;618f	00		.
	nop			;6190	00		.
	rlca			;6191	07		.
	rlca			;6192	07		.
	ld c,00eh		;6193	0e 0e		. .
	ld c,00eh		;6195	0e 0e		. .
	nop			;6197	00		.
	rlca			;6198	07		.
	rlca			;6199	07		.
	ld c,00eh		;619a	0e 0e		. .
	ld c,00eh		;619c	0e 0e		. .
	nop			;619e	00		.
	nop			;619f	00		.
	ld b,006h		;61a0	06 06		. .
	ld a,(bc)		;61a2	0a		.
	ld b,00ah		;61a3	06 0a		. .
	ld c,00ah		;61a5	0e 0a		. .
	ld c,00eh		;61a7	0e 0e		. .
	ld a,(bc)		;61a9	0a		.
	ld c,00ah		;61aa	0e 0a		. .
	ld b,00ah		;61ac	06 0a		. .
	ld b,006h		;61ae	06 06		. .
	rlca			;61b0	07		.
	ld c,00eh		;61b1	0e 0e		. .
	ld c,00eh		;61b3	0e 0e		. .
	ld c,00eh		;61b5	0e 0e		. .
	nop			;61b7	00		.
	rlca			;61b8	07		.
	ld c,00eh		;61b9	0e 0e		. .
	ld c,00eh		;61bb	0e 0e		. .
	ld c,00eh		;61bd	0e 0e		. .
	nop			;61bf	00		.
	inc c			;61c0	0c		.
	ld c,00ch		;61c1	0e 0c		. .
	dec c			;61c3	0d		.
	dec c			;61c4	0d		.
	rrca			;61c5	0f		.
	add hl,bc		;61c6	09		.
	rrca			;61c7	0f		.
	ld c,008h		;61c8	0e 08		. .
	inc c			;61ca	0c		.
	dec c			;61cb	0d		.
	rrca			;61cc	0f		.
	ex af,af'		;61cd	08		.
	dec b			;61ce	05		.
	dec c			;61cf	0d		.
	ld c,005h		;61d0	0e 05		. .
	dec b			;61d2	05		.
	dec c			;61d3	0d		.
	rrca			;61d4	0f		.
	dec b			;61d5	05		.
	rrca			;61d6	0f		.
	ex af,af'		;61d7	08		.
	ex af,af'		;61d8	08		.
	ex af,af'		;61d9	08		.
	ex af,af'		;61da	08		.
	ex af,af'		;61db	08		.
	ld c,005h		;61dc	0e 05		. .
	dec c			;61de	0d		.
	rrca			;61df	0f		.
	ex af,af'		;61e0	08		.
	ld c,008h		;61e1	0e 08		. .
	dec b			;61e3	05		.
	dec c			;61e4	0d		.
	rrca			;61e5	0f		.
	add hl,bc		;61e6	09		.
	rrca			;61e7	0f		.
	ex af,af'		;61e8	08		.
	inc c			;61e9	0c		.
	dec c			;61ea	0d		.
	rrca			;61eb	0f		.
	dec c			;61ec	0d		.
	inc c			;61ed	0c		.
	inc c			;61ee	0c		.
	inc c			;61ef	0c		.
	nop			;61f0	00		.
	nop			;61f1	00		.
	nop			;61f2	00		.
	nop			;61f3	00		.
	nop			;61f4	00		.
	nop			;61f5	00		.
	nop			;61f6	00		.
	ld c,00ah		;61f7	0e 0a		. .
	nop			;61f9	00		.
	nop			;61fa	00		.
	nop			;61fb	00		.
	nop			;61fc	00		.
	nop			;61fd	00		.
	nop			;61fe	00		.
	nop			;61ff	00		.
	nop			;6200	00		.
	nop			;6201	00		.
	ld a,(bc)		;6202	0a		.
	ld c,00ah		;6203	0e 0a		. .
	ld c,00ah		;6205	0e 0a		. .
	ld c,00ah		;6207	0e 0a		. .
	ld c,00ah		;6209	0e 0a		. .
	ld c,00ah		;620b	0e 0a		. .
	ld c,000h		;620d	0e 00		. .
	nop			;620f	00		.
	ld a,(bc)		;6210	0a		.
	ld c,00ah		;6211	0e 0a		. .
	ld c,00ah		;6213	0e 0a		. .
	ld c,00ah		;6215	0e 0a		. .
	ld c,00ah		;6217	0e 0a		. .
	ld c,00ah		;6219	0e 0a		. .
	ld c,00ah		;621b	0e 0a		. .
	ld c,00ah		;621d	0e 0a		. .
	ld c,000h		;621f	0e 00		. .
	nop			;6221	00		.
	nop			;6222	00		.
	nop			;6223	00		.
	nop			;6224	00		.
	nop			;6225	00		.
	ld b,00eh		;6226	06 0e		. .
	ld a,(bc)		;6228	0a		.
	ld b,000h		;6229	06 00		. .
	nop			;622b	00		.
	nop			;622c	00		.
	nop			;622d	00		.
	nop			;622e	00		.
	nop			;622f	00		.
	nop			;6230	00		.
	ld c,00eh		;6231	0e 0e		. .
	ex af,af'		;6233	08		.
	dec c			;6234	0d		.
	ex af,af'		;6235	08		.
	ld c,00eh		;6236	0e 0e		. .
	ex af,af'		;6238	08		.
	dec c			;6239	0d		.
	dec c			;623a	0d		.
	ex af,af'		;623b	08		.
	ex af,af'		;623c	08		.
	ld c,000h		;623d	0e 00		. .
	nop			;623f	00		.
	dec c			;6240	0d		.
	dec c			;6241	0d		.
	ex af,af'		;6242	08		.
	ex af,af'		;6243	08		.
	ld c,00eh		;6244	0e 0e		. .
	ex af,af'		;6246	08		.
	ex af,af'		;6247	08		.
	dec c			;6248	0d		.
	ex af,af'		;6249	08		.
	dec c			;624a	0d		.
	dec c			;624b	0d		.
	add hl,bc		;624c	09		.
	dec c			;624d	0d		.
	add hl,bc		;624e	09		.
	add hl,bc		;624f	09		.
	inc b			;6250	04		.
	ld c,00eh		;6251	0e 0e		. .
	inc b			;6253	04		.
	inc b			;6254	04		.
	ld b,006h		;6255	06 06		. .
	ld b,006h		;6257	06 06		. .
	ld b,006h		;6259	06 06		. .
	inc b			;625b	04		.
	inc b			;625c	04		.
	ld c,00eh		;625d	0e 0e		. .
	inc b			;625f	04		.
	nop			;6260	00		.
	add hl,bc		;6261	09		.
	ld c,00dh		;6262	0e 0d		. .
	ex af,af'		;6264	08		.
	ld c,008h		;6265	0e 08		. .
	ld c,009h		;6267	0e 09		. .
	ld c,008h		;6269	0e 08		. .
	dec c			;626b	0d		.
	ex af,af'		;626c	08		.
	ld c,009h		;626d	0e 09		. .
	nop			;626f	00		.
	inc c			;6270	0c		.
	dec bc			;6271	0b		.
	inc c			;6272	0c		.
	rrca			;6273	0f		.
	ld c,00ch		;6274	0e 0c		. .
	dec bc			;6276	0b		.
	rrca			;6277	0f		.
	inc c			;6278	0c		.
	ld (bc),a		;6279	02		.
	inc bc			;627a	03		.
	ld c,003h		;627b	0e 03		. .
	ld (bc),a		;627d	02		.
	ld bc,00203h		;627e	01 03 02	. . .
	ld bc,00e03h		;6281	01 03 0e	. . .
	inc bc			;6284	03		.
	ld (bc),a		;6285	02		.
	ld bc,00f0ch		;6286	01 0c 0f	. . .
	dec bc			;6289	0b		.
	rrca			;628a	0f		.
	inc c			;628b	0c		.
	rrca			;628c	0f		.
	inc c			;628d	0c		.
	inc c			;628e	0c		.
	rrca			;628f	0f		.
	nop			;6290	00		.
	ld c,00eh		;6291	0e 0e		. .
	ld c,00eh		;6293	0e 0e		. .
	ld c,00eh		;6295	0e 0e		. .
	nop			;6297	00		.
	rlca			;6298	07		.
	rlca			;6299	07		.
	rlca			;629a	07		.
	ld c,008h		;629b	0e 08		. .
	ex af,af'		;629d	08		.
	ld b,00eh		;629e	06 0e		. .
	nop			;62a0	00		.
	nop			;62a1	00		.
	nop			;62a2	00		.
	nop			;62a3	00		.
	ld a,(bc)		;62a4	0a		.
	ex af,af'		;62a5	08		.
	ex af,af'		;62a6	08		.
	ex af,af'		;62a7	08		.
	ex af,af'		;62a8	08		.
	ex af,af'		;62a9	08		.
	ex af,af'		;62aa	08		.
	ex af,af'		;62ab	08		.
	ld c,00eh		;62ac	0e 0e		. .
	ld c,00eh		;62ae	0e 0e		. .
	dec c			;62b0	0d		.
	dec c			;62b1	0d		.
	ld c,00eh		;62b2	0e 0e		. .
	ld c,00ah		;62b4	0e 0a		. .
	nop			;62b6	00		.
	nop			;62b7	00		.
	nop			;62b8	00		.
	nop			;62b9	00		.
	nop			;62ba	00		.
	nop			;62bb	00		.
	nop			;62bc	00		.
	nop			;62bd	00		.
	nop			;62be	00		.
	nop			;62bf	00		.
	ld c,00eh		;62c0	0e 0e		. .
	ld c,00eh		;62c2	0e 0e		. .
	ld c,00eh		;62c4	0e 0e		. .
	ld c,000h		;62c6	0e 00		. .
	rlca			;62c8	07		.
	rlca			;62c9	07		.
	rlca			;62ca	07		.
	dec c			;62cb	0d		.
	ld c,008h		;62cc	0e 08		. .
	ex af,af'		;62ce	08		.
	ld b,000h		;62cf	06 00		. .
	nop			;62d1	00		.
	nop			;62d2	00		.
	ld a,(bc)		;62d3	0a		.
	ex af,af'		;62d4	08		.
	ex af,af'		;62d5	08		.
	ex af,af'		;62d6	08		.
	ex af,af'		;62d7	08		.
	ex af,af'		;62d8	08		.
	ex af,af'		;62d9	08		.
	ex af,af'		;62da	08		.
	ex af,af'		;62db	08		.
	ld c,00eh		;62dc	0e 0e		. .
	ld c,00eh		;62de	0e 0e		. .
	dec c			;62e0	0d		.
	ex af,af'		;62e1	08		.
	dec c			;62e2	0d		.
	ld c,00eh		;62e3	0e 0e		. .
	ld c,00ah		;62e5	0e 0a		. .
	nop			;62e7	00		.
	nop			;62e8	00		.
	nop			;62e9	00		.
	nop			;62ea	00		.
	nop			;62eb	00		.
	nop			;62ec	00		.
	nop			;62ed	00		.
	nop			;62ee	00		.
	nop			;62ef	00		.
	nop			;62f0	00		.
	ld c,00eh		;62f1	0e 0e		. .
	ld c,00eh		;62f3	0e 0e		. .
	ld c,00eh		;62f5	0e 0e		. .
	ld c,007h		;62f7	0e 07		. .
	rlca			;62f9	07		.
	rlca			;62fa	07		.
	rlca			;62fb	07		.
	dec c			;62fc	0d		.
	ld c,008h		;62fd	0e 08		. .
	ld c,000h		;62ff	0e 00		. .
	nop			;6301	00		.
	nop			;6302	00		.
	nop			;6303	00		.
	ld a,(bc)		;6304	0a		.
	ex af,af'		;6305	08		.
	ex af,af'		;6306	08		.
	ex af,af'		;6307	08		.
	ex af,af'		;6308	08		.
	ex af,af'		;6309	08		.
	ex af,af'		;630a	08		.
	ex af,af'		;630b	08		.
	ld c,00eh		;630c	0e 0e		. .
	ld c,00eh		;630e	0e 0e		. .
	ld c,00dh		;6310	0e 0d		. .
	dec c			;6312	0d		.
	ld c,00eh		;6313	0e 0e		. .
	ld a,(bc)		;6315	0a		.
	nop			;6316	00		.
	nop			;6317	00		.
	nop			;6318	00		.
	nop			;6319	00		.
	nop			;631a	00		.
	nop			;631b	00		.
	nop			;631c	00		.
	nop			;631d	00		.
	nop			;631e	00		.
	nop			;631f	00		.
	nop			;6320	00		.
	nop			;6321	00		.
	nop			;6322	00		.
	nop			;6323	00		.
	nop			;6324	00		.
	nop			;6325	00		.
	rlca			;6326	07		.
	ld c,007h		;6327	0e 07		. .
	nop			;6329	00		.
	nop			;632a	00		.
	nop			;632b	00		.
	nop			;632c	00		.
	nop			;632d	00		.
	nop			;632e	00		.
	nop			;632f	00		.
	nop			;6330	00		.
	rlca			;6331	07		.
	rlca			;6332	07		.
	ld c,00eh		;6333	0e 0e		. .
	ld c,00eh		;6335	0e 0e		. .
	nop			;6337	00		.
	nop			;6338	00		.
	rlca			;6339	07		.
	rlca			;633a	07		.
	ld c,00eh		;633b	0e 0e		. .
	ld c,00eh		;633d	0e 0e		. .
	nop			;633f	00		.
	nop			;6340	00		.
	nop			;6341	00		.
	nop			;6342	00		.
	rlca			;6343	07		.
	ld c,007h		;6344	0e 07		. .
	nop			;6346	00		.
	nop			;6347	00		.
	nop			;6348	00		.
	nop			;6349	00		.
	rlca			;634a	07		.
	ld c,007h		;634b	0e 07		. .
	nop			;634d	00		.
	nop			;634e	00		.
	nop			;634f	00		.
	nop			;6350	00		.
	nop			;6351	00		.
	nop			;6352	00		.
	nop			;6353	00		.
	ld c,00eh		;6354	0e 0e		. .
	ld b,00ah		;6356	06 0a		. .
	ld c,00ah		;6358	0e 0a		. .
	ld b,00eh		;635a	06 0e		. .
	ld c,000h		;635c	0e 00		. .
	nop			;635e	00		.
	nop			;635f	00		.
	ex af,af'		;6360	08		.
	ld c,008h		;6361	0e 08		. .
	dec b			;6363	05		.
	dec c			;6364	0d		.
	rrca			;6365	0f		.
	add hl,bc		;6366	09		.
	rrca			;6367	0f		.
	ex af,af'		;6368	08		.
	inc c			;6369	0c		.
	dec c			;636a	0d		.
	rrca			;636b	0f		.
	dec c			;636c	0d		.
	inc c			;636d	0c		.
	inc c			;636e	0c		.
	inc c			;636f	0c		.
	dec bc			;6370	0b		.
	dec bc			;6371	0b		.
	dec bc			;6372	0b		.
	dec bc			;6373	0b		.
	ld c,00eh		;6374	0e 0e		. .
	ld c,00eh		;6376	0e 0e		. .
	dec bc			;6378	0b		.
	dec bc			;6379	0b		.
	dec bc			;637a	0b		.
	dec bc			;637b	0b		.
	dec bc			;637c	0b		.
	dec bc			;637d	0b		.
	dec bc			;637e	0b		.
	dec bc			;637f	0b		.
	rlca			;6380	07		.
	rlca			;6381	07		.
	rlca			;6382	07		.
	rlca			;6383	07		.
	dec bc			;6384	0b		.
	dec bc			;6385	0b		.
	dec bc			;6386	0b		.
	dec bc			;6387	0b		.
	rlca			;6388	07		.
	rlca			;6389	07		.
	rlca			;638a	07		.
	rlca			;638b	07		.
	rlca			;638c	07		.
	rlca			;638d	07		.
	rlca			;638e	07		.
	rlca			;638f	07		.
	nop			;6390	00		.
	nop			;6391	00		.
	ex af,af'		;6392	08		.
	ld c,00eh		;6393	0e 0e		. .
	ex af,af'		;6395	08		.
	ex af,af'		;6396	08		.
	dec c			;6397	0d		.
	rlca			;6398	07		.
	ex af,af'		;6399	08		.
	ex af,af'		;639a	08		.
	ld c,008h		;639b	0e 08		. .
	ex af,af'		;639d	08		.
	dec c			;639e	0d		.
	nop			;639f	00		.
	nop			;63a0	00		.
	nop			;63a1	00		.
	nop			;63a2	00		.
	nop			;63a3	00		.
	ld c,008h		;63a4	0e 08		. .
	dec c			;63a6	0d		.
	dec c			;63a7	0d		.
	ex af,af'		;63a8	08		.
	rlca			;63a9	07		.
	dec c			;63aa	0d		.
	ex af,af'		;63ab	08		.
	ex af,af'		;63ac	08		.
	nop			;63ad	00		.
	nop			;63ae	00		.
	nop			;63af	00		.
	nop			;63b0	00		.
	nop			;63b1	00		.
	nop			;63b2	00		.
	nop			;63b3	00		.
	nop			;63b4	00		.
	rlca			;63b5	07		.
	ld c,008h		;63b6	0e 08		. .
	ex af,af'		;63b8	08		.
	dec c			;63b9	0d		.
	dec c			;63ba	0d		.
	rlca			;63bb	07		.
	nop			;63bc	00		.
	nop			;63bd	00		.
	nop			;63be	00		.
	nop			;63bf	00		.
	nop			;63c0	00		.
	nop			;63c1	00		.
	nop			;63c2	00		.
	nop			;63c3	00		.
	ld c,008h		;63c4	0e 08		. .
	dec c			;63c6	0d		.
	rlca			;63c7	07		.
	ex af,af'		;63c8	08		.
	ld c,00eh		;63c9	0e 0e		. .
	ex af,af'		;63cb	08		.
	dec c			;63cc	0d		.
	nop			;63cd	00		.
	nop			;63ce	00		.
	nop			;63cf	00		.
	dec bc			;63d0	0b		.
	dec bc			;63d1	0b		.
	dec bc			;63d2	0b		.
	ld b,006h		;63d3	06 06		. .
	ld c,00bh		;63d5	0e 0b		. .
	dec bc			;63d7	0b		.
	dec bc			;63d8	0b		.
	dec bc			;63d9	0b		.
	dec bc			;63da	0b		.
	dec bc			;63db	0b		.
	dec c			;63dc	0d		.
	dec bc			;63dd	0b		.
	dec bc			;63de	0b		.
	nop			;63df	00		.
	ld c,h			;63e0	4c		L
	ld c,h			;63e1	4c		L
	ld c,h			;63e2	4c		L
	ld c,h			;63e3	4c		L
	ld c,l			;63e4	4d		M
	ld c,l			;63e5	4d		M
	ld c,h			;63e6	4c		L
	ld c,h			;63e7	4c		L
	ld c,h			;63e8	4c		L
	ld c,h			;63e9	4c		L
	ld c,h			;63ea	4c		L
	ld c,h			;63eb	4c		L
	ld c,a			;63ec	4f		O
	ld c,h			;63ed	4c		L
	ld c,h			;63ee	4c		L
	ld b,b			;63ef	40		@
	dec bc			;63f0	0b		.
	dec bc			;63f1	0b		.
	dec bc			;63f2	0b		.
	dec bc			;63f3	0b		.
	dec bc			;63f4	0b		.
	dec bc			;63f5	0b		.
	dec bc			;63f6	0b		.
	dec bc			;63f7	0b		.
	dec bc			;63f8	0b		.
	dec bc			;63f9	0b		.
	dec bc			;63fa	0b		.
	dec bc			;63fb	0b		.
	ld a,(bc)		;63fc	0a		.
	dec bc			;63fd	0b		.
	dec bc			;63fe	0b		.
	dec bc			;63ff	0b		.
	ld c,h			;6400	4c		L
	ld c,h			;6401	4c		L
	ld c,h			;6402	4c		L
	ld c,h			;6403	4c		L
	ld c,h			;6404	4c		L
	ld c,h			;6405	4c		L
	ld c,(hl)		;6406	4e		N
	ld c,h			;6407	4c		L
	ld c,h			;6408	4c		L
	ld c,(hl)		;6409	4e		N
	ld c,h			;640a	4c		L
	ld c,h			;640b	4c		L
	ld c,a			;640c	4f		O
	ld c,h			;640d	4c		L
	ld c,h			;640e	4c		L
	ld c,h			;640f	4c		L
	dec bc			;6410	0b		.
	dec bc			;6411	0b		.
	dec bc			;6412	0b		.
	ld a,(bc)		;6413	0a		.
	dec bc			;6414	0b		.
	dec bc			;6415	0b		.
	dec bc			;6416	0b		.
	dec bc			;6417	0b		.
	dec bc			;6418	0b		.
	dec bc			;6419	0b		.
	dec bc			;641a	0b		.
	dec bc			;641b	0b		.
	dec bc			;641c	0b		.
	dec bc			;641d	0b		.
	dec bc			;641e	0b		.
	dec bc			;641f	0b		.
	ld c,h			;6420	4c		L
	ld c,h			;6421	4c		L
	ld c,h			;6422	4c		L
	ld c,a			;6423	4f		O
	ld c,h			;6424	4c		L
	ld c,h			;6425	4c		L
	ld c,(hl)		;6426	4e		N
	ld c,h			;6427	4c		L
	ld c,h			;6428	4c		L
	ld c,(hl)		;6429	4e		N
	ld c,h			;642a	4c		L
	ld c,h			;642b	4c		L
	ld c,h			;642c	4c		L
	ld c,h			;642d	4c		L
	ld c,h			;642e	4c		L
	ld c,h			;642f	4c		L
	inc c			;6430	0c		.
	dec bc			;6431	0b		.
	inc c			;6432	0c		.
	rrca			;6433	0f		.
	ld c,00ch		;6434	0e 0c		. .
	dec bc			;6436	0b		.
	rrca			;6437	0f		.
	inc c			;6438	0c		.
	inc b			;6439	04		.
	dec b			;643a	05		.
	ld c,005h		;643b	0e 05		. .
	inc b			;643d	04		.
	inc bc			;643e	03		.
	dec b			;643f	05		.
	inc b			;6440	04		.
	inc bc			;6441	03		.
	dec b			;6442	05		.
	ld c,005h		;6443	0e 05		. .
	inc b			;6445	04		.
	inc bc			;6446	03		.
	inc c			;6447	0c		.
	rrca			;6448	0f		.
	dec bc			;6449	0b		.
	rrca			;644a	0f		.
	inc c			;644b	0c		.
	rrca			;644c	0f		.
	inc c			;644d	0c		.
	inc c			;644e	0c		.
	rrca			;644f	0f		.
	ld b,l			;6450	45		E
	ld b,l			;6451	45		E
	ld b,l			;6452	45		E
	ld b,l			;6453	45		E
	ld b,l			;6454	45		E
	ld b,l			;6455	45		E
	ld b,l			;6456	45		E
	ld b,l			;6457	45		E
	ld b,l			;6458	45		E
	ld b,l			;6459	45		E
	ld b,l			;645a	45		E
	ld b,l			;645b	45		E
	ld b,l			;645c	45		E
	ld b,l			;645d	45		E
	ld b,l			;645e	45		E
	ld b,l			;645f	45		E
	ld b,(hl)		;6460	46		F
	ld b,(hl)		;6461	46		F
	ld b,(hl)		;6462	46		F
	ld b,(hl)		;6463	46		F
	ld b,(hl)		;6464	46		F
	ld b,(hl)		;6465	46		F
	ld b,(hl)		;6466	46		F
	ld b,(hl)		;6467	46		F
	ld b,(hl)		;6468	46		F
	ld b,(hl)		;6469	46		F
	ld b,(hl)		;646a	46		F
	ld b,(hl)		;646b	46		F
	ld b,(hl)		;646c	46		F
	ld b,(hl)		;646d	46		F
	ld b,(hl)		;646e	46		F
	ld b,(hl)		;646f	46		F
	ld b,a			;6470	47		G
	ld b,a			;6471	47		G
	ld b,a			;6472	47		G
	ld b,a			;6473	47		G
	ld b,a			;6474	47		G
	ld b,a			;6475	47		G
	ld b,a			;6476	47		G
	ld b,a			;6477	47		G
	ld b,a			;6478	47		G
	ld b,a			;6479	47		G
	ld b,a			;647a	47		G
	ld b,a			;647b	47		G
	ld b,a			;647c	47		G
	ld b,a			;647d	47		G
	ld b,a			;647e	47		G
	ld b,a			;647f	47		G
	ld c,b			;6480	48		H
	ld c,b			;6481	48		H
	ld c,b			;6482	48		H
	ld c,b			;6483	48		H
	ld c,b			;6484	48		H
	ld c,b			;6485	48		H
	ld c,b			;6486	48		H
	ld c,b			;6487	48		H
	ld c,b			;6488	48		H
	ld c,b			;6489	48		H
	ld c,b			;648a	48		H
	ld c,b			;648b	48		H
	ld c,b			;648c	48		H
	ld c,b			;648d	48		H
	ld c,b			;648e	48		H
	ld c,b			;648f	48		H
	ld c,c			;6490	49		I
	ld c,c			;6491	49		I
	ld c,c			;6492	49		I
	ld c,c			;6493	49		I
	ld c,c			;6494	49		I
	ld c,c			;6495	49		I
	ld c,c			;6496	49		I
	ld c,c			;6497	49		I
	ld c,c			;6498	49		I
	ld c,c			;6499	49		I
	ld c,c			;649a	49		I
	ld c,c			;649b	49		I
	ld c,c			;649c	49		I
	ld c,c			;649d	49		I
	ld c,c			;649e	49		I
	ld c,c			;649f	49		I
	ld c,d			;64a0	4a		J
	ld c,d			;64a1	4a		J
	ld c,d			;64a2	4a		J
	ld c,d			;64a3	4a		J
	ld c,d			;64a4	4a		J
	ld c,d			;64a5	4a		J
	ld c,d			;64a6	4a		J
	ld c,d			;64a7	4a		J
	ld c,d			;64a8	4a		J
	ld c,d			;64a9	4a		J
	ld c,d			;64aa	4a		J
	ld c,d			;64ab	4a		J
	ld c,d			;64ac	4a		J
	ld c,d			;64ad	4a		J
	ld c,d			;64ae	4a		J
	ld c,d			;64af	4a		J
	ld c,e			;64b0	4b		K
	ld c,e			;64b1	4b		K
	ld c,e			;64b2	4b		K
	ld c,e			;64b3	4b		K
	ld c,e			;64b4	4b		K
	ld c,e			;64b5	4b		K
	ld c,e			;64b6	4b		K
	ld c,e			;64b7	4b		K
	ld c,e			;64b8	4b		K
	ld c,e			;64b9	4b		K
	ld c,e			;64ba	4b		K
	ld c,e			;64bb	4b		K
	ld c,e			;64bc	4b		K
	ld c,e			;64bd	4b		K
	ld c,e			;64be	4b		K
	ld c,e			;64bf	4b		K
	ld c,h			;64c0	4c		L
	ld c,h			;64c1	4c		L
	ld c,h			;64c2	4c		L
	ld c,h			;64c3	4c		L
	ld c,h			;64c4	4c		L
	ld c,h			;64c5	4c		L
	ld c,h			;64c6	4c		L
	ld c,h			;64c7	4c		L
	ld c,h			;64c8	4c		L
	ld c,h			;64c9	4c		L
	ld c,h			;64ca	4c		L
	ld c,h			;64cb	4c		L
	ld c,h			;64cc	4c		L
	ld c,h			;64cd	4c		L
	ld c,h			;64ce	4c		L
	ld c,h			;64cf	4c		L
	ld c,l			;64d0	4d		M
	ld c,l			;64d1	4d		M
	ld c,l			;64d2	4d		M
	ld c,l			;64d3	4d		M
	ld c,l			;64d4	4d		M
	ld c,l			;64d5	4d		M
	ld c,l			;64d6	4d		M
	ld c,l			;64d7	4d		M
	ld c,l			;64d8	4d		M
	ld c,l			;64d9	4d		M
	ld c,l			;64da	4d		M
	ld c,l			;64db	4d		M
	ld c,l			;64dc	4d		M
	ld c,l			;64dd	4d		M
	ld c,l			;64de	4d		M
	ld c,l			;64df	4d		M
	ld c,(hl)		;64e0	4e		N
	ld c,(hl)		;64e1	4e		N
	ld c,(hl)		;64e2	4e		N
	ld c,(hl)		;64e3	4e		N
	ld c,(hl)		;64e4	4e		N
	ld c,(hl)		;64e5	4e		N
	ld c,(hl)		;64e6	4e		N
	ld c,(hl)		;64e7	4e		N
	ld c,(hl)		;64e8	4e		N
	ld c,(hl)		;64e9	4e		N
	ld c,(hl)		;64ea	4e		N
	ld c,(hl)		;64eb	4e		N
	ld c,(hl)		;64ec	4e		N
	ld c,(hl)		;64ed	4e		N
	ld c,(hl)		;64ee	4e		N
	ld c,(hl)		;64ef	4e		N
	ld c,a			;64f0	4f		O
	ld c,a			;64f1	4f		O
	ld c,a			;64f2	4f		O
	ld c,a			;64f3	4f		O
	ld c,a			;64f4	4f		O
	ld c,a			;64f5	4f		O
	ld c,a			;64f6	4f		O
	ld c,a			;64f7	4f		O
	ld c,a			;64f8	4f		O
	ld c,a			;64f9	4f		O
	ld c,a			;64fa	4f		O
	ld c,a			;64fb	4f		O
	ld c,a			;64fc	4f		O
	ld c,a			;64fd	4f		O
	ld c,a			;64fe	4f		O
	ld c,a			;64ff	4f		O
	nop			;6500	00		.
	ld b,006h		;6501	06 06		. .
	ld b,00dh		;6503	06 0d		. .
	dec bc			;6505	0b		.
	dec bc			;6506	0b		.
	dec bc			;6507	0b		.
	dec bc			;6508	0b		.
	dec bc			;6509	0b		.
	dec bc			;650a	0b		.
	dec bc			;650b	0b		.
	dec bc			;650c	0b		.
	dec bc			;650d	0b		.
	dec bc			;650e	0b		.
	dec bc			;650f	0b		.
	ld b,b			;6510	40		@
	ld c,d			;6511	4a		J
	ld c,d			;6512	4a		J
	ld c,d			;6513	4a		J
	ld c,(hl)		;6514	4e		N
	ld c,(hl)		;6515	4e		N
	ld c,(hl)		;6516	4e		N
	ld c,h			;6517	4c		L
	ld c,h			;6518	4c		L
	ld c,h			;6519	4c		L
	ld c,h			;651a	4c		L
	ld c,h			;651b	4c		L
	ld c,h			;651c	4c		L
	ld c,h			;651d	4c		L
	ld c,h			;651e	4c		L
	ld c,h			;651f	4c		L
	nop			;6520	00		.
	ld b,006h		;6521	06 06		. .
	ld b,00dh		;6523	06 0d		. .
	ld b,006h		;6525	06 06		. .
	ld b,006h		;6527	06 06		. .
	ld b,00ah		;6529	06 0a		. .
	dec c			;652b	0d		.
	ld a,(bc)		;652c	0a		.
	ld b,006h		;652d	06 06		. .
	ld b,040h		;652f	06 40		. @
	ld c,d			;6531	4a		J
	ld c,d			;6532	4a		J
	ld c,d			;6533	4a		J
	ld c,(hl)		;6534	4e		N
	ld c,d			;6535	4a		J
	ld c,d			;6536	4a		J
	ld c,l			;6537	4d		M
	ld c,l			;6538	4d		M
	ld c,d			;6539	4a		J
	ld c,l			;653a	4d		M
	ld c,(hl)		;653b	4e		N
	ld c,l			;653c	4d		M
	ld c,l			;653d	4d		M
	ld c,l			;653e	4d		M
	ld c,l			;653f	4d		M
	ld c,00bh		;6540	0e 0b		. .
	dec bc			;6542	0b		.
	dec bc			;6543	0b		.
	dec bc			;6544	0b		.
	dec bc			;6545	0b		.
	ld b,00bh		;6546	06 0b		. .
	dec bc			;6548	0b		.
	dec bc			;6549	0b		.
	dec bc			;654a	0b		.
	dec bc			;654b	0b		.
	dec bc			;654c	0b		.
	dec bc			;654d	0b		.
	dec bc			;654e	0b		.
	dec bc			;654f	0b		.
	ld c,a			;6550	4f		O
	ld c,h			;6551	4c		L
	ld c,h			;6552	4c		L
	ld c,h			;6553	4c		L
	ld c,h			;6554	4c		L
	ld c,h			;6555	4c		L
	ld c,a			;6556	4f		O
	ld b,(hl)		;6557	46		F
	ld b,(hl)		;6558	46		F
	ld c,h			;6559	4c		L
	ld c,h			;655a	4c		L
	ld c,h			;655b	4c		L
	ld c,h			;655c	4c		L
	ld c,h			;655d	4c		L
	ld c,h			;655e	4c		L
	ld c,h			;655f	4c		L
	nop			;6560	00		.
	inc c			;6561	0c		.
	dec bc			;6562	0b		.
	ld b,006h		;6563	06 06		. .
	ld b,00bh		;6565	06 0b		. .
	dec bc			;6567	0b		.
	dec bc			;6568	0b		.
	dec bc			;6569	0b		.
	ld b,006h		;656a	06 06		. .
	ld b,00bh		;656c	06 0b		. .
	dec bc			;656e	0b		.
	dec bc			;656f	0b		.
	ld b,b			;6570	40		@
	ld c,(hl)		;6571	4e		N
	ld c,h			;6572	4c		L
	ld c,d			;6573	4a		J
	ld c,e			;6574	4b		K
	ld c,e			;6575	4b		K
	ld c,h			;6576	4c		L
	ld c,h			;6577	4c		L
	ld c,h			;6578	4c		L
	ld c,h			;6579	4c		L
	ld c,d			;657a	4a		J
	ld c,e			;657b	4b		K
	ld c,h			;657c	4c		L
	ld c,h			;657d	4c		L
	ld c,h			;657e	4c		L
	ld c,h			;657f	4c		L
	nop			;6580	00		.
	inc bc			;6581	03		.
	inc bc			;6582	03		.
	ld (bc),a		;6583	02		.
	ld (bc),a		;6584	02		.
	ld (bc),a		;6585	02		.
	ld (bc),a		;6586	02		.
	ld (bc),a		;6587	02		.
	ld (bc),a		;6588	02		.
	ld (bc),a		;6589	02		.
	ld (bc),a		;658a	02		.
	ld (bc),a		;658b	02		.
	ld (bc),a		;658c	02		.
	ld (bc),a		;658d	02		.
	ld (bc),a		;658e	02		.
	ld (bc),a		;658f	02		.
	ld (bc),a		;6590	02		.
	ld c,00eh		;6591	0e 0e		. .
	inc bc			;6593	03		.
	inc bc			;6594	03		.
	ld (bc),a		;6595	02		.
	ld c,008h		;6596	0e 08		. .
	ld b,00dh		;6598	06 0d		. .
	inc bc			;659a	03		.
	ld c,00eh		;659b	0e 0e		. .
	inc bc			;659d	03		.
	ld (bc),a		;659e	02		.
	ld bc,00b0bh		;659f	01 0b 0b	. . .
	ld c,00eh		;65a2	0e 0e		. .
	ld b,00eh		;65a4	06 0e		. .
	ld b,006h		;65a6	06 06		. .
	ld b,006h		;65a8	06 06		. .
	ld b,006h		;65aa	06 06		. .
	ld b,00bh		;65ac	06 0b		. .
	dec bc			;65ae	0b		.
	dec bc			;65af	0b		.
	ld c,h			;65b0	4c		L
	ld c,h			;65b1	4c		L
	ld c,l			;65b2	4d		M
	ld c,l			;65b3	4d		M
	ld c,l			;65b4	4d		M
	ld c,l			;65b5	4d		M
	ld c,l			;65b6	4d		M
	ld c,l			;65b7	4d		M
	ld c,l			;65b8	4d		M
	ld c,l			;65b9	4d		M
	ld c,l			;65ba	4d		M
	ld c,e			;65bb	4b		K
	ld c,l			;65bc	4d		M
	ld c,h			;65bd	4c		L
	ld c,h			;65be	4c		L
	ld c,h			;65bf	4c		L
	dec bc			;65c0	0b		.
	dec bc			;65c1	0b		.
	dec bc			;65c2	0b		.
	dec bc			;65c3	0b		.
	dec bc			;65c4	0b		.
	dec bc			;65c5	0b		.
	ld b,006h		;65c6	06 06		. .
	dec bc			;65c8	0b		.
	ld b,00bh		;65c9	06 0b		. .
	dec bc			;65cb	0b		.
	dec bc			;65cc	0b		.
	dec bc			;65cd	0b		.
	dec bc			;65ce	0b		.
	dec bc			;65cf	0b		.
	ld c,h			;65d0	4c		L
	ld c,h			;65d1	4c		L
	ld c,h			;65d2	4c		L
	ld c,h			;65d3	4c		L
	ld c,h			;65d4	4c		L
	ld c,h			;65d5	4c		L
	ld c,h			;65d6	4c		L
	ld c,h			;65d7	4c		L
	ld b,(hl)		;65d8	46		F
	ld c,h			;65d9	4c		L
	ld c,h			;65da	4c		L
	ld c,h			;65db	4c		L
	ld c,h			;65dc	4c		L
	ld c,h			;65dd	4c		L
	ld c,h			;65de	4c		L
	ld c,h			;65df	4c		L
	dec bc			;65e0	0b		.
	dec c			;65e1	0d		.
	ex af,af'		;65e2	08		.
	dec c			;65e3	0d		.
	ex af,af'		;65e4	08		.
	dec bc			;65e5	0b		.
	rlca			;65e6	07		.
	rlca			;65e7	07		.
	rlca			;65e8	07		.
	rlca			;65e9	07		.
	dec bc			;65ea	0b		.
	ex af,af'		;65eb	08		.
	dec c			;65ec	0d		.
	ex af,af'		;65ed	08		.
	dec c			;65ee	0d		.
	dec bc			;65ef	0b		.
	ld c,h			;65f0	4c		L
	ld c,(hl)		;65f1	4e		N
	ld c,h			;65f2	4c		L
	ld c,(hl)		;65f3	4e		N
	ld c,a			;65f4	4f		O
	ld c,h			;65f5	4c		L
	ld c,h			;65f6	4c		L
	ld c,(hl)		;65f7	4e		N
	ld c,e			;65f8	4b		K
	ld c,h			;65f9	4c		L
	ld c,h			;65fa	4c		L
	ld c,a			;65fb	4f		O
	ld c,(hl)		;65fc	4e		N
	ld c,h			;65fd	4c		L
	ld c,(hl)		;65fe	4e		N
	ld c,h			;65ff	4c		L
	dec bc			;6600	0b		.
	inc c			;6601	0c		.
	dec bc			;6602	0b		.
	dec bc			;6603	0b		.
	dec bc			;6604	0b		.
	dec bc			;6605	0b		.
	dec bc			;6606	0b		.
	dec bc			;6607	0b		.
	dec bc			;6608	0b		.
	dec bc			;6609	0b		.
	dec bc			;660a	0b		.
	dec bc			;660b	0b		.
	dec bc			;660c	0b		.
	inc c			;660d	0c		.
	dec bc			;660e	0b		.
	dec bc			;660f	0b		.
	ld c,h			;6610	4c		L
	ld c,(hl)		;6611	4e		N
	ld c,h			;6612	4c		L
	ld c,h			;6613	4c		L
	ld c,h			;6614	4c		L
	ld c,h			;6615	4c		L
	ld c,h			;6616	4c		L
	ld c,(hl)		;6617	4e		N
	ld c,h			;6618	4c		L
	ld c,h			;6619	4c		L
	ld c,h			;661a	4c		L
	ld c,h			;661b	4c		L
	ld c,h			;661c	4c		L
	ld c,(hl)		;661d	4e		N
	ld c,h			;661e	4c		L
	ld c,h			;661f	4c		L
	nop			;6620	00		.
	nop			;6621	00		.
	nop			;6622	00		.
	nop			;6623	00		.
	nop			;6624	00		.
	ld c,008h		;6625	0e 08		. .
	ld c,00dh		;6627	0e 0d		. .
	ex af,af'		;6629	08		.
	ld c,000h		;662a	0e 00		. .
	nop			;662c	00		.
	nop			;662d	00		.
	nop			;662e	00		.
	nop			;662f	00		.
	ld b,008h		;6630	06 08		. .
	ex af,af'		;6632	08		.
	dec c			;6633	0d		.
	ex af,af'		;6634	08		.
	ld c,008h		;6635	0e 08		. .
	ld c,00eh		;6637	0e 0e		. .
	ex af,af'		;6639	08		.
	dec c			;663a	0d		.
	ex af,af'		;663b	08		.
	dec c			;663c	0d		.
	ex af,af'		;663d	08		.
	ex af,af'		;663e	08		.
	ld b,00bh		;663f	06 0b		. .
	dec bc			;6641	0b		.
	dec bc			;6642	0b		.
	dec bc			;6643	0b		.
	dec bc			;6644	0b		.
	dec bc			;6645	0b		.
	ex af,af'		;6646	08		.
	dec bc			;6647	0b		.
	ex af,af'		;6648	08		.
	ld b,00bh		;6649	06 0b		. .
	dec bc			;664b	0b		.
	dec bc			;664c	0b		.
	dec bc			;664d	0b		.
	dec bc			;664e	0b		.
	dec bc			;664f	0b		.
	ld c,h			;6650	4c		L
	ld c,h			;6651	4c		L
	ld c,(hl)		;6652	4e		N
	ld c,h			;6653	4c		L
	ld c,h			;6654	4c		L
	ld c,h			;6655	4c		L
	ld c,d			;6656	4a		J
	ld c,(hl)		;6657	4e		N
	ld c,d			;6658	4a		J
	ld c,l			;6659	4d		M
	ld c,h			;665a	4c		L
	ld c,h			;665b	4c		L
	ld c,h			;665c	4c		L
	ld c,(hl)		;665d	4e		N
	ld c,h			;665e	4c		L
	ld c,h			;665f	4c		L
	ld b,006h		;6660	06 06		. .
	ld b,006h		;6662	06 06		. .
	ex af,af'		;6664	08		.
	dec b			;6665	05		.
	ld b,005h		;6666	06 05		. .
	dec b			;6668	05		.
	dec c			;6669	0d		.
	dec c			;666a	0d		.
	dec c			;666b	0d		.
	dec c			;666c	0d		.
	dec c			;666d	0d		.
	dec b			;666e	05		.
	dec b			;666f	05		.
	ld c,c			;6670	49		I
	ld c,c			;6671	49		I
	ld c,h			;6672	4c		L
	ld c,h			;6673	4c		L
	ld c,(hl)		;6674	4e		N
	ld c,b			;6675	48		H
	ld c,c			;6676	49		I
	ld c,b			;6677	48		H
	ld c,b			;6678	48		H
	ld c,(hl)		;6679	4e		N
	ld c,(hl)		;667a	4e		N
	ld c,(hl)		;667b	4e		N
	ld c,(hl)		;667c	4e		N
	ld c,(hl)		;667d	4e		N
	ld c,(hl)		;667e	4e		N
	ld c,(hl)		;667f	4e		N
	nop			;6680	00		.
	add hl,bc		;6681	09		.
	ld b,006h		;6682	06 06		. .
	add hl,bc		;6684	09		.
	ld b,006h		;6685	06 06		. .
	dec c			;6687	0d		.
	dec c			;6688	0d		.
	dec c			;6689	0d		.
	dec c			;668a	0d		.
	dec c			;668b	0d		.
	dec c			;668c	0d		.
	dec c			;668d	0d		.
	dec b			;668e	05		.
	nop			;668f	00		.
	ld b,b			;6690	40		@
	ld c,e			;6691	4b		K
	ld c,h			;6692	4c		L
	ld c,h			;6693	4c		L
	ld c,(hl)		;6694	4e		N
	ld c,b			;6695	48		H
	ld c,b			;6696	48		H
	ld c,(hl)		;6697	4e		N
	ld c,(hl)		;6698	4e		N
	ld c,(hl)		;6699	4e		N
	ld c,(hl)		;669a	4e		N
	ld c,(hl)		;669b	4e		N
	ld c,(hl)		;669c	4e		N
	ld c,(hl)		;669d	4e		N
	ld c,(hl)		;669e	4e		N
	ld b,b			;669f	40		@
	nop			;66a0	00		.
	nop			;66a1	00		.
	nop			;66a2	00		.
	dec b			;66a3	05		.
	dec c			;66a4	0d		.
	dec c			;66a5	0d		.
	add hl,bc		;66a6	09		.
	ld b,005h		;66a7	06 05		. .
	dec c			;66a9	0d		.
	dec c			;66aa	0d		.
	dec b			;66ab	05		.
	nop			;66ac	00		.
	nop			;66ad	00		.
	nop			;66ae	00		.
	nop			;66af	00		.
	ld b,b			;66b0	40		@
	ld b,b			;66b1	40		@
	ld b,b			;66b2	40		@
	ld c,(hl)		;66b3	4e		N
	ld c,(hl)		;66b4	4e		N
	ld c,(hl)		;66b5	4e		N
	ld c,(hl)		;66b6	4e		N
	ld c,b			;66b7	48		H
	ld c,h			;66b8	4c		L
	ld c,(hl)		;66b9	4e		N
	ld c,(hl)		;66ba	4e		N
	ld c,(hl)		;66bb	4e		N
	ld b,b			;66bc	40		@
	ld b,b			;66bd	40		@
	ld b,b			;66be	40		@
	ld b,b			;66bf	40		@
	nop			;66c0	00		.
	dec c			;66c1	0d		.
	dec c			;66c2	0d		.
	dec c			;66c3	0d		.
	dec c			;66c4	0d		.
	dec c			;66c5	0d		.
	dec c			;66c6	0d		.
	dec c			;66c7	0d		.
	dec b			;66c8	05		.
	dec b			;66c9	05		.
	ld b,009h		;66ca	06 09		. .
	add hl,bc		;66cc	09		.
	ld b,006h		;66cd	06 06		. .
	nop			;66cf	00		.
	ld b,b			;66d0	40		@
	ld c,(hl)		;66d1	4e		N
	ld c,(hl)		;66d2	4e		N
	ld c,(hl)		;66d3	4e		N
	ld c,(hl)		;66d4	4e		N
	ld c,(hl)		;66d5	4e		N
	ld c,(hl)		;66d6	4e		N
	ld c,(hl)		;66d7	4e		N
	ld c,b			;66d8	48		H
	ld c,c			;66d9	49		I
	ld c,l			;66da	4d		M
	ld c,(hl)		;66db	4e		N
	ld c,(hl)		;66dc	4e		N
	ld c,h			;66dd	4c		L
	ld c,h			;66de	4c		L
	ld b,b			;66df	40		@
	dec bc			;66e0	0b		.
	dec bc			;66e1	0b		.
	dec bc			;66e2	0b		.
	dec bc			;66e3	0b		.
	dec bc			;66e4	0b		.
	rlca			;66e5	07		.
	rlca			;66e6	07		.
	rlca			;66e7	07		.
	rlca			;66e8	07		.
	rlca			;66e9	07		.
	rlca			;66ea	07		.
	dec bc			;66eb	0b		.
	dec bc			;66ec	0b		.
	dec bc			;66ed	0b		.
	dec bc			;66ee	0b		.
	dec bc			;66ef	0b		.
	ld c,h			;66f0	4c		L
	ld c,h			;66f1	4c		L
	ld c,h			;66f2	4c		L
	ld c,(hl)		;66f3	4e		N
	ld c,h			;66f4	4c		L
	ld c,h			;66f5	4c		L
	ld c,(hl)		;66f6	4e		N
	ld c,e			;66f7	4b		K
	ld c,e			;66f8	4b		K
	ld c,h			;66f9	4c		L
	ld c,h			;66fa	4c		L
	ld c,h			;66fb	4c		L
	ld c,h			;66fc	4c		L
	ld c,h			;66fd	4c		L
	ld c,h			;66fe	4c		L
	ld c,h			;66ff	4c		L
	rlca			;6700	07		.
	rlca			;6701	07		.
	rlca			;6702	07		.
	rlca			;6703	07		.
	rlca			;6704	07		.
	rlca			;6705	07		.
	dec bc			;6706	0b		.
	dec bc			;6707	0b		.
	dec bc			;6708	0b		.
	dec bc			;6709	0b		.
	dec bc			;670a	0b		.
	dec bc			;670b	0b		.
	dec bc			;670c	0b		.
	dec bc			;670d	0b		.
	dec bc			;670e	0b		.
	dec bc			;670f	0b		.
	ld c,(hl)		;6710	4e		N
	ld c,(hl)		;6711	4e		N
	ld c,(hl)		;6712	4e		N
	ld c,h			;6713	4c		L
	ld c,e			;6714	4b		K
	ld c,h			;6715	4c		L
	ld c,h			;6716	4c		L
	ld c,h			;6717	4c		L
	ld c,h			;6718	4c		L
	ld c,h			;6719	4c		L
	ld c,h			;671a	4c		L
	ld c,h			;671b	4c		L
	ld c,h			;671c	4c		L
	ld c,h			;671d	4c		L
	ld c,h			;671e	4c		L
	ld c,(hl)		;671f	4e		N
	dec bc			;6720	0b		.
	dec bc			;6721	0b		.
	dec bc			;6722	0b		.
	dec bc			;6723	0b		.
	dec bc			;6724	0b		.
	dec bc			;6725	0b		.
	dec bc			;6726	0b		.
	dec bc			;6727	0b		.
	dec bc			;6728	0b		.
	dec bc			;6729	0b		.
	dec bc			;672a	0b		.
	dec bc			;672b	0b		.
	dec bc			;672c	0b		.
	dec bc			;672d	0b		.
	dec bc			;672e	0b		.
	dec bc			;672f	0b		.
	ld c,h			;6730	4c		L
	ld c,h			;6731	4c		L
	ld c,h			;6732	4c		L
	ld c,h			;6733	4c		L
	ld c,h			;6734	4c		L
	ld c,h			;6735	4c		L
	ld c,h			;6736	4c		L
	ld c,h			;6737	4c		L
	ld c,h			;6738	4c		L
	ld c,h			;6739	4c		L
	ld c,h			;673a	4c		L
	ld c,h			;673b	4c		L
	ld c,h			;673c	4c		L
	ld c,h			;673d	4c		L
	ld c,h			;673e	4c		L
	ld c,h			;673f	4c		L
	dec bc			;6740	0b		.
	dec bc			;6741	0b		.
	dec bc			;6742	0b		.
	dec bc			;6743	0b		.
	dec bc			;6744	0b		.
	dec bc			;6745	0b		.
	ld a,(bc)		;6746	0a		.
	dec bc			;6747	0b		.
	dec bc			;6748	0b		.
	dec bc			;6749	0b		.
	dec bc			;674a	0b		.
	dec bc			;674b	0b		.
	dec bc			;674c	0b		.
	dec bc			;674d	0b		.
	dec bc			;674e	0b		.
	dec bc			;674f	0b		.
	ld c,h			;6750	4c		L
	ld c,h			;6751	4c		L
	ld c,(hl)		;6752	4e		N
	ld c,(hl)		;6753	4e		N
	ld c,h			;6754	4c		L
	ld c,h			;6755	4c		L
	ld b,(hl)		;6756	46		F
	ld b,(hl)		;6757	46		F
	ld c,h			;6758	4c		L
	ld c,h			;6759	4c		L
	ld c,h			;675a	4c		L
	ld c,h			;675b	4c		L
	ld c,h			;675c	4c		L
	ld c,h			;675d	4c		L
	ld c,h			;675e	4c		L
	ld c,h			;675f	4c		L
	ld a,(bc)		;6760	0a		.
	dec bc			;6761	0b		.
	dec bc			;6762	0b		.
	dec bc			;6763	0b		.
	dec bc			;6764	0b		.
	dec bc			;6765	0b		.
	dec bc			;6766	0b		.
	dec bc			;6767	0b		.
	dec bc			;6768	0b		.
	dec bc			;6769	0b		.
	dec bc			;676a	0b		.
	dec bc			;676b	0b		.
	dec bc			;676c	0b		.
	dec bc			;676d	0b		.
	dec bc			;676e	0b		.
	dec bc			;676f	0b		.
	ld b,(hl)		;6770	46		F
	ld c,(hl)		;6771	4e		N
	ld b,(hl)		;6772	46		F
	ld c,h			;6773	4c		L
	ld c,h			;6774	4c		L
	ld c,h			;6775	4c		L
	ld c,h			;6776	4c		L
	ld c,h			;6777	4c		L
	ld c,h			;6778	4c		L
	ld c,h			;6779	4c		L
	ld c,h			;677a	4c		L
	ld c,h			;677b	4c		L
	ld c,h			;677c	4c		L
	ld c,h			;677d	4c		L
	ld c,h			;677e	4c		L
	ld c,h			;677f	4c		L
	nop			;6780	00		.
	nop			;6781	00		.
	ld a,(bc)		;6782	0a		.
	dec bc			;6783	0b		.
	dec bc			;6784	0b		.
	dec bc			;6785	0b		.
	dec bc			;6786	0b		.
	dec bc			;6787	0b		.
	dec bc			;6788	0b		.
	dec bc			;6789	0b		.
	dec bc			;678a	0b		.
	dec bc			;678b	0b		.
	dec bc			;678c	0b		.
	dec bc			;678d	0b		.
	dec bc			;678e	0b		.
	dec bc			;678f	0b		.
	ld b,b			;6790	40		@
	ld b,b			;6791	40		@
	ld b,(hl)		;6792	46		F
	ld c,(hl)		;6793	4e		N
	ld b,(hl)		;6794	46		F
	ld c,h			;6795	4c		L
	ld c,h			;6796	4c		L
	ld c,h			;6797	4c		L
	ld c,h			;6798	4c		L
	ld c,h			;6799	4c		L
	ld c,h			;679a	4c		L
	ld c,h			;679b	4c		L
	ld c,h			;679c	4c		L
	ld c,h			;679d	4c		L
	ld c,h			;679e	4c		L
	ld c,h			;679f	4c		L
	nop			;67a0	00		.
	nop			;67a1	00		.
	dec bc			;67a2	0b		.
	ld a,(bc)		;67a3	0a		.
	ld a,(bc)		;67a4	0a		.
	dec bc			;67a5	0b		.
	dec bc			;67a6	0b		.
	dec bc			;67a7	0b		.
	dec bc			;67a8	0b		.
	dec bc			;67a9	0b		.
	dec bc			;67aa	0b		.
	dec bc			;67ab	0b		.
	dec bc			;67ac	0b		.
	dec bc			;67ad	0b		.
	dec bc			;67ae	0b		.
	dec bc			;67af	0b		.
	ld b,b			;67b0	40		@
	ld b,b			;67b1	40		@
	ld b,(hl)		;67b2	46		F
	ld b,(hl)		;67b3	46		F
	ld b,(hl)		;67b4	46		F
	ld b,(hl)		;67b5	46		F
	ld b,(hl)		;67b6	46		F
	ld b,(hl)		;67b7	46		F
	ld c,h			;67b8	4c		L
	ld c,h			;67b9	4c		L
	ld c,h			;67ba	4c		L
	ld c,h			;67bb	4c		L
	ld c,h			;67bc	4c		L
	ld c,h			;67bd	4c		L
	ld c,h			;67be	4c		L
	ld c,h			;67bf	4c		L
	nop			;67c0	00		.
	nop			;67c1	00		.
	ld a,(bc)		;67c2	0a		.
	dec bc			;67c3	0b		.
	dec bc			;67c4	0b		.
	dec bc			;67c5	0b		.
	dec bc			;67c6	0b		.
	dec bc			;67c7	0b		.
	dec bc			;67c8	0b		.
	dec bc			;67c9	0b		.
	dec bc			;67ca	0b		.
	dec bc			;67cb	0b		.
	dec bc			;67cc	0b		.
	dec bc			;67cd	0b		.
	dec bc			;67ce	0b		.
	dec bc			;67cf	0b		.
	ld b,b			;67d0	40		@
	ld b,b			;67d1	40		@
	ld b,(hl)		;67d2	46		F
	ld c,(hl)		;67d3	4e		N
	ld b,(hl)		;67d4	46		F
	ld c,h			;67d5	4c		L
	ld c,h			;67d6	4c		L
	ld c,h			;67d7	4c		L
	ld c,h			;67d8	4c		L
	ld c,h			;67d9	4c		L
	ld c,h			;67da	4c		L
	ld c,h			;67db	4c		L
	ld c,h			;67dc	4c		L
	ld c,h			;67dd	4c		L
	ld c,h			;67de	4c		L
	ld c,h			;67df	4c		L
	ld a,(bc)		;67e0	0a		.
	dec bc			;67e1	0b		.
	dec bc			;67e2	0b		.
	dec bc			;67e3	0b		.
	dec bc			;67e4	0b		.
	dec bc			;67e5	0b		.
	dec bc			;67e6	0b		.
	dec bc			;67e7	0b		.
	dec bc			;67e8	0b		.
	dec bc			;67e9	0b		.
	dec bc			;67ea	0b		.
	dec bc			;67eb	0b		.
	dec bc			;67ec	0b		.
	dec bc			;67ed	0b		.
	dec bc			;67ee	0b		.
	dec bc			;67ef	0b		.
	ld b,(hl)		;67f0	46		F
	ld c,(hl)		;67f1	4e		N
	ld b,(hl)		;67f2	46		F
	ld c,h			;67f3	4c		L
	ld c,h			;67f4	4c		L
	ld c,h			;67f5	4c		L
	ld c,h			;67f6	4c		L
	ld c,h			;67f7	4c		L
	ld c,h			;67f8	4c		L
	ld c,h			;67f9	4c		L
	ld c,h			;67fa	4c		L
	ld c,h			;67fb	4c		L
	ld c,h			;67fc	4c		L
	ld c,h			;67fd	4c		L
	ld c,h			;67fe	4c		L
	ld c,h			;67ff	4c		L
	dec bc			;6800	0b		.
	dec bc			;6801	0b		.
	dec bc			;6802	0b		.
	dec bc			;6803	0b		.
	dec bc			;6804	0b		.
	dec bc			;6805	0b		.
	dec bc			;6806	0b		.
	ld a,(bc)		;6807	0a		.
	ld a,(bc)		;6808	0a		.
	ld a,(bc)		;6809	0a		.
	dec bc			;680a	0b		.
	dec bc			;680b	0b		.
	dec bc			;680c	0b		.
	dec bc			;680d	0b		.
	dec bc			;680e	0b		.
	dec bc			;680f	0b		.
	ld c,(hl)		;6810	4e		N
	ld c,h			;6811	4c		L
	ld c,h			;6812	4c		L
	ld c,(hl)		;6813	4e		N
	ld c,h			;6814	4c		L
	ld c,h			;6815	4c		L
	ld c,(hl)		;6816	4e		N
	ld c,l			;6817	4d		M
	ld c,l			;6818	4d		M
	ld c,l			;6819	4d		M
	ld c,(hl)		;681a	4e		N
	ld c,(hl)		;681b	4e		N
	ld c,h			;681c	4c		L
	ld c,h			;681d	4c		L
	ld c,h			;681e	4c		L
	ld c,h			;681f	4c		L
	nop			;6820	00		.
	nop			;6821	00		.
	nop			;6822	00		.
	nop			;6823	00		.
	dec bc			;6824	0b		.
	inc c			;6825	0c		.
	dec bc			;6826	0b		.
	dec bc			;6827	0b		.
	dec bc			;6828	0b		.
	ld b,00bh		;6829	06 0b		. .
	dec bc			;682b	0b		.
	dec bc			;682c	0b		.
	inc c			;682d	0c		.
	dec bc			;682e	0b		.
	dec bc			;682f	0b		.
	ld b,b			;6830	40		@
	ld b,b			;6831	40		@
	ld b,b			;6832	40		@
	ld b,b			;6833	40		@
	ld c,h			;6834	4c		L
	ld c,(hl)		;6835	4e		N
	ld c,h			;6836	4c		L
	ld c,h			;6837	4c		L
	ld c,h			;6838	4c		L
	ld c,l			;6839	4d		M
	ld c,(hl)		;683a	4e		N
	ld c,h			;683b	4c		L
	ld c,h			;683c	4c		L
	ld c,(hl)		;683d	4e		N
	ld c,h			;683e	4c		L
	ld c,h			;683f	4c		L
	dec bc			;6840	0b		.
	dec bc			;6841	0b		.
	dec bc			;6842	0b		.
	dec bc			;6843	0b		.
	dec bc			;6844	0b		.
	dec bc			;6845	0b		.
	ld b,00bh		;6846	06 0b		. .
	dec bc			;6848	0b		.
	inc c			;6849	0c		.
	dec bc			;684a	0b		.
	dec bc			;684b	0b		.
	nop			;684c	00		.
	nop			;684d	00		.
	nop			;684e	00		.
	nop			;684f	00		.
	ld c,h			;6850	4c		L
	ld c,h			;6851	4c		L
	ld c,h			;6852	4c		L
	ld c,h			;6853	4c		L
	ld c,h			;6854	4c		L
	ld c,(hl)		;6855	4e		N
	ld c,l			;6856	4d		M
	ld c,h			;6857	4c		L
	ld c,h			;6858	4c		L
	ld c,(hl)		;6859	4e		N
	ld c,h			;685a	4c		L
	ld c,h			;685b	4c		L
	ld b,b			;685c	40		@
	ld b,b			;685d	40		@
	ld b,b			;685e	40		@
	ld b,b			;685f	40		@
	ld a,(bc)		;6860	0a		.
	ld a,(bc)		;6861	0a		.
	ld a,(bc)		;6862	0a		.
	dec bc			;6863	0b		.
	dec bc			;6864	0b		.
	dec bc			;6865	0b		.
	dec bc			;6866	0b		.
	dec bc			;6867	0b		.
	dec bc			;6868	0b		.
	dec bc			;6869	0b		.
	dec bc			;686a	0b		.
	dec bc			;686b	0b		.
	dec bc			;686c	0b		.
	dec bc			;686d	0b		.
	dec bc			;686e	0b		.
	dec bc			;686f	0b		.
	ld b,(hl)		;6870	46		F
	ld b,(hl)		;6871	46		F
	ld b,(hl)		;6872	46		F
	ld c,h			;6873	4c		L
	ld c,h			;6874	4c		L
	ld c,h			;6875	4c		L
	ld c,h			;6876	4c		L
	ld c,h			;6877	4c		L
	ld c,h			;6878	4c		L
	ld c,(hl)		;6879	4e		N
	ld c,h			;687a	4c		L
	ld c,h			;687b	4c		L
	ld c,h			;687c	4c		L
	ld c,h			;687d	4c		L
	ld c,h			;687e	4c		L
	ld c,h			;687f	4c		L
	dec bc			;6880	0b		.
	dec bc			;6881	0b		.
	dec bc			;6882	0b		.
	dec bc			;6883	0b		.
	dec bc			;6884	0b		.
	dec bc			;6885	0b		.
	dec bc			;6886	0b		.
	dec bc			;6887	0b		.
	dec bc			;6888	0b		.
	dec bc			;6889	0b		.
	dec bc			;688a	0b		.
	dec bc			;688b	0b		.
	dec bc			;688c	0b		.
	ld a,(bc)		;688d	0a		.
	ld a,(bc)		;688e	0a		.
	ld a,(bc)		;688f	0a		.
	ld c,h			;6890	4c		L
	ld c,h			;6891	4c		L
	ld c,h			;6892	4c		L
	ld c,h			;6893	4c		L
	ld c,h			;6894	4c		L
	ld c,(hl)		;6895	4e		N
	ld c,h			;6896	4c		L
	ld c,h			;6897	4c		L
	ld c,h			;6898	4c		L
	ld c,h			;6899	4c		L
	ld c,h			;689a	4c		L
	ld c,h			;689b	4c		L
	ld c,h			;689c	4c		L
	ld b,(hl)		;689d	46		F
	ld b,(hl)		;689e	46		F
	ld b,(hl)		;689f	46		F
	rlca			;68a0	07		.
	rlca			;68a1	07		.
	rlca			;68a2	07		.
	dec bc			;68a3	0b		.
	dec bc			;68a4	0b		.
	dec bc			;68a5	0b		.
	dec bc			;68a6	0b		.
	dec bc			;68a7	0b		.
	dec bc			;68a8	0b		.
	dec bc			;68a9	0b		.
	dec bc			;68aa	0b		.
	dec bc			;68ab	0b		.
	dec bc			;68ac	0b		.
	dec bc			;68ad	0b		.
	dec bc			;68ae	0b		.
	dec bc			;68af	0b		.
	ld c,(hl)		;68b0	4e		N
	ld c,(hl)		;68b1	4e		N
	ld c,(hl)		;68b2	4e		N
	ld c,h			;68b3	4c		L
	ld c,h			;68b4	4c		L
	ld c,(hl)		;68b5	4e		N
	ld c,(hl)		;68b6	4e		N
	ld c,h			;68b7	4c		L
	ld c,h			;68b8	4c		L
	ld c,h			;68b9	4c		L
	ld c,h			;68ba	4c		L
	ld c,h			;68bb	4c		L
	ld c,h			;68bc	4c		L
	ld c,h			;68bd	4c		L
	ld c,h			;68be	4c		L
	ld c,h			;68bf	4c		L
	rlca			;68c0	07		.
	rlca			;68c1	07		.
	rlca			;68c2	07		.
	dec bc			;68c3	0b		.
	dec bc			;68c4	0b		.
	dec bc			;68c5	0b		.
	dec bc			;68c6	0b		.
	dec bc			;68c7	0b		.
	dec bc			;68c8	0b		.
	dec bc			;68c9	0b		.
	dec bc			;68ca	0b		.
	dec bc			;68cb	0b		.
	dec bc			;68cc	0b		.
	dec bc			;68cd	0b		.
	dec bc			;68ce	0b		.
	dec bc			;68cf	0b		.
	ld c,(hl)		;68d0	4e		N
	ld c,(hl)		;68d1	4e		N
	ld c,(hl)		;68d2	4e		N
	ld b,a			;68d3	47		G
	ld c,(hl)		;68d4	4e		N
	ld c,h			;68d5	4c		L
	ld c,h			;68d6	4c		L
	ld c,(hl)		;68d7	4e		N
	ld c,h			;68d8	4c		L
	ld c,h			;68d9	4c		L
	ld c,h			;68da	4c		L
	ld c,h			;68db	4c		L
	ld b,a			;68dc	47		G
	ld b,a			;68dd	47		G
	ld b,a			;68de	47		G
	ld b,a			;68df	47		G
	dec bc			;68e0	0b		.
	dec bc			;68e1	0b		.
	inc c			;68e2	0c		.
	dec bc			;68e3	0b		.
	dec bc			;68e4	0b		.
	dec bc			;68e5	0b		.
	ld b,006h		;68e6	06 06		. .
	ld b,006h		;68e8	06 06		. .
	dec bc			;68ea	0b		.
	dec bc			;68eb	0b		.
	dec bc			;68ec	0b		.
	inc c			;68ed	0c		.
	dec bc			;68ee	0b		.
	dec bc			;68ef	0b		.
	ld c,h			;68f0	4c		L
	ld c,h			;68f1	4c		L
	ld c,(hl)		;68f2	4e		N
	ld c,h			;68f3	4c		L
	ld c,h			;68f4	4c		L
	ld b,(hl)		;68f5	46		F
	ld c,d			;68f6	4a		J
	ld c,d			;68f7	4a		J
	ld c,d			;68f8	4a		J
	ld c,d			;68f9	4a		J
	ld b,(hl)		;68fa	46		F
	ld c,h			;68fb	4c		L
	ld c,h			;68fc	4c		L
	ld c,(hl)		;68fd	4e		N
	ld c,h			;68fe	4c		L
	ld c,h			;68ff	4c		L
	nop			;6900	00		.
	dec bc			;6901	0b		.
	dec bc			;6902	0b		.
	dec c			;6903	0d		.
	dec bc			;6904	0b		.
	dec bc			;6905	0b		.
	dec bc			;6906	0b		.
	dec bc			;6907	0b		.
	dec bc			;6908	0b		.
	dec bc			;6909	0b		.
	ld c,006h		;690a	0e 06		. .
	ld b,00bh		;690c	06 0b		. .
	dec bc			;690e	0b		.
	dec bc			;690f	0b		.
	ld b,b			;6910	40		@
	ld c,h			;6911	4c		L
	ld c,h			;6912	4c		L
	ld c,a			;6913	4f		O
	ld c,h			;6914	4c		L
	ld c,h			;6915	4c		L
	ld c,h			;6916	4c		L
	ld c,h			;6917	4c		L
	ld c,h			;6918	4c		L
	ld c,h			;6919	4c		L
	ld c,l			;691a	4d		M
	ld c,l			;691b	4d		M
	ld c,h			;691c	4c		L
	ld c,h			;691d	4c		L
	ld c,h			;691e	4c		L
	ld c,h			;691f	4c		L
	dec bc			;6920	0b		.
	dec bc			;6921	0b		.
	dec bc			;6922	0b		.
	dec bc			;6923	0b		.
	dec bc			;6924	0b		.
	ld b,006h		;6925	06 06		. .
	ld b,006h		;6927	06 06		. .
	ld b,00bh		;6929	06 0b		. .
	dec bc			;692b	0b		.
	inc c			;692c	0c		.
	dec bc			;692d	0b		.
	dec bc			;692e	0b		.
	dec bc			;692f	0b		.
	ld c,(hl)		;6930	4e		N
	ld c,(hl)		;6931	4e		N
	ld c,(hl)		;6932	4e		N
	ld c,(hl)		;6933	4e		N
	ld c,(hl)		;6934	4e		N
	ld c,h			;6935	4c		L
	ld c,d			;6936	4a		J
	ld c,d			;6937	4a		J
	ld c,e			;6938	4b		K
	ld c,e			;6939	4b		K
	ld c,h			;693a	4c		L
	ld c,h			;693b	4c		L
	ld c,(hl)		;693c	4e		N
	ld c,h			;693d	4c		L
	ld c,h			;693e	4c		L
	ld c,h			;693f	4c		L
	dec bc			;6940	0b		.
	ld b,00eh		;6941	06 0e		. .
	ld b,00bh		;6943	06 0b		. .
	dec bc			;6945	0b		.
	dec bc			;6946	0b		.
	dec bc			;6947	0b		.
	dec bc			;6948	0b		.
	dec bc			;6949	0b		.
	dec bc			;694a	0b		.
	dec bc			;694b	0b		.
	dec bc			;694c	0b		.
	dec bc			;694d	0b		.
	dec bc			;694e	0b		.
	dec bc			;694f	0b		.
	ld c,h			;6950	4c		L
	ld c,h			;6951	4c		L
	ld c,a			;6952	4f		O
	ld c,a			;6953	4f		O
	ld c,h			;6954	4c		L
	ld c,h			;6955	4c		L
	ld c,h			;6956	4c		L
	ld c,h			;6957	4c		L
	ld c,h			;6958	4c		L
	ld c,h			;6959	4c		L
	ld c,h			;695a	4c		L
	ld c,h			;695b	4c		L
	ld c,h			;695c	4c		L
	ld c,h			;695d	4c		L
	ld c,h			;695e	4c		L
	ld c,h			;695f	4c		L
	dec bc			;6960	0b		.
	inc c			;6961	0c		.
	dec bc			;6962	0b		.
	dec bc			;6963	0b		.
	dec bc			;6964	0b		.
	dec bc			;6965	0b		.
	ld b,00ah		;6966	06 0a		. .
	ld a,(bc)		;6968	0a		.
	ld b,00bh		;6969	06 0b		. .
	dec bc			;696b	0b		.
	dec bc			;696c	0b		.
	dec bc			;696d	0b		.
	dec bc			;696e	0b		.
	dec bc			;696f	0b		.
	ld c,h			;6970	4c		L
	ld c,(hl)		;6971	4e		N
	ld c,h			;6972	4c		L
	ld c,h			;6973	4c		L
	ld c,h			;6974	4c		L
	ld c,h			;6975	4c		L
	ld c,l			;6976	4d		M
	ld b,(hl)		;6977	46		F
	ld b,(hl)		;6978	46		F
	ld c,l			;6979	4d		M
	ld c,h			;697a	4c		L
	ld c,h			;697b	4c		L
	ld c,h			;697c	4c		L
	ld c,h			;697d	4c		L
	ld c,h			;697e	4c		L
	ld c,h			;697f	4c		L
	dec bc			;6980	0b		.
	dec bc			;6981	0b		.
	dec bc			;6982	0b		.
	dec bc			;6983	0b		.
	dec bc			;6984	0b		.
	dec bc			;6985	0b		.
	ld b,006h		;6986	06 06		. .
	ld b,006h		;6988	06 06		. .
	dec bc			;698a	0b		.
	dec bc			;698b	0b		.
	dec bc			;698c	0b		.
	dec bc			;698d	0b		.
	dec bc			;698e	0b		.
	dec bc			;698f	0b		.
	ld c,h			;6990	4c		L
	ld c,h			;6991	4c		L
	ld c,(hl)		;6992	4e		N
	ld c,h			;6993	4c		L
	ld c,h			;6994	4c		L
	ld c,h			;6995	4c		L
	ld c,h			;6996	4c		L
	ld c,d			;6997	4a		J
	ld c,e			;6998	4b		K
	ld c,h			;6999	4c		L
	ld c,h			;699a	4c		L
	ld c,h			;699b	4c		L
	ld c,(hl)		;699c	4e		N
	ld c,h			;699d	4c		L
	ld c,h			;699e	4c		L
	ld c,h			;699f	4c		L
	nop			;69a0	00		.
	nop			;69a1	00		.
	nop			;69a2	00		.
	nop			;69a3	00		.
	inc bc			;69a4	03		.
	inc bc			;69a5	03		.
	ld b,008h		;69a6	06 08		. .
	ld c,008h		;69a8	0e 08		. .
	inc bc			;69aa	03		.
	inc bc			;69ab	03		.
	nop			;69ac	00		.
	nop			;69ad	00		.
	nop			;69ae	00		.
	nop			;69af	00		.
	ld b,b			;69b0	40		@
	ld b,b			;69b1	40		@
	ld b,b			;69b2	40		@
	ld b,b			;69b3	40		@
	ld c,l			;69b4	4d		M
	ld c,l			;69b5	4d		M
	ld c,l			;69b6	4d		M
	ld c,a			;69b7	4f		O
	ld c,a			;69b8	4f		O
	ld c,a			;69b9	4f		O
	ld c,l			;69ba	4d		M
	ld c,l			;69bb	4d		M
	ld b,b			;69bc	40		@
	ld b,b			;69bd	40		@
	ld b,b			;69be	40		@
	ld b,b			;69bf	40		@
	inc c			;69c0	0c		.
	dec bc			;69c1	0b		.
	ld a,(bc)		;69c2	0a		.
	ld b,006h		;69c3	06 06		. .
	ld c,00bh		;69c5	0e 0b		. .
	dec bc			;69c7	0b		.
	dec bc			;69c8	0b		.
	ld a,(bc)		;69c9	0a		.
	ld b,006h		;69ca	06 06		. .
	dec bc			;69cc	0b		.
	dec bc			;69cd	0b		.
	dec bc			;69ce	0b		.
	nop			;69cf	00		.
	ld c,(hl)		;69d0	4e		N
	ld c,h			;69d1	4c		L
	ld c,h			;69d2	4c		L
	ld c,e			;69d3	4b		K
	ld c,e			;69d4	4b		K
	ld c,e			;69d5	4b		K
	ld c,h			;69d6	4c		L
	ld c,h			;69d7	4c		L
	ld c,h			;69d8	4c		L
	ld c,a			;69d9	4f		O
	ld c,h			;69da	4c		L
	ld c,h			;69db	4c		L
	ld c,h			;69dc	4c		L
	ld c,h			;69dd	4c		L
	ld c,h			;69de	4c		L
	ld b,b			;69df	40		@
	dec bc			;69e0	0b		.
	dec bc			;69e1	0b		.
	dec bc			;69e2	0b		.
	dec bc			;69e3	0b		.
	dec bc			;69e4	0b		.
	ld b,006h		;69e5	06 06		. .
	ld b,006h		;69e7	06 06		. .
	ld b,00bh		;69e9	06 0b		. .
	dec bc			;69eb	0b		.
	dec bc			;69ec	0b		.
	dec bc			;69ed	0b		.
	dec bc			;69ee	0b		.
	dec bc			;69ef	0b		.
	ld c,h			;69f0	4c		L
	ld c,h			;69f1	4c		L
	ld c,h			;69f2	4c		L
	ld c,h			;69f3	4c		L
	ld c,h			;69f4	4c		L
	ld c,e			;69f5	4b		K
	ld c,e			;69f6	4b		K
	ld c,e			;69f7	4b		K
	ld c,h			;69f8	4c		L
	ld c,h			;69f9	4c		L
	ld c,h			;69fa	4c		L
	ld c,h			;69fb	4c		L
	ld c,h			;69fc	4c		L
	ld c,h			;69fd	4c		L
	ld c,h			;69fe	4c		L
	ld c,h			;69ff	4c		L
	dec bc			;6a00	0b		.
	inc c			;6a01	0c		.
	dec bc			;6a02	0b		.
	dec bc			;6a03	0b		.
	ld b,00bh		;6a04	06 0b		. .
	ld b,00bh		;6a06	06 0b		. .
	dec bc			;6a08	0b		.
	dec bc			;6a09	0b		.
	dec bc			;6a0a	0b		.
	dec bc			;6a0b	0b		.
	dec bc			;6a0c	0b		.
	dec bc			;6a0d	0b		.
	dec bc			;6a0e	0b		.
	dec bc			;6a0f	0b		.
	ld c,h			;6a10	4c		L
	ld c,(hl)		;6a11	4e		N
	ld c,h			;6a12	4c		L
	ld c,h			;6a13	4c		L
	ld c,l			;6a14	4d		M
	ld c,(hl)		;6a15	4e		N
	ld c,l			;6a16	4d		M
	ld c,h			;6a17	4c		L
	ld c,(hl)		;6a18	4e		N
	ld c,h			;6a19	4c		L
	ld c,h			;6a1a	4c		L
	ld c,h			;6a1b	4c		L
	ld c,h			;6a1c	4c		L
	ld c,h			;6a1d	4c		L
	ld c,h			;6a1e	4c		L
	ld c,h			;6a1f	4c		L
	dec bc			;6a20	0b		.
	dec bc			;6a21	0b		.
	inc c			;6a22	0c		.
	dec bc			;6a23	0b		.
	dec bc			;6a24	0b		.
	dec bc			;6a25	0b		.
	dec bc			;6a26	0b		.
	ld a,(bc)		;6a27	0a		.
	ld a,(bc)		;6a28	0a		.
	ld b,00bh		;6a29	06 0b		. .
	dec bc			;6a2b	0b		.
	dec bc			;6a2c	0b		.
	dec bc			;6a2d	0b		.
	dec bc			;6a2e	0b		.
	dec bc			;6a2f	0b		.
	ld c,h			;6a30	4c		L
	ld c,h			;6a31	4c		L
	ld c,(hl)		;6a32	4e		N
	ld c,h			;6a33	4c		L
	ld c,h			;6a34	4c		L
	ld c,(hl)		;6a35	4e		N
	ld c,(hl)		;6a36	4e		N
	ld b,(hl)		;6a37	46		F
	ld c,e			;6a38	4b		K
	ld c,l			;6a39	4d		M
	ld c,h			;6a3a	4c		L
	ld c,h			;6a3b	4c		L
	ld c,h			;6a3c	4c		L
	ld c,h			;6a3d	4c		L
	ld c,h			;6a3e	4c		L
	ld c,h			;6a3f	4c		L
	nop			;6a40	00		.
	dec bc			;6a41	0b		.
	inc c			;6a42	0c		.
	dec bc			;6a43	0b		.
	inc c			;6a44	0c		.
	inc c			;6a45	0c		.
	ld b,006h		;6a46	06 06		. .
	ld b,006h		;6a48	06 06		. .
	dec bc			;6a4a	0b		.
	dec bc			;6a4b	0b		.
	dec bc			;6a4c	0b		.
	dec bc			;6a4d	0b		.
	dec bc			;6a4e	0b		.
	nop			;6a4f	00		.
	ld b,b			;6a50	40		@
	ld c,h			;6a51	4c		L
	ld c,(hl)		;6a52	4e		N
	ld c,h			;6a53	4c		L
	ld c,(hl)		;6a54	4e		N
	ld c,(hl)		;6a55	4e		N
	ld c,e			;6a56	4b		K
	ld c,d			;6a57	4a		J
	ld c,e			;6a58	4b		K
	ld c,e			;6a59	4b		K
	ld c,h			;6a5a	4c		L
	ld c,h			;6a5b	4c		L
	ld c,h			;6a5c	4c		L
	ld c,h			;6a5d	4c		L
	ld c,h			;6a5e	4c		L
	ld b,b			;6a5f	40		@
	ex af,af'		;6a60	08		.
	dec c			;6a61	0d		.
	dec c			;6a62	0d		.
	ex af,af'		;6a63	08		.
	dec c			;6a64	0d		.
	dec c			;6a65	0d		.
	dec c			;6a66	0d		.
	dec c			;6a67	0d		.
	dec c			;6a68	0d		.
	dec c			;6a69	0d		.
	dec c			;6a6a	0d		.
	dec c			;6a6b	0d		.
	dec c			;6a6c	0d		.
	dec c			;6a6d	0d		.
	nop			;6a6e	00		.
	nop			;6a6f	00		.
	ld c,(hl)		;6a70	4e		N
	ld c,(hl)		;6a71	4e		N
	ld c,(hl)		;6a72	4e		N
	ld c,l			;6a73	4d		M
	ld c,(hl)		;6a74	4e		N
	ld c,(hl)		;6a75	4e		N
	ld c,(hl)		;6a76	4e		N
	ld c,(hl)		;6a77	4e		N
	ld c,(hl)		;6a78	4e		N
	ld c,(hl)		;6a79	4e		N
	ld c,(hl)		;6a7a	4e		N
	ld c,(hl)		;6a7b	4e		N
	ld c,(hl)		;6a7c	4e		N
	ld c,(hl)		;6a7d	4e		N
	ld b,b			;6a7e	40		@
	ld b,b			;6a7f	40		@
	nop			;6a80	00		.
	dec bc			;6a81	0b		.
	dec bc			;6a82	0b		.
	dec bc			;6a83	0b		.
	dec bc			;6a84	0b		.
	dec bc			;6a85	0b		.
	dec bc			;6a86	0b		.
	dec bc			;6a87	0b		.
	dec bc			;6a88	0b		.
	dec bc			;6a89	0b		.
	dec bc			;6a8a	0b		.
	dec bc			;6a8b	0b		.
	dec bc			;6a8c	0b		.
	dec bc			;6a8d	0b		.
	dec bc			;6a8e	0b		.
	dec bc			;6a8f	0b		.
	ld b,b			;6a90	40		@
	ld c,h			;6a91	4c		L
	ld c,h			;6a92	4c		L
	ld c,h			;6a93	4c		L
	ld c,h			;6a94	4c		L
	ld c,(hl)		;6a95	4e		N
	ld c,h			;6a96	4c		L
	ld c,(hl)		;6a97	4e		N
	ld c,h			;6a98	4c		L
	ld c,h			;6a99	4c		L
	ld c,(hl)		;6a9a	4e		N
	ld c,h			;6a9b	4c		L
	ld c,h			;6a9c	4c		L
	ld c,h			;6a9d	4c		L
	ld c,h			;6a9e	4c		L
	ld c,h			;6a9f	4c		L
	dec bc			;6aa0	0b		.
	ld b,006h		;6aa1	06 06		. .
	ld b,006h		;6aa3	06 06		. .
	dec bc			;6aa5	0b		.
	ld b,00ah		;6aa6	06 0a		. .
	ld b,00bh		;6aa8	06 0b		. .
	dec bc			;6aaa	0b		.
	ld b,006h		;6aab	06 06		. .
	ld b,006h		;6aad	06 06		. .
	dec bc			;6aaf	0b		.
	ld c,h			;6ab0	4c		L
	ld c,e			;6ab1	4b		K
	ld c,e			;6ab2	4b		K
	ld c,h			;6ab3	4c		L
	ld c,e			;6ab4	4b		K
	ld c,h			;6ab5	4c		L
	ld c,e			;6ab6	4b		K
	ld b,(hl)		;6ab7	46		F
	ld c,e			;6ab8	4b		K
	ld c,h			;6ab9	4c		L
	ld c,h			;6aba	4c		L
	ld c,e			;6abb	4b		K
	ld c,h			;6abc	4c		L
	ld c,e			;6abd	4b		K
	ld c,e			;6abe	4b		K
	ld c,h			;6abf	4c		L
	dec bc			;6ac0	0b		.
	ld b,006h		;6ac1	06 06		. .
	ld b,006h		;6ac3	06 06		. .
	dec bc			;6ac5	0b		.
	dec bc			;6ac6	0b		.
	ld b,00ah		;6ac7	06 0a		. .
	ld b,00bh		;6ac9	06 0b		. .
	ld b,006h		;6acb	06 06		. .
	ld b,006h		;6acd	06 06		. .
	dec bc			;6acf	0b		.
	ld c,h			;6ad0	4c		L
	ld c,e			;6ad1	4b		K
	ld c,e			;6ad2	4b		K
	ld c,h			;6ad3	4c		L
	ld c,e			;6ad4	4b		K
	ld c,h			;6ad5	4c		L
	ld c,h			;6ad6	4c		L
	ld c,e			;6ad7	4b		K
	ld b,(hl)		;6ad8	46		F
	ld c,e			;6ad9	4b		K
	ld c,h			;6ada	4c		L
	ld c,e			;6adb	4b		K
	ld c,h			;6adc	4c		L
	ld c,e			;6add	4b		K
	ld c,e			;6ade	4b		K
	ld c,h			;6adf	4c		L
	dec bc			;6ae0	0b		.
	dec bc			;6ae1	0b		.
	dec bc			;6ae2	0b		.
	dec bc			;6ae3	0b		.
	dec bc			;6ae4	0b		.
	dec bc			;6ae5	0b		.
	ld b,00ah		;6ae6	06 0a		. .
	ld a,(bc)		;6ae8	0a		.
	ld b,006h		;6ae9	06 06		. .
	dec bc			;6aeb	0b		.
	dec bc			;6aec	0b		.
	dec bc			;6aed	0b		.
	dec bc			;6aee	0b		.
	dec bc			;6aef	0b		.
	ld c,h			;6af0	4c		L
	ld c,h			;6af1	4c		L
	ld c,h			;6af2	4c		L
	ld c,h			;6af3	4c		L
	ld c,h			;6af4	4c		L
	ld c,h			;6af5	4c		L
	ld c,e			;6af6	4b		K
	ld b,(hl)		;6af7	46		F
	ld b,(hl)		;6af8	46		F
	ld c,e			;6af9	4b		K
	ld c,e			;6afa	4b		K
	ld c,h			;6afb	4c		L
	ld c,h			;6afc	4c		L
	ld c,h			;6afd	4c		L
	ld c,h			;6afe	4c		L
	ld c,h			;6aff	4c		L
	dec bc			;6b00	0b		.
	dec bc			;6b01	0b		.
	dec bc			;6b02	0b		.
	dec bc			;6b03	0b		.
	dec bc			;6b04	0b		.
	ld b,006h		;6b05	06 06		. .
	ld a,(bc)		;6b07	0a		.
	ld a,(bc)		;6b08	0a		.
	ld b,00bh		;6b09	06 0b		. .
	dec bc			;6b0b	0b		.
	dec bc			;6b0c	0b		.
	dec bc			;6b0d	0b		.
	dec bc			;6b0e	0b		.
	dec bc			;6b0f	0b		.
	ld c,h			;6b10	4c		L
	ld c,h			;6b11	4c		L
	ld c,h			;6b12	4c		L
	ld c,h			;6b13	4c		L
	ld c,h			;6b14	4c		L
	ld c,e			;6b15	4b		K
	ld c,e			;6b16	4b		K
	ld b,(hl)		;6b17	46		F
	ld b,(hl)		;6b18	46		F
	ld c,e			;6b19	4b		K
	ld c,h			;6b1a	4c		L
	ld c,h			;6b1b	4c		L
	ld c,h			;6b1c	4c		L
	ld c,h			;6b1d	4c		L
	ld c,h			;6b1e	4c		L
	ld c,h			;6b1f	4c		L
	dec bc			;6b20	0b		.
	rlca			;6b21	07		.
	rlca			;6b22	07		.
	rlca			;6b23	07		.
	rlca			;6b24	07		.
	dec bc			;6b25	0b		.
	rlca			;6b26	07		.
	rlca			;6b27	07		.
	rlca			;6b28	07		.
	dec bc			;6b29	0b		.
	dec bc			;6b2a	0b		.
	rlca			;6b2b	07		.
	rlca			;6b2c	07		.
	rlca			;6b2d	07		.
	rlca			;6b2e	07		.
	dec bc			;6b2f	0b		.
	ld c,h			;6b30	4c		L
	ld c,e			;6b31	4b		K
	ld c,e			;6b32	4b		K
	ld c,(hl)		;6b33	4e		N
	ld c,e			;6b34	4b		K
	ld c,h			;6b35	4c		L
	ld c,e			;6b36	4b		K
	ld c,(hl)		;6b37	4e		N
	ld c,e			;6b38	4b		K
	ld c,h			;6b39	4c		L
	ld c,h			;6b3a	4c		L
	ld c,e			;6b3b	4b		K
	ld c,(hl)		;6b3c	4e		N
	ld c,e			;6b3d	4b		K
	ld c,e			;6b3e	4b		K
	ld c,h			;6b3f	4c		L
	dec bc			;6b40	0b		.
	rlca			;6b41	07		.
	rlca			;6b42	07		.
	rlca			;6b43	07		.
	rlca			;6b44	07		.
	dec bc			;6b45	0b		.
	dec bc			;6b46	0b		.
	rlca			;6b47	07		.
	rlca			;6b48	07		.
	rlca			;6b49	07		.
	dec bc			;6b4a	0b		.
	rlca			;6b4b	07		.
	rlca			;6b4c	07		.
	rlca			;6b4d	07		.
	rlca			;6b4e	07		.
	dec bc			;6b4f	0b		.
	ld c,h			;6b50	4c		L
	ld c,e			;6b51	4b		K
	ld c,e			;6b52	4b		K
	ld c,(hl)		;6b53	4e		N
	ld c,e			;6b54	4b		K
	ld c,h			;6b55	4c		L
	ld c,h			;6b56	4c		L
	ld c,e			;6b57	4b		K
	ld c,(hl)		;6b58	4e		N
	ld c,e			;6b59	4b		K
	ld c,h			;6b5a	4c		L
	ld c,e			;6b5b	4b		K
	ld c,(hl)		;6b5c	4e		N
	ld c,e			;6b5d	4b		K
	ld c,e			;6b5e	4b		K
	ld c,h			;6b5f	4c		L
	dec bc			;6b60	0b		.
	dec bc			;6b61	0b		.
	dec bc			;6b62	0b		.
	dec bc			;6b63	0b		.
	dec bc			;6b64	0b		.
	dec bc			;6b65	0b		.
	rlca			;6b66	07		.
	rlca			;6b67	07		.
	rlca			;6b68	07		.
	rlca			;6b69	07		.
	rlca			;6b6a	07		.
	dec bc			;6b6b	0b		.
	dec bc			;6b6c	0b		.
	dec bc			;6b6d	0b		.
	dec bc			;6b6e	0b		.
	dec bc			;6b6f	0b		.
	ld c,h			;6b70	4c		L
	ld c,h			;6b71	4c		L
	ld c,h			;6b72	4c		L
	ld c,h			;6b73	4c		L
	ld c,h			;6b74	4c		L
	ld c,h			;6b75	4c		L
	ld c,e			;6b76	4b		K
	ld c,(hl)		;6b77	4e		N
	ld c,(hl)		;6b78	4e		N
	ld c,(hl)		;6b79	4e		N
	ld c,e			;6b7a	4b		K
	ld c,h			;6b7b	4c		L
	ld c,h			;6b7c	4c		L
	ld c,h			;6b7d	4c		L
	ld c,h			;6b7e	4c		L
	ld c,h			;6b7f	4c		L
	dec bc			;6b80	0b		.
	dec bc			;6b81	0b		.
	dec bc			;6b82	0b		.
	dec bc			;6b83	0b		.
	dec bc			;6b84	0b		.
	rlca			;6b85	07		.
	rlca			;6b86	07		.
	rlca			;6b87	07		.
	rlca			;6b88	07		.
	rlca			;6b89	07		.
	dec bc			;6b8a	0b		.
	dec bc			;6b8b	0b		.
	dec bc			;6b8c	0b		.
	dec bc			;6b8d	0b		.
	dec bc			;6b8e	0b		.
	dec bc			;6b8f	0b		.
	ld c,h			;6b90	4c		L
	ld c,h			;6b91	4c		L
	ld c,h			;6b92	4c		L
	ld c,h			;6b93	4c		L
	ld c,h			;6b94	4c		L
	ld c,e			;6b95	4b		K
	ld c,(hl)		;6b96	4e		N
	ld c,(hl)		;6b97	4e		N
	ld c,(hl)		;6b98	4e		N
	ld c,e			;6b99	4b		K
	ld c,h			;6b9a	4c		L
	ld c,h			;6b9b	4c		L
	ld c,h			;6b9c	4c		L
	ld c,h			;6b9d	4c		L
	ld c,h			;6b9e	4c		L
	ld c,h			;6b9f	4c		L
	dec bc			;6ba0	0b		.
	rlca			;6ba1	07		.
	rlca			;6ba2	07		.
	rlca			;6ba3	07		.
	rlca			;6ba4	07		.
	dec bc			;6ba5	0b		.
	rlca			;6ba6	07		.
	rlca			;6ba7	07		.
	rlca			;6ba8	07		.
	rlca			;6ba9	07		.
	dec bc			;6baa	0b		.
	dec bc			;6bab	0b		.
	dec bc			;6bac	0b		.
	dec bc			;6bad	0b		.
	dec bc			;6bae	0b		.
	dec bc			;6baf	0b		.
	ld c,h			;6bb0	4c		L
	ld c,e			;6bb1	4b		K
	ld c,e			;6bb2	4b		K
	ld c,(hl)		;6bb3	4e		N
	ld c,e			;6bb4	4b		K
	ld c,h			;6bb5	4c		L
	ld c,e			;6bb6	4b		K
	ld c,(hl)		;6bb7	4e		N
	ld c,e			;6bb8	4b		K
	ld c,h			;6bb9	4c		L
	ld c,h			;6bba	4c		L
	ld c,h			;6bbb	4c		L
	ld c,h			;6bbc	4c		L
	ld c,h			;6bbd	4c		L
	ld c,h			;6bbe	4c		L
	ld c,h			;6bbf	4c		L
	dec bc			;6bc0	0b		.
	dec bc			;6bc1	0b		.
	inc c			;6bc2	0c		.
	ld a,(bc)		;6bc3	0a		.
	inc c			;6bc4	0c		.
	dec bc			;6bc5	0b		.
	ld c,00bh		;6bc6	0e 0b		. .
	dec bc			;6bc8	0b		.
	dec bc			;6bc9	0b		.
	inc c			;6bca	0c		.
	dec bc			;6bcb	0b		.
	dec bc			;6bcc	0b		.
	dec bc			;6bcd	0b		.
	dec bc			;6bce	0b		.
	dec bc			;6bcf	0b		.
	ld c,h			;6bd0	4c		L
	ld c,h			;6bd1	4c		L
	ld b,(hl)		;6bd2	46		F
	ld c,e			;6bd3	4b		K
	ld b,(hl)		;6bd4	46		F
	ld b,(hl)		;6bd5	46		F
	ld c,a			;6bd6	4f		O
	ld c,h			;6bd7	4c		L
	ld c,h			;6bd8	4c		L
	ld c,h			;6bd9	4c		L
	ld c,d			;6bda	4a		J
	ld b,(hl)		;6bdb	46		F
	ld b,(hl)		;6bdc	46		F
	ld c,h			;6bdd	4c		L
	ld c,h			;6bde	4c		L
	ld c,h			;6bdf	4c		L
	nop			;6be0	00		.
	nop			;6be1	00		.
	dec bc			;6be2	0b		.
	ld c,00ch		;6be3	0e 0c		. .
	ld c,00bh		;6be5	0e 0b		. .
	ld c,006h		;6be7	0e 06		. .
	dec bc			;6be9	0b		.
	dec bc			;6bea	0b		.
	rrca			;6beb	0f		.
	inc c			;6bec	0c		.
	inc c			;6bed	0c		.
	rrca			;6bee	0f		.
	nop			;6bef	00		.
	dec bc			;6bf0	0b		.
	dec bc			;6bf1	0b		.
	inc c			;6bf2	0c		.
	dec bc			;6bf3	0b		.
	dec bc			;6bf4	0b		.
	dec bc			;6bf5	0b		.
	dec bc			;6bf6	0b		.
	dec bc			;6bf7	0b		.
	dec bc			;6bf8	0b		.
	dec bc			;6bf9	0b		.
	dec bc			;6bfa	0b		.
	dec bc			;6bfb	0b		.
	dec bc			;6bfc	0b		.
	dec bc			;6bfd	0b		.
	dec bc			;6bfe	0b		.
	dec bc			;6bff	0b		.
	ld c,h			;6c00	4c		L
	ld c,h			;6c01	4c		L
	ld c,(hl)		;6c02	4e		N
	ld c,h			;6c03	4c		L
	ld c,h			;6c04	4c		L
	ld c,h			;6c05	4c		L
	ld c,h			;6c06	4c		L
	ld c,h			;6c07	4c		L
	ld c,h			;6c08	4c		L
	ld c,h			;6c09	4c		L
	ld c,h			;6c0a	4c		L
	ld c,h			;6c0b	4c		L
	ld c,h			;6c0c	4c		L
	ld c,h			;6c0d	4c		L
	ld c,h			;6c0e	4c		L
	ld c,h			;6c0f	4c		L
	inc bc			;6c10	03		.
	ld c,00eh		;6c11	0e 0e		. .
	inc bc			;6c13	03		.
	ld (bc),a		;6c14	02		.
	ld bc,0030eh		;6c15	01 0e 03	. . .
	ld (bc),a		;6c18	02		.
	ld bc,00309h		;6c19	01 09 03	. . .
	ld (bc),a		;6c1c	02		.
	ld bc,00909h		;6c1d	01 09 09	. . .
	add hl,bc		;6c20	09		.
	ld bc,00202h		;6c21	01 02 02	. . .
	inc bc			;6c24	03		.
	ld c,00eh		;6c25	0e 0e		. .
	inc bc			;6c27	03		.
	inc bc			;6c28	03		.
	ld (bc),a		;6c29	02		.
	ld (bc),a		;6c2a	02		.
	ld (bc),a		;6c2b	02		.
	ld bc,00101h		;6c2c	01 01 01	. . .
	nop			;6c2f	00		.
	ld bc,00302h		;6c30	01 02 03	. . .
	ld c,00eh		;6c33	0e 0e		. .
	ld c,00eh		;6c35	0e 0e		. .
	inc bc			;6c37	03		.
	inc bc			;6c38	03		.
	ld (bc),a		;6c39	02		.
	ld (bc),a		;6c3a	02		.
	ld (bc),a		;6c3b	02		.
	ld (bc),a		;6c3c	02		.
	ld bc,00001h		;6c3d	01 01 00	. . .
	add hl,bc		;6c40	09		.
	ld bc,00202h		;6c41	01 02 02	. . .
	inc bc			;6c44	03		.
	ld c,00eh		;6c45	0e 0e		. .
	inc bc			;6c47	03		.
	inc bc			;6c48	03		.
	ld (bc),a		;6c49	02		.
	ld (bc),a		;6c4a	02		.
	ld (bc),a		;6c4b	02		.
	ld bc,00101h		;6c4c	01 01 01	. . .
	add hl,bc		;6c4f	09		.
	ld b,d			;6c50	42		B
	ld b,d			;6c51	42		B
	ld b,d			;6c52	42		B
	ld b,d			;6c53	42		B
	ld b,d			;6c54	42		B
	ld b,d			;6c55	42		B
	ld b,d			;6c56	42		B
	ld b,d			;6c57	42		B
	ld b,d			;6c58	42		B
	ld b,d			;6c59	42		B
	ld b,d			;6c5a	42		B
	ld b,d			;6c5b	42		B
	ld b,d			;6c5c	42		B
	ld b,d			;6c5d	42		B
	ld b,d			;6c5e	42		B
	ld b,d			;6c5f	42		B
	ex af,af'		;6c60	08		.
	ex af,af'		;6c61	08		.
	ex af,af'		;6c62	08		.
	ex af,af'		;6c63	08		.
	dec c			;6c64	0d		.
	dec c			;6c65	0d		.
	ex af,af'		;6c66	08		.
	dec c			;6c67	0d		.
	dec c			;6c68	0d		.
	dec c			;6c69	0d		.
	dec c			;6c6a	0d		.
	dec c			;6c6b	0d		.
	dec c			;6c6c	0d		.
	dec b			;6c6d	05		.
	dec b			;6c6e	05		.
	dec b			;6c6f	05		.
	ld c,(hl)		;6c70	4e		N
	ld c,(hl)		;6c71	4e		N
	ld c,(hl)		;6c72	4e		N
	ld c,l			;6c73	4d		M
	ld c,(hl)		;6c74	4e		N
	ld c,(hl)		;6c75	4e		N
	ld c,a			;6c76	4f		O
	ld c,(hl)		;6c77	4e		N
	ld c,(hl)		;6c78	4e		N
	ld c,(hl)		;6c79	4e		N
	ld c,(hl)		;6c7a	4e		N
	ld c,(hl)		;6c7b	4e		N
	ld c,(hl)		;6c7c	4e		N
	ld c,a			;6c7d	4f		O
	ld c,a			;6c7e	4f		O
	ld c,a			;6c7f	4f		O
	nop			;6c80	00		.
	nop			;6c81	00		.
	nop			;6c82	00		.
	rrca			;6c83	0f		.
	rrca			;6c84	0f		.
	rrca			;6c85	0f		.
	ld c,00eh		;6c86	0e 0e		. .
	rrca			;6c88	0f		.
	rrca			;6c89	0f		.
	rrca			;6c8a	0f		.
	rrca			;6c8b	0f		.
	rrca			;6c8c	0f		.
	rrca			;6c8d	0f		.
	rrca			;6c8e	0f		.
	rrca			;6c8f	0f		.
	ld b,(hl)		;6c90	46		F
	ld c,b			;6c91	48		H
	ld c,b			;6c92	48		H
	ld c,l			;6c93	4d		M
	ld c,l			;6c94	4d		M
	ld c,b			;6c95	48		H
	ld c,l			;6c96	4d		M
	ld c,l			;6c97	4d		M
	ld c,b			;6c98	48		H
	ld c,l			;6c99	4d		M
	ld c,l			;6c9a	4d		M
	ld c,l			;6c9b	4d		M
	ld c,l			;6c9c	4d		M
	ld c,l			;6c9d	4d		M
	ld c,l			;6c9e	4d		M
	ld b,(hl)		;6c9f	46		F
	nop			;6ca0	00		.
	nop			;6ca1	00		.
	nop			;6ca2	00		.
	rrca			;6ca3	0f		.
	rrca			;6ca4	0f		.
	rrca			;6ca5	0f		.
	ld c,00eh		;6ca6	0e 0e		. .
	rrca			;6ca8	0f		.
	rrca			;6ca9	0f		.
	rrca			;6caa	0f		.
	rrca			;6cab	0f		.
	rrca			;6cac	0f		.
	rrca			;6cad	0f		.
	rrca			;6cae	0f		.
	rrca			;6caf	0f		.
	ld b,(hl)		;6cb0	46		F
	ld c,b			;6cb1	48		H
	ld c,b			;6cb2	48		H
	ld c,l			;6cb3	4d		M
	ld c,l			;6cb4	4d		M
	ld c,b			;6cb5	48		H
	ld c,l			;6cb6	4d		M
	ld c,l			;6cb7	4d		M
	ld c,b			;6cb8	48		H
	ld c,l			;6cb9	4d		M
	ld c,l			;6cba	4d		M
	ld c,l			;6cbb	4d		M
	ld c,l			;6cbc	4d		M
	ld c,l			;6cbd	4d		M
	ld c,l			;6cbe	4d		M
	ld b,(hl)		;6cbf	46		F
	nop			;6cc0	00		.
	nop			;6cc1	00		.
	rrca			;6cc2	0f		.
	rrca			;6cc3	0f		.
	rrca			;6cc4	0f		.
	rrca			;6cc5	0f		.
	ld c,00eh		;6cc6	0e 0e		. .
	rrca			;6cc8	0f		.
	rrca			;6cc9	0f		.
	rrca			;6cca	0f		.
	rrca			;6ccb	0f		.
	rrca			;6ccc	0f		.
	rrca			;6ccd	0f		.
	rrca			;6cce	0f		.
	rrca			;6ccf	0f		.
	ld b,b			;6cd0	40		@
	ld b,(hl)		;6cd1	46		F
	ld c,b			;6cd2	48		H
	ld c,l			;6cd3	4d		M
	ld c,l			;6cd4	4d		M
	ld c,b			;6cd5	48		H
	ld c,l			;6cd6	4d		M
	ld c,l			;6cd7	4d		M
	ld c,b			;6cd8	48		H
	ld c,l			;6cd9	4d		M
	ld c,l			;6cda	4d		M
	ld c,l			;6cdb	4d		M
	ld c,l			;6cdc	4d		M
	ld c,l			;6cdd	4d		M
	ld b,(hl)		;6cde	46		F
	ld b,b			;6cdf	40		@
	nop			;6ce0	00		.
	nop			;6ce1	00		.
	nop			;6ce2	00		.
	nop			;6ce3	00		.
	nop			;6ce4	00		.
	nop			;6ce5	00		.
	nop			;6ce6	00		.
	nop			;6ce7	00		.
	nop			;6ce8	00		.
	nop			;6ce9	00		.
	nop			;6cea	00		.
	nop			;6ceb	00		.
	nop			;6cec	00		.
	nop			;6ced	00		.
	nop			;6cee	00		.
	nop			;6cef	00		.
	nop			;6cf0	00		.
	nop			;6cf1	00		.
	nop			;6cf2	00		.
	nop			;6cf3	00		.
	nop			;6cf4	00		.
	nop			;6cf5	00		.
	nop			;6cf6	00		.
	nop			;6cf7	00		.
	nop			;6cf8	00		.
	nop			;6cf9	00		.
	nop			;6cfa	00		.
	nop			;6cfb	00		.
	nop			;6cfc	00		.
	nop			;6cfd	00		.
	nop			;6cfe	00		.
	nop			;6cff	00		.
sub_6d00h:
	jp 0801fh		;6d00	c3 1f 80	. . .
	jp 080f4h		;6d03	c3 f4 80	. . .
	jp 00000h		;6d06	c3 00 00	. . .
sub_6d09h:
	jp 0800fh		;6d09	c3 0f 80	. . .
	jp 08000h		;6d0c	c3 00 80	. . .
	jp l6d30h		;6d0f	c3 30 6d	. 0 m
	jp l6e44h		;6d12	c3 44 6e	. D n
	jp l6d95h		;6d15	c3 95 6d	. . m
	jp l6d69h		;6d18	c3 69 6d	. i m
	jp l707dh		;6d1b	c3 7d 70	. } p
	rst 38h			;6d1e	ff		.
	rst 38h			;6d1f	ff		.
	rst 38h			;6d20	ff		.
	rst 38h			;6d21	ff		.
	rst 38h			;6d22	ff		.
	rst 38h			;6d23	ff		.
	rst 38h			;6d24	ff		.
	rst 38h			;6d25	ff		.
	rst 38h			;6d26	ff		.
	rst 38h			;6d27	ff		.
	rst 38h			;6d28	ff		.
	rst 38h			;6d29	ff		.
	rst 38h			;6d2a	ff		.
	rst 38h			;6d2b	ff		.
	rst 38h			;6d2c	ff		.
	rst 38h			;6d2d	ff		.
	rst 38h			;6d2e	ff		.
	rst 38h			;6d2f	ff		.
l6d30h:
	call sub_6d75h		;6d30	cd 75 6d	. u m
	ld a,(0ca10h)		;6d33	3a 10 ca	: . .
	call sub_6d00h		;6d36	cd 00 6d	. . m
	call 0476bh		;6d39	cd 6b 47	. k G
	ld hl,0c000h		;6d3c	21 00 c0	! . .
	ld bc,005ffh		;6d3f	01 ff 05	. . .
	call 04648h		;6d42	cd 48 46	. H F
	ld a,001h		;6d45	3e 01		> .
	call 047dch		;6d47	cd dc 47	. . G
	and 03eh		;6d4a	e6 3e		. >
	cp 004h			;6d4c	fe 04		. .
	jr nz,l6d59h		;6d4e	20 09		  .
	ld (0c0ebh),a		;6d50	32 eb c0	2 . .
	ld bc,00219h		;6d53	01 19 02	. . .
	call 00047h		;6d56	cd 47 00	. G .
l6d59h:
	call sub_77fch		;6d59	cd fc 77	. . w
	call sub_7683h		;6d5c	cd 83 76	. . v
	call sub_6f99h		;6d5f	cd 99 6f	. . o
	call 04b8fh		;6d62	cd 8f 4b	. . K
	call sub_6e77h		;6d65	cd 77 6e	. w n
	ret			;6d68	c9		.
l6d69h:
	call sub_6d75h		;6d69	cd 75 6d	. u m
	call sub_6f99h		;6d6c	cd 99 6f	. . o
	call 0476bh		;6d6f	cd 6b 47	. k G
	jp 04b8fh		;6d72	c3 8f 4b	. . K
sub_6d75h:
	ld hl,l705ch		;6d75	21 5c 70	! \ p
	ld b,009h		;6d78	06 09		. .
	call 04a1fh		;6d7a	cd 1f 4a	. . J
	ld a,(0ffe7h)		;6d7d	3a e7 ff	: . .
	and 008h		;6d80	e6 08		. .
	or 022h			;6d82	f6 22		. "
	ld b,a			;6d84	47		G
	ld c,008h		;6d85	0e 08		. .
	call 00047h		;6d87	cd 47 00	. G .
	ld a,(0c0ebh)		;6d8a	3a eb c0	: . .
	or a			;6d8d	b7		.
	ret z			;6d8e	c8		.
	ld bc,00219h		;6d8f	01 19 02	. . .
	jp 00047h		;6d92	c3 47 00	. G .
l6d95h:
	ld a,(0ca10h)		;6d95	3a 10 ca	: . .
	cp 004h			;6d98	fe 04		. .
	push af			;6d9a	f5		.
	call z,sub_6dc3h	;6d9b	cc c3 6d	. . m
	pop af			;6d9e	f1		.
	cp 008h			;6d9f	fe 08		. .
	call z,sub_6dbdh	;6da1	cc bd 6d	. . m
	call sub_7203h		;6da4	cd 03 72	. . r
	call sub_7ab5h		;6da7	cd b5 7a	. . z
	ld a,(0c0d4h)		;6daa	3a d4 c0	: . .
	dec a			;6dad	3d		=
	jr z,l6debh		;6dae	28 3b		( ;
	dec a			;6db0	3d		=
	jr z,l6deeh		;6db1	28 3b		( ;
	jp p,l6e08h		;6db3	f2 08 6e	. . n
	call sub_7ac4h		;6db6	cd c4 7a	. . z
	call sub_7755h		;6db9	cd 55 77	. U w
	ret			;6dbc	c9		.
sub_6dbdh:
	ld a,(0ca02h)		;6dbd	3a 02 ca	: . .
	and 003h		;6dc0	e6 03		. .
	ret nz			;6dc2	c0		.
sub_6dc3h:
	di			;6dc3	f3		.
	ld a,(0c0b5h)		;6dc4	3a b5 c0	: . .
	or a			;6dc7	b7		.
	jr nz,l6de9h		;6dc8	20 1f		  .
	ld a,(0c0b4h)		;6dca	3a b4 c0	: . .
	cp 004h			;6dcd	fe 04		. .
	ret nc			;6dcf	d0		.
	ld a,(0c0dbh)		;6dd0	3a db c0	: . .
	inc a			;6dd3	3c		<
	cp 006h			;6dd4	fe 06		. .
	jr c,l6dd9h		;6dd6	38 01		8 .
	xor a			;6dd8	af		.
l6dd9h:
	ld (0c0dbh),a		;6dd9	32 db c0	2 . .
	cp 004h			;6ddc	fe 04		. .
	jr c,l6de4h		;6dde	38 04		8 .
	neg			;6de0	ed 44		. D
	add a,006h		;6de2	c6 06		. .
l6de4h:
	set 7,a			;6de4	cb ff		. .
	ld (0c0b5h),a		;6de6	32 b5 c0	2 . .
l6de9h:
	ei			;6de9	fb		.
	ret			;6dea	c9		.
l6debh:
	call sub_6d09h		;6deb	cd 09 6d	. . m
l6deeh:
	xor a			;6dee	af		.
	ld d,a			;6def	57		W
	ld e,a			;6df0	5f		_
	ld (0ca1ch),de		;6df1	ed 53 1c ca	. S . .
	ld (0ca1ah),de		;6df5	ed 53 1a ca	. S . .
	ld (0ca14h),de		;6df9	ed 53 14 ca	. S . .
	ld (0ca12h),de		;6dfd	ed 53 12 ca	. S . .
	ld (0c0d5h),a		;6e01	32 d5 c0	2 . .
	ld hl,0c0d4h		;6e04	21 d4 c0	! . .
	inc (hl)		;6e07	34		4
l6e08h:
	call sub_6e37h		;6e08	cd 37 6e	. 7 n
sub_6e0bh:
	ld c,018h		;6e0b	0e 18		. .
	ld de,00010h		;6e0d	11 10 00	. . .
	ld hl,0d988h		;6e10	21 88 d9	! . .
	xor a			;6e13	af		.
l6e14h:
	ld b,004h		;6e14	06 04		. .
l6e16h:
	ld (hl),a		;6e16	77		w
	inc hl			;6e17	23		#
	ld (hl),a		;6e18	77		w
	inc hl			;6e19	23		#
	ld (hl),a		;6e1a	77		w
	inc hl			;6e1b	23		#
	ld (hl),a		;6e1c	77		w
	inc hl			;6e1d	23		#
	ld (hl),a		;6e1e	77		w
	inc hl			;6e1f	23		#
	ld (hl),a		;6e20	77		w
	inc hl			;6e21	23		#
	ld (hl),a		;6e22	77		w
	inc hl			;6e23	23		#
	ld (hl),a		;6e24	77		w
	inc hl			;6e25	23		#
	djnz l6e16h		;6e26	10 ee		. .
	add hl,de		;6e28	19		.
	dec c			;6e29	0d		.
	jr nz,l6e14h		;6e2a	20 e8		  .
	ret			;6e2c	c9		.
sub_6e2dh:
	ld hl,0e000h		;6e2d	21 00 e0	! . .
	ld bc,007ffh		;6e30	01 ff 07	. . .
	call 04648h		;6e33	cd 48 46	. H F
	ret			;6e36	c9		.
sub_6e37h:
	ld hl,(0c0dch)		;6e37	2a dc c0	* . .
	ld (0ca12h),hl		;6e3a	22 12 ca	" . .
	ld hl,(0c0deh)		;6e3d	2a de c0	* . .
	ld (0ca14h),hl		;6e40	22 14 ca	" . .
	ret			;6e43	c9		.
l6e44h:
	call sub_7070h		;6e44	cd 70 70	. p p
	ld a,(0c09bh)		;6e47	3a 9b c0	: . .
	rrca			;6e4a	0f		.
	call sub_6f43h		;6e4b	cd 43 6f	. C o
	call sub_707eh		;6e4e	cd 7e 70	. ~ p
	ld a,(0ca10h)		;6e51	3a 10 ca	: . .
	or a			;6e54	b7		.
	call z,sub_6e8ah	;6e55	cc 8a 6e	. . n
	ld a,(0ca10h)		;6e58	3a 10 ca	: . .
	cp 002h			;6e5b	fe 02		. .
	call z,sub_6e97h	;6e5d	cc 97 6e	. . n
	call sub_7683h		;6e60	cd 83 76	. . v
	ld a,001h		;6e63	3e 01		> .
	ld (0c09ch),a		;6e65	32 9c c0	2 . .
	ld a,(0ef60h)		;6e68	3a 60 ef	: ` .
	rlca			;6e6b	07		.
	ret nc			;6e6c	d0		.
	rlca			;6e6d	07		.
	jp c,04cf5h		;6e6e	da f5 4c	. . L
	ld a,0c0h		;6e71	3e c0		> .
	ld (0ef60h),a		;6e73	32 60 ef	2 ` .
	ret			;6e76	c9		.
sub_6e77h:
	xor a			;6e77	af		.
	ld (0c0eah),a		;6e78	32 ea c0	2 . .
	ld hl,0e800h		;6e7b	21 00 e8	! . .
	ld b,018h		;6e7e	06 18		. .
l6e80h:
	call 04678h		;6e80	cd 78 46	. x F
	and 01fh		;6e83	e6 1f		. .
	ld (hl),a		;6e85	77		w
	inc hl			;6e86	23		#
	djnz l6e80h		;6e87	10 f7		. .
	ret			;6e89	c9		.
sub_6e8ah:
	ld de,00020h		;6e8a	11 20 00	.   .
	ld b,0cdh		;6e8d	06 cd		. .
	jr l6e9ch		;6e8f	18 0b		. .
l6e91h:
	ld a,001h		;6e91	3e 01		> .
	ld (0c0eah),a		;6e93	32 ea c0	2 . .
	ret			;6e96	c9		.
sub_6e97h:
	ld de,0ffe0h		;6e97	11 e0 ff	. . .
	ld b,05fh		;6e9a	06 5f		. _
l6e9ch:
	ld a,(0c0d4h)		;6e9c	3a d4 c0	: . .
	or a			;6e9f	b7		.
	jr nz,l6e91h		;6ea0	20 ef		  .
	ld a,(0c0eah)		;6ea2	3a ea c0	: . .
	or a			;6ea5	b7		.
	ret nz			;6ea6	c0		.
	push bc			;6ea7	c5		.
	push de			;6ea8	d5		.
	ld de,(0c0e6h)		;6ea9	ed 5b e6 c0	. [ . .
	ld hl,(0ca12h)		;6ead	2a 12 ca	* . .
	call 04612h		;6eb0	cd 12 46	. . F
	add hl,de		;6eb3	19		.
	ld a,d			;6eb4	7a		z
	cp h			;6eb5	bc		.
	ld (0c0e6h),hl		;6eb6	22 e6 c0	" . .
	call nz,sub_6f20h	;6eb9	c4 20 6f	.   o
	ld hl,(0c0e8h)		;6ebc	2a e8 c0	* . .
	ld de,(0ca14h)		;6ebf	ed 5b 14 ca	. [ . .
	add hl,de		;6ec3	19		.
	pop de			;6ec4	d1		.
	add hl,de		;6ec5	19		.
	ld (0c0e8h),hl		;6ec6	22 e8 c0	" . .
	ld de,(0ca1ch)		;6ec9	ed 5b 1c ca	. [ . .
	ld d,000h		;6ecd	16 00		. .
	add hl,de		;6ecf	19		.
	ld a,l			;6ed0	7d		}
	srl a			;6ed1	cb 3f		. ?
	srl a			;6ed3	cb 3f		. ?
	srl a			;6ed5	cb 3f		. ?
	srl a			;6ed7	cb 3f		. ?
	srl a			;6ed9	cb 3f		. ?
	neg			;6edb	ed 44		. D
	pop bc			;6edd	c1		.
	add a,b			;6ede	80		.
	push hl			;6edf	e5		.
	exx			;6ee0	d9		.
	pop hl			;6ee1	e1		.
	ld l,a			;6ee2	6f		o
	exx			;6ee3	d9		.
	ld de,0e800h		;6ee4	11 00 e8	. . .
	ld hl,0d988h		;6ee7	21 88 d9	! . .
	ld b,018h		;6eea	06 18		. .
l6eech:
	push bc			;6eec	c5		.
	push hl			;6eed	e5		.
	ld a,(de)		;6eee	1a		.
	inc de			;6eef	13		.
	exx			;6ef0	d9		.
	add a,h			;6ef1	84		.
	and 01fh		;6ef2	e6 1f		. .
	exx			;6ef4	d9		.
	ld c,a			;6ef5	4f		O
	ld b,000h		;6ef6	06 00		. .
	add hl,bc		;6ef8	09		.
	ld a,(hl)		;6ef9	7e		~
	or a			;6efa	b7		.
	jr nz,l6f01h		;6efb	20 04		  .
	exx			;6efd	d9		.
	ld a,l			;6efe	7d		}
	exx			;6eff	d9		.
	ld (hl),a		;6f00	77		w
l6f01h:
	pop hl			;6f01	e1		.
	push hl			;6f02	e5		.
	ld a,(de)		;6f03	1a		.
	exx			;6f04	d9		.
	add a,h			;6f05	84		.
	add a,00dh		;6f06	c6 0d		. .
	and 01fh		;6f08	e6 1f		. .
	exx			;6f0a	d9		.
	ld c,a			;6f0b	4f		O
	ld b,000h		;6f0c	06 00		. .
	add hl,bc		;6f0e	09		.
	ld a,(hl)		;6f0f	7e		~
	or a			;6f10	b7		.
	jr nz,l6f17h		;6f11	20 04		  .
	exx			;6f13	d9		.
	ld a,l			;6f14	7d		}
	exx			;6f15	d9		.
	ld (hl),a		;6f16	77		w
l6f17h:
	pop hl			;6f17	e1		.
	ld bc,00030h		;6f18	01 30 00	. 0 .
	add hl,bc		;6f1b	09		.
	pop bc			;6f1c	c1		.
	djnz l6eech		;6f1d	10 cd		. .
	ret			;6f1f	c9		.
sub_6f20h:
	ld a,(0c0d5h)		;6f20	3a d5 c0	: . .
	cp 002h			;6f23	fe 02		. .
	jr z,l6f35h		;6f25	28 0e		( .
	ld de,0e817h		;6f27	11 17 e8	. . .
	ld hl,0e816h		;6f2a	21 16 e8	! . .
	ld bc,00017h		;6f2d	01 17 00	. . .
	ld a,(de)		;6f30	1a		.
	lddr			;6f31	ed b8		. .
	ld (de),a		;6f33	12		.
	ret			;6f34	c9		.
l6f35h:
	ld de,0e800h		;6f35	11 00 e8	. . .
	ld hl,0e801h		;6f38	21 01 e8	! . .
	ld bc,00017h		;6f3b	01 17 00	. . .
	ld a,(de)		;6f3e	1a		.
	ldir			;6f3f	ed b0		. .
	ld (de),a		;6f41	12		.
	ret			;6f42	c9		.
sub_6f43h:
	jr c,l6f6fh		;6f43	38 2a		8 *
	ld a,(0c0d2h)		;6f45	3a d2 c0	: . .
	sub 01ch		;6f48	d6 1c		. .
	ld (0c9c5h),a		;6f4a	32 c5 c9	2 . .
	add a,06ch		;6f4d	c6 6c		. l
	ld (0c9cfh),a		;6f4f	32 cf c9	2 . .
	ld a,(0c0ebh)		;6f52	3a eb c0	: . .
	or a			;6f55	b7		.
	jr nz,l6f65h		;6f56	20 0d		  .
	ld a,(0c0bbh)		;6f58	3a bb c0	: . .
	and 007h		;6f5b	e6 07		. .
	sub 008h		;6f5d	d6 08		. .
	and 00fh		;6f5f	e6 0f		. .
	ld (0c9c7h),a		;6f61	32 c7 c9	2 . .
	ret			;6f64	c9		.
l6f65h:
	ld a,(0c0bbh)		;6f65	3a bb c0	: . .
	cpl			;6f68	2f		/
	and 007h		;6f69	e6 07		. .
	ld (0c9c7h),a		;6f6b	32 c7 c9	2 . .
	ret			;6f6e	c9		.
l6f6fh:
	ld a,(0c0d2h)		;6f6f	3a d2 c0	: . .
	sub 01ch		;6f72	d6 1c		. .
	ld (0c9f1h),a		;6f74	32 f1 c9	2 . .
	add a,08ch		;6f77	c6 8c		. .
	ld (0c9fbh),a		;6f79	32 fb c9	2 . .
	ld a,(0c0ebh)		;6f7c	3a eb c0	: . .
	or a			;6f7f	b7		.
	jr nz,l6f8fh		;6f80	20 0d		  .
	ld a,(0c0bbh)		;6f82	3a bb c0	: . .
	and 007h		;6f85	e6 07		. .
	sub 008h		;6f87	d6 08		. .
	and 00fh		;6f89	e6 0f		. .
	ld (0c9f3h),a		;6f8b	32 f3 c9	2 . .
	ret			;6f8e	c9		.
l6f8fh:
	ld a,(0c0bbh)		;6f8f	3a bb c0	: . .
	cpl			;6f92	2f		/
	and 007h		;6f93	e6 07		. .
	ld (0c9f3h),a		;6f95	32 f3 c9	2 . .
	ret			;6f98	c9		.
sub_6f99h:
	ld de,0c9beh		;6f99	11 be c9	. . .
	ld hl,l7007h		;6f9c	21 07 70	! . p
	ld bc,00015h		;6f9f	01 15 00	. . .
	ldir			;6fa2	ed b0		. .
	ld de,0c9eah		;6fa4	11 ea c9	. . .
	ld hl,l7034h		;6fa7	21 34 70	! 4 p
	ld bc,00015h		;6faa	01 15 00	. . .
	ldir			;6fad	ed b0		. .
	ld de,0c948h		;6faf	11 48 c9	. H .
	ld hl,l7002h		;6fb2	21 02 70	! . p
	ld bc,00005h		;6fb5	01 05 00	. . .
	ldir			;6fb8	ed b0		. .
	ld de,0c978h		;6fba	11 78 c9	. x .
	ld hl,l702fh		;6fbd	21 2f 70	! / p
	ld bc,00005h		;6fc0	01 05 00	. . .
	ldir			;6fc3	ed b0		. .
	ld de,0c9a8h		;6fc5	11 a8 c9	. . .
	ld hl,l701ch		;6fc8	21 1c 70	! . p
	ld bc,00013h		;6fcb	01 13 00	. . .
	ldir			;6fce	ed b0		. .
	ld de,0c9d4h		;6fd0	11 d4 c9	. . .
	ld hl,l7049h		;6fd3	21 49 70	! I p
	ld bc,00013h		;6fd6	01 13 00	. . .
	ldir			;6fd9	ed b0		. .
	ld a,(0ffe7h)		;6fdb	3a e7 ff	: . .
	and 028h		;6fde	e6 28		. (
	ld (0c9c3h),a		;6fe0	32 c3 c9	2 . .
	ld (0c9efh),a		;6fe3	32 ef c9	2 . .
	or 002h			;6fe6	f6 02		. .
	ld (0c9abh),a		;6fe8	32 ab c9	2 . .
	ld (0c9d7h),a		;6feb	32 d7 c9	2 . .
	ld a,(0c0ebh)		;6fee	3a eb c0	: . .
	or a			;6ff1	b7		.
	ret z			;6ff2	c8		.
	ld a,09bh		;6ff3	3e 9b		> .
	ld (0c9c8h),a		;6ff5	32 c8 c9	2 . .
	ld (0c9f4h),a		;6ff8	32 f4 c9	2 . .
	ld (0c9b0h),a		;6ffb	32 b0 c9	2 . .
	ld (0c9dch),a		;6ffe	32 dc c9	2 . .
	ret			;7001	c9		.
l7002h:
	inc b			;7002	04		.
	rst 28h			;7003	ef		.
	add a,l			;7004	85		.
	inc b			;7005	04		.
	add a,b			;7006	80		.
l7007h:
	inc d			;7007	14		.
	ld (00481h),hl		;7008	22 81 04	" . .
	add a,b			;700b	80		.
	ex af,af'		;700c	08		.
	adc a,b			;700d	88		.
	nop			;700e	00		.
	sub a			;700f	97		.
	nop			;7010	00		.
	sub d			;7011	92		.
	jr nc,$-124		;7012	30 82		0 .
	rst 20h			;7014	e7		.
	add a,l			;7015	85		.
	ld h,d			;7016	62		b
	add a,c			;7017	81		.
	nop			;7018	00		.
	sub e			;7019	93		.
	inc d			;701a	14		.
	add a,b			;701b	80		.
l701ch:
	ld (de),a		;701c	12		.
	ld (00a81h),hl		;701d	22 81 0a	" . .
	adc a,b			;7020	88		.
	ret nz			;7021	c0		.
	sub a			;7022	97		.
	nop			;7023	00		.
	sub d			;7024	92		.
	ccf			;7025	3f		?
	add a,d			;7026	82		.
	rst 20h			;7027	e7		.
	add a,l			;7028	85		.
	in a,(093h)		;7029	db 93		. .
	ld h,d			;702b	62		b
	add a,c			;702c	81		.
	ld d,080h		;702d	16 80		. .
l702fh:
	inc b			;702f	04		.
	rst 38h			;7030	ff		.
	add a,l			;7031	85		.
	inc b			;7032	04		.
	add a,b			;7033	80		.
l7034h:
	inc d			;7034	14		.
	ld (00481h),hl		;7035	22 81 04	" . .
	add a,b			;7038	80		.
	ex af,af'		;7039	08		.
	adc a,b			;703a	88		.
	ret nz			;703b	c0		.
	sub a			;703c	97		.
	nop			;703d	00		.
	sub d			;703e	92		.
	ld sp,0f782h		;703f	31 82 f7	1 . .
	add a,l			;7042	85		.
	ld h,d			;7043	62		b
	add a,c			;7044	81		.
	nop			;7045	00		.
	sub e			;7046	93		.
	inc d			;7047	14		.
	add a,b			;7048	80		.
l7049h:
	ld (de),a		;7049	12		.
	ld (00a81h),hl		;704a	22 81 0a	" . .
	adc a,b			;704d	88		.
	ret nz			;704e	c0		.
	sub a			;704f	97		.
	nop			;7050	00		.
	sub d			;7051	92		.
	ccf			;7052	3f		?
	add a,d			;7053	82		.
	rst 30h			;7054	f7		.
	add a,l			;7055	85		.
	in a,(093h)		;7056	db 93		. .
	ld h,d			;7058	62		b
	add a,c			;7059	81		.
	ld d,080h		;705a	16 80		. .
l705ch:
	nop			;705c	00		.
	inc b			;705d	04		.
	ld b,019h		;705e	06 19		. .
	ld (bc),a		;7060	02		.
	jr nc,$+11		;7061	30 09		0 .
	add a,b			;7063	80		.
	inc b			;7064	04		.
	inc bc			;7065	03		.
	inc bc			;7066	03		.
	rst 38h			;7067	ff		.
	ld a,(bc)		;7068	0a		.
	nop			;7069	00		.
	ld bc,00762h		;706a	01 62 07	. b .
	rst 38h			;706d	ff		.
	ex af,af'		;706e	08		.
	ld a,(bc)		;706f	0a		.
sub_7070h:
	ld a,(0c0d8h)		;7070	3a d8 c0	: . .
	or a			;7073	b7		.
	ret z			;7074	c8		.
	dec a			;7075	3d		=
	ld (0c0d8h),a		;7076	32 d8 c0	2 . .
	ret nz			;7079	c0		.
	jp 04da9h		;707a	c3 a9 4d	. . M
l707dh:
	ret			;707d	c9		.
sub_707eh:
	call sub_7221h		;707e	cd 21 72	. ! r
	call sub_70e4h		;7081	cd e4 70	. . p
	ret			;7084	c9		.
	ld hl,0c000h		;7085	21 00 c0	! . .
	ld bc,0007fh		;7088	01 7f 00	. . .
	call 04648h		;708b	cd 48 46	. H F
	ld hl,0c180h		;708e	21 80 c1	! . .
	ld bc,0007fh		;7091	01 7f 00	. . .
	call 04648h		;7094	cd 48 46	. H F
	ld hl,0c280h		;7097	21 80 c2	! . .
	ld bc,0007fh		;709a	01 7f 00	. . .
	call 04648h		;709d	cd 48 46	. H F
	ret			;70a0	c9		.
	ld a,(ix+01ah)		;70a1	dd 7e 1a	. ~ .
	or a			;70a4	b7		.
	ld h,0c0h		;70a5	26 c0		& .
	call z,sub_70d3h	;70a7	cc d3 70	. . p
	ld l,a			;70aa	6f		o
	inc l			;70ab	2c		,
	res 7,(hl)		;70ac	cb be		. .
	dec l			;70ae	2d		-
	ld (hl),e		;70af	73		s
	inc h			;70b0	24		$
	ld (hl),d		;70b1	72		r
	inc h			;70b2	24		$
	ld (hl),a		;70b3	77		w
	inc h			;70b4	24		$
	ld (hl),c		;70b5	71		q
	ret			;70b6	c9		.
	ld a,(ix+01ah)		;70b7	dd 7e 1a	. ~ .
	or a			;70ba	b7		.
	ld h,0c0h		;70bb	26 c0		& .
	call z,sub_70cfh	;70bd	cc cf 70	. . p
	ld l,a			;70c0	6f		o
	inc l			;70c1	2c		,
	res 7,(hl)		;70c2	cb be		. .
	dec l			;70c4	2d		-
	ld (hl),e		;70c5	73		s
	inc h			;70c6	24		$
	ld (hl),d		;70c7	72		r
	inc h			;70c8	24		$
	ld (hl),a		;70c9	77		w
	inc h			;70ca	24		$
	ld (hl),c		;70cb	71		q
	inc h			;70cc	24		$
	ld (hl),b		;70cd	70		p
	ret			;70ce	c9		.
sub_70cfh:
	ld l,03bh		;70cf	2e 3b		. ;
	jr l70d5h		;70d1	18 02		. .
sub_70d3h:
	ld l,009h		;70d3	2e 09		. .
l70d5h:
	call sub_70ddh		;70d5	cd dd 70	. . p
	ld (hl),00fh		;70d8	36 0f		6 .
	dec l			;70da	2d		-
	ld a,l			;70db	7d		}
	ret			;70dc	c9		.
sub_70ddh:
	xor a			;70dd	af		.
l70deh:
	cp (hl)			;70de	be		.
	ret z			;70df	c8		.
	inc l			;70e0	2c		,
	inc l			;70e1	2c		,
	jr l70deh		;70e2	18 fa		. .
sub_70e4h:
	ld a,(0c09bh)		;70e4	3a 9b c0	: . .
	rrca			;70e7	0f		.
	jp nc,l713fh		;70e8	d2 3f 71	. ? q
	ld hl,0fa00h		;70eb	21 00 fa	! . .
	ld de,0c4b9h		;70ee	11 b9 c4	. . .
	push de			;70f1	d5		.
	call sub_70f7h		;70f2	cd f7 70	. . p
	pop de			;70f5	d1		.
	inc d			;70f6	14		.
sub_70f7h:
	xor a			;70f7	af		.
	call 046f0h		;70f8	cd f0 46	. . F
	push hl			;70fb	e5		.
	ex de,hl		;70fc	eb		.
	call sub_7106h		;70fd	cd 06 71	. . q
	pop hl			;7100	e1		.
	ld de,00400h		;7101	11 00 04	. . .
	add hl,de		;7104	19		.
	ret			;7105	c9		.
sub_7106h:
	ld a,(00007h)		;7106	3a 07 00	: . .
	ld c,a			;7109	4f		O
	ld de,0fff0h		;710a	11 f0 ff	. . .
	call sub_7117h		;710d	cd 17 71	. . q
	ld de,00080h		;7110	11 80 00	. . .
	add hl,de		;7113	19		.
	ld de,0fff0h		;7114	11 f0 ff	. . .
sub_7117h:
	ld a,004h		;7117	3e 04		> .
l7119h:
	outi			;7119	ed a3		. .
	outi			;711b	ed a3		. .
	outi			;711d	ed a3		. .
	outi			;711f	ed a3		. .
	outi			;7121	ed a3		. .
	outi			;7123	ed a3		. .
	outi			;7125	ed a3		. .
	outi			;7127	ed a3		. .
	add hl,de		;7129	19		.
	outi			;712a	ed a3		. .
	outi			;712c	ed a3		. .
	outi			;712e	ed a3		. .
	outi			;7130	ed a3		. .
	outi			;7132	ed a3		. .
	outi			;7134	ed a3		. .
	outi			;7136	ed a3		. .
	outi			;7138	ed a3		. .
	add hl,de		;713a	19		.
	dec a			;713b	3d		=
	jr nz,l7119h		;713c	20 db		  .
	ret			;713e	c9		.
l713fh:
	ld hl,0f200h		;713f	21 00 f2	! . .
	ld de,0c1c1h		;7142	11 c1 c1	. . .
	push de			;7145	d5		.
	call sub_714bh		;7146	cd 4b 71	. K q
	pop de			;7149	d1		.
	inc d			;714a	14		.
sub_714bh:
	xor a			;714b	af		.
	call 046f0h		;714c	cd f0 46	. . F
	push hl			;714f	e5		.
	ex de,hl		;7150	eb		.
	call sub_715ah		;7151	cd 5a 71	. Z q
	pop hl			;7154	e1		.
	ld de,00400h		;7155	11 00 04	. . .
	add hl,de		;7158	19		.
	ret			;7159	c9		.
sub_715ah:
	ld a,(00007h)		;715a	3a 07 00	: . .
	ld c,a			;715d	4f		O
	call sub_7165h		;715e	cd 65 71	. e q
	ld de,0ff80h		;7161	11 80 ff	. . .
	add hl,de		;7164	19		.
sub_7165h:
	ld a,004h		;7165	3e 04		> .
l7167h:
	outi			;7167	ed a3		. .
	outi			;7169	ed a3		. .
	outi			;716b	ed a3		. .
	outi			;716d	ed a3		. .
	outi			;716f	ed a3		. .
	outi			;7171	ed a3		. .
	outi			;7173	ed a3		. .
	outi			;7175	ed a3		. .
	outi			;7177	ed a3		. .
	outi			;7179	ed a3		. .
	outi			;717b	ed a3		. .
	outi			;717d	ed a3		. .
	outi			;717f	ed a3		. .
	outi			;7181	ed a3		. .
	outi			;7183	ed a3		. .
	outi			;7185	ed a3		. .
	dec a			;7187	3d		=
	jr nz,l7167h		;7188	20 dd		  .
	ret			;718a	c9		.
l718bh:
	ld a,(hl)		;718b	7e		~
	ld (de),a		;718c	12		.
	bit 7,e			;718d	cb 7b		. {
	ret z			;718f	c8		.
	push hl			;7190	e5		.
	push de			;7191	d5		.
	ld b,a			;7192	47		G
	ld a,d			;7193	7a		z
	sub 0c1h		;7194	d6 c1		. .
	cp 003h			;7196	fe 03		. .
	jp nc,l71adh		;7198	d2 ad 71	. . q
	add a,a			;719b	87		.
	add a,038h		;719c	c6 38		. 8
	ld h,a			;719e	67		g
	ld a,e			;719f	7b		{
	add a,040h		;71a0	c6 40		. @
	and 07ch		;71a2	e6 7c		. |
	add a,a			;71a4	87		.
	ld l,a			;71a5	6f		o
	add hl,hl		;71a6	29		)
	call sub_71c3h		;71a7	cd c3 71	. . q
	pop de			;71aa	d1		.
	pop hl			;71ab	e1		.
	ret			;71ac	c9		.
l71adh:
	dec a			;71ad	3d		=
	add a,a			;71ae	87		.
	add a,038h		;71af	c6 38		. 8
	ld h,a			;71b1	67		g
	ld a,e			;71b2	7b		{
	add a,040h		;71b3	c6 40		. @
	cpl			;71b5	2f		/
	and 07ch		;71b6	e6 7c		. |
	xor 004h		;71b8	ee 04		. .
	add a,a			;71ba	87		.
	ld l,a			;71bb	6f		o
	add hl,hl		;71bc	29		)
	call sub_71c3h		;71bd	cd c3 71	. . q
	pop de			;71c0	d1		.
	pop hl			;71c1	e1		.
	ret			;71c2	c9		.
sub_71c3h:
	ld a,(00007h)		;71c3	3a 07 00	: . .
	inc a			;71c6	3c		<
	ld c,a			;71c7	4f		O
	ld a,003h		;71c8	3e 03		> .
	di			;71ca	f3		.
	out (c),a		;71cb	ed 79		. y
	ld a,08eh		;71cd	3e 8e		> .
	out (c),a		;71cf	ed 79		. y
	ld a,l			;71d1	7d		}
	out (c),a		;71d2	ed 79		. y
	ld a,h			;71d4	7c		|
	out (c),a		;71d5	ed 79		. y
	ei			;71d7	fb		.
	ld a,b			;71d8	78		x
	dec c			;71d9	0d		.
	ld l,a			;71da	6f		o
	ld h,006h		;71db	26 06		& .
	add hl,hl		;71dd	29		)
	add hl,hl		;71de	29		)
	add hl,hl		;71df	29		)
	add hl,hl		;71e0	29		)
	outi			;71e1	ed a3		. .
	outi			;71e3	ed a3		. .
	outi			;71e5	ed a3		. .
	outi			;71e7	ed a3		. .
	outi			;71e9	ed a3		. .
	outi			;71eb	ed a3		. .
	outi			;71ed	ed a3		. .
	outi			;71ef	ed a3		. .
	outi			;71f1	ed a3		. .
	outi			;71f3	ed a3		. .
	outi			;71f5	ed a3		. .
	outi			;71f7	ed a3		. .
	outi			;71f9	ed a3		. .
	outi			;71fb	ed a3		. .
	outi			;71fd	ed a3		. .
	outi			;71ff	ed a3		. .
	ei			;7201	fb		.
	ret			;7202	c9		.
sub_7203h:
	di			;7203	f3		.
	ld hl,0c09ch		;7204	21 9c c0	! . .
	ld a,(0c09bh)		;7207	3a 9b c0	: . .
	xor (hl)		;720a	ae		.
	ei			;720b	fb		.
	rrca			;720c	0f		.
	jr c,l7213h		;720d	38 04		8 .
	ld a,0c0h		;720f	3e c0		> .
	jr l7215h		;7211	18 02		. .
l7213h:
	ld a,0c3h		;7213	3e c3		> .
l7215h:
	ld (0c0aah),a		;7215	32 aa c0	2 . .
	inc a			;7218	3c		<
	ld (0c0a6h),a		;7219	32 a6 c0	2 . .
	inc a			;721c	3c		<
	ld (0c0a8h),a		;721d	32 a8 c0	2 . .
	ret			;7220	c9		.
sub_7221h:
	exx			;7221	d9		.
	ld a,(0c09bh)		;7222	3a 9b c0	: . .
	rrca			;7225	0f		.
	jr c,l7230h		;7226	38 08		8 .
	ld bc,04060h		;7228	01 60 40	. ` @
	ld de,0c0f0h		;722b	11 f0 c0	. . .
	jr l7236h		;722e	18 06		. .
l7230h:
	ld bc,l6080h		;7230	01 80 60	. . `
	ld de,0c0f0h		;7233	11 f0 c0	. . .
l7236h:
	ld h,007h		;7236	26 07		& .
	ld a,(0c0ebh)		;7238	3a eb c0	: . .
	or a			;723b	b7		.
	jr nz,l7244h		;723c	20 06		  .
	ld a,(0c0bbh)		;723e	3a bb c0	: . .
	and 007h		;7241	e6 07		. .
	ld h,a			;7243	67		g
l7244h:
	ld a,(0c0d2h)		;7244	3a d2 c0	: . .
	ld l,a			;7247	6f		o
	push hl			;7248	e5		.
	exx			;7249	d9		.
	pop de			;724a	d1		.
	call sub_7255h		;724b	cd 55 72	. U r
	call sub_7470h		;724e	cd 70 74	. p t
	call sub_72d5h		;7251	cd d5 72	. . r
	ret			;7254	c9		.
sub_7255h:
	ld a,e			;7255	7b		{
	sub 018h		;7256	d6 18		. .
	cp 0d8h			;7258	fe d8		. .
	jr nz,l725dh		;725a	20 01		  .
	inc a			;725c	3c		<
l725dh:
	ld e,a			;725d	5f		_
	ld (0c099h),a		;725e	32 99 c0	2 . .
	ld a,(0c09bh)		;7261	3a 9b c0	: . .
	rrca			;7264	0f		.
	jr nc,l729eh		;7265	30 37		0 7
	ld hl,0c481h		;7267	21 81 c4	! . .
	ld b,008h		;726a	06 08		. .
l726ch:
	ld (hl),e		;726c	73		s
	inc l			;726d	2c		,
	inc l			;726e	2c		,
	inc l			;726f	2c		,
	inc l			;7270	2c		,
	ld (hl),e		;7271	73		s
	inc l			;7272	2c		,
	inc l			;7273	2c		,
	inc l			;7274	2c		,
	inc l			;7275	2c		,
	ld (hl),e		;7276	73		s
	inc l			;7277	2c		,
	inc l			;7278	2c		,
	inc l			;7279	2c		,
	inc l			;727a	2c		,
	ld (hl),e		;727b	73		s
	inc l			;727c	2c		,
	inc l			;727d	2c		,
	inc l			;727e	2c		,
	inc l			;727f	2c		,
	djnz l726ch		;7280	10 ea		. .
	ld hl,0c581h		;7282	21 81 c5	! . .
	ld b,008h		;7285	06 08		. .
l7287h:
	ld (hl),e		;7287	73		s
	inc l			;7288	2c		,
	inc l			;7289	2c		,
	inc l			;728a	2c		,
	inc l			;728b	2c		,
	ld (hl),e		;728c	73		s
	inc l			;728d	2c		,
	inc l			;728e	2c		,
	inc l			;728f	2c		,
	inc l			;7290	2c		,
	ld (hl),e		;7291	73		s
	inc l			;7292	2c		,
	inc l			;7293	2c		,
	inc l			;7294	2c		,
	inc l			;7295	2c		,
	ld (hl),e		;7296	73		s
	inc l			;7297	2c		,
	inc l			;7298	2c		,
	inc l			;7299	2c		,
	inc l			;729a	2c		,
	djnz l7287h		;729b	10 ea		. .
	ret			;729d	c9		.
l729eh:
	ld hl,0c181h		;729e	21 81 c1	! . .
	ld b,008h		;72a1	06 08		. .
l72a3h:
	ld (hl),e		;72a3	73		s
	inc l			;72a4	2c		,
	inc l			;72a5	2c		,
	inc l			;72a6	2c		,
	inc l			;72a7	2c		,
	ld (hl),e		;72a8	73		s
	inc l			;72a9	2c		,
	inc l			;72aa	2c		,
	inc l			;72ab	2c		,
	inc l			;72ac	2c		,
	ld (hl),e		;72ad	73		s
	inc l			;72ae	2c		,
	inc l			;72af	2c		,
	inc l			;72b0	2c		,
	inc l			;72b1	2c		,
	ld (hl),e		;72b2	73		s
	inc l			;72b3	2c		,
	inc l			;72b4	2c		,
	inc l			;72b5	2c		,
	inc l			;72b6	2c		,
	djnz l72a3h		;72b7	10 ea		. .
	ld hl,0c281h		;72b9	21 81 c2	! . .
	ld b,008h		;72bc	06 08		. .
l72beh:
	ld (hl),e		;72be	73		s
	inc l			;72bf	2c		,
	inc l			;72c0	2c		,
	inc l			;72c1	2c		,
	inc l			;72c2	2c		,
	ld (hl),e		;72c3	73		s
	inc l			;72c4	2c		,
	inc l			;72c5	2c		,
	inc l			;72c6	2c		,
	inc l			;72c7	2c		,
	ld (hl),e		;72c8	73		s
	inc l			;72c9	2c		,
	inc l			;72ca	2c		,
	inc l			;72cb	2c		,
	inc l			;72cc	2c		,
	ld (hl),e		;72cd	73		s
	inc l			;72ce	2c		,
	inc l			;72cf	2c		,
	inc l			;72d0	2c		,
	inc l			;72d1	2c		,
	djnz l72beh		;72d2	10 ea		. .
	ret			;72d4	c9		.
sub_72d5h:
	ld hl,0c009h		;72d5	21 09 c0	! . .
	ld b,019h		;72d8	06 19		. .
l72dah:
	push bc			;72da	c5		.
	ld a,(hl)		;72db	7e		~
	or a			;72dc	b7		.
	jr z,l72e7h		;72dd	28 08		( .
	dec l			;72df	2d		-
	call sub_72edh		;72e0	cd ed 72	. . r
l72e3h:
	set 0,l			;72e3	cb c5		. .
	ld h,0c0h		;72e5	26 c0		& .
l72e7h:
	inc l			;72e7	2c		,
	inc l			;72e8	2c		,
	pop bc			;72e9	c1		.
	djnz l72dah		;72ea	10 ee		. .
	ret			;72ec	c9		.
sub_72edh:
	ld a,(hl)		;72ed	7e		~
	exx			;72ee	d9		.
	cp b			;72ef	b8		.
	jr c,l72ffh		;72f0	38 0d		8 .
	cp c			;72f2	b9		.
	jr c,l7310h		;72f3	38 1b		8 .
	cp d			;72f5	ba		.
	jr c,l7325h		;72f6	38 2d		8 -
	cp e			;72f8	bb		.
	jp nc,l72ffh		;72f9	d2 ff 72	. . r
	jp l7336h		;72fc	c3 36 73	. 6 s
l72ffh:
	exx			;72ff	d9		.
	ld a,(0c0aah)		;7300	3a aa c0	: . .
	ld h,a			;7303	67		g
	inc l			;7304	2c		,
	ld a,(hl)		;7305	7e		~
	cp 001h			;7306	fe 01		. .
	call nz,sub_7345h	;7308	c4 45 73	. E s
	set 7,(hl)		;730b	cb fe		. .
	jp l73a6h		;730d	c3 a6 73	. . s
l7310h:
	exx			;7310	d9		.
	ld a,(0c0aah)		;7311	3a aa c0	: . .
	ld h,a			;7314	67		g
	inc l			;7315	2c		,
	ld a,(hl)		;7316	7e		~
	cp 002h			;7317	fe 02		. .
	call nz,sub_735bh	;7319	c4 5b 73	. [ s
	set 7,(hl)		;731c	cb fe		. .
	call l73a6h		;731e	cd a6 73	. . s
	inc l			;7321	2c		,
	jp l73bdh		;7322	c3 bd 73	. . s
l7325h:
	exx			;7325	d9		.
	ld a,(0c0aah)		;7326	3a aa c0	: . .
	ld h,a			;7329	67		g
	inc l			;732a	2c		,
	ld a,(hl)		;732b	7e		~
	cp 003h			;732c	fe 03		. .
	call nz,sub_7371h	;732e	c4 71 73	. q s
	set 7,(hl)		;7331	cb fe		. .
	jp l73bdh		;7333	c3 bd 73	. . s
l7336h:
	exx			;7336	d9		.
	ld a,(0c0aah)		;7337	3a aa c0	: . .
	ld h,a			;733a	67		g
	inc l			;733b	2c		,
	ld a,(hl)		;733c	7e		~
	cp 004h			;733d	fe 04		. .
	call nz,sub_7387h	;733f	c4 87 73	. . s
	set 7,(hl)		;7342	cb fe		. .
	ret			;7344	c9		.
sub_7345h:
	bit 7,a			;7345	cb 7f		. .
	jp nz,l739dh		;7347	c2 9d 73	. . s
	ld (hl),001h		;734a	36 01		6 .
	inc h			;734c	24		$
	ld a,(hl)		;734d	7e		~
	or a			;734e	b7		.
	call z,sub_741ah	;734f	cc 1a 74	. . t
	inc h			;7352	24		$
	ld a,(hl)		;7353	7e		~
	or a			;7354	b7		.
	call nz,sub_7462h	;7355	c4 62 74	. b t
	dec h			;7358	25		%
	dec h			;7359	25		%
	ret			;735a	c9		.
sub_735bh:
	bit 7,a			;735b	cb 7f		. .
	jp nz,l739dh		;735d	c2 9d 73	. . s
	ld (hl),002h		;7360	36 02		6 .
	inc h			;7362	24		$
	ld a,(hl)		;7363	7e		~
	or a			;7364	b7		.
	call z,sub_741ah	;7365	cc 1a 74	. . t
	inc h			;7368	24		$
	ld a,(hl)		;7369	7e		~
	or a			;736a	b7		.
	call z,sub_741ah	;736b	cc 1a 74	. . t
	dec h			;736e	25		%
	dec h			;736f	25		%
	ret			;7370	c9		.
sub_7371h:
	bit 7,a			;7371	cb 7f		. .
	jp nz,l739dh		;7373	c2 9d 73	. . s
	ld (hl),003h		;7376	36 03		6 .
	inc h			;7378	24		$
	ld a,(hl)		;7379	7e		~
	or a			;737a	b7		.
	call nz,sub_7462h	;737b	c4 62 74	. b t
	inc h			;737e	24		$
	ld a,(hl)		;737f	7e		~
	or a			;7380	b7		.
	call z,sub_741ah	;7381	cc 1a 74	. . t
	dec h			;7384	25		%
	dec h			;7385	25		%
	ret			;7386	c9		.
sub_7387h:
	bit 7,a			;7387	cb 7f		. .
	jp nz,l739dh		;7389	c2 9d 73	. . s
	ld (hl),004h		;738c	36 04		6 .
	inc h			;738e	24		$
	ld a,(hl)		;738f	7e		~
	or a			;7390	b7		.
	call nz,sub_7462h	;7391	c4 62 74	. b t
	inc h			;7394	24		$
	ld a,(hl)		;7395	7e		~
	or a			;7396	b7		.
	call nz,sub_7462h	;7397	c4 62 74	. b t
	dec h			;739a	25		%
	dec h			;739b	25		%
	ret			;739c	c9		.
l739dh:
	call sub_7442h		;739d	cd 42 74	. B t
	inc sp			;73a0	33		3
	inc sp			;73a1	33		3
	ret			;73a2	c9		.
sub_73a3h:
	ld a,0ffh		;73a3	3e ff		> .
	ret			;73a5	c9		.
l73a6h:
	ld a,(0c0a6h)		;73a6	3a a6 c0	: . .
	ld h,a			;73a9	67		g
	ld e,(hl)		;73aa	5e		^
	ld d,h			;73ab	54		T
	ld a,(de)		;73ac	1a		.
	or a			;73ad	b7		.
	call z,sub_73a3h	;73ae	cc a3 73	. . s
	ld h,0c3h		;73b1	26 c3		& .
	dec l			;73b3	2d		-
	cp (hl)			;73b4	be		.
	call nz,sub_73fah	;73b5	c4 fa 73	. . s
	ld h,0c0h		;73b8	26 c0		& .
	jp l73d4h		;73ba	c3 d4 73	. . s
l73bdh:
	ld a,(0c0a8h)		;73bd	3a a8 c0	: . .
	ld h,a			;73c0	67		g
	ld e,(hl)		;73c1	5e		^
	ld d,h			;73c2	54		T
	ld a,(de)		;73c3	1a		.
	or a			;73c4	b7		.
	call z,sub_73a3h	;73c5	cc a3 73	. . s
	ld h,0c3h		;73c8	26 c3		& .
	dec l			;73ca	2d		-
	cp (hl)			;73cb	be		.
	call nz,sub_73fah	;73cc	c4 fa 73	. . s
	ld h,0c0h		;73cf	26 c0		& .
	jp l73d4h		;73d1	c3 d4 73	. . s
l73d4h:
	inc e			;73d4	1c		.
	ld a,(hl)		;73d5	7e		~
	exx			;73d6	d9		.
	add a,l			;73d7	85		.
	cp 0d8h			;73d8	fe d8		. .
	call z,sub_746eh	;73da	cc 6e 74	. n t
	exx			;73dd	d9		.
	ld (de),a		;73de	12		.
	inc h			;73df	24		$
	ld a,(hl)		;73e0	7e		~
	exx			;73e1	d9		.
	add a,h			;73e2	84		.
	call c,sub_73eeh	;73e3	dc ee 73	. . s
	exx			;73e6	d9		.
	inc e			;73e7	1c		.
	ld (de),a		;73e8	12		.
	inc e			;73e9	1c		.
	inc h			;73ea	24		$
	ld a,(hl)		;73eb	7e		~
	ld (de),a		;73ec	12		.
	ret			;73ed	c9		.
sub_73eeh:
	ld a,0d8h		;73ee	3e d8		> .
	add a,l			;73f0	85		.
	cp 0d8h			;73f1	fe d8		. .
	call z,sub_746eh	;73f3	cc 6e 74	. n t
	exx			;73f6	d9		.
	ld (de),a		;73f7	12		.
	exx			;73f8	d9		.
	ret			;73f9	c9		.
sub_73fah:
	ld a,(hl)		;73fa	7e		~
	or a			;73fb	b7		.
	jp nz,l718bh		;73fc	c2 8b 71	. . q
	pop bc			;73ff	c1		.
	pop bc			;7400	c1		.
	ld de,l72e3h		;7401	11 e3 72	. . r
	ld a,d			;7404	7a		z
	cp b			;7405	b8		.
	jr nz,l740dh		;7406	20 05		  .
	ld a,e			;7408	7b		{
	cp c			;7409	b9		.
	jr nz,l740dh		;740a	20 01		  .
	push bc			;740c	c5		.
l740dh:
	ld a,(0c0aah)		;740d	3a aa c0	: . .
	ld h,a			;7410	67		g
	set 0,l			;7411	cb c5		. .
	res 7,(hl)		;7413	cb be		. .
	dec l			;7415	2d		-
	exx			;7416	d9		.
	jp l7336h		;7417	c3 36 73	. 6 s
sub_741ah:
	ld d,h			;741a	54		T
	call sub_742dh		;741b	cd 2d 74	. - t
	call c,sub_7423h	;741e	dc 23 74	. # t
	ld (hl),e		;7421	73		s
	ret			;7422	c9		.
sub_7423h:
	ld e,000h		;7423	1e 00		. .
	ld a,(0c0aah)		;7425	3a aa c0	: . .
	ld h,a			;7428	67		g
	ld (hl),00eh		;7429	36 0e		6 .
	ld h,d			;742b	62		b
	ret			;742c	c9		.
sub_742dh:
	ld e,080h		;742d	1e 80		. .
	ex de,hl		;742f	eb		.
	xor a			;7430	af		.
	ld b,020h		;7431	06 20		.  
l7433h:
	cp (hl)			;7433	be		.
	jr z,l743fh		;7434	28 09		( .
	inc l			;7436	2c		,
	inc l			;7437	2c		,
	inc l			;7438	2c		,
	inc l			;7439	2c		,
	djnz l7433h		;743a	10 f7		. .
	ex de,hl		;743c	eb		.
	scf			;743d	37		7
	ret			;743e	c9		.
l743fh:
	ex de,hl		;743f	eb		.
	or a			;7440	b7		.
	ret			;7441	c9		.
sub_7442h:
	ld h,0c0h		;7442	26 c0		& .
	ld (hl),000h		;7444	36 00		6 .
	inc h			;7446	24		$
	ld a,(hl)		;7447	7e		~
	or a			;7448	b7		.
	call nz,sub_7462h	;7449	c4 62 74	. b t
	inc h			;744c	24		$
	ld a,(hl)		;744d	7e		~
	or a			;744e	b7		.
	call nz,sub_7462h	;744f	c4 62 74	. b t
	inc h			;7452	24		$
	ld (hl),000h		;7453	36 00		6 .
	inc h			;7455	24		$
	ld a,(hl)		;7456	7e		~
	or a			;7457	b7		.
	call nz,sub_7462h	;7458	c4 62 74	. b t
	inc h			;745b	24		$
	ld a,(hl)		;745c	7e		~
	or a			;745d	b7		.
	call nz,sub_7462h	;745e	c4 62 74	. b t
	ret			;7461	c9		.
sub_7462h:
	ld (hl),000h		;7462	36 00		6 .
	ld c,a			;7464	4f		O
	ld b,h			;7465	44		D
	xor a			;7466	af		.
	ld (bc),a		;7467	02		.
	inc c			;7468	0c		.
	ld a,(0c099h)		;7469	3a 99 c0	: . .
	ld (bc),a		;746c	02		.
	ret			;746d	c9		.
sub_746eh:
	inc a			;746e	3c		<
	ret			;746f	c9		.
sub_7470h:
	ld hl,0c03bh		;7470	21 3b c0	! ; .
	ld b,00ch		;7473	06 0c		. .
l7475h:
	push bc			;7475	c5		.
	ld a,(hl)		;7476	7e		~
	or a			;7477	b7		.
	jr z,l7482h		;7478	28 08		( .
	dec l			;747a	2d		-
	call sub_7488h		;747b	cd 88 74	. . t
l747eh:
	set 0,l			;747e	cb c5		. .
	ld h,0c0h		;7480	26 c0		& .
l7482h:
	inc l			;7482	2c		,
	inc l			;7483	2c		,
	pop bc			;7484	c1		.
	djnz l7475h		;7485	10 ee		. .
	ret			;7487	c9		.
sub_7488h:
	ld a,(hl)		;7488	7e		~
	exx			;7489	d9		.
	cp b			;748a	b8		.
	jr c,l749ah		;748b	38 0d		8 .
	cp c			;748d	b9		.
	jr c,l74abh		;748e	38 1b		8 .
	cp d			;7490	ba		.
	jr c,l74c0h		;7491	38 2d		8 -
	cp e			;7493	bb		.
	jp nc,l749ah		;7494	d2 9a 74	. . t
	jp l74d1h		;7497	c3 d1 74	. . t
l749ah:
	exx			;749a	d9		.
	ld a,(0c0aah)		;749b	3a aa c0	: . .
	ld h,a			;749e	67		g
	inc l			;749f	2c		,
	ld a,(hl)		;74a0	7e		~
	cp 001h			;74a1	fe 01		. .
	call nz,sub_74e0h	;74a3	c4 e0 74	. . t
	set 7,(hl)		;74a6	cb fe		. .
	jp l753eh		;74a8	c3 3e 75	. > u
l74abh:
	exx			;74ab	d9		.
	ld a,(0c0aah)		;74ac	3a aa c0	: . .
	ld h,a			;74af	67		g
	inc l			;74b0	2c		,
	ld a,(hl)		;74b1	7e		~
	cp 002h			;74b2	fe 02		. .
	call nz,sub_74f6h	;74b4	c4 f6 74	. . t
	set 7,(hl)		;74b7	cb fe		. .
	call l753eh		;74b9	cd 3e 75	. > u
	inc l			;74bc	2c		,
	jp l7566h		;74bd	c3 66 75	. f u
l74c0h:
	exx			;74c0	d9		.
	ld a,(0c0aah)		;74c1	3a aa c0	: . .
	ld h,a			;74c4	67		g
	inc l			;74c5	2c		,
	ld a,(hl)		;74c6	7e		~
	cp 003h			;74c7	fe 03		. .
	call nz,sub_750ch	;74c9	c4 0c 75	. . u
	set 7,(hl)		;74cc	cb fe		. .
	jp l7566h		;74ce	c3 66 75	. f u
l74d1h:
	exx			;74d1	d9		.
	ld a,(0c0aah)		;74d2	3a aa c0	: . .
	ld h,a			;74d5	67		g
	inc l			;74d6	2c		,
	ld a,(hl)		;74d7	7e		~
	cp 004h			;74d8	fe 04		. .
	call nz,sub_7522h	;74da	c4 22 75	. " u
	set 7,(hl)		;74dd	cb fe		. .
	ret			;74df	c9		.
sub_74e0h:
	bit 7,a			;74e0	cb 7f		. .
	jp nz,l7538h		;74e2	c2 38 75	. 8 u
	ld (hl),001h		;74e5	36 01		6 .
	inc h			;74e7	24		$
	ld a,(hl)		;74e8	7e		~
	or a			;74e9	b7		.
	call z,sub_75e4h	;74ea	cc e4 75	. . u
	inc h			;74ed	24		$
	ld a,(hl)		;74ee	7e		~
	or a			;74ef	b7		.
	call nz,sub_766dh	;74f0	c4 6d 76	. m v
	dec h			;74f3	25		%
	dec h			;74f4	25		%
	ret			;74f5	c9		.
sub_74f6h:
	bit 7,a			;74f6	cb 7f		. .
	jp nz,l7538h		;74f8	c2 38 75	. 8 u
	ld (hl),002h		;74fb	36 02		6 .
	inc h			;74fd	24		$
	ld a,(hl)		;74fe	7e		~
	or a			;74ff	b7		.
	call z,sub_75e4h	;7500	cc e4 75	. . u
	inc h			;7503	24		$
	ld a,(hl)		;7504	7e		~
	or a			;7505	b7		.
	call z,sub_75e4h	;7506	cc e4 75	. . u
	dec h			;7509	25		%
	dec h			;750a	25		%
	ret			;750b	c9		.
sub_750ch:
	bit 7,a			;750c	cb 7f		. .
	jp nz,l7538h		;750e	c2 38 75	. 8 u
	ld (hl),003h		;7511	36 03		6 .
	inc h			;7513	24		$
	ld a,(hl)		;7514	7e		~
	or a			;7515	b7		.
	call nz,sub_766dh	;7516	c4 6d 76	. m v
	inc h			;7519	24		$
	ld a,(hl)		;751a	7e		~
	or a			;751b	b7		.
	call z,sub_75e4h	;751c	cc e4 75	. . u
	dec h			;751f	25		%
	dec h			;7520	25		%
	ret			;7521	c9		.
sub_7522h:
	bit 7,a			;7522	cb 7f		. .
	jp nz,l7538h		;7524	c2 38 75	. 8 u
	ld (hl),004h		;7527	36 04		6 .
	inc h			;7529	24		$
	ld a,(hl)		;752a	7e		~
	or a			;752b	b7		.
	call nz,sub_766dh	;752c	c4 6d 76	. m v
	inc h			;752f	24		$
	ld a,(hl)		;7530	7e		~
	or a			;7531	b7		.
	call nz,sub_766dh	;7532	c4 6d 76	. m v
	dec h			;7535	25		%
	dec h			;7536	25		%
	ret			;7537	c9		.
l7538h:
	call sub_75f7h		;7538	cd f7 75	. . u
	inc sp			;753b	33		3
	inc sp			;753c	33		3
	ret			;753d	c9		.
l753eh:
	ld a,(0c0a6h)		;753e	3a a6 c0	: . .
	ld h,a			;7541	67		g
	ld d,a			;7542	57		W
	ld e,(hl)		;7543	5e		^
	ld a,(de)		;7544	1a		.
	or a			;7545	b7		.
	call z,sub_73a3h	;7546	cc a3 73	. . s
	ld h,0c3h		;7549	26 c3		& .
	dec l			;754b	2d		-
	cp (hl)			;754c	be		.
	call nz,sub_75c4h	;754d	c4 c4 75	. . u
	ld h,0c0h		;7550	26 c0		& .
	call sub_758eh		;7552	cd 8e 75	. . u
	inc e			;7555	1c		.
	ld a,(de)		;7556	1a		.
	or a			;7557	b7		.
	call z,sub_73a3h	;7558	cc a3 73	. . s
	ld h,0c4h		;755b	26 c4		& .
	cp (hl)			;755d	be		.
	call nz,sub_75c4h	;755e	c4 c4 75	. . u
	ld h,0c0h		;7561	26 c0		& .
	jp l75a8h		;7563	c3 a8 75	. . u
l7566h:
	ld a,(0c0a8h)		;7566	3a a8 c0	: . .
	ld h,a			;7569	67		g
	ld d,a			;756a	57		W
	ld e,(hl)		;756b	5e		^
	ld a,(de)		;756c	1a		.
	or a			;756d	b7		.
	call z,sub_73a3h	;756e	cc a3 73	. . s
	ld h,0c3h		;7571	26 c3		& .
	dec l			;7573	2d		-
	cp (hl)			;7574	be		.
	call nz,sub_75c4h	;7575	c4 c4 75	. . u
	ld h,0c0h		;7578	26 c0		& .
	call sub_758eh		;757a	cd 8e 75	. . u
	inc e			;757d	1c		.
	ld a,(de)		;757e	1a		.
	or a			;757f	b7		.
	call z,sub_73a3h	;7580	cc a3 73	. . s
	ld h,0c4h		;7583	26 c4		& .
	cp (hl)			;7585	be		.
	call nz,sub_75c4h	;7586	c4 c4 75	. . u
	ld h,0c0h		;7589	26 c0		& .
	jp l75a8h		;758b	c3 a8 75	. . u
sub_758eh:
	inc e			;758e	1c		.
	ld a,(hl)		;758f	7e		~
	exx			;7590	d9		.
	add a,l			;7591	85		.
	cp 0d8h			;7592	fe d8		. .
	call z,sub_746eh	;7594	cc 6e 74	. n t
	exx			;7597	d9		.
	ld (de),a		;7598	12		.
	inc h			;7599	24		$
	ld a,(hl)		;759a	7e		~
	exx			;759b	d9		.
	add a,h			;759c	84		.
	call c,sub_73eeh	;759d	dc ee 73	. . s
	exx			;75a0	d9		.
	inc e			;75a1	1c		.
	ld (de),a		;75a2	12		.
	inc e			;75a3	1c		.
	inc h			;75a4	24		$
	ld a,(hl)		;75a5	7e		~
	ld (de),a		;75a6	12		.
	ret			;75a7	c9		.
l75a8h:
	inc e			;75a8	1c		.
	ld a,(hl)		;75a9	7e		~
	exx			;75aa	d9		.
	add a,l			;75ab	85		.
	cp 0d8h			;75ac	fe d8		. .
	call z,sub_746eh	;75ae	cc 6e 74	. n t
	exx			;75b1	d9		.
	ld (de),a		;75b2	12		.
	inc h			;75b3	24		$
	ld a,(hl)		;75b4	7e		~
	exx			;75b5	d9		.
	add a,h			;75b6	84		.
	call c,sub_73eeh	;75b7	dc ee 73	. . s
	exx			;75ba	d9		.
	inc e			;75bb	1c		.
	ld (de),a		;75bc	12		.
	inc e			;75bd	1c		.
	inc h			;75be	24		$
	ld a,(hl)		;75bf	7e		~
	add a,004h		;75c0	c6 04		. .
	ld (de),a		;75c2	12		.
	ret			;75c3	c9		.
sub_75c4h:
	ld a,(hl)		;75c4	7e		~
	or a			;75c5	b7		.
	jp nz,l718bh		;75c6	c2 8b 71	. . q
	pop bc			;75c9	c1		.
	pop bc			;75ca	c1		.
	ld de,l747eh		;75cb	11 7e 74	. ~ t
	ld a,d			;75ce	7a		z
	cp b			;75cf	b8		.
	jr nz,l75d7h		;75d0	20 05		  .
	ld a,e			;75d2	7b		{
	cp c			;75d3	b9		.
	jr nz,l75d7h		;75d4	20 01		  .
	push bc			;75d6	c5		.
l75d7h:
	ld a,(0c0aah)		;75d7	3a aa c0	: . .
	ld h,a			;75da	67		g
	set 0,l			;75db	cb c5		. .
	res 7,(hl)		;75dd	cb be		. .
	dec l			;75df	2d		-
	exx			;75e0	d9		.
	jp l74d1h		;75e1	c3 d1 74	. . t
sub_75e4h:
	ld d,h			;75e4	54		T
	call sub_7617h		;75e5	cd 17 76	. . v
	call c,sub_75edh	;75e8	dc ed 75	. . u
	ld (hl),e		;75eb	73		s
	ret			;75ec	c9		.
sub_75edh:
	ld e,000h		;75ed	1e 00		. .
	ld a,(0c0aah)		;75ef	3a aa c0	: . .
	ld h,a			;75f2	67		g
	ld (hl),00eh		;75f3	36 0e		6 .
	ld h,d			;75f5	62		b
	ret			;75f6	c9		.
sub_75f7h:
	ld h,0c0h		;75f7	26 c0		& .
	ld (hl),000h		;75f9	36 00		6 .
	inc h			;75fb	24		$
	ld a,(hl)		;75fc	7e		~
	or a			;75fd	b7		.
	call nz,sub_766dh	;75fe	c4 6d 76	. m v
	inc h			;7601	24		$
	ld a,(hl)		;7602	7e		~
	or a			;7603	b7		.
	call nz,sub_766dh	;7604	c4 6d 76	. m v
	inc h			;7607	24		$
	ld (hl),000h		;7608	36 00		6 .
	inc h			;760a	24		$
	ld a,(hl)		;760b	7e		~
	or a			;760c	b7		.
	call nz,sub_766dh	;760d	c4 6d 76	. m v
	inc h			;7610	24		$
	ld a,(hl)		;7611	7e		~
	or a			;7612	b7		.
	call nz,sub_766dh	;7613	c4 6d 76	. m v
	ret			;7616	c9		.
sub_7617h:
	ld e,0fch		;7617	1e fc		. .
	ex de,hl		;7619	eb		.
	xor a			;761a	af		.
	ld b,010h		;761b	06 10		. .
l761dh:
	cp (hl)			;761d	be		.
	ex af,af'		;761e	08		.
	dec l			;761f	2d		-
	dec l			;7620	2d		-
	dec l			;7621	2d		-
	dec l			;7622	2d		-
	ex af,af'		;7623	08		.
	jr z,l7632h		;7624	28 0c		( .
	cp (hl)			;7626	be		.
	jr z,l763eh		;7627	28 15		( .
	dec l			;7629	2d		-
	dec l			;762a	2d		-
	dec l			;762b	2d		-
	dec l			;762c	2d		-
	djnz l761dh		;762d	10 ee		. .
	ex de,hl		;762f	eb		.
	scf			;7630	37		7
	ret			;7631	c9		.
l7632h:
	cp (hl)			;7632	be		.
	jr z,l7641h		;7633	28 0c		( .
	dec l			;7635	2d		-
	dec l			;7636	2d		-
	dec l			;7637	2d		-
	dec l			;7638	2d		-
	call sub_7649h		;7639	cd 49 76	. I v
	jr l7641h		;763c	18 03		. .
l763eh:
	call sub_7644h		;763e	cd 44 76	. D v
l7641h:
	ex de,hl		;7641	eb		.
	or a			;7642	b7		.
	ret			;7643	c9		.
sub_7644h:
	ld a,l			;7644	7d		}
	add a,004h		;7645	c6 04		. .
	jr l764dh		;7647	18 04		. .
sub_7649h:
	ld a,l			;7649	7d		}
	add a,004h		;764a	c6 04		. .
	ld l,a			;764c	6f		o
l764dh:
	push hl			;764d	e5		.
	push de			;764e	d5		.
	call sub_7655h		;764f	cd 55 76	. U v
	pop de			;7652	d1		.
	pop hl			;7653	e1		.
	ret			;7654	c9		.
sub_7655h:
	ld l,009h		;7655	2e 09		. .
	ld b,019h		;7657	06 19		. .
l7659h:
	cp (hl)			;7659	be		.
	jp z,l7663h		;765a	ca 63 76	. c v
	inc l			;765d	2c		,
	inc l			;765e	2c		,
	djnz l7659h		;765f	10 f8		. .
	scf			;7661	37		7
	ret			;7662	c9		.
l7663h:
	ld (hl),000h		;7663	36 00		6 .
	ld a,(0c0aah)		;7665	3a aa c0	: . .
	ld h,a			;7668	67		g
	ld (hl),00eh		;7669	36 0e		6 .
	or a			;766b	b7		.
	ret			;766c	c9		.
sub_766dh:
	ld (hl),000h		;766d	36 00		6 .
	ld b,h			;766f	44		D
	ld c,a			;7670	4f		O
	xor a			;7671	af		.
	ld (bc),a		;7672	02		.
	inc c			;7673	0c		.
	ld a,(0c099h)		;7674	3a 99 c0	: . .
	ld (bc),a		;7677	02		.
	inc c			;7678	0c		.
	inc c			;7679	0c		.
	inc c			;767a	0c		.
	xor a			;767b	af		.
	ld (bc),a		;767c	02		.
	inc c			;767d	0c		.
	ld a,(0c099h)		;767e	3a 99 c0	: . .
	ld (bc),a		;7681	02		.
	ret			;7682	c9		.
sub_7683h:
	ld a,(0c0d2h)		;7683	3a d2 c0	: . .
	and 0f8h		;7686	e6 f8		. .
	push af			;7688	f5		.
	ld l,a			;7689	6f		o
	ld h,000h		;768a	26 00		& .
	add hl,hl		;768c	29		)
	add hl,hl		;768d	29		)
	ld de,0c000h		;768e	11 00 c0	. . .
	ld a,(0c09bh)		;7691	3a 9b c0	: . .
	rrca			;7694	0f		.
	jr nc,l769ah		;7695	30 03		0 .
	ld de,0c400h		;7697	11 00 c4	. . .
l769ah:
	add hl,de		;769a	19		.
	pop af			;769b	f1		.
	rrca			;769c	0f		.
	rrca			;769d	0f		.
	rrca			;769e	0f		.
	cp 009h			;769f	fe 09		. .
	jr c,l76bbh		;76a1	38 18		8 .
	sub 008h		;76a3	d6 08		. .
	push af			;76a5	f5		.
	push de			;76a6	d5		.
	neg			;76a7	ed 44		. D
	add a,018h		;76a9	c6 18		. .
	call sub_76bdh		;76ab	cd bd 76	. . v
	ex (sp),hl		;76ae	e3		.
	xor a			;76af	af		.
	call 046f0h		;76b0	cd f0 46	. . F
	ld a,(00007h)		;76b3	3a 07 00	: . .
	ld c,a			;76b6	4f		O
	pop hl			;76b7	e1		.
	pop af			;76b8	f1		.
	jr l76cah		;76b9	18 0f		. .
l76bbh:
	ld a,018h		;76bb	3e 18		> .
sub_76bdh:
	push af			;76bd	f5		.
	xor a			;76be	af		.
	call 046f0h		;76bf	cd f0 46	. . F
	ld a,(00007h)		;76c2	3a 07 00	: . .
	ld c,a			;76c5	4f		O
	ld hl,0d988h		;76c6	21 88 d9	! . .
	pop af			;76c9	f1		.
l76cah:
	push af			;76ca	f5		.
	exx			;76cb	d9		.
	pop bc			;76cc	c1		.
	ld a,(0c0b3h)		;76cd	3a b3 c0	: . .
	or a			;76d0	b7		.
	jr nz,l771eh		;76d1	20 4b		  K
l76d3h:
	exx			;76d3	d9		.
	outi			;76d4	ed a3		. .
	outi			;76d6	ed a3		. .
	outi			;76d8	ed a3		. .
	outi			;76da	ed a3		. .
	outi			;76dc	ed a3		. .
	outi			;76de	ed a3		. .
	outi			;76e0	ed a3		. .
	outi			;76e2	ed a3		. .
	outi			;76e4	ed a3		. .
	outi			;76e6	ed a3		. .
	outi			;76e8	ed a3		. .
	outi			;76ea	ed a3		. .
	outi			;76ec	ed a3		. .
	outi			;76ee	ed a3		. .
	outi			;76f0	ed a3		. .
	outi			;76f2	ed a3		. .
	outi			;76f4	ed a3		. .
	outi			;76f6	ed a3		. .
	outi			;76f8	ed a3		. .
	outi			;76fa	ed a3		. .
	outi			;76fc	ed a3		. .
	outi			;76fe	ed a3		. .
	outi			;7700	ed a3		. .
	outi			;7702	ed a3		. .
	outi			;7704	ed a3		. .
	outi			;7706	ed a3		. .
	outi			;7708	ed a3		. .
	outi			;770a	ed a3		. .
	outi			;770c	ed a3		. .
	outi			;770e	ed a3		. .
	outi			;7710	ed a3		. .
	outi			;7712	ed a3		. .
	ld de,00010h		;7714	11 10 00	. . .
	add hl,de		;7717	19		.
	exx			;7718	d9		.
	djnz l76d3h		;7719	10 b8		. .
	exx			;771b	d9		.
	ei			;771c	fb		.
	ret			;771d	c9		.
l771eh:
	exx			;771e	d9		.
	call sub_772bh		;771f	cd 2b 77	. + w
	ld de,00010h		;7722	11 10 00	. . .
	add hl,de		;7725	19		.
	exx			;7726	d9		.
	djnz l771eh		;7727	10 f5		. .
	exx			;7729	d9		.
	ret			;772a	c9		.
sub_772bh:
	push bc			;772b	c5		.
	ld b,020h		;772c	06 20		.  
l772eh:
	ld a,(hl)		;772e	7e		~
	inc hl			;772f	23		#
	push bc			;7730	c5		.
	call sub_773dh		;7731	cd 3d 77	. = w
	pop bc			;7734	c1		.
	and 00fh		;7735	e6 0f		. .
	out (c),a		;7737	ed 79		. y
	djnz l772eh		;7739	10 f3		. .
	pop bc			;773b	c1		.
	ret			;773c	c9		.
sub_773dh:
	push af			;773d	f5		.
	ld a,007h		;773e	3e 07		> .
	push ix			;7740	dd e5		. .
	push hl			;7742	e5		.
	push de			;7743	d5		.
	call 00141h		;7744	cd 41 01	. A .
	pop de			;7747	d1		.
	pop hl			;7748	e1		.
	pop ix			;7749	dd e1		. .
	bit 3,a			;774b	cb 5f		. _
	pop bc			;774d	c1		.
	ld a,b			;774e	78		x
	ret nz			;774f	c0		.
	rrca			;7750	0f		.
	rrca			;7751	0f		.
	rrca			;7752	0f		.
	rrca			;7753	0f		.
	ret			;7754	c9		.
sub_7755h:
	call 04e4ah		;7755	cd 4a 4e	. J N
	ld a,l			;7758	7d		}
	ld b,018h		;7759	06 18		. .
	and 03fh		;775b	e6 3f		. ?
	cp 021h			;775d	fe 21		. !
	jr nc,l777ch		;775f	30 1b		0 .
	ld de,0d988h		;7761	11 88 d9	. . .
l7764h:
	push bc			;7764	c5		.
	push hl			;7765	e5		.
	push de			;7766	d5		.
	call sub_77bah		;7767	cd ba 77	. . w
	pop de			;776a	d1		.
	pop hl			;776b	e1		.
	ex de,hl		;776c	eb		.
	ld bc,00030h		;776d	01 30 00	. 0 .
	add hl,bc		;7770	09		.
	ex de,hl		;7771	eb		.
	ld bc,00040h		;7772	01 40 00	. @ .
	add hl,bc		;7775	09		.
	res 3,h			;7776	cb 9c		. .
	pop bc			;7778	c1		.
	djnz l7764h		;7779	10 e9		. .
	ret			;777b	c9		.
l777ch:
	ld c,a			;777c	4f		O
	sub 020h		;777d	d6 20		.  
	add a,a			;777f	87		.
	ld e,a			;7780	5f		_
	ld d,000h		;7781	16 00		. .
	ld ix,sub_77bah		;7783	dd 21 ba 77	. ! . w
	add ix,de		;7787	dd 19		. .
	ld a,040h		;7789	3e 40		> @
	sub c			;778b	91		.
	add a,a			;778c	87		.
	ld e,a			;778d	5f		_
	ld iy,sub_77bah		;778e	fd 21 ba 77	. ! . w
	add iy,de		;7792	fd 19		. .
	ld de,0d988h		;7794	11 88 d9	. . .
l7797h:
	push bc			;7797	c5		.
	push hl			;7798	e5		.
	push de			;7799	d5		.
	call sub_77b8h		;779a	cd b8 77	. . w
	ld a,l			;779d	7d		}
	and 0c0h		;779e	e6 c0		. .
	ld l,a			;77a0	6f		o
	call sub_77b6h		;77a1	cd b6 77	. . w
	pop de			;77a4	d1		.
	pop hl			;77a5	e1		.
	ex de,hl		;77a6	eb		.
	ld bc,00030h		;77a7	01 30 00	. 0 .
	add hl,bc		;77aa	09		.
	ex de,hl		;77ab	eb		.
	ld bc,00040h		;77ac	01 40 00	. @ .
	add hl,bc		;77af	09		.
	res 3,h			;77b0	cb 9c		. .
	pop bc			;77b2	c1		.
	djnz l7797h		;77b3	10 e2		. .
	ret			;77b5	c9		.
sub_77b6h:
	jp (iy)			;77b6	fd e9		. .
sub_77b8h:
	jp (ix)			;77b8	dd e9		. .
sub_77bah:
	ldi			;77ba	ed a0		. .
	ldi			;77bc	ed a0		. .
	ldi			;77be	ed a0		. .
	ldi			;77c0	ed a0		. .
	ldi			;77c2	ed a0		. .
	ldi			;77c4	ed a0		. .
	ldi			;77c6	ed a0		. .
	ldi			;77c8	ed a0		. .
	ldi			;77ca	ed a0		. .
	ldi			;77cc	ed a0		. .
	ldi			;77ce	ed a0		. .
	ldi			;77d0	ed a0		. .
	ldi			;77d2	ed a0		. .
	ldi			;77d4	ed a0		. .
	ldi			;77d6	ed a0		. .
	ldi			;77d8	ed a0		. .
	ldi			;77da	ed a0		. .
	ldi			;77dc	ed a0		. .
	ldi			;77de	ed a0		. .
	ldi			;77e0	ed a0		. .
	ldi			;77e2	ed a0		. .
	ldi			;77e4	ed a0		. .
	ldi			;77e6	ed a0		. .
	ldi			;77e8	ed a0		. .
	ldi			;77ea	ed a0		. .
	ldi			;77ec	ed a0		. .
	ldi			;77ee	ed a0		. .
	ldi			;77f0	ed a0		. .
	ldi			;77f2	ed a0		. .
	ldi			;77f4	ed a0		. .
	ldi			;77f6	ed a0		. .
	ld a,(hl)		;77f8	7e		~
	ld (de),a		;77f9	12		.
	inc de			;77fa	13		.
	ret			;77fb	c9		.
sub_77fch:
	xor a			;77fc	af		.
	ld (0c0e5h),a		;77fd	32 e5 c0	2 . .
	ld (0c0d7h),a		;7800	32 d7 c0	2 . .
	ld hl,l7d76h		;7803	21 76 7d	! v }
	ld a,(0ca10h)		;7806	3a 10 ca	: . .
	call 0468eh		;7809	cd 8e 46	. . F
	ld (0c0c8h),hl		;780c	22 c8 c0	" . .
	ld hl,l7c8ch		;780f	21 8c 7c	! . |
	ld a,(0ca10h)		;7812	3a 10 ca	: . .
	call 0468eh		;7815	cd 8e 46	. . F
	ld a,(0ca1eh)		;7818	3a 1e ca	: . .
	ex de,hl		;781b	eb		.
	call 04639h		;781c	cd 39 46	. 9 F
	ld (0c0cah),de		;781f	ed 53 ca c0	. S . .
	ld (0ca34h),hl		;7823	22 34 ca	" 4 .
	ld a,(0ca1eh)		;7826	3a 1e ca	: . .
	ld (0c0e1h),a		;7829	32 e1 c0	2 . .
	xor a			;782c	af		.
	ld (0c0cdh),a		;782d	32 cd c0	2 . .
	ld (0c0cch),a		;7830	32 cc c0	2 . .
	ld a,0ffh		;7833	3e ff		> .
	ld (0ca33h),a		;7835	32 33 ca	2 3 .
	call sub_7bedh		;7838	cd ed 7b	. . {
	call sub_7bedh		;783b	cd ed 7b	. . {
	call sub_7c08h		;783e	cd 08 7c	. . |
	ld hl,(0ca34h)		;7841	2a 34 ca	* 4 .
	dec hl			;7844	2b		+
	ld (0ca34h),hl		;7845	22 34 ca	" 4 .
l7848h:
	call sub_7ac4h		;7848	cd c4 7a	. . z
	call 04109h		;784b	cd 09 41	. . A
	ld a,(0ca33h)		;784e	3a 33 ca	: 3 .
	or a			;7851	b7		.
	jr nz,l7848h		;7852	20 f4		  .
	call sub_7ac4h		;7854	cd c4 7a	. . z
	ret			;7857	c9		.
sub_7858h:
	ld a,01bh		;7858	3e 1b		> .
	call 04c23h		;785a	cd 23 4c	. # L
	ld hl,(0c0cah)		;785d	2a ca c0	* . .
	inc hl			;7860	23		#
	ld a,(hl)		;7861	7e		~
	inc hl			;7862	23		#
	ld (0c0cah),hl		;7863	22 ca c0	" . .
	cp 010h			;7866	fe 10		. .
	jr c,l7894h		;7868	38 2a		8 *
	sub 010h		;786a	d6 10		. .
	cp 010h			;786c	fe 10		. .
	jp nc,04ae0h		;786e	d2 e0 4a	. . J
	call 0461ah		;7871	cd 1a 46	. . F
	adc a,a			;7874	8f		.
	ld a,c			;7875	79		y
	and h			;7876	a4		.
	ld a,c			;7877	79		y
	jp c,0eb79h		;7878	da 79 eb	. y .
	ld a,c			;787b	79		y
	defb 0fdh,079h,008h ;illegal sequence	;787c	fd 79 08	. y .
	ld a,d			;787f	7a		z
	inc e			;7880	1c		.
	ld a,d			;7881	7a		z
	inc hl			;7882	23		#
	ld a,d			;7883	7a		z
	jr nc,l7900h		;7884	30 7a		0 z
	jr c,l7902h		;7886	38 7a		8 z
	ld d,h			;7888	54		T
	ld a,d			;7889	7a		z
	ld h,l			;788a	65		e
	ld a,d			;788b	7a		z
	ld l,d			;788c	6a		j
	ld a,d			;788d	7a		z
	add a,b			;788e	80		.
	ld a,d			;788f	7a		z
	add a,a			;7890	87		.
	ld a,d			;7891	7a		z
	sub h			;7892	94		.
	ld a,d			;7893	7a		z
l7894h:
	call sub_789ch		;7894	cd 9c 78	. . x
	call sub_7aa1h		;7897	cd a1 7a	. . z
	or a			;789a	b7		.
	ret			;789b	c9		.
sub_789ch:
	add a,a			;789c	87		.
	add a,a			;789d	87		.
	ld e,a			;789e	5f		_
	add a,a			;789f	87		.
	add a,e			;78a0	83		.
	ld hl,l78ffh		;78a1	21 ff 78	! . x
	ld e,a			;78a4	5f		_
	ld d,000h		;78a5	16 00		. .
	add hl,de		;78a7	19		.
	ld e,(hl)		;78a8	5e		^
	inc hl			;78a9	23		#
	ld d,(hl)		;78aa	56		V
	inc hl			;78ab	23		#
	ld (0c0c3h),de		;78ac	ed 53 c3 c0	. S . .
	ld a,d			;78b0	7a		z
	rlca			;78b1	07		.
	sbc a,a			;78b2	9f		.
	ld (0c0c5h),a		;78b3	32 c5 c0	2 . .
	ld e,(hl)		;78b6	5e		^
	inc hl			;78b7	23		#
	ld d,(hl)		;78b8	56		V
	inc hl			;78b9	23		#
	ld (0c0bdh),de		;78ba	ed 53 bd c0	. S . .
	ld a,d			;78be	7a		z
	rlca			;78bf	07		.
	sbc a,a			;78c0	9f		.
	ld (0c0bfh),a		;78c1	32 bf c0	2 . .
	ld e,(hl)		;78c4	5e		^
	inc hl			;78c5	23		#
	ld d,(hl)		;78c6	56		V
	inc hl			;78c7	23		#
	ld (0c0b8h),de		;78c8	ed 53 b8 c0	. S . .
	ld e,(hl)		;78cc	5e		^
	inc hl			;78cd	23		#
	ld d,(hl)		;78ce	56		V
	inc hl			;78cf	23		#
	ld (0c0b6h),de		;78d0	ed 53 b6 c0	. S . .
	ld e,(hl)		;78d4	5e		^
	inc hl			;78d5	23		#
	ld d,(hl)		;78d6	56		V
	inc hl			;78d7	23		#
	ld a,e			;78d8	7b		{
	ld (0c0ceh),a		;78d9	32 ce c0	2 . .
	push de			;78dc	d5		.
	ld a,(hl)		;78dd	7e		~
	inc hl			;78de	23		#
	ld (0c0d5h),a		;78df	32 d5 c0	2 . .
	ld a,(hl)		;78e2	7e		~
	call sub_78ech		;78e3	cd ec 78	. . x
	pop de			;78e6	d1		.
	xor a			;78e7	af		.
	ld (0c0dah),a		;78e8	32 da c0	2 . .
	ret			;78eb	c9		.
sub_78ech:
	ret			;78ec	c9		.
	bit 7,a			;78ed	cb 7f		. .
	ret z			;78ef	c8		.
sub_78f0h:
	ld a,(0ca35h)		;78f0	3a 35 ca	: 5 .
	and 0f0h		;78f3	e6 f0		. .
	add a,010h		;78f5	c6 10		. .
	ld d,a			;78f7	57		W
	ld e,000h		;78f8	1e 00		. .
	ld (0ca34h),de		;78fa	ed 53 34 ca	. S 4 .
	ret			;78fe	c9		.
l78ffh:
	nop			;78ff	00		.
l7900h:
	nop			;7900	00		.
	nop			;7901	00		.
l7902h:
	ld (bc),a		;7902	02		.
	nop			;7903	00		.
	ld (bc),a		;7904	02		.
	nop			;7905	00		.
	nop			;7906	00		.
	nop			;7907	00		.
	jr nz,l790bh		;7908	20 01		  .
	add a,b			;790a	80		.
l790bh:
	nop			;790b	00		.
	ld bc,00100h		;790c	01 00 01	. . .
	nop			;790f	00		.
	ld bc,00000h		;7910	01 00 00	. . .
	ld bc,00218h		;7913	01 18 02	. . .
	add a,b			;7916	80		.
	nop			;7917	00		.
	ld bc,00000h		;7918	01 00 00	. . .
	nop			;791b	00		.
	ld bc,00000h		;791c	01 00 00	. . .
	ld (bc),a		;791f	02		.
	jr l7923h		;7920	18 01		. .
	nop			;7922	00		.
l7923h:
	nop			;7923	00		.
	ld bc,00000h		;7924	01 00 00	. . .
	nop			;7927	00		.
	ld bc,00000h		;7928	01 00 00	. . .
	inc bc			;792b	03		.
	jr l7931h		;792c	18 03		. .
	add a,b			;792e	80		.
	nop			;792f	00		.
	rst 38h			;7930	ff		.
l7931h:
	nop			;7931	00		.
	ld bc,00100h		;7932	01 00 01	. . .
	nop			;7935	00		.
	nop			;7936	00		.
	inc b			;7937	04		.
	jr $+10			;7938	18 08		. .
	add a,b			;793a	80		.
	nop			;793b	00		.
	ld bc,0ff00h		;793c	01 00 ff	. . .
	nop			;793f	00		.
	ld bc,00000h		;7940	01 00 00	. . .
	dec b			;7943	05		.
	jr nz,l794ah		;7944	20 04		  .
	add a,b			;7946	80		.
	nop			;7947	00		.
	rst 38h			;7948	ff		.
	nop			;7949	00		.
l794ah:
	nop			;794a	00		.
	nop			;794b	00		.
	ld bc,00000h		;794c	01 00 00	. . .
	ld b,018h		;794f	06 18		. .
	rlca			;7951	07		.
	add a,b			;7952	80		.
	nop			;7953	00		.
	nop			;7954	00		.
	nop			;7955	00		.
	nop			;7956	00		.
	nop			;7957	00		.
	ld bc,00000h		;7958	01 00 00	. . .
	rlca			;795b	07		.
	nop			;795c	00		.
	nop			;795d	00		.
	add a,b			;795e	80		.
	nop			;795f	00		.
	nop			;7960	00		.
	nop			;7961	00		.
	inc b			;7962	04		.
	nop			;7963	00		.
	inc b			;7964	04		.
	nop			;7965	00		.
	nop			;7966	00		.
	nop			;7967	00		.
	jr nz,l796bh		;7968	20 01		  .
	add a,b			;796a	80		.
l796bh:
	nop			;796b	00		.
	nop			;796c	00		.
	nop			;796d	00		.
	ld bc,00100h		;796e	01 00 01	. . .
	nop			;7971	00		.
	nop			;7972	00		.
	nop			;7973	00		.
	jr nz,l7977h		;7974	20 01		  .
	add a,b			;7976	80		.
l7977h:
	nop			;7977	00		.
	nop			;7978	00		.
	nop			;7979	00		.
	ld (bc),a		;797a	02		.
	nop			;797b	00		.
	ld (bc),a		;797c	02		.
	nop			;797d	00		.
	nop			;797e	00		.
	ex af,af'		;797f	08		.
	ld bc,00001h		;7980	01 01 00	. . .
	nop			;7983	00		.
	ld (bc),a		;7984	02		.
	nop			;7985	00		.
	ld (bc),a		;7986	02		.
	nop			;7987	00		.
	ld (bc),a		;7988	02		.
	nop			;7989	00		.
	nop			;798a	00		.
	ld bc,00218h		;798b	01 18 02	. . .
	nop			;798e	00		.
	ld hl,(0c0cah)		;798f	2a ca c0	* . .
	ld e,(hl)		;7992	5e		^
	inc hl			;7993	23		#
	ld d,(hl)		;7994	56		V
	inc hl			;7995	23		#
	ld (0c0cah),hl		;7996	22 ca c0	" . .
	ld a,(0ce4ch)		;7999	3a 4c ce	: L .
	or a			;799c	b7		.
	ret z			;799d	c8		.
	ld (0c0cah),de		;799e	ed 53 ca c0	. S . .
	or a			;79a2	b7		.
	ret			;79a3	c9		.
	ld hl,(0c0cah)		;79a4	2a ca c0	* . .
	ld e,(hl)		;79a7	5e		^
	inc hl			;79a8	23		#
	ld d,(hl)		;79a9	56		V
	inc hl			;79aa	23		#
	ld (0c0cah),hl		;79ab	22 ca c0	" . .
l79aeh:
	ld a,e			;79ae	7b		{
	push de			;79af	d5		.
	call sub_79c2h		;79b0	cd c2 79	. . y
	ld a,(0c0d2h)		;79b3	3a d2 c0	: . .
	and 007h		;79b6	e6 07		. .
	ld c,a			;79b8	4f		O
	pop af			;79b9	f1		.
	and 0f8h		;79ba	e6 f8		. .
	or c			;79bc	b1		.
	ld (0c0d2h),a		;79bd	32 d2 c0	2 . .
	or a			;79c0	b7		.
	ret			;79c1	c9		.
sub_79c2h:
	ei			;79c2	fb		.
	ex af,af'		;79c3	08		.
l79c4h:
	ld a,(0c09ch)		;79c4	3a 9c c0	: . .
	or a			;79c7	b7		.
	jr nz,l79c4h		;79c8	20 fa		  .
	ex af,af'		;79ca	08		.
	cp 007h			;79cb	fe 07		. .
	jp c,l79d6h		;79cd	da d6 79	. . y
	and 080h		;79d0	e6 80		. .
	ld (0c0d1h),a		;79d2	32 d1 c0	2 . .
	ret			;79d5	c9		.
l79d6h:
	ld (0c0b5h),a		;79d6	32 b5 c0	2 . .
	ret			;79d9	c9		.
	ld hl,(0c0cah)		;79da	2a ca c0	* . .
	ld de,00024h		;79dd	11 24 00	. $ .
	add hl,de		;79e0	19		.
	ld (0c0cah),hl		;79e1	22 ca c0	" . .
	ld a,002h		;79e4	3e 02		> .
	ld (0c0ceh),a		;79e6	32 ce c0	2 . .
	or a			;79e9	b7		.
	ret			;79ea	c9		.
	ld hl,(0c0cah)		;79eb	2a ca c0	* . .
	ld e,(hl)		;79ee	5e		^
	inc hl			;79ef	23		#
	ld d,(hl)		;79f0	56		V
	inc hl			;79f1	23		#
	push hl			;79f2	e5		.
	ex de,hl		;79f3	eb		.
	call 04ce0h		;79f4	cd e0 4c	. . L
	pop hl			;79f7	e1		.
	ld (0c0cah),hl		;79f8	22 ca c0	" . .
	or a			;79fb	b7		.
	ret			;79fc	c9		.
	call sub_7bd6h		;79fd	cd d6 7b	. . {
	call 04e73h		;7a00	cd 73 4e	. s N
	call sub_78f0h		;7a03	cd f0 78	. . x
	scf			;7a06	37		7
	ret			;7a07	c9		.
	ld a,(0ef60h)		;7a08	3a 60 ef	: ` .
	or a			;7a0b	b7		.
	ret z			;7a0c	c8		.
	ld hl,(0c0cah)		;7a0d	2a ca c0	* . .
	dec hl			;7a10	2b		+
	dec hl			;7a11	2b		+
	ld (0c0cah),hl		;7a12	22 ca c0	" . .
	ld a,007h		;7a15	3e 07		> .
	call sub_789ch		;7a17	cd 9c 78	. . x
	scf			;7a1a	37		7
	ret			;7a1b	c9		.
	ld a,001h		;7a1c	3e 01		> .
	ld (0c0d6h),a		;7a1e	32 d6 c0	2 . .
	scf			;7a21	37		7
	ret			;7a22	c9		.
	ld hl,(0c0cah)		;7a23	2a ca c0	* . .
	ld a,(hl)		;7a26	7e		~
	inc hl			;7a27	23		#
	ld (0c0cah),hl		;7a28	22 ca c0	" . .
	call 04e6bh		;7a2b	cd 6b 4e	. k N
	or a			;7a2e	b7		.
	ret			;7a2f	c9		.
	call sub_6e2dh		;7a30	cd 2d 6e	. - n
	call sub_6e0bh		;7a33	cd 0b 6e	. . n
	or a			;7a36	b7		.
	ret			;7a37	c9		.
	ld hl,(0c0cah)		;7a38	2a ca c0	* . .
	ld a,(hl)		;7a3b	7e		~
	inc hl			;7a3c	23		#
	ld (0c0cah),hl		;7a3d	22 ca c0	" . .
	or a			;7a40	b7		.
	jr nz,l7a4fh		;7a41	20 0c		  .
	ld a,030h		;7a43	3e 30		> 0
	ld (0c0d7h),a		;7a45	32 d7 c0	2 . .
	ld a,084h		;7a48	3e 84		> .
	call 04aebh		;7a4a	cd eb 4a	. . J
	or a			;7a4d	b7		.
	ret			;7a4e	c9		.
l7a4fh:
	call 04aebh		;7a4f	cd eb 4a	. . J
	or a			;7a52	b7		.
	ret			;7a53	c9		.
	ld a,(0c0e1h)		;7a54	3a e1 c0	: . .
	or a			;7a57	b7		.
	jr nz,l7a60h		;7a58	20 06		  .
	ld hl,0ca1eh		;7a5a	21 1e ca	! . .
	inc (hl)		;7a5d	34		4
	or a			;7a5e	b7		.
	ret			;7a5f	c9		.
l7a60h:
	xor a			;7a60	af		.
	ld (0c0e1h),a		;7a61	32 e1 c0	2 . .
	ret			;7a64	c9		.
	call sub_78f0h		;7a65	cd f0 78	. . x
	or a			;7a68	b7		.
	ret			;7a69	c9		.
	ld hl,(0c0cah)		;7a6a	2a ca c0	* . .
	ld e,(hl)		;7a6d	5e		^
	inc hl			;7a6e	23		#
	ld d,(hl)		;7a6f	56		V
	inc hl			;7a70	23		#
	push hl			;7a71	e5		.
	ex de,hl		;7a72	eb		.
	ld a,(0ca33h)		;7a73	3a 33 ca	: 3 .
	or a			;7a76	b7		.
	call nz,04cdch		;7a77	c4 dc 4c	. . L
	pop hl			;7a7a	e1		.
	ld (0c0cah),hl		;7a7b	22 ca c0	" . .
	or a			;7a7e	b7		.
	ret			;7a7f	c9		.
	ld a,(0ca33h)		;7a80	3a 33 ca	: 3 .
	or a			;7a83	b7		.
	ret nz			;7a84	c0		.
	scf			;7a85	37		7
	ret			;7a86	c9		.
	call sub_7bd6h		;7a87	cd d6 7b	. . {
	ld a,002h		;7a8a	3e 02		> .
	ld (0c0d4h),a		;7a8c	32 d4 c0	2 . .
	call sub_78f0h		;7a8f	cd f0 78	. . x
	scf			;7a92	37		7
	ret			;7a93	c9		.
	ld hl,(0c0cah)		;7a94	2a ca c0	* . .
	ld a,(hl)		;7a97	7e		~
	inc hl			;7a98	23		#
	ld (0c0cah),hl		;7a99	22 ca c0	" . .
	ld (0c0e5h),a		;7a9c	32 e5 c0	2 . .
	or a			;7a9f	b7		.
	ret			;7aa0	c9		.
sub_7aa1h:
	ld a,(0ca33h)		;7aa1	3a 33 ca	: 3 .
	inc a			;7aa4	3c		<
	ret nz			;7aa5	c0		.
	ld a,d			;7aa6	7a		z
	ld (0ca33h),a		;7aa7	32 33 ca	2 3 .
	ret			;7aaa	c9		.
sub_7aabh:
	ld a,(0ca33h)		;7aab	3a 33 ca	: 3 .
	or a			;7aae	b7		.
	ret z			;7aaf	c8		.
	dec a			;7ab0	3d		=
	ld (0ca33h),a		;7ab1	32 33 ca	2 3 .
	ret			;7ab4	c9		.
sub_7ab5h:
	ld a,(0c0d7h)		;7ab5	3a d7 c0	: . .
	or a			;7ab8	b7		.
	ret z			;7ab9	c8		.
	dec a			;7aba	3d		=
	ld (0c0d7h),a		;7abb	32 d7 c0	2 . .
	ret nz			;7abe	c0		.
	ld a,039h		;7abf	3e 39		> 9
	jp 04aebh		;7ac1	c3 eb 4a	. . J
sub_7ac4h:
	ld a,(0c0d6h)		;7ac4	3a d6 c0	: . .
	dec a			;7ac7	3d		=
	jr z,l7aceh		;7ac8	28 04		( .
	call sub_7ad2h		;7aca	cd d2 7a	. . z
	ret			;7acd	c9		.
l7aceh:
	call sub_7bd6h		;7ace	cd d6 7b	. . {
	ret			;7ad1	c9		.
sub_7ad2h:
	ld hl,(0c0b6h)		;7ad2	2a b6 c0	* . .
	ld a,h			;7ad5	7c		|
	ld de,(0c0b8h)		;7ad6	ed 5b b8 c0	. [ . .
	add hl,de		;7ada	19		.
	ld (0c0b6h),hl		;7adb	22 b6 c0	" . .
	xor h			;7ade	ac		.
	bit 3,a			;7adf	cb 5f		. _
	push af			;7ae1	f5		.
	call sub_7b09h		;7ae2	cd 09 7b	. . {
	call sub_7c72h		;7ae5	cd 72 7c	. r |
	pop af			;7ae8	f1		.
	ret z			;7ae9	c8		.
	call sub_7bedh		;7aea	cd ed 7b	. . {
	ret c			;7aed	d8		.
	call sub_7c08h		;7aee	cd 08 7c	. . |
	ld a,01bh		;7af1	3e 1b		> .
	call 04c23h		;7af3	cd 23 4c	. # L
	ld hl,(0c0cah)		;7af6	2a ca c0	* . .
	ld a,(hl)		;7af9	7e		~
	cp 0feh			;7afa	fe fe		. .
	ret nz			;7afc	c0		.
	inc hl			;7afd	23		#
	ld (0c0cah),hl		;7afe	22 ca c0	" . .
	call sub_7bedh		;7b01	cd ed 7b	. . {
	ret c			;7b04	d8		.
	call sub_7c08h		;7b05	cd 08 7c	. . |
	ret			;7b08	c9		.
sub_7b09h:
	ld hl,0c0bah		;7b09	21 ba c0	! . .
	ld de,0c0bdh		;7b0c	11 bd c0	. . .
	ld a,(de)		;7b0f	1a		.
	add a,(hl)		;7b10	86		.
	ld (hl),a		;7b11	77		w
	inc hl			;7b12	23		#
	inc de			;7b13	13		.
	ld a,(de)		;7b14	1a		.
	adc a,(hl)		;7b15	8e		.
	ld (hl),a		;7b16	77		w
	inc hl			;7b17	23		#
	inc de			;7b18	13		.
	ld a,(de)		;7b19	1a		.
	adc a,(hl)		;7b1a	8e		.
	ld (hl),a		;7b1b	77		w
	ld de,(0c0bdh)		;7b1c	ed 5b bd c0	. [ . .
	call 0460ah		;7b20	cd 0a 46	. . F
	sra d			;7b23	cb 2a		. *
	rr e			;7b25	cb 1b		. .
	sra d			;7b27	cb 2a		. *
	rr e			;7b29	cb 1b		. .
	sra d			;7b2b	cb 2a		. *
	rr e			;7b2d	cb 1b		. .
	ld (0ca14h),de		;7b2f	ed 53 14 ca	. S . .
	ld de,(0c0bah)		;7b33	ed 5b ba c0	. [ . .
	sra d			;7b37	cb 2a		. *
	rr e			;7b39	cb 1b		. .
	sra d			;7b3b	cb 2a		. *
	rr e			;7b3d	cb 1b		. .
	sra d			;7b3f	cb 2a		. *
	rr e			;7b41	cb 1b		. .
	ld (0ca1ch),de		;7b43	ed 53 1c ca	. S . .
	ld d,000h		;7b47	16 00		. .
	call 0460ah		;7b49	cd 0a 46	. . F
	ld (0ca38h),de		;7b4c	ed 53 38 ca	. S 8 .
	ld a,(0c0c1h)		;7b50	3a c1 c0	: . .
	ld c,a			;7b53	4f		O
	ld hl,0c0c0h		;7b54	21 c0 c0	! . .
	ld de,0c0c3h		;7b57	11 c3 c0	. . .
	ld a,(de)		;7b5a	1a		.
	add a,(hl)		;7b5b	86		.
	ld (hl),a		;7b5c	77		w
	inc hl			;7b5d	23		#
	inc de			;7b5e	13		.
	ld a,(de)		;7b5f	1a		.
	adc a,(hl)		;7b60	8e		.
	ld (hl),a		;7b61	77		w
	inc hl			;7b62	23		#
	inc de			;7b63	13		.
	ld a,(de)		;7b64	1a		.
	adc a,(hl)		;7b65	8e		.
	ld (hl),a		;7b66	77		w
	ld a,(0c0c1h)		;7b67	3a c1 c0	: . .
	ld h,a			;7b6a	67		g
	ld de,(0c0c3h)		;7b6b	ed 5b c3 c0	. [ . .
	call 0460ah		;7b6f	cd 0a 46	. . F
	sra d			;7b72	cb 2a		. *
	rr e			;7b74	cb 1b		. .
	sra d			;7b76	cb 2a		. *
	rr e			;7b78	cb 1b		. .
	sra d			;7b7a	cb 2a		. *
	rr e			;7b7c	cb 1b		. .
	ld (0ca12h),de		;7b7e	ed 53 12 ca	. S . .
	ld de,(0c0c0h)		;7b82	ed 5b c0 c0	. [ . .
	sra d			;7b86	cb 2a		. *
	rr e			;7b88	cb 1b		. .
	sra d			;7b8a	cb 2a		. *
	rr e			;7b8c	cb 1b		. .
	sra d			;7b8e	cb 2a		. *
	rr e			;7b90	cb 1b		. .
	ld (0ca1ah),de		;7b92	ed 53 1a ca	. S . .
	ld d,000h		;7b96	16 00		. .
	call 0460ah		;7b98	cd 0a 46	. . F
	ld (0ca36h),de		;7b9b	ed 53 36 ca	. S 6 .
	ld a,(0c0d5h)		;7b9f	3a d5 c0	: . .
	ld (0ca18h),a		;7ba2	32 18 ca	2 . .
	ld a,(0c0bbh)		;7ba5	3a bb c0	: . .
	and 007h		;7ba8	e6 07		. .
	ld d,a			;7baa	57		W
	ld a,(0c0c1h)		;7bab	3a c1 c0	: . .
	and 007h		;7bae	e6 07		. .
	ld e,a			;7bb0	5f		_
	ld (0ca31h),de		;7bb1	ed 53 31 ca	. S 1 .
	ld a,(0c0d1h)		;7bb5	3a d1 c0	: . .
	or a			;7bb8	b7		.
	jr nz,l7bc4h		;7bb9	20 09		  .
	ld a,(0c0d2h)		;7bbb	3a d2 c0	: . .
	add a,h			;7bbe	84		.
	sub c			;7bbf	91		.
	ld (0c0d2h),a		;7bc0	32 d2 c0	2 . .
	ret			;7bc3	c9		.
l7bc4h:
	ld a,(0c0d2h)		;7bc4	3a d2 c0	: . .
	and 0f8h		;7bc7	e6 f8		. .
	ld d,a			;7bc9	57		W
	ld a,(0c0d2h)		;7bca	3a d2 c0	: . .
	add a,h			;7bcd	84		.
	sub c			;7bce	91		.
	and 007h		;7bcf	e6 07		. .
	or d			;7bd1	b2		.
	ld (0c0d2h),a		;7bd2	32 d2 c0	2 . .
	ret			;7bd5	c9		.
sub_7bd6h:
	xor a			;7bd6	af		.
	ld d,a			;7bd7	57		W
	ld e,a			;7bd8	5f		_
	ld (0c0bdh),de		;7bd9	ed 53 bd c0	. S . .
	ld (0c0c3h),de		;7bdd	ed 53 c3 c0	. S . .
	ld (0ca14h),de		;7be1	ed 53 14 ca	. S . .
	ld (0ca12h),de		;7be5	ed 53 12 ca	. S . .
	ld (0ca18h),a		;7be9	32 18 ca	2 . .
	ret			;7bec	c9		.
sub_7bedh:
	ld a,01bh		;7bed	3e 1b		> .
	call 04c23h		;7bef	cd 23 4c	. # L
	ld hl,(0c0cah)		;7bf2	2a ca c0	* . .
l7bf5h:
	ld a,(hl)		;7bf5	7e		~
	inc a			;7bf6	3c		<
	or a			;7bf7	b7		.
	jr z,l7c02h		;7bf8	28 08		( .
	inc a			;7bfa	3c		<
	ret nz			;7bfb	c0		.
	inc hl			;7bfc	23		#
	ld (0c0cah),hl		;7bfd	22 ca c0	" . .
	jr l7bf5h		;7c00	18 f3		. .
l7c02h:
	call sub_7858h		;7c02	cd 58 78	. X x
	ret c			;7c05	d8		.
	jr sub_7bedh		;7c06	18 e5		. .
sub_7c08h:
	ld hl,(0c0cah)		;7c08	2a ca c0	* . .
	push hl			;7c0b	e5		.
	ld a,01bh		;7c0c	3e 1b		> .
	call 04c23h		;7c0e	cd 23 4c	. # L
	call sub_7c3eh		;7c11	cd 3e 7c	. > |
	ld a,(0c0dah)		;7c14	3a da c0	: . .
	inc a			;7c17	3c		<
	ld (0c0dah),a		;7c18	32 da c0	2 . .
	cp 004h			;7c1b	fe 04		. .
	pop hl			;7c1d	e1		.
	ld (0c0cah),hl		;7c1e	22 ca c0	" . .
	ret c			;7c21	d8		.
	xor a			;7c22	af		.
	ld (0c0dah),a		;7c23	32 da c0	2 . .
	add hl,de		;7c26	19		.
	ld (0c0cah),hl		;7c27	22 ca c0	" . .
	ret			;7c2a	c9		.
sub_7c2bh:
	ld hl,(0ca34h)		;7c2b	2a 34 ca	* 4 .
	inc hl			;7c2e	23		#
	ld (0ca34h),hl		;7c2f	22 34 ca	" 4 .
	ret			;7c32	c9		.
sub_7c33h:
	dec a			;7c33	3d		=
	ld (0c0e5h),a		;7c34	32 e5 c0	2 . .
	ret nz			;7c37	c0		.
	ld de,03801h		;7c38	11 01 38	. . 8
	jp l79aeh		;7c3b	c3 ae 79	. . y
sub_7c3eh:
	ld a,(0c0e5h)		;7c3e	3a e5 c0	: . .
	or a			;7c41	b7		.
	call nz,sub_7c33h	;7c42	c4 33 7c	. 3 |
	call sub_7c2bh		;7c45	cd 2b 7c	. + |
	ld a,019h		;7c48	3e 19		> .
	call 04c15h		;7c4a	cd 15 4c	. . L
	call sub_7aabh		;7c4d	cd ab 7a	. . z
	ld a,(0c0ceh)		;7c50	3a ce c0	: . .
	cp 009h			;7c53	fe 09		. .
	jp nc,04ae0h		;7c55	d2 e0 4a	. . J
	call 0461ah		;7c58	cd 1a 46	. . F
	and a			;7c5b	a7		.
	ld a,l			;7c5c	7d		}
	jr z,l7cddh		;7c5d	28 7e		( ~
	adc a,b			;7c5f	88		.
	ld a,l			;7c60	7d		}
	inc e			;7c61	1c		.
	ld a,(hl)		;7c62	7e		~
	sbc a,07eh		;7c63	de 7e		. ~
	ccf			;7c65	3f		?
	ld a,(hl)		;7c66	7e		~
	adc a,07eh		;7c67	ce 7e		. ~
	adc a,07eh		;7c69	ce 7e		. ~
	ld l,l			;7c6b	6d		m
	ld a,h			;7c6c	7c		|
	ld de,00000h		;7c6d	11 00 00	. . .
	ret			;7c70	c9		.
sub_7c71h:
	ret			;7c71	c9		.
sub_7c72h:
	ld hl,(0c0bbh)		;7c72	2a bb c0	* . .
	ld a,l			;7c75	7d		}
	rr h			;7c76	cb 1c		. .
	rra			;7c78	1f		.
	rra			;7c79	1f		.
	rra			;7c7a	1f		.
	and 03fh		;7c7b	e6 3f		. ?
	ld (0c0cdh),a		;7c7d	32 cd c0	2 . .
	ld a,(0c0c1h)		;7c80	3a c1 c0	: . .
	rrca			;7c83	0f		.
	rrca			;7c84	0f		.
	rrca			;7c85	0f		.
	and 01fh		;7c86	e6 1f		. .
	ld (0c0cch),a		;7c88	32 cc c0	2 . .
	ret			;7c8b	c9		.
l7c8ch:
	sbc a,(hl)		;7c8c	9e		.
	ld a,h			;7c8d	7c		|
	or (hl)			;7c8e	b6		.
	ld a,h			;7c8f	7c		|
	adc a,07ch		;7c90	ce 7c		. |
	and 07ch		;7c92	e6 7c		. |
	cp 07ch			;7c94	fe 7c		. |
	ld d,07dh		;7c96	16 7d		. }
	ld l,07dh		;7c98	2e 7d		. }
	ld b,(hl)		;7c9a	46		F
	ld a,l			;7c9b	7d		}
	ld e,(hl)		;7c9c	5e		^
	ld a,l			;7c9d	7d		}
	nop			;7c9e	00		.
	and b			;7c9f	a0		.
	nop			;7ca0	00		.
	nop			;7ca1	00		.
	ret m			;7ca2	f8		.
	and b			;7ca3	a0		.
	and b			;7ca4	a0		.
	djnz l7cd0h		;7ca5	10 29		. )
	and e			;7ca7	a3		.
	and b			;7ca8	a0		.
	djnz l7cd4h		;7ca9	10 29		. )
	and e			;7cab	a3		.
	and b			;7cac	a0		.
	djnz l7cd8h		;7cad	10 29		. )
	and e			;7caf	a3		.
	and b			;7cb0	a0		.
	djnz $-88		;7cb1	10 a6		. .
	and e			;7cb3	a3		.
	and b			;7cb4	a0		.
	djnz $+98		;7cb5	10 60		. `
	and h			;7cb7	a4		.
	nop			;7cb8	00		.
	nop			;7cb9	00		.
	ld c,a			;7cba	4f		O
	and l			;7cbb	a5		.
	sbc a,h			;7cbc	9c		.
	djnz $+60		;7cbd	10 3a		. :
	and a			;7cbf	a7		.
	adc a,c			;7cc0	89		.
	jr nc,l7cf2h		;7cc1	30 2f		0 /
	xor b			;7cc3	a8		.
	nop			;7cc4	00		.
	ld d,b			;7cc5	50		P
	cpl			;7cc6	2f		/
	xor b			;7cc7	a8		.
	nop			;7cc8	00		.
	ld d,b			;7cc9	50		P
	cpl			;7cca	2f		/
	xor b			;7ccb	a8		.
	nop			;7ccc	00		.
	ld d,b			;7ccd	50		P
	ld (hl),b		;7cce	70		p
	xor c			;7ccf	a9		.
l7cd0h:
	nop			;7cd0	00		.
	nop			;7cd1	00		.
	ld l,b			;7cd2	68		h
	xor d			;7cd3	aa		.
l7cd4h:
	and b			;7cd4	a0		.
	djnz l7cd7h		;7cd5	10 00		. .
l7cd7h:
	xor e			;7cd7	ab		.
l7cd8h:
	nop			;7cd8	00		.
	ld de,0ab68h		;7cd9	11 68 ab	. h .
	ld b,b			;7cdc	40		@
l7cddh:
	ld de,0ab68h		;7cdd	11 68 ab	. h .
	ld b,b			;7ce0	40		@
	ld de,0ab68h		;7ce1	11 68 ab	. h .
	ld b,b			;7ce4	40		@
	ld de,0aba9h		;7ce5	11 a9 ab	. . .
	nop			;7ce8	00		.
	nop			;7ce9	00		.
	ld c,0adh		;7cea	0e ad		. .
	inc b			;7cec	04		.
	jr nc,$+16		;7ced	30 0e		0 .
	xor l			;7cef	ad		.
	jr nz,$+50		;7cf0	20 30		  0
l7cf2h:
	ld c,0adh		;7cf2	0e ad		. .
	jr nz,$+50		;7cf4	20 30		  0
	ld c,0adh		;7cf6	0e ad		. .
	jr nz,l7d2ah		;7cf8	20 30		  0
	ld c,0adh		;7cfa	0e ad		. .
	jr nz,l7d2eh		;7cfc	20 30		  0
	ld b,a			;7cfe	47		G
	xor (hl)		;7cff	ae		.
	nop			;7d00	00		.
	nop			;7d01	00		.
	rst 38h			;7d02	ff		.
	xor a			;7d03	af		.
	jr nz,$+19		;7d04	20 11		  .
l7d06h:
	xor d			;7d06	aa		.
	or d			;7d07	b2		.
	ret po			;7d08	e0		.
	ld (de),a		;7d09	12		.
	xor d			;7d0a	aa		.
	or d			;7d0b	b2		.
	ret po			;7d0c	e0		.
	ld (de),a		;7d0d	12		.
	xor d			;7d0e	aa		.
	or d			;7d0f	b2		.
	ret po			;7d10	e0		.
	ld (de),a		;7d11	12		.
	xor d			;7d12	aa		.
	or d			;7d13	b2		.
	ret po			;7d14	e0		.
	ld (de),a		;7d15	12		.
	ld sp,000b3h		;7d16	31 b3 00	1 . .
	nop			;7d19	00		.
	ld e,(hl)		;7d1a	5e		^
	or h			;7d1b	b4		.
	dec b			;7d1c	05		.
	jr nc,l7d7dh		;7d1d	30 5e		0 ^
	or h			;7d1f	b4		.
	dec b			;7d20	05		.
	jr nc,l7d64h		;7d21	30 41		0 A
	or (hl)			;7d23	b6		.
	dec b			;7d24	05		.
	jr nc,l7d06h		;7d25	30 df		0 .
	or (hl)			;7d27	b6		.
	dec b			;7d28	05		.
	ld b,b			;7d29	40		@
l7d2ah:
	ld sp,000b3h		;7d2a	31 b3 00	1 . .
	nop			;7d2d	00		.
l7d2eh:
	ld (hl),b		;7d2e	70		p
	or a			;7d2f	b7		.
	nop			;7d30	00		.
	nop			;7d31	00		.
	ld (hl),b		;7d32	70		p
	or a			;7d33	b7		.
	nop			;7d34	00		.
	nop			;7d35	00		.
	ld (hl),b		;7d36	70		p
	or a			;7d37	b7		.
	nop			;7d38	00		.
	nop			;7d39	00		.
	ld (hl),b		;7d3a	70		p
	or a			;7d3b	b7		.
	nop			;7d3c	00		.
	nop			;7d3d	00		.
	ld (hl),b		;7d3e	70		p
	or a			;7d3f	b7		.
	nop			;7d40	00		.
	nop			;7d41	00		.
	ld (hl),b		;7d42	70		p
	or a			;7d43	b7		.
	nop			;7d44	00		.
	nop			;7d45	00		.
	ld c,b			;7d46	48		H
	cp c			;7d47	b9		.
	nop			;7d48	00		.
	nop			;7d49	00		.
	ld c,b			;7d4a	48		H
	cp c			;7d4b	b9		.
	nop			;7d4c	00		.
	nop			;7d4d	00		.
	ld c,b			;7d4e	48		H
	cp c			;7d4f	b9		.
	nop			;7d50	00		.
	nop			;7d51	00		.
	ld c,b			;7d52	48		H
	cp c			;7d53	b9		.
	nop			;7d54	00		.
	nop			;7d55	00		.
	ld c,b			;7d56	48		H
	cp c			;7d57	b9		.
	nop			;7d58	00		.
	nop			;7d59	00		.
	ld c,b			;7d5a	48		H
	cp c			;7d5b	b9		.
	nop			;7d5c	00		.
	nop			;7d5d	00		.
	ld a,a			;7d5e	7f		.
	cp d			;7d5f	ba		.
	nop			;7d60	00		.
	nop			;7d61	00		.
	ld a,a			;7d62	7f		.
	cp d			;7d63	ba		.
l7d64h:
	nop			;7d64	00		.
	nop			;7d65	00		.
	ld a,a			;7d66	7f		.
	cp d			;7d67	ba		.
	nop			;7d68	00		.
	nop			;7d69	00		.
	ld a,a			;7d6a	7f		.
	cp d			;7d6b	ba		.
	nop			;7d6c	00		.
	nop			;7d6d	00		.
	ld a,a			;7d6e	7f		.
	cp d			;7d6f	ba		.
	nop			;7d70	00		.
	nop			;7d71	00		.
	ld a,a			;7d72	7f		.
	cp d			;7d73	ba		.
	nop			;7d74	00		.
	nop			;7d75	00		.
l7d76h:
	nop			;7d76	00		.
	add a,b			;7d77	80		.
	ret po			;7d78	e0		.
	adc a,d			;7d79	8a		.
	ld h,b			;7d7a	60		`
	sub b			;7d7b	90		.
	ret nc			;7d7c	d0		.
l7d7dh:
	sub l			;7d7d	95		.
	or b			;7d7e	b0		.
	sbc a,l			;7d7f	9d		.
	ld (hl),b		;7d80	70		p
	and b			;7d81	a0		.
	ret nz			;7d82	c0		.
	and a			;7d83	a7		.
	ret nc			;7d84	d0		.
	or c			;7d85	b1		.
	ret nc			;7d86	d0		.
	or d			;7d87	b2		.
	ld de,03700h		;7d88	11 00 37	. . 7
	call 04e3ah		;7d8b	cd 3a 4e	. : N
	ld de,(0c0cah)		;7d8e	ed 5b ca c0	. [ . .
	call sub_7db8h		;7d92	cd b8 7d	. . }
	ld de,(0c0cah)		;7d95	ed 5b ca c0	. [ . .
	ld hl,0ffdch		;7d99	21 dc ff	! . .
	add hl,de		;7d9c	19		.
	push hl			;7d9d	e5		.
	call 04e37h		;7d9e	cd 37 4e	. 7 N
	pop de			;7da1	d1		.
	call sub_7db8h		;7da2	cd b8 7d	. . }
	jr l7db4h		;7da5	18 0d		. .
	ld de,02000h		;7da7	11 00 20	. .  
	call 04e37h		;7daa	cd 37 4e	. 7 N
	ld de,(0c0cah)		;7dad	ed 5b ca c0	. [ . .
	call sub_7db8h		;7db1	cd b8 7d	. . }
l7db4h:
	ld de,00006h		;7db4	11 06 00	. . .
	ret			;7db7	c9		.
sub_7db8h:
	push de			;7db8	d5		.
	push hl			;7db9	e5		.
	exx			;7dba	d9		.
	pop hl			;7dbb	e1		.
	exx			;7dbc	d9		.
	ld a,(0c0bbh)		;7dbd	3a bb c0	: . .
	and 018h		;7dc0	e6 18		. .
	rrca			;7dc2	0f		.
	rrca			;7dc3	0f		.
	rrca			;7dc4	0f		.
	ld hl,(0c0c8h)		;7dc5	2a c8 c0	* . .
	ld e,a			;7dc8	5f		_
	ld d,000h		;7dc9	16 00		. .
	add hl,de		;7dcb	19		.
	ld b,h			;7dcc	44		D
	ld c,l			;7dcd	4d		M
	pop de			;7dce	d1		.
	ld a,006h		;7dcf	3e 06		> .
l7dd1h:
	ex af,af'		;7dd1	08		.
	ld a,01bh		;7dd2	3e 1b		> .
	call 04c23h		;7dd4	cd 23 4c	. # L
	ld a,(de)		;7dd7	1a		.
	inc de			;7dd8	13		.
	ld h,000h		;7dd9	26 00		& .
	ld l,a			;7ddb	6f		o
	ld a,01ah		;7ddc	3e 1a		> .
	call 04c23h		;7dde	cd 23 4c	. # L
	add hl,hl		;7de1	29		)
	add hl,hl		;7de2	29		)
	add hl,hl		;7de3	29		)
	add hl,hl		;7de4	29		)
	add hl,bc		;7de5	09		.
	push hl			;7de6	e5		.
	exx			;7de7	d9		.
	pop de			;7de8	d1		.
	ld bc,00040h		;7de9	01 40 00	. @ .
	ld a,(de)		;7dec	1a		.
	ld (hl),a		;7ded	77		w
	inc e			;7dee	1c		.
	inc e			;7def	1c		.
	inc e			;7df0	1c		.
	inc e			;7df1	1c		.
	add hl,bc		;7df2	09		.
	res 3,h			;7df3	cb 9c		. .
	ld a,(de)		;7df5	1a		.
	ld (hl),a		;7df6	77		w
	inc e			;7df7	1c		.
	inc e			;7df8	1c		.
	inc e			;7df9	1c		.
	inc e			;7dfa	1c		.
	add hl,bc		;7dfb	09		.
	res 3,h			;7dfc	cb 9c		. .
	ld a,(de)		;7dfe	1a		.
	ld (hl),a		;7dff	77		w
	inc e			;7e00	1c		.
	inc e			;7e01	1c		.
	inc e			;7e02	1c		.
	inc e			;7e03	1c		.
	add hl,bc		;7e04	09		.
	res 3,h			;7e05	cb 9c		. .
	ld a,(de)		;7e07	1a		.
	ld (hl),a		;7e08	77		w
	inc e			;7e09	1c		.
	inc e			;7e0a	1c		.
	inc e			;7e0b	1c		.
	inc e			;7e0c	1c		.
	add hl,bc		;7e0d	09		.
	res 3,h			;7e0e	cb 9c		. .
	exx			;7e10	d9		.
	ex af,af'		;7e11	08		.
	dec a			;7e12	3d		=
	jp nz,l7dd1h		;7e13	c2 d1 7d	. . }
	ret			;7e16	c9		.
sub_7e17h:
	ld a,l			;7e17	7d		}
	sub 040h		;7e18	d6 40		. @
	ld l,a			;7e1a	6f		o
	ret			;7e1b	c9		.
	ld a,008h		;7e1c	3e 08		> .
	ld de,00018h		;7e1e	11 18 00	. . .
	call sub_7e55h		;7e21	cd 55 7e	. U ~
	ld de,00008h		;7e24	11 08 00	. . .
	ret			;7e27	c9		.
	ld e,018h		;7e28	1e 18		. .
	ld a,(0c0c1h)		;7e2a	3a c1 c0	: . .
	and 018h		;7e2d	e6 18		. .
	rrca			;7e2f	0f		.
	rrca			;7e30	0f		.
	rrca			;7e31	0f		.
	neg			;7e32	ed 44		. D
	ld d,a			;7e34	57		W
	dec d			;7e35	15		.
	ld a,00fh		;7e36	3e 0f		> .
	call sub_7e55h		;7e38	cd 55 7e	. U ~
	ld de,0000fh		;7e3b	11 0f 00	. . .
	ret			;7e3e	c9		.
	ld e,018h		;7e3f	1e 18		. .
	ld a,(0c0c1h)		;7e41	3a c1 c0	: . .
	and 018h		;7e44	e6 18		. .
	rrca			;7e46	0f		.
	rrca			;7e47	0f		.
	rrca			;7e48	0f		.
	sub 01ch		;7e49	d6 1c		. .
	ld d,a			;7e4b	57		W
	ld a,00fh		;7e4c	3e 0f		> .
	call sub_7e55h		;7e4e	cd 55 7e	. U ~
	ld de,0000fh		;7e51	11 0f 00	. . .
	ret			;7e54	c9		.
sub_7e55h:
	push af			;7e55	f5		.
	call 04e3ah		;7e56	cd 3a 4e	. : N
	push hl			;7e59	e5		.
	exx			;7e5a	d9		.
	pop hl			;7e5b	e1		.
	exx			;7e5c	d9		.
	ld a,(0c0c1h)		;7e5d	3a c1 c0	: . .
	and 018h		;7e60	e6 18		. .
	rrca			;7e62	0f		.
	ld hl,(0c0c8h)		;7e63	2a c8 c0	* . .
	ld e,a			;7e66	5f		_
	ld d,000h		;7e67	16 00		. .
	add hl,de		;7e69	19		.
	ld b,h			;7e6a	44		D
	ld c,l			;7e6b	4d		M
	ld de,(0c0cah)		;7e6c	ed 5b ca c0	. [ . .
	pop af			;7e70	f1		.
l7e71h:
	ex af,af'		;7e71	08		.
	ld a,01bh		;7e72	3e 1b		> .
	call 04c23h		;7e74	cd 23 4c	. # L
	ld a,(de)		;7e77	1a		.
	inc de			;7e78	13		.
	ld h,000h		;7e79	26 00		& .
	ld l,a			;7e7b	6f		o
	ld a,01ah		;7e7c	3e 1a		> .
	call 04c23h		;7e7e	cd 23 4c	. # L
	add hl,hl		;7e81	29		)
	add hl,hl		;7e82	29		)
	add hl,hl		;7e83	29		)
	add hl,hl		;7e84	29		)
	add hl,bc		;7e85	09		.
	push hl			;7e86	e5		.
	exx			;7e87	d9		.
	pop de			;7e88	d1		.
	ld a,(de)		;7e89	1a		.
	ld (hl),a		;7e8a	77		w
	inc de			;7e8b	13		.
	inc l			;7e8c	2c		,
	ld a,l			;7e8d	7d		}
	and 03fh		;7e8e	e6 3f		. ?
	call z,sub_7e17h	;7e90	cc 17 7e	. . ~
	ld a,(de)		;7e93	1a		.
	ld (hl),a		;7e94	77		w
	inc de			;7e95	13		.
	inc l			;7e96	2c		,
	ld a,l			;7e97	7d		}
	and 03fh		;7e98	e6 3f		. ?
	call z,sub_7e17h	;7e9a	cc 17 7e	. . ~
	ld a,(de)		;7e9d	1a		.
	ld (hl),a		;7e9e	77		w
	inc de			;7e9f	13		.
	inc l			;7ea0	2c		,
	ld a,l			;7ea1	7d		}
	and 03fh		;7ea2	e6 3f		. ?
	call z,sub_7e17h	;7ea4	cc 17 7e	. . ~
	ld a,(de)		;7ea7	1a		.
	ld (hl),a		;7ea8	77		w
	inc de			;7ea9	13		.
	inc l			;7eaa	2c		,
	ld a,l			;7eab	7d		}
	and 03fh		;7eac	e6 3f		. ?
	call z,sub_7e17h	;7eae	cc 17 7e	. . ~
	exx			;7eb1	d9		.
	ex af,af'		;7eb2	08		.
	dec a			;7eb3	3d		=
	jp nz,l7e71h		;7eb4	c2 71 7e	. q ~
	ret			;7eb7	c9		.
sub_7eb8h:
	ld a,l			;7eb8	7d		}
	sub 040h		;7eb9	d6 40		. @
	ld l,a			;7ebb	6f		o
	ret			;7ebc	c9		.
	ld e,001h		;7ebd	1e 01		. .
	call sub_7c71h		;7ebf	cd 71 7c	. q |
	ld a,008h		;7ec2	3e 08		> .
	ld de,00018h		;7ec4	11 18 00	. . .
	call sub_7efch		;7ec7	cd fc 7e	. . ~
	ld de,00008h		;7eca	11 08 00	. . .
	ret			;7ecd	c9		.
	call sub_7c71h		;7ece	cd 71 7c	. q |
	ld d,000h		;7ed1	16 00		. .
	ld e,0ffh		;7ed3	1e ff		. .
	ld a,008h		;7ed5	3e 08		> .
	call sub_7efch		;7ed7	cd fc 7e	. . ~
	ld de,00008h		;7eda	11 08 00	. . .
	ret			;7edd	c9		.
	call sub_7c71h		;7ede	cd 71 7c	. q |
	ld a,(0c0c1h)		;7ee1	3a c1 c0	: . .
	and 018h		;7ee4	e6 18		. .
	rrca			;7ee6	0f		.
	rrca			;7ee7	0f		.
	rrca			;7ee8	0f		.
	neg			;7ee9	ed 44		. D
	and 003h		;7eeb	e6 03		. .
	neg			;7eed	ed 44		. D
	ld d,a			;7eef	57		W
	ld e,0ffh		;7ef0	1e ff		. .
	ld a,00fh		;7ef2	3e 0f		> .
	call sub_7efch		;7ef4	cd fc 7e	. . ~
	ret nz			;7ef7	c0		.
	ld de,0000fh		;7ef8	11 0f 00	. . .
	ret			;7efb	c9		.
sub_7efch:
	push af			;7efc	f5		.
	call 04e3ah		;7efd	cd 3a 4e	. : N
	push hl			;7f00	e5		.
	exx			;7f01	d9		.
	pop hl			;7f02	e1		.
	exx			;7f03	d9		.
	ld a,(0c0c1h)		;7f04	3a c1 c0	: . .
	and 018h		;7f07	e6 18		. .
	sub 008h		;7f09	d6 08		. .
	rrca			;7f0b	0f		.
	and 00ch		;7f0c	e6 0c		. .
	ld hl,(0c0c8h)		;7f0e	2a c8 c0	* . .
	ld e,a			;7f11	5f		_
	ld d,000h		;7f12	16 00		. .
	add hl,de		;7f14	19		.
	ld b,h			;7f15	44		D
	ld c,l			;7f16	4d		M
	ld de,(0c0cah)		;7f17	ed 5b ca c0	. [ . .
	pop af			;7f1b	f1		.
l7f1ch:
	ex af,af'		;7f1c	08		.
	ld a,01bh		;7f1d	3e 1b		> .
	call 04c23h		;7f1f	cd 23 4c	. # L
	ld a,(de)		;7f22	1a		.
	inc de			;7f23	13		.
	ld h,000h		;7f24	26 00		& .
	ld l,a			;7f26	6f		o
	ld a,01ah		;7f27	3e 1a		> .
	call 04c23h		;7f29	cd 23 4c	. # L
	add hl,hl		;7f2c	29		)
	add hl,hl		;7f2d	29		)
	add hl,hl		;7f2e	29		)
	add hl,hl		;7f2f	29		)
	add hl,bc		;7f30	09		.
	push hl			;7f31	e5		.
	exx			;7f32	d9		.
	pop de			;7f33	d1		.
	ld a,(de)		;7f34	1a		.
	ld (hl),a		;7f35	77		w
	inc de			;7f36	13		.
	inc l			;7f37	2c		,
	ld a,l			;7f38	7d		}
	and 03fh		;7f39	e6 3f		. ?
	call z,sub_7eb8h	;7f3b	cc b8 7e	. . ~
	ld a,(de)		;7f3e	1a		.
	ld (hl),a		;7f3f	77		w
	inc de			;7f40	13		.
	inc l			;7f41	2c		,
	ld a,l			;7f42	7d		}
	and 03fh		;7f43	e6 3f		. ?
	call z,sub_7eb8h	;7f45	cc b8 7e	. . ~
	ld a,(de)		;7f48	1a		.
	ld (hl),a		;7f49	77		w
	inc de			;7f4a	13		.
	inc l			;7f4b	2c		,
	ld a,l			;7f4c	7d		}
	and 03fh		;7f4d	e6 3f		. ?
	call z,sub_7eb8h	;7f4f	cc b8 7e	. . ~
	ld a,(de)		;7f52	1a		.
	ld (hl),a		;7f53	77		w
	inc de			;7f54	13		.
	inc l			;7f55	2c		,
	ld a,l			;7f56	7d		}
	and 03fh		;7f57	e6 3f		. ?
	call z,sub_7eb8h	;7f59	cc b8 7e	. . ~
	exx			;7f5c	d9		.
	ex af,af'		;7f5d	08		.
	dec a			;7f5e	3d		=
	jp nz,l7f1ch		;7f5f	c2 1c 7f	. . .
	ret			;7f62	c9		.
	rst 38h			;7f63	ff		.
	rst 38h			;7f64	ff		.
	rst 38h			;7f65	ff		.
	rst 38h			;7f66	ff		.
	rst 38h			;7f67	ff		.
	rst 38h			;7f68	ff		.
	rst 38h			;7f69	ff		.
	rst 38h			;7f6a	ff		.
	rst 38h			;7f6b	ff		.
	rst 38h			;7f6c	ff		.
	rst 38h			;7f6d	ff		.
	rst 38h			;7f6e	ff		.
	rst 38h			;7f6f	ff		.
	rst 38h			;7f70	ff		.
	rst 38h			;7f71	ff		.
	rst 38h			;7f72	ff		.
	rst 38h			;7f73	ff		.
	rst 38h			;7f74	ff		.
	rst 38h			;7f75	ff		.
	rst 38h			;7f76	ff		.
	rst 38h			;7f77	ff		.
	rst 38h			;7f78	ff		.
	rst 38h			;7f79	ff		.
	rst 38h			;7f7a	ff		.
	rst 38h			;7f7b	ff		.
	rst 38h			;7f7c	ff		.
	rst 38h			;7f7d	ff		.
	rst 38h			;7f7e	ff		.
	rst 38h			;7f7f	ff		.
	rst 38h			;7f80	ff		.
	rst 38h			;7f81	ff		.
	rst 38h			;7f82	ff		.
	rst 38h			;7f83	ff		.
	rst 38h			;7f84	ff		.
	rst 38h			;7f85	ff		.
	rst 38h			;7f86	ff		.
	rst 38h			;7f87	ff		.
	rst 38h			;7f88	ff		.
	rst 38h			;7f89	ff		.
	rst 38h			;7f8a	ff		.
	rst 38h			;7f8b	ff		.
	rst 38h			;7f8c	ff		.
	rst 38h			;7f8d	ff		.
	rst 38h			;7f8e	ff		.
	rst 38h			;7f8f	ff		.
	rst 38h			;7f90	ff		.
	rst 38h			;7f91	ff		.
	rst 38h			;7f92	ff		.
	rst 38h			;7f93	ff		.
	rst 38h			;7f94	ff		.
	rst 38h			;7f95	ff		.
	rst 38h			;7f96	ff		.
	rst 38h			;7f97	ff		.
	rst 38h			;7f98	ff		.
	rst 38h			;7f99	ff		.
	rst 38h			;7f9a	ff		.
	rst 38h			;7f9b	ff		.
	rst 38h			;7f9c	ff		.
	rst 38h			;7f9d	ff		.
	rst 38h			;7f9e	ff		.
	rst 38h			;7f9f	ff		.
	rst 38h			;7fa0	ff		.
	rst 38h			;7fa1	ff		.
	rst 38h			;7fa2	ff		.
	rst 38h			;7fa3	ff		.
	rst 38h			;7fa4	ff		.
	rst 38h			;7fa5	ff		.
	rst 38h			;7fa6	ff		.
	rst 38h			;7fa7	ff		.
	rst 38h			;7fa8	ff		.
	rst 38h			;7fa9	ff		.
	rst 38h			;7faa	ff		.
	rst 38h			;7fab	ff		.
	rst 38h			;7fac	ff		.
	rst 38h			;7fad	ff		.
	rst 38h			;7fae	ff		.
	rst 38h			;7faf	ff		.
	rst 38h			;7fb0	ff		.
	rst 38h			;7fb1	ff		.
	rst 38h			;7fb2	ff		.
	rst 38h			;7fb3	ff		.
	rst 38h			;7fb4	ff		.
	rst 38h			;7fb5	ff		.
	rst 38h			;7fb6	ff		.
	rst 38h			;7fb7	ff		.
	rst 38h			;7fb8	ff		.
	rst 38h			;7fb9	ff		.
	rst 38h			;7fba	ff		.
	rst 38h			;7fbb	ff		.
	rst 38h			;7fbc	ff		.
	rst 38h			;7fbd	ff		.
	rst 38h			;7fbe	ff		.
	rst 38h			;7fbf	ff		.
	rst 38h			;7fc0	ff		.
	rst 38h			;7fc1	ff		.
	rst 38h			;7fc2	ff		.
	rst 38h			;7fc3	ff		.
	rst 38h			;7fc4	ff		.
	rst 38h			;7fc5	ff		.
	rst 38h			;7fc6	ff		.
	rst 38h			;7fc7	ff		.
	rst 38h			;7fc8	ff		.
	rst 38h			;7fc9	ff		.
	rst 38h			;7fca	ff		.
	rst 38h			;7fcb	ff		.
	rst 38h			;7fcc	ff		.
	rst 38h			;7fcd	ff		.
	rst 38h			;7fce	ff		.
	rst 38h			;7fcf	ff		.
	rst 38h			;7fd0	ff		.
	rst 38h			;7fd1	ff		.
	rst 38h			;7fd2	ff		.
	rst 38h			;7fd3	ff		.
	rst 38h			;7fd4	ff		.
	rst 38h			;7fd5	ff		.
	rst 38h			;7fd6	ff		.
	rst 38h			;7fd7	ff		.
	rst 38h			;7fd8	ff		.
	rst 38h			;7fd9	ff		.
	rst 38h			;7fda	ff		.
	rst 38h			;7fdb	ff		.
	rst 38h			;7fdc	ff		.
	rst 38h			;7fdd	ff		.
	rst 38h			;7fde	ff		.
	rst 38h			;7fdf	ff		.
	rst 38h			;7fe0	ff		.
	rst 38h			;7fe1	ff		.
	rst 38h			;7fe2	ff		.
	rst 38h			;7fe3	ff		.
	rst 38h			;7fe4	ff		.
	rst 38h			;7fe5	ff		.
	rst 38h			;7fe6	ff		.
	rst 38h			;7fe7	ff		.
	rst 38h			;7fe8	ff		.
	rst 38h			;7fe9	ff		.
	rst 38h			;7fea	ff		.
	rst 38h			;7feb	ff		.
	rst 38h			;7fec	ff		.
	rst 38h			;7fed	ff		.
	rst 38h			;7fee	ff		.
	rst 38h			;7fef	ff		.
	rst 38h			;7ff0	ff		.
	rst 38h			;7ff1	ff		.
	rst 38h			;7ff2	ff		.
	rst 38h			;7ff3	ff		.
	rst 38h			;7ff4	ff		.
	rst 38h			;7ff5	ff		.
	rst 38h			;7ff6	ff		.
	rst 38h			;7ff7	ff		.
	rst 38h			;7ff8	ff		.
	rst 38h			;7ff9	ff		.
	rst 38h			;7ffa	ff		.
	rst 38h			;7ffb	ff		.
	rst 38h			;7ffc	ff		.
	rst 38h			;7ffd	ff		.
	rst 38h			;7ffe	ff		.
	rst 38h			;7fff	ff		.

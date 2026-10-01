#!/usr/bin/env python3
from pathlib import Path
import sys, collections
rom=Path(sys.argv[1]).read_bytes()
pat=b'\xcd\x2a\x4c'
rows=[]
pos=0
while True:
    pos=rom.find(pat,pos)
    if pos<0: break
    if pos+8 <= len(rom):
        b6,b8,ba,lo,hi=rom[pos+3:pos+8]
        target=lo|(hi<<8)
        caller_bank=pos//0x2000
        caller_off=pos%0x2000
        rows.append((pos,caller_bank,caller_off,b6,b8,ba,target))
    pos+=1
print('far calls',len(rows))
for r in rows:
    pos,cb,co,b6,b8,ba,t=r
    print(f'rom={pos:05X} caller_bank={cb:02d}+{co:04X} map=[{b6:02X},{b8:02X},{ba:02X}] target={t:04X}')
print('\nTuples:')
for tup,n in collections.Counter((r[3],r[4],r[5]) for r in rows).most_common():
    print(f'{tup[0]:02X},{tup[1]:02X},{tup[2]:02X}: {n}')

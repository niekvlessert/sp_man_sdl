#!/usr/bin/env python3
from pathlib import Path
import sys, collections
rom=Path(sys.argv[1]).read_bytes()
b=rom[4*0x2000:5*0x2000]
base=0x64d1-0x6000
rows=[]
for typ in range(1,0x7d):
    o=base+(typ-1)*4
    cont=b[o]|(b[o+1]<<8)
    handler=b[o+2]|(b[o+3]<<8)
    rows.append((typ,cont,handler))
print('type\tcontinuation\thandler\tregion')
for typ,cont,h in rows:
    region='fixed' if 0x4000<=h<0x6000 else ('bank05' if 0x8000<=h<0xa000 else ('bank06' if 0xa000<=h<0xc000 else ('bank04' if 0x6000<=h<0x8000 else 'other')))
    print(f'{typ:02X}\t{cont:04X}\t{h:04X}\t{region}')
print('\n# summary',file=sys.stderr)
for k,n in collections.Counter('fixed' if 0x4000<=h<0x6000 else 'bank05' if 0x8000<=h<0xa000 else 'bank06' if 0xa000<=h<0xc000 else 'bank04' if 0x6000<=h<0x8000 else 'other' for _,_,h in rows).most_common():
    print(k,n,file=sys.stderr)

#!/usr/bin/env python3
from pathlib import Path
import sys, collections
rom=Path(sys.argv[1]).read_bytes()
assert len(rom)%0x2000==0
print(f'ROM {len(rom)//1024} KiB, {len(rom)//0x2000} banks x 8 KiB')
for b in range(len(rom)//0x2000):
    data=rom[b*0x2000:(b+1)*0x2000]
    # crude but useful static indicators for executable/data-heavy banks
    calls=sum(data.count(bytes((0xcd,lo,hi))) for hi in range(0x40,0xc0) for lo in (0,))
    mapper=[]
    for addr in (0x7000,0x9000,0xb000):
        p=bytes((0x32,addr&255,addr>>8)); n=data.count(p)
        if n: mapper.append(f'{addr:04X}:{n}')
    jp=sum(data.count(bytes((0xc3,lo,hi))) for hi in range(0x40,0xc0) for lo in (0,))
    ff=data.count(0xff); zero=data.count(0)
    print(f'{b:02d} off={b*0x2000:05X} zero={zero:4d} ff={ff:4d} mapper={",".join(mapper) or "-"}')

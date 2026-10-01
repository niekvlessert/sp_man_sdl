#!/usr/bin/env python3
from pathlib import Path
import sys
rom=Path(sys.argv[1]).read_bytes()
origins=(0x6000,0x8000,0xa000)
# unconditional/conditional CALL+JP opcodes with 16-bit target
absops={0xc3,0xcd,0xc2,0xca,0xd2,0xda,0xe2,0xea,0xf2,0xfa,0xc4,0xcc,0xd4,0xdc,0xe4,0xec,0xf4,0xfc}
for b in range(len(rom)//0x2000):
    if b==0:
        print('00 4000 fixed')
        continue
    d=rom[b*0x2000:(b+1)*0x2000]
    scores={o:0 for o in origins}; total=0
    examples={o:[] for o in origins}
    for i in range(len(d)-2):
        if d[i] not in absops: continue
        t=d[i+1]|(d[i+2]<<8); total+=1
        for o in origins:
            if o<=t<o+0x2000:
                scores[o]+=1
                if len(examples[o])<4: examples[o].append((i,t,d[i]))
    best=max(origins,key=lambda o:scores[o]); vals=sorted(scores.values(),reverse=True)
    confident=scores[best]>=3 and (len(vals)<2 or scores[best]>=vals[1]*2)
    print(f'{b:02d} {best:04X} score={scores[best]:3d} all='+','.join(f'{o:04X}:{scores[o]}' for o in origins)+(' *' if confident else ' ?'))

#!/usr/bin/env python3
from pathlib import Path
import sys
ROM=Path(sys.argv[1] if len(sys.argv)>1 else '/Volumes/EXT_SSD/AI/dma9938/RPMSX/additional_files/media/Space Manbow.rom')
rom=ROM.read_bytes(); B=0x2000
b2=rom[2*B:3*B]; b4=rom[4*B:5*B]
def le16(b,p): return b[p] | (b[p+1]<<8)
def meta(t):
    p=0x1100+(t-1)*2; q=le16(b2,p)
    if not (0x8000<=q<0xA000): return None
    o=q-0x8000; return q,bytes(b2[o:o+4])
def death(t):
    o=0x7E74-0x6000+t*3
    return bytes(b4[o:o+3]) if o+3<=len(b4) else b''
def hx(x): return ' '.join(f'{v:02X}' for v in x)
def cls(t,m):
    if t==0x24: return 'chassis-stamper'
    if t==0x51: return 'sequence-controller'
    if t==0x65: return 'stage-controller'
    if m is None: return 'unknown'
    f=m[1][2]
    return {0:'custom/controller',1:'sprite/custom',2:'tile-stamper',3:'sprite/custom'}[f&3]
def payload_desc(t,ctl,p):
    if ctl&0x80 and p:
        n=p[0]; seq=p[1:1+n]; tail=p[1+n:]
        return f'EXT count={n} inline=[{hx(seq)}] tail=[{hx(tail)}]'
    if t in (0x1F,0x20,0x22): return f'y=${p[0]:02X}' if p else ''
    if t==0x24 and len(p)>=2: return f'y=${p[0]:02X} arg=${p[1]:02X}'
    return f'payload=[{hx(p)}]'
ptr=le16(b2,0x13B8); p=ptr-0x8000; end=min(len(b2),p+0x600)
print(f'; stage0 spawn source bank02:${ptr:04X}, live copy $E900, origin trigger $107E')
print('; parser: trigger bit7 requires CA04!=0; type bit7 requires CA19>=4; control bit7 = extended inline record')
i=0
while p<end and b2[p]:
    addr=0x8000+p; hi,lo,rt,ctl=b2[p:p+4]; trig=((hi&0x7F)<<8)|lo; ln=ctl&0x7F
    if ln<4 or p+ln>end: break
    pay=bytes(b2[p+4:p+ln]); t=rt&0x7F
    if trig>=0x107E:
        wx=(trig-0x107E)*8; m=meta(t); d=death(t)
        cond=[]
        if hi&0x80: cond.append('CA04!=0')
        if rt&0x80: cond.append('CA19>=4')
        condtxt=','.join(cond) if cond else 'always'
        if m:
            mp,mb=m; flags=f'+13..16={hx(mb)} damage={int(bool(mb[1]&0x80))} hp={mb[3]}'
        else: flags='no-meta'
        repl=f' death=${d[0]:02X}' if d else ''
        print(f'{i:02d} @{addr:04X} x={wx:4d} trig=${trig:04X} type=${t:02X} {cls(t,m):18s} cond={condtxt:9s} len={ln:2d} {flags}{repl}')
        print(f'    {payload_desc(t,ctl,pay)}')
        i+=1
    p+=ln
print(f'; {i} active stage-0 records')

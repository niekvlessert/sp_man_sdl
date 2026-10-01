#!/usr/bin/env python3
from pathlib import Path
import sys
rom=Path(sys.argv[1]).read_bytes(); addr=int(sys.argv[2],16); out=Path(sys.argv[3])
pal_rgb=[(0,0,0),(0,0,0),(36,219,36),(109,255,109),(36,36,255),(73,109,255),(182,36,36),(73,219,255),(255,36,36),(255,109,109),(219,219,36),(219,219,146),(36,146,36),(219,73,182),(182,182,182),(255,255,255)]
b3=rom[3*0x2000:4*0x2000]; pos=addr-0xA000; ds=[]
for n in range(128):
 raw=b3[pos]; typ=raw&7
 if typ==0: break
 npb={1:1,2:2,3:4}.get(typ,0); cmap=[]
 for v in b3[pos+1:pos+1+npb]: cmap += [v>>4,v&15]
 q=pos+1+npb; f=list(b3[q:q+6]); sb=f[0]&31; h=(f[2]+0x20)&255
 while h>=0x80: h-=0x20; sb+=1
 sa=(h<<8)|f[1]
 phys=sb*0x2000+(sa-0x6000) if 0x6000<=sa<0x8000 else (sb+1)*0x2000+(sa-0x8000) if 0x8000<=sa<0xA000 else -1
 cnt=(f[5]-f[4]+1)&255; ds.append((n,typ,cmap,phys,cnt,0xA000+pos,f)); pos=q+6
scale=3; cols=32; tw=24; labelh=6
rows=[(d[4]+cols-1)//cols for d in ds]; W=cols*tw; H=sum(labelh+r*tw+4 for r in rows); buf=bytearray([12,12,16])*(W*H); y0=0
for d,rn in zip(ds,rows):
 n,typ,cmap,phys,cnt,da,f=d; bpt=8*typ if typ in (1,2,3) else 32
 for t in range(cnt):
  src=rom[phys+t*bpt:phys+(t+1)*bpt]; pix=[0]*64
  if typ in (1,2,3):
   for y in range(8):
    for x in range(8):
     idx=sum((((src[y*typ+p]>>(7-x))&1)<<p) for p in range(typ)); pix[y*8+x]=cmap[idx]
  elif typ==4:
   for y in range(8):
    for xb in range(4): v=src[y*4+xb]; pix[y*8+xb*2]=v>>4; pix[y*8+xb*2+1]=v&15
  tx=(t%cols)*tw; ty=y0+labelh+(t//cols)*tw
  for yy in range(8):
   for xx in range(8):
    c=pal_rgb[pix[yy*8+xx]&15]
    for sy in range(scale):
     for sx in range(scale):
      p=((ty+yy*scale+sy)*W+tx+xx*scale+sx)*3; buf[p:p+3]=bytes(c)
 y0+=labelh+rn*tw+4
out.write_bytes(f'P6\n{W} {H}\n255\n'.encode()+buf)
for d in ds: print(f'{d[0]:02d} @{d[5]:04X} type={d[1]} pal={d[2]} phys={d[3]:05X} tiles={d[4]} fields={bytes(d[6]).hex(" ")}')
print('END',hex(0xA000+pos),'descriptors',len(ds),'ppm',out)

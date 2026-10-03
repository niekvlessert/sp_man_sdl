#!/usr/bin/env python3
"""Export the original Space Manbow logo/title animation to a tiny RLE pack.

Captures the cartridge itself in bundled openMSX, starting after the machine BIOS
has handed control to the cartridge.  Reads SCREEN5 VRAM/registers/palettes directly on an emulated 60-Hz clock.
Host screenshots can remain stale while the emulator runs without throttling.
"""
from pathlib import Path
import os, struct, subprocess, tempfile

ROOT=Path(__file__).resolve().parents[1]
ROM=ROOT/'space_manbow.rom'
OUT=ROOT/'assets/title/title.anim'
OPENMSX=ROOT.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
OPENMSX_DATA=ROOT.parent/'third_party/openMSX/share'
W,H,FPS,FRAMES,READY=256,212,60,650,560

TCL=r'''set throttle off
set renderer none
namespace eval smtitle {
 variable n 0
 variable f [open $::env(SM_TITLE_CAPTURE) wb]
 fconfigure $f -translation binary
 proc snap {} {
  variable n; variable f
  puts -nonewline $f [debug read_block "physical VRAM" 0 0x20000]
  puts -nonewline $f [debug read_block "VDP palette" 0 32]
  for {set r 0} {$r<32} {incr r} {puts -nonewline $f [binary format c [vdpreg $r]]}
  incr n
  if {$n < 650} {after time 0.0166666667 {smtitle::snap}} else {close $f;exit}
 }
 # Cartridge SCREEN5 is already initialized here; the Konami draw has not
 # started. t=8 missed that animation entirely. No BIOS screen is included.
 after time 5.5 {after time 0.0166666667 {smtitle::snap}}
}
'''

def decode_screen5(snapshot):
    vram=snapshot[:0x20000]; pal=snapshot[0x20000:0x20020]; regs=snapshot[0x20020:]
    if (regs[0]&14)!=6: raise RuntimeError('title is not SCREEN5')
    colors=[bytes((((pal[i]>>4)&7)*255//7,(pal[i+1]&7)*255//7,
                   (pal[i]&7)*255//7)) for i in range(0,32,2)]
    border=colors[regs[7]&15]; pixels=bytearray(border*(W*H))
    if not regs[1]&64: return bytes(pixels)
    lines=212 if regs[9]&128 else 192
    top=(212-lines)//2+((regs[18]>>4)^7)-7
    base=(regs[2]&0x60)<<10
    for y in range(lines):
        dy=y+top
        if not 0<=dy<H: continue
        offset=base+((y+regs[23])&255)*128
        for x in range(W):
            packed=vram[offset+x//2]; color=packed>>4 if not x&1 else packed&15
            if color==0 and not regs[8]&32: color=regs[7]&15
            p=(dy*W+x)*3; pixels[p:p+3]=colors[color]
    return bytes(pixels)


def main():
    if not ROM.exists(): raise SystemExit(f'missing {ROM}')
    if not OPENMSX.exists(): raise SystemExit(f'missing {OPENMSX}')
    with tempfile.TemporaryDirectory(prefix='sm-title-export-') as td:
        td=Path(td); capture=td/'title.vdp'
        user=td/'home'; (user/'share').mkdir(parents=True)
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
        script=td/'capture.tcl'; script.write_text(TCL)
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
                 OPENMSX_SYSTEM_DATA=str(OPENMSX_DATA),SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',SM_TITLE_CAPTURE=str(capture))
        subprocess.run([str(OPENMSX),'-machine','Panasonic_FS-A1WSX','-cart',str(ROM),'-script',str(script)],
                       env=env,check=True,stdout=subprocess.DEVNULL)
        snapshots=capture.read_bytes(); stride=0x20040
        if len(snapshots)!=FRAMES*stride: raise RuntimeError('incomplete title capture')
        data=b''.join(decode_screen5(snapshots[f*stride:(f+1)*stride]) for f in range(FRAMES))
        frame_bytes=W*H*3
        palette=sorted({data[i:i+3] for i in range(0,len(data),3)})
        if len(palette)>255: raise RuntimeError(f'too many colours: {len(palette)}')
        pindex={c:i for i,c in enumerate(palette)}
        blob=bytearray(b'SMTA')
        blob += struct.pack('<7H',1,W,H,FPS,FRAMES,len(palette),READY)
        blob += b''.join(palette)
        for f in range(FRAMES):
            src=data[f*frame_bytes:(f+1)*frame_bytes]
            idx=bytearray(pindex[src[i:i+3]] for i in range(0,frame_bytes,3))
            runs=[]; start=0
            while start<len(idx):
                v=idx[start]; end=start+1
                while end<len(idx) and idx[end]==v and end-start<65535: end+=1
                runs.append((end-start,v)); start=end
            blob += struct.pack('<I',len(runs))
            for count,v in runs: blob += struct.pack('<HB',count,v)
        OUT.parent.mkdir(parents=True,exist_ok=True); OUT.write_bytes(blob)
        print(f'{OUT}: {len(blob)} bytes, {len(palette)} colours, {FRAMES} frames @ {FPS} Hz')

if __name__=='__main__': main()

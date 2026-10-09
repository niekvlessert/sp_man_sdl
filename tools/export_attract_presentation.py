#!/usr/bin/env python3
"""Unmodified cartridge story and all three attract demonstrations.

Use the bundled Python (numpy). No input, stage selection, invincibility,
damage injection, or ROM patches. Includes SCREEN4 and mode-2 sprites.
"""
from pathlib import Path
import hashlib, json, os, shutil, struct, subprocess, tempfile, zlib
import numpy as np
from PIL import Image
from export_ending_animation import ROOT, ROM, OPENMSX, STRIDE, W, H, FPS, palette_keys

TCL = r'''
set throttle off
set renderer none
set kind ""
set n 0
set f ""
set seen {}
set raster [open [file join $::env(SM_ATTRACT_DIR) raster.log] w]
set frames [open [file join $::env(SM_ATTRACT_DIR) frames.log] w]
set log [open $::env(SM_ATTRACT_LOG) w]
proc close_capture {} {
 global kind f log n
 if {$kind eq ""} {return}
 puts $log "END $kind [machine_info time] $n";flush $log;close $f
 set kind ""
}
proc begin {name} {
 global kind f n log shadow
 close_capture
 set kind $name;set n 0
 set shadow {}
 for {set r 0} {$r<32} {incr r} {dict set shadow $r [vdpreg $r]}
 set f [open [file join $::env(SM_ATTRACT_DIR) "$name.vdp"] wb];fconfigure $f -translation binary
 puts $log "START $name [machine_info time]";flush $log
 after time [expr {((240*1368-[machine_info VDP_cycle_in_frame]+262*1368)%(262*1368))/21477270.0}] [list snap $name]
}
proc snap {name} {
 global kind f n frames
 if {$kind ne $name} {return}
 puts -nonewline $f [debug read_block "physical VRAM" 0 0x20000]
 puts -nonewline $f [debug read_block "VDP palette" 0 32]
 for {set r 0} {$r<32} {incr r} {puts -nonewline $f [binary format c [vdpreg $r]]}
 puts $frames "$name $n [machine_info VDP_frame_count]"
 incr n;after time [expr {262*1368/21477270.0}] [list snap $name]
}
proc state {} {
 global kind seen log
 set main [peek 0xc900];set sub [peek 0xc901]
 if {$main==3 && $sub==0 && "story" ni $seen} {lappend seen story;begin story}
 if {$main==5 && $sub==0} {
  close_capture
  # $7863 increments C919 during initialization; current 0 means first demo1.
  set index [expr {([peek 0xc919]+1)%3}]
  set name "demo_$index"
  if {$name ni $seen} {lappend seen $name;begin $name}
 }
 if {$main==0 && [string match demo_* $kind]} {
  close_capture
  if {[llength $seen]==4} {close $log;exit}
 }
}
proc raster_write {} {
 global raster kind shadow
 set register [expr {$::wp_last_value&63}]
 if {$register>27} {return}
 set old [dict get $shadow $register]
 set value [vdpreg $register]
 dict set shadow $register $value
 set height [expr {[vdpreg 9]&128 ? 212 : 192}]
 set adj [expr {(([vdpreg 18]>>4)^7)-7}]
 set row [expr {[machine_info VDP_msx_y_pos]+(212-$height)/2+$adj+1}]
 puts $raster "$kind [machine_info VDP_frame_count] $row $register $old $value"
}
debug set_watchpoint write_io 0x99 {$kind ne "" && ($::wp_last_value&128) && ![debug read "VDP register latch status" 0]} {raster_write}
debug set_watchpoint write_mem {0xc900 0xc901} {[peek 0xf0f1]==1} {state}
debug set_bp 0x693f {[peek16 0x6000]==0x09c3 && $kind ne ""} {puts $log "SOUND $kind [machine_info time] [reg A]";flush $log}
after time 1000 {close_capture;close $log;exit}
'''

def decode(snapshot, lookup, start=0, stop=H):
    r = list(map(int,snapshot[-32:])); colors = lookup[palette_keys(snapshot)]
    vram = np.frombuffer(snapshot, dtype=np.uint8, count=0x20000)
    pixels = np.full((H,W), colors[r[7]&15], dtype=np.uint8)
    if not r[1]&64: return pixels.ravel()
    mode=r[0]&14
    if mode not in (4,6): raise RuntimeError(f'unsupported VDP mode {mode}')
    lines=212 if r[9]&128 else 192
    top=(212-lines)//2+((r[18]>>4)^7)-7
    left=((r[18]&15)^7)-7
    ys=np.arange(lines);dy=ys+top;valid=(dy>=start)&(dy<stop)
    sy=(ys[valid]+r[23])&255
    if mode==6:
        base=(r[2]&0x60)<<10
        sx=(np.arange(W)+8*(r[26]&31))&255
        multipage=bool(r[25]&1 and r[2]&32)
        pages=((np.arange(W)+8*r[26])//256)&1 if multipage else np.zeros(W,dtype=int)
        packed=vram[(base & ~0x8000 if multipage else base)+pages[None,:]*0x8000+sy[:,None]*128+sx[None,:]//2]
        ci=np.where(sx[None,:]&1,packed&15,packed>>4)
    else:
        ntmask=(r[2]<<10)|1023
        columns=np.arange(32)+r[26]
        ntidx=(sy[:,None]//8)*32+(columns&31)
        if r[25]&1:ntidx=ntidx|((columns[None,:]&32)<<10)
        names=vram[ntmask & (0x1fc00|ntidx)].astype(np.uint32)
        idx=(sy[:,None]//64)*2048+names*8+(sy[:,None]&7)
        pmask=(r[4]<<11)|2047;cmask=(r[10]<<14)|(r[3]<<6)|63
        pattern=vram[pmask & (0x1e000|idx)]
        color=vram[cmask & (0x1e000|idx)]
        bits=(pattern[:,:,None]>>(7-np.arange(8)))&1
        ci=np.where(bits,color[:,:,None]>>4,color[:,:,None]&15).reshape(len(sy),W)
    if not r[8]&32:ci[ci==0]=r[7]&15
    # V9958 fine scrolling shifts only the background, never the sprites.
    dx=np.arange(W)+left+(r[27]&7)
    vx=(dx>=max(0,left+(8 if r[25]&2 else 0)))&(dx<min(W,left+W))
    pixels[np.ix_(dy[valid],dx[vx])]=colors[ci[:,vx]]
    if not r[8]&2:
        size=16 if r[1]&2 else 8;mag=2 if r[1]&1 else 1
        amask=(r[11]<<15)|(r[5]<<7)|127
        pbase=(r[6]<<11)|2047
        attributes=[]
        for i in range(32):
            a=vram[amask & (0x1fc00 | (512+i*4+np.arange(4)))]
            if int(a[0])==216:break
            attributes.append((i,int(a[0]),int(a[1]),int(a[2])&(252 if size==16 else 255)))
        # Match the mode-2 per-line limit, priority and contiguous CC groups.
        for y in range(max(0,start-top),min(lines,stop-top)):
            if not 0<=y+top<H:continue
            sprites=[]
            for i,ay,ax,pattern in attributes:
                row=(y+r[23]-ay-1)&255
                if row>=size*mag:continue
                if len(sprites)==8:break
                row//=mag
                c=int(vram[amask & (0x1fc00|i*16+row)])
                x=ax+left-(32 if c&128 else 0)
                b=int(vram[pbase & (0x1f800|pattern*8+row)])
                bits=[bool(b&(128>>k)) for k in range(8)]
                if size==16:
                    b=int(vram[pbase & (0x1f800|pattern*8+row+16)])
                    bits += [bool(b&(128>>k)) for k in range(8)]
                mask=np.zeros(W,dtype=bool)
                for k,bit in enumerate(bits):
                    if bit:
                        for j in range(mag):
                            xx=x+k*mag+j
                            if 0<=xx<W:mask[xx]=True
                sprites.append((c,mask))
            first=next((i for i,(c,_) in enumerate(sprites) if not c&64),len(sprites))
            for i in range(len(sprites)-1,first-1,-1):
                c,mask=sprites[i];c &=15
                if not c and not r[8]&32:continue
                merged=np.full(W,c,dtype=np.uint8)
                for cc,other in sprites[i+1:]:
                    if not cc&64:break
                    merged[other] |=cc&15
                pixels[y+top,mask]=colors[merged[mask]]
    if r[25]&2:
        pixels[max(0,start):min(H,stop),max(0,left):max(0,min(W,left+8))]=colors[r[7]&15]
    return pixels.ravel()


def encode(path, output, raster=None, frame_ids=None):
    frames=path.stat().st_size//STRIDE
    snapshots=np.memmap(path,dtype=np.uint8,mode='r',shape=(frames,STRIDE))
    keys=sorted({int(k) for s in snapshots for k in palette_keys(s)})
    if len(keys)>256:raise RuntimeError(f'{len(keys)} palette colors')
    palette=bytes(v*255//7 for k in keys for v in (k//64,(k//8)&7,k&7))
    lookup=np.zeros(512,dtype=np.uint8)
    for i,k in enumerate(keys):lookup[k]=i
    blob=bytearray(b'SMTA'+struct.pack('<7H',2,W,H,FPS,frames,len(keys),frames-1)+palette)
    previous=None;changes=0;samples={}
    rgb_palette=np.frombuffer(palette,dtype=np.uint8).reshape(-1,3)
    raw_path=Path('/tmp/sm-attract-capture/story.rgb') if path.stem=='story' else None
    raw=raw_path.open('wb') if raw_path else None
    for f,s in enumerate(snapshots):
        if raster is not None:
            end_regs=list(map(int,s[-32:]));changes_for_frame=raster.get(frame_ids[f],[])
            regs=end_regs.copy()
            for row,register,old,value in reversed(changes_for_frame): regs[register]=old
            idx=np.zeros(W*H,dtype=np.uint8);begin=0
            for row,register,old,value in changes_for_frame:
                row=max(0,min(H,row))
                if row>begin:
                    segment=np.concatenate((s[:-32],np.array(regs,dtype=np.uint8)))
                    idx.reshape(H,W)[begin:row]=decode(segment,lookup,begin,row).reshape(H,W)[begin:row]
                    begin=row
                regs[register]=value
            if begin<H:
                segment=np.concatenate((s[:-32],np.array(regs,dtype=np.uint8)))
                idx.reshape(H,W)[begin:]=decode(segment,lookup,begin,H).reshape(H,W)[begin:]
        else: idx=decode(s,lookup)
        if raw:raw.write(rgb_palette[idx].tobytes())
        if previous is not None and np.array_equal(previous,idx):blob += struct.pack('<I',0)
        else:
            starts=np.r_[0,np.flatnonzero(idx[1:]!=idx[:-1])+1]
            runs=np.empty(len(starts),dtype=[('count','<u2'),('color','u1')])
            runs['count']=np.diff(np.r_[starts,idx.size]);runs['color']=idx[starts]
            blob += struct.pack('<I',len(runs))+runs.tobytes();changes+=1
        if f in (60,600,1800,frames-1):
            rgb=np.frombuffer(palette,dtype=np.uint8).reshape(-1,3)[idx].tobytes()
            samples[str(f)]=hashlib.sha256(rgb).hexdigest()
            Path(f'/tmp/attract-{path.stem}-{f}.ppm').write_bytes(b'P6\n256 212\n255\n'+rgb)
        previous=idx.copy()
    if raw:
        raw.close()
        blob,samples,changes=smooth_story(raw_path,frames,palette)
    packed=b'SMTZ'+struct.pack('<I',len(blob))+zlib.compress(blob,9)
    output.write_bytes(packed)
    return dict(frames=frames,changes=changes,bytes=len(packed),decoded_bytes=len(blob),sha256=hashlib.sha256(packed).hexdigest(),rgb_frame_sha256=samples)


def smooth_story(raw_path,frames,palette):
    """Motion-compensated intermediate frames; original duration/audio/cuts retained.

    The ROM updates most story motion around 10-15 Hz. Uniform 15-Hz anchors
    give the motion estimator useful pairs instead of repeated 60-Hz frames.
    Scene detection prevents blending the planet and cockpit scene changes.
    """
    ffmpeg=shutil.which('ffmpeg')
    if not ffmpeg:raise RuntimeError('ffmpeg is required for story motion interpolation')
    rgb_path=raw_path.with_name('story-smooth.rgb')
    subprocess.run([ffmpeg,'-v','error','-y','-f','rawvideo','-pixel_format','rgb24',
        '-video_size',f'{W}x{H}','-framerate',str(FPS),'-i',str(raw_path),
        '-vf','fps=15,minterpolate=fps=60:mi_mode=mci:mc_mode=aobmc:me_mode=bidir:vsbmc=1:scd=fdiff:scd_threshold=8,tpad=stop_mode=clone:stop_duration=1',
        '-frames:v',str(frames),'-f','rawvideo','-pix_fmt','rgb24',str(rgb_path)],check=True)
    colors=len(palette)//3
    pal_image=Image.new('P',(1,1));pal_image.putpalette(palette+palette[:3]*(256-colors))
    blob=bytearray(b'SMTA'+struct.pack('<7H',2,W,H,FPS,frames,colors,frames-1)+palette)
    previous=None;changes=0;samples={}
    with rgb_path.open('rb') as stream:
        for f in range(frames):
            rgb=stream.read(W*H*3)
            if len(rgb)!=W*H*3:raise RuntimeError('truncated interpolated story')
            idx=np.asarray(Image.frombytes('RGB',(W,H),rgb).quantize(palette=pal_image,dither=Image.Dither.NONE)).ravel().copy()
            # Pillow may choose a duplicate padded palette entry for color 0.
            idx[idx>=colors]=0
            if previous is not None and np.array_equal(previous,idx):blob+=struct.pack('<I',0)
            else:
                starts=np.r_[0,np.flatnonzero(idx[1:]!=idx[:-1])+1]
                runs=np.empty(len(starts),dtype=[('count','<u2'),('color','u1')])
                runs['count']=np.diff(np.r_[starts,idx.size]);runs['color']=idx[starts]
                blob+=struct.pack('<I',len(runs))+runs.tobytes();changes+=1
            if f in (60,600,1800,frames-1):
                rgb=np.frombuffer(palette,dtype=np.uint8).reshape(-1,3)[idx].tobytes()
                samples[str(f)]=hashlib.sha256(rgb).hexdigest()
                Path(f'/tmp/attract-story-{f}.ppm').write_bytes(b'P6\n256 212\n255\n'+rgb)
            previous=idx
    return blob,samples,changes


def main():
    out=ROOT/'assets/attract';out.mkdir(parents=True,exist_ok=True)
    # Retain raw evidence outside the repo for inspecting individual frames.
    td=Path('/tmp/sm-attract-capture');td.mkdir(exist_ok=True)
    user=td/'home';(user/'share').mkdir(parents=True,exist_ok=True)
    p=user/'share/systemroms'
    if not p.exists():p.symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
    script=td/'capture.tcl';script.write_text(TCL);log=td/'events.log'
    env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),OPENMSX_SYSTEM_DATA=str(ROOT.parent/'third_party/openMSX/share'),SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',SM_ATTRACT_DIR=str(td),SM_ATTRACT_LOG=str(log))
    if not os.environ.get('SM_ATTRACT_ENCODE_ONLY'):
      with (td/'process.log').open('w') as output:
        subprocess.run([str(OPENMSX),'-machine','Panasonic_FS-A1WSX','-cart',str(ROM),'-script',str(script)],cwd=ROOT,env=env,check=True,stdout=output,stderr=output,timeout=600)
    events=log.read_text().splitlines();result={}
    frame_ids={};raster={}
    for line in (td/'frames.log').read_text().splitlines():
        name,n,frame=line.split();frame_ids.setdefault(name,[]).append(int(frame))
    for line in (td/'raster.log').open():
        name,frame,row,register,old,value=line.split()
        if int(register) in (0,1,2,3,4,5,6,7,8,9,10,11,18,23,25,26,27) and old!=value:
            raster.setdefault(name,{}).setdefault(int(frame),[]).append(tuple(map(int,(row,register,old,value))))
    for name in ('story','demo_1','demo_2','demo_0'):
        path=td/f'{name}.vdp'
        if not any(e.startswith(f'END {name} ') for e in events):raise RuntimeError(f'incomplete {name}')
        result[name]=encode(path,out/f'{name}.anim',raster.get(name,{}),frame_ids[name])
        start=float(next(e.split()[2] for e in events if e.startswith(f'START {name} ')))
        cues=[(0,0)]
        for e in events:
            fields=e.split()
            if fields[:2]==['SOUND',name]:
                frame=max(0,int(np.ceil((float(fields[2])-start)*FPS)))
                if frame<result[name]['frames']:cues.append((frame,int(fields[3])))
        (out/f'{name}.tsv').write_text(''.join(f'{f}\t{request}\n' for f,request in cues))
        print(name,result[name],flush=True)
    provenance=dict(rom_sha256=hashlib.sha256(ROM.read_bytes()).hexdigest(),interventions='Capture: natural boot, no input, invincibility, damage injections or ROM patches. Presentation: V9958 fine/coarse scroll and border mask; story motion-compensated 15-to-60-Hz interpolation.',fps=FPS,events=events,assets=result)
    (ROOT/'notes/attract_capture_2026-10-09.json').write_text(json.dumps(provenance,indent=2)+'\n')

if __name__=='__main__':main()

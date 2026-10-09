#!/usr/bin/env python3
"""Capture the complete cartridge ending between bank01:$6484 and $644E after $6440 ending entry.

Requires numpy (the bundled workspace Python includes it) and bundled openMSX.
The existing boss probe supplies logged damage only before the ending starts.
No inputs, RAM writes or ROM patches occur during the ending itself.
"""
from pathlib import Path
import hashlib, json, math, os, struct, subprocess, tempfile
import numpy as np

ROOT = Path(__file__).resolve().parents[1]
ROM = ROOT / 'space_manbow.rom'
OUT = ROOT / 'assets/ending/ending.anim'
OPENMSX = ROOT.parent / 'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
STRIDE, W, H, FPS = 0x20040, 256, 212, 60
TCL = r'''
set ::env(SM_BOSSES_STAGE) 8
source tools/trace_all_stage_bosses.tcl
set ending 0
set n 0
set started 0
set f [open $::env(SM_ENDING_CAPTURE) wb]
fconfigure $f -translation binary
set log [open $::env(SM_ENDING_EVENTS) w]
rename smbosses::poll smbosses::oldpoll
proc smbosses::poll {} {if {$::ending} {return};smbosses::oldpoll}
rename smbosses::done smbosses::olddone
proc smbosses::done {} {}
rename smbosses::damage smbosses::olddamage
proc smbosses::damage {routine} {if {!$::ending} {smbosses::olddamage $routine}}
proc snap {} {
 global n f
 puts -nonewline $f [debug read_block "physical VRAM" 0 0x20000]
 puts -nonewline $f [debug read_block "VDP palette" 0 32]
 for {set r 0} {$r<32} {incr r} {puts -nonewline $f [binary format c [vdpreg $r]]}
 incr n;after time 0.0166666667 {snap}
}
proc begin {} {
 global ending started log
 if {$ending} {return}
 set ending 1;set started [machine_info time]
 puts $log "ENTRY $started"
}
proc finish {} {
 global n f log
 puts $log "END [machine_info time] $n";close $log;close $f;exit
}
debug set_bp 0x6440 {[peek 0xf0f1]==1} {begin}
debug set_bp 0x6484 {[peek 0xf0f1]==1 && $ending && $n==0} {set started [machine_info time];puts $log "START $started";snap}
debug set_bp 0x644e {[peek 0xf0f1]==1 && $ending} {finish}
debug set_bp 0x693f {[peek16 0x6000]==0x09c3 && $ending} {puts $log "SOUND [expr {[machine_info time]-$started}] [reg A]";flush $log}
after time 400 {error "ending never finished";exit}
'''


def palette_keys(snapshot):
    p = np.frombuffer(snapshot, dtype=np.uint8, count=32, offset=0x20000).astype(np.uint16)
    return ((p[::2] >> 4) & 7) * 64 + (p[1::2] & 7) * 8 + (p[::2] & 7)


def decode(snapshot, lookup):
    r = snapshot[-32:]
    if r[0] & 14 != 6:
        raise RuntimeError('ending is not SCREEN5')
    colors = lookup[palette_keys(snapshot)]
    pixels = np.full((H, W), colors[r[7] & 15], dtype=np.uint8)
    if not r[1] & 64:
        return pixels.ravel()
    # The cartridge explicitly disables hardware sprites throughout the ending;
    # its miniature ships/bosses are drawn by its bitmap command interpreter.
    if not r[8] & 2:
        raise RuntimeError('hardware sprites require compositing')
    lines = 212 if r[9] & 128 else 192
    top = (212-lines)//2 + ((r[18] >> 4) ^ 7)-7
    base = (r[2] & 0x60) << 10
    vram = np.frombuffer(snapshot, dtype=np.uint8, count=0x20000)
    ys = np.arange(lines); dy = ys + top
    valid = (dy >= 0) & (dy < H)
    offsets = base + (((ys[valid]+r[23]) & 255)[:, None]*128) + np.arange(128)
    packed = vram[offsets]
    indices = np.empty((len(packed), W), dtype=np.uint8)
    indices[:, ::2] = packed >> 4; indices[:, 1::2] = packed & 15
    if not r[8] & 32:
        indices[indices == 0] = r[7] & 15
    pixels[dy[valid]] = colors[indices]
    return pixels.ravel()


def main():
    with tempfile.TemporaryDirectory(prefix='sm-ending-export-') as directory:
        td = Path(directory); user = td/'home'; (user/'share').mkdir(parents=True)
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms', target_is_directory=True)
        capture, events = td/'ending.vdp', td/'events.log'
        script = td/'capture.tcl'; script.write_text(TCL)
        env = dict(os.environ, OPENMSX_HOME=str(user), OPENMSX_USER_DATA=str(user/'share'),
                   OPENMSX_SYSTEM_DATA=str(ROOT.parent/'third_party/openMSX/share'),
                   SDL_VIDEODRIVER='dummy', SDL_AUDIODRIVER='dummy',
                   SM_BOSSES_CAPTURE=str(td/'boss'), SM_ENDING_CAPTURE=str(capture), SM_ENDING_EVENTS=str(events))
        subprocess.run([str(OPENMSX), '-machine', 'Panasonic_FS-A1WSX', '-cart', str(ROM), '-script', str(script)],
                       cwd=ROOT, env=env, check=True, stdout=subprocess.DEVNULL, timeout=240)
        event_lines = events.read_text().splitlines()
        if not event_lines[-1].startswith('END '): raise RuntimeError('incomplete ending')
        frames = int(event_lines[-1].split()[2])
        if capture.stat().st_size != frames*STRIDE: raise RuntimeError('truncated capture')
        snapshots = np.memmap(capture, dtype=np.uint8, mode='r', shape=(frames, STRIDE))
        keys = set()
        for s in snapshots: keys.update(map(int, palette_keys(s)))
        keys = sorted(keys)
        if len(keys)>256: raise RuntimeError('too many palette colors')
        palette = bytes(channel*255//7 for key in keys for channel in (key//64, (key//8)&7, key&7))
        lookup = np.zeros(512, dtype=np.uint8)
        for i,k in enumerate(keys): lookup[k]=i
        blob = bytearray(b'SMTA'+struct.pack('<7H', 2, W, H, FPS, frames, len(keys), frames-1)+palette)
        previous = None; changes = 0; samples = {}
        for f,s in enumerate(snapshots):
            idx = decode(s, lookup)
            if previous is not None and np.array_equal(idx,previous):
                blob += struct.pack('<I',0) # Version 2: repeat previous image.
            else:
                starts = np.r_[0, np.flatnonzero(idx[1:] != idx[:-1])+1]
                lengths = np.diff(np.r_[starts, idx.size])
                runs = np.empty(len(starts), dtype=[('count','<u2'),('color','u1')])
                runs['count'] = lengths; runs['color'] = idx[starts]
                blob += struct.pack('<I',len(runs))+runs.tobytes(); changes+=1
            if f in (180, 1800, 4800, 9000, 13200, frames-1):
                rgb=np.frombuffer(palette,dtype=np.uint8).reshape(-1,3)[idx].tobytes()
                samples[str(f)] = hashlib.sha256(rgb).hexdigest()
                # Kept in tmp for visual verification; provenance stores hashes.
                Path(f'/tmp/ending-frame-{f}.ppm').write_bytes(b'P6\n256 212\n255\n'+rgb)
            previous = idx.copy()
        OUT.parent.mkdir(parents=True, exist_ok=True); OUT.write_bytes(blob)
        cues = [(0,0)]
        for event in event_lines:
            if event.startswith('SOUND '):
                _, seconds, request = event.split()
                cues.append((max(0, math.ceil(float(seconds)*FPS)), int(request)))
        (OUT.parent/'music.tsv').write_text(''.join(f'{frame}\t{request}\n' for frame,request in cues))
        provenance = dict(rom_sha256=hashlib.sha256(ROM.read_bytes()).hexdigest(),
                          asset_sha256=hashlib.sha256(blob).hexdigest(), width=W,height=H,fps=FPS,
                          frames=frames, image_changes=changes, events=event_lines, rgb_frame_sha256=samples,
                          intervention='Final-stage selector, invincibility and logged lethal damage before $6440; all assistance stops at ending entry; no ROM patches.')
        (ROOT/'notes/ending_capture_2026-10-09.json').write_text(json.dumps(provenance,indent=2)+'\n')
        print(f'{OUT}: {len(blob)} bytes, {frames} frames, {changes} changes; events: {event_lines}')

if __name__ == '__main__': main()

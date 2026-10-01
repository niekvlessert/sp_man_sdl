#!/usr/bin/env python3
from pathlib import Path
import sys

ROM = Path(sys.argv[1] if len(sys.argv) > 1 else '/Volumes/EXT_SSD/AI/dma9938/RPMSX/additional_files/media/Space Manbow.rom')
rom = ROM.read_bytes()
bank9 = rom[9*0x2000:10*0x2000]
stream = rom[27*0x2000:28*0x2000]
preset_base = 0x78ff - 0x6000

def s16(lo, hi):
    v = lo | (hi << 8)
    return v - 0x10000 if v & 0x8000 else v

def preset(n):
    o = preset_base + n*12
    b = bank9[o:o+12]
    return dict(yvel=s16(b[0],b[1]), xvel=s16(b[2],b[3]),
                phase=b[4]|(b[5]<<8), mode=b[8], raw=b)

PAYLOAD = {0x10:2,0x11:2,0x12:0x24,0x13:2,0x17:1,0x19:1,0x1c:2,0x1f:1}
NAMES = {
    0x10:'BRANCH_IF_CE4C',
    0x11:'SET_RASTER_SCROLL',
    0x12:'ENTER_MODE2_SKIP36',
    0x13:'RUN_SUBSCRIPT',
    0x14:'RESET_SCROLL_AND_ARM',
    0x15:'COND_PRESET7',
    0x16:'FIGHT_GATE',
    0x17:'QUEUE_STAGE_JOB',
    0x18:'CLEAR_RING_AND_COMPOSITOR',
    0x19:'TRIGGER_EVENT',
    0x1A:'TOGGLE_STAGE_COUNTER',
    0x1B:'ALIGN_STAGE_PHASE',
    0x1C:'RUN_SUBSCRIPT_IF_COUNTER',
    0x1D:'WAIT_COUNTER_ZERO',
    0x1E:'STOP_SCROLL_AND_ARM',
    0x1F:'SET_COUNTDOWN',
}

def fmt_bytes(b): return ' '.join(f'{x:02X}' for x in b)
mode = 0
p = 0
run_start = 0xA000
run_mode = mode
run_records = []

def flush_run(end_addr):
    global run_records, run_start, run_mode
    if not run_records: return
    kind = 'COL6' if run_mode in (0,2) else 'ROW15' if run_mode in (1,4) else 'ROW8' if run_mode == 3 else f'MODE{run_mode}'
    print(f'{run_start:04X}-{end_addr-1:04X}  {kind:<5} mode={run_mode} records={len(run_records):3d}')
    for addr, data in run_records[:3]: print(f'  {addr:04X}: {fmt_bytes(data)}')
    if len(run_records) > 6: print('  ...')
    for addr, data in run_records[-3:] if len(run_records)>3 else []: print(f'  {addr:04X}: {fmt_bytes(data)}')
    run_records=[]

while p < len(stream):
    addr = 0xA000 + p
    b = stream[p]
    if b == 0xFE:
        flush_run(addr); print(f'{addr:04X}       FE skip'); p += 1; run_start=0xA000+p; run_mode=mode; continue
    if b == 0xFF:
        flush_run(addr)
        if p+1 >= len(stream): break
        cmd = stream[p+1]; n = PAYLOAD.get(cmd,0); payload = stream[p+2:p+2+n]
        if cmd < 0x0C:
            pr = preset(cmd); mode = pr['mode']
            print(f'{addr:04X}       FF {cmd:02X} PRESET mode={mode} xvel={pr["xvel"]:+d} yvel={pr["yvel"]:+d} phase={pr["phase"]:04X}')
        else:
            extra = ''
            if cmd == 0x10 and len(payload) == 2:
                extra = f' target=${payload[0] | (payload[1]<<8):04X}'
            elif cmd == 0x11 and len(payload) == 2:
                extra = f' cfg={payload[0]} coarse=${payload[1]:02X}'
            elif cmd in (0x13, 0x1C) and len(payload) == 2:
                extra = f' ptr=${payload[0] | (payload[1]<<8):04X}'
            elif cmd == 0x17 and payload:
                extra = f' job=${payload[0]+0x19:02X} arg=6'
            elif cmd == 0x19 and payload:
                extra = f' event=${payload[0]:02X}'
            elif cmd == 0x1F and payload:
                extra = f' count={payload[0]}'
            print(f'{addr:04X}       FF {cmd:02X} {NAMES.get(cmd,"CMD")}{extra} payload[{n}]={fmt_bytes(payload)}')
            if cmd == 0x12: mode = 2
        p += 2+n; run_start=0xA000+p; run_mode=mode
        if cmd == 0x16: break
        continue
    n = 6 if mode in (0,2) else 15 if mode in (1,4) else 8 if mode == 3 else None
    if n is None:
        flush_run(addr); print(f'{addr:04X}       unsupported stream mode {mode}; stop'); break
    data = stream[p:p+n]
    if len(data) < n: break
    if not run_records: run_start=addr; run_mode=mode
    run_records.append((addr,data)); p += n
flush_run(0xA000+p)

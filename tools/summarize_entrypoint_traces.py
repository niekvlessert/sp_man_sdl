#!/usr/bin/env python3
"""Compare original stage entrypoint traces and preserve observed frame indices."""
import hashlib
import json
import re
from pathlib import Path


def fields(line):
    return {k:int(v,16) for k,v in re.findall(r'(\w+)=([0-9A-F]+)(?:\s|$)',line)}


def main():
    project=Path(__file__).resolve().parent.parent
    out=project/'tools/probe_out/entrypoint_validation';root=project/'assets'
    stages=json.loads((root/'tables/stage_entrypoints.json').read_text())
    graph=json.loads((root/'tables/background_graph.json').read_text())
    nodes={(n['address'],n['mode']) for n in graph['nodes']}
    rom=(project/'space_manbow.rom').read_bytes()
    observations={};reports=[]
    for expected in stages:
        stage=expected['stage_index'];directory=out/f'stage_{stage:02X}'
        log=(directory/'trace.log').read_text();lines=log.splitlines()
        init=[fields(x) for x in lines if x.startswith('INIT ')]
        actual=next((x for x in init if x['stage']==stage),None)
        checkpoint=expected['checkpoints'][0]
        init_matches=actual is not None and (actual['stream'],actual['trigger'],actual['metatile'])==(checkpoint['stream_address'],checkpoint['trigger'],expected['metatile_base'])
        capture=directory/f'spawn_copy_{stage:02X}.bin'
        offset=2*8192+expected['spawn_address']-0x8000
        spawn_matches=capture.exists() and capture.read_bytes()==rom[offset:offset+0x600]
        background=[]
        graphics=[]
        metatile_samples=[]
        for line in lines:
            if line.startswith('BACKGROUND '):
                f=fields(line);background.append(dict(address=f['address'],mode=f['mode'],in_static_graph=(f['address'],f['mode']) in nodes))
            if line.startswith('GRAPHICS '): graphics.append(fields(line)['root'])
            if line.startswith('METATILE '):
                f=fields(line)
                expected_bytes=bytearray()
                for address in range(f['address'],f['address']+16):
                    if not 0x8000<=address<0xc000: raise ValueError('metatile capture outside ROM window')
                    bank=f['bank8000'] if address<0xa000 else f['bankA000']
                    expected_bytes.append(rom[bank*8192+(address&0x1fff)])
                actual_bytes=f['bytes'].to_bytes(16,'big')
                metatile_samples.append(dict(address=f['address'],bank8000=f['bank8000'],bankA000=f['bankA000'],
                                             matches=actual_bytes==expected_bytes))
            if not line.startswith(('SPRITE ','TILE ')): continue
            kind=line.split()[0].lower();f=fields(line);key=(kind,f['type'],f['frame'])
            if not 1<=f['type']<=128: continue
            observations.setdefault(key,[]).append(dict(path=str((directory/'trace.log').relative_to(project)),stage=stage,
                                                      line=lines.index(line)+1,log_sha256=hashlib.sha256(log.encode()).hexdigest(),
                                                      list_address=f.get('list')))
        report=dict(stage=stage,initial_state_matches=init_matches,spawn_copy_1536_bytes_matches=spawn_matches,
                    stage_graphics_root_seen=expected['graphics_root'] in graphics,graphics_roots=graphics,
                    background_samples=background,metatile_samples=metatile_samples,trace_complete=lines[-1].startswith('DONE '))
        reports.append(report)
    frames=[dict(kind=k[0],type=k[1],frame=k[2],evidence=v) for k,v in sorted(observations.items())]
    evidence=dict(rom_sha256=hashlib.sha256(rom).hexdigest(),method='natural first-80-second stage traces with saved-stage selector and invincibility',
                  limitation='Observed indices prove minimum list extent only; unseen frames remain possible.',frames=frames)
    (project/'notes/animation_observed_frames.json').write_text(json.dumps(evidence,indent=2)+'\n')
    (out/'comparison.json').write_text(json.dumps(reports,indent=2)+'\n')
    print(f"initial selectors: {sum(r['initial_state_matches'] for r in reports)}/9; spawn copies: {sum(r['spawn_copy_1536_bytes_matches'] for r in reports)}/9")
    missing=[(r['stage'],b['address'],b['mode']) for r in reports for b in r['background_samples'] if not b['in_static_graph']]
    print(f'observed type/frame combinations: {len(frames)}; graph gaps: {missing}')
    metas=[s for r in reports for s in r['metatile_samples']]
    print(f'metatile source reads: {sum(s["matches"] for s in metas)}/{len(metas)} exact')
    if not metas or any(not s['matches'] for s in metas): raise SystemExit(1)
    if any(not (r['initial_state_matches'] and r['spawn_copy_1536_bytes_matches'] and r['stage_graphics_root_seen'] and r['trace_complete']) for r in reports):
        raise SystemExit(1)

if __name__=='__main__':main()

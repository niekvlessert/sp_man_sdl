#!/usr/bin/env python3
"""Check traced audio byte boundaries and destinations against extracted graph."""
from collections import Counter,defaultdict
import hashlib,json
from pathlib import Path


def main():
    project=Path(__file__).resolve().parent.parent
    directory=project/'tools/probe_out/audio_domains'
    provenance=json.loads((directory/'provenance.json').read_text())
    rom=(project/'space_manbow.rom').read_bytes()
    if provenance['rom_sha256']!=hashlib.sha256(rom).hexdigest():raise ValueError('audio trace ROM mismatch')
    graph=json.loads((project/'assets/tables/audio_sequence_graph.json').read_text())
    nodes=defaultdict(list)
    for n in graph['nodes']:nodes[n['bank'],n['address']].append(n)
    counts=Counter();failures=[];sources=[];requests=set();wave_selectors=set();mapped=defaultdict(set);audio_banks=Counter()
    for stage in range(9):
        path=directory/f'stage_{stage:02X}/trace.log';raw=path.read_bytes();lines=raw.decode().splitlines()
        if lines[-1]!='COMPLETE':raise ValueError('incomplete audio trace')
        sources.append(dict(stage=stage,path=str(path.relative_to(project)),sha256=hashlib.sha256(raw).hexdigest()))
        for line_no,line in enumerate(lines,1):
            fields=line.split();kind=fields[0]
            if kind=='REQUEST':requests.add(int(fields[1]));continue
            if kind=='WAVE':wave_selectors.add(int(fields[1]));continue
            if kind=='MAP':mapped[int(fields[2])&31].add(int(fields[1]));continue
            if kind not in ('READ','NOTE','COMMAND'):continue
            bank,pc,op=map(int,fields[1:4]);candidates=nodes[bank,pc]
            offset=bank*8192+(pc&8191)
            exact=bool(candidates) and rom[offset]==op
            if kind=='NOTE':exact=exact and any(pc+n['length']==int(fields[4])+1 for n in candidates if n['kind']=='note')
            if kind=='COMMAND':exact=exact and any(int(fields[4])+1 in n['edges'] for n in candidates)
            if kind=='READ':audio_banks[bank]+=1
            counts[kind+'_total']+=1;counts[kind+'_passed']+=exact
            if not exact:failures.append(dict(stage=stage,line=line_no,record=line))
    report=dict(**provenance,checks=dict(counts),failures=failures,sources=sources,
        observed_requests=sorted(requests),observed_wave_selectors=sorted(wave_selectors),
        audio_reads_per_bank=dict(audio_banks),mapper_callers={f'{b:02X}':sorted(pc) for b,pc in mapped.items()},
        method='Natural first80-second stage traces; opcode bytes, note end pointers and command successor pointers checked against rooted graph',
        limitations='Graph can retain multiple state-dependent lengths/edges at one address; this validates observed boundaries/destinations, not every register/state interpretation. Only first80 seconds, saved-stage selection/invincibility/fire interventions, no ROM patches.')
    (directory/'comparison.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(dict(counts),indent=2))
    if failures:raise RuntimeError(f'{len(failures)} audio boundary mismatches')
    (project/'notes/audio_domains_validation.json').write_text(json.dumps(report,indent=2)+'\n')

if __name__=='__main__':main()

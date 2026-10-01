#!/usr/bin/env python3
"""Check and retain provenance for the original-ROM stage0 death transition."""
import hashlib
import json
from pathlib import Path


def records(path):
    result=[]
    for line_number,line in enumerate(path.read_text().splitlines(),1):
        fields=line.split()
        result.append(dict(tag=fields[0],time=float(fields[1]),line=line_number,
            fields=dict(item.split('=',1) for item in fields[2:])))
    return result


def main():
    project=Path(__file__).resolve().parent.parent
    out=project/'tools/probe_out/boss_gate_validation'
    provenance=json.loads((out/'provenance.json').read_text())
    digest=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest()
    if provenance['rom_sha256']!=digest:raise ValueError('trace ROM provenance mismatch')
    control=records(out/'control/trace.log');assisted=records(out/'assisted/trace.log')
    stages=json.loads((project/'assets/tables/stage_entrypoints.json').read_text())
    checks=[]
    def check(name,passed):checks.append(dict(name=name,passed=bool(passed)))
    def tagged(tag):return [r for r in assisted if r['tag']==tag]
    def write(address,value,pc):
        return next(r for r in tagged('WRITE') if r['fields']['address']==address and
            r['fields']['value']==value and r['fields']['pc']==pc)
    check('control remains at stage0 A438 through230 without type64 death',
        control[-1]['tag']=='DONE' and control[-1]['fields']['stream']=='A438' and
        control[-1]['fields']['stage']=='00' and not any(r['tag'] in ('INJECT','DEATH') for r in control))
    injections=tagged('INJECT');deaths=tagged('DEATH')
    check('exactly one pending FF injection and one type64 death',len(injections)==len(deaths)==1)
    if len(injections)!=1 or len(deaths)!=1:raise ValueError('unexpected death/intervention count')
    milestones=[injections[0],write('CE52','01','6E53'),write('CE76','01','6E56'),deaths[0],
                write('CA0F','01','9B04'),write('CA10','01','6318'),write('CA1E','00','459F')]
    check('death and stage-transition milestones strictly ordered',
          all(a['time']<b['time'] for a,b in zip(milestones,milestones[1:])))
    check('type64 uses boss-damage continuation',deaths[0]['fields']['ret']=='6E4D')
    replacements=tagged('REPLACEMENT')
    cycle=[int(r['fields']['tile'],16) for r in replacements if r['fields']['state']=='00']
    check('type6A eight selector steps followed by state1',cycle==list(range(8)) and
          replacements[-1]['fields']['state']=='01' and replacements[-1]['fields']['tile']=='00')
    check('type6A timer descends2Fh..01h after immediate initialization decrement', [int(r['fields']['timer'],16) for r in replacements if r['fields']['state']=='01']==list(range(0x2f,0,-1)))
    check('same object slot becomes6A',all(r['fields']['base']==deaths[0]['fields']['base'] for r in replacements))
    initial=next(r for r in tagged('INIT') if r['fields']['stage']=='01')
    stage=stages[1];cp=stage['checkpoints'][0]
    check('stage1 checkpoint0 stream trigger and metatile base exact',
        int(initial['fields']['stream'],16)==cp['stream_address'] and
        int(initial['fields']['trigger'],16)==cp['trigger'] and
        int(initial['fields']['metatile'],16)==stage['metatile_base'])
    check('stage1 original graphics root selected',any(int(r['fields']['root'],16)==stage['graphics_root']
          and r['fields']['stage']=='01' for r in tagged('GRAPHICS')))
    source=2*8192+stage['spawn_address']-0x8000
    spawn=(out/'assisted/spawn_stage_01.bin').read_bytes()
    check('stage1 original1536-byte spawn copy exact',
          spawn==(project/'space_manbow.rom').read_bytes()[source:source+0x600])
    graph=json.loads((project/'assets/tables/background_graph.json').read_text())
    known={(n['address'],n['mode']) for n in graph['nodes']}
    check('all traced command address/mode pairs present in static graph',
        all((int(r['fields']['address'],16),int(r['fields']['mode'],16)) in known for r in tagged('BACKGROUND')))
    check('stage0 terminal stream was replaced rather than resumed',
          initial['time']>deaths[0]['time'] and initial['fields']['stream']!='A43A')
    report=dict(rom_sha256=digest,provenance=provenance,
        trace_hashes={name:hashlib.sha256((out/name/'trace.log').read_bytes()).hexdigest()
                      for name in ('control','assisted')},checks=checks,
        passed=sum(c['passed'] for c in checks),total=len(checks),
        milestones=[dict(tag=r['tag'],time=r['time'],fields=r['fields'],
                        evidence=f'tools/probe_out/boss_gate_validation/assisted/trace.log:{r["line"]}')
                    for r in milestones+[initial]],
        replacement_selector_cycle=cycle,
        transition=dict(from_stage=0,to_stage=1,terminal_stream=0xa438,
            next_stream=cp['stream_address'],death_replacement_type=0x6a,
            death_animation_selector_count=8,timer_initial=0x30,timer_stored_terminal=1,
            engine_completion_flag=0xca0f),
        limitations='One assisted stage0 encounter, not an unassisted kill or all bosses. C0D6 stays0; reaching A438 is not proof command16 executed. No post-A438 background fallthrough.')
    (out/'comparison.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Gate transition: {report['passed']}/{report['total']} checks PASS")
    if report['passed']!=report['total']:raise RuntimeError('gate checks failed')
    (project/'notes/boss_gate_observed_transition.json').write_text(json.dumps(report,indent=2)+'\n')

if __name__=='__main__':main()

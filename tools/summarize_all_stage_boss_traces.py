#!/usr/bin/env python3
"""Validate declared assisted stage transitions, retaining nonuniform death paths."""
import hashlib,json
from pathlib import Path
from summarize_boss_gate_traces import records


def main():
    project=Path(__file__).resolve().parent.parent
    out=project/'tools/probe_out/all_stage_boss_validation'
    provenance=json.loads((out/'provenance.json').read_text())
    digest=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest()
    if provenance['rom_sha256']!=digest:raise ValueError('ROM provenance mismatch')
    stages=json.loads((project/'assets/tables/stage_entrypoints.json').read_text())
    results=[];checks=[]
    for stage in range(9):
        path=out/f'stage_{stage:02X}/trace.log';trace=records(path)
        def check(name,passed):checks.append(dict(stage=stage,name=name,passed=bool(passed)))
        def selected(r,index):
            s=stages[index];cp=s['checkpoints'][0];f=r['fields']
            return int(f['stream'],16)==cp['stream_address'] and int(f['trigger'],16)==cp['trigger'] and int(f['metatile'],16)==s['metatile_base'] and f['checkpoint']=='00'
        initial=next(r for r in trace if r['tag']=='INIT' and int(r['fields']['stage'],16)==stage and r['time']>10)
        injections=[r for r in trace if r['tag']=='INJECT']
        complete=next(r for r in trace if r['tag']=='WRITE' and r['fields']['address']=='CA0F' and r['fields']['value']=='01' and r['time']>initial['time'])
        advance=next(r for r in trace if r['tag']=='WRITE' and r['fields']['address']=='CA10' and int(r['fields']['value'],16)==stage+1 and r['fields']['pc']=='6318')
        check('initial checkpoint0 selector exact',selected(initial,stage))
        check('explicit damage interventions precede completion',bool(injections) and all(initial['time']<r['time']<complete['time'] for r in injections))
        check('completion precedes original bounded stage increment',complete['time']<advance['time'])
        check('final stage index matches expected increment',int(trace[-1]['fields']['stage'],16)==stage+1)
        next_initial=None
        if stage<8:
            next_initial=next(r for r in trace if r['tag']=='INIT' and int(r['fields']['stage'],16)==stage+1 and r['time']>advance['time'])
            check('next stage checkpoint0 initialized exactly',selected(next_initial,stage+1))
        else:
            ending=next(r for r in trace if r['tag']=='WRITE' and r['fields']['address']=='CA00' and r['fields']['value']=='04' and r['time']>advance['time'])
            check('stage9 branches into ending state4 without checkpoint selector9',ending['time']>advance['time'] and not any(r['tag']=='INIT' and r['fields']['stage']=='09' for r in trace))
        def milestone(r):return dict(tag=r['tag'],time=r['time'],fields=r['fields'],evidence=f'{path.relative_to(project)}:{r["line"]}')
        results.append(dict(stage=stage,next_stage=stage+1,trace_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
            injection_count=len(injections),injected_types=sorted({int(r['fields']['type'],16) for r in injections}),
            completion_pc=int(complete['fields']['pc'],16),completion_banks=complete['fields']['banks'],
            milestones=[milestone(r) for r in (initial,complete,advance)]+([milestone(next_initial)] if next_initial else [milestone(ending)])))
    report=dict(rom_sha256=digest,provenance=provenance,stages=results,checks=checks,
        passed=sum(c['passed'] for c in checks),total=len(checks),
        limitations='All paths use declared pending-damage assistance, not unassisted play. Last run reaches ending state4 and samples8s after stage9 selection; complete ending/credits timing remains unverified. Synthetic checkpoint selector checks are separate.')
    (out/'comparison.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"All-stage transitions: {report['passed']}/{report['total']} checks PASS")
    if report['passed']!=report['total']:raise RuntimeError('stage transition mismatch')
    (project/'notes/all_stage_boss_observed_transitions.json').write_text(json.dumps(report,indent=2)+'\n')

if __name__=='__main__':main()

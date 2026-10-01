#!/usr/bin/env python3
"""Compare all54 original checkpoint-selector results to exported ROM data."""
import hashlib,json,os,subprocess,tempfile
from pathlib import Path


def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/checkpoint_validation';out.mkdir(parents=True,exist_ok=True)
    stages=json.loads((project/'assets/tables/stage_entrypoints.json').read_text())
    jobs=[(s['stage_index'],c) for s in stages for c in range(6)]
    (out/'plan.tcl').write_text('set ::smcheckpoints::plan {\n'+ '\n'.join('{%d %d}'%j for j in jobs)+'\n}\n')
    with tempfile.TemporaryDirectory(prefix='sm-checkpoints-') as temp:
        user=Path(temp);(user/'share').mkdir()
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),SDL_VIDEODRIVER='dummy',
            SDL_AUDIODRIVER='dummy',SM_CHECKPOINT_CAPTURE=str(out))
        run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
            '-script',str(project/'tools/validate_checkpoint_selectors.tcl')],cwd=project,env=env,capture_output=True,text=True,timeout=60)
        (out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode:raise RuntimeError('checkpoint execution failed')
    lines=(out/'execution.log').read_text().splitlines()
    if len(lines)!=55 or lines[-1]!='COMPLETE':raise RuntimeError('incomplete checkpoint execution')
    results=[]
    for (stage,checkpoint),line in zip(jobs,lines):
        fields=line.split();s=stages[stage];cp=s['checkpoints'][checkpoint]
        wanted=[cp['stream_address'],cp['trigger'],s['metatile_base'],checkpoint]
        actual=[int(f,16) for f in fields[2:]]
        if tuple(map(int,fields[:2]))!=(stage,checkpoint):raise RuntimeError('checkpoint identity mismatch')
        results.append(dict(stage=stage,checkpoint=checkpoint,expected=wanted,actual=actual,exact=actual==wanted))
    report=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
        openmsx_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
        method='Synthetic original bank09 $7803..$782C selector subsection; stage/checkpoint RAM fixtures; no ROM patches',
        limitations='Validates selector and C0E1 resume marker, not all natural death/respawn paths or spawn filtering.',
        passed=sum(r['exact'] for r in results),total=len(results),results=results)
    (out/'comparison.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Checkpoint selectors: {report['passed']}/{report['total']} exact")
    if report['passed']!=report['total']:raise RuntimeError('checkpoint mismatch')
    (project/'notes/checkpoint_selectors_validation.json').write_text(json.dumps(report,indent=2)+'\n')

if __name__=='__main__':main()

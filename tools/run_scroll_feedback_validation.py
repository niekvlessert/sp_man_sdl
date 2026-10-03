#!/usr/bin/env python3
"""Compare completed original stream writes and the original input cadence."""
import hashlib,json,os,subprocess,tempfile
from pathlib import Path

def main():
    project=Path(__file__).resolve().parent.parent
    root=project/'tools/probe_out/scroll_feedback';native=root/'native';original=root/'original'
    native.mkdir(parents=True,exist_ok=True);original.mkdir(parents=True,exist_ok=True)
    subprocess.run([str(project/'build/space-manbow-scroll-feedback-test'),str(project/'space_manbow.rom'),str(native)],check=True,cwd=project)
    with tempfile.TemporaryDirectory(prefix='sm-scroll-') as temp:
        user=Path(temp);(user/'share').mkdir();(user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms')
        env=dict(os.environ,OPENMSX_HOME=temp,OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),SDL_VIDEODRIVER='dummy',
            SDL_AUDIODRIVER='dummy',SM_SCROLL_OUT=str(original))
        run=subprocess.run([str(project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'),
            '-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
            '-script',str(project/'tools/probe_scroll_feedback.tcl')],cwd=project,env=env,capture_output=True,text=True,timeout=60)
        (root/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode:raise RuntimeError('Original probe failed')
    rows=[]
    for path in sorted(original.glob('stream_*')):
        expected=(path/'ram.bin').read_bytes()[0x2000:0x2800]
        got=(native/(path.name+'.bin')).read_bytes()
        assert len(expected)==len(got)==2048
        rows.append(dict(snapshot=path.name,bytes=2048,mismatches=sum(a!=b for a,b in zip(expected,got)),
            original_sha256=hashlib.sha256(expected).hexdigest(),native_sha256=hashlib.sha256(got).hexdigest()))
    times=list(map(float,(original/'movement_times.txt').read_text().split()))
    assert len(times)>=18
    intervals=[b-a for a,b in zip(times,times[1:])]
    report=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
        reference='Unmodified ROM on Panasonic_FS-A1WSX; invulnerability and tower-kill RAM fixture; bank09 $7AF1/$7B08 after completed stream writes',
        snapshots=rows,player_movement_calls=len(times),average_movement_interval_seconds=sum(intervals)/len(intervals),
        limitations='Ring geometry at 14 diagonal/upward/post-upward checkpoints and input cadence. No whole-level pixel/audio equivalence claim.')
    (project/'notes/scroll_ring_validation_2026-10-03.json').write_text(json.dumps(report,indent=2)+'\n')
    assert len(rows)==14 and all(r['mismatches']==0 for r in rows)
    assert .045<report['average_movement_interval_seconds']<.055
    print(f"Scroll ROM comparison: {len(rows)} complete 2048-byte rings exact; player cadence ~20 Hz")
if __name__=='__main__':main()

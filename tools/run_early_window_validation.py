#!/usr/bin/env python3
"""Compare early C++ viewport addressing with natural ROM 48-column D988."""
import hashlib,json,os,subprocess,tempfile
from pathlib import Path

def main():
    project=Path(__file__).resolve().parent.parent
    out=project/'tools/probe_out/early_window';out.mkdir(parents=True,exist_ok=True)
    for name in ('complete.txt','state.txt'):(out/name).unlink(missing_ok=True)
    cameras=(256,336,1024,1534,1536)
    plan=out/'native.txt';plan.write_text(''.join(f'window_{x} window 0 0 {x} 0\n' for x in cameras)+'ring_1536 ring 0 0 1536 0\n')
    native=subprocess.run([str(project/'build/space-manbow-player-test'),str(project/'space_manbow.rom'),str(plan)],capture_output=True,text=True,check=True)
    expected={ident:bytes(map(int,values.split(','))) for ident,values in (line.split() for line in native.stdout.splitlines())}
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    with tempfile.TemporaryDirectory(prefix='sm-early-') as temp:
        user=Path(temp);(user/'share').mkdir();(user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms')
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),SDL_VIDEODRIVER='dummy',
            SDL_AUDIODRIVER='dummy',SM_EARLY_CAPTURE=str(out))
        run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
            '-script',str(project/'tools/capture_stage0_early_window.tcl')],env=env,capture_output=True,text=True,timeout=60)
        (out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode or not (out/'complete.txt').exists():raise RuntimeError('early-window capture incomplete')
    results=[]
    for x in cameras:
        raw=(out/f'd988_{x}.bin').read_bytes()
        actual=b''.join(raw[y*48:y*48+32] for y in range(21))
        wanted=expected[f'window_{x}']
        results.append(dict(camera=x,bytes=len(actual),matching=sum(a==b for a,b in zip(actual,wanted)),exact=actual==wanted))
    actual=(out/'ring_1536.bin').read_bytes();wanted=expected['ring_1536']
    results.append(dict(camera=1536,fixture='complete ring at vehicle entrance',bytes=len(actual),matching=sum(a==b for a,b in zip(actual,wanted)),exact=actual==wanted))
    report=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
        openmsx_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),results=results,
        method='Natural stage0 bank09 $6EE7 entry, before stars; first 21 rows, 32 columns at stride48 compared with native C++ viewport; full 2048-byte E000 ring at A13F compared with native reset',
        limitations='Proves early tile addressing at five camera states. Does not prove ground cadence, complete raster presentation or the later vehicle behavior.')
    (project/'notes/early_window_validation.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Early viewport: {sum(r['matching'] for r in results)}/{sum(r['bytes'] for r in results)} bytes exact")
    if not all(r['exact'] for r in results):raise RuntimeError('early viewport mismatch')
if __name__=='__main__':main()

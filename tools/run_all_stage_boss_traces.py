#!/usr/bin/env python3
"""Trace all saved stages with declared damage assistance for boss candidates."""
import hashlib,json,os,subprocess,tempfile
from pathlib import Path


def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/all_stage_boss_validation';out.mkdir(parents=True,exist_ok=True)
    for stage in range(9):
        directory=out/f'stage_{stage:02X}';directory.mkdir(exist_ok=True)
        with tempfile.TemporaryDirectory(prefix='sm-bosses-') as temp:
            user=Path(temp);(user/'share').mkdir()
            (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
            env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
                OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),
                SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',SM_BOSSES_CAPTURE=str(directory),SM_BOSSES_STAGE=str(stage))
            run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
                '-script',str(project/'tools/trace_all_stage_bosses.tcl')],cwd=project,env=env,capture_output=True,text=True,timeout=60)
            (directory/'process.log').write_text(run.stdout+run.stderr)
            if run.returncode:raise RuntimeError(f'failed stage{stage}')
        lines=(directory/'trace.log').read_text().splitlines()
        if not lines or not lines[-1].startswith('DONE'):raise RuntimeError(f'incomplete stage{stage}')
        print(f'stage{stage}: {len(lines)} records; {lines[-1]}',flush=True)
    provenance=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
        openmsx_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),machine='Panasonic_FS-A1WSX',
        maximum_duration_seconds=500,interventions='F0FC stage selector before start; CA53/54 invincibility; no fire; candidate boss pending damage min(255,HP+1) at original damage entries after1s, at most once per0.2s; all injections logged; no ROM patches')
    (out/'provenance.json').write_text(json.dumps(provenance,indent=2)+'\n')

if __name__=='__main__':main()

#!/usr/bin/env python3
"""Compare sound routing and SCC waveform assets with original ROM calls."""
import hashlib,json,os,subprocess,tempfile
from pathlib import Path


def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/audio_asset_validation';out.mkdir(parents=True,exist_ok=True)
    rom=(project/'space_manbow.rom').read_bytes()
    sounds=json.loads((project/'assets/tables/audio_sounds.json').read_text())['sounds']
    waves=json.loads((project/'assets/tables/audio_waveforms.json').read_text())['waves']
    jobs=[]
    for sound in sounds:
        # Retained-bank behavior is explicitly exercised with all three contexts.
        for bank in (23,24,30):
            data=bytearray(512)
            for stream in sound['streams']:
                offset=stream['channel']*64
                data[offset:offset+5]=bytes((sound['id'],sound['priority'],stream['address']&255,stream['address']>>8,1))
            wanted_bank=sound['possible_A000_banks'][0] if sound['bank_rule']=='explicit selector' else bank
            jobs.append(dict(id=f"sound_{sound['id']:02X}_{bank:02X}",kind='sound',value=sound['id'],bank=bank,
                             expected=f'{wanted_bank} {data.hex()}'))
    for wave in waves:
        for kind in ('wave_lookup','wave_copy'):
            expected=str(wave['address']) if kind=='wave_lookup' else bytes(v&255 for v in wave['samples']).hex()
            jobs.append(dict(id=f"{kind}_{wave['selector']:02X}",kind=kind,
                value=wave['selector'] if kind=='wave_lookup' else wave['address'],bank=30,expected=expected))
    plan=['set ::smaudioval::plan {']
    plan.extend('{'+f"{j['id']} {j['kind']} {j['value']} {j['bank']}"+'}' for j in jobs)
    plan.append('}');(out/'plan.tcl').write_text('\n'.join(plan)+'\n')
    with tempfile.TemporaryDirectory(prefix='sm-audio-assets-') as temp:
        user=Path(temp);(user/'share').mkdir()
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
                 OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),SDL_VIDEODRIVER='dummy',
                 SDL_AUDIODRIVER='dummy',SM_AUDIO_CAPTURE=str(out))
        run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
                            '-script',str(project/'tools/validate_audio_assets.tcl')],cwd=project,env=env,capture_output=True,text=True,timeout=60)
        (out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode:raise RuntimeError('audio asset execution failed')
    lines=(out/'execution.log').read_text().splitlines()
    if len(lines)!=len(jobs)+1 or lines[-1]!='COMPLETE':raise RuntimeError('incomplete audio execution')
    results=[]
    for job,line in zip(jobs,lines):
        ident,actual=line.split(' ',1)
        if ident!=job['id']:raise RuntimeError('audio fixture identity mismatch')
        results.append(dict(**job,actual=actual,exact=actual==job['expected']))
    report=dict(rom_sha256=hashlib.sha256(rom).hexdigest(),openmsx_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
        method='Original $693F sound routing in three retained-bank contexts; $74B1 waveform lookup and $63FD full32-byte SCC copy; RAM fixtures, no ROM patches',
        passed=sum(r['exact'] for r in results),total=len(results),results=results,
        limitations='Empty channel pool; priority contention and controls80..85 not covered; waveform modulation and full audio output timing remain separate.')
    (out/'comparison.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Audio assets: {report['passed']}/{report['total']} exact")
    if report['passed']!=report['total']:raise RuntimeError('audio asset mismatch')
    (project/'notes/audio_assets_validation.json').write_text(json.dumps(report,indent=2)+'\n')

if __name__=='__main__':main()

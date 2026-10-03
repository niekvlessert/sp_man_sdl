#!/usr/bin/env python3
"""Render the user-supplied ROM's original PSG/SCC driver into SDL WAV assets."""
import hashlib,json,os,subprocess,tempfile,wave
from pathlib import Path

def main():
    project=Path(__file__).resolve().parent.parent
    out=project/'assets/audio';out.mkdir(parents=True,exist_ok=True)
    (out/'complete.txt').unlink(missing_ok=True)
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    with tempfile.TemporaryDirectory(prefix='sm-pcm-') as temp:
        user=Path(temp);(user/'share').mkdir()
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms')
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),
            SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',SM_PCM_OUT=str(out))
        result=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
            '-script',str(project/'tools/export_play_audio.tcl')],env=env,capture_output=True,text=True,timeout=60)
        (out/'export.log').write_text(result.stdout+result.stderr)
        if result.returncode or not (out/'complete.txt').exists():
            raise RuntimeError('PCM export incomplete: '+result.stdout+result.stderr)
    clips=[]
    for name in ('stage0','stage1','boss','shot','wave_shot','power_shot','explosion','hit','enemy_shot','pickup','powerup','option_mode','missile_launch','tower_explosion','turret_explosion','heavy_vehicle_explosion','large_cannon_explosion','boss_hit','platform_explosion','platform_burst','platform_rumble','cannon_shot','claw_close','claw_open','terrain_hit','terrain_break','bomb_expand','bomb_blast','carrier_launch','hatch_shot'):
        path=out/f'{name}.wav'
        with wave.open(str(path)) as w:
            frames=w.readframes(w.getnframes())
            if not any(frames) and name!='platform_explosion':raise RuntimeError(f'{name} is silent')
            clips.append(dict(name=name,rate=w.getframerate(),channels=w.getnchannels(),
                seconds=w.getnframes()/w.getframerate(),sha256=hashlib.sha256(path.read_bytes()).hexdigest()))
    (out/'manifest.json').write_text(json.dumps(dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
        method='Original bank1C 6000/6003/6006, isolated driver at 60 Hz; OpenMSX PSG/SCC PCM recording',clips=clips),indent=2)+'\n')
    print('Original-ROM PCM export PASS: '+', '.join(c['name'] for c in clips))
if __name__=='__main__':main()

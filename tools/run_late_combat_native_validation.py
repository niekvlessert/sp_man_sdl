#!/usr/bin/env python3
"""Execute original ROM routines against identical native late-combat fixtures."""
import hashlib,itertools,json,os,subprocess,tempfile
from pathlib import Path

def main():
    project=Path(__file__).resolve().parent.parent
    out=project/'tools/probe_out/late_combat_native';out.mkdir(parents=True,exist_ok=True)
    data=(project/'space_manbow.rom').read_bytes()
    b2=data[2*8192:3*8192]
    fields=[1,4,5,6,7,8,9,10,11,12,13,14,15,16,22,23,24]
    jobs=[];plan=['set ::latecombat::plan {'];native=[]
    def add(kind,raw,tick=0,phase=0,fine=0,ri=0,rv=0,px=0x500,py=0x800):
        ident=f'{kind}_{len(jobs)}'
        writes={0xca02:tick,0xca3b:phase,0xca1c:fine,0xc917:ri,0xc918:rv,
                0xca49:px&255,0xca4a:px>>8,0xca47:py&255,0xca48:py>>8}
        writes.update({0xce80+i:v for i,v in enumerate(raw)})
        pc=0xa57f if kind=='attack' else 0xa53d
        bank=5
        outputs=[0xce80+i for i in fields]
        if kind=='difficulty':
            pc=0x83e7;bank=2;outputs=[0xca19]
            writes.update({0xcb40:1,0xcb41:10 if raw[1] else 1,
                0xcb48:0x80 if raw[2] else 0,0xcb49:3,
                0xcb50:1 if raw[3] else 0,0xcb51:2,
                0xcb58:1 if raw[3]>1 else 0,0xcb59:2,0xcb08:raw[4]})
        elif kind=='ground_missile':
            pc=0x8ebb;bank=2;outputs=[0xce80+i for i in range(7,15)]
            writes[0xde01]=3
            for flag,x,y in ((1,11,10),(2,11,11),(4,13,10)):
                writes[0xd988+y*48+x]=1 if phase&flag else 0
        elif kind=='cannon':
            pc=0xbc64;bank=5;writes[0xca19]=phase
            outputs=[0xd460+i for i in (0,1,5,7,8,9,10,11,12,13,14,21,23)]
        elif kind=='blue':
            pc=0x7058;bank=2
            ptr=b2[0x1100+(raw[0]-1)*2]|b2[0x1101+(raw[0]-1)*2]<<8
            writes[0xce4a]=b2[ptr-0x8000+3]//4
        values=' '.join(str(v) for pair in writes.items() for v in pair)
        addresses=' '.join(str(p) for p in outputs)
        plan.append('{'+f'{ident} {pc} {bank} {{{values}}} {{{addresses}}}'+'}')
        native.append(' '.join(map(str,[ident,kind,tick,phase,fine,ri,rv,px,py,*raw])))
        jobs.append(dict(id=ident,kind=kind))
    def entity(state=0):
        r=[0]*64;r[0]=0x40;r[1]=state;r[8]=12;r[10]=22;return r
    def word(r,p,w):r[p]=w&255;r[p+1]=(w>>8)&255
    for closed in (0,1):
        r=entity();r[0x24]=closed;add('attack',r)
    for timer,vy in itertools.product((1,5,11),(0xffa0,0xff50)):
        r=entity(1);r[23]=timer;word(r,11,vy);word(r,15,0xfff8);add('attack',r)
    for sprite,ri,rv,px,py in itertools.product((0,1),(0,9),(0,77),(0x500,0x1700),(0x300,0x1000)):
        r=entity(2);r[5]=sprite;add('attack',r,ri=ri,rv=rv,px=px,py=py)
    for delay,anim,y in itertools.product((1,4),(1,6),(0x100,0xff80)):
        r=entity(3);r[24]=delay;r[23]=anim;word(r,11,0xffd0);word(r,15,0x12);word(r,7,y);add('attack',r)
    for phase,fine,x,offset in itertools.product(range(8),(0,128,240),(0x1600,0x16f0),(0,8)):
        r=[0]*64;r[0]=0x3d;r[1]=1;r[32]=offset;word(r,9,x);word(r,7,0x1200)
        add('underbody',r,phase=phase,fine=fine)
    for wave,missile,options,power in itertools.product((0,1),(0,1),range(3),(0,1,9,16)):
        r=[0]*64;r[1:5]=[wave,missile,options,power];add('difficulty',r)
    for typ in (0x10,0x12,0x15,0x18,0x20,0x1f,0x22,0x26,0x55,0x56,0x64,0x24,0x3d,0x40):
        r=[0]*64;r[0]=typ;r[22]=19;add('blue',r)
    for frame,difficulty,fraction in itertools.product(range(5), (1,5,9,15),(0,0x60)):
        r=[0]*64;r[0]=0x1f;r[1]=1;r[5]=frame;r[23]=r[24]=1;r[36]=2
        word(r,9,0x1800+fraction);word(r,7,0x800+fraction)
        add('cannon',r,phase=difficulty)
    for surface_mask in range(8):
        r=[0]*64;r[0]=7;word(r,9,0x0a00);word(r,7,0x0800)
        add('ground_missile',r,phase=surface_mask)
    plan.append('}');(out/'plan.tcl').write_text('\n'.join(plan)+'\n')
    (out/'native.txt').write_text('\n'.join(native)+'\n')
    run=subprocess.run([str(project/'build/space-manbow-late-combat-test'),str(project/'space_manbow.rom'),str(out/'native.txt')],capture_output=True,text=True,check=True)
    expected=dict(line.split() for line in run.stdout.splitlines())
    with tempfile.TemporaryDirectory(prefix='sm-late-combat-') as temp:
        user=Path(temp);(user/'share').mkdir();(user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms')
        env=dict(os.environ,OPENMSX_HOME=temp,OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),SDL_VIDEODRIVER='dummy',
            SDL_AUDIODRIVER='dummy',SM_LATE_COMBAT=str(out))
        run=subprocess.run([str(project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'),
            '-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),'-script',str(project/'tools/validate_late_combat.tcl')],
            cwd=project,env=env,capture_output=True,text=True,timeout=60)
        (out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode:raise RuntimeError('Original execution failed')
    lines=(out/'execution.log').read_text().splitlines()
    if len(lines)!=len(jobs)+1 or lines[-1]!='COMPLETE':raise RuntimeError('Incomplete fixtures')
    results=[]
    for job,line in zip(jobs,lines):
        ident,actual=line.split();assert ident==job['id']
        results.append(dict(**job,native=expected[ident],original=actual,exact=actual==expected[ident]))
    report=dict(rom_sha256=hashlib.sha256(data).hexdigest(),passed=sum(r['exact'] for r in results),total=len(results),
        limitations='Isolated handler/state comparison; excludes natural RNG call order, screen rendering, audio mixing and whole-level timing.',results=results)
    (project/'notes/late_combat_native_validation.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Late combat ROM fixtures: {report['passed']}/{report['total']} exact")
    for r in results:
        if not r['exact']:print(r['id'],r['native'],r['original'])
    if report['passed']!=report['total']:raise RuntimeError('Native mismatch')
if __name__=='__main__':main()

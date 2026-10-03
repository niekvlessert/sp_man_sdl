#!/usr/bin/env python3
"""Compare feedback fixes to unchanged ROM routines; requires local OpenMSX."""
import hashlib,itertools,json,os,subprocess,tempfile
from pathlib import Path

def main():
    project=Path(__file__).resolve().parent.parent
    out=project/'tools/probe_out/feedback_rom';out.mkdir(parents=True,exist_ok=True)
    data=(project/'space_manbow.rom').read_bytes();b2=data[16384:24576]
    jobs=[];plan=['set ::feedback::plan {'];native=[]
    def word(r,p,w):r[p]=w&255;r[p+1]=(w>>8)&255
    def add(kind,raw,mode=0,px=0x500,py=0x800,flag=0):
        ident=f'{kind}_{len(jobs)}';pc=0;bank=2;regs={}
        writes={0xcb11:1,0xca49:px&255,0xca4a:px>>8,0xca47:py&255,0xca48:py>>8,0xce4c:flag}
        writes.update({0xce80+i:v for i,v in enumerate(raw)})
        outputs=[]
        if kind=='option':
            pc=0x8324;dx=(0xff80,0,0x80)[mode]
            writes.update({0xcb1b:dx&255,0xcb1c:dx>>8})
            outputs=[0xce80+i for i in (7,8,9,10)]
        elif kind=='chain':
            pc=0x5b2b
            outputs=[0xce80+i for i in (0,1,6,7,8,23)]+[0xce4d]
        elif kind=='stamp47':
            pc=0x7b65;regs={'DE':0x5b67}
            writes.update({0xca1a:flag,0xca1c:mode})
            writes.update({0xd800+i:(i*17)&255 for i in range(0x600)})
            outputs=list(range(0xd800,0xde00))
        elif kind=='blue':
            pc=0xbb69;bank=5
            outputs=[0xce80+i for i in (1,11,12,13,14,23,32,33)]
        elif kind=='carrier' or kind=='hatch':
            pc=0x58ff if kind=='carrier' else 0xbd0f;bank=5
            writes[0xca19]=1
            outputs=[0xce80+i for i in (1,6,7,8,9,10,23,24,32)]
        elif kind=='tower':
            pc=0xbf14;outputs=[0xce80+i for i in (0,1,4,6,22,23,24)]+[0xce4c]
            writes[0xce4a]=11
        elif kind=='health':
            # Invoke the ordinary subtraction/carry service and its complete
            # replacement path. Boss $64 uses $7C63 rather than $7C44.
            pc=0xf200;damage_pc=0x7c63 if raw[0]==0x64 else 0x7c44
            code=[0xcd,damage_pc&255,damage_pc>>8,0xd0,0xcd,0xc3,0x7c,0xc9]
            writes.update({pc+i:v for i,v in enumerate(code)})
            outputs=[0xce80+i for i in (0,1,4,5,6,11,12,13,14,20,21,22,23)]
        elif kind=='bar':
            # Original colour-family selector. Native side samples the actual
            # filled SDL HUD cell, rather than reimplementing this comparison.
            pc=0x6bfd;bank=2;regs={'AF':mode<<8}
            writes.update({0x7000:1,0xf0f1:1})
        pairs=' '.join(str(v) for pair in writes.items() for v in pair)
        addresses=' '.join(str(p) for p in outputs)
        registers=' '.join(str(v) for pair in regs.items() for v in pair)
        plan.append('{'+f'{ident} {kind} {pc} {bank} {{{pairs}}} {{{addresses}}} {{{registers}}}'+'}')
        native.append(' '.join(map(str,[ident,kind,mode,px,py,flag,*raw])))
        jobs.append(dict(id=ident,kind=kind))
    for x in (25,26,27):
        r=[0]*64;r[0]=0x55;r[1]=1;r[8]=16;r[10]=x;r[32]=26;r[34]=16
        add('carrier',r)
    for timer in (1,2,6):
        r=[0]*64;r[0]=0x22;r[1]=2;r[6]=1;r[8]=16;r[10]=24;r[24]=timer
        add('hatch',r)
    for radius,side,mode,fraction in itertools.product(range(4),(0,1),range(3),(0,0x60)):
        r=[0]*64;r[0]=2;r[1]=3;r[3]=radius
        distance=int.from_bytes(b2[0x39c+radius*2:0x39e+radius*2],'little')
        word(r,23,-distance if side==0 else distance)
        add('option',r,mode,0x500+fraction,0x800+fraction)
    for flag,fraction in itertools.product((0,1),(0,0x40)):
        r=[0]*64;r[0]=0x47;word(r,7,0x1400+fraction);r[21]=4
        add('chain',r,flag=flag)
    for frame,timer in itertools.product(range(7),(1,2)):
        r=[0]*64;r[0]=0x47;r[1]=1;r[6]=frame;r[8]=13;r[21]=4;r[23]=timer
        add('chain',r,flag=1)
    for frame,position in itertools.product(range(7),(
            (0x1200,0x0c00,0,0),(0,0,0,0),(0xfb00,0x0800,0,0),
            (0x1f00,0x1700,0,0),(0x11e0,0x0be0,0x40,0x80))):
        x,y,fx,fy=position;r=[0]*64;r[0]=0x47;r[6]=frame
        word(r,7,y);word(r,9,x);add('stamp47',r,mode=fx,flag=fy)
    for typ,amount in itertools.product((0x10,0x11,0x12,0x15,0x18,0x1e,0x1f,0x20,0x22,0x26,0x55,0x64,0x68,0x70,0x40),(1,2,4,6)):
        ptr=int.from_bytes(b2[0x1100+(typ-1)*2:0x1102+(typ-1)*2],'little')
        meta=b2[ptr-0x8000:ptr-0x8000+4]
        for hp in sorted(set((meta[3],amount,amount-1,0))):
            r=[0]*64;r[0]=typ;r[1]=1;r[4]=amount;r[5]=r[6]=1
            r[0x13:0x17]=meta;r[20]|=128;r[22]=hp
            for p in range(11,15):r[p]=0x40+p
            add('health',r)
    for state,x,y,direction,count,timer in itertools.product((1,2,3),(26,28),(1,2,8,15),(0,1),(0,2),(1,2)):
        r=[0]*64;r[0]=0x1e;r[1]=state;r[8]=y;r[10]=x
        word(r,11,64 if direction else -64);word(r,13,-128)
        r[23]=timer;r[32]=direction;r[33]=count
        add('blue',r,py=0x800)
    for amount,frame in itertools.product((1,2,4,6),range(4)):
        for hp in (44,amount,amount-1,0):
            r=[0]*64;r[0]=0x56;r[1]=1;r[4]=amount;r[6]=frame;r[8]=10;r[10]=15
            r[0x13:0x17]=[12,140,20,hp];r[24]=3;r[32]=2;r[63]=1
            add('tower',r)
    for segment in range(16):add('bar',[0]*64,mode=segment)
    plan.append('}');(out/'plan.tcl').write_text('\n'.join(plan)+'\n')
    (out/'native.txt').write_text('\n'.join(native)+'\n')
    run=subprocess.run([str(project/'build/space-manbow-feedback-test'),str(project/'space_manbow.rom'),str(out/'native.txt')],capture_output=True,text=True,check=True)
    expected=dict(line.split() for line in run.stdout.splitlines())
    with tempfile.TemporaryDirectory(prefix='sm-feedback-') as temp:
        user=Path(temp);(user/'share').mkdir();(user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms')
        env=dict(os.environ,OPENMSX_HOME=temp,OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),SDL_VIDEODRIVER='dummy',
            SDL_AUDIODRIVER='dummy',SM_FEEDBACK=str(out))
        run=subprocess.run([str(project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'),
            '-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),'-script',str(project/'tools/validate_feedback.tcl')],
            cwd=project,env=env,capture_output=True,text=True,timeout=60)
        (out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode:raise RuntimeError('Original execution failed')
    lines=(out/'execution.log').read_text().splitlines()
    if len(lines)!=len(jobs)+1 or lines[-1]!='COMPLETE':raise RuntimeError('Incomplete fixtures: '+str(len(lines)))
    results=[]
    for job,line in zip(jobs,lines):
        ident,actual=line.split();assert ident==job['id']
        result=dict(**job,exact=actual==expected[ident])
        if job['kind']=='stamp47':
            wanted=bytes(map(int,expected[ident].split(',')));observed=bytes(map(int,actual.split(',')))
            result.update(native_sha256=hashlib.sha256(wanted).hexdigest(),original_sha256=hashlib.sha256(observed).hexdigest(),
                compared_bytes=len(wanted),mismatched_bytes=sum(a!=b for a,b in zip(wanted,observed)))
        else:result.update(native=expected[ident],original=actual)
        results.append(result)
    report=dict(rom_sha256=hashlib.sha256(data).hexdigest(),passed=sum(r['exact'] for r in results),total=len(results),
        limitations='Isolated option positioning, chain state/matrices, blue enemy state/shot triggers, ordinary and tower subtraction/death services and HUD colour choice. Excludes full audio channel arbitration, renderer equivalence and natural RNG scheduling.',results=results)
    (project/'notes/feedback_rom_validation_2026-10-03.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Feedback ROM fixtures: {report['passed']}/{report['total']} exact")
    for r in results:
        if not r['exact']:print(r['id'],r)
    if report['passed']!=report['total']:raise RuntimeError('Native mismatch')
if __name__=='__main__':main()

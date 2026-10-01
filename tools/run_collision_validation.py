#!/usr/bin/env python3
"""Validate collision byte geometry, damage assignment and relationship cleanup."""
import hashlib,json,os,subprocess,tempfile
from pathlib import Path
from collision_scan_model import fine_overlap, velocity_callback, word_bytes


def axis(source,target,source_extent,target_extent):
    return ((source-target+source_extent)&255)<((source_extent+target_extent)&255)


def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/collision_validation';out.mkdir(parents=True,exist_ok=True)
    shapes=json.loads((project/'assets/tables/collision_shapes.json').read_text())
    jobs=[]
    def add(category,pc,registers,writes,outputs,expected,banks=(7,8)):
        jobs.append(dict(id=f'{category}_{len(jobs):03d}',category=category,pc=pc,
            banks=banks,registers=registers,writes=writes,outputs=outputs,expected=expected))
    positions=[(0,0,0,0),(0x0100,0x0200,2,255),(0x11e0,0x0be0,248,8),
               (0xffff,0x8000,255,128),(0x001f,0x0020,0,0),(0x1000,0x2000,0,0)]
    for shape in shapes:
        selector=shape['selector']
        for x,y,dx,dy in positions:
            py=(((y<<3)>>8)+dy)&255;px=(((x<<3)>>8)+dx)&255
            writes={0xd700+i:v for i,v in enumerate((0x55,dy,dx,0x66,0x77,selector))}
            outputs=['BC','HL','carry'];wanted=[px<<8|py,0xd706,1]
            if selector:
                outputs=['BC','DE','HL','carry']
                wanted=[shape['y_extent']<<8|((py+shape['y_offset'])&255),
                        shape['x_extent']<<8|((px+shape['x_offset'])&255),0xd706,0]
            add('component',0x81e0,{'HL':y,'DE':x,'BC':0xd700},writes,outputs,wanted)
    for s_extent,t_extent in ((3,6),(1,1),(0,0),(200,100),(127,127)):
        for dy in (-10,-6,-5,-1,0,1,2,3,4,8,255):
            for dx in (0,4):
                sy,sx=20,255;ty,tx=(sy+dy)&255,(sx+dx)&255
                regs={'BC':t_extent<<8|ty,'DE':s_extent<<8|sy,
                      'BC2':t_extent<<8|tx,'DE2':s_extent<<8|sx}
                add('overlap',0x80d0,regs,{},['carry'],
                    [int(axis(sy,ty,s_extent,t_extent) and axis(sx,tx,s_extent,t_extent))])
    for typ in (0,1,2,3,4,5,6,7,8,9,10,11,100,132):
        writes={0xce80:typ,0xce86:7,0xce96:60,0xcec4:170,0xced6:3}
        expected=7 if typ==4 else (2 if 2<=typ<10 else 1)
        add('hit_assignment',0x813f,{'IX':0xce80,'IY':0xcec0},writes,
            [0xcec4,0xce96,0xced6],[expected,60,3])
    for pc in (0x7d3e,0x7d5e):
        for relation in (0,1,0x21,0x81):
            writes={0xce80+i*64+0x2d:i+1 for i in range(20)}
            writes.update({0xce80:0x77,0xce96:60,0xceb7:3,0xcebb:3,
                0xcec0:0x76,0xced6:3,0xcef4:relation,0xcef5:3,0xcef6:4,
                0xcf35:9,0xcf76:10,0xcfb4:2})
            active=relation in (1,0x81)
            wanted=[2 if active else 3,3,
                    137 if active else 9,138 if active else 10,
                    0x42 if relation==0x81 else 2,60,3,255 if active and pc==0x7d5e else 0]
            add('link_cleanup',pc,{'IX':0xcec0},writes,
                [0xceb7,0xcebb,0xcf35,0xcf76,0xcfb4,0xce96,0xced6,0xcf7b],wanted,banks=(5,6))
    # Neighbor lookup changes IY; the death caller uses the returned pointer.
    for previous,following,selected in ((0,0,0xce80),(3,0,0xcf00),(0,4,0xcf40),(3,4,0xcf40)):
        writes={0xce80+i*64+0x2d:i+1 for i in range(20)}
        writes.update({0xceb7:3,0xcebb:3,0xcef4:1,0xcef5:previous,0xcef6:following,
                       0xcf3b:3,0xcf7b:3})
        add('death_counter_pointer',0x7d5e,{'IX':0xcec0},writes,
            [0xceb7,0xcebb,0xcf3b,0xcf7b],
            [2,2 if selected==0xce80 else 3,2 if selected==0xcf00 else 3,
             2 if selected==0xcf40 else 3],banks=(5,6))
    for inhibit,marker in ((0,1),(1,1),(0,0)):
        writes={0xcead:1,0xce80:0x77,0xce96:60,0xceb7:1,0xcebb:1,
                0xcea4:inhibit,0xcebd:marker,0xceed:2,0xcec0:0x76,0xcef4:1}
        add('last_child',0x7d5e,{'IX':0xcec0},writes,[0xceb7,0xcebb,0xcefd,0xce96],
            [0,0,int(not inhibit and marker!=0),60],banks=(5,6))
    # A stale slot identity is rejected by parent validation, but the death
    # caller still falls through to decrement +3B. Preserve ROM behavior.
    for pc in (0x7d3e,0x7d5e):
        writes={0xcead:9,0xceb7:3,0xcebb:3,0xceed:2,0xcef4:1}
        add('stale_identity',pc,{'IX':0xcec0},writes,[0xceb7,0xcebb],
            [3,2 if pc==0x7d5e else 3],banks=(5,6))
    rom=(project/'space_manbow.rom').read_bytes()
    records=[tuple(int.from_bytes(rom[5*8192+0x20d+i*4+j:5*8192+0x20d+i*4+j+2],'little')
                   for j in (0,2)) for i in range(4)]
    animations=json.loads((project/'assets/tables/sprite_animations.json').read_text())
    definitions={d['address']:d for d in animations['definitions']}
    def frame(typ,index=0):
        pointer=next(l['frames'][index] for l in animations['lists'] if typ in l['types'])
        definition=definitions[pointer]
        if definition['header']!=len(definition['components']):
            raise ValueError('scan fixture requires an unflagged frame')
        return definition
    def object_bytes(base,typ,x,y,flags=0xb0):
        data={base+i:0 for i in range(32)}
        data.update({base:typ,base+0x13:4,base+0x14:0x84,base+0x15:flags})
        for offset,value in ((7,y),(9,x)):
            data.update({base+offset+i:v for i,v in enumerate(word_bytes(value))})
        return data
    # Bank-switching dispatcher: both custom callbacks plus type3/default returns.
    for target in (0x27,0x4d,3,10):
        for attacker,selector in ((4,0),(7,0),(5,0),(5,1),(5,2),(5,3),(6,3),(5,4),(1,0)):
            for status in (0,5,10,15):
                initial=(0x7ff0,0xfff0);incoming=(0xff81,0x0183)
                writes={0xce80:target,0xce83:status,0xcec0:attacker,0xced2:selector}
                for base,values in ((0xce80,initial),(0xcec0,incoming)):
                    for offset,value in zip((11,13),values):
                        writes.update({base+offset+i:v for i,v in enumerate(word_bytes(value))})
                expected=velocity_callback(target,attacker,selector,status,initial,incoming,records)
                outputs=[0xce8b,0xce8c,0xce8d,0xce8e,0xf0f2,0xf0f3]
                add('collision_callback',0x6459,{'IX':0xce80,'IY':0xcec0},writes,outputs,
                    word_bytes(expected[0])+word_bytes(expected[1])+[7,8])
    # Fine scan: original sprite lookup, component loops, mutual hit assignment,
    # callback dispatch and mapper restoration; no substituted sprite ROM data.
    for target in (10,11,0x27,0x4d):
        for attacker in (1,2,5,7):
            for dx,dy in ((0,0),(1,0),(0,1),(3,3),(-2,-2),(24,0),(0,24),(31,31)):
                x,y=0x1000,0x1000;tx,ty=(x+dx*256)&65535,(y+dy*256)&65535
                hit=fine_overlap((frame(attacker),x,y),(frame(target),tx,ty),shapes)
                writes=object_bytes(0xca40,attacker,x,y)
                writes.update(object_bytes(0xce80,target,tx,ty))
                writes.update({0xca44:170,0xce84:171,0xca56:50,0xce96:60})
                add('fine_scan',0x80e9,{'IY':0xca40,'IX':0xce80},writes,
                    [0xca44,0xce84,0xca56,0xce96,0xf0f2,0xf0f3,'carry'],
                    [1 if hit else 170,(2 if 2<=attacker<10 else 1) if hit else 171,50,60,7,8,int(hit)])
    # Full twenty-slot player scan, including slot19, eligibility and coarse gates.
    for slot in (0,19):
        for target,flags in ((10,0xb0),(10,0xa0),(10,0x30),(0x5f,0xb0),(0,0xb0),(128,0xb0)):
            for dx,dy in ((0,0),(3,0),(0,3),(24,0),(0,24)):
                x,y=0x1000,0x1000;tx,ty=(x+dx*256)&65535,(y+dy*256)&65535
                base=0xce80+slot*64
                eligible=1<=target<=127 and target!=0x5f and flags&0xb0==0xb0
                coarse=axis((y>>8)-1,ty>>8,4,4) and axis((x>>8)-1,tx>>8,4,4)
                hit=eligible and coarse and fine_overlap((frame(1),x,y),(frame(target),tx,ty),shapes)
                writes=object_bytes(0xca40,1,x,y)
                writes.update(object_bytes(base,target,tx,ty,flags));writes.update({0xca44:170,base+4:171})
                add('player_pool_scan',0x8039,{'IY':0xca40},writes,
                    [0xca44,base+4,0xf0f2,0xf0f3],[1 if hit else 170,1 if hit else 171,7,8])
    # Continue after a hit: later eligible slots overwrite the player's damage.
    for first,last,first_flags,last_flags in ((2,10,0xb0,0xb0),(10,2,0xb0,0xb0),
                                              (2,10,0xb0,0xa0),(10,2,0xa0,0xb0)):
        writes=object_bytes(0xca40,1,0x1000,0x1000)
        writes.update({0xca44:170})
        pending=170;target_values=[]
        for base,typ,flags in ((0xce80,first,first_flags),(0xd340,last,last_flags)):
            writes.update(object_bytes(base,typ,0x1000,0x1000,flags));writes[base+4]=171
            hit=flags&0xb0==0xb0 and fine_overlap((frame(1),0x1000,0x1000),
                                                (frame(typ),0x1000,0x1000),shapes)
            if hit:pending=2 if 2<=typ<10 else 1
            target_values.append(1 if hit else 171)
        add('player_scan_order',0x8039,{'IY':0xca40},writes,[0xca44,0xce84,0xd344],
            [pending]+target_values)
    def pairs(items):return '{'+' '.join(str(x) for pair in items for x in pair)+'}'
    plan=['set ::smcollision::plan {']
    for job in jobs:
        plan.append('{'+ ' '.join((job['id'],str(job['pc']),*(str(b) for b in job['banks']),
            pairs(job['registers'].items()),pairs(job['writes'].items()),
            '{'+' '.join(map(str,job['outputs']))+'}'))+'}')
    plan.append('}');(out/'plan.tcl').write_text('\n'.join(plan)+'\n')
    with tempfile.TemporaryDirectory(prefix='sm-collision-') as temp:
        user=Path(temp);(user/'share').mkdir()
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),SDL_VIDEODRIVER='dummy',
            SDL_AUDIODRIVER='dummy',SM_COLLISION_CAPTURE=str(out))
        run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
            '-script',str(project/'tools/validate_collision_routines.tcl')],cwd=project,env=env,capture_output=True,text=True,timeout=60)
        (out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode:raise RuntimeError('collision execution failed')
    lines=(out/'execution.log').read_text().splitlines()
    if len(lines)!=len(jobs)+1 or lines[-1]!='COMPLETE':raise RuntimeError('incomplete collision execution')
    results=[]
    for job,line in zip(jobs,lines):
        ident,values=line.split();actual=list(map(int,values.split(',')))
        if ident!=job['id']:raise RuntimeError('fixture identity mismatch')
        results.append(dict(**job,actual=actual,exact=actual==job['expected']))
    report=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
        openmsx_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
        method='Synthetic original collision helpers, full fine/player-pool scans, bank-switching callbacks and link cleanup; RAM fixtures; no ROM patches',
        passed=sum(r['exact'] for r in results),total=len(results),results=results,
        limitations='Reviewed unflagged frames and synthetic RAM states; natural combat paths, high-header frames, projectile background scan and broader custom handler forwarding remain separate.')
    (out/'comparison.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Collision routines: {report['passed']}/{report['total']} exact")
    if report['passed']!=report['total']:raise RuntimeError('collision mismatch; inspect comparison.json')
    (project/'notes/collision_routines_validation.json').write_text(json.dumps(report,indent=2)+'\n')

if __name__=='__main__':main()

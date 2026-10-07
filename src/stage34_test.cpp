#include "play_session.hpp"
#include "entity_runtime.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <iostream>
#include <map>

namespace {
std::uint32_t ring_hash(const sm::Stage0BackgroundStream& b) {
    std::uint32_t h=2166136261u;
    for(unsigned y=0;y<32u;++y) for(unsigned x=0;x<64u;++x)
        h=(h^b.ring_tile(x,y))*16777619u;
    return h;
}
struct Reference {
    unsigned source,trigger,x;
    int y;
    unsigned mode;
    std::uint32_t hash;
};
template<std::size_t N>
unsigned check_references(sm::Stage0BackgroundStream& b,
                          const std::array<Reference,N>& refs,
                          unsigned max_ticks) {
    unsigned checked=0;
    std::array<bool,N> seen{};
    for(unsigned tick=0;tick<max_ticks && !b.gated();++tick) {
        for(std::size_t i=0;i<N;++i) {
            const auto& r=refs[i];
            if(seen[i] || b.source_address()!=r.source ||
               b.trigger_cursor()!=r.trigger || b.world_x()!=r.x ||
               b.world_y()!=r.y || b.mode()!=r.mode) continue;
            assert(ring_hash(b)==r.hash);
            seen[i]=true;++checked;
        }
        b.step_15hz();
    }
    return checked;
}
}

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);

    // Stage 3: these four unmodified-ROM E000-E7FF captures precede the
    // dynamic type-$72 ring modifier. They prove the initial cave streamer,
    // preload phase and horizontal progression are byte-exact.
    constexpr std::array<Reference,4> stage3_refs{{
        {0xa9c0u,0x102fu,0x017au,0,0,0x86af7da6u},
        {0xa9d8u,0x1041u,0x020cu,0,0,0x3c8a4f2fu},
        {0xa9f6u,0x1055u,0x02acu,0,0,0xb1d50a98u},
        {0xaa1au,0x106du,0x036du,0,0,0xc7abe820u},
    }};
    sm::Stage0BackgroundStream stage3(rom);stage3.reset_stage(2);
    assert(stage3.scroll_row()==0x20u && stage3.presentation_state().r23==0x04u);
    {
        // Bank09 $6E44 dispatches a genuinely different Stage-3 star path:
        // $6E97 uses DE=-$20 and tiles $58..$5F, whereas Stage 1 uses
        // $6E8A with DE=+$20 and tiles $C6..$CD.
        sm::Stage0BackgroundStream s1stars(rom);s1stars.reset_stage(0u);
        const auto s1p=s1stars.star_x_phase();s1stars.step_15hz();
        assert(std::int16_t(s1stars.star_x_phase()-s1p)==-0x20);
        sm::Stage0BackgroundStream s3stars(rom);s3stars.reset_stage(2u);
        auto star_tiles=s3stars.compose_d988_base();
        assert(std::any_of(star_tiles.begin(),star_tiles.end(),
            [](auto t){return t>=0x58u && t<=0x5fu;}));
        const auto s3p=s3stars.star_x_phase();s3stars.step_15hz();
        assert(std::int16_t(s3stars.star_x_phase()-s3p)==-0x40);
        star_tiles=s3stars.compose_d988_base();
        assert(std::any_of(star_tiles.begin(),star_tiles.end(),
            [](auto t){return t>=0x58u && t<=0x5fu;}));
    }
    assert(check_references(stage3,stage3_refs,5000u)==stage3_refs.size());
    {
        sm::Stage0BackgroundStream stage3fade(rom);stage3fade.reset_stage(2u);
        unsigned guard=5000u;
        while(stage3fade.source_address()<0xab9au && guard--) stage3fade.step_15hz();
        assert(guard && stage3fade.source_address()==0xab9au);
        assert(stage3fade.palette_fade_active() && stage3fade.palette_fade_ticks()>0u);
        const auto x=stage3fade.world_x();
        // FF15 loads preset 7 while EF60 is active: the cave stops moving
        // and fades for 32 display frames instead of being cleared abruptly.
        stage3fade.step_15hz();
        assert(stage3fade.world_x()==x && stage3fade.x_velocity_fp()==0 && stage3fade.y_velocity_fp()==0);
        guard=32u;
        while(stage3fade.palette_fade_ticks() && guard--) stage3fade.step_15hz();
        assert(!stage3fade.palette_fade_ticks());
        while(!stage3fade.gated() && guard++<64u) stage3fade.step_15hz();
        assert(stage3fade.gated() && !stage3fade.stage3_stars_enabled());
    }
    assert(!stage3.stage3_stars_enabled());
    assert(stage3.source_address()==0xaba7u);
    assert(stage3.trigger_cursor()==0x2000u);
    assert(stage3.world_x()==2744u && stage3.world_y()==0);
    assert(stage3.x_velocity_fp()==0 && stage3.y_velocity_fp()==0);

    // Stage 4 includes the vertical mode-6 section. These captures span the
    // horizontal approach, three independent points in the upward streamer,
    // and the return to horizontal mode. All are from the unmodified ROM.
    constexpr std::array<Reference,9> stage4_refs{{
        {0xabfbu,0x1033u,0x0199u,   0,0,0x2d1c0992u},
        {0xac1fu,0x104bu,0x025eu,   0,0,0x95480dd3u},
        {0xac3du,0x1062u,0x0316u,   0,0,0x89ffd86bu},
        {0xac61u,0x1077u,0x03bfu,   0,0,0x1ad4ebc9u},
        {0xac82u,0x200bu,0x03f8u, -84,6,0xf49a97a4u},
        {0xacb2u,0x2023u,0x03f8u,-276,6,0xfda13f29u},
        {0xaceau,0x203cu,0x03f8u,-476,6,0x7e49b627u},
        {0xad1cu,0x300cu,0x045cu,-576,0,0xcbad01fdu},
        {0xad42u,0x3025u,0x0522u,-576,0,0x77226d8cu},
    }};
    sm::Stage0BackgroundStream stage4(rom);stage4.reset_stage(3);
    assert(check_references(stage4,stage4_refs,6000u)==stage4_refs.size());
    while(!stage4.gated()) stage4.step_15hz();
    assert(stage4.source_address()==0xae45u);
    assert(stage4.trigger_cursor()==0x5000u);
    assert(stage4.world_x()==2040u && stage4.world_y()==-960);
    assert(stage4.x_velocity_fp()==0 && stage4.y_velocity_fp()==0);

    // Keep the complete ROM spawn catalogs available even before every new
    // family/controller has a native handler. These counts are the baseline
    // for the next enemy-port passes.
    const auto s3=sm::StageSpawnStream::decode_stage(rom,2);
    const auto s4=sm::StageSpawnStream::decode_stage(rom,3);
    assert(s3.records().size()==72u && s4.records().size()==61u);
    std::map<unsigned,unsigned> c3,c4;
    for(const auto& r:s3.records()) ++c3[r.type];
    for(const auto& r:s4.records()) ++c4[r.type];
    assert(c3[0x1c]==9u && c3[0x25]==9u && c3[0x27]==11u &&
           c3[0x28]==3u && c3[0x32]==20u && c3[0x33]==1u &&
           c3[0x3e]==1u && c3[0x51]==16u && c3[0x5f]==1u && c3[0x72]==1u);
    assert(c4[0x14]==1u && c4[0x17]==7u && c4[0x19]==33u &&
           c4[0x2d]==1u && c4[0x37]==1u && c4[0x38]==7u &&
           c4[0x39]==10u && c4[0x5f]==1u);

    // Regular Stage-3 families. These checks lock the ROM-specific behavior
    // that was previously missing from the native port.
    const auto find3=[&](std::uint8_t type,std::uint16_t trigger=0u) {
        return std::find_if(s3.records().begin(),s3.records().end(),[&](const auto& r) {
            return r.type==type && (!trigger || r.trigger==trigger);
        });
    };
    {
        // $983D/$67CE: Stage-3 type-$13 wave records end on the child type and
        // therefore have no ninth parameter byte. This exact 8-byte record was
        // previously rejected, making the first half of Stage 3 much too empty.
        const auto rec=find3(0x51u,0x101fu);assert(rec!=s3.records().end());
        assert(rec->payload.size()==8u && rec->payload[7]==0x13u);
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,*rec,g,1u));
        auto controller=std::find_if(g.enemies.begin(),g.enemies.end(),
            [](const auto& e){return e.type()==0x51u;});
        assert(controller!=g.enemies.end() && controller->state()==2u &&
               controller->x_fixed()==0x1f00u && controller->y_fixed()==0x0800u);
        logic.step_15hz(rom,g,0u,0x101fu,false); // state constructor compensation: 3 -> 2
        logic.step_15hz(rom,g,1u,0x101fu,false); // encoded first-timer 2 -> 1
        assert(std::none_of(g.enemies.begin(),g.enemies.end(),
            [](const auto& e){return e.type()==0x13u;}));
        logic.step_15hz(rom,g,2u,0x101fu,false); // births first child
        auto child=std::find_if(g.enemies.begin(),g.enemies.end(),
            [](const auto& e){return e.type()==0x13u;});
        assert(child!=g.enemies.end());
        assert(child->x_fixed()==0x1f00u && child->y_fixed()==0x0800u);
        // The child is created before the normal enemy pass, so its $53C4
        // state-0 constructor executes in this same object tick.
        assert(child->state()==1u && child->raw[0x17]==0x0au &&
               child->raw[0x34]==1u && child->raw[0x38]==1u);
        auto sw=[](const sm::Entity64& q,unsigned p) {
            return std::int16_t(unsigned(q.raw[p])|(unsigned(q.raw[p+1])<<8u));
        };
        assert(sw(*child,13)==-0x80);

        // The controller itself consumes a real CE80 slot until its final
        // linked child is gone ($98C3/$6E98). A one-child copy makes that
        // lifetime deterministic without waiting through the full wave.
        auto one=*rec;one.payload[3]=1u;
        sm::GameState one_game;sm::Stage0Enemies one_logic;
        for(unsigned i=0;i<3u;++i) one_game.enemies[i].type()=0x32u;
        assert(one_logic.spawn(rom,one,one_game,1u));
        one_logic.step_15hz(rom,one_game,0u,0x101fu,false);
        one_logic.step_15hz(rom,one_game,1u,0x101fu,false);
        one_logic.step_15hz(rom,one_game,2u,0x101fu,false);
        auto one_controller=std::find_if(one_game.enemies.begin(),one_game.enemies.end(),
            [](const auto& e){return e.type()==0x51u;});
        auto one_child=std::find_if(one_game.enemies.begin(),one_game.enemies.end(),
            [](const auto& e){return e.type()==0x13u;});
        assert(one_controller!=one_game.enemies.end() && one_child!=one_game.enemies.end());
        assert(std::distance(one_game.enemies.begin(),one_controller)==3 &&
               one_controller->raw[0x34]==0x80u && one_child->raw[0x34]==4u);
        one_child->clear();
        one_logic.step_15hz(rom,one_game,3u,0x101fu,false);
        assert(std::none_of(one_game.enemies.begin(),one_game.enemies.end(),
            [](const auto& e){return e.type()==0x51u;}));
    }
    {
        // $821D: after its initial $60 wait the heavy emitter uses the $18
        // default interval, creates exactly four type-$45 homing children,
        // then reloads $18 before another burst can begin.
        const auto rec=find3(0x28u,0x1100u);assert(rec!=s3.records().end());
        sm::GameState g;g.difficulty=1u;sm::Stage0Enemies logic;
        assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));auto& e=g.enemies[0];
        logic.step_15hz(rom,g,0u,0u,false);assert(e.state()==1u && e.raw[0x17]==0x60u);
        e.raw[0x17]=1u;logic.step_15hz(rom,g,1u,0u,false);
        assert(e.state()==2u && e.raw[0x17]==0x18u);
        e.raw[0x17]=1u;logic.step_15hz(rom,g,2u,0u,false);assert(e.state()==3u);
        for(unsigned t=3u;t<7u;++t) logic.step_15hz(rom,g,t,0u,false);
        assert(e.state()==3u && e.raw[0x20]==4u);
        unsigned homing=0;for(const auto& q:g.enemies) homing+=q.type()==0x45u;
        assert(homing==4u);
        logic.step_15hz(rom,g,7u,0u,false);
        assert(e.state()==2u && e.raw[0x20]==0u && e.raw[0x17]==0x18u);
    }
    {
        // $8AD7/$8910/$9E7C: the lattice controller has eight route records.
        // Record 0 is intro-only; its first pulse makes four secondary $75
        // records through the two linked $35 endpoints, then route 1 follows.
        const auto rec=find3(0x72u,0x1070u);assert(rec!=s3.records().end());
        sm::GameState g;sm::Stage0Enemies logic;
        assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));auto& e=g.enemies[0];
        logic.step_15hz(rom,g,0u,0u,false);
        // State 0 falls through $8B46 into the route body, so route 0's
        // initial $02 counter is already $01 after this first handler call.
        assert(e.state()==2u && e.raw[0x24]==1u && e.raw[0x17]==0x01u);
        assert(e.raw[0x26]==0x0cu && e.raw[0x27]==0x08u &&
               e.raw[0x28]==0x12u && e.raw[0x29]==0x07u);
        unsigned endpoints=0;for(const auto& q:g.enemies) endpoints+=q.type()==0x35u;
        assert(endpoints==2u);
        // Both $8B79 (+18) and $8B59 (+17) are literal DEC paths. They must
        // actually reach zero; the shared $6AD2 helper deliberately does not.
        e.raw[0x18]=1u;e.raw[0x17]=0x10u;
        logic.step_15hz(rom,g,8u,0u,false);
        assert(e.state()==2u && e.raw[0x18]==0u && e.raw[0x23]==1u);
        assert(e.raw[13]==0x00u && e.raw[14]==0xfeu);
        e.raw[0x23]=0u;e.raw[0x18]=0x48u;e.raw[0x17]=1u;
        logic.step_15hz(rom,g,1u,0u,false);
        assert(e.state()==3u && e.raw[0x17]==0u);
        logic.step_15hz(rom,g,2u,0u,false);assert(e.state()==4u);
        logic.step_15hz(rom,g,3u,0u,false);assert(e.state()==5u && e.raw[0x22]==1u);
        unsigned lines=0;for(const auto& q:g.lasers) lines+=q.type()==0x75u;
        assert(lines==4u);
        // D460 follows CE80 in the ROM's object pass. These records have
        // therefore already had their first velocity integration and $9E7C
        // state-0 fall-through when the parent pulse finishes.
        for(const auto& q:g.lasers) if(q.type()==0x75u)
            assert(q.state()==1u && q.raw[0x17]==0x1fu);
        logic.step_15hz(rom,g,4u,0u,false);assert(e.state()==1u && e.raw[0x22]==0u);
        for(const auto& q:g.lasers) if(q.type()==0x75u)
            assert(q.state()==1u && q.raw[0x17]==0x1eu);
        auto line75=std::find_if(g.lasers.begin(),g.lasers.end(),
            [](auto& q){return q.type()==0x75u;});
        assert(line75!=g.lasers.end());
        line75->raw[0x17]=1u;
        const auto count75=line75->raw[0x0f];
        logic.step_15hz(rom,g,5u,0u,false);
        // State-1 expiry falls through $9EA4: two cells are painted in the
        // same call and the fresh $0A paint timer is already $09.
        assert(line75->state()==2u && line75->raw[0x17]==0x09u &&
               line75->raw[0x18]==count75 && line75->raw[0x0f]==count75-2u);
        // State 1 has the same $8B46 fall-through: route 1 loads
        // $3C and immediately consumes its first tick to $3B.
        assert(e.state()==2u && e.raw[0x24]==2u && e.raw[0x17]==0x3bu);
        // Odd line lengths are special in the ROM: the second $9F05 call
        // sees +0F==0 and returns Z, so $9EAE enters $9ECA immediately.
        // Thus the last CA/CB cell and the first two A7 cells happen in one
        // handler invocation, without decrementing +17.
        auto odd75=std::find_if(g.lasers.begin(),g.lasers.end(),
            [](auto& q){return q.type()==0x75u && q.raw[0x0f]==7u;});
        assert(odd75!=g.lasers.end());
        for(auto& q:g.lasers) if(&q!=&*odd75) q.clear();
        odd75->state()=2u;odd75->raw[0x30]=7u;odd75->raw[0x0f]=1u;
        odd75->raw[0x18]=7u;odd75->raw[0x17]=7u;
        odd75->raw[11]=odd75->raw[12]=odd75->raw[13]=odd75->raw[14]=0u;
        const auto odd_x=odd75->x_fixed(),odd_y=odd75->y_fixed();
        const int odd_sx=std::int8_t(odd75->raw[0x12]),odd_sy=std::int8_t(odd75->raw[0x10]);
        const auto odd_tile=odd75->raw[0x11];
        unsigned write_count=0;std::array<std::uint8_t,3> write_tiles{};
        sm::Stage0Enemies::TileWrite writer=[&](std::uint16_t,std::uint16_t,std::uint8_t tile) {
            assert(write_count<write_tiles.size());write_tiles[write_count++]=tile;
        };
        logic.step_15hz(rom,g,6u,0u,false,nullptr,{}, {},writer);
        assert(odd75->active() && odd75->state()==2u && odd75->raw[0x0f]==0u &&
               odd75->raw[0x18]==5u && odd75->raw[0x17]==7u);
        assert(odd75->x_fixed()==std::uint16_t(odd_x-odd_sx*0x100) &&
               odd75->y_fixed()==std::uint16_t(odd_y-odd_sy*0x100));
        assert(write_count==3u && write_tiles[0]==odd_tile &&
               write_tiles[1]==0xa7u && write_tiles[2]==0xa7u);
    }
    {
        // +15=$04 enrolls a painting/erasing D460 $75 record in the common
        // camera-scroll service; travelling +15=$21 records remain fixed.
        sm::GameState g;auto& q=g.lasers[0];q.clear();q.type()=0x75u;
        q.set_x_fixed(0x1200u);q.set_y_fixed(0x0800u);q.flags15()=0x04u;
        sm::step_stage0_object_scroll_15hz(g,0x0100,0,&rom);
        assert(q.x_fixed()==0x11e0u);
        q.flags15()=0x21u;
        sm::step_stage0_object_scroll_15hz(g,0x0100,0,&rom);
        assert(q.x_fixed()==0x11e0u);
    }
    {
        // $BDDB: velocity is the aimed vector /4 and acceleration is /8.
        const auto rec=find3(0x25u,0x10e0u);assert(rec!=s3.records().end());
        sm::GameState g;g.player.set_x_fixed(0x0800u);g.player.set_y_fixed(0x0800u);
        sm::Stage0Enemies logic;assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));
        auto& e=g.enemies[0];logic.step_15hz(rom,g,0u,0u,false);assert(e.state()==1u);
        logic.step_15hz(rom,g,1u,0u,false);assert(e.state()==2u && e.raw[0x17]==0x10u);
        auto sw=[](const sm::Entity64& q,unsigned p) {
            return std::int16_t(unsigned(q.raw[p])|(unsigned(q.raw[p+1])<<8u));
        };
        const auto vy=sw(e,11),vx=sw(e,13),ay=sw(e,15),ax=sw(e,17);
        auto ashift=[](int v){return v>=0?v/2:-int((unsigned(-v)+1u)/2u);};
        assert(ay==ashift(vy) && ax==ashift(vx));
    }

    {
        // Fixed $53C4: Stage-3 wave type $13 cruises left for ten object
        // ticks, then starts the exact +$60 X / +/-$40 Y return arc with
        // -$000F X acceleration and a $16-tick phase timer.
        sm::GameState g;g.player.set_x_fixed(0x0500u);g.player.set_y_fixed(0x1000u);
        auto& e=g.enemies[0];e.clear();e.type()=0x13u;e.set_x_fixed(0x1f00u);e.set_y_fixed(0x0800u);
        sm::initialize_stage0_flyer(rom,e,0u,0u,0u,g.player);
        sm::Stage0Enemies logic;assert(e.state()==0u);
        logic.step_15hz(rom,g,0u,0u,false);
        assert(e.state()==1u && e.raw[0x17]==0x0au);
        auto sw=[](const sm::Entity64& q,unsigned p) {
            return std::int16_t(unsigned(q.raw[p])|(unsigned(q.raw[p+1])<<8u));
        };
        assert(sw(e,11)==0 && sw(e,13)==-0x80);
        e.state()=2u;e.raw[0x17]=1u;
        logic.step_15hz(rom,g,1u,0u,false);
        assert(e.state()==3u && e.raw[0x17]==0x16u);
        assert(sw(e,11)==0x40 && sw(e,13)==0x60 && sw(e,15)==0 && sw(e,17)==-0x0f);
        // Dispatch continuation $6DF5->$6EED keeps signed coarse X=$FE/$FF,
        // but deletes the object at $FD and below even when the camera itself
        // is not scrolling horizontally.
        e.state()=3u;e.raw[0x17]=2u;e.set_x_fixed(0xfe51u);e.set_y_fixed(0x0980u);
        e.raw[11]=e.raw[12]=e.raw[13]=e.raw[14]=e.raw[15]=e.raw[16]=e.raw[17]=e.raw[18]=0u;
        e.raw[0x17]=2u;logic.step_15hz(rom,g,2u,0u,false);assert(e.active());
        e.set_x_fixed(0xfd67u);e.raw[0x17]=2u;
        logic.step_15hz(rom,g,3u,0u,false);assert(!e.active());
    }
    {
        // Fixed $54C1/$550D: the two Stage-3 $18 wave parameters (03/83)
        // select the same vertical oscillator but opposite horizontal travel.
        auto make=[&](std::uint8_t parameter) {
            sm::GameState g;auto& e=g.enemies[0];e.clear();e.type()=0x18u;
            e.set_x_fixed(0x1f00u);e.set_y_fixed(0x0400u);
            sm::initialize_stage0_flyer(rom,e,parameter,0u,0u,g.player);
            return g;
        };
        auto a=make(0x03u),b=make(0x83u);
        auto sw=[](const sm::Entity64& q,unsigned p) {
            return std::int16_t(unsigned(q.raw[p])|(unsigned(q.raw[p+1])<<8u));
        };
        assert(a.enemies[0].state()==1u && a.enemies[0].raw[0x21]==3u &&
               a.enemies[0].raw[0x22]==0x60u && a.enemies[0].raw[0x17]==0x17u);
        assert(sw(a.enemies[0],13)==-0x40 && sw(b.enemies[0],13)==0x40);
        assert(sw(a.enemies[0],15)==4 && sw(b.enemies[0],15)==4);
        sm::Stage0Enemies logic;logic.step_15hz(rom,a,0u,0u,false);
        assert(sw(a.enemies[0],11)==4);
        for(unsigned t=1;t<24u;++t) logic.step_15hz(rom,a,t,0u,false);
        assert(sw(a.enemies[0],11)>0 && sw(a.enemies[0],15)<0); // +$60 limit reversed acceleration
    }
    {
        // $6DE1->$6F0D: Stage-3 $1C launchers use the ordinary anchor cull.
        // X=$FE00 is still legal; the next $20 scenery step to $FDE0 removes
        // the object even though its decoded tile matrix is four columns wide.
        const auto rec=find3(0x1cu,0x10d3u);assert(rec!=s3.records().end());
        sm::GameState g;assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));
        auto& e=g.enemies[0];assert(e.type()==0x1cu && (e.flags15()&4u));
        e.set_x_fixed(0xfe20u);
        sm::step_stage0_object_scroll_15hz(g,0x0100,0,&rom);
        assert(e.active() && e.x_fixed()==0xfe00u);
        sm::step_stage0_object_scroll_15hz(g,0x0100,0,&rom);
        assert(!e.active());
    }
    {
        // Bank06 $BA9F: a ceiling $1D child launches at +$00A0 with
        // -$0018 acceleration armed for its return. At the player-relative
        // turn row it stops, enters state 2, and begins accelerating upward.
        sm::GameState g;g.player.set_y_fixed(0x0800u);
        auto& e=g.enemies[0];e.clear();e.type()=0x1du;e.raw[0x20]=1u;
        e.set_x_fixed(0x1de0u);e.set_y_fixed(0x0300u);
        sm::Stage0Enemies logic;logic.step_15hz(rom,g,0u,0u,false);
        auto sw=[](const sm::Entity64& q,unsigned p) {
            return std::int16_t(unsigned(q.raw[p])|(unsigned(q.raw[p+1])<<8u));
        };
        assert(e.state()==1u && e.raw[0x21]==9u && e.raw[0x22]==3u);
        assert(sw(e,11)==0x00a0 && sw(e,15)==-0x18);
        e.set_y_fixed(0x0940u);g.difficulty=6u;g.player.set_x_fixed(0x0500u);
        logic.step_15hz(rom,g,1u,0u,false);
        assert(e.state()==2u && sw(e,11)==0);
        // Player is well to the left, so $BB48 queues heading 0. Difficulty
        // 6 selects $18 from $9D15 and $9CAD increments it to $1B.
        assert(e.raw[0x26]==1u && e.raw[0x27]==0x1bu);
        sm::Stage0Combat combat;std::vector<sm::PlaySound> sounds;
        combat.step(rom,g,0u,0,0,sounds);
        assert(e.raw[0x26]==0u && e.raw[0x27]==0u);
        auto bullet=std::find_if(combat.bullets().begin(),combat.bullets().end(),
            [](const auto& q){return q.active();});
        assert(bullet!=combat.bullets().end() && sw(*bullet,11)==0 && sw(*bullet,13)<0);
        logic.step_15hz(rom,g,2u,0u,false);assert(sw(e,11)==-0x18);
    }
    {
        // $8304: Stage-3 $32 sentry pose selection is staggered by the object
        // ordinal and only runs on (CA02+ordinal)&7 == 0, not every logic tick.
        const auto rec=find3(0x32u);assert(rec!=s3.records().end());
        sm::GameState g;sm::Stage0Enemies logic;
        assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));auto& e=g.enemies[0];
        assert(e.raw[0x2d]==1u);e.raw[0x06]=0xfeu;e.raw[0x18]=0x20u;
        for(unsigned t=0;t<7u;++t) {logic.step_15hz(rom,g,t,0u,false);assert(e.raw[0x06]==0xfeu);}
        logic.step_15hz(rom,g,7u,0u,false);assert(e.raw[0x06]<=7u);
    }
    {
        // $87F1: lock the large $33 mover's exact entrance state and the
        // $88EA pair launcher. Difficulty 16 makes the ROM random gate always
        // succeed, so CA02&$17==0 must create type-$70 headings $40/$C0 at $10.
        const auto rec=find3(0x33u);assert(rec!=s3.records().end());
        sm::GameState g;g.difficulty=16u;sm::Stage0Enemies logic;
        assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));auto& e=g.enemies[0];
        logic.step_15hz(rom,g,0u,0u,false);
        auto sw=[](const sm::Entity64& q,unsigned p) {
            return std::int16_t(unsigned(q.raw[p])|(unsigned(q.raw[p+1])<<8u));
        };
        assert(e.state()==1u && e.x_fixed()==0x1c00u && e.y_fixed()==0u && e.raw[0x17]==0x50u);
        assert(sw(e,11)==0x20 && sw(e,13)==-0x20);
        std::array<unsigned,2> heading{};unsigned n=0;
        for(const auto& q:g.enemies) if(q.type()==0x70u) {assert(n<2u);heading[n++]=q.raw[0x0f];assert(q.raw[0x12]==0x10u && q.raw[0x11]==0x10u);}
        std::sort(heading.begin(),heading.end());assert(n==2u && heading[0]==0x40u && heading[1]==0xc0u);
        e.raw[0x17]=1u;logic.step_15hz(rom,g,1u,0u,false);
        // $8828-$8835 flips only VX. The next state-2 pass runs $885C and
        // decides the vertical component from scenery/player geometry.
        assert(e.state()==2u && sw(e,11)==0x20 && sw(e,13)==0x20);
        std::array<std::pair<int,int>,2> probes{};unsigned np=0;
        logic.step_15hz(rom,g,2u,0u,false,nullptr,
            [&](const sm::Entity64&,int xo,int yo) {
                if(np<probes.size()) probes[np++]={xo,yo};
                return std::uint8_t(0);
            });
        assert(np==2u && probes[0]==std::make_pair(-0x0200,0x0100) &&
               probes[1]==std::make_pair(0x0600,0x0100));
    }

    // Stage-3 boss: exact extended record plus bank06 $A647/$A850 state.
    // The first live OpenMSX object pass is:
    //   $3E @ X=$1F00,Y=$0100, HP=$78
    //   three linked $3F actors at (+0,+6), (+0,+10), (-1,+14).
    const auto boss_record=std::find_if(s3.records().begin(),s3.records().end(),
        [](const auto& r){return r.type==0x3eu;});
    assert(boss_record!=s3.records().end());
    assert(boss_record->trigger==0x2000u && boss_record->control==0x86u);
    assert(boss_record->payload.size()==2u && boss_record->payload[0]==2u &&
           boss_record->payload[1]==0xffu);
    const auto boss_meta=sm::decode_spawn_type_metadata(rom,0x3eu);
    const auto arm_meta=sm::decode_spawn_type_metadata(rom,0x3fu);
    assert((boss_meta.bytes==std::array<std::uint8_t,4>{3u,0x83u,4u,0x78u}));
    assert((arm_meta.bytes==std::array<std::uint8_t,4>{6u,8u,0x14u,1u}));

    sm::GameState boss_game;
    sm::Stage0Enemies boss_logic;
    std::vector<sm::PlaySound> boss_sounds;
    assert(sm::instantiate_stage0_spawn(rom,*boss_record,boss_game,1u));
    auto& boss=boss_game.enemies[0];
    assert(boss.type()==0x3eu && boss.state()==0u);
    boss_logic.step_15hz(rom,boss_game,0u,0u,false,&boss_sounds);
    assert(boss.state()==1u && boss.x_fixed()==0x1f00u && boss.y_fixed()==0x0100u);
    assert(boss.raw[0x16]==0x78u && boss.raw[0x18]==0x14u);
    assert(boss.raw[0x20]==1u && boss.raw[0x17]==2u);
    assert(boss.raw[0x37]==3u && boss.raw[0x3b]==3u && boss.raw[0x34]==0x80u);
    std::array<sm::Entity64*,3> arms{};
    for(auto& e:boss_game.enemies) if(e.type()==0x3fu && e.raw[0x03]>=1u && e.raw[0x03]<=3u)
        arms[e.raw[0x03]-1u]=&e;
    assert(arms[0] && arms[1] && arms[2]);
    assert(arms[0]->x_fixed()==0x1f00u && arms[0]->y_fixed()==0x0700u && arms[0]->raw[0x06]==0x0au);
    assert(arms[1]->x_fixed()==0x1f00u && arms[1]->y_fixed()==0x0b00u && arms[1]->raw[0x06]==0x0eu);
    assert(arms[2]->x_fixed()==0x1e00u && arms[2]->y_fixed()==0x0f00u && arms[2]->raw[0x06]==0x11u);
    for(unsigned i=0;i<3u;++i) {
        assert(arms[i]->raw[0x34]==boss.raw[0x2d] && arms[i]->raw[0x38]==i+1u);
        assert((arms[i]->flags15()&0x50u)==0x50u);
        assert(!sm::decode_stage0_tile_visuals(rom,*arms[i]).empty());
    }
    const auto shell=sm::decode_stage0_tile_visuals(rom,boss);
    assert(shell.size()==3u);
    boss_logic.step_15hz(rom,boss_game,1u,0u,false,&boss_sounds);
    assert(boss.x_fixed()==0x1ee0u); // previous-tick $FFE0 velocity

    // Drive the linked arm through the real family-2 weak-point sequence.
    // $A93E emits SFX $2A on phase 0->1; state 5 then pulses 2<->3 on CA02&3.
    boss.state()=1u;boss.set_x_fixed(0x1f00u);boss.raw[0x21]=2u;boss.raw[0x22]=2u;
    boss.raw[0x03]=1u;boss_sounds.clear();
    arms[1]->state()=0u;arms[1]->raw[0x23]=1u;arms[1]->raw[0x24]=0u;
    boss_logic.step_15hz(rom,boss_game,2u,0u,false,&boss_sounds);
    assert(arms[1]->state()==2u && arms[1]->raw[0x17]==3u);
    for(unsigned tick=3u;tick<=6u;++tick)
        boss_logic.step_15hz(rom,boss_game,tick,0u,false,&boss_sounds);
    assert(arms[1]->state()==5u && arms[1]->raw[0x24]==2u);
    assert(std::count(boss_sounds.begin(),boss_sounds.end(),sm::PlaySound::Stage3ArmExtend)==1);
    boss_logic.step_15hz(rom,boss_game,8u,0u,false,&boss_sounds);
    assert(arms[1]->raw[0x24]==3u);
    boss_logic.step_15hz(rom,boss_game,9u,0u,false,&boss_sounds);
    boss_logic.step_15hz(rom,boss_game,10u,0u,false,&boss_sounds);
    boss_logic.step_15hz(rom,boss_game,11u,0u,false,&boss_sounds);
    boss_logic.step_15hz(rom,boss_game,12u,0u,false,&boss_sounds);
    assert(arms[1]->raw[0x24]==2u);
    arms[1]->state()=7u;arms[1]->raw[0x17]=1u;arms[1]->raw[0x24]=2u;
    boss.raw[0x03]=1u;boss_sounds.clear();
    boss_logic.step_15hz(rom,boss_game,13u,0u,false,&boss_sounds);
    assert(arms[1]->raw[0x24]==1u);
    assert(std::count(boss_sounds.begin(),boss_sounds.end(),sm::PlaySound::Stage3ArmRetract)==1);
    boss_logic.step_15hz(rom,boss_game,14u,0u,false,&boss_sounds);
    assert(arms[1]->state()==0u && arms[1]->raw[0x24]==0u && boss.raw[0x03]==0u);

    // Full session route: stage 3 reaches the real boss, switches to boss
    // music, and the shared $6A death countdown advances cleanly to stage 4.
    sm::PlaySession boss_route(rom);boss_route.reset(2u);
    sm::Entity64* live_boss=nullptr;
    while(boss_route.stage_frame()<24000u && !live_boss) {
        boss_route.step_60hz({});
        auto& state=const_cast<sm::GameState&>(boss_route.state());
        auto it=std::find_if(state.enemies.begin(),state.enemies.end(),
            [](auto& e){return e.type()==0x3eu;});
        if(it!=state.enemies.end()) live_boss=&*it;
    }
    assert(live_boss && boss_route.at_fight_gate() && boss_route.boss_music_active());
    // Exercise several complete attack cycles, rather than commanding a
    // single eye manually. Every eye must expose its family-2 weak point,
    // return idle, and expose it again without leaking the parent's counter.
    std::array<unsigned,3> openings{};
    std::array<bool,3> was_open{};
    unsigned completed_cycles=0;
    bool had_commands=false;
    for(unsigned f=0;f<3600u;++f) {
        boss_route.step_60hz({});
        for(const auto& e:boss_route.state().enemies) if(e.type()==0x3fu) {
            const unsigned i=e.raw[3]-1u;
            assert(i<3u);
            const bool open=e.raw[0x23]==2u && e.raw[0x24]>=2u && e.state()==5u;
            if(open && !was_open[i]) ++openings[i];
            was_open[i]=open;
        }
        if(live_boss->raw[3]) had_commands=true;
        else if(had_commands) {++completed_cycles;had_commands=false;}
    }
    for(auto n:openings) assert(n>=2u);
    assert(completed_cycles>=3u);

    // Cyan boss geometry must move on all four presentation frames while
    // its ROM logic position is held for the original 15-Hz cadence.
    while((boss_route.frame()&3u)!=0u) boss_route.step_60hz({});
    std::array<std::uint32_t,4> poses{};
    for(unsigned f=0;f<4u;++f) {
        const auto image=boss_route.render_continuous();
        auto& hash=poses[f];hash=2166136261u;
        for(auto c:image) {
            const unsigned r=(c>>16u)&255u,g=(c>>8u)&255u,b=c&255u;
            const bool cyan=g>r+20u && b>r+20u;
            hash=(hash^unsigned(cyan))*16777619u;
        }
        boss_route.step_60hz({});
    }
    for(unsigned i=0;i<4u;++i) for(unsigned j=i+1u;j<4u;++j) assert(poses[i]!=poses[j]);
    const unsigned death_frame=boss_route.frame();
    live_boss->raw[0x14]|=0x80u;
    assert(sm::apply_stage0_damage(rom,*live_boss,std::uint8_t(live_boss->raw[0x16]+1u))==
           sm::Stage0DamageResult::Destroyed);
    assert(live_boss->type()==0x6au && boss_route.boss_music_active());
    while(boss_route.stage_index()==2u && boss_route.frame()-death_frame<400u)
        boss_route.step_60hz({});
    assert(boss_route.stage_index()==3u);

    // Regular Stage-4 families reconstructed from the guarded OpenMSX
    // Stage-4 trace (internal stage $03) and their original handlers.
    const auto find4=[&](std::uint8_t type,std::uint16_t trigger=0u) {
        return std::find_if(s4.records().begin(),s4.records().end(),[&](const auto& r) {
            return r.type==type && (!trigger || r.trigger==trigger);
        });
    };
    {
        // Generic native tile ownership: Stage-4's moving $39 machinery and
        // later $38 orb are both normal +15:$02 matrix actors. Presentation
        // must not leave a quantized D988 copy behind, otherwise the whole
        // object jumps left/right every coarse scroll tick.
        sm::Stage0BackgroundStream overlay(rom);overlay.reset_stage(3u);
        for(const auto type:{0x39u,0x38u}) {
            const auto rec=find4(std::uint8_t(type));assert(rec!=s4.records().end());
            sm::GameState g;assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));
            auto e=std::find_if(g.enemies.begin(),g.enemies.end(),
                [&](const auto& q){return q.type()==type;});
            assert(e!=g.enemies.end() && sm::stage0_native_tile_overlay(overlay,*e));
            e->set_x_fixed(0x0800u);e->set_y_fixed(0x0600u);
            std::array<std::uint8_t,24u*32u> coarse{};
            sm::stamp_stage0_tile_objects(rom,overlay,g,coarse);
            assert(std::none_of(coarse.begin(),coarse.end(),[](auto t){return t!=0u;}));
            sm::stamp_stage0_tile_objects(rom,overlay,g,coarse,true);
            assert(std::any_of(coarse.begin(),coarse.end(),[](auto t){return t!=0u;}));
        }
    }
    {
        const auto rec=find4(0x17u,0x102cu);assert(rec!=s4.records().end());
        sm::GameState g;g.player.set_x_fixed(0x0800u);g.player.set_y_fixed(0x0800u);
        sm::Stage0Enemies logic;assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));
        auto& e=g.enemies[0];assert(e.state()==0u && e.y_fixed()==0x0300u);
        logic.step_15hz(rom,g,0u,0u,false);
        assert(e.state()==1u && e.raw[0x17]==0x20u &&
               sm::entity_word(e,11)==0x20 && sm::entity_word(e,13)==0);
        e.raw[0x17]=1u;logic.step_15hz(rom,g,1u,0u,false);
        assert(e.state()==2u && e.raw[0x22]==5u && sm::entity_word(e,11)==0x00c0);
        e.raw[0x21]=1u;e.raw[0x22]=0u;
        logic.step_15hz(rom,g,2u,0u,false);
        assert(e.state()==4u && e.raw[0x26]==1u && e.raw[0x17]==8u &&
               sm::entity_word(e,11)==0 && sm::entity_word(e,13)==0x00c0);
    }
    {
        const auto rec=find4(0x38u,0x3010u);assert(rec!=s4.records().end());
        sm::GameState g;g.difficulty=1u;sm::Stage0Enemies logic;
        assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));auto& e=g.enemies[0];
        logic.step_15hz(rom,g,0u,0u,false);
        assert(e.state()==1u && e.raw[0x17]==0x12u && e.raw[0x3e]==0x0du);
        const auto old_frame=e.raw[0x06];e.raw[0x17]=1u;
        logic.step_15hz(rom,g,1u,0u,false);
        auto child=std::find_if(g.enemies.begin(),g.enemies.end(),
            [](const auto& q){return q.type()==0x6eu;});
        assert(child!=g.enemies.end() && child->state()==1u &&
               child->raw[0x20]==std::uint8_t((old_frame+1u)&3u) &&
               child->raw[0x17]==8u);
        const unsigned dir=child->raw[0x20]&3u;
        static constexpr std::array<int,4> vy{0,-0x80,0,0x80};
        static constexpr std::array<int,4> vx{0x80,0,-0x80,0};
        assert(sm::entity_word(*child,11)==vy[dir] && sm::entity_word(*child,13)==vx[dir]);
    }
    {
        const auto rec=find4(0x39u,0x102eu);assert(rec!=s4.records().end());
        sm::GameState g;g.difficulty=1u;g.player.set_x_fixed(0x0800u);g.player.set_y_fixed(0x0800u);
        sm::Stage0Enemies logic;assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));
        auto& e=g.enemies[0];logic.step_15hz(rom,g,0u,0u,false);
        assert(e.state()==1u && e.raw[0x17]==0x38u && e.raw[0x18]==1u &&
               e.raw[0x22]==1u && e.raw[0x21]==0u &&
               sm::entity_word(e,11)==-0x80 && sm::entity_word(e,13)==0);
        e.raw[0x17]=1u;e.raw[0x18]=1u;
        logic.step_15hz(rom,g,1u,0u,false);
        std::array<sm::Entity64*,2> pair{};unsigned n=0;
        for(auto& q:g.enemies) if(q.type()==0x6fu && n<pair.size()) pair[n++]=&q;
        assert(n==2u && pair[0]->state()==1u && pair[1]->state()==1u);
        assert(sm::entity_word(*pair[0],11)==-0x80 && sm::entity_word(*pair[1],11)==0x80);
        pair[0]->raw[0x17]=1u;logic.step_15hz(rom,g,2u,0u,false);
        assert(pair[0]->state()==2u);
        const auto vx_before=sm::entity_word(*pair[0],13);
        logic.step_15hz(rom,g,3u,0u,false);
        assert(sm::entity_word(*pair[0],13)!=vx_before);

        const auto silent=find4(0x39u,0x1050u);assert(silent!=s4.records().end());
        sm::GameState h;h.difficulty=1u;sm::Stage0Enemies quiet;
        assert(sm::instantiate_stage0_spawn(rom,*silent,h,1u));
        assert(h.enemies[0].raw[0x23]==1u);
        quiet.step_15hz(rom,h,0u,0u,false);
        h.enemies[0].raw[0x17]=1u;h.enemies[0].raw[0x18]=1u;
        quiet.step_15hz(rom,h,1u,0u,false);
        assert(std::none_of(h.enemies.begin(),h.enemies.end(),
            [](const auto& q){return q.type()==0x6fu;}));
    }
    {
        const auto rec=find4(0x37u,0x1070u);assert(rec!=s4.records().end());
        sm::GameState g;sm::Stage0Enemies logic;
        assert(sm::instantiate_stage0_spawn(rom,*rec,g,1u));
        assert(std::count_if(g.enemies.begin(),g.enemies.end(),
            [](const auto& q){return q.type()==0x37u;})==15);
        auto parent=std::find_if(g.enemies.begin(),g.enemies.end(),
            [](const auto& q){return q.type()==0x37u && q.state()==2u && q.raw[0x34]==0u;});
        assert(parent!=g.enemies.end() && parent->x_fixed()==0x2000u &&
               parent->y_fixed()==0x0b00u && parent->flags15()==0x04u);
        auto child=std::find_if(g.enemies.begin(),g.enemies.end(),
            [](const auto& q){return q.type()==0x37u && q.raw[0x38]==1u;});
        assert(child!=g.enemies.end() && child->raw[0x03]==0x05u &&
               child->raw[0x17]==3u && child->raw[0x21]==0x35u);

        logic.step_15hz(rom,g,0u,0u,false);
        logic.step_15hz(rom,g,1u,0u,false);
        logic.step_15hz(rom,g,2u,0u,false);
        assert(child->state()==1u);
        logic.step_15hz(rom,g,3u,0u,false);
        // First live orbit sample matches the ROM orientation: phase +5 moves
        // mostly right and only slightly down from the $2000/$0B00 anchor.
        assert(child->raw[0x17]==5u && child->x_fixed()>=0x2600u &&
               child->y_fixed()>=0x0b00u && child->y_fixed()<0x0c00u);

        // Linked formation children are intentionally born offscreen and the
        // longest stagger survives beyond the generic $FE00 scenery cull.
        // OpenMSX keeps ord=$08 alive at X=$FDC0 before it joins the orbit;
        // culling these records early removes visible quadrants later.
        sm::GameState hold;
        assert(sm::instantiate_stage0_spawn(rom,*rec,hold,1u));
        auto late=std::find_if(hold.enemies.begin(),hold.enemies.end(),
            [](const auto& q){return q.type()==0x37u && q.raw[0x38]==8u;});
        assert(late!=hold.enemies.end() && late->state()==0u && late->raw[0x17]==0x18u);
        for(unsigned n=0;n<18u;++n)
            sm::step_stage0_object_scroll_15hz(hold,0x0100,0,&rom);
        assert(late->active() && std::int16_t(late->x_fixed())<std::int16_t(0xfe00u));
    }

    // Public session/timeline entry points can now start stages 3 and 4
    // directly; this used to collapse every non-zero reset onto stage 2.
    sm::PlaySession p3(rom);p3.reset(2);assert(p3.stage_index()==2u);
    {
        const auto& g=p3.state();
        assert(g.enemies[0].type()==0x32u && g.enemies[0].x_fixed()==0x19e0u && g.enemies[0].raw[0x18]==1u);
        assert(g.enemies[1].type()==0x32u && g.enemies[1].x_fixed()==0x1be0u && g.enemies[1].raw[0x18]==1u);
        assert(g.enemies[2].type()==0x32u && g.enemies[2].x_fixed()==0x1de0u && g.enemies[2].raw[0x18]==1u);
    }
    for(unsigned i=0;i<4u;++i) p3.step_60hz({});
    {
        const auto& g=p3.state();
        assert(g.enemies[0].x_fixed()==0x19c0u && g.enemies[0].raw[0x18]==0x1eu);
        assert(g.enemies[1].x_fixed()==0x1bc0u && g.enemies[1].raw[0x18]==0x20u);
        assert(g.enemies[2].x_fixed()==0x1dc0u && g.enemies[2].raw[0x18]==0x22u);
    }
    {
        sm::PlaySession autofire(rom);autofire.reset(2u);autofire.set_max_test_loadout();
        sm::PlayerInput held{};held.fire=true;
        unsigned volleys=0;
        for(unsigned i=0;i<120u;++i) {
            autofire.step_60hz(held);
            for(const auto s:autofire.sound_events()) if(s==sm::PlaySound::WaveShot) ++volleys;
        }
        // Bank02:$801B reads C907 bit4 as a level every update. Holding FIRE
        // must refill W's three-shot pool without requiring key releases.
        assert(volleys>=5u);
    }
    {
        // Final 1024x848 presentation must retain Stage-3's isolated one-pixel
        // stars. At 4x native sampling each ROM star is an isolated 4x4 block
        // in palette colour 8 ($9292B6) surrounded by black.
        const auto image=p3.render_continuous();
        constexpr std::uint32_t star=0xff9292b6u,black=0xff000000u;
        unsigned isolated=0;
        for(unsigned y=113u;y+5u<848u;++y) for(unsigned x=1u;x+5u<1024u;++x) {
            bool block=true;
            for(unsigned yy=0;yy<4u;++yy) for(unsigned xx=0;xx<4u;++xx)
                block&=image[(y+yy)*1024u+x+xx]==star;
            if(!block) continue;
            bool border=true;
            for(int xx=-1;xx<=4;++xx) {
                border&=image[(y-1u)*1024u+unsigned(int(x)+xx)]==black;
                border&=image[(y+4u)*1024u+unsigned(int(x)+xx)]==black;
            }
            for(unsigned yy=0;yy<4u;++yy) {
                border&=image[(y+yy)*1024u+x-1u]==black;
                border&=image[(y+yy)*1024u+x+4u]==black;
            }
            isolated+=border;
        }
        assert(isolated>=24u);
    }
    sm::PlaySession p4(rom);p4.reset(3);assert(p4.stage_index()==3u);
    for(unsigned i=0;i<120u;++i) {p3.step_60hz({});p4.step_60hz({});}
    assert(!p3.render().empty() && !p4.render().empty());
    bool rejected=false;
    try {p4.reset(9);} catch(const std::invalid_argument&) {rejected=true;}
    assert(rejected);

    std::cout<<"Stages 3/4 baseline PASS: ROM streams, stage reset, mode-6 vertical section and spawn catalogs\n";
}

#include "play_session.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <fstream>
#include <iostream>

int main(int argc,char** argv) {
    if(argc!=2 && argc!=3) return 2;
    sm::Rom rom(argv[1]);
    if(argc==3) {
        // Independent emulator fixtures compare the actual native functions.
        std::ifstream input(argv[2]); std::string id,kind;
        unsigned directions,speed,x,y;
        while(input>>id>>kind>>directions>>speed>>x>>y) {
            if(kind=="flyer") {
                sm::Entity64 e,player;e.type()=std::uint8_t(directions);
                e.set_x_fixed(x);e.set_y_fixed(y);
                player.set_x_fixed(0x500);player.set_y_fixed(0x800);
                sm::initialize_stage0_flyer(rom,e,std::uint8_t(speed),0,0,player);
                std::cout<<id<<' ';
                bool first=true;
                for(unsigned field:{0u,1u,5u,7u,8u,9u,10u,11u,12u,13u,14u,15u,16u,17u,18u,0x17u,0x18u,0x20u,0x21u,0x22u,0x23u}) {
                    std::cout<<(first?"":",")<<unsigned(e.raw[field]);first=false;
                }
                std::cout<<'\n';continue;
            }
            if(kind=="ring") {
                const sm::Stage0BackgroundStream stream(rom);
                std::cout<<id<<' ';
                for(unsigned row=0;row<32;++row) for(unsigned col=0;col<64;++col)
                    std::cout<<((row||col)?",":"")<<unsigned(stream.ring_tile(col,row));
                std::cout<<'\n';continue;
            }
            if(kind=="window") {
                const auto level=sm::LevelStreamDecoder(rom).decode_mode0(sm::kStage0VisualStart);
                const auto window=sm::compose_stage0_horizontal_tiles(level,x);
                std::cout<<id<<' ';
                for(unsigned row=0;row<21;++row) for(unsigned col=0;col<32;++col)
                    std::cout<<((row||col)?",":"")<<unsigned(window[row*48+col]);
                std::cout<<'\n';continue;
            }
            sm::Entity64 player,shot;
            player.set_x_fixed(std::uint16_t(x));player.set_y_fixed(std::uint16_t(y));
            if(kind=="primary") {
                sm::initialize_primary_shot(rom,player,shot,speed,true);
                const unsigned fields[]={0,3,5,6,7,8,9,10,11,12,13,14,0x13,0x14};
                std::cout<<id<<' ';bool first=true;
                for(auto field:fields) {std::cout<<(first?"":",")<<unsigned(shot.raw[field]);first=false;}
                std::cout<<'\n';continue;
            }
            if(kind=="move") sm::move_player(rom,player,std::uint8_t(directions),std::uint8_t(speed));
            else { sm::initialize_basic_shot(rom,player,shot);player=shot; }
            std::cout<<id<<' ';
            const std::vector<unsigned> fields=kind=="move"?std::vector<unsigned>{5,7,8,9,10,11,12,13,14}:
                std::vector<unsigned>{0,3,5,7,8,9,10,11,12,13,14,0x13,0x14};
            for(unsigned i=0;i<fields.size();++i) std::cout<<(i?",":"")<<unsigned(player.raw[fields[i]]);
            std::cout<<'\n';
        }
        return input.eof()?0:1;
    }
    sm::PlaySession session(rom);
    // A live shot must change rendered pixels, not just occupy a pool slot.
    sm::PlaySession no_fire(rom);
    session.step_60hz({false,false,false,false,false,true});
    no_fire.step_60hz({});
    const auto fired=session.render(),unfired=no_fire.render();
    unsigned shot_pixels=0;
    for(unsigned i=0;i<fired.size();++i) shot_pixels+=fired[i]!=unfired[i];
    assert(shot_pixels==32);
    assert(session.shots()[0].active()); // tap already released before tick
    session.reset();
    session.step_60hz({false,false,false,true,true});
    assert(session.state().player.x_fixed()==0x0580);
    assert(session.shots()[0].active());
    for(unsigned i=0;i<4;++i) session.step_60hz({false,false,false,false,true});
    assert(!session.shots()[1].active()); // held key cannot manufacture rising edges
    session.step_60hz({});session.step_60hz({false,false,false,false,true});
    assert(session.shots()[1].active());
    for(unsigned i=0;i<100;++i) session.step_60hz({true,false,false,false,false});
    assert(session.state().player.y_fixed()==0);
    for(const auto& shot:session.shots()) assert(!shot.active());
    session.reset();
    assert(session.frame()==0 && session.camera_pixels()==248);
    assert(session.state().player.x_fixed()==0x0500 && session.state().player.y_fixed()==0x0800);
    const auto initial=session.render();
    assert(initial.size()==256*212);
    // ROM star pattern at the first frame, not a synthetic dot overlay.
    assert(initial[31*256+65]==0xff9292b6);
    session.step_60hz({});session.step_60hz({});
    assert(session.render()!=initial);
    for(unsigned i=0;i<7000;++i) session.step_60hz({});
    assert(session.render().size()==256*212);
    session.reset();assert(session.render()==initial);
    // At the 3078->3080 tile carry the vehicle must move left by two pixels.
    // Using the old raster phase with the new tile window moved it right by six.
    for(unsigned i=0;i<5660;++i) session.step_60hz({});
    const auto before_carry=session.render();
    session.step_60hz({});const auto intermediate0=session.render();
    session.step_60hz({});const auto intermediate1=session.render();
    unsigned smooth_compared=0,smooth_matched=0;
    for(unsigned y=142;y<186;++y) for(unsigned x=16;x<240;++x) {
        if(intermediate0[y*256+x]==0xff000000) continue;
        ++smooth_compared;
        smooth_matched+=intermediate0[y*256+x]==intermediate1[y*256+x-1];
    }
    assert(smooth_compared>5000 && smooth_matched*100>=smooth_compared*99);
    for(unsigned i=0;i<2;++i) session.step_60hz({});
    const auto after_carry=session.render();
    unsigned compared=0,matched=0;
    for(unsigned y=142;y<186;++y) for(unsigned x=16;x<240;++x) {
        if(before_carry[y*256+x]==0xff000000) continue;
        ++compared;
        if(before_carry[y*256+x]==after_carry[y*256+x-2]) ++matched;
    }
    assert(compared>5000 && matched*100>=compared*99);
    const auto video=sm::Screen4Snapshot::from_stage0_rom(rom);
    // Deliberately bright tile data must still leave the raster border black.
    // Exercise reused pages while the diagonal streamer rotates through rows.
    auto bright=video;
    std::fill(bright.vram.begin(),bright.vram.end(),0xff);
    sm::Stage0BackgroundStream stream(rom);
    sm::Stage0Screen4Presenter presenter;
    std::array<std::uint8_t,24*32> tiles{};tiles.fill(1);
    bool saw_diagonal=false;
    for(unsigned tick=0;tick<1800;++tick) {
        auto p=stream.presentation_state();p.r18=15;
        const auto border=presenter.render(stream,bright,tiles,&p);
        for(unsigned y=0;y<20;++y) for(unsigned x=0;x<256;++x)
            assert(border[y*256+x]==0xff000000);
        for(unsigned y=0;y<212;++y) for(unsigned x=249;x<256;++x)
            assert(border[y*256+x]==0xff000000);
        saw_diagonal|=stream.mode()==4;
        stream.step_15hz();
    }
    assert(saw_diagonal);
    sm::Entity64 tile_vehicle;tile_vehicle.type()=0x24;tile_vehicle.flags15()=4;
    sm::Stage0SpriteVisual collision_frame;
    assert(!sm::decode_stage0_sprite_visual(rom,video,tile_vehicle,collision_frame));
    std::cout<<"Player/session regression PASS\n";
}

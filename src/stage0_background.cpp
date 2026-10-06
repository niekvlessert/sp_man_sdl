#include "stage0_background.hpp"
#include <algorithm>
#include <cstdint>

namespace sm {
namespace {
unsigned payload_size(std::uint8_t cmd) {
    switch (cmd) {
    case 0x10: case 0x11: case 0x13: case 0x1c: return 2;
    case 0x17: case 0x19: case 0x1f: return 1;
    case 0x12: return 0x24;
    default: return 0;
    }
}
int floor_div8(int v) {
    if (v >= 0) return v / 8;
    return -int((unsigned(-v) + 7u) / 8u);
}
std::int16_t asr3(std::int16_t v) {
    const int n = int(v);
    return std::int16_t(n >= 0 ? n / 8 : -int((unsigned(-n) + 7u) / 8u));
}
}

Stage0BackgroundStream::Stage0BackgroundStream(const Rom& rom) : rom_(rom) {
    reset();
}

void Stage0BackgroundStream::reset() {
    stage_index_=0;object_raster_anchor_=false;palette_fade_ticks_=0;palette_fade_active_=false;frame_service_seen_=false;
    metatile_base_=0;
    tower_destroyed_=false;
    ring_.fill(0);
    overscan_valid_.fill(false);

    // Exact stage-0 state at $A13F (X=1536), well before the old $A288
    // renderer hand-off. Reconstruct the live 64-column ring from the ROM
    // itself so the vehicle section can flow continuously into command $12
    // and the later 2-D slope without switching renderer models mid-scene.
    const auto defs = rom_.bank(25);
    const auto data = rom_.bank(27);
    std::vector<std::array<std::uint8_t, 24>> columns;
    std::size_t p = 0;
    while (p < 0x13fu && p < data.size()) {
        if (data[p] == 0xfeu) { ++p; continue; }
        if (data[p] == 0xffu) {
            if (++p >= data.size()) break;
            const auto cmd = data[p++];
            p += cmd < 0x10u ? 0u : payload_size(cmd);
            continue;
        }
        if (p + 6u > data.size()) break;
        std::array<std::uint8_t, 6> macro{};
        for (unsigned i = 0; i < 6u; ++i) macro[i] = data[p + i];
        p += 6u;
        for (unsigned phase = 0; phase < 4u; ++phase) {
            std::array<std::uint8_t, 24> col{};
            for (unsigned block = 0; block < 6u; ++block) {
                const unsigned base = unsigned(macro[block]) * 16u + phase;
                for (unsigned row = 0; row < 4u; ++row)
                    col[block * 4u + row] = defs[base + row * 4u];
            }
            columns.push_back(col);
        }
    }
    // Live $A13F has the last 64 decoded tile-columns in the ring. The
    // physical mapping is the same +31 phase used by the later $A288 state.
    if (columns.size() >= 192u) {
        for (unsigned x = 128u; x < 192u; ++x) {
            const unsigned rc = (x + 31u) & 63u;
            for (unsigned y = 0; y < 24u; ++y) ring_[y * 64u + rc] = columns[x][y];
        }
    }

    source_ = 0xA13Fu;
    phase_accum_ = 0x0000u; // live C0B6 at $A13F
    phase_step_ = 0x0200u;  // live C0B8
    x_fp_ = 1536 << 8;      // live C0BA..BC = $060000
    y_fp_ = 0;
    x_vel_fp_ = 2 << 8;
    y_vel_fp_ = 0;
    mode_ = 0;
    graphics_set_ = 5;      // $A13B raster context, R4=$33/R10=$06
    palette_set_ = 1;       // $A43A palette already selected at $A12C
    macro_phase_ = 1;       // live C0DA
    // Phase 0 of A13F has ALREADY replaced the retiring column at this
    // anchor. Leaving column128 here exposed blue-scene tiles as machinery.
    // Stream writes use the integrated C0CD column, independently from the
    // pre-integrated window used by raster presentation.
    write_vertical(source_, 31);
    c0d2_ = 0x38u;
    c0b5_ = 0x00u;
    c0d5_ = 0x01u;
    // C09B advances once per coarse stage tick and selects the alternating
    // $C9BE/$C9EA raster programs. Correlating the live $0C9A trace
    // (C09B=$CF) backwards to the exact X=$0600 $A13F anchor gives $82.
    c09b_ = 0x82u;
    // $5DDB-$5DE7 increments CA3A once per scenery/object tick, not once per
    // video frame. A13F -> A288 is exactly 768 coarse +2px ticks (mod 8 = 0),
    // while the exact A288 D988 capture has phase 3, so A13F is phase 3 too.
    ca3a_ = 0x03u;

    // $6E77 seeded this 24-byte row table earlier; it is unchanged between
    // the captured $A13F and $A288 states.
    e800_.fill(0);
    const auto fixed = rom_.bank(0);
    std::uint8_t rb = 0, rc = 0;
    for (unsigned i = 0; i < 24u; ++i) {
        const auto a = std::uint8_t(fixed[0x600u + rc] ^ rb ^ fixed[0x700u + rc]);
        rb = a; ++rc;
        e800_[i] = a & 0x1fu;
    }
    c0e6_ = 0x0000u;
    c0e8_ = 0xAFA0u;       // live value at exact $A13F capture
    const auto pt = std::uint16_t(c0e8_ + (ca1c() & 0x00ffu));
    parallax_h_ = std::uint8_t(pt >> 8u);
    parallax_l_ = std::uint8_t(0xcdu - ((pt & 0xffu) >> 5u));

    trigger_cursor_ = 0x10C0u; // live $CA34 at $A13F
    gated_ = false;
}

void Stage0BackgroundStream::reset_stage(unsigned stage) {
    if(stage==0u) {reset();return;}
    if(stage>=9u) throw std::out_of_range("stage index");
    reset();stage_index_=stage;ring_.fill(0);gated_=false;palette_fade_ticks_=0;palette_fade_active_=false;frame_service_seen_=false;
    const auto b=rom_.bank(9);
    auto word=[&](unsigned p){return unsigned(b[p])|(unsigned(b[p+1])<<8);};
    const auto cp=word(0x1c8c+stage*2u)-0x6000u;
    source_=std::uint16_t(word(cp));trigger_cursor_=std::uint16_t(word(cp+2u));
    metatile_base_=word(0x1d76+stage*2u)-0x8000u;
    x_fp_=y_fp_=0;macro_phase_=0;phase_accum_=0;
    // Stage 8 inherits Stage 7's R4=$13/R10=$02 atlas. Other stages
    // begin in context 0; FF13/FF1C can explicitly change the context.
    graphics_set_=stage==7u?2u:0u;palette_set_=0;
    // Live Stage 3 keeps C0D2=$20 from the preload onward, producing R23=$04
    // through $1079/$10A2/$10E9. Starting it at zero made native R23=$E4:
    // the complete name table (including the $75 lattice) was presented four
    // tile rows too high even though the E000 ring itself was byte-exact.
    c0d2_=stage==2u?0x20u:0u;c0b5_=0;
    ca3a_=0;c0e6_=c0e8_=0;
    prepare_data();
    // The original stage initializer preloads 31 columns before releasing
    // the player. Keep native overscan disabled until that ring is complete.
    suppress_prefetch_=true;
    // $783E writes phase zero at X=0 before the 31-column preload loop.
    // Omitting this leaves every later segment one stream event behind.
    stream_phase();
    --trigger_cursor_; // $7841-$7845: preload phase does not consume a spawn trigger.
    for(unsigned column=1;column<=31u;++column) {
        x_fp_=int(column*8u)<<8;
        stream_phase();
    }
    suppress_prefetch_=false;object_raster_anchor_=false;
    prefetch_successor_column();
}

unsigned Stage0BackgroundStream::pattern_base(int graphics_override) const noexcept {
    static constexpr std::array<unsigned,7> registers{0x33,0x0b,0x13,0x23,0x2b,0x33,0x3b};
    const unsigned set=std::min<unsigned>(graphics_override>=0?unsigned(graphics_override):graphics_set_,6u);
    return ((stage_index_ && set==0u?0x03u:registers[set])&0x3cu)<<11u;
}
unsigned Stage0BackgroundStream::color_base(int graphics_override) const noexcept {
    static constexpr std::array<unsigned,7> registers{6,1,2,4,5,6,7};
    const unsigned set=std::min<unsigned>(graphics_override>=0?unsigned(graphics_override):graphics_set_,6u);
    return 0x2000u+(stage_index_ && set==0u?0u:registers[set])*0x4000u;
}

unsigned Stage0BackgroundStream::world_x() const noexcept {
    return unsigned(std::max(0, x_fp_ >> 8));
}

int Stage0BackgroundStream::world_y() const noexcept {
    return y_fp_ >> 8;
}

std::uint16_t Stage0BackgroundStream::ca1a() const noexcept {
    auto value=std::uint16_t(asr3(std::int16_t(std::uint16_t(y_fp_ & 0xffff))));
    if(object_raster_anchor_) value=std::uint16_t((value&0xff00u)|anchor_ca1a_low_);
    return value;
}
std::uint16_t Stage0BackgroundStream::ca1c() const noexcept {
    auto value=std::uint16_t(asr3(std::int16_t(std::uint16_t(x_fp_ & 0xffff))));
    if(object_raster_anchor_) value=std::uint16_t((value&0xff00u)|anchor_ca1c_low_);
    return value;
}
void Stage0BackgroundStream::apply_object_raster_anchor(std::uint16_t x_fixed,
        std::uint16_t y_fixed,std::uint8_t bias) noexcept {
    // Byte-for-byte fixed-bank $6C75-$6CAD. Only the low CA1A/CA1C bytes,
    // C0BB and C0D2 are replaced; the stage world coordinates stay intact.
    std::uint8_t d=std::uint8_t(bias+std::uint8_t(y_fixed>>8u));
    d=std::uint8_t(0u-d);d=std::uint8_t((unsigned(d)*8u)&0xf8u);
    auto xl=std::uint8_t(x_fixed);xl=std::uint8_t(0u-(xl&0xe0u));xl&=0xe0u;
    auto yl=std::uint8_t(y_fixed);yl&=0xe0u;
    if(yl) d=std::uint8_t(d-8u);
    yl=std::uint8_t(0u-yl);yl&=0xe0u;
    anchor_ca1c_low_=xl;anchor_ca1a_low_=yl;
    anchor_c0bb_=std::uint8_t((unsigned(xl)<<3u)|(unsigned(xl)>>5u));
    const auto yr=std::uint8_t((unsigned(yl)<<3u)|(unsigned(yl)>>5u));
    c0d2_=std::uint8_t(yr|d);object_raster_anchor_=true;
}
std::uint8_t Stage0BackgroundStream::vertical_scroll() const noexcept {
    // During the mode-4 diagonal raster program the live VDP uses
    // R23=C0D2-$1B (e.g. $20->$05). The normal horizontal program uses $1C.
    return std::uint8_t(c0d2_ - (mode_ == 4u ? 0x1bu : 0x1cu));
}

Stage0PresentationState Stage0BackgroundStream::presentation_state() const noexcept {
    Stage0PresentationState p;
    p.r23 = vertical_scroll();

    // Live vehicle trace: C09B=$7E displays R2=$31/R5=$F7, then the
    // coarse tick increments C09B to $7F and displays R2=$30/R5=$E7.
    // $6E47/$6F43 patches the *other* (next/inactive) raster program.
    const bool active_page31 = (c09b_ & 1u) == 0u;
    p.r2 = active_page31 ? 0x31u : 0x30u;
    p.r5 = active_page31 ? 0xf7u : 0xe7u;
    p.lower_r5 = active_page31 ? 0xffu : 0xefu;

    // $6F58-$6F61 with C0EB=0 (the stage-0 path):
    //   R18 = ((C0BB & 7) - 8) & 15
    // The raster program is built before the position integrator, while the
    // native stream object already contains the newly-integrated X. Rewind one
    // coarse velocity step to obtain the exact C0BB observed by $6F43.
    const int previous_x = int(world_x()) - int(x_vel_fp_ / 256);
    const unsigned c0bb=object_raster_anchor_?anchor_c0bb_:unsigned(previous_x&7);
    p.r18 = std::uint8_t(((c0bb & 7u) - 8u) & 15u);

    // The same routine patches the next line interrupt. The two programs use
    // different fixed offsets: $6C for R2=$30, $8C for R2=$31. At A31A this
    // reproduces the captured R23=$05, R2=$31, R19=$91 tuple exactly.
    p.r19 = std::uint8_t(p.r23 + (active_page31 ? 0x8cu : 0x6cu));
    return p;
}

std::array<std::uint8_t, 24u * 32u> Stage0BackgroundStream::compose_d988_raw() const {
    std::array<std::uint8_t, 24u * 32u> out{};
    for (unsigned y = 0; y < 24u; ++y)
        for (unsigned x = 0; x < 32u; ++x)
            out[y * 32u + x] = view_tile(x, y);
    return out;
}

void Stage0BackgroundStream::apply_fast_ground_phase(
        std::array<std::uint8_t,24u*32u>& out,bool alternate,
        std::uint8_t phase,std::uint8_t row_offset) const {
    if(stage_index_ || row_offset>=3u) return;
    const auto fixed=rom_.bank(0);
    const unsigned table=alternate?0x1e6bu:0x1e4bu;
    for(unsigned line=0;line<2u;++line) {
        const unsigned row=21u+unsigned(row_offset)+line;
        if(row>=24u) continue;
        const unsigned src=table+line*16u+(unsigned(phase)&7u);
        if(src+7u>=fixed.size()) return;
        for(unsigned x=0;x<32u;++x) out[row*32u+x]=fixed[src+(x&7u)];
    }
}

void Stage0BackgroundStream::apply_fast_ground(
        std::array<std::uint8_t, 24u * 32u>& out, bool alternate) const {
    // Fixed-bank $5DD8-$5E3C. Keep phase/row selection factored out so the
    // native renderer can present the previous coarse graphics phase for the
    // first subframe while logic already owns the new state.
    const auto ca1b=std::uint8_t(ca1a()>>8u);
    const auto ca1d=std::uint8_t(ca1c()>>8u);
    apply_fast_ground_phase(out,alternate,
        std::uint8_t((unsigned(ca3a_)+unsigned(ca1d))&7u),
        std::uint8_t(0u-ca1b));
}

void Stage0BackgroundStream::apply_d988_parallax_phase(
        std::array<std::uint8_t, 24u * 32u>& out, std::uint16_t phase) const {
    // Bank09 $6EBC-$6F0D. H selects the display column and L selects one
    // of eight pre-shifted star tiles. Stage 1 uses $C6..$CD; Stage 3 uses
    // the equivalent $58..$5F family from its own graphics context.
    if(stage_index_!=0u && stage_index_!=2u) return;
    // Stage-3 FF14 calls $4E73 (C0D4=1). $6E9C then stops inserting
    // $58..$5F stars. gated_ is the native equivalent of that encounter latch.
    if(stage_index_==2u && gated_) return;
    const auto h=std::uint8_t(phase>>8u);
    const auto base=std::uint8_t(stage_index_==2u?0x5fu:0xcdu);
    const auto l=std::uint8_t(base-((phase&0xffu)>>5u));
    for (unsigned y = 0; y < 24u; ++y) {
        const unsigned c0=(unsigned(e800_[y])+h)&31u;
        const unsigned c1=(unsigned(e800_[y+1u])+h+13u)&31u;
        auto& a=out[y*32u+c0]; if(a==0u) a=l;
        auto& b=out[y*32u+c1]; if(b==0u) b=l;
    }
}
void Stage0BackgroundStream::apply_d988_parallax(
        std::array<std::uint8_t, 24u * 32u>& out) const {
    const auto base=std::uint8_t(stage_index_==2u?0x5fu:0xcdu);
    apply_d988_parallax_phase(out,
        std::uint16_t((std::uint16_t(parallax_h_)<<8u)|
                      (std::uint16_t(base-parallax_l_)<<5u)));
}

std::array<std::uint8_t, 24u * 32u> Stage0BackgroundStream::compose_d988_base() const {
    auto out = compose_d988_raw();
    apply_d988_parallax(out);
    return out;
}

std::array<std::uint8_t,24u> Stage0BackgroundStream::compose_right_edge(bool include_stars) const {
    std::array<std::uint8_t,24u> out{};
    // The streamer maintains logical column 32 one tile ahead in the ring,
    // so fine-scroll can expose it directly without reading stale ring data.
    for(unsigned y=0;y<24u;++y) out[y]=view_tile(32u,y);

    if(stage_index_) return out;

    // Same $5DD8 fast-ground composition as D988, evaluated at x=32.
    const auto ca1b=std::uint8_t(ca1a()>>8u);
    const unsigned row_offset=std::uint8_t(0u-ca1b);
    if(row_offset<3u) {
        const auto ca1d=std::uint8_t(ca1c()>>8u);
        const unsigned phase=(unsigned(ca3a_)+unsigned(ca1d))&7u;
        const auto fixed=rom_.bank(0);
        const unsigned table=fast_ground_alternate()?0x1e6bu:0x1e4bu;
        for(unsigned line=0;line<2u;++line) {
            const unsigned row=21u+row_offset+line;
            if(row<24u) out[row]=fixed[table+line*16u+phase];
        }
    }

    // $6EE7 stars are modulo-32 display columns. Column 32 is the successor
    // of column31, so a star at logical column0 repeats here for interpolation.
    for(unsigned y=0;include_stars && y<24u;++y) if(out[y]==0u) {
        const unsigned c0=(unsigned(e800_[y])+parallax_h_)&31u;
        const unsigned c1=(unsigned(e800_[y+1u])+parallax_h_+13u)&31u;
        if(c0==0u || c1==0u) out[y]=parallax_l_;
    }
    return out;
}

std::array<std::uint8_t,24u> Stage0BackgroundStream::compose_left_edge() const {
    std::array<std::uint8_t,24u> out{};
    for(unsigned y=0;y<24u;++y) out[y]=view_tile(unsigned(-1),y);
    if(stage_index_) return out;
    const unsigned row_offset=std::uint8_t(0u-std::uint8_t(ca1a()>>8u));
    const unsigned phase=(ca3a_+(ca1c()>>8u))&7u;
    const auto fixed=rom_.bank(0);
    const unsigned table=fast_ground_alternate()?0x1e6bu:0x1e4bu;
    if(row_offset<3u) for(unsigned line=0;line<2u;++line)
        if(21u+row_offset+line<24u) out[21u+row_offset+line]=fixed[table+line*16u+phase+7u];
    return out;
}

unsigned Stage0BackgroundStream::ring_col() const noexcept {
    // The raster program and D988 source window are built before the position
    // integrator. presentation_state() already rewinds one coarse velocity
    // step for R18; the tile-window must use the same pre-integrated X.
    // Otherwise the 8px ring-column carry happens one logic tick before the
    // fine-scroll wraps (e.g. 1902->1904), producing a whole-screen jerk.
    const int previous_x=int(world_x())-int(x_vel_fp_/256);
    return unsigned(floor_div8(previous_x)) & 63u;
}

unsigned Stage0BackgroundStream::ring_row() const noexcept {
    return unsigned(floor_div8(world_y())) & 31u;
}

void Stage0BackgroundStream::put(int col, int row, std::uint8_t tile) noexcept {
    const unsigned c = unsigned(col) & 63u;
    const unsigned r = unsigned(row) & 31u;
    ring_[r * 64u + c] = tile;
}
std::uint8_t Stage0BackgroundStream::tile(unsigned x, unsigned y) const noexcept {
    const unsigned c = (ring_col() + x) & 63u;
    const unsigned r = (ring_row() + y) & 31u;
    return ring_[r * 64u + c];
}
std::uint8_t Stage0BackgroundStream::view_tile(unsigned x, unsigned y) const noexcept {
    // Original $7755/$4E4A copies from the coarse camera ring column.
    // Exact A288 E000 ring and D988 captures validate this source column.
    const unsigned c = (ring_col() + x) & 63u;
    const unsigned r = (ring_row() + y) & 31u;
    if(x==32u && (mode_==0u || mode_==2u) && overscan_valid_[r*64u+c])
        return overscan_[r*64u+c];
    return ring_[r * 64u + c];
}

bool Stage0BackgroundStream::write_object_tile(std::uint16_t x_fixed,
                                               std::uint16_t y_fixed,
                                               std::uint8_t tile) noexcept {
    // Fixed $76D0 uses only the low byte of CA1A/CA1C. Their carry into the
    // object's high coordinate selects the logical 32x24 cell; $76F1 clips
    // before $4E3A maps it through integrated C0CC/C0CD into E000.
    const auto ax=std::uint16_t(x_fixed+std::uint8_t(ca1c()));
    const auto ay=std::uint16_t(y_fixed+std::uint8_t(ca1a()));
    const unsigned x=ax>>8u,y=ay>>8u;
    if(x>=0x20u || y>=0x18u) return false;
    const unsigned c=(unsigned(floor_div8(int(world_x())))+x)&63u;
    const unsigned r=(unsigned(floor_div8(world_y()))+y)&31u;
    ring_[r*64u+c]=tile;
    return true;
}

void Stage0BackgroundStream::advance_trigger_segment() noexcept {
    // Original $78F0: keep the high nibble of CA35, advance it by $10,
    // and clear the low byte. This yields $11xx->$2000->$3000...
    const unsigned hi = ((trigger_cursor_ >> 8u) & 0xf0u) + 0x10u;
    trigger_cursor_ = std::uint16_t((hi & 0xffu) << 8u);
}

void Stage0BackgroundStream::apply_preset(unsigned preset) {
    const auto old_x_vel = x_vel_fp_;
    const auto bank = rom_.bank(9);
    const std::size_t o = (0x78ffu - 0x6000u) + preset * 12u;
    if (o + 12u > bank.size()) return;
    auto s16 = [&](unsigned n) {
        return std::int16_t(std::uint16_t(bank[o+n]) |
                            (std::uint16_t(bank[o+n+1]) << 8));
    };
    y_vel_fp_ = std::int32_t(s16(0));
    x_vel_fp_ = std::int32_t(s16(2));
    phase_step_ = std::uint16_t(bank[o+4]) | (std::uint16_t(bank[o+5]) << 8);
    phase_accum_ = std::uint16_t(bank[o+6]) | (std::uint16_t(bank[o+7]) << 8);
    mode_ = bank[o+8];
    c0d5_ = bank[o+10];
    // $78E7 resets C0DA whenever a ROM scroll preset is loaded.
    if(stage_index_) macro_phase_=0;

    // $A2C3 live trace: changing preset/velocity does not itself advance
    // C0E8.  The old $3E40 value survives the mode switch and becomes
    // $3E20 only at the following normal $6E8A parallax update.
    (void)old_x_vel;
}

bool Stage0BackgroundStream::prepare_data() {
    const auto stream = rom_.bank(27);
    while (source_ >= 0xA000u && source_ < 0xC000u) {
        std::size_t p = source_ - 0xA000u;
        if (p >= stream.size()) return false;
        if (stream[p] == 0xfe) { ++source_; continue; }
        if (stream[p] != 0xff) return true;
        if (++p >= stream.size()) return false;
        const auto cmd = stream[p++];
        source_ = std::uint16_t(0xA000u + p);
        if (cmd < 0x10u) {
            apply_preset(cmd);
            continue;
        }
        if (cmd == 0x16u) {
            gated_ = true;
            return false;
        }
        // $1D handler at $7A80: on the stage-0 reference path CA33 is
        // zero here. The handler has already advanced C0CA past the command
        // (to $A336), then returns carry so $7BED aborts this stream event.
        // The first $A336 column is therefore written on the next event.
        if (cmd == 0x1du) return false;
        // Commands $14/$1B/$1E all call the original $78F0 scene-trigger
        // advance routine. Stage 0 uses $1B at the $20/$30/$40 scene
        // boundaries and $1E to enter the $5000 fight gate.
        if (cmd == 0x14u || cmd == 0x1bu || cmd == 0x1eu)
            advance_trigger_segment();
        if(cmd==0x1eu && stage_index_==0u) x_fp_=4352<<8;
        if(cmd==0x14u && stage_index_) {
            // $79FD/$7BD6 clears the scroll velocity and arms the next
            // encounter. The bytes after A94A belong to the following stage.
            x_vel_fp_=y_vel_fp_=0;gated_=true;return false;
        }
        // Stage 3's end sequence is FF13 A94A, FF15, FF18. $4CE0 loads
        // the A94A target palette (indices 0,1,2,3,4,5,9,11,12 -> black) and
        // arms EF60=$80. $6E44/$4D6E then performs the 32-video-frame fade.
        // FF15 rewinds itself while EF60 is nonzero and loads scroll preset 7
        // (zero X/Y velocity), so the cave remains stationary while it fades.
        if(cmd==0x15u && stage_index_==2u && palette_fade_ticks_) {
            source_=std::uint16_t(source_-2u);
            apply_preset(7u);
            return false;
        }

        // $18 calls $6E2D/$6E0B on the original Z80: clear the complete
        // E000-E7FF 32x64 tile ring and its D988 composition buffer.
        // In Stage 3 this is reached only after the FF15 palette fade above
        // has completed, so the cave has already faded to black before clear.
        if (cmd == 0x18u) {ring_.fill(0);if(stage_index_==2u) palette_fade_active_=false;}

        const unsigned n = payload_size(cmd);
        const auto po = source_ >= 0xA000u ? std::size_t(source_ - 0xA000u) : stream.size();

        // $10 branches only after CE4C records destruction of the $56 tower.
        // Without that flag the three alternative columns remain in the route.
        if (cmd == 0x10u && n == 2u && po + 1u < stream.size()) {
            const std::uint16_t target = std::uint16_t(stream[po]) |
                                         (std::uint16_t(stream[po + 1u]) << 8);
            source_ = tower_destroyed_ ? target : std::uint16_t(source_+2u);
            continue;
        }

        // $11 selects the raster/scroll scenery context. Its low payload
        // byte is the 0..6 context ID used by the matching R4/R10 setup.
        if (cmd == 0x11u && n >= 1u && po < stream.size()) {
            graphics_set_ = stream[po];
            // $79C2-$79D9: cfg values 0..6 are also written to C0B5.
            // $5DC8-$5DD5 selects the alternate fast-ground table when the
            // current/pending raster context reaches 6.
            if (graphics_set_ < 7u) c0b5_ = graphics_set_;
            // Original $79AE-$79BD: byte 2 replaces the coarse five bits of
            // C0D2 while preserving the fine 3-bit vertical scroll phase.
            if (n >= 2u && po + 1u < stream.size())
                c0d2_ = std::uint8_t((stream[po + 1u] & 0xf8u) | (c0d2_ & 7u));
        }

        // $13/$1C feed a palette target script to the fixed-bank palette
        // interpolator.  Stage 0 references two such ROM scripts.
        if ((cmd == 0x13u || cmd == 0x1cu) && n == 2u && po + 1u < stream.size()) {
            const std::uint16_t ptr = std::uint16_t(stream[po]) |
                                      (std::uint16_t(stream[po + 1u]) << 8);
            if (ptr == 0xA43Au) palette_set_ = 1;
            else if (ptr == 0xA44Du) palette_set_ = 2;
            else if(stage_index_==1u && ptr==0xA94Au) palette_set_=1;
            else if(stage_index_==1u && ptr==0xA95Du) palette_set_=2;
            else if(stage_index_==2u && ptr==0xA94Au) {
                // Original A94A is not an alternate static palette. It is a
                // $4CE0 transition script whose nine entries all target RGB
                // 000, followed by FE. EF60 then counts 32 display frames.
                palette_fade_ticks_=32u;palette_fade_active_=true;
            }
        }

        // $12 is the real transition into the two-source mode-2 streamer.
        // Its 36-byte inline block is skipped, then C0CE becomes 2 while the
        // +2px horizontal camera continues.  At the exact $A288 entry the
        // live state is B6=$0000, B8=$0200, C0DA=1, C0D5=1.
        if (cmd == 0x12u) {
            source_ = std::uint16_t(source_ + n);
            mode_ = 2u;
            if(stage_index_==0u) {
                phase_accum_ = 0x0000u;
                phase_step_ = 0x0200u;
                // $12 is parsed inside the stream event that immediately writes
                // phase 0 of $A288. C0DA is zero before that write and becomes 1
                // afterwards (the captured $A288 state). Starting at 1 here made
                // every mode-2 record advance one 8-pixel phase too early.
                macro_phase_ = 0u;
                c0d5_ = 0x01u;
            }
            continue;
        }
        source_ = std::uint16_t(source_ + n);
    }
    return false;
}

void Stage0BackgroundStream::write_vertical(std::uint16_t source, int col_offset) {
    const auto stream = rom_.bank(27);
    if (source < 0xA000u || source + 6u > 0xC000u) return;
    const unsigned p = source - 0xA000u;
    const unsigned phase = (world_x() & 0x18u) >> 3u;
    const int col = floor_div8(int(world_x())) + col_offset;
    const int row = int(ring_row());
    for (unsigned block = 0; block < 6u; ++block) {
        const auto macro = stream[p + block];
        const unsigned base = unsigned(macro) * 16u + phase;
        for (unsigned r = 0; r < 4u; ++r)
            put(col, row + int(block * 4u + r), rom_.bank(25u+(metatile_base_+base+r*4u)/Rom::BankSize)[(metatile_base_+base+r*4u)%Rom::BankSize]);
    }
}
void Stage0BackgroundStream::write_horizontal(std::uint16_t source, int col_offset,
                                              int row_offset, unsigned row_phase,unsigned blocks) {
    const auto stream = rom_.bank(27);
    if (source < 0xA000u || source + blocks > 0xC000u) return;
    unsigned p = source - 0xA000u;
    int col = floor_div8(int(world_x())) + col_offset;
    const int row = int(ring_row()) + row_offset;
    for (unsigned block = 0; block < blocks; ++block) {
        const auto macro = stream[p++];
        const unsigned base = unsigned(macro) * 16u + row_phase;
        for (unsigned c = 0; c < 4u; ++c)
            put(col++, row, rom_.bank(25u+(metatile_base_+base+c)/Rom::BankSize)[(metatile_base_+base+c)%Rom::BankSize]);
    }
}

void Stage0BackgroundStream::prefetch_successor_column() {
    // Native overscan. A real stream event happens every 8 pixels, but the
    // D988 window's ring_col carry occurs 2 pixels later. Between two stream
    // events the exposed logical column 32 can therefore move from physical
    // ring+32 to ring+33 before the Z80 would have decoded another column.
    // Keep BOTH future physical cells in a separate overscan cache. Writing
    // predictions into the canonical ring corrupted the later diagonal rows.
    if (suppress_prefetch_ || gated_ || (mode_ != 0u && mode_ != 2u) || x_vel_fp_ <= 0)
        return;
    overscan_valid_.fill(false);
    Stage0BackgroundStream future(*this);
    future.suppress_prefetch_ = true;
    const int dst_row = int(ring_row());
    const unsigned base_x = world_x();
    for (unsigned ahead = 1; ahead <= 2; ++ahead) {
        const unsigned target = base_x + ahead * 8u;
        unsigned guard = 16u;
        while (!future.gated_ && future.world_x() < target && guard--)
            future.step_15hz();
        if (future.world_x() < target) break;
        const int dst_col = int(ring_col()) + 31 + int(ahead);
        for (unsigned y = 0; y < 24u; ++y) {
            const unsigned i=((unsigned(dst_row)+y)&31u)*64u+(unsigned(dst_col)&63u);
            overscan_[i]=future.view_tile(31u,y);overscan_valid_[i]=true;
        }
    }
}

void Stage0BackgroundStream::stream_phase() {
    // $7AEA-$7B08 can execute sub_7C08 twice in one stream event. After the
    // fourth phase of a record, an FE separator causes: skip FE, parse the
    // following commands, then immediately render phase 0 of the new record.
    // A plain FF command without FE is *not* consumed until the next event.
    const auto bytes = rom_.bank(27);
    bool second_pass = false;
    for (unsigned pass = 0; pass < 2u; ++pass) {
        if (!prepare_data()) return;
        ++trigger_cursor_; // original $7C3E -> $7C2B, once per sub_7C08 call

        const unsigned yphase = (unsigned(world_y()) & 0x18u) >> 3u;
        unsigned advance = 0;
        switch (mode_) {
        case 0:
            write_vertical(source_, 31); advance = 6; break;
        case 1:
            write_horizontal(source_, -int(yphase) - 1, 24, yphase * 4u);
            advance = 15; break;
        case 2:
            write_vertical(source_, -9);
            write_vertical(std::uint16_t(source_ - 0x24u), 31);
            advance = 6; break;
        case 3: // bank09 $7E1C, eight metatiles at row +24
            write_horizontal(source_,0,24,yphase*4u,8);advance=8;break;
        case 4: {
            static constexpr int kColOffset[4] = {0, -3, -2, -1};
            static constexpr unsigned kRowPhase[4] = {12, 0, 4, 8};
            write_horizontal(source_, kColOffset[yphase], -1, kRowPhase[yphase]);
            advance = 15; break;
        }
        case 5:
            // Bank09 $7E3F. Down-left diagonal counterpart of mode 1:
            // DE passed to $7E55 is {D=yphase-$1C,E=$18}; $7E55 itself
            // selects definition phase yphase*4. This writes the entering
            // bottom row while the camera moves +Y/-X.
            write_horizontal(source_,int(yphase)-28,24,yphase*4u);
            advance=15;break;
        case 6: case 7: {
            // Bank09 $7ECE->$7EFC. Stage 4 switches to a pure upward
            // streamer at X=$03F8: eight metatiles (32 tiles) are written
            // into the row immediately above the viewport. The source advances
            // by eight bytes after the four C0DA phases. $7F04-$7F0C selects
            // definition phases 12,0,4,8 for Y coarse phases 0..3.
            static constexpr unsigned kRowPhase[4] = {12,0,4,8};
            write_horizontal(source_,0,-1,kRowPhase[yphase],8);
            advance=8;break;
        }
        default: break;
        }

        macro_phase_ = std::uint8_t((macro_phase_ + 1u) & 3u);
        second_pass = false;
        if (macro_phase_ == 0u && advance != 0u) {
            source_ = std::uint16_t(source_ + advance);
            const std::size_t off = source_ >= 0xA000u ? source_ - 0xA000u : bytes.size();
            if (pass == 0u && off < bytes.size() && bytes[off] == 0xfeu) {
                ++source_; // caller $7AFD-$7AFE
                if (!prepare_data()) return; // original $7B01 command parser
                second_pass = true;          // original second call at $7B05
            }
        }
        if (!second_pass) break;
    }
    prefetch_successor_column();
}

void Stage0BackgroundStream::step_parallax() {
    if(stage_index_!=0u && stage_index_!=2u && stage_index_!=7u) return;
    if(stage_index_==2u && gated_) return; // $6E9C: C0D4 stops Stage-3 stars at the boss gate.
    // Bank09 $6E44 selects two distinct star paths by CA10:
    //   Stage 1 (CA10=0): $6E8A, DE=+$0020, base tile $CD.
    //   Stage 3 (CA10=2): $6E97, DE=-$0020, base tile $5F.
    // Stage 8 retains the already-validated native phase path. CA12/CA14 are
    // the negated camera velocities divided by 8, in signed 8.8 tile units.
    const auto vy = std::int16_t(y_vel_fp_);
    const auto vx = std::int16_t(x_vel_fp_);
    const auto ca12s = asr3(std::int16_t(-vy));
    const auto ca14s = asr3(std::int16_t(-vx));

    const auto old_e6 = c0e6_;
    c0e6_ = std::uint16_t(c0e6_ - std::uint16_t(ca12s));
    if ((old_e6 >> 8u) != (c0e6_ >> 8u) && y_vel_fp_ != 0) {
        if (y_vel_fp_ < 0) {
            // $6F27 LDDR: rotate right, last row becomes first.
            const auto last = e800_[23];
            for (unsigned i = 23u; i != 0u; --i) e800_[i] = e800_[i - 1u];
            e800_[0] = last;
        } else {
            // $6F35 LDIR: rotate left, first row becomes last.
            const auto first = e800_[0];
            for (unsigned i = 0; i < 23u; ++i) e800_[i] = e800_[i + 1u];
            e800_[23] = first;
        }
    }

    const int star_step=stage_index_==2u ? -0x20 : 0x20;
    const std::uint8_t star_base=stage_index_==2u ? 0x5fu : 0xcdu;
    c0e8_ = std::uint16_t(c0e8_ + std::uint16_t(ca14s) + std::uint16_t(star_step));
    const auto t = std::uint16_t(c0e8_ + (ca1c() & 0x00ffu));
    parallax_h_ = std::uint8_t(t >> 8u);
    parallax_l_ = std::uint8_t(star_base - ((t & 0xffu) >> 5u));
}

void Stage0BackgroundStream::step_60hz() {
    frame_service_seen_=true;
    if(palette_fade_ticks_) --palette_fade_ticks_;
}

void Stage0BackgroundStream::step_15hz() {
    // Background-only regression/probe users do not have a 60-Hz session
    // clock. Preserve the same 32-frame EF60 duration by consuming four
    // video-frame steps per coarse tick only when no frame service occurred.
    if(palette_fade_ticks_ && !frame_service_seen_)
        palette_fade_ticks_=std::uint8_t(palette_fade_ticks_>4u?palette_fade_ticks_-4u:0u);
    frame_service_seen_=false;
    if (gated_) {
        // The streamer stops at $16; the $65 animation/parallax controller
        // keeps running during the boss fight, including the $3D tread phases.
        ca3a_=std::uint8_t((ca3a_+1u)&7u);step_parallax();return;
    }
    ++c09b_;
    // Fixed-bank $5DDB increments this in the same coarse scene handler that
    // rebuilds the lower-ground strip. Existing live D988 write traces show
    // about 70-75 ms between updates (~15 Hz), not 60 Hz.
    if(!stage_index_) ca3a_ = std::uint8_t((ca3a_ + 1u) & 7u);
    const std::uint8_t old_hi = std::uint8_t(phase_accum_ >> 8);
    phase_accum_ = std::uint16_t(phase_accum_ + phase_step_);
    const std::uint8_t new_hi = std::uint8_t(phase_accum_ >> 8);
    x_fp_ += x_vel_fp_;
    const std::uint8_t old_y_mid = std::uint8_t((std::uint32_t(y_fp_) >> 8u) & 0xffu);
    y_fp_ += y_vel_fp_;
    const std::uint8_t new_y_mid = std::uint8_t((std::uint32_t(y_fp_) >> 8u) & 0xffu);
    // Original $7BBB-$7BC0 (C0D1 is zero for the stage-0 presets used here):
    // rotate the D988 upload start by the actual pixel-Y delta.
    c0d2_ = std::uint8_t(c0d2_ + std::uint8_t(new_y_mid - old_y_mid));
    step_parallax();
    if (((old_hi ^ new_hi) & 0x08u) != 0u)
        stream_phase();
}

void Stage0BackgroundStream::seek_world_x(unsigned x) {
    reset();
    if (x <= world_x()) return;
    unsigned guard = 20000;
    while (!gated_ && world_x() < x && guard--)
        step_15hz();
}
}

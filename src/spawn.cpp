#include "spawn.hpp"
#include <stdexcept>
#include <algorithm>

namespace sm {
namespace {
constexpr unsigned kStagePointerTable = 0x93b8u - 0x8000u;
constexpr std::uint16_t kStage0Origin = 0x107eu;
constexpr unsigned kCopiedBytes = 0x600u;

std::uint16_t le16(std::span<const std::uint8_t> b, unsigned p) {
    if (p + 1u >= b.size()) throw std::runtime_error("spawn pointer overflow");
    return std::uint16_t(b[p]) | (std::uint16_t(b[p + 1u]) << 8);
}
}

StageSpawnStream StageSpawnStream::decode_stage0(const Rom& rom, bool include_prelude) {
    auto out=decode_stage(rom,0);
    if(!include_prelude) std::erase_if(out.records_,[](const auto& r){return r.trigger<kStage0Origin;});
    return out;
}
StageSpawnStream StageSpawnStream::decode_stage(const Rom& rom,unsigned stage) {
    if(stage>=9u) throw std::out_of_range("stage spawn index");
    StageSpawnStream out;
    // The stage spawn script is one contiguous CPU window: bank02 at
    // $8000-$9FFF followed by bank03 at $A000-$BFFF. Stage 6 starts at
    // $9F9A and crosses the bank boundary; stages 7-9 start in bank03.
    // Treating every pointer as a bank02 offset made stage 6 terminate on a
    // bogus length and rejected stages 7-9 outright.
    const auto bank2=rom.bank(2),bank3=rom.bank(3);
    std::vector<std::uint8_t> bank;
    bank.reserve(bank2.size()+bank3.size());
    bank.insert(bank.end(),bank2.begin(),bank2.end());
    bank.insert(bank.end(),bank3.begin(),bank3.end());
    const auto cpu = le16(bank, kStagePointerTable+stage*2u);
    if (cpu < 0x8000u || cpu >= 0xc000u)
        throw std::runtime_error("stage spawn pointer outside bank 02/03 window");
    unsigned p = cpu - 0x8000u;
    const unsigned end = std::min<unsigned>(unsigned(bank.size()), p + kCopiedBytes);
    while (p < end && bank[p] != 0) {
        if (p + 4u > end) throw std::runtime_error("truncated spawn record header");
        const auto raw_hi = bank[p];
        const auto trigger = std::uint16_t((unsigned(raw_hi & 0x7fu) << 8) | bank[p + 1u]);
        const auto raw_type = bank[p + 2u];
        const auto control = bank[p + 3u];
        const unsigned len = control & 0x7fu;
        if (len < 4u || p + len > end) throw std::runtime_error("invalid spawn record length");

        SpawnRecord r;
        r.trigger = trigger;
        r.raw_trigger_hi = raw_hi;
        r.raw_type = raw_type;
        r.type = raw_type & 0x7fu;
        r.control = control;
        r.payload.assign(bank.begin() + p + 4u, bank.begin() + p + len);
        r.world_x = trigger>=kStage0Origin?unsigned(trigger - kStage0Origin)*8u:0u;
        out.records_.push_back(std::move(r));
        p += len;
    }
    return out;
}
StageSceneCommand decode_stage_scene_command(const SpawnRecord& r) noexcept {
    if(r.type!=0x5fu || r.payload.empty()) return {};
    if(r.payload[0]==1u && r.payload.size()>=2u)
        return {StageSceneCommandKind::PalettePulse,r.payload[1]!=0u};
    if(r.payload[0]==3u) return {StageSceneCommandKind::ClearObjects,false};
    return {};
}

void StageSpawnStream::reset() noexcept {
    next_ = 0;
    fired_.clear();
}

void StageSpawnStream::skip_before_trigger(std::uint16_t trigger) noexcept {
    fired_.clear();
    next_ = 0;
    while (next_ < records_.size() && records_[next_].trigger < trigger) ++next_;
}

std::span<const SpawnRecord> StageSpawnStream::step_to_world_x(
        unsigned world_x, std::uint16_t trigger_limit) {
    fired_.clear();
    while (next_ < records_.size() &&
           records_[next_].trigger < trigger_limit &&
           records_[next_].world_x <= world_x) {
        fired_.push_back(records_[next_]);
        ++next_;
    }
    return fired_;
}

std::span<const SpawnRecord> StageSpawnStream::step_to_trigger(
        std::uint16_t trigger, bool ca04, std::uint8_t ca19) {
    fired_.clear();
    while (next_ < records_.size() && records_[next_].trigger <= trigger) {
        const auto& r = records_[next_++];
        // Live parser $6264..$6291: trigger bit 7 is gated by CA04, while
        // type bit 7 is only enabled once CA19 reaches 4.
        if (r.trigger_flag() && !ca04) continue;
        if (r.type_flag() && ca19 < 4u) continue;
        fired_.push_back(r);
    }
    return fired_;
}


namespace {
void scroll_stage0_objects(GameState& game, int dx, int dy,const Rom* native_visuals=nullptr) noexcept {
    for (auto& e : game.enemies) {
        // Interactive pickups follow the camera through Stage0Combat, including
        // the pre-anchor part of the level where this scenery helper is idle.
        const bool handler_x_scroll=e.type()==0x2au || e.type()==0x53u;
        if (!e.active() || e.type()==3 || e.type()==0x79u ||
            ((e.flags15() & 0x04u) == 0u && !handler_x_scroll)) continue;
        // Type $79 is the final-boss exception: its bank05 controller owns
        // the measured $2000->$1700 entrance/death X motion at 20 Hz. Applying
        // this generic camera scroll as well double-counts that motion.
        const auto ox = std::int16_t(e.x_fixed());
        const auto oy = std::int16_t(e.y_fixed());
        const int nx = int(ox) - dx;
        const int ny = handler_x_scroll ? int(oy) : int(oy) - dy;
        // The original pool culls scenery only after its complete tile matrix
        // has left the screen. Type $24 is exceptionally wide: the live tank
        // trace still has it active at x=$EF00 (-$1100 in signed 8.8 tile
        // coordinates) and it disappears on the next $40 step to $EEC0.
        // The old generic -$0200 guard therefore removed its visible tracks
        // roughly fifteen tiles too early.
        int left_guard = e.type()==0x56u ? -0x3000 :
            (e.type()==0x47u ? -0x2000 : (e.type()==0x24u ? -0x1100 : (e.type()==0x1fu ? -0x0800 : -0x0200)));
        if(native_visuals) {
            // SDL exposes the complete ROM artwork immediately, including the
            // full aircraft hull. Retain its pool record until that artwork,
            // plus the remaining native interpolation, has left the viewport.
            auto visual=e;
            if(e.type()==0x55u) visual.raw[6]=5;
            int right_extent=0;
            for(const auto& matrix:decode_stage0_tile_visuals(*native_visuals,visual))
                right_extent=std::max(right_extent,(matrix.tile_x_offset+int(matrix.cols))*8);
            if(right_extent) left_guard=std::min(left_guard,-(right_extent+16)*32);
        }
        if (dx > 0 && nx < left_guard && e.type()!=0x53u) { e.clear(); continue; }
        e.set_x_fixed(std::uint16_t(std::int16_t(nx)));
        e.set_y_fixed(std::uint16_t(std::int16_t(ny)));
    }
}
}

void step_stage0_object_scroll_60hz(GameState& game) noexcept {
    // Compatibility with the pre-$12 +2px horizontal stage velocity.
    scroll_stage0_objects(game, 0x10, 0);
}

void step_stage0_object_scroll_60hz(GameState& game, std::int32_t x_velocity_fp,
                                    std::int32_t y_velocity_fp) noexcept {
    // Object positions are signed 8.8 TILE coordinates. A camera velocity in
    // pixel 8.8 therefore contributes velocity/8 per stage tick. Spread that
    // over four 60-Hz presentation frames: /32 in object fixed units.
    const int dx = int(std::int16_t(x_velocity_fp)) / 32;
    const int dy = int(std::int16_t(y_velocity_fp)) / 32;
    scroll_stage0_objects(game, dx, dy);
}

void step_stage0_object_scroll_15hz(GameState& game, std::int32_t x_velocity_fp,
                                    std::int32_t y_velocity_fp,const Rom* native_visuals) noexcept {
    // Original scenery/object tick: camera velocity is pixel 8.8, while object
    // coordinates are tile 8.8, so one complete logic tick contributes /8.
    const int dx = int(std::int16_t(x_velocity_fp)) / 8;
    const int dy = int(std::int16_t(y_velocity_fp)) / 8;
    scroll_stage0_objects(game, dx, dy,native_visuals);
}

namespace {
std::uint8_t stage0_direction8(const GameState& game, const Entity64& e) noexcept {
    // Bank-04 $6B94-$6BE5. Differences are encoded as sign|magnitude, then
    // C selects one of eight octants. Only the high position bytes participate.
    auto signed_mag = [](std::uint8_t target, std::uint8_t object) {
        const int d = int(target) - int(object);
        const unsigned mag = unsigned(d < 0 ? -d : d) & 0x7fu;
        return std::pair<unsigned,bool>{mag, d < 0};
    };
    const auto [dx, left] = signed_mag(game.player.raw[0x0a], e.raw[0x0a]);
    const auto [dy, above] = signed_mag(game.player.raw[0x08], e.raw[0x08]);
    std::uint8_t c = left ? (above ? 0u : 6u) : (above ? 2u : 4u);
    // $6BCE halves |dx| before comparing it with |dy|. The octant is
    // incremented when the dominant axis crosses the same-sign/opp-sign rule.
    const unsigned half_dx = dx >> 1u;
    const bool same_sign = left == above;
    if ((dy >= half_dx && same_sign) || (dy < half_dx && !same_sign)) ++c;
    return std::uint8_t(c & 7u);
}
}

void step_stage0_object_logic_15hz(GameState& game) noexcept {
    static constexpr std::array<std::uint8_t,8> kType20Normal{0,1,2,3,3,3,0,0};
    static constexpr std::array<std::uint8_t,8> kType20Alt{4,4,7,7,7,6,5,4};
    for (unsigned i = 0; i < game.enemies.size(); ++i) {
        auto& e = game.enemies[i];
        if (!e.active()) continue;
        if (e.type() == 0x56u && e.state() == 1u)
            e.raw[0x06] = std::uint8_t((e.raw[0x06] + 1u) & 3u); // $BF3F/$6AC2, B=4
        if ((e.type() == 0x20u || e.type()==0x29u) && e.state() == 1u &&
            ((unsigned(game.logic_phase) + i + 1u) & 7u) == 0u) {
            // Bank-05 $8304-$8326: CA02+slot-id staggers this relatively
            // expensive player-vector update over eight object-logic ticks.
            const auto dir = stage0_direction8(game, e);
            e.raw[0x06] = e.raw[0x20] ? kType20Alt[dir] : kType20Normal[dir];
        }
    }
    game.logic_phase = std::uint8_t((game.logic_phase + 1u) & 7u);
}

void step_stage0_objects(GameState& game,const Rom* native_visuals) noexcept {
    // Compatibility helper used by deterministic seek/tests: one complete
    // original scenery tick. Interactive preview uses the split 60/15-Hz APIs.
    scroll_stage0_objects(game, 0x40, 0,native_visuals);
    step_stage0_object_logic_15hz(game);
}

bool decode_stage0_sprite_visual(const Rom& rom, const Screen4Snapshot& video,
                                 const Entity64& entity, Stage0SpriteVisual& out) {
    out = {};
    if (!entity.active()) return false;
    if ((entity.flags15() & 1u) == 0u) return false;
    // The vehicle section reuses the same one-component bank-08 sprite-frame
    // format as type $1F. Types $20/$22/$24/$26 use the global pattern block
    // at base 0, so base==0 is valid for them rather than meaning "no sprite".
    const auto type = entity.type();
    const bool global_base = type == 0x20u || type == 0x29u || type == 0x22u ||
                             type == 0x24u || type == 0x26u;
    const bool supported_sprite = type == 0x1fu || type == 0x27u || type == 0x2du ||
                                  type == 0x74u || global_base;
    if (!supported_sprite) return false;

    const auto type_table = rom.bank(7);
    const unsigned type_entry = (0x8496u - 0x8000u) + (unsigned(entity.type()) - 1u) * 2u;
    const auto list_cpu = le16(type_table, type_entry);
    if (list_cpu < 0xa000u || list_cpu >= 0xc000u)
        return false;

    const auto frames = rom.bank(8);
    const unsigned list_off = list_cpu - 0xa000u;
    const unsigned frame = entity.raw[0x05];
    const unsigned frame_entry = list_off + frame * 2u;
    const auto def_cpu = le16(frames, frame_entry);
    if (def_cpu < 0xa000u || def_cpu + 6u >= 0xc000u)
        return false;
    const unsigned d = def_cpu - 0xa000u;
    if (frames[d] != 1u) return false;

    const auto pattern_offset = frames[d + 1u];
    const auto x_offset = frames[d + 2u];
    const auto y_offset = frames[d + 3u];
    const auto color0 = frames[d + 4u];
    const auto color1 = frames[d + 5u];
    const auto layer_mask = frames[d + 6u];
    const auto base = video.object_pattern_base[entity.type()];
    if (base == 0 && !global_base) return false;

    // The frame data stores Y offset first, X offset second. $+07/$+08
    // is object Y and $+09/$+0A is object X.
    // Level-1 SAT assembler keeps HL'=$0738: H' is added to X and L'
    // to Y before the attributes are uploaded to the V9938.
    out.y = int(std::int16_t(entity.y_fixed())) / 32 + int(x_offset) + 0x38;
    // Live SAT captures confirm that type $1F uses the same +7 origin as
    // every other stage-0 sprite; its aiming offsets come entirely from ROM.
    out.x = int(std::int16_t(entity.x_fixed())) / 32 + int(y_offset) + 0x07;
    const auto colors = rom.bank(9);
    auto add_layer = [&](std::uint8_t pattern, std::uint8_t color_index) {
        if (out.layer_count >= out.layers.size()) return;
        auto& layer = out.layers[out.layer_count++];
        layer.pattern = pattern;
        const unsigned c = unsigned(color_index) * 16u;
        if (c + 16u > colors.size()) throw std::runtime_error("sprite color table overflow");
        for (unsigned i = 0; i < 16u; ++i) layer.color[i] = colors[c + i];
    };
    if (layer_mask & 1u) add_layer(std::uint8_t(base + pattern_offset), color0);
    if (layer_mask & 2u) add_layer(std::uint8_t(base + pattern_offset + 4u), color1);
    return out.layer_count != 0;
}

namespace {
bool decode_stage0_tile_def(const Rom& rom, const Entity64& entity,
                            std::uint16_t def_cpu, int place_x, int place_y,
                            Stage0TileVisual& out) {
    out = {};
    if (def_cpu < 0x8000u || def_cpu >= 0xc000u) return false;
    const bool high = def_cpu >= 0xa000u;
    const auto bank = rom.bank(high ? 8 : 7);
    const unsigned base = high ? 0xa000u : 0x8000u;
    const unsigned d = unsigned(def_cpu - base);
    if (d + 4u > bank.size()) return false;
    const int yoff = int(static_cast<std::int8_t>(bank[d]));
    const int xoff = int(static_cast<std::int8_t>(bank[d + 1u]));
    out.tile_y_offset = yoff + place_y;
    out.tile_x_offset = xoff + place_x;
    out.rows = bank[d + 2u];
    out.cols = bank[d + 3u];
    const unsigned count = unsigned(out.rows) * unsigned(out.cols);
    if (!count || count > 256u || d + 4u + count > bank.size()) return false;
    out.x = (int(std::int16_t(entity.x_fixed())) >> 5) + out.tile_x_offset * 8;
    out.y = (int(std::int16_t(entity.y_fixed())) >> 5) + out.tile_y_offset * 8;
    out.tiles.assign(bank.begin() + d + 4u, bank.begin() + d + 4u + count);
    return true;
}

bool decode_stage0_tile_frame(const Rom& rom, const Entity64& entity,
                              unsigned frame, Stage0TileVisual& out) {
    out = {};
    const auto type_bank = rom.bank(7);
    const unsigned type_entry = (0x8596u - 0x8000u)
                              + (unsigned(entity.type()) - 1u) * 2u;
    if (type_entry + 1u >= type_bank.size()) return false;
    const auto list_cpu = le16(type_bank, type_entry);
    if (list_cpu < 0x8000u || list_cpu >= 0xc000u) return false;
    const bool high_list=list_cpu>=0xa000u;
    const auto list_bank=rom.bank(high_list?8:7);
    const unsigned list_base=high_list?0xa000u:0x8000u;
    const unsigned frame_entry=unsigned(list_cpu-list_base)+frame*2u;
    if(frame_entry+1u>=list_bank.size()) return false;
    const auto def_cpu=le16(list_bank,frame_entry);
    if(def_cpu<0x8000u || def_cpu>=0xc000u) return false;
    return decode_stage0_tile_def(rom, entity, def_cpu, 0, 0, out);
}
}

bool decode_stage0_tile_visual(const Rom& rom, const Entity64& entity,
                               Stage0TileVisual& out) {
    out = {};
    if (!entity.active()) return false;
    if (entity.type() != 0x24u && (entity.flags15() & 0x02u) == 0u) return false;
    return decode_stage0_tile_frame(rom, entity, entity.raw[0x06], out);
}

std::vector<Stage0TileVisual> decode_stage0_tile_visuals(const Rom& rom,
                                                         const Entity64& entity) {
    std::vector<Stage0TileVisual> out;
    if (!entity.active()) return out;

    if (entity.type() == 0x64u) {
        // Bank06 $A2D8/$A494: the gate/tower is a composed tile actor.
        // +06 selects one of seven scripts; each command places a matrix
        // from the normal type-$64 matrix list at a signed tile offset.
        // These are the exact exported ROM scripts, not a single snapshot.
        struct Cmd { std::uint8_t frame; std::int8_t y, x; };
        static constexpr std::array<std::array<Cmd,4>,7> k = {{
            {{{0,0,0},{10,0,10},{1,0,4},{7,4,-9}}},
            {{{0,0,0},{10,0,10},{7,1,-10},{2,0,3}}},
            {{{0,0,0},{10,0,10},{7,-1,-11},{3,0,2}}},
            {{{0,0,0},{10,0,10},{7,-3,-10},{4,-2,3}}},
            {{{0,0,0},{10,0,10},{7,-6,-9},{5,-5,4}}},
            {{{0,0,0},{10,0,10},{7,-8,-7},{6,-7,6}}},
            {{{0,0,0},{6,-7,6},{7,-8,-7},{0,0,0}}},
        }};
        static constexpr std::array<unsigned,7> count{4,4,4,4,4,4,3};
        const unsigned selector=std::min<unsigned>(entity.raw[0x06],6u);
        for(unsigned i=0;i<count[selector];++i) {
            const auto& c=k[selector][i];
            Stage0TileVisual v;
            if(decode_stage0_tile_frame(rom,entity,c.frame,v)) {
                v.x+=int(c.x)*8; v.y+=int(c.y)*8;
                v.tile_x_offset+=c.x; v.tile_y_offset+=c.y;
                out.push_back(std::move(v));
            }
        }
        return out;
    }

    if (entity.type() == 0x6au) {
        // $9ADE jumps past $7B65 during the post-explosion countdown.
        if(entity.state()==1u) return out;
        // Bank05 $9AD7: destruction animation for the stage-0 tower. The
        // eight selectors map to matrix frames 0,1,2,3,4,2,1,0 and use the
        // exact signed origins exported from the original stamp scripts.
        static constexpr std::array<std::uint8_t,8> frame{0,1,2,3,4,2,1,0};
        static constexpr std::array<std::int8_t,8> oy{3,3,2,0,1,2,3,3};
        static constexpr std::array<std::int8_t,8> ox{2,1,1,0,1,1,1,2};
        const unsigned selector=entity.raw[0x06]&7u;
        Stage0TileVisual v;
        if(decode_stage0_tile_frame(rom,entity,frame[selector],v)) {
            v.x+=int(ox[selector])*8; v.y+=int(oy[selector])*8;
            v.tile_x_offset+=ox[selector]; v.tile_y_offset+=oy[selector];
            out.push_back(std::move(v));
        }
        return out;
    }

    if (entity.type() == 0x69u && entity.state()==1u) {
        // Bank05 $9A98/$9AAD: distributed type-$56 destruction burst.
        // Six selectors point at one-matrix packed scripts: 0,1,2,3,4,2.
        static constexpr std::array<std::uint8_t,6> frame{0,1,2,3,4,2};
        Stage0TileVisual v;
        if(decode_stage0_tile_frame(rom,entity,frame[entity.raw[0x06]%6u],v))
            out.push_back(std::move(v));
        return out;
    }

    if (entity.type() == 0x6bu && entity.state()==0u) {
        // Bank05 $9B38/$9B70: three-frame large-object death compositor.
        // +3E selects a table at $9B8A (default $9BA2); +06 selects one of
        // three packed placement lists. $7B65 then uses the normal type-$6B
        // tile-matrix table at bank07:$8596.
        const auto bank5=rom.bank(5);
        auto b5word=[&](unsigned cpu)->std::uint16_t {
            const unsigned o=cpu-0x8000u;
            if(o+1u>=bank5.size()) return 0;
            return std::uint16_t(bank5[o])|(std::uint16_t(bank5[o+1])<<8u);
        };
        unsigned table=0x9ba2u;
        const unsigned sel=entity.raw[0x3e];
        if(sel>=3u) {
            const unsigned q=0x9b8au+(sel-3u)*2u;
            const auto candidate=b5word(q);
            if(candidate>=0x8000u && candidate<0xa000u) table=candidate;
        }
        const auto list_cpu=b5word(table+(unsigned(entity.raw[0x06])%3u)*2u);
        if(list_cpu<0x8000u || list_cpu>=0xa000u) return out;
        unsigned p=list_cpu-0x8000u;
        if(p>=bank5.size()) return out;
        const unsigned packed_len=bank5[p++];
        if(packed_len<2u || p+packed_len-1u>bank5.size()) return out;
        const unsigned end=p+packed_len-1u;
        int place_y=0,place_x=0; bool need_position=true;
        while(p<end) {
            if(need_position) {
                if(p+2u>end) break;
                place_y=int(static_cast<std::int8_t>(bank5[p++]));
                place_x=int(static_cast<std::int8_t>(bank5[p++]));
                need_position=false;
            }
            if(p>=end) break;
            const auto control=bank5[p++];
            if(control==0xffu) break;
            if(control==0xfeu) {need_position=true;continue;}
            const unsigned count=control;
            if(p+count>end) break;
            for(unsigned i=0;i<count;++i) {
                Stage0TileVisual v;
                if(decode_stage0_tile_frame(rom,entity,bank5[p++],v)) {
                    v.x+=place_x*8;v.y+=place_y*8;
                    v.tile_x_offset+=place_x;v.tile_y_offset+=place_y;
                    out.push_back(std::move(v));
                }
            }
        }
        return out;
    }

    if (entity.type() == 0x55u || entity.type()==0x47u) {
        // Fixed $58F0 -> $7B65. $5A19 is a six-entry pointer table indexed
        // by +06. The pointed lists use the same packed placement grammar as
        // the later $56 actor, but live in fixed bank 0 rather than bank 6.
        const auto fixed = rom.bank(0);
        unsigned frame = std::min<unsigned>(entity.raw[0x06], entity.type()==0x47u?6u:5u);
        const unsigned table = (entity.type()==0x47u?0x5b67u:0x5a19u) - 0x4000u;
        if (table + frame * 2u + 1u >= fixed.size()) return out;
        const auto list_cpu = le16(fixed, table + frame * 2u);
        if (list_cpu < 0x4000u || list_cpu >= 0x6000u) return out;
        unsigned p = unsigned(list_cpu - 0x4000u);
        if (p >= fixed.size()) return out;
        const unsigned packed_len = fixed[p++];
        if (packed_len < 2u || p + packed_len - 1u > fixed.size()) return out;
        const unsigned end = p + packed_len - 1u;
        int place_y = 0, place_x = 0;
        bool need_position = true;
        while (p < end) {
            if (need_position) {
                if (p + 2u > end) break;
                place_y = int(static_cast<std::int8_t>(fixed[p++]));
                place_x = int(static_cast<std::int8_t>(fixed[p++]));
                need_position = false;
            }
            if (p >= end) break;
            const auto control = fixed[p++];
            if (control == 0xffu) break;
            if (control == 0xfeu) { need_position = true; continue; }
            const unsigned count = control;
            if (p + count > end) break;
            for (unsigned i = 0; i < count; ++i) {
                Stage0TileVisual v;
                if (decode_stage0_tile_frame(rom, entity, fixed[p++], v)) {
                    v.x += place_x * 8; v.y += place_y * 8;
                    v.tile_x_offset += place_x; v.tile_y_offset += place_y;
                    out.push_back(std::move(v));
                }
            }
        }
        return out;
    }

    if (entity.type() == 0x2eu) {
        // Bank05 $84F9 -> fixed $7B65.  The packed compositor uses a
        // delta-accumulating matrix grammar, not a flat list of frame IDs:
        //   len, y,x, control, ...
        // control < $80 consumes that many matrix indices;
        // control $80..$FD repeats ONE matrix (control&$7f) times;
        // $FE starts a new y,x group and $FF terminates the script.
        //
        // $7BBE/$7BC4 updates CA29 with each matrix definition's signed
        // y/x delta before drawing it, so repeated matrix $02 walks down the
        // barrier one cell at a time.  Frame 2 uses $8C,$02 to draw the long
        // twelve-cell $CC/$CD laser body seen in the original stage-2 D800.
        const auto bank5=rom.bank(5);
        const unsigned frame=std::min<unsigned>(entity.raw[0x06],5u);
        const unsigned table=0x858fu-0x8000u;
        if(table+frame*2u+1u>=bank5.size()) return out;
        const auto list_cpu=le16(bank5,table+frame*2u);
        if(list_cpu<0x8000u || list_cpu>=0xa000u) return out;
        unsigned p=unsigned(list_cpu-0x8000u);
        if(p>=bank5.size()) return out;
        const unsigned packed_len=bank5[p++];
        if(packed_len<2u || p+packed_len-1u>bank5.size()) return out;
        const unsigned end=p+packed_len-1u;

        int current_y=0,current_x=0;
        bool need_position=true;
        auto append_matrix=[&](unsigned index) {
            Stage0TileVisual v;
            if(!decode_stage0_tile_frame(rom,entity,index,v)) return;
            const int dy=v.tile_y_offset,dx=v.tile_x_offset;
            current_y+=dy; current_x+=dx;
            v.y+=current_y*8-dy*8; v.x+=current_x*8-dx*8;
            v.tile_y_offset=current_y; v.tile_x_offset=current_x;
            out.push_back(std::move(v));
        };
        while(p<end) {
            if(need_position) {
                if(p+2u>end) break;
                current_y=int(static_cast<std::int8_t>(bank5[p++]));
                current_x=int(static_cast<std::int8_t>(bank5[p++]));
                need_position=false;
            }
            if(p>=end) break;
            const auto control=bank5[p++];
            if(control==0xffu) break;
            if(control==0xfeu) {need_position=true;continue;}
            if(control&0x80u) {
                const unsigned count=control&0x7fu;
                if(!count || p>=end) break;
                const unsigned index=bank5[p++];
                for(unsigned i=0;i<count;++i) {
                    append_matrix(index);
                    // The $2E laser body's $8C,$02 run occupies the twelve
                    // rows immediately below its cap in the live D988 output.
                    // decode_stage0_tile_frame() exposes matrix $02's +1 Y
                    // delta, while the packed placement already supplies the
                    // first +1 row. Applying both to the first/each repeated
                    // cell leaves a one-row hole at the top. Compensate that
                    // placement bias for this repeated $2E body only; the
                    // accumulated cursor must still advance for the next cell.
                    if(entity.type()==0x2eu && index==2u && !out.empty()) {
                        auto& v=out.back();
                        --v.tile_y_offset;v.y-=8;
                    }
                }
            } else {
                const unsigned count=control;
                if(p+count>end) break;
                for(unsigned i=0;i<count;++i) append_matrix(bank5[p++]);
            }
        }
        return out;
    }

    if (entity.type() == 0x14u || entity.type() == 0x77u) {
        // Stage-4/5 bosses are composed tile actors rendered through $7B65
        // from bank06. Type $14 has one placement script at $B03C; type $77
        // has six scripts selected by +06 through the pointer table at $B455.
        const auto bank6=rom.bank(6);
        const unsigned selector=entity.type()==0x14u ? 0u : std::min<unsigned>(entity.raw[0x06],5u);
        const unsigned table_cpu=entity.type()==0x14u ? 0xb03cu : 0xb455u;
        const unsigned table=table_cpu-0xa000u;
        if(table+selector*2u+1u>=bank6.size()) return out;
        const auto list_cpu=le16(bank6,table+selector*2u);
        if(list_cpu<0xa000u || list_cpu>=0xc000u) return out;
        unsigned p=unsigned(list_cpu-0xa000u);
        if(p>=bank6.size()) return out;
        const unsigned packed_len=bank6[p++];
        if(packed_len<2u || p+packed_len-1u>bank6.size()) return out;
        const unsigned end=p+packed_len-1u;
        int place_y=0,place_x=0;bool need_position=true;
        while(p<end) {
            if(need_position) {
                if(p+2u>end) break;
                place_y=int(static_cast<std::int8_t>(bank6[p++]));
                place_x=int(static_cast<std::int8_t>(bank6[p++]));
                need_position=false;
            }
            if(p>=end) break;
            const auto control=bank6[p++];
            if(control==0xffu) break;
            if(control==0xfeu) {need_position=true;continue;}
            const unsigned count=control;
            if(p+count>end) break;
            for(unsigned i=0;i<count;++i) {
                Stage0TileVisual v;
                if(decode_stage0_tile_frame(rom,entity,bank6[p++],v)) {
                    v.x+=place_x*8;v.y+=place_y*8;
                    v.tile_x_offset+=place_x;v.tile_y_offset+=place_y;
                    out.push_back(std::move(v));
                }
            }
        }
        return out;
    }

    if (entity.type() == 0x3eu) {
        // Stage-3 boss shell, bank06 $A647->$7B65 with DE=$A7C3.
        // +06 selects one of eight packed placement lists. Each list stamps
        // the fixed shell matrices 0/1 plus one animated matrix 2..9, which
        // is why rendering only the linked $3F weak-point actors produced the
        // three detached orange shapes without the turquoise body.
        const auto bank6=rom.bank(6);
        const unsigned frame=std::min<unsigned>(entity.raw[0x06],7u);
        const unsigned table=0xa7c3u-0xa000u;
        if(table+frame*2u+1u>=bank6.size()) return out;
        const auto list_cpu=le16(bank6,table+frame*2u);
        if(list_cpu<0xa000u || list_cpu>=0xc000u) return out;
        unsigned p=unsigned(list_cpu-0xa000u);
        if(p>=bank6.size()) return out;
        const unsigned packed_len=bank6[p++];
        if(packed_len<2u || p+packed_len-1u>bank6.size()) return out;
        const unsigned end=p+packed_len-1u;
        int place_y=0,place_x=0;bool need_position=true;
        while(p<end) {
            if(need_position) {
                if(p+2u>end) break;
                place_y=int(static_cast<std::int8_t>(bank6[p++]));
                place_x=int(static_cast<std::int8_t>(bank6[p++]));
                need_position=false;
            }
            if(p>=end) break;
            const auto control=bank6[p++];
            if(control==0xffu) break;
            if(control==0xfeu) {need_position=true;continue;}
            const unsigned count=control;
            if(p+count>end) break;
            for(unsigned i=0;i<count;++i) {
                Stage0TileVisual v;
                if(decode_stage0_tile_frame(rom,entity,bank6[p++],v)) {
                    v.x+=place_x*8;v.y+=place_y*8;
                    v.tile_x_offset+=place_x;v.tile_y_offset+=place_y;
                    out.push_back(std::move(v));
                }
            }
        }
        return out;
    }

    if (entity.type() == 0x3fu) {
        // Stage-3 boss body, bank06 $A95D. Unlike ordinary tile actors,
        // visibility is controlled by bits 6/4 in +15; bit 1 is not the
        // ownership flag used by the generic $7B65 path. +06 is the exact
        // matrix selector produced by the 24-byte $A9E2 visual table.
        if((entity.flags15()&0x50u)!=0x50u) return out;
        Stage0TileVisual v;
        if(decode_stage0_tile_frame(rom,entity,entity.raw[0x06],v))
            out.push_back(std::move(v));
        return out;
    }

    if (entity.type() == 0x46u) {
        // Stage-8 $915D/$9054 energy-wall row. $90CF stamps +11 cells
        // backwards from the actor's X cell. With C0D4=$03 the exact eight
        // row patterns selected by $911E are CC,CD,CB,CB,CB,CB,CD,CC.
        const unsigned width=std::min<unsigned>(entity.raw[0x11],32u);
        if(!width) return out;
        static constexpr std::array<std::uint8_t,8> tile{
            0xccu,0xcdu,0xcbu,0xcbu,0xcbu,0xcbu,0xcdu,0xccu};
        Stage0TileVisual v;
        v.rows=1u;v.cols=std::uint8_t(width);
        v.tile_x_offset=1-int(width);v.tile_y_offset=0;
        v.x=v.tile_x_offset*8;v.y=0;
        v.tiles.assign(width,tile[entity.raw[0x0f]&7u]);
        out.push_back(std::move(v));
        return out;
    }

    if (entity.type() == 0x79u) {
        // Final boss, bank05 $96AC->$7B65 with DE=$97C5. The eight pointer
        // entries select one compact placement list each; selectors 0/1/2
        // are fight frames and 3..7 are the destruction sequence.
        const auto bank5=rom.bank(5);
        const unsigned selector=std::min<unsigned>(entity.raw[0x06],7u);
        const unsigned table=0x97c5u-0x8000u;
        if(table+selector*2u+1u>=bank5.size()) return out;
        const auto list_cpu=le16(bank5,table+selector*2u);
        if(list_cpu<0x8000u || list_cpu>=0xa000u) return out;
        unsigned p=unsigned(list_cpu-0x8000u);
        if(p>=bank5.size()) return out;
        const unsigned packed_len=bank5[p++];
        if(packed_len<2u || p+packed_len-1u>bank5.size()) return out;
        const unsigned end=p+packed_len-1u;
        int place_y=0,place_x=0;bool need_position=true;
        while(p<end) {
            if(need_position) {
                if(p+2u>end) break;
                place_y=int(static_cast<std::int8_t>(bank5[p++]));
                place_x=int(static_cast<std::int8_t>(bank5[p++]));
                need_position=false;
            }
            if(p>=end) break;
            const auto control=bank5[p++];
            if(control==0xffu) break;
            if(control==0xfeu) {need_position=true;continue;}
            const unsigned count=control;
            if(p+count>end) break;
            for(unsigned i=0;i<count;++i) {
                Stage0TileVisual v;
                if(decode_stage0_tile_frame(rom,entity,bank5[p++],v)) {
                    v.x+=place_x*8;v.y+=place_y*8;
                    v.tile_x_offset+=place_x;v.tile_y_offset+=place_y;
                    out.push_back(std::move(v));
                }
            }
        }
        return out;
    }

    if (entity.type() == 0x78u) {
        // Stage-8 boss, bank06 $AA1C->$7B65 with DE=$ACDE. +06 selects
        // one of ten exact packed placement scripts. The first four matrices
        // form the persistent shell; selectors 1..9 add the animated core/
        // destruction matrices exported in type78_stamp_scripts.json.
        const auto bank6=rom.bank(6);
        const unsigned selector=std::min<unsigned>(entity.raw[0x06],9u);
        const unsigned table=0xacdeu-0xa000u;
        if(table+selector*2u+1u>=bank6.size()) return out;
        const auto list_cpu=le16(bank6,table+selector*2u);
        if(list_cpu<0xa000u || list_cpu>=0xc000u) return out;
        unsigned p=unsigned(list_cpu-0xa000u);
        if(p>=bank6.size()) return out;
        const unsigned packed_len=bank6[p++];
        if(packed_len<2u || p+packed_len-1u>bank6.size()) return out;
        const unsigned end=p+packed_len-1u;
        int place_y=0,place_x=0;bool need_position=true;
        while(p<end) {
            if(need_position) {
                if(p+2u>end) break;
                place_y=int(static_cast<std::int8_t>(bank6[p++]));
                place_x=int(static_cast<std::int8_t>(bank6[p++]));
                need_position=false;
            }
            if(p>=end) break;
            const auto control=bank6[p++];
            if(control==0xffu) break;
            if(control==0xfeu) {need_position=true;continue;}
            const unsigned count=control;
            if(p+count>end) break;
            for(unsigned i=0;i<count;++i) {
                Stage0TileVisual v;
                if(decode_stage0_tile_frame(rom,entity,bank6[p++],v)) {
                    v.x+=place_x*8;v.y+=place_y*8;
                    v.tile_x_offset+=place_x;v.tile_y_offset+=place_y;
                    out.push_back(std::move(v));
                }
            }
        }
        return out;
    }

    if (entity.type() == 0x56u) {
        // Type $56 uses the custom $BF29->$7B65 renderer.  $BFC0 is a
        // five-entry frame-pointer table indexed by object byte +06. Each
        // selected list contains one or more placement groups:
        //   yoff, xoff, count, <matrix indices...>, FE ... , FF.
        // The matrix indices themselves use the normal type table at $8596.
        const auto bank6 = rom.bank(6);
        unsigned frame = entity.raw[0x06];
        if (frame > 4u) frame = 4u;
        const unsigned table = 0xbfc0u - 0xa000u;
        if (table + frame * 2u + 1u >= bank6.size()) return out;
        const auto list_cpu = le16(bank6, table + frame * 2u);
        if (list_cpu < 0xa000u || list_cpu >= 0xc000u) return out;
        unsigned p = unsigned(list_cpu - 0xa000u);
        if (p >= bank6.size()) return out;
        const unsigned packed_len = bank6[p++];
        if (packed_len < 2u || p + packed_len - 1u > bank6.size()) return out;
        const unsigned end = p + packed_len - 1u;
        int place_y = 0, place_x = 0;
        bool need_position = true;
        while (p < end) {
            if (need_position) {
                if (p + 2u > end) break;
                place_y = int(static_cast<std::int8_t>(bank6[p++]));
                place_x = int(static_cast<std::int8_t>(bank6[p++]));
                need_position = false;
            }
            if (p >= end) break;
            const auto control = bank6[p++];
            if (control == 0xffu) break;
            if (control == 0xfeu) { need_position = true; continue; }
            const unsigned count = control;
            if (p + count > end) break;
            for (unsigned i = 0; i < count; ++i) {
                const unsigned matrix = bank6[p++];
                Stage0TileVisual v;
                if (decode_stage0_tile_frame(rom, entity, matrix, v)) {
                    v.x += place_x * 8;
                    v.y += place_y * 8;
                    v.tile_x_offset += place_x;
                    v.tile_y_offset += place_y;
                    out.push_back(std::move(v));
                }
            }
        }
        return out;
    }

    if (entity.type() != 0x24u && (entity.flags15() & 0x02u) == 0u) return out;
    if (entity.type() != 0x24u) {
        Stage0TileVisual v;
        if (decode_stage0_tile_frame(rom, entity, entity.raw[0x06], v))
            out.push_back(std::move(v));
        return out;
    }

    // Type $24 uses the special bank-06 $BDAD renderer. It derives a 0..7
    // horizontal phase and calls $7A43 three times with frame indices
    // phase, phase+8 and phase+16. The relation below is byte-for-byte
    // validated against the live $7AC0 trace (e.g. x=$1F00 -> frames 2/10/18).
    const unsigned phase = (6u - (unsigned(entity.x_fixed()) >> 6)) & 7u;
    return decode_stage0_t24_visuals_phase(rom,entity,phase);
}

std::uint8_t stage0_t24_phase(const Entity64& entity,std::uint8_t ca3b,
                              std::uint8_t fine_x) noexcept {
    // Bank06:$BDB6-$BDCA. D starts as (CA3B + object-X high) & 7;
    // the carry from CA1C-low + object-X-low advances the pre-shift once.
    unsigned d=(unsigned(ca3b)+entity.raw[0x0a])&7u;
    if(unsigned(fine_x)+entity.raw[0x09]>=256u) ++d;
    return std::uint8_t(d&7u); // RES 3,D in the original
}

std::vector<Stage0TileVisual> decode_stage0_t24_visuals_phase(const Rom& rom,
                                                               const Entity64& entity,
                                                               unsigned phase) {
    std::vector<Stage0TileVisual> out;
    if(!entity.active() || entity.type()!=0x24u) return out;
    phase&=7u;
    for(unsigned band=0;band<3u;++band) {
        Stage0TileVisual v;
        if(decode_stage0_tile_frame(rom,entity,phase+band*8u,v))
            out.push_back(std::move(v));
    }
    return out;
}

void stamp_stage0_tile_objects(const Rom& rom, const Stage0BackgroundStream& stream,
                               const GameState& game,
                               std::array<std::uint8_t, 24u * 32u>& d988,bool include_native_overlays) {
    const auto fine_x = std::uint16_t(stream.ca1c() & 0x00ffu);
    const auto fine_y = std::uint16_t(stream.ca1a() & 0x00ffu);
    for (const auto& entity : game.enemies) {
        if (!entity.active() || entity.type()==3u) continue;
        // Native SDL draws composed tile actors at their real sub-tile pixel
        // position. The ROM D988 path quantizes these objects to 8x8 cells;
        // that is correct for the VDP name table but visibly makes mixed
        // tile+sprite actors (cannon body/barrel and type $64 core) jump at
        // R18/tile carries. Keep scenery in D988, but render these actors once
        // as native overlays in every stage-0 raster mode.
        if(!include_native_overlays && (entity.type()==0x1eu || entity.type()==0x1fu || entity.type()==0x20u || entity.type()==0x29u || entity.type()==0x22u || entity.type()==0x2eu ||
           entity.type()==0x24u || entity.type()==0x26u || entity.type()==0x55u ||
           entity.type()==0x47u || entity.type()==0x56u || entity.type()==0x64u || entity.type()==0x6au ||
           entity.type()==0x6bu || entity.type()==0x3du)) continue;
        const auto visuals = decode_stage0_tile_visuals(rom, entity);
        if (visuals.empty()) continue;

        // $7A79-$7A95 adds only the low CA1A/CA1C byte before taking the
        // signed coarse tile coordinate. That carry is essential on slopes.
        const auto ax = std::uint16_t(entity.x_fixed() + fine_x);
        const auto ay = std::uint16_t(entity.y_fixed() + fine_y);
        const int object_col = int(std::int8_t(ax >> 8u));
        const int object_row = int(std::int8_t(ay >> 8u));

        for (const auto& v : visuals) {
            const int left = object_col + v.tile_x_offset;
            const int top  = object_row + v.tile_y_offset;
            for (unsigned y = 0; y < v.rows; ++y) {
                int dy = top + int(y);
                // Type $69 platform blasts deliberately use Y=$FE/$FD for
                // two children. The original name-table stamper wraps those
                // signed rows through the stage ring instead of clipping them.
                if(entity.type()==0x69u) dy=(dy%24+24)%24;
                else if (dy < 0 || dy >= 24) continue;
                for (unsigned x = 0; x < v.cols; ++x) {
                    const int dx = left + int(x);
                    if (dx < 0 || dx >= 32) continue;
                    const auto tile = v.tiles[y * unsigned(v.cols) + x];
                    if (tile != 0u) d988[unsigned(dy) * 32u + unsigned(dx)] = tile;
                }
            }
        }
    }
}

void stamp_stage0_tile_objects_right_edge(const Rom& rom, const Stage0BackgroundStream& stream,
                                          const GameState& game,
                                          std::array<std::uint8_t,24u>& edge) {
    const auto fine_x=std::uint16_t(stream.ca1c()&0x00ffu);
    const auto fine_y=std::uint16_t(stream.ca1a()&0x00ffu);
    for(const auto& entity:game.enemies) {
        if(!entity.active() || entity.type()==3u) continue;
        // Same ownership rule as the main D988 stamper: native overlays own
        // these complete actors, including the successor edge.
        if(entity.type()==0x1eu || entity.type()==0x1fu || entity.type()==0x20u || entity.type()==0x29u || entity.type()==0x22u || entity.type()==0x2eu ||
           entity.type()==0x24u || entity.type()==0x26u || entity.type()==0x55u ||
           entity.type()==0x47u || entity.type()==0x56u || entity.type()==0x64u || entity.type()==0x6au ||
           entity.type()==0x6bu || entity.type()==0x3du) continue;
        const auto visuals=decode_stage0_tile_visuals(rom,entity);
        if(visuals.empty()) continue;
        const auto ax=std::uint16_t(entity.x_fixed()+fine_x);
        const auto ay=std::uint16_t(entity.y_fixed()+fine_y);
        const int object_col=int(std::int8_t(ax>>8u));
        const int object_row=int(std::int8_t(ay>>8u));
        for(const auto& v:visuals) {
            const int left=object_col+v.tile_x_offset;
            const int top=object_row+v.tile_y_offset;
            for(unsigned y=0;y<v.rows;++y) {
                int dy=top+int(y);
                if(entity.type()==0x69u) dy=(dy%24+24)%24;
                else if(dy<0 || dy>=24) continue;
                for(unsigned x=0;x<v.cols;++x) {
                    if(left+int(x)!=32) continue;
                    const auto tile=v.tiles[y*unsigned(v.cols)+x];
                    if(tile) edge[unsigned(dy)]=tile;
                }
            }
        }
    }
}

void seed_stage0_gate_reference(GameState& game) noexcept {
    // Clean OpenMSX reference at t=152.500004, X=$1100/Y=$0000,
    // C0CA=$A438, CA34=$5000, C0B4=6.  Only bytes consumed by the current
    // tile compositor/state model are populated; the remaining handler bytes
    // are deliberately left zero until those handlers are ported.
    for (auto& e : game.enemies) e.clear();
    auto seed = [&](unsigned slot, std::uint8_t type, std::uint8_t state,
                    std::uint8_t f5, std::uint8_t f6, std::uint16_t x,
                    std::uint16_t y, std::uint8_t flags15) {
        if (slot >= game.enemies.size()) return;
        auto& e = game.enemies[slot];
        e.type() = type; e.state() = state; e.raw[5] = f5; e.raw[6] = f6;
        e.set_x_fixed(x); e.set_y_fixed(y); e.raw[0x15] = flags15;
        e.raw[0x2d] = std::uint8_t(slot + 1u);
    };
    seed(1, 0x64, 3, 4, 5, 0x1200, 0x0c00, 0x3d);
    // Clean original gate trace: HP=$3C and damage-enable byte +14=$86.
    // Without these fields the native tower is visible but cannot be shot.
    game.enemies[1].raw[0x14]=0x86;
    game.enemies[1].raw[0x16]=0x3c;
    game.enemies[1].raw[0x17]=0x24;
    game.enemies[1].raw[0x20]=0x01;
    seed(2, 0x3d, 1, 0, 1, 0x1600, 0x1200, 0x46);
    // These three $40 records are part of the same clean reference pool.
    // Their D988 renderer is not required for the current gate image (they
    // are sprite/effect-side here), but retaining them keeps the pool faithful.
    seed(3, 0x40, 3, 2, 0, 0x19d8, 0x00fe, 0xbd);
    seed(4, 0x40, 3, 2, 0, 0x1f36, 0x0245, 0xbd);
    seed(5, 0x40, 2, 1, 0, 0x2100, 0x0348, 0xbd);
}

Stage0DamageResult apply_stage0_damage(const Rom& rom, Entity64& entity,
                                       std::uint8_t damage) noexcept {
    // Stage-7 Warp Machine ($8EF5) is the deliberate exception to the common
    // +14/+16 damage service. Its weak point is live only in state 1 and keeps
    // the real $FF HP counter in +02. Fatality is a borrow (damage > HP), after
    // which the same $43 object runs the 40/20-tick destruction states.
    if(entity.active() && entity.type()==0x43u) {
        if(damage==0u || entity.state()!=1u) return Stage0DamageResult::Ignored;
        const auto hp=entity.raw[0x02];entity.raw[0x04]=0u;
        if(damage<=hp) {entity.raw[0x02]=std::uint8_t(hp-damage);return Stage0DamageResult::Hit;}
        entity.raw[0x02]=0u;entity.raw[0x15]=0x6fu;
        entity.state()=2u;entity.raw[0x17]=0x28u;
        return Stage0DamageResult::Hit;
    }
    // Stage-8 type $78 reaches the normal $7C6B subtraction only while the
    // boss-specific gates +29==0 and +2B!=0 are open. A fatal subtraction
    // does not replace the object with its table's $62 effect: $AC3F keeps
    // type $78 alive and enters custom destruction state 6.
    if(entity.active() && entity.type()==0x78u) {
        if(damage==0u || entity.raw[0x29]!=0u || entity.raw[0x2b]==0u ||
           (entity.raw[0x14]&0x80u)==0u) return Stage0DamageResult::Ignored;
        const auto hp=entity.raw[0x16];entity.raw[0x04]=0u;
        entity.raw[0x16]=std::uint8_t(hp-damage);
        if(damage<=hp) return Stage0DamageResult::Hit;
        entity.raw[0x14]&=0x7fu;
        entity.raw[0x05]=0u;entity.raw[0x06]=0u;
        entity.raw[0x29]=1u;entity.raw[0x22]=0u;
        entity.state()=6u;
        return Stage0DamageResult::Destroyed;
    }
    // Final boss $79 opens the ordinary $7C63 damage service only while
    // compositor selector +06 is one. Non-fatal hits close bit 7 again;
    // fatal borrow keeps type $79 alive, raises CE76 in the ROM and enters
    // the dedicated 3..7 destruction animation instead of becoming $62.
    if(entity.active() && entity.type()==0x79u) {
        if(damage==0u || entity.state()!=1u || entity.raw[0x06]!=1u ||
           (entity.raw[0x14]&0x80u)==0u) return Stage0DamageResult::Ignored;
        const auto hp=entity.raw[0x16];entity.raw[0x04]=0u;
        entity.raw[0x16]=std::uint8_t(hp-damage);
        if(damage<=hp) {
            entity.raw[0x14]&=0x7fu;
            return Stage0DamageResult::Hit;
        }
        entity.raw[0x06]=3u;
        entity.state()=2u;
        return Stage0DamageResult::Destroyed;
    }
    if (!entity.active() || damage == 0 || (entity.raw[0x14] & 0x80u) == 0)
        return Stage0DamageResult::Ignored;
    const auto hp = entity.raw[0x16];
    entity.raw[0x04] = 0; // original $7C4D consumes the pending damage byte
    entity.raw[0x16] = std::uint8_t(hp - damage);
    if (damage <= hp) return Stage0DamageResult::Hit;

    // Original carry path $7CC3: turn the object into its death/effect type,
    // then reset the motion/animation state. The 3-byte table starts at
    // bank-04:$7E74; byte 0 is the replacement object type.
    try {
        const auto bank = rom.bank(4);
        const unsigned table = 0x7e74u - 0x6000u;
        const unsigned p = table + unsigned(entity.type()) * 3u;
        if (p >= bank.size()) return Stage0DamageResult::Destroyed;
        const auto replacement = bank[p];
        entity.raw[0x15] = 0x04;
        entity.raw[0x14] &= 0x7fu;
        entity.raw[0x01] = 0;
        entity.raw[0x34] = 0;
        entity.raw[0x38] = 0;
        entity.raw[0x05] = 0;
        entity.raw[0x06] = 0;
        entity.raw[0x17] = 0;
        for (unsigned i = 0x0b; i <= 0x0e; ++i) entity.raw[i] = 0;
        entity.type() = replacement;
    } catch (...) {
        return Stage0DamageResult::Destroyed;
    }
    return Stage0DamageResult::Destroyed;
}

void append_stage0_damage_sounds(const Rom& rom,std::uint8_t original_type,
        Stage0DamageResult damage,std::vector<PlaySound>& sounds) {
    if(damage==Stage0DamageResult::Ignored) return;
    // $7C44/$7C63 request the impact even on a fatal subtraction, before
    // $7CC3 requests the family-specific destruction sound.
    sounds.push_back((original_type==0x14u || original_type==0x3eu || original_type==0x43u || original_type==0x64u || original_type==0x77u || original_type==0x78u || original_type==0x79u || original_type==0x7bu) ? PlaySound::BossHit : PlaySound::Hit);
    if(damage!=Stage0DamageResult::Destroyed) return;
    const auto bank4=rom.bank(4);
    const auto sound_id=bank4[0x1e74u+unsigned(original_type)*3u+1u];
    PlaySound sound=PlaySound::Explosion;
    if(sound_id==0x11u) sound=PlaySound::TurretExplosion;
    else if(sound_id==0x13u) sound=PlaySound::HeavyVehicleExplosion;
    else if(sound_id==0x14u) sound=PlaySound::LargeCannonExplosion;
    else if(sound_id==0x4du) sound=PlaySound::TowerExplosion;
    sounds.push_back(sound);
}

SpawnTypeMetadata decode_spawn_type_metadata(const Rom& rom, std::uint8_t type) {
    if (type == 0) throw std::runtime_error("zero spawn type has no metadata");
    const auto bank = rom.bank(2);
    const unsigned table = 0x9100u - 0x8000u;
    const unsigned entry = table + (unsigned(type) - 1u) * 2u;
    const auto ptr = le16(bank, entry);
    if (ptr < 0x8000u || ptr + 3u >= 0xa000u)
        throw std::runtime_error("spawn metadata pointer outside bank 02");
    const unsigned p = ptr - 0x8000u;
    SpawnTypeMetadata out;
    for (unsigned i = 0; i < 4; ++i) out.bytes[i] = bank[p + i];
    return out;
}

bool instantiate_stage0_spawn(const Rom& rom, const SpawnRecord& r, GameState& game,
                              std::uint8_t spawn_direction) {
    const bool special26 = r.type == 0x26u && r.control_flag();
    const bool special2b = r.type == 0x2bu && r.control_flag();
    const bool special53 = r.type == 0x53u && r.control_flag();
    const bool special3e = r.type == 0x3eu && r.control_flag();
    const bool special77 = r.type == 0x77u && r.control_flag();
    const bool special7a = r.type == 0x7au && r.control_flag();
    // The final stage-0 tower is also an extended record: trigger $5000,
    // control $88. Rejecting every flagged record except $26 silently dropped
    // type $64 from real gameplay, leaving only the scenery copy visible.
    const bool special64 = r.type == 0x64u && r.control_flag();
    if (r.control_flag() && !special26 && !special2b && !special53 && !special3e && !special77 && !special64 && !special7a) return false;
    if (r.type != 0x14u && r.type != 0x19u && r.type != 0x1eu && r.type != 0x1fu && r.type != 0x20u && r.type != 0x27u && r.type != 0x29u && r.type != 0x2bu && r.type != 0x2du && r.type != 0x2eu && r.type != 0x2fu && r.type != 0x31u && r.type != 0x3cu && r.type != 0x3eu && r.type != 0x22u &&
        r.type != 0x24u && r.type != 0x26u && r.type != 0x53u && r.type != 0x55u &&
        r.type != 0x56u && r.type != 0x47u && r.type != 0x43u && r.type != 0x64u && r.type != 0x77u && r.type != 0x78u && r.type != 0x79u && r.type != 0x7au && r.type != 0x7bu) return false;
    if (r.payload.empty() || (r.type == 0x24u && r.payload.size() < 2u)) return false;
    auto* e = game.allocate_enemy();
    if (!e) return false;
    e->clear();
    e->type() = r.type;
    const auto meta = decode_spawn_type_metadata(rom, r.type);
    for (unsigned i = 0; i < 4; ++i) e->raw[0x13u + i] = meta.bytes[i];
    for (unsigned i = 0; i < game.enemies.size(); ++i)
        if (&game.enemies[i] == e) e->raw[0x2d] = std::uint8_t(i + 1u);

    // Original $6754 initializer. The same payload byte is interpreted on a
    // different axis depending on C0D5, so it is NOT an absolute Y value.
    // Extended records expose their first inline byte after the count byte.
    const unsigned payload_index = (special26 || special2b || special77 || special7a) ? 1u : 0u;
    if (r.payload.size() <= payload_index) { e->clear(); return false; }
    const std::uint8_t pos = r.payload[payload_index] & 0x7fu;
    std::uint8_t xh = 0x20u, yh = pos;
    switch (spawn_direction) {
    case 1u: xh = 0x20u; yh = pos; break;             // from right
    case 2u: case 3u: xh = pos; yh = 0x18u; break;   // from bottom
    case 4u: xh = std::uint8_t(pos - 0x18u); yh = 0x18u; break;
    case 5u: xh = 0x00u; yh = pos; break;             // from left
    default: xh = pos; yh = std::uint8_t(0u - meta.bytes[0]); break; // from top
    }
    e->set_x_fixed(std::uint16_t(xh) << 8);
    e->set_y_fixed(std::uint16_t(yh) << 8);
    if (r.type == 0x19u) {
        // Fixed $5592-$55B6. Unlike the common $6754 initializer, type $19
        // stores both inline coordinates directly. Bit 7 of the first byte
        // chooses the right-moving variant and is removed from Y.
        if(r.payload.size()<2u) {e->clear();return false;}
        e->set_y_fixed(std::uint16_t(r.payload[0]&0x7fu)<<8u);
        e->set_x_fixed(std::uint16_t(r.payload[1])<<8u);
        e->raw[0x22]=(r.payload[0]&0x80u)?1u:0u;
        e->raw[0x05]=e->raw[0x22]?2u:0u;
        e->raw[0x0d]=e->raw[0x22]?0x60u:0xc0u;
        e->raw[0x0e]=e->raw[0x22]?0x00u:0xffu;
        e->raw[0x20]=0x40u;e->raw[0x18]=0x10u;
    } else if (r.type == 0x1eu) {
        // $BB75: low six bits are altitude; bit 7 chooses rise/fall.
        e->set_y_fixed(std::uint16_t(r.payload[0]&0x3fu)<<8);
        e->set_x_fixed(0x1e00);e->raw[0x20]=(r.payload[0]>>7u)&1u;
        e->raw[0x17]=1;
        e->raw[13]=0x80;e->raw[14]=0xff;
    } else if (r.type == 0x1fu) {
        e->raw[0x3e] = 0x09;
        e->raw[0x05] = 0x01;
        e->raw[0x24] = 0x00;
        e->raw[0x17] = 0x20;
        e->raw[0x18] = 0x01;
    } else if(r.type==0x27u) {
        // Bank05 $8170/$817D: stage-2 aimed mover. The continuation has
        // already run the common spawn initializer; +17 is the ten-tick
        // retarget cadence and +03 is an optional speed bias.
        e->raw[0x17]=0x0au;
        e->raw[0x03]=r.payload.size()>1u ? r.payload[1] : 0u;
    } else if(r.type==0x2bu) {
        // Bank05 $8341. Extended record grammar is
        //   03 <position/orientation> <interval> 02 16
        // where the trailing descriptor creates type-$16 attackers.
        if(r.payload.size()<5u) { e->clear(); return false; }
        const auto position=r.payload[1];
        e->raw[0x20]=(position>>7u)&1u;
        e->raw[0x06]=e->raw[0x20];
        e->raw[0x18]=r.payload[2];
        e->raw[0x3e]=4u;
    } else if(r.type==0x2du) {
        // Bank05 $8426-$844C initializer. The sole inline byte is the
        // surface/orientation coordinate: bit 7 selects the ceiling variant
        // and the low seven bits are its fixed Y cell. $843C mirrors that
        // bit into +20 and sprite frame +05, then $8442 installs the initial
        // leftward $FFD0 velocity and $8431 starts the 30-tick cruise timer.
        const auto position=r.payload[0];
        e->set_y_fixed(std::uint16_t(position&0x7fu)<<8u);
        e->raw[0x20]=(position>>7u)&1u;
        e->raw[0x05]=e->raw[0x20];
        e->raw[0x0d]=0xd0u;e->raw[0x0e]=0xffu;
        e->raw[0x17]=0x1eu;
        e->raw[0x18]=0u;
        e->raw[0x3d]=1u;
    } else if(r.type==0x2eu) {
        // Bank05 $84F9/$8512. The second inline byte packs a low-nibble
        // compositor selector and a high-nibble "double child" flag.
        const auto packed=r.payload.size()>1u?r.payload[1]:0u;
        e->raw[0x20]=packed&0x0fu;
        e->raw[0x03]=packed&0xf0u;
        if(e->raw[0x03]) {
            e->raw[0x06]=2u;
            e->set_y_fixed(std::uint16_t(e->y_fixed()+0x0400u));
            e->raw[0x20]=0u;
        }
    } else if(r.type==0x2fu) {
        // Bank05 $86A4. Payload bit 7 requests the ordinary destruction/drop
        // flag; the low seven bits were already consumed by $6754 as position.
        e->raw[0x3d]=(r.payload[0]&0x80u)?1u:0u;
    } else if(r.type==0x31u) {
        // Fixed $5CDF: second inline byte selects variant/frame, then the
        // obstacle starts rising at signed Y velocity -$00A0 in state zero.
        if(r.payload.size()<2u) {e->clear();return false;}
        e->raw[0x03]=r.payload[1];e->raw[0x05]=r.payload[1]&1u;
        e->raw[0x0b]=0x60u;e->raw[0x0c]=0xffu;
        e->raw[0x0d]=0u;e->raw[0x0e]=0u;
    } else if(r.type==0x14u) {
        // Stage-4 boss. $AE2A installs the real fixed entrance anchor; keep
        // the spawn object dormant until the bank06 handler's state-0 init.
        e->set_x_fixed(0x2800u);e->set_y_fixed(0x0900u);
        e->raw[0x3f]=1u;
    } else if(r.type==0x3eu) {
        // Stage-3 boss controller, bank06 $A647. The extended record at
        // trigger $2000 is `3E 86 02 FF`; its inline bytes are not a normal
        // $6754 position. The handler installs the fixed entrance anchor and
        // creates three linked type-$3F tile actors on its first logic tick.
        e->set_x_fixed(0x1f00u);e->set_y_fixed(0x0100u);
        e->raw[0x18]=0x14u;e->raw[0x34]=0x80u;e->raw[0x3f]=1u;
    } else if(r.type==0x3cu) {
        // Bank06 $A2B1: common $6754 position, then one extra selector byte
        // becomes the tile-frame/controller selector at +06.
        if(r.payload.size()<2u) {e->clear();return false;}
        e->raw[0x06]=r.payload[1];
    } else if(r.type==0x29u) {
        // Bank05 $82CA: stage-2 small turret, upside-down payload bit 7.
        e->raw[0x20]=(r.payload[0]>>7u)&1u;
        e->raw[0x06]=e->raw[0x20]?4u:0u;
        e->raw[0x17]=0x20u;
    } else if(r.type==0x22u) {
        // Bank06 $BD0F init: threshold cursor starts at zero and +3E=$0B.
        e->raw[0x20]=0;e->raw[0x3e]=0x0b;
    } else if(r.type==0x26u) {
        // Bank06 $BE5F init. The stage-0 script deterministically yields three
        // launches for every observed $26 actor in the original trace.
        e->raw[0x20]=0;e->raw[0x21]=3;e->raw[0x22]=0;
        e->raw[0x25]=0;e->raw[0x26]=0;e->raw[0x3e]=0x0c;
    } else if (r.type == 0x53u) {
        // Bank05 $9940. This is an invisible extended wave controller; its
        // descriptor is 02 00 02 2A and the handler places itself just above
        // the viewport before creating type-$2A children.
        if(r.payload.size()<4u || r.payload[0]!=2u || r.payload[3]!=0x2au) {e->clear();return false;}
        e->set_x_fixed(0x2000u);e->set_y_fixed(0xfc00u);
        e->raw[0x34]=0x80u;
    } else if (r.type == 0x55u) {
        // Fixed $58F0/$5911. First inline byte is the deck Y used by $6754
        // and is retained at +22. The second byte is the horizontal trigger;
        // bit 7 selects the hover/return variant. $5927 chooses a 1..7
        // cruise altitude. Preserve the observed stage-0 deterministic values
        // for the four scripted carriers.
        e->raw[0x22] = r.payload[0];
        if (r.payload.size() >= 2u) {
            e->raw[0x20] = r.payload[1] & 0x7fu;
            e->raw[0x21] = (r.payload[1] & 0x80u) ? 1u : 0u;
            switch (r.payload[1]) {
            case 0x1au: e->raw[0x23] = 6; break;
            case 0x96u: e->raw[0x23] = 4; break;
            case 0x9cu: e->raw[0x23] = 1; break;
            default:    e->raw[0x23] = 3; break;
            }
        }
    } else if (r.type == 0x47u) {
        // $5B2B does not call $6754: the cleared pool record retains X=0.
        e->set_x_fixed(0);
    } else if (r.type == 0x56u) {
        // Exact live creation state at trigger $3018. The original handler
        // consumes the one-byte payload, leaving +2E/+2F at 1, and chooses
        // a 1..8 timer at +20. The deterministic reference run chose 7.
        e->raw[0x20] = 0x07;
        e->raw[0x2e] = 0x01;
        e->raw[0x2f] = 0x01;
        e->raw[0x3f] = 0x01;
    } else if (r.type == 0x77u) {
        // Stage-5 boss controller. Extended descriptor:
        //   02 05 85 02 76 02 76
        // State zero creates the linked $76 armour tree and replaces these
        // provisional coordinates with the original $1F00/$0600 anchor.
        if(r.payload.size()<7u || r.payload[0]!=2u || r.payload[3]!=2u ||
           r.payload[4]!=0x76u || r.payload[5]!=2u || r.payload[6]!=0x76u) {
            e->clear();return false;
        }
        e->set_x_fixed(0);e->set_y_fixed(0);e->raw[0x34]=0x80u;
    } else if (r.type == 0x43u) {
        // Stage-7 Warp Machine. Live bank handler $8E81 enters at $2000/$0A00;
        // the scrolling entrance consumes $20 X per 20-Hz object tick until
        // it reaches the fixed $1900 fight anchor. HP is custom +02, not +16.
        e->set_x_fixed(0x2000u);e->set_y_fixed(0x0a00u);
        e->raw[0x17]=0x3cu;e->raw[0x06]=0u;e->flags15()|=1u;
    } else if (r.type == 0x78u) {
        // Stage-8 boss, bank06 $AA48. State 0 immediately installs the fixed
        // $1F00/$0400 entrance anchor, animation counters and first $20 timer;
        // expose that post-initializer state directly to the native scheduler.
        e->set_x_fixed(0x1f00u);e->set_y_fixed(0x0400u);
        e->raw[0x06]=0u;e->raw[0x17]=0x20u;e->raw[0x21]=1u;
        e->raw[0x22]=0u;e->raw[0x23]=0x30u;e->raw[0x25]=0x15u;
        e->state()=1u;
    } else if (r.type == 0x79u) {
        // Final boss, bank05 $96AC. $6754 starts it at the right edge from
        // payload $08. $976B loads the first animation record and $972D the
        // first attack record before the externally visible state-1 loop.
        e->set_x_fixed(0x2000u);e->set_y_fixed(0x0800u);
        e->raw[0x06]=2u;                 // first $979B animation selector
        e->raw[0x20]=0x20u;e->raw[0x21]=1u;
        e->raw[0x17]=0x38u;              // first $9755 attack delay
        e->raw[0x25]=0u;e->raw[0x26]=6u;e->raw[0x27]=1u;
        e->state()=1u;
    } else if (r.type == 0x7bu) {
        // Stage-6 boss, bank06 $B513. The final mode-3 scroll brings the
        // common spawn position to the live $0700/$1400 entrance anchor;
        // keep that anchor explicit so direct stage selection is identical.
        e->set_x_fixed(0x0700u);e->set_y_fixed(0x1400u);
        e->flags15()|=1u;
    } else if (r.type == 0x7au) {
        // Bank06 $A000: extended descriptor 02 08 02 3B. $6754 consumes
        // the position byte after the count and the handler creates seven
        // linked type-$3B body parts on its first logic tick.
        if(r.payload.size()<4u || r.payload[0]!=2u || r.payload[3]!=0x3bu) {e->clear();return false;}
        e->raw[0x34]=0x80u;
    } else if (r.type == 0x64u) {
        // Boss/gate objects use the $7C63 continuation. A live unmodified
        // object dump at the first $7C63 call has +3F=$01; the type handler
        // itself supplies the exact coordinates, selector and phase state.
        e->raw[0x3f] = 0x01;
    } else if (r.payload.size() >= 2u && r.type!=0x26u && r.type!=0x22u) {
        e->raw[0x20] = r.payload[1];
    }
    // Type $64 must enter bank06:$A300 (state 0). Starting it at state 1
    // skips the ROM initializer that positions the tower at X=$2800/Y=$0C00.
    e->state() = (r.type == 0x14u || r.type == 0x43u || r.type == 0x64u || r.type==0x47u || r.type==0x2du || r.type==0x2eu || r.type==0x31u || r.type==0x3eu || r.type==0x53u || r.type==0x77u || r.type==0x7au || r.type==0x7bu) ? 0u : 1u;
    return true;
}
}

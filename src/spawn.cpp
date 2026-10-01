#include "spawn.hpp"
#include <stdexcept>

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
    StageSpawnStream out;
    const auto bank = rom.bank(2);
    const auto cpu = le16(bank, kStagePointerTable);
    if (cpu < 0x8000u || cpu >= 0xa000u)
        throw std::runtime_error("stage-0 spawn pointer outside bank 02 window");
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
        if (include_prelude || trigger >= kStage0Origin) {
            r.world_x = trigger>=kStage0Origin?unsigned(trigger - kStage0Origin)*8u:0u;
            out.records_.push_back(std::move(r));
        }
        p += len;
    }
    return out;
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
void scroll_stage0_objects(GameState& game, int dx, int dy) noexcept {
    for (auto& e : game.enemies) {
        // Interactive pickups follow the camera through Stage0Combat, including
        // the pre-anchor part of the level where this scenery helper is idle.
        if (!e.active() || e.type()==3 || (e.flags15() & 0x04u) == 0u) continue;
        const auto ox = std::int16_t(e.x_fixed());
        const auto oy = std::int16_t(e.y_fixed());
        const int nx = int(ox) - dx;
        const int ny = int(oy) - dy;
        // The original pool culls scenery only after its complete tile matrix
        // has left the screen. Type $24 is exceptionally wide: the live tank
        // trace still has it active at x=$EF00 (-$1100 in signed 8.8 tile
        // coordinates) and it disappears on the next $40 step to $EEC0.
        // The old generic -$0200 guard therefore removed its visible tracks
        // roughly fifteen tiles too early.
        const int left_guard = e.type() == 0x24u ? -0x1100 : -0x0200;
        if (dx > 0 && nx < left_guard) { e.clear(); continue; }
        e.set_x_fixed(std::uint16_t(std::int16_t(nx)));
        e.set_y_fixed(std::uint16_t(std::int16_t(ny)));
        if (e.type() == 0x1fu)
            e.raw[0x05] = std::int16_t(e.x_fixed()) >= 0x1c00 ? 1u : 0u;
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
        if (e.type() == 0x20u && e.state() == 1u &&
            ((unsigned(game.logic_phase) + i + 1u) & 7u) == 0u) {
            // Bank-05 $8304-$8326: CA02+slot-id staggers this relatively
            // expensive player-vector update over eight object-logic ticks.
            const auto dir = stage0_direction8(game, e);
            e.raw[0x06] = e.raw[0x20] ? kType20Alt[dir] : kType20Normal[dir];
        }
    }
    game.logic_phase = std::uint8_t((game.logic_phase + 1u) & 7u);
}

void step_stage0_objects(GameState& game) noexcept {
    // Compatibility helper used by deterministic seek/tests: one complete
    // original scenery tick. Interactive preview uses the split 60/15-Hz APIs.
    scroll_stage0_objects(game, 0x40, 0);
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
    const bool global_base = type == 0x20u || type == 0x22u ||
                             type == 0x24u || type == 0x26u;
    if (type != 0x1fu && !global_base) return false;

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
    if (def_cpu < 0x8000u || def_cpu >= 0xa000u) return false;
    const auto bank = rom.bank(7);
    const unsigned d = unsigned(def_cpu - 0x8000u);
    if (d + 4u > bank.size()) return false;
    const int yoff = int(static_cast<std::int8_t>(bank[d]));
    const int xoff = int(static_cast<std::int8_t>(bank[d + 1u]));
    out.tile_y_offset = yoff + place_y;
    out.tile_x_offset = xoff + place_x;
    out.rows = bank[d + 2u];
    out.cols = bank[d + 3u];
    const unsigned count = unsigned(out.rows) * unsigned(out.cols);
    if (!count || count > 256u || d + 4u + count > bank.size()) return false;
    out.x = int(std::int16_t(entity.x_fixed())) / 32 + out.tile_x_offset * 8;
    out.y = int(std::int16_t(entity.y_fixed())) / 32 + out.tile_y_offset * 8;
    out.tiles.assign(bank.begin() + d + 4u, bank.begin() + d + 4u + count);
    return true;
}

bool decode_stage0_tile_frame(const Rom& rom, const Entity64& entity,
                              unsigned frame, Stage0TileVisual& out) {
    out = {};
    const auto bank = rom.bank(7);
    const unsigned type_entry = (0x8596u - 0x8000u)
                              + (unsigned(entity.type()) - 1u) * 2u;
    if (type_entry + 1u >= bank.size()) return false;
    const auto list_cpu = le16(bank, type_entry);
    if (list_cpu < 0x8000u || list_cpu >= 0xa000u) return false;
    const unsigned frame_entry = unsigned(list_cpu - 0x8000u) + frame * 2u;
    if (frame_entry + 1u >= bank.size()) return false;
    const auto def_cpu = le16(bank, frame_entry);
    if (def_cpu < 0x8000u || def_cpu >= 0xa000u) return false;
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
        // Gate/tower compositor, traced at the exact A438 152.50-s state.
        // The handler bypasses the normal type-frame pointer and feeds four
        // raw bank-07 tile matrices to $7AA8/$7AC0 in this order.  DE at the
        // live calls proves the placements relative to the object anchor:
        //   $9179 @ (+0,+0), $91D7 @ (+10,+0),
        //   $9381 @ (-7,-8), $934B @ (+6,-7).
        // Zeros remain transparent, exactly as $7AC2-$7AC7.
        struct Part { std::uint16_t def; int x, y; };
        static constexpr Part parts[] = {
            {0x9179u,  0,  0}, {0x91d7u, 10,  0},
            {0x9381u, -7, -8}, {0x934bu,  6, -7},
        };
        for (const auto& part : parts) {
            Stage0TileVisual v;
            if (decode_stage0_tile_def(rom, entity, part.def, part.x, part.y, v))
                out.push_back(std::move(v));
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
    for (unsigned band = 0; band < 3u; ++band) {
        Stage0TileVisual v;
        if (decode_stage0_tile_frame(rom, entity, phase + band * 8u, v))
            out.push_back(std::move(v));
    }
    return out;
}

void stamp_stage0_tile_objects(const Rom& rom, const Stage0BackgroundStream& stream,
                               const GameState& game,
                               std::array<std::uint8_t, 24u * 32u>& d988) {
    const auto fine_x = std::uint16_t(stream.ca1c() & 0x00ffu);
    const auto fine_y = std::uint16_t(stream.ca1a() & 0x00ffu);
    for (const auto& entity : game.enemies) {
        if (!entity.active()) continue;
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
                const int dy = top + int(y);
                if (dy < 0 || dy >= 24) continue;
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
    if (r.trigger_flag() || r.type_flag()) return false;
    const bool special26 = r.type == 0x26u && r.control_flag();
    if (r.control_flag() && !special26) return false;
    if (r.type != 0x1fu && r.type != 0x20u && r.type != 0x22u &&
        r.type != 0x24u && r.type != 0x26u && r.type != 0x56u) return false;
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
    const unsigned payload_index = special26 ? 1u : 0u;
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
    if (r.type == 0x1fu) {
        e->raw[0x3e] = 0x09;
        e->raw[0x05] = 0x01;
        e->raw[0x24] = 0x00;
        e->raw[0x17] = 0x20;
        e->raw[0x18] = 0x01;
    } else if (r.type == 0x56u) {
        // Exact live creation state at trigger $3018. The original handler
        // consumes the one-byte payload, leaving +2E/+2F at 1, and chooses
        // a 1..8 timer at +20. The deterministic reference run chose 7.
        e->raw[0x20] = 0x07;
        e->raw[0x2e] = 0x01;
        e->raw[0x2f] = 0x01;
        e->raw[0x3f] = 0x01;
    } else if (r.payload.size() >= 2u) {
        e->raw[0x20] = r.payload[1];
    }
    e->state() = 1;
    return true;
}
}

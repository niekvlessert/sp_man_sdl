#include "assets.hpp"
#include <algorithm>
#include <stdexcept>

namespace sm {
namespace {
struct SourceReader {
    const Rom& rom;
    unsigned bank = 0;
    unsigned off = 0;

    std::uint8_t get() {
        if (bank >= rom.banks()) throw std::runtime_error("asset source bank overflow");
        auto v = rom.bank(bank)[off++];
        if (off == Rom::BankSize) { off = 0; ++bank; }
        return v;
    }
};

std::uint8_t rotl3(std::uint8_t v) {
    return std::uint8_t((v << 3) | (v >> 5));
}

SourceReader source_reader(const Rom& rom, std::uint16_t ptr, std::uint8_t selector) {
    const auto h = std::uint8_t(ptr >> 8);
    const unsigned bank = 0x0cu + selector + rotl3(h & 0xe0u);
    const unsigned off = (unsigned(h & 0x1fu) << 8) | (ptr & 0xffu);
    return {rom, bank, off};
}
std::vector<std::uint8_t> decode_rle(const Rom& rom, std::uint16_t ptr,
                                     std::uint8_t selector) {
    auto src = source_reader(rom, ptr, selector);
    std::vector<std::uint8_t> out;
    for (;;) {
        const auto control = src.get();
        if (control == 0) break;
        const unsigned count = control & 0x7fu;
        if (control & 0x80u) {
            for (unsigned i = 0; i < count; ++i) out.push_back(src.get());
        } else {
            const auto value = src.get();
            out.insert(out.end(), count, value);
        }
        if (out.size() > 0x20000u) throw std::runtime_error("asset RLE runaway");
    }
    return out;
}

std::uint8_t reverse_bits(std::uint8_t v) {
    v = std::uint8_t(((v & 0x55u) << 1) | ((v >> 1) & 0x55u));
    v = std::uint8_t(((v & 0x33u) << 2) | ((v >> 2) & 0x33u));
    return std::uint8_t((v << 4) | (v >> 4));
}
void flip_vertical(std::vector<std::uint8_t>& data) {
    const auto full = data.size() - (data.size() % 8u);
    for (std::size_t i = 0; i < full; i += 8) {
        std::reverse(data.begin() + std::ptrdiff_t(i),
                     data.begin() + std::ptrdiff_t(i + 8));
    }
}

void flip_horizontal(std::vector<std::uint8_t>& data) {
    for (auto& v : data) v = reverse_bits(v);
}

struct DestinationLists {
    std::array<std::vector<unsigned>, 8> list;
    unsigned next = 0;
};

std::uint8_t bank10(const Rom& rom, unsigned cpu_addr) {
    if (cpu_addr < 0x8000u || cpu_addr >= 0xa000u)
        throw std::runtime_error("bank-10 CPU address out of range");
    return rom.bank(10)[cpu_addr - 0x8000u];
}

DestinationLists parse_lists(const Rom& rom, unsigned p) {
    DestinationLists r;
    unsigned destination = 0;
    for (;;) {
        const auto x = bank10(rom, p++);
        if (x == 0xffu) { r.next = p; return r; }
        ++destination;
        if (x != 0) {
            if (x > 8) throw std::runtime_error("bad destination-list selector");
            r.list[x - 1].push_back(destination);
        }
    }
}

unsigned block_address(unsigned encoded) {
    unsigned a = encoded - 1u;
    const bool upper = a >= 12u;
    if (upper) a -= 12u;
    const unsigned h = ((((a & 0xfcu) << 4) & 0xffu) + ((a & 3u) << 3)) & 0xffu;
    return (upper ? 0x10000u : 0u) | (h << 8);
}

void upload(std::vector<std::uint8_t>& vram, unsigned address,
            const std::vector<std::uint8_t>& data) {
    for (std::size_t i = 0; i < data.size(); ++i)
        vram[(address + unsigned(i)) & 0x1ffffu] = data[i];
}

void process_group(const Rom& rom, unsigned resolved,
                   std::vector<std::uint8_t>& vram) {
    unsigned p = resolved + 1u;
    for (;;) {
        auto lists = parse_lists(rom, p);
        p = lists.next;
        for (;;) {
            const auto marker = bank10(rom, p);
            if (marker == 0xffu) return;
            if (marker == 0xfeu) { ++p; break; }

            std::array<std::uint8_t, 8> d{};
            for (unsigned i = 0; i < 8; ++i) d[i] = bank10(rom, p + i);
            p += 8;
            const auto flags = d[0], mask = d[1], tile_offset = d[2], selector = d[7];
            const std::array<std::uint16_t, 2> source = {
                std::uint16_t(d[3] | (unsigned(d[4]) << 8)),
                std::uint16_t(d[5] | (unsigned(d[6]) << 8))};

            for (unsigned plane = 0; plane < 2; ++plane) {
                auto data = decode_rle(rom, source[plane], selector);
                if (flags & 1u) flip_vertical(data);
                if ((flags & 2u) && plane == 0) flip_horizontal(data);
                for (unsigned li = 0; li < 8; ++li) {
                    if (!(mask & (0x80u >> li))) continue;
                    for (auto encoded : lists.list[li]) {
                        const unsigned logical = (block_address(encoded)
                            + unsigned(tile_offset) * 8u
                            + (plane ? 0x2000u : 0u)) & 0x1ffffu;
                        upload(vram, logical, data);
                    }
                }
            }
        }
    }
}

void process_sprite_table(const Rom& rom, unsigned cpu_addr,
                          Stage0VideoAssets& out) {
    unsigned p = cpu_addr;
    for (;;) {
        const auto mask = bank10(rom, p);
        if (mask == 0) return;
        const auto base = bank10(rom, p + 1u);
        const auto source = std::uint16_t(bank10(rom, p + 2u)
                          | (unsigned(bank10(rom, p + 3u)) << 8));
        const auto selector = bank10(rom, p + 4u);
        const auto object_type = bank10(rom, p + 5u);
        auto data = decode_rle(rom, source, selector);
        for (unsigned plane = 0; plane < 3; ++plane) {
            if (!(mask & (1u << plane))) continue;
            const unsigned dest = 0xc800u + unsigned(base) * 8u + plane * 0x800u;
            upload(out.vram, dest, data);
        }
        if (object_type < out.object_pattern_base.size()) {
            out.object_pattern_base[object_type] = base;
            out.object_pattern_page[object_type]=(mask&2u)?1u:((mask&4u)?2u:0u);
        }
        p += 6u;
    }
}

std::array<std::uint16_t, 16> level1_palette() {
    // Captured from stable real level-1 gameplay at t=20.000003. The game animates
    // palettes through its $EFxx palette state; that engine is being ported
    // separately. Keeping the exact GRB values here makes the level renderer
    // independent from an openMSX palette dump in the meantime.
    return {0x0002,0x0004,0x0116,0x0227,0x0250,0x0222,0x0070,0x0117,
            0x0445,0x0030,0x0770,0x0647,0x0326,0x0333,0x0777,0x0000};
}
std::array<std::uint16_t, 16> apply_palette_script(
        const Rom& rom, std::array<std::uint16_t, 16> palette, unsigned cpu_addr,unsigned bank_index=27u,unsigned base=0xa000u) {
    const auto bank = rom.bank(bank_index);
    unsigned p = cpu_addr - base;
    while (p < bank.size() && bank[p] < 0xF0u) {
        if (p + 1u >= bank.size()) break;
        const auto a = bank[p++];
        const auto b = bank[p++];
        const unsigned index = (b >> 4) & 0x0Fu;
        const unsigned r = (a >> 4) & 7u;
        const unsigned g = b & 7u;
        const unsigned bl = a & 7u;
        palette[index] = std::uint16_t((g << 8) | (r << 4) | bl);
    }
    return palette;
}
std::array<std::uint16_t, 16> apply_boss_palette_entries(
        const Rom& rom, std::array<std::uint16_t, 16> palette, unsigned cpu_addr) {
    // Boss palette tables are eight raw V9938 register writes. The stage-0
    // normal table is bank07:$86E4 and the persistent low-HP/red table is
    // bank07:$8764. Preserve untouched palette indices from the scene palette.
    const auto bank = rom.bank(7);
    unsigned p = cpu_addr - 0x8000u;
    for (unsigned n = 0; n < 8u; ++n) {
        if (p + 1u >= bank.size()) break;
        const auto a = bank[p++];
        const auto b = bank[p++];
        const unsigned index = (b >> 4) & 0x0fu;
        const unsigned r = (a >> 4) & 7u;
        const unsigned g = b & 7u;
        const unsigned bl = a & 7u;
        palette[index] = std::uint16_t((g << 8) | (r << 4) | bl);
    }
    return palette;
}
}

Stage0VideoAssets decode_stage0_video(const Rom& rom) { return decode_stage_video(rom,0); }
Stage0VideoAssets decode_stage_video(const Rom& rom,unsigned stage) {
    if(stage>=9u) throw std::out_of_range("stage graphics index");
    Stage0VideoAssets result;
    result.vram.assign(0x20000u, 0);
    // Resolved endpoints of the three stage-0 bank-10 asset command groups.
    // Each points at the $FF ending the command preamble; destination lists
    // and the 8-byte graphics descriptors immediately follow.
    const unsigned root=unsigned(bank10(rom,0x8165u+stage*2u))|
        (unsigned(bank10(rom,0x8166u+stage*2u))<<8u);
    unsigned end=root;
    while(bank10(rom,end)!=0xffu) ++end;
    process_group(rom,0x840bu,result.vram);
    process_group(rom,end,result.vram);
    if(stage==0u) process_group(rom,0x8666u,result.vram);

    // $8371: global sprite patterns, then the stage-0 table selected through
    // the pointer list at $83C0. These also build the original $DFxx table.
    process_sprite_table(rom, 0x92b8u, result);
    const unsigned sprites=unsigned(bank10(rom,0x83c0u+stage*2u))|
        (unsigned(bank10(rom,0x83c1u+stage*2u))<<8u);
    process_sprite_table(rom,sprites,result);
    // Bank02's weapon renderer maintains sprite bitmaps outside the compressed
    // stage tables.  $871E/$8749 installs the O-direction patterns at $C9A0
    // (and the second R6 page at $D1A0); $8732 installs the primary shot at
    // $CA00; $8950 installs the type-8 M/missile patterns at $CA20.  Native
    // SDL can preload them because visibility is still controlled by the
    // projectile records themselves.
    const auto option_weapon = rom.bank(2).subspan(0x9b0u, 0x40u); // $89B0-$89EF
    for (unsigned destination : {0xc9a0u, 0xd1a0u})
        std::copy(option_weapon.begin(), option_weapon.end(), result.vram.begin() + destination);
    const auto primary_weapon = rom.bank(2).subspan(0x9b0u, 0x20u);
    for (unsigned destination : {0xca00u, 0xd200u, 0xda00u})
        std::copy(primary_weapon.begin(), primary_weapon.end(), result.vram.begin() + destination);
    const auto missile_weapon = rom.bank(2).subspan(0xb30u, 0x40u); // $8B30-$8B6F
    for (unsigned destination : {0xca20u, 0xd220u})
        std::copy(missile_weapon.begin(), missile_weapon.end(), result.vram.begin() + destination);
    result.palette_grb = level1_palette();
    if(stage>0u) result.palette_grb=apply_palette_script(rom,result.palette_grb,root,10u,0x8000u);
    result.late_palette_grb = apply_palette_script(rom, result.palette_grb, 0xA43Au);
    result.tower_palette_grb = apply_palette_script(rom, result.late_palette_grb, 0xA44Du);
    // Stage 2 (stage index 1) has its own final-sector palette scripts in
    // bank 27. $A94A fades the selected machinery colours to black, then
    // $A95D installs the green boss palette. Keep those as palette sets 1/2
    // so the live stream's FF13 commands can select them.
    if(stage==1u) {
        result.late_palette_grb=apply_palette_script(rom,result.palette_grb,0xA94Au);
        result.tower_palette_grb=apply_palette_script(rom,result.late_palette_grb,0xA95Du);
    }
    // AA22 selects the stage-0 red boss table through bank07:$86D2 -> $8764.
    // This is the palette held once HP <= HP/4; hits additionally flash $666.
    result.tower_red_palette_grb = apply_boss_palette_entries(rom, result.tower_palette_grb, 0x8764u);
    // Type $56 uses CE4B=8: normal pointer table $86C0 -> $8754 and
    // alternate/red pointer table $86D2 -> $87D4. These writes affect the
    // complete VDP palette, hence the whole surrounding platform reddens.
    result.vehicle_tower_palette_grb = apply_boss_palette_entries(rom, result.late_palette_grb, 0x8754u);
    result.vehicle_tower_red_palette_grb = apply_boss_palette_entries(rom, result.vehicle_tower_palette_grb, 0x87d4u);
    if(stage>1u) {
        result.late_palette_grb=result.palette_grb;
        result.tower_palette_grb=result.palette_grb;
    }
    return result;
}
}

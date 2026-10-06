#include "rom_tile_script.hpp"

namespace sm {
namespace {
bool cpu_offset(std::span<const std::uint8_t> bank,std::uint16_t cpu_base,
                std::uint16_t cpu,unsigned& out) noexcept {
    if(cpu<cpu_base) return false;
    out=unsigned(cpu-cpu_base);
    return out<bank.size();
}
std::uint16_t le16(std::span<const std::uint8_t> bank,unsigned p) noexcept {
    return std::uint16_t(bank[p])|(std::uint16_t(bank[p+1u])<<8u);
}
}

std::vector<RomTilePlacement> decode_packed_tile_placement_list(
        std::span<const std::uint8_t> bank,std::uint16_t cpu_base,
        std::uint16_t list_cpu) noexcept {
    std::vector<RomTilePlacement> out;
    unsigned p=0;
    if(!cpu_offset(bank,cpu_base,list_cpu,p) || p>=bank.size()) return out;
    const unsigned packed_len=bank[p++];
    if(packed_len<2u || p+packed_len-1u>bank.size()) return out;
    const unsigned end=p+packed_len-1u;

    int place_y=0,place_x=0;
    bool need_position=true;
    while(p<end) {
        if(need_position) {
            if(p+2u>end) break;
            place_y=int(static_cast<std::int8_t>(bank[p++]));
            place_x=int(static_cast<std::int8_t>(bank[p++]));
            need_position=false;
        }
        if(p>=end) break;
        const auto control=bank[p++];
        if(control==0xffu) break;
        if(control==0xfeu) {need_position=true;continue;}
        const unsigned count=control;
        if(p+count>end) break;
        for(unsigned i=0;i<count;++i)
            out.push_back({bank[p++],place_y,place_x});
    }
    return out;
}

std::vector<RomTilePlacement> decode_packed_tile_placement_table(
        std::span<const std::uint8_t> bank,std::uint16_t cpu_base,
        std::uint16_t table_cpu,unsigned selector) noexcept {
    unsigned table=0;
    if(!cpu_offset(bank,cpu_base,table_cpu,table)) return {};
    const unsigned q=table+selector*2u;
    if(q+1u>=bank.size()) return {};
    return decode_packed_tile_placement_list(bank,cpu_base,le16(bank,q));
}

} // namespace sm

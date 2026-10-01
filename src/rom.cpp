#include "rom.hpp"
#include <fstream>
#include <stdexcept>

namespace sm {
Rom::Rom(const std::filesystem::path& path) {
    std::ifstream f(path, std::ios::binary);
    if (!f) throw std::runtime_error("cannot open ROM: " + path.string());
    data_ = {std::istreambuf_iterator<char>(f), std::istreambuf_iterator<char>()};
    if (data_.size() < 16 || data_[0] != 'A' || data_[1] != 'B')
        throw std::runtime_error("not an MSX ROM image");
    if ((data_.size() % BankSize) != 0) throw std::runtime_error("ROM size is not 8 KiB aligned");
}
std::span<const std::uint8_t> Rom::bank(unsigned n) const {
    if (n >= banks()) throw std::out_of_range("ROM bank");
    return {data_.data() + std::size_t(n) * BankSize, BankSize};
}
std::uint16_t Rom::init_address() const noexcept {
    return std::uint16_t(data_[2]) | (std::uint16_t(data_[3]) << 8);
}
std::uint8_t KonamiSccMap::read(std::uint16_t addr) const {
    if (addr < 0x4000 || addr >= 0xc000) return 0xff;
    const unsigned page = (addr - 0x4000) >> 13;
    const auto b = unsigned(bank_[page]) % unsigned(rom_.banks());
    return rom_.bank(b)[addr & 0x1fff];
}
void KonamiSccMap::write(std::uint16_t addr, std::uint8_t value) {
    // Konami SCC mapper decode ranges. Space Manbow uses 7000/9000/B000.
    if (addr >= 0x5000 && addr < 0x5800) bank_[0] = value;
    else if (addr >= 0x7000 && addr < 0x7800) bank_[1] = value;
    else if (addr >= 0x9000 && addr < 0x9800) bank_[2] = value;
    else if (addr >= 0xb000 && addr < 0xb800) bank_[3] = value;
}
}

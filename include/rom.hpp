#pragma once
#include <array>
#include <cstdint>
#include <filesystem>
#include <span>
#include <vector>

namespace sm {
class Rom {
public:
    static constexpr std::size_t BankSize = 0x2000;
    explicit Rom(const std::filesystem::path& path);
    std::size_t size() const noexcept { return data_.size(); }
    std::size_t banks() const noexcept { return data_.size() / BankSize; }
    std::span<const std::uint8_t> bank(unsigned n) const;
    std::uint16_t init_address() const noexcept;
private:
    std::vector<std::uint8_t> data_;
};

class KonamiSccMap {
public:
    explicit KonamiSccMap(const Rom& rom) : rom_(rom) {}
    std::uint8_t read(std::uint16_t addr) const;
    void write(std::uint16_t addr, std::uint8_t value);
    std::array<std::uint8_t,4> selected() const noexcept { return bank_; }
    bool scc_enabled() const noexcept { return (bank_[2] & 0x3f) == 0x3f; }
private:
    const Rom& rom_;
    // Space Manbow leaves 4000-5FFF at ROM bank 0 and switches the other 3.
    std::array<std::uint8_t,4> bank_{0,1,2,3};
};
}

#pragma once
#include "rom.hpp"
#include <array>
#include <cstdint>

namespace sm {
struct Stage0PresentationState {
    std::uint8_t r2 = 0x31;   // active SCREEN-4 name-table page
    std::uint8_t r5 = 0xf7;   // active sprite-mode-2 table
    std::uint8_t lower_r5 = 0xff; // SAT selected at the R19 split
    std::uint8_t r18 = 0x08;  // horizontal display adjust
    std::uint8_t r19 = 0x00;  // lower raster split line
    std::uint8_t r23 = 0x1c;  // vertical display scroll
};

class Stage0BackgroundStream {
public:
    explicit Stage0BackgroundStream(const Rom& rom);
    void reset();
    void reset_stage(unsigned stage);
    void reset_checkpoint(unsigned stage,unsigned checkpoint);
    void step_15hz();
    void step_60hz();
    void seek_world_x(unsigned x);
    void set_tower_destroyed(bool value) noexcept { tower_destroyed_=value; }
    // Fixed $6C75: final-sector type $3C selector 0 derives the raster fine
    // scroll bytes from its own 8.8 position without changing world position.
    void apply_object_raster_anchor(std::uint16_t x_fixed,std::uint16_t y_fixed,
                                    std::uint8_t bias) noexcept;

    // Original stage-0 composition state (ring -> D988 -> parallax).
    std::array<std::uint8_t, 24u * 32u> compose_d988_raw() const;
    void apply_d988_parallax(std::array<std::uint8_t, 24u * 32u>& d988) const;
    void apply_d988_parallax_phase(std::array<std::uint8_t, 24u * 32u>& d988,
                                   std::uint16_t phase) const;
    void apply_fast_ground(std::array<std::uint8_t, 24u * 32u>& d988,
                           bool alternate = false) const;
    void apply_fast_ground_phase(std::array<std::uint8_t,24u*32u>& d988,
                                 bool alternate,std::uint8_t phase,
                                 std::uint8_t row_offset) const;
    std::array<std::uint8_t, 24u * 32u> compose_d988_base() const;
    // Fully composed logical column immediately to the right of D988. This is
    // native-only staging for borderless fine-scroll presentation.
    std::array<std::uint8_t,24u> compose_right_edge(bool include_stars=true) const;
    std::array<std::uint8_t,24u> compose_left_edge() const;
    std::uint16_t star_x_phase() const noexcept { return c0e8_; }
    std::uint16_t ca1a() const noexcept; // signed Y tile-scroll delta, 8.8
    std::uint16_t ca1c() const noexcept; // signed X tile-scroll delta, 8.8
    std::int32_t x_velocity_fp() const noexcept { return x_vel_fp_; }
    std::int32_t y_velocity_fp() const noexcept { return y_vel_fp_; }

    unsigned stage_index() const noexcept { return stage_index_; }
    unsigned pattern_base(int graphics_override=-1) const noexcept;
    unsigned color_base(int graphics_override=-1) const noexcept;
    unsigned world_x() const noexcept;
    int world_y() const noexcept;
    std::uint16_t source_address() const noexcept { return source_; }
    std::uint8_t mode() const noexcept { return mode_; }
    std::uint8_t graphics_set() const noexcept { return graphics_set_; }
    std::uint16_t trigger_cursor() const noexcept { return trigger_cursor_; }
    std::uint8_t palette_set() const noexcept { return palette_set_; }
    std::uint8_t spawn_direction() const noexcept { return c0d5_; }
    std::uint8_t scroll_row() const noexcept { return c0d2_; }
    bool fast_ground_alternate() const noexcept {
        // $5DC8/$5DD0 accepts either the active context (C0B4) or its
        // pending request (C0B5). graphics_set_ is our active equivalent.
        return graphics_set_ == 6u || c0b5_ == 6u;
    }
    std::uint8_t fast_ground_phase() const noexcept { return ca3a_; }
    std::uint16_t parallax_phase() const noexcept {
        return std::uint16_t((std::uint16_t(parallax_h_)<<8u)|
                             (std::uint16_t(0xcdu-parallax_l_)<<5u));
    }
    std::uint8_t star_tile() const noexcept { return parallax_l_; }
    std::uint8_t vertical_scroll() const noexcept;
    Stage0PresentationState presentation_state() const noexcept;
    std::uint8_t view_tile(unsigned x, unsigned y) const noexcept;
    bool gated() const noexcept { return gated_; }
    std::uint8_t palette_fade_ticks() const noexcept { return palette_fade_ticks_; }
    bool palette_fade_active() const noexcept { return palette_fade_active_; }
    bool stage3_stars_enabled() const noexcept { return !(stage_index_==2u && gated_); }
    std::uint8_t tile(unsigned x, unsigned y) const noexcept;
    // Fixed $76D0->$76F1->$4E3A: object name-table writes use only the
    // low CA1A/CA1C fine-scroll bytes to select the coarse object cell, then
    // add integrated C0CC/C0CD to address the physical 64x32 E000 ring.
    bool write_object_tile(std::uint16_t x_fixed,std::uint16_t y_fixed,
                           std::uint8_t tile) noexcept;
    std::uint8_t ring_tile(unsigned col, unsigned row) const noexcept { return ring_[(row & 31u) * 64u + (col & 63u)]; }

private:
    const Rom& rom_;
    unsigned stage_index_=0;
    std::array<std::uint8_t, 64u * 32u> ring_{};
    std::array<std::uint8_t,64u*32u> overscan_{};
    std::array<bool,64u*32u> overscan_valid_{};
    std::uint16_t source_ = 0xA13F;
    std::uint16_t phase_accum_ = 0;
    std::uint16_t phase_step_ = 0x0200;
    std::int32_t x_fp_ = 1536 << 8;
    std::int32_t y_fp_ = 0;
    std::int32_t x_vel_fp_ = 2 << 8;
    std::int32_t y_vel_fp_ = 0;
    std::uint8_t mode_ = 2;
    std::uint8_t graphics_set_ = 0;
    std::uint8_t palette_set_ = 1;
    std::uint8_t macro_phase_ = 0;
    std::uint8_t c0d2_ = 0x38; // original rotating name-table row / fine Y scroll
    std::uint8_t c0b5_ = 0x00; // raster-context request; $11 cfg<7 writes this via $79C2
    std::uint8_t c0d5_ = 0x01; // spawn/scroll direction code from preset byte 10
    std::uint8_t c09b_ = 0x82; // raster double-buffer phase at the $A13F anchor
    std::uint8_t ca3a_ = 0x03; // 15-Hz fast-ground phase; A13F/A288 both phase 3
    std::array<std::uint8_t, 25> e800_{}; // per-row parallax/star positions (+ sentinel)
    std::uint16_t c0e6_ = 0;             // vertical parallax phase
    std::uint16_t c0e8_ = 0xafa0;        // horizontal parallax phase
    std::uint8_t parallax_h_ = 0x4f;
    std::uint8_t parallax_l_ = 0xcd;
    std::uint16_t trigger_cursor_ = 0x10c0; // original $CA34 at $A13F entry
    unsigned metatile_base_=0;
    bool tower_destroyed_=false;
    bool gated_ = false;
    std::uint8_t palette_fade_ticks_ = 0; // original EF60 low-6 fade countdown for stage-3 A94A
    bool palette_fade_active_ = false;
    bool frame_service_seen_ = false;
    bool suppress_prefetch_ = false;
    bool object_raster_anchor_ = false;
    std::uint8_t anchor_ca1a_low_ = 0;
    std::uint8_t anchor_ca1c_low_ = 0;
    std::uint8_t anchor_c0bb_ = 0;

    unsigned ring_col() const noexcept;
    unsigned ring_row() const noexcept;
    void apply_preset(unsigned preset);
    void advance_trigger_segment() noexcept;
    bool prepare_data();
    void stream_phase();
    void write_vertical(std::uint16_t source, int col_offset);
    void write_horizontal(std::uint16_t source, int col_offset, int row_offset,
                          unsigned row_phase,unsigned blocks=15);
    void put(int col, int row, std::uint8_t tile) noexcept;
    void step_parallax();
    void prefetch_successor_column();
};
}

#pragma once
#include "title_animation.hpp"
#include <array>
#include <memory>
#include <span>
#include <utility>
namespace sm {
// The full, unmodified-ROM presentation: story followed by one recorded demo.
class AttractPresentation {
public:
    explicit AttractPresentation(const std::filesystem::path& directory):directory_(directory) {}
    void reset(unsigned index);
    void reset_game(unsigned index);
    void advance(double seconds);
    const std::vector<std::uint32_t>& pixels();
    bool story() const noexcept {return story_;}
    bool finished() const noexcept {return finished_;}
    unsigned frame_index() const noexcept;
    unsigned frame_count() const noexcept {return current_->frame_count();}
    unsigned track() const noexcept {return track_;}
    std::span<const unsigned> requests() const noexcept {return requests_;}
private:
    void begin(bool story);
    std::filesystem::path directory_;
    std::unique_ptr<TitleAnimation> story_animation_;
    std::array<std::unique_ptr<TitleAnimation>,3> demos_;
    TitleAnimation* current_=nullptr;
    std::vector<std::pair<unsigned,unsigned>> cues_;
    std::vector<unsigned> requests_;
    unsigned index_=0,track_=0;
    std::size_t cue_=0;
    double elapsed_=0;
    bool story_=true,finished_=false;
};
}

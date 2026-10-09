#include "ending_demo.hpp"
#include <algorithm>
#include <cmath>
#include <fstream>
#include <stdexcept>

namespace sm {
EndingDemo::EndingDemo(const std::filesystem::path& directory)
    : animation_(directory/"ending.anim") {
    if(animation_.width()!=256u || animation_.height()!=212u)
        throw std::runtime_error("ending has unexpected dimensions");
    std::ifstream in(directory/"music.tsv");
    if(!in) throw std::runtime_error("ending music cues missing");
    unsigned frame,track;
    while(in>>frame>>track) {
        if(frame>=frame_count() || (track && track!=73u && track!=83u && track!=132u) ||
           (!music_cues_.empty() && frame<=music_cues_.back().first))
            throw std::runtime_error("invalid ending music cue");
        music_cues_.emplace_back(frame,track);
    }
    if(!in.eof() || music_cues_.empty() || music_cues_.front().first!=0u)
        throw std::runtime_error("invalid ending music cues");
}
void EndingDemo::advance(double seconds) {
    if(std::isfinite(seconds) && seconds>0)
        elapsed_=std::min(elapsed_+seconds,double(frame_count())/fps());
}
unsigned EndingDemo::frame_index() const noexcept {
    return std::min(frame_count()-1u,unsigned(elapsed_*fps()));
}
unsigned EndingDemo::music_track() const noexcept {
    unsigned track=0;
    for(const auto& cue:music_cues_) {
        if(cue.first>frame_index()) break;
        if(cue.second==0u || cue.second==73u) track=cue.second;
    }
    return track;
}
unsigned EndingDemo::music_request() const noexcept {
    unsigned request=0;
    for(const auto& cue:music_cues_) {
        if(cue.first>frame_index()) break;
        request=cue.second;
    }
    return request;
}
bool EndingDemo::finished() const noexcept { return elapsed_>=double(frame_count())/fps(); }
}

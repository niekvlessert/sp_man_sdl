#include "attract_presentation.hpp"
#include <algorithm>
#include <cmath>
#include <fstream>
#include <stdexcept>
namespace sm {
void AttractPresentation::begin(bool story) {
    story_=story;elapsed_=0;cue_=0;track_=0;
    const auto name=story?std::string("story"):"demo_"+std::to_string(index_);
    if(!story) for(unsigned i=0;i<demos_.size();++i) if(i!=index_) demos_[i].reset();
    auto& movie=story?story_animation_:demos_[index_];
    if(!movie) movie=std::make_unique<TitleAnimation>(directory_/(name+".anim"));
    current_=movie.get();
    if(current_->width()!=256u || current_->height()!=212u || current_->fps()!=60u)
        throw std::runtime_error("invalid attract movie dimensions");
    std::ifstream in(directory_/(name+".tsv"));
    if(!in) throw std::runtime_error("missing attract music cues");
    cues_.clear();unsigned frame,request;
    while(in>>frame>>request) {
        if(frame>=frame_count() || (request>85u && request!=132u) ||
           (!cues_.empty() && frame<cues_.back().first))
            throw std::runtime_error("invalid attract music cue");
        cues_.emplace_back(frame,request);
    }
    if(!in.eof() || cues_.empty() || cues_.front()!=std::pair<unsigned,unsigned>{0,0})
        throw std::runtime_error("invalid attract music cues");
}
void AttractPresentation::reset(unsigned index) {
    if(index>=3u) throw std::out_of_range("attract movie index");
    index_=index;finished_=false;requests_.clear();begin(true);
}
void AttractPresentation::reset_game(unsigned index) {
    if(index>=3u) throw std::out_of_range("attract movie index");
    index_=index;finished_=false;requests_.clear();begin(false);
}
unsigned AttractPresentation::frame_index() const noexcept {
    return std::min(frame_count()-1u,unsigned(elapsed_*current_->fps()));
}
void AttractPresentation::advance(double seconds) {
    requests_.clear();
    if(!std::isfinite(seconds) || seconds<0 || finished_) return;
    elapsed_+=seconds;
    if(elapsed_>=double(frame_count())/current_->fps()) {
        if(story_) {
            const auto remainder=elapsed_-double(frame_count())/current_->fps();
            begin(false);elapsed_=remainder;
        } else {finished_=true;return;}
    }
    while(cue_<cues_.size() && cues_[cue_].first<=frame_index()) {
        const auto request=cues_[cue_++].second;requests_.push_back(request);
        if(request==0u || request==85u) track_=0;
        else if(request==59u || request==60u || request==62u || request==74u) track_=request;
    }
}
const std::vector<std::uint32_t>& AttractPresentation::pixels() {
    return current_->frame(frame_index());
}
}

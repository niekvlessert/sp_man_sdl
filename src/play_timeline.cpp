#include "play_timeline.hpp"
#include <algorithm>

namespace sm {
PlayTimeline::PlayTimeline(const Rom& rom):rom_(rom) {reset();}
void PlayTimeline::reset() {
    session_=std::make_unique<PlaySession>(rom_);inputs_.clear();
    checkpoints_.clear();loadout_frame_=~0u;
    checkpoints_[0]=std::make_unique<PlaySession>(*session_);
}
void PlayTimeline::advance(PlayerInput input) {
    inputs_.push_back(input);session_->step_60hz(input);
    if(session_->frame()%100u==0)
        checkpoints_[session_->frame()]=std::make_unique<PlaySession>(*session_);
}
void PlayTimeline::step(PlayerInput input) {
    const auto frame=session_->frame();
    inputs_.resize(frame);
    checkpoints_.erase(checkpoints_.upper_bound(frame),checkpoints_.end());
    if(loadout_frame_>frame) loadout_frame_=~0u;
    advance(input);
}
void PlayTimeline::restore(unsigned frame) {
    auto checkpoint=std::prev(checkpoints_.upper_bound(frame));
    session_=std::make_unique<PlaySession>(*checkpoint->second);
    while(session_->frame()<frame) {
        session_->step_60hz(inputs_[session_->frame()]);
        if(session_->frame()==loadout_frame_) session_->set_max_test_loadout();
    }
}
void PlayTimeline::scrub(int frames) {
    const auto target=unsigned(std::max(0ll,static_cast<long long>(session_->frame())+frames));
    if(target<=inputs_.size()) restore(target);
    else {
        restore(unsigned(inputs_.size()));
        while(session_->frame()<target) advance({});
    }
}
void PlayTimeline::jump(unsigned decile) {
    session_->seek_decile(decile);const auto target=session_->frame();
    reset();while(session_->frame()<target) advance({});
    // 0 is a fresh game. Later shortcuts remain useful combat test fixtures.
    if(decile) {
        session_->set_max_test_loadout();loadout_frame_=target;
        checkpoints_[target]=std::make_unique<PlaySession>(*session_);
    }
}
}

#include "play_timeline.hpp"
#include <algorithm>

namespace sm {
PlayTimeline::PlayTimeline(const Rom& rom):rom_(rom) {reset();}
void PlayTimeline::reset(unsigned stage) {
    session_=std::make_unique<PlaySession>(rom_);session_->reset(stage);session_->set_invulnerable(invulnerable_);inputs_.clear();
    checkpoints_.clear();loadout_events_.clear();
    checkpoints_[0]=std::make_unique<PlaySession>(*session_);
}
void PlayTimeline::set_invulnerable(bool enabled) {
    invulnerable_=enabled;session_->set_invulnerable(enabled);
    for(auto& [frame,checkpoint]:checkpoints_) checkpoint->set_invulnerable(enabled);
}
void PlayTimeline::toggle_upgrades() {
    const auto& u=session_->upgrades();
    const bool maximum=!(u.power==16 && u.speed==4 && u.options==2 && u.wave && u.missile);
    session_->set_test_loadout(maximum);
    const auto frame=session_->frame();inputs_.resize(frame);
    checkpoints_.erase(checkpoints_.upper_bound(frame),checkpoints_.end());
    loadout_events_.erase(loadout_events_.upper_bound(frame),loadout_events_.end());
    loadout_events_[frame]=maximum;checkpoints_[frame]=std::make_unique<PlaySession>(*session_);
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
    loadout_events_.erase(loadout_events_.upper_bound(frame),loadout_events_.end());
    advance(input);
}
void PlayTimeline::restore(unsigned frame) {
    auto checkpoint=std::prev(checkpoints_.upper_bound(frame));
    session_=std::make_unique<PlaySession>(*checkpoint->second);
    while(session_->frame()<frame) {
        session_->step_60hz(inputs_[session_->frame()]);
        if(auto e=loadout_events_.find(session_->frame());e!=loadout_events_.end()) session_->set_test_loadout(e->second);
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
    const unsigned stage=session_->stage_index();
    session_->seek_decile(decile);const auto target=session_->frame();
    reset(stage);session_->set_invulnerable(true);
    while(session_->frame()<target) advance({});
    set_invulnerable(invulnerable_);
    // 0 is a fresh game. Later shortcuts remain useful combat test fixtures.
    if(decile) {
        session_->set_max_test_loadout();loadout_events_[target]=true;
        checkpoints_[target]=std::make_unique<PlaySession>(*session_);
    }
}
}

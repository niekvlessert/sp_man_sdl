#include "attract_demo.hpp"
#include <stdexcept>
namespace sm {
int AttractDemoCycle::advance(double elapsed,bool enabled) noexcept {
    if(!enabled) {idle_=0;return -1;}
    if(elapsed>0) idle_+=elapsed;
    if(idle_<idle_seconds) return -1;
    idle_=0;const auto result=next_;next_=(next_+1u)%3u;return int(result);
}
void AttractDemo::reset(unsigned index) {
    if(index>=3u) throw std::out_of_range("attract demo index");
    const auto selectors=rom_.bank(1);const auto p=0x1877u+index*4u;
    stage_=selectors[p];checkpoint_=selectors[p+1u];
    pointer_=unsigned(selectors[p+2u])|(unsigned(selectors[p+3u])<<8u);
    countdown_=1u;held_=pressed_=0;
}
void AttractDemo::step() {
    if(pointer_<0xa000u || pointer_+2u>=0xc000u) throw std::runtime_error("demo input outside bank1F");
    // DEC wraps a zero duration through 255 before reading the next record.
    if(--countdown_==0u) {
        const auto data=rom_.bank(31);const auto p=pointer_-0xa000u;
        countdown_=data[p];held_=data[p+1u];pressed_=data[p+2u];pointer_+=3u;
    }
}
bool AttractDemo::finished() const noexcept {
    if(pointer_<0xa000u || pointer_+7u>=0xc000u) return true;
    const auto data=rom_.bank(31);const auto p=pointer_-0xa000u;
    return (data[p+5u]&data[p+6u]&data[p+7u])==0xffu;
}
PlayerInput AttractDemo::input() const noexcept {
    return {bool(held_&1u),bool(held_&2u),bool(held_&4u),bool(held_&8u),
            bool(pressed_&0x10u),false,bool(pressed_&0x20u)};
}
}

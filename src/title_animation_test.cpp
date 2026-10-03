#include "title_animation.hpp"
#include <algorithm>
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <iostream>
int main(int argc,char** argv) {
    assert(argc==2);sm::TitleAnimation title(argv[1]);
    assert(title.width()==256u && title.height()==212u && title.fps()==60u && title.frame_count()==650u);
    assert(title.ready_frame()==560u);
    const auto first=title.frame(0);assert(first.size()==256u*212u);
    const auto first_copy=first;const auto last=title.frame(title.frame_count()-1u);
    assert(last.size()==first_copy.size() && last!=first_copy);
    const auto nonblack=std::count_if(last.begin(),last.end(),[](auto c){return (c&0x00ffffffu)!=0u;});
    unsigned changes=0,konami_changes=0;auto previous=first_copy;
    for(unsigned f=1;f<title.frame_count();++f) {
        const auto& current=title.frame(f);
        if(current!=previous) {++changes;if(f<150u) ++konami_changes;}
        previous=current;
    }
    assert(nonblack>1000u && changes>100u && konami_changes>30u);
    std::cout<<"Title animation PASS: 650 ROM frames @ 60 Hz, "<<changes
             <<" image changes, "<<konami_changes<<" Konami drawing changes\n";
}

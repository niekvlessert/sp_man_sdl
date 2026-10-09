#include "title_flow.hpp"
#include "attract_presentation.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <algorithm>
#include <iostream>
#include <limits>

static std::uint64_t rgb_hash(const std::vector<std::uint32_t>& pixels) {
    std::uint64_t hash=14695981039346656037ull;
    for(auto pixel:pixels) for(auto shift:{16u,8u,0u}) {
        hash^=(pixel>>shift)&255u;hash*=1099511628211ull;
    }
    return hash;
}

int main(int argc,char** argv) {
    assert(argc==2);
    sm::TitleFlow title(650u,60u);
    title.advance(1.0);assert(title.frame()==60u && !title.menu());
    title.press_space();assert(title.frame()==255u && !title.menu() && !title.prompt());
    title.press_space();assert(title.frame()==255u && !title.menu());
    title.advance(100.0);assert(title.prompt() && !title.menu());
    title.advance(1000.0);assert(title.prompt() && !title.menu());
    title.press_space();assert(title.menu());
    title.replay_title();assert(!title.menu() && title.frame()==255u);
    title.advance(100.0);assert(title.prompt());
    title.reset();title.advance(560.0/60.0);assert(title.prompt());title.press_space();assert(title.menu());
    title.reset();title.advance(100.0);assert(title.prompt() && !title.menu());

    sm::AttractPresentation demo(argv[1]);
    for(unsigned index=0;index<3u;++index) {
        demo.reset(index);assert(demo.story() && !demo.finished() && demo.track()==0u);
        assert(demo.frame_count()>8000u && demo.pixels().size()==256u*212u);
        demo.advance(30.0);assert(demo.story() && demo.track()==74u);
        const auto story_frame=demo.pixels();
        assert(rgb_hash(story_frame)==0xe069d631a8012d35ull);
        assert(std::count_if(story_frame.begin(),story_frame.end(),[](auto c){return c!=0xff000000u;})>500);
        demo.advance(double(demo.frame_count())/60.0-30.0);
        assert(!demo.story() && !demo.finished() && demo.frame_index()==0u);
        assert(demo.track()==0u && demo.frame_count()>3500u);
        demo.advance(30.0);assert(demo.track()==(index==0u?62u:(index==1u?59u:60u)));
        const auto gameplay_frame=demo.pixels();assert(gameplay_frame!=story_frame);
        const std::uint64_t original_hashes[]={0x80279a6086e2509cull,0x3716929b95b73955ull,0x22b19fdb8d521313ull};
        assert(rgb_hash(gameplay_frame)==original_hashes[index]);
        demo.advance(1000.0);assert(demo.finished());
        demo.reset_game(index);assert(!demo.story() && !demo.finished() && demo.frame_index()==0u);
    }
    // These two seconds contained only 27 / 14 changes in the ROM capture.
    // Verify that planet/ship motion and cockpit doors now have intermediate
    // images, while the story retains its original duration and soundtrack.
    for(auto [start,minimum]:{std::pair{20.0,50u},std::pair{105.0,24u}}) {
        demo.reset(1u);demo.advance(start);
        auto previous=demo.pixels();unsigned changes=0;
        for(unsigned f=0;f<120u;++f) {
            demo.advance(1.0/60.0);const auto pixels=demo.pixels();
            if(pixels!=previous) ++changes;
            previous=pixels;
        }
        assert(changes>minimum && demo.story() && demo.frame_count()==8089u);
    }
    std::cout<<"Intro presentation PASS: Konami skip, title prompt gating, original story, all three demos and music transitions\n";
}

#include "ending_demo.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <algorithm>
#include <array>
#include <fstream>
#include <iostream>
#include <limits>

int main(int argc,char** argv) {
    assert(argc==2);
    const std::filesystem::path directory(argv[1]);
    sm::EndingDemo ending(directory);
    assert(ending.fps()==60u && ending.frame_count()==14811u);
    assert(!ending.finished() && ending.frame_index()==0u && ending.music_track()==0u);
    ending.advance(-1);ending.advance(std::numeric_limits<double>::infinity());
    assert(ending.frame_index()==0u);
    ending.advance(159.0/60.0);
    assert(ending.music_request()==83u && ending.music_track()==0u);
    ending.advance(1.0/60.0);
    assert(ending.music_request()==73u && ending.music_track()==73u);
    ending.advance(240.0);
    assert(ending.music_request()==132u && ending.music_track()==73u && !ending.finished());
    ending.advance(1000);
    assert(ending.finished() && ending.frame_index()==14810u);
    const auto last=ending.pixels();
    ending.reset();assert(!ending.finished() && ending.music_track()==0u);
    assert(ending.frame_index()==0u);

    // Decode every frame, including repeated images. Random/backwards access
    // must resolve repeat offsets without relying on the previously decoded frame.
    sm::TitleAnimation movie(directory/"ending.anim");
    unsigned changes=0;auto previous=movie.frame(0);
    for(unsigned f=1;f<movie.frame_count();++f) {
        const auto& pixels=movie.frame(f);
        assert(pixels.size()==256u*212u);
        if(previous!=pixels) ++changes;
        previous=pixels;
    }
    assert(changes==4354u);
    // RGB hashes taken from the independently decoded physical VRAM capture.
    constexpr std::array<std::pair<unsigned,std::uint64_t>,6> source_frames{{
        {180u,0x173c3a35380aaa77ull}, {1800u,0x317fc2cff7fbf69aull},
        {4800u,0x33efb1b2c3c2ea66ull}, {9000u,0x28dc530c859de65full},
        {13200u,0x6b6236e3b46b53bfull}, {14810u,0x4d994367020dd325ull}
    }};
    for(const auto& sample:source_frames) {
        auto hash=14695981039346656037ull;
        for(auto color:movie.frame(sample.first)) for(int shift:{16,8,0})
            hash=(hash^std::uint8_t(color>>shift))*1099511628211ull;
        assert(hash==sample.second);
    }
    const auto credits=movie.frame(4800);
    assert(credits!=last);
    movie.frame(13000);
    assert(movie.frame(4800)==credits);
    assert(std::count_if(credits.begin(),credits.end(),[](auto c){return c!=0xff000000u;})>500);
    std::cout<<"Ending PASS: complete ROM sequence, repeat/seek decoding, music/fade cues and finish/reset\n";
}

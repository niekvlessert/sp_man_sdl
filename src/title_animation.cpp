#include "title_animation.hpp"
#include <algorithm>
#include <fstream>
#include <iterator>
#include <stdexcept>
#include <zlib.h>

namespace sm {
namespace {
std::uint16_t u16(const std::vector<std::uint8_t>& d,std::size_t p) {
    if(p+2>d.size()) throw std::runtime_error("truncated title animation");
    return std::uint16_t(d[p]) | (std::uint16_t(d[p+1])<<8u);
}
std::uint32_t u32(const std::vector<std::uint8_t>& d,std::size_t p) {
    if(p+4>d.size()) throw std::runtime_error("truncated title animation");
    return std::uint32_t(d[p]) | (std::uint32_t(d[p+1])<<8u) |
           (std::uint32_t(d[p+2])<<16u) | (std::uint32_t(d[p+3])<<24u);
}
}
TitleAnimation::TitleAnimation(const std::filesystem::path& path) {
    std::ifstream in(path,std::ios::binary);
    if(!in) throw std::runtime_error("title animation asset missing: "+path.string());
    data_={std::istreambuf_iterator<char>(in),{}};
    if(data_.size()>=8u && data_[0]=='S' && data_[1]=='M' && data_[2]=='T' && data_[3]=='Z') {
        const auto size=u32(data_,4);
        if(size>256u*1024u*1024u || size<18u) throw std::runtime_error("invalid packed animation size");
        std::vector<std::uint8_t> unpacked(size);uLongf unpacked_size=size;
        if(uncompress(unpacked.data(),&unpacked_size,data_.data()+8u,data_.size()-8u)!=Z_OK || unpacked_size!=size)
            throw std::runtime_error("invalid compressed animation");
        data_=std::move(unpacked);
    }
    if(data_.size()<18u || data_[0]!='S' || data_[1]!='M' || data_[2]!='T' || data_[3]!='A')
        throw std::runtime_error("invalid title animation: "+path.string());
    const auto version=u16(data_,4);
    if(version!=1u && version!=2u) throw std::runtime_error("unsupported title animation version");
    width_=u16(data_,6);height_=u16(data_,8);fps_=u16(data_,10);frame_count_=u16(data_,12);
    const unsigned colors=u16(data_,14);
    ready_frame_=u16(data_,16);
    if(!ready_frame_) ready_frame_=std::min(400u,frame_count_-1u);
    if(!width_ || !height_ || !fps_ || !frame_count_ || !colors || colors>256u || ready_frame_>=frame_count_)
        throw std::runtime_error("invalid title animation header");
    std::size_t p=18u;
    if(p+std::size_t(colors)*3u>data_.size()) throw std::runtime_error("truncated title palette");
    palette_.reserve(colors);
    for(unsigned i=0;i<colors;++i,p+=3u)
        palette_.push_back(0xff000000u|(std::uint32_t(data_[p])<<16u)|(std::uint32_t(data_[p+1])<<8u)|data_[p+2]);
    offsets_.reserve(frame_count_);
    for(unsigned f=0;f<frame_count_;++f) {
        const auto frame_offset=p;const auto runs=u32(data_,p);p+=4u;
        if(!runs && version==2u) {
            if(!f) throw std::runtime_error("animation starts with a repeated frame");
            offsets_.push_back(offsets_.back());
        } else offsets_.push_back(frame_offset);
        const auto bytes=std::size_t(runs)*3u;
        if(p+bytes>data_.size()) throw std::runtime_error("truncated title frame");
        p+=bytes;
    }
    pixels_.resize(std::size_t(width_)*height_);
}
const std::vector<std::uint32_t>& TitleAnimation::frame(unsigned index) {
    index=std::min(index,frame_count_-1u);if(index==decoded_) return pixels_;
    std::size_t p=offsets_[index];const auto runs=u32(data_,p);p+=4u;std::size_t out=0;
    for(std::uint32_t r=0;r<runs;++r,p+=3u) {
        const auto count=u16(data_,p);const auto color=data_[p+2];
        if(color>=palette_.size() || out+count>pixels_.size()) throw std::runtime_error("invalid title RLE");
        std::fill_n(pixels_.begin()+std::ptrdiff_t(out),count,palette_[color]);out+=count;
    }
    if(out!=pixels_.size()) throw std::runtime_error("short title frame");
    decoded_=index;return pixels_;
}
}

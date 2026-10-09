#pragma once
#include <algorithm>
#include <utility>

namespace sm {
inline std::pair<int,int> game_viewport_size(int width,int height,bool original) {
    // Whole physical pixels keep moving original sprites from changing shape
    // under nearest-neighbour scaling. Small windows still fit the full scene.
    const int scale=std::min(width/256,height/212);
    if(original && scale>=1) return {256*scale,212*scale};
    const int w=std::min(width,height*256/212);
    return {w,w*212/256};
}
}

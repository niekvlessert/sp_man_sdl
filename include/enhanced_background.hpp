#pragma once
#include <cstdint>
#include <vector>
namespace sm {
void enhance_stage1_opening(std::vector<std::uint32_t>& pixels,
                            unsigned camera_samples,unsigned ground_samples,
                            double strength,bool use_cache=true);
}

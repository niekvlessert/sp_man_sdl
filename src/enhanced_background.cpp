#include "enhanced_background.hpp"
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <vector>

namespace sm {
namespace {

struct RGB {
    double r{}, g{}, b{};
};

static RGB rgb(std::uint32_t c) {
    return {
        double((c >> 16) & 255u),
        double((c >>  8) & 255u),
        double(c & 255u)
    };
}

static std::uint32_t pack(double r,double g,double b) {
    const auto q=[](double v) -> unsigned {
        return unsigned(std::clamp(std::lround(v),0l,255l));
    };
    return 0xff000000u | (q(r) << 16) | (q(g) << 8) | q(b);
}

static double lum(std::uint32_t c) {
    const auto p = rgb(c);
    return p.r * 0.23 + p.g * 0.49 + p.b * 0.28;
}

static bool dark(std::uint32_t c) {
    const auto p = rgb(c);
    return (p.r + p.g + p.b) < 18.0;
}

static bool blue_metal(std::uint32_t c) {
    const auto p = rgb(c);
    return p.b > p.r * 1.16 && p.b > p.g * 1.06 && p.b > 28.0;
}

static bool red_detail(std::uint32_t c) {
    const auto p = rgb(c);
    return p.r > p.g * 1.38 && p.r > p.b * 1.22 && p.r > 42.0;
}

static bool near_eq(std::uint32_t a,std::uint32_t b) {
    if(a == b) return true;
    const auto x = rgb(a), y = rgb(b);
    const double dr = x.r - y.r;
    const double dg = x.g - y.g;
    const double db = x.b - y.b;
    return dr*dr + dg*dg + db*db < 80.0;
}

static std::vector<std::uint32_t> scale2x(const std::vector<std::uint32_t>& in,
                                          unsigned w,unsigned h) {
    std::vector<std::uint32_t> out(w * 2u * h * 2u);

    auto at = [&](int x,int y) -> std::uint32_t {
        x = std::clamp(x,0,int(w)-1);
        y = std::clamp(y,0,int(h)-1);
        return in[unsigned(y) * w + unsigned(x)];
    };

    for(unsigned y=0; y<h; ++y) {
        for(unsigned x=0; x<w; ++x) {
            const auto B = at(int(x),     int(y)-1);
            const auto D = at(int(x)-1,   int(y));
            const auto E = at(int(x),     int(y));
            const auto F = at(int(x)+1,   int(y));
            const auto H = at(int(x),     int(y)+1);

            auto e0 = E, e1 = E, e2 = E, e3 = E;
            if(B != H && D != F) {
                if(D == B) e0 = D;
                if(B == F) e1 = F;
                if(D == H) e2 = D;
                if(H == F) e3 = F;
            }

            const unsigned ow = w * 2u;
            const unsigned ox = x * 2u;
            const unsigned oy = y * 2u;
            out[oy * ow + ox] = e0;
            out[oy * ow + ox + 1u] = e1;
            out[(oy + 1u) * ow + ox] = e2;
            out[(oy + 1u) * ow + ox + 1u] = e3;
        }
    }

    return out;
}

static void upscale_region(const std::vector<std::uint32_t>& source,
                           std::vector<std::uint32_t>& out,
                           unsigned y0,unsigned y1,
                           unsigned camera,
                           double strength) {
    constexpr unsigned screen_w = 1024u;
    constexpr unsigned screen_h = 848u;
    constexpr int margin = 3;

    const int logical_y0 = int(y0 / 4u) - margin;
    const int logical_y1 = int((y1 - 1u) / 4u) + margin + 1;
    const int logical_x0 = int(camera / 4u) - margin;
    const int logical_x1 = int((camera + screen_w - 1u) / 4u) + margin + 1;

    const unsigned bw = unsigned(logical_x1 - logical_x0 + 1);
    const unsigned bh = unsigned(logical_y1 - logical_y0 + 1);

    std::vector<std::uint32_t> base(bw * bh, 0xff000000u);

    for(unsigned by=0; by<bh; ++by) {
        const int vy = logical_y0 + int(by);
        const int sy = std::clamp(vy * 4 + 2, 112, int(screen_h) - 1);
        for(unsigned bx=0; bx<bw; ++bx) {
            const int ux = logical_x0 + int(bx);
            const int sx = std::clamp(ux * 4 + 2 - int(camera), 0, int(screen_w) - 1);
            base[by * bw + bx] = source[unsigned(sy) * screen_w + unsigned(sx)];
        }
    }

    const auto x2 = scale2x(base, bw, bh);
    const auto x4 = scale2x(x2, bw * 2u, bh * 2u);

    const unsigned hw = bw * 4u;
    const unsigned hh = bh * 4u;
    const int crop_x = int(camera) - logical_x0 * 4;
    const int crop_y = int(y0) - logical_y0 * 4;

    auto hd = [&](int x,int y) -> std::uint32_t {
        x = std::clamp(x,0,int(hw)-1);
        y = std::clamp(y,0,int(hh)-1);
        return x4[unsigned(y) * hw + unsigned(x)];
    };

    for(unsigned y=y0; y<y1; ++y) {
        for(unsigned x=0; x<screen_w; ++x) {
            const int hx = crop_x + int(x);
            const int hy = crop_y + int(y - y0);
            const auto c = hd(hx,hy);

            if(dark(c)) {
                out[y * screen_w + x] = 0xff000000u;
                continue;
            }

            const auto p = rgb(c);

            const auto l = hd(hx-1, hy);
            const auto r = hd(hx+1, hy);
            const auto u = hd(hx, hy-1);
            const auto d = hd(hx, hy+1);

            const bool le = !near_eq(l,c);
            const bool re = !near_eq(r,c);
            const bool ue = !near_eq(u,c);
            const bool de = !near_eq(d,c);

            double bevel = 0.0;
            if(le) bevel += 11.0;
            if(ue) bevel += 14.0;
            if(re) bevel -= 6.5;
            if(de) bevel -= 8.5;

            if(!near_eq(hd(hx-2,hy), c)) bevel += 2.2;
            if(!near_eq(hd(hx,hy-2), c)) bevel += 2.8;

            const unsigned wx = x + camera;
            const unsigned h =
                (wx * 73856093u) ^
                (y  * 19349663u) ^
                ((wx >> 4u) * 83492791u);

            const double grain =
                (int((h ^ (h >> 13)) & 7u) - 3) * 0.36;

            const double brush =
                std::sin(double(wx) * 0.58 + double(y) * 0.19) * 0.85 +
                std::sin(double(wx) * 0.14 - double(y) * 0.63) * 0.48;

            const unsigned tx = wx >> 5u;
            const unsigned ty = y  >> 5u;
            const unsigned th = (tx * 1103515245u) ^ (ty * 2654435761u);

            const unsigned mx = wx & 31u;
            const unsigned my = y  & 31u;

            const unsigned seam_x = 5u + ((th >> 3u)  & 17u);
            const unsigned seam_y = 5u + ((th >> 11u) & 17u);

            double panel = 0.0;
            if(mx == seam_x && my > 3u && my < 28u) panel -= 10.0;
            else if(mx == seam_x + 1u && my > 3u && my < 28u) panel += 3.8;

            if(my == seam_y && mx > 3u && mx < 28u) panel -= 8.5;
            else if(my == seam_y + 1u && mx > 3u && mx < 28u) panel += 3.0;

            const unsigned rivx = ((th >> 17u) & 23u) + 4u;
            const unsigned rivy = ((th >> 22u) & 23u) + 4u;
            if((th & 3u) == 0u && mx == rivx && my == rivy) panel += 8.0;
            if((th & 3u) == 0u && mx == rivx + 1u && my == rivy + 1u) panel -= 2.5;

            // Red illuminated service strips and status lamps. Their placement
            // is deterministic in world coordinates, so they scroll perfectly.
            // Keep illuminated indicators sparse, like embedded status lamps
            // rather than a red texture repeated over every blue panel.
            const bool status_cell = ((th & 15u) == 2u) || ((th & 15u) == 11u);

            const bool glow_v =
                status_cell &&
                ((mx == 8u || mx == 9u) && my > 6u && my < 26u &&
                 ((my / 4u) & 1u) == 0u);

            const bool glow_h =
                status_cell &&
                ((my == 8u || my == 9u) && mx > 6u && mx < 26u &&
                 ((mx / 5u) & 1u) == 0u);

            const bool micro_glow =
                ((th & 31u) == 5u) &&
                (mx >= 14u && mx <= 17u) &&
                (my >= 14u && my <= 17u);

            const bool glow_core = glow_v || glow_h || micro_glow;

            const double curve =
                std::abs(std::sin(double(wx) * 0.019 +
                                  double(y)  * 0.034 +
                                  std::sin(double(wx) * 0.004) * 1.2));

            const double groove =
                curve < 0.05 ? -5.5 :
                curve < 0.09 ?  2.5 : 0.0;

            double nr = p.r, ng = p.g, nb = p.b;

            if(blue_metal(c)) {
                const double detail = bevel + grain + brush + panel + groove;

                nr = p.r + detail * 0.72;
                ng = p.g + detail * 0.92;
                nb = p.b + detail * 1.12;

                const double L = lum(c);
                if(L > 64.0) {
                    const double spec =
                        std::pow(std::max(0.0,
                            std::sin(double(wx) * 0.039 + double(y) * 0.017)), 26.0);

                    nr += spec * 4.0;
                    ng += spec * 8.0;
                    nb += spec * 14.0;
                }

                const bool near_glow =
                    status_cell &&
                    (((mx >= 6u && mx <= 11u) && my > 5u && my < 27u) ||
                     ((my >= 6u && my <= 11u) && mx > 5u && mx < 27u));

                if(near_glow && !glow_core) {
                    nr += 13.0;
                    ng += 1.5;
                    nb -= 2.0;
                }
            } else if(red_detail(c)) {
                const double detail = bevel + grain * 0.30 + panel * 0.20;
                nr = p.r + detail * 0.90 + 20.0;
                ng = p.g + detail * 0.52;
                nb = p.b + detail * 0.40;
            } else {
                const double detail = bevel + grain + brush * 0.35 + panel * 0.45;
                nr = p.r + detail * 0.95;
                ng = p.g + detail * 1.00;
                nb = p.b + detail * 1.05;

                const double spec =
                    std::pow(std::max(0.0,
                        std::sin(double(wx) * 0.034 + double(y) * 0.015)), 28.0);
                nr += spec * 3.5;
                ng += spec * 5.0;
                nb += spec * 6.5;

                if(glow_core) {
                    nr += 18.0;
                    ng += 1.0;
                    nb -= 3.0;
                }
            }

            const bool rock = y >= 784u;
            const double material_mix = rock ? 0.68 : 0.84;

            nr = p.r + (nr - p.r) * material_mix;
            ng = p.g + (ng - p.g) * material_mix;
            nb = p.b + (nb - p.b) * material_mix;

            // The light core itself is emissive red rather than additive magenta.
            // This matches the generated metal concept: red lamps cut into a blue
            // hull, with a small red halo around them.
            if(glow_core && !rock) {
                nr = std::max(nr, 238.0);
                ng = std::min(ng * 0.30 + 10.0, 42.0);
                nb = std::min(nb * 0.16 + 5.0, 30.0);
            }

            const double amount = std::clamp(strength, 0.0, 1.0) * 0.94;
            out[y * screen_w + x] =
                pack(p.r + (nr - p.r) * amount,
                     p.g + (ng - p.g) * amount,
                     p.b + (nb - p.b) * amount);
        }
    }
}

} // namespace

void enhance_stage1_opening(std::vector<std::uint32_t>& pixels,
                            unsigned camera_samples,
                            unsigned ground_samples,
                            double strength) {
    if(pixels.size() != 1024u * 848u || strength <= 0.0) return;

    const auto source = pixels;

    upscale_region(source, pixels, 112u, 784u, camera_samples, strength);
    upscale_region(source, pixels, 784u, 848u, ground_samples, strength);
}

} // namespace sm

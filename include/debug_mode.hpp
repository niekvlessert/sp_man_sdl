#pragma once
#include <cctype>
#include <string_view>
namespace sm {
class DebugMode {
public:
    bool enabled=false,overlay=false,invulnerable=false;
    void type(char key,bool options_active) {
        if(!options_active) {matched_=0;return;}
        key=char(std::tolower(static_cast<unsigned char>(key)));
        constexpr std::string_view secret="debug";
        if(key==secret[matched_]) ++matched_;
        else matched_=key=='d'?1u:0u;
        if(matched_==secret.size()) {
            if(!enabled) {enabled=true;invulnerable=true;}
            overlay=true;matched_=0;
        }
    }
    void disable() {enabled=overlay=invulnerable=false;matched_=0;}
private:
    unsigned matched_=0;
};
}

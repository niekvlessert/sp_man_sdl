set throttle off
catch {set renderer SDL}
catch {set scale_factor 1}
namespace eval smexact {
    variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
    variable do_patch 0
    if {[info exists ::env(SM_PATCH)]} { set do_patch $::env(SM_PATCH) }
    proc patch {} {
        variable do_patch
        if {$do_patch} {
            debug write_block VRAM 0x18000 [string repeat [binary format c 0] 0x800]
        }
    }
    proc grab {} {
        variable outdir
        variable do_patch
        set tag [expr {$do_patch ? "B" : "A"}]
        screenshot -raw -size auto [file join $outdir "exact_${tag}.png"]
        set f [open [file join $outdir "exact_${tag}_state.txt"] w]
        puts $f [format "time=%.6f pc=%04X sp=%04X mode=%s renderer=%s" [machine_info time] [reg PC] [reg SP] [get_screen_mode] [set ::renderer]]
        for {set i 0} {$i < 32} {incr i} { catch {puts $f [format "R%02d=%02X" $i [vdpreg $i]]} }
        close $f
        exit
    }
    after time 8.0 {type " "}
    after time 10.0 {type " "}
    after time 12.0 {type " "}
    after time 14.0 {type " "}
    after time 19.5 {smexact::patch}
    after time 20.0 {smexact::grab}
}

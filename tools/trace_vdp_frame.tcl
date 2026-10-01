set renderer none
set throttle off
namespace eval smtrace {
 variable fh ""
 variable wp ""
 proc start {} {
  variable fh
  variable wp
  set fh [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/vdp_frame_trace.txt" w]
  puts $fh "# time pc out99 R0 R1 R2 R3 R4 R8 R9 R10 R18 R23 mode"
  set wp [debug set_watchpoint write_io 0x99 {} {smtrace::hit}]
 }
 proc hit {} {
  variable fh
  puts $fh [format "%.9f %04X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %s" [machine_info time] [reg PC] $::wp_last_value [vdpreg 0] [vdpreg 1] [vdpreg 2] [vdpreg 3] [vdpreg 4] [vdpreg 8] [vdpreg 9] [vdpreg 10] [vdpreg 18] [vdpreg 23] [get_screen_mode]]
 }
 proc stop {} {
  variable fh
  variable wp
  debug remove_watchpoint $wp
  close $fh
  exit
 }
 after time 8.0 {type " "}
 after time 10.0 {type " "}
 after time 12.0 {type " "}
 after time 14.0 {type " "}
 after time 19.900 {smtrace::start}
 after time 20.100 {smtrace::stop}
}

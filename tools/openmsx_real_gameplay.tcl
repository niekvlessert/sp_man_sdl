# Common openMSX test boot for ROM-backed gameplay traces.
# - audio is muted so automated traces never play through the host
# - SPACE is sent only until the requested real gameplay stage is confirmed
# - CA10 + CA34 guard prevents an attract/demo run from being accepted
namespace eval smreal {
    variable stage -1
    variable started 0
    variable on_ready ""
    variable timeout_at 25.0

    proc init {target {callback ""}} {
        variable stage; variable started; variable on_ready
        set stage $target
        set started 0
        set on_ready $callback
        catch {set ::mute true}
        catch {set ::master_volume 0}
        after time 7.0 {smreal::attempt_start}
        after time 25.0 {smreal::abort_if_not_started}
    }

    proc attempt_start {} {
        variable stage; variable started; variable on_ready
        if {$started} {return}
        set trigger [expr {([peek 0xca35] << 8) | [peek 0xca34]}]
        if {[peek 0xca10] == $stage && $trigger >= 0x1000} {
            set started 1
            if {$on_ready ne ""} {uplevel #0 $on_ready}
            return
        }
        # Keep the title out of attract/demo mode, but stop immediately once
        # real gameplay is observed so SPACE cannot become gameplay fire input.
        poke 0xf0fc $stage
        type " "
        after time 0.40 {smreal::attempt_start}
    }

    proc abort_if_not_started {} {
        variable stage; variable started
        if {$started} {return}
        set trigger [expr {([peek 0xca35] << 8) | [peek 0xca34]}]
        puts stderr [format "openMSX gameplay start failed: wanted stage=%02X, CA10=%02X, trigger=%04X"             $stage [peek 0xca10] $trigger]
        exit
    }

    proc active {} {
        variable started
        return $started
    }
}

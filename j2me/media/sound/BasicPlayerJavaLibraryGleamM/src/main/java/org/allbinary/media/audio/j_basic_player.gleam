// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicPlayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "listenersList", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__getcontenttype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m8__getcontrol(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_control_type] = jargs
    jr.new("NullControl", [])
}

fn c1_m9__getcontrols(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new_array("L", 1, [jr.JInt(0)])
}

fn c1_m10__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m11__addplayerlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_listener] = jargs
        case jr.truth(jr.not(jr.call(jr.get_field(this, "listenersList"), "contains_1", [l_player_listener]))) {
            True -> {
            jr.call(jr.get_field(this, "listenersList"), "add_1", [l_player_listener])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m12__removeplayerlistener(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player_listener] = jargs
        jr.call(jr.get_field(this, "listenersList"), "remove_1", [l_player_listener])
    jr.JNull
}

fn c1_m13__getstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "stateP"))
}

fn c1_m14__setstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_state] = jargs
    let l_state = jr.as_i(l_state)
        jr.set_field(this, "stateP", jr.as_i(l_state))
    jr.JNull
}

fn c1_m15__getduration(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.JLong(0))
}

fn c1_m16__getmediatime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.JLong(0))
}

fn c1_m17__deallocate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m18__prefetch(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m19__realize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m20__setloopcount(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_count] = jargs
    let l_count = jr.as_i(l_count)
        jr.set_field(this, "loopCountP", jr.as_i(l_count))
    jr.JNull
}

fn c1_m21__getloopcount(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "loopCountP"))
}

fn c1_m22__setmediatime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_now] = jargs
    let l_now = jr.as_j(l_now)
    jr.as_j(jr.JLong(0))
}

fn c1_m23__start(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setState_1", [jr.get_static("Player", "STARTED")])
    jr.JNull
}

fn c1_m24__stop(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setState_1", [jr.get_static("Player", "PREFETCHED")])
    jr.JNull
}

fn c1_m25__setvolume(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_left_volume, l_right_volume] = jargs
    let l_left_volume = jr.as_i(l_left_volume)
    let l_right_volume = jr.as_i(l_right_volume)
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setLoopCount_1", [jr.JInt(0)])
        jr.call(this, "setState_1", [jr.get_static("Player", "UNREALIZED")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicPlayer",
        "org.allbinary.media.audio.BasicPlayer",
        "Object",
        ["Player", "Controllable2"],
        False,
        [#("commonStrings", jr.JNull), #("listenersList", jr.JNull), #("stateP", jr.JInt(0)), #("loopCountP", jr.JInt(0))],
        [#("CONTROL_TYPE", jr.JStr("ToneControl"))],
        [
            jr.Method("getContentType_0", [], False, c1_m7__getcontenttype), 
            jr.Method("getControl_1", ["String"], False, c1_m8__getcontrol), 
            jr.Method("getControls_0", [], False, c1_m9__getcontrols), 
            jr.Method("close_0", [], False, c1_m10__close), 
            jr.Method("addPlayerListener_1", ["PlayerListener"], False, c1_m11__addplayerlistener), 
            jr.Method("removePlayerListener_1", ["PlayerListener"], False, c1_m12__removeplayerlistener), 
            jr.Method("getState_0", [], False, c1_m13__getstate), 
            jr.Method("setState_1", ["int"], False, c1_m14__setstate), 
            jr.Method("getDuration_0", [], False, c1_m15__getduration), 
            jr.Method("getMediaTime_0", [], False, c1_m16__getmediatime), 
            jr.Method("deallocate_0", [], False, c1_m17__deallocate), 
            jr.Method("prefetch_0", [], False, c1_m18__prefetch), 
            jr.Method("realize_0", [], False, c1_m19__realize), 
            jr.Method("setLoopCount_1", ["int"], False, c1_m20__setloopcount), 
            jr.Method("getLoopCount_0", [], False, c1_m21__getloopcount), 
            jr.Method("setMediaTime_1", ["long"], False, c1_m22__setmediatime), 
            jr.Method("start_0", [], False, c1_m23__start), 
            jr.Method("stop_0", [], False, c1_m24__stop), 
            jr.Method("setVolume_2", ["int", "int"], False, c1_m25__setvolume), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}


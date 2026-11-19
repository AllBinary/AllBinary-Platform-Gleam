// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlayerStateUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "UNREALIZED", jr.JStr("UNREALIZED"))
    jr.set_field(this, "REALIZED", jr.JStr("REALIZED"))
    jr.set_field(this, "PREFETCHED", jr.JStr("PREFETCHED"))
    jr.set_field(this, "STARTED", jr.JStr("STARTED"))
    jr.set_field(this, "CLOSED", jr.JStr("CLOSED"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlayerStateUtil", "instance", jr.new("PlayerStateUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PlayerStateUtil", "instance")
}

fn c1_m9__convert(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_state] = jargs
    let l_state = jr.as_i(l_state)
    jr.method(fn() {
            case jr.truth(jr.eq(l_state, jr.get_static("Player", "UNREALIZED"))) {
            True -> {
            jr.ret(jr.get_field(this, "UNREALIZED"))
            Nil
        }
            False -> case jr.truth(jr.eq(l_state, jr.get_static("Player", "REALIZED"))) {
            True -> {
            jr.ret(jr.get_field(this, "REALIZED"))
            Nil
        }
            False -> case jr.truth(jr.eq(l_state, jr.get_static("Player", "PREFETCHED"))) {
            True -> {
            jr.ret(jr.get_field(this, "PREFETCHED"))
            Nil
        }
            False -> case jr.truth(jr.eq(l_state, jr.get_static("Player", "STARTED"))) {
            True -> {
            jr.ret(jr.get_field(this, "STARTED"))
            Nil
        }
            False -> case jr.truth(jr.eq(l_state, jr.get_static("Player", "CLOSED"))) {
            True -> {
            jr.ret(jr.get_field(this, "CLOSED"))
            Nil
        }
            False -> Nil
        }
        }
        }
        }
        }
            jr.ret(jr.get_field(jr.get_field(this, "commonStrings"), "UNKNOWN"))
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlayerStateUtil",
        "org.allbinary.media.audio.PlayerStateUtil",
        "Object",
        [],
        False,
        [#("commonStrings", jr.JNull), #("UNREALIZED", jr.JNull), #("REALIZED", jr.JNull), #("PREFETCHED", jr.JNull), #("STARTED", jr.JNull), #("CLOSED", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("convert_1", ["int"], False, c1_m9__convert), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Sound

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "player", jr.get_static("NoPlayer", "NO_PLAYER"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getresource(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "resource")
}

fn c1_m5__getplayerp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "player")
}

fn c1_m6__setplayerp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_player] = jargs
        jr.set_field(this, "player", l_player)
    jr.JNull
}

fn c1_m7__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__getduration(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(-1))
}

fn c1_m9__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "player"), "start_0", [])
            Nil
        }, [#(["Exception"], fn(l_e) { {
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call_static("PreLogUtil", "put_3", [jr.get_field(l_common_strings, "EXCEPTION"), this, jr.get_field(l_common_strings, "RUN")])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "resource", l_resource)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Sound",
        "org.allbinary.media.audio.Sound",
        "Object",
        ["SoundInterface", "Runnable"],
        False,
        [#("resource", jr.JNull), #("player", jr.JNull)],
        [],
        [
            jr.Method("getResource_0", [], False, c1_m4__getresource), 
            jr.Method("getPlayerP_0", [], False, c1_m5__getplayerp), 
            jr.Method("setPlayerP_1", ["Player"], False, c1_m6__setplayerp), 
            jr.Method("init_0", [], False, c1_m7__init), 
            jr.Method("getDuration_0", [], False, c1_m8__getduration), 
            jr.Method("run_0", [], False, c1_m9__run), 
            jr.Method("jinit_1", ["String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoPlayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoPlayer", "NO_PLAYER", jr.new("NoPlayer", []))
    jr.JNull
}

fn c1_m3__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__getcontenttype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "NULL_STRING")
}

fn c1_m5__getcontrol(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_control_type] = jargs
    jr.new("NullControl", [])
}

fn c1_m6__getcontrols(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new_array("L", 1, [jr.JInt(0)])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BasicPlayer", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoPlayer",
        "org.allbinary.media.audio.NoPlayer",
        "BasicPlayer",
        [],
        False,
        [],
        [#("NO_PLAYER", jr.JNull)],
        [
            jr.Method("close_0", [], False, c1_m3__close), 
            jr.Method("getContentType_0", [], False, c1_m4__getcontenttype), 
            jr.Method("getControl_1", ["String"], False, c1_m5__getcontrol), 
            jr.Method("getControls_0", [], False, c1_m6__getcontrols), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


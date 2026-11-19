// Generated Code Do Not Modify
// package org.allbinary.media.audio
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoSound

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoSound", "instance", jr.new("NoSound", []))
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NoSound", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("Sound", this, [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")])
        c1_jfields(this)
        jr.call_inherited(this, "NoSound", "setPlayerP_1", [jr.get_static("NoPlayer", "NO_PLAYER")])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoSound",
        "org.allbinary.media.audio.NoSound",
        "Sound",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


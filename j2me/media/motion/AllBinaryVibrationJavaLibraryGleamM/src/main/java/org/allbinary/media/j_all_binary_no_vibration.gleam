// Generated Code Do Not Modify
// package org.allbinary.media
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryNoVibration

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinaryNoVibration", "NO_VIBRATION", jr.new("AllBinaryNoVibration", []))
    jr.JNull
}

fn c1_m2__vibrate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_duration, l_type, l_volume] = jargs
    let l_duration = jr.as_i(l_duration)
    let l_type = jr.as_i(l_type)
    let l_volume = jr.as_i(l_volume)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("AllBinaryVibrationME", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryNoVibration",
        "org.allbinary.media.AllBinaryNoVibration",
        "AllBinaryVibrationME",
        [],
        False,
        [],
        [#("NO_VIBRATION", jr.JNull)],
        [
            jr.Method("vibrate_3", ["int", "int", "int"], False, c1_m2__vibrate), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.media
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryVibrationME

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__vibrate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_duration, l_type, l_volume] = jargs
    let l_duration = jr.as_i(l_duration)
    let l_type = jr.as_i(l_type)
    let l_volume = jr.as_i(l_volume)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryVibrationME",
        "org.allbinary.media.AllBinaryVibrationME",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("vibrate_3", ["int", "int", "int"], False, c1_m1__vibrate), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


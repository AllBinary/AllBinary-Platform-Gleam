// Generated Code Do Not Modify
// package org.allbinary.media
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryVibration

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllBinaryVibration", "VIBRATION", jr.get_static("AllBinaryNoVibration", "NO_VIBRATION"))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AllBinaryVibration", "VIBRATION")
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.call(jr.call(jr.get_field(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "VIBRATION"), "getValue_0", []), "intValue_0", []), jr.JInt(0))) {
            True -> {
            jr.set_static("AllBinaryVibration", "VIBRATION", jr.get_static("AllBinaryNoVibration", "NO_VIBRATION"))
            Nil
        }
            False -> {
            jr.set_static("AllBinaryVibration", "VIBRATION", jr.new("AllBinaryVibration", []))
            Nil
        }
        }
    jr.JNull
}

fn c1_m5__vibrate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_duration, l_type, l_volume] = jargs
    let l_duration = jr.as_i(l_duration)
    let l_type = jr.as_i(l_type)
    let l_volume = jr.as_i(l_volume)
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("AllBinaryVibrationME", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryVibration",
        "org.allbinary.media.AllBinaryVibration",
        "AllBinaryVibrationME",
        [],
        False,
        [],
        [#("VIBRATION", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("init_0", [], True, c1_m4__init), 
            jr.Method("vibrate_3", ["int", "int", "int"], False, c1_m5__vibrate), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


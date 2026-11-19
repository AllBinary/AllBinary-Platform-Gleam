// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Orientation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "yaw", jr.new("BasicDecimal", [jr.JInt(0)]))
    jr.set_field(this, "pitch", jr.new("BasicDecimal", [jr.JInt(0)]))
    jr.set_field(this, "roll", jr.new("BasicDecimal", [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Orientation", "NONE", jr.new("Orientation", [jr.JInt(0), jr.JInt(0), jr.JInt(0)]))
    jr.set_static("Orientation", "SINGLETON", jr.new("Orientation", [jr.JInt(0), jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_m6__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_yaw, l_pitch, l_roll] = jargs
    let l_yaw = jr.as_i(l_yaw)
    let l_pitch = jr.as_i(l_pitch)
    let l_roll = jr.as_i(l_roll)
        jr.call(jr.get_field(jr.get_static("Orientation", "SINGLETON"), "yaw"), "setint_1", [l_yaw])
        jr.call(jr.get_field(jr.get_static("Orientation", "SINGLETON"), "pitch"), "setint_1", [l_pitch])
        jr.call(jr.get_field(jr.get_static("Orientation", "SINGLETON"), "roll"), "setint_1", [l_roll])
    jr.get_static("Orientation", "SINGLETON")
}

fn c1_m8__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Y: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "yaw"), "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" P: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "pitch"), "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" R: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.get_field(this, "roll"), "toString_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_yaw, l_pitch, l_roll] = jargs
    let l_yaw = jr.as_i(l_yaw)
    let l_pitch = jr.as_i(l_pitch)
    let l_roll = jr.as_i(l_roll)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(jr.get_field(this, "yaw"), "setint_1", [l_yaw])
        jr.call(jr.get_field(this, "pitch"), "setint_1", [l_pitch])
        jr.call(jr.get_field(this, "roll"), "setint_1", [l_roll])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Orientation",
        "org.allbinary.logic.math.Orientation",
        "Object",
        [],
        False,
        [#("yaw", jr.JNull), #("pitch", jr.JNull), #("roll", jr.JNull)],
        [#("NONE", jr.JNull), #("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_3", ["int", "int", "int"], True, c1_m6__getinstance), 
            jr.Method("toString_0", [], False, c1_m8__tostring), 
            jr.Method("jinit_3", ["int", "int", "int"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}


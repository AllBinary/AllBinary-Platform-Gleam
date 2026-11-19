// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AngleInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "angle", jr.as_s(jr.JInt(0)))
    jr.set_field(this, "frameUtil", jr.call_static("FrameUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle_increment] = jargs
    let l_angle_increment = jr.as_s(l_angle_increment)
    jr.new("AngleInfo", [jr.call(jr.call_static("AngleIncrementInfoFactory", "getInstance_0", []), "getAt_1", [l_angle_increment])])
}

fn c1_m6__adjustangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_frame] = jargs
    let l_frame = jr.as_i(l_frame)
        let l_new_angle = jr.as_i(jr.sub(jr.mul(jr.to_i(jr.call(jr.get_field(this, "angleIncrementInfo"), "getAngleIncrement_0", [])), l_frame), jr.JInt(90)))
        jr.call(this, "setAngle_1", [jr.to_s(jr.call(jr.get_field(this, "frameUtil"), "adjustAngleToFrameAngle_1", [l_new_angle]))])
    jr.JNull
}

fn c1_m7__getangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_s(jr.get_field(this, "angle"))
}

fn c1_m8__setangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
    let l_angle = jr.as_s(l_angle)
        jr.set_field(this, "angle", jr.as_s(l_angle))
    jr.JNull
}

fn c1_m9__getangleincrementinfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "angleIncrementInfo")
}

fn c1_m11__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.get_static("AngleInfo", "ANGLE")])
        jr.call(l_string_buffer, "appendshort_1", [jr.get_field(this, "angle")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call_static("StringUtil", "getInstance_0", []), "toString_1", [jr.call(this, "getAngleIncrementInfo_0", [])])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle_increment_info] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "angleIncrementInfo", l_angle_increment_info)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AngleInfo",
        "org.allbinary.math.AngleInfo",
        "Object",
        [],
        False,
        [#("angleIncrementInfo", jr.JNull), #("angle", jr.JShort(0)), #("frameUtil", jr.JNull)],
        [#("ANGLE", jr.JStr("Angle: "))],
        [
            jr.Method("getInstance_1", ["short"], True, c1_m3__getinstance), 
            jr.Method("adjustAngle_1", ["int"], False, c1_m6__adjustangle), 
            jr.Method("getAngle_0", [], False, c1_m7__getangle), 
            jr.Method("setAngle_1", ["short"], False, c1_m8__setangle), 
            jr.Method("getAngleIncrementInfo_0", [], False, c1_m9__getangleincrementinfo), 
            jr.Method("toString_0", [], False, c1_m11__tostring), 
            jr.Method("jinit_1", ["AngleIncrementInfo"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


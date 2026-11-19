// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AngleIncrementInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "frameUtil", jr.call_static("FrameUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__getframeangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_frame] = jargs
    let l_frame = jr.as_i(l_frame)
    jr.as_i(jr.call(jr.get_field(this, "frameUtil"), "getFrameAngle_2", [l_frame, jr.to_i(jr.get_field(this, "angleIncrement"))]))
}

fn c1_m9__getangleincrement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_s(jr.get_field(this, "angleIncrement"))
}

fn c1_m11__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_static("AngleIncrementInfo", "INCREMENT")]), "appendshort_1", [jr.get_field(this, "angleIncrement")]), "toString_0", [])
}

fn c1_m12__getclosestgeneraldirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
    let l_angle = jr.as_s(l_angle)
        let l_closest_direction = jr.cell(jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(360)]))
        case jr.truth(jr.lt(jr.sub(jr.call(jr.get_field(this, "UP_FRAME"), "intValue_0", []), l_angle), jr.sub(jr.call(jr.get(l_closest_direction), "intValue_0", []), l_angle))) {
            True -> {
            jr.set(l_closest_direction, jr.get_field(this, "UP_FRAME"))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(jr.sub(jr.call(jr.get_field(this, "DOWN_FRAME"), "intValue_0", []), l_angle), jr.sub(jr.call(jr.get(l_closest_direction), "intValue_0", []), l_angle))) {
            True -> {
            jr.set(l_closest_direction, jr.get_field(this, "DOWN_FRAME"))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(jr.sub(jr.call(jr.get_field(this, "LEFT_FRAME"), "intValue_0", []), l_angle), jr.sub(jr.call(jr.get(l_closest_direction), "intValue_0", []), l_angle))) {
            True -> {
            jr.set(l_closest_direction, jr.get_field(this, "LEFT_FRAME"))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(jr.sub(jr.call(jr.get_field(this, "RIGHT_FRAME"), "intValue_0", []), l_angle), jr.sub(jr.call(jr.get(l_closest_direction), "intValue_0", []), l_angle))) {
            True -> {
            jr.set(l_closest_direction, jr.get_field(this, "RIGHT_FRAME"))
            Nil
        }
            False -> Nil
        }
    jr.as_i(jr.call(jr.get(l_closest_direction), "intValue_0", []))
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle_increment] = jargs
    let l_angle_increment = jr.as_s(l_angle_increment)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "angleIncrement", jr.as_s(l_angle_increment))
        let l_angle_factory = jr.call_static("AngleFactory", "getInstance_0", [])
        let l_small_integer_singleton_factory = jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", [])
        jr.set_field(this, "DOWN_FRAME", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.div(jr.call(jr.get_field(l_angle_factory, "DOWN"), "getValue_0", []), jr.get_field(this, "angleIncrement"))]))
        jr.set_field(this, "UP_FRAME", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.to_i(jr.call(jr.get_field(l_angle_factory, "UP"), "getValue_0", []))]))
        jr.set_field(this, "LEFT_FRAME", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.div(jr.call(jr.get_field(l_angle_factory, "LEFT"), "getValue_0", []), jr.get_field(this, "angleIncrement"))]))
        jr.set_field(this, "RIGHT_FRAME", jr.call(l_small_integer_singleton_factory, "getAt_1", [jr.div(jr.call(jr.get_field(l_angle_factory, "RIGHT"), "getValue_0", []), jr.get_field(this, "angleIncrement"))]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AngleIncrementInfo",
        "org.allbinary.math.AngleIncrementInfo",
        "Object",
        [],
        False,
        [#("angleIncrement", jr.JShort(0)), #("DOWN_FRAME", jr.JNull), #("UP_FRAME", jr.JNull), #("LEFT_FRAME", jr.JNull), #("RIGHT_FRAME", jr.JNull), #("frameUtil", jr.JNull)],
        [#("INCREMENT", jr.JStr("Inc: "))],
        [
            jr.Method("getFrameAngle_1", ["int"], False, c1_m8__getframeangle), 
            jr.Method("getAngleIncrement_0", [], False, c1_m9__getangleincrement), 
            jr.Method("toString_0", [], False, c1_m11__tostring), 
            jr.Method("getClosestGeneralDirection_1", ["short"], False, c1_m12__getclosestgeneraldirection), 
            jr.Method("jinit_1", ["short"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}


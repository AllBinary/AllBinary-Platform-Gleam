// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FrameUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FrameUtil", "instance", jr.new("FrameUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FrameUtil", "instance")
}

fn c1_m4__getframeforangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle, l_angle_increment] = jargs
    let l_angle = jr.as_s(l_angle)
    let l_angle_increment = jr.as_i(l_angle_increment)
    jr.as_i(jr.div(jr.call(this, "adjustAngleToFrameAngle_1", [jr.to_i(l_angle)]), l_angle_increment))
}

fn c1_m5__getframeangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_frame, l_angle_increment] = jargs
    let l_frame = jr.as_i(l_frame)
    let l_angle_increment = jr.as_i(l_angle_increment)
        let l_frame_angle = jr.as_i(jr.sub(jr.mul(l_angle_increment, l_frame), jr.JInt(90)))
    jr.as_i(jr.call(this, "adjustAngleToFrameAngle_1", [l_frame_angle]))
}

fn c1_m6__adjustangletoframeangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_angle] = jargs
    let l_current_angle = jr.cell(jr.as_i(l_current_angle))
        let l_angle_factory = jr.call_static("AngleFactory", "getInstance_0", [])
        case jr.truth(jr.gt(jr.get(l_current_angle), jr.JInt(359))) {
            True -> {
            jr.set(l_current_angle, jr.as_i(jr.sub(jr.get(l_current_angle), jr.to_i(jr.get_field(l_angle_factory, "TOTAL_ANGLE")))))
            jr.while_loop("", fn() { jr.gt(jr.get(l_current_angle), jr.JInt(359)) }, fn() {
                jr.set(l_current_angle, jr.as_i(jr.sub(jr.get(l_current_angle), jr.to_i(jr.get_field(l_angle_factory, "TOTAL_ANGLE")))))
                Nil
            })
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(jr.get(l_current_angle), jr.JInt(0))) {
            True -> {
            jr.set(l_current_angle, jr.as_i(jr.add(jr.get(l_current_angle), jr.to_i(jr.get_field(l_angle_factory, "TOTAL_ANGLE")))))
            jr.while_loop("", fn() { jr.lt(jr.get(l_current_angle), jr.JInt(0)) }, fn() {
                jr.set(l_current_angle, jr.as_i(jr.add(jr.get(l_current_angle), jr.to_i(jr.get_field(l_angle_factory, "TOTAL_ANGLE")))))
                Nil
            })
            Nil
        }
            False -> Nil
        }
    jr.as_i(jr.get(l_current_angle))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FrameUtil",
        "org.allbinary.math.FrameUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getFrameForAngle_2", ["short", "int"], False, c1_m4__getframeforangle), 
            jr.Method("getFrameAngle_2", ["int", "int"], False, c1_m5__getframeangle), 
            jr.Method("adjustAngleToFrameAngle_1", ["int"], False, c1_m6__adjustangletoframeangle), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


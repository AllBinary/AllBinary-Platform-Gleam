// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TrackballMotionGestureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TrackballMotionGestureFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("TrackballMotionGestureFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("TrackballMotionGestureFactory", "instance", jr.new("TrackballMotionGestureFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("TrackballMotionGestureFactory", "instance")
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l__m_a_x = jr.as_i(jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX"))
        jr.set_field(this, "LEFT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(26)), jr.JStr("L Trackball")]))
        jr.set_field(this, "RIGHT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(27)), jr.JStr("R Trackball")]))
        jr.set_field(this, "UP", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(28)), jr.JStr("Up Trackball")]))
        jr.set_field(this, "DOWN", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(29)), jr.JStr("D Trackball")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TrackballMotionGestureFactory",
        "org.allbinary.input.motion.gesture.TrackballMotionGestureFactory",
        "Object",
        [],
        False,
        [#("LEFT", jr.JNull), #("RIGHT", jr.JNull), #("UP", jr.JNull), #("DOWN", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}


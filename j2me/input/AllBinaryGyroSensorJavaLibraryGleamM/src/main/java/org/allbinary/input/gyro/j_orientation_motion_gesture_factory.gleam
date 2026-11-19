// Generated Code Do Not Modify
// package org.allbinary.input.gyro
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OrientationMotionGestureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OrientationMotionGestureFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("OrientationMotionGestureFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("OrientationMotionGestureFactory", "instance", jr.new("OrientationMotionGestureFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("OrientationMotionGestureFactory", "instance")
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l__m_a_x = jr.as_i(jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX"))
        jr.set_field(this, "LEFT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(20)), jr.JStr("Left Orient")]))
        jr.set_field(this, "RIGHT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(21)), jr.JStr("Right Orient")]))
        jr.set_field(this, "UP", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(22)), jr.JStr("Up Orient")]))
        jr.set_field(this, "DOWN", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(23)), jr.JStr("Down Orient")]))
        jr.set_field(this, "ROLL_LEFT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(24)), jr.JStr("Roll Left")]))
        jr.set_field(this, "ROLL_RIGHT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(25)), jr.JStr("Roll Right")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OrientationMotionGestureFactory",
        "org.allbinary.input.gyro.OrientationMotionGestureFactory",
        "Object",
        [],
        False,
        [#("LEFT", jr.JNull), #("RIGHT", jr.JNull), #("UP", jr.JNull), #("DOWN", jr.JNull), #("ROLL_LEFT", jr.JNull), #("ROLL_RIGHT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}


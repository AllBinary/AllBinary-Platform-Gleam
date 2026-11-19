// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchMotionGestureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TouchMotionGestureFactory", "instance", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("TouchMotionGestureFactory", "instance"), jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))) {
            True -> {
            jr.set_static("TouchMotionGestureFactory", "instance", jr.new("TouchMotionGestureFactory", []))
            Nil
        }
            False -> Nil
        }
    jr.get_static("TouchMotionGestureFactory", "instance")
}

fn c1_jinit17(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l__m_a_x = jr.as_i(jr.get_field(jr.call_static("InputFactory", "getInstance_0", []), "MAX"))
        jr.set_field(this, "LEFT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(3)), jr.JStr("Left Touch")]))
        jr.set_field(this, "RIGHT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(4)), jr.JStr("Right Touch")]))
        jr.set_field(this, "UP", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(5)), jr.JStr("Up Touch")]))
        jr.set_field(this, "DOWN", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(6)), jr.JStr("Down Touch")]))
        jr.set_field(this, "PRESSED", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(7)), jr.JStr("Screen Press")]))
        jr.set_field(this, "RELEASED", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(8)), jr.JStr("Released")]))
        jr.set_field(this, "DIAGONAL_DOWN_RIGHT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(9)), jr.JStr("Diagonal Dn R")]))
        jr.set_field(this, "DIAGONAL_DOWN_LEFT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(10)), jr.JStr("Diagonal Dn L")]))
        jr.set_field(this, "DIAGONAL_UP_RIGHT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(11)), jr.JStr("Diagonal Up R")]))
        jr.set_field(this, "DIAGONAL_UP_LEFT", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(12)), jr.JStr("Diagonal Up L")]))
        jr.set_field(this, "SCROLL_UP", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(13)), jr.JStr("Scroll Up")]))
        jr.set_field(this, "SCROLL_DOWN", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(14)), jr.JStr("Scroll Down")]))
        jr.set_field(this, "NO_MOTION", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(2)), jr.JStr("No Motion")]))
        jr.set_field(this, "LAST_MOTION", jr.new("MotionGestureInput", [jr.sub(l__m_a_x, jr.JInt(19)), jr.JStr("Last Motion")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchMotionGestureFactory",
        "org.allbinary.input.motion.gesture.TouchMotionGestureFactory",
        "Object",
        [],
        False,
        [#("LEFT", jr.JNull), #("RIGHT", jr.JNull), #("UP", jr.JNull), #("DOWN", jr.JNull), #("PRESSED", jr.JNull), #("RELEASED", jr.JNull), #("DIAGONAL_DOWN_RIGHT", jr.JNull), #("DIAGONAL_DOWN_LEFT", jr.JNull), #("DIAGONAL_UP_RIGHT", jr.JNull), #("DIAGONAL_UP_LEFT", jr.JNull), #("SCROLL_UP", jr.JNull), #("SCROLL_DOWN", jr.JNull), #("NO_MOTION", jr.JNull), #("LAST_MOTION", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit17)],
        c1_jfields,
        c1_jclinit,
    )
}


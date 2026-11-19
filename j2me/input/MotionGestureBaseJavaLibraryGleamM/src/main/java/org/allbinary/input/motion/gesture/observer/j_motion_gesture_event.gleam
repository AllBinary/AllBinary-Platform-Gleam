// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture.observer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionGestureEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "motionGesture", jr.get_field(jr.call_static("TouchMotionGestureFactory", "getInstance_0", []), "NO_MOTION"))
    jr.set_field(this, "previousPoint", jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"))
    jr.set_field(this, "currentPoint", jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"))
    jr.set_field(this, "commonLabels", jr.call_static("CommonLabels", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__getmotiongesture(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "motionGesture")
}

fn c1_m7__setmotiongesture(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture] = jargs
        jr.set_field(this, "motionGesture", l_motion_gesture)
    jr.JNull
}

fn c1_m8__getpreviouspoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "previousPoint")
}

fn c1_m9__setpreviouspoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_previous_point] = jargs
        jr.set_field(this, "previousPoint", l_previous_point)
    jr.JNull
}

fn c1_m10__getcurrentpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "currentPoint")
}

fn c1_m11__setcurrentpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_point] = jargs
        jr.set_field(this, "currentPoint", l_current_point)
    jr.JNull
}

fn c1_m15__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        let l_string_util = jr.call_static("StringUtil", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [jr.get_field(this, "motionGesture")])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.get_field(this, "commonLabels"), "CURRENT")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [jr.get_field(this, "currentPoint")])])
        jr.call(l_string_buffer, "append_1", [jr.get_static("MotionGestureEvent", "PREVIOUS")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [jr.get_field(this, "previousPoint")])])
        jr.call(l_string_buffer, "append_1", [jr.get_static("MotionGestureEvent", "HASHCODE")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(jr.call_static("TsUtil", "getInstance_0", []), "hashCode_1", [this])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_m16__getid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "id"))
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source, l_id, l_motion_gesture] = jargs
    let l_id = jr.as_i(l_id)
        jr.super_init("AllBinaryEventObject", this, [l_source])
        c1_jfields(this)
        jr.set_field(this, "id", jr.as_i(l_id))
        jr.call(this, "setMotionGesture_1", [l_motion_gesture])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionGestureEvent",
        "org.allbinary.input.motion.gesture.observer.MotionGestureEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("motionGesture", jr.JNull), #("id", jr.JInt(0)), #("previousPoint", jr.JNull), #("currentPoint", jr.JNull), #("commonLabels", jr.JNull)],
        [#("PREVIOUS", jr.JStr(" Previous: ")), #("HASHCODE", jr.JStr(" hashcode: "))],
        [
            jr.Method("getMotionGesture_0", [], False, c1_m6__getmotiongesture), 
            jr.Method("setMotionGesture_1", ["MotionGestureInput"], False, c1_m7__setmotiongesture), 
            jr.Method("getPreviousPoint_0", [], False, c1_m8__getpreviouspoint), 
            jr.Method("setPreviousPoint_1", ["GPoint"], False, c1_m9__setpreviouspoint), 
            jr.Method("getCurrentPoint_0", [], False, c1_m10__getcurrentpoint), 
            jr.Method("setCurrentPoint_1", ["GPoint"], False, c1_m11__setcurrentpoint), 
            jr.Method("toString_0", [], False, c1_m15__tostring), 
            jr.Method("getId_0", [], False, c1_m16__getid), 
            jr.Method("jinit_3", ["Object", "int", "MotionGestureInput"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


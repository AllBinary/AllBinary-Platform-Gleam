// Generated Code Do Not Modify
// package org.allbinary.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllMotionRecognizer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "touchButtonProcessing", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AllMotionRecognizer", "pointCircularPool", jr.new("GPointCircularPool", [jr.JInt(40)]))
    jr.JNull
}

fn c1_m9__processstartmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
        case jr.truth(jr.call(jr.get_field(this, "touchButtonRecognizer"), "pressTouchButtonInput_3", [l_x, l_y, l_device_id])) {
            True -> {
            jr.set_field(this, "touchButtonProcessing", jr.JBool(True))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.not(jr.get_field(this, "touchButtonProcessing"))) {
            True -> {
            let l_point = jr.call(jr.get_static("AllMotionRecognizer", "pointCircularPool"), "getNextInstance_0", [])
            jr.call(l_point, "setX_1", [l_x])
            jr.call(l_point, "setY_1", [l_y])
            jr.call(jr.get_field(this, "motionGestureRecognizer"), "processPressedMotionEvent_3", [l_point, l_device_id, l_modifiers])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m10__processendmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
        case jr.truth(jr.call(jr.get_field(this, "touchButtonRecognizer"), "releaseTouchButtonInput_3", [l_x, l_y, l_device_id])) {
            True -> {
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.not(jr.get_field(this, "touchButtonProcessing"))) {
            True -> {
            let l_point = jr.call(jr.get_static("AllMotionRecognizer", "pointCircularPool"), "getNextInstance_0", [])
            jr.call(l_point, "setX_1", [l_x])
            jr.call(l_point, "setY_1", [l_y])
            jr.call(jr.get_field(this, "motionGestureRecognizer"), "processReleasedMotionEvent_3", [l_point, l_device_id, l_modifiers])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.get_field(this, "touchButtonProcessing")) {
            True -> {
            jr.set_field(this, "touchButtonProcessing", jr.JBool(False))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m11__processdraggedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
        case jr.truth(jr.get_field(this, "touchButtonProcessing")) {
            True -> {
            jr.call(jr.get_field(this, "touchButtonRecognizer"), "pressTouchButtonInput_3", [l_x, l_y, l_device_id])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.not(jr.get_field(this, "touchButtonProcessing"))) {
            True -> {
            let l_point = jr.call(jr.get_static("AllMotionRecognizer", "pointCircularPool"), "getNextInstance_0", [])
            jr.call(l_point, "setX_1", [l_x])
            jr.call(l_point, "setY_1", [l_y])
            jr.call(jr.get_field(this, "motionGestureRecognizer"), "processDraggedMotionEvent_3", [l_point, l_device_id, l_modifiers])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m14__processmovedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
        case jr.truth(case jr.truth(jr.ne(l_x, jr.get_field(this, "lastX"))) { True -> jr.JBool(True) False -> jr.ne(l_y, jr.get_field(this, "lastY")) }) {
            True -> {
            jr.set_field(this, "lastX", jr.as_i(l_x))
            jr.set_field(this, "lastY", jr.as_i(l_y))
            let l_point = jr.call(jr.get_static("AllMotionRecognizer", "pointCircularPool"), "getNextInstance_0", [])
            jr.call(l_point, "setX_1", [l_x])
            jr.call(l_point, "setY_1", [l_y])
            jr.call(jr.get_field(this, "motionGestureRecognizer"), "processMovedMotionEvent_3", [l_point, l_device_id, l_modifiers])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m15__processscrolledmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
        let l_point = jr.call(jr.get_static("AllMotionRecognizer", "pointCircularPool"), "getNextInstance_0", [])
        jr.call(l_point, "setX_1", [l_x])
        jr.call(l_point, "setY_1", [l_y])
        jr.call(jr.get_field(this, "motionGestureRecognizer"), "processScrolledMotionEvent_3", [l_point, l_device_id, l_modifiers])
    jr.JNull
}

fn c1_m16__getmotiongesturerecognizer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "motionGestureRecognizer")
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("MotionRecognizer", this, [])
    c1_jfields(this)
        jr.set_field(this, "id", jr.as_i(jr.incr(fn() { jr.get_static("AllMotionRecognizer", "index") }, fn(jv) { jr.set_static("AllMotionRecognizer", "index", jv) }, 1, True)))
        jr.set_field(this, "motionGestureRecognizer", jr.new("MotionGestureRecognizer", [jr.get_field(this, "id")]))
        jr.set_field(this, "touchButtonRecognizer", jr.new("TouchButtonRecognizer", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllMotionRecognizer",
        "org.allbinary.input.motion.AllMotionRecognizer",
        "MotionRecognizer",
        [],
        False,
        [#("logUtil", jr.JNull), #("motionGestureRecognizer", jr.JNull), #("touchButtonProcessing", jr.JBool(False)), #("touchButtonRecognizer", jr.JNull), #("id", jr.JInt(0)), #("lastX", jr.JInt(0)), #("lastY", jr.JInt(0))],
        [#("index", jr.as_i(jr.JInt(0))), #("pointCircularPool", jr.JNull)],
        [
            jr.Method("processStartMotionEvent_4", ["int", "int", "int", "int"], False, c1_m9__processstartmotionevent), 
            jr.Method("processEndMotionEvent_4", ["int", "int", "int", "int"], False, c1_m10__processendmotionevent), 
            jr.Method("processDraggedMotionEvent_4", ["int", "int", "int", "int"], False, c1_m11__processdraggedmotionevent), 
            jr.Method("processMovedMotionEvent_4", ["int", "int", "int", "int"], False, c1_m14__processmovedmotionevent), 
            jr.Method("processScrolledMotionEvent_4", ["int", "int", "int", "int"], False, c1_m15__processscrolledmotionevent), 
            jr.Method("getMotionGestureRecognizer_0", [], False, c1_m16__getmotiongesturerecognizer), 
            jr.Method("jinit_0", [], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}


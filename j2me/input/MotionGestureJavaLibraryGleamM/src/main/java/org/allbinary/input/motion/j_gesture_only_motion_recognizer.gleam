// Generated Code Do Not Modify
// package org.allbinary.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GestureOnlyMotionRecognizer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GestureOnlyMotionRecognizer", "pointCircularPool", jr.new("GPointCircularPool", [jr.JInt(40)]))
    jr.JNull
}

fn c1_m6__processstartmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
        let l_point = jr.call(jr.get_static("GestureOnlyMotionRecognizer", "pointCircularPool"), "getNextInstance_0", [])
        jr.call(l_point, "setX_1", [l_x])
        jr.call(l_point, "setY_1", [l_y])
        jr.call(jr.get_field(this, "motionGestureRecognizer"), "processPressedMotionEvent_3", [l_point, l_device_id, l_modifiers])
    jr.JNull
}

fn c1_m7__processendmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
        let l_point = jr.call(jr.get_static("GestureOnlyMotionRecognizer", "pointCircularPool"), "getNextInstance_0", [])
        jr.call(l_point, "setX_1", [l_x])
        jr.call(l_point, "setY_1", [l_y])
        jr.call(jr.get_field(this, "motionGestureRecognizer"), "processReleasedMotionEvent_3", [l_point, l_device_id, l_modifiers])
    jr.JNull
}

fn c1_m8__processdraggedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
        let l_point = jr.call(jr.get_static("GestureOnlyMotionRecognizer", "pointCircularPool"), "getNextInstance_0", [])
        jr.call(l_point, "setX_1", [l_x])
        jr.call(l_point, "setY_1", [l_y])
        jr.call(jr.get_field(this, "motionGestureRecognizer"), "processDraggedMotionEvent_3", [l_point, l_device_id, l_modifiers])
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("MotionRecognizer", this, [])
    c1_jfields(this)
        jr.set_field(this, "id", jr.as_i(jr.incr(fn() { jr.get_static("GestureOnlyMotionRecognizer", "index") }, fn(jv) { jr.set_static("GestureOnlyMotionRecognizer", "index", jv) }, 1, True)))
        jr.set_field(this, "motionGestureRecognizer", jr.new("MotionGestureRecognizer", [jr.get_field(this, "id")]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GestureOnlyMotionRecognizer",
        "org.allbinary.input.motion.GestureOnlyMotionRecognizer",
        "MotionRecognizer",
        [],
        False,
        [#("motionGestureRecognizer", jr.JNull), #("id", jr.JInt(0))],
        [#("index", jr.as_i(jr.JInt(0))), #("pointCircularPool", jr.JNull)],
        [
            jr.Method("processStartMotionEvent_4", ["int", "int", "int", "int"], False, c1_m6__processstartmotionevent), 
            jr.Method("processEndMotionEvent_4", ["int", "int", "int", "int"], False, c1_m7__processendmotionevent), 
            jr.Method("processDraggedMotionEvent_4", ["int", "int", "int", "int"], False, c1_m8__processdraggedmotionevent), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


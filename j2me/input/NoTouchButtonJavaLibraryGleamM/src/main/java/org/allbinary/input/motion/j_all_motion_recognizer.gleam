// Generated Code Do Not Modify
// package org.allbinary.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllMotionRecognizer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__processstartmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
    jr.JNull
}

fn c1_m5__processendmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
    jr.JNull
}

fn c1_m6__processdraggedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
    jr.JNull
}

fn c1_m7__processmovedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
    jr.JNull
}

fn c1_m8__processscrolledmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
    jr.JNull
}

fn c1_m9__getid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "id"))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "id", jr.as_i(jr.incr(fn() { jr.get_static("AllMotionRecognizer", "index") }, fn(jv) { jr.set_static("AllMotionRecognizer", "index", jv) }, 1, True)))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllMotionRecognizer",
        "org.allbinary.input.motion.AllMotionRecognizer",
        "Object",
        [],
        False,
        [#("id", jr.JInt(0))],
        [#("index", jr.as_i(jr.JInt(0)))],
        [
            jr.Method("processStartMotionEvent_4", ["int", "int", "int", "int"], False, c1_m4__processstartmotionevent), 
            jr.Method("processEndMotionEvent_4", ["int", "int", "int", "int"], False, c1_m5__processendmotionevent), 
            jr.Method("processDraggedMotionEvent_4", ["int", "int", "int", "int"], False, c1_m6__processdraggedmotionevent), 
            jr.Method("processMovedMotionEvent_4", ["int", "int", "int", "int"], False, c1_m7__processmovedmotionevent), 
            jr.Method("processScrolledMotionEvent_4", ["int", "int", "int", "int"], False, c1_m8__processscrolledmotionevent), 
            jr.Method("getId_0", [], False, c1_m9__getid), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


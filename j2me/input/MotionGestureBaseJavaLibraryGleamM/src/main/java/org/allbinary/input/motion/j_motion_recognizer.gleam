// Generated Code Do Not Modify
// package org.allbinary.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionRecognizer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__processstartmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
    jr.JNull
}

fn c1_m2__processendmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
    jr.JNull
}

fn c1_m3__processdraggedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionRecognizer",
        "org.allbinary.input.motion.MotionRecognizer",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("processStartMotionEvent_4", ["int", "int", "int", "int"], False, c1_m1__processstartmotionevent), 
            jr.Method("processEndMotionEvent_4", ["int", "int", "int", "int"], False, c1_m2__processendmotionevent), 
            jr.Method("processDraggedMotionEvent_4", ["int", "int", "int", "int"], False, c1_m3__processdraggedmotionevent), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


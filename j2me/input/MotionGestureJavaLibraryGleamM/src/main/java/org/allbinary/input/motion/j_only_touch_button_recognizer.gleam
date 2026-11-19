// Generated Code Do Not Modify
// package org.allbinary.input.motion
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OnlyTouchButtonRecognizer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "touchButtonProcessing", jr.JBool(False))
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
        case jr.truth(jr.call(jr.get_field(this, "touchButtonRecognizer"), "pressTouchButtonInput_3", [l_x, l_y, l_device_id])) {
            True -> {
            jr.set_field(this, "touchButtonProcessing", jr.JBool(True))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m5__processendmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_device_id, l_modifiers] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_device_id = jr.as_i(l_device_id)
    let l_modifiers = jr.as_i(l_modifiers)
    jr.method(fn() {
            case jr.truth(jr.get_field(this, "touchButtonProcessing")) {
            True -> {
            jr.set_field(this, "touchButtonProcessing", jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.call(jr.get_field(this, "touchButtonRecognizer"), "releaseTouchButtonInput_3", [l_x, l_y, l_device_id])) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
        jr.JNull
    })
}

fn c1_m6__processdraggedmotionevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("MotionRecognizer", this, [])
    c1_jfields(this)
        jr.set_field(this, "touchButtonRecognizer", jr.new("TouchButtonRecognizer", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OnlyTouchButtonRecognizer",
        "org.allbinary.input.motion.OnlyTouchButtonRecognizer",
        "MotionRecognizer",
        [],
        False,
        [#("touchButtonRecognizer", jr.JNull), #("touchButtonProcessing", jr.JBool(False))],
        [],
        [
            jr.Method("processStartMotionEvent_4", ["int", "int", "int", "int"], False, c1_m4__processstartmotionevent), 
            jr.Method("processEndMotionEvent_4", ["int", "int", "int", "int"], False, c1_m5__processendmotionevent), 
            jr.Method("processDraggedMotionEvent_4", ["int", "int", "int", "int"], False, c1_m6__processdraggedmotionevent), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


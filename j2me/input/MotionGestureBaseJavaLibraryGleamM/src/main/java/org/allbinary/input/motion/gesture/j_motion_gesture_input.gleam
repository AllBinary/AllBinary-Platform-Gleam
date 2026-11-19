// Generated Code Do Not Modify
// package org.allbinary.input.motion.gesture
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MotionGestureInput

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_id, l_name] = jargs
    let l_id = jr.as_i(l_id)
        jr.super_init("Input", this, [l_id, l_name])
        c1_jfields(this)
        let l_input_factory = jr.call_static("InputFactory", "getInstance_0", [])
        jr.call(l_input_factory, "add_2", [jr.call_inherited(this, "MotionGestureInput", "getId_0", []), this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MotionGestureInput",
        "org.allbinary.input.motion.gesture.MotionGestureInput",
        "Input",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_2", ["int", "String"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


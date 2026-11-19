// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchButtonVisitor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_touch_button_input, l_string] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchButtonVisitor",
        "org.allbinary.input.motion.button.TouchButtonVisitor",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("process_2", ["TouchButtonInput", "String"], False, c1_m1__process), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.input
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TouchJ2ME

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__pointerdragged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_m3__pointerpressed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_m4__pointerreleased(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TouchJ2ME",
        "org.allbinary.input.TouchJ2ME",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("pointerDragged_2", ["int", "int"], False, c1_m2__pointerdragged), 
            jr.Method("pointerPressed_2", ["int", "int"], False, c1_m3__pointerpressed), 
            jr.Method("pointerReleased_2", ["int", "int"], False, c1_m4__pointerreleased), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


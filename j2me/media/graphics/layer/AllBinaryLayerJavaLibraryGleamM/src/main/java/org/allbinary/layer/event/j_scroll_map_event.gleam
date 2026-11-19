// Generated Code Do Not Modify
// package org.allbinary.layer.event
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScrollMapEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__setdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx] = jargs
    let l_dx = jr.as_i(l_dx)
        jr.set_field(this, "dx", jr.as_i(l_dx))
    jr.JNull
}

fn c1_m5__getdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "dx"))
}

fn c1_m6__setdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dy] = jargs
    let l_dy = jr.as_i(l_dy)
        jr.set_field(this, "dy", jr.as_i(l_dy))
    jr.JNull
}

fn c1_m7__getdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "dy"))
}

fn c1_m8__setdxdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx, l_dy] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.set_field(this, "dx", jr.as_i(l_dx))
        jr.set_field(this, "dy", jr.as_i(l_dy))
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_any_type])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScrollMapEvent",
        "org.allbinary.layer.event.ScrollMapEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("dx", jr.JInt(0)), #("dy", jr.JInt(0))],
        [],
        [
            jr.Method("setDx_1", ["int"], False, c1_m4__setdx), 
            jr.Method("getDx_0", [], False, c1_m5__getdx), 
            jr.Method("setDy_1", ["int"], False, c1_m6__setdy), 
            jr.Method("getDy_0", [], False, c1_m7__getdy), 
            jr.Method("setDxDy_2", ["int", "int"], False, c1_m8__setdxdy), 
            jr.Method("jinit_1", ["Object"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


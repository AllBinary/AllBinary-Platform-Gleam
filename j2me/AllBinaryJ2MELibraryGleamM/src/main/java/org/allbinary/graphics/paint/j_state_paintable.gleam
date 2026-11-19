// Generated Code Do Not Modify
// package org.allbinary.graphics.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StatePaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__setstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_state] = jargs
    let l_state = jr.as_i(l_state)
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StatePaintable",
        "org.allbinary.graphics.paint.StatePaintable",
        "Paintable",
        ["StateControlledInterface"],
        False,
        [],
        [],
        [
            jr.Method("setState_1", ["int"], False, c1_m2__setstate), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


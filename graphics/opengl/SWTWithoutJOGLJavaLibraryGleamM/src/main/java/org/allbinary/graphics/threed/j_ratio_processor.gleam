// Generated Code Do Not Modify
// package org.allbinary.graphics.threed
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RatioProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__setcustom(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_ratio] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_ratio = jr.as_f(l_ratio)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RatioProcessor",
        "org.allbinary.graphics.threed.RatioProcessor",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("setCustom_3", ["int", "int", "float"], False, c1_m1__setcustom), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


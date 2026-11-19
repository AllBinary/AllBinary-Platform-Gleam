// Generated Code Do Not Modify
// package org.allbinary.graphics.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Paintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
    jr.JNull
}

fn c1_m2__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_m3__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Paintable",
        "org.allbinary.graphics.paint.Paintable",
        "Object",
        ["PaintableInterface"],
        False,
        [],
        [],
        [
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m1__setbasiccolorp), 
            jr.Method("paint_1", ["Graphics"], False, c1_m2__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m3__paintthreed), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


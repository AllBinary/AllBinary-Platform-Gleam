// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomDisplayable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__settitle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomDisplayable",
        "org.allbinary.graphics.form.CustomDisplayable",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("setTitle_1", ["String"], False, c1_m1__settitle), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


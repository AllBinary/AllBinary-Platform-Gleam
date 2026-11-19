// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Anchor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Anchor", "TOP_LEFT", jr.as_i(jr.band(jr.get_static("Graphics", "TOP"), jr.get_static("Graphics", "LEFT"))))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Anchor",
        "org.allbinary.graphics.Anchor",
        "Object",
        [],
        False,
        [],
        [#("TOP_LEFT", jr.JInt(0))],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


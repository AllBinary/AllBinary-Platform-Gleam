// Generated Code Do Not Modify
// package org.allbinary.view
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CenterViewPositionFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("CenterStaticViewPositionFactory", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CenterViewPositionFactory",
        "org.allbinary.view.CenterViewPositionFactory",
        "CenterStaticViewPositionFactory",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABStack

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Stack", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABStack",
        "org.allbinary.util.ABStack",
        "Stack",
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


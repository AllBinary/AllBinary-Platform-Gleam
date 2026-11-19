// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicArrayListD

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("BasicArrayListS", this, [jr.JInt(7)])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicArrayListD",
        "org.allbinary.util.BasicArrayListD",
        "BasicArrayListS",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbDataOutputStream

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_out] = jargs
        jr.super_init("DataOutputStream", this, [l_out])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbDataOutputStream",
        "org.allbinary.logic.io.AbDataOutputStream",
        "DataOutputStream",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["OutputStream"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


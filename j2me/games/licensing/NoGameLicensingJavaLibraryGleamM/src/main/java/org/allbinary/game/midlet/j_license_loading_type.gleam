// Generated Code Do Not Modify
// package org.allbinary.game.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LicenseLoadingType

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LicenseLoadingType",
        "org.allbinary.game.midlet.LicenseLoadingType",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_1", ["String"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


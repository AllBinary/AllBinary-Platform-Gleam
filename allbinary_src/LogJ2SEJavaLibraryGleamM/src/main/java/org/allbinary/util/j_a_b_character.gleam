// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABCharacter

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ch] = jargs
    let l_ch = jr.as_c(l_ch)
    jr.call_static("Character", "toString_1", [l_ch])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABCharacter",
        "org.allbinary.util.ABCharacter",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("toString_1", ["char"], True, c1_m1__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


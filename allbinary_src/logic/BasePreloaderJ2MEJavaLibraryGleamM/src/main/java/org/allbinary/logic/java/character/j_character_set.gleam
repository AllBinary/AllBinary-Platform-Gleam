// Generated Code Do Not Modify
// package org.allbinary.logic.java.character
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CharacterSet

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JStr("Default Character Set: Empty Implementation")
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CharacterSet",
        "org.allbinary.logic.java.character.CharacterSet",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("toString_0", [], False, c1_m2__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.logic.java.characters
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CharacterSetData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "US_ASCII", jr.JStr("US-ASCII"))
    jr.set_field(this, "ISO_8859_1", jr.JStr("ISO-8859-1"))
    jr.set_field(this, "UTF_8", jr.JStr("UTF-8"))
    jr.set_field(this, "UTF_16", jr.JStr("UTF-16"))
    jr.set_field(this, "UTF_16BE", jr.JStr("UTF-16BE"))
    jr.set_field(this, "UTF_16LE", jr.JStr("UTF-16LE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CharacterSetData", "instance", jr.new("CharacterSetData", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CharacterSetData", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CharacterSetData",
        "org.allbinary.logic.java.characters.CharacterSetData",
        "Object",
        [],
        False,
        [#("US_ASCII", jr.JNull), #("ISO_8859_1", jr.JNull), #("UTF_8", jr.JNull), #("UTF_16", jr.JNull), #("UTF_16BE", jr.JNull), #("UTF_16LE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


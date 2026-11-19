// Generated Code Do Not Modify
// package org.allbinary.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MidletStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "COMMAND_ACTION", jr.JStr("commandAction"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MidletStrings", "instance", jr.new("MidletStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MidletStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MidletStrings",
        "org.allbinary.midlet.MidletStrings",
        "Object",
        [],
        False,
        [#("COMMAND_ACTION", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


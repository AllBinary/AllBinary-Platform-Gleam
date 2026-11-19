// Generated Code Do Not Modify
// package org.allbinary.logic.io.path
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbPathData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "EXTENSION_SEP", jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "PERIOD"))
    jr.set_field(this, "SEPARATORCHAR", jr.as_c(jr.JChar(47)))
    jr.set_field(this, "SEPARATOR", jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "FORWARD_SLASH"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AbPathData", "instance", jr.new("AbPathData", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AbPathData", "instance")
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbPathData",
        "org.allbinary.logic.io.path.AbPathData",
        "Object",
        [],
        False,
        [#("EXTENSION_SEP", jr.JNull), #("SEPARATORCHAR", jr.JChar(0)), #("SEPARATOR", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}


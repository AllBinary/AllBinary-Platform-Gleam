// Generated Code Do Not Modify
// package org.allbinary.business.error
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ErrorData

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NAME", jr.JStr("ERROR_NAME"))
    jr.set_field(this, "TEXT", jr.JStr("ERROR_TEXT"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ErrorData", "instance", jr.new("ErrorData", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ErrorData", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ErrorData",
        "org.allbinary.business.error.ErrorData",
        "Object",
        [],
        False,
        [#("NAME", jr.JNull), #("TEXT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


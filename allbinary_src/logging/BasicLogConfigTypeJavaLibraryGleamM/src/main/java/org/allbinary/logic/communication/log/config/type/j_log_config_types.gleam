// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log.config.type
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LogConfigTypes

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LogConfigTypes", "LOGGING", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LogConfigTypes",
        "org.allbinary.logic.communication.log.config.type.LogConfigTypes",
        "Object",
        [],
        False,
        [],
        [#("LOGGING", jr.JNull)],
        [
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.device
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullGL10

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullGL10", "NULL_GL10", jr.new("NullGL10", []))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullGL10",
        "org.allbinary.device.NullGL10",
        "Object",
        ["GL10"],
        False,
        [],
        [#("NULL_GL10", jr.JNull)],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


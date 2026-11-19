// Generated Code Do Not Modify
// package org.allbinary.logic.io
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullCloseable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullCloseable", "NULL_CLOSEABLE", jr.new("NullCloseable", []))
    jr.JNull
}

fn c1_m2__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullCloseable",
        "org.allbinary.logic.io.NullCloseable",
        "Object",
        ["Closeable"],
        False,
        [],
        [#("NULL_CLOSEABLE", jr.JNull)],
        [
            jr.Method("close_0", [], False, c1_m2__close), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


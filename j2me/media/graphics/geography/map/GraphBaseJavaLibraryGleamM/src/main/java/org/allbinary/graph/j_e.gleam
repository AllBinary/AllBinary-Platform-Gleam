// Generated Code Do Not Modify
// package org.allbinary.graph
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class E

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("E", "e", jr.new("E", []))
    jr.JNull
}

fn c1_m2__newinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("E", "e")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "E",
        "org.allbinary.graph.E",
        "Object",
        [],
        False,
        [],
        [#("e", jr.JNull)],
        [
            jr.Method("newInstance_0", [], False, c1_m2__newinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


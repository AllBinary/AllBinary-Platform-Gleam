// Generated Code Do Not Modify
// package org.allbinary.init
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Init

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Init",
        "org.allbinary.init.Init",
        "Object",
        ["InitInterface"],
        False,
        [#("commonStrings", jr.JNull)],
        [],
        [
            jr.Method("init_0", [], False, c1_m2__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


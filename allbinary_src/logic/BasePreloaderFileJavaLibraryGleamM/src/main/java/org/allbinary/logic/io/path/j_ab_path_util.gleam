// Generated Code Do Not Modify
// package org.allbinary.logic.io.path
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbPathUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NO_ABPATH", jr.call_static("AbPath", "createAbPath_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AbPathUtil", "instance", jr.new("AbPathUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AbPathUtil", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbPathUtil",
        "org.allbinary.logic.io.path.AbPathUtil",
        "Object",
        [],
        False,
        [#("NO_ABPATH", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


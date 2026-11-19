// Generated Code Do Not Modify
// package org.allbinary
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ThreedResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ThreedResources", "threedResources", jr.new("ThreedResources", []))
    jr.JNull
}

fn c1_m2__getthreedresources(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ThreedResources", "threedResources")
}

fn c1_m3__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ThreedResources",
        "org.allbinary.ThreedResources",
        "Object",
        [],
        False,
        [],
        [#("threedResources", jr.JNull)],
        [
            jr.Method("getThreedResources_0", [], True, c1_m2__getthreedresources), 
            jr.Method("add_0", [], False, c1_m3__add), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


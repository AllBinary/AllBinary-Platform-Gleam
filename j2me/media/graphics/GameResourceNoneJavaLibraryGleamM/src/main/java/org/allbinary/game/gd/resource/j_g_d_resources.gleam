// Generated Code Do Not Modify
// package org.allbinary.game.gd.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GDResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "resourceStringArray", jr.array_of("L", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GDResources", "instance", jr.new("GDResources", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GDResources", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GDResources",
        "org.allbinary.game.gd.resource.GDResources",
        "Object",
        [],
        False,
        [#("resourceStringArray", jr.JNull), #("currentLayoutRequiredTotal", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


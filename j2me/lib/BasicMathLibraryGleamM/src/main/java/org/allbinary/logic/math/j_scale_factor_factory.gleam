// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScaleFactorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "DEFAULT_SCALE_FACTOR", jr.as_i(jr.JInt(10)))
    jr.set_field(this, "DEFAULT_SCALE_VALUE", jr.as_i(jr.JInt(1024)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ScaleFactorFactory", "instance", jr.new("ScaleFactorFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ScaleFactorFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScaleFactorFactory",
        "org.allbinary.logic.math.ScaleFactorFactory",
        "Object",
        [],
        False,
        [#("DEFAULT_SCALE_FACTOR", jr.JInt(0)), #("DEFAULT_SCALE_VALUE", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


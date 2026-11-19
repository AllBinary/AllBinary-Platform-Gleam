// Generated Code Do Not Modify
// package org.allbinary.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PositionStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "X", jr.JStr("x"))
    jr.set_field(this, "Y", jr.JStr("y"))
    jr.set_field(this, "X_LABEL", jr.JStr("x: "))
    jr.set_field(this, "Y_LABEL", jr.JStr("y: "))
    jr.set_field(this, "Z_LABEL", jr.JStr("z: "))
    jr.set_field(this, "DX_LABEL", jr.JStr("dx: "))
    jr.set_field(this, "DY_LABEL", jr.JStr("dy: "))
    jr.set_field(this, "DZ_LABEL", jr.JStr("dz: "))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PositionStrings", "instance", jr.new("PositionStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PositionStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PositionStrings",
        "org.allbinary.math.PositionStrings",
        "Object",
        [],
        False,
        [#("X", jr.JNull), #("Y", jr.JNull), #("X_LABEL", jr.JNull), #("Y_LABEL", jr.JNull), #("Z_LABEL", jr.JNull), #("DX_LABEL", jr.JNull), #("DY_LABEL", jr.JNull), #("DZ_LABEL", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


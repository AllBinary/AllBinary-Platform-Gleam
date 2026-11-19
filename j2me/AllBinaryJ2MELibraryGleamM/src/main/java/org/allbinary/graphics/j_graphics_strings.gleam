// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GraphicsStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "ANIMATION", jr.JStr("animation"))
    jr.set_field(this, "ANGLE", jr.JStr("angle"))
    jr.set_field(this, "MOVEMENT_ANGLE", jr.JStr("movement_angle"))
    jr.set_field(this, "ROTATION", jr.JStr("rotation"))
    jr.set_field(this, "OPACITY", jr.JStr("opacity"))
    jr.set_field(this, "HTML", jr.JStr("HTML"))
    jr.set_field(this, "WIDTH", jr.JStr("width"))
    jr.set_field(this, "HEIGHT", jr.JStr("height"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GraphicsStrings", "instance", jr.new("GraphicsStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GraphicsStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GraphicsStrings",
        "org.allbinary.graphics.GraphicsStrings",
        "Object",
        [],
        False,
        [#("ANIMATION", jr.JNull), #("ANGLE", jr.JNull), #("MOVEMENT_ANGLE", jr.JNull), #("ROTATION", jr.JNull), #("OPACITY", jr.JNull), #("HTML", jr.JNull), #("WIDTH", jr.JNull), #("HEIGHT", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


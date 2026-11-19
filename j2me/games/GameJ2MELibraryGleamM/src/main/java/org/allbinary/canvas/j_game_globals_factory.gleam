// Generated Code Do Not Modify
// package org.allbinary.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameGlobalsFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "newCanvas", jr.JBool(True))
    jr.set_field(this, "newDisplaybleTime", jr.as_j(jr.to_j(jr.get_static("Integer", "MIN_VALUE"))))
    jr.set_field(this, "point", jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GameGlobalsFactory", "instance", jr.new("GameGlobalsFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GameGlobalsFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameGlobalsFactory",
        "org.allbinary.canvas.GameGlobalsFactory",
        "Object",
        [],
        False,
        [#("newCanvas", jr.JBool(False)), #("newDisplaybleTime", jr.JLong(0)), #("point", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


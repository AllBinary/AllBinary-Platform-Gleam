// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RectangleFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RectangleFactory", "SINGLETON", jr.new("Rectangle", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.JInt(0), jr.JInt(0)]))
    jr.set_static("RectangleFactory", "ARRAY_OF_ARRAYS", jr.new_array("L", 2, [jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RectangleFactory",
        "org.allbinary.graphics.RectangleFactory",
        "Object",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull), #("ARRAY_OF_ARRAYS", jr.JNull)],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


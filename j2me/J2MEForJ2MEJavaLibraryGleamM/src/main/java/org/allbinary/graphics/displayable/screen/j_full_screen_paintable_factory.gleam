// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FullScreenPaintableFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "paintable", jr.call_static("NullPaintable", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FullScreenPaintableFactory", "instance", jr.new("FullScreenPaintableFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FullScreenPaintableFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FullScreenPaintableFactory",
        "org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory",
        "Object",
        [],
        False,
        [#("paintable", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


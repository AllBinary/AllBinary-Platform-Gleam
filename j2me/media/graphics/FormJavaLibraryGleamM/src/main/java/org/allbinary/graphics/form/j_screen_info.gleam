// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScreenInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "SMALL_WIDTH", jr.as_i(jr.JInt(320)))
    jr.set_field(this, "SMALL_HEIGHT", jr.as_i(jr.JInt(240)))
    jr.set_field(this, "MEDIUM_WIDTH", jr.as_i(jr.JInt(800)))
    jr.set_field(this, "MEDIUM_HEIGHT", jr.as_i(jr.JInt(600)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ScreenInfo", "instance", jr.new("ScreenInfo", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ScreenInfo", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScreenInfo",
        "org.allbinary.graphics.form.ScreenInfo",
        "Object",
        [],
        False,
        [#("SMALL_WIDTH", jr.JInt(0)), #("SMALL_HEIGHT", jr.JInt(0)), #("MEDIUM_WIDTH", jr.JInt(0)), #("MEDIUM_HEIGHT", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


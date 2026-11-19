// Generated Code Do Not Modify
// package org.allbinary.game.graphics.hud
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicHudFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "DIRECTION_EXCEPTION", jr.JStr("Only Horizontal Direction is Allowed Currently"))
    jr.set_field(this, "VERTICAL", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "HORIZONTAL", jr.as_i(jr.JInt(1)))
    jr.set_field(this, "BOTTOMLEFT", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "BOTTOMRIGHT", jr.as_i(jr.JInt(1)))
    jr.set_field(this, "TOPLEFT", jr.as_i(jr.JInt(2)))
    jr.set_field(this, "TOPRIGHT", jr.as_i(jr.JInt(3)))
    jr.set_field(this, "BOTTOMCENTER", jr.as_i(jr.JInt(4)))
    jr.set_field(this, "TOPCENTER", jr.as_i(jr.JInt(5)))
    jr.set_field(this, "ABSOLUTE", jr.as_i(jr.JInt(6)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicHudFactory", "instance", jr.new("BasicHudFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BasicHudFactory", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicHudFactory",
        "org.allbinary.game.graphics.hud.BasicHudFactory",
        "Object",
        [],
        False,
        [#("DIRECTION_EXCEPTION", jr.JNull), #("VERTICAL", jr.JInt(0)), #("HORIZONTAL", jr.JInt(0)), #("BOTTOMLEFT", jr.JInt(0)), #("BOTTOMRIGHT", jr.JInt(0)), #("TOPLEFT", jr.JInt(0)), #("TOPRIGHT", jr.JInt(0)), #("BOTTOMCENTER", jr.JInt(0)), #("TOPCENTER", jr.JInt(0)), #("ABSOLUTE", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


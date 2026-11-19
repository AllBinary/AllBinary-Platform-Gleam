// Generated Code Do Not Modify
// package org.allbinary.game.graphics.hud
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HudGraphicsPosition

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "point", jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("HudGraphicsPosition", "NULL_HUD_GRAPHICS_POSITION", jr.new("HudGraphicsPosition", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.JInt(9)]))
    jr.JNull
}

fn c1_m5__getanchor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "anchor"))
}

fn c1_m6__setanchor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_anchor] = jargs
    let l_anchor = jr.as_i(l_anchor)
        jr.set_field(this, "anchor", jr.as_i(l_anchor))
    jr.JNull
}

fn c1_m7__getpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "point")
}

fn c1_m8__setpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point] = jargs
        jr.set_field(this, "point", l_point)
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point, l_anchor] = jargs
    let l_anchor = jr.as_i(l_anchor)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setAnchor_1", [l_anchor])
        jr.call(this, "setPoint_1", [l_point])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HudGraphicsPosition",
        "org.allbinary.game.graphics.hud.HudGraphicsPosition",
        "Object",
        [],
        False,
        [#("anchor", jr.JInt(0)), #("point", jr.JNull)],
        [#("NULL_HUD_GRAPHICS_POSITION", jr.JNull)],
        [
            jr.Method("getAnchor_0", [], False, c1_m5__getanchor), 
            jr.Method("setAnchor_1", ["int"], False, c1_m6__setanchor), 
            jr.Method("getPoint_0", [], False, c1_m7__getpoint), 
            jr.Method("setPoint_1", ["GPoint"], False, c1_m8__setpoint), 
            jr.Method("jinit_2", ["GPoint", "int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


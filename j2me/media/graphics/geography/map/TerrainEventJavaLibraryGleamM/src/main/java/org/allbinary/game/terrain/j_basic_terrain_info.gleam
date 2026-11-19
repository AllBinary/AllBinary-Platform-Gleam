// Generated Code Do Not Modify
// package org.allbinary.game.terrain
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicTerrainInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicTerrainInfo", "NULL_BASIC_TERRAIN_INFO", jr.new("BasicTerrainInfo", [jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "NOT_ANGLE")]))
    jr.JNull
}

fn c1_m4__getangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "angle")
}

fn c1_m5__setangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
        jr.set_field(this, "angle", l_angle)
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "angle", l_angle)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicTerrainInfo",
        "org.allbinary.game.terrain.BasicTerrainInfo",
        "Object",
        [],
        False,
        [#("angle", jr.JNull)],
        [#("NULL_BASIC_TERRAIN_INFO", jr.JNull)],
        [
            jr.Method("getAngle_0", [], False, c1_m4__getangle), 
            jr.Method("setAngle_1", ["Angle"], False, c1_m5__setangle), 
            jr.Method("jinit_1", ["Angle"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


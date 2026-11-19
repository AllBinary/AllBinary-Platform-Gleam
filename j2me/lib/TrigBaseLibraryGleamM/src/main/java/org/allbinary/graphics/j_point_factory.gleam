// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PointFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "ZERO_ZERO", jr.call(this, "createXYZ_3", [jr.JInt(0), jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PointFactory", "instance", jr.new("PointFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PointFactory", "instance")
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m6__createxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.new("GPoint", [l_x, l_y, jr.JInt(0)])
}

fn c1_m7__createxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
    jr.new("GPoint", [l_x, l_y, l_z])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PointFactory",
        "org.allbinary.graphics.PointFactory",
        "Object",
        [],
        False,
        [#("ZERO_ZERO", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], False, c1_m4__init), 
            jr.Method("createXY_2", ["int", "int"], False, c1_m6__createxy), 
            jr.Method("createXYZ_3", ["int", "int", "int"], False, c1_m7__createxyz), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


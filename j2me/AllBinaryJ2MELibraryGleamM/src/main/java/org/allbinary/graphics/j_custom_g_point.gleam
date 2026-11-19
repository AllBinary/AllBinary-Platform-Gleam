// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomGPoint

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CustomGPoint", "NULL_CUSTOM_POINT", jr.new("CustomGPoint", [jr.JInt(0), jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point] = jargs
    jr.new("CustomGPoint", [jr.call(l_point, "getX_0", []), jr.call(l_point, "getY_0", []), jr.call(l_point, "getZ_0", [])])
}

fn c1_m3__getinstance3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.new("CustomGPoint", [l_x, l_y, jr.JInt(3)])
}

fn c1_m8__setx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x] = jargs
    let l_x = jr.as_i(l_x)
        jr.set_field(this, "cx", jr.as_i(l_x))
    jr.JNull
}

fn c1_m9__getx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "cx"))
}

fn c1_m10__sety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_y] = jargs
    let l_y = jr.as_i(l_y)
        jr.set_field(this, "cy", jr.as_i(l_y))
    jr.JNull
}

fn c1_m11__gety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "cy"))
}

fn c1_m12__setz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_z] = jargs
    let l_z = jr.as_i(l_z)
        jr.set_field(this, "cz", jr.as_i(l_z))
    jr.JNull
}

fn c1_m13__getz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "cz"))
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.super_init("GPoint", this, [l_x, l_y, l_z])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomGPoint",
        "org.allbinary.graphics.CustomGPoint",
        "GPoint",
        [],
        False,
        [#("cx", jr.JInt(0)), #("cy", jr.JInt(0)), #("cz", jr.JInt(0))],
        [#("NULL_CUSTOM_POINT", jr.JNull)],
        [
            jr.Method("getInstance_1", ["GPoint"], True, c1_m2__getinstance), 
            jr.Method("getInstance3_2", ["int", "int"], True, c1_m3__getinstance3), 
            jr.Method("setX_1", ["int"], False, c1_m8__setx), 
            jr.Method("getX_0", [], False, c1_m9__getx), 
            jr.Method("setY_1", ["int"], False, c1_m10__sety), 
            jr.Method("getY_0", [], False, c1_m11__gety), 
            jr.Method("setZ_1", ["int"], False, c1_m12__setz), 
            jr.Method("getZ_0", [], False, c1_m13__getz), 
            jr.Method("jinit_3", ["int", "int", "int"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}


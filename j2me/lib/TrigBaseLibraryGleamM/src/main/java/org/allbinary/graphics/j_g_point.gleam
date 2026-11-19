// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GPoint

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point] = jargs
    jr.new("GPoint", [jr.call(l_point, "getX_0", []), jr.call(l_point, "getY_0", []), jr.call(l_point, "getZ_0", [])])
}

fn c1_m6__getx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "x"))
}

fn c1_m7__gety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "y"))
}

fn c1_m8__getz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "z"))
}

fn c1_m9__getrawx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "x"))
}

fn c1_m10__getrawy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "y"))
}

fn c1_m11__getrawz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "z"))
}

fn c1_m12__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("GPoint", "toStringStatic_3", [jr.call(this, "getX_0", []), jr.call(this, "getY_0", []), jr.call(this, "getZ_0", [])])
}

fn c1_m14__tostringstatic(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        let l_string_buffer = jr.new("StringMaker", [])
        let l_position_strings = jr.call_static("PositionStrings", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.get_static("GPoint", "POINT_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "X_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [l_x])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "Y_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [l_y])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "Z_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [l_z])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "x", jr.as_i(l_x))
        jr.set_field(this, "y", jr.as_i(l_y))
        jr.set_field(this, "z", jr.as_i(l_z))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GPoint",
        "org.allbinary.graphics.GPoint",
        "Object",
        [],
        False,
        [#("x", jr.JInt(0)), #("y", jr.JInt(0)), #("z", jr.JInt(0))],
        [#("POINT_LABEL", jr.JStr("Point: "))],
        [
            jr.Method("getInstance_1", ["GPoint"], True, c1_m1__getinstance), 
            jr.Method("getX_0", [], False, c1_m6__getx), 
            jr.Method("getY_0", [], False, c1_m7__gety), 
            jr.Method("getZ_0", [], False, c1_m8__getz), 
            jr.Method("getRawX_0", [], False, c1_m9__getrawx), 
            jr.Method("getRawY_0", [], False, c1_m10__getrawy), 
            jr.Method("getRawZ_0", [], False, c1_m11__getrawz), 
            jr.Method("toString_0", [], False, c1_m12__tostring), 
            jr.Method("toStringStatic_3", ["int", "int", "int"], True, c1_m14__tostringstatic), 
            jr.Method("jinit_3", ["int", "int", "int"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


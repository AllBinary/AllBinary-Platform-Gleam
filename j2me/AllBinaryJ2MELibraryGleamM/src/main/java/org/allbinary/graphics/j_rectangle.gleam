// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Rectangle

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "point")
}

fn c1_m6__setpoint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point] = jargs
        jr.set_field(this, "point", l_point)
    jr.JNull
}

fn c1_m7__getmaxx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.add(jr.call(jr.get_field(this, "point"), "getX_0", []), jr.get_field(this, "width")))
}

fn c1_m8__getmaxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.add(jr.call(jr.get_field(this, "point"), "getY_0", []), jr.get_field(this, "height")))
}

fn c1_m9__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "width"))
}

fn c1_m10__setwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width] = jargs
    let l_width = jr.as_i(l_width)
        jr.set_field(this, "width", jr.as_i(l_width))
    jr.JNull
}

fn c1_m11__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "height"))
}

fn c1_m12__setheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_height] = jargs
    let l_height = jr.as_i(l_height)
        jr.set_field(this, "height", jr.as_i(l_height))
    jr.JNull
}

fn c1_m13__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.call(jr.call(this, "getPoint_0", []), "toString_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "WIDTH_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getWidth_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "HEIGHT_LABEL")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getHeight_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" MaxX: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getMaxX_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" MaxY: ")])
        jr.call(l_string_buffer, "appendint_1", [jr.call(this, "getMaxY_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_point, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "point", l_point)
        jr.set_field(this, "width", jr.as_i(l_width))
        jr.set_field(this, "height", jr.as_i(l_height))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Rectangle",
        "org.allbinary.graphics.Rectangle",
        "Object",
        [],
        False,
        [#("point", jr.JNull), #("width", jr.JInt(0)), #("height", jr.JInt(0))],
        [],
        [
            jr.Method("getPoint_0", [], False, c1_m5__getpoint), 
            jr.Method("setPoint_1", ["GPoint"], False, c1_m6__setpoint), 
            jr.Method("getMaxX_0", [], False, c1_m7__getmaxx), 
            jr.Method("getMaxY_0", [], False, c1_m8__getmaxy), 
            jr.Method("getWidth_0", [], False, c1_m9__getwidth), 
            jr.Method("setWidth_1", ["int"], False, c1_m10__setwidth), 
            jr.Method("getHeight_0", [], False, c1_m11__getheight), 
            jr.Method("setHeight_1", ["int"], False, c1_m12__setheight), 
            jr.Method("toString_0", [], False, c1_m13__tostring), 
            jr.Method("jinit_3", ["GPoint", "int", "int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


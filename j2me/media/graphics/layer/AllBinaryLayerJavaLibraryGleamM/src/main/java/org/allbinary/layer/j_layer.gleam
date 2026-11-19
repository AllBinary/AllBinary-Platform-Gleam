// Generated Code Do Not Modify
// package org.allbinary.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Layer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "z", jr.as_i(jr.JInt(3)))
    jr.set_field(this, "visible", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Layer", "ID", jr.call(jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []), "getAt_1", [jr.JInt(0)]))
    jr.JNull
}

fn c1_m10__setposition(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.set_field(this, "x", jr.as_i(l_x))
        jr.set_field(this, "y", jr.as_i(l_y))
        jr.set_field(this, "z", jr.as_i(l_z))
    jr.JNull
}

fn c1_m11__movedxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx, l_dy] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.compound(fn() { jr.get_field(this, "x") }, fn(jv) { jr.add(jv, l_dx) }, fn(jv) { jr.set_field(this, "x", jv) })
        jr.compound(fn() { jr.get_field(this, "y") }, fn(jv) { jr.add(jv, l_dy) }, fn(jv) { jr.set_field(this, "y", jv) })
    jr.JNull
}

fn c1_m12__movedxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx, l_dy, l_dz] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    let l_dz = jr.as_i(l_dz)
        jr.compound(fn() { jr.get_field(this, "x") }, fn(jv) { jr.add(jv, l_dx) }, fn(jv) { jr.set_field(this, "x", jv) })
        jr.compound(fn() { jr.get_field(this, "y") }, fn(jv) { jr.add(jv, l_dy) }, fn(jv) { jr.set_field(this, "y", jv) })
        jr.compound(fn() { jr.get_field(this, "z") }, fn(jv) { jr.add(jv, l_dz) }, fn(jv) { jr.set_field(this, "z", jv) })
    jr.JNull
}

fn c1_m13__getxp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "x"))
}

fn c1_m14__getyp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "y"))
}

fn c1_m15__getzp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "z"))
}

fn c1_m16__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "width"))
}

fn c1_m17__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "height"))
}

fn c1_m18__getdepth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.JLong(0))
}

fn c1_m19__setvisible(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_visible] = jargs
        jr.set_field(this, "visible", l_visible)
    jr.JNull
}

fn c1_m20__isvisible(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "visible")
}

fn c1_m21__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        let l_canvas_strings = jr.call_static("CanvasStrings", "getInstance_0", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(l_common_strings, "NOT_IMPLEMENTED"), this, jr.get_field(l_canvas_strings, "PAINT")])
    jr.JNull
}

fn c1_m22__setlayerwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width] = jargs
    let l_width = jr.as_i(l_width)
        case jr.truth(jr.lt(l_width, jr.JInt(0))) {
            True -> {
            jr.throw(jr.new("IllegalArgumentException", []))
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "width", jr.as_i(l_width))
    jr.JNull
}

fn c1_m23__setlayerheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_height] = jargs
    let l_height = jr.as_i(l_height)
        case jr.truth(jr.lt(l_height, jr.JInt(0))) {
            True -> {
            jr.throw(jr.new("IllegalArgumentException", []))
            Nil
        }
            False -> Nil
        }
        jr.set_field(this, "height", jr.as_i(l_height))
    jr.JNull
}

fn c1_m24__tostringappend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string_buffer] = jargs
    jr.JNull
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setLayerWidth_1", [l_width])
        jr.call(this, "setLayerHeight_1", [l_height])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Layer",
        "org.allbinary.layer.Layer",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("x", jr.JInt(0)), #("y", jr.JInt(0)), #("z", jr.JInt(0)), #("width", jr.JInt(0)), #("height", jr.JInt(0)), #("visible", jr.JBool(False))],
        [#("ID", jr.JNull)],
        [
            jr.Method("setPosition_3", ["int", "int", "int"], False, c1_m10__setposition), 
            jr.Method("moveDXY_2", ["int", "int"], False, c1_m11__movedxy), 
            jr.Method("moveDXYZ_3", ["int", "int", "int"], False, c1_m12__movedxyz), 
            jr.Method("getXP_0", [], False, c1_m13__getxp), 
            jr.Method("getYP_0", [], False, c1_m14__getyp), 
            jr.Method("getZP_0", [], False, c1_m15__getzp), 
            jr.Method("getWidth_0", [], False, c1_m16__getwidth), 
            jr.Method("getHeight_0", [], False, c1_m17__getheight), 
            jr.Method("getDepth_0", [], False, c1_m18__getdepth), 
            jr.Method("setVisible_1", ["boolean"], False, c1_m19__setvisible), 
            jr.Method("isVisible_0", [], False, c1_m20__isvisible), 
            jr.Method("paint_1", ["Graphics"], False, c1_m21__paint), 
            jr.Method("setLayerWidth_1", ["int"], False, c1_m22__setlayerwidth), 
            jr.Method("setLayerHeight_1", ["int"], False, c1_m23__setlayerheight), 
            jr.Method("toStringAppend_1", ["StringMaker"], False, c1_m24__tostringappend), 
            jr.Method("jinit_2", ["int", "int"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}


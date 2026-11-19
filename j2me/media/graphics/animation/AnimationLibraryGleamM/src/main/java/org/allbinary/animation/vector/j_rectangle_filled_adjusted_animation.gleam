// Generated Code Do Not Modify
// package org.allbinary.animation.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RectangleFilledAdjustedAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_inherited(this, "RectangleFilledAdjustedAnimation", "basicSetColorUtil"), "setBasicColorP3_3", [l_graphics, jr.call(this, "getBasicColorP_0", []), jr.call_inherited(this, "RectangleFilledAdjustedAnimation", "getColor_0", [])])
        jr.call_super("RectangleFilledAnimation", this, "paintXY_3", [l_graphics, jr.add(l_x, jr.get_field(this, "offsetX")), jr.add(l_y, jr.get_field(this, "offsetY"))])
    jr.JNull
}

fn c1_m6__setoffsetx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_offset_x] = jargs
    let l_offset_x = jr.as_i(l_offset_x)
        jr.set_field(this, "offsetX", jr.as_i(l_offset_x))
    jr.JNull
}

fn c1_m7__setoffsety(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_offset_y] = jargs
    let l_offset_y = jr.as_i(l_offset_y)
        jr.set_field(this, "offsetY", jr.as_i(l_offset_y))
    jr.JNull
}

fn c1_m8__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("RectangleFilledAnimation", this, "getBasicColorP_0", [])
}

fn c1_m9__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.call_super("RectangleFilledAnimation", this, "setBasicColorP_1", [l_basic_color])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_offset_x, l_offset_y, l_basic_color] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_offset_x = jr.as_i(l_offset_x)
    let l_offset_y = jr.as_i(l_offset_y)
        jr.super_init("RectangleFilledAnimation", this, [l_width, l_height, l_basic_color])
        c1_jfields(this)
        jr.set_field(this, "offsetX", jr.as_i(l_offset_x))
        jr.set_field(this, "offsetY", jr.as_i(l_offset_y))
        jr.call(this, "setBasicColorP_1", [l_basic_color])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RectangleFilledAdjustedAnimation",
        "org.allbinary.animation.vector.RectangleFilledAdjustedAnimation",
        "RectangleFilledAnimation",
        ["ColorCompositeInterface"],
        False,
        [#("offsetX", jr.JInt(0)), #("offsetY", jr.JInt(0))],
        [],
        [
            jr.Method("nextFrame_0", [], False, c1_m4__nextframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m5__paintxy), 
            jr.Method("setOffsetX_1", ["int"], False, c1_m6__setoffsetx), 
            jr.Method("setOffsetY_1", ["int"], False, c1_m7__setoffsety), 
            jr.Method("getBasicColorP_0", [], False, c1_m8__getbasiccolorp), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m9__setbasiccolorp), 
            jr.Method("jinit_5", ["int", "int", "int", "int", "BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


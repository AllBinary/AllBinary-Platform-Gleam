// Generated Code Do Not Modify
// package org.allbinary.animation.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RectangleAnimation

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
        jr.call(jr.get_inherited(this, "RectangleAnimation", "basicSetColorUtil"), "setBasicColorP3_3", [l_graphics, jr.call(this, "getBasicColorP_0", []), jr.call_inherited(this, "RectangleAnimation", "getColor_0", [])])
        jr.call(l_graphics, "drawRect_4", [l_x, l_y, jr.get_field(this, "width"), jr.get_field(this, "height")])
    jr.JNull
}

fn c1_m6__setwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width] = jargs
    let l_width = jr.as_i(l_width)
        jr.set_field(this, "width", jr.as_i(l_width))
    jr.JNull
}

fn c1_m7__setheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_height] = jargs
    let l_height = jr.as_i(l_height)
        jr.set_field(this, "height", jr.as_i(l_height))
    jr.JNull
}

fn c1_m8__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("Animation", this, "getBasicColorP_0", [])
}

fn c1_m9__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.call_super("Animation", this, "setBasicColorP_1", [l_basic_color])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_basic_color] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.super_init("Animation", this, [])
    c1_jfields(this)
        jr.set_field(this, "width", jr.as_i(l_width))
        jr.set_field(this, "height", jr.as_i(l_height))
        jr.call(this, "setBasicColorP_1", [l_basic_color])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RectangleAnimation",
        "org.allbinary.animation.vector.RectangleAnimation",
        "Animation",
        ["ColorCompositeInterface"],
        False,
        [#("width", jr.JInt(0)), #("height", jr.JInt(0))],
        [],
        [
            jr.Method("nextFrame_0", [], False, c1_m4__nextframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m5__paintxy), 
            jr.Method("setWidth_1", ["int"], False, c1_m6__setwidth), 
            jr.Method("setHeight_1", ["int"], False, c1_m7__setheight), 
            jr.Method("getBasicColorP_0", [], False, c1_m8__getbasiccolorp), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m9__setbasiccolorp), 
            jr.Method("jinit_3", ["int", "int", "BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.game.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ColorFillBasePaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
        jr.call(this, "setColor_1", [jr.call(jr.call(this, "getBasicColorP_0", []), "intValue_0", [])])
    jr.JNull
}

fn c1_m5__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_m6__getcolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "colorP"))
}

fn c1_m7__setcolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_color] = jargs
    let l_color = jr.as_i(l_color)
        jr.set_field(this, "colorP", jr.as_i(l_color))
    jr.JNull
}

fn c1_m8__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.call(this, "setBasicColorP_1", [l_basic_color])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ColorFillBasePaintable",
        "org.allbinary.game.paint.ColorFillBasePaintable",
        "Paintable",
        ["ColorCompositeInterface"],
        False,
        [#("basicColor", jr.JNull), #("colorP", jr.JInt(0))],
        [],
        [
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m4__setbasiccolorp), 
            jr.Method("getBasicColorP_0", [], False, c1_m5__getbasiccolorp), 
            jr.Method("getColor_0", [], False, c1_m6__getcolor), 
            jr.Method("setColor_1", ["int"], False, c1_m7__setcolor), 
            jr.Method("paint_1", ["Graphics"], False, c1_m8__paint), 
            jr.Method("jinit_1", ["BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.animation.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LineAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "newLine", jr.new_array("I", 2, [jr.JInt(2), jr.JInt(2)]))
    jr.set_field(this, "tempLine", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY_ARRAY"))
    jr.set_field(this, "line", jr.new_array("I", 2, [jr.JInt(2), jr.JInt(2)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.aset(jr.aget(jr.get_field(this, "newLine"), jr.JInt(0)), jr.JInt(0), l_x)
        jr.aset(jr.aget(jr.get_field(this, "newLine"), jr.JInt(0)), jr.JInt(1), l_y)
        jr.aset(jr.aget(jr.get_field(this, "newLine"), jr.JInt(1)), jr.JInt(0), l_x)
        jr.aset(jr.aget(jr.get_field(this, "newLine"), jr.JInt(1)), jr.JInt(1), l_y)
        jr.set_field(this, "tempLine", jr.get_field(this, "line"))
        jr.set_field(this, "line", jr.get_field(this, "newLine"))
        jr.set_field(this, "newLine", jr.get_field(this, "tempLine"))
    jr.JNull
}

fn c1_m6__setposition(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.aset(jr.aget(jr.get_field(this, "newLine"), jr.JInt(0)), jr.JInt(0), jr.aget(jr.aget(jr.get_field(this, "line"), jr.JInt(1)), jr.JInt(0)))
        jr.aset(jr.aget(jr.get_field(this, "newLine"), jr.JInt(0)), jr.JInt(1), jr.aget(jr.aget(jr.get_field(this, "line"), jr.JInt(1)), jr.JInt(1)))
        jr.aset(jr.aget(jr.get_field(this, "newLine"), jr.JInt(1)), jr.JInt(0), l_x)
        jr.aset(jr.aget(jr.get_field(this, "newLine"), jr.JInt(1)), jr.JInt(1), l_y)
        jr.set_field(this, "tempLine", jr.get_field(this, "line"))
        jr.set_field(this, "line", jr.get_field(this, "newLine"))
        jr.set_field(this, "newLine", jr.get_field(this, "tempLine"))
    jr.JNull
}

fn c1_m7__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        let l_current_line = jr.get_field(this, "line")
        jr.call(jr.get_inherited(this, "LineAnimation", "basicSetColorUtil"), "setBasicColorP3_3", [l_graphics, jr.call(this, "getBasicColorP_0", []), jr.call_inherited(this, "LineAnimation", "getColor_0", [])])
        jr.call(l_graphics, "drawLine_4", [jr.aget(jr.aget(l_current_line, jr.JInt(0)), jr.JInt(0)), jr.aget(jr.aget(l_current_line, jr.JInt(0)), jr.JInt(1)), jr.aget(jr.aget(l_current_line, jr.JInt(1)), jr.JInt(0)), jr.aget(jr.aget(l_current_line, jr.JInt(1)), jr.JInt(1))])
    jr.JNull
}

fn c1_m8__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("Animation", this, "getBasicColorP_0", [])
}

fn c1_m10__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.call_super("Animation", this, "setBasicColorP_1", [l_basic_color])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
    jr.super_init("Animation", this, [])
    c1_jfields(this)
        jr.call(this, "setBasicColorP_1", [l_basic_color])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LineAnimation",
        "org.allbinary.animation.vector.LineAnimation",
        "Animation",
        ["ColorCompositeInterface", "PositionInterface"],
        False,
        [#("newLine", jr.JNull), #("tempLine", jr.JNull), #("line", jr.JNull)],
        [],
        [
            jr.Method("init_2", ["int", "int"], False, c1_m5__init), 
            jr.Method("setPosition_3", ["int", "int", "int"], False, c1_m6__setposition), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m7__paintxy), 
            jr.Method("nextFrame_0", [], False, c1_m8__nextframe), 
            jr.Method("getBasicColorP_0", [], False, c1_m9__getbasiccolorp), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m10__setbasiccolorp), 
            jr.Method("jinit_1", ["BasicColor"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


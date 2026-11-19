// Generated Code Do Not Modify
// package org.allbinary.graphics.draw
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CanvasDrawLineString

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "drawStringUtil", jr.call_static("DrawStringUtil", "getInstance_0", []))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "fontHeight", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CanvasDrawLineString", "NULL_CANVAS_DRAW_LINE_STRING", jr.new("CanvasDrawLineString", [jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_m8__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "fontHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m9__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_string, l_line] = jargs
    let l_line = jr.as_i(l_line)
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(jr.get_field(this, "drawStringUtil"), "drawCenterString_6", [l_graphics, l_string, jr.JInt(0), jr.call(l_string, "length_0", []), jr.get_field(this, "x"), jr.add(jr.get_field(this, "y"), jr.mul(l_line, jr.get_field(this, "fontHeight")))])
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "x", jr.as_i(l_x))
        jr.set_field(this, "y", jr.as_i(l_y))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CanvasDrawLineString",
        "org.allbinary.graphics.draw.CanvasDrawLineString",
        "Object",
        ["UpdateMyFontInterface"],
        False,
        [#("drawStringUtil", jr.JNull), #("myFontProcessor", jr.JNull), #("x", jr.JInt(0)), #("y", jr.JInt(0)), #("fontHeight", jr.JInt(0))],
        [#("NULL_CANVAS_DRAW_LINE_STRING", jr.JNull)],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m8__updatemeasurement), 
            jr.Method("paint_3", ["Graphics", "String", "int"], False, c1_m9__paint), 
            jr.Method("jinit_2", ["int", "int"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}


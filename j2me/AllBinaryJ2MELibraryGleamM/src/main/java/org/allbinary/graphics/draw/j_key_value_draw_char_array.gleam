// Generated Code Do Not Modify
// package org.allbinary.graphics.draw
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class KeyValueDrawCharArray

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "value", jr.call(jr.call_static("CharArrayFactory", "getInstance_0", []), "getZeroCharArray_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_label_width = jr.as_i(jr.sub(jr.call(jr.call(l_graphics, "getFont_0", []), "stringWidth_1", [jr.get_field(this, "LABEL")]), jr.call(jr.get_field(this, "LABEL"), "length_0", [])))
        jr.set_field(this, "valueX", jr.as_i(jr.add(l_label_width, jr.get_field(this, "labelX"))))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m9__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_y] = jargs
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(l_graphics, "drawString_4", [jr.get_field(this, "LABEL"), jr.get_field(this, "labelX"), l_y, jr.JInt(0)])
        jr.call(l_graphics, "drawChars_6", [jr.get_field(this, "value"), jr.JInt(0), jr.get_field(this, "len"), jr.get_field(this, "valueX"), l_y, jr.JInt(0)])
    jr.JNull
}

fn c1_m10__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_len] = jargs
    let l_len = jr.as_i(l_len)
        jr.set_field(this, "value", l_value)
        jr.set_field(this, "len", jr.as_i(l_len))
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label, l_x] = jargs
    let l_x = jr.as_i(l_x)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "LABEL", l_label)
        jr.set_field(this, "labelX", jr.as_i(l_x))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "KeyValueDrawCharArray",
        "org.allbinary.graphics.draw.KeyValueDrawCharArray",
        "Object",
        ["UpdateMyFontInterface"],
        False,
        [#("myFontProcessor", jr.JNull), #("LABEL", jr.JNull), #("labelX", jr.JInt(0)), #("valueX", jr.JInt(0)), #("value", jr.JNull), #("len", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m8__updatemeasurement), 
            jr.Method("paint_2", ["Graphics", "int"], False, c1_m9__paint), 
            jr.Method("update_2", ["charArr", "int"], False, c1_m10__update), 
            jr.Method("jinit_2", ["String", "int"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}


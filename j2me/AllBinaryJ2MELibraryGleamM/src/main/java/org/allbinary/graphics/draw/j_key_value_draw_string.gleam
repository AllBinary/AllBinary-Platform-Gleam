// Generated Code Do Not Modify
// package org.allbinary.graphics.draw
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class KeyValueDrawString

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "value", jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_label_width = jr.as_i(jr.sub(jr.call(jr.call(l_graphics, "getFont_0", []), "stringWidth_1", [jr.get_field(this, "LABEL")]), jr.call(jr.get_field(this, "LABEL"), "length_0", [])))
        jr.set_field(this, "valueX", jr.as_i(jr.add(l_label_width, jr.get_field(this, "labelX"))))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m8__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_y] = jargs
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(l_graphics, "drawString_4", [jr.get_field(this, "LABEL"), jr.get_field(this, "labelX"), l_y, jr.JInt(0)])
        jr.call(l_graphics, "drawString_4", [jr.get_field(this, "value"), jr.get_field(this, "valueX"), l_y, jr.JInt(0)])
    jr.JNull
}

fn c1_m9__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
        jr.set_field(this, "value", l_value)
    jr.JNull
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        "KeyValueDrawString",
        "org.allbinary.graphics.draw.KeyValueDrawString",
        "Object",
        ["UpdateMyFontInterface"],
        False,
        [#("myFontProcessor", jr.JNull), #("LABEL", jr.JNull), #("labelX", jr.JInt(0)), #("valueX", jr.JInt(0)), #("value", jr.JNull)],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m7__updatemeasurement), 
            jr.Method("paint_2", ["Graphics", "int"], False, c1_m8__paint), 
            jr.Method("update_1", ["String"], False, c1_m9__update), 
            jr.Method("jinit_2", ["String", "int"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}


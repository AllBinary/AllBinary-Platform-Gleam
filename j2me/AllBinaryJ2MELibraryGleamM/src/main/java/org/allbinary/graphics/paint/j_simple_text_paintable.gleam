// Generated Code Do Not Modify
// package org.allbinary.graphics.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SimpleTextPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "displayInfoSingleton", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.set_field(this, "topScoresWidth", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "fontHeight", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m10__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "topScoresWidth", jr.as_i(jr.shr(jr.call(l_font, "stringWidth_1", [jr.get_field(this, "text")]), jr.JInt(1))))
        jr.set_field(this, "fontHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m11__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        let l_width = jr.as_i(jr.aget(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLast_0", []), jr.get_field(jr.get_field(this, "displayInfoSingleton"), "WIDTH")))
        jr.call(l_graphics, "setColor_1", [jr.call(jr.call(this, "getBasicColorP_0", []), "intValue_0", [])])
        jr.call(l_graphics, "drawString_4", [jr.get_field(this, "text"), jr.sub(jr.shr(l_width, jr.JInt(1)), jr.get_field(this, "topScoresWidth")), jr.get_field(this, "fontHeight"), jr.get_field(this, "anchor")])
    jr.JNull
}

fn c1_m12__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
    jr.JNull
}

fn c1_m13__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_m14__settext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text] = jargs
        jr.set_field(this, "text", l_text)
        jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m15__gettext(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "text")
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text, l_basic_color] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "text", l_text)
        jr.set_field(this, "basicColor", l_basic_color)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SimpleTextPaintable",
        "org.allbinary.graphics.paint.SimpleTextPaintable",
        "Paintable",
        ["UpdateMyFontInterface"],
        False,
        [#("displayInfoSingleton", jr.JNull), #("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull), #("text", jr.JNull), #("basicColor", jr.JNull), #("topScoresWidth", jr.JInt(0)), #("fontHeight", jr.JInt(0)), #("anchor", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m10__updatemeasurement), 
            jr.Method("paint_1", ["Graphics"], False, c1_m11__paint), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m12__setbasiccolorp), 
            jr.Method("getBasicColorP_0", [], False, c1_m13__getbasiccolorp), 
            jr.Method("setText_1", ["String"], False, c1_m14__settext), 
            jr.Method("getText_0", [], False, c1_m15__gettext), 
            jr.Method("jinit_2", ["String", "BasicColor"], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}


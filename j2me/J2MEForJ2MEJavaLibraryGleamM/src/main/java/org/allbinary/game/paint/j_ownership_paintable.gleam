// Generated Code Do Not Modify
// package org.allbinary.game.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OwnershipPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "displayInfo", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "COPYRIGHT", jr.JStr("AllBinary Copyright (c) 2011"))
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"))
    jr.set_field(this, "color", jr.as_i(jr.call(jr.get_field(this, "basicColor"), "intValue_0", [])))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("OwnershipPaintable", [])
}

fn c1_m12__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "COPYRIGHT_Y", jr.as_i(jr.mul(jr.JInt(2), jr.call(l_font, "getHeight_0", []))))
        jr.set_field(this, "beginWidth", jr.as_i(jr.shr(jr.call(l_font, "stringWidth_1", [jr.get_field(this, "COPYRIGHT")]), jr.JInt(1))))
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m13__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
        jr.set_field(this, "color", jr.as_i(jr.call(l_basic_color, "intValue_0", [])))
    jr.JNull
}

fn c1_m14__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_m15__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        jr.call(l_graphics, "setColor_1", [jr.get_field(this, "color")])
        let l_half_width = jr.as_i(jr.call(jr.get_field(this, "displayInfo"), "getLastHalfWidth_0", []))
        let l_height = jr.as_i(jr.call(jr.get_field(this, "displayInfo"), "getLastHeight_0", []))
        jr.call(l_graphics, "drawString_4", [jr.get_field(this, "COPYRIGHT"), jr.sub(l_half_width, jr.get_field(this, "beginWidth")), jr.sub(l_height, jr.get_field(this, "COPYRIGHT_Y")), jr.get_field(this, "anchor")])
    jr.JNull
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OwnershipPaintable",
        "org.allbinary.game.paint.OwnershipPaintable",
        "Paintable",
        ["UpdateMyFontInterface"],
        False,
        [#("logUtil", jr.JNull), #("displayInfo", jr.JNull), #("myFontProcessor", jr.JNull), #("COPYRIGHT", jr.JNull), #("basicColor", jr.JNull), #("color", jr.JInt(0)), #("anchor", jr.JInt(0)), #("COPYRIGHT_Y", jr.JInt(0)), #("beginWidth", jr.JInt(0))],
        [],
        [
            jr.Method("getInstance_0", [], True, c1_m1__getinstance), 
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m12__updatemeasurement), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m13__setbasiccolorp), 
            jr.Method("getBasicColorP_0", [], False, c1_m14__getbasiccolorp), 
            jr.Method("paint_1", ["Graphics"], False, c1_m15__paint), 
            jr.Method("jinit_0", [], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}


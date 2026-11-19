// Generated Code Do Not Modify
// package org.allbinary.game.paint.help
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HelpPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "displayInfo", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.set_field(this, "inputInfo", jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", []))
    jr.set_field(this, "beginWidthArray", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m12__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "titleBeginWidth", jr.as_i(jr.shr(jr.call(l_font, "stringWidth_1", [jr.get_field(this, "title")]), jr.JInt(1))))
        jr.set_field(this, "charHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "inputInfo")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "beginWidthArray"), jr.get(l_index), jr.as_i(jr.shr(jr.call(l_font, "stringWidth_1", [jr.aget(jr.get_field(this, "inputInfo"), jr.get(l_index))]), jr.JInt(1))))
            Nil
        })
            Nil
        }
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m13__setinputinfop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_info] = jargs
        jr.set_field(this, "inputInfo", l_input_info)
        jr.set_field(this, "beginWidthArray", jr.new_array("I", 1, [jr.alen(jr.get_field(this, "inputInfo"))]))
        jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.JNull
}

fn c1_m14__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        let l_half_width = jr.as_i(jr.call(jr.get_field(this, "displayInfo"), "getLastHalfWidth_0", []))
        jr.call(l_graphics, "setColor_1", [jr.call(jr.get_field(this, "basicColor"), "intValue_0", [])])
        jr.call(l_graphics, "drawString_4", [jr.get_field(this, "title"), jr.sub(l_half_width, jr.get_field(this, "titleBeginWidth")), jr.get_field(this, "charHeight"), jr.get_field(this, "anchor")])
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "inputInfo")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_graphics, "drawString_4", [jr.aget(jr.get_field(this, "inputInfo"), jr.get(l_index)), jr.sub(l_half_width, jr.aget(jr.get_field(this, "beginWidthArray"), jr.get(l_index))), jr.mul(jr.add(jr.get(l_index), jr.JInt(3)), jr.get_field(this, "charHeight")), jr.get_field(this, "anchor")])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_title, l_background_basic_color, l_basic_color] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "title", l_title)
        jr.set_field(this, "basicColor", l_basic_color)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HelpPaintable",
        "org.allbinary.game.paint.help.HelpPaintable",
        "Paintable",
        ["UpdateMyFontInterface"],
        False,
        [#("displayInfo", jr.JNull), #("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull), #("anchor", jr.JInt(0)), #("title", jr.JNull), #("inputInfo", jr.JNull), #("basicColor", jr.JNull), #("titleBeginWidth", jr.JInt(0)), #("beginWidthArray", jr.JNull), #("charHeight", jr.JInt(0))],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m12__updatemeasurement), 
            jr.Method("setInputInfoP_1", ["StringArr"], False, c1_m13__setinputinfop), 
            jr.Method("paint_1", ["Graphics"], False, c1_m14__paint), 
            jr.Method("jinit_3", ["String", "BasicColor", "BasicColor"], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}


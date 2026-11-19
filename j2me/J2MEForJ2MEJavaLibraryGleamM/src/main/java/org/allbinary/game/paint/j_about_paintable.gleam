// Generated Code Do Not Modify
// package org.allbinary.game.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AboutPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "displayInfoSingleton", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.set_field(this, "ABOUT", jr.get_field(jr.call_static("CanvasStrings", "getInstance_0", []), "ABOUT"))
    jr.set_field(this, "paintableArray", jr.array_of("L", [this]))
    jr.set_field(this, "myFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_info, l_developers] = jargs
    jr.new("AboutPaintable", [l_info, l_developers])
}

fn c1_m14__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        let l_font = jr.call(l_graphics, "getFont_0", [])
        jr.set_field(this, "charHeight", jr.as_i(jr.call(l_font, "getHeight_0", [])))
        jr.set_field(this, "aboutBeginWidth", jr.as_i(jr.shr(jr.call(l_font, "stringWidth_1", [jr.get_field(this, "ABOUT")]), jr.JInt(1))))
        let l_info_size = jr.as_i(jr.alen(jr.get_field(this, "info")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_info_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "infoBeginWidth"), jr.get(l_index), jr.as_i(jr.shr(jr.call(l_font, "stringWidth_1", [jr.aget(jr.get_field(this, "info"), jr.get(l_index))]), jr.JInt(1))))
            Nil
        })
            Nil
        }
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "developers")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "developersBeginWidth"), jr.get(l_index), jr.as_i(jr.shr(jr.call(l_font, "stringWidth_1", [jr.aget(jr.get_field(this, "developers"), jr.get(l_index))]), jr.JInt(1))))
            Nil
        })
            Nil
        }
        jr.set_field(this, "myFontProcessor", jr.call_static("MyFontProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_m15__getpaintablearrayinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "paintableArray")
}

fn c1_m16__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "myFontProcessor"), "process_1", [l_graphics])
        let l_half_width = jr.as_i(jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHalfWidth_0", []))
        jr.call(l_graphics, "drawString_4", [jr.get_field(this, "ABOUT"), jr.sub(l_half_width, jr.get_field(this, "aboutBeginWidth")), jr.mul(jr.JInt(2), jr.get_field(this, "charHeight")), jr.get_field(this, "anchor")])
        let l_info_size = jr.as_i(jr.alen(jr.get_field(this, "info")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_info_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_graphics, "drawString_4", [jr.aget(jr.get_field(this, "info"), jr.get(l_index)), jr.sub(l_half_width, jr.aget(jr.get_field(this, "infoBeginWidth"), jr.get(l_index))), jr.mul(jr.add(jr.JInt(4), jr.get(l_index)), jr.get_field(this, "charHeight")), jr.get_field(this, "anchor")])
            Nil
        })
            Nil
        }
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "developers")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_graphics, "drawString_4", [jr.aget(jr.get_field(this, "developers"), jr.get(l_index)), jr.sub(l_half_width, jr.aget(jr.get_field(this, "developersBeginWidth"), jr.get(l_index))), jr.mul(jr.add(jr.add(jr.JInt(5), l_info_size), jr.get(l_index)), jr.get_field(this, "charHeight")), jr.get_field(this, "anchor")])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit13(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_info, l_developers] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "info", l_info)
        jr.set_field(this, "infoBeginWidth", jr.new_array("I", 1, [jr.alen(jr.get_field(this, "info"))]))
        jr.set_field(this, "developers", l_developers)
        jr.set_field(this, "developersBeginWidth", jr.new_array("I", 1, [jr.alen(jr.get_field(this, "developers"))]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AboutPaintable",
        "org.allbinary.game.paint.AboutPaintable",
        "Paintable",
        ["UpdateMyFontInterface"],
        False,
        [#("displayInfoSingleton", jr.JNull), #("ABOUT", jr.JNull), #("info", jr.JNull), #("developers", jr.JNull), #("paintableArray", jr.JNull), #("myFontProcessor", jr.JNull), #("charHeight", jr.JInt(0)), #("aboutBeginWidth", jr.JInt(0)), #("infoBeginWidth", jr.JNull), #("developersBeginWidth", jr.JNull), #("anchor", jr.JInt(0))],
        [],
        [
            jr.Method("getInstance_2", ["StringArr", "StringArr"], True, c1_m1__getinstance), 
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m14__updatemeasurement), 
            jr.Method("getPaintableArrayInstance_0", [], False, c1_m15__getpaintablearrayinstance), 
            jr.Method("paint_1", ["Graphics"], False, c1_m16__paint), 
            jr.Method("jinit_2", ["StringArr", "StringArr"], False, c1_jinit13)],
        c1_jfields,
        c1_jclinit,
    )
}


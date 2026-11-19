// Generated Code Do Not Modify
// package org.allbinary.game.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ColorFillPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "displayInfoSingleton", jr.call_static("DisplayInfoSingleton", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(l_graphics, "setColor_1", [jr.get_inherited(this, "ColorFillPaintable", "colorP")])
        jr.call(l_graphics, "fillRect_4", [jr.JInt(0), jr.JInt(0), jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastWidth_0", []), jr.call(jr.get_field(this, "displayInfoSingleton"), "getLastHeight_0", [])])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.super_init("ColorFillBasePaintable", this, [l_basic_color])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ColorFillPaintable",
        "org.allbinary.game.paint.ColorFillPaintable",
        "ColorFillBasePaintable",
        [],
        False,
        [#("displayInfoSingleton", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m3__paint), 
            jr.Method("jinit_1", ["BasicColor"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


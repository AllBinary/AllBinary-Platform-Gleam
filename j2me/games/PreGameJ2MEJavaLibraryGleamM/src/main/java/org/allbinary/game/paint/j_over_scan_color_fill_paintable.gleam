// Generated Code Do Not Modify
// package org.allbinary.game.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OverScanColorFillPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(l_graphics, "setColor_1", [jr.get_inherited(this, "OverScanColorFillPaintable", "colorP")])
        jr.call(l_graphics, "fillRect_4", [jr.neg(jr.call(l_graphics, "getClipX_0", [])), jr.neg(jr.call(l_graphics, "getClipY_0", [])), jr.add(jr.call(jr.get_inherited(this, "OverScanColorFillPaintable", "displayInfoSingleton"), "getLastWidth_0", []), jr.mul(jr.call(l_graphics, "getClipX_0", []), jr.JInt(2))), jr.add(jr.call(jr.get_inherited(this, "OverScanColorFillPaintable", "displayInfoSingleton"), "getLastHeight_0", []), jr.mul(jr.call(l_graphics, "getClipY_0", []), jr.JInt(2)))])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.super_init("ColorFillPaintable", this, [l_basic_color])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OverScanColorFillPaintable",
        "org.allbinary.game.paint.OverScanColorFillPaintable",
        "ColorFillPaintable",
        [],
        False,
        [],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m2__paint), 
            jr.Method("jinit_1", ["BasicColor"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


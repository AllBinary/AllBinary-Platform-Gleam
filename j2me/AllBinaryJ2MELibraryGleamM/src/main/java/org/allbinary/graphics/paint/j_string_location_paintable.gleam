// Generated Code Do Not Modify
// package org.allbinary.graphics.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StringLocationPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(l_graphics, "drawString_4", [jr.get_field(this, "value"), l_x, l_y, jr.JInt(0)])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    jr.super_init("LocationPaintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "value", l_value)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StringLocationPaintable",
        "org.allbinary.graphics.paint.StringLocationPaintable",
        "LocationPaintable",
        [],
        False,
        [#("value", jr.JNull)],
        [],
        [
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m3__paintxy), 
            jr.Method("jinit_1", ["String"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


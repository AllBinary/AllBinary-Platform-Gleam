// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ItemPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_current_index, l_x, l_y] = jargs
    let l_current_index = jr.as_i(l_current_index)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ItemPaintable",
        "org.allbinary.graphics.form.ItemPaintable",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("paint_4", ["Graphics", "int", "int", "int"], False, c1_m1__paint), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


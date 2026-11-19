// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MultipleScrollSelectionFormVerticalPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_index, l_item, l_dx, l_dy] = jargs
    let l_index = jr.as_i(l_index)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.as_i(jr.call(jr.get_field(this, "multipleScrollSelectionForm"), "paintVertical_5", [l_graphics, l_index, l_item, l_dx, l_dy]))
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_multiple_scroll_selection_form] = jargs
    jr.super_init("ItemIndexPaintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "multipleScrollSelectionForm", l_multiple_scroll_selection_form)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MultipleScrollSelectionFormVerticalPaintable",
        "org.allbinary.graphics.form.MultipleScrollSelectionFormVerticalPaintable",
        "ItemIndexPaintable",
        [],
        False,
        [#("multipleScrollSelectionForm", jr.JNull)],
        [],
        [
            jr.Method("paint_5", ["Graphics", "int", "ABCustomItem", "int", "int"], False, c1_m3__paint), 
            jr.Method("jinit_1", ["MultipleScrollSelectionHorizontalForm"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


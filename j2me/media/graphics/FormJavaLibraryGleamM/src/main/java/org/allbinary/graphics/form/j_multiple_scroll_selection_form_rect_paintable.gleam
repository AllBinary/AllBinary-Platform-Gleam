// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MultipleScrollSelectionFormRectPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "multipleScrollSelectionForm"), "fillRect_1", [l_graphics])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_multiple_scroll_selection_form] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "multipleScrollSelectionForm", l_multiple_scroll_selection_form)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MultipleScrollSelectionFormRectPaintable",
        "org.allbinary.graphics.form.MultipleScrollSelectionFormRectPaintable",
        "Paintable",
        [],
        False,
        [#("multipleScrollSelectionForm", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m3__paint), 
            jr.Method("jinit_1", ["MultipleScrollSelectionHorizontalForm"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


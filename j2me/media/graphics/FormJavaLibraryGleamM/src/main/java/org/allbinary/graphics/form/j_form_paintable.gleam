// Generated Code Do Not Modify
// package org.allbinary.graphics.form
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FormPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "form"), "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m4__getform(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "form")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_form] = jargs
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "form", l_form)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FormPaintable",
        "org.allbinary.graphics.form.FormPaintable",
        "Paintable",
        [],
        False,
        [#("form", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m3__paint), 
            jr.Method("getForm_0", [], False, c1_m4__getform), 
            jr.Method("jinit_1", ["PaintableForm"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABCustomImageItem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "yOffset", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullImage", "NULL_IMAGE")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label, l_image, l_layout, l_alt_text, l_basic_color, l_y_offset] = jargs
    let l_layout = jr.as_i(l_layout)
    let l_y_offset = jr.as_i(l_y_offset)
        jr.super_init("ABCustomItem", this, [l_label, l_basic_color, l_basic_color])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABCustomImageItem",
        "org.allbinary.graphics.form.item.ABCustomImageItem",
        "ABCustomItem",
        [],
        False,
        [#("yOffset", jr.JInt(0))],
        [],
        [
            jr.Method("getImage_0", [], False, c1_m3__getimage), 
            jr.Method("jinit_6", ["String", "Image", "int", "String", "BasicColor", "int"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABTextItem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__keypressed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key_code] = jargs
    let l_key_code = jr.as_i(l_key_code)
    jr.JNull
}

fn c1_m3__paintunselected(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_m4__getlabelstringcomponent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ABStringComponent", "NULL_STRING_COMPONENT")
}

fn c1_m5__getminimumwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_super("CustomCustomItem", this, "getMinimumWidth_0", []))
}

fn c1_m6__getminimumheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_super("CustomCustomItem", this, "getMinimumHeight_0", []))
}

fn c1_m7__getlabel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_super("CustomCustomItem", this, "getLabel_0", [])
}

fn c1_m8__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call_super("CustomCustomItem", this, "paintXY_3", [l_graphics, l_x, l_y])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label, l_layout, l_alt_text, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_layout = jr.as_i(l_layout)
        jr.super_init("CustomCustomItem", this, [l_label, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABTextItem",
        "org.allbinary.graphics.form.item.ABTextItem",
        "CustomCustomItem",
        ["ABCustomItemInterface"],
        False,
        [],
        [],
        [
            jr.Method("keyPressed_1", ["int"], False, c1_m2__keypressed), 
            jr.Method("paintUnselected_3", ["Graphics", "int", "int"], False, c1_m3__paintunselected), 
            jr.Method("getLabelStringComponent_0", [], False, c1_m4__getlabelstringcomponent), 
            jr.Method("getMinimumWidth_0", [], False, c1_m5__getminimumwidth), 
            jr.Method("getMinimumHeight_0", [], False, c1_m6__getminimumheight), 
            jr.Method("getLabel_0", [], False, c1_m7__getlabel), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m8__paintxy), 
            jr.Method("jinit_5", ["String", "int", "String", "BasicColor", "BasicColor"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


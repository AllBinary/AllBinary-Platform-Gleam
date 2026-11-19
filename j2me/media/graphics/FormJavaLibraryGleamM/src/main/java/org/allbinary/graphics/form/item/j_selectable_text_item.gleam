// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SelectableTextItem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__isfocusable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_m3__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_inherited(this, "SelectableTextItem", "myFontProcessor"), "process_1", [l_graphics])
        let l_string_component = jr.call_inherited(this, "SelectableTextItem", "getLabelStringComponent_0", [])
        case jr.truth(jr.ne(l_string_component, jr.JNull)) {
            True -> {
            jr.call(l_graphics, "setColor_1", [jr.call(jr.call(l_string_component, "getForegroundBasicColor_0", []), "intValue_0", [])])
            Nil
        }
            False -> Nil
        }
        jr.call(l_graphics, "drawString_4", [jr.call_inherited(this, "SelectableTextItem", "getLabel_0", []), jr.add(l_x, jr.JInt(2)), l_y, jr.JInt(0)])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label, l_layout, l_alt_text, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_layout = jr.as_i(l_layout)
        jr.super_init("ABTextItem", this, [l_label, l_layout, l_alt_text, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SelectableTextItem",
        "org.allbinary.graphics.form.item.SelectableTextItem",
        "ABTextItem",
        [],
        False,
        [],
        [],
        [
            jr.Method("isFocusable_0", [], False, c1_m2__isfocusable), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m3__paintxy), 
            jr.Method("jinit_5", ["String", "int", "String", "BasicColor", "BasicColor"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


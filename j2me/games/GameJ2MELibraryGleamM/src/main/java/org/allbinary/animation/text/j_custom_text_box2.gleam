// Generated Code Do Not Modify
// package org.allbinary.animation.text
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomTextBox2

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cmd_listener, l_label, l_text, l_max_size, l_constraints, l_font, l_background_basic_color, l_foreground_basic_color] = jargs
    let l_max_size = jr.as_i(l_max_size)
    let l_constraints = jr.as_i(l_constraints)
        jr.super_init("CustomTextBox", this, [l_cmd_listener, l_label, l_text, l_max_size, l_constraints, l_font, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
        jr.call(jr.call_inherited(this, "CustomTextBox2", "getTextFieldItem_0", []), "setFocus_1", [jr.JBool(True)])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomTextBox2",
        "org.allbinary.animation.text.CustomTextBox2",
        "CustomTextBox",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_8", ["CommandListener", "String", "String", "int", "int", "Font", "BasicColor", "BasicColor"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


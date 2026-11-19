// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item.validation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PasswordValidator

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_text_field_item, l_min, l_max, l_allow_on_empty] = jargs
    let l_min = jr.as_i(l_min)
    let l_max = jr.as_i(l_max)
        jr.super_init("TextFieldItemValidator", this, [l_text_field_item, l_min, l_max, l_allow_on_empty])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PasswordValidator",
        "org.allbinary.graphics.form.item.validation.PasswordValidator",
        "TextFieldItemValidator",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_4", ["ABTextFieldItem", "int", "int", "boolean"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


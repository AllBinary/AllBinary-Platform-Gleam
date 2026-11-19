// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CustomCustomItem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "updateMyFontProcessor", jr.new("UpdateMyFontProcessor", [this]))
    jr.set_field(this, "myFontProcessor", jr.get_field(this, "updateMyFontProcessor"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__updatemeasurement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_label, l_background_basic_color, l_foreground_basic_color] = jargs
        jr.super_init("ABCustomItem", this, [l_label, l_background_basic_color, l_foreground_basic_color])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CustomCustomItem",
        "org.allbinary.graphics.form.item.CustomCustomItem",
        "ABCustomItem",
        ["UpdateMyFontInterface"],
        False,
        [#("updateMyFontProcessor", jr.JNull), #("myFontProcessor", jr.JNull)],
        [],
        [
            jr.Method("updateMeasurement_1", ["Graphics"], False, c1_m4__updatemeasurement), 
            jr.Method("jinit_3", ["String", "BasicColor", "BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


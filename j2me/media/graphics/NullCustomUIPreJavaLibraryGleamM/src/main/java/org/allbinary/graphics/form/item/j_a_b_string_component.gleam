// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ABStringComponent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ABStringComponent", "NULL_STRING_COMPONENT", jr.new("ABStringComponent", [jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")]))
    jr.JNull
}

fn c1_m2__getbackgroundbasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")
}

fn c1_m4__getforegroundbasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE")
}

fn c1_m5__setforegroundbasiccolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_foreground_basic_color] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_background_basic_color, l_foreground_basic_color] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ABStringComponent",
        "org.allbinary.graphics.form.item.ABStringComponent",
        "Object",
        [],
        False,
        [],
        [#("NULL_STRING_COMPONENT", jr.JNull)],
        [
            jr.Method("getBackgroundBasicColor_0", [], False, c1_m2__getbackgroundbasiccolor), 
            jr.Method("getForegroundBasicColor_0", [], False, c1_m4__getforegroundbasiccolor), 
            jr.Method("setForegroundBasicColor_1", ["BasicColor"], False, c1_m5__setforegroundbasiccolor), 
            jr.Method("jinit_2", ["BasicColor", "BasicColor"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


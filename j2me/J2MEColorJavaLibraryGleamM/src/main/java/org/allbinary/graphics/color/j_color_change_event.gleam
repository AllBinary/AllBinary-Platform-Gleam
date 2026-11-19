// Generated Code Do Not Modify
// package org.allbinary.graphics.color
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ColorChangeEvent

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
    jr.JNull
}

fn c1_m4__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.super_init("AllBinaryEventObject", this, [l_any_type])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ColorChangeEvent",
        "org.allbinary.graphics.color.ColorChangeEvent",
        "AllBinaryEventObject",
        [],
        False,
        [#("basicColor", jr.JNull)],
        [],
        [
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m3__setbasiccolorp), 
            jr.Method("getBasicColorP_0", [], False, c1_m4__getbasiccolorp), 
            jr.Method("jinit_1", ["Object"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


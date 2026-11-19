// Generated Code Do Not Modify
// package org.allbinary.graphics.font
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FontDebugFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FontDebugFactory", "instance", jr.new("FontDebugFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FontDebugFactory", "instance")
}

fn c1_m3__setfont(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_font, l_graphics] = jargs
        jr.call(l_graphics, "setFont_1", [l_font])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FontDebugFactory",
        "org.allbinary.graphics.font.FontDebugFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setFont_2", ["Font", "Graphics"], False, c1_m3__setfont), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


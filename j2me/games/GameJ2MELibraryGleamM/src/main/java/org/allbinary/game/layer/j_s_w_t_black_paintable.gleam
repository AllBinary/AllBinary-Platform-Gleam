// Generated Code Do Not Modify
// package org.allbinary.game.layer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SWTBlackPaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "basicSetColorUtil", jr.call_static("BasicColorSetUtil", "getInstance_0", []))
    jr.set_field(this, "BLACK", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "basicSetColorUtil"), "setBasicColorP_2", [l_graphics, jr.get_field(this, "BLACK")])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SWTBlackPaintable",
        "org.allbinary.game.layer.SWTBlackPaintable",
        "Paintable",
        [],
        False,
        [#("basicSetColorUtil", jr.JNull), #("BLACK", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m3__paint), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


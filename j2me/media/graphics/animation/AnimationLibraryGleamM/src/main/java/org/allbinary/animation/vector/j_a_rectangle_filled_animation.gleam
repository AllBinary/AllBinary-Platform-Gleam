// Generated Code Do Not Modify
// package org.allbinary.animation.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ARectangleFilledAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_unused_x, l_unused_y] = jargs
    let l_unused_x = jr.as_i(l_unused_x)
    let l_unused_y = jr.as_i(l_unused_y)
        jr.call_super("RectangleFilledAnimation", this, "paintXY_3", [l_graphics, jr.get_field(this, "x"), jr.get_field(this, "y")])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("RectangleFilledAnimation", this, [jr.JInt(0), jr.JInt(0), jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "BLACK")])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ARectangleFilledAnimation",
        "org.allbinary.animation.vector.ARectangleFilledAnimation",
        "RectangleFilledAnimation",
        [],
        False,
        [#("x", jr.JInt(0)), #("y", jr.JInt(0))],
        [],
        [
            jr.Method("nextFrame_0", [], False, c1_m4__nextframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m5__paintxy), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


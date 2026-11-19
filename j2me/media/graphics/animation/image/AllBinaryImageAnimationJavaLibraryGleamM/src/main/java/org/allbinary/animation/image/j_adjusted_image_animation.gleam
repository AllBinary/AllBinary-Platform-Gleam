// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AdjustedImageAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx, l_dy] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.call(this, "setDx_1", [l_dx])
        jr.call(this, "setDy_1", [l_dy])
    jr.JNull
}

fn c1_m5__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call_super("ImageAnimation", this, "paintXY_3", [l_graphics, jr.add(l_x, jr.get_field(this, "dx")), jr.add(l_y, jr.get_field(this, "dy"))])
    jr.JNull
}

fn c1_m6__setdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx] = jargs
    let l_dx = jr.as_i(l_dx)
        jr.set_field(this, "dx", jr.as_i(l_dx))
    jr.JNull
}

fn c1_m7__getdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "dx"))
}

fn c1_m8__setdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dy] = jargs
    let l_dy = jr.as_i(l_dy)
        jr.set_field(this, "dy", jr.as_i(l_dy))
    jr.JNull
}

fn c1_m9__getdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "dy"))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_dx, l_dy, l_animation_behavior] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.super_init("ImageAnimation", this, [l_image, l_animation_behavior])
        c1_jfields(this)
        jr.call(this, "init_2", [l_dx, l_dy])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AdjustedImageAnimation",
        "org.allbinary.animation.image.AdjustedImageAnimation",
        "ImageAnimation",
        [],
        False,
        [#("dx", jr.JInt(0)), #("dy", jr.JInt(0))],
        [],
        [
            jr.Method("init_2", ["int", "int"], False, c1_m4__init), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m5__paintxy), 
            jr.Method("setDx_1", ["int"], False, c1_m6__setdx), 
            jr.Method("getDx_0", [], False, c1_m7__getdx), 
            jr.Method("setDy_1", ["int"], False, c1_m8__setdy), 
            jr.Method("getDy_0", [], False, c1_m9__getdy), 
            jr.Method("jinit_4", ["Image", "int", "int", "AnimationBehavior"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


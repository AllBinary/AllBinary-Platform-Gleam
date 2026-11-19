// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AdjustedVectorAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call_super("VectorAnimation", this, "paintXY_3", [l_graphics, jr.add(l_x, jr.get_field(this, "dx")), jr.add(l_y, jr.get_field(this, "dy"))])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_points, l_basic_color, l_dx, l_dy, l_animation_behavior] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.super_init("VectorAnimation", this, [l_current_points, l_basic_color, l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "dx", jr.as_i(l_dx))
        jr.set_field(this, "dy", jr.as_i(l_dy))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AdjustedVectorAnimation",
        "org.allbinary.animation.AdjustedVectorAnimation",
        "VectorAnimation",
        [],
        False,
        [#("dx", jr.JInt(0)), #("dy", jr.JInt(0))],
        [],
        [
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m4__paintxy), 
            jr.Method("jinit_5", ["intArrArrArr", "BasicColor", "int", "int", "AnimationBehavior"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ColorLessVectorAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call_inherited(this, "ColorLessVectorAnimation", "paintVectors_3", [l_graphics, l_x, l_y])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_points, l_animation_behavior] = jargs
        jr.super_init("VectorAnimation", this, [l_current_points, jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"), l_animation_behavior])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ColorLessVectorAnimation",
        "org.allbinary.animation.ColorLessVectorAnimation",
        "VectorAnimation",
        [],
        False,
        [],
        [],
        [
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m2__paintxy), 
            jr.Method("jinit_2", ["intArrArrArr", "AnimationBehavior"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.animation.caption
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CaptionAnimationHelperBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CaptionAnimationHelperBase", "INSTANCE", jr.new("CaptionAnimationHelperBase", []))
    jr.JNull
}

fn c1_m2__isshowing(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m3__tick(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_message, l_basic_color] = jargs
    jr.JNull
}

fn c1_m5__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Animation", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CaptionAnimationHelperBase",
        "org.allbinary.animation.caption.CaptionAnimationHelperBase",
        "Animation",
        [],
        False,
        [],
        [#("INSTANCE", jr.JNull)],
        [
            jr.Method("isShowing_0", [], False, c1_m2__isshowing), 
            jr.Method("tick_0", [], False, c1_m3__tick), 
            jr.Method("update_2", ["String", "BasicColor"], False, c1_m4__update), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m5__paintxy), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


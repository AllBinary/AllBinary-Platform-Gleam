// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullIndexedAnimationInner

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
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("NullIndexedAnimation", this, [jr.new("IndexedAnimationBehavior", [jr.JInt(1), jr.JInt(250)])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullIndexedAnimationInner",
        "org.allbinary.animation.NullIndexedAnimationInner",
        "NullIndexedAnimation",
        [],
        False,
        [],
        [],
        [
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m2__paintxy), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


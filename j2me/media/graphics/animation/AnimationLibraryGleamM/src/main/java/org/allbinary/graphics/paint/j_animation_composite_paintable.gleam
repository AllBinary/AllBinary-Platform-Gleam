// Generated Code Do Not Modify
// package org.allbinary.graphics.paint
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnimationCompositePaintable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, jr.JInt(0), jr.JInt(0)])
    jr.JNull
}

fn c1_m4__paintthreed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics] = jargs
        jr.call(jr.get_field(this, "animationInterface"), "paintThreedXYZ_4", [l_graphics, jr.JInt(0), jr.JInt(0), jr.JInt(0)])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.super_init("InitUpdatePaintable", this, [])
    c1_jfields(this)
        jr.set_field(this, "animationInterface", l_animation_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnimationCompositePaintable",
        "org.allbinary.graphics.paint.AnimationCompositePaintable",
        "InitUpdatePaintable",
        [],
        False,
        [#("animationInterface", jr.JNull)],
        [],
        [
            jr.Method("paint_1", ["Graphics"], False, c1_m3__paint), 
            jr.Method("paintThreed_1", ["Graphics"], False, c1_m4__paintthreed), 
            jr.Method("jinit_1", ["Animation"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


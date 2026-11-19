// Generated Code Do Not Modify
// package org.allbinary.animation.caption
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CaptionAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m8__nextframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "animationInterface"), "paintXY_3", [l_graphics, jr.add(l_x, jr.get_field(this, "captionDx")), jr.add(l_y, jr.get_field(this, "captionDy"))])
        jr.call(jr.get_field(this, "overlayAnimationInterface"), "paintXY_3", [l_graphics, jr.add(jr.add(l_x, jr.get_field(this, "captionDx")), jr.get_field(this, "dx")), jr.add(jr.add(l_y, jr.get_field(this, "captionDy")), jr.get_field(this, "dy"))])
    jr.JNull
}

fn c1_m10__paintthreedxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.call(jr.get_field(this, "animationInterface"), "paintThreedXYZ_4", [l_graphics, jr.add(l_x, jr.get_field(this, "captionDx")), jr.add(l_y, jr.get_field(this, "captionDy")), l_z])
        jr.call(jr.get_field(this, "overlayAnimationInterface"), "paintThreedXYZ_4", [l_graphics, jr.add(jr.add(l_x, jr.get_field(this, "captionDx")), jr.get_field(this, "dx")), jr.add(jr.add(l_y, jr.get_field(this, "captionDy")), jr.get_field(this, "dy")), l_z])
    jr.JNull
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_overlay_animation_interface, l_caption_dx, l_caption_dy, l_dx, l_dy] = jargs
    let l_caption_dx = jr.as_i(l_caption_dx)
    let l_caption_dy = jr.as_i(l_caption_dy)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.super_init("Animation", this, [])
    c1_jfields(this)
        jr.set_field(this, "animationInterface", l_animation_interface)
        jr.set_field(this, "overlayAnimationInterface", l_overlay_animation_interface)
        jr.set_field(this, "captionDx", jr.as_i(l_caption_dx))
        jr.set_field(this, "captionDy", jr.as_i(l_caption_dy))
        jr.set_field(this, "dx", jr.as_i(l_dx))
        jr.set_field(this, "dy", jr.as_i(l_dy))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CaptionAnimation",
        "org.allbinary.animation.caption.CaptionAnimation",
        "Animation",
        [],
        False,
        [#("animationInterface", jr.JNull), #("overlayAnimationInterface", jr.JNull), #("captionDx", jr.JInt(0)), #("captionDy", jr.JInt(0)), #("dx", jr.JInt(0)), #("dy", jr.JInt(0))],
        [],
        [
            jr.Method("nextFrame_0", [], False, c1_m8__nextframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m9__paintxy), 
            jr.Method("paintThreedXYZ_4", ["Graphics", "int", "int", "int"], False, c1_m10__paintthreedxyz), 
            jr.Method("jinit_6", ["Animation", "Animation", "int", "int", "int", "int"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.animation.image.sprite
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AdjustedSpriteIndexedAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__paintframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_frame, l_x, l_y] = jargs
    let l_frame = jr.as_i(l_frame)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call_inherited(this, "AdjustedSpriteIndexedAnimation", "setFrame_1", [l_frame])
        jr.call(jr.get_inherited(this, "AdjustedSpriteIndexedAnimation", "sprite"), "setPosition_2", [jr.add(l_x, jr.get_field(this, "dx")), jr.add(l_y, jr.get_field(this, "dy"))])
        jr.call_super("SpriteIndexedAnimation", this, "paint_1", [l_graphics])
    jr.JNull
}

fn c1_m5__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_g, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_inherited(this, "AdjustedSpriteIndexedAnimation", "sprite"), "setPosition_2", [jr.add(l_x, jr.get_field(this, "dx")), jr.add(l_y, jr.get_field(this, "dy"))])
        jr.call_super("SpriteIndexedAnimation", this, "paint_1", [l_g])
    jr.JNull
}

fn c1_m6__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_g] = jargs
        jr.call(jr.get_inherited(this, "AdjustedSpriteIndexedAnimation", "sprite"), "setPosition_2", [jr.get_field(this, "dx"), jr.get_field(this, "dy")])
        jr.call_super("SpriteIndexedAnimation", this, "paint_1", [l_g])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sprite, l_image, l_basic_color_array, l_dx, l_dy, l_animation_behavior] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.super_init("SpriteIndexedAnimation", this, [l_sprite, l_image, l_basic_color_array, l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "dx", jr.as_i(l_dx))
        jr.set_field(this, "dy", jr.as_i(l_dy))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AdjustedSpriteIndexedAnimation",
        "org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation",
        "SpriteIndexedAnimation",
        [],
        False,
        [#("dx", jr.JInt(0)), #("dy", jr.JInt(0))],
        [],
        [
            jr.Method("paintFrame_4", ["Graphics", "int", "int", "int"], False, c1_m4__paintframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m5__paintxy), 
            jr.Method("paint_1", ["Graphics"], False, c1_m6__paint), 
            jr.Method("jinit_6", ["Sprite", "Image", "BasicColorArr", "int", "int", "AnimationBehavior"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


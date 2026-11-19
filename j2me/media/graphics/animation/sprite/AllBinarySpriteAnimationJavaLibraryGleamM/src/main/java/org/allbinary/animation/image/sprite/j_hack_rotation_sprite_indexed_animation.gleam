// Generated Code Do Not Modify
// package org.allbinary.animation.image.sprite
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class HackRotationSpriteIndexedAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(this, "getSize_0", []))
}

fn c1_m5__paintframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_g, l_frame, l_x, l_y] = jargs
    let l_frame = jr.as_i(l_frame)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(this, "setFrame_1", [l_frame])
        jr.call(this, "paintXY_3", [l_g, l_x, l_y])
    jr.JNull
}

fn c1_m6__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_g, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(jr.get_field(this, "sprite"), "setPosition_2", [l_x, l_y])
        jr.call(this, "paint_1", [l_g])
    jr.JNull
}

fn c1_m7__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_g] = jargs
        jr.call(jr.get_field(this, "sprite"), "paint_1", [l_g])
    jr.JNull
}

fn c1_m8__nextrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "sprite"), "nextFrame_0", [])
    jr.JNull
}

fn c1_m9__previousrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "sprite"), "prevFrame_0", [])
    jr.JNull
}

fn c1_m10__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "sprite"), "getRawFrameCount_0", []))
}

fn c1_m11__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_frame] = jargs
    let l_frame = jr.as_i(l_frame)
        jr.call(jr.get_field(this, "sprite"), "setFrame_1", [l_frame])
    jr.JNull
}

fn c1_m12__getframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "sprite"), "getFrame_0", []))
}

fn c1_m13__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m14__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sprite, l_image, l_angle_info, l_animation_behavior] = jargs
        jr.super_init("RotationAnimation", this, [l_angle_info, jr.call_static("CircularIndexUtil", "createInstance_1", [jr.div(jr.JInt(360), jr.to_i(jr.call(jr.call(l_angle_info, "getAngleIncrementInfo_0", []), "getAngleIncrement_0", [])))]), l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "sprite", l_sprite)
        jr.set_field(this, "image", l_image)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "HackRotationSpriteIndexedAnimation",
        "org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation",
        "RotationAnimation",
        [],
        False,
        [#("sprite", jr.JNull), #("image", jr.JNull)],
        [],
        [
            jr.Method("getAnimationSize_0", [], False, c1_m4__getanimationsize), 
            jr.Method("paintFrame_4", ["Graphics", "int", "int", "int"], False, c1_m5__paintframe), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m6__paintxy), 
            jr.Method("paint_1", ["Graphics"], False, c1_m7__paint), 
            jr.Method("nextRotation_0", [], False, c1_m8__nextrotation), 
            jr.Method("previousRotation_0", [], False, c1_m9__previousrotation), 
            jr.Method("getSize_0", [], False, c1_m10__getsize), 
            jr.Method("setFrame_1", ["int"], False, c1_m11__setframe), 
            jr.Method("getFrame_0", [], False, c1_m12__getframe), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m13__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m14__getsequence), 
            jr.Method("jinit_4", ["Sprite", "Image", "AngleInfo", "AnimationBehavior"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


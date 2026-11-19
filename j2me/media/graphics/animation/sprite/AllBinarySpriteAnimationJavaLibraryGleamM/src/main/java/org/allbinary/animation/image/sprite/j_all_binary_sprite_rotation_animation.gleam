// Generated Code Do Not Modify
// package org.allbinary.animation.image.sprite
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinarySpriteRotationAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__nextrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "sprite"), "nextFrame_0", [])
        jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "angleInfo"), "adjustAngle_1", [jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "sprite"), "getFrame_0", [])])
    jr.JNull
}

fn c1_m3__previousrotation(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "sprite"), "prevFrame_0", [])
        jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "angleInfo"), "adjustAngle_1", [jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "sprite"), "getFrame_0", [])])
    jr.JNull
}

fn c1_m4__setframebydirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_direction] = jargs
        let l_angle = jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "directionUtil"), "getFrameAngle_1", [l_direction])
        jr.call(this, "adjustFrameToAngle_1", [l_angle])
    jr.JNull
}

fn c1_m5__setframetoangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
        jr.call(this, "adjustFrameToAngle_1", [l_angle])
    jr.JNull
}

fn c1_m6__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "sprite"), "setFrame_1", [l_index])
        jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "angleInfo"), "adjustAngle_1", [jr.call_inherited(this, "AllBinarySpriteRotationAnimation", "getFrame_0", [])])
    jr.JNull
}

fn c1_m7__adjustframetoangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
        jr.call(this, "adjustFrame_1", [jr.call(l_angle, "getValue_0", [])])
    jr.JNull
}

fn c1_m8__adjustframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
    let l_angle = jr.as_s(l_angle)
        jr.call(this, "setFrame_1", [jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "frameUtil"), "getFrameForAngle_2", [l_angle, jr.to_i(jr.call(jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "angleInfo"), "getAngleIncrementInfo_0", []), "getAngleIncrement_0", []))])])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sprite, l_image, l_animation_behavior] = jargs
        jr.super_init("HackRotationSpriteIndexedAnimation", this, [l_sprite, l_image, jr.call_static("AngleInfo", "getInstance_1", [jr.to_s(jr.div(jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE")), jr.call(l_sprite, "getRawFrameCount_0", [])))]), l_animation_behavior])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "angleInfo"), "adjustAngle_1", [jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimation", "sprite"), "getFrame_0", [])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinarySpriteRotationAnimation",
        "org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation",
        "HackRotationSpriteIndexedAnimation",
        [],
        False,
        [],
        [],
        [
            jr.Method("nextRotation_0", [], False, c1_m2__nextrotation), 
            jr.Method("previousRotation_0", [], False, c1_m3__previousrotation), 
            jr.Method("setFrameByDirection_1", ["Direction"], False, c1_m4__setframebydirection), 
            jr.Method("setFrameToAngle_1", ["Angle"], False, c1_m5__setframetoangle), 
            jr.Method("setFrame_1", ["int"], False, c1_m6__setframe), 
            jr.Method("adjustFrameToAngle_1", ["Angle"], False, c1_m7__adjustframetoangle), 
            jr.Method("adjustFrame_1", ["short"], False, c1_m8__adjustframe), 
            jr.Method("jinit_3", ["Sprite", "Image", "AnimationBehavior"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


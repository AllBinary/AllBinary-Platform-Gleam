// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageArrayRotationAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_animation_behavior] = jargs
        let l_image_rotation_animation_info = l_any_type
    jr.new("ImageArrayRotationAnimation", [jr.call(l_image_rotation_animation_info, "getImageArray_0", []), jr.call(l_image_rotation_animation_info, "getAngleInfoP_0", []), jr.call(l_image_rotation_animation_info, "getTotalAngle_0", []), l_animation_behavior])
}

fn c1_m4__initimagearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array, l_angle_info, l_total_angle] = jargs
    let l_total_angle = jr.as_i(l_total_angle)
        jr.set_field(this, "expectedTotalFrames", jr.as_i(jr.div(l_total_angle, jr.to_i(jr.call(jr.call(jr.get_inherited(this, "ImageArrayRotationAnimation", "angleInfo"), "getAngleIncrementInfo_0", []), "getAngleIncrement_0", [])))))
        jr.call(jr.get_inherited(this, "ImageArrayRotationAnimation", "angleInfo"), "adjustAngle_1", [jr.JInt(0)])
        case jr.truth(jr.ne(jr.get_field(this, "expectedTotalFrames"), jr.call_inherited(this, "ImageArrayRotationAnimation", "getSize_0", []))) {
            True -> {
            jr.throw(jr.new("Exception", [jr.JStr("Wrong Number of Frames")]))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m5__setimagearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array] = jargs
        jr.call_super("ImageArrayBaseRotationAnimation", this, "setImageArray_1", [l_image_array])
        jr.call(jr.get_inherited(this, "ImageArrayRotationAnimation", "angleInfo"), "adjustAngle_1", [jr.JInt(0)])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array, l_angle_info, l_total_angle, l_animation_behavior] = jargs
    let l_total_angle = jr.as_i(l_total_angle)
        jr.super_init("ImageArrayBaseRotationAnimation", this, [l_image_array, l_angle_info, l_animation_behavior])
        c1_jfields(this)
        jr.call(this, "initImageArray_3", [l_image_array, l_angle_info, l_total_angle])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageArrayRotationAnimation",
        "org.allbinary.animation.image.ImageArrayRotationAnimation",
        "ImageArrayBaseRotationAnimation",
        [],
        False,
        [#("expectedTotalFrames", jr.JInt(0))],
        [],
        [
            jr.Method("createAnimation_2", ["Object", "AnimationBehavior"], True, c1_m1__createanimation), 
            jr.Method("initImageArray_3", ["ImageArr", "AngleInfo", "int"], False, c1_m4__initimagearray), 
            jr.Method("setImageArray_1", ["ImageArr"], False, c1_m5__setimagearray), 
            jr.Method("jinit_4", ["ImageArr", "AngleInfo", "int", "AnimationBehavior"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


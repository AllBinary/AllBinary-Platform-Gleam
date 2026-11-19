// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageBaseRotationAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "anchor", jr.as_i(jr.get_static("Anchor", "TOP_LEFT")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call_inherited(this, "ImageBaseRotationAnimation", "getSize_0", []))
}

fn c1_m4__setsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sequence] = jargs
    jr.JNull
}

fn c1_m5__getsequence(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", [])
}

fn c1_m7__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call(l_graphics, "drawImage_4", [jr.get_field(this, "image"), l_x, l_y, jr.get_field(this, "anchor")])
    jr.JNull
}

fn c1_m8__getimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "image")
}

fn c1_m9__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "image"), "getWidth_0", []))
}

fn c1_m10__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "image"), "getHeight_0", []))
}

fn c1_m11__close(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("DisposalUtil", "getInstance_0", []), "disposeImage_1", [jr.get_field(this, "image")])
    jr.JNull
}

fn c1_m12__finalize(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("DisposalUtil", "getInstance_0", []), "disposeImage_1", [jr.get_field(this, "image")])
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_angle_info, l_total_angle, l_animation_behavior] = jargs
    let l_total_angle = jr.as_s(l_total_angle)
        jr.super_init("RotationAnimation", this, [l_angle_info, jr.call_static("CircularIndexUtil", "createInstance_1", [jr.div(l_total_angle, jr.call(jr.call(l_angle_info, "getAngleIncrementInfo_0", []), "getAngleIncrement_0", []))]), l_animation_behavior])
        c1_jfields(this)
        jr.set_field(this, "image", l_image)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageBaseRotationAnimation",
        "org.allbinary.animation.image.ImageBaseRotationAnimation",
        "RotationAnimation",
        [],
        False,
        [#("image", jr.JNull), #("anchor", jr.JInt(0))],
        [],
        [
            jr.Method("getAnimationSize_0", [], False, c1_m3__getanimationsize), 
            jr.Method("setSequence_1", ["intArr"], False, c1_m4__setsequence), 
            jr.Method("getSequence_0", [], False, c1_m5__getsequence), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m7__paintxy), 
            jr.Method("getImage_0", [], False, c1_m8__getimage), 
            jr.Method("getWidth_0", [], False, c1_m9__getwidth), 
            jr.Method("getHeight_0", [], False, c1_m10__getheight), 
            jr.Method("close_0", [], False, c1_m11__close), 
            jr.Method("finalize_0", [], False, c1_m12__finalize), 
            jr.Method("jinit_4", ["Image", "AngleInfo", "short", "AnimationBehavior"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


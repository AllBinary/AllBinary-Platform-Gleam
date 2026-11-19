// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageArrayRotationAnimationCacheable

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getkey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")
}

fn c1_m3__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_animation_behavior] = jargs
        jr.super_init("AdjustedImageArrayRotationAnimation", this, [jr.call(l_any_type, "getImageArray_0", []), jr.call(l_any_type, "getAngleInfoP_0", []), jr.call(l_any_type, "getTotalAngle_0", []), jr.call(l_any_type, "getDx_0", []), jr.call(l_any_type, "getDy_0", []), l_animation_behavior])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageArrayRotationAnimationCacheable",
        "org.allbinary.animation.image.ImageArrayRotationAnimationCacheable",
        "AdjustedImageArrayRotationAnimation",
        ["CacheableInterface"],
        False,
        [],
        [],
        [
            jr.Method("getKey_0", [], False, c1_m2__getkey), 
            jr.Method("toString_0", [], False, c1_m3__tostring), 
            jr.Method("jinit_2", ["Object", "AnimationBehavior"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


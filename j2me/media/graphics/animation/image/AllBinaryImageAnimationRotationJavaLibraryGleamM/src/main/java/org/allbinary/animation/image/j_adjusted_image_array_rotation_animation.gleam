// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AdjustedImageArrayRotationAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createadjustedimagearrayrotationanimationinfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type, l_animation_behavior] = jargs
        let l_image_rotation_animation_info = l_any_type
    jr.new("AdjustedImageArrayRotationAnimation", [jr.call(l_image_rotation_animation_info, "getImageArray_0", []), jr.call(l_image_rotation_animation_info, "getAngleInfoP_0", []), jr.call(l_image_rotation_animation_info, "getTotalAngle_0", []), jr.call(l_image_rotation_animation_info, "getDx_0", []), jr.call(l_image_rotation_animation_info, "getDy_0", []), l_animation_behavior])
}

fn c1_m2__createanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array, l_angle_info, l_total_angle, l_animation_behavior] = jargs
    let l_total_angle = jr.as_i(l_total_angle)
    jr.new("AdjustedImageArrayRotationAnimation", [l_image_array, l_angle_info, l_total_angle, jr.neg(jr.shr(jr.call(jr.aget(l_image_array, jr.JInt(0)), "getWidth_0", []), jr.JInt(2))), jr.neg(jr.shr(jr.call(jr.aget(l_image_array, jr.JInt(0)), "getHeight_0", []), jr.JInt(2))), l_animation_behavior])
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx, l_dy] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.call(this, "setDx_1", [l_dx])
        jr.call(this, "setDy_1", [l_dy])
    jr.JNull
}

fn c1_m7__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
        jr.call_super("ImageArrayRotationAnimation", this, "paintXY_3", [l_graphics, jr.add(l_x, jr.get_field(this, "dx")), jr.add(l_y, jr.get_field(this, "dy"))])
    jr.JNull
}

fn c1_m8__setdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx] = jargs
    let l_dx = jr.as_i(l_dx)
        jr.set_field(this, "dx", jr.as_i(l_dx))
    jr.JNull
}

fn c1_m9__getdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "dx"))
}

fn c1_m10__setdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dy] = jargs
    let l_dy = jr.as_i(l_dy)
        jr.set_field(this, "dy", jr.as_i(l_dy))
    jr.JNull
}

fn c1_m11__getdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "dy"))
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array, l_angle_info, l_total_angle, l_dx, l_dy, l_animation_behavior] = jargs
    let l_total_angle = jr.as_i(l_total_angle)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.super_init("ImageArrayRotationAnimation", this, [l_image_array, l_angle_info, l_total_angle, l_animation_behavior])
        c1_jfields(this)
        jr.call(this, "init_2", [l_dx, l_dy])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AdjustedImageArrayRotationAnimation",
        "org.allbinary.animation.image.AdjustedImageArrayRotationAnimation",
        "ImageArrayRotationAnimation",
        [],
        False,
        [#("dx", jr.JInt(0)), #("dy", jr.JInt(0))],
        [],
        [
            jr.Method("createAdjustedImageArrayRotationAnimationInfo_2", ["Object", "AnimationBehavior"], True, c1_m1__createadjustedimagearrayrotationanimationinfo), 
            jr.Method("createAnimation_4", ["ImageArr", "AngleInfo", "int", "AnimationBehavior"], True, c1_m2__createanimation), 
            jr.Method("init_2", ["int", "int"], False, c1_m6__init), 
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c1_m7__paintxy), 
            jr.Method("setDx_1", ["int"], False, c1_m8__setdx), 
            jr.Method("getDx_0", [], False, c1_m9__getdx), 
            jr.Method("setDy_1", ["int"], False, c1_m10__setdy), 
            jr.Method("getDy_0", [], False, c1_m11__getdy), 
            jr.Method("jinit_6", ["ImageArr", "AngleInfo", "int", "int", "int", "AnimationBehavior"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


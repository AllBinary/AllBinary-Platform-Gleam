// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageArrayRotationAnimationInfo

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__setimagearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array] = jargs
        jr.set_field(this, "imageArray", l_image_array)
    jr.JNull
}

fn c1_m8__getimagearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "imageArray")
}

fn c1_m9__getangleinfop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("AngleInfo", "getInstance_1", [jr.to_s(jr.get_field(this, "angleIncrement"))])
}

fn c1_m10__settotalangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total_angle] = jargs
    let l_total_angle = jr.as_i(l_total_angle)
        jr.set_field(this, "totalAngle", jr.as_i(l_total_angle))
    jr.JNull
}

fn c1_m11__gettotalangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "totalAngle"))
}

fn c1_m12__setdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx] = jargs
    let l_dx = jr.as_i(l_dx)
        jr.set_field(this, "dx", jr.as_i(l_dx))
    jr.JNull
}

fn c1_m13__getdx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "dx"))
}

fn c1_m14__setdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dy] = jargs
    let l_dy = jr.as_i(l_dy)
        jr.set_field(this, "dy", jr.as_i(l_dy))
    jr.JNull
}

fn c1_m15__getdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "dy"))
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array, l_angle_increment, l_total_angle, l_dx, l_dy] = jargs
    let l_angle_increment = jr.as_i(l_angle_increment)
    let l_total_angle = jr.as_i(l_total_angle)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "imageArray", l_image_array)
        jr.set_field(this, "angleIncrement", jr.as_i(l_angle_increment))
        jr.set_field(this, "totalAngle", jr.as_i(l_total_angle))
        jr.set_field(this, "dx", jr.as_i(l_dx))
        jr.set_field(this, "dy", jr.as_i(l_dy))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageArrayRotationAnimationInfo",
        "org.allbinary.animation.image.ImageArrayRotationAnimationInfo",
        "Object",
        [],
        False,
        [#("imageArray", jr.JNull), #("angleIncrement", jr.JInt(0)), #("totalAngle", jr.JInt(0)), #("dx", jr.JInt(0)), #("dy", jr.JInt(0))],
        [],
        [
            jr.Method("setImageArray_1", ["ImageArr"], False, c1_m7__setimagearray), 
            jr.Method("getImageArray_0", [], False, c1_m8__getimagearray), 
            jr.Method("getAngleInfoP_0", [], False, c1_m9__getangleinfop), 
            jr.Method("setTotalAngle_1", ["int"], False, c1_m10__settotalangle), 
            jr.Method("getTotalAngle_0", [], False, c1_m11__gettotalangle), 
            jr.Method("setDx_1", ["int"], False, c1_m12__setdx), 
            jr.Method("getDx_0", [], False, c1_m13__getdx), 
            jr.Method("setDy_1", ["int"], False, c1_m14__setdy), 
            jr.Method("getDy_0", [], False, c1_m15__getdy), 
            jr.Method("jinit_5", ["ImageArr", "int", "int", "int", "int"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}


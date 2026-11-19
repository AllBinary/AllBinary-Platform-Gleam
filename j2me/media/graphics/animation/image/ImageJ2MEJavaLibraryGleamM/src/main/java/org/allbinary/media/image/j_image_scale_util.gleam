// Generated Code Do Not Modify
// package org.allbinary.media.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageScaleUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageScaleUtil", "instance", jr.new("ImageScaleUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ImageScaleUtil", "instance")
}

fn c1_m4__createimage2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_cache, l_original_image, l_scale_nominator_x, l_scale_denominator_x, l_scale_nominator_y, l_scale_denominator_y, l_cached] = jargs
    let l_scale_nominator_x = jr.as_f(l_scale_nominator_x)
    let l_scale_denominator_x = jr.as_f(l_scale_denominator_x)
    let l_scale_nominator_y = jr.as_f(l_scale_nominator_y)
    let l_scale_denominator_y = jr.as_f(l_scale_denominator_y)
    jr.call(this, "createImage3_8", [l_image_cache, l_original_image, l_scale_nominator_x, l_scale_denominator_x, l_scale_nominator_y, l_scale_denominator_y, l_cached, jr.JBool(True)])
}

fn c1_m5__createimage3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_cache, l_original_image, l_scale_nominator_x, l_scale_denominator_x, l_scale_nominator_y, l_scale_denominator_y, l_cached, l_mutable] = jargs
    let l_scale_nominator_x = jr.as_f(l_scale_nominator_x)
    let l_scale_denominator_x = jr.as_f(l_scale_denominator_x)
    let l_scale_nominator_y = jr.as_f(l_scale_nominator_y)
    let l_scale_denominator_y = jr.as_f(l_scale_denominator_y)
    l_original_image
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageScaleUtil",
        "org.allbinary.media.image.ImageScaleUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createImage2_7", ["ImageCache", "Image", "float", "float", "float", "float", "boolean"], False, c1_m4__createimage2), 
            jr.Method("createImage3_8", ["ImageCache", "Image", "float", "float", "float", "float", "boolean", "boolean"], False, c1_m5__createimage3), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


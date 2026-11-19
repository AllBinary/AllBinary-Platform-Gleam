// Generated Code Do Not Modify
// package org.allbinary.media.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageCreationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageCreationUtil", "instance", jr.new("ImageCreationUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ImageCreationUtil", "instance")
}

fn c1_m4__createimagewh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_image = jr.call(jr.call_static("GameFeatureImageCacheFactory", "getInstance_0", []), "get_3", [jr.call(jr.call_inherited(this, "ImageCreationUtil", "getClass_0", []), "getName_0", []), l_width, l_height])
    l_image
}

fn c1_m5__createimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_max_scale_x, l_max_scale_y] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_max_scale_x = jr.as_f(l_max_scale_x)
    let l_max_scale_y = jr.as_f(l_max_scale_y)
        let l_image = jr.call(jr.call_static("GameFeatureImageCacheFactory", "getInstance_0", []), "get_3", [jr.call(jr.call_inherited(this, "ImageCreationUtil", "getClass_0", []), "getName_0", []), jr.add(jr.to_i(jr.mul(jr.to_f(l_width), l_max_scale_x)), jr.JInt(1)), jr.add(jr.to_i(jr.mul(jr.to_f(l_height), l_max_scale_y)), jr.JInt(1))])
    l_image
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageCreationUtil",
        "org.allbinary.media.image.ImageCreationUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createImageWH_2", ["int", "int"], False, c1_m4__createimagewh), 
            jr.Method("createImage_4", ["int", "int", "float", "float"], False, c1_m5__createimage), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


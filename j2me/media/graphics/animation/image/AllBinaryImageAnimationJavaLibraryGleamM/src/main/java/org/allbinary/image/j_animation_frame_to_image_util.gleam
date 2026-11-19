// Generated Code Do Not Modify
// package org.allbinary.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AnimationFrameToImageUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AnimationFrameToImageUtil", "instance", jr.new("AnimationFrameToImageUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AnimationFrameToImageUtil", "instance")
}

fn c1_m3__getinstancetranslate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_animation_interface] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_image = jr.call(jr.call_static("GameFeatureImageCacheFactory", "getInstance_0", []), "get_3", [jr.call(jr.call(jr.get_static("AnimationFrameToImageUtil", "instance"), "getClass_0", []), "getName_0", []), jr.shr(jr.mul(l_width, jr.JInt(3)), jr.JInt(1)), jr.shr(jr.mul(l_height, jr.JInt(3)), jr.JInt(1))])
        let l_graphics = jr.call(l_image, "getGraphics_0", [])
        let l_tranlate_x = jr.as_i(jr.shr(l_width, jr.JInt(2)))
        let l_tranlate_y = jr.as_i(jr.shr(l_height, jr.JInt(2)))
        jr.call(l_graphics, "translate_2", [l_tranlate_x, l_tranlate_y])
        jr.call(l_animation_interface, "paintXY_3", [l_graphics, jr.JInt(0), jr.JInt(0)])
        jr.call(l_graphics, "translate_2", [jr.neg(l_tranlate_x), jr.neg(l_tranlate_y)])
    l_image
}

fn c1_m4__getinstancewh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_animation_interface] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_image = jr.call(jr.call_static("GameFeatureImageCacheFactory", "getInstance_0", []), "get_3", [jr.call(jr.call(jr.get_static("AnimationFrameToImageUtil", "instance"), "getClass_0", []), "getName_0", []), l_width, l_height])
        let l_graphics = jr.call(l_image, "getGraphics_0", [])
        jr.call(l_animation_interface, "paintXY_3", [l_graphics, jr.JInt(0), jr.JInt(0)])
    l_image
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AnimationFrameToImageUtil",
        "org.allbinary.image.AnimationFrameToImageUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getInstanceTranslate_3", ["int", "int", "Animation"], False, c1_m3__getinstancetranslate), 
            jr.Method("getInstanceWH_3", ["int", "int", "Animation"], False, c1_m4__getinstancewh), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


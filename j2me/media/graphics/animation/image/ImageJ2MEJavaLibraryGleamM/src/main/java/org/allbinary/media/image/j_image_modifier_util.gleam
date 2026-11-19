// Generated Code Do Not Modify
// package org.allbinary.media.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageModifierUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageModifierUtil", "instance", jr.new("ImageModifierUtil", []))
    jr.JNull
}

fn c1_m2__getinstanceorcreate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ImageModifierUtil", "instance")
}

fn c1_m3__setcolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_unused_original_image, l_image, l_image_index, l_basic_color] = jargs
    let l_image_index = jr.as_i(l_image_index)
    jr.JNull
}

fn c1_m4__changecolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_unused_original_image, l_image, l_image_index, l_basic_color] = jargs
    let l_image_index = jr.as_i(l_image_index)
    jr.JNull
}

fn c1_m5__setalpha(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original_image, l_image, l_image_index, l_alpha_int] = jargs
    let l_image_index = jr.as_i(l_image_index)
    let l_alpha_int = jr.as_i(l_alpha_int)
    jr.JNull
}

fn c1_m6__getimagearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_original_image_array] = jargs
    l_original_image_array
}

fn c1_m7__handleimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array, l_index, l_image] = jargs
    let l_index = jr.as_i(l_index)
    jr.JNull
}

fn c1_m8__reset(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageModifierUtil",
        "org.allbinary.media.image.ImageModifierUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstanceOrCreate_0", [], True, c1_m2__getinstanceorcreate), 
            jr.Method("setColor_4", ["Image", "Image", "int", "BasicColor"], False, c1_m3__setcolor), 
            jr.Method("changeColor_4", ["Image", "Image", "int", "BasicColor"], False, c1_m4__changecolor), 
            jr.Method("setAlpha_4", ["Image", "Image", "int", "int"], False, c1_m5__setalpha), 
            jr.Method("getImageArray_1", ["ImageArr"], False, c1_m6__getimagearray), 
            jr.Method("handleImage_3", ["ImageArr", "int", "Image"], False, c1_m7__handleimage), 
            jr.Method("reset_0", [], False, c1_m8__reset), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


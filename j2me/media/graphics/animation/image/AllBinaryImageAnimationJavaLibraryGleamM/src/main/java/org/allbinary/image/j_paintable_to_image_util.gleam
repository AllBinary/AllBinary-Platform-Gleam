// Generated Code Do Not Modify
// package org.allbinary.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PaintableToImageUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PaintableToImageUtil", "instance", jr.new("PaintableToImageUtil", []))
    jr.JNull
}

fn c1_m2__getimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_paintable_interface, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_image = jr.call(jr.call_static("GameFeatureImageCacheFactory", "getInstance_0", []), "get_3", [jr.call(jr.call(jr.get_static("PaintableToImageUtil", "instance"), "getClass_0", []), "getName_0", []), l_width, l_height])
        let l_graphics = jr.call(l_image, "getGraphics_0", [])
        jr.call(l_paintable_interface, "paint_1", [l_graphics])
    l_image
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PaintableToImageUtil",
        "org.allbinary.image.PaintableToImageUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getImage_3", ["PaintableInterface", "int", "int"], True, c1_m2__getimage), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


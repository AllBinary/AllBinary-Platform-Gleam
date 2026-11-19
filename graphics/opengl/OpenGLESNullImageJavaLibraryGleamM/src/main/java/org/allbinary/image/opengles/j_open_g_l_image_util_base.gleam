// Generated Code Do Not Modify
// package org.allbinary.image.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLImageUtilBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_alpha_bitmap, l_original_bitmap, l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m2__paint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_color_bitmap, l_original_bitmap, l_alpha, l_basic_color] = jargs
    let l_alpha = jr.as_i(l_alpha)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m3__createimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m4__createimagefrominputstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_stream] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLImageUtilBase",
        "org.allbinary.image.opengles.OpenGLImageUtilBase",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("paint_3", ["OpenGLBitmap", "OpenGLBitmap", "int"], False, c1_m1__paint), 
            jr.Method("paint_4", ["OpenGLBitmap", "OpenGLBitmap", "int", "BasicColor"], False, c1_m2__paint), 
            jr.Method("createImage_1", ["String"], False, c1_m3__createimage), 
            jr.Method("createImageFromInputStream_1", ["InputStream"], False, c1_m4__createimagefrominputstream), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


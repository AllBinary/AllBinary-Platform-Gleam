// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLBitmap

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getpixels(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pixels, l_offset, l_stride, l_x, l_y, l_width, l_height] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_stride = jr.as_i(l_stride)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m4__setpixels(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pixels, l_offset, l_stride, l_x, l_y, l_width, l_height] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_stride = jr.as_i(l_stride)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m5__recycle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bitmap] = jargs
    jr.super_init("PlatformBitmapBase", this, [])
    c1_jfields(this)
        jr.set_field(this, "bitmap", l_bitmap)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLBitmap",
        "org.allbinary.graphics.OpenGLBitmap",
        "PlatformBitmapBase",
        [],
        False,
        [#("bitmap", jr.JNull)],
        [],
        [
            jr.Method("getPixels_7", ["intArr", "int", "int", "int", "int", "int", "int"], False, c1_m3__getpixels), 
            jr.Method("setPixels_7", ["intArr", "int", "int", "int", "int", "int", "int"], False, c1_m4__setpixels), 
            jr.Method("recycle_0", [], False, c1_m5__recycle), 
            jr.Method("jinit_1", ["Object"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


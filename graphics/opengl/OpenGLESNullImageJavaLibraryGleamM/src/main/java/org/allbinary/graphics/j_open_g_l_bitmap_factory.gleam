// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLBitmapFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "ARGB_8888", jr.new("OpenGLBitmapConfig", [jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLBitmapFactory", "instance", jr.new("OpenGLBitmapFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OpenGLBitmapFactory", "instance")
}

fn c1_m4__createbitmap(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width, l_height, l_config] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.new("OpenGLBitmap", [jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")])
}

fn c1_m5__decodestream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_input_stream] = jargs
    jr.new("OpenGLBitmap", [jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")])
}

fn c1_m6__createbitmap(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
    jr.new("OpenGLBitmap", [jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT")])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("PlatformBitmapBaseFactory", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLBitmapFactory",
        "org.allbinary.graphics.OpenGLBitmapFactory",
        "PlatformBitmapBaseFactory",
        [],
        False,
        [#("ARGB_8888", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createBitmap_3", ["int", "int", "OpenGLBitmapConfig"], False, c1_m4__createbitmap), 
            jr.Method("decodeStream_1", ["InputStream"], False, c1_m5__decodestream), 
            jr.Method("createBitmap_1", ["Image"], False, c1_m6__createbitmap), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


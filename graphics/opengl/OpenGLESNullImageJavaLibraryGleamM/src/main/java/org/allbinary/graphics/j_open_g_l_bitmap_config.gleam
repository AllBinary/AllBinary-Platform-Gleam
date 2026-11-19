// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLBitmapConfig

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bitmap_config] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "bitmapConfig", l_bitmap_config)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLBitmapConfig",
        "org.allbinary.graphics.OpenGLBitmapConfig",
        "Object",
        [],
        False,
        [#("bitmapConfig", jr.JNull)],
        [],
        [
            jr.Method("jinit_1", ["Object"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


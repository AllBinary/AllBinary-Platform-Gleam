// Generated Code Do Not Modify
// package org.allbinary.platform.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformBitmapBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullImage", "NULL_IMAGE")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlatformBitmapBase",
        "org.allbinary.platform.graphics.PlatformBitmapBase",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getImage_0", [], False, c1_m1__getimage), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


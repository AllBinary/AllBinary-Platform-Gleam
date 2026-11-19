// Generated Code Do Not Modify
// package org.allbinary.platform.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformBitmapBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "alpha", jr.as_i(jr.JInt(255)))
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "NULL_COLOR"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlatformBitmapBase", "NULL_PLATFORM_BITMAP_BASE", jr.new("PlatformBitmapBase", []))
    jr.JNull
}

fn c1_m4__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m5__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m6__getimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        [#("alpha", jr.JInt(0)), #("basicColor", jr.JNull)],
        [#("NULL_PLATFORM_BITMAP_BASE", jr.JNull)],
        [
            jr.Method("getWidth_0", [], False, c1_m4__getwidth), 
            jr.Method("getHeight_0", [], False, c1_m5__getheight), 
            jr.Method("getImage_0", [], False, c1_m6__getimage), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


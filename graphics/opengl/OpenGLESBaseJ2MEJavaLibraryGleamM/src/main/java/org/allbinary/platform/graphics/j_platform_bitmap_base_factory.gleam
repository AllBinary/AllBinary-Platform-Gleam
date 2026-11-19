// Generated Code Do Not Modify
// package org.allbinary.platform.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformBitmapBaseFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlatformBitmapBaseFactory", "NULL_PLATFORM_BITMAP_BASE_FACTORY", jr.new("PlatformBitmapBaseFactory", []))
    jr.JNull
}

fn c1_m2__createbitmap(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
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
        "PlatformBitmapBaseFactory",
        "org.allbinary.platform.graphics.PlatformBitmapBaseFactory",
        "Object",
        [],
        False,
        [],
        [#("NULL_PLATFORM_BITMAP_BASE_FACTORY", jr.JNull)],
        [
            jr.Method("createBitmap_1", ["Image"], False, c1_m2__createbitmap), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


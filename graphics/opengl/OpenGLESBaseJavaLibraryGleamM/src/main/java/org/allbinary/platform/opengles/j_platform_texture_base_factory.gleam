// Generated Code Do Not Modify
// package org.allbinary.platform.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformTextureBaseFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlatformTextureBaseFactory", "NULL_PLATFORM_TEXTURE_BASE_FACTORY", jr.new("PlatformTextureBaseFactory", []))
    jr.JNull
}

fn c1_m3__load(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_target, l_level, l_image, l_border, l_flip] = jargs
    let l_target = jr.as_i(l_target)
    let l_level = jr.as_i(l_level)
    let l_border = jr.as_i(l_border)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlatformTextureBaseFactory",
        "org.allbinary.platform.opengles.PlatformTextureBaseFactory",
        "Object",
        [],
        False,
        [#("commonStrings", jr.JNull)],
        [#("NULL_PLATFORM_TEXTURE_BASE_FACTORY", jr.JNull)],
        [
            jr.Method("load_6", ["GL10", "int", "int", "Image", "int", "boolean"], False, c1_m3__load), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


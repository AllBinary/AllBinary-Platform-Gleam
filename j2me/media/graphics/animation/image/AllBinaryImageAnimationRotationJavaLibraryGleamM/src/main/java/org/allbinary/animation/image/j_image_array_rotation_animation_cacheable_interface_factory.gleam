// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageArrayRotationAnimationCacheableInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    jr.new("ImageArrayRotationAnimationCacheable", [l_key, jr.call_static("AnimationBehavior", "getInstance_0", [])])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageArrayRotationAnimationCacheableInterfaceFactory",
        "org.allbinary.animation.image.ImageArrayRotationAnimationCacheableInterfaceFactory",
        "Object",
        ["CacheableInterfaceFactoryInterface"],
        False,
        [],
        [],
        [
            jr.Method("getInstance_1", ["Object"], False, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


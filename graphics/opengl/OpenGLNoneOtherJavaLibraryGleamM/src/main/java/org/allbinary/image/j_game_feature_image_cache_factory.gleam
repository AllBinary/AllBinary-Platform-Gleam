// Generated Code Do Not Modify
// package org.allbinary.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GameFeatureImageCacheFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("ImageCacheFactory", "getInstance_0", [])
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call_static("ImageCacheFactory", "init_0", [])
    jr.JNull
}

fn c1_m3__releaseall(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.call_static("ImageCacheFactory", "getInstance_0", []), "releaseAll_0", [])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GameFeatureImageCacheFactory",
        "org.allbinary.image.GameFeatureImageCacheFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_0", [], True, c1_m1__getinstance), 
            jr.Method("init_0", [], True, c1_m2__init), 
            jr.Method("releaseAll_0", [], True, c1_m3__releaseall), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


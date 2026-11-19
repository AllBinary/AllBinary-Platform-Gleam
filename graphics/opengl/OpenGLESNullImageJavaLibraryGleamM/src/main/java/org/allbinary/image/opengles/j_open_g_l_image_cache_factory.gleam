// Generated Code Do Not Modify
// package org.allbinary.image.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLImageCacheFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLImageCacheFactory", "IMAGE_CACHE", jr.get_static("ImageCache", "NULL_IMAGE_CACHE"))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OpenGLImageCacheFactory", "IMAGE_CACHE")
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.eq(jr.get_static("OpenGLImageCacheFactory", "IMAGE_CACHE"), jr.JNull)) {
            True -> {
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLImageCacheFactory",
        "org.allbinary.image.opengles.OpenGLImageCacheFactory",
        "Object",
        [],
        False,
        [],
        [#("IMAGE_CACHE", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], True, c1_m3__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


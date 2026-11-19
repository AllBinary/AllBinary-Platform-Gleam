// Generated Code Do Not Modify
// package org.allbinary.media.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageCompleteUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ImageCompleteUtil", "instance", jr.new("ImageCompleteUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ImageCompleteUtil", "instance")
}

fn c1_m3__waitforimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_name] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageCompleteUtil",
        "org.allbinary.media.image.ImageCompleteUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("waitForImage_2", ["Image", "String"], False, c1_m3__waitforimage), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


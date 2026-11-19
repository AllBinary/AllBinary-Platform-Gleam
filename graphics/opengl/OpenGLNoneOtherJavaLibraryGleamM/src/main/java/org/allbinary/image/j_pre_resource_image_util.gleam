// Generated Code Do Not Modify
// package org.allbinary.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PreResourceImageUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PreResourceImageUtil", "instance", jr.new("PreResourceImageUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PreResourceImageUtil", "instance")
}

fn c1_m3__encapsulate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
    l_image
}

fn c1_m4__updategl(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_image] = jargs
    jr.JNull
}

fn c1_m5__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_image] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PreResourceImageUtil",
        "org.allbinary.image.PreResourceImageUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("encapsulate_1", ["Image"], False, c1_m3__encapsulate), 
            jr.Method("updateGL_2", ["GL", "Image"], False, c1_m4__updategl), 
            jr.Method("update_2", ["Graphics", "Image"], False, c1_m5__update), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


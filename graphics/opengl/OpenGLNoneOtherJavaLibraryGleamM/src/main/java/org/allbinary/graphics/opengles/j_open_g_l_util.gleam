// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLUtil", "instance", jr.new("OpenGLUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OpenGLUtil", "instance")
}

fn c1_m3__addimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
    l_image
}

fn c1_m4__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__addrunnable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_runnable] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLUtil",
        "org.allbinary.graphics.opengles.OpenGLUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("addImage_1", ["Image"], False, c1_m3__addimage), 
            jr.Method("clear_0", [], False, c1_m4__clear), 
            jr.Method("addRunnable_1", ["Runnable"], False, c1_m5__addrunnable), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


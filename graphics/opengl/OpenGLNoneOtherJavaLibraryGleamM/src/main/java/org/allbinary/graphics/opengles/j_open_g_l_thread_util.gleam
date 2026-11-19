// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLThreadUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLThreadUtil", "instance", jr.new("OpenGLThreadUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OpenGLThreadUtil", "instance")
}

fn c1_m3__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl_surface_view] = jargs
    jr.JNull
}

fn c1_m4__onpause(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__onresume(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLThreadUtil",
        "org.allbinary.graphics.opengles.OpenGLThreadUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("set_1", ["Object"], False, c1_m3__set), 
            jr.Method("onPause_0", [], False, c1_m4__onpause), 
            jr.Method("onResume_0", [], False, c1_m5__onresume), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


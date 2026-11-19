// Generated Code Do Not Modify
// package org.allbinary.graphics.threed
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GLHolder

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "isCreated", jr.JBool(True))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__runonsurfacecreated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_renderer] = jargs
    jr.JNull
}

fn c1_m4__runonsurfacechanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_renderer, l_width, l_height] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m5__run(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_renderer] = jargs
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GLHolder",
        "org.allbinary.graphics.threed.GLHolder",
        "Object",
        [],
        False,
        [#("isCreated", jr.JBool(False))],
        [],
        [
            jr.Method("runOnSurfaceCreated_1", ["Object"], False, c1_m3__runonsurfacecreated), 
            jr.Method("runOnSurfaceChanged_3", ["Object", "int", "int"], False, c1_m4__runonsurfacechanged), 
            jr.Method("run_1", ["Object"], False, c1_m5__run), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLObject3dProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_object3d] = jargs
    jr.JNull
}

fn c1_m3__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_object3d, l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLObject3dProcessor",
        "org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor",
        "Object",
        [],
        False,
        [#("commonStrings", jr.JNull)],
        [],
        [
            jr.Method("process_2", ["GL10", "Object"], False, c1_m2__process), 
            jr.Method("process_3", ["GL10", "Object", "int"], False, c1_m3__process), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ShaderOpenGLProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__process0(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_m3__process1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_m4__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_m5__process2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_m6__process3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("OpenGLProcessor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ShaderOpenGLProcessor",
        "org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor",
        "OpenGLProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("process0_1", ["GL10"], False, c1_m2__process0), 
            jr.Method("process1_1", ["GL10"], False, c1_m3__process1), 
            jr.Method("process_1", ["GL10"], False, c1_m4__process), 
            jr.Method("process2_1", ["GL10"], False, c1_m5__process2), 
            jr.Method("process3_1", ["GL10"], False, c1_m6__process3), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


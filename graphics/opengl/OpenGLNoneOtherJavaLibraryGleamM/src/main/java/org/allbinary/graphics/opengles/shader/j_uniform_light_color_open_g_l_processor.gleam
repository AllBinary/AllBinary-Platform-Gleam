// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class UniformLightColorOpenGLProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_unused] = jargs
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_shader_composite, l_handle_index] = jargs
    let l_handle_index = jr.as_i(l_handle_index)
    jr.super_init("OpenGLObject3dProcessor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "UniformLightColorOpenGLProcessor",
        "org.allbinary.graphics.opengles.shader.UniformLightColorOpenGLProcessor",
        "OpenGLObject3dProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("process_2", ["GL10", "Object"], False, c1_m2__process), 
            jr.Method("jinit_2", ["ShaderComposite", "int"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


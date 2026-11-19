// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformShaderComposite

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_requires_open_g_l_version, l_shader_array, l_composite_shader_updater, l_shader_initializer, l_model_view_projection, l_color_open_g_l_processor, l_vertex_open_g_l_processor] = jargs
        jr.super_init("ShaderComposite", this, [l_requires_open_g_l_version, l_shader_array, l_composite_shader_updater, l_shader_initializer, l_model_view_projection, l_color_open_g_l_processor, l_vertex_open_g_l_processor, jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlatformShaderComposite",
        "org.allbinary.graphics.opengles.shader.PlatformShaderComposite",
        "ShaderComposite",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_7", ["String", "ShaderArr", "CompositeShaderUpdater", "ShaderInitializer", "ModelViewProjection", "OpenGLProcessor", "OpenGLProcessor"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


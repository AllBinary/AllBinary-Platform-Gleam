// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ShaderComposite

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "useProgramShaderOpenGLProcessor", jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", []))
    jr.set_field(this, "shaderMatrixOpenGLProcessor", jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", []))
    jr.set_field(this, "colorEnableVertexAttribArrayOpenGLProcessor", jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", []))
    jr.set_field(this, "normalEnableVertexAttribArrayOpenGLProcessor", jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", []))
    jr.set_field(this, "vertexEnableVertexAttribArrayOpenGLProcessor", jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", []))
    jr.set_field(this, "textureEnableVertexAttribArrayOpenGLProcessor", jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", []))
    jr.set_field(this, "colorDisableVertexAttribArrayOpenGLProcessor", jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", []))
    jr.set_field(this, "normalDisableVertexAttribArrayOpenGLProcessor", jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", []))
    jr.set_field(this, "vertexDisableVertexAttribArrayOpenGLProcessor", jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", []))
    jr.set_field(this, "textureDisableVertexAttribArrayOpenGLProcessor", jr.call_static("NullOpenGLProcessorFactory", "getInstance_0", []))
    jr.set_field(this, "uniformLightPositionOpenGLProcessor", jr.call_static("NullOpenGLTextureProcessor", "getInstance_0", []))
    jr.set_field(this, "uniformLightColorOpenGLProcessor", jr.call_static("NullOpenGLTextureProcessor", "getInstance_0", []))
    jr.set_field(this, "uniformCameraPositionOpenGLProcessor", jr.call_static("NullOpenGLTextureProcessor", "getInstance_0", []))
    jr.set_field(this, "uniformTextureUnitOpenGLProcessor", jr.call_static("NullOpenGLTextureProcessor", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m25__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
        jr.set_field(this, "programHandle", jr.as_i(jr.call(jr.get_field(this, "shaderInitializer"), "init_3", [l_gl, jr.get_field(this, "shaderArray"), jr.call(jr.call_static("StringUtil", "getInstance_0", []), "getArrayInstance_0", [])])))
    jr.JNull
}

fn c1_jinit24(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_requires_open_g_l_version, l_shader_array, l_composite_shader_updater, l_shader_initializer, l_model_view_projection, l_color_open_g_l_processor, l_vertex_open_g_l_processor, l_disable_program_shader_open_g_l_processor] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "requiresOpenGLVersion", l_requires_open_g_l_version)
        jr.set_field(this, "shaderArray", l_shader_array)
        jr.set_field(this, "shaderInitializer", l_shader_initializer)
        jr.set_field(this, "compositeShaderUpdater", l_composite_shader_updater)
        jr.set_field(this, "modelViewProjection", l_model_view_projection)
        jr.set_field(this, "colorOpenGLProcessor", l_color_open_g_l_processor)
        jr.set_field(this, "vertexOpenGLProcessor", l_vertex_open_g_l_processor)
        jr.set_field(this, "disableProgramShaderOpenGLProcessor", l_disable_program_shader_open_g_l_processor)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ShaderComposite",
        "org.allbinary.graphics.opengles.shader.ShaderComposite",
        "Object",
        [],
        False,
        [#("disableProgramShaderOpenGLProcessor", jr.JNull), #("requiresOpenGLVersion", jr.JNull), #("shaderArray", jr.JNull), #("shaderInitializer", jr.JNull), #("compositeShaderUpdater", jr.JNull), #("modelViewProjection", jr.JNull), #("colorOpenGLProcessor", jr.JNull), #("vertexOpenGLProcessor", jr.JNull), #("useProgramShaderOpenGLProcessor", jr.JNull), #("shaderMatrixOpenGLProcessor", jr.JNull), #("colorEnableVertexAttribArrayOpenGLProcessor", jr.JNull), #("normalEnableVertexAttribArrayOpenGLProcessor", jr.JNull), #("vertexEnableVertexAttribArrayOpenGLProcessor", jr.JNull), #("textureEnableVertexAttribArrayOpenGLProcessor", jr.JNull), #("colorDisableVertexAttribArrayOpenGLProcessor", jr.JNull), #("normalDisableVertexAttribArrayOpenGLProcessor", jr.JNull), #("vertexDisableVertexAttribArrayOpenGLProcessor", jr.JNull), #("textureDisableVertexAttribArrayOpenGLProcessor", jr.JNull), #("uniformLightPositionOpenGLProcessor", jr.JNull), #("uniformLightColorOpenGLProcessor", jr.JNull), #("uniformCameraPositionOpenGLProcessor", jr.JNull), #("uniformTextureUnitOpenGLProcessor", jr.JNull), #("programHandle", jr.JInt(0))],
        [],
        [
            jr.Method("init_1", ["GL10"], False, c1_m25__init), 
            jr.Method("jinit_8", ["String", "ShaderArr", "CompositeShaderUpdater", "ShaderInitializer", "ModelViewProjection", "OpenGLProcessor", "OpenGLProcessor", "OpenGLProcessor"], False, c1_jinit24)],
        c1_jfields,
        c1_jclinit,
    )
}


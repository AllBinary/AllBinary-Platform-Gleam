// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLFeatureFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "OPENGL_OPTIONS", jr.new("OpenGLFeature", [jr.JStr("OpenGL Options")]))
    jr.set_field(this, "OPENGL", jr.new("OpenGLFeature", [jr.JStr("OpenGL")]))
    jr.set_field(this, "OPENGL_SURFACE_VIEW", jr.new("OpenGLFeature", [jr.JStr("GLSurfaceView")]))
    jr.set_field(this, "OPENGL_2D", jr.new("OpenGLFeature", [jr.JStr("OpenGL 2D")]))
    jr.set_field(this, "OPENGL_3D", jr.new("OpenGLFeature", [jr.JStr("OpenGL 3D")]))
    jr.set_field(this, "OPENGL_2D_AND_3D", jr.new("OpenGLFeature", [jr.JStr("OpenGL 2D/3D")]))
    jr.set_field(this, "OPENGL_AUTO_SELECT", jr.new("OpenGLFeature", [jr.JStr("Auto Select")]))
    jr.set_field(this, "OPENGL_MINIMUM", jr.new("OpenGLFeature", [jr.JStr("Minimum")]))
    jr.set_field(this, "OPENGL_AS_GAME_THREAD", jr.new("OpenGLFeature", [jr.JStr("As game thread")]))
    jr.set_field(this, "OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS", jr.new("OpenGLFeature", [jr.JStr("As different threads")]))
    jr.set_field(this, "IMAGE_COLOR_DEPTH_4444", jr.new("OpenGLFeature", [jr.JStr("4444")]))
    jr.set_field(this, "IMAGE_COLOR_DEPTH_8888", jr.new("OpenGLFeature", [jr.JStr("8888")]))
    jr.set_field(this, "IMAGE_COLOR_DEPTH_565", jr.new("OpenGLFeature", [jr.JStr("565")]))
    jr.set_field(this, "OPENGL_COLOR_DEPTH_4444", jr.new("OpenGLFeature", [jr.JStr("4444")]))
    jr.set_field(this, "OPENGL_COLOR_DEPTH_8888", jr.new("OpenGLFeature", [jr.JStr("8888")]))
    jr.set_field(this, "OPENGL_COLOR_DEPTH_565", jr.new("OpenGLFeature", [jr.JStr("565")]))
    jr.set_field(this, "OPENGL_DRAW_TEXTURE", jr.new("OpenGLFeature", [jr.JStr("GL_OES_draw_texture")]))
    jr.set_field(this, "OPENGL_VERTEX_BUFFER_OBJECT", jr.new("OpenGLFeature", [jr.JStr("vertex_buffer_object")]))
    jr.set_field(this, "OPENGL_SIMPLE_OBJECT3D_PROCESSOR", jr.new("OpenGLFeature", [jr.JStr("Simple Object3d Processor")]))
    jr.set_field(this, "OPENGL_COMPLEX_OBJECT3D_PROCESSOR", jr.new("OpenGLFeature", [jr.JStr("Complex Object3d Processor")]))
    jr.set_field(this, "OPENGL_SIMPLE_TEXTURE_PROCESSOR", jr.new("OpenGLFeature", [jr.JStr("Simple Texture Processor")]))
    jr.set_field(this, "OPENGL_COMPLEX_TEXTURE_PROCESSOR", jr.new("OpenGLFeature", [jr.JStr("Complex Texture Processor")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLFeatureFactory", "instance", jr.new("OpenGLFeatureFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OpenGLFeatureFactory", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLFeatureFactory",
        "org.allbinary.graphics.opengles.OpenGLFeatureFactory",
        "Object",
        [],
        False,
        [#("OPENGL_OPTIONS", jr.JNull), #("OPENGL", jr.JNull), #("OPENGL_SURFACE_VIEW", jr.JNull), #("OPENGL_2D", jr.JNull), #("OPENGL_3D", jr.JNull), #("OPENGL_2D_AND_3D", jr.JNull), #("OPENGL_AUTO_SELECT", jr.JNull), #("OPENGL_MINIMUM", jr.JNull), #("OPENGL_AS_GAME_THREAD", jr.JNull), #("OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS", jr.JNull), #("IMAGE_COLOR_DEPTH_4444", jr.JNull), #("IMAGE_COLOR_DEPTH_8888", jr.JNull), #("IMAGE_COLOR_DEPTH_565", jr.JNull), #("OPENGL_COLOR_DEPTH_4444", jr.JNull), #("OPENGL_COLOR_DEPTH_8888", jr.JNull), #("OPENGL_COLOR_DEPTH_565", jr.JNull), #("OPENGL_DRAW_TEXTURE", jr.JNull), #("OPENGL_VERTEX_BUFFER_OBJECT", jr.JNull), #("OPENGL_SIMPLE_OBJECT3D_PROCESSOR", jr.JNull), #("OPENGL_COMPLEX_OBJECT3D_PROCESSOR", jr.JNull), #("OPENGL_SIMPLE_TEXTURE_PROCESSOR", jr.JNull), #("OPENGL_COMPLEX_TEXTURE_PROCESSOR", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


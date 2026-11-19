// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ShaderUpdater

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "rendererStrings", jr.call_static("RendererStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ShaderUpdater", "instance", jr.new("ShaderUpdater", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ShaderUpdater", "instance")
}

fn c1_m5__onsurfacecreated(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_egl_config] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ShaderUpdater",
        "org.allbinary.graphics.opengles.shader.ShaderUpdater",
        "Object",
        [],
        False,
        [#("commonStrings", jr.JNull), #("rendererStrings", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("onSurfaceCreated_2", ["GL10", "EGLConfig"], False, c1_m5__onsurfacecreated), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


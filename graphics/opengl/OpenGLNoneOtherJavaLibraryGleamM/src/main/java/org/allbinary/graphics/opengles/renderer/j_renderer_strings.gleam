// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.renderer
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RendererStrings

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "ON_SURFACE_CREATED", jr.JStr("onSurfaceCreated"))
    jr.set_field(this, "ON_SURFACE_CHANGED", jr.JStr("onSurfaceChanged"))
    jr.set_field(this, "ON_DRAW_FRAME", jr.JStr("onDrawFrame"))
    jr.set_field(this, "ON_DRAW_FRAME_THREED", jr.JStr("onDrawFrameThreed"))
    jr.set_field(this, "ON_DRAW_FRAME_2D", jr.JStr("onDrawFrame2d"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RendererStrings", "instance", jr.new("RendererStrings", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("RendererStrings", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RendererStrings",
        "org.allbinary.graphics.opengles.renderer.RendererStrings",
        "Object",
        [],
        False,
        [#("ON_SURFACE_CREATED", jr.JNull), #("ON_SURFACE_CHANGED", jr.JNull), #("ON_DRAW_FRAME", jr.JNull), #("ON_DRAW_FRAME_THREED", jr.JNull), #("ON_DRAW_FRAME_2D", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


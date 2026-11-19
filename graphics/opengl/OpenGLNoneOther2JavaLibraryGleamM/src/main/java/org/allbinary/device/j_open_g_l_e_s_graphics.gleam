// Generated Code Do Not Modify
// package org.allbinary.device
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLESGraphics

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "gl", jr.get_static("NullGL10", "NULL_GL10"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__updategl(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_m5__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m7__update(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m8__setorthoginalmode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__setcameramode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m10__getgl10(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "gl")
}

fn c1_m11__setfontdebug(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_font, l_font_debug] = jargs
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Graphics", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLESGraphics",
        "org.allbinary.device.OpenGLESGraphics",
        "Graphics",
        ["OpenGLSurfaceChangedInterface", "GraphicsInterface"],
        False,
        [#("commonStrings", jr.JNull), #("gl", jr.JNull)],
        [],
        [
            jr.Method("updateGL_1", ["GL"], False, c1_m4__updategl), 
            jr.Method("set_1", ["GL"], False, c1_m5__set), 
            jr.Method("init_0", [], False, c1_m6__init), 
            jr.Method("update_0", [], False, c1_m7__update), 
            jr.Method("setOrthoginalMode_0", [], False, c1_m8__setorthoginalmode), 
            jr.Method("setCameraMode_0", [], False, c1_m9__setcameramode), 
            jr.Method("getGl10_0", [], False, c1_m10__getgl10), 
            jr.Method("setFontDebug_2", ["Font", "FontDebugBase"], False, c1_m11__setfontdebug), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


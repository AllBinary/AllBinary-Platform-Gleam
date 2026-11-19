// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RendererStateFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "loaded", jr.JBool(False))
    jr.set_field(this, "surfaceChanged", jr.JBool(False))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RendererStateFactory", "instance", jr.new("RendererStateFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("RendererStateFactory", "instance")
}

fn c1_m5__setloaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_loaded] = jargs
        jr.set_field(this, "loaded", l_loaded)
    jr.JNull
}

fn c1_m6__isloaded(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "loaded")
}

fn c1_m7__setsurfacechanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_initialized] = jargs
        jr.set_field(this, "surfaceChanged", l_initialized)
    jr.JNull
}

fn c1_m8__issurfacechanged(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "surfaceChanged")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RendererStateFactory",
        "org.allbinary.graphics.RendererStateFactory",
        "Object",
        [],
        False,
        [#("loaded", jr.JBool(False)), #("surfaceChanged", jr.JBool(False))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("setLoaded_1", ["boolean"], False, c1_m5__setloaded), 
            jr.Method("isLoaded_0", [], False, c1_m6__isloaded), 
            jr.Method("setSurfaceChanged_1", ["boolean"], False, c1_m7__setsurfacechanged), 
            jr.Method("isSurfaceChanged_0", [], False, c1_m8__issurfacechanged), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


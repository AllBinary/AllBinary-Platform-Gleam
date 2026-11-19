// Generated Code Do Not Modify
// package org.allbinary.device
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLESGraphicsCompositeFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "openGLESGraphicsFactory", jr.new("OpenGLESGraphicsFactory", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OpenGLESGraphicsCompositeFactory", "instance", jr.new("OpenGLESGraphicsCompositeFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("OpenGLESGraphicsCompositeFactory", "instance")
}

fn c1_m4__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_open_g_l_e_s_graphics_factory] = jargs
        jr.set_field(this, "openGLESGraphicsFactory", l_open_g_l_e_s_graphics_factory)
    jr.JNull
}

fn c1_m5__get(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "openGLESGraphicsFactory")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLESGraphicsCompositeFactory",
        "org.allbinary.device.OpenGLESGraphicsCompositeFactory",
        "Object",
        [],
        False,
        [#("openGLESGraphicsFactory", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("set_1", ["OpenGLESGraphicsFactory"], False, c1_m4__set), 
            jr.Method("get_0", [], False, c1_m5__get), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


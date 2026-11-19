// Generated Code Do Not Modify
// package org.allbinary.device
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLESGraphicsFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getopenglesgraphicsinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("OpenGLESNullGraphicsFactory", "getInstance_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLESGraphicsFactory",
        "org.allbinary.device.OpenGLESGraphicsFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getOpenGLESGraphicsInstance_0", [], False, c1_m1__getopenglesgraphicsinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


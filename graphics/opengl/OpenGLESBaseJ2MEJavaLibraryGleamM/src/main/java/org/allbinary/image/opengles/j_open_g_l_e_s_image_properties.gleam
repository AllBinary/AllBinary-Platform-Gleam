// Generated Code Do Not Modify
// package org.allbinary.image.opengles
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OpenGLESImageProperties

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "textureID", jr.as_i(jr.JInt(-1)))
    jr.set_field(this, "scaleX", jr.as_f(jr.JFloat(1.0)))
    jr.set_field(this, "scaleY", jr.as_f(jr.JFloat(1.0)))
    jr.set_field(this, "scaleX2", jr.as_f(jr.JFloat(1.0)))
    jr.set_field(this, "scaleY2", jr.as_f(jr.JFloat(1.0)))
    jr.set_field(this, "redf", jr.as_f(jr.JFloat(1.0)))
    jr.set_field(this, "greenf", jr.as_f(jr.JFloat(1.0)))
    jr.set_field(this, "bluef", jr.as_f(jr.JFloat(1.0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OpenGLESImageProperties",
        "org.allbinary.image.opengles.OpenGLESImageProperties",
        "Object",
        [],
        False,
        [#("textureID", jr.JInt(0)), #("scaleX", jr.JFloat(0.0)), #("scaleY", jr.JFloat(0.0)), #("scaleX2", jr.JFloat(0.0)), #("scaleY2", jr.JFloat(0.0)), #("angle", jr.JInt(0)), #("redf", jr.JFloat(0.0)), #("greenf", jr.JFloat(0.0)), #("bluef", jr.JFloat(0.0)), #("alphaf", jr.JFloat(0.0))],
        [],
        [
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


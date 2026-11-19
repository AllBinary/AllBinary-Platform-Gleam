// Generated Code Do Not Modify
// package org.allbinary.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ScreenCapture

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__saveframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m2__startrecording(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m3__endrecording(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ScreenCapture",
        "org.allbinary.graphics.ScreenCapture",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("saveFrame_0", [], False, c1_m1__saveframe), 
            jr.Method("startRecording_0", [], False, c1_m2__startrecording), 
            jr.Method("endRecording_0", [], False, c1_m3__endrecording), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


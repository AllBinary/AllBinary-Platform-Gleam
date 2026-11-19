// Generated Code Do Not Modify
// package javax.microedition.khronos.egl
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class EGLConfig

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.throw(jr.new("RuntimeException", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "EGLConfig",
        "javax.microedition.khronos.egl.EGLConfig",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


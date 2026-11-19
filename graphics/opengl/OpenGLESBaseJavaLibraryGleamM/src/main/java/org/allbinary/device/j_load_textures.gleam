// Generated Code Do Not Modify
// package org.allbinary.device
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LoadTextures

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__load(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl] = jargs
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LoadTextures",
        "org.allbinary.device.LoadTextures",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("load_1", ["GL10"], False, c1_m1__load), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


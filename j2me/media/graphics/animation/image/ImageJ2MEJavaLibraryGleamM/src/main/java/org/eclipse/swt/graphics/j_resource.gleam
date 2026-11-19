// Generated Code Do Not Modify
// package org.eclipse.swt.graphics
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Resource

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__dispose(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m2__isdisposed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Resource",
        "org.eclipse.swt.graphics.Resource",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("dispose_0", [], False, c1_m1__dispose), 
            jr.Method("isDisposed_0", [], False, c1_m2__isdisposed), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


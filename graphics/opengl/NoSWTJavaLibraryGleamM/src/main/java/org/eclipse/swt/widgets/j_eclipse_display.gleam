// Generated Code Do Not Modify
// package org.eclipse.swt.widgets
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class EclipseDisplay

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__sleep(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "EclipseDisplay",
        "org.eclipse.swt.widgets.EclipseDisplay",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("sleep_0", [], False, c1_m1__sleep), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


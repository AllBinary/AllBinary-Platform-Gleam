// Generated Code Do Not Modify
// package org.allbinary
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AppletUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__isappletloader(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.JBool(False)
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AppletUtil",
        "org.allbinary.AppletUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("isAppletLoader_1", ["Object"], True, c1_m2__isappletloader), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


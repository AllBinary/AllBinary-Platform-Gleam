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

fn c1_m3__setapplet(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_static("AppletUtil", "applet", jr.JBool(True))
    jr.JNull
}

fn c1_m4__isappletloader(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.get_static("AppletUtil", "applet")
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
        [#("applet", jr.JBool(False))],
        [
            jr.Method("setApplet_0", [], True, c1_m3__setapplet), 
            jr.Method("isAppletLoader_1", ["Object"], True, c1_m4__isappletloader), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


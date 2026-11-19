// Generated Code Do Not Modify
// package org.allbinary.logic.system.os.windows
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class WindowsOS

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__isautohide(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("GenericOperatingSystem", this, [])
    c1_jfields(this)
        jr.set_inherited(this, "WindowsOS", "scalable", jr.JBool(True))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "WindowsOS",
        "org.allbinary.logic.system.os.windows.WindowsOS",
        "GenericOperatingSystem",
        [],
        False,
        [],
        [],
        [
            jr.Method("isAutoHide_0", [], False, c1_m2__isautohide), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


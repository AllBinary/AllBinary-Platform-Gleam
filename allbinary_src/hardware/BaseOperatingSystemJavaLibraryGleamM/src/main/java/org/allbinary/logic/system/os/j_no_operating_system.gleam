// Generated Code Do Not Modify
// package org.allbinary.logic.system.os
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NoOperatingSystem

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NoOperatingSystem", "NO_OPERATING_SYSTEM", jr.new("GenericOperatingSystem", []))
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("GenericOperatingSystem", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NoOperatingSystem",
        "org.allbinary.logic.system.os.NoOperatingSystem",
        "GenericOperatingSystem",
        [],
        False,
        [],
        [#("NO_OPERATING_SYSTEM", jr.JNull)],
        [
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


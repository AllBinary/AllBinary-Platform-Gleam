// Generated Code Do Not Modify
// package org.allbinary.logic.system.os.solaris
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SolarisOS

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
        jr.set_inherited(this, "SolarisOS", "scalable", jr.JBool(True))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SolarisOS",
        "org.allbinary.logic.system.os.solaris.SolarisOS",
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


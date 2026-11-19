// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LicenseUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LicenseUtil", "instance", jr.new("LicenseUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LicenseUtil", "instance")
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m4__isrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(False)
}

fn c1_m5__setrunning(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_running] = jargs
    jr.JNull
}

fn c1_m6__shouldwait(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_command_listener] = jargs
    jr.call(this, "isRunning_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LicenseUtil",
        "org.allbinary.logic.system.security.licensing.LicenseUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("init_0", [], False, c1_m3__init), 
            jr.Method("isRunning_0", [], False, c1_m4__isrunning), 
            jr.Method("setRunning_1", ["boolean"], False, c1_m5__setrunning), 
            jr.Method("shouldWait_1", ["CommandListener"], False, c1_m6__shouldwait), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


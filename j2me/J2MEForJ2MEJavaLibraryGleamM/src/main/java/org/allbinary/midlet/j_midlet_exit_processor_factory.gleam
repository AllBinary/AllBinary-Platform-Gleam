// Generated Code Do Not Modify
// package org.allbinary.midlet
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MidletExitProcessorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MidletExitProcessorFactory", "instance", jr.new("MidletExitProcessorFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MidletExitProcessorFactory", "instance")
}

fn c1_m3__getexitinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_midlet] = jargs
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.call_static("AppletUtil", "isAppletLoader_1", [l_midlet])) { True -> jr.JBool(True) False -> jr.call_static("J2MEUtil", "isJ2ME_0", []) }) {
            True -> {
            jr.ret(jr.call_static("Processor", "getInstance_0", []))
            Nil
        }
            False -> {
            jr.ret(jr.new("MidletExitProcessor", [l_midlet]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MidletExitProcessorFactory",
        "org.allbinary.midlet.MidletExitProcessorFactory",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getExitInstance_1", ["MIDlet"], False, c1_m3__getexitinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


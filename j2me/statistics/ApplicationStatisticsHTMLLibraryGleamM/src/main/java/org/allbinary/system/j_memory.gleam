// Generated Code Do Not Modify
// package org.allbinary.system
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Memory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinfo(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Memory",
        "org.allbinary.system.Memory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInfo_0", [], True, c1_m1__getinfo), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


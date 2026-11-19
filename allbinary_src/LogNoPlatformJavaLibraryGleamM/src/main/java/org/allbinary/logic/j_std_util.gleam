// Generated Code Do Not Modify
// package org.allbinary.logic
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StdUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "EMPTY_VECTOR", jr.call(this, "createVector_0", []))
    jr.set_field(this, "NULL_TABLE", jr.call(this, "createHashtable_0", []))
    jr.set_field(this, "NULL_MAP", jr.call(this, "createHashMap_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("StdUtil", "instance", jr.new("StdUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("StdUtil", "instance")
}

fn c1_m6__createstack(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("ABStack", [])
}

fn c1_m7__createvector(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("ABVector", [])
}

fn c1_m8__createhashtable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("ABHashtable", [])
}

fn c1_m9__createhashmap(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("ABHashMap", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StdUtil",
        "org.allbinary.logic.StdUtil",
        "Object",
        [],
        False,
        [#("EMPTY_VECTOR", jr.JNull), #("NULL_TABLE", jr.JNull), #("NULL_MAP", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("createStack_0", [], False, c1_m6__createstack), 
            jr.Method("createVector_0", [], False, c1_m7__createvector), 
            jr.Method("createHashtable_0", [], False, c1_m8__createhashtable), 
            jr.Method("createHashMap_0", [], False, c1_m9__createhashmap), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


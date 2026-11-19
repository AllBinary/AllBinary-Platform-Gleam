// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PoolTypeFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "VECTOR_POOL", jr.new("PoolType", [jr.get_field(jr.call_static("CacheTypeFactory", "getInstance_0", []), "NO_CACHE")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PoolTypeFactory", "instance", jr.new("PoolTypeFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PoolTypeFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PoolTypeFactory",
        "org.allbinary.logic.util.cache.PoolTypeFactory",
        "Object",
        [],
        False,
        [#("VECTOR_POOL", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


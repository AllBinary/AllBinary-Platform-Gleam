// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CacheTypeFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NO_CACHE", jr.new("CacheType", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
    jr.set_field(this, "CACHE", jr.new("CacheType", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
    jr.set_field(this, "SET", jr.new("CacheType", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.JStr("Set")]))
    jr.set_field(this, "CACHE_VECTOR", jr.new("CacheType", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING"), jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CacheTypeFactory", "instance", jr.new("CacheTypeFactory", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CacheTypeFactory", "instance")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CacheTypeFactory",
        "org.allbinary.logic.util.cache.CacheTypeFactory",
        "Object",
        [],
        False,
        [#("NO_CACHE", jr.JNull), #("CACHE", jr.JNull), #("SET", jr.JNull), #("CACHE_VECTOR", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


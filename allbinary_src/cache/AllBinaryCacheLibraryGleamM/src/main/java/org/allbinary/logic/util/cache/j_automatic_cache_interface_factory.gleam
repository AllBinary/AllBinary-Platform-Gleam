// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AutomaticCacheInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cacheable_interface_factory_interface, l_cache_type, l_cache_policy] = jargs
        jr.throw(jr.new("Exception", [jr.concat(jr.JStr("No such "), jr.call(l_cache_type, "toString_0", []))]))
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AutomaticCacheInterfaceFactory",
        "org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_3", ["CacheableInterfaceFactoryInterface", "CacheType", "CachePolicy"], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


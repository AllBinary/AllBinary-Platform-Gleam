// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PoolType

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getcachetype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "cacheType")
}

fn c1_m4__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l__p_o_o_l___t_y_p_e = jr.JStr("PoolType: ")
    jr.concat(l__p_o_o_l___t_y_p_e, jr.call(jr.call(this, "getCacheType_0", []), "toString_0", []))
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cache_type] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "cacheType", l_cache_type)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PoolType",
        "org.allbinary.logic.util.cache.PoolType",
        "Object",
        [],
        False,
        [#("cacheType", jr.JNull)],
        [],
        [
            jr.Method("getCacheType_0", [], False, c1_m3__getcachetype), 
            jr.Method("toString_0", [], False, c1_m4__tostring), 
            jr.Method("jinit_1", ["CacheType"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


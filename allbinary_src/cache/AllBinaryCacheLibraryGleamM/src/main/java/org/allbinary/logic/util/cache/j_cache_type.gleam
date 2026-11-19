// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CacheType

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getvendor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "vendor")
}

fn c1_m5__gettype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "type")
}

fn c1_m6__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("CacheType: Vendor: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getVendor_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.JStr(" Type: ")])
        jr.call(l_string_buffer, "append_1", [jr.call(this, "getType_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vendor, l_type] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "vendor", l_vendor)
        jr.set_field(this, "type", l_type)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CacheType",
        "org.allbinary.logic.util.cache.CacheType",
        "Object",
        [],
        False,
        [#("vendor", jr.JNull), #("type", jr.JNull)],
        [],
        [
            jr.Method("getVendor_0", [], False, c1_m4__getvendor), 
            jr.Method("getType_0", [], False, c1_m5__gettype), 
            jr.Method("toString_0", [], False, c1_m6__tostring), 
            jr.Method("jinit_2", ["String", "String"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


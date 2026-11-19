// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseCircularPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "circularIndexUtil", jr.get_static("CircularIndexUtil", "NULL_CIRCULAR_INDEX_UTIL"))
    jr.set_field(this, "OBJECT_ARRAY", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT_ARRAY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getnextinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_any_type = jr.aget(jr.get_field(this, "OBJECT_ARRAY"), jr.call(jr.get_field(this, "circularIndexUtil"), "getIndex_0", []))
        jr.call(jr.get_field(this, "circularIndexUtil"), "next_0", [])
    l_any_type
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_object_factory_interface] = jargs
        jr.call(jr.get_field(this, "circularIndexUtil"), "setIndex_1", [jr.JInt(0)])
        let l_size = jr.as_i(jr.call(jr.get_field(this, "circularIndexUtil"), "getSize_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(jr.get_field(this, "OBJECT_ARRAY"), jr.get(l_index), jr.call(l_all_binary_object_factory_interface, "getInstance_0", []))
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.aget(jr.get_field(this, "OBJECT_ARRAY"), l_index)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseCircularPool",
        "org.allbinary.logic.util.cache.BaseCircularPool",
        "Object",
        [],
        False,
        [#("circularIndexUtil", jr.JNull), #("OBJECT_ARRAY", jr.JNull)],
        [],
        [
            jr.Method("getNextInstance_0", [], False, c1_m3__getnextinstance), 
            jr.Method("init_1", ["AllBinaryObjectFactoryInterface"], False, c1_m4__init), 
            jr.Method("getInstance_1", ["int"], False, c1_m5__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


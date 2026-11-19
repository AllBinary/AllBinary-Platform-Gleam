// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbstractArrayListPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "buffers", jr.new("BasicArrayListD", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m6__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
        jr.throw(jr.new("Exception", [jr.get_field(jr.get_field(this, "commonStrings"), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m7__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cacheable_interface] = jargs
        jr.call(jr.get_field(this, "buffers"), "add_1", [l_cacheable_interface])
    jr.JNull
}

fn c1_m8__addarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cacheable_interfaces] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.alen(l_cacheable_interfaces)) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.get_field(this, "buffers"), "add_1", [jr.aget(l_cacheable_interfaces, jr.get(l_index))])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cacheable_interface_factory_interface] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "cacheableInterfaceFactoryInterface", l_cacheable_interface_factory_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbstractArrayListPool",
        "org.allbinary.logic.util.cache.AbstractArrayListPool",
        "Object",
        ["PoolInterface"],
        False,
        [#("commonStrings", jr.JNull), #("buffers", jr.JNull), #("cacheableInterfaceFactoryInterface", jr.JNull)],
        [],
        [
            jr.Method("clear_0", [], False, c1_m5__clear), 
            jr.Method("remove_1", ["Object"], False, c1_m6__remove), 
            jr.Method("add_1", ["CacheableInterface"], False, c1_m7__add), 
            jr.Method("addArray_1", ["CacheableInterfaceArr"], False, c1_m8__addarray), 
            jr.Method("jinit_1", ["CacheableInterfaceFactoryInterface"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicArrayListPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_inherited(this, "BasicArrayListPool", "buffers"), "clear_0", [])
    jr.JNull
}

fn c1_m3__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_key] = jargs
    jr.method(fn() {
            let l_size = jr.as_i(jr.call(jr.get_inherited(this, "BasicArrayListPool", "buffers"), "size_0", []))
            case jr.truth(jr.gt(l_size, jr.JInt(0))) {
            True -> {
            jr.ret(jr.call(jr.get_inherited(this, "BasicArrayListPool", "buffers"), "removeAt_1", [jr.sub(l_size, jr.JInt(1))]))
            Nil
        }
            False -> {
            jr.ret(jr.call(jr.get_inherited(this, "BasicArrayListPool", "cacheableInterfaceFactoryInterface"), "getInstance_1", [l_key]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m4__addall(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_used_list] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.call(l_used_list, "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            let l_any_type = jr.aget(jr.get_field(l_used_list, "objectArray"), jr.get(l_index))
            jr.call_inherited(this, "BasicArrayListPool", "add_1", [l_any_type])
            Nil
        })
            Nil
        }
        jr.call(l_used_list, "clear_0", [])
    jr.JNull
}

fn c1_m5__releaseusedbacktopool(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_used_list] = jargs
        {
            let l_index = jr.cell(jr.as_i(jr.call(l_used_list, "size_0", [])))
            jr.for_loop("", fn() { jr.ge(jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, False), jr.JInt(0)) }, fn() { Nil }, fn() {
            let l_list = jr.aget(jr.get_field(l_used_list, "objectArray"), jr.get(l_index))
            case jr.truth(jr.eq(jr.call(l_list, "size_0", []), jr.JInt(0))) {
                True -> {
                jr.call(l_used_list, "removeAt_1", [jr.get(l_index)])
                jr.call_inherited(this, "BasicArrayListPool", "add_1", [l_list])
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cacheable_interface_factory_interface] = jargs
        jr.super_init("AbstractArrayListPool", this, [l_cacheable_interface_factory_interface])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicArrayListPool",
        "org.allbinary.logic.util.cache.BasicArrayListPool",
        "AbstractArrayListPool",
        [],
        False,
        [],
        [],
        [
            jr.Method("clear_0", [], False, c1_m2__clear), 
            jr.Method("remove_1", ["Object"], False, c1_m3__remove), 
            jr.Method("addAll_1", ["BasicArrayList"], False, c1_m4__addall), 
            jr.Method("releaseUsedBackToPool_1", ["BasicArrayList"], False, c1_m5__releaseusedbacktopool), 
            jr.Method("jinit_1", ["CacheableInterfaceFactoryInterface"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


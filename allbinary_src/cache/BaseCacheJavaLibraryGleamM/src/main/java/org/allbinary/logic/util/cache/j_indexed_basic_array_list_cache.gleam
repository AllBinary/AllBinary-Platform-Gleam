// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class IndexedBasicArrayListCache

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "size", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "index", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createcache(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_i(l_size)
        let l_indexed_basic_array_list_cache = jr.new("IndexedBasicArrayListCache", [])
        jr.call(l_indexed_basic_array_list_cache, "init_1", [l_size])
    l_indexed_basic_array_list_cache
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_i(l_size)
        case jr.truth(jr.lt(jr.get_field(this, "size"), l_size)) {
            True -> {
            jr.call(jr.get_inherited(this, "IndexedBasicArrayListCache", "list"), "ensureCapacity_1", [l_size])
            {
                let l_index = jr.cell(jr.as_i(jr.sub(l_size, jr.JInt(1))))
                jr.for_loop("", fn() { jr.ge(jr.get(l_index), jr.get_field(this, "size")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, -1, True) Nil }, fn() {
                jr.call(this, "addDefault_0", [])
                Nil
            })
                Nil
            }
            jr.set_field(this, "size", jr.as_i(l_size))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m7__getat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.aget(jr.get_field(jr.get_inherited(this, "IndexedBasicArrayListCache", "list"), "objectArray"), l_index)
}

fn c1_m8__adddefault(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m9__addobject(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
        jr.call(jr.get_inherited(this, "IndexedBasicArrayListCache", "list"), "add_1", [l_any_type])
    jr.JNull
}

fn c1_m10__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cacheable_interface] = jargs
        jr.call(jr.get_inherited(this, "IndexedBasicArrayListCache", "list"), "add_1", [l_cacheable_interface])
    jr.JNull
}

fn c1_m11__addarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cacheable_interfaces] = jargs
        jr.throw(jr.new("Exception", [jr.JStr("No Imple")]))
    jr.JNull
}

fn c1_m12__clear(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "index", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("BaseBasicArrayListCache", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "IndexedBasicArrayListCache",
        "org.allbinary.logic.util.cache.IndexedBasicArrayListCache",
        "BaseBasicArrayListCache",
        ["CacheInterface"],
        False,
        [#("commonStrings", jr.JNull), #("size", jr.JInt(0)), #("index", jr.JInt(0))],
        [],
        [
            jr.Method("createCache_1", ["int"], True, c1_m1__createcache), 
            jr.Method("init_1", ["int"], False, c1_m6__init), 
            jr.Method("getAt_1", ["int"], False, c1_m7__getat), 
            jr.Method("addDefault_0", [], False, c1_m8__adddefault), 
            jr.Method("addObject_1", ["Object"], False, c1_m9__addobject), 
            jr.Method("add_1", ["CacheableInterface"], False, c1_m10__add), 
            jr.Method("addArray_1", ["CacheableInterfaceArr"], False, c1_m11__addarray), 
            jr.Method("clear_0", [], False, c1_m12__clear), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


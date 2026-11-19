// Generated Code Do Not Modify
// package org.allbinary.util
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CircularIndexUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "index", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "lastIndex", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "size", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CircularIndexUtil", "NULL_CIRCULAR_INDEX_UTIL", jr.new("CircularIndexUtil", [jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_m6__next(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.ge(jr.get_field(this, "index"), jr.get_field(this, "lastIndex"))) {
            True -> {
            jr.set_field(this, "index", jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> {
            jr.incr(fn() { jr.get_field(this, "index") }, fn(jv) { jr.set_field(this, "index", jv) }, 1, True)
            Nil
        }
        }
    jr.as_i(jr.get_field(this, "index"))
}

fn c1_m7__previous(this: jr.V, jargs: List(jr.V)) -> jr.V {
        case jr.truth(jr.lt(jr.get_field(this, "index"), jr.JInt(1))) {
            True -> {
            jr.set_field(this, "index", jr.as_i(jr.get_field(this, "lastIndex")))
            Nil
        }
            False -> {
            jr.incr(fn() { jr.get_field(this, "index") }, fn(jv) { jr.set_field(this, "index", jv) }, -1, True)
            Nil
        }
        }
    jr.as_i(jr.get_field(this, "index"))
}

fn c1_m8__setindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
    jr.method(fn() {
            case jr.truth(jr.gt(l_index, jr.get_field(this, "lastIndex"))) {
            True -> {
            jr.ret(jr.JNull)
            Nil
        }
            False -> Nil
        }
            jr.set_field(this, "index", jr.as_i(l_index))
        jr.JNull
    })
}

fn c1_m9__getindex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "index"))
}

fn c1_m10__createinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max] = jargs
    let l_max = jr.as_i(l_max)
    jr.new("CircularIndexUtil", [jr.JInt(0), l_max])
}

fn c1_m11__createinstanceat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_max] = jargs
    let l_index = jr.as_i(l_index)
    let l_max = jr.as_i(l_max)
    jr.new("CircularIndexUtil", [l_index, l_max])
}

fn c1_m12__setsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_i(l_size)
        jr.set_field(this, "size", jr.as_i(l_size))
        jr.set_field(this, "lastIndex", jr.as_i(jr.sub(l_size, jr.JInt(1))))
        jr.set_field(this, "index", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_m13__getsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "size"))
}

fn c1_m14__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonLabels", "getInstance_0", []), "INDEX_LABEL")]), "appendint_1", [jr.get_field(this, "index")]), "append_1", [jr.JStr("lastIndex: ")]), "appendint_1", [jr.get_field(this, "lastIndex")]), "append_1", [jr.JStr("size: ")]), "appendint_1", [jr.get_field(this, "size")]), "toString_0", [])
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index, l_size] = jargs
    let l_index = jr.as_i(l_index)
    let l_size = jr.as_i(l_size)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.call(this, "setSize_1", [l_size])
        jr.call(this, "setIndex_1", [l_index])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CircularIndexUtil",
        "org.allbinary.util.CircularIndexUtil",
        "Object",
        [],
        False,
        [#("index", jr.JInt(0)), #("lastIndex", jr.JInt(0)), #("size", jr.JInt(0))],
        [#("NULL_CIRCULAR_INDEX_UTIL", jr.JNull)],
        [
            jr.Method("next_0", [], False, c1_m6__next), 
            jr.Method("previous_0", [], False, c1_m7__previous), 
            jr.Method("setIndex_1", ["int"], False, c1_m8__setindex), 
            jr.Method("getIndex_0", [], False, c1_m9__getindex), 
            jr.Method("createInstance_1", ["int"], True, c1_m10__createinstance), 
            jr.Method("createInstanceAt_2", ["int", "int"], True, c1_m11__createinstanceat), 
            jr.Method("setSize_1", ["int"], False, c1_m12__setsize), 
            jr.Method("getSize_0", [], False, c1_m13__getsize), 
            jr.Method("toString_0", [], False, c1_m14__tostring), 
            jr.Method("jinit_2", ["int", "int"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


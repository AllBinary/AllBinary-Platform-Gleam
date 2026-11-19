// Generated Code Do Not Modify
// package org.allbinary.logic.string
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StringUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "INIT_STRING", jr.new("String", [jr.JStr("")]))
    jr.set_field(this, "NULL_STRING", jr.JStr("null"))
    jr.set_field(this, "EMPTY_STRING", jr.JStr(""))
    jr.set_field(this, "ONE_EMPTY_STRING_ARRAY", jr.array_of("L", [jr.get_field(this, "EMPTY_STRING")]))
    jr.set_field(this, "ONE_EMPTY_STRING_ARRAY_OF_ARRAYS", jr.new_array("L", 2, [jr.JInt(0), jr.JInt(0)]))
    jr.set_field(this, "stringArray", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("StringUtil", "instance", jr.new("StringUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("StringUtil", "instance")
}

fn c1_m10__getnonnull(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string] = jargs
    l_string
}

fn c1_m11__getarrayinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "stringArray")
}

fn c1_m12__count(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string, l_a_char] = jargs
    let l_a_char = jr.as_c(l_a_char)
        let l_count = jr.cell(jr.as_i(jr.JInt(0)))
        let l_size = jr.as_i(jr.call(l_string, "length_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            case jr.truth(jr.eq(jr.call(l_string, "charAt_1", [jr.get(l_index)]), l_a_char)) {
                True -> {
                jr.incr(fn() { jr.get(l_count) }, fn(jv) { jr.set(l_count, jv) }, 1, True)
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
    jr.as_i(jr.get(l_count))
}

fn c1_m13__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.method(fn() {
            case jr.truth(jr.ne(l_any_type, jr.JNull)) {
            True -> {
            jr.ret(jr.call(l_any_type, "toString_0", []))
            Nil
        }
            False -> {
            jr.ret(jr.get_field(this, "NULL_STRING"))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit9(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StringUtil",
        "org.allbinary.logic.string.StringUtil",
        "Object",
        [],
        False,
        [#("INIT_STRING", jr.JNull), #("NULL_STRING", jr.JNull), #("EMPTY_STRING", jr.JNull), #("ONE_EMPTY_STRING_ARRAY", jr.JNull), #("ONE_EMPTY_STRING_ARRAY_OF_ARRAYS", jr.JNull), #("stringArray", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getNonNull_1", ["String"], False, c1_m10__getnonnull), 
            jr.Method("getArrayInstance_0", [], False, c1_m11__getarrayinstance), 
            jr.Method("count_2", ["String", "char"], False, c1_m12__count), 
            jr.Method("toString_1", ["Object"], False, c1_m13__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit9)],
        c1_jfields,
        c1_jclinit,
    )
}


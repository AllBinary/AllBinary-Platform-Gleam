// Generated Code Do Not Modify
// package org.allbinary.data
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CamelCaseUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "commonSeps", jr.call_static("CommonSeps", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CamelCaseUtil", "instance", jr.new("CamelCaseUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CamelCaseUtil", "instance")
}

fn c1_m4__getascamelcase(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string, l_string_builder] = jargs
        let l_string_validation_util = jr.call_static("StringValidationUtil", "getInstance_0", [])
        jr.call(l_string_builder, "delete_2", [jr.JInt(0), jr.call(l_string_builder, "length_0", [])])
        let l_list = jr.new("BasicArrayListD", [])
        let l_tokenizer = jr.new("Tokenizer", [jr.get_field(jr.get_field(this, "commonSeps"), "UNDERSCORE")])
        jr.call(l_tokenizer, "getTokensFromString_2", [l_string, l_list])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        let l_word = jr.cell(jr.JNull)
        {
            let l_i = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_i), l_size) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True) Nil }, fn() {
            jr.set(l_word, jr.call(l_list, "get_1", [jr.get(l_i)]))
            jr.set(l_word, case jr.truth(jr.call(l_string_validation_util, "isEmpty_1", [jr.get(l_word)])) { True -> jr.get(l_word) False -> jr.call(jr.call(jr.call(jr.new("StringMaker", []), "appendchar_1", [jr.call_static("Character", "toUpperCase_1", [jr.call(jr.get(l_word), "charAt_1", [jr.JInt(0)])])]), "append_1", [jr.call(jr.call(jr.get(l_word), "substring_1", [jr.JInt(1)]), "toLowerCase_0", [])]), "toString_0", []) })
            jr.call(l_string_builder, "append_1", [jr.get(l_word)])
            Nil
        })
            Nil
        }
    jr.call(l_string_builder, "toString_0", [])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CamelCaseUtil",
        "org.allbinary.data.CamelCaseUtil",
        "Object",
        [],
        False,
        [#("commonSeps", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getAsCamelCase_2", ["String", "StringMaker"], False, c1_m4__getascamelcase), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


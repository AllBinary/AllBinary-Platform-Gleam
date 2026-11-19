// Generated Code Do Not Modify
// package org.allbinary.logic.java.bool
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BooleanUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BooleanUtil", "instance", jr.new("BooleanUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("BooleanUtil", "instance")
}

fn c1_m5__getfromstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_boolean_string] = jargs
    jr.method(fn() {
            let l_string_validation_util = jr.call_static("StringValidationUtil", "getInstance_0", [])
            let l_boolean_factory = jr.call_static("BooleanFactory", "getInstance_0", [])
            case jr.truth(jr.call(l_string_validation_util, "isEmpty_1", [l_boolean_string])) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> Nil
        }
            let l_boolean_string_lower_case = jr.call(l_boolean_string, "toLowerCase_0", [])
            case jr.truth(jr.eq(jr.call(jr.get_field(this, "tsUtil"), "compareTo_2", [l_boolean_string_lower_case, jr.get_field(l_boolean_factory, "TRUE_STRING")]), jr.JInt(0))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> case jr.truth(jr.eq(jr.call(jr.get_field(this, "tsUtil"), "compareTo_2", [l_boolean_string_lower_case, jr.get_field(l_boolean_factory, "FALSE_STRING")]), jr.JInt(0))) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.throw(jr.new("Exception", [jr.JStr("Invalid booleanString - Must be true or false")]))
            Nil
        }
        }
        }
        jr.JNull
    })
}

fn c1_m6__isstringboolean(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_boolean_string] = jargs
    jr.method(fn() {
            let l_boolean_factory = jr.call_static("BooleanFactory", "getInstance_0", [])
            let l_boolean_string_lower_case = jr.call(l_boolean_string, "toLowerCase_0", [])
            case jr.truth(case jr.truth(jr.eq(jr.call(l_boolean_string_lower_case, "compareTo_1", [jr.get_field(l_boolean_factory, "TRUE_STRING")]), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.eq(jr.call(l_boolean_string_lower_case, "compareTo_1", [jr.get_field(l_boolean_factory, "FALSE_STRING")]), jr.JInt(0)) }) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m7__tostringfrombooleanarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_boolean_array] = jargs
        let l_string_maker = jr.new("StringMaker", [])
        let l_size = jr.as_i(jr.alen(l_boolean_array))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(l_string_maker, "appendboolean_1", [jr.aget(l_boolean_array, jr.get(l_index))])
            Nil
        })
            Nil
        }
    jr.call(l_string_maker, "toString_0", [])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BooleanUtil",
        "org.allbinary.logic.java.bool.BooleanUtil",
        "Object",
        [],
        False,
        [#("tsUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getFromString_1", ["String"], False, c1_m5__getfromstring), 
            jr.Method("isStringBoolean_1", ["String"], False, c1_m6__isstringboolean), 
            jr.Method("toStringFromBooleanArray_1", ["booleanArr"], False, c1_m7__tostringfrombooleanarray), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


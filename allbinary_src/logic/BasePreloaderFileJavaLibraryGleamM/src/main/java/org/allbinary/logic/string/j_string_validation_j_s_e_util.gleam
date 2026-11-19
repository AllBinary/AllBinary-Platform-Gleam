// Generated Code Do Not Modify
// package org.allbinary.logic.string
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StringValidationJSEUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__isblank(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_string] = jargs
    jr.method(fn() {
            let l_len = jr.as_i(jr.call(l_string, "length_0", []))
            {
            let l_i = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_i), l_len) }, fn() { jr.incr(fn() { jr.get(l_i) }, fn(jv) { jr.set(l_i, jv) }, 1, True) Nil }, fn() {
            let l_c = jr.as_c(jr.call(l_string, "charAt_1", [jr.get(l_i)]))
            case jr.truth(jr.eq(jr.call_static("Character", "isWhitespace_1", [l_c]), jr.JBool(False))) {
                True -> {
                jr.ret(jr.JBool(False))
                Nil
            }
                False -> Nil
            }
            Nil
        })
            Nil
        }
            jr.ret(jr.JBool(True))
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StringValidationJSEUtil",
        "org.allbinary.logic.string.StringValidationJSEUtil",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("isBlank_1", ["String"], True, c1_m2__isblank), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


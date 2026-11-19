// Generated Code Do Not Modify
// package org.allbinary
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class TsUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("TsUtil", "instance", jr.new("TsUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("TsUtil", "instance")
}

fn c1_m3__longbitstodouble(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bits] = jargs
    let l_bits = jr.as_j(l_bits)
    jr.as_d(jr.call_static("Double", "longBitsToDouble_1", [l_bits]))
}

fn c1_m4__intbitstofloat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_bits] = jargs
    let l_bits = jr.as_i(l_bits)
    jr.as_f(jr.call_static("Float", "intBitsToFloat_1", [l_bits]))
}

fn c1_m5__hashcode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any_type] = jargs
    jr.as_i(jr.call(l_any_type, "hashCode_0", []))
}

fn c1_m6__waitfor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_any, l_timeout_millis] = jargs
    let l_timeout_millis = jr.as_j(l_timeout_millis)
        let l_any_type = l_any
        jr.call(l_any_type, "wait_1", [l_timeout_millis])
    jr.JNull
}

fn c1_m7__compareto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_a, l_b] = jargs
    jr.as_i(jr.call(l_a, "compareTo_1", [l_b]))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "TsUtil",
        "org.allbinary.TsUtil",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("longBitsToDouble_1", ["long"], False, c1_m3__longbitstodouble), 
            jr.Method("intBitsToFloat_1", ["int"], False, c1_m4__intbitstofloat), 
            jr.Method("hashCode_1", ["Object"], False, c1_m5__hashcode), 
            jr.Method("waitFor_2", ["Object", "long"], False, c1_m6__waitfor), 
            jr.Method("compareTo_2", ["String", "String"], False, c1_m7__compareto), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


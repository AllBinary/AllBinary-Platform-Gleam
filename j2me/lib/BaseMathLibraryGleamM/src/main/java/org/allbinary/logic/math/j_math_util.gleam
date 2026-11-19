// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MathUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "ACCURACY", jr.as_i(jr.JInt(100)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MathUtil", "instance", jr.new("MathUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MathUtil", "instance")
}

fn c1_m3__gettotaldigits(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_digits] = jargs
    let l_digits = jr.cell(jr.as_i(l_digits))
        let l_total = jr.cell(jr.as_i(jr.JInt(0)))
        jr.while_loop("", fn() { jr.gt(jr.get(l_digits), jr.JInt(0)) }, fn() {
            jr.set(l_digits, jr.as_i(jr.div(jr.get(l_digits), jr.JInt(10))))
            jr.incr(fn() { jr.get(l_total) }, fn(jv) { jr.set(l_total, jv) }, 1, True)
            Nil
        })
    jr.as_i(jr.get(l_total))
}

fn c1_m4__sqrt(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
    jr.method(fn() {
            case jr.truth(jr.le(l_value, jr.JInt(1))) {
            True -> {
            jr.ret(jr.as_i(l_value))
            Nil
        }
            False -> Nil
        }
            let l_accumulated = jr.cell(jr.as_i(jr.shr(l_value, jr.JInt(1))))
            let l_result = jr.cell(jr.as_i(jr.shr(jr.add(jr.get(l_accumulated), jr.div(l_value, jr.get(l_accumulated))), jr.JInt(1))))
            jr.do_loop("", fn() {
            jr.set(l_accumulated, jr.as_i(jr.get(l_result)))
            jr.set(l_result, jr.as_i(jr.shr(jr.add(jr.get(l_accumulated), jr.div(l_value, jr.get(l_accumulated))), jr.JInt(1))))
            Nil
        }, fn() { jr.gt(jr.get(l_accumulated), jr.get(l_result)) })
            jr.ret(jr.as_i(jr.get(l_accumulated)))
        jr.JNull
    })
}

fn c1_m6__sqrtd(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x] = jargs
    let l_x = jr.as_i(l_x)
    jr.method(fn() {
            case jr.truth(jr.eq(l_x, jr.JInt(0))) {
            True -> {
            jr.ret(jr.as_d(jr.to_d(jr.JFloat(0.0))))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.lt(l_x, jr.JInt(0))) {
            True -> {
            jr.ret(jr.as_d(jr.to_d(jr.JFloat(-1.0))))
            Nil
        }
            False -> Nil
        }
            let l_result = jr.cell(jr.as_d(jr.to_d(l_x)))
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "ACCURACY")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_result, jr.as_d(jr.div(jr.add(jr.get(l_result), jr.div(jr.to_d(l_x), jr.get(l_result))), jr.JDouble(2.0))))
            Nil
        })
            Nil
        }
            jr.ret(jr.as_d(jr.get(l_result)))
        jr.JNull
    })
}

fn c1_m7__abs(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
    jr.as_i(case jr.truth(jr.lt(l_value, jr.JInt(0))) { True -> jr.neg(l_value) False -> l_value })
}

fn c1_m8__abslong(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_j(l_value)
    jr.as_j(case jr.truth(jr.lt(l_value, jr.JLong(0))) { True -> jr.neg(l_value) False -> l_value })
}

fn c1_m9__min(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_value2] = jargs
    let l_value = jr.as_i(l_value)
    let l_value2 = jr.as_i(l_value2)
    jr.as_i(case jr.truth(jr.le(l_value, l_value2)) { True -> l_value False -> l_value2 })
}

fn c1_m10__max(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_value2] = jargs
    let l_value = jr.as_i(l_value)
    let l_value2 = jr.as_i(l_value2)
    jr.as_i(case jr.truth(jr.ge(l_value, l_value2)) { True -> l_value False -> l_value2 })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MathUtil",
        "org.allbinary.logic.math.MathUtil",
        "Object",
        [],
        False,
        [#("ACCURACY", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getTotalDigits_1", ["int"], False, c1_m3__gettotaldigits), 
            jr.Method("sqrt_1", ["int"], False, c1_m4__sqrt), 
            jr.Method("sqrtd_1", ["int"], False, c1_m6__sqrtd), 
            jr.Method("abs_1", ["int"], False, c1_m7__abs), 
            jr.Method("abslong_1", ["long"], False, c1_m8__abslong), 
            jr.Method("min_2", ["int", "int"], False, c1_m9__min), 
            jr.Method("max_2", ["int", "int"], False, c1_m10__max), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


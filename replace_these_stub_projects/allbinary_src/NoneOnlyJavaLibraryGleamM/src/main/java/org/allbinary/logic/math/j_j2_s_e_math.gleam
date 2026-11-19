// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class J2SEMath

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("J2SEMath", "instance", jr.new("J2SEMath", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("J2SEMath", "instance")
}

fn c1_m3__round(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_f(l_value)
    jr.as_i(jr.call_static("Math", "round_1", [l_value]))
}

fn c1_m4__abs(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_f(l_value)
    jr.as_f(case jr.truth(jr.lt(l_value, jr.JFloat(0.0))) { True -> jr.neg(l_value) False -> l_value })
}

fn c1_m5__absdouble(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_d(l_value)
    jr.as_d(case jr.truth(jr.lt(l_value, jr.JDouble(0.0))) { True -> jr.neg(l_value) False -> l_value })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "J2SEMath",
        "org.allbinary.logic.math.J2SEMath",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("round_1", ["float"], False, c1_m3__round), 
            jr.Method("abs_1", ["float"], False, c1_m4__abs), 
            jr.Method("absdouble_1", ["double"], False, c1_m5__absdouble), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.logic.math.vector
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AxisMathVectorUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "noDecimalTrigTable", jr.call_static("NoDecimalTrigTable", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AxisMathVectorUtil", "instance", jr.new("AxisMathVectorUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("AxisMathVectorUtil", "instance")
}

fn c1_m4__calculatex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_angle] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
    let l_angle = jr.as_i(l_angle)
    jr.as_j(jr.div(jr.mul(l_magnitude, jr.call(jr.get_field(this, "noDecimalTrigTable"), "cos_1", [l_angle])), jr.JLong(10)))
}

fn c1_m5__calculatey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_angle] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
    let l_angle = jr.as_i(l_angle)
    jr.as_j(jr.div(jr.mul(l_magnitude, jr.call(jr.get_field(this, "noDecimalTrigTable"), "sin_1", [l_angle])), jr.JLong(10)))
}

fn c1_m6__calculatez(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_other_angle] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
    let l_other_angle = jr.as_i(l_other_angle)
    jr.as_j(jr.div(jr.mul(l_magnitude, jr.call(jr.get_field(this, "noDecimalTrigTable"), "sin_1", [l_other_angle])), jr.JLong(10)))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AxisMathVectorUtil",
        "org.allbinary.logic.math.vector.AxisMathVectorUtil",
        "Object",
        [],
        False,
        [#("noDecimalTrigTable", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("calculateX_2", ["long", "int"], False, c1_m4__calculatex), 
            jr.Method("calculateY_2", ["long", "int"], False, c1_m5__calculatey), 
            jr.Method("calculateZ_2", ["long", "int"], False, c1_m6__calculatez), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


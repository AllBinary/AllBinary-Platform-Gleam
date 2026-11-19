// Generated Code Do Not Modify
// package org.allbinary.logic.math
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicDecimal

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "factor", jr.as_i(jr.get_field(jr.call_static("ScaleFactorFactory", "getInstance_0", []), "DEFAULT_SCALE_FACTOR")))
    jr.set_field(this, "factorValue", jr.as_i(jr.get_field(jr.call_static("ScaleFactorFactory", "getInstance_0", []), "DEFAULT_SCALE_VALUE")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("BasicDecimal", "ZERO_BIGDECIMAL", jr.new("BasicDecimal", [jr.JInt(0)]))
    jr.JNull
}

fn c1_m2__createbigdecimal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_big_decimal] = jargs
    jr.new("BasicDecimal", [jr.call(l_big_decimal, "getUnscaled_0", [])])
}

fn c1_m5__setint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.set_field(this, "units", jr.as_j(jr.to_j(l_value)))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m6__setlong(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_j(l_value)
        jr.set_field(this, "units", jr.as_j(l_value))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m7__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_big_decimal] = jargs
        jr.set_field(this, "units", jr.as_j(jr.call(l_big_decimal, "getUnscaled_0", [])))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m8__addint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.set_field(this, "units", jr.as_j(jr.add(jr.get_field(this, "units"), jr.to_j(l_value))))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m9__addlong(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_j(l_value)
        jr.set_field(this, "units", jr.as_j(jr.add(jr.get_field(this, "units"), l_value)))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m10__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_big_decimal] = jargs
        jr.set_field(this, "units", jr.as_j(jr.add(jr.get_field(this, "units"), jr.call(l_big_decimal, "getUnscaled_0", []))))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m11__subtractint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.set_field(this, "units", jr.as_j(jr.sub(jr.get_field(this, "units"), jr.to_j(l_value))))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m12__subtractlong(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_j(l_value)
        jr.set_field(this, "units", jr.as_j(jr.sub(jr.get_field(this, "units"), l_value)))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m13__subtract(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_big_decimal] = jargs
        jr.set_field(this, "units", jr.as_j(jr.sub(jr.get_field(this, "units"), jr.call(l_big_decimal, "getUnscaled_0", []))))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m14__multiplyint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.set_field(this, "units", jr.as_j(jr.mul(jr.get_field(this, "units"), jr.to_j(l_value))))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m15__multiplylong(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_j(l_value)
        jr.set_field(this, "units", jr.as_j(jr.mul(jr.get_field(this, "units"), l_value)))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m16__multiply(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_big_decimal] = jargs
        jr.set_field(this, "units", jr.as_j(jr.mul(jr.get_field(this, "units"), jr.call(l_big_decimal, "getUnscaled_0", []))))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m17__divideint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_i(l_value)
        jr.set_field(this, "units", jr.as_j(jr.div(jr.get_field(this, "units"), jr.to_j(l_value))))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m18__dividelong(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value] = jargs
    let l_value = jr.as_j(l_value)
        jr.set_field(this, "units", jr.as_j(jr.div(jr.get_field(this, "units"), l_value)))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m19__divide(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_big_decimal] = jargs
        jr.set_field(this, "units", jr.as_j(jr.div(jr.get_field(this, "units"), jr.call(l_big_decimal, "getUnscaled_0", []))))
        jr.call(this, "updateScaled_0", [])
    jr.JNull
}

fn c1_m20__getunscaled(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.get_field(this, "units"))
}

fn c1_m22__updatescaled(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(this, "scaled", jr.as_i(jr.to_i(jr.div(jr.get_field(this, "units"), jr.to_j(jr.get_field(this, "factorValue"))))))
    jr.JNull
}

fn c1_m23__getscaled(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "scaled"))
}

fn c1_m24__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call_static("Long", "toString_1", [jr.get_field(this, "units")])
}

fn c1_m27__getscaledfactor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "factor"))
}

fn c1_m28__getscaledfactorvalue(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "factorValue"))
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_units] = jargs
    let l_units = jr.as_j(l_units)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "units", jr.as_j(l_units))
        jr.call(this, "updateScaled_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicDecimal",
        "org.allbinary.logic.math.BasicDecimal",
        "Object",
        [],
        False,
        [#("units", jr.JLong(0)), #("scaled", jr.JInt(0)), #("factor", jr.JInt(0)), #("factorValue", jr.JInt(0))],
        [#("ZERO_BIGDECIMAL", jr.JNull)],
        [
            jr.Method("createBigDecimal_1", ["BasicDecimal"], True, c1_m2__createbigdecimal), 
            jr.Method("setint_1", ["int"], False, c1_m5__setint), 
            jr.Method("setlong_1", ["long"], False, c1_m6__setlong), 
            jr.Method("set_1", ["BasicDecimal"], False, c1_m7__set), 
            jr.Method("addint_1", ["int"], False, c1_m8__addint), 
            jr.Method("addlong_1", ["long"], False, c1_m9__addlong), 
            jr.Method("add_1", ["BasicDecimal"], False, c1_m10__add), 
            jr.Method("subtractint_1", ["int"], False, c1_m11__subtractint), 
            jr.Method("subtractlong_1", ["long"], False, c1_m12__subtractlong), 
            jr.Method("subtract_1", ["BasicDecimal"], False, c1_m13__subtract), 
            jr.Method("multiplyint_1", ["int"], False, c1_m14__multiplyint), 
            jr.Method("multiplylong_1", ["long"], False, c1_m15__multiplylong), 
            jr.Method("multiply_1", ["BasicDecimal"], False, c1_m16__multiply), 
            jr.Method("divideint_1", ["int"], False, c1_m17__divideint), 
            jr.Method("dividelong_1", ["long"], False, c1_m18__dividelong), 
            jr.Method("divide_1", ["BasicDecimal"], False, c1_m19__divide), 
            jr.Method("getUnscaled_0", [], False, c1_m20__getunscaled), 
            jr.Method("updateScaled_0", [], False, c1_m22__updatescaled), 
            jr.Method("getScaled_0", [], False, c1_m23__getscaled), 
            jr.Method("toString_0", [], False, c1_m24__tostring), 
            jr.Method("getScaledFactor_0", [], False, c1_m27__getscaledfactor), 
            jr.Method("getScaledFactorValue_0", [], False, c1_m28__getscaledfactorvalue), 
            jr.Method("jinit_1", ["long"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


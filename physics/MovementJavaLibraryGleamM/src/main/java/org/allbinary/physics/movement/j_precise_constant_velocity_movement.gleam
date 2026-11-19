// Generated Code Do Not Modify
// package org.allbinary.physics.movement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PreciseConstantVelocityMovement

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "factorValue", jr.as_i(jr.get_field(jr.call_static("ScaleFactorFactory", "getInstance_0", []), "DEFAULT_SCALE_VALUE")))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_speed_basic_decimal, l_angle, l_other_angle] = jargs
    let l_angle = jr.as_i(l_angle)
    let l_other_angle = jr.as_i(l_other_angle)
    jr.JNull
}

fn c1_m7__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer] = jargs
        let l_math_util = jr.call_static("MathUtil", "getInstance_0", [])
        let l_velocity_properties = jr.call_inherited(this, "PreciseConstantVelocityMovement", "getVelocityProperties_0", [])
        jr.set_field(this, "accumulatedX", jr.as_i(jr.to_i(jr.add(jr.to_j(jr.get_field(this, "accumulatedX")), jr.call(jr.call(l_velocity_properties, "getVelocityXBasicDecimalP_0", []), "getUnscaled_0", [])))))
        jr.set_field(this, "accumulatedY", jr.as_i(jr.to_i(jr.add(jr.to_j(jr.get_field(this, "accumulatedY")), jr.call(jr.call(l_velocity_properties, "getVelocityYBasicDecimalP_0", []), "getUnscaled_0", [])))))
        jr.set_field(this, "accumulatedZ", jr.as_i(jr.to_i(jr.add(jr.to_j(jr.get_field(this, "accumulatedZ")), jr.call(jr.call(l_velocity_properties, "getVelocityZBasicDecimalP_0", []), "getUnscaled_0", [])))))
        jr.call(l_layer, "moveDXYZ_3", [jr.div(jr.get_field(this, "accumulatedX"), jr.get_field(this, "factorValue")), jr.div(jr.get_field(this, "accumulatedY"), jr.get_field(this, "factorValue")), jr.div(jr.get_field(this, "accumulatedZ"), jr.get_field(this, "factorValue"))])
        case jr.truth(jr.gt(jr.call(l_math_util, "abs_1", [jr.get_field(this, "accumulatedX")]), jr.get_field(this, "factorValue"))) {
            True -> {
            jr.set_field(this, "accumulatedX", jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.gt(jr.call(l_math_util, "abs_1", [jr.get_field(this, "accumulatedY")]), jr.get_field(this, "factorValue"))) {
            True -> {
            jr.set_field(this, "accumulatedY", jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.gt(jr.call(l_math_util, "abs_1", [jr.get_field(this, "accumulatedZ")]), jr.get_field(this, "factorValue"))) {
            True -> {
            jr.set_field(this, "accumulatedZ", jr.as_i(jr.JInt(0)))
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_decimal, l_velocity_properties] = jargs
        jr.super_init("BasicConstantVelocityMovement", this, [l_basic_decimal, l_velocity_properties])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PreciseConstantVelocityMovement",
        "org.allbinary.physics.movement.PreciseConstantVelocityMovement",
        "BasicConstantVelocityMovement",
        [],
        False,
        [#("accumulatedX", jr.JInt(0)), #("accumulatedY", jr.JInt(0)), #("accumulatedZ", jr.JInt(0)), #("factorValue", jr.JInt(0))],
        [],
        [
            jr.Method("init_3", ["BasicDecimal", "int", "int"], False, c1_m5__init), 
            jr.Method("process_1", ["AllBinaryGameLayer"], False, c1_m7__process), 
            jr.Method("jinit_2", ["BasicDecimal", "BasicVelocityProperties"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


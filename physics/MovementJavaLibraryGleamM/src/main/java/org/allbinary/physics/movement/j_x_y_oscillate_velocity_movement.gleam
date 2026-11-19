// Generated Code Do Not Modify
// package org.allbinary.physics.movement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class XYOscillateVelocityMovement

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer] = jargs
        jr.call_super("BasicConstantVelocityMovement", this, "process_1", [l_layer])
        case jr.truth(jr.lt(jr.get_field(this, "oscillate"), jr.get_field(this, "oscillateMin"))) {
            True -> {
            jr.set_field(this, "oscillatePositive", jr.JBool(True))
            jr.call(jr.call(jr.call_inherited(this, "XYOscillateVelocityMovement", "getVelocityProperties_0", []), "getVelocityYBasicDecimalP_0", []), "addint_1", [jr.JInt(3000)])
            Nil
        }
            False -> case jr.truth(jr.gt(jr.get_field(this, "oscillate"), jr.get_field(this, "oscillateMax"))) {
            True -> {
            jr.set_field(this, "oscillatePositive", jr.JBool(False))
            jr.call(jr.call(jr.call_inherited(this, "XYOscillateVelocityMovement", "getVelocityProperties_0", []), "getVelocityYBasicDecimalP_0", []), "subtractint_1", [jr.JInt(3000)])
            Nil
        }
            False -> Nil
        }
        }
        case jr.truth(jr.get_field(this, "oscillatePositive")) {
            True -> {
            jr.incr(fn() { jr.get_field(this, "oscillate") }, fn(jv) { jr.set_field(this, "oscillate", jv) }, 1, True)
            jr.call(jr.call(jr.call_inherited(this, "XYOscillateVelocityMovement", "getVelocityProperties_0", []), "getVelocityXBasicDecimalP_0", []), "addint_1", [jr.JInt(5000)])
            Nil
        }
            False -> {
            jr.incr(fn() { jr.get_field(this, "oscillate") }, fn(jv) { jr.set_field(this, "oscillate", jv) }, -1, True)
            jr.call(jr.call(jr.call_inherited(this, "XYOscillateVelocityMovement", "getVelocityProperties_0", []), "getVelocityXBasicDecimalP_0", []), "subtractint_1", [jr.JInt(5000)])
            Nil
        }
        }
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_speed_basic_decimal, l_oscillate_min, l_oscillate_max] = jargs
    let l_oscillate_min = jr.as_i(l_oscillate_min)
    let l_oscillate_max = jr.as_i(l_oscillate_max)
        jr.super_init("BasicConstantVelocityMovement", this, [l_speed_basic_decimal, jr.new("VelocityProperties", [jr.to_i(jr.call(l_speed_basic_decimal, "getUnscaled_0", [])), jr.to_i(jr.call(l_speed_basic_decimal, "getUnscaled_0", []))])])
        c1_jfields(this)
        jr.set_field(this, "oscillateMin", jr.as_i(l_oscillate_min))
        jr.set_field(this, "oscillateMax", jr.as_i(l_oscillate_max))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "XYOscillateVelocityMovement",
        "org.allbinary.physics.movement.XYOscillateVelocityMovement",
        "BasicConstantVelocityMovement",
        [],
        False,
        [#("oscillateMin", jr.JInt(0)), #("oscillateMax", jr.JInt(0)), #("oscillate", jr.JInt(0)), #("oscillatePositive", jr.JBool(False))],
        [],
        [
            jr.Method("process_1", ["AllBinaryGameLayer"], False, c1_m6__process), 
            jr.Method("jinit_3", ["BasicDecimal", "int", "int"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.game.physics.velocity
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DragVelocityBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DragVelocityBehavior", "instance", jr.new("DragVelocityBehavior", []))
    jr.JNull
}

fn c1_m2__reduce(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_velocity_properties, l_nominator, l_denominator] = jargs
    let l_nominator = jr.as_i(l_nominator)
    let l_denominator = jr.as_i(l_denominator)
        case jr.truth(jr.ne(jr.call(jr.call(l_velocity_properties, "getVelocityXBasicDecimalP_0", []), "getUnscaled_0", []), jr.JLong(0))) {
            True -> {
            let l_basic_decimal = jr.call(l_velocity_properties, "getVelocityXBasicDecimalP_0", [])
            jr.call(l_basic_decimal, "multiplyint_1", [l_nominator])
            jr.call(l_basic_decimal, "divideint_1", [l_denominator])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.ne(jr.call(jr.call(l_velocity_properties, "getVelocityYBasicDecimalP_0", []), "getUnscaled_0", []), jr.JLong(0))) {
            True -> {
            let l_basic_decimal = jr.call(l_velocity_properties, "getVelocityYBasicDecimalP_0", [])
            jr.call(l_basic_decimal, "multiplyint_1", [l_nominator])
            jr.call(l_basic_decimal, "divideint_1", [l_denominator])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m3__reducex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_velocity_properties, l_nominator, l_denominator] = jargs
    let l_nominator = jr.as_i(l_nominator)
    let l_denominator = jr.as_i(l_denominator)
        let l_basic_decimal = jr.call(l_velocity_properties, "getVelocityXBasicDecimalP_0", [])
        case jr.truth(jr.ne(jr.call(l_basic_decimal, "getUnscaled_0", []), jr.JLong(0))) {
            True -> {
            jr.call(l_basic_decimal, "multiplyint_1", [l_nominator])
            jr.call(l_basic_decimal, "divideint_1", [l_denominator])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m4__reducey(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_velocity_properties, l_nominator, l_denominator] = jargs
    let l_nominator = jr.as_i(l_nominator)
    let l_denominator = jr.as_i(l_denominator)
        case jr.truth(jr.ne(jr.call(jr.call(l_velocity_properties, "getVelocityYBasicDecimalP_0", []), "getUnscaled_0", []), jr.JLong(0))) {
            True -> {
            let l_basic_decimal = jr.call(l_velocity_properties, "getVelocityYBasicDecimalP_0", [])
            jr.call(l_basic_decimal, "multiplyint_1", [l_nominator])
            jr.call(l_basic_decimal, "divideint_1", [l_denominator])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("VelocityBehaviorBase", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DragVelocityBehavior",
        "org.allbinary.game.physics.velocity.DragVelocityBehavior",
        "VelocityBehaviorBase",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("reduce_3", ["BasicVelocityProperties", "int", "int"], False, c1_m2__reduce), 
            jr.Method("reduceX_3", ["BasicVelocityProperties", "int", "int"], False, c1_m3__reducex), 
            jr.Method("reduceY_3", ["BasicVelocityProperties", "int", "int"], False, c1_m4__reducey), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


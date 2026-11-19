// Generated Code Do Not Modify
// package org.allbinary.physics.movement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ConstantVelocityNotifyViewChangeMovement

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "axisMathVectorUtil", jr.call_static("AxisMathVectorUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_speed_basic_decimal, l_angle, l_other_angle] = jargs
    let l_angle = jr.as_i(l_angle)
    let l_other_angle = jr.as_i(l_other_angle)
        jr.set_field(this, "speedBasicDecimal", l_speed_basic_decimal)
        let l_angle_factory = jr.call_static("AngleFactory", "getInstance_0", [])
        jr.call(jr.get_field(this, "basicVelocityProperties"), "setVelocityWithBigDecimal_3", [l_speed_basic_decimal, jr.call(l_angle_factory, "getAt_1", [l_angle]), jr.call(l_angle_factory, "getAt_1", [l_other_angle])])
    jr.JNull
}

fn c1_m6__moveoutsideradius(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer, l_radius, l_angle, l_other_angle] = jargs
    let l_radius = jr.as_j(l_radius)
    let l_angle = jr.as_i(l_angle)
    let l_other_angle = jr.as_i(l_other_angle)
        let l_scale_factor_value = jr.as_i(jr.call(jr.get_field(this, "speedBasicDecimal"), "getScaledFactorValue_0", []))
        let l_x_vector = jr.as_i(jr.to_i(jr.div(jr.call(jr.get_field(this, "axisMathVectorUtil"), "calculateX_2", [l_radius, l_angle]), jr.to_j(l_scale_factor_value))))
        let l_y_vector = jr.as_i(jr.to_i(jr.div(jr.call(jr.get_field(this, "axisMathVectorUtil"), "calculateY_2", [l_radius, l_angle]), jr.to_j(l_scale_factor_value))))
        let l_z_vector = jr.as_i(jr.to_i(jr.div(jr.call(jr.get_field(this, "axisMathVectorUtil"), "calculateZ_2", [l_radius, l_other_angle]), jr.to_j(l_scale_factor_value))))
        jr.call(l_layer, "moveDXYZ_3", [l_x_vector, l_y_vector, l_z_vector])
    jr.JNull
}

fn c1_m7__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer] = jargs
        let l_x = jr.as_i(jr.call(jr.call(jr.get_field(this, "basicVelocityProperties"), "getVelocityXBasicDecimalP_0", []), "getScaled_0", []))
        let l_y = jr.as_i(jr.call(jr.call(jr.get_field(this, "basicVelocityProperties"), "getVelocityYBasicDecimalP_0", []), "getScaled_0", []))
        let l_z = jr.as_i(jr.call(jr.call(jr.get_field(this, "basicVelocityProperties"), "getVelocityZBasicDecimalP_0", []), "getScaled_0", []))
        jr.call(l_layer, "moveDXYZ_3", [l_x, l_y, l_z])
        case jr.truth(case jr.truth(case jr.truth(jr.ne(l_x, jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(l_y, jr.JInt(0)) }) { True -> jr.JBool(True) False -> jr.ne(l_z, jr.JInt(0)) }) {
            True -> {
            jr.call(l_layer, "onViewPositionChangeEvent_0", [])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m8__stop(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "basicVelocityProperties"), "zero_0", [])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Movement", this, [])
    c1_jfields(this)
        jr.set_field(this, "speedBasicDecimal", jr.get_static("BasicDecimal", "ZERO_BIGDECIMAL"))
        jr.set_field(this, "basicVelocityProperties", jr.new("BasicVelocityProperties", []))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ConstantVelocityNotifyViewChangeMovement",
        "org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement",
        "Movement",
        [],
        False,
        [#("basicVelocityProperties", jr.JNull), #("speedBasicDecimal", jr.JNull), #("axisMathVectorUtil", jr.JNull)],
        [],
        [
            jr.Method("init_3", ["BasicDecimal", "int", "int"], False, c1_m5__init), 
            jr.Method("moveOutsideRadius_4", ["AllBinaryLayer", "long", "int", "int"], False, c1_m6__moveoutsideradius), 
            jr.Method("process_1", ["AllBinaryGameLayer"], False, c1_m7__process), 
            jr.Method("stop_0", [], False, c1_m8__stop), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


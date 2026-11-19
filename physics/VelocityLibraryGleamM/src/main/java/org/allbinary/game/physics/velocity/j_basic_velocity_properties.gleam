// Generated Code Do Not Modify
// package org.allbinary.game.physics.velocity
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicVelocityProperties

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "axisMathVectorUtil", jr.call_static("AxisMathVectorUtil", "getInstance_0", []))
    jr.set_field(this, "directionUtil", jr.call_static("DirectionUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m7__zero(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "velocityXBasicDecimal"), "setint_1", [jr.JInt(0)])
        jr.call(jr.get_field(this, "velocityYBasicDecimal"), "setint_1", [jr.JInt(0)])
        jr.call(jr.get_field(this, "velocityZBasicDecimal"), "setint_1", [jr.JInt(0)])
    jr.JNull
}

fn c1_m8__getvelocityxbasicdecimalp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "velocityXBasicDecimal")
}

fn c1_m9__getvelocityybasicdecimalp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "velocityYBasicDecimal")
}

fn c1_m10__getvelocityzbasicdecimalp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "velocityZBasicDecimal")
}

fn c1_m12__setvelocitywithbigdecimalanddirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude_basic_decimal, l_direction, l_other_direction] = jargs
        let l_angle = jr.call(jr.get_field(this, "directionUtil"), "getAngle_1", [l_direction])
        let l_other_angle = jr.call(jr.get_field(this, "directionUtil"), "getAngle_1", [l_other_direction])
        jr.call(this, "setVelocityWithBigDecimal_3", [l_magnitude_basic_decimal, l_angle, l_other_angle])
    jr.JNull
}

fn c1_m13__setvelocitywithdirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_direction, l_other_direction] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
        let l_angle = jr.call(jr.get_field(this, "directionUtil"), "getAngle_1", [l_direction])
        let l_other_angle = jr.call(jr.get_field(this, "directionUtil"), "getAngle_1", [l_other_direction])
        jr.call(this, "setVelocity_3", [l_magnitude, l_angle, l_other_angle])
    jr.JNull
}

fn c1_m14__addvelocitywithbigdecimalanddirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude_basic_decimal, l_direction, l_other_direction] = jargs
        let l_angle = jr.call(jr.get_field(this, "directionUtil"), "getAngle_1", [l_direction])
        let l_other_angle = jr.call(jr.get_field(this, "directionUtil"), "getAngle_1", [l_other_direction])
        jr.call(this, "addVelocityWithBigDecimal_3", [l_magnitude_basic_decimal, l_angle, l_other_angle])
    jr.JNull
}

fn c1_m15__addvelocitywithdirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_direction, l_other_direction] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
        let l_angle = jr.call(jr.get_field(this, "directionUtil"), "getAngle_1", [l_direction])
        let l_other_angle = jr.call(jr.get_field(this, "directionUtil"), "getAngle_1", [l_other_direction])
        jr.call(this, "addVelocity_3", [l_magnitude, l_angle, l_other_angle])
    jr.JNull
}

fn c1_m16__setvelocitywithbigdecimal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude_basic_decimal, l_angle, l_other_angle] = jargs
        let l_magnitude = jr.as_j(jr.call(l_magnitude_basic_decimal, "getUnscaled_0", []))
        jr.call(this, "setVelocity_3", [l_magnitude, l_angle, l_other_angle])
    jr.JNull
}

fn c1_m17__addvelocitywithbigdecimal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude_basic_decimal, l_angle, l_other_angle] = jargs
        let l_magnitude = jr.as_j(jr.call(l_magnitude_basic_decimal, "getUnscaled_0", []))
        jr.call(this, "addVelocity_3", [l_magnitude, l_angle, l_other_angle])
    jr.JNull
}

fn c1_m18__setvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_angle, l_other_angle] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
        jr.call(this, "setVelocityi_3", [l_magnitude, jr.to_i(jr.call(l_angle, "getValue_0", [])), jr.to_i(jr.call(l_other_angle, "getValue_0", []))])
    jr.JNull
}

fn c1_m19__addvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_angle, l_other_angle] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
        jr.call(this, "addVelocityi_3", [l_magnitude, jr.to_i(jr.call(l_angle, "getValue_0", [])), jr.to_i(jr.call(l_other_angle, "getValue_0", []))])
    jr.JNull
}

fn c1_m20__setvelocityi(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_angle, l_other_angle] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
    let l_angle = jr.as_i(l_angle)
    let l_other_angle = jr.as_i(l_other_angle)
        let l_x_vector = jr.as_j(jr.div(jr.call(jr.get_field(this, "axisMathVectorUtil"), "calculateX_2", [l_magnitude, l_angle]), jr.to_j(jr.call(jr.get_field(this, "velocityXBasicDecimal"), "getScaledFactorValue_0", []))))
        let l_y_vector = jr.as_j(jr.div(jr.call(jr.get_field(this, "axisMathVectorUtil"), "calculateY_2", [l_magnitude, l_angle]), jr.to_j(jr.call(jr.get_field(this, "velocityYBasicDecimal"), "getScaledFactorValue_0", []))))
        let l_z_vector = jr.as_j(jr.div(jr.call(jr.get_field(this, "axisMathVectorUtil"), "calculateZ_2", [l_magnitude, l_other_angle]), jr.to_j(jr.call(jr.get_field(this, "velocityZBasicDecimal"), "getScaledFactorValue_0", []))))
        jr.call(jr.get_field(this, "velocityXBasicDecimal"), "setlong_1", [l_x_vector])
        jr.call(jr.get_field(this, "velocityYBasicDecimal"), "setlong_1", [l_y_vector])
        jr.call(jr.get_field(this, "velocityZBasicDecimal"), "setlong_1", [l_z_vector])
    jr.JNull
}

fn c1_m21__addvelocityi(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_angle, l_other_angle] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
    let l_angle = jr.as_i(l_angle)
    let l_other_angle = jr.as_i(l_other_angle)
        let l_x_vector = jr.as_j(jr.div(jr.call(jr.get_field(this, "axisMathVectorUtil"), "calculateX_2", [l_magnitude, l_angle]), jr.to_j(jr.call(jr.get_field(this, "velocityXBasicDecimal"), "getScaledFactorValue_0", []))))
        let l_y_vector = jr.as_j(jr.div(jr.call(jr.get_field(this, "axisMathVectorUtil"), "calculateY_2", [l_magnitude, l_angle]), jr.to_j(jr.call(jr.get_field(this, "velocityYBasicDecimal"), "getScaledFactorValue_0", []))))
        let l_z_vector = jr.as_j(jr.div(jr.call(jr.get_field(this, "axisMathVectorUtil"), "calculateZ_2", [l_magnitude, l_other_angle]), jr.to_j(jr.call(jr.get_field(this, "velocityZBasicDecimal"), "getScaledFactorValue_0", []))))
        jr.call(jr.get_field(this, "velocityXBasicDecimal"), "addlong_1", [l_x_vector])
        jr.call(jr.get_field(this, "velocityYBasicDecimal"), "addlong_1", [l_y_vector])
        jr.call(jr.get_field(this, "velocityZBasicDecimal"), "addlong_1", [l_z_vector])
    jr.JNull
}

fn c1_m22__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_common_seps = jr.call_static("CommonSeps", "getInstance_0", [])
        let l_position_strings = jr.call_static("PositionStrings", "getInstance_0", [])
        let l_string_buffer = jr.new("StringMaker", [])
        let l_string_util = jr.call_static("StringUtil", "getInstance_0", [])
        jr.call(l_string_buffer, "append_1", [jr.JStr("Velocity ")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "X_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [jr.get_field(this, "velocityXBasicDecimal")])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "Y_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [jr.get_field(this, "velocityYBasicDecimal")])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_common_seps, "SPACE")])
        jr.call(l_string_buffer, "append_1", [jr.get_field(l_position_strings, "Z_LABEL")])
        jr.call(l_string_buffer, "append_1", [jr.call(l_string_util, "toString_1", [jr.get_field(this, "velocityZBasicDecimal")])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "velocityXBasicDecimal", jr.new("BasicDecimal", [jr.JInt(0)]))
        jr.set_field(this, "velocityYBasicDecimal", jr.new("BasicDecimal", [jr.JInt(0)]))
        jr.set_field(this, "velocityZBasicDecimal", jr.new("BasicDecimal", [jr.JInt(0)]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicVelocityProperties",
        "org.allbinary.game.physics.velocity.BasicVelocityProperties",
        "Object",
        ["BasicVelocityInterface"],
        False,
        [#("logUtil", jr.JNull), #("velocityXBasicDecimal", jr.JNull), #("velocityYBasicDecimal", jr.JNull), #("velocityZBasicDecimal", jr.JNull), #("axisMathVectorUtil", jr.JNull), #("directionUtil", jr.JNull)],
        [],
        [
            jr.Method("zero_0", [], False, c1_m7__zero), 
            jr.Method("getVelocityXBasicDecimalP_0", [], False, c1_m8__getvelocityxbasicdecimalp), 
            jr.Method("getVelocityYBasicDecimalP_0", [], False, c1_m9__getvelocityybasicdecimalp), 
            jr.Method("getVelocityZBasicDecimalP_0", [], False, c1_m10__getvelocityzbasicdecimalp), 
            jr.Method("setVelocityWithBigDecimalAndDirection_3", ["BasicDecimal", "Direction", "Direction"], False, c1_m12__setvelocitywithbigdecimalanddirection), 
            jr.Method("setVelocityWithDirection_3", ["long", "Direction", "Direction"], False, c1_m13__setvelocitywithdirection), 
            jr.Method("addVelocityWithBigDecimalAndDirection_3", ["BasicDecimal", "Direction", "Direction"], False, c1_m14__addvelocitywithbigdecimalanddirection), 
            jr.Method("addVelocityWithDirection_3", ["long", "Direction", "Direction"], False, c1_m15__addvelocitywithdirection), 
            jr.Method("setVelocityWithBigDecimal_3", ["BasicDecimal", "Angle", "Angle"], False, c1_m16__setvelocitywithbigdecimal), 
            jr.Method("addVelocityWithBigDecimal_3", ["BasicDecimal", "Angle", "Angle"], False, c1_m17__addvelocitywithbigdecimal), 
            jr.Method("setVelocity_3", ["long", "Angle", "Angle"], False, c1_m18__setvelocity), 
            jr.Method("addVelocity_3", ["long", "Angle", "Angle"], False, c1_m19__addvelocity), 
            jr.Method("setVelocityi_3", ["long", "int", "int"], False, c1_m20__setvelocityi), 
            jr.Method("addVelocityi_3", ["long", "int", "int"], False, c1_m21__addvelocityi), 
            jr.Method("toString_0", [], False, c1_m22__tostring), 
            jr.Method("jinit_0", [], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}


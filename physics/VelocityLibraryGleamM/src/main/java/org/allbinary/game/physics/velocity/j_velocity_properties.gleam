// Generated Code Do Not Modify
// package org.allbinary.game.physics.velocity
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VelocityProperties

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("VelocityProperties", "NULL_VELOCITY_PROPERTIES", jr.new("VelocityProperties", [jr.JInt(0), jr.JInt(0)]))
    jr.JNull
}

fn c1_m5__getmaxforwardvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "maxForwardVelocity"))
}

fn c1_m6__setmaxforwardvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_forward_velocity] = jargs
    let l_max_forward_velocity = jr.as_i(l_max_forward_velocity)
        jr.set_field(this, "maxForwardVelocity", jr.as_i(l_max_forward_velocity))
    jr.JNull
}

fn c1_m7__getmaxreversevelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "maxReverseVelocity"))
}

fn c1_m8__setmaxreversevelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_reverse_velocity] = jargs
    let l_max_reverse_velocity = jr.as_i(l_max_reverse_velocity)
        jr.set_field(this, "maxReverseVelocity", jr.as_i(l_max_reverse_velocity))
    jr.JNull
}

fn c1_m9__limitmaxxyforwardvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "limitMaxXYVelocity_1", [jr.call(this, "getMaxForwardVelocity_0", [])])
    jr.JNull
}

fn c1_m10__limitmaxxyreversevelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "limitMaxXYVelocity_1", [jr.call(this, "getMaxReverseVelocity_0", [])])
    jr.JNull
}

fn c1_m11__limitmaxyforwardvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "limitMaxYVelocity_1", [jr.call(this, "getMaxForwardVelocity_0", [])])
    jr.JNull
}

fn c1_m12__limitmaxyreversevelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "limitMaxYVelocity_1", [jr.call(this, "getMaxReverseVelocity_0", [])])
    jr.JNull
}

fn c1_m13__limitmaxxforwardvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "limitMaxXVelocity_1", [jr.call(this, "getMaxForwardVelocity_0", [])])
    jr.JNull
}

fn c1_m14__limitmaxxreversevelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "limitMaxXVelocity_1", [jr.call(this, "getMaxReverseVelocity_0", [])])
    jr.JNull
}

fn c1_m15__isoverxymaxforwardvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(this, "isOverXYMaxVelocity_1", [jr.call(this, "getMaxForwardVelocity_0", [])])
}

fn c1_m16__isoverxymaxreversevelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(this, "isOverXYMaxVelocity_1", [jr.call(this, "getMaxReverseVelocity_0", [])])
}

fn c1_m17__limitxytoforwardandreversemaxvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "limitMaxXYForwardVelocity_0", [])
        jr.call(this, "limitMaxXYReverseVelocity_0", [])
    jr.JNull
}

fn c1_m18__limitmaxxyvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_velocity] = jargs
    let l_max_velocity = jr.as_i(l_max_velocity)
        jr.call(this, "limitMaxXVelocity_1", [l_max_velocity])
        jr.call(this, "limitMaxYVelocity_1", [l_max_velocity])
    jr.JNull
}

fn c1_m19__limitmaxpositiveyvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_velocity] = jargs
    let l_max_velocity = jr.as_i(l_max_velocity)
        case jr.truth(jr.gt(jr.call(jr.get_inherited(this, "VelocityProperties", "velocityYBasicDecimal"), "getUnscaled_0", []), jr.to_j(l_max_velocity))) {
            True -> {
            jr.call(jr.get_inherited(this, "VelocityProperties", "velocityYBasicDecimal"), "setint_1", [l_max_velocity])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m20__limitmaxnegativeyvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_velocity] = jargs
    let l_max_velocity = jr.as_i(l_max_velocity)
        case jr.truth(jr.lt(jr.call(jr.get_inherited(this, "VelocityProperties", "velocityYBasicDecimal"), "getUnscaled_0", []), jr.to_j(jr.neg(l_max_velocity)))) {
            True -> {
            jr.call(jr.get_inherited(this, "VelocityProperties", "velocityYBasicDecimal"), "setint_1", [jr.neg(l_max_velocity)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m21__limitmaxyvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_velocity] = jargs
    let l_max_velocity = jr.as_i(l_max_velocity)
        jr.call(this, "limitMaxPositiveYVelocity_1", [l_max_velocity])
        jr.call(this, "limitMaxNegativeYVelocity_1", [l_max_velocity])
    jr.JNull
}

fn c1_m22__limitmaxxvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_velocity] = jargs
    let l_max_velocity = jr.as_i(l_max_velocity)
        case jr.truth(jr.gt(jr.call(jr.get_inherited(this, "VelocityProperties", "velocityXBasicDecimal"), "getUnscaled_0", []), jr.to_j(l_max_velocity))) {
            True -> {
            jr.call(jr.get_inherited(this, "VelocityProperties", "velocityXBasicDecimal"), "setint_1", [l_max_velocity])
            Nil
        }
            False -> Nil
        }
        case jr.truth(jr.lt(jr.call(jr.get_inherited(this, "VelocityProperties", "velocityXBasicDecimal"), "getUnscaled_0", []), jr.to_j(jr.neg(l_max_velocity)))) {
            True -> {
            jr.call(jr.get_inherited(this, "VelocityProperties", "velocityXBasicDecimal"), "setint_1", [jr.neg(l_max_velocity)])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m23__isoverxymaxvelocity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_velocity] = jargs
    let l_max_velocity = jr.as_i(l_max_velocity)
    jr.method(fn() {
            case jr.truth(jr.gt(jr.call(jr.get_inherited(this, "VelocityProperties", "velocityXBasicDecimal"), "getUnscaled_0", []), jr.to_j(l_max_velocity))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.lt(jr.call(jr.get_inherited(this, "VelocityProperties", "velocityXBasicDecimal"), "getUnscaled_0", []), jr.to_j(jr.neg(l_max_velocity)))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.gt(jr.call(jr.get_inherited(this, "VelocityProperties", "velocityYBasicDecimal"), "getUnscaled_0", []), jr.to_j(l_max_velocity))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            case jr.truth(jr.lt(jr.call(jr.get_inherited(this, "VelocityProperties", "velocityYBasicDecimal"), "getUnscaled_0", []), jr.to_j(jr.neg(l_max_velocity)))) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_m24__setvelocityi(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_angle, l_other_angle] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
    let l_angle = jr.as_i(l_angle)
    let l_other_angle = jr.as_i(l_other_angle)
        jr.call_super("BasicVelocityProperties", this, "setVelocityi_3", [l_magnitude, l_angle, l_other_angle])
        jr.call(this, "limitXYToForwardAndReverseMaxVelocity_0", [])
    jr.JNull
}

fn c1_m25__addvelocityi(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_magnitude, l_angle, l_other_angle] = jargs
    let l_magnitude = jr.as_j(l_magnitude)
    let l_angle = jr.as_i(l_angle)
    let l_other_angle = jr.as_i(l_other_angle)
        jr.call_super("BasicVelocityProperties", this, "addVelocityi_3", [l_magnitude, l_angle, l_other_angle])
        jr.call(this, "limitXYToForwardAndReverseMaxVelocity_0", [])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_max_forward_velocity, l_max_reverse_velocity] = jargs
    let l_max_forward_velocity = jr.as_i(l_max_forward_velocity)
    let l_max_reverse_velocity = jr.as_i(l_max_reverse_velocity)
    jr.super_init("BasicVelocityProperties", this, [])
    c1_jfields(this)
        jr.call(this, "setMaxForwardVelocity_1", [l_max_forward_velocity])
        jr.call(this, "setMaxReverseVelocity_1", [l_max_reverse_velocity])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VelocityProperties",
        "org.allbinary.game.physics.velocity.VelocityProperties",
        "BasicVelocityProperties",
        ["VelocityInterface"],
        False,
        [#("maxForwardVelocity", jr.JInt(0)), #("maxReverseVelocity", jr.JInt(0))],
        [#("NULL_VELOCITY_PROPERTIES", jr.JNull)],
        [
            jr.Method("getMaxForwardVelocity_0", [], False, c1_m5__getmaxforwardvelocity), 
            jr.Method("setMaxForwardVelocity_1", ["int"], False, c1_m6__setmaxforwardvelocity), 
            jr.Method("getMaxReverseVelocity_0", [], False, c1_m7__getmaxreversevelocity), 
            jr.Method("setMaxReverseVelocity_1", ["int"], False, c1_m8__setmaxreversevelocity), 
            jr.Method("limitMaxXYForwardVelocity_0", [], False, c1_m9__limitmaxxyforwardvelocity), 
            jr.Method("limitMaxXYReverseVelocity_0", [], False, c1_m10__limitmaxxyreversevelocity), 
            jr.Method("limitMaxYForwardVelocity_0", [], False, c1_m11__limitmaxyforwardvelocity), 
            jr.Method("limitMaxYReverseVelocity_0", [], False, c1_m12__limitmaxyreversevelocity), 
            jr.Method("limitMaxXForwardVelocity_0", [], False, c1_m13__limitmaxxforwardvelocity), 
            jr.Method("limitMaxXReverseVelocity_0", [], False, c1_m14__limitmaxxreversevelocity), 
            jr.Method("isOverXYMaxForwardVelocity_0", [], False, c1_m15__isoverxymaxforwardvelocity), 
            jr.Method("isOverXYMaxReverseVelocity_0", [], False, c1_m16__isoverxymaxreversevelocity), 
            jr.Method("limitXYToForwardAndReverseMaxVelocity_0", [], False, c1_m17__limitxytoforwardandreversemaxvelocity), 
            jr.Method("limitMaxXYVelocity_1", ["int"], False, c1_m18__limitmaxxyvelocity), 
            jr.Method("limitMaxPositiveYVelocity_1", ["int"], False, c1_m19__limitmaxpositiveyvelocity), 
            jr.Method("limitMaxNegativeYVelocity_1", ["int"], False, c1_m20__limitmaxnegativeyvelocity), 
            jr.Method("limitMaxYVelocity_1", ["int"], False, c1_m21__limitmaxyvelocity), 
            jr.Method("limitMaxXVelocity_1", ["int"], False, c1_m22__limitmaxxvelocity), 
            jr.Method("isOverXYMaxVelocity_1", ["int"], False, c1_m23__isoverxymaxvelocity), 
            jr.Method("setVelocityi_3", ["long", "int", "int"], False, c1_m24__setvelocityi), 
            jr.Method("addVelocityi_3", ["long", "int", "int"], False, c1_m25__addvelocityi), 
            jr.Method("jinit_2", ["int", "int"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


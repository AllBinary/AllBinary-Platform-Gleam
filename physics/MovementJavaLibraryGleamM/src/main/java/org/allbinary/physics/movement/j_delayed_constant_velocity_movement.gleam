// Generated Code Do Not Modify
// package org.allbinary.physics.movement
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DelayedConstantVelocityMovement

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "timeDelayHelper", jr.new("TimeDelayHelper", [jr.JInt(60)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_speed_basic_decimal, l_angle, l_other_angle] = jargs
    let l_angle = jr.as_i(l_angle)
    let l_other_angle = jr.as_i(l_other_angle)
    jr.JNull
}

fn c1_m4__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer] = jargs
        case jr.truth(jr.call(jr.get_field(this, "timeDelayHelper"), "isTime_1", [jr.get_field(jr.call_static("GameTickTimeDelayHelperFactory", "getInstance_0", []), "startTime")])) {
            True -> {
            jr.call_super("BasicConstantVelocityMovement", this, "process_1", [l_layer])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_decimal, l_velocity_properties] = jargs
        jr.super_init("BasicConstantVelocityMovement", this, [l_basic_decimal, l_velocity_properties])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DelayedConstantVelocityMovement",
        "org.allbinary.physics.movement.DelayedConstantVelocityMovement",
        "BasicConstantVelocityMovement",
        [],
        False,
        [#("timeDelayHelper", jr.JNull)],
        [],
        [
            jr.Method("init_3", ["BasicDecimal", "int", "int"], False, c1_m3__init), 
            jr.Method("process_1", ["AllBinaryGameLayer"], False, c1_m4__process), 
            jr.Method("jinit_2", ["BasicDecimal", "BasicVelocityProperties"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullRotationAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createtotalangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle_info, l_total_angle, l_animation_behavior] = jargs
    let l_total_angle = jr.as_s(l_total_angle)
    jr.new("NullRotationAnimation", [l_angle_info, jr.call_static("CircularIndexUtil", "createInstance_1", [jr.div(l_total_angle, jr.call(jr.call(l_angle_info, "getAngleIncrementInfo_0", []), "getAngleIncrement_0", []))]), l_animation_behavior])
}

fn c1_m2__createquarter(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_behavior] = jargs
    jr.new("NullRotationAnimation", [jr.call_static("AngleInfo", "getInstance_1", [jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "QUARTER_TOTAL_ANGLE")]), jr.call_static("CircularIndexUtil", "createInstance_1", [jr.JInt(4)]), l_animation_behavior])
}

fn c1_m4__getanimationsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle_info, l_circular_index_util, l_animation_behavior] = jargs
        jr.super_init("RotationAnimation", this, [l_angle_info, l_circular_index_util, l_animation_behavior])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullRotationAnimation",
        "org.allbinary.animation.NullRotationAnimation",
        "RotationAnimation",
        [],
        False,
        [],
        [],
        [
            jr.Method("createTotalAngle_3", ["AngleInfo", "short", "AnimationBehavior"], True, c1_m1__createtotalangle), 
            jr.Method("createQuarter_1", ["AnimationBehavior"], True, c1_m2__createquarter), 
            jr.Method("getAnimationSize_0", [], False, c1_m4__getanimationsize), 
            jr.Method("jinit_3", ["AngleInfo", "CircularIndexUtil", "AnimationBehavior"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


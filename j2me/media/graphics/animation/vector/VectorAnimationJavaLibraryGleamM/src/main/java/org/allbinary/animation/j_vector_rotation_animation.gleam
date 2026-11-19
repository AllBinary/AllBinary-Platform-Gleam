// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorRotationAnimation

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__setframebydirection(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_direction] = jargs
        let l_angle = jr.call(jr.get_inherited(this, "VectorRotationAnimation", "directionUtil"), "getFrameAngle_1", [l_direction])
        jr.call(this, "adjustFrameToAngle_1", [l_angle])
    jr.JNull
}

fn c1_m3__setframetoangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle] = jargs
        jr.call(this, "adjustFrameToAngle_1", [l_angle])
    jr.JNull
}

fn c1_m4__setframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_index] = jargs
    let l_index = jr.as_i(l_index)
        jr.call_super("VectorBaseRotationAnimation", this, "setFrame_1", [l_index])
        jr.call(jr.get_inherited(this, "VectorRotationAnimation", "angleInfo"), "adjustAngle_1", [jr.call_inherited(this, "VectorRotationAnimation", "getFrame_0", [])])
    jr.JNull
}

fn c1_m5__adjustframe(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_angle] = jargs
    let l_new_angle = jr.as_s(l_new_angle)
        jr.call(this, "setFrame_1", [jr.call(jr.get_inherited(this, "VectorRotationAnimation", "frameUtil"), "getFrameForAngle_2", [l_new_angle, jr.to_i(jr.call(jr.call(jr.get_inherited(this, "VectorRotationAnimation", "angleInfo"), "getAngleIncrementInfo_0", []), "getAngleIncrement_0", []))])])
    jr.JNull
}

fn c1_m6__adjustframetoangle(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_angle] = jargs
        jr.call(this, "adjustFrame_1", [jr.call(l_new_angle, "getValue_0", [])])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_points, l_basic_color, l_animation_behavior] = jargs
        jr.super_init("VectorBaseRotationAnimation", this, [jr.call_static("AngleInfo", "getInstance_1", [jr.to_s(jr.div(jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE")), jr.alen(l_current_points)))]), l_current_points, l_basic_color, l_animation_behavior])
        c1_jfields(this)
        jr.call(jr.get_inherited(this, "VectorRotationAnimation", "angleInfo"), "adjustAngle_1", [jr.call_inherited(this, "VectorRotationAnimation", "getFrame_0", [])])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorRotationAnimation",
        "org.allbinary.animation.VectorRotationAnimation",
        "VectorBaseRotationAnimation",
        [],
        False,
        [],
        [],
        [
            jr.Method("setFrameByDirection_1", ["Direction"], False, c1_m2__setframebydirection), 
            jr.Method("setFrameToAngle_1", ["Angle"], False, c1_m3__setframetoangle), 
            jr.Method("setFrame_1", ["int"], False, c1_m4__setframe), 
            jr.Method("adjustFrame_1", ["short"], False, c1_m5__adjustframe), 
            jr.Method("adjustFrameToAngle_1", ["Angle"], False, c1_m6__adjustframetoangle), 
            jr.Method("jinit_3", ["intArrArrArr", "BasicColor", "AnimationBehavior"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


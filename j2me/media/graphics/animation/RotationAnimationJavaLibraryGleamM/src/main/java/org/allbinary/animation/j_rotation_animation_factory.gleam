// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RotationAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createfactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_total_angle = jr.as_s(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE"))
    jr.new("RotationAnimationFactory", [l_total_angle, jr.to_s(jr.div(jr.to_i(l_total_angle), jr.call(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "getGameControlFidelity_0", [])))])
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.call_static("NullRotationAnimation", "createTotalAngle_3", [jr.call_static("AngleInfo", "getInstance_1", [jr.get_field(this, "angleIncrement")]), jr.get_field(this, "totalAngle"), jr.call_static("AnimationBehavior", "getInstance_0", [])])
}

fn c1_m6__getinstanceanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.call_static("NullRotationAnimation", "createTotalAngle_3", [jr.call_static("AngleInfo", "getInstance_1", [jr.get_field(this, "angleIncrement")]), jr.get_field(this, "totalAngle"), jr.call_static("AnimationBehavior", "getInstance_0", [])])
}

fn c1_m7__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_total_angle, l_angle_increment] = jargs
    let l_total_angle = jr.as_s(l_total_angle)
    let l_angle_increment = jr.as_s(l_angle_increment)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "totalAngle", jr.as_s(l_total_angle))
        jr.set_field(this, "angleIncrement", jr.as_s(l_angle_increment))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RotationAnimationFactory",
        "org.allbinary.animation.RotationAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface", "ProceduralAnimationInterfaceFactoryInterface"],
        False,
        [#("totalAngle", jr.JShort(0)), #("angleIncrement", jr.JShort(0))],
        [],
        [
            jr.Method("createFactory_0", [], True, c1_m1__createfactory), 
            jr.Method("getInstance_1", ["int"], False, c1_m5__getinstance), 
            jr.Method("getInstanceAnimation_1", ["Animation"], False, c1_m6__getinstanceanimation), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m7__setinitialscale), 
            jr.Method("jinit_2", ["short", "short"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


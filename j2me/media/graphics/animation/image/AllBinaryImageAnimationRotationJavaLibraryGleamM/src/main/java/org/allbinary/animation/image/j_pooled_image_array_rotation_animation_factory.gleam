// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PooledImageArrayRotationAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "allBinaryImageRotationAnimationInfo", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_OBJECT"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createfactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_animation_behavior_factory] = jargs
        let l_total_angle = jr.as_i(jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE")))
        let l_angle_increment = jr.as_i(jr.div(l_total_angle, jr.call(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "getGameControlFidelity_0", [])))
    jr.new("PooledImageArrayRotationAnimationFactory", [l_image, jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", []), jr.neg(jr.shr(jr.call(l_image, "getWidth_0", []), jr.JInt(2))), jr.neg(jr.shr(jr.call(l_image, "getHeight_0", []), jr.JInt(2))), l_angle_increment, l_animation_behavior_factory])
}

fn c1_m2__createdxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        let l_total_angle = jr.as_i(jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE")))
        let l_angle_increment = jr.as_i(jr.div(l_total_angle, jr.call(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "getGameControlFidelity_0", [])))
    jr.new("PooledImageArrayRotationAnimationFactory", [l_image, jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", []), l_dx, l_dy, l_angle_increment, l_animation_behavior_factory])
}

fn c1_m6__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.call_static("AdjustedImageArrayRotationAnimation", "createAdjustedImageArrayRotationAnimationInfo_2", [jr.get_field(this, "allBinaryImageRotationAnimationInfo"), jr.call(jr.get_field(this, "animationBehaviorFactory"), "getOrCreateInstance_0", [])])
}

fn c1_m7__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_width, l_height, l_dx, l_dy, l_angle_increment, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    let l_angle_increment = jr.as_i(l_angle_increment)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "animationBehaviorFactory", l_animation_behavior_factory)
        let l_total_angle = jr.as_i(jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE")))
        let l_image_array = jr.call(jr.call_static("ImageToRotationImageArrayUtil", "getInstance_0", []), "generate_3", [l_image, l_angle_increment, l_total_angle])
        jr.set_field(this, "allBinaryImageRotationAnimationInfo", jr.new("ImageArrayRotationAnimationInfo", [l_image_array, l_angle_increment, l_total_angle, l_dx, l_dy]))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PooledImageArrayRotationAnimationFactory",
        "org.allbinary.animation.image.PooledImageArrayRotationAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("allBinaryImageRotationAnimationInfo", jr.JNull), #("animationBehaviorFactory", jr.JNull)],
        [],
        [
            jr.Method("createFactory_2", ["Image", "AnimationBehaviorFactory"], True, c1_m1__createfactory), 
            jr.Method("createDXY_4", ["Image", "int", "int", "AnimationBehaviorFactory"], True, c1_m2__createdxy), 
            jr.Method("getInstance_1", ["int"], False, c1_m6__getinstance), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m7__setinitialscale), 
            jr.Method("jinit_7", ["Image", "int", "int", "int", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


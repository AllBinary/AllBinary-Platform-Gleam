// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorToImageArrayRotationAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "imageArray", jr.get_static("NullImage", "NULL_IMAGE_ARRAY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_angle_factory = jr.call_static("AngleFactory", "getInstance_0", [])
        jr.set_field(this, "angleIncrement", jr.as_i(jr.div(jr.to_i(jr.get_field(l_angle_factory, "TOTAL_ANGLE")), jr.call(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "getGameControlFidelity_0", []))))
        jr.set_field(this, "imageArray", jr.call(jr.call_static("ImageToRotationImageArrayUtil", "getInstance_0", []), "generate_3", [jr.call_inherited(this, "VectorToImageArrayRotationAnimationFactory", "getImage_0", []), jr.call(this, "getAngleIncrement_0", []), jr.to_i(jr.get_field(l_angle_factory, "TOTAL_ANGLE"))]))
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.ne(jr.get_field(jr.get_inherited(this, "VectorToImageArrayRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(jr.get_field(jr.get_inherited(this, "VectorToImageArrayRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.JInt(0)) }) {
            True -> {
            jr.ret(jr.new("AdjustedImageArrayRotationAnimation", [jr.get_field(this, "imageArray"), jr.call_static("AngleInfo", "getInstance_1", [jr.to_s(jr.call(this, "getAngleIncrement_0", []))]), jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE")), jr.get_field(jr.get_inherited(this, "VectorToImageArrayRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.get_field(jr.get_inherited(this, "VectorToImageArrayRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.call(jr.get_inherited(this, "VectorToImageArrayRotationAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
            False -> {
            jr.ret(jr.call_static("AdjustedImageArrayRotationAnimation", "createAnimation_4", [jr.get_field(this, "imageArray"), jr.call_static("AngleInfo", "getInstance_1", [jr.to_s(jr.get_field(this, "angleIncrement"))]), jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE")), jr.call(jr.get_inherited(this, "VectorToImageArrayRotationAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m6__getangleincrement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "angleIncrement"))
}

fn c1_m7__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_vector_info, l_basic_color, l_animation_behavior_factory] = jargs
        jr.super_init("BaseImageAnimationFactory", this, [jr.call(jr.call_static("AnimationFrameToImageUtil", "getInstance_0", []), "getInstanceTranslate_3", [jr.call(l_vector_info, "getWidth_0", []), jr.call(l_vector_info, "getHeight_0", []), jr.call_static("VectorAnimation", "createVectorAnimation_3", [jr.call(l_vector_info, "getPoints_0", []), l_basic_color, jr.call(l_animation_behavior_factory, "getOrCreateInstance_0", [])])]), jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), jr.JInt(0), jr.JInt(0), jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        c1_jfields(this)
        jr.call(this, "init_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorToImageArrayRotationAnimationFactory",
        "org.allbinary.animation.image.VectorToImageArrayRotationAnimationFactory",
        "BaseImageAnimationFactory",
        [],
        False,
        [#("imageArray", jr.JNull), #("angleIncrement", jr.JInt(0))],
        [],
        [
            jr.Method("init_0", [], False, c1_m4__init), 
            jr.Method("getInstance_1", ["int"], False, c1_m5__getinstance), 
            jr.Method("getAngleIncrement_0", [], False, c1_m6__getangleincrement), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m7__setinitialscale), 
            jr.Method("jinit_3", ["VectorInfo", "BasicColor", "AnimationBehaviorFactory"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LeftToRightImageAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.method(fn() {
            let l_scaled_image = jr.call(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "animationFactoryImageScaleUtil"), "createImage_5", [jr.call_inherited(this, "LeftToRightImageAnimationFactory", "getImage_0", []), jr.get_field(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "animationFactoryInitializationVisitor"), "width"), jr.get_field(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "animationFactoryInitializationVisitor"), "height"), jr.get_field(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "scaleProperties"), "scaleWidth"), jr.get_field(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "scaleProperties"), "scaleHeight")])
            case jr.truth(case jr.truth(jr.ne(jr.get_field(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(jr.get_field(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.JInt(0)) }) {
            True -> {
            jr.call(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "animationFactoryImageScaleUtil"), "processAdjust_1", [this])
            jr.ret(jr.new("AdjustedLeftToRightImageAnimation", [l_scaled_image, jr.call_inherited(this, "LeftToRightImageAnimationFactory", "getSequenceArray_0", []), jr.get_field(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.get_field(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.call(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
            False -> {
            jr.ret(jr.new("LeftToRightImageAnimation", [l_scaled_image, jr.call_inherited(this, "LeftToRightImageAnimationFactory", "getSequenceArray_0", []), jr.call(jr.get_inherited(this, "LeftToRightImageAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_sequence_array, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.super_init("BaseImageAnimationFactory", this, [l_image, l_sequence_array, jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", []), l_dx, l_dy, l_animation_behavior_factory])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LeftToRightImageAnimationFactory",
        "org.allbinary.animation.image.LeftToRightImageAnimationFactory",
        "BaseImageAnimationFactory",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m2__getinstance), 
            jr.Method("jinit_5", ["Image", "intArr", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


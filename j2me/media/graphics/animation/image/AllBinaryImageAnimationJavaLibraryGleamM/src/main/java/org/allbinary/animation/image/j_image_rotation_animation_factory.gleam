// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageRotationAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.ne(jr.get_field(jr.get_inherited(this, "ImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(jr.get_field(jr.get_inherited(this, "ImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.JInt(0)) }) {
            True -> {
            jr.call(jr.get_inherited(this, "ImageRotationAnimationFactory", "animationFactoryImageScaleUtil"), "processAdjust_1", [this])
            jr.ret(jr.new("AdjustedImageBaseRotationAnimation", [jr.call_inherited(this, "ImageRotationAnimationFactory", "getImage_0", []), jr.call_static("AngleInfo", "getInstance_1", [jr.get_field(this, "angleIncrement")]), jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE"), jr.get_field(jr.get_inherited(this, "ImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.get_field(jr.get_inherited(this, "ImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.call(jr.get_inherited(this, "ImageRotationAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
            False -> {
            jr.ret(jr.new("ImageBaseRotationAnimation", [jr.call_inherited(this, "ImageRotationAnimationFactory", "getImage_0", []), jr.call_static("AngleInfo", "getInstance_1", [jr.get_field(this, "angleIncrement")]), jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE"), jr.call(jr.get_inherited(this, "ImageRotationAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m4__getangleincrementp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_s(jr.get_field(this, "angleIncrement"))
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_width, l_height, l_dx, l_dy, l_angle_increment, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    let l_angle_increment = jr.as_s(l_angle_increment)
        jr.super_init("BaseImageAnimationFactory", this, [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), l_width, l_height, jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        c1_jfields(this)
        jr.set_field(this, "angleIncrement", jr.as_s(l_angle_increment))
        jr.set_field(jr.get_inherited(this, "ImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx", jr.as_i(l_dx))
        jr.set_field(jr.get_inherited(this, "ImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy", jr.as_i(l_dy))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageRotationAnimationFactory",
        "org.allbinary.animation.image.ImageRotationAnimationFactory",
        "BaseImageAnimationFactory",
        [],
        False,
        [#("angleIncrement", jr.JShort(0))],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m3__getinstance), 
            jr.Method("getAngleIncrementP_0", [], False, c1_m4__getangleincrementp), 
            jr.Method("jinit_7", ["Image", "int", "int", "int", "int", "short", "AnimationBehaviorFactory"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


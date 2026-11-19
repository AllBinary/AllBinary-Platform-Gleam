// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinaryArrayImageRotationAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "imageArray", jr.get_static("NullImage", "NULL_IMAGE_ARRAY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__createfactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_dx, l_dy] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        let l_array_image_rotation_animation_factory = jr.new("AllBinaryArrayImageRotationAnimationFactory", [l_image, jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", []), jr.div(jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE")), jr.call(jr.call_static("GameConfigurationCentral", "getInstance_0", []), "getGameControlFidelity_0", [])), jr.call_static("AnimationBehaviorFactory", "getInstance_0", [])])
        jr.call(l_array_image_rotation_animation_factory, "initDXY_2", [l_dx, l_dy])
    l_array_image_rotation_animation_factory
}

fn c1_m4__createfactorya(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_dx, l_dy, l_angle_increment] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    let l_angle_increment = jr.as_i(l_angle_increment)
        let l_array_image_rotation_animation_factory = jr.new("AllBinaryArrayImageRotationAnimationFactory", [l_image, jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", []), l_angle_increment, jr.call_static("AnimationBehaviorFactory", "getInstance_0", [])])
        jr.call(l_array_image_rotation_animation_factory, "initDXY_2", [l_dx, l_dy])
    l_array_image_rotation_animation_factory
}

fn c1_m6__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(this, "setImageArray_1", [jr.call(jr.call_static("ImageToRotationImageArrayUtil", "getInstance_0", []), "generate_3", [jr.call_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "getImage_0", []), jr.call(this, "getAngleIncrement_0", []), jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE"))])])
    jr.JNull
}

fn c1_m7__initdxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx, l_dy] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.set_field(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx", jr.as_i(l_dx))
        jr.set_field(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy", jr.as_i(l_dy))
        jr.set_field(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "originalDx", jr.as_i(l_dx))
        jr.set_field(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "originalDy", jr.as_i(l_dy))
    jr.JNull
}

fn c1_m8__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.method(fn() {
            let l_scaled_image_array = jr.new_array("L", 1, [jr.alen(jr.get_field(this, "imageArray"))])
            let l_size = jr.as_i(jr.alen(l_scaled_image_array))
            let l_image = jr.call_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "getImage_0", [])
            {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(l_scaled_image_array, jr.get(l_index), jr.call(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationFactoryImageScaleUtil"), "createImage_5", [l_image, jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", []), jr.get_field(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "scaleProperties"), "scaleWidth"), jr.get_field(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "scaleProperties"), "scaleHeight")]))
            Nil
        })
            Nil
        }
            case jr.truth(case jr.truth(jr.ne(jr.get_field(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(jr.get_field(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.JInt(0)) }) {
            True -> {
            jr.call(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationFactoryImageScaleUtil"), "processAdjust_1", [this])
            jr.ret(jr.new("AdjustedImageArrayRotationAnimation", [l_scaled_image_array, jr.call_static("AngleInfo", "getInstance_1", [jr.to_s(jr.call(this, "getAngleIncrement_0", []))]), jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE")), jr.get_field(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.get_field(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.call(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
            False -> {
            jr.ret(jr.new("ImageArrayRotationAnimation", [l_scaled_image_array, jr.call_static("AngleInfo", "getInstance_1", [jr.to_s(jr.call(this, "getAngleIncrement_0", []))]), jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE")), jr.call(jr.get_inherited(this, "AllBinaryArrayImageRotationAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m9__setimagearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array] = jargs
        jr.set_field(this, "imageArray", l_image_array)
    jr.JNull
}

fn c1_m10__getangleincrement(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "angleIncrement"))
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_width, l_height, l_angle_increment, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_angle_increment = jr.as_i(l_angle_increment)
        jr.super_init("BaseImageAnimationFactory", this, [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), l_width, l_height, jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        c1_jfields(this)
        jr.set_field(this, "angleIncrement", jr.as_i(l_angle_increment))
        jr.call(this, "init_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinaryArrayImageRotationAnimationFactory",
        "org.allbinary.animation.image.AllBinaryArrayImageRotationAnimationFactory",
        "BaseImageAnimationFactory",
        [],
        False,
        [#("imageArray", jr.JNull), #("angleIncrement", jr.JInt(0))],
        [],
        [
            jr.Method("createFactory_3", ["Image", "int", "int"], True, c1_m3__createfactory), 
            jr.Method("createFactoryA_4", ["Image", "int", "int", "int"], True, c1_m4__createfactorya), 
            jr.Method("init_0", [], False, c1_m6__init), 
            jr.Method("initDXY_2", ["int", "int"], False, c1_m7__initdxy), 
            jr.Method("getInstance_1", ["int"], False, c1_m8__getinstance), 
            jr.Method("setImageArray_1", ["ImageArr"], False, c1_m9__setimagearray), 
            jr.Method("getAngleIncrement_0", [], False, c1_m10__getangleincrement), 
            jr.Method("jinit_5", ["Image", "int", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


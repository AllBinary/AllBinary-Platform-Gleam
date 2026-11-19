// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createfactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
    jr.new("ImageAnimationFactory", [l_image, jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", []), jr.JInt(0), jr.JInt(0), jr.call_static("AnimationBehaviorFactory", "getInstance_0", [])])
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.method(fn() {
            let l_scaled_image = jr.cell(jr.call(jr.get_inherited(this, "ImageAnimationFactory", "animationFactoryImageScaleUtil"), "createImage_5", [jr.call_inherited(this, "ImageAnimationFactory", "getImage_0", []), jr.get_field(jr.get_inherited(this, "ImageAnimationFactory", "animationFactoryInitializationVisitor"), "width"), jr.get_field(jr.get_inherited(this, "ImageAnimationFactory", "animationFactoryInitializationVisitor"), "height"), jr.get_field(jr.get_inherited(this, "ImageAnimationFactory", "scaleProperties"), "scaleWidth"), jr.get_field(jr.get_inherited(this, "ImageAnimationFactory", "scaleProperties"), "scaleHeight")]))
            let l_open_g_l_util = jr.call_static("OpenGLUtil", "getInstance_0", [])
            jr.set(l_scaled_image, jr.call(l_open_g_l_util, "addImage_1", [jr.get(l_scaled_image)]))
            case jr.truth(case jr.truth(jr.ne(jr.get_field(jr.get_inherited(this, "ImageAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(jr.get_field(jr.get_inherited(this, "ImageAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.JInt(0)) }) {
            True -> {
            jr.call(jr.get_inherited(this, "ImageAnimationFactory", "animationFactoryImageScaleUtil"), "processAdjust_1", [this])
            jr.ret(jr.new("AdjustedImageAnimation", [jr.get(l_scaled_image), jr.get_field(jr.get_inherited(this, "ImageAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.get_field(jr.get_inherited(this, "ImageAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.call(jr.get_inherited(this, "ImageAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
            False -> {
            jr.ret(jr.new("ImageAnimation", [jr.get(l_scaled_image), jr.call(jr.get_inherited(this, "ImageAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_width, l_height, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.super_init("BaseImageAnimationFactory", this, [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), l_width, l_height, l_dx, l_dy, l_animation_behavior_factory])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageAnimationFactory",
        "org.allbinary.animation.image.ImageAnimationFactory",
        "BaseImageAnimationFactory",
        [],
        False,
        [],
        [],
        [
            jr.Method("createFactory_1", ["Image"], True, c1_m1__createfactory), 
            jr.Method("getInstance_1", ["int"], False, c1_m3__getinstance), 
            jr.Method("jinit_6", ["Image", "int", "int", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


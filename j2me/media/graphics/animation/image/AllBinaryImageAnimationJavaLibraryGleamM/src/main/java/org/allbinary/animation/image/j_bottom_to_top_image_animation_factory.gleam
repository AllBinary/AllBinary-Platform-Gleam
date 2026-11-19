// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BottomToTopImageAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
        let l_scaled_image = jr.call(jr.get_inherited(this, "BottomToTopImageAnimationFactory", "animationFactoryImageScaleUtil"), "createImage_5", [jr.call_inherited(this, "BottomToTopImageAnimationFactory", "getImage_0", []), jr.get_field(jr.get_inherited(this, "BottomToTopImageAnimationFactory", "animationFactoryInitializationVisitor"), "width"), jr.get_field(jr.get_inherited(this, "BottomToTopImageAnimationFactory", "animationFactoryInitializationVisitor"), "height"), jr.get_field(jr.get_inherited(this, "BottomToTopImageAnimationFactory", "scaleProperties"), "scaleWidth"), jr.get_field(jr.get_inherited(this, "BottomToTopImageAnimationFactory", "scaleProperties"), "scaleHeight")])
    jr.new("BottomToTopImageAnimation", [l_scaled_image, jr.call(jr.get_inherited(this, "BottomToTopImageAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])])
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_animation_behavior_factory] = jargs
        jr.super_init("BaseImageAnimationFactory", this, [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), jr.call(l_image, "getWidth_0", []), jr.call(l_image, "getHeight_0", []), jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BottomToTopImageAnimationFactory",
        "org.allbinary.animation.image.BottomToTopImageAnimationFactory",
        "BaseImageAnimationFactory",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m2__getinstance), 
            jr.Method("jinit_2", ["Image", "AnimationBehaviorFactory"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


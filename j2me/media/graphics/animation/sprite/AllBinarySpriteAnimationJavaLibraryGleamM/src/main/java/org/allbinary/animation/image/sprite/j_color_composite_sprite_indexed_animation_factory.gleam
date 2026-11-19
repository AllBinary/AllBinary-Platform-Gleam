// Generated Code Do Not Modify
// package org.allbinary.animation.image.sprite
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ColorCompositeSpriteIndexedAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "animationFactorySpriteScaleUtil", jr.call_static("AnimationFactorySpriteScaleUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
        let l_sprite = jr.call(jr.get_field(this, "animationFactorySpriteScaleUtil"), "createImage_5", [jr.call_inherited(this, "ColorCompositeSpriteIndexedAnimationFactory", "getImage_0", []), jr.get_field(jr.get_inherited(this, "ColorCompositeSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "width"), jr.get_field(jr.get_inherited(this, "ColorCompositeSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "height"), jr.get_field(jr.get_inherited(this, "ColorCompositeSpriteIndexedAnimationFactory", "scaleProperties"), "scaleWidth"), jr.get_field(jr.get_inherited(this, "ColorCompositeSpriteIndexedAnimationFactory", "scaleProperties"), "scaleHeight")])
    jr.new("SpriteIndexedAnimation", [l_sprite, jr.call_inherited(this, "ColorCompositeSpriteIndexedAnimationFactory", "getImage_0", []), jr.get_field(this, "basicColorArray"), jr.call(jr.get_inherited(this, "ColorCompositeSpriteIndexedAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])])
}

fn c1_m5__getinstanceanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.call(this, "getInstance_1", [jr.JInt(0)])
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_basic_color_array, l_width, l_height, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        jr.super_init("BaseImageAnimationFactory", this, [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), l_width, l_height, jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        c1_jfields(this)
        jr.set_field(this, "basicColorArray", l_basic_color_array)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ColorCompositeSpriteIndexedAnimationFactory",
        "org.allbinary.animation.image.sprite.ColorCompositeSpriteIndexedAnimationFactory",
        "BaseImageAnimationFactory",
        ["ProceduralAnimationInterfaceFactoryInterface"],
        False,
        [#("animationFactorySpriteScaleUtil", jr.JNull), #("basicColorArray", jr.JNull)],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m4__getinstance), 
            jr.Method("getInstanceAnimation_1", ["Animation"], False, c1_m5__getinstanceanimation), 
            jr.Method("jinit_5", ["Image", "BasicColorArr", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


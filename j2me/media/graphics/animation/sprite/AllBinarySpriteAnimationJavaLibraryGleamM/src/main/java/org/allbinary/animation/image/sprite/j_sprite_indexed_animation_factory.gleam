// Generated Code Do Not Modify
// package org.allbinary.animation.image.sprite
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SpriteIndexedAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "animationFactorySpriteScaleUtil", jr.call_static("AnimationFactorySpriteScaleUtil", "getInstance_0", []))
    jr.set_field(this, "basicColorArray", jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ZERO_ARRAY"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createcwhdxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_basic_color_array, l_width, l_height, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.new("SpriteIndexedAnimationFactory", [l_image, l_basic_color_array, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), l_width, l_height, l_dx, l_dy, l_animation_behavior_factory])
}

fn c1_m2__createcwh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_basic_color_array, l_width, l_height, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        let l_sprite_indexed_animation_factory = jr.new("SpriteIndexedAnimationFactory", [l_image, l_basic_color_array, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), l_width, l_height, jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        jr.call(l_sprite_indexed_animation_factory, "initHWH_0", [])
    l_sprite_indexed_animation_factory
}

fn c1_m3__createwh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_width, l_height, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.new("SpriteIndexedAnimationFactory", [l_image, jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ZERO_ARRAY"), jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), l_width, l_height, jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
}

fn c1_m7__inithwh(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dx", jr.as_i(jr.neg(jr.shr(jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "width"), jr.JInt(2)))))
        jr.set_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dy", jr.as_i(jr.neg(jr.shr(jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "height"), jr.JInt(2)))))
        case jr.truth(jr.call_static("AndroidUtil", "isAndroid_0", [])) {
            True -> {
            jr.compound(fn() { jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dx") }, fn(jv) { jr.add(jv, jr.JInt(3)) }, fn(jv) { jr.set_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dx", jv) })
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_m8__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.method(fn() {
            let l_sprite = jr.call(jr.get_field(this, "animationFactorySpriteScaleUtil"), "createImage_5", [jr.call_inherited(this, "SpriteIndexedAnimationFactory", "getImage_0", []), jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "width"), jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "height"), jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "scaleProperties"), "scaleWidth"), jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "scaleProperties"), "scaleHeight")])
            case jr.truth(case jr.truth(jr.ne(jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.JInt(0)) }) {
            True -> {
            jr.ret(jr.new("AdjustedSpriteIndexedAnimation", [l_sprite, jr.call_inherited(this, "SpriteIndexedAnimationFactory", "getImage_0", []), jr.get_field(this, "basicColorArray"), jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.get_field(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.call(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
            False -> {
            jr.ret(jr.new("SpriteIndexedAnimation", [l_sprite, jr.call_inherited(this, "SpriteIndexedAnimationFactory", "getImage_0", []), jr.get_field(this, "basicColorArray"), jr.call(jr.get_inherited(this, "SpriteIndexedAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m9__getinstanceanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.call(this, "getInstance_1", [jr.JInt(0)])
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_basic_color_array, l_sequence_array, l_width, l_height, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.super_init("BaseImageAnimationFactory", this, [l_image, l_sequence_array, l_width, l_height, l_dx, l_dy, l_animation_behavior_factory])
        c1_jfields(this)
        jr.set_field(this, "basicColorArray", l_basic_color_array)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SpriteIndexedAnimationFactory",
        "org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory",
        "BaseImageAnimationFactory",
        ["ProceduralAnimationInterfaceFactoryInterface"],
        False,
        [#("animationFactorySpriteScaleUtil", jr.JNull), #("basicColorArray", jr.JNull)],
        [],
        [
            jr.Method("createCWHDXY_7", ["Image", "BasicColorArr", "int", "int", "int", "int", "AnimationBehaviorFactory"], True, c1_m1__createcwhdxy), 
            jr.Method("createCWH_5", ["Image", "BasicColorArr", "int", "int", "AnimationBehaviorFactory"], True, c1_m2__createcwh), 
            jr.Method("createWH_4", ["Image", "int", "int", "AnimationBehaviorFactory"], True, c1_m3__createwh), 
            jr.Method("initHWH_0", [], False, c1_m7__inithwh), 
            jr.Method("getInstance_1", ["int"], False, c1_m8__getinstance), 
            jr.Method("getInstanceAnimation_1", ["Animation"], False, c1_m9__getinstanceanimation), 
            jr.Method("jinit_8", ["Image", "BasicColorArr", "intArr", "int", "int", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.animation.image.sprite
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AllBinarySpriteRotationAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "animationFactorySpriteScaleUtil", jr.call_static("AnimationFactorySpriteScaleUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createwhdy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        let l_sprite_rotation_animation_factory = jr.new("AllBinarySpriteRotationAnimationFactory", [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), jr.shr(jr.call(l_image, "getHeight_0", []), jr.JInt(2)), jr.shr(jr.call(l_image, "getHeight_0", []), jr.JInt(2)), jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        jr.call(l_sprite_rotation_animation_factory, "initWH_2", [l_dx, l_dy])
    l_sprite_rotation_animation_factory
}

fn c1_m2__createwh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_animation_behavior_factory] = jargs
    jr.call_static("AllBinarySpriteRotationAnimationFactory", "createWHDY_4", [l_image, jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
}

fn c1_m3__createdxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        let l_sprite_rotation_animation_factory = jr.new("AllBinarySpriteRotationAnimationFactory", [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), jr.call(l_image, "getHeight_0", []), jr.call(l_image, "getHeight_0", []), jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        jr.call(l_sprite_rotation_animation_factory, "init_2", [l_dx, l_dy])
    l_sprite_rotation_animation_factory
}

fn c1_m4__createdxyq(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        let l_sprite_rotation_animation_factory = jr.new("AllBinarySpriteRotationAnimationFactory", [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), jr.shr(jr.call(l_image, "getHeight_0", []), jr.JInt(2)), jr.shr(jr.call(l_image, "getHeight_0", []), jr.JInt(2)), jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        jr.call(l_sprite_rotation_animation_factory, "init_2", [l_dx, l_dy])
    l_sprite_rotation_animation_factory
}

fn c1_m5__createq(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_animation_behavior_factory] = jargs
    jr.new("AllBinarySpriteRotationAnimationFactory", [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), jr.shr(jr.call(l_image, "getHeight_0", []), jr.JInt(2)), jr.shr(jr.call(l_image, "getHeight_0", []), jr.JInt(2)), jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
}

fn c1_m6__createwhf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_animation_behavior_factory] = jargs
    jr.new("AllBinarySpriteRotationAnimationFactory", [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), jr.call(l_image, "getHeight_0", []), jr.call(l_image, "getHeight_0", []), jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
}

fn c1_m9__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx, l_dy] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.set_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx", jr.as_i(l_dx))
        jr.set_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy", jr.as_i(l_dy))
    jr.JNull
}

fn c1_m10__initwh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx, l_dy] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.call(this, "init_2", [l_dx, l_dy])
        jr.compound(fn() { jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx") }, fn(jv) { jr.add(jv, jr.div(jr.neg(jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "width")), jr.JInt(5))) }, fn(jv) { jr.set_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx", jv) })
        jr.compound(fn() { jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy") }, fn(jv) { jr.add(jv, jr.div(jr.neg(jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "height")), jr.JInt(5))) }, fn(jv) { jr.set_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy", jv) })
    jr.JNull
}

fn c1_m11__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.method(fn() {
            let l_sprite = jr.call(jr.get_field(this, "animationFactorySpriteScaleUtil"), "createImage_5", [jr.call_inherited(this, "AllBinarySpriteRotationAnimationFactory", "getImage_0", []), jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "width"), jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "height"), jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "scaleProperties"), "scaleWidth"), jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "scaleProperties"), "scaleHeight")])
            case jr.truth(case jr.truth(jr.ne(jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.JInt(0)) }) {
            True -> {
            jr.ret(jr.new("AllBinaryAdjustedSpriteRotationAnimation", [l_sprite, jr.call_inherited(this, "AllBinarySpriteRotationAnimationFactory", "getImage_0", []), jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.get_field(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
            False -> {
            jr.ret(jr.new("AllBinarySpriteRotationAnimation", [l_sprite, jr.call_inherited(this, "AllBinarySpriteRotationAnimationFactory", "getImage_0", []), jr.call(jr.get_inherited(this, "AllBinarySpriteRotationAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m12__getinstanceanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.call(this, "getInstance_1", [jr.JInt(0)])
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_sequence_array, l_width, l_height, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.super_init("BaseImageAnimationFactory", this, [l_image, l_sequence_array, l_width, l_height, l_dx, l_dy, l_animation_behavior_factory])
        c1_jfields(this)
        case jr.truth(jr.eq(l_animation_behavior_factory, jr.call_static("AnimationBehaviorFactory", "getInstance_0", []))) {
            True -> {
            jr.call_static("ForcedLogUtil", "log_2", [jr.JStr("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), this])
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AllBinarySpriteRotationAnimationFactory",
        "org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimationFactory",
        "BaseImageAnimationFactory",
        ["ProceduralAnimationInterfaceFactoryInterface"],
        False,
        [#("animationFactorySpriteScaleUtil", jr.JNull)],
        [],
        [
            jr.Method("createWHDY_4", ["Image", "int", "int", "AnimationBehaviorFactory"], True, c1_m1__createwhdy), 
            jr.Method("createWH_2", ["Image", "AnimationBehaviorFactory"], True, c1_m2__createwh), 
            jr.Method("createDXY_4", ["Image", "int", "int", "AnimationBehaviorFactory"], True, c1_m3__createdxy), 
            jr.Method("createDXYQ_4", ["Image", "int", "int", "AnimationBehaviorFactory"], True, c1_m4__createdxyq), 
            jr.Method("createQ_2", ["Image", "AnimationBehaviorFactory"], True, c1_m5__createq), 
            jr.Method("createWHF_2", ["Image", "AnimationBehaviorFactory"], True, c1_m6__createwhf), 
            jr.Method("init_2", ["int", "int"], False, c1_m9__init), 
            jr.Method("initWH_2", ["int", "int"], False, c1_m10__initwh), 
            jr.Method("getInstance_1", ["int"], False, c1_m11__getinstance), 
            jr.Method("getInstanceAnimation_1", ["Animation"], False, c1_m12__getinstanceanimation), 
            jr.Method("jinit_7", ["Image", "intArr", "int", "int", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}


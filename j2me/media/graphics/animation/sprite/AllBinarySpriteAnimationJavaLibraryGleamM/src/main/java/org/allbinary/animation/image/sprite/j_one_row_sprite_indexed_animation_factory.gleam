// Generated Code Do Not Modify
// package org.allbinary.animation.image.sprite
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OneRowSpriteIndexedAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "animationFactorySpriteScaleUtil", jr.call_static("AnimationFactorySpriteScaleUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createfactorydx(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_dx, l_animation_behavior_factory] = jargs
    let l_dx = jr.as_i(l_dx)
        let l_one_row_sprite_indexed_animation_factory = jr.new("OneRowSpriteIndexedAnimationFactory", [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), jr.call(l_image, "getHeight_0", []), jr.call(l_image, "getHeight_0", []), jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        jr.call(l_one_row_sprite_indexed_animation_factory, "initW_1", [l_dx])
    l_one_row_sprite_indexed_animation_factory
}

fn c1_m2__createfactorydxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        let l_one_row_sprite_indexed_animation_factory = jr.new("OneRowSpriteIndexedAnimationFactory", [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), jr.call(l_image, "getHeight_0", []), jr.call(l_image, "getHeight_0", []), jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
        jr.call(l_one_row_sprite_indexed_animation_factory, "init_2", [l_dx, l_dy])
    l_one_row_sprite_indexed_animation_factory
}

fn c1_m3__createfactorywh(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_width, l_height, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.new("OneRowSpriteIndexedAnimationFactory", [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), l_width, l_height, jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
}

fn c1_m4__createfactory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_animation_behavior_factory] = jargs
    jr.new("OneRowSpriteIndexedAnimationFactory", [l_image, jr.call_static("PrimitiveIntUtil", "getArrayInstance_0", []), jr.call(l_image, "getHeight_0", []), jr.call(l_image, "getHeight_0", []), jr.JInt(0), jr.JInt(0), l_animation_behavior_factory])
}

fn c1_m7__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx, l_dy] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.set_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dx", jr.as_i(l_dx))
        jr.set_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dy", jr.as_i(l_dy))
    jr.JNull
}

fn c1_m8__initw(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dx] = jargs
    let l_dx = jr.as_i(l_dx)
        jr.call(this, "init_2", [l_dx, jr.JInt(0)])
        jr.compound(fn() { jr.get_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dx") }, fn(jv) { jr.add(jv, jr.neg(jr.shr(jr.get_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "width"), jr.JInt(2)))) }, fn(jv) { jr.set_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dx", jv) })
    jr.JNull
}

fn c1_m9__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.method(fn() {
            let l_sprite = jr.call(jr.get_field(this, "animationFactorySpriteScaleUtil"), "createImage_5", [jr.call_inherited(this, "OneRowSpriteIndexedAnimationFactory", "getImage_0", []), jr.get_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "width"), jr.get_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "height"), jr.get_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "scaleProperties"), "scaleWidth"), jr.get_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "scaleProperties"), "scaleHeight")])
            case jr.truth(case jr.truth(jr.ne(jr.get_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(jr.get_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.JInt(0)) }) {
            True -> {
            jr.ret(jr.new("AdjustedSpriteIndexedAnimation", [l_sprite, jr.call_inherited(this, "OneRowSpriteIndexedAnimationFactory", "getImage_0", []), jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ZERO_ARRAY"), jr.get_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dx"), jr.get_field(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationFactoryInitializationVisitor"), "dy"), jr.call(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
            False -> {
            jr.ret(jr.new("SpriteIndexedAnimation", [l_sprite, jr.call_inherited(this, "OneRowSpriteIndexedAnimationFactory", "getImage_0", []), jr.get_field(jr.call_static("BasicColorUtil", "getInstance_0", []), "ZERO_ARRAY"), jr.call(jr.get_inherited(this, "OneRowSpriteIndexedAnimationFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit6(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_sequence_array, l_width, l_height, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
        jr.super_init("BaseImageAnimationFactory", this, [l_image, l_sequence_array, l_width, l_height, l_dx, l_dy, l_animation_behavior_factory])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OneRowSpriteIndexedAnimationFactory",
        "org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory",
        "BaseImageAnimationFactory",
        [],
        False,
        [#("animationFactorySpriteScaleUtil", jr.JNull)],
        [],
        [
            jr.Method("createFactoryDX_3", ["Image", "int", "AnimationBehaviorFactory"], True, c1_m1__createfactorydx), 
            jr.Method("createFactoryDXY_4", ["Image", "int", "int", "AnimationBehaviorFactory"], True, c1_m2__createfactorydxy), 
            jr.Method("createFactoryWH_4", ["Image", "int", "int", "AnimationBehaviorFactory"], True, c1_m3__createfactorywh), 
            jr.Method("createFactory_2", ["Image", "AnimationBehaviorFactory"], True, c1_m4__createfactory), 
            jr.Method("init_2", ["int", "int"], False, c1_m7__init), 
            jr.Method("initW_1", ["int"], False, c1_m8__initw), 
            jr.Method("getInstance_1", ["int"], False, c1_m9__getinstance), 
            jr.Method("jinit_7", ["Image", "intArr", "int", "int", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit6)],
        c1_jfields,
        c1_jclinit,
    )
}


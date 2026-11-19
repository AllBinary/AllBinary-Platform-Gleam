// Generated Code Do Not Modify
// package org.allbinary.animation.image
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImageArrayAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "dx", jr.as_i(jr.JInt(0)))
    jr.set_field(this, "dy", jr.as_i(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m6__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.ne(jr.get_field(this, "dx"), jr.JInt(0))) { True -> jr.JBool(True) False -> jr.ne(jr.get_field(this, "dy"), jr.JInt(0)) }) {
            True -> {
            jr.ret(jr.new("AdjustedImageArrayAnimation", [jr.get_field(this, "imageArray"), jr.get_field(this, "dx"), jr.get_field(this, "dy"), jr.call(jr.get_field(this, "animationBehaviorFactory"), "getOrCreateInstance_0", [])]))
            Nil
        }
            False -> {
            jr.ret(jr.new("ImageArrayAnimation", [jr.get_field(this, "imageArray"), jr.call_static("AnimationBehavior", "getInstance_0", [])]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m7__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_array, l_dx, l_dy, l_animation_behavior_factory] = jargs
    let l_dx = jr.as_i(l_dx)
    let l_dy = jr.as_i(l_dy)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "imageArray", l_image_array)
        jr.set_field(this, "animationBehaviorFactory", l_animation_behavior_factory)
        jr.set_field(this, "dx", jr.as_i(l_dx))
        jr.set_field(this, "dy", jr.as_i(l_dy))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImageArrayAnimationFactory",
        "org.allbinary.animation.image.ImageArrayAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("dx", jr.JInt(0)), #("dy", jr.JInt(0)), #("imageArray", jr.JNull), #("animationBehaviorFactory", jr.JNull)],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m6__getinstance), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m7__setinitialscale), 
            jr.Method("jinit_4", ["ImageArr", "int", "int", "AnimationBehaviorFactory"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorExplosionAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "vectorExplosionGenerator", jr.call_static("VectorExplosionGenerator", "getInstance_0", []))
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getinstanceanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
        let l_vector_rotation_animation_interface = l_animation_interface
        let l_frame = jr.as_i(jr.call(l_vector_rotation_animation_interface, "getFrame_0", []))
        let l_frame_points = jr.call(l_vector_rotation_animation_interface, "getPoints_1", [l_frame])
        let l_points = jr.call(jr.get_field(this, "vectorExplosionGenerator"), "getInstance_3", [l_frame_points, jr.JInt(6), jr.get_field(jr.get_field(this, "vectorExplosionGenerator"), "ROTATION")])
    jr.new("VectorRotationAnimation", [l_points, jr.call(this, "getBasicColorP_0", []), jr.call(jr.get_field(this, "animationBehaviorFactory"), "getOrCreateInstance_0", [])])
}

fn c1_m6__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
    jr.JNull
}

fn c1_m7__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color, l_animation_behavior_factory] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "animationBehaviorFactory", l_animation_behavior_factory)
        jr.call(this, "setBasicColorP_1", [l_basic_color])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorExplosionAnimationFactory",
        "org.allbinary.animation.VectorExplosionAnimationFactory",
        "Object",
        ["ProceduralAnimationInterfaceFactoryInterface"],
        False,
        [#("vectorExplosionGenerator", jr.JNull), #("basicColor", jr.JNull), #("animationBehaviorFactory", jr.JNull)],
        [],
        [
            jr.Method("getInstanceAnimation_1", ["Animation"], False, c1_m5__getinstanceanimation), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m6__setbasiccolorp), 
            jr.Method("getBasicColorP_0", [], False, c1_m7__getbasiccolorp), 
            jr.Method("jinit_2", ["BasicColor", "AnimationBehaviorFactory"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class VectorRotationAnimationInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "currentPoints", jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY_ARRAY_ARRAY"))
    jr.set_field(this, "basicColor", jr.get_field(jr.call_static("BasicColorFactory", "getInstance_0", []), "WHITE"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.new("VectorRotationAnimation", [jr.get_field(this, "currentPoints"), jr.call(this, "getBasicColorP_0", []), jr.call(jr.get_field(this, "animationBehaviorFactory"), "getOrCreateInstance_0", [])])
}

fn c1_m6__setbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_color] = jargs
        jr.set_field(this, "basicColor", l_basic_color)
    jr.JNull
}

fn c1_m7__getbasiccolorp(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicColor")
}

fn c1_m8__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_current_points, l_basic_color, l_animation_behavior_factory] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "currentPoints", l_current_points)
        jr.call(this, "setBasicColorP_1", [l_basic_color])
        jr.set_field(this, "animationBehaviorFactory", l_animation_behavior_factory)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "VectorRotationAnimationInterfaceFactory",
        "org.allbinary.animation.VectorRotationAnimationInterfaceFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("currentPoints", jr.JNull), #("basicColor", jr.JNull), #("animationBehaviorFactory", jr.JNull)],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m5__getinstance), 
            jr.Method("setBasicColorP_1", ["BasicColor"], False, c1_m6__setbasiccolorp), 
            jr.Method("getBasicColorP_0", [], False, c1_m7__getbasiccolorp), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m8__setinitialscale), 
            jr.Method("jinit_3", ["intArrArrArr", "BasicColor", "AnimationBehaviorFactory"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


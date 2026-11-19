// Generated Code Do Not Modify
// package org.allbinary.animation.compound
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AutoCompoundRotationAnimationInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__createarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_i(l_size)
    jr.new_array("L", 1, [l_size])
}

fn c1_m3__createanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array] = jargs
    jr.new("AutoCompoundRotationAnimation", [l_animation_interface_array, jr.call(jr.get_inherited(this, "AutoCompoundRotationAnimationInterfaceFactory", "animationBehaviorFactory"), "getOrCreateInstance_0", [])])
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_animation_interface_factory_interface_array, l_animation_behavior_factory] = jargs
        jr.super_init("CompoundAnimationInterfaceFactory", this, [l_basic_animation_interface_factory_interface_array, l_animation_behavior_factory])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AutoCompoundRotationAnimationInterfaceFactory",
        "org.allbinary.animation.compound.AutoCompoundRotationAnimationInterfaceFactory",
        "CompoundAnimationInterfaceFactory",
        [],
        False,
        [],
        [],
        [
            jr.Method("createArray_1", ["int"], False, c1_m2__createarray), 
            jr.Method("createAnimation_1", ["AnimationArr"], False, c1_m3__createanimation), 
            jr.Method("jinit_2", ["AnimationInterfaceFactoryInterfaceArr", "AnimationBehaviorFactory"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


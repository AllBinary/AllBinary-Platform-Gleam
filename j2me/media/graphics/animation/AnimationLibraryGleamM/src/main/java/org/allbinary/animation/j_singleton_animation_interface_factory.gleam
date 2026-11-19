// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SingletonAnimationInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.get_field(this, "animationInterface")
}

fn c1_m4__getinstanceanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.get_field(this, "animationInterface")
}

fn c1_m5__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "animationInterface", l_animation_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SingletonAnimationInterfaceFactory",
        "org.allbinary.animation.SingletonAnimationInterfaceFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface", "ProceduralAnimationInterfaceFactoryInterface"],
        False,
        [#("animationInterface", jr.JNull)],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m3__getinstance), 
            jr.Method("getInstanceAnimation_1", ["Animation"], False, c1_m4__getinstanceanimation), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m5__setinitialscale), 
            jr.Method("jinit_1", ["Animation"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


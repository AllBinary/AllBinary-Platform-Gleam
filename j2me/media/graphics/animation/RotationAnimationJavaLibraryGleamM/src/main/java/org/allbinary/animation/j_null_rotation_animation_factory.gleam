// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullRotationAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NULL_ROTATION_ANIMATION_ARRAY", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.set_field(this, "NULL_ANIMATION", jr.new("NullRotationAnimation2", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullRotationAnimationFactory", "NULL_ROTATION_ANIMATION_FACTORY", jr.new("NullRotationAnimationFactory", []))
    jr.JNull
}

fn c1_m5__getfactoryinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullRotationAnimationFactory", "NULL_ROTATION_ANIMATION_FACTORY")
}

fn c1_m6__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.get_field(this, "NULL_ANIMATION")
}

fn c1_m7__getinstanceanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.get_field(this, "NULL_ANIMATION")
}

fn c1_m8__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullRotationAnimationFactory",
        "org.allbinary.animation.NullRotationAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface", "ProceduralAnimationInterfaceFactoryInterface"],
        False,
        [#("NULL_ROTATION_ANIMATION_ARRAY", jr.JNull), #("NULL_ANIMATION", jr.JNull)],
        [#("NULL_ROTATION_ANIMATION_FACTORY", jr.JNull)],
        [
            jr.Method("getFactoryInstance_0", [], True, c1_m5__getfactoryinstance), 
            jr.Method("getInstance_1", ["int"], False, c1_m6__getinstance), 
            jr.Method("getInstanceAnimation_1", ["Animation"], False, c1_m7__getinstanceanimation), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m8__setinitialscale), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


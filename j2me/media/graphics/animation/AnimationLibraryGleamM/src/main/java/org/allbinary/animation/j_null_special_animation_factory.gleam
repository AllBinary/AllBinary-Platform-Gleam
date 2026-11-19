// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullSpecialAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullSpecialAnimationFactory", "NULL_SPECIAL_ANIMATION_FACTORY", jr.new("NullSpecialAnimationFactory", []))
    jr.JNull
}

fn c1_m3__getfactoryinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullSpecialAnimationFactory", "NULL_SPECIAL_ANIMATION_FACTORY")
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.call_static("SpecialAnimation", "getInstance_0", [])
}

fn c1_m5__getinstanceanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.call_static("SpecialAnimation", "getInstance_0", [])
}

fn c1_m6__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullSpecialAnimationFactory",
        "org.allbinary.animation.NullSpecialAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface", "ProceduralAnimationInterfaceFactoryInterface"],
        False,
        [],
        [#("NULL_SPECIAL_ANIMATION_FACTORY", jr.JNull)],
        [
            jr.Method("getFactoryInstance_0", [], True, c1_m3__getfactoryinstance), 
            jr.Method("getInstance_1", ["int"], False, c1_m4__getinstance), 
            jr.Method("getInstanceAnimation_1", ["Animation"], False, c1_m5__getinstanceanimation), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m6__setinitialscale), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


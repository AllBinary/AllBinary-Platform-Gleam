// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class(), c2_class()]
}

// class NullAnimationFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NULL_ANIMATION", jr.new_with("NullAnimationFactory$1", this, [], []))
    jr.set_field(this, "EMPTY_ARRAY", jr.new_array("L", 1, [jr.JInt(0)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullAnimationFactory", "NULL_NOT_FOR_USE_ANIMATION_FACTORY", jr.new("NullAnimationFactory", []))
    jr.set_static("NullAnimationFactory", "NULL_ANIMATION_FACTORY", jr.new("NullAnimationFactory", []))
    jr.JNull
}

fn c1_m6__getfactoryinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("NullAnimationFactory", "NULL_ANIMATION_FACTORY")
}

fn c1_m7__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.get_field(this, "NULL_ANIMATION")
}

fn c1_m8__getinstanceanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface] = jargs
    jr.get_field(this, "NULL_ANIMATION")
}

fn c1_m9__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullAnimationFactory",
        "org.allbinary.animation.NullAnimationFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface", "ProceduralAnimationInterfaceFactoryInterface"],
        False,
        [#("NULL_ANIMATION", jr.JNull), #("EMPTY_ARRAY", jr.JNull)],
        [#("NULL_NOT_FOR_USE_ANIMATION_FACTORY", jr.JNull), #("NULL_ANIMATION_FACTORY", jr.JNull)],
        [
            jr.Method("getFactoryInstance_0", [], True, c1_m6__getfactoryinstance), 
            jr.Method("getInstance_1", ["int"], False, c1_m7__getinstance), 
            jr.Method("getInstanceAnimation_1", ["Animation"], False, c1_m8__getinstanceanimation), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m9__setinitialscale), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}

// class NullAnimationFactory$1

fn c2_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c2_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c2_m1__paintxy(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics, l_x, l_y] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    jr.JNull
}

fn c2_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Animation", this, jargs)
    c2_jfields(this)
    this
}

fn c2_class() -> jr.Class {
    jr.Class(
        "NullAnimationFactory$1",
        "org.allbinary.animation.NullAnimationFactory$1",
        "Animation",
        [],
        False,
        [#("jouter", jr.JNull)],
        [],
        [
            jr.Method("paintXY_3", ["Graphics", "int", "int"], False, c2_m1__paintxy), 
            jr.Method("jinit_0", [], False, c2_jinit)],
        c2_jfields,
        c2_jclinit,
    )
}


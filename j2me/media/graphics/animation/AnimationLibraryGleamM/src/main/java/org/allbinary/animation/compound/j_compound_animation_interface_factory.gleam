// Generated Code Do Not Modify
// package org.allbinary.animation.compound
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CompoundAnimationInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "basicAnimationInterfaceFactoryInterfaceArrayP")))
        let l_animation_interface_array = jr.call(this, "createArray_1", [l_size])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(l_animation_interface_array, jr.get(l_index), jr.call(jr.aget(jr.get_field(this, "basicAnimationInterfaceFactoryInterfaceArrayP"), jr.get(l_index)), "getInstance_1", [l_instance_id]))
            Nil
        })
            Nil
        }
    jr.call(this, "createAnimation_1", [l_animation_interface_array])
}

fn c1_m5__createarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_i(l_size)
    jr.get_field(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "EMPTY_ARRAY")
}

fn c1_m6__createanimation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array] = jargs
    jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)])
}

fn c1_m7__getbasicanimationinterfacefactoryinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicAnimationInterfaceFactoryInterfaceArrayP")
}

fn c1_m8__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "basicAnimationInterfaceFactoryInterfaceArrayP")))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.call(jr.aget(jr.get_field(this, "basicAnimationInterfaceFactoryInterfaceArrayP"), jr.get(l_index)), "setInitialScale_1", [l_scale_properties])
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_animation_interface_factory_interface_array, l_animation_behavior_factory] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "basicAnimationInterfaceFactoryInterfaceArrayP", l_basic_animation_interface_factory_interface_array)
        jr.set_field(this, "animationBehaviorFactory", l_animation_behavior_factory)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CompoundAnimationInterfaceFactory",
        "org.allbinary.animation.compound.CompoundAnimationInterfaceFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("basicAnimationInterfaceFactoryInterfaceArrayP", jr.JNull), #("animationBehaviorFactory", jr.JNull)],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m4__getinstance), 
            jr.Method("createArray_1", ["int"], False, c1_m5__createarray), 
            jr.Method("createAnimation_1", ["AnimationArr"], False, c1_m6__createanimation), 
            jr.Method("getBasicAnimationInterfaceFactoryInterfaceArray_0", [], False, c1_m7__getbasicanimationinterfacefactoryinterfacearray), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m8__setinitialscale), 
            jr.Method("jinit_2", ["AnimationInterfaceFactoryInterfaceArr", "AnimationBehaviorFactory"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


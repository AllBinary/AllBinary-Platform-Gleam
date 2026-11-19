// Generated Code Do Not Modify
// package org.allbinary.animation.compound
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SimultaneousCompoundIndexAnimationInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
        let l_size = jr.as_i(jr.alen(jr.get_field(this, "basicAnimationInterfaceFactoryInterfaceArray")))
        let l_animation_interface_array = jr.new_array("L", 1, [l_size])
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.aset(l_animation_interface_array, jr.get(l_index), jr.call(jr.aget(jr.get_field(this, "basicAnimationInterfaceFactoryInterfaceArray"), jr.get(l_index)), "getInstance_1", [l_instance_id]))
            Nil
        })
            Nil
        }
    jr.call(this, "getOrCreate_1", [l_animation_interface_array])
}

fn c1_m5__getorcreate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface_array] = jargs
    jr.new("SimultaneousCompoundIndexAnimation", [l_animation_interface_array, jr.call(jr.get_field(this, "animationBehaviorFactory"), "getOrCreateInstance_0", [])])
}

fn c1_m6__getbasicanimationinterfacefactoryinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicAnimationInterfaceFactoryInterfaceArray")
}

fn c1_m7__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_animation_interface_factory_interface_array, l_animation_behavior_factory] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "basicAnimationInterfaceFactoryInterfaceArray", l_basic_animation_interface_factory_interface_array)
        jr.set_field(this, "animationBehaviorFactory", l_animation_behavior_factory)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SimultaneousCompoundIndexAnimationInterfaceFactory",
        "org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("basicAnimationInterfaceFactoryInterfaceArray", jr.JNull), #("animationBehaviorFactory", jr.JNull)],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m4__getinstance), 
            jr.Method("getOrCreate_1", ["IndexedAnimationArr"], False, c1_m5__getorcreate), 
            jr.Method("getBasicAnimationInterfaceFactoryInterfaceArray_0", [], False, c1_m6__getbasicanimationinterfacefactoryinterfacearray), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m7__setinitialscale), 
            jr.Method("jinit_2", ["AnimationInterfaceFactoryInterfaceArr", "AnimationBehaviorFactory"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.animation
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BaseAnimationInterfaceFactoryInterfaceComposite

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_instance_id] = jargs
    let l_instance_id = jr.as_i(l_instance_id)
    jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)])
}

fn c1_m4__getbasicanimationinterfacefactoryinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "basicAnimationInterfaceFactoryInterfaceArray")
}

fn c1_m5__setbasicanimationinterfacefactoryinterfacearray(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_animation_interface_factory_interface_array] = jargs
        jr.set_field(this, "basicAnimationInterfaceFactoryInterfaceArray", l_basic_animation_interface_factory_interface_array)
    jr.JNull
}

fn c1_m6__setinitialscale(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_scale_properties] = jargs
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_basic_animation_interface_factory_interface_array] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "basicAnimationInterfaceFactoryInterfaceArray", l_basic_animation_interface_factory_interface_array)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BaseAnimationInterfaceFactoryInterfaceComposite",
        "org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite",
        "Object",
        ["AnimationInterfaceFactoryInterface"],
        False,
        [#("basicAnimationInterfaceFactoryInterfaceArray", jr.JNull)],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m3__getinstance), 
            jr.Method("getBasicAnimationInterfaceFactoryInterfaceArray_0", [], False, c1_m4__getbasicanimationinterfacefactoryinterfacearray), 
            jr.Method("setBasicAnimationInterfaceFactoryInterfaceArray_1", ["BasicAnimationInterfaceFactoryInterfaceArr"], False, c1_m5__setbasicanimationinterfacefactoryinterfacearray), 
            jr.Method("setInitialScale_1", ["ScaleProperties"], False, c1_m6__setinitialscale), 
            jr.Method("jinit_1", ["BasicAnimationInterfaceFactoryInterfaceArr"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


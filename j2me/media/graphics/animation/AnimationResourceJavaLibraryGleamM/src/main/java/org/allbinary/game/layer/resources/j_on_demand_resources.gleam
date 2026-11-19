// Generated Code Do Not Modify
// package org.allbinary.game.layer.resources
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OnDemandResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("OnDemandResources", "NULL_ON_DEMAND_RESOURCES", jr.new("OnDemandResources", []))
    jr.JNull
}

fn c1_m4__waitfor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m5__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m6__initat(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image_cache, l_resource_animation_interface_factory_interface_factory, l_portion, l_loading_string, l_index] = jargs
    let l_portion = jr.as_i(l_portion)
    let l_index = jr.as_i(l_index)
    jr.as_i(jr.JInt(0))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OnDemandResources",
        "org.allbinary.game.layer.resources.OnDemandResources",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("NULL_ON_DEMAND_RESOURCES", jr.JNull)],
        [
            jr.Method("waitFor_0", [], False, c1_m4__waitfor), 
            jr.Method("init_0", [], False, c1_m5__init), 
            jr.Method("initAt_5", ["ImageCache", "BaseResourceAnimationInterfaceFactoryInterfaceFactory", "int", "String", "int"], False, c1_m6__initat), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


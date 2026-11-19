// Generated Code Do Not Modify
// package org.allbinary.game.layer.resources
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class OnDemandResourcesFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__size(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m2__remove(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_id] = jargs
    let l_layer_id = jr.as_i(l_layer_id)
    jr.get_static("OnDemandResources", "NULL_ON_DEMAND_RESOURCES")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "OnDemandResourcesFactory",
        "org.allbinary.game.layer.resources.OnDemandResourcesFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("size_0", [], False, c1_m1__size), 
            jr.Method("remove_1", ["int"], False, c1_m2__remove), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


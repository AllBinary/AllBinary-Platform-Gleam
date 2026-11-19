// Generated Code Do Not Modify
// package org.allbinary.game.resource
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FeatureResourceInitializationUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("FeatureResourceInitializationUtil", "instance", jr.new("FeatureResourceInitializationUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("FeatureResourceInitializationUtil", "instance")
}

fn c1_m4__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_level] = jargs
    let l_level = jr.as_i(l_level)
        let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.get_field(l_common_strings, "START"), this, jr.get_field(l_common_strings, "INIT")])
        let l_featured_resource_factory = jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", [])
        jr.call(l_featured_resource_factory, "init_1", [l_level])
        jr.call(jr.call_static("FeaturedResourceRelativeRelationshipFactory", "getInstance_0", []), "init_1", [l_level])
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FeatureResourceInitializationUtil",
        "org.allbinary.game.resource.FeatureResourceInitializationUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("init_1", ["int"], False, c1_m4__init), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


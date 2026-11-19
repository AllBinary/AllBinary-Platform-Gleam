// Generated Code Do Not Modify
// package org.allbinary.logic.system
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformAssetManager

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PlatformAssetManager", "instance", jr.new("PlatformAssetManager", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PlatformAssetManager", "instance")
}

fn c1_m3__getresourceasstream(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_resource] = jargs
        let l_resource_util = jr.call_static("ResourceUtil", "getInstance_0", [])
        let l_input_stream = jr.call(l_resource_util, "getResourceAsStream_1", [l_resource])
    l_input_stream
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlatformAssetManager",
        "org.allbinary.logic.system.PlatformAssetManager",
        "Object",
        [],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getResourceAsStream_1", ["String"], False, c1_m3__getresourceasstream), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


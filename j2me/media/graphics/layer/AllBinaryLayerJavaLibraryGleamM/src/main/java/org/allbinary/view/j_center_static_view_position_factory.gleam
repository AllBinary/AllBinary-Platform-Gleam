// Generated Code Do Not Modify
// package org.allbinary.view
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CenterStaticViewPositionFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_z] = jargs
    let l_z = jr.as_i(l_z)
        let l_display_info_singleton = jr.call_static("DisplayInfoSingleton", "getInstance_0", [])
    jr.new("StaticViewPosition", [jr.shr(jr.call(l_display_info_singleton, "getLastWidth_0", []), jr.JInt(1)), jr.shr(jr.call(l_display_info_singleton, "getLastHeight_0", []), jr.JInt(1)), l_z])
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CenterStaticViewPositionFactory",
        "org.allbinary.view.CenterStaticViewPositionFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_1", ["int"], False, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


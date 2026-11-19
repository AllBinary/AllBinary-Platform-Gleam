// Generated Code Do Not Modify
// package org.allbinary.game.tracking
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class GenericTrackingLayerCircularStaticPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("GenericTrackingLayerCircularStaticPool", "SINGLETON", jr.new("GenericTrackingLayerCircularStaticPool", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("GenericTrackingLayerCircularStaticPool", "SINGLETON")
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("AllBinaryLayerCircularPool", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "GenericTrackingLayerCircularStaticPool",
        "org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool",
        "AllBinaryLayerCircularPool",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


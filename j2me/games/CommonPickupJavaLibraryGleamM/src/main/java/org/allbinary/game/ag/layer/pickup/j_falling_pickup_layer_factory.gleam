// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FallingPickupLayerFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("FallingPickupLayer", [jr.get_static("RemoteInfo", "REMOTE_INFO")])
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FallingPickupLayerFactory",
        "org.allbinary.game.ag.layer.pickup.FallingPickupLayerFactory",
        "Object",
        ["AllBinaryLayerFactoryInterface"],
        False,
        [],
        [],
        [
            jr.Method("getInstance_0", [], False, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


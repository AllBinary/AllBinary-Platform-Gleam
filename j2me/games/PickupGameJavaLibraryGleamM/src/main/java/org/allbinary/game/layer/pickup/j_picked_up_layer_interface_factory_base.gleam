// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PickedUpLayerInterfaceFactoryBase

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PickedUpLayerInterfaceFactoryBase", "NULL_PICKED_UP_LAYER_FACTORY_BASE", jr.new("PickedUpLayerInterfaceFactoryBase", []))
    jr.JNull
}

fn c1_m2__geticonlayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m3__getanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m4__getpickeduplayertype(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PickedUpLayerInterfaceFactoryBase",
        "org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase",
        "Object",
        ["PickedUpLayerInterfaceFactoryInterface"],
        False,
        [],
        [#("NULL_PICKED_UP_LAYER_FACTORY_BASE", jr.JNull)],
        [
            jr.Method("getIconLayer_0", [], False, c1_m2__geticonlayer), 
            jr.Method("getAnimationInterface_0", [], False, c1_m3__getanimationinterface), 
            jr.Method("getPickedUpLayerType_0", [], False, c1_m4__getpickeduplayertype), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


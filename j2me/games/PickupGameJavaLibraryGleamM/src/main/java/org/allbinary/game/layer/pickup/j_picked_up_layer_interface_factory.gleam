// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PickedUpLayerInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__geticonlayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "iconLayer")
}

fn c1_m6__getanimationinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "animationInterface")
}

fn c1_m7__getpickeduplayertype(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "pickedUpLayerType")
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_picke_up_layer_type, l_icon_layer, l_animation_interface] = jargs
    jr.super_init("PickedUpLayerInterfaceFactoryBase", this, [])
    c1_jfields(this)
        jr.set_field(this, "pickedUpLayerType", l_picke_up_layer_type)
        jr.set_field(this, "animationInterface", l_animation_interface)
        jr.set_field(this, "iconLayer", l_icon_layer)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PickedUpLayerInterfaceFactory",
        "org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory",
        "PickedUpLayerInterfaceFactoryBase",
        [],
        False,
        [#("pickedUpLayerType", jr.JNull), #("iconLayer", jr.JNull), #("animationInterface", jr.JNull)],
        [],
        [
            jr.Method("getIconLayer_0", [], False, c1_m5__geticonlayer), 
            jr.Method("getAnimationInterface_0", [], False, c1_m6__getanimationinterface), 
            jr.Method("getPickedUpLayerType_0", [], False, c1_m7__getpickeduplayertype), 
            jr.Method("jinit_3", ["PickedUpLayerType", "IconLayer", "Animation"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


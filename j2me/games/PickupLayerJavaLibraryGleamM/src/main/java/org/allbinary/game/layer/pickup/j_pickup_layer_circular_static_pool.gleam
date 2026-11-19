// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PickupLayerCircularStaticPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("PickupLayerCircularStaticPool", "SINGLETON", jr.new("PickupLayerCircularStaticPool", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("PickupLayerCircularStaticPool", "SINGLETON")
}

fn c1_m4__getinstancexyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_picked_up_layer_interface_factory_interface, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        let l_pickup_layer = jr.call_inherited(this, "PickupLayerCircularStaticPool", "getNextInstance_0", [])
        jr.call(l_pickup_layer, "initXYZ_3", [l_x, l_y, l_z])
        jr.call(l_pickup_layer, "init_2", [l_picked_up_layer_interface_factory_interface, jr.call(l_picked_up_layer_interface_factory_interface, "getAnimationInterface_0", [])])
    l_pickup_layer
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("AllBinaryLayerCircularPool", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PickupLayerCircularStaticPool",
        "org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool",
        "AllBinaryLayerCircularPool",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("getInstanceXYZ_4", ["PickedUpLayerInterfaceFactoryInterface", "int", "int", "int"], False, c1_m4__getinstancexyz), 
            jr.Method("jinit_0", [], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


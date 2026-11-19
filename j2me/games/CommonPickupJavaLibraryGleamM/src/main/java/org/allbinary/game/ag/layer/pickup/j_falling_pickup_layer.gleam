// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class FallingPickupLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__processtick(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_all_binary_layer_manager] = jargs
        jr.call_inherited(this, "FallingPickupLayer", "setPosition_3", [jr.get_inherited(this, "FallingPickupLayer", "x"), jr.add(jr.get_inherited(this, "FallingPickupLayer", "y"), jr.JInt(1)), jr.get_inherited(this, "FallingPickupLayer", "z")])
    jr.JNull
}

fn c1_m4__implmentstickableinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JBool(True)
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_remote_info] = jargs
        jr.super_init("PickupLayer", this, [jr.get_static("FallingPickupLayer", "NAME"), l_remote_info, jr.JInt(0), jr.get_static("CountedPickedUpLayerInterfaceFactory", "NULL_COUNTED_PICKUP_LAYER_FACTORY"), jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)]), jr.new("Rectangle", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.JInt(0), jr.JInt(0)]), jr.call_static("ViewPosition", "getInstanceD_0", [])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "FallingPickupLayer",
        "org.allbinary.game.ag.layer.pickup.FallingPickupLayer",
        "PickupLayer",
        ["TickableInterface"],
        False,
        [],
        [#("NAME", jr.JStr("FallingPickupLayer"))],
        [
            jr.Method("processTick_1", ["AllBinaryLayerManager"], False, c1_m3__processtick), 
            jr.Method("implmentsTickableInterface_0", [], False, c1_m4__implmentstickableinterface), 
            jr.Method("jinit_1", ["RemoteInfo"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


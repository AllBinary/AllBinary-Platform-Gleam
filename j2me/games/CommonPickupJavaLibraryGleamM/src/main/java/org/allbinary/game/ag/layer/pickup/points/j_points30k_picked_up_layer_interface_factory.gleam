// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.pickup.points
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Points30kPickedUpLayerInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "pool", jr.new("PointsLayerCircularStaticPool", [jr.new("PointsLayerFactory", [jr.mul(jr.call(jr.call_static("GameConfigurationUtil", "getInstance_0", []), "getCompetitionValue_0", []), jr.JInt(30000))]), jr.JInt(1)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("Points30kPickedUpLayerInterfaceFactory", "pickedUpLayerInterfaceFactoryInterface", jr.get_static("CountedPickedUpLayerInterfaceFactory", "NULL_COUNTED_PICKUP_LAYER_FACTORY"))
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_static("Points30kPickedUpLayerInterfaceFactory", "pickedUpLayerInterfaceFactoryInterface", jr.new("Points30kPickedUpLayerInterfaceFactory", []))
    jr.JNull
}

fn c1_m5__gettotal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(1))
}

fn c1_m6__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("Points30kPickedUpLayerInterfaceFactory", "pickedUpLayerInterfaceFactoryInterface")
}

fn c1_m7__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source_layer_interface] = jargs
        jr.call(jr.get_field(this, "pool"), "visit_1", [l_source_layer_interface])
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("PickedUpLayerInterfaceFactory", this, [jr.get_field(jr.call_static("PickedUpLayerTypeFactory", "getInstance_0", []), "POINTS"), jr.call_static("IconLayerFactory", "getInstance_3", [jr.call(jr.call(jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", []), "get_1", [jr.get_field(jr.call_static("PointsResources", "getInstance_0", []), "RESOURCE_3")]), "getInstance_1", [jr.JInt(0)]), jr.JInt(10), jr.JInt(10)]), jr.call(jr.call(jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", []), "get_1", [jr.get_field(jr.call_static("PointsResources", "getInstance_0", []), "RESOURCE_3")]), "getInstance_1", [jr.JInt(0)])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Points30kPickedUpLayerInterfaceFactory",
        "org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory",
        "PickedUpLayerInterfaceFactory",
        ["PickupProcessorInterface"],
        False,
        [#("pool", jr.JNull)],
        [#("pickedUpLayerInterfaceFactoryInterface", jr.JNull)],
        [
            jr.Method("init_0", [], True, c1_m2__init), 
            jr.Method("getTotal_0", [], False, c1_m5__gettotal), 
            jr.Method("getInstance_0", [], True, c1_m6__getinstance), 
            jr.Method("process_1", ["AllBinaryLayer"], False, c1_m7__process), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


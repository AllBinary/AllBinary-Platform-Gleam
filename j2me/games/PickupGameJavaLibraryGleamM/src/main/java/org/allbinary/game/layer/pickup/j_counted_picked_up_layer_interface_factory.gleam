// Generated Code Do Not Modify
// package org.allbinary.game.layer.pickup
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CountedPickedUpLayerInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CountedPickedUpLayerInterfaceFactory", "NULL_COUNTED_PICKUP_LAYER_FACTORY", jr.new("CountedPickedUpLayerInterfaceFactory", [jr.get_field(jr.call_static("PickedUpLayerTypeFactory", "getInstance_0", []), "NONE"), jr.get_static("IconLayer", "NULL_ICON_LAYER"), jr.call(jr.call_static("NullAnimationFactory", "getFactoryInstance_0", []), "getInstance_1", [jr.JInt(0)])]))
    jr.JNull
}

fn c1_m4__getnextinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.throw(jr.new("Exception", [jr.get_field(jr.call_static("CommonStrings", "getInstance_0", []), "NOT_IMPLEMENTED")]))
    jr.JNull
}

fn c1_m5__gettotal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(-1))
}

fn c1_m6__getid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "id"))
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_picke_up_layer_type, l_icon_layer, l_animation_interface] = jargs
        jr.super_init("PickedUpLayerInterfaceFactory", this, [l_picke_up_layer_type, l_icon_layer, l_animation_interface])
        c1_jfields(this)
        let l_list = jr.call(jr.call_static("CountedPickedUpLayerInterfaceFactoryPool", "getInstance_0", []), "getList_0", [])
        jr.set_field(this, "id", jr.as_i(jr.call(l_list, "size_0", [])))
        jr.call(l_list, "add_1", [this])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CountedPickedUpLayerInterfaceFactory",
        "org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory",
        "PickedUpLayerInterfaceFactory",
        ["CountedPickedUpLayerInterfaceFactoryInterface"],
        False,
        [#("id", jr.JInt(0))],
        [#("NULL_COUNTED_PICKUP_LAYER_FACTORY", jr.JNull)],
        [
            jr.Method("getNextInstance_4", ["ABHashtable", "int", "int", "int"], False, c1_m4__getnextinstance), 
            jr.Method("getTotal_0", [], False, c1_m5__gettotal), 
            jr.Method("getId_0", [], False, c1_m6__getid), 
            jr.Method("jinit_3", ["PickedUpLayerType", "IconLayer", "Animation"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


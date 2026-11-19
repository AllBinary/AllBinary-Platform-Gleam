// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.weapon.mine
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MineCountedPickedUpLayerInterfaceFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "weaponLayerCircularStaticPool", jr.call_static("MineLayerCircularStaticPool", "getInstance_0", []))
    jr.set_field(this, "weaponProperties", jr.new("WeaponProperties", [jr.JLong(-1), jr.JLong(-1), jr.JInt(0), jr.JInt(8000), jr.to_s(jr.JInt(10))]))
    jr.set_field(this, "smallIntegerSingletonFactory", jr.call_static("SmallIntegerSingletonFactory", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MineCountedPickedUpLayerInterfaceFactory", "pickedUpLayerInterfaceFactoryInterface", jr.get_static("CountedPickedUpLayerInterfaceFactory", "NULL_COUNTED_PICKUP_LAYER_FACTORY"))
    jr.JNull
}

fn c1_m3__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.set_static("MineCountedPickedUpLayerInterfaceFactory", "pickedUpLayerInterfaceFactoryInterface", jr.new("MineCountedPickedUpLayerInterfaceFactory", []))
    jr.JNull
}

fn c1_m5__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MineCountedPickedUpLayerInterfaceFactory", "pickedUpLayerInterfaceFactoryInterface")
}

fn c1_m6__gettotal(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(3))
}

fn c1_m9__getnextinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_hashtable, l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        let l_source_layer_interface = jr.call(l_hashtable, "get_1", [jr.call(jr.get_field(this, "smallIntegerSingletonFactory"), "getAt_1", [jr.JInt(0)])])
        let l_angle = jr.call(l_hashtable, "get_1", [jr.call(jr.get_field(this, "smallIntegerSingletonFactory"), "getAt_1", [jr.JInt(1)])])
        let l_scoreable_interface = l_source_layer_interface
    jr.call(jr.get_field(this, "weaponLayerCircularStaticPool"), "getInstanceWeaponLayer_8", [l_source_layer_interface, l_x, l_y, l_z, jr.call(l_angle, "intValue_0", []), jr.JInt(0), jr.get_field(this, "weaponProperties"), l_scoreable_interface])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("CountedPickedUpLayerInterfaceFactory", this, [jr.get_field(jr.call_static("PickedUpLayerTypeFactory", "getInstance_0", []), "MINE"), jr.call_static("IconLayerFactory", "getInstance_3", [jr.call(jr.call(jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", []), "get_1", [jr.get_field(jr.call_static("MineWeaponResources", "getInstance_0", []), "DROP_ICON_RESOURCE")]), "getInstance_1", [jr.JInt(0)]), jr.JInt(10), jr.JInt(10)]), jr.call(jr.call(jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", []), "get_1", [jr.get_field(jr.call_static("MineWeaponResources", "getInstance_0", []), "DROP_RESOURCE")]), "getInstance_1", [jr.JInt(0)])])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MineCountedPickedUpLayerInterfaceFactory",
        "org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory",
        "CountedPickedUpLayerInterfaceFactory",
        [],
        False,
        [#("weaponLayerCircularStaticPool", jr.JNull), #("weaponProperties", jr.JNull), #("smallIntegerSingletonFactory", jr.JNull)],
        [#("pickedUpLayerInterfaceFactoryInterface", jr.JNull)],
        [
            jr.Method("init_0", [], True, c1_m3__init), 
            jr.Method("getInstance_0", [], True, c1_m5__getinstance), 
            jr.Method("getTotal_0", [], False, c1_m6__gettotal), 
            jr.Method("getNextInstance_4", ["ABHashtable", "int", "int", "int"], False, c1_m9__getnextinstance), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


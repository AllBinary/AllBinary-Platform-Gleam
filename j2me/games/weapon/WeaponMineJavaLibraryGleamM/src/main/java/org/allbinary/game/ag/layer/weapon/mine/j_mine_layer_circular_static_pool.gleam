// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.weapon.mine
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MineLayerCircularStaticPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("MineLayerCircularStaticPool", "WEAPON_LAYER_CIRCULAR_STATIC_POOL", jr.new("WeaponLayerCircularPool", []))
    jr.JNull
}

fn c1_m2__init(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_view_position_factory_interface] = jargs
        jr.call_static("MineCountedPickedUpLayerInterfaceFactory", "init_0", [])
        jr.call(jr.get_static("MineLayerCircularStaticPool", "WEAPON_LAYER_CIRCULAR_STATIC_POOL"), "initAllBinaryLayerCircularPool_2", [jr.new("MineLayerFactory", [l_view_position_factory_interface]), jr.JInt(20)])
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("MineLayerCircularStaticPool", "WEAPON_LAYER_CIRCULAR_STATIC_POOL")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MineLayerCircularStaticPool",
        "org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool",
        "Object",
        [],
        False,
        [],
        [#("WEAPON_LAYER_CIRCULAR_STATIC_POOL", jr.JNull)],
        [
            jr.Method("init_1", ["ViewPositionFactoryInterface"], True, c1_m2__init), 
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


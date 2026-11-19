// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.pickup.life
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LifeLayerCircularStaticPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__visit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source_layer_interface] = jargs
        let l_life_layer = jr.call_inherited(this, "LifeLayerCircularStaticPool", "getNextInstance_0", [])
        let l_life_interface_composite_interface = l_source_layer_interface
        let l_life_interface = jr.call(l_life_interface_composite_interface, "getLifeInterface_0", [])
        jr.call(l_life_layer, "visit_1", [l_life_interface])
    jr.JNull
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_factory_interface, l_total] = jargs
    let l_total = jr.as_i(l_total)
    jr.super_init("AllBinaryLayerCircularPool", this, [])
    c1_jfields(this)
        jr.call_super("AllBinaryLayerCircularPool", this, "initAllBinaryLayerCircularPool_2", [l_allbinary_layer_factory_interface, l_total])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LifeLayerCircularStaticPool",
        "org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool",
        "AllBinaryLayerCircularPool",
        [],
        False,
        [],
        [],
        [
            jr.Method("visit_1", ["AllBinaryLayer"], False, c1_m2__visit), 
            jr.Method("jinit_2", ["AllBinaryLayerFactoryInterface", "int"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


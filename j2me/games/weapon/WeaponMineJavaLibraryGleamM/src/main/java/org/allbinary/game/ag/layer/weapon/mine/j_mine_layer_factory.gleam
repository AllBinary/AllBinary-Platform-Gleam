// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.weapon.mine
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MineLayerFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.new("MineLayer", [jr.call(jr.get_field(this, "viewPositionFactoryInterface"), "getInstance_0", [])])
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_view_position_factory_interface] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "viewPositionFactoryInterface", l_view_position_factory_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MineLayerFactory",
        "org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory",
        "Object",
        ["AllBinaryLayerFactoryInterface"],
        False,
        [#("viewPositionFactoryInterface", jr.JNull)],
        [],
        [
            jr.Method("getInstance_0", [], False, c1_m3__getinstance), 
            jr.Method("jinit_1", ["ViewPositionFactoryInterface"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


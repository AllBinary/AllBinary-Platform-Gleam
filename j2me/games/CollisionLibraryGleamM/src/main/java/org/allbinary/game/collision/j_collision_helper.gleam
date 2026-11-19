// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollisionHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m3__iscollidable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.JBool(True)
}

fn c1_m4__getownerlayerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "sourceLayerInterface")
}

fn c1_m5__setownerlayerinterface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source_layer_interface] = jargs
        jr.set_field(this, "sourceLayerInterface", l_source_layer_interface)
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source_layer_interface] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "sourceLayerInterface", l_source_layer_interface)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollisionHelper",
        "org.allbinary.game.collision.CollisionHelper",
        "Object",
        [],
        False,
        [#("sourceLayerInterface", jr.JNull)],
        [],
        [
            jr.Method("isCollidable_1", ["CollidableCompositeLayer"], False, c1_m3__iscollidable), 
            jr.Method("getOwnerLayerInterface_0", [], False, c1_m4__getownerlayerinterface), 
            jr.Method("setOwnerLayerInterface_1", ["AllBinaryLayer"], False, c1_m5__setownerlayerinterface), 
            jr.Method("jinit_1", ["AllBinaryLayer"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


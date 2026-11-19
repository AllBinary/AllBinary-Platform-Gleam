// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SourceCollisionHelper

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__iscollidable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.method(fn() {
            case jr.truth(jr.ne(jr.get_inherited(this, "SourceCollisionHelper", "sourceLayerInterface"), l_layer_interface)) {
            True -> {
            jr.ret(jr.JBool(True))
            Nil
        }
            False -> Nil
        }
            jr.ret(jr.JBool(False))
        jr.JNull
    })
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
        jr.super_init("CollisionHelper", this, [l_layer_interface])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SourceCollisionHelper",
        "org.allbinary.game.collision.SourceCollisionHelper",
        "CollisionHelper",
        [],
        False,
        [],
        [],
        [
            jr.Method("isCollidable_1", ["CollidableCompositeLayer"], False, c1_m2__iscollidable), 
            jr.Method("jinit_1", ["AllBinaryLayer"], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


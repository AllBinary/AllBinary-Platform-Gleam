// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableHelperFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(jr.call(jr.call_static("Features", "getInstance_0", []), "isFeature_1", [jr.get_field(jr.call_static("GameFeatureFactory", "getInstance_0", []), "COLLISIONS_WITH_SOURCE")])) {
            True -> {
            jr.ret(jr.new("CollisionHelper", [jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER")]))
            Nil
        }
            False -> {
            jr.ret(jr.new("SourceCollisionHelper", [jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER")]))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableHelperFactory",
        "org.allbinary.game.collision.CollidableHelperFactory",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstance_0", [], True, c1_m1__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


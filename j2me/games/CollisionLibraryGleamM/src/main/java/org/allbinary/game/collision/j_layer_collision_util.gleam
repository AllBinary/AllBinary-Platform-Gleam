// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class LayerCollisionUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("LayerCollisionUtil", "instance", jr.new("LayerCollisionUtil", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("LayerCollisionUtil", "instance")
}

fn c1_m5__iscollision(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_my_layer, l_my_layer2] = jargs
    jr.call(jr.get_field(this, "collisionProcessor"), "isCollision_2", [l_my_layer, l_my_layer2])
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
        let l_features = jr.call_static("Features", "getInstance_0", [])
        let l_game_feature_factory = jr.call_static("GameFeatureFactory", "getInstance_0", [])
        case jr.truth(case jr.truth(jr.call(jr.call_static("OpenGLFeatureUtil", "getInstance_0", []), "isAnyThreed_0", [])) { True -> jr.not(jr.call(l_features, "isFeature_1", [jr.get_field(l_game_feature_factory, "COLLISIONS_FORCED_TWO_DIMENSIONAL")])) False -> jr.JBool(False) }) {
            True -> {
            jr.set_field(this, "collisionProcessor", jr.new("CollisionThreedProcessor", []))
            Nil
        }
            False -> {
            jr.set_field(this, "collisionProcessor", jr.new("Collision2DProcessor", []))
            Nil
        }
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "LayerCollisionUtil",
        "org.allbinary.game.collision.LayerCollisionUtil",
        "Object",
        [],
        False,
        [#("collisionProcessor", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("isCollision_2", ["AllBinaryLayer", "AllBinaryLayer"], False, c1_m5__iscollision), 
            jr.Method("jinit_0", [], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


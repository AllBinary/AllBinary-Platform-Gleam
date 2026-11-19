// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class Collision2DProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__iscollision(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_my_layer, l_my_layer2] = jargs
    jr.method(fn() {
            case jr.truth(case jr.truth(case jr.truth(case jr.truth(jr.ge(jr.call(l_my_layer2, "getXP_0", []), jr.call(l_my_layer, "getX2_0", []))) { True -> jr.JBool(True) False -> jr.ge(jr.call(l_my_layer2, "getYP_0", []), jr.call(l_my_layer, "getY2_0", [])) }) { True -> jr.JBool(True) False -> jr.le(jr.call(l_my_layer2, "getX2_0", []), jr.call(l_my_layer, "getXP_0", [])) }) { True -> jr.JBool(True) False -> jr.le(jr.call(l_my_layer2, "getY2_0", []), jr.call(l_my_layer, "getYP_0", [])) }) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.ret(jr.JBool(True))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("CollisionProcessor", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "Collision2DProcessor",
        "org.allbinary.game.collision.Collision2DProcessor",
        "CollisionProcessor",
        [],
        False,
        [],
        [],
        [
            jr.Method("isCollision_2", ["AllBinaryLayer", "AllBinaryLayer"], False, c1_m1__iscollision), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


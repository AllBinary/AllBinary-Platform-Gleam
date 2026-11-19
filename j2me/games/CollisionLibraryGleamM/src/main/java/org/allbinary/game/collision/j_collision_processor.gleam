// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollisionProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__iscollision(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_my_layer, l_my_layer2] = jargs
    jr.JBool(False)
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollisionProcessor",
        "org.allbinary.game.collision.CollisionProcessor",
        "Object",
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


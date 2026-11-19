// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableBaseBehaviorFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createbehavior(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableBaseBehaviorFactory",
        "org.allbinary.game.collision.CollidableBaseBehaviorFactory",
        "Object",
        ["CollidableBaseBehaviorFactoryInterface"],
        False,
        [],
        [],
        [
            jr.Method("createBehavior_0", [], False, c1_m1__createbehavior), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


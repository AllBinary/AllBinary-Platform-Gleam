// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollidableAlwaysPickupNeverCollideBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getcollisiontypewith(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_layer_interface] = jargs
    jr.get_field(jr.call_static("CollisionTypeFactory", "getInstance_0", []), "PICKUP")
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.super_init("CollidableNeverCollideBehavior", this, [jr.JBool(True)])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollidableAlwaysPickupNeverCollideBehavior",
        "org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior",
        "CollidableNeverCollideBehavior",
        [],
        False,
        [],
        [],
        [
            jr.Method("getCollisionTypeWith_1", ["AllBinaryLayer"], False, c1_m2__getcollisiontypewith), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


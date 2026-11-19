// Generated Code Do Not Modify
// package org.allbinary.game.collision
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CollisionTypeFactory

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "NONE", jr.new("CollisionType", [jr.JStr("None")]))
    jr.set_field(this, "DAMAGE", jr.new("CollisionType", [jr.JStr("Damage")]))
    jr.set_field(this, "PICKUP", jr.new("CollisionType", [jr.JStr("Pickup")]))
    jr.set_field(this, "COLLISION", jr.new("CollisionType", [jr.JStr("Collision")]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CollisionTypeFactory", "SINGLETON", jr.new("CollisionTypeFactory", []))
    jr.JNull
}

fn c1_m6__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("CollisionTypeFactory", "SINGLETON")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CollisionTypeFactory",
        "org.allbinary.game.collision.CollisionTypeFactory",
        "Object",
        [],
        False,
        [#("NONE", jr.JNull), #("DAMAGE", jr.JNull), #("PICKUP", jr.JNull), #("COLLISION", jr.JNull)],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m6__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


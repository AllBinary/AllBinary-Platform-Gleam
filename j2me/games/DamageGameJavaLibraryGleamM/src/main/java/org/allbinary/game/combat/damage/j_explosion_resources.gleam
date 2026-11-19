// Generated Code Do Not Modify
// package org.allbinary.game.combat.damage
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ExplosionResources

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "EXPLOSION_90_RESOURCE", jr.JStr("/explosion_sprite_90_by_90.png"))
    jr.set_field(this, "EXPLOSION_60_RESOURCE", jr.JStr("/explosion_sprite_60_by_60.png"))
    jr.set_field(this, "HALF_EXPLOSION_RESOURCE", jr.JStr("/explosion_sprite_30_by_30.png"))
    jr.set_field(this, "THIRD_EXPLOSION_RESOURCE", jr.JStr("/explosion_sprite_15_by_15.png"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ExplosionResources", "instance", jr.new("ExplosionResources", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ExplosionResources", "instance")
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ExplosionResources",
        "org.allbinary.game.combat.damage.ExplosionResources",
        "Object",
        [],
        False,
        [#("EXPLOSION_90_RESOURCE", jr.JNull), #("EXPLOSION_60_RESOURCE", jr.JNull), #("HALF_EXPLOSION_RESOURCE", jr.JNull), #("THIRD_EXPLOSION_RESOURCE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("jinit_0", [], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


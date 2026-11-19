// Generated Code Do Not Modify
// package org.allbinary.game.combat
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class CombatBaseBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("CombatBaseBehavior", "NULL_COMBAT_BEHAVIOR", jr.new("CombatBaseBehavior", [jr.call_static("DamageableBaseBehavior", "getInstance_0", []), jr.call_static("DestroyableBaseBehavior", "getInstance_0", [])]))
    jr.JNull
}

fn c1_m6__getdamageablebasebehavior(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "damageableBaseBehavior")
}

fn c1_m7__getdestroyablebasebehavior(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "destroyableBaseBehavior")
}

fn c1_m8__isreadyforexplosion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "readyForExplosion")
}

fn c1_m9__setreadyforexplosion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ready_for_explosion] = jargs
        jr.set_field(this, "readyForExplosion", l_ready_for_explosion)
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damageable_base_behavior, l_destroyable_base_behavior] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "damageableBaseBehavior", l_damageable_base_behavior)
        jr.set_field(this, "destroyableBaseBehavior", l_destroyable_base_behavior)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "CombatBaseBehavior",
        "org.allbinary.game.combat.CombatBaseBehavior",
        "Object",
        [],
        False,
        [#("damageableBaseBehavior", jr.JNull), #("destroyableBaseBehavior", jr.JNull), #("readyForExplosion", jr.JBool(False))],
        [#("NULL_COMBAT_BEHAVIOR", jr.JNull)],
        [
            jr.Method("getDamageableBaseBehavior_0", [], False, c1_m6__getdamageablebasebehavior), 
            jr.Method("getDestroyableBaseBehavior_0", [], False, c1_m7__getdestroyablebasebehavior), 
            jr.Method("isReadyForExplosion_0", [], False, c1_m8__isreadyforexplosion), 
            jr.Method("setReadyForExplosion_1", ["boolean"], False, c1_m9__setreadyforexplosion), 
            jr.Method("jinit_2", ["DamageableBaseBehavior", "DestroyableBaseBehavior"], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


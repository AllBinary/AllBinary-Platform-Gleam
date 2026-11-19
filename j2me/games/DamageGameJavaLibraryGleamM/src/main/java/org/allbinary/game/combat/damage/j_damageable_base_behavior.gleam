// Generated Code Do Not Modify
// package org.allbinary.game.combat.damage
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DamageableBaseBehavior

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DamageableBaseBehavior", "instance", jr.new("DamageableBaseBehavior", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DamageableBaseBehavior", "instance")
}

fn c1_m3__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.call_inherited(this, "DamageableBaseBehavior", "getClass_0", []), "getName_0", [])
}

fn c1_m4__damage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage, l_damage_type] = jargs
    let l_damage = jr.as_i(l_damage)
    let l_damage_type = jr.as_i(l_damage_type)
    jr.JNull
}

fn c1_m5__getdamage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage_type] = jargs
    let l_damage_type = jr.as_i(l_damage_type)
    jr.as_i(jr.JInt(6000))
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DamageableBaseBehavior",
        "org.allbinary.game.combat.damage.DamageableBaseBehavior",
        "Object",
        ["DamageableInterface"],
        False,
        [],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("getName_0", [], False, c1_m3__getname), 
            jr.Method("damage_2", ["int", "int"], False, c1_m4__damage), 
            jr.Method("getDamage_1", ["int"], False, c1_m5__getdamage), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


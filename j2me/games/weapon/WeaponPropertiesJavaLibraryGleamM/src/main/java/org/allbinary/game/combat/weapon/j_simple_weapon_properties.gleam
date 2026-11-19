// Generated Code Do Not Modify
// package org.allbinary.game.combat.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class SimpleWeaponProperties

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__set(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_simple_weapon_properties] = jargs
        jr.call(this, "setDamage_1", [jr.call(l_simple_weapon_properties, "getDamage_0", [])])
        jr.call(this, "setDissipation_1", [jr.call(l_simple_weapon_properties, "getDissipation_0", [])])
        jr.call(this, "setRange_1", [jr.call(l_simple_weapon_properties, "getRange_0", [])])
    jr.JNull
}

fn c1_m5__setdamage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage] = jargs
    let l_damage = jr.as_i(l_damage)
        jr.set_field(this, "damage", jr.as_i(l_damage))
    jr.JNull
}

fn c1_m6__getdamage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "damage"))
}

fn c1_m7__setdissipation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dissipation] = jargs
    let l_dissipation = jr.as_s(l_dissipation)
        jr.set_field(this, "dissipation", jr.as_s(l_dissipation))
    jr.JNull
}

fn c1_m8__getdissipation(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_s(jr.get_field(this, "dissipation"))
}

fn c1_m9__getrange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.get_field(this, "range"))
}

fn c1_m10__setrange(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_range] = jargs
    let l_range = jr.as_i(l_range)
        jr.set_field(this, "range", jr.as_i(l_range))
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "SimpleWeaponProperties",
        "org.allbinary.game.combat.weapon.SimpleWeaponProperties",
        "Object",
        [],
        False,
        [#("damage", jr.JInt(0)), #("dissipation", jr.JShort(0)), #("range", jr.JInt(0))],
        [],
        [
            jr.Method("set_1", ["SimpleWeaponProperties"], False, c1_m4__set), 
            jr.Method("setDamage_1", ["int"], False, c1_m5__setdamage), 
            jr.Method("getDamage_0", [], False, c1_m6__getdamage), 
            jr.Method("setDissipation_1", ["short"], False, c1_m7__setdissipation), 
            jr.Method("getDissipation_0", [], False, c1_m8__getdissipation), 
            jr.Method("getRange_0", [], False, c1_m9__getrange), 
            jr.Method("setRange_1", ["int"], False, c1_m10__setrange), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


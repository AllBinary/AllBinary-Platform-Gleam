// Generated Code Do Not Modify
// package org.allbinary.game.combat.damage
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DamageFloaters

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DamageFloaters", "SINGLETON", jr.new("DamageFloaters", []))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DamageFloaters", "SINGLETON")
}

fn c1_m3__add(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage] = jargs
    let l_damage = jr.as_i(l_damage)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Paintable", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DamageFloaters",
        "org.allbinary.game.combat.damage.DamageFloaters",
        "Paintable",
        [],
        False,
        [],
        [#("SINGLETON", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("add_1", ["int"], False, c1_m3__add), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}


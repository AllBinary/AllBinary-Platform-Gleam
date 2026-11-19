// Generated Code Do Not Modify
// package org.allbinary.game.combat.damage
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class DamageUtil

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "COLLIDE", jr.JStr("collide"))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("DamageUtil", "instance", jr.new("DamageUtil", []))
    jr.JNull
}

fn c1_m3__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("DamageUtil", "instance")
}

fn c1_m6__process(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damageable_interface, l_damageable_interface2] = jargs
        jr.call(l_damageable_interface, "damage_2", [jr.call(l_damageable_interface2, "getDamage_1", [jr.JInt(0)]), jr.JInt(0)])
    jr.JNull
}

fn c1_m7__debugdamage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_collidable_interface_composite_interface1, l_collidable_interface_composite_interface] = jargs
        let l_collidable_destroyable_damageable_layer = l_collidable_interface_composite_interface
        let l_damage = jr.as_i(jr.call(l_collidable_destroyable_damageable_layer, "getDamage_1", [jr.JInt(0)]))
        case jr.truth(jr.gt(l_damage, jr.JInt(20000))) {
            True -> {
            let l_string_buffer = jr.new("StringMaker", [])
            jr.call(l_string_buffer, "append_1", [jr.JStr("Collision ")])
            jr.call(l_string_buffer, "append_1", [jr.call(l_collidable_interface_composite_interface1, "toString_0", [])])
            jr.call(l_string_buffer, "append_1", [jr.JStr(" with: ")])
            jr.call(l_string_buffer, "append_1", [jr.call(l_collidable_interface_composite_interface, "toString_0", [])])
            jr.call(l_string_buffer, "append_1", [jr.JStr(" damage: ")])
            jr.call(l_string_buffer, "appendint_1", [l_damage])
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(l_string_buffer, "toString_0", []), l_collidable_interface_composite_interface1, jr.get_field(this, "COLLIDE")])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit5(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "DamageUtil",
        "org.allbinary.game.combat.damage.DamageUtil",
        "Object",
        [],
        False,
        [#("logUtil", jr.JNull), #("COLLIDE", jr.JNull)],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m3__getinstance), 
            jr.Method("process_2", ["DamageableInterface", "DamageableInterface"], False, c1_m6__process), 
            jr.Method("debugDamage_2", ["CollidableCompositeLayer", "CollidableCompositeLayer"], False, c1_m7__debugdamage), 
            jr.Method("jinit_0", [], False, c1_jinit5)],
        c1_jfields,
        c1_jclinit,
    )
}


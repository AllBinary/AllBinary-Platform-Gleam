// Generated Code Do Not Modify
// package org.allbinary.game.ag.layer.weapon.mine
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class MineLayer

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "viewPositionEventHandler", jr.call_static("ViewPositionEventHandler", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__initxyz(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
        jr.call_inherited(this, "MineLayer", "setPosition_3", [jr.add(l_x, jr.JInt(5)), jr.add(l_y, jr.JInt(5)), l_z])
        jr.call(jr.get_field(this, "viewPositionEventHandler"), "addListener_1", [this])
        jr.call(jr.call_static("SecondaryPlayerQueueFactory", "getInstance_0", []), "add_1", [jr.call_static("DropWeaponSound", "getInstance_0", [])])
    jr.JNull
}

fn c1_m5__damage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage, l_damage_type] = jargs
    let l_damage = jr.as_i(l_damage)
    let l_damage_type = jr.as_i(l_damage_type)
        jr.set_inherited(this, "MineLayer", "totalDamage", jr.add(jr.call_inherited(this, "MineLayer", "getInitDamage_0", []), jr.JInt(1)))
    jr.JNull
}

fn c1_m6__getdamage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_damage_type] = jargs
    let l_damage_type = jr.as_i(l_damage_type)
        jr.call_super("SimpleWeaponLayer", this, "getDamage_1", [l_damage_type])
    jr.as_i(jr.call_inherited(this, "MineLayer", "getInitDamage_0", []))
}

fn c1_m7__setdestroyed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_destroyed] = jargs
        jr.call_super("SimpleWeaponLayer", this, "setDestroyed_1", [l_destroyed])
        case jr.truth(jr.call_inherited(this, "MineLayer", "isDestroyed_0", [])) {
            True -> {
            jr.call(jr.get_field(this, "viewPositionEventHandler"), "removeListener_1", [this])
            Nil
        }
            False -> Nil
        }
    jr.JNull
}

fn c1_jinit2(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_view_position] = jargs
        jr.super_init("SimpleWeaponLayer", this, [jr.get_static("MineLayer", "NAME"), jr.get_static("RemoteInfo", "REMOTE_INFO"), jr.JInt(-1), jr.call(jr.call_static("NoMovementFactory", "getInstance_0", []), "getMovmentInstance_0", []), jr.call(jr.call(jr.call_static("FeaturedAnimationInterfaceFactoryInterfaceFactory", "getInstance_0", []), "get_1", [jr.get_field(jr.call_static("MineWeaponResources", "getInstance_0", []), "RESOURCE")]), "getInstance_1", [jr.JInt(0)]), jr.call_static("SimpleWeaponLayer", "createDestroyed_0", []), jr.new("Rectangle", [jr.get_field(jr.call_static("PointFactory", "getInstance_0", []), "ZERO_ZERO"), jr.JInt(10), jr.JInt(10)]), l_view_position])
        c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "MineLayer",
        "org.allbinary.game.ag.layer.weapon.mine.MineLayer",
        "SimpleWeaponLayer",
        [],
        False,
        [#("viewPositionEventHandler", jr.JNull)],
        [#("NAME", jr.JStr("MineLayer"))],
        [
            jr.Method("initXYZ_3", ["int", "int", "int"], False, c1_m4__initxyz), 
            jr.Method("damage_2", ["int", "int"], False, c1_m5__damage), 
            jr.Method("getDamage_1", ["int"], False, c1_m6__getdamage), 
            jr.Method("setDestroyed_1", ["boolean"], False, c1_m7__setdestroyed), 
            jr.Method("jinit_1", ["ViewPositionBase"], False, c1_jinit2)],
        c1_jfields,
        c1_jclinit,
    )
}


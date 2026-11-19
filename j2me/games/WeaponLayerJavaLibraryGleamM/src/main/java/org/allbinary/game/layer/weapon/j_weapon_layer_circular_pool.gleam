// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class WeaponLayerCircularPool

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m2__getinstanceweaponlayer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_source_layer_interface, l_x, l_y, l_z, l_angle, l_other_angle, l_weapon_properties, l_scoreable] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
    let l_angle = jr.as_i(l_angle)
    let l_other_angle = jr.as_i(l_other_angle)
        let l_weapon_layer = jr.call_super("AllBinaryLayerCircularPool", this, "getNextInstance_0", [])
        jr.call(l_weapon_layer, "initXYZ_3", [l_x, l_y, l_z])
        jr.call(l_weapon_layer, "init_5", [l_source_layer_interface, l_angle, l_other_angle, l_weapon_properties, l_scoreable])
    l_weapon_layer
}

fn c1_jinit1(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("AllBinaryLayerCircularPool", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "WeaponLayerCircularPool",
        "org.allbinary.game.layer.weapon.WeaponLayerCircularPool",
        "AllBinaryLayerCircularPool",
        [],
        False,
        [],
        [],
        [
            jr.Method("getInstanceWeaponLayer_8", ["AllBinaryLayer", "int", "int", "int", "int", "int", "WeaponProperties", "ScoreableInterface"], False, c1_m2__getinstanceweaponlayer), 
            jr.Method("jinit_0", [], False, c1_jinit1)],
        c1_jfields,
        c1_jclinit,
    )
}


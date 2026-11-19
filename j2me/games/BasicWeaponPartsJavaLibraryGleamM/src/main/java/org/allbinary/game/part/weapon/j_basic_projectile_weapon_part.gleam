// Generated Code Do Not Modify
// package org.allbinary.game.part.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class BasicProjectileWeaponPart

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createbasicprojectileweaponpart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_weapon_layer_circular_static_pool] = jargs
    jr.new("BasicProjectileWeaponPart", [l_animation_interface, jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"), l_weapon_layer_circular_static_pool, jr.get_static("WeaponProperties", "NULL_WEAPON_PROPERTIES"), jr.call_static("NoScoreable", "getInstance_0", []), jr.get_static("RelativeRelationship", "NULL_RELATIVE_RELATIONSHIP")])
}

fn c1_m4__processscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_angle, l_other_angle, l_weapon_properties, l_scoreable_interface] = jargs
    let l_angle = jr.as_s(l_angle)
    let l_other_angle = jr.as_s(l_other_angle)
        let l_weapon_layer = jr.call(jr.get_field(this, "weaponLayerCircularStaticPool"), "getInstanceWeaponLayer_8", [jr.call_inherited(this, "BasicProjectileWeaponPart", "getOwnerLayerInterface_0", []), jr.call(jr.get_inherited(this, "BasicProjectileWeaponPart", "relativeRelationship"), "getX_0", []), jr.call(jr.get_inherited(this, "BasicProjectileWeaponPart", "relativeRelationship"), "getY_0", []), jr.call(jr.get_inherited(this, "BasicProjectileWeaponPart", "relativeRelationship"), "getZ_0", []), jr.to_i(l_angle), jr.to_i(l_other_angle), l_weapon_properties, l_scoreable_interface])
        jr.call(l_allbinary_layer_manager, "append_1", [l_weapon_layer])
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_source_layer_interface, l_weapon_layer_circular_static_pool, l_weapon_properties, l_scoreable_interface, l_relative_relationship] = jargs
        jr.super_init("BasicWeaponPart", this, [l_animation_interface, l_source_layer_interface, l_weapon_properties, l_scoreable_interface, l_relative_relationship])
        c1_jfields(this)
        jr.set_field(this, "weaponLayerCircularStaticPool", l_weapon_layer_circular_static_pool)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "BasicProjectileWeaponPart",
        "org.allbinary.game.part.weapon.BasicProjectileWeaponPart",
        "BasicWeaponPart",
        [],
        False,
        [#("weaponLayerCircularStaticPool", jr.JNull)],
        [],
        [
            jr.Method("createBasicProjectileWeaponPart_2", ["Animation", "WeaponLayerCircularPool"], True, c1_m1__createbasicprojectileweaponpart), 
            jr.Method("processScore_5", ["AllBinaryLayerManager", "short", "short", "WeaponProperties", "ScoreableInterface"], False, c1_m4__processscore), 
            jr.Method("jinit_6", ["Animation", "AllBinaryLayer", "WeaponLayerCircularPool", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


// Generated Code Do Not Modify
// package org.allbinary.game.part.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class StraightMultiProjectileWeaponPart

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "noDecimalTrigTable", jr.call_static("NoDecimalTrigTable", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__createstraightmultiprojectileweaponpart(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_weapon_layer_circular_static_pool] = jargs
    jr.new("StraightMultiProjectileWeaponPart", [l_animation_interface, jr.get_static("AllBinaryLayer", "NULL_ALLBINARY_LAYER"), l_weapon_layer_circular_static_pool, jr.JInt(2), jr.get_static("WeaponProperties", "NULL_WEAPON_PROPERTIES"), jr.call_static("NoScoreable", "getInstance_0", []), jr.get_static("RelativeRelationship", "NULL_RELATIVE_RELATIONSHIP")])
}

fn c1_m6__processscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_angle, l_other_angle, l_weapon_properties, l_scoreable_interface] = jargs
    let l_angle = jr.as_s(l_angle)
    let l_other_angle = jr.as_s(l_other_angle)
        let l_source_layer_interface = jr.call_inherited(this, "StraightMultiProjectileWeaponPart", "getOwnerLayerInterface_0", [])
        let l_reduced_width = jr.as_i(jr.div(jr.mul(jr.call(l_source_layer_interface, "getWidth_0", []), jr.JInt(8)), jr.JInt(10)))
        let l_half_width = jr.as_i(jr.shr(l_reduced_width, jr.JInt(1)))
        let l_x = jr.as_i(jr.call(jr.get_inherited(this, "StraightMultiProjectileWeaponPart", "relativeRelationship"), "getX_0", []))
        let l_y = jr.as_i(jr.call(jr.get_inherited(this, "StraightMultiProjectileWeaponPart", "relativeRelationship"), "getY_0", []))
        let l_sine = jr.cell(jr.as_j(jr.JLong(0)))
        let l_beam_x = jr.cell(jr.as_i(jr.JInt(0)))
        let l_cosine = jr.cell(jr.as_j(jr.JLong(0)))
        let l_beam_y = jr.cell(jr.as_i(jr.JInt(0)))
        let l_weapon_layer = jr.cell(jr.JNull)
        let l_increment = jr.as_i(jr.div(l_reduced_width, jr.sub(jr.get_field(this, "total"), jr.JInt(1))))
        let l_next = jr.cell(jr.as_i(jr.neg(l_half_width)))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "total")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_sine, jr.as_j(jr.mul(jr.to_j(jr.get(l_next)), jr.call(jr.get_field(this, "noDecimalTrigTable"), "sin_1", [jr.to_i(l_angle)]))))
            jr.set(l_beam_x, jr.as_i(jr.to_i(jr.div(jr.get(l_sine), jr.to_j(jr.get_field(jr.get_field(this, "noDecimalTrigTable"), "SCALE"))))))
            jr.set(l_cosine, jr.as_j(jr.mul(jr.to_j(jr.get(l_next)), jr.call(jr.get_field(this, "noDecimalTrigTable"), "cos_1", [jr.to_i(l_angle)]))))
            jr.set(l_beam_y, jr.as_i(jr.neg(jr.to_i(jr.div(jr.get(l_cosine), jr.to_j(jr.get_field(jr.get_field(this, "noDecimalTrigTable"), "SCALE")))))))
            jr.set(l_weapon_layer, jr.call(jr.get_field(this, "weaponLayerCircularStaticPool"), "getInstanceWeaponLayer_8", [l_source_layer_interface, jr.add(l_x, jr.get(l_beam_x)), jr.add(l_y, jr.get(l_beam_y)), jr.JInt(0), jr.to_i(l_angle), jr.to_i(l_other_angle), l_weapon_properties, l_scoreable_interface]))
            jr.call(l_allbinary_layer_manager, "append_1", [jr.get(l_weapon_layer)])
            jr.compound(fn() { jr.get(l_next) }, fn(jv) { jr.add(jv, l_increment) }, fn(jv) { jr.set(l_next, jv) })
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit4(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_animation_interface, l_source_layer_interface, l_weapon_layer_circular_static_pool, l_total, l_weapon_properties, l_scoreable_interface, l_relative_relationship] = jargs
    let l_total = jr.as_i(l_total)
        jr.super_init("BasicWeaponPart", this, [l_animation_interface, l_source_layer_interface, l_weapon_properties, l_scoreable_interface, l_relative_relationship])
        c1_jfields(this)
        jr.set_field(this, "total", jr.as_i(l_total))
        jr.set_field(this, "weaponLayerCircularStaticPool", l_weapon_layer_circular_static_pool)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "StraightMultiProjectileWeaponPart",
        "org.allbinary.game.part.weapon.StraightMultiProjectileWeaponPart",
        "BasicWeaponPart",
        [],
        False,
        [#("weaponLayerCircularStaticPool", jr.JNull), #("total", jr.JInt(0)), #("noDecimalTrigTable", jr.JNull)],
        [],
        [
            jr.Method("createStraightMultiProjectileWeaponPart_2", ["Animation", "WeaponLayerCircularPool"], True, c1_m1__createstraightmultiprojectileweaponpart), 
            jr.Method("processScore_5", ["AllBinaryLayerManager", "short", "short", "WeaponProperties", "ScoreableInterface"], False, c1_m6__processscore), 
            jr.Method("jinit_7", ["Animation", "AllBinaryLayer", "WeaponLayerCircularPool", "int", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], False, c1_jinit4)],
        c1_jfields,
        c1_jclinit,
    )
}


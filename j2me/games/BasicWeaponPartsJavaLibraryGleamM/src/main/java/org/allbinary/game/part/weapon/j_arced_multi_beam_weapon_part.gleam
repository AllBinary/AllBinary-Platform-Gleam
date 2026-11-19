// Generated Code Do Not Modify
// package org.allbinary.game.part.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ArcedMultiBeamWeaponPart

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "TOTAL_ANGLE", jr.as_i(jr.to_i(jr.get_field(jr.call_static("AngleFactory", "getInstance_0", []), "TOTAL_ANGLE"))))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m5__processscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_allbinary_layer_manager, l_angle, l_other_angle, l_weapon_properties, l_scoreable_interface] = jargs
    let l_angle = jr.as_s(l_angle)
    let l_other_angle = jr.as_s(l_other_angle)
        let l_increment = jr.as_s(jr.to_s(jr.div(jr.sub(jr.get_field(this, "total"), jr.JInt(1)), jr.get_field(this, "TOTAL_ANGLE"))))
        let l_min_angle = jr.as_s(jr.to_s(jr.sub(jr.to_i(l_angle), jr.shr(jr.mul(jr.to_i(l_increment), jr.get_field(this, "total")), jr.JInt(1)))))
        let l_next = jr.cell(jr.as_i(jr.JInt(0)))
        let l_weapon_layer = jr.cell(jr.JNull)
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), jr.get_field(this, "total")) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            jr.set(l_weapon_layer, jr.call(jr.get_field(this, "weaponLayerCircularStaticPool"), "getInstanceWeaponLayer_8", [jr.call_inherited(this, "ArcedMultiBeamWeaponPart", "getOwnerLayerInterface_0", []), jr.call(jr.get_inherited(this, "ArcedMultiBeamWeaponPart", "relativeRelationship"), "getX_0", []), jr.call(jr.get_inherited(this, "ArcedMultiBeamWeaponPart", "relativeRelationship"), "getY_0", []), jr.JInt(0), jr.add(l_min_angle, l_increment), jr.to_i(l_other_angle), l_weapon_properties, l_scoreable_interface]))
            jr.call(l_allbinary_layer_manager, "append_1", [jr.get(l_weapon_layer)])
            jr.compound(fn() { jr.get(l_next) }, fn(jv) { jr.add(jv, jr.to_i(l_increment)) }, fn(jv) { jr.set(l_next, jv) })
            Nil
        })
            Nil
        }
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
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
        "ArcedMultiBeamWeaponPart",
        "org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart",
        "BasicWeaponPart",
        [],
        False,
        [#("weaponLayerCircularStaticPool", jr.JNull), #("total", jr.JInt(0)), #("TOTAL_ANGLE", jr.JInt(0))],
        [],
        [
            jr.Method("processScore_5", ["AllBinaryLayerManager", "short", "short", "WeaponProperties", "ScoreableInterface"], False, c1_m5__processscore), 
            jr.Method("jinit_7", ["Animation", "AllBinaryLayer", "WeaponLayerCircularPool", "int", "WeaponProperties", "ScoreableInterface", "RelativeRelationship"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}


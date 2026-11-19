// Generated Code Do Not Modify
// package org.allbinary.game.combat.weapon
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class WeaponProperties

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "speed", jr.get_static("BasicDecimal", "ZERO_BIGDECIMAL"))
    jr.set_field(this, "MAX", jr.as_j(jr.JLong(10240)))
    jr.set_field(this, "ZERO", jr.as_s(jr.JInt(0)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("WeaponProperties", "NULL_WEAPON_PROPERTIES", jr.new("WeaponProperties", [jr.JLong(0), jr.JLong(0), jr.JLong(0), jr.JInt(0), jr.to_s(jr.JInt(0))]))
    jr.JNull
}

fn c1_m9__setreloadtime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_reload_time] = jargs
    let l_reload_time = jr.as_j(l_reload_time)
        jr.set_field(this, "reloadTime", jr.as_j(l_reload_time))
    jr.JNull
}

fn c1_m10__getreloadtime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.get_field(this, "reloadTime"))
}

fn c1_m11__settargetingtime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_targeting_time] = jargs
    let l_targeting_time = jr.as_j(l_targeting_time)
        jr.set_field(this, "targetingTime", jr.as_j(l_targeting_time))
    jr.JNull
}

fn c1_m12__gettargetingtime(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.get_field(this, "targetingTime"))
}

fn c1_m13__getspeed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "speed")
}

fn c1_m14__setspeed(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_speed] = jargs
        jr.set_field(this, "speed", l_speed)
    jr.JNull
}

fn c1_m15__getdamagei(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_range] = jargs
    let l_range = jr.as_i(l_range)
    jr.as_i(jr.sub(jr.call_inherited(this, "WeaponProperties", "getDamage_0", []), jr.div(jr.mul(jr.to_i(jr.call_inherited(this, "WeaponProperties", "getDissipation_0", [])), l_range), jr.call(jr.get_field(this, "speed"), "getScaled_0", []))))
}

fn c1_m19__tostringarray(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_index = jr.cell(jr.as_i(jr.JInt(0)))
        let l_string_array = jr.new_array("L", 1, [jr.JInt(3)])
        let l_string_buffer = jr.new("StringMaker", [])
        jr.aset(l_string_array, jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True), jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.get_static("WeaponProperties", "DAMAGE")]), "appendint_1", [jr.call_inherited(this, "WeaponProperties", "getDamage_0", [])]), "toString_0", []))
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        jr.aset(l_string_array, jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True), jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.get_static("WeaponProperties", "RANGE")]), "appendint_1", [jr.call_inherited(this, "WeaponProperties", "getRange_0", [])]), "toString_0", []))
        jr.call(l_string_buffer, "delete_2", [jr.JInt(0), jr.call(l_string_buffer, "length_0", [])])
        jr.aset(l_string_array, jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True), jr.call(jr.call(jr.call(l_string_buffer, "append_1", [jr.get_static("WeaponProperties", "RELOAD")]), "appendlong_1", [jr.call(this, "getReloadTime_0", [])]), "toString_0", []))
    l_string_array
}

fn c1_m20__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(jr.call(l_string_buffer, "append_1", [jr.get_static("WeaponProperties", "DAMAGE")]), "appendint_1", [jr.call_inherited(this, "WeaponProperties", "getDamage_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(jr.call(l_string_buffer, "append_1", [jr.get_static("WeaponProperties", "RANGE")]), "appendint_1", [jr.call_inherited(this, "WeaponProperties", "getRange_0", [])])
        jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "SPACE")])
        jr.call(jr.call(l_string_buffer, "append_1", [jr.get_static("WeaponProperties", "RELOAD")]), "appendlong_1", [jr.call(this, "getReloadTime_0", [])])
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_reload_time, l_targeting_time, l_speed, l_damage, l_dissipation] = jargs
    let l_reload_time = jr.as_j(l_reload_time)
    let l_targeting_time = jr.as_j(l_targeting_time)
    let l_speed = jr.as_j(l_speed)
    let l_damage = jr.as_i(l_damage)
    let l_dissipation = jr.as_s(l_dissipation)
    jr.super_init("SimpleWeaponProperties", this, [])
    c1_jfields(this)
        case jr.truth(case jr.truth(case jr.truth(jr.lt(l_speed, jr.get_field(this, "MAX"))) { True -> jr.ne(l_speed, jr.JLong(0)) False -> jr.JBool(False) }) { True -> jr.not(jr.get_static("WeaponProperties", "messageSent")) False -> jr.JBool(False) }) {
            True -> {
            let l__m_e_s_s_a_g_e = jr.JStr("Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ")
            let l_common_strings = jr.call_static("CommonStrings", "getInstance_0", [])
            jr.call_static("PreLogUtil", "put_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [l__m_e_s_s_a_g_e]), "appendlong_1", [l_speed]), "toString_0", []), this, jr.get_field(l_common_strings, "CONSTRUCTOR")])
            jr.set_static("WeaponProperties", "messageSent", jr.JBool(True))
            Nil
        }
            False -> Nil
        }
        jr.call(this, "setReloadTime_1", [l_reload_time])
        jr.call(this, "setTargetingTime_1", [l_targeting_time])
        jr.call_inherited(this, "WeaponProperties", "setDamage_1", [l_damage])
        jr.call_inherited(this, "WeaponProperties", "setDissipation_1", [l_dissipation])
        jr.call(this, "setSpeed_1", [jr.new("BasicDecimal", [l_speed])])
        case jr.truth(jr.ne(l_dissipation, jr.get_field(this, "ZERO"))) {
            True -> {
            let l_unscaled_damage = jr.as_j(jr.mul(jr.call(jr.get_field(this, "speed"), "getUnscaled_0", []), jr.to_j(l_damage)))
            let l_scaled_dissipation = jr.as_i(jr.mul(jr.to_i(l_dissipation), jr.call(jr.get_field(this, "speed"), "getScaledFactorValue_0", [])))
            let l_value = jr.as_j(jr.div(l_unscaled_damage, jr.to_j(l_scaled_dissipation)))
            jr.call_inherited(this, "WeaponProperties", "setRange_1", [jr.div(jr.to_i(jr.mul(l_value, jr.JLong(9))), jr.JInt(10))])
            Nil
        }
            False -> Nil
        }
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "WeaponProperties",
        "org.allbinary.game.combat.weapon.WeaponProperties",
        "SimpleWeaponProperties",
        [],
        False,
        [#("reloadTime", jr.JLong(0)), #("targetingTime", jr.JLong(0)), #("speed", jr.JNull), #("MAX", jr.JLong(0)), #("ZERO", jr.JShort(0))],
        [#("NULL_WEAPON_PROPERTIES", jr.JNull), #("messageSent", jr.JBool(False)), #("DAMAGE", jr.JStr("Damage: ")), #("RANGE", jr.JStr("Range: ")), #("RELOAD", jr.JStr("Reload: "))],
        [
            jr.Method("setReloadTime_1", ["long"], False, c1_m9__setreloadtime), 
            jr.Method("getReloadTime_0", [], False, c1_m10__getreloadtime), 
            jr.Method("setTargetingTime_1", ["long"], False, c1_m11__settargetingtime), 
            jr.Method("getTargetingTime_0", [], False, c1_m12__gettargetingtime), 
            jr.Method("getSpeed_0", [], False, c1_m13__getspeed), 
            jr.Method("setSpeed_1", ["BasicDecimal"], False, c1_m14__setspeed), 
            jr.Method("getDamageI_1", ["int"], False, c1_m15__getdamagei), 
            jr.Method("toStringArray_0", [], False, c1_m19__tostringarray), 
            jr.Method("toString_0", [], False, c1_m20__tostring), 
            jr.Method("jinit_5", ["long", "long", "long", "int", "short"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

